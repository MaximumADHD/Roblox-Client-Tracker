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
  GETTABLEKS R4 R5 K12 ["getFFlagUpdateManageCollaboratorsIcons"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-AddCollaboratorButton"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 3
  MOVE R9 R3
  CALL R9 0 1
  JUMPIF R9 [+17]
  MOVE R8 R2
  LOADK R9 K14 [".NonTeamCreate"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K15 [">> #ButtonIcon"]
  DUPTABLE R14 K17 [{"Image"}]
  LOADK R15 K18 ["$AddCollaboratorInverse"]
  SETTABLEKS R15 R14 K16 ["Image"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  JUMP [+1]
  LOADNIL R8
  MOVE R9 R2
  LOADK R10 K19 [".TeamCreate"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R14 R3
  CALL R14 0 1
  JUMPIF R14 [+8]
  MOVE R13 R2
  LOADK R14 K15 [">> #ButtonIcon"]
  DUPTABLE R15 K17 [{"Image"}]
  LOADK R16 K20 ["$AddCollaborator"]
  SETTABLEKS R16 R15 K16 ["Image"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  MOVE R14 R2
  LOADK R15 K21 ["> #StateLayer"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K22 ["::UICorner"]
  DUPTABLE R20 K24 [{"CornerRadius"}]
  LOADK R21 K25 ["$GlobalRadiusXSmall"]
  SETTABLEKS R21 R20 K23 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K26 ["::UIPadding"]
  DUPTABLE R21 K31 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K32 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K27 ["PaddingLeft"]
  LOADK R22 K32 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K28 ["PaddingRight"]
  LOADK R22 K32 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K29 ["PaddingTop"]
  LOADK R22 K32 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K30 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K21 ["> #StateLayer"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K33 ["> #ButtonIcon"]
  DUPTABLE R16 K35 [{"LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K34 ["LayoutOrder"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K36 ["> #ButtonText"]
  DUPTABLE R17 K35 [{"LayoutOrder"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K34 ["LayoutOrder"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
