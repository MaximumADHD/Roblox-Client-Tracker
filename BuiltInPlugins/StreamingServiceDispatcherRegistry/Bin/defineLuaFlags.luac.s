MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CLI88299"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["ShowViewportContextVisualization"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AutoUnlockInsertedAssets"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["RemoveHintsAndMessagesFromInsertion"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["AutoNormalizeBoundingBoxesForInsertedAssets"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["EndRequestWhenDisplayErrorMessage"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["ConvAIParentToService"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["ViewportRootMaxAreaFactor"]
  LOADN R3 30
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["ViewportContextCollectionHeight"]
  LOADN R3 100
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["MaxContextAllowedFromSelection"]
  LOADN R3 50
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K14 ["MaxContextAllowedFromViewport"]
  LOADN R3 50
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K15 ["MaxRequestAreaSizeRatio"]
  LOADN R3 200
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["ConvAIServersAtMaxCapacityTimeout"]
  LOADK R3 K17 [900000]
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K18 ["ConvAIMaxQuotaTimeout"]
  LOADK R3 K17 [900000]
  NAMECALL R0 R0 K11 ["DefineFastInt"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
