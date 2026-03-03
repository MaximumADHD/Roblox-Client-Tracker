PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LocalPlayer"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["LocalPlayer is nil"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["UserId"]
       12 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
        1 LOADK                            R1 K4 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Image"]
        4 GETIMPORT                        R1 K7 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R3 0
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K1 ["ImageRectOffset"]
       11 GETIMPORT                        R1 K7 [Vector2.new]
       13 LOADN                            R2 16
       14 LOADN                            R3 16
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["ImageRectSize"]
       18 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getEngineFeature"]
        3 LOADK                            R3 K1 ["AsyncRenamesUsedInLuaApps"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 NAMECALL                         R2 R2 K2 ["GetFreeModelsAsync"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 NAMECALL                         R2 R2 K3 ["GetFreeModels"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["CreateAssetAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateMeshPartAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K0 ["GetPlayerByUserId"]
        4 CALL                             R4 2 1
        5 GETUPVAL                         R5 1
        6 MOVE                             R7 R0
        7 MOVE                             R8 R4
        8 MOVE                             R9 R2
        9 MOVE                             R10 R3
       10 NAMECALL                         R5 R5 K1 ["GenerateMeshAsync"]
       12 CALL                             R5 5 -1
       13 RETURN                           R5 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedMeshAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 NEWTABLE                         R2 64 0
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["EventLogger"]
       10 DUPCLOSURE                       R3 K2 [PROTO_0]
       11 SETTABLEKS                       R3 R2 K3 ["isDevFrameworkAvailable"]
       13 DUPCLOSURE                       R3 K4 [PROTO_1]
       14 SETTABLEKS                       R3 R2 K5 ["isRobloxScriptSecurity"]
       16 DUPCLOSURE                       R3 K6 [PROTO_2]
       17 SETTABLEKS                       R3 R2 K7 ["getEngineFeature"]
       19 GETUPVAL                         R3 2
       20 LOADK                            R4 K8 ["getNetworking"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["getNetworking"]
       24 DUPCLOSURE                       R3 K9 [PROTO_3]
       25 SETTABLEKS                       R3 R2 K10 ["getSystemPrompt"]
       27 DUPCLOSURE                       R3 K11 [PROTO_4]
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R3 R2 K12 ["getUserId"]
       31 GETUPVAL                         R3 2
       32 LOADK                            R4 K13 ["copyToClipboard"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K13 ["copyToClipboard"]
       36 DUPCLOSURE                       R3 K14 [PROTO_5]
       37 SETTABLEKS                       R3 R2 K15 ["getClassIcon"]
       39 GETTABLEKS                       R3 R0 K16 ["startRecording"]
       41 SETTABLEKS                       R3 R2 K16 ["startRecording"]
       43 GETTABLEKS                       R3 R0 K17 ["endRecording"]
       45 SETTABLEKS                       R3 R2 K17 ["endRecording"]
       47 DUPCLOSURE                       R3 K18 [PROTO_6]
       48 SETTABLEKS                       R3 R2 K19 ["getScriptSource"]
       50 DUPTABLE                         R3 K23 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       51 DUPCLOSURE                       R4 K24 [PROTO_7]
       52 CAPTURE                          UPVAL U4
       53 SETTABLEKS                       R4 R3 K20 ["createWebStreamClient"]
       55 DUPCLOSURE                       R4 K25 [PROTO_8]
       56 CAPTURE                          UPVAL U4
       57 SETTABLEKS                       R4 R3 K21 ["requestAsync"]
       59 GETUPVAL                         R4 2
       60 LOADK                            R5 K22 ["openUrl"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K22 ["openUrl"]
       64 SETTABLEKS                       R3 R2 K26 ["http"]
       66 DUPTABLE                         R3 K29 [{"encodeAsync", "decodeAsync"}]
       67 DUPCLOSURE                       R4 K30 [PROTO_9]
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R4 R3 K27 ["encodeAsync"]
       71 DUPCLOSURE                       R4 K31 [PROTO_10]
       72 CAPTURE                          UPVAL U4
       73 SETTABLEKS                       R4 R3 K28 ["decodeAsync"]
       75 SETTABLEKS                       R3 R2 K32 ["json"]
       77 DUPTABLE                         R3 K35 [{"get", "set"}]
       78 DUPCLOSURE                       R4 K36 [PROTO_11]
       79 SETTABLEKS                       R4 R3 K33 ["get"]
       81 DUPCLOSURE                       R4 K37 [PROTO_12]
       82 SETTABLEKS                       R4 R3 K34 ["set"]
       84 SETTABLEKS                       R3 R2 K38 ["selection"]
       86 DUPTABLE                         R3 K46 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "screenCapture", "uploadImage"}]
       87 DUPTABLE                         R4 K49 [{"loadCode", "stopCode"}]
       88 GETUPVAL                         R5 2
       89 LOADK                            R6 K47 ["loadCode"]
       90 CALL                             R5 1 1
       91 SETTABLEKS                       R5 R4 K47 ["loadCode"]
       93 GETUPVAL                         R5 2
       94 LOADK                            R6 K48 ["stopCode"]
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R4 K48 ["stopCode"]
       98 SETTABLEKS                       R4 R3 K39 ["executeLuau"]
      100 DUPTABLE                         R4 K52 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      101 DUPCLOSURE                       R5 K53 [PROTO_13]
      102 SETTABLEKS                       R5 R4 K50 ["updateScriptSourceAsync"]
      104 DUPCLOSURE                       R5 K54 [PROTO_14]
      105 SETTABLEKS                       R5 R4 K51 ["applyScriptSourceDirectly"]
      107 SETTABLEKS                       R4 R3 K40 ["multiEdit"]
      109 DUPTABLE                         R4 K57 [{"getFreeModelsAsync", "loadAssetAsync"}]
      110 NEWCLOSURE                       R5 P15
      111 CAPTURE                          REF R1
      112 CAPTURE                          UPVAL U5
      113 SETTABLEKS                       R5 R4 K55 ["getFreeModelsAsync"]
      115 GETUPVAL                         R6 6
      116 GETTABLEKS                       R5 R6 K58 ["getStandardHandler"]
      118 GETUPVAL                         R6 7
      119 CALL                             R5 1 1
      120 SETTABLEKS                       R5 R4 K56 ["loadAssetAsync"]
      122 SETTABLEKS                       R4 R3 K41 ["marketplaceInsertion"]
      124 DUPTABLE                         R4 K61 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      125 GETUPVAL                         R5 2
      126 LOADK                            R6 K59 ["generateMaterialVariantsAsync"]
      127 CALL                             R5 1 1
      128 SETTABLEKS                       R5 R4 K59 ["generateMaterialVariantsAsync"]
      130 GETUPVAL                         R5 2
      131 LOADK                            R6 K60 ["uploadMaterialsAsync"]
      132 CALL                             R5 1 1
      133 SETTABLEKS                       R5 R4 K60 ["uploadMaterialsAsync"]
      135 SETTABLEKS                       R4 R3 K42 ["materialGen"]
      137 DUPTABLE                         R4 K67 [{"createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync", "telemetry"}]
      138 DUPCLOSURE                       R5 K68 [PROTO_16]
      139 CAPTURE                          UPVAL U7
      140 SETTABLEKS                       R5 R4 K62 ["createAssetAsync"]
      142 DUPCLOSURE                       R5 K69 [PROTO_17]
      143 CAPTURE                          UPVAL U7
      144 SETTABLEKS                       R5 R4 K63 ["createMeshPartAsync"]
      146 DUPCLOSURE                       R5 K70 [PROTO_18]
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          UPVAL U8
      149 SETTABLEKS                       R5 R4 K64 ["generateMeshAsync"]
      151 DUPCLOSURE                       R5 K71 [PROTO_19]
      152 CAPTURE                          UPVAL U8
      153 SETTABLEKS                       R5 R4 K65 ["loadGeneratedMeshAsync"]
      155 DUPTABLE                         R5 K76 [{"sendMeshGenActivatedTelemetry", "sendMeshGenCompletedTelemetry", "sendMeshGenPublishedAssetsTelemetry", "sendMeshGenMeshInsertedTelemetry"}]
      156 DUPCLOSURE                       R6 K77 [PROTO_20]
      157 SETTABLEKS                       R6 R5 K72 ["sendMeshGenActivatedTelemetry"]
      159 DUPCLOSURE                       R6 K78 [PROTO_21]
      160 SETTABLEKS                       R6 R5 K73 ["sendMeshGenCompletedTelemetry"]
      162 DUPCLOSURE                       R6 K79 [PROTO_22]
      163 SETTABLEKS                       R6 R5 K74 ["sendMeshGenPublishedAssetsTelemetry"]
      165 DUPCLOSURE                       R6 K80 [PROTO_23]
      166 SETTABLEKS                       R6 R5 K75 ["sendMeshGenMeshInsertedTelemetry"]
      168 SETTABLEKS                       R5 R4 K66 ["telemetry"]
      170 SETTABLEKS                       R4 R3 K43 ["meshGen"]
      172 DUPTABLE                         R4 K83 [{"getImageDataBase64Async", "captureScreenshot"}]
      173 GETUPVAL                         R5 2
      174 LOADK                            R6 K81 ["getImageDataBase64Async"]
      175 CALL                             R5 1 1
      176 SETTABLEKS                       R5 R4 K81 ["getImageDataBase64Async"]
      178 DUPCLOSURE                       R5 K84 [PROTO_24]
      179 CAPTURE                          UPVAL U9
      180 SETTABLEKS                       R5 R4 K82 ["captureScreenshot"]
      182 SETTABLEKS                       R4 R3 K44 ["screenCapture"]
      184 DUPTABLE                         R4 K88 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      185 GETUPVAL                         R5 2
      186 LOADK                            R6 K85 ["loadImageAsync"]
      187 CALL                             R5 1 1
      188 SETTABLEKS                       R5 R4 K85 ["loadImageAsync"]
      190 GETUPVAL                         R5 2
      191 LOADK                            R6 K86 ["publishAssetAsync"]
      192 CALL                             R5 1 1
      193 SETTABLEKS                       R5 R4 K86 ["publishAssetAsync"]
      195 GETUPVAL                         R5 2
      196 LOADK                            R6 K87 ["searchAssetAsync"]
      197 CALL                             R5 1 1
      198 SETTABLEKS                       R5 R4 K87 ["searchAssetAsync"]
      200 SETTABLEKS                       R4 R3 K45 ["uploadImage"]
      202 SETTABLEKS                       R3 R2 K89 ["tools"]
      204 GETUPVAL                         R3 2
      205 LOADK                            R4 K90 ["convertImageDataToTempIdAsync"]
      206 CALL                             R3 1 1
      207 SETTABLEKS                       R3 R2 K90 ["convertImageDataToTempIdAsync"]
      209 GETUPVAL                         R3 2
      210 LOADK                            R4 K91 ["releaseTempIdAsync"]
      211 CALL                             R3 1 1
      212 SETTABLEKS                       R3 R2 K91 ["releaseTempIdAsync"]
      214 GETUPVAL                         R3 2
      215 LOADK                            R4 K92 ["getSettingsAsync"]
      216 CALL                             R3 1 1
      217 SETTABLEKS                       R3 R2 K92 ["getSettingsAsync"]
      219 GETUPVAL                         R3 2
      220 LOADK                            R4 K93 ["setSettingsAsync"]
      221 CALL                             R3 1 1
      222 SETTABLEKS                       R3 R2 K93 ["setSettingsAsync"]
      224 GETUPVAL                         R3 2
      225 LOADK                            R4 K94 ["getUserSettingsAsync"]
      226 CALL                             R3 1 1
      227 SETTABLEKS                       R3 R2 K94 ["getUserSettingsAsync"]
      229 GETUPVAL                         R3 2
      230 LOADK                            R4 K95 ["setUserSettingsAsync"]
      231 CALL                             R3 1 1
      232 SETTABLEKS                       R3 R2 K95 ["setUserSettingsAsync"]
      234 GETUPVAL                         R3 2
      235 LOADK                            R4 K96 ["getSecureSettingsAsync"]
      236 CALL                             R3 1 1
      237 SETTABLEKS                       R3 R2 K96 ["getSecureSettingsAsync"]
      239 GETUPVAL                         R3 2
      240 LOADK                            R4 K97 ["setSecureSettingsAsync"]
      241 CALL                             R3 1 1
      242 SETTABLEKS                       R3 R2 K97 ["setSecureSettingsAsync"]
      244 GETUPVAL                         R3 2
      245 LOADK                            R4 K98 ["base64EncodeAsync"]
      246 CALL                             R3 1 1
      247 SETTABLEKS                       R3 R2 K98 ["base64EncodeAsync"]
      249 GETUPVAL                         R3 2
      250 LOADK                            R4 K99 ["generatePKCEAsync"]
      251 CALL                             R3 1 1
      252 SETTABLEKS                       R3 R2 K99 ["generatePKCEAsync"]
      254 GETUPVAL                         R3 2
      255 LOADK                            R4 K100 ["startMCPAuthAsync"]
      256 CALL                             R3 1 1
      257 SETTABLEKS                       R3 R2 K100 ["startMCPAuthAsync"]
      259 GETUPVAL                         R3 2
      260 LOADK                            R4 K101 ["setupMCPServerAsync"]
      261 CALL                             R3 1 1
      262 SETTABLEKS                       R3 R2 K101 ["setupMCPServerAsync"]
      264 GETUPVAL                         R3 2
      265 LOADK                            R4 K102 ["startStopPlayAsync"]
      266 CALL                             R3 1 1
      267 SETTABLEKS                       R3 R2 K102 ["startStopPlayAsync"]
      269 GETUPVAL                         R3 2
      270 LOADK                            R4 K103 ["subscribeOutput"]
      271 CALL                             R3 1 1
      272 SETTABLEKS                       R3 R2 K103 ["subscribeOutput"]
      274 GETUPVAL                         R3 2
      275 LOADK                            R4 K104 ["subscribeGameLoaded"]
      276 CALL                             R3 1 1
      277 SETTABLEKS                       R3 R2 K104 ["subscribeGameLoaded"]
      279 GETUPVAL                         R3 2
      280 LOADK                            R4 K105 ["subscribeGameStopped"]
      281 CALL                             R3 1 1
      282 SETTABLEKS                       R3 R2 K105 ["subscribeGameStopped"]
      284 GETUPVAL                         R3 2
      285 LOADK                            R4 K106 ["openFileDialogAsync"]
      286 CALL                             R3 1 1
      287 SETTABLEKS                       R3 R2 K106 ["openFileDialogAsync"]
      289 GETUPVAL                         R3 2
      290 LOADK                            R4 K107 ["importFileBinaryAsync"]
      291 CALL                             R3 1 1
      292 SETTABLEKS                       R3 R2 K107 ["importFileBinaryAsync"]
      294 GETUPVAL                         R4 10
      295 CALL                             R4 0 1
      296 JUMPIFNOT                        R4 ; [+5]
      297 GETUPVAL                         R4 11
      298 GETTABLEKS                       R3 R4 K108 ["new"]
      300 CALL                             R3 0 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R3
      303 SETTABLEKS                       R3 R2 K109 ["conversationPersistence"]
      305 MOVE                             R1 R2
      306 CLOSEUPVALS                      R1
      307 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_27:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CaptureService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["GenerationService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["HttpService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["InsertService"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K5 [game]
       39 LOADK                            R8 K12 ["Players"]
       40 NAMECALL                         R6 R6 K7 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K14 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Util"]
       47 GETTABLEKS                       R8 R9 K16 ["ConversationPersistence"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K14 [require]
       52 GETTABLEKS                       R10 R0 K17 ["Parent"]
       54 GETTABLEKS                       R9 R10 K18 ["DMNetworking"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K14 [require]
       59 GETIMPORT                        R11 K1 [script]
       61 GETTABLEKS                       R10 R11 K19 ["EventLogger"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K14 [require]
       66 GETTABLEKS                       R12 R0 K20 ["Guest"]
       68 GETTABLEKS                       R11 R12 K21 ["LoadAssetHandlers"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K14 [require]
       73 GETTABLEKS                       R13 R0 K17 ["Parent"]
       75 GETTABLEKS                       R12 R13 K22 ["ReactUtils"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K14 [require]
       80 GETTABLEKS                       R14 R0 K20 ["Guest"]
       82 GETTABLEKS                       R13 R14 K23 ["RecordingHandlers"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K14 [require]
       87 GETTABLEKS                       R15 R0 K24 ["Flags"]
       89 GETTABLEKS                       R14 R15 K25 ["FFlagAssistantPersistConversations"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R11 K26 ["createUnimplemented"]
       94 DUPCLOSURE                       R15 K27 [PROTO_25]
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R7
      107 MOVE                             R16 R15
      108 CALL                             R16 0 1
      109 DUPTABLE                         R17 K31 [{"new", "get", "set"}]
      110 SETTABLEKS                       R15 R17 K28 ["new"]
      112 NEWCLOSURE                       R18 P1
      113 CAPTURE                          REF R16
      114 SETTABLEKS                       R18 R17 K29 ["get"]
      116 NEWCLOSURE                       R18 P2
      117 CAPTURE                          REF R16
      118 SETTABLEKS                       R18 R17 K30 ["set"]
      120 CLOSEUPVALS                      R16
      121 RETURN                           R17 1
