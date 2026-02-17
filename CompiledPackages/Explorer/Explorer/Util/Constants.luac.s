MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["RpcTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagExplorerUseBuilderSans"]
  CALL R4 1 1
  GETTABLEKS R7 R1 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Themes"]
  GETTABLEKS R5 R6 K14 ["FoundationDark"]
  MOVE R6 R5
  LOADN R7 1
  CALL R6 1 1
  NEWTABLE R7 32 0
  LOADK R8 K15 ["<<<NIL>>>"]
  SETTABLEKS R8 R7 K16 ["nilId"]
  LOADK R8 K17 ["<<<ROOT>>>"]
  SETTABLEKS R8 R7 K18 ["rootId"]
  GETIMPORT R8 K20 [game]
  LOADK R10 K21 ["ExplorerScrollRate"]
  LOADN R11 3
  NAMECALL R8 R8 K22 ["DefineFastInt"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["explorerScrollRate"]
  LOADN R8 20
  SETTABLEKS R8 R7 K24 ["explorerRowHeight"]
  LOADN R8 12
  SETTABLEKS R8 R7 K25 ["indentWidth"]
  LOADN R8 1
  SETTABLEKS R8 R7 K26 ["indentLineWidth"]
  LOADN R8 16
  SETTABLEKS R8 R7 K27 ["iconSize"]
  LOADN R8 16
  SETTABLEKS R8 R7 K28 ["fieldSize"]
  LOADN R8 4
  SETTABLEKS R8 R7 K29 ["minNameLabelWidth"]
  LOADN R8 20
  SETTABLEKS R8 R7 K30 ["searchBarHeight"]
  LOADN R8 4
  SETTABLEKS R8 R7 K31 ["searchBarPadding"]
  LOADN R8 1
  SETTABLEKS R8 R7 K32 ["searchHeaderBottomBorderWidth"]
  GETTABLEKS R10 R7 K30 ["searchBarHeight"]
  GETTABLEKS R12 R7 K31 ["searchBarPadding"]
  MULK R11 R12 K33 [2]
  ADD R9 R10 R11
  GETTABLEKS R10 R7 K32 ["searchHeaderBottomBorderWidth"]
  ADD R8 R9 R10
  SETTABLEKS R8 R7 K34 ["minSearchHeaderHeight"]
  MOVE R8 R4
  CALL R8 0 1
  JUMPIFNOT R8 [+21]
  GETTABLEKS R10 R6 K35 ["Typography"]
  GETTABLEKS R9 R10 K36 ["BodySmall"]
  GETTABLEKS R8 R9 K37 ["Font"]
  SETTABLEKS R8 R7 K38 ["defaultFont"]
  GETTABLEKS R11 R6 K35 ["Typography"]
  GETTABLEKS R10 R11 K36 ["BodySmall"]
  GETTABLEKS R9 R10 K39 ["FontSize"]
  FASTCALL1 MATH_ROUND R9 [+2]
  GETIMPORT R8 K42 [math.round]
  CALL R8 1 1
  SETTABLEKS R8 R7 K43 ["standardTextSize"]
  JUMP [+12]
  GETIMPORT R8 K46 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K38 ["defaultFont"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 17
  JUMP [+1]
  LOADK R8 K47 [17.598]
  SETTABLEKS R8 R7 K43 ["standardTextSize"]
  LOADN R8 6
  SETTABLEKS R8 R7 K48 ["sessionViewScrollBarWidth"]
  LOADN R8 2
  SETTABLEKS R8 R7 K49 ["sessionViewScrollBarPadding"]
  GETIMPORT R8 K52 [table.freeze]
  DUPTABLE R9 K54 [{"datum"}]
  GETIMPORT R10 K52 [table.freeze]
  DUPTABLE R11 K62 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
  GETTABLEKS R12 R7 K18 ["rootId"]
  SETTABLEKS R12 R11 K55 ["id"]
  LOADK R12 K63 ["DataModel"]
  SETTABLEKS R12 R11 K56 ["name"]
  LOADK R12 K63 ["DataModel"]
  SETTABLEKS R12 R11 K57 ["className"]
  LOADNIL R12
  SETTABLEKS R12 R11 K58 ["parentId"]
  LOADB R12 1
  SETTABLEKS R12 R11 K59 ["hasChildren"]
  LOADNIL R12
  SETTABLEKS R12 R11 K60 ["fieldValues"]
  LOADNIL R12
  SETTABLEKS R12 R11 K61 ["isGhost"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K53 ["datum"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K64 ["emptyDataModelNode"]
  RETURN R7 1
