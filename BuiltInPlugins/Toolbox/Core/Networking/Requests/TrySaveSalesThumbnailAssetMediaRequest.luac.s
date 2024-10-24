PROTO_0:
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLE R2 R1 R0
  GETUPVAL R1 1
  GETUPVAL R2 0
  LOADB R3 0
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K0 ["SCREENS"]
  GETTABLEKS R4 R5 K1 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 2
  GETUPVAL R3 5
  GETUPVAL R4 6
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["thumbnail"]
  GETUPVAL R0 1
  GETUPVAL R1 0
  LOADB R2 0
  CALL R0 2 1
  JUMPIF R0 [+18]
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["SCREENS"]
  GETTABLEKS R3 R4 K2 ["UPLOADING_ASSET"]
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R2 5
  GETUPVAL R3 6
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  JUMPIFEQKNIL R0 [+4]
  GETTABLEKS R1 R0 K0 ["OverallSuccess"]
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["assetMedia"]
  GETUPVAL R1 2
  GETUPVAL R2 1
  LOADB R3 0
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["SCREENS"]
  GETTABLEKS R4 R5 K3 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 3
  GETUPVAL R3 6
  GETUPVAL R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  DUPTABLE R2 K2 [{"thumbnail", "assetMedia"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["thumbnail"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["assetMedia"]
  NAMECALL R4 R0 K3 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["allowedAssetTypesForRelease"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R6 P2
  CAPTURE REF R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["iconFile"]
  JUMPIFNOT R7 [+18]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["networkInterface"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K7 ["assetId"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K5 ["iconFile"]
  NAMECALL R7 R7 K8 ["uploadAssetThumbnail"]
  CALL R7 3 1
  MOVE R9 R5
  MOVE R10 R5
  NAMECALL R7 R7 K9 ["andThen"]
  CALL R7 3 0
  JUMP [+24]
  LOADB R7 1
  SETTABLEKS R7 R2 K0 ["thumbnail"]
  GETUPVAL R7 0
  MOVE R8 R2
  LOADB R9 0
  CALL R7 2 1
  JUMPIF R7 [+16]
  GETUPVAL R9 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K10 ["SCREENS"]
  GETTABLEKS R10 R11 K11 ["UPLOADING_ASSET"]
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 3
  MOVE R10 R1
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K13 ["assetMediaUpdateData"]
  JUMPIFNOT R7 [+22]
  GETUPVAL R9 5
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K6 ["networkInterface"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K7 ["assetId"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K13 ["assetMediaUpdateData"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K14 ["assetTypeEnum"]
  CALL R9 4 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 1
  MOVE R9 R6
  NAMECALL R7 R7 K9 ["andThen"]
  CALL R7 2 0
  JUMP [+24]
  LOADB R7 1
  SETTABLEKS R7 R2 K1 ["assetMedia"]
  GETUPVAL R7 0
  MOVE R8 R2
  LOADB R9 0
  CALL R7 2 1
  JUMPIF R7 [+16]
  GETUPVAL R9 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K10 ["SCREENS"]
  GETTABLEKS R10 R11 K11 ["UPLOADING_ASSET"]
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 3
  MOVE R10 R1
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 0
  MOVE R8 R2
  LOADB R9 0
  CALL R7 2 1
  JUMPIF R7 [+16]
  GETUPVAL R9 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K10 ["SCREENS"]
  GETTABLEKS R10 R11 K11 ["UPLOADING_ASSET"]
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 3
  MOVE R10 R1
  CALL R9 1 -1
  NAMECALL R7 R0 K12 ["dispatch"]
  CALL R7 -1 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K3 ["Core"]
  GETTABLEKS R4 R5 K4 ["Util"]
  GETTABLEKS R3 R4 K7 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["AssetConfigConstants"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["AssetConfigUtil"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K3 ["Core"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K11 ["SetCurrentScreen"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K12 ["UploadResult"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K3 ["Core"]
  GETTABLEKS R11 R12 K13 ["Networking"]
  GETTABLEKS R10 R11 K14 ["Requests"]
  GETTABLEKS R9 R10 K15 ["UpdateAssetMediaDataRequest"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K16 ["Packages"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R9 K17 ["Framework"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R9 K18 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K19 ["includes"]
  DUPCLOSURE R13 K20 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R13 1
