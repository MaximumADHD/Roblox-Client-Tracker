PROTO_0:
  DUPTABLE R0 K2 [{"type", "metadata"}]
  LOADK R1 K3 ["success"]
  SETTABLEKS R1 R0 K0 ["type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["util"]
  GETTABLEKS R2 R3 K5 ["BundlesMetadata"]
  GETTABLEKS R1 R2 K6 ["mock"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["metadata"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K3 [{"validateBundleReadyForUpload", "_metadataResponse", "_metadataResponsePromise"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["validateBundleReadyForUpload"]
  SETTABLEKS R2 R1 K0 ["validateBundleReadyForUpload"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["_metadataResponse"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["_metadataResponsePromise"]
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K5 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  JUMPIFEQKNIL R3 [+4]
  MOVE R4 R3
  GETUPVAL R5 0
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["resolve"]
  GETUPVAL R5 0
  CALL R4 1 -1
  RETURN R4 -1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R1 1

PROTO_4:
  DUPTABLE R1 K2 [{"validateBundleReadyForUpload", "_metadataResponse"}]
  DUPTABLE R3 K5 [{"errors", "pieces"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["errors"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["pieces"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["validateBundleReadyForUpload"]
  DUPTABLE R2 K8 [{"type", "metadata"}]
  LOADK R3 K9 ["success"]
  SETTABLEKS R3 R2 K6 ["type"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["util"]
  GETTABLEKS R4 R5 K11 ["BundlesMetadata"]
  GETTABLEKS R3 R4 K12 ["mock"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K7 ["metadata"]
  SETTABLEKS R2 R1 K1 ["_metadataResponse"]
  GETUPVAL R2 2
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K14 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_5:
  DUPTABLE R1 K2 [{"validateBundleReadyForUpload", "_metadataResponse"}]
  DUPTABLE R3 K5 [{"errors", "pieces"}]
  NEWTABLE R4 0 3
  DUPTABLE R5 K8 [{"assetType", "error"}]
  GETIMPORT R6 K12 [Enum.AssetType.Head]
  SETTABLEKS R6 R5 K6 ["assetType"]
  DUPTABLE R6 K15 [{"type", "message"}]
  LOADK R7 K14 ["message"]
  SETTABLEKS R7 R6 K13 ["type"]
  LOADK R7 K16 ["Your brain gets smart, but your head gets dumb"]
  SETTABLEKS R7 R6 K14 ["message"]
  SETTABLEKS R6 R5 K7 ["error"]
  DUPTABLE R6 K8 [{"assetType", "error"}]
  LOADNIL R7
  SETTABLEKS R7 R6 K6 ["assetType"]
  DUPTABLE R7 K15 [{"type", "message"}]
  LOADK R8 K14 ["message"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R8 K17 ["Full body error"]
  SETTABLEKS R8 R7 K14 ["message"]
  SETTABLEKS R7 R6 K7 ["error"]
  DUPTABLE R7 K8 [{"assetType", "error"}]
  GETIMPORT R8 K19 [Enum.AssetType.LeftArm]
  SETTABLEKS R8 R7 K6 ["assetType"]
  DUPTABLE R8 K20 [{"type"}]
  LOADK R9 K21 ["notFound"]
  SETTABLEKS R9 R8 K13 ["type"]
  SETTABLEKS R8 R7 K7 ["error"]
  SETLIST R4 R5 3 [1]
  SETTABLEKS R4 R3 K3 ["errors"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["pieces"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["validateBundleReadyForUpload"]
  DUPTABLE R2 K23 [{"type", "metadata"}]
  LOADK R3 K24 ["success"]
  SETTABLEKS R3 R2 K13 ["type"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["util"]
  GETTABLEKS R4 R5 K26 ["BundlesMetadata"]
  GETTABLEKS R3 R4 K27 ["mock"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K22 ["metadata"]
  SETTABLEKS R2 R1 K1 ["_metadataResponse"]
  GETUPVAL R2 2
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K29 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_7:
  DUPTABLE R1 K2 [{"validateBundleReadyForUpload", "_metadataResponse"}]
  DUPCLOSURE R2 K3 [PROTO_6]
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["validateBundleReadyForUpload"]
  DUPTABLE R2 K6 [{"type", "metadata"}]
  LOADK R3 K7 ["success"]
  SETTABLEKS R3 R2 K4 ["type"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["util"]
  GETTABLEKS R4 R5 K9 ["BundlesMetadata"]
  GETTABLEKS R3 R4 K10 ["mock"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K5 ["metadata"]
  SETTABLEKS R2 R1 K1 ["_metadataResponse"]
  GETUPVAL R2 2
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K12 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_8:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["validateBundleReadyForUpload called when it is being mocked as unauthorized"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K2 [{"validateBundleReadyForUpload", "_metadataResponse"}]
  DUPCLOSURE R2 K3 [PROTO_8]
  SETTABLEKS R2 R1 K0 ["validateBundleReadyForUpload"]
  DUPTABLE R2 K5 [{"type"}]
  LOADK R3 K6 ["error"]
  SETTABLEKS R3 R2 K4 ["type"]
  SETTABLEKS R2 R1 K1 ["_metadataResponse"]
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K8 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_10:
  DUPTABLE R1 K2 [{"type", "metadata"}]
  LOADK R2 K3 ["success"]
  SETTABLEKS R2 R1 K0 ["type"]
  SETTABLEKS R0 R1 K1 ["metadata"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  LOADK R3 K0 ["bundlesMetadataError"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["report"]
  CALL R1 3 0
  DUPTABLE R1 K3 [{"type"}]
  LOADK R2 K4 ["error"]
  SETTABLEKS R2 R1 K2 ["type"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_metadataResponsePromise"]
  JUMPIFNOTEQKNIL R0 [+37]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["_metadataResponse"]
  JUMPIFNOTEQKNIL R0 [+22]
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["util"]
  GETTABLEKS R2 R3 K3 ["BundlesMetadata"]
  GETTABLEKS R1 R2 K4 ["fetch"]
  CALL R1 0 1
  DUPCLOSURE R3 K5 [PROTO_10]
  NAMECALL R1 R1 K6 ["andThen"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K7 ["catch"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_metadataResponsePromise"]
  JUMP [+10]
  GETUPVAL R0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K8 ["resolve"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_metadataResponse"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_metadataResponsePromise"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_metadataResponsePromise"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K9 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K11 [assert]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_metadataResponsePromise"]
  GETUPVAL R2 5
  NAMECALL R0 R0 K6 ["andThen"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R2 R0 K1 ["_metadataResponse"]
  CALL R1 1 2
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWTABLE R6 0 0
  CALL R4 2 0
  MOVE R4 R1
  JUMPIF R4 [+4]
  DUPTABLE R4 K5 [{"type"}]
  LOADK R5 K6 ["pending"]
  SETTABLEKS R5 R4 K4 ["type"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UGCValidation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R7 R1 K14 ["ContextServices"]
  GETTABLEKS R6 R7 K15 ["Analytics"]
  GETTABLEKS R8 R1 K14 ["ContextServices"]
  GETTABLEKS R7 R8 K16 ["ContextItem"]
  LOADK R10 K17 ["UGCValidationContext"]
  NAMECALL R8 R7 K18 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R10 R8 K21 ["new"]
  DUPCLOSURE R10 K22 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R11 K23 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R11 R8 K24 ["mockAlwaysPasses"]
  DUPCLOSURE R11 K25 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R11 R8 K26 ["mockAlwaysFails"]
  DUPCLOSURE R11 K27 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R11 R8 K28 ["mockNeverReturns"]
  DUPCLOSURE R11 K29 [PROTO_9]
  CAPTURE VAL R8
  SETTABLEKS R11 R8 K30 ["mockUnauthorized"]
  DUPCLOSURE R11 K31 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R11 R8 K32 ["useBundlesMetadata"]
  RETURN R8 1
