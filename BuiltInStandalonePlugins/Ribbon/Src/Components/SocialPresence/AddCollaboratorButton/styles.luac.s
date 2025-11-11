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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFeatureUpdateManageCollaboratorsIcons"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-AddCollaboratorButton"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 3
  MOVE R9 R3
  CALL R9 0 1
  JUMPIF R9 [+8]
  MOVE R8 R2
  LOADK R9 K14 [">> #ButtonIcon"]
  DUPTABLE R10 K16 [{"Image"}]
  LOADK R11 K17 ["$AddCollaborator"]
  SETTABLEKS R11 R10 K15 ["Image"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  MOVE R9 R2
  LOADK R10 K18 [".TeamCreate"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K19 ["> #StateLayer"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K20 ["::UIPadding"]
  DUPTABLE R19 K25 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K26 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K21 ["PaddingLeft"]
  LOADK R20 K26 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K22 ["PaddingRight"]
  LOADK R20 K26 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K23 ["PaddingTop"]
  LOADK R20 K26 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K24 ["PaddingBottom"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K19 ["> #StateLayer"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K27 ["::UICorner"]
  DUPTABLE R16 K29 [{"CornerRadius"}]
  LOADK R17 K30 ["$GlobalRadiusXSmall"]
  SETTABLEKS R17 R16 K28 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K31 ["> #ButtonIcon"]
  DUPTABLE R17 K33 [{"LayoutOrder"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K32 ["LayoutOrder"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K34 ["> #ButtonText"]
  DUPTABLE R18 K33 [{"LayoutOrder"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K32 ["LayoutOrder"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
