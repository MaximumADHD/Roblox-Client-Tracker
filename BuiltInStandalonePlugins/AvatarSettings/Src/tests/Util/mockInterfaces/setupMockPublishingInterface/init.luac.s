PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["onPublishSettings"]
  GETUPVAL R0 0
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K1 ["setupHolds"]
  GETUPVAL R0 0
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K2 ["showSaveOrPublishPlaceToRoblox"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Interfaces"]
  GETTABLEKS R2 R3 K9 ["PublishingInterface"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K10 ["tests"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K11 ["mockInterfaces"]
  GETTABLEKS R4 R5 K12 ["setupMockPublishingInterface"]
  GETTABLEKS R3 R4 K13 ["mockOnPublishSettings"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K10 ["tests"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K11 ["mockInterfaces"]
  GETTABLEKS R5 R6 K12 ["setupMockPublishingInterface"]
  GETTABLEKS R4 R5 K14 ["mockSetupHolds"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K10 ["tests"]
  GETTABLEKS R8 R9 K7 ["Util"]
  GETTABLEKS R7 R8 K11 ["mockInterfaces"]
  GETTABLEKS R6 R7 K12 ["setupMockPublishingInterface"]
  GETTABLEKS R5 R6 K15 ["mockShowSaveOrPublishPlaceToRoblox"]
  CALL R4 1 1
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
