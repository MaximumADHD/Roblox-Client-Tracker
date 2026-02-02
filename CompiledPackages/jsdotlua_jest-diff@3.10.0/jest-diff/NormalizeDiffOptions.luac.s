PROTO_0:
  RETURN R0 1

PROTO_1:
  JUMPIFNOT R0 [+9]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["function"] [+3]
  MOVE R1 R0
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["compareKeys"]
  RETURN R1 1

PROTO_2:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["number"] [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["isSafeInteger"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  LOADN R1 0
  JUMPIFNOTLE R1 R0 [+2]
  RETURN R0 1
  LOADN R1 5
  RETURN R1 1

PROTO_3:
  JUMPIFNOT R0 [+2]
  MOVE R1 R0
  JUMP [+2]
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["assign"]
  NEWTABLE R3 0 0
  GETUPVAL R4 1
  MOVE R5 R1
  DUPTABLE R6 K3 [{"compareKeys", "contextLines"}]
  GETTABLEKS R8 R1 K1 ["compareKeys"]
  JUMPIFNOT R8 [+9]
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K5 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K6 ["function"] [+3]
  MOVE R7 R8
  JUMP [+3]
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K1 ["compareKeys"]
  SETTABLEKS R7 R6 K1 ["compareKeys"]
  GETTABLEKS R8 R1 K2 ["contextLines"]
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K5 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K7 ["number"] [+12]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["isSafeInteger"]
  MOVE R10 R8
  CALL R9 1 1
  JUMPIFNOT R9 [+5]
  LOADN R9 0
  JUMPIFNOTLE R9 R8 [+3]
  MOVE R7 R8
  JUMP [+1]
  LOADN R7 5
  SETTABLEKS R7 R6 K2 ["contextLines"]
  CALL R2 4 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Number"]
  GETTABLEKS R2 R0 K8 ["Object"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["chalk"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["types"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  DUPTABLE R6 K30 [{"aAnnotation", "aColor", "aIndicator", "bAnnotation", "bColor", "bIndicator", "changeColor", "changeLineTrailingSpaceColor", "commonColor", "commonIndicator", "commonLineTrailingSpaceColor", "compareKeys", "contextLines", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts", "omitAnnotationLines", "patchColor"}]
  LOADK R7 K31 ["Expected"]
  SETTABLEKS R7 R6 K12 ["aAnnotation"]
  GETTABLEKS R7 R3 K32 ["green"]
  SETTABLEKS R7 R6 K13 ["aColor"]
  LOADK R7 K33 ["-"]
  SETTABLEKS R7 R6 K14 ["aIndicator"]
  LOADK R7 K34 ["Received"]
  SETTABLEKS R7 R6 K15 ["bAnnotation"]
  GETTABLEKS R7 R3 K35 ["red"]
  SETTABLEKS R7 R6 K16 ["bColor"]
  LOADK R7 K36 ["+"]
  SETTABLEKS R7 R6 K17 ["bIndicator"]
  GETTABLEKS R7 R3 K37 ["inverse"]
  SETTABLEKS R7 R6 K18 ["changeColor"]
  SETTABLEKS R5 R6 K19 ["changeLineTrailingSpaceColor"]
  GETTABLEKS R7 R3 K38 ["dim"]
  SETTABLEKS R7 R6 K20 ["commonColor"]
  LOADK R7 K39 [" "]
  SETTABLEKS R7 R6 K21 ["commonIndicator"]
  SETTABLEKS R5 R6 K22 ["commonLineTrailingSpaceColor"]
  GETTABLEKS R7 R2 K40 ["None"]
  SETTABLEKS R7 R6 K23 ["compareKeys"]
  LOADN R7 5
  SETTABLEKS R7 R6 K24 ["contextLines"]
  LOADK R7 K41 [""]
  SETTABLEKS R7 R6 K25 ["emptyFirstOrLastLinePlaceholder"]
  LOADB R7 1
  SETTABLEKS R7 R6 K26 ["expand"]
  LOADB R7 0
  SETTABLEKS R7 R6 K27 ["includeChangeCounts"]
  LOADB R7 0
  SETTABLEKS R7 R6 K28 ["omitAnnotationLines"]
  GETTABLEKS R7 R3 K42 ["yellow"]
  SETTABLEKS R7 R6 K29 ["patchColor"]
  DUPCLOSURE R7 K43 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R8 K44 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R9 K45 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R1
  DUPTABLE R10 K48 [{"noColor", "normalizeDiffOptions"}]
  SETTABLEKS R5 R10 K46 ["noColor"]
  SETTABLEKS R9 R10 K47 ["normalizeDiffOptions"]
  RETURN R10 1
