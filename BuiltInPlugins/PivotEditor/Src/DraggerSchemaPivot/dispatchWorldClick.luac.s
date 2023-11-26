PROTO_0:
  DUPTABLE R3 K2 [{"ClickedSelectable", "HandleId"}]
  GETTABLEKS R4 R2 K0 ["ClickedSelectable"]
  SETTABLEKS R4 R3 K0 ["ClickedSelectable"]
  LOADK R4 K3 ["Part"]
  SETTABLEKS R4 R3 K1 ["HandleId"]
  RETURN R3 1

PROTO_1:
  NAMECALL R3 R1 K0 ["doesAllowFreeformDrag"]
  CALL R3 1 1
  JUMPIFNOT R3 [+20]
  GETTABLEKS R3 R2 K1 ["SelectionNowContainsSelectable"]
  JUMPIFNOT R3 [+17]
  GETTABLEKS R3 R2 K2 ["ClickedSelectable"]
  LOADK R5 K3 ["PVInstance"]
  NAMECALL R3 R3 K4 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+10]
  LOADK R3 K5 ["FreeformSelectionDrag"]
  DUPTABLE R4 K7 [{"ClickedSelectable", "HandleId"}]
  GETTABLEKS R5 R2 K2 ["ClickedSelectable"]
  SETTABLEKS R5 R4 K2 ["ClickedSelectable"]
  LOADK R5 K8 ["Part"]
  SETTABLEKS R5 R4 K6 ["HandleId"]
  RETURN R3 2
  LOADK R3 K9 ["Ready"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  RETURN R1 1
