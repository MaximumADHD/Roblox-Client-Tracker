PROTO_0:
  LOADB R0 0
  RETURN R0 1

PROTO_1:
  LOADB R0 0
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETIMPORT R3 K2 [table.clone]
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K6 [Enum.HttpCompression.None]
  SETTABLEKS R4 R3 K7 ["Compress"]
  MOVE R6 R1
  MOVE R7 R3
  NAMECALL R4 R0 K8 ["CreateWebStreamClient"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETIMPORT R1 K1 [loadstring]
  MOVE R2 R0
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Failed to load code"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R2 0
  CALL R2 0 1
  MOVE R3 R1
  RETURN R2 2

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["updateScriptSource is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["convertImageDataToTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["captureScreenshot is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["releaseTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["getImageDataBase64Async is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadImageAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getUserId is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["publishAssetAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R4 K1 [error]
  LOADK R5 K2 ["searchAssetAsync is not available for this environment"]
  CALL R4 1 0
  RETURN R0 0

PROTO_15:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["copyToClipboard is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
  LOADK R2 K4 [""]
  SETTABLEKS R2 R1 K0 ["Image"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["ImageRectOffset"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 16
  LOADN R4 16
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["ImageRectSize"]
  RETURN R1 1

PROTO_17:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadAssetAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["startRecording is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["endRecording is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getSettingsAsync is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["setSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["getSecureSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_23:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["setSecureSettingsAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["Source"]
  RETURN R1 1

PROTO_25:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["base64EncodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["generatePKCEAsync is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["startMCPAuthAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_28:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["jsonEncodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_29:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["jsonDecodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_31:
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["DMNetworking"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K8 ["EventLogger"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["FFlagMCPAssistantImprovedChips"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Guest"]
  GETTABLEKS R5 R6 K12 ["LoadAssetHandlers"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Guest"]
  GETTABLEKS R6 R7 K13 ["RecordingHandlers"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["getNextCodeCounter"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K17 ["Get"]
  DUPTABLE R9 K48 [{"isDevFrameworkAvailable", "isRobloxScriptSecurity", "getNetworking", "createWebStreamClient", "loadCode", "stopCode", "updateScriptSource", "convertImageDataToTempIdAsync", "captureScreenshot", "releaseTempIdAsync", "getImageDataBase64Async", "loadImageAsync", "getUserId", "publishAssetAsync", "searchAssetAsync", "EventLogger", "copyToClipboard", "getClassIcon", "loadAssetAsync", "startRecording", "endRecording", "getSettingsAsync", "setSettingsAsync", "getSecureSettingsAsync", "setSecureSettingsAsync", "getScriptSource", "base64EncodeAsync", "generatePKCEAsync", "startMCPAuthAsync", "jsonEncodeAsync", "jsonDecodeAsync"}]
  DUPCLOSURE R10 K49 [PROTO_0]
  SETTABLEKS R10 R9 K18 ["isDevFrameworkAvailable"]
  DUPCLOSURE R10 K50 [PROTO_1]
  SETTABLEKS R10 R9 K19 ["isRobloxScriptSecurity"]
  DUPCLOSURE R10 K51 [PROTO_2]
  SETTABLEKS R10 R9 K20 ["getNetworking"]
  DUPCLOSURE R10 K52 [PROTO_3]
  SETTABLEKS R10 R9 K21 ["createWebStreamClient"]
  DUPCLOSURE R10 K53 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K22 ["loadCode"]
  DUPCLOSURE R10 K54 [PROTO_5]
  SETTABLEKS R10 R9 K23 ["stopCode"]
  DUPCLOSURE R10 K55 [PROTO_6]
  SETTABLEKS R10 R9 K24 ["updateScriptSource"]
  DUPCLOSURE R10 K56 [PROTO_7]
  SETTABLEKS R10 R9 K25 ["convertImageDataToTempIdAsync"]
  DUPCLOSURE R10 K57 [PROTO_8]
  SETTABLEKS R10 R9 K26 ["captureScreenshot"]
  DUPCLOSURE R10 K58 [PROTO_9]
  SETTABLEKS R10 R9 K27 ["releaseTempIdAsync"]
  DUPCLOSURE R10 K59 [PROTO_10]
  SETTABLEKS R10 R9 K28 ["getImageDataBase64Async"]
  DUPCLOSURE R10 K60 [PROTO_11]
  SETTABLEKS R10 R9 K29 ["loadImageAsync"]
  DUPCLOSURE R10 K61 [PROTO_12]
  SETTABLEKS R10 R9 K30 ["getUserId"]
  DUPCLOSURE R10 K62 [PROTO_13]
  SETTABLEKS R10 R9 K31 ["publishAssetAsync"]
  DUPCLOSURE R10 K63 [PROTO_14]
  SETTABLEKS R10 R9 K32 ["searchAssetAsync"]
  SETTABLEKS R2 R9 K8 ["EventLogger"]
  DUPCLOSURE R10 K64 [PROTO_15]
  SETTABLEKS R10 R9 K33 ["copyToClipboard"]
  DUPCLOSURE R10 K65 [PROTO_16]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K34 ["getClassIcon"]
  DUPCLOSURE R10 K66 [PROTO_17]
  SETTABLEKS R10 R9 K35 ["loadAssetAsync"]
  DUPCLOSURE R10 K67 [PROTO_18]
  SETTABLEKS R10 R9 K36 ["startRecording"]
  DUPCLOSURE R10 K68 [PROTO_19]
  SETTABLEKS R10 R9 K37 ["endRecording"]
  DUPCLOSURE R10 K69 [PROTO_20]
  SETTABLEKS R10 R9 K38 ["getSettingsAsync"]
  DUPCLOSURE R10 K70 [PROTO_21]
  SETTABLEKS R10 R9 K39 ["setSettingsAsync"]
  DUPCLOSURE R10 K71 [PROTO_22]
  SETTABLEKS R10 R9 K40 ["getSecureSettingsAsync"]
  DUPCLOSURE R10 K72 [PROTO_23]
  SETTABLEKS R10 R9 K41 ["setSecureSettingsAsync"]
  DUPCLOSURE R10 K73 [PROTO_24]
  SETTABLEKS R10 R9 K42 ["getScriptSource"]
  DUPCLOSURE R10 K74 [PROTO_25]
  SETTABLEKS R10 R9 K43 ["base64EncodeAsync"]
  DUPCLOSURE R10 K75 [PROTO_26]
  SETTABLEKS R10 R9 K44 ["generatePKCEAsync"]
  DUPCLOSURE R10 K76 [PROTO_27]
  SETTABLEKS R10 R9 K45 ["startMCPAuthAsync"]
  DUPCLOSURE R10 K77 [PROTO_28]
  SETTABLEKS R10 R9 K46 ["jsonEncodeAsync"]
  DUPCLOSURE R10 K78 [PROTO_29]
  SETTABLEKS R10 R9 K47 ["jsonDecodeAsync"]
  DUPTABLE R10 K81 [{"get", "set"}]
  NEWCLOSURE R11 P30
  CAPTURE REF R9
  SETTABLEKS R11 R10 K79 ["get"]
  NEWCLOSURE R11 P31
  CAPTURE REF R9
  SETTABLEKS R11 R10 K80 ["set"]
  CLOSEUPVALS R9
  RETURN R10 1
