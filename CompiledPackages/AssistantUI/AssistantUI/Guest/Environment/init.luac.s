PROTO_0:
  LOADB R0 0
  RETURN R0 1

PROTO_1:
  LOADB R0 0
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
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

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["updateScriptSource is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["convertImageDataToTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["captureScreenshot is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["releaseTempIdAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["getImageDataBase64Async is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadImageAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getUserId is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["publishAssetAsync is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R4 K1 [error]
  LOADK R5 K2 ["searchAssetAsync is not available for this environment"]
  CALL R4 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["copyToClipboard is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
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

PROTO_16:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["loadAssetAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETIMPORT R2 K1 [error]
  LOADK R3 K2 ["startRecording is not available for this environment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["endRecording is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["getSettingsAsync is not available for this environment"]
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["setSettingsAsync is not available for this environment"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["Source"]
  RETURN R1 1

PROTO_22:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_23:
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
  GETTABLEKS R8 R0 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["getNextCodeCounter"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K16 ["Get"]
  DUPTABLE R8 K39 [{"isDevFrameworkAvailable", "isRobloxScriptSecurity", "getNetworking", "loadCode", "stopCode", "updateScriptSource", "convertImageDataToTempIdAsync", "captureScreenshot", "releaseTempIdAsync", "getImageDataBase64Async", "loadImageAsync", "getUserId", "publishAssetAsync", "searchAssetAsync", "EventLogger", "copyToClipboard", "getClassIcon", "loadAssetAsync", "startRecording", "endRecording", "getSettingsAsync", "setSettingsAsync", "getScriptSource"}]
  DUPCLOSURE R9 K40 [PROTO_0]
  SETTABLEKS R9 R8 K17 ["isDevFrameworkAvailable"]
  DUPCLOSURE R9 K41 [PROTO_1]
  SETTABLEKS R9 R8 K18 ["isRobloxScriptSecurity"]
  DUPCLOSURE R9 K42 [PROTO_2]
  SETTABLEKS R9 R8 K19 ["getNetworking"]
  DUPCLOSURE R9 K43 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K20 ["loadCode"]
  DUPCLOSURE R9 K44 [PROTO_4]
  SETTABLEKS R9 R8 K21 ["stopCode"]
  DUPCLOSURE R9 K45 [PROTO_5]
  SETTABLEKS R9 R8 K22 ["updateScriptSource"]
  DUPCLOSURE R9 K46 [PROTO_6]
  SETTABLEKS R9 R8 K23 ["convertImageDataToTempIdAsync"]
  DUPCLOSURE R9 K47 [PROTO_7]
  SETTABLEKS R9 R8 K24 ["captureScreenshot"]
  DUPCLOSURE R9 K48 [PROTO_8]
  SETTABLEKS R9 R8 K25 ["releaseTempIdAsync"]
  DUPCLOSURE R9 K49 [PROTO_9]
  SETTABLEKS R9 R8 K26 ["getImageDataBase64Async"]
  DUPCLOSURE R9 K50 [PROTO_10]
  SETTABLEKS R9 R8 K27 ["loadImageAsync"]
  DUPCLOSURE R9 K51 [PROTO_11]
  SETTABLEKS R9 R8 K28 ["getUserId"]
  DUPCLOSURE R9 K52 [PROTO_12]
  SETTABLEKS R9 R8 K29 ["publishAssetAsync"]
  DUPCLOSURE R9 K53 [PROTO_13]
  SETTABLEKS R9 R8 K30 ["searchAssetAsync"]
  SETTABLEKS R2 R8 K8 ["EventLogger"]
  DUPCLOSURE R9 K54 [PROTO_14]
  SETTABLEKS R9 R8 K31 ["copyToClipboard"]
  DUPCLOSURE R9 K55 [PROTO_15]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K32 ["getClassIcon"]
  DUPCLOSURE R9 K56 [PROTO_16]
  SETTABLEKS R9 R8 K33 ["loadAssetAsync"]
  DUPCLOSURE R9 K57 [PROTO_17]
  SETTABLEKS R9 R8 K34 ["startRecording"]
  DUPCLOSURE R9 K58 [PROTO_18]
  SETTABLEKS R9 R8 K35 ["endRecording"]
  DUPCLOSURE R9 K59 [PROTO_19]
  SETTABLEKS R9 R8 K36 ["getSettingsAsync"]
  DUPCLOSURE R9 K60 [PROTO_20]
  SETTABLEKS R9 R8 K37 ["setSettingsAsync"]
  DUPCLOSURE R9 K61 [PROTO_21]
  SETTABLEKS R9 R8 K38 ["getScriptSource"]
  DUPTABLE R9 K64 [{"get", "set"}]
  NEWCLOSURE R10 P22
  CAPTURE REF R8
  SETTABLEKS R10 R9 K62 ["get"]
  NEWCLOSURE R10 P23
  CAPTURE REF R8
  SETTABLEKS R10 R9 K63 ["set"]
  CLOSEUPVALS R8
  RETURN R9 1
