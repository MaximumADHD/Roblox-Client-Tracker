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
  LOADK R4 K10 [".Component-CollaboratorThumbnail"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 ["> #ActivityRing"]
  DUPTABLE R9 K15 [{"AnchorPoint", "Position", "Size"}]
  LOADK R10 K16 ["$AnchorCenter"]
  SETTABLEKS R10 R9 K12 ["AnchorPoint"]
  LOADK R10 K17 ["$PositionCenter"]
  SETTABLEKS R10 R9 K13 ["Position"]
  GETIMPORT R10 K20 [UDim2.fromOffset]
  LOADN R11 23
  LOADN R12 23
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Size"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K21 ["::UICorner"]
  DUPTABLE R13 K23 [{"CornerRadius"}]
  LOADK R14 K24 ["$GlobalRadiusCircle"]
  SETTABLEKS R14 R13 K22 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K25 ["> #RingColor"]
  DUPTABLE R14 K28 [{"ApplyStrokeMode", "Thickness"}]
  GETIMPORT R15 K31 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K26 ["ApplyStrokeMode"]
  LOADK R15 K32 ["$BorderMedium"]
  SETTABLEKS R15 R14 K27 ["Thickness"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K33 [">> #Avatar"]
  DUPTABLE R10 K35 [{"AnchorPoint", "BorderSizePixel", "Position", "Size"}]
  LOADK R11 K16 ["$AnchorCenter"]
  SETTABLEKS R11 R10 K12 ["AnchorPoint"]
  LOADK R11 K36 ["$BorderNone"]
  SETTABLEKS R11 R10 K34 ["BorderSizePixel"]
  LOADK R11 K17 ["$PositionCenter"]
  SETTABLEKS R11 R10 K13 ["Position"]
  GETIMPORT R11 K20 [UDim2.fromOffset]
  LOADN R12 18
  LOADN R13 18
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K21 ["::UICorner"]
  DUPTABLE R14 K23 [{"CornerRadius"}]
  LOADK R15 K24 ["$GlobalRadiusCircle"]
  SETTABLEKS R15 R14 K22 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K37 [".Idle"]
  DUPTABLE R15 K38 [{"Size"}]
  LOADK R16 K39 ["$AvatarXS"]
  SETTABLEKS R16 R15 K14 ["Size"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
