MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RpcTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R2 1 1
  NEWTABLE R3 32 0
  LOADK R4 K9 ["<<<NIL>>>"]
  SETTABLEKS R4 R3 K10 ["nilId"]
  LOADK R4 K11 ["<<<ROOT>>>"]
  SETTABLEKS R4 R3 K12 ["rootId"]
  GETIMPORT R4 K14 [game]
  LOADK R6 K15 ["ExplorerScrollRate"]
  LOADN R7 3
  NAMECALL R4 R4 K16 ["DefineFastInt"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K17 ["explorerScrollRate"]
  LOADN R4 20
  SETTABLEKS R4 R3 K18 ["explorerRowHeight"]
  LOADN R4 12
  SETTABLEKS R4 R3 K19 ["indentWidth"]
  LOADN R4 1
  SETTABLEKS R4 R3 K20 ["indentLineWidth"]
  LOADN R4 16
  SETTABLEKS R4 R3 K21 ["iconSize"]
  LOADN R4 16
  SETTABLEKS R4 R3 K22 ["fieldSize"]
  LOADN R4 4
  SETTABLEKS R4 R3 K23 ["minNameLabelWidth"]
  LOADN R4 20
  SETTABLEKS R4 R3 K24 ["searchBarHeight"]
  LOADN R4 4
  SETTABLEKS R4 R3 K25 ["searchBarPadding"]
  LOADN R4 1
  SETTABLEKS R4 R3 K26 ["searchHeaderBottomBorderWidth"]
  GETTABLEKS R6 R3 K24 ["searchBarHeight"]
  GETTABLEKS R8 R3 K25 ["searchBarPadding"]
  MULK R7 R8 K27 [2]
  ADD R5 R6 R7
  GETTABLEKS R6 R3 K26 ["searchHeaderBottomBorderWidth"]
  ADD R4 R5 R6
  SETTABLEKS R4 R3 K28 ["minSearchHeaderHeight"]
  GETIMPORT R4 K32 [Enum.Font.SourceSans]
  SETTABLEKS R4 R3 K33 ["defaultFont"]
  MOVE R5 R2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADN R4 17
  JUMP [+1]
  LOADK R4 K34 [17.598]
  SETTABLEKS R4 R3 K35 ["standardTextSize"]
  LOADN R4 6
  SETTABLEKS R4 R3 K36 ["sessionViewScrollBarWidth"]
  LOADN R4 2
  SETTABLEKS R4 R3 K37 ["sessionViewScrollBarPadding"]
  GETIMPORT R4 K40 [table.freeze]
  DUPTABLE R5 K42 [{"datum"}]
  GETIMPORT R6 K40 [table.freeze]
  DUPTABLE R7 K50 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
  GETTABLEKS R8 R3 K12 ["rootId"]
  SETTABLEKS R8 R7 K43 ["id"]
  LOADK R8 K51 ["DataModel"]
  SETTABLEKS R8 R7 K44 ["name"]
  LOADK R8 K51 ["DataModel"]
  SETTABLEKS R8 R7 K45 ["className"]
  LOADNIL R8
  SETTABLEKS R8 R7 K46 ["parentId"]
  LOADB R8 1
  SETTABLEKS R8 R7 K47 ["hasChildren"]
  LOADNIL R8
  SETTABLEKS R8 R7 K48 ["fieldValues"]
  LOADNIL R8
  SETTABLEKS R8 R7 K49 ["isGhost"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K41 ["datum"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K52 ["emptyDataModelNode"]
  RETURN R3 1
