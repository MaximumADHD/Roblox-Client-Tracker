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
  GETTABLEKS R4 R5 K12 ["getFFlagRibbonDensityModeStyles"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagUpdateManageCollaboratorsIcons"]
  CALL R4 1 1
  MOVE R5 R2
  LOADK R6 K14 [".Component-AddCollaboratorButton"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 3
  MOVE R10 R4
  CALL R10 0 1
  JUMPIF R10 [+22]
  MOVE R9 R2
  MOVE R11 R3
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADK R10 K15 [".NonTeamCreate"]
  JUMP [+1]
  LOADK R10 K16 [".TeamCreate"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K17 [">> #ButtonIcon"]
  DUPTABLE R15 K19 [{"Image"}]
  LOADK R16 K20 ["$AddCollaboratorInverse"]
  SETTABLEKS R16 R15 K18 ["Image"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  MOVE R10 R2
  MOVE R12 R3
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 [".TeamCreate"]
  JUMP [+1]
  LOADK R11 K15 [".NonTeamCreate"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R15 R4
  CALL R15 0 1
  JUMPIF R15 [+8]
  MOVE R14 R2
  LOADK R15 K17 [">> #ButtonIcon"]
  DUPTABLE R16 K19 [{"Image"}]
  LOADK R17 K21 ["$AddCollaborator"]
  SETTABLEKS R17 R16 K18 ["Image"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  MOVE R16 R3
  CALL R16 0 1
  JUMPIFNOT R16 [+33]
  MOVE R15 R2
  LOADK R16 K22 ["> #StateLayer"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K23 ["::UICorner"]
  DUPTABLE R21 K25 [{"CornerRadius"}]
  LOADK R22 K26 ["$GlobalRadiusXSmall"]
  SETTABLEKS R22 R21 K24 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K27 ["::UIPadding"]
  DUPTABLE R22 K32 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K33 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K28 ["PaddingLeft"]
  LOADK R23 K33 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K29 ["PaddingRight"]
  LOADK R23 K33 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K30 ["PaddingTop"]
  LOADK R23 K33 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K31 ["PaddingBottom"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  SETLIST R13 R14 2 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K22 ["> #StateLayer"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K34 ["> #ButtonIcon"]
  DUPTABLE R17 K36 [{"LayoutOrder"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K35 ["LayoutOrder"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K37 ["> #ButtonText"]
  DUPTABLE R18 K36 [{"LayoutOrder"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K35 ["LayoutOrder"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
