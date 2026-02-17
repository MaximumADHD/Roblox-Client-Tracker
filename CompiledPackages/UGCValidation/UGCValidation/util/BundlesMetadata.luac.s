PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R5 K0 ["https://itemconfiguration.%*/v1/bundles/metadata"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["getBaseDomain"]
  CALL R7 0 1
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  NAMECALL R2 R2 K3 ["GetAsyncFullUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K4 ["JSONDecode"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["try"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  DUPTABLE R0 K4 [{"isBundlesControllerEnabled", "isBundlesCreationEnabled", "isBundlesPublishingEnabled", "allowedBundleTypeSettings"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isBundlesControllerEnabled"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["isBundlesCreationEnabled"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["isBundlesPublishingEnabled"]
  DUPTABLE R1 K7 [{"Body", "DynamicHead"}]
  DUPTABLE R2 K11 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
  DUPTABLE R3 K20 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory", "HairAccessory", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Torso"}]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K6 ["DynamicHead"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K12 ["EyebrowAccessory"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K13 ["EyelashAccessory"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K14 ["HairAccessory"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K15 ["LeftArm"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K16 ["LeftLeg"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K17 ["RightArm"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K18 ["RightLeg"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K19 ["Torso"]
  SETTABLEKS R3 R2 K8 ["allowedAssetTypeSettings"]
  LOADN R3 30
  SETTABLEKS R3 R2 K9 ["marketplaceFeePercentage"]
  DUPTABLE R3 K29 [{"minimumPrice", "maximumPrice"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K27 ["minimumPrice"]
  LOADN R4 16
  SETTABLEKS R4 R3 K28 ["maximumPrice"]
  SETTABLEKS R3 R2 K10 ["allowedPriceRange"]
  SETTABLEKS R2 R1 K5 ["Body"]
  DUPTABLE R2 K11 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
  DUPTABLE R3 K30 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory"}]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K6 ["DynamicHead"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K12 ["EyebrowAccessory"]
  DUPTABLE R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["minimumQuantity"]
  LOADN R5 1
  SETTABLEKS R5 R4 K22 ["maximumQuantity"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["isEligibleForUpload"]
  NEWTABLE R5 0 1
  LOADK R6 K26 [".rbxm"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K24 ["allowedFileExtensions"]
  SETTABLEKS R4 R3 K13 ["EyelashAccessory"]
  SETTABLEKS R3 R2 K8 ["allowedAssetTypeSettings"]
  LOADN R3 30
  SETTABLEKS R3 R2 K9 ["marketplaceFeePercentage"]
  DUPTABLE R3 K29 [{"minimumPrice", "maximumPrice"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K27 ["minimumPrice"]
  LOADN R4 16
  SETTABLEKS R4 R3 K28 ["maximumPrice"]
  SETTABLEKS R3 R2 K10 ["allowedPriceRange"]
  SETTABLEKS R2 R1 K6 ["DynamicHead"]
  SETTABLEKS R1 R0 K3 ["allowedBundleTypeSettings"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpRbxApiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K7 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Promise"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K11 ["util"]
  GETTABLEKS R5 R6 K12 ["APIUtil"]
  CALL R4 1 1
  NEWTABLE R5 2 0
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K14 ["fetch"]
  DUPCLOSURE R6 K15 [PROTO_2]
  SETTABLEKS R6 R5 K16 ["mock"]
  RETURN R5 1
