#ifndef INCLUDE_AES_H
#define INCLUDE_AES_H


#include <stdint.h>

/**
 * CBC enables AES encryption in CBC-mode of operation.
 * CTR enables encryption in counter-mode.
 * ECB enables the basic ECB 16-byte block algorithm.
 *
 * Select the en/decryption method in the Makefile. All can be enabled simultaneously.
 */
#if CBC + ECB + CTR == 0
#error "No en/decryption method selected (CBC|ECB|CTR)"
#endif

/**
 * Select the key size in the Makefile.
 */
#if AES128 + AES192 + AES256 == 0
#error "No key size selected (AES128|AES192|AES256)"
#endif

#define AES_BLOCKLEN 16 //Block length in bytes AES is 128b block only

#if AES256
    #define AES_KEYLEN 32
    #define AES_keyExpSize 240
#elif AES192
    #define AES_KEYLEN 24
    #define AES_keyExpSize 208
#else
    #define AES_KEYLEN 16
    #define AES_keyExpSize 176
#endif

typedef struct AES_ctx {
    uint8_t RoundKey[AES_keyExpSize];
#if CBC || CTR
    uint8_t Iv[AES_BLOCKLEN];
#endif
} AES_ctx;

void AES_init_ctx(struct AES_ctx* ctx, const uint8_t* key);
#if CBC || CTR
void AES_init_ctx_iv(struct AES_ctx* ctx, const uint8_t* key, const uint8_t* iv);
void AES_ctx_set_iv(struct AES_ctx* ctx, const uint8_t* iv);
#endif

#if ECB
// buffer size is exactly AES_BLOCKLEN bytes; 
// you need only AES_init_ctx as IV is not used in ECB 
// NB: ECB is considered insecure for most uses
void AES_ECB_encrypt(struct AES_ctx* ctx, const uint8_t* buf);
void AES_ECB_decrypt(struct AES_ctx* ctx, const uint8_t* buf);
#endif

#if CBC
// buffer size MUST be mutile of AES_BLOCKLEN;
// Suggest https://en.wikipedia.org/wiki/Padding_(cryptography)#PKCS7 for padding scheme
// NOTES: you need to set IV in ctx via AES_init_ctx_iv() or AES_ctx_set_iv()
//        no IV should ever be reused with the same key 
void AES_CBC_encrypt_buffer(struct AES_ctx* ctx, uint8_t* buf, uint32_t length);
void AES_CBC_decrypt_buffer(struct AES_ctx* ctx, uint8_t* buf, uint32_t length);
#endif

#if CTR
// Same function for encrypting as for decrypting. 
// IV is incremented for every block, and used after encryption as XOR-compliment for output
// Suggesting https://en.wikipedia.org/wiki/Padding_(cryptography)#PKCS7 for padding scheme
// NOTES: you need to set IV in ctx with AES_init_ctx_iv() or AES_ctx_set_iv()
//        no IV should ever be reused with the same key 
void AES_CTR_xcrypt_buffer(struct AES_ctx* ctx, uint8_t* buf, uint32_t length);
#endif


#endif /* INCLUDE_AES_H */
