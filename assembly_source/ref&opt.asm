
          convolution3_ref:
001009a8:   push    {r4,r5,r6,r7,r8,r9,r10,r11,lr}
001009ac:   mov     r7, r2
001009b0:   vpush   {d8-d15}
001009b4:   sub     sp, sp, #84
001009b8:   mov     r6, r1
001009bc:   ldr     r12, [sp, #+184]
001009c0:   ldr     r2, [sp, #+204]
001009c4:   str     r0, [sp, #+72]
001009c8:   mov     r10, r12
001009cc:   str     r12, [sp, #+76]
001009d0:   str     r3, [sp, #+44]
001009d4:   str     r2, [sp, #+4]
001009d8:   ldr     r9, [sp, #+188]
001009dc:   ldr     r11, [sp, #+192]
001009e0:   ldr     r5, [sp, #+196]
001009e4:   ldr     r8, [sp, #+200]
001009e8:   ldr     r4, [sp, #+208]
001009ec:   bl      +22316  ; addr=0x00106120: Xil_ICacheEnable
001009f0:   bl      +21632  ; addr=0x00105e78: Xil_DCacheDisable
001009f4:   cmp     r10, #0
001009f8:   beq     +1368   ; addr=0x00100f58: convolution3_ref + 0x000005b0
001009fc:   ldr     r3, [sp, #+44]
00100a00:   cmp     r3, #0
00100a04:   beq     +1356   ; addr=0x00100f58: convolution3_ref + 0x000005b0
00100a08:   lsl     r3, r8, #2
00100a0c:   mov     r12, r10
00100a10:   lsl     r9, r9, #2
00100a14:   lsl     r1, r4, #6
00100a18:   str     r3, [sp, #+52]
00100a1c:   lsl     r10, r4, #2
00100a20:   mov     r2, r3
00100a24:   lsl     r3, r8, #6
00100a28:   mul     r8, r5, r2
00100a2c:   str     r7, [sp, #+32]
00100a30:   str     r6, [sp, #+36]
00100a34:   mul     r3, r5, r3
00100a38:   mul     r2, r8, r12
00100a3c:   str     r3, [sp, #+64]
00100a40:   mov     r3, #0
00100a44:   str     r2, [sp, #+56]
00100a48:   mul     r2, r9, r11
00100a4c:   str     r2, [sp, #+60]
00100a50:   ldr     r2, [sp, #+4]
00100a54:   mul     r1, r2, r1
00100a58:   mul     r2, r2, r10
00100a5c:   str     r1, [sp, #+68]
00100a60:   str     r2, [sp, #+16]
00100a64:   add     r2, r3, #16
00100a68:   cmp     r3, r2
00100a6c:   str     r2, [sp, #+48]
00100a70:   bcs     +1200   ; addr=0x00100f28: convolution3_ref + 0x00000580
00100a74:   ldr     r2, [sp, #+52]
00100a78:   ldr     r1, [sp, #+32]
00100a7c:   ldr     r0, [sp, #+72]
00100a80:   add     r3, r2, r1
00100a84:   str     r1, [sp, #+28]
00100a88:   str     r3, [sp, #+24]
00100a8c:   add     r3, r2, r3
00100a90:   str     r3, [sp, #+20]
00100a94:   mov     r3, #0
00100a98:   str     r0, [sp, #+12]
00100a9c:   str     r3, [sp, #+40]
00100aa0:   cmp     r11, #0
00100aa4:   beq     +1068   ; addr=0x00100ed8: convolution3_ref + 0x00000530
00100aa8:   ldr     r7, [sp, #+36]
00100aac:   mov     r3, #16
00100ab0:   ldr     r6, [sp, #+20]
00100ab4:   ldr     r5, [sp, #+24]
00100ab8:   ldr     r4, [sp, #+28]
00100abc:   str     r3, [sp, #+8]
00100ac0:   add     r0, r7, r10
00100ac4:   vldr    s1, [r4, #+4]
00100ac8:   add     lr, r0, r10
00100acc:   vldr    s2, [r4, #+8]
00100ad0:   mov     r1, lr
00100ad4:   vldr    s3, [r5]
00100ad8:   vldr    s4, [r5, #+4]
00100adc:   mov     r2, r7
00100ae0:   vldr    s5, [r5, #+8]
00100ae4:   mov     r12, #0
00100ae8:   ldr     r3, [sp, #+12]
00100aec:   vldr    s6, [r6]
00100af0:   vldr    s7, [r6, #+4]
00100af4:   vldr    s8, [r6, #+8]
00100af8:   vldr    s9, [r4]
00100afc:   b       +0      ; addr=0x00100b04: convolution3_ref + 0x0000015c
00100b00:   add     lr, lr, r10
00100b04:   vldr    s19, [r2, #+32]
00100b08:   add     r12, r12, #1
00100b0c:   vldr    s0, [r3, #+4]
00100b10:   cmp     r11, r12
00100b14:   vldr    s11, [r3]
00100b18:   vstr    s19, [sp, #+4]
00100b1c:   vldr    s30, [r3, #+32]
00100b20:   vldr    s19, [r2, #+4]
00100b24:   vldr    s29, [r3, #+36]
00100b28:   vldr    s28, [r3, #+40]
00100b2c:   vldr    s20, [r2, #+28]
00100b30:   vmla.f32 s0, s19, s9
00100b34:   vldr    s19, [r2]
00100b38:   vldr    s31, [r3, #+28]
00100b3c:   vldr    s21, [r2, #+24]
00100b40:   vmla.f32 s11, s9, s19
00100b44:   vldr    s19, [sp, #+4]
00100b48:   vmla.f32 s31, s20, s9
00100b4c:   vldr    s10, [r3, #+24]
00100b50:   vmla.f32 s30, s19, s9
00100b54:   vldr    s19, [r2, #+36]
00100b58:   vmla.f32 s10, s21, s9
00100b5c:   vldr    s24, [r2, #+8]
00100b60:   vmla.f32 s29, s19, s9
00100b64:   vldr    s19, [r2, #+40]
00100b68:   vldr    s23, [r2, #+16]
00100b6c:   vldr    s22, [r2, #+20]
00100b70:   vmla.f32 s28, s19, s9
00100b74:   vldr    s19, [r2, #+4]
00100b78:   vldr    s25, [r2, #+12]
00100b7c:   vldr    s18, [r2, #+48]
00100b80:   vmla.f32 s11, s19, s1
00100b84:   vldr    s19, [sp, #+4]
00100b88:   vldr    s17, [r0, #+44]
00100b8c:   vldr    s16, [r0, #+48]
00100b90:   vmla.f32 s31, s19, s1
00100b94:   vldr    s19, [r2, #+36]
00100b98:   vldr    s27, [r2, #+52]
00100b9c:   vldr    s26, [r0, #+52]
00100ba0:   vldr    s12, [r3, #+8]
00100ba4:   vldr    s13, [r3, #+12]
00100ba8:   vldr    s14, [r3, #+16]
00100bac:   vldr    s15, [r3, #+20]
00100bb0:   vmla.f32 s30, s19, s1
00100bb4:   vldr    s19, [r2, #+40]
00100bb8:   vmla.f32 s10, s20, s1
00100bbc:   vmla.f32 s13, s25, s9
00100bc0:   vmla.f32 s29, s19, s1
00100bc4:   vldr    s19, [r2, #+44]
00100bc8:   vmla.f32 s14, s23, s9
00100bcc:   vmla.f32 s13, s23, s1
00100bd0:   vmla.f32 s28, s19, s1
00100bd4:   vldr    s19, [sp, #+4]
00100bd8:   vmla.f32 s10, s19, s2
00100bdc:   vldr    s19, [r2, #+36]
00100be0:   vmla.f32 s15, s22, s9
00100be4:   vmla.f32 s11, s24, s2
00100be8:   vmla.f32 s31, s19, s2
00100bec:   vldr    s19, [r2, #+40]
00100bf0:   vmla.f32 s14, s22, s1
00100bf4:   vmla.f32 s13, s22, s2
00100bf8:   vmla.f32 s30, s19, s2
00100bfc:   vldr    s19, [r2, #+44]
00100c00:   vmla.f32 s29, s19, s2
00100c04:   vldr    s19, [r0]
00100c08:   vmla.f32 s15, s21, s1
00100c0c:   vmla.f32 s14, s21, s2
00100c10:   vmla.f32 s11, s3, s19
00100c14:   vldr    s19, [r0, #+12]
00100c18:   vmla.f32 s15, s20, s2
00100c1c:   vmla.f32 s12, s24, s9
00100c20:   vmla.f32 s13, s3, s19
00100c24:   vldr    s19, [r0, #+16]
00100c28:   vmla.f32 s14, s3, s19
00100c2c:   vldr    s19, [r0, #+20]
00100c30:   vmla.f32 s0, s24, s1
00100c34:   vmla.f32 s12, s25, s1
00100c38:   vmla.f32 s15, s3, s19
00100c3c:   vldr    s19, [r0, #+24]
00100c40:   vmla.f32 s0, s25, s2
00100c44:   vmla.f32 s28, s18, s2
00100c48:   vmla.f32 s10, s3, s19
00100c4c:   vldr    s19, [r0, #+28]
00100c50:   vmla.f32 s31, s3, s19
00100c54:   vldr    s19, [r0, #+32]
00100c58:   vldr    s20, [r0, #+4]
00100c5c:   vmla.f32 s12, s23, s2
00100c60:   vmla.f32 s30, s3, s19
00100c64:   vldr    s19, [r0, #+36]
00100c68:   vmla.f32 s0, s3, s20
00100c6c:   vmla.f32 s29, s3, s19
00100c70:   vldr    s19, [r0, #+40]
00100c74:   vldr    s20, [r0, #+8]
00100c78:   vmla.f32 s28, s3, s19
00100c7c:   vldr    s19, [r0, #+4]
00100c80:   vmla.f32 s12, s3, s20
00100c84:   vmla.f32 s0, s4, s20
00100c88:   vmla.f32 s11, s4, s19
00100c8c:   vldr    s19, [r0, #+12]
00100c90:   vmla.f32 s28, s17, s4
00100c94:   vmla.f32 s12, s4, s19
00100c98:   vldr    s19, [r0, #+16]
00100c9c:   vmla.f32 s11, s5, s20
00100ca0:   vmla.f32 s13, s4, s19
00100ca4:   vldr    s19, [r0, #+20]
00100ca8:   vmla.f32 s28, s16, s5
00100cac:   vmla.f32 s14, s4, s19
00100cb0:   vldr    s19, [r0, #+24]
00100cb4:   vmla.f32 s15, s4, s19
00100cb8:   vldr    s19, [r0, #+28]
00100cbc:   vmla.f32 s10, s4, s19
00100cc0:   vldr    s19, [r0, #+32]
00100cc4:   vmla.f32 s31, s4, s19
00100cc8:   vldr    s19, [r0, #+36]
00100ccc:   vmla.f32 s30, s4, s19
00100cd0:   vldr    s19, [r0, #+40]
00100cd4:   vmla.f32 s29, s4, s19
00100cd8:   vldr    s19, [r0, #+12]
00100cdc:   vmla.f32 s0, s5, s19
00100ce0:   vldr    s19, [r0, #+16]
00100ce4:   vmla.f32 s29, s17, s5
00100ce8:   vmla.f32 s12, s5, s19
00100cec:   vldr    s19, [r0, #+20]
00100cf0:   vmla.f32 s13, s5, s19
00100cf4:   vldr    s19, [r0, #+24]
00100cf8:   vmla.f32 s14, s5, s19
00100cfc:   vldr    s19, [r0, #+28]
00100d00:   vmla.f32 s15, s5, s19
00100d04:   vldr    s19, [r0, #+32]
00100d08:   vmla.f32 s10, s5, s19
00100d0c:   vldr    s19, [r0, #+36]
00100d10:   vldr    s22, [r1, #+4]
00100d14:   vldr    s24, [r1, #+12]
00100d18:   vmla.f32 s31, s5, s19
00100d1c:   vldr    s19, [r0, #+40]
00100d20:   vmla.f32 s0, s22, s6
00100d24:   vldr    s22, [r1, #+8]
00100d28:   vmla.f32 s30, s5, s19
00100d2c:   vldr    s19, [r1]
00100d30:   vldr    s20, [r1, #+32]
00100d34:   vmla.f32 s0, s22, s7
00100d38:   vmla.f32 s11, s6, s19
00100d3c:   vldr    s19, [r1, #+8]
00100d40:   vldr    s22, [r1, #+4]
00100d44:   vmla.f32 s12, s19, s6
00100d48:   vldr    s19, [r1, #+12]
00100d4c:   vmla.f32 s0, s24, s8
00100d50:   vmla.f32 s11, s22, s7
00100d54:   vldr    s22, [r1, #+12]
00100d58:   vmla.f32 s13, s19, s6
00100d5c:   vldr    s19, [r1, #+16]
00100d60:   vldr    s24, [r1, #+8]
00100d64:   vmla.f32 s12, s22, s7
00100d68:   vldr    s22, [r1, #+16]
00100d6c:   vmla.f32 s14, s19, s6
00100d70:   vldr    s19, [r1, #+20]
00100d74:   vmla.f32 s11, s24, s8
00100d78:   vldr    s24, [r1, #+16]
00100d7c:   vmla.f32 s13, s22, s7
00100d80:   vldr    s22, [r1, #+20]
00100d84:   vmla.f32 s15, s19, s6
00100d88:   vmla.f32 s12, s24, s8
00100d8c:   vldr    s24, [r1, #+20]
00100d90:   vmla.f32 s14, s22, s7
00100d94:   vldr    s22, [r1, #+24]
00100d98:   vmla.f32 s13, s24, s8
00100d9c:   vldr    s24, [r1, #+24]
00100da0:   vmla.f32 s15, s22, s7
00100da4:   vldr    s19, [r1, #+24]
00100da8:   vmla.f32 s14, s24, s8
00100dac:   vldr    s24, [r1, #+28]
00100db0:   vmla.f32 s10, s19, s6
00100db4:   vldr    s22, [r1, #+28]
00100db8:   vmla.f32 s15, s24, s8
00100dbc:   vldr    s19, [r1, #+28]
00100dc0:   vldr    s21, [r1, #+36]
00100dc4:   vmla.f32 s10, s22, s7
00100dc8:   vldr    s23, [r1, #+40]
00100dcc:   vldr    s22, [r1, #+48]
00100dd0:   vstr    s11, [r3]
00100dd4:   vstr    s12, [r3, #+8]
00100dd8:   vstr    s13, [r3, #+12]
00100ddc:   vmla.f32 s31, s19, s6
00100de0:   vstr    s0, [r3, #+4]
00100de4:   vldr    s19, [r1, #+44]
00100de8:   vstr    s14, [r3, #+16]
00100dec:   vldr    s14, [r3, #+44]
00100df0:   vldr    s12, [r2, #+44]
00100df4:   vstr    s15, [r3, #+20]
00100df8:   vldr    s15, [r3, #+48]
00100dfc:   vmla.f32 s10, s20, s8
00100e00:   vmla.f32 s14, s12, s9
00100e04:   vldr    s11, [r0, #+56]
00100e08:   mov     r0, lr
00100e0c:   vmla.f32 s15, s18, s9
00100e10:   vmla.f32 s30, s20, s6
00100e14:   vstr    s10, [r3, #+24]
00100e18:   vmla.f32 s14, s18, s1
00100e1c:   vmla.f32 s15, s27, s1
00100e20:   vldr    s10, [r2, #+56]
00100e24:   add     r2, r2, r10
00100e28:   vmla.f32 s29, s21, s6
00100e2c:   vmla.f32 s28, s23, s6
00100e30:   vmla.f32 s14, s27, s2
00100e34:   vmla.f32 s15, s2, s10
00100e38:   vldr    s13, [r1, #+52]
00100e3c:   vmla.f32 s31, s20, s7
00100e40:   vmla.f32 s14, s17, s3
00100e44:   vmla.f32 s30, s21, s7
00100e48:   vmla.f32 s15, s16, s3
00100e4c:   vmla.f32 s29, s23, s7
00100e50:   vmla.f32 s14, s16, s4
00100e54:   vmla.f32 s28, s19, s7
00100e58:   vmla.f32 s15, s26, s4
00100e5c:   vldr    s12, [r1, #+56]
00100e60:   add     r1, r1, r10
00100e64:   vmla.f32 s14, s26, s5
00100e68:   vmla.f32 s31, s21, s8
00100e6c:   vmla.f32 s15, s5, s11
00100e70:   vmla.f32 s30, s23, s8
00100e74:   vmla.f32 s14, s19, s6
00100e78:   vmla.f32 s29, s19, s8
00100e7c:   vmla.f32 s15, s22, s6
00100e80:   vmla.f32 s28, s22, s8
00100e84:   vmla.f32 s14, s22, s7
00100e88:   vstr    s31, [r3, #+28]
00100e8c:   vmla.f32 s15, s13, s7
00100e90:   vstr    s30, [r3, #+32]
00100e94:   vstr    s29, [r3, #+36]
00100e98:   vstr    s28, [r3, #+40]
00100e9c:   vmla.f32 s14, s13, s8
00100ea0:   vmla.f32 s15, s8, s12
00100ea4:   vstr    s14, [r3, #+44]
00100ea8:   vstr    s15, [r3, #+48]
00100eac:   add     r3, r3, r9
00100eb0:   bne     -952    ; addr=0x00100b00: convolution3_ref + 0x00000158
00100eb4:   ldr     r3, [sp, #+8]
00100eb8:   add     r4, r4, r8
00100ebc:   add     r5, r5, r8
00100ec0:   add     r6, r6, r8
00100ec4:   subs    r3, r3, #1
00100ec8:   str     r3, [sp, #+8]
00100ecc:   ldr     r3, [sp, #+16]
00100ed0:   add     r7, r7, r3
00100ed4:   bne     -1052   ; addr=0x00100ac0: convolution3_ref + 0x00000118
00100ed8:   ldr     r2, [sp, #+12]
00100edc:   ldr     r1, [sp, #+60]
00100ee0:   ldr     r3, [sp, #+40]
00100ee4:   add     r2, r2, r1
00100ee8:   str     r2, [sp, #+12]
00100eec:   add     r3, r3, #1
00100ef0:   ldr     r2, [sp, #+44]
00100ef4:   str     r3, [sp, #+40]
00100ef8:   cmp     r3, r2
00100efc:   ldr     r3, [sp, #+56]
00100f00:   ldr     r2, [sp, #+28]
00100f04:   add     r2, r2, r3
00100f08:   str     r2, [sp, #+28]
00100f0c:   ldr     r2, [sp, #+24]
00100f10:   add     r2, r2, r3
00100f14:   str     r2, [sp, #+24]
00100f18:   ldr     r2, [sp, #+20]
00100f1c:   add     r3, r2, r3
00100f20:   str     r3, [sp, #+20]
00100f24:   bne     -1164   ; addr=0x00100aa0: convolution3_ref + 0x000000f8
00100f28:   ldr     r2, [sp, #+32]
00100f2c:   ldr     r1, [sp, #+64]
00100f30:   ldr     r3, [sp, #+48]
00100f34:   add     r2, r2, r1
00100f38:   ldr     r1, [sp, #+68]
00100f3c:   str     r2, [sp, #+32]
00100f40:   ldr     r2, [sp, #+76]
00100f44:   cmp     r3, r2
00100f48:   ldr     r2, [sp, #+36]
00100f4c:   add     r2, r2, r1
00100f50:   str     r2, [sp, #+36]
00100f54:   bcc     -1272   ; addr=0x00100a64: convolution3_ref + 0x000000bc
00100f58:   add     sp, sp, #84
00100f5c:   vpop    {d8-d15}
00100f60:   pop     {r4,r5,r6,r7,r8,r9,r10,r11,lr}
00100f64:   b       +20880  ; addr=0x001060fc: Xil_DCacheEnable


          convolution3_opt:
00100f68:   push    {r4,r5,r6,r7,r8,r9,r10,r11,lr}
00100f6c:   mov     r7, r2
00100f70:   vpush   {d8-d15}
00100f74:   sub     sp, sp, #100
00100f78:   add     r5, sp, #212
00100f7c:   mov     r6, r1
00100f80:   ldr     r12, [sp, #+200]
00100f84:   ldr     r2, [sp, #+208]
00100f88:   str     r0, [sp, #+88]
00100f8c:   mov     r4, r12
00100f90:   str     r12, [sp, #+92]
00100f94:   str     r3, [sp, #+56]
00100f98:   str     r2, [sp, #+24]
00100f9c:   ldr     r10, [sp, #+204]
00100fa0:   ldm     r5, {r5,r9,r11}
00100fa4:   ldr     r8, [sp, #+224]
00100fa8:   bl      +20848  ; addr=0x00106120: Xil_ICacheEnable
00100fac:   bl      +20164  ; addr=0x00105e78: Xil_DCacheDisable
00100fb0:   cmp     r4, #0
00100fb4:   beq     +1368   ; addr=0x00101514: convolution3_opt + 0x000005ac
00100fb8:   ldr     r3, [sp, #+56]
00100fbc:   cmp     r3, #0
00100fc0:   beq     +1356   ; addr=0x00101514: convolution3_opt + 0x000005ac
00100fc4:   lsl     r3, r9, #2
00100fc8:   lsl     r2, r9, #6
00100fcc:   str     r6, [sp, #+32]
00100fd0:   mov     r1, r3
00100fd4:   str     r3, [sp, #+60]
00100fd8:   mul     r9, r5, r1
00100fdc:   lsl     r3, r10, #2
00100fe0:   lsl     r10, r8, #2
00100fe4:   str     r7, [sp, #+44]
00100fe8:   mul     r1, r5, r2
00100fec:   ldr     r2, [sp, #+24]
00100ff0:   mov     r0, r3
00100ff4:   str     r3, [sp, #+28]
00100ff8:   lsl     r3, r8, #6
00100ffc:   mov     r6, r10
00101000:   str     r1, [sp, #+72]
00101004:   mov     r1, #0
00101008:   mul     r3, r11, r3
0010100c:   str     r1, [sp, #+36]
00101010:   mul     r2, r0, r2
00101014:   mul     r1, r9, r4
00101018:   str     r3, [sp, #+76]
0010101c:   mul     r11, r11, r10
00101020:   str     r2, [sp, #+68]
00101024:   str     r1, [sp, #+64]
00101028:   ldr     r3, [sp, #+24]
0010102c:   cmp     r3, #0
00101030:   ldr     r3, [sp, #+36]
00101034:   add     r3, r3, #16
00101038:   str     r3, [sp, #+52]
0010103c:   beq     +1180   ; addr=0x001014e0: convolution3_opt + 0x00000578
00101040:   ldr     r2, [sp, #+60]
00101044:   ldr     r1, [sp, #+44]
00101048:   ldr     r0, [sp, #+32]
0010104c:   add     r3, r2, r1
00101050:   str     r1, [sp, #+16]
00101054:   add     r0, r6, r0
00101058:   str     r3, [sp, #+12]
0010105c:   add     r3, r2, r3
00101060:   str     r0, [sp, #+80]
00101064:   str     r3, [sp, #+20]
00101068:   add     r3, r6, r0
0010106c:   str     r3, [sp, #+84]
00101070:   ldr     r3, [sp, #+88]
00101074:   str     r3, [sp, #+40]
00101078:   mov     r3, #0
0010107c:   str     r3, [sp, #+48]
00101080:   ldr     r3, [sp, #+36]
00101084:   ldr     r2, [sp, #+52]
00101088:   cmp     r3, r2
0010108c:   bcs     +1016   ; addr=0x0010148c: convolution3_opt + 0x00000524
00101090:   ldr     r0, [sp, #+40]
00101094:   mov     r3, #0
00101098:   ldr     r10, [sp, #+84]
0010109c:   ldr     r8, [sp, #+80]
001010a0:   ldr     r7, [sp, #+32]
001010a4:   str     r3, [sp, #+8]
001010a8:   ldr     r4, [sp, #+20]
001010ac:   mov     r1, r10
001010b0:   ldr     lr, [sp, #+12]
001010b4:   mov     r2, r8
001010b8:   ldr     r12, [sp, #+16]
001010bc:   mov     r3, r7
001010c0:   vldr    s9, [r0, #+4]
001010c4:   mov     r5, #16
001010c8:   vldr    s10, [r0, #+8]
001010cc:   vldr    s11, [r0, #+12]
001010d0:   vldr    s12, [r0, #+16]
001010d4:   vldr    s13, [r0, #+20]
001010d8:   vldr    s3, [r0, #+24]
001010dc:   vldr    s4, [r0, #+28]
001010e0:   vldr    s5, [r0, #+32]
001010e4:   vldr    s6, [r0, #+36]
001010e8:   vldr    s7, [r0, #+40]
001010ec:   vldr    s8, [r0, #+44]
001010f0:   vldr    s14, [r0]
001010f4:   vldr    s15, [r0, #+48]
001010f8:   vldr    s20, [r2, #+12]
001010fc:   subs    r5, r5, #1
00101100:   vldr    s19, [r12]
00101104:   vldr    s23, [r3, #+44]
00101108:   vstr    s20, [sp, #+4]
0010110c:   vldr    s22, [r3, #+8]
00101110:   vldr    s20, [r3, #+4]
00101114:   vmla.f32 s8, s19, s23
00101118:   vldr    s18, [r12, #+4]
0010111c:   vmla.f32 s10, s19, s22
00101120:   vmla.f32 s9, s19, s20
00101124:   vldr    s20, [r3]
00101128:   vldr    s30, [r3, #+16]
0010112c:   vmla.f32 s14, s19, s20
00101130:   vldr    s21, [r3, #+48]
00101134:   vmla.f32 s9, s22, s18
00101138:   vldr    s31, [r3, #+12]
0010113c:   vldr    s20, [r3, #+4]
00101140:   vmla.f32 s12, s19, s30
00101144:   vldr    s29, [r3, #+20]
00101148:   vmla.f32 s8, s21, s18
0010114c:   vldr    s17, [r12, #+8]
00101150:   add     r12, r12, r9
00101154:   vmla.f32 s10, s31, s18
00101158:   vmla.f32 s14, s20, s18
0010115c:   vldr    s20, [r3, #+52]
00101160:   vmla.f32 s13, s19, s29
00101164:   vldr    s28, [r3, #+24]
00101168:   vmla.f32 s9, s31, s17
0010116c:   vmla.f32 s12, s29, s18
00101170:   vmla.f32 s8, s20, s17
00101174:   vldr    s20, [r2, #+4]
00101178:   vldr    s16, [lr]
0010117c:   vmla.f32 s3, s19, s28
00101180:   vldr    s27, [r3, #+28]
00101184:   vmla.f32 s10, s30, s17
00101188:   vmla.f32 s13, s28, s18
0010118c:   vmla.f32 s9, s16, s20
00101190:   vldr    s20, [r2, #+8]
00101194:   vmla.f32 s4, s19, s27
00101198:   vldr    s26, [r3, #+32]
0010119c:   vmla.f32 s12, s28, s17
001011a0:   vmla.f32 s3, s27, s18
001011a4:   vldr    s25, [r3, #+36]
001011a8:   vmla.f32 s10, s16, s20
001011ac:   vldr    s20, [r2, #+16]
001011b0:   vmla.f32 s5, s19, s26
001011b4:   vmla.f32 s13, s27, s17
001011b8:   vmla.f32 s6, s19, s25
001011bc:   vmla.f32 s4, s26, s18
001011c0:   vmla.f32 s12, s16, s20
001011c4:   vldr    s20, [r2, #+20]
001011c8:   vldr    s24, [r3, #+40]
001011cc:   vmla.f32 s3, s26, s17
001011d0:   vmla.f32 s5, s25, s18
001011d4:   vmla.f32 s13, s16, s20
001011d8:   vldr    s20, [r2, #+24]
001011dc:   vmla.f32 s7, s19, s24
001011e0:   vmla.f32 s6, s24, s18
001011e4:   vmla.f32 s4, s25, s17
001011e8:   vmla.f32 s3, s16, s20
001011ec:   vldr    s20, [r2, #+28]
001011f0:   vmla.f32 s5, s24, s17
001011f4:   vmla.f32 s11, s19, s31
001011f8:   vmla.f32 s7, s23, s18
001011fc:   vldr    s0, [lr, #+4]
00101200:   vldr    s1, [lr, #+8]
00101204:   add     lr, lr, r9
00101208:   vldr    s2, [r4]
0010120c:   vmla.f32 s6, s23, s17
00101210:   vmla.f32 s14, s22, s17
00101214:   vldr    s23, [sp, #+4]
00101218:   vldr    s22, [r2]
0010121c:   vmla.f32 s4, s16, s20
00101220:   vldr    s20, [r2, #+32]
00101224:   vmla.f32 s11, s30, s18
00101228:   vmla.f32 s7, s21, s17
0010122c:   vmla.f32 s5, s16, s20
00101230:   vldr    s20, [r2, #+36]
00101234:   vmla.f32 s11, s29, s17
00101238:   vmla.f32 s10, s0, s23
0010123c:   vmla.f32 s6, s16, s20
00101240:   vldr    s20, [r2, #+40]
00101244:   vmla.f32 s7, s16, s20
00101248:   vldr    s20, [r2, #+44]
0010124c:   vmla.f32 s11, s16, s23
00101250:   vmla.f32 s15, s21, s19
00101254:   vmla.f32 s8, s20, s16
00101258:   vldr    s20, [r2, #+8]
0010125c:   vldr    s19, [r2, #+16]
00101260:   vmla.f32 s14, s16, s22
00101264:   vmla.f32 s9, s0, s20
00101268:   vldr    s20, [r2, #+16]
0010126c:   vmla.f32 s10, s1, s19
00101270:   vmla.f32 s11, s0, s20
00101274:   vldr    s20, [r2, #+20]
00101278:   vldr    s19, [r2, #+20]
0010127c:   vldr    s30, [r1, #+4]
00101280:   vmla.f32 s12, s0, s20
00101284:   vldr    s20, [r2, #+24]
00101288:   vmla.f32 s11, s1, s19
0010128c:   vldr    s19, [r2, #+24]
00101290:   vmla.f32 s13, s0, s20
00101294:   vldr    s20, [r2, #+28]
00101298:   vmla.f32 s12, s1, s19
0010129c:   vldr    s19, [r2, #+28]
001012a0:   vmla.f32 s3, s0, s20
001012a4:   vldr    s20, [r2, #+32]
001012a8:   vmla.f32 s13, s1, s19
001012ac:   vldr    s19, [r2, #+32]
001012b0:   vmla.f32 s4, s0, s20
001012b4:   vldr    s20, [r2, #+36]
001012b8:   vmla.f32 s3, s1, s19
001012bc:   vldr    s19, [r2, #+36]
001012c0:   vmla.f32 s5, s0, s20
001012c4:   vldr    s20, [r2, #+40]
001012c8:   vmla.f32 s4, s1, s19
001012cc:   vldr    s19, [r2, #+40]
001012d0:   vmla.f32 s6, s0, s20
001012d4:   vldr    s20, [r2, #+44]
001012d8:   vmla.f32 s5, s1, s19
001012dc:   vldr    s19, [r2, #+44]
001012e0:   vmla.f32 s7, s20, s0
001012e4:   vldr    s20, [r2, #+48]
001012e8:   vmla.f32 s6, s19, s1
001012ec:   vldr    s19, [r2, #+48]
001012f0:   vmla.f32 s8, s20, s0
001012f4:   vldr    s20, [r2, #+4]
001012f8:   vmla.f32 s7, s19, s1
001012fc:   vldr    s19, [r2, #+52]
00101300:   vmla.f32 s14, s0, s20
00101304:   vldr    s25, [r1, #+8]
00101308:   vmla.f32 s8, s19, s1
0010130c:   vldr    s19, [r2, #+8]
00101310:   vldr    s24, [r1, #+12]
00101314:   vmla.f32 s9, s1, s23
00101318:   vmla.f32 s14, s1, s19
0010131c:   vldr    s19, [r3, #+52]
00101320:   vldr    s23, [r1, #+16]
00101324:   vmla.f32 s15, s19, s18
00101328:   vldr    s18, [r1]
0010132c:   vldr    s22, [r1, #+20]
00101330:   vldr    s21, [r1, #+24]
00101334:   vmla.f32 s14, s2, s18
00101338:   vldr    s18, [r3, #+56]
0010133c:   add     r3, r3, r11
00101340:   vmla.f32 s13, s22, s2
00101344:   vmla.f32 s9, s30, s2
00101348:   vmla.f32 s15, s17, s18
0010134c:   vldr    s18, [r4, #+4]
00101350:   vmla.f32 s3, s21, s2
00101354:   vldr    s20, [r1, #+28]
00101358:   vmla.f32 s14, s30, s18
0010135c:   vmla.f32 s13, s21, s18
00101360:   vldr    s30, [r2, #+48]
00101364:   vldr    s17, [r4, #+8]
00101368:   add     r4, r4, r9
0010136c:   vmla.f32 s15, s30, s16
00101370:   vmla.f32 s4, s20, s2
00101374:   vmla.f32 s3, s20, s18
00101378:   vmla.f32 s13, s20, s17
0010137c:   vldr    s20, [r2, #+52]
00101380:   vldr    s26, [r1, #+32]
00101384:   vldr    s27, [r1, #+36]
00101388:   vldr    s28, [r1, #+40]
0010138c:   vmla.f32 s15, s20, s0
00101390:   vldr    s20, [r2, #+56]
00101394:   add     r2, r2, r11
00101398:   vldr    s29, [r1, #+44]
0010139c:   vldr    s19, [r1, #+48]
001013a0:   vmla.f32 s10, s25, s2
001013a4:   vmla.f32 s11, s24, s2
001013a8:   vmla.f32 s12, s23, s2
001013ac:   vmla.f32 s15, s1, s20
001013b0:   vmla.f32 s5, s26, s2
001013b4:   vmla.f32 s6, s27, s2
001013b8:   vmla.f32 s7, s28, s2
001013bc:   vmla.f32 s8, s29, s2
001013c0:   vmla.f32 s15, s19, s2
001013c4:   vldr    s16, [r1, #+52]
001013c8:   vmla.f32 s9, s25, s18
001013cc:   vmla.f32 s10, s24, s18
001013d0:   vmla.f32 s11, s23, s18
001013d4:   vmla.f32 s12, s22, s18
001013d8:   vmla.f32 s4, s26, s18
001013dc:   vmla.f32 s5, s27, s18
001013e0:   vmla.f32 s6, s28, s18
001013e4:   vmla.f32 s7, s29, s18
001013e8:   vmla.f32 s8, s19, s18
001013ec:   vmla.f32 s15, s16, s18
001013f0:   vldr    s0, [r1, #+56]
001013f4:   add     r1, r1, r11
001013f8:   vmla.f32 s14, s25, s17
001013fc:   vmla.f32 s9, s24, s17
00101400:   vmla.f32 s10, s23, s17
00101404:   vmla.f32 s11, s22, s17
00101408:   vmla.f32 s12, s21, s17
0010140c:   vmla.f32 s3, s26, s17
00101410:   vmla.f32 s4, s27, s17
00101414:   vmla.f32 s5, s28, s17
00101418:   vmla.f32 s6, s29, s17
0010141c:   vmla.f32 s7, s19, s17
00101420:   vmla.f32 s8, s16, s17
00101424:   vmla.f32 s15, s17, s0
00101428:   vstr    s14, [r0]
0010142c:   vstr    s9, [r0, #+4]
00101430:   vstr    s10, [r0, #+8]
00101434:   vstr    s11, [r0, #+12]
00101438:   vstr    s12, [r0, #+16]
0010143c:   vstr    s13, [r0, #+20]
00101440:   vstr    s3, [r0, #+24]
00101444:   vstr    s4, [r0, #+28]
00101448:   vstr    s5, [r0, #+32]
0010144c:   vstr    s6, [r0, #+36]
00101450:   vstr    s7, [r0, #+40]
00101454:   vstr    s8, [r0, #+44]
00101458:   vstr    s15, [r0, #+48]
0010145c:   bne     -876    ; addr=0x001010f8: convolution3_opt + 0x00000190
00101460:   ldr     r3, [sp, #+8]
00101464:   add     r7, r7, r6
00101468:   ldr     r2, [sp, #+24]
0010146c:   add     r8, r8, r6
00101470:   add     r10, r10, r6
00101474:   add     r3, r3, #1
00101478:   str     r3, [sp, #+8]
0010147c:   cmp     r3, r2
00101480:   ldr     r3, [sp, #+28]
00101484:   add     r0, r0, r3
00101488:   bne     -1000   ; addr=0x001010a8: convolution3_opt + 0x00000140
0010148c:   ldr     r3, [sp, #+48]
00101490:   ldr     r1, [sp, #+16]
00101494:   add     r3, r3, #1
00101498:   mov     r2, r3
0010149c:   str     r3, [sp, #+48]
001014a0:   ldr     r3, [sp, #+64]
001014a4:   add     r1, r1, r3
001014a8:   str     r1, [sp, #+16]
001014ac:   ldr     r1, [sp, #+56]
001014b0:   cmp     r2, r1
001014b4:   ldr     r2, [sp, #+12]
001014b8:   add     r2, r2, r3
001014bc:   str     r2, [sp, #+12]
001014c0:   ldr     r2, [sp, #+20]
001014c4:   add     r3, r2, r3
001014c8:   ldr     r2, [sp, #+68]
001014cc:   str     r3, [sp, #+20]
001014d0:   ldr     r3, [sp, #+40]
001014d4:   add     r3, r3, r2
001014d8:   str     r3, [sp, #+40]
001014dc:   bne     -1124   ; addr=0x00101080: convolution3_opt + 0x00000118
001014e0:   ldr     r2, [sp, #+44]
001014e4:   ldr     r1, [sp, #+72]
001014e8:   ldr     r3, [sp, #+52]
001014ec:   add     r2, r2, r1
001014f0:   str     r2, [sp, #+44]
001014f4:   ldr     r2, [sp, #+92]
001014f8:   str     r3, [sp, #+36]
001014fc:   cmp     r2, r3
00101500:   ldr     r3, [sp, #+32]
00101504:   ldr     r2, [sp, #+76]
00101508:   add     r3, r3, r2
0010150c:   str     r3, [sp, #+32]
00101510:   bhi     -1264   ; addr=0x00101028: convolution3_opt + 0x000000c0
00101514:   add     sp, sp, #100
00101518:   vpop    {d8-d15}
0010151c:   pop     {r4,r5,r6,r7,r8,r9,r10,r11,lr}
00101520:   b       +19412  ; addr=0x001060fc: Xil_DCacheEnable

