MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-AddCollaboratorButton"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 [".TeamCreate"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K12 ["> #StateLayer"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K13 ["::UIPadding"]
  DUPTABLE R17 K18 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R18 K19 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K14 ["PaddingLeft"]
  LOADK R18 K19 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K15 ["PaddingRight"]
  LOADK R18 K19 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K16 ["PaddingTop"]
  LOADK R18 K19 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K17 ["PaddingBottom"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K12 ["> #StateLayer"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K20 ["::UICorner"]
  DUPTABLE R14 K22 [{"CornerRadius"}]
  LOADK R15 K23 ["$GlobalRadiusXSmall"]
  SETTABLEKS R15 R14 K21 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K24 ["> #ButtonIcon"]
  DUPTABLE R15 K26 [{"LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K25 ["LayoutOrder"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K27 ["> #ButtonText"]
  DUPTABLE R16 K26 [{"LayoutOrder"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K25 ["LayoutOrder"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
