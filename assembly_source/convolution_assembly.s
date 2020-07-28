.text
.syntax unified

.align 4
.global convolution_assembly
.arm
// r0 ofmap r1 ifmap r2 fmap << 에 해당하는 direction
//convolution_assembly(ofmap + (m*E + e)*F, ifmap + (c*H + e)*W, fmap + (m*C + c)*R*S);

convolution_assembly:
	push {r3,r4,r5,r6,r7,r8}
	sub r4, r4, r4
	add r4, r4, #3
	//fmap 올리기
loop:
	add r1, r1, #60
	vldl.32 {d6,d7}, [r2]
	add r2,r2, #12
	vdup.32 q4,s12
	//ifmap 올리기
	vldl.32 {d18,d19}, [r1]
	mov r5,r1
	add r5, #16
	vldl.32 {d20,d21}, [r5]
	mov r6,r5
	add r6, #16
	vldl.32 {d22,d23}, [r6]
	mov r7,r6
	add r7, #16
	vldl.32 {d24,d25}, [r7]
	mov r8,r7
	add r8, #16
	vldl.32 {d26,d27}, [r8]

	vmla.f32 q0, q9, q4
	vmla.f32 q1, q10, q4
	vmla.f32 q2, q11, q4
	vmla.f32 s20, s48, s12

	vmla.f32 s0, s37, s13
	vmla.f32 s1, s38, s13
	vmla.f32 s2, s39, s13
	vmla.f32 s3, s40, s13
	vmla.f32 s4, s41, s13
	vmla.f32 s5, s42, s13
	vmla.f32 s6, s43, s13
	vmla.f32 s7, s44, s13
	vmla.f32 s8, s45, s13
	vmla.f32 s9, s46, s13
	vmla.f32 s10, s47, s13
	vmla.f32 s11, s48, s13
	vmla.f32 s12, s49, s13

	vmla.f32 s0, s38, s14
	vmla.f32 s1, s39, s14
	vmla.f32 s2, s40, s14
	vmla.f32 s3, s41, s14
	vmla.f32 s4, s42, s14
	vmla.f32 s5, s43, s14
	vmla.f32 s6, s44, s14
	vmla.f32 s7, s45, s14
	vmla.f32 s8, s46, s14
	vmla.f32 s9, s47, s14
	vmla.f32 s10, s48, s14
	vmla.f32 s11, s49, s14
	vmla.f32 s12, s50, s14
	subs r4, r4, #1
	bne loop

	vst1.32 {d0,d1}, [r0]!
	vst1.32 {d2,d3}, [r0]!
	vst1.32 {d4,d5}, [r0]!
	vst1.32 {s20},[r0]!

	pop {r3,r4,r5,r6,r7,r8}
	bx lr
