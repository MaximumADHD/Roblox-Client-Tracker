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
  MOVE R4 R2
  LOADK R5 K13 [".Component-CollaboratorThumbnail"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 2
  MOVE R8 R2
  LOADK R9 K14 ["> #ActivityRing"]
  DUPTABLE R10 K18 [{"AnchorPoint", "Position", "Size"}]
  LOADK R11 K19 ["$AnchorCenter"]
  SETTABLEKS R11 R10 K15 ["AnchorPoint"]
  LOADK R11 K20 ["$PositionCenter"]
  SETTABLEKS R11 R10 K16 ["Position"]
  GETIMPORT R11 K23 [UDim2.fromOffset]
  LOADN R12 23
  LOADN R13 23
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Size"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K24 ["::UICorner"]
  DUPTABLE R14 K26 [{"CornerRadius"}]
  LOADK R15 K27 ["$GlobalRadiusCircle"]
  SETTABLEKS R15 R14 K25 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K28 ["> #RingColor"]
  DUPTABLE R15 K31 [{"ApplyStrokeMode", "Thickness"}]
  GETIMPORT R16 K34 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R16 R15 K29 ["ApplyStrokeMode"]
  LOADK R16 K35 ["$BorderMedium"]
  SETTABLEKS R16 R15 K30 ["Thickness"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K36 [">> #Avatar"]
  DUPTABLE R11 K39 [{"AnchorPoint", "BorderSizePixel", "Position", "Size", "BackgroundColor3"}]
  LOADK R12 K19 ["$AnchorCenter"]
  SETTABLEKS R12 R11 K15 ["AnchorPoint"]
  LOADK R12 K40 ["$BorderNone"]
  SETTABLEKS R12 R11 K37 ["BorderSizePixel"]
  LOADK R12 K20 ["$PositionCenter"]
  SETTABLEKS R12 R11 K16 ["Position"]
  GETIMPORT R12 K23 [UDim2.fromOffset]
  LOADN R13 18
  LOADN R14 18
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Size"]
  JUMPIFNOT R3 [+2]
  LOADK R12 K41 ["$SemanticColorComponentMediaFill"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K38 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K24 ["::UICorner"]
  DUPTABLE R15 K26 [{"CornerRadius"}]
  LOADK R16 K27 ["$GlobalRadiusCircle"]
  SETTABLEKS R16 R15 K25 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K42 [".Idle"]
  DUPTABLE R16 K43 [{"Size"}]
  LOADK R17 K44 ["$AvatarXS"]
  SETTABLEKS R17 R16 K17 ["Size"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
