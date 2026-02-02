PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"icon", "title"}]
  GETTABLEKS R4 R0 K3 ["controls"]
  GETTABLEKS R3 R4 K0 ["icon"]
  SETTABLEKS R3 R2 K0 ["icon"]
  GETTABLEKS R4 R0 K3 ["controls"]
  GETTABLEKS R3 R4 K1 ["title"]
  SETTABLEKS R3 R2 K1 ["title"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["action activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["close clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R2 K4 [{"action", "icon", "onClose", "title"}]
  GETTABLEKS R5 R0 K5 ["controls"]
  GETTABLEKS R4 R5 K6 ["actionText"]
  JUMPIFEQKS R4 K7 [""] [+12]
  DUPTABLE R3 K10 [{"text", "onActivated"}]
  GETTABLEKS R5 R0 K5 ["controls"]
  GETTABLEKS R4 R5 K6 ["actionText"]
  SETTABLEKS R4 R3 K8 ["text"]
  DUPCLOSURE R4 K11 [PROTO_2]
  SETTABLEKS R4 R3 K9 ["onActivated"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["action"]
  GETTABLEKS R4 R0 K5 ["controls"]
  GETTABLEKS R3 R4 K1 ["icon"]
  SETTABLEKS R3 R2 K1 ["icon"]
  GETTABLEKS R5 R0 K5 ["controls"]
  GETTABLEKS R4 R5 K12 ["hasCloseAffordance"]
  JUMPIFNOT R4 [+2]
  DUPCLOSURE R3 K13 [PROTO_3]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["onClose"]
  GETTABLEKS R4 R0 K5 ["controls"]
  GETTABLEKS R3 R4 K3 ["title"]
  SETTABLEKS R3 R2 K3 ["title"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Snackbar"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R5 K14 [{"summary", "stories", "controls"}]
  LOADK R6 K9 ["Snackbar"]
  SETTABLEKS R6 R5 K11 ["summary"]
  NEWTABLE R6 0 2
  DUPTABLE R7 K17 [{"name", "story"}]
  LOADK R8 K18 ["No Button Snackbar"]
  SETTABLEKS R8 R7 K15 ["name"]
  DUPCLOSURE R8 K19 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K16 ["story"]
  DUPTABLE R8 K17 [{"name", "story"}]
  LOADK R9 K9 ["Snackbar"]
  SETTABLEKS R9 R8 K15 ["name"]
  DUPCLOSURE R9 K20 [PROTO_4]
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K16 ["story"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K12 ["stories"]
  DUPTABLE R6 K25 [{"icon", "title", "actionText", "hasCloseAffordance"}]
  NEWTABLE R7 0 2
  LOADK R8 K26 ["diamond-simplified"]
  LOADK R9 K27 [""]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K21 ["icon"]
  LOADK R7 K28 ["This is a snackbar!"]
  SETTABLEKS R7 R6 K22 ["title"]
  LOADK R7 K29 ["Primary"]
  SETTABLEKS R7 R6 K23 ["actionText"]
  LOADB R7 1
  SETTABLEKS R7 R6 K24 ["hasCloseAffordance"]
  SETTABLEKS R6 R5 K13 ["controls"]
  RETURN R5 1
