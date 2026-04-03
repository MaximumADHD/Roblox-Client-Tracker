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
       50 GETUPVAL                         R3 2
       51 LOADK                            R4 K20 ["openScriptAsync"]
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R2 K20 ["openScriptAsync"]
       55 DUPTABLE                         R3 K24 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       56 DUPCLOSURE                       R4 K25 [PROTO_7]
       57 CAPTURE                          UPVAL U4
       58 SETTABLEKS                       R4 R3 K21 ["createWebStreamClient"]
       60 DUPCLOSURE                       R4 K26 [PROTO_8]
       61 CAPTURE                          UPVAL U4
       62 SETTABLEKS                       R4 R3 K22 ["requestAsync"]
       64 GETUPVAL                         R4 2
       65 LOADK                            R5 K23 ["openUrl"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K23 ["openUrl"]
       69 SETTABLEKS                       R3 R2 K27 ["http"]
       71 DUPTABLE                         R3 K30 [{"encodeAsync", "decodeAsync"}]
       72 DUPCLOSURE                       R4 K31 [PROTO_9]
       73 CAPTURE                          UPVAL U4
       74 SETTABLEKS                       R4 R3 K28 ["encodeAsync"]
       76 DUPCLOSURE                       R4 K32 [PROTO_10]
       77 CAPTURE                          UPVAL U4
       78 SETTABLEKS                       R4 R3 K29 ["decodeAsync"]
       80 SETTABLEKS                       R3 R2 K33 ["json"]
       82 DUPTABLE                         R3 K36 [{"get", "set"}]
       83 DUPCLOSURE                       R4 K37 [PROTO_11]
       84 SETTABLEKS                       R4 R3 K34 ["get"]
       86 DUPCLOSURE                       R4 K38 [PROTO_12]
       87 SETTABLEKS                       R4 R3 K35 ["set"]
       89 SETTABLEKS                       R3 R2 K39 ["selection"]
       91 DUPTABLE                         R3 K43 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
       92 GETUPVAL                         R4 2
       93 LOADK                            R5 K40 ["getUniqueId"]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R4 R3 K40 ["getUniqueId"]
       97 GETUPVAL                         R4 2
       98 LOADK                            R5 K41 ["getInstanceFromUniqueId"]
       99 CALL                             R4 1 1
      100 SETTABLEKS                       R4 R3 K41 ["getInstanceFromUniqueId"]
      102 GETUPVAL                         R4 2
      103 LOADK                            R5 K42 ["pickInstanceAsync"]
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K42 ["pickInstanceAsync"]
      107 SETTABLEKS                       R3 R2 K44 ["instances"]
      109 DUPTABLE                         R3 K53 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "DEPRECATED_meshGen", "screenCapture", "uploadImage"}]
      110 DUPTABLE                         R4 K56 [{"loadCode", "stopCode"}]
      111 GETUPVAL                         R5 2
      112 LOADK                            R6 K54 ["loadCode"]
      113 CALL                             R5 1 1
      114 SETTABLEKS                       R5 R4 K54 ["loadCode"]
      116 GETUPVAL                         R5 2
      117 LOADK                            R6 K55 ["stopCode"]
      118 CALL                             R5 1 1
      119 SETTABLEKS                       R5 R4 K55 ["stopCode"]
      121 SETTABLEKS                       R4 R3 K45 ["executeLuau"]
      123 DUPTABLE                         R4 K59 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      124 DUPCLOSURE                       R5 K60 [PROTO_13]
      125 SETTABLEKS                       R5 R4 K57 ["updateScriptSourceAsync"]
      127 DUPCLOSURE                       R5 K61 [PROTO_14]
      128 SETTABLEKS                       R5 R4 K58 ["applyScriptSourceDirectly"]
      130 SETTABLEKS                       R4 R3 K46 ["multiEdit"]
      132 DUPTABLE                         R4 K64 [{"getFreeModelsAsync", "loadAssetAsync"}]
      133 NEWCLOSURE                       R5 P15
      134 CAPTURE                          REF R1
      135 CAPTURE                          UPVAL U5
      136 SETTABLEKS                       R5 R4 K62 ["getFreeModelsAsync"]
      138 GETUPVAL                         R6 6
      139 GETTABLEKS                       R5 R6 K65 ["getStandardHandler"]
      141 GETUPVAL                         R6 7
      142 CALL                             R5 1 1
      143 SETTABLEKS                       R5 R4 K63 ["loadAssetAsync"]
      145 SETTABLEKS                       R4 R3 K47 ["marketplaceInsertion"]
      147 DUPTABLE                         R4 K68 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      148 GETUPVAL                         R5 2
      149 LOADK                            R6 K66 ["generateMaterialVariantsAsync"]
      150 CALL                             R5 1 1
      151 SETTABLEKS                       R5 R4 K66 ["generateMaterialVariantsAsync"]
      153 GETUPVAL                         R5 2
      154 LOADK                            R6 K67 ["uploadMaterialsAsync"]
      155 CALL                             R5 1 1
      156 SETTABLEKS                       R5 R4 K67 ["uploadMaterialsAsync"]
      158 SETTABLEKS                       R4 R3 K48 ["materialGen"]
      160 GETUPVAL                         R5 8
      161 CALL                             R5 0 1
      162 JUMPIFNOT                        R5 ; [+18]
      163 DUPTABLE                         R4 K71 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync"}]
      164 DUPCLOSURE                       R5 K72 [PROTO_16]
      165 CAPTURE                          UPVAL U9
      166 SETTABLEKS                       R5 R4 K69 ["generateModelAsync"]
      168 GETUPVAL                         R5 2
      169 LOADK                            R6 K70 ["publishModelAsync"]
      170 CALL                             R5 1 1
      171 SETTABLEKS                       R5 R4 K70 ["publishModelAsync"]
      173 GETUPVAL                         R6 6
      174 GETTABLEKS                       R5 R6 K65 ["getStandardHandler"]
      176 GETUPVAL                         R6 7
      177 CALL                             R5 1 1
      178 SETTABLEKS                       R5 R4 K63 ["loadAssetAsync"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R4
      182 SETTABLEKS                       R4 R3 K49 ["meshGen"]
      184 GETUPVAL                         R5 8
      185 CALL                             R5 0 1
      186 JUMPIFNOT                        R5 ; [+2]
      187 LOADNIL                          R4
      188 JUMP                             ; [+18]
      189 DUPTABLE                         R4 K77 [{"createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync"}]
      190 DUPCLOSURE                       R5 K78 [PROTO_17]
      191 CAPTURE                          UPVAL U7
      192 SETTABLEKS                       R5 R4 K73 ["createAssetAsync"]
      194 DUPCLOSURE                       R5 K79 [PROTO_18]
      195 CAPTURE                          UPVAL U7
      196 SETTABLEKS                       R5 R4 K74 ["createMeshPartAsync"]
      198 DUPCLOSURE                       R5 K80 [PROTO_19]
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          UPVAL U9
      201 SETTABLEKS                       R5 R4 K75 ["generateMeshAsync"]
      203 DUPCLOSURE                       R5 K81 [PROTO_20]
      204 CAPTURE                          UPVAL U9
      205 SETTABLEKS                       R5 R4 K76 ["loadGeneratedMeshAsync"]
      207 SETTABLEKS                       R4 R3 K50 ["DEPRECATED_meshGen"]
      209 DUPTABLE                         R4 K84 [{"getImageDataBase64Async", "captureScreenshot"}]
      210 GETUPVAL                         R5 2
      211 LOADK                            R6 K82 ["getImageDataBase64Async"]
      212 CALL                             R5 1 1
      213 SETTABLEKS                       R5 R4 K82 ["getImageDataBase64Async"]
      215 DUPCLOSURE                       R5 K85 [PROTO_21]
      216 CAPTURE                          UPVAL U10
      217 SETTABLEKS                       R5 R4 K83 ["captureScreenshot"]
      219 SETTABLEKS                       R4 R3 K51 ["screenCapture"]
      221 DUPTABLE                         R4 K89 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      222 GETUPVAL                         R5 2
      223 LOADK                            R6 K86 ["loadImageAsync"]
      224 CALL                             R5 1 1
      225 SETTABLEKS                       R5 R4 K86 ["loadImageAsync"]
      227 GETUPVAL                         R5 2
      228 LOADK                            R6 K87 ["publishAssetAsync"]
      229 CALL                             R5 1 1
      230 SETTABLEKS                       R5 R4 K87 ["publishAssetAsync"]
      232 GETUPVAL                         R5 2
      233 LOADK                            R6 K88 ["searchAssetAsync"]
      234 CALL                             R5 1 1
      235 SETTABLEKS                       R5 R4 K88 ["searchAssetAsync"]
      237 SETTABLEKS                       R4 R3 K52 ["uploadImage"]
      239 SETTABLEKS                       R3 R2 K90 ["tools"]
      241 GETUPVAL                         R3 2
      242 LOADK                            R4 K91 ["convertImageDataToTempIdAsync"]
      243 CALL                             R3 1 1
      244 SETTABLEKS                       R3 R2 K91 ["convertImageDataToTempIdAsync"]
      246 GETUPVAL                         R3 2
      247 LOADK                            R4 K92 ["releaseTempIdAsync"]
      248 CALL                             R3 1 1
      249 SETTABLEKS                       R3 R2 K92 ["releaseTempIdAsync"]
      251 GETUPVAL                         R3 2
      252 LOADK                            R4 K93 ["getSettingsAsync"]
      253 CALL                             R3 1 1
      254 SETTABLEKS                       R3 R2 K93 ["getSettingsAsync"]
      256 GETUPVAL                         R3 2
      257 LOADK                            R4 K94 ["setSettingsAsync"]
      258 CALL                             R3 1 1
      259 SETTABLEKS                       R3 R2 K94 ["setSettingsAsync"]
      261 GETUPVAL                         R3 2
      262 LOADK                            R4 K95 ["getUserSettingsAsync"]
      263 CALL                             R3 1 1
      264 SETTABLEKS                       R3 R2 K95 ["getUserSettingsAsync"]
      266 GETUPVAL                         R3 2
      267 LOADK                            R4 K96 ["setUserSettingsAsync"]
      268 CALL                             R3 1 1
      269 SETTABLEKS                       R3 R2 K96 ["setUserSettingsAsync"]
      271 GETUPVAL                         R3 2
      272 LOADK                            R4 K97 ["getSecureSettingsAsync"]
      273 CALL                             R3 1 1
      274 SETTABLEKS                       R3 R2 K97 ["getSecureSettingsAsync"]
      276 GETUPVAL                         R3 2
      277 LOADK                            R4 K98 ["setSecureSettingsAsync"]
      278 CALL                             R3 1 1
      279 SETTABLEKS                       R3 R2 K98 ["setSecureSettingsAsync"]
      281 GETUPVAL                         R3 2
      282 LOADK                            R4 K99 ["base64EncodeAsync"]
      283 CALL                             R3 1 1
      284 SETTABLEKS                       R3 R2 K99 ["base64EncodeAsync"]
      286 GETUPVAL                         R3 2
      287 LOADK                            R4 K100 ["generatePKCEAsync"]
      288 CALL                             R3 1 1
      289 SETTABLEKS                       R3 R2 K100 ["generatePKCEAsync"]
      291 GETUPVAL                         R3 2
      292 LOADK                            R4 K101 ["startMCPAuthAsync"]
      293 CALL                             R3 1 1
      294 SETTABLEKS                       R3 R2 K101 ["startMCPAuthAsync"]
      296 GETUPVAL                         R3 2
      297 LOADK                            R4 K102 ["setupMCPServerAsync"]
      298 CALL                             R3 1 1
      299 SETTABLEKS                       R3 R2 K102 ["setupMCPServerAsync"]
      301 GETUPVAL                         R3 2
      302 LOADK                            R4 K103 ["startStopPlayAsync"]
      303 CALL                             R3 1 1
      304 SETTABLEKS                       R3 R2 K103 ["startStopPlayAsync"]
      306 GETUPVAL                         R3 2
      307 LOADK                            R4 K104 ["subscribeOutput"]
      308 CALL                             R3 1 1
      309 SETTABLEKS                       R3 R2 K104 ["subscribeOutput"]
      311 GETUPVAL                         R3 2
      312 LOADK                            R4 K105 ["subscribeGameLoaded"]
      313 CALL                             R3 1 1
      314 SETTABLEKS                       R3 R2 K105 ["subscribeGameLoaded"]
      316 GETUPVAL                         R3 2
      317 LOADK                            R4 K106 ["subscribeGameStopped"]
      318 CALL                             R3 1 1
      319 SETTABLEKS                       R3 R2 K106 ["subscribeGameStopped"]
      321 GETUPVAL                         R3 2
      322 LOADK                            R4 K107 ["openFileDialogAsync"]
      323 CALL                             R3 1 1
      324 SETTABLEKS                       R3 R2 K107 ["openFileDialogAsync"]
      326 GETUPVAL                         R3 2
      327 LOADK                            R4 K108 ["importFileBinaryAsync"]
      328 CALL                             R3 1 1
      329 SETTABLEKS                       R3 R2 K108 ["importFileBinaryAsync"]
      331 GETUPVAL                         R3 2
      332 LOADK                            R4 K109 ["getStudioPlayState"]
      333 CALL                             R3 1 1
      334 SETTABLEKS                       R3 R2 K109 ["getStudioPlayState"]
      336 GETUPVAL                         R4 11
      337 CALL                             R4 0 1
      338 JUMPIFNOT                        R4 ; [+5]
      339 GETUPVAL                         R4 12
      340 GETTABLEKS                       R3 R4 K110 ["new"]
      342 CALL                             R3 0 1
      343 JUMP                             ; [+1]
      344 LOADNIL                          R3
      345 SETTABLEKS                       R3 R2 K111 ["conversationPersistence"]
      347 MOVE                             R1 R2
      348 CLOSEUPVALS                      R1
      349 RETURN                           R1 1

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
       87 GETTABLEKS                       R14 R0 K24 ["Types"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K14 [require]
       92 GETTABLEKS                       R16 R0 K25 ["Flags"]
       94 GETTABLEKS                       R15 R16 K26 ["FFlagAssistantPersistConversations"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K14 [require]
       99 GETTABLEKS                       R17 R0 K25 ["Flags"]
      101 GETTABLEKS                       R16 R17 K27 ["FFlagAssistantUseNewMeshGenTool"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R11 K28 ["createUnimplemented"]
      106 DUPCLOSURE                       R17 K29 [PROTO_22]
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
      120 MOVE                             R18 R17
      121 CALL                             R18 0 1
      122 DUPTABLE                         R19 K33 [{"new", "get", "set"}]
      123 SETTABLEKS                       R17 R19 K30 ["new"]
      125 NEWCLOSURE                       R20 P1
      126 CAPTURE                          REF R18
      127 SETTABLEKS                       R20 R19 K31 ["get"]
      129 NEWCLOSURE                       R20 P2
      130 CAPTURE                          REF R18
      131 SETTABLEKS                       R20 R19 K32 ["set"]
      133 CLOSEUPVALS                      R18
      134 RETURN                           R19 1
