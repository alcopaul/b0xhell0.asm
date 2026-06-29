;
; hell0.asm by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],
; Brigada Ocho [b8]
;
; June 29, 2026, NYC
;
; ml64.exe hell0.asm /link /defaultlib:msvcrt.lib /subsystem:console /entry:main
;
.code
EXTRN	printf:PROC
main	PROC
	sub	rsp, 40					; 00000028H
	lea	rdx, OFFSET $SG2583
	lea	rcx, OFFSET $SG2584
	call	printf
	xor	eax, eax
	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
.data
$SG2583	DB	'Hey. What''s up?', 0aH, 00H
$SG2584	DB	'%s', 00H
END
