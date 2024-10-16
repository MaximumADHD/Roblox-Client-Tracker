PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["composeUrl"]
  GETUPVAL R5 1
  LOADK R6 K1 ["ide/publish/UploadNewImage"]
  DUPTABLE R7 K4 [{"name", "description"}]
  ORK R8 R1 K5 [""]
  SETTABLEKS R8 R7 K2 ["name"]
  ORK R8 R2 K5 [""]
  SETTABLEKS R8 R7 K3 ["description"]
  CALL R4 3 1
  NEWTABLE R5 1 0
  LOADK R6 K6 ["multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
  SETTABLEKS R6 R5 K7 ["Content-Type"]
  MOVE R8 R4
  MOVE R9 R3
  MOVE R10 R5
  NAMECALL R6 R0 K8 ["post"]
  CALL R6 4 -1
  RETURN R6 -1

PROTO_1:
  DUPTABLE R1 K3 [{"_DEPRECATED_networking", "_publishService", "_promises"}]
  SETTABLEKS R0 R1 K0 ["_DEPRECATED_networking"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["_publishService"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["_promises"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+8]
  GETTABLEKS R3 R1 K0 ["_DEPRECATED_networking"]
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["ImageUploader requires a Networking instance"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K8 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["ImageUploader.mock should only be called when FFlagFixMaterialManagerUploadImage is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  FASTCALL2K ASSERT R0 K3 [+5]
  MOVE R2 R0
  LOADK R3 K3 ["ImageUploader.mock expects a mock PublishService"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["new"]
  CALL R1 0 1
  SETTABLEKS R0 R1 K5 ["_publishService"]
  RETURN R1 1

PROTO_3:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_DEPRECATED_networking"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_publishService"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["_promises"]
  RETURN R0 0

PROTO_4:
  GETIMPORT R3 K3 [Enum.AssetCreatorType.User]
  GETUPVAL R4 0
  NAMECALL R4 R4 K4 ["GetUserId"]
  CALL R4 1 1
  MOVE R5 R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["_publishService"]
  GETUPVAL R8 2
  MOVE R9 R3
  MOVE R10 R4
  LOADK R11 K6 ["Image"]
  LOADN R12 0
  GETUPVAL R13 3
  GETUPVAL R14 4
  LOADK R15 K7 [""]
  LOADK R16 K7 [""]
  LOADN R17 0
  NAMECALL R6 R6 K8 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
  CALL R6 11 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["AssetId"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  RETURN R1 1

PROTO_7:
  FASTCALL1 TYPE R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K2 ["string"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K3 [+4]
  LOADK R7 K3 ["ImageUploader:upload() expects tempId to be a string"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K2 ["string"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K6 [+4]
  LOADK R7 K6 ["ImageUploader:upload() expects name to be a string"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  LOADB R6 1
  FASTCALL1 TYPE R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K2 ["string"] [+10]
  FASTCALL1 TYPE R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K7 ["nil"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K8 [+4]
  LOADK R7 K8 ["ImageUploader:upload() expects description to be a string or nil"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  FASTCALL1 TYPE R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K2 ["string"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["ImageUploader:upload() expects contents to be a string"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  ORK R3 R3 K10 [""]
  GETTABLEKS R6 R0 K11 ["_promises"]
  GETTABLE R5 R6 R1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R6 R0 K11 ["_promises"]
  GETTABLE R5 R6 R1
  CLOSEUPVALS R3
  RETURN R5 1
  LOADNIL R5
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+17]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["new"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE REF R3
  CALL R6 1 1
  MOVE R5 R6
  DUPCLOSURE R8 K13 [PROTO_5]
  NAMECALL R6 R5 K14 ["andThen"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+13]
  GETUPVAL R6 3
  GETTABLEKS R7 R0 K15 ["_DEPRECATED_networking"]
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  CALL R6 4 1
  MOVE R5 R6
  DUPCLOSURE R8 K16 [PROTO_6]
  NAMECALL R6 R5 K14 ["andThen"]
  CALL R6 2 1
  MOVE R5 R6
  GETTABLEKS R6 R0 K11 ["_promises"]
  SETTABLE R5 R6 R1
  CLOSEUPVALS R3
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["PublishService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["StudioService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Url"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K11 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["Promise"]
  GETTABLEKS R6 R3 K15 ["new"]
  CALL R6 0 1
  GETTABLEKS R5 R6 K16 ["DATA_URL"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K17 ["Src"]
  GETTABLEKS R8 R9 K18 ["Flags"]
  GETTABLEKS R7 R8 K19 ["getFFlagFixMaterialManagerUploadImage"]
  CALL R6 1 1
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R8 8 0
  SETTABLEKS R8 R8 K21 ["__index"]
  DUPCLOSURE R9 K22 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K15 ["new"]
  DUPCLOSURE R9 K23 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K24 ["mock"]
  DUPCLOSURE R9 K25 [PROTO_3]
  SETTABLEKS R9 R8 K26 ["destroy"]
  DUPCLOSURE R9 K27 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K28 ["upload"]
  RETURN R8 1
