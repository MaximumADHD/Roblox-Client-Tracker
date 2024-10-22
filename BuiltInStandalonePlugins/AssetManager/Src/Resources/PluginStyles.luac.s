MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 1
  MOVE R5 R2
  LOADK R6 K11 ["ImageLabel"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 20
  MOVE R9 R2
  LOADK R10 K12 [".ArrowDownIcon"]
  DUPTABLE R11 K14 [{"Image"}]
  LOADK R12 K15 ["$ArrowDownIcon"]
  SETTABLEKS R12 R11 K13 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K16 [".ArrowRightIcon"]
  DUPTABLE R12 K14 [{"Image"}]
  LOADK R13 K17 ["$ArrowRightIcon"]
  SETTABLEKS R13 R12 K13 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K18 [".ArrowUpIcon"]
  DUPTABLE R13 K14 [{"Image"}]
  LOADK R14 K19 ["$ArrowUpIcon"]
  SETTABLEKS R14 R13 K13 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K20 [".CheckmarkIcon"]
  DUPTABLE R14 K14 [{"Image"}]
  LOADK R15 K21 ["$CheckmarkIcon"]
  SETTABLEKS R15 R14 K13 ["Image"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K22 [".ClearIcon"]
  DUPTABLE R15 K14 [{"Image"}]
  LOADK R16 K23 ["$ClearIcon"]
  SETTABLEKS R16 R15 K13 ["Image"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K24 [".FilterIcon"]
  DUPTABLE R16 K14 [{"Image"}]
  LOADK R17 K25 ["$FilterIcon"]
  SETTABLEKS R17 R16 K13 ["Image"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K26 [".GroupDefaultIcon"]
  DUPTABLE R17 K14 [{"Image"}]
  LOADK R18 K27 ["$GroupDefaultIcon"]
  SETTABLEKS R18 R17 K13 ["Image"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K28 [".GroupLargeDefaultIcon"]
  DUPTABLE R18 K14 [{"Image"}]
  LOADK R19 K29 ["$GroupLargeDefaultIcon"]
  SETTABLEKS R19 R18 K13 ["Image"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K30 [".ImportIcon"]
  DUPTABLE R19 K14 [{"Image"}]
  LOADK R20 K31 ["$ImportIcon"]
  SETTABLEKS R20 R19 K13 ["Image"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K32 [".PlaceholderAssetIcon"]
  DUPTABLE R20 K14 [{"Image"}]
  LOADK R21 K33 ["$PlaceholderAssetIcon"]
  SETTABLEKS R21 R20 K13 ["Image"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K34 [".PlaceholderIcon"]
  DUPTABLE R21 K14 [{"Image"}]
  LOADK R22 K35 ["$PlaceholderIcon"]
  SETTABLEKS R22 R21 K13 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K36 [".RefreshIcon"]
  DUPTABLE R22 K14 [{"Image"}]
  LOADK R23 K37 ["$RefreshIcon"]
  SETTABLEKS R23 R22 K13 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K38 [".SearchIcon"]
  DUPTABLE R23 K14 [{"Image"}]
  LOADK R24 K39 ["$SearchIcon"]
  SETTABLEKS R24 R23 K13 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K40 [".SidebarCollapseIcon"]
  DUPTABLE R24 K14 [{"Image"}]
  LOADK R25 K41 ["$SidebarCollapseIcon"]
  SETTABLEKS R25 R24 K13 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K42 [".SidebarExpandIcon"]
  DUPTABLE R25 K14 [{"Image"}]
  LOADK R26 K43 ["$SidebarExpandIcon"]
  SETTABLEKS R26 R25 K13 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K44 [".SortIcon"]
  DUPTABLE R26 K14 [{"Image"}]
  LOADK R27 K45 ["$SortIcon"]
  SETTABLEKS R27 R26 K13 ["Image"]
  CALL R24 2 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K46 [".UniverseDefaultIcon"]
  DUPTABLE R11 K14 [{"Image"}]
  LOADK R12 K47 ["$UniverseDefaultIcon"]
  SETTABLEKS R12 R11 K13 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K48 [".UniverseLargeDefaultIcon"]
  DUPTABLE R12 K14 [{"Image"}]
  LOADK R13 K49 ["$UniverseLargeDefaultIcon"]
  SETTABLEKS R13 R12 K13 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K50 [".UserDefaultIcon"]
  DUPTABLE R13 K14 [{"Image"}]
  LOADK R14 K51 ["$UserDefaultIcon"]
  SETTABLEKS R14 R13 K13 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K52 [".UserLargeDefaultIcon"]
  DUPTABLE R14 K14 [{"Image"}]
  LOADK R15 K53 ["$UserLargeDefaultIcon"]
  SETTABLEKS R15 R14 K13 ["Image"]
  CALL R12 2 -1
  SETLIST R8 R9 -1 [17]
  CALL R5 3 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K58 [{"HeaderButtonSize", "PaddingSmall", "Padding", "IconDisabled"}]
  GETIMPORT R6 K61 [UDim2.fromOffset]
  LOADN R7 26
  LOADN R8 26
  CALL R6 2 1
  SETTABLEKS R6 R5 K54 ["HeaderButtonSize"]
  GETIMPORT R6 K64 [UDim.new]
  LOADN R7 0
  LOADN R8 5
  CALL R6 2 1
  SETTABLEKS R6 R5 K55 ["PaddingSmall"]
  GETIMPORT R6 K64 [UDim.new]
  LOADN R7 0
  LOADN R8 10
  CALL R6 2 1
  SETTABLEKS R6 R5 K56 ["Padding"]
  LOADK R6 K65 [0.62]
  SETTABLEKS R6 R5 K57 ["IconDisabled"]
  MOVE R6 R3
  LOADK R7 K2 ["AssetManager"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
