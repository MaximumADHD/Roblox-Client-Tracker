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
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K6 ["Number"]
  GETTABLEKS R4 R2 K7 ["Object"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R1 K8 ["ChalkLua"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K9 ["types"]
  CALL R6 1 1
  DUPCLOSURE R7 K10 [PROTO_0]
  DUPTABLE R8 K29 [{"aAnnotation", "aColor", "aIndicator", "bAnnotation", "bColor", "bIndicator", "changeColor", "changeLineTrailingSpaceColor", "commonColor", "commonIndicator", "commonLineTrailingSpaceColor", "compareKeys", "contextLines", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts", "omitAnnotationLines", "patchColor"}]
  LOADK R9 K30 ["Expected"]
  SETTABLEKS R9 R8 K11 ["aAnnotation"]
  GETTABLEKS R9 R5 K31 ["green"]
  SETTABLEKS R9 R8 K12 ["aColor"]
  LOADK R9 K32 ["-"]
  SETTABLEKS R9 R8 K13 ["aIndicator"]
  LOADK R9 K33 ["Received"]
  SETTABLEKS R9 R8 K14 ["bAnnotation"]
  GETTABLEKS R9 R5 K34 ["red"]
  SETTABLEKS R9 R8 K15 ["bColor"]
  LOADK R9 K35 ["+"]
  SETTABLEKS R9 R8 K16 ["bIndicator"]
  GETTABLEKS R9 R5 K36 ["inverse"]
  SETTABLEKS R9 R8 K17 ["changeColor"]
  SETTABLEKS R7 R8 K18 ["changeLineTrailingSpaceColor"]
  GETTABLEKS R9 R5 K37 ["dim"]
  SETTABLEKS R9 R8 K19 ["commonColor"]
  LOADK R9 K38 [" "]
  SETTABLEKS R9 R8 K20 ["commonIndicator"]
  SETTABLEKS R7 R8 K21 ["commonLineTrailingSpaceColor"]
  GETTABLEKS R9 R4 K39 ["None"]
  SETTABLEKS R9 R8 K22 ["compareKeys"]
  LOADN R9 5
  SETTABLEKS R9 R8 K23 ["contextLines"]
  LOADK R9 K40 [""]
  SETTABLEKS R9 R8 K24 ["emptyFirstOrLastLinePlaceholder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["expand"]
  LOADB R9 0
  SETTABLEKS R9 R8 K26 ["includeChangeCounts"]
  LOADB R9 0
  SETTABLEKS R9 R8 K27 ["omitAnnotationLines"]
  GETTABLEKS R9 R5 K41 ["yellow"]
  SETTABLEKS R9 R8 K28 ["patchColor"]
  DUPCLOSURE R9 K42 [PROTO_1]
  CAPTURE VAL R8
  DUPCLOSURE R10 K43 [PROTO_2]
  CAPTURE VAL R3
  DUPCLOSURE R11 K44 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R3
  DUPTABLE R12 K47 [{"noColor", "normalizeDiffOptions"}]
  SETTABLEKS R7 R12 K45 ["noColor"]
  SETTABLEKS R11 R12 K46 ["normalizeDiffOptions"]
  RETURN R12 1
