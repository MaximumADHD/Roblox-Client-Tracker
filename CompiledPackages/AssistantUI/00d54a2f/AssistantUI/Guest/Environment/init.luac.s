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
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["CreateAssetAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateMeshPartAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedMeshAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
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
      137 DUPTABLE                         R4 K67 [{"generateModelAsync", "createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync"}]
      138 GETUPVAL                         R6 8
      139 CALL                             R6 0 1
      140 JUMPIFNOT                        R6 ; [+3]
      141 DUPCLOSURE                       R5 K68 [PROTO_16]
      142 CAPTURE                          UPVAL U9
      143 JUMP                             ; [+1]
      144 LOADNIL                          R5
      145 SETTABLEKS                       R5 R4 K62 ["generateModelAsync"]
      147 DUPCLOSURE                       R5 K69 [PROTO_17]
      148 CAPTURE                          UPVAL U7
      149 SETTABLEKS                       R5 R4 K63 ["createAssetAsync"]
      151 DUPCLOSURE                       R5 K70 [PROTO_18]
      152 CAPTURE                          UPVAL U7
      153 SETTABLEKS                       R5 R4 K64 ["createMeshPartAsync"]
      155 GETUPVAL                         R6 8
      156 CALL                             R6 0 1
      157 JUMPIFNOT                        R6 ; [+2]
      158 LOADNIL                          R5
      159 JUMP                             ; [+3]
      160 DUPCLOSURE                       R5 K71 [PROTO_19]
      161 CAPTURE                          UPVAL U3
      162 CAPTURE                          UPVAL U9
      163 SETTABLEKS                       R5 R4 K65 ["generateMeshAsync"]
      165 GETUPVAL                         R6 8
      166 CALL                             R6 0 1
      167 JUMPIFNOT                        R6 ; [+2]
      168 LOADNIL                          R5
      169 JUMP                             ; [+2]
      170 DUPCLOSURE                       R5 K72 [PROTO_20]
      171 CAPTURE                          UPVAL U9
      172 SETTABLEKS                       R5 R4 K66 ["loadGeneratedMeshAsync"]
      174 SETTABLEKS                       R4 R3 K43 ["meshGen"]
      176 DUPTABLE                         R4 K75 [{"getImageDataBase64Async", "captureScreenshot"}]
      177 GETUPVAL                         R5 2
      178 LOADK                            R6 K73 ["getImageDataBase64Async"]
      179 CALL                             R5 1 1
      180 SETTABLEKS                       R5 R4 K73 ["getImageDataBase64Async"]
      182 DUPCLOSURE                       R5 K76 [PROTO_21]
      183 CAPTURE                          UPVAL U10
      184 SETTABLEKS                       R5 R4 K74 ["captureScreenshot"]
      186 SETTABLEKS                       R4 R3 K44 ["screenCapture"]
      188 DUPTABLE                         R4 K80 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      189 GETUPVAL                         R5 2
      190 LOADK                            R6 K77 ["loadImageAsync"]
      191 CALL                             R5 1 1
      192 SETTABLEKS                       R5 R4 K77 ["loadImageAsync"]
      194 GETUPVAL                         R5 2
      195 LOADK                            R6 K78 ["publishAssetAsync"]
      196 CALL                             R5 1 1
      197 SETTABLEKS                       R5 R4 K78 ["publishAssetAsync"]
      199 GETUPVAL                         R5 2
      200 LOADK                            R6 K79 ["searchAssetAsync"]
      201 CALL                             R5 1 1
      202 SETTABLEKS                       R5 R4 K79 ["searchAssetAsync"]
      204 SETTABLEKS                       R4 R3 K45 ["uploadImage"]
      206 SETTABLEKS                       R3 R2 K81 ["tools"]
      208 GETUPVAL                         R3 2
      209 LOADK                            R4 K82 ["convertImageDataToTempIdAsync"]
      210 CALL                             R3 1 1
      211 SETTABLEKS                       R3 R2 K82 ["convertImageDataToTempIdAsync"]
      213 GETUPVAL                         R3 2
      214 LOADK                            R4 K83 ["releaseTempIdAsync"]
      215 CALL                             R3 1 1
      216 SETTABLEKS                       R3 R2 K83 ["releaseTempIdAsync"]
      218 GETUPVAL                         R3 2
      219 LOADK                            R4 K84 ["getSettingsAsync"]
      220 CALL                             R3 1 1
      221 SETTABLEKS                       R3 R2 K84 ["getSettingsAsync"]
      223 GETUPVAL                         R3 2
      224 LOADK                            R4 K85 ["setSettingsAsync"]
      225 CALL                             R3 1 1
      226 SETTABLEKS                       R3 R2 K85 ["setSettingsAsync"]
      228 GETUPVAL                         R3 2
      229 LOADK                            R4 K86 ["getUserSettingsAsync"]
      230 CALL                             R3 1 1
      231 SETTABLEKS                       R3 R2 K86 ["getUserSettingsAsync"]
      233 GETUPVAL                         R3 2
      234 LOADK                            R4 K87 ["setUserSettingsAsync"]
      235 CALL                             R3 1 1
      236 SETTABLEKS                       R3 R2 K87 ["setUserSettingsAsync"]
      238 GETUPVAL                         R3 2
      239 LOADK                            R4 K88 ["getSecureSettingsAsync"]
      240 CALL                             R3 1 1
      241 SETTABLEKS                       R3 R2 K88 ["getSecureSettingsAsync"]
      243 GETUPVAL                         R3 2
      244 LOADK                            R4 K89 ["setSecureSettingsAsync"]
      245 CALL                             R3 1 1
      246 SETTABLEKS                       R3 R2 K89 ["setSecureSettingsAsync"]
      248 GETUPVAL                         R3 2
      249 LOADK                            R4 K90 ["base64EncodeAsync"]
      250 CALL                             R3 1 1
      251 SETTABLEKS                       R3 R2 K90 ["base64EncodeAsync"]
      253 GETUPVAL                         R3 2
      254 LOADK                            R4 K91 ["generatePKCEAsync"]
      255 CALL                             R3 1 1
      256 SETTABLEKS                       R3 R2 K91 ["generatePKCEAsync"]
      258 GETUPVAL                         R3 2
      259 LOADK                            R4 K92 ["startMCPAuthAsync"]
      260 CALL                             R3 1 1
      261 SETTABLEKS                       R3 R2 K92 ["startMCPAuthAsync"]
      263 GETUPVAL                         R3 2
      264 LOADK                            R4 K93 ["setupMCPServerAsync"]
      265 CALL                             R3 1 1
      266 SETTABLEKS                       R3 R2 K93 ["setupMCPServerAsync"]
      268 GETUPVAL                         R3 2
      269 LOADK                            R4 K94 ["startStopPlayAsync"]
      270 CALL                             R3 1 1
      271 SETTABLEKS                       R3 R2 K94 ["startStopPlayAsync"]
      273 GETUPVAL                         R3 2
      274 LOADK                            R4 K95 ["subscribeOutput"]
      275 CALL                             R3 1 1
      276 SETTABLEKS                       R3 R2 K95 ["subscribeOutput"]
      278 GETUPVAL                         R3 2
      279 LOADK                            R4 K96 ["subscribeGameLoaded"]
      280 CALL                             R3 1 1
      281 SETTABLEKS                       R3 R2 K96 ["subscribeGameLoaded"]
      283 GETUPVAL                         R3 2
      284 LOADK                            R4 K97 ["subscribeGameStopped"]
      285 CALL                             R3 1 1
      286 SETTABLEKS                       R3 R2 K97 ["subscribeGameStopped"]
      288 GETUPVAL                         R3 2
      289 LOADK                            R4 K98 ["openFileDialogAsync"]
      290 CALL                             R3 1 1
      291 SETTABLEKS                       R3 R2 K98 ["openFileDialogAsync"]
      293 GETUPVAL                         R3 2
      294 LOADK                            R4 K99 ["importFileBinaryAsync"]
      295 CALL                             R3 1 1
      296 SETTABLEKS                       R3 R2 K99 ["importFileBinaryAsync"]
      298 GETUPVAL                         R4 11
      299 CALL                             R4 0 1
      300 JUMPIFNOT                        R4 ; [+5]
      301 GETUPVAL                         R4 12
      302 GETTABLEKS                       R3 R4 K100 ["new"]
      304 CALL                             R3 0 1
      305 JUMP                             ; [+1]
      306 LOADNIL                          R3
      307 SETTABLEKS                       R3 R2 K101 ["conversationPersistence"]
      309 MOVE                             R1 R2
      310 CLOSEUPVALS                      R1
      311 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_24:
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
       92 GETIMPORT                        R14 K14 [require]
       94 GETTABLEKS                       R16 R0 K24 ["Flags"]
       96 GETTABLEKS                       R15 R16 K26 ["FFlagAssistantUseNewMeshGenTool"]
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R15 R11 K27 ["createUnimplemented"]
      101 DUPCLOSURE                       R16 K28 [PROTO_22]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 MOVE                             R17 R16
      116 CALL                             R17 0 1
      117 DUPTABLE                         R18 K32 [{"new", "get", "set"}]
      118 SETTABLEKS                       R16 R18 K29 ["new"]
      120 NEWCLOSURE                       R19 P1
      121 CAPTURE                          REF R17
      122 SETTABLEKS                       R19 R18 K30 ["get"]
      124 NEWCLOSURE                       R19 P2
      125 CAPTURE                          REF R17
      126 SETTABLEKS                       R19 R18 K31 ["set"]
      128 CLOSEUPVALS                      R17
      129 RETURN                           R18 1
