PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"Text", "fontStyle", "tag"}]
  GETTABLEKS R5 R0 K5 ["controls"]
  GETTABLEKS R4 R5 K6 ["text"]
  SETTABLEKS R4 R3 K1 ["Text"]
  DUPTABLE R4 K8 [{"FontSize"}]
  GETTABLEKS R6 R0 K5 ["controls"]
  GETTABLEKS R5 R6 K9 ["textSize"]
  SETTABLEKS R5 R4 K7 ["FontSize"]
  SETTABLEKS R4 R3 K2 ["fontStyle"]
  LOADK R4 K10 ["auto-xy content-default"]
  SETTABLEKS R4 R3 K3 ["tag"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  LOADK R2 K0 ["State: "]
  MOVE R3 R0
  CONCAT R1 R2 R3
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useBinding"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Initialize"]
  CALL R1 1 2
  GETUPVAL R3 2
  CALL R3 0 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K8 [{"Text", "fontStyle", "backgroundStyle", "tag", "onStateChanged"}]
  DUPCLOSURE R10 K9 [PROTO_2]
  NAMECALL R8 R1 K10 ["map"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K3 ["Text"]
  DUPTABLE R8 K12 [{"FontSize"}]
  LOADN R9 20
  SETTABLEKS R9 R8 K11 ["FontSize"]
  SETTABLEKS R8 R7 K4 ["fontStyle"]
  GETTABLEKS R11 R3 K13 ["Color"]
  GETTABLEKS R10 R11 K14 ["Extended"]
  GETTABLEKS R9 R10 K15 ["Purple"]
  GETTABLEKS R8 R9 K16 ["Purple_500"]
  SETTABLEKS R8 R7 K5 ["backgroundStyle"]
  LOADK R8 K17 ["col align-x-center align-y-center size-2800 content-default"]
  SETTABLEKS R8 R7 K6 ["tag"]
  SETTABLEKS R4 R7 K7 ["onStateChanged"]
  CALL R5 2 -1
  RETURN R5 -1

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
  GETTABLEKS R4 R5 K9 ["Text"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Providers"]
  GETTABLEKS R6 R7 K11 ["Style"]
  GETTABLEKS R5 R6 K12 ["useTokens"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K13 ["Enums"]
  GETTABLEKS R6 R7 K14 ["ControlState"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R7 K16 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPTABLE R8 K20 [{"summary", "stories", "controls"}]
  LOADK R9 K9 ["Text"]
  SETTABLEKS R9 R8 K17 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K23 [{"name", "story"}]
  LOADK R11 K24 ["Basic Text"]
  SETTABLEKS R11 R10 K21 ["name"]
  SETTABLEKS R6 R10 K22 ["story"]
  DUPTABLE R11 K23 [{"name", "story"}]
  LOADK R12 K25 ["GUI State Use"]
  SETTABLEKS R12 R11 K21 ["name"]
  SETTABLEKS R7 R11 K22 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K18 ["stories"]
  DUPTABLE R9 K28 [{"text", "textSize"}]
  LOADK R10 K29 ["Hello, world!"]
  SETTABLEKS R10 R9 K26 ["text"]
  LOADN R10 24
  SETTABLEKS R10 R9 K27 ["textSize"]
  SETTABLEKS R9 R8 K19 ["controls"]
  RETURN R8 1
