;
; msgb0x.asm by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],
; Brigada Ocho [b8]
;
; June 29, 2026, NYC
;
; ml64.exe msgb0x.asm /link /defaultlib:user32.lib /subsystem:windows /entry:main
;
.code
EXTRN	__imp_MessageBoxA:PROC
main	PROC
	sub	rsp, 40					; 00000028H
	xor	r9d, r9d
	lea	r8, OFFSET $SG80334
	lea	rdx, OFFSET $SG80335
	xor	ecx, ecx
	call	QWORD PTR __imp_MessageBoxA
	xor	eax, eax
	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
.data
$SG80334 DB	'Hey!', 00H
$SG80335 DB	'What''s Up?', 00H
END