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
  MOVE R3 R2
  LOADK R4 K10 [".ScopeOptions"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K11 [">> .Header"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K12 ["::UIPadding"]
  DUPTABLE R13 K16 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  LOADK R14 K17 ["$Padding"]
  SETTABLEKS R14 R13 K13 ["PaddingTop"]
  LOADK R14 K17 ["$Padding"]
  SETTABLEKS R14 R13 K14 ["PaddingLeft"]
  LOADK R14 K17 ["$Padding"]
  SETTABLEKS R14 R13 K15 ["PaddingRight"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K18 [">> .Description"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K12 ["::UIPadding"]
  DUPTABLE R14 K16 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
  LOADK R15 K19 ["$PaddingSmall"]
  SETTABLEKS R15 R14 K13 ["PaddingTop"]
  LOADK R15 K17 ["$Padding"]
  SETTABLEKS R15 R14 K14 ["PaddingLeft"]
  LOADK R15 K17 ["$Padding"]
  SETTABLEKS R15 R14 K15 ["PaddingRight"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K20 [">> .Component-SearchBar"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K12 ["::UIPadding"]
  DUPTABLE R15 K21 [{"PaddingLeft", "PaddingRight"}]
  LOADK R16 K19 ["$PaddingSmall"]
  SETTABLEKS R16 R15 K14 ["PaddingLeft"]
  LOADK R16 K17 ["$Padding"]
  SETTABLEKS R16 R15 K15 ["PaddingRight"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  NEWTABLE R7 0 0
  CALL R3 4 -1
  RETURN R3 -1
