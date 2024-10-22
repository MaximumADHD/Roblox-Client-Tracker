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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K14 ["getFFlagAddUsernameToRibbonAvatars"]
  CALL R5 1 1
  CALL R5 0 1
  MOVE R6 R2
  LOADK R7 K15 [".Component-CollaboratorThumbnail"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K16 ["> #ActivityRing"]
  DUPTABLE R12 K20 [{"AnchorPoint", "Position", "Size"}]
  LOADK R13 K21 ["$AnchorCenter"]
  SETTABLEKS R13 R12 K17 ["AnchorPoint"]
  LOADK R13 K22 ["$PositionCenter"]
  SETTABLEKS R13 R12 K18 ["Position"]
  JUMPIFNOT R4 [+6]
  GETIMPORT R13 K25 [UDim2.fromOffset]
  LOADN R14 22
  LOADN R15 22
  CALL R13 2 1
  JUMP [+5]
  GETIMPORT R13 K25 [UDim2.fromOffset]
  LOADN R14 23
  LOADN R15 23
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["Size"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K26 ["::UICorner"]
  DUPTABLE R16 K28 [{"CornerRadius"}]
  LOADK R17 K29 ["$GlobalRadiusCircle"]
  SETTABLEKS R17 R16 K27 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K30 ["> #RingColor"]
  DUPTABLE R17 K33 [{"ApplyStrokeMode", "Thickness"}]
  GETIMPORT R18 K36 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K31 ["ApplyStrokeMode"]
  LOADK R18 K37 ["$BorderMedium"]
  SETTABLEKS R18 R17 K32 ["Thickness"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  JUMPIFNOT R5 [+2]
  LOADK R12 K38 ["> ImageLabel"]
  JUMP [+1]
  LOADK R12 K39 [">> #Avatar"]
  DUPTABLE R13 K42 [{"AnchorPoint", "BorderSizePixel", "Position", "Size", "BackgroundColor3"}]
  LOADK R14 K21 ["$AnchorCenter"]
  SETTABLEKS R14 R13 K17 ["AnchorPoint"]
  LOADK R14 K43 ["$BorderNone"]
  SETTABLEKS R14 R13 K40 ["BorderSizePixel"]
  LOADK R14 K22 ["$PositionCenter"]
  SETTABLEKS R14 R13 K18 ["Position"]
  GETIMPORT R14 K25 [UDim2.fromOffset]
  LOADN R15 18
  LOADN R16 18
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Size"]
  JUMPIFNOT R3 [+2]
  LOADK R14 K44 ["$SemanticColorComponentMediaFill"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K41 ["BackgroundColor3"]
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K26 ["::UICorner"]
  DUPTABLE R17 K28 [{"CornerRadius"}]
  LOADK R18 K29 ["$GlobalRadiusCircle"]
  SETTABLEKS R18 R17 K27 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K45 [".Idle"]
  DUPTABLE R18 K46 [{"Size"}]
  LOADK R19 K47 ["$AvatarXS"]
  SETTABLEKS R19 R18 K19 ["Size"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1
