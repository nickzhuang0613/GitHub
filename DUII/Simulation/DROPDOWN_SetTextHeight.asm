﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\DROPDOWN_SetTextHeight.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_DROPDOWN_SetTextHeight
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_DROPDOWN__AdjustHeight:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_DROPDOWN_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\dropdown_settextheight.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _DROPDOWN_SetTextHeight
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_TextHeight$ = 12					; size = 4
_DROPDOWN_SetTextHeight PROC				; COMDAT
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 40
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@DROPDOWN_S
; Line 42
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_DROPDOWN_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 43
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	cx, WORD PTR _TextHeight$[ebp]
	mov	WORD PTR [eax+60], cx
; Line 44
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 45
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_DROPDOWN__AdjustHeight
	add	esp, 4
; Line 46
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN2@DROPDOWN_S:
; Line 49
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DROPDOWN_SetTextHeight ENDP
_TEXT	ENDS
END