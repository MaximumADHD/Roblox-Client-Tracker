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
  NEWTABLE R2 64 0
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K1 ["EventLogger"]
  DUPCLOSURE R3 K2 [PROTO_0]
  SETTABLEKS R3 R2 K3 ["isDevFrameworkAvailable"]
  DUPCLOSURE R3 K4 [PROTO_1]
  SETTABLEKS R3 R2 K5 ["isRobloxScriptSecurity"]
  DUPCLOSURE R3 K6 [PROTO_2]
  SETTABLEKS R3 R2 K7 ["getEngineFeature"]
  GETUPVAL R3 2
  LOADK R4 K8 ["getNetworking"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["getNetworking"]
  DUPCLOSURE R3 K9 [PROTO_3]
  SETTABLEKS R3 R2 K10 ["getSystemPrompt"]
  DUPCLOSURE R3 K11 [PROTO_4]
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K12 ["getUserId"]
  GETUPVAL R3 2
  LOADK R4 K13 ["copyToClipboard"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K13 ["copyToClipboard"]
  DUPCLOSURE R3 K14 [PROTO_5]
  SETTABLEKS R3 R2 K15 ["getClassIcon"]
  GETTABLEKS R3 R0 K16 ["startRecording"]
  SETTABLEKS R3 R2 K16 ["startRecording"]
  GETTABLEKS R3 R0 K17 ["endRecording"]
  SETTABLEKS R3 R2 K17 ["endRecording"]
  DUPCLOSURE R3 K18 [PROTO_6]
  SETTABLEKS R3 R2 K19 ["getScriptSource"]
  DUPTABLE R3 K23 [{"createWebStreamClient", "requestAsync", "openUrl"}]
  DUPCLOSURE R4 K24 [PROTO_7]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K20 ["createWebStreamClient"]
  DUPCLOSURE R4 K25 [PROTO_8]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K21 ["requestAsync"]
  GETUPVAL R4 2
  LOADK R5 K22 ["openUrl"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["openUrl"]
  SETTABLEKS R3 R2 K26 ["http"]
  DUPTABLE R3 K29 [{"encodeAsync", "decodeAsync"}]
  DUPCLOSURE R4 K30 [PROTO_9]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K27 ["encodeAsync"]
  DUPCLOSURE R4 K31 [PROTO_10]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K28 ["decodeAsync"]
  SETTABLEKS R3 R2 K32 ["json"]
  DUPTABLE R3 K35 [{"get", "set"}]
  DUPCLOSURE R4 K36 [PROTO_11]
  SETTABLEKS R4 R3 K33 ["get"]
  DUPCLOSURE R4 K37 [PROTO_12]
  SETTABLEKS R4 R3 K34 ["set"]
  SETTABLEKS R3 R2 K38 ["selection"]
  DUPTABLE R3 K46 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "screenCapture", "uploadImage"}]
  DUPTABLE R4 K49 [{"loadCode", "stopCode"}]
  GETUPVAL R5 2
  LOADK R6 K47 ["loadCode"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K47 ["loadCode"]
  GETUPVAL R5 2
  LOADK R6 K48 ["stopCode"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K48 ["stopCode"]
  SETTABLEKS R4 R3 K39 ["executeLuau"]
  DUPTABLE R4 K51 [{"updateScriptSourceAsync"}]
  DUPCLOSURE R5 K52 [PROTO_13]
  SETTABLEKS R5 R4 K50 ["updateScriptSourceAsync"]
  SETTABLEKS R4 R3 K40 ["multiEdit"]
  DUPTABLE R4 K55 [{"getFreeModelsAsync", "loadAssetAsync"}]
  NEWCLOSURE R5 P14
  CAPTURE REF R1
  CAPTURE UPVAL U5
  SETTABLEKS R5 R4 K53 ["getFreeModelsAsync"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K56 ["getStandardHandler"]
  GETUPVAL R6 7
  CALL R5 1 1
  SETTABLEKS R5 R4 K54 ["loadAssetAsync"]
  SETTABLEKS R4 R3 K41 ["marketplaceInsertion"]
  DUPTABLE R4 K59 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
  GETUPVAL R5 2
  LOADK R6 K57 ["generateMaterialVariantsAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K57 ["generateMaterialVariantsAsync"]
  GETUPVAL R5 2
  LOADK R6 K58 ["uploadMaterialsAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K58 ["uploadMaterialsAsync"]
  SETTABLEKS R4 R3 K42 ["materialGen"]
  DUPTABLE R4 K65 [{"createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync", "telemetry"}]
  DUPCLOSURE R5 K66 [PROTO_15]
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K60 ["createAssetAsync"]
  DUPCLOSURE R5 K67 [PROTO_16]
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K61 ["createMeshPartAsync"]
  DUPCLOSURE R5 K68 [PROTO_17]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U8
  SETTABLEKS R5 R4 K62 ["generateMeshAsync"]
  DUPCLOSURE R5 K69 [PROTO_18]
  CAPTURE UPVAL U8
  SETTABLEKS R5 R4 K63 ["loadGeneratedMeshAsync"]
  DUPTABLE R5 K74 [{"sendMeshGenActivatedTelemetry", "sendMeshGenCompletedTelemetry", "sendMeshGenPublishedAssetsTelemetry", "sendMeshGenMeshInsertedTelemetry"}]
  DUPCLOSURE R6 K75 [PROTO_19]
  SETTABLEKS R6 R5 K70 ["sendMeshGenActivatedTelemetry"]
  DUPCLOSURE R6 K76 [PROTO_20]
  SETTABLEKS R6 R5 K71 ["sendMeshGenCompletedTelemetry"]
  DUPCLOSURE R6 K77 [PROTO_21]
  SETTABLEKS R6 R5 K72 ["sendMeshGenPublishedAssetsTelemetry"]
  DUPCLOSURE R6 K78 [PROTO_22]
  SETTABLEKS R6 R5 K73 ["sendMeshGenMeshInsertedTelemetry"]
  SETTABLEKS R5 R4 K64 ["telemetry"]
  SETTABLEKS R4 R3 K43 ["meshGen"]
  DUPTABLE R4 K81 [{"getImageDataBase64Async", "captureScreenshot"}]
  GETUPVAL R5 2
  LOADK R6 K79 ["getImageDataBase64Async"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K79 ["getImageDataBase64Async"]
  DUPCLOSURE R5 K82 [PROTO_23]
  CAPTURE UPVAL U9
  SETTABLEKS R5 R4 K80 ["captureScreenshot"]
  SETTABLEKS R4 R3 K44 ["screenCapture"]
  DUPTABLE R4 K86 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
  GETUPVAL R5 2
  LOADK R6 K83 ["loadImageAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K83 ["loadImageAsync"]
  GETUPVAL R5 2
  LOADK R6 K84 ["publishAssetAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K84 ["publishAssetAsync"]
  GETUPVAL R5 2
  LOADK R6 K85 ["searchAssetAsync"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K85 ["searchAssetAsync"]
  SETTABLEKS R4 R3 K45 ["uploadImage"]
  SETTABLEKS R3 R2 K87 ["tools"]
  GETUPVAL R3 2
  LOADK R4 K88 ["convertImageDataToTempIdAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K88 ["convertImageDataToTempIdAsync"]
  GETUPVAL R3 2
  LOADK R4 K89 ["releaseTempIdAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K89 ["releaseTempIdAsync"]
  GETUPVAL R3 2
  LOADK R4 K90 ["getSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K90 ["getSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K91 ["setSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K91 ["setSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K92 ["getUserSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K92 ["getUserSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K93 ["setUserSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K93 ["setUserSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K94 ["getSecureSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K94 ["getSecureSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K95 ["setSecureSettingsAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K95 ["setSecureSettingsAsync"]
  GETUPVAL R3 2
  LOADK R4 K96 ["base64EncodeAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K96 ["base64EncodeAsync"]
  GETUPVAL R3 2
  LOADK R4 K97 ["generatePKCEAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K97 ["generatePKCEAsync"]
  GETUPVAL R3 2
  LOADK R4 K98 ["startMCPAuthAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K98 ["startMCPAuthAsync"]
  GETUPVAL R3 2
  LOADK R4 K99 ["startStopPlayAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K99 ["startStopPlayAsync"]
  GETUPVAL R3 2
  LOADK R4 K100 ["subscribeOutput"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K100 ["subscribeOutput"]
  GETUPVAL R3 2
  LOADK R4 K101 ["subscribeGameLoaded"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K101 ["subscribeGameLoaded"]
  GETUPVAL R3 2
  LOADK R4 K102 ["subscribeGameStopped"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K102 ["subscribeGameStopped"]
  GETUPVAL R3 2
  LOADK R4 K103 ["openFileDialogAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K103 ["openFileDialogAsync"]
  GETUPVAL R3 2
  LOADK R4 K104 ["importFileBinaryAsync"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K104 ["importFileBinaryAsync"]
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
  GETTABLEKS R12 R10 K22 ["createUnimplemented"]
  DUPCLOSURE R13 K23 [PROTO_24]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  MOVE R14 R13
  CALL R14 0 1
  DUPTABLE R15 K27 [{"new", "get", "set"}]
  SETTABLEKS R13 R15 K24 ["new"]
  NEWCLOSURE R16 P1
  CAPTURE REF R14
  SETTABLEKS R16 R15 K25 ["get"]
  NEWCLOSURE R16 P2
  CAPTURE REF R14
  SETTABLEKS R16 R15 K26 ["set"]
  CLOSEUPVALS R14
  RETURN R15 1
