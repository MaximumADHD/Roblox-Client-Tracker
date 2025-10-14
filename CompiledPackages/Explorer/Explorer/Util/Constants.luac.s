MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RpcTypes"]
  CALL R1 1 1
  NEWTABLE R2 32 0
  LOADK R3 K7 ["<<<NIL>>>"]
  SETTABLEKS R3 R2 K8 ["nilId"]
  LOADK R3 K9 ["<<<ROOT>>>"]
  SETTABLEKS R3 R2 K10 ["rootId"]
  GETIMPORT R3 K12 [game]
  LOADK R5 K13 ["ExplorerScrollRate"]
  LOADN R6 3
  NAMECALL R3 R3 K14 ["DefineFastInt"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K15 ["explorerScrollRate"]
  LOADN R3 20
  SETTABLEKS R3 R2 K16 ["explorerRowHeight"]
  LOADN R3 12
  SETTABLEKS R3 R2 K17 ["indentWidth"]
  LOADN R3 1
  SETTABLEKS R3 R2 K18 ["indentLineWidth"]
  LOADN R3 16
  SETTABLEKS R3 R2 K19 ["iconSize"]
  LOADN R3 16
  SETTABLEKS R3 R2 K20 ["fieldSize"]
  LOADN R3 4
  SETTABLEKS R3 R2 K21 ["minNameLabelWidth"]
  LOADN R3 20
  SETTABLEKS R3 R2 K22 ["searchBarHeight"]
  LOADN R3 4
  SETTABLEKS R3 R2 K23 ["searchBarPadding"]
  LOADN R3 1
  SETTABLEKS R3 R2 K24 ["searchHeaderBottomBorderWidth"]
  GETTABLEKS R5 R2 K22 ["searchBarHeight"]
  GETTABLEKS R7 R2 K23 ["searchBarPadding"]
  MULK R6 R7 K25 [2]
  ADD R4 R5 R6
  GETTABLEKS R5 R2 K24 ["searchHeaderBottomBorderWidth"]
  ADD R3 R4 R5
  SETTABLEKS R3 R2 K26 ["minSearchHeaderHeight"]
  GETIMPORT R3 K30 [Enum.Font.SourceSans]
  SETTABLEKS R3 R2 K31 ["defaultFont"]
  LOADK R3 K32 [17.598]
  SETTABLEKS R3 R2 K33 ["standardTextSize"]
  LOADN R3 6
  SETTABLEKS R3 R2 K34 ["sessionViewScrollBarWidth"]
  LOADN R3 2
  SETTABLEKS R3 R2 K35 ["sessionViewScrollBarPadding"]
  GETIMPORT R3 K38 [table.freeze]
  DUPTABLE R4 K40 [{"datum"}]
  GETIMPORT R5 K38 [table.freeze]
  DUPTABLE R6 K48 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
  GETTABLEKS R7 R2 K10 ["rootId"]
  SETTABLEKS R7 R6 K41 ["id"]
  LOADK R7 K49 ["DataModel"]
  SETTABLEKS R7 R6 K42 ["name"]
  LOADK R7 K49 ["DataModel"]
  SETTABLEKS R7 R6 K43 ["className"]
  LOADNIL R7
  SETTABLEKS R7 R6 K44 ["parentId"]
  LOADB R7 1
  SETTABLEKS R7 R6 K45 ["hasChildren"]
  LOADNIL R7
  SETTABLEKS R7 R6 K46 ["fieldValues"]
  LOADNIL R7
  SETTABLEKS R7 R6 K47 ["isGhost"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K39 ["datum"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K50 ["emptyDataModelNode"]
  RETURN R2 1
