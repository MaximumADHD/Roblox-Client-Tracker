PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Primary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Secondary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Tertiary"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["View"]
  DUPTABLE R3 K2 [{"Size"}]
  GETIMPORT R4 K5 [UDim2.fromOffset]
  GETTABLEKS R6 R0 K6 ["controls"]
  GETTABLEKS R5 R6 K7 ["containerWidth"]
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["Size"]
  DUPTABLE R4 K9 [{"DialogButtonGroup"}]
  GETUPVAL R5 0
  GETUPVAL R6 2
  DUPTABLE R7 K13 [{"primaryAction", "secondaryAction", "tertiaryAction"}]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K10 ["primaryAction"]
  JUMPIFEQKS R9 K14 [""] [+12]
  DUPTABLE R8 K17 [{"text", "onActivated"}]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K10 ["primaryAction"]
  SETTABLEKS R9 R8 K15 ["text"]
  DUPCLOSURE R9 K18 [PROTO_0]
  SETTABLEKS R9 R8 K16 ["onActivated"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K10 ["primaryAction"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K11 ["secondaryAction"]
  JUMPIFEQKS R9 K14 [""] [+12]
  DUPTABLE R8 K17 [{"text", "onActivated"}]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K11 ["secondaryAction"]
  SETTABLEKS R9 R8 K15 ["text"]
  DUPCLOSURE R9 K19 [PROTO_1]
  SETTABLEKS R9 R8 K16 ["onActivated"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K11 ["secondaryAction"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K12 ["tertiaryAction"]
  JUMPIFEQKS R9 K14 [""] [+12]
  DUPTABLE R8 K17 [{"text", "onActivated"}]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K12 ["tertiaryAction"]
  SETTABLEKS R9 R8 K15 ["text"]
  DUPCLOSURE R9 K20 [PROTO_2]
  SETTABLEKS R9 R8 K16 ["onActivated"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K12 ["tertiaryAction"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["DialogButtonGroup"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["DialogButtonGroup"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["createElement"]
  DUPTABLE R5 K15 [{"name", "controls", "stories"}]
  LOADK R6 K7 ["DialogButtonGroup"]
  SETTABLEKS R6 R5 K12 ["name"]
  DUPTABLE R6 K20 [{"containerWidth", "primaryAction", "secondaryAction", "tertiaryAction"}]
  LOADN R7 62
  SETTABLEKS R7 R6 K16 ["containerWidth"]
  LOADK R7 K21 ["Save"]
  SETTABLEKS R7 R6 K17 ["primaryAction"]
  LOADK R7 K22 ["Don't save"]
  SETTABLEKS R7 R6 K18 ["secondaryAction"]
  LOADK R7 K23 ["Cancel"]
  SETTABLEKS R7 R6 K19 ["tertiaryAction"]
  SETTABLEKS R6 R5 K13 ["controls"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K25 [{"name", "story"}]
  LOADK R8 K26 ["Configurable"]
  SETTABLEKS R8 R7 K12 ["name"]
  DUPCLOSURE R8 K27 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K24 ["story"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K14 ["stories"]
  RETURN R5 1
