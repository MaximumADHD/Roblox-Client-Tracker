PROTO_0:
  LOADB R0 0
  RETURN R0 1

PROTO_1:
  LOADB R0 0
  RETURN R0 1

PROTO_2:
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["LocalPlayer is nil"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["UserId"]
  RETURN R1 1

PROTO_5:
  DUPTABLE R0 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
  LOADK R1 K4 [""]
  SETTABLEKS R1 R0 K0 ["Image"]
  GETIMPORT R1 K7 [Vector2.new]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ImageRectOffset"]
  GETIMPORT R1 K7 [Vector2.new]
  LOADN R2 16
  LOADN R3 16
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["ImageRectSize"]
  RETURN R0 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["Source"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["CreateWebStreamClient"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["RequestAsync"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONEncode"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_10:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_12:
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["script"]
  GETTABLEKS R2 R0 K1 ["source"]
  SETTABLEKS R2 R1 K2 ["Source"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getEngineFeature"]
  LOADK R3 K1 ["AsyncRenamesUsedInLuaApps"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["GetFreeModelsAsync"]
  CALL R2 3 -1
  RETURN R2 -1
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["GetFreeModels"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["CreateAssetAsync"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_16:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["CreateMeshPartAsync"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R4 0
  MOVE R6 R1
  NAMECALL R4 R4 K0 ["GetPlayerByUserId"]
  CALL R4 2 1
  GETUPVAL R5 1
  MOVE R7 R0
  MOVE R8 R4
  MOVE R9 R2
  MOVE R10 R3
  NAMECALL R5 R5 K1 ["GenerateMeshAsync"]
  CALL R5 5 -1
  RETURN R5 -1

PROTO_18:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["LoadGeneratedMeshAsync"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_19:
  RETURN R0 0

PROTO_20:
  RETURN R0 0

PROTO_21:
  RETURN R0 0

PROTO_22:
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["CaptureScreenshot"]
  CALL R1 2 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getStandardHandlers"]
  CALL R0 0 1
  LOADNIL R1
  DUPTABLE R2 K28 [{"EventLogger", "isDevFrameworkAvailable", "isRobloxScriptSecurity", "getEngineFeature", "getNetworking", "getSystemPrompt", "getUserId", "copyToClipboard", "getClassIcon", "startRecording", "endRecording", "getScriptSource", "http", "json", "selection", "tools", "convertImageDataToTempIdAsync", "releaseTempIdAsync", "getSettingsAsync", "setSettingsAsync", "getUserSettingsAsync", "setUserSettingsAsync", "getSecureSettingsAsync", "setSecureSettingsAsync", "base64EncodeAsync", "generatePKCEAsync", "startMCPAuthAsync"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K1 ["EventLogger"]
  DUPCLOSURE R3 K29 [PROTO_0]
  SETTABLEKS R3 R2 K2 ["isDevFrameworkAvailable"]
  DUPCLOSURE R3 K30 [PROTO_1]
  SETTABLEKS R3 R2 K3 ["isRobloxScriptSecurity"]
  DUPCLOSURE R3 K31 [PROTO_2]
  SETTABLEKS R3 R2 K4 ["getEngineFeature"]
  GETUPVAL R3 2
  LOADK R4 K5 ["getNetworking"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["getNetworking"]
  DUPCLOSURE R3 K32 [PROTO_3]
  SETTABLEKS R3 R2 K6 ["getSystemPrompt"]
  DUPCLOSURE R3 K33 [PROTO_4]
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K7 ["getUserId"]
  GETUPVAL R3 2
  LOADK R4 K8 ["copyToClipboard"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["copyToClipboard"]
  DUPCLOSURE R3 K34 [PROTO_5]
  SETTABLEKS R3 R2 K9 ["getClassIcon"]
  GETTABLEKS R3 R0 K10 ["startRecording"]
  SETTABLEKS R3 R2 K10 ["startRecording"]
  GETTABLEKS R3 R0 K11 ["endRecording"]
  SETTABLEKS R3 R2 K11 ["endRecording"]
  DUPCLOSURE R3 K35 [PROTO_6]
  SETTABLEKS R3 R2 K12 ["getScriptSource"]
  DUPTABLE R3 K39 [{"createWebStreamClient", "requestAsync", "openUrl"}]
  DUPCLOSURE R4 K40 [PROTO_7]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K36 ["createWebStreamClient"]
  DUPCLOSURE R4 K41 [PROTO_8]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K37 ["requestAsync"]
  GETUPVAL R4 2
  LOADK R5 K38 ["openUrl"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["openUrl"]
  SETTABLEKS R3 R2 K13 ["http"]
  DUPTABLE R3 K44 [{"encodeAsync", "decodeAsync"}]
  DUPCLOSURE R4 K45 [PROTO_9]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K42 ["encodeAsync"]
  DUPCLOSURE R4 K46 [PROTO_10]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K43 ["decodeAsync"]
  SETTABLEKS R3 R2 K14 ["json"]
  DUPTABLE R3 K49 [{"get", "set"}]
  DUPCLOSURE R4 K50 [PROTO_11]
  SETTABLEKS R4 R3 K47 ["get"]
  DUPCLOSURE R4 K51 [PROTO_12]
  SETTABLEKS R4 R3 K48 ["set"]
  SETTABLEKS R3 R2 K15 ["selection"]
  DUPTABLE R3 K59 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "screenCapture", "uploadImage"}]
  DUPTABLE R4 K62 [{"loadCode", "stopCode"}]
  GETUPVAL R5 2
  LOADK R6 K60 ["loadCode"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K60 ["loadCode"]
  GETUPVAL R5 2
  LOADK R6 K61 ["stopCode"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K61 ["stopCode"]
  SETTABLEKS R4 R3 K52 ["executeLuau"]
  DUPTABLE R4 K64 [{"updateScriptSourceAsync"}]
  DUPCLOSURE R5 K65 [PROTO_13]
  SETTABLEKS R5 R4 K63 ["updateScriptSourceAsync"]
  SETTABLEKS R4 R3 K53 ["multiEdit"]
  DUPTABLE R4 K68 [{"getFreeModelsAsync", "loadAssetAsync"}]
  NEWCLOSURE R5 P14
  CAPTURE REF R1
  CAPTURE UPVAL U5
  SETTABLEKS R5 R4 K66 ["getFreeModelsAsync"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K69 ["getStandardHandler"]
  GETUPVAL R6 7
  CALL R5 1 1
  SETTABLEKS R5 R4 K67 ["loadAssetAsync"]
  SETTABLEKS R4 R3 K54 ["marketplaceInsertion"]
  DUPTABLE R4 K72 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
  GETUPVAL R5 2
  LOADK R6 K70 ["generateMaterialVariantsAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K70 ["generateMaterialVariantsAsync"]
  GETUPVAL R5 2
  LOADK R6 K71 ["uploadMaterialsAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K71 ["uploadMaterialsAsync"]
  SETTABLEKS R4 R3 K55 ["materialGen"]
  DUPTABLE R4 K78 [{"createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync", "telemetry"}]
  DUPCLOSURE R5 K79 [PROTO_15]
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K73 ["createAssetAsync"]
  DUPCLOSURE R5 K80 [PROTO_16]
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K74 ["createMeshPartAsync"]
  DUPCLOSURE R5 K81 [PROTO_17]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U8
  SETTABLEKS R5 R4 K75 ["generateMeshAsync"]
  DUPCLOSURE R5 K82 [PROTO_18]
  CAPTURE UPVAL U8
  SETTABLEKS R5 R4 K76 ["loadGeneratedMeshAsync"]
  DUPTABLE R5 K87 [{"sendMeshGenActivatedTelemetry", "sendMeshGenCompletedTelemetry", "sendMeshGenPublishedAssetsTelemetry", "sendMeshGenMeshInsertedTelemetry"}]
  DUPCLOSURE R6 K88 [PROTO_19]
  SETTABLEKS R6 R5 K83 ["sendMeshGenActivatedTelemetry"]
  DUPCLOSURE R6 K89 [PROTO_20]
  SETTABLEKS R6 R5 K84 ["sendMeshGenCompletedTelemetry"]
  DUPCLOSURE R6 K90 [PROTO_21]
  SETTABLEKS R6 R5 K85 ["sendMeshGenPublishedAssetsTelemetry"]
  DUPCLOSURE R6 K91 [PROTO_22]
  SETTABLEKS R6 R5 K86 ["sendMeshGenMeshInsertedTelemetry"]
  SETTABLEKS R5 R4 K77 ["telemetry"]
  SETTABLEKS R4 R3 K56 ["meshGen"]
  DUPTABLE R4 K94 [{"getImageDataBase64Async", "captureScreenshot"}]
  GETUPVAL R5 2
  LOADK R6 K92 ["getImageDataBase64Async"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K92 ["getImageDataBase64Async"]
  DUPCLOSURE R5 K95 [PROTO_23]
  CAPTURE UPVAL U9
  SETTABLEKS R5 R4 K93 ["captureScreenshot"]
  SETTABLEKS R4 R3 K57 ["screenCapture"]
  DUPTABLE R4 K99 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
  GETUPVAL R5 2
  LOADK R6 K96 ["loadImageAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K96 ["loadImageAsync"]
  GETUPVAL R5 2
  LOADK R6 K97 ["publishAssetAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K97 ["publishAssetAsync"]
  GETUPVAL R5 2
  LOADK R6 K98 ["searchAssetAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K98 ["searchAssetAsync"]
  SETTABLEKS R4 R3 K58 ["uploadImage"]
  SETTABLEKS R3 R2 K16 ["tools"]
  GETUPVAL R3 2
  LOADK R4 K17 ["convertImageDataToTempIdAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["convertImageDataToTempIdAsync"]
  GETUPVAL R3 2
  LOADK R4 K18 ["releaseTempIdAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["releaseTempIdAsync"]
  GETUPVAL R3 2
  LOADK R4 K19 ["getSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K19 ["getSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K20 ["setSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["setSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K21 ["getUserSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K21 ["getUserSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K22 ["setUserSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K22 ["setUserSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K23 ["getSecureSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K23 ["getSecureSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K24 ["setSecureSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K24 ["setSecureSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K25 ["base64EncodeAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K25 ["base64EncodeAsync"]
  GETUPVAL R3 2
  LOADK R4 K26 ["generatePKCEAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K26 ["generatePKCEAsync"]
  GETUPVAL R3 2
  LOADK R4 K27 ["startMCPAuthAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K27 ["startMCPAuthAsync"]
  MOVE R1 R2
  CLOSEUPVALS R1
  RETURN R1 1

PROTO_25:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["Environment has not been set up yet"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_26:
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["AssetService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CaptureService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K9 ["GenerationService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K5 [game]
  LOADK R6 K10 ["HttpService"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K5 [game]
  LOADK R7 K11 ["InsertService"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K5 [game]
  LOADK R8 K12 ["Players"]
  NAMECALL R6 R6 K7 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K14 [require]
  GETTABLEKS R9 R0 K15 ["Parent"]
  GETTABLEKS R8 R9 K16 ["DMNetworking"]
  CALL R7 1 1
  GETIMPORT R8 K14 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K17 ["EventLogger"]
  CALL R8 1 1
  GETIMPORT R9 K14 [require]
  GETTABLEKS R11 R0 K18 ["Guest"]
  GETTABLEKS R10 R11 K19 ["LoadAssetHandlers"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R12 R0 K15 ["Parent"]
  GETTABLEKS R11 R12 K20 ["ReactUtils"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R13 R0 K18 ["Guest"]
  GETTABLEKS R12 R13 K21 ["RecordingHandlers"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R13 R0 K22 ["Types"]
  CALL R12 1 1
  GETTABLEKS R13 R10 K23 ["createUnimplemented"]
  DUPCLOSURE R14 K24 [PROTO_24]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  MOVE R15 R14
  CALL R15 0 1
  DUPTABLE R16 K28 [{"new", "get", "set"}]
  SETTABLEKS R14 R16 K25 ["new"]
  NEWCLOSURE R17 P1
  CAPTURE REF R15
  SETTABLEKS R17 R16 K26 ["get"]
  NEWCLOSURE R17 P2
  CAPTURE REF R15
  SETTABLEKS R17 R16 K27 ["set"]
  CLOSEUPVALS R15
  RETURN R16 1
