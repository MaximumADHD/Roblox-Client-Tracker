PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Size", "tag"}]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 44
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  LOADK R4 K7 ["row align-x-center align-y-center"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"title", "shortcut", "side", "align", "text"}]
  GETTABLEKS R8 R0 K14 ["controls"]
  GETTABLEKS R7 R8 K8 ["title"]
  SETTABLEKS R7 R6 K8 ["title"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K9 ["shortcut"]
  GETTABLEKS R8 R0 K14 ["controls"]
  GETTABLEKS R7 R8 K10 ["side"]
  SETTABLEKS R7 R6 K10 ["side"]
  GETTABLEKS R8 R0 K14 ["controls"]
  GETTABLEKS R7 R8 K11 ["align"]
  SETTABLEKS R7 R6 K11 ["align"]
  LOADK R7 K15 ["Generally we should avoid tooltips with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."]
  SETTABLEKS R7 R6 K12 ["text"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K16 [{"tag"}]
  LOADK R10 K17 ["auto-xy bg-surface-100 radius-medium"]
  SETTABLEKS R10 R9 K2 ["tag"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K20 [{"name", "size"}]
  LOADK R13 K21 ["icons/controls/voice/microphone_off_light"]
  SETTABLEKS R13 R12 K18 ["name"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K22 ["Medium"]
  SETTABLEKS R13 R12 K19 ["size"]
  CALL R10 2 -1
  CALL R7 -1 -1
  CALL R4 -1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"title", "shortcut", "side", "align"}]
  GETTABLEKS R5 R0 K6 ["controls"]
  GETTABLEKS R4 R5 K7 ["text"]
  SETTABLEKS R4 R3 K1 ["title"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["shortcut"]
  GETTABLEKS R5 R0 K6 ["controls"]
  GETTABLEKS R4 R5 K3 ["side"]
  SETTABLEKS R4 R3 K3 ["side"]
  GETTABLEKS R5 R0 K6 ["controls"]
  GETTABLEKS R4 R5 K4 ["align"]
  SETTABLEKS R4 R3 K4 ["align"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K9 [{"tag"}]
  LOADK R7 K10 ["auto-xy bg-surface-100 radius-medium"]
  SETTABLEKS R7 R6 K8 ["tag"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K13 [{"name", "size"}]
  LOADK R10 K14 ["icons/controls/voice/microphone_off_light"]
  SETTABLEKS R10 R9 K11 ["name"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K15 ["Medium"]
  SETTABLEKS R10 R9 K12 ["size"]
  CALL R7 2 -1
  CALL R4 -1 -1
  CALL R1 -1 -1
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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Tooltip"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Icon"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["IconSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K13 ["Enums"]
  GETTABLEKS R9 R10 K15 ["PopoverSide"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K13 ["Enums"]
  GETTABLEKS R10 R11 K16 ["PopoverAlign"]
  CALL R9 1 1
  NEWTABLE R10 0 3
  GETIMPORT R11 K20 [Enum.KeyCode.F2]
  GETIMPORT R12 K22 [Enum.KeyCode.One]
  GETIMPORT R13 K24 [Enum.KeyCode.ButtonR3]
  SETLIST R10 R11 3 [1]
  DUPTABLE R11 K28 [{"summary", "stories", "controls"}]
  LOADK R12 K10 ["Tooltip"]
  SETTABLEKS R12 R11 K25 ["summary"]
  NEWTABLE R12 0 2
  DUPTABLE R13 K31 [{"name", "story"}]
  LOADK R14 K32 ["Base"]
  SETTABLEKS R14 R13 K29 ["name"]
  DUPCLOSURE R14 K33 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K30 ["story"]
  DUPTABLE R14 K31 [{"name", "story"}]
  LOADK R15 K34 ["Short"]
  SETTABLEKS R15 R14 K29 ["name"]
  DUPCLOSURE R15 K35 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K30 ["story"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K26 ["stories"]
  DUPTABLE R12 K39 [{"title", "side", "align"}]
  LOADK R13 K40 ["Title"]
  SETTABLEKS R13 R12 K36 ["title"]
  GETTABLEKS R13 R3 K41 ["values"]
  MOVE R14 R8
  CALL R13 1 1
  SETTABLEKS R13 R12 K37 ["side"]
  GETTABLEKS R13 R3 K41 ["values"]
  MOVE R14 R9
  CALL R13 1 1
  SETTABLEKS R13 R12 K38 ["align"]
  SETTABLEKS R12 R11 K27 ["controls"]
  RETURN R11 1
