PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["LocalPlayer is nil"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["UserId"]
       12 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEngineFeature"]
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Features"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenTool"]
        9 GETTABLEKS                       R1 R1 K5 ["PrimitiveGenMockData"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["MockFerrisWheelResult"]
       14 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStandardHandlers"]
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
       20 SETTABLEKS                       R3 R2 K9 ["isCompactionExperimentEnabled"]
       22 DUPCLOSURE                       R3 K10 [PROTO_3]
       23 SETTABLEKS                       R3 R2 K11 ["getEngineFeature"]
       25 GETUPVAL                         R3 2
       26 LOADK                            R4 K12 ["getNetworking"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K12 ["getNetworking"]
       30 DUPCLOSURE                       R3 K13 [PROTO_4]
       31 SETTABLEKS                       R3 R2 K14 ["getSystemPrompt"]
       33 DUPCLOSURE                       R3 K15 [PROTO_5]
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R3 R2 K16 ["getUserId"]
       37 GETUPVAL                         R3 2
       38 LOADK                            R4 K17 ["copyToClipboard"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K17 ["copyToClipboard"]
       42 DUPCLOSURE                       R3 K18 [PROTO_6]
       43 SETTABLEKS                       R3 R2 K19 ["getClassIcon"]
       45 GETTABLEKS                       R3 R0 K20 ["startRecording"]
       47 SETTABLEKS                       R3 R2 K20 ["startRecording"]
       49 GETTABLEKS                       R3 R0 K21 ["endRecording"]
       51 SETTABLEKS                       R3 R2 K21 ["endRecording"]
       53 DUPCLOSURE                       R3 K22 [PROTO_7]
       54 SETTABLEKS                       R3 R2 K23 ["getScriptSource"]
       56 GETUPVAL                         R3 2
       57 LOADK                            R4 K24 ["openScriptAsync"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K24 ["openScriptAsync"]
       61 DUPTABLE                         R3 K28 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       62 DUPCLOSURE                       R4 K29 [PROTO_8]
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R4 R3 K25 ["createWebStreamClient"]
       66 DUPCLOSURE                       R4 K30 [PROTO_9]
       67 CAPTURE                          UPVAL U4
       68 SETTABLEKS                       R4 R3 K26 ["requestAsync"]
       70 GETUPVAL                         R4 2
       71 LOADK                            R5 K27 ["openUrl"]
       72 CALL                             R4 1 1
       73 SETTABLEKS                       R4 R3 K27 ["openUrl"]
       75 SETTABLEKS                       R3 R2 K31 ["http"]
       77 DUPTABLE                         R3 K34 [{"encodeAsync", "decodeAsync"}]
       78 DUPCLOSURE                       R4 K35 [PROTO_10]
       79 CAPTURE                          UPVAL U4
       80 SETTABLEKS                       R4 R3 K32 ["encodeAsync"]
       82 DUPCLOSURE                       R4 K36 [PROTO_11]
       83 CAPTURE                          UPVAL U4
       84 SETTABLEKS                       R4 R3 K33 ["decodeAsync"]
       86 SETTABLEKS                       R3 R2 K37 ["json"]
       88 DUPTABLE                         R3 K40 [{"get", "set"}]
       89 DUPCLOSURE                       R4 K41 [PROTO_12]
       90 SETTABLEKS                       R4 R3 K38 ["get"]
       92 DUPCLOSURE                       R4 K42 [PROTO_13]
       93 SETTABLEKS                       R4 R3 K39 ["set"]
       95 SETTABLEKS                       R3 R2 K43 ["selection"]
       97 DUPTABLE                         R3 K47 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
       98 GETUPVAL                         R4 2
       99 LOADK                            R5 K44 ["getUniqueId"]
      100 CALL                             R4 1 1
      101 SETTABLEKS                       R4 R3 K44 ["getUniqueId"]
      103 GETUPVAL                         R4 2
      104 LOADK                            R5 K45 ["getInstanceFromUniqueId"]
      105 CALL                             R4 1 1
      106 SETTABLEKS                       R4 R3 K45 ["getInstanceFromUniqueId"]
      108 GETUPVAL                         R4 2
      109 LOADK                            R5 K46 ["pickInstanceAsync"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R3 K46 ["pickInstanceAsync"]
      113 SETTABLEKS                       R3 R2 K48 ["instances"]
      115 DUPTABLE                         R3 K57 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "screenCapture", "uploadImage"}]
      116 DUPTABLE                         R4 K60 [{"loadCode", "stopCode"}]
      117 GETUPVAL                         R5 2
      118 LOADK                            R6 K58 ["loadCode"]
      119 CALL                             R5 1 1
      120 SETTABLEKS                       R5 R4 K58 ["loadCode"]
      122 GETUPVAL                         R5 2
      123 LOADK                            R6 K59 ["stopCode"]
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R4 K59 ["stopCode"]
      127 SETTABLEKS                       R4 R3 K49 ["executeLuau"]
      129 DUPTABLE                         R4 K63 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      130 DUPCLOSURE                       R5 K64 [PROTO_14]
      131 SETTABLEKS                       R5 R4 K61 ["updateScriptSourceAsync"]
      133 DUPCLOSURE                       R5 K65 [PROTO_15]
      134 SETTABLEKS                       R5 R4 K62 ["applyScriptSourceDirectly"]
      136 SETTABLEKS                       R4 R3 K50 ["multiEdit"]
      138 DUPTABLE                         R4 K68 [{"getFreeModelsAsync", "loadAssetAsync"}]
      139 NEWCLOSURE                       R5 P16
      140 CAPTURE                          REF R1
      141 CAPTURE                          UPVAL U5
      142 SETTABLEKS                       R5 R4 K66 ["getFreeModelsAsync"]
      144 GETUPVAL                         R5 6
      145 GETTABLEKS                       R5 R5 K69 ["getStandardHandler"]
      147 GETUPVAL                         R6 7
      148 CALL                             R5 1 1
      149 SETTABLEKS                       R5 R4 K67 ["loadAssetAsync"]
      151 SETTABLEKS                       R4 R3 K51 ["marketplaceInsertion"]
      153 DUPTABLE                         R4 K72 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      154 GETUPVAL                         R5 2
      155 LOADK                            R6 K70 ["generateMaterialVariantsAsync"]
      156 CALL                             R5 1 1
      157 SETTABLEKS                       R5 R4 K70 ["generateMaterialVariantsAsync"]
      159 GETUPVAL                         R5 2
      160 LOADK                            R6 K71 ["uploadMaterialsAsync"]
      161 CALL                             R5 1 1
      162 SETTABLEKS                       R5 R4 K71 ["uploadMaterialsAsync"]
      164 SETTABLEKS                       R4 R3 K52 ["materialGen"]
      166 GETUPVAL                         R5 8
      167 CALL                             R5 0 1
      168 JUMPIFNOT                        R5 ; [+18]
      169 DUPTABLE                         R4 K75 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync"}]
      170 DUPCLOSURE                       R5 K76 [PROTO_17]
      171 CAPTURE                          UPVAL U9
      172 SETTABLEKS                       R5 R4 K73 ["generateModelAsync"]
      174 GETUPVAL                         R5 2
      175 LOADK                            R6 K74 ["publishModelAsync"]
      176 CALL                             R5 1 1
      177 SETTABLEKS                       R5 R4 K74 ["publishModelAsync"]
      179 GETUPVAL                         R5 6
      180 GETTABLEKS                       R5 R5 K69 ["getStandardHandler"]
      182 GETUPVAL                         R6 7
      183 CALL                             R5 1 1
      184 SETTABLEKS                       R5 R4 K67 ["loadAssetAsync"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R4
      188 SETTABLEKS                       R4 R3 K53 ["meshGen"]
      190 GETUPVAL                         R5 10
      191 CALL                             R5 0 1
      192 JUMPIFNOT                        R5 ; [+12]
      193 DUPTABLE                         R4 K79 [{"generateAnimationAsync", "publishAnimationAsync"}]
      194 GETUPVAL                         R5 2
      195 LOADK                            R6 K77 ["generateAnimationAsync"]
      196 CALL                             R5 1 1
      197 SETTABLEKS                       R5 R4 K77 ["generateAnimationAsync"]
      199 GETUPVAL                         R5 2
      200 LOADK                            R6 K78 ["publishAnimationAsync"]
      201 CALL                             R5 1 1
      202 SETTABLEKS                       R5 R4 K78 ["publishAnimationAsync"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R4
      206 SETTABLEKS                       R4 R3 K54 ["animationGen"]
      208 DUPTABLE                         R4 K82 [{"getImageDataBase64Async", "captureScreenshot"}]
      209 GETUPVAL                         R5 2
      210 LOADK                            R6 K80 ["getImageDataBase64Async"]
      211 CALL                             R5 1 1
      212 SETTABLEKS                       R5 R4 K80 ["getImageDataBase64Async"]
      214 DUPCLOSURE                       R5 K83 [PROTO_18]
      215 CAPTURE                          UPVAL U11
      216 SETTABLEKS                       R5 R4 K81 ["captureScreenshot"]
      218 SETTABLEKS                       R4 R3 K55 ["screenCapture"]
      220 DUPTABLE                         R4 K87 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      221 GETUPVAL                         R5 2
      222 LOADK                            R6 K84 ["loadImageAsync"]
      223 CALL                             R5 1 1
      224 SETTABLEKS                       R5 R4 K84 ["loadImageAsync"]
      226 GETUPVAL                         R5 2
      227 LOADK                            R6 K85 ["publishAssetAsync"]
      228 CALL                             R5 1 1
      229 SETTABLEKS                       R5 R4 K85 ["publishAssetAsync"]
      231 GETUPVAL                         R5 2
      232 LOADK                            R6 K86 ["searchAssetAsync"]
      233 CALL                             R5 1 1
      234 SETTABLEKS                       R5 R4 K86 ["searchAssetAsync"]
      236 SETTABLEKS                       R4 R3 K56 ["uploadImage"]
      238 SETTABLEKS                       R3 R2 K88 ["tools"]
      240 GETUPVAL                         R3 2
      241 LOADK                            R4 K89 ["convertImageDataToTempIdAsync"]
      242 CALL                             R3 1 1
      243 SETTABLEKS                       R3 R2 K89 ["convertImageDataToTempIdAsync"]
      245 GETUPVAL                         R3 2
      246 LOADK                            R4 K90 ["releaseTempIdAsync"]
      247 CALL                             R3 1 1
      248 SETTABLEKS                       R3 R2 K90 ["releaseTempIdAsync"]
      250 GETUPVAL                         R3 2
      251 LOADK                            R4 K91 ["getSettingsAsync"]
      252 CALL                             R3 1 1
      253 SETTABLEKS                       R3 R2 K91 ["getSettingsAsync"]
      255 GETUPVAL                         R3 2
      256 LOADK                            R4 K92 ["setSettingsAsync"]
      257 CALL                             R3 1 1
      258 SETTABLEKS                       R3 R2 K92 ["setSettingsAsync"]
      260 GETUPVAL                         R3 2
      261 LOADK                            R4 K93 ["getUserSettingsAsync"]
      262 CALL                             R3 1 1
      263 SETTABLEKS                       R3 R2 K93 ["getUserSettingsAsync"]
      265 GETUPVAL                         R3 2
      266 LOADK                            R4 K94 ["setUserSettingsAsync"]
      267 CALL                             R3 1 1
      268 SETTABLEKS                       R3 R2 K94 ["setUserSettingsAsync"]
      270 GETUPVAL                         R3 2
      271 LOADK                            R4 K95 ["getSecureSettingsAsync"]
      272 CALL                             R3 1 1
      273 SETTABLEKS                       R3 R2 K95 ["getSecureSettingsAsync"]
      275 GETUPVAL                         R3 2
      276 LOADK                            R4 K96 ["setSecureSettingsAsync"]
      277 CALL                             R3 1 1
      278 SETTABLEKS                       R3 R2 K96 ["setSecureSettingsAsync"]
      280 GETUPVAL                         R3 2
      281 LOADK                            R4 K97 ["base64EncodeAsync"]
      282 CALL                             R3 1 1
      283 SETTABLEKS                       R3 R2 K97 ["base64EncodeAsync"]
      285 GETUPVAL                         R3 2
      286 LOADK                            R4 K98 ["generatePKCEAsync"]
      287 CALL                             R3 1 1
      288 SETTABLEKS                       R3 R2 K98 ["generatePKCEAsync"]
      290 GETUPVAL                         R3 2
      291 LOADK                            R4 K99 ["startMCPAuthAsync"]
      292 CALL                             R3 1 1
      293 SETTABLEKS                       R3 R2 K99 ["startMCPAuthAsync"]
      295 GETUPVAL                         R3 2
      296 LOADK                            R4 K100 ["setupMCPServerAsync"]
      297 CALL                             R3 1 1
      298 SETTABLEKS                       R3 R2 K100 ["setupMCPServerAsync"]
      300 GETUPVAL                         R3 2
      301 LOADK                            R4 K101 ["startStopPlayAsync"]
      302 CALL                             R3 1 1
      303 SETTABLEKS                       R3 R2 K101 ["startStopPlayAsync"]
      305 DUPCLOSURE                       R3 K102 [PROTO_19]
      306 CAPTURE                          UPVAL U12
      307 SETTABLEKS                       R3 R2 K103 ["getLogHistory"]
      309 GETUPVAL                         R3 2
      310 LOADK                            R4 K104 ["subscribeOutput"]
      311 CALL                             R3 1 1
      312 SETTABLEKS                       R3 R2 K104 ["subscribeOutput"]
      314 GETUPVAL                         R3 2
      315 LOADK                            R4 K105 ["subscribeGameLoaded"]
      316 CALL                             R3 1 1
      317 SETTABLEKS                       R3 R2 K105 ["subscribeGameLoaded"]
      319 GETUPVAL                         R3 2
      320 LOADK                            R4 K106 ["subscribeGameStopped"]
      321 CALL                             R3 1 1
      322 SETTABLEKS                       R3 R2 K106 ["subscribeGameStopped"]
      324 GETUPVAL                         R3 2
      325 LOADK                            R4 K107 ["openFileDialogAsync"]
      326 CALL                             R3 1 1
      327 SETTABLEKS                       R3 R2 K107 ["openFileDialogAsync"]
      329 GETUPVAL                         R3 2
      330 LOADK                            R4 K108 ["importFileBinaryAsync"]
      331 CALL                             R3 1 1
      332 SETTABLEKS                       R3 R2 K108 ["importFileBinaryAsync"]
      334 DUPCLOSURE                       R3 K109 [PROTO_20]
      335 SETTABLEKS                       R3 R2 K110 ["printToStudioLogAsync"]
      337 DUPTABLE                         R3 K114 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      338 GETUPVAL                         R4 2
      339 LOADK                            R5 K115 ["quickConnect.fileExistsAsync"]
      340 CALL                             R4 1 1
      341 SETTABLEKS                       R4 R3 K111 ["fileExistsAsync"]
      343 GETUPVAL                         R4 2
      344 LOADK                            R5 K116 ["quickConnect.readFileAsync"]
      345 CALL                             R4 1 1
      346 SETTABLEKS                       R4 R3 K112 ["readFileAsync"]
      348 GETUPVAL                         R4 2
      349 LOADK                            R5 K117 ["quickConnect.modifyFileAsync"]
      350 CALL                             R4 1 1
      351 SETTABLEKS                       R4 R3 K113 ["modifyFileAsync"]
      353 SETTABLEKS                       R3 R2 K118 ["quickConnect"]
      355 GETUPVAL                         R3 2
      356 LOADK                            R4 K119 ["getStudioPlayState"]
      357 CALL                             R3 1 1
      358 SETTABLEKS                       R3 R2 K119 ["getStudioPlayState"]
      360 GETUPVAL                         R3 2
      361 LOADK                            R4 K120 ["fetchSystemPromptAsync"]
      362 CALL                             R3 1 1
      363 SETTABLEKS                       R3 R2 K120 ["fetchSystemPromptAsync"]
      365 DUPCLOSURE                       R3 K121 [PROTO_21]
      366 SETTABLEKS                       R3 R2 K122 ["hasInternalPermission"]
      368 DUPCLOSURE                       R3 K123 [PROTO_22]
      369 CAPTURE                          UPVAL U13
      370 SETTABLEKS                       R3 R2 K124 ["getMockPrimGenBackendData"]
      372 MOVE                             R1 R2
      373 CLOSEUPVALS                      R1
      374 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_25:
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
       39 LOADK                            R8 K12 ["LogService"]
       40 NAMECALL                         R6 R6 K7 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K5 [game]
       45 LOADK                            R9 K13 ["Players"]
       46 NAMECALL                         R7 R7 K7 ["GetService"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K15 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Parent"]
       53 GETTABLEKS                       R9 R9 K17 ["DMNetworking"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R10 R10 K18 ["EventLogger"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Guest"]
       67 GETTABLEKS                       R11 R11 K20 ["LoadAssetHandlers"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K15 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Parent"]
       74 GETTABLEKS                       R12 R12 K21 ["ReactUtils"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K15 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Guest"]
       81 GETTABLEKS                       R13 R13 K22 ["RecordingHandlers"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K15 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Types"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K15 [require]
       91 GETTABLEKS                       R15 R0 K24 ["Flags"]
       93 GETTABLEKS                       R15 R15 K25 ["FFlagAssistantAnimationGenTool"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K15 [require]
       98 GETTABLEKS                       R16 R0 K24 ["Flags"]
      100 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantUseNewMeshGenTool"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R11 K27 ["createUnimplemented"]
      105 DUPCLOSURE                       R17 K28 [PROTO_23]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R0
      120 MOVE                             R18 R17
      121 CALL                             R18 0 1
      122 DUPTABLE                         R19 K32 [{"new", "get", "set"}]
      123 SETTABLEKS                       R17 R19 K29 ["new"]
      125 NEWCLOSURE                       R20 P1
      126 CAPTURE                          REF R18
      127 SETTABLEKS                       R20 R19 K30 ["get"]
      129 NEWCLOSURE                       R20 P2
      130 CAPTURE                          REF R18
      131 SETTABLEKS                       R20 R19 K31 ["set"]
      133 CLOSEUPVALS                      R18
      134 RETURN                           R19 1
