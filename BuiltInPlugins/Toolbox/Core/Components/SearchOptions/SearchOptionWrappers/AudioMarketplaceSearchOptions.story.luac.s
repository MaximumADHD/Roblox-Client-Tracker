PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"GetSearchOptions", "OnClose"}]
  DUPCLOSURE R5 K4 [PROTO_0]
  SETTABLEKS R5 R4 K1 ["GetSearchOptions"]
  SETTABLEKS R1 R4 K2 ["OnClose"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"ClickToShowInteractiveStoryWrapper"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K4 [{"OnRender"}]
  DUPCLOSURE R7 K5 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  SETTABLEKS R7 R6 K3 ["OnRender"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["ClickToShowInteractiveStoryWrapper"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["AudioMarketplaceSearchOptions"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["TestUtils"]
  GETTABLEKS R4 R5 K11 ["ClickToShowInteractiveStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Stories"]
  GETTABLEKS R5 R6 K13 ["ToolboxStoryWrapper"]
  CALL R4 1 1
  DUPTABLE R5 K17 [{"name", "summary", "stories"}]
  LOADK R6 K9 ["AudioMarketplaceSearchOptions"]
  SETTABLEKS R6 R5 K14 ["name"]
  LOADK R6 K18 ["The Search Option component for Audio"]
  SETTABLEKS R6 R5 K15 ["summary"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K20 [{"story"}]
  DUPCLOSURE R8 K21 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K19 ["story"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K16 ["stories"]
  RETURN R5 1
