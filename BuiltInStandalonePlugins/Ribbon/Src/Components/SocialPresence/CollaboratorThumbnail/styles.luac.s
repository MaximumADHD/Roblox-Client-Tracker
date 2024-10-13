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
  GETTABLEKS R4 R5 K12 ["getFFlagLuaRibbonSocialPresenceBGColorUpdate"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagLoginAvatarThumbnail"]
  CALL R4 1 1
  CALL R4 0 1
  MOVE R5 R2
  LOADK R6 K14 [".Component-CollaboratorThumbnail"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 2
  MOVE R9 R2
  LOADK R10 K15 ["> #ActivityRing"]
  DUPTABLE R11 K19 [{"AnchorPoint", "Position", "Size"}]
  LOADK R12 K20 ["$AnchorCenter"]
  SETTABLEKS R12 R11 K16 ["AnchorPoint"]
  LOADK R12 K21 ["$PositionCenter"]
  SETTABLEKS R12 R11 K17 ["Position"]
  JUMPIFNOT R4 [+6]
  GETIMPORT R12 K24 [UDim2.fromOffset]
  LOADN R13 22
  LOADN R14 22
  CALL R12 2 1
  JUMP [+5]
  GETIMPORT R12 K24 [UDim2.fromOffset]
  LOADN R13 23
  LOADN R14 23
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["Size"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K25 ["::UICorner"]
  DUPTABLE R15 K27 [{"CornerRadius"}]
  LOADK R16 K28 ["$GlobalRadiusCircle"]
  SETTABLEKS R16 R15 K26 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K29 ["> #RingColor"]
  DUPTABLE R16 K32 [{"ApplyStrokeMode", "Thickness"}]
  GETIMPORT R17 K35 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K30 ["ApplyStrokeMode"]
  LOADK R17 K36 ["$BorderMedium"]
  SETTABLEKS R17 R16 K31 ["Thickness"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K37 [">> #Avatar"]
  DUPTABLE R12 K40 [{"AnchorPoint", "BorderSizePixel", "Position", "Size", "BackgroundColor3"}]
  LOADK R13 K20 ["$AnchorCenter"]
  SETTABLEKS R13 R12 K16 ["AnchorPoint"]
  LOADK R13 K41 ["$BorderNone"]
  SETTABLEKS R13 R12 K38 ["BorderSizePixel"]
  LOADK R13 K21 ["$PositionCenter"]
  SETTABLEKS R13 R12 K17 ["Position"]
  GETIMPORT R13 K24 [UDim2.fromOffset]
  LOADN R14 18
  LOADN R15 18
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["Size"]
  JUMPIFNOT R3 [+2]
  LOADK R13 K42 ["$SemanticColorComponentMediaFill"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K39 ["BackgroundColor3"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K25 ["::UICorner"]
  DUPTABLE R16 K27 [{"CornerRadius"}]
  LOADK R17 K28 ["$GlobalRadiusCircle"]
  SETTABLEKS R17 R16 K26 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K43 [".Idle"]
  DUPTABLE R17 K44 [{"Size"}]
  LOADK R18 K45 ["$AvatarXS"]
  SETTABLEKS R18 R17 K18 ["Size"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
