;
; b0xhell0.asm by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],
; Brigada Ocho [b8]
;
; June 29, 2026, NYC
;
; ml64.exe b0xhell0.asm /link /defaultlib:msvcrt.lib user32.lib /subsystem:console /entry:main
;
.code
EXTRN printf:PROC
EXTRN __imp_MessageBoxA:PROC
main PROC
sub rsp, 40		; 00000028H
lea r8, OFFSET $SG80335
lea rdx, OFFSET $SG80334
push rdx
push r8
lea rcx, OFFSET $SG25840
call printf
xor r9d, r9d
pop rdx
pop r8
xor ecx, ecx
call QWORD PTR __imp_MessageBoxA
xor eax, eax
add rsp, 40		; 00000028H
ret 0
main ENDP
.data
$SG80334 DB 'HHHHHHHHHHHHHHHHHHHHey!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 00H
$SG80335 DB 'What''s Up???????????????????????????????????????????????????', 00H
$SG25840 DB '%s %s', 0AH, 00H
END
