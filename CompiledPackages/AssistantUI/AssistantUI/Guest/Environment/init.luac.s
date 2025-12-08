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
  LOADK R2 K2 ["updateScriptSourceAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["convertImageDataToTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["captureScreenshot is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["releaseTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["getImageDataBase64Async is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadImageAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getUserId is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["publishAssetAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETIMPORT R4 K1 [error]
  LOADK R5 K2 ["searchAssetAsync is not available for this environment"]
  CALL R4 1 0
  RETURN R0 0

PROTO_16:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["copyToClipboard is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
  LOADK R2 K4 [""]
  SETTABLEKS R2 R1 K0 ["Image"]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["ImageRectOffset"]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 16
  LOADN R4 16
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["ImageRectSize"]
  RETURN R1 1

PROTO_18:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadAssetAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["startRecording is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_20:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["endRecording is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getSettingsAsync is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_22:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["setSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_23:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["getUserSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_24:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["setUserSettingsAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_25:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["getSecureSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["setSecureSettingsAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["Source"]
  RETURN R1 1

PROTO_28:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["base64EncodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_29:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["generatePKCEAsync is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_30:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["startMCPAuthAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_31:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["httpRequestAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_32:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["jsonEncodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_33:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["jsonDecodeAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_35:
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
  GETTABLEKS R5 R0 K9 ["Guest"]
  GETTABLEKS R4 R5 K10 ["LoadAssetHandlers"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ModelContextProtocol"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Guest"]
  GETTABLEKS R6 R7 K12 ["RecordingHandlers"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K13 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["getNextCodeCounter"]
  CALL R7 1 1
  NEWTABLE R8 64 0
  DUPCLOSURE R9 K16 [PROTO_0]
  SETTABLEKS R9 R8 K17 ["isDevFrameworkAvailable"]
  DUPCLOSURE R9 K18 [PROTO_1]
  SETTABLEKS R9 R8 K19 ["isRobloxScriptSecurity"]
  DUPCLOSURE R9 K20 [PROTO_2]
  SETTABLEKS R9 R8 K21 ["getNetworking"]
  DUPCLOSURE R9 K22 [PROTO_3]
  SETTABLEKS R9 R8 K23 ["createWebStreamClient"]
  DUPCLOSURE R9 K24 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K25 ["loadCode"]
  DUPCLOSURE R9 K26 [PROTO_5]
  SETTABLEKS R9 R8 K27 ["stopCode"]
  DUPCLOSURE R9 K28 [PROTO_6]
  SETTABLEKS R9 R8 K29 ["updateScriptSource_DEPRECATED"]
  DUPCLOSURE R9 K30 [PROTO_7]
  SETTABLEKS R9 R8 K31 ["updateScriptSourceAsync"]
  DUPCLOSURE R9 K32 [PROTO_8]
  SETTABLEKS R9 R8 K33 ["convertImageDataToTempIdAsync"]
  DUPCLOSURE R9 K34 [PROTO_9]
  SETTABLEKS R9 R8 K35 ["captureScreenshot"]
  DUPCLOSURE R9 K36 [PROTO_10]
  SETTABLEKS R9 R8 K37 ["releaseTempIdAsync"]
  DUPCLOSURE R9 K38 [PROTO_11]
  SETTABLEKS R9 R8 K39 ["getImageDataBase64Async"]
  DUPCLOSURE R9 K40 [PROTO_12]
  SETTABLEKS R9 R8 K41 ["loadImageAsync"]
  DUPCLOSURE R9 K42 [PROTO_13]
  SETTABLEKS R9 R8 K43 ["getUserId"]
  DUPCLOSURE R9 K44 [PROTO_14]
  SETTABLEKS R9 R8 K45 ["publishAssetAsync"]
  DUPCLOSURE R9 K46 [PROTO_15]
  SETTABLEKS R9 R8 K47 ["searchAssetAsync"]
  SETTABLEKS R2 R8 K8 ["EventLogger"]
  DUPCLOSURE R9 K48 [PROTO_16]
  SETTABLEKS R9 R8 K49 ["copyToClipboard"]
  DUPCLOSURE R9 K50 [PROTO_17]
  SETTABLEKS R9 R8 K51 ["getClassIcon"]
  DUPCLOSURE R9 K52 [PROTO_18]
  SETTABLEKS R9 R8 K53 ["loadAssetAsync"]
  DUPCLOSURE R9 K54 [PROTO_19]
  SETTABLEKS R9 R8 K55 ["startRecording"]
  DUPCLOSURE R9 K56 [PROTO_20]
  SETTABLEKS R9 R8 K57 ["endRecording"]
  DUPCLOSURE R9 K58 [PROTO_21]
  SETTABLEKS R9 R8 K59 ["getSettingsAsync"]
  DUPCLOSURE R9 K60 [PROTO_22]
  SETTABLEKS R9 R8 K61 ["setSettingsAsync"]
  DUPCLOSURE R9 K62 [PROTO_23]
  SETTABLEKS R9 R8 K63 ["getUserSettingsAsync"]
  DUPCLOSURE R9 K64 [PROTO_24]
  SETTABLEKS R9 R8 K65 ["setUserSettingsAsync"]
  DUPCLOSURE R9 K66 [PROTO_25]
  SETTABLEKS R9 R8 K67 ["getSecureSettingsAsync"]
  DUPCLOSURE R9 K68 [PROTO_26]
  SETTABLEKS R9 R8 K69 ["setSecureSettingsAsync"]
  DUPCLOSURE R9 K70 [PROTO_27]
  SETTABLEKS R9 R8 K71 ["getScriptSource"]
  DUPCLOSURE R9 K72 [PROTO_28]
  SETTABLEKS R9 R8 K73 ["base64EncodeAsync"]
  DUPCLOSURE R9 K74 [PROTO_29]
  SETTABLEKS R9 R8 K75 ["generatePKCEAsync"]
  DUPCLOSURE R9 K76 [PROTO_30]
  SETTABLEKS R9 R8 K77 ["startMCPAuthAsync"]
  DUPCLOSURE R9 K78 [PROTO_31]
  SETTABLEKS R9 R8 K79 ["httpRequestAsync"]
  DUPCLOSURE R9 K80 [PROTO_32]
  SETTABLEKS R9 R8 K81 ["jsonEncodeAsync"]
  DUPCLOSURE R9 K82 [PROTO_33]
  SETTABLEKS R9 R8 K83 ["jsonDecodeAsync"]
  DUPTABLE R9 K86 [{"get", "set"}]
  NEWCLOSURE R10 P34
  CAPTURE REF R8
  SETTABLEKS R10 R9 K84 ["get"]
  NEWCLOSURE R10 P35
  CAPTURE REF R8
  SETTABLEKS R10 R9 K85 ["set"]
  CLOSEUPVALS R8
  RETURN R9 1
