PROTO_0:
  GETIMPORT R1 K1 [print]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"CategoryDropDown"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K5 [{"OnCategorySelect", "Categories"}]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K3 ["OnCategorySelect"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K4 ["Categories"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["CategoryDropDown"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["CategoryDropDown"]
  GETTABLEKS R4 R5 K10 ["CategoryDropDown"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K11 ["Stories"]
  GETTABLEKS R5 R6 K12 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  NEWTABLE R5 0 24
  LOADK R6 K13 ["rock"]
  LOADK R7 K14 ["pop"]
  LOADK R8 K15 ["scores-orchestral"]
  LOADK R9 K16 ["children"]
  LOADK R10 K17 ["ethnic-folk"]
  LOADK R11 K18 ["kitsch-retro"]
  LOADK R12 K19 ["electronic"]
  LOADK R13 K20 ["latin"]
  LOADK R14 K21 ["classical"]
  LOADK R15 K22 ["jazz"]
  LOADK R16 K23 ["corporate"]
  LOADK R17 K24 ["blues"]
  LOADK R18 K25 ["atmosphere"]
  LOADK R19 K26 ["easy-listening"]
  LOADK R20 K27 ["religious"]
  LOADK R21 K28 ["world-beat"]
  SETLIST R5 R6 16 [1]
  LOADK R6 K29 ["hip-hop"]
  LOADK R7 K30 ["folk-contemporary"]
  LOADK R8 K31 ["dance-traditional"]
  LOADK R9 K32 ["funk-soul-r-b"]
  LOADK R10 K33 ["ethnic-pop"]
  LOADK R11 K34 ["country"]
  LOADK R12 K35 ["marches-military"]
  LOADK R13 K36 ["electronica"]
  SETLIST R5 R6 8 [17]
  DUPCLOSURE R6 K37 [PROTO_0]
  DUPTABLE R7 K40 [{"name", "story"}]
  LOADK R8 K41 ["Category drop down"]
  SETTABLEKS R8 R7 K38 ["name"]
  DUPCLOSURE R8 K42 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K39 ["story"]
  RETURN R7 1
