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
  JUMPIFEQKS R9 K14 [""] [+20]
  DUPTABLE R8 K18 [{"uri", "text", "onActivated"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K19 ["fromWidget"]
  LOADK R10 K20 ["Dialog"]
  LOADK R11 K21 ["Primary"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["uri"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K10 ["primaryAction"]
  SETTABLEKS R9 R8 K16 ["text"]
  DUPCLOSURE R9 K22 [PROTO_0]
  SETTABLEKS R9 R8 K17 ["onActivated"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K10 ["primaryAction"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K11 ["secondaryAction"]
  JUMPIFEQKS R9 K14 [""] [+20]
  DUPTABLE R8 K18 [{"uri", "text", "onActivated"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K19 ["fromWidget"]
  LOADK R10 K20 ["Dialog"]
  LOADK R11 K23 ["Secondary"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["uri"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K11 ["secondaryAction"]
  SETTABLEKS R9 R8 K16 ["text"]
  DUPCLOSURE R9 K24 [PROTO_1]
  SETTABLEKS R9 R8 K17 ["onActivated"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K11 ["secondaryAction"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K12 ["tertiaryAction"]
  JUMPIFEQKS R9 K14 [""] [+20]
  DUPTABLE R8 K18 [{"uri", "text", "onActivated"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K19 ["fromWidget"]
  LOADK R10 K20 ["Dialog"]
  LOADK R11 K25 ["Tertiary"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["uri"]
  GETTABLEKS R10 R0 K6 ["controls"]
  GETTABLEKS R9 R10 K12 ["tertiaryAction"]
  SETTABLEKS R9 R8 K16 ["text"]
  DUPCLOSURE R9 K26 [PROTO_2]
  SETTABLEKS R9 R8 K17 ["onActivated"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["StudioFoundation"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["StudioUri"]
  GETTABLEKS R6 R3 K14 ["createElement"]
  DUPTABLE R7 K18 [{"name", "controls", "stories"}]
  LOADK R8 K7 ["DialogButtonGroup"]
  SETTABLEKS R8 R7 K15 ["name"]
  DUPTABLE R8 K23 [{"containerWidth", "primaryAction", "secondaryAction", "tertiaryAction"}]
  LOADN R9 62
  SETTABLEKS R9 R8 K19 ["containerWidth"]
  LOADK R9 K24 ["Save"]
  SETTABLEKS R9 R8 K20 ["primaryAction"]
  LOADK R9 K25 ["Don't save"]
  SETTABLEKS R9 R8 K21 ["secondaryAction"]
  LOADK R9 K26 ["Cancel"]
  SETTABLEKS R9 R8 K22 ["tertiaryAction"]
  SETTABLEKS R8 R7 K16 ["controls"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K28 [{"name", "story"}]
  LOADK R10 K29 ["Configurable"]
  SETTABLEKS R10 R9 K15 ["name"]
  DUPCLOSURE R10 K30 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K27 ["story"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K17 ["stories"]
  RETURN R7 1
