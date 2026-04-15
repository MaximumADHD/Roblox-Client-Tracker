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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Features"]
        5 GETTABLEKS                       R3 R4 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R2 R3 K4 ["PrimitiveGenTool"]
        9 GETTABLEKS                       R1 R2 K5 ["PrimitiveGenMockData"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["MockFerrisWheelResult"]
       14 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 NEWTABLE                         R2 64 0
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["EventLogger"]
       10 LOADK                            R3 K2 [""]
       11 SETTABLEKS                       R3 R2 K3 ["apisUrl"]
       13 DUPCLOSURE                       R3 K4 [PROTO_0]
       14 SETTABLEKS                       R3 R2 K5 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K6 [PROTO_1]
       17 SETTABLEKS                       R3 R2 K7 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K8 [PROTO_2]
       20 SETTABLEKS                       R3 R2 K9 ["getEngineFeature"]
       22 GETUPVAL                         R3 2
       23 LOADK                            R4 K10 ["getNetworking"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K10 ["getNetworking"]
       27 DUPCLOSURE                       R3 K11 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K12 ["getSystemPrompt"]
       30 DUPCLOSURE                       R3 K13 [PROTO_4]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R2 K14 ["getUserId"]
       34 GETUPVAL                         R3 2
       35 LOADK                            R4 K15 ["copyToClipboard"]
       36 CALL                             R3 1 1
       37 SETTABLEKS                       R3 R2 K15 ["copyToClipboard"]
       39 DUPCLOSURE                       R3 K16 [PROTO_5]
       40 SETTABLEKS                       R3 R2 K17 ["getClassIcon"]
       42 GETTABLEKS                       R3 R0 K18 ["startRecording"]
       44 SETTABLEKS                       R3 R2 K18 ["startRecording"]
       46 GETTABLEKS                       R3 R0 K19 ["endRecording"]
       48 SETTABLEKS                       R3 R2 K19 ["endRecording"]
       50 DUPCLOSURE                       R3 K20 [PROTO_6]
       51 SETTABLEKS                       R3 R2 K21 ["getScriptSource"]
       53 GETUPVAL                         R3 2
       54 LOADK                            R4 K22 ["openScriptAsync"]
       55 CALL                             R3 1 1
       56 SETTABLEKS                       R3 R2 K22 ["openScriptAsync"]
       58 DUPTABLE                         R3 K26 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       59 DUPCLOSURE                       R4 K27 [PROTO_7]
       60 CAPTURE                          UPVAL U4
       61 SETTABLEKS                       R4 R3 K23 ["createWebStreamClient"]
       63 DUPCLOSURE                       R4 K28 [PROTO_8]
       64 CAPTURE                          UPVAL U4
       65 SETTABLEKS                       R4 R3 K24 ["requestAsync"]
       67 GETUPVAL                         R4 2
       68 LOADK                            R5 K25 ["openUrl"]
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R3 K25 ["openUrl"]
       72 SETTABLEKS                       R3 R2 K29 ["http"]
       74 DUPTABLE                         R3 K32 [{"encodeAsync", "decodeAsync"}]
       75 DUPCLOSURE                       R4 K33 [PROTO_9]
       76 CAPTURE                          UPVAL U4
       77 SETTABLEKS                       R4 R3 K30 ["encodeAsync"]
       79 DUPCLOSURE                       R4 K34 [PROTO_10]
       80 CAPTURE                          UPVAL U4
       81 SETTABLEKS                       R4 R3 K31 ["decodeAsync"]
       83 SETTABLEKS                       R3 R2 K35 ["json"]
       85 DUPTABLE                         R3 K38 [{"get", "set"}]
       86 DUPCLOSURE                       R4 K39 [PROTO_11]
       87 SETTABLEKS                       R4 R3 K36 ["get"]
       89 DUPCLOSURE                       R4 K40 [PROTO_12]
       90 SETTABLEKS                       R4 R3 K37 ["set"]
       92 SETTABLEKS                       R3 R2 K41 ["selection"]
       94 DUPTABLE                         R3 K45 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
       95 GETUPVAL                         R4 2
       96 LOADK                            R5 K42 ["getUniqueId"]
       97 CALL                             R4 1 1
       98 SETTABLEKS                       R4 R3 K42 ["getUniqueId"]
      100 GETUPVAL                         R4 2
      101 LOADK                            R5 K43 ["getInstanceFromUniqueId"]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R3 K43 ["getInstanceFromUniqueId"]
      105 GETUPVAL                         R4 2
      106 LOADK                            R5 K44 ["pickInstanceAsync"]
      107 CALL                             R4 1 1
      108 SETTABLEKS                       R4 R3 K44 ["pickInstanceAsync"]
      110 SETTABLEKS                       R3 R2 K46 ["instances"]
      112 DUPTABLE                         R3 K54 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "screenCapture", "uploadImage"}]
      113 DUPTABLE                         R4 K57 [{"loadCode", "stopCode"}]
      114 GETUPVAL                         R5 2
      115 LOADK                            R6 K55 ["loadCode"]
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R4 K55 ["loadCode"]
      119 GETUPVAL                         R5 2
      120 LOADK                            R6 K56 ["stopCode"]
      121 CALL                             R5 1 1
      122 SETTABLEKS                       R5 R4 K56 ["stopCode"]
      124 SETTABLEKS                       R4 R3 K47 ["executeLuau"]
      126 DUPTABLE                         R4 K60 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      127 DUPCLOSURE                       R5 K61 [PROTO_13]
      128 SETTABLEKS                       R5 R4 K58 ["updateScriptSourceAsync"]
      130 DUPCLOSURE                       R5 K62 [PROTO_14]
      131 SETTABLEKS                       R5 R4 K59 ["applyScriptSourceDirectly"]
      133 SETTABLEKS                       R4 R3 K48 ["multiEdit"]
      135 DUPTABLE                         R4 K65 [{"getFreeModelsAsync", "loadAssetAsync"}]
      136 NEWCLOSURE                       R5 P15
      137 CAPTURE                          REF R1
      138 CAPTURE                          UPVAL U5
      139 SETTABLEKS                       R5 R4 K63 ["getFreeModelsAsync"]
      141 GETUPVAL                         R6 6
      142 GETTABLEKS                       R5 R6 K66 ["getStandardHandler"]
      144 GETUPVAL                         R6 7
      145 CALL                             R5 1 1
      146 SETTABLEKS                       R5 R4 K64 ["loadAssetAsync"]
      148 SETTABLEKS                       R4 R3 K49 ["marketplaceInsertion"]
      150 DUPTABLE                         R4 K69 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      151 GETUPVAL                         R5 2
      152 LOADK                            R6 K67 ["generateMaterialVariantsAsync"]
      153 CALL                             R5 1 1
      154 SETTABLEKS                       R5 R4 K67 ["generateMaterialVariantsAsync"]
      156 GETUPVAL                         R5 2
      157 LOADK                            R6 K68 ["uploadMaterialsAsync"]
      158 CALL                             R5 1 1
      159 SETTABLEKS                       R5 R4 K68 ["uploadMaterialsAsync"]
      161 SETTABLEKS                       R4 R3 K50 ["materialGen"]
      163 GETUPVAL                         R5 8
      164 CALL                             R5 0 1
      165 JUMPIFNOT                        R5 ; [+18]
      166 DUPTABLE                         R4 K72 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync"}]
      167 DUPCLOSURE                       R5 K73 [PROTO_16]
      168 CAPTURE                          UPVAL U9
      169 SETTABLEKS                       R5 R4 K70 ["generateModelAsync"]
      171 GETUPVAL                         R5 2
      172 LOADK                            R6 K71 ["publishModelAsync"]
      173 CALL                             R5 1 1
      174 SETTABLEKS                       R5 R4 K71 ["publishModelAsync"]
      176 GETUPVAL                         R6 6
      177 GETTABLEKS                       R5 R6 K66 ["getStandardHandler"]
      179 GETUPVAL                         R6 7
      180 CALL                             R5 1 1
      181 SETTABLEKS                       R5 R4 K64 ["loadAssetAsync"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R4
      185 SETTABLEKS                       R4 R3 K51 ["meshGen"]
      187 DUPTABLE                         R4 K76 [{"getImageDataBase64Async", "captureScreenshot"}]
      188 GETUPVAL                         R5 2
      189 LOADK                            R6 K74 ["getImageDataBase64Async"]
      190 CALL                             R5 1 1
      191 SETTABLEKS                       R5 R4 K74 ["getImageDataBase64Async"]
      193 DUPCLOSURE                       R5 K77 [PROTO_17]
      194 CAPTURE                          UPVAL U10
      195 SETTABLEKS                       R5 R4 K75 ["captureScreenshot"]
      197 SETTABLEKS                       R4 R3 K52 ["screenCapture"]
      199 DUPTABLE                         R4 K81 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      200 GETUPVAL                         R5 2
      201 LOADK                            R6 K78 ["loadImageAsync"]
      202 CALL                             R5 1 1
      203 SETTABLEKS                       R5 R4 K78 ["loadImageAsync"]
      205 GETUPVAL                         R5 2
      206 LOADK                            R6 K79 ["publishAssetAsync"]
      207 CALL                             R5 1 1
      208 SETTABLEKS                       R5 R4 K79 ["publishAssetAsync"]
      210 GETUPVAL                         R5 2
      211 LOADK                            R6 K80 ["searchAssetAsync"]
      212 CALL                             R5 1 1
      213 SETTABLEKS                       R5 R4 K80 ["searchAssetAsync"]
      215 SETTABLEKS                       R4 R3 K53 ["uploadImage"]
      217 SETTABLEKS                       R3 R2 K82 ["tools"]
      219 GETUPVAL                         R3 2
      220 LOADK                            R4 K83 ["convertImageDataToTempIdAsync"]
      221 CALL                             R3 1 1
      222 SETTABLEKS                       R3 R2 K83 ["convertImageDataToTempIdAsync"]
      224 GETUPVAL                         R3 2
      225 LOADK                            R4 K84 ["releaseTempIdAsync"]
      226 CALL                             R3 1 1
      227 SETTABLEKS                       R3 R2 K84 ["releaseTempIdAsync"]
      229 GETUPVAL                         R3 2
      230 LOADK                            R4 K85 ["getSettingsAsync"]
      231 CALL                             R3 1 1
      232 SETTABLEKS                       R3 R2 K85 ["getSettingsAsync"]
      234 GETUPVAL                         R3 2
      235 LOADK                            R4 K86 ["setSettingsAsync"]
      236 CALL                             R3 1 1
      237 SETTABLEKS                       R3 R2 K86 ["setSettingsAsync"]
      239 GETUPVAL                         R3 2
      240 LOADK                            R4 K87 ["getUserSettingsAsync"]
      241 CALL                             R3 1 1
      242 SETTABLEKS                       R3 R2 K87 ["getUserSettingsAsync"]
      244 GETUPVAL                         R3 2
      245 LOADK                            R4 K88 ["setUserSettingsAsync"]
      246 CALL                             R3 1 1
      247 SETTABLEKS                       R3 R2 K88 ["setUserSettingsAsync"]
      249 GETUPVAL                         R3 2
      250 LOADK                            R4 K89 ["getHistoryAsync"]
      251 CALL                             R3 1 1
      252 SETTABLEKS                       R3 R2 K89 ["getHistoryAsync"]
      254 GETUPVAL                         R3 2
      255 LOADK                            R4 K90 ["setHistoryAsync"]
      256 CALL                             R3 1 1
      257 SETTABLEKS                       R3 R2 K90 ["setHistoryAsync"]
      259 GETUPVAL                         R3 2
      260 LOADK                            R4 K91 ["getSecureSettingsAsync"]
      261 CALL                             R3 1 1
      262 SETTABLEKS                       R3 R2 K91 ["getSecureSettingsAsync"]
      264 GETUPVAL                         R3 2
      265 LOADK                            R4 K92 ["setSecureSettingsAsync"]
      266 CALL                             R3 1 1
      267 SETTABLEKS                       R3 R2 K92 ["setSecureSettingsAsync"]
      269 GETUPVAL                         R3 2
      270 LOADK                            R4 K93 ["base64EncodeAsync"]
      271 CALL                             R3 1 1
      272 SETTABLEKS                       R3 R2 K93 ["base64EncodeAsync"]
      274 GETUPVAL                         R3 2
      275 LOADK                            R4 K94 ["generatePKCEAsync"]
      276 CALL                             R3 1 1
      277 SETTABLEKS                       R3 R2 K94 ["generatePKCEAsync"]
      279 GETUPVAL                         R3 2
      280 LOADK                            R4 K95 ["startMCPAuthAsync"]
      281 CALL                             R3 1 1
      282 SETTABLEKS                       R3 R2 K95 ["startMCPAuthAsync"]
      284 GETUPVAL                         R3 2
      285 LOADK                            R4 K96 ["setupMCPServerAsync"]
      286 CALL                             R3 1 1
      287 SETTABLEKS                       R3 R2 K96 ["setupMCPServerAsync"]
      289 GETUPVAL                         R3 2
      290 LOADK                            R4 K97 ["startStopPlayAsync"]
      291 CALL                             R3 1 1
      292 SETTABLEKS                       R3 R2 K97 ["startStopPlayAsync"]
      294 GETUPVAL                         R3 2
      295 LOADK                            R4 K98 ["subscribeOutput"]
      296 CALL                             R3 1 1
      297 SETTABLEKS                       R3 R2 K98 ["subscribeOutput"]
      299 GETUPVAL                         R3 2
      300 LOADK                            R4 K99 ["subscribeGameLoaded"]
      301 CALL                             R3 1 1
      302 SETTABLEKS                       R3 R2 K99 ["subscribeGameLoaded"]
      304 GETUPVAL                         R3 2
      305 LOADK                            R4 K100 ["subscribeGameStopped"]
      306 CALL                             R3 1 1
      307 SETTABLEKS                       R3 R2 K100 ["subscribeGameStopped"]
      309 GETUPVAL                         R3 2
      310 LOADK                            R4 K101 ["openFileDialogAsync"]
      311 CALL                             R3 1 1
      312 SETTABLEKS                       R3 R2 K101 ["openFileDialogAsync"]
      314 GETUPVAL                         R3 2
      315 LOADK                            R4 K102 ["importFileBinaryAsync"]
      316 CALL                             R3 1 1
      317 SETTABLEKS                       R3 R2 K102 ["importFileBinaryAsync"]
      319 GETUPVAL                         R3 2
      320 LOADK                            R4 K103 ["getStudioPlayState"]
      321 CALL                             R3 1 1
      322 SETTABLEKS                       R3 R2 K103 ["getStudioPlayState"]
      324 GETUPVAL                         R4 11
      325 CALL                             R4 0 1
      326 JUMPIFNOT                        R4 ; [+5]
      327 GETUPVAL                         R4 12
      328 GETTABLEKS                       R3 R4 K104 ["new"]
      330 CALL                             R3 0 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R3
      333 SETTABLEKS                       R3 R2 K105 ["conversationPersistence"]
      335 DUPCLOSURE                       R3 K106 [PROTO_18]
      336 CAPTURE                          UPVAL U13
      337 SETTABLEKS                       R3 R2 K107 ["getMockPrimGenBackendData"]
      339 MOVE                             R1 R2
      340 CLOSEUPVALS                      R1
      341 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_21:
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
       87 GETTABLEKS                       R14 R0 K24 ["Types"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K14 [require]
       92 GETTABLEKS                       R16 R0 K25 ["Flags"]
       94 GETTABLEKS                       R15 R16 K26 ["FFlagAssistantMultipleChatPersistence"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K14 [require]
       99 GETTABLEKS                       R17 R0 K25 ["Flags"]
      101 GETTABLEKS                       R16 R17 K27 ["FFlagAssistantUseNewMeshGenTool"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R11 K28 ["createUnimplemented"]
      106 DUPCLOSURE                       R17 K29 [PROTO_19]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R0
      121 MOVE                             R18 R17
      122 CALL                             R18 0 1
      123 DUPTABLE                         R19 K33 [{"new", "get", "set"}]
      124 SETTABLEKS                       R17 R19 K30 ["new"]
      126 NEWCLOSURE                       R20 P1
      127 CAPTURE                          REF R18
      128 SETTABLEKS                       R20 R19 K31 ["get"]
      130 NEWCLOSURE                       R20 P2
      131 CAPTURE                          REF R18
      132 SETTABLEKS                       R20 R19 K32 ["set"]
      134 CLOSEUPVALS                      R18
      135 RETURN                           R19 1
