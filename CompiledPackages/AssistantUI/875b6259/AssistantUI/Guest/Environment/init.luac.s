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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["MultiChatExperimentEnabledFn"]
        3 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["LocalPlayer is nil"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["UserId"]
       12 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Features"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenTool"]
        9 GETTABLEKS                       R1 R1 K5 ["PrimitiveGenMockData"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["MockFerrisWheelResult"]
       14 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K1 ["GenerateGUID"]
        8 CALL                             R1 2 1
        9 LOADNIL                          R2
       10 NEWTABLE                         R3 64 0
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K2 ["EventLogger"]
       15 LOADK                            R4 K3 [""]
       16 SETTABLEKS                       R4 R3 K4 ["apisUrl"]
       18 DUPCLOSURE                       R4 K5 [PROTO_0]
       19 SETTABLEKS                       R4 R3 K6 ["isDevFrameworkAvailable"]
       21 DUPCLOSURE                       R4 K7 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K8 ["isRobloxScriptSecurity"]
       24 DUPCLOSURE                       R4 K9 [PROTO_2]
       25 SETTABLEKS                       R4 R3 K10 ["isCompactionExperimentEnabled"]
       27 DUPCLOSURE                       R4 K11 [PROTO_3]
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R4 R3 K12 ["setMultiChatExperimentEnabledFn"]
       31 DUPCLOSURE                       R4 K13 [PROTO_4]
       32 SETTABLEKS                       R4 R3 K14 ["getEngineFeature"]
       34 GETUPVAL                         R4 4
       35 LOADK                            R5 K15 ["getNetworking"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K15 ["getNetworking"]
       39 DUPCLOSURE                       R4 K16 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K17 ["getSystemPrompt"]
       42 DUPCLOSURE                       R4 K18 [PROTO_6]
       43 CAPTURE                          UPVAL U5
       44 SETTABLEKS                       R4 R3 K19 ["getUserId"]
       46 DUPCLOSURE                       R4 K20 [PROTO_7]
       47 SETTABLEKS                       R4 R3 K21 ["getGameId"]
       49 NEWCLOSURE                       R4 P8
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R4 R3 K22 ["getStudioSessionId"]
       53 GETUPVAL                         R4 4
       54 LOADK                            R5 K23 ["copyToClipboard"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K23 ["copyToClipboard"]
       58 DUPCLOSURE                       R4 K24 [PROTO_9]
       59 SETTABLEKS                       R4 R3 K25 ["getClassIcon"]
       61 GETTABLEKS                       R4 R0 K26 ["startRecording"]
       63 SETTABLEKS                       R4 R3 K26 ["startRecording"]
       65 GETTABLEKS                       R4 R0 K27 ["endRecording"]
       67 SETTABLEKS                       R4 R3 K27 ["endRecording"]
       69 DUPCLOSURE                       R4 K28 [PROTO_10]
       70 SETTABLEKS                       R4 R3 K29 ["getScriptSource"]
       72 GETUPVAL                         R4 4
       73 LOADK                            R5 K30 ["openScriptAsync"]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K30 ["openScriptAsync"]
       77 DUPTABLE                         R4 K34 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       78 DUPCLOSURE                       R5 K35 [PROTO_11]
       79 CAPTURE                          UPVAL U1
       80 SETTABLEKS                       R5 R4 K31 ["createWebStreamClient"]
       82 DUPCLOSURE                       R5 K36 [PROTO_12]
       83 CAPTURE                          UPVAL U1
       84 SETTABLEKS                       R5 R4 K32 ["requestAsync"]
       86 GETUPVAL                         R5 4
       87 LOADK                            R6 K33 ["openUrl"]
       88 CALL                             R5 1 1
       89 SETTABLEKS                       R5 R4 K33 ["openUrl"]
       91 SETTABLEKS                       R4 R3 K37 ["http"]
       93 DUPTABLE                         R4 K40 [{"encodeAsync", "decodeAsync"}]
       94 DUPCLOSURE                       R5 K41 [PROTO_13]
       95 CAPTURE                          UPVAL U1
       96 SETTABLEKS                       R5 R4 K38 ["encodeAsync"]
       98 DUPCLOSURE                       R5 K42 [PROTO_14]
       99 CAPTURE                          UPVAL U1
      100 SETTABLEKS                       R5 R4 K39 ["decodeAsync"]
      102 SETTABLEKS                       R4 R3 K43 ["json"]
      104 DUPTABLE                         R4 K46 [{"get", "set"}]
      105 DUPCLOSURE                       R5 K47 [PROTO_15]
      106 SETTABLEKS                       R5 R4 K44 ["get"]
      108 DUPCLOSURE                       R5 K48 [PROTO_16]
      109 SETTABLEKS                       R5 R4 K45 ["set"]
      111 SETTABLEKS                       R4 R3 K49 ["selection"]
      113 DUPTABLE                         R4 K53 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
      114 GETUPVAL                         R5 4
      115 LOADK                            R6 K50 ["getUniqueId"]
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R4 K50 ["getUniqueId"]
      119 GETUPVAL                         R5 4
      120 LOADK                            R6 K51 ["getInstanceFromUniqueId"]
      121 CALL                             R5 1 1
      122 SETTABLEKS                       R5 R4 K51 ["getInstanceFromUniqueId"]
      124 GETUPVAL                         R5 4
      125 LOADK                            R6 K52 ["pickInstanceAsync"]
      126 CALL                             R5 1 1
      127 SETTABLEKS                       R5 R4 K52 ["pickInstanceAsync"]
      129 SETTABLEKS                       R4 R3 K54 ["instances"]
      131 DUPTABLE                         R4 K63 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "screenCapture", "uploadImage"}]
      132 DUPTABLE                         R5 K66 [{"loadCode", "stopCode"}]
      133 GETUPVAL                         R6 4
      134 LOADK                            R7 K64 ["loadCode"]
      135 CALL                             R6 1 1
      136 SETTABLEKS                       R6 R5 K64 ["loadCode"]
      138 GETUPVAL                         R6 4
      139 LOADK                            R7 K65 ["stopCode"]
      140 CALL                             R6 1 1
      141 SETTABLEKS                       R6 R5 K65 ["stopCode"]
      143 SETTABLEKS                       R5 R4 K55 ["executeLuau"]
      145 DUPTABLE                         R5 K69 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      146 DUPCLOSURE                       R6 K70 [PROTO_17]
      147 SETTABLEKS                       R6 R5 K67 ["updateScriptSourceAsync"]
      149 DUPCLOSURE                       R6 K71 [PROTO_18]
      150 SETTABLEKS                       R6 R5 K68 ["applyScriptSourceDirectly"]
      152 SETTABLEKS                       R5 R4 K56 ["multiEdit"]
      154 DUPTABLE                         R5 K74 [{"getFreeModelsAsync", "loadAssetAsync"}]
      155 NEWCLOSURE                       R6 P19
      156 CAPTURE                          REF R2
      157 CAPTURE                          UPVAL U6
      158 SETTABLEKS                       R6 R5 K72 ["getFreeModelsAsync"]
      160 GETUPVAL                         R6 7
      161 GETTABLEKS                       R6 R6 K75 ["getStandardHandler"]
      163 GETUPVAL                         R7 8
      164 CALL                             R6 1 1
      165 SETTABLEKS                       R6 R5 K73 ["loadAssetAsync"]
      167 SETTABLEKS                       R5 R4 K57 ["marketplaceInsertion"]
      169 DUPTABLE                         R5 K78 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      170 GETUPVAL                         R6 4
      171 LOADK                            R7 K76 ["generateMaterialVariantsAsync"]
      172 CALL                             R6 1 1
      173 SETTABLEKS                       R6 R5 K76 ["generateMaterialVariantsAsync"]
      175 GETUPVAL                         R6 4
      176 LOADK                            R7 K77 ["uploadMaterialsAsync"]
      177 CALL                             R6 1 1
      178 SETTABLEKS                       R6 R5 K77 ["uploadMaterialsAsync"]
      180 SETTABLEKS                       R5 R4 K58 ["materialGen"]
      182 DUPTABLE                         R5 K82 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool"}]
      183 DUPCLOSURE                       R6 K83 [PROTO_20]
      184 CAPTURE                          UPVAL U9
      185 SETTABLEKS                       R6 R5 K79 ["generateModelAsync"]
      187 GETUPVAL                         R6 4
      188 LOADK                            R7 K80 ["publishModelAsync"]
      189 CALL                             R6 1 1
      190 SETTABLEKS                       R6 R5 K80 ["publishModelAsync"]
      192 GETUPVAL                         R6 7
      193 GETTABLEKS                       R6 R6 K75 ["getStandardHandler"]
      195 GETUPVAL                         R7 8
      196 CALL                             R6 1 1
      197 SETTABLEKS                       R6 R5 K73 ["loadAssetAsync"]
      199 GETUPVAL                         R6 4
      200 LOADK                            R7 K81 ["activateScaleTool"]
      201 CALL                             R6 1 1
      202 SETTABLEKS                       R6 R5 K81 ["activateScaleTool"]
      204 SETTABLEKS                       R5 R4 K59 ["meshGen"]
      206 GETUPVAL                         R6 10
      207 CALL                             R6 0 1
      208 JUMPIFNOT                        R6 ; [+12]
      209 DUPTABLE                         R5 K86 [{"generateAnimationAsync", "publishAnimationAsync"}]
      210 GETUPVAL                         R6 4
      211 LOADK                            R7 K84 ["generateAnimationAsync"]
      212 CALL                             R6 1 1
      213 SETTABLEKS                       R6 R5 K84 ["generateAnimationAsync"]
      215 GETUPVAL                         R6 4
      216 LOADK                            R7 K85 ["publishAnimationAsync"]
      217 CALL                             R6 1 1
      218 SETTABLEKS                       R6 R5 K85 ["publishAnimationAsync"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R5
      222 SETTABLEKS                       R5 R4 K60 ["animationGen"]
      224 DUPTABLE                         R5 K89 [{"getImageDataBase64Async", "captureScreenshot"}]
      225 GETUPVAL                         R6 4
      226 LOADK                            R7 K87 ["getImageDataBase64Async"]
      227 CALL                             R6 1 1
      228 SETTABLEKS                       R6 R5 K87 ["getImageDataBase64Async"]
      230 DUPCLOSURE                       R6 K90 [PROTO_21]
      231 CAPTURE                          UPVAL U11
      232 SETTABLEKS                       R6 R5 K88 ["captureScreenshot"]
      234 SETTABLEKS                       R5 R4 K61 ["screenCapture"]
      236 DUPTABLE                         R5 K94 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      237 GETUPVAL                         R6 4
      238 LOADK                            R7 K91 ["loadImageAsync"]
      239 CALL                             R6 1 1
      240 SETTABLEKS                       R6 R5 K91 ["loadImageAsync"]
      242 GETUPVAL                         R6 4
      243 LOADK                            R7 K92 ["publishAssetAsync"]
      244 CALL                             R6 1 1
      245 SETTABLEKS                       R6 R5 K92 ["publishAssetAsync"]
      247 GETUPVAL                         R6 4
      248 LOADK                            R7 K93 ["searchAssetAsync"]
      249 CALL                             R6 1 1
      250 SETTABLEKS                       R6 R5 K93 ["searchAssetAsync"]
      252 SETTABLEKS                       R5 R4 K62 ["uploadImage"]
      254 SETTABLEKS                       R4 R3 K95 ["tools"]
      256 GETUPVAL                         R4 4
      257 LOADK                            R5 K96 ["convertImageDataToTempIdAsync"]
      258 CALL                             R4 1 1
      259 SETTABLEKS                       R4 R3 K96 ["convertImageDataToTempIdAsync"]
      261 GETUPVAL                         R4 4
      262 LOADK                            R5 K97 ["releaseTempIdAsync"]
      263 CALL                             R4 1 1
      264 SETTABLEKS                       R4 R3 K97 ["releaseTempIdAsync"]
      266 GETUPVAL                         R4 4
      267 LOADK                            R5 K98 ["getSettingsAsync"]
      268 CALL                             R4 1 1
      269 SETTABLEKS                       R4 R3 K98 ["getSettingsAsync"]
      271 GETUPVAL                         R4 4
      272 LOADK                            R5 K99 ["setSettingsAsync"]
      273 CALL                             R4 1 1
      274 SETTABLEKS                       R4 R3 K99 ["setSettingsAsync"]
      276 GETUPVAL                         R4 4
      277 LOADK                            R5 K100 ["getUserSettingsAsync"]
      278 CALL                             R4 1 1
      279 SETTABLEKS                       R4 R3 K100 ["getUserSettingsAsync"]
      281 GETUPVAL                         R4 4
      282 LOADK                            R5 K101 ["setUserSettingsAsync"]
      283 CALL                             R4 1 1
      284 SETTABLEKS                       R4 R3 K101 ["setUserSettingsAsync"]
      286 GETUPVAL                         R4 4
      287 LOADK                            R5 K102 ["getSecureSettingsAsync"]
      288 CALL                             R4 1 1
      289 SETTABLEKS                       R4 R3 K102 ["getSecureSettingsAsync"]
      291 GETUPVAL                         R4 4
      292 LOADK                            R5 K103 ["setSecureSettingsAsync"]
      293 CALL                             R4 1 1
      294 SETTABLEKS                       R4 R3 K103 ["setSecureSettingsAsync"]
      296 GETUPVAL                         R4 4
      297 LOADK                            R5 K104 ["base64EncodeAsync"]
      298 CALL                             R4 1 1
      299 SETTABLEKS                       R4 R3 K104 ["base64EncodeAsync"]
      301 GETUPVAL                         R4 4
      302 LOADK                            R5 K105 ["generatePKCEAsync"]
      303 CALL                             R4 1 1
      304 SETTABLEKS                       R4 R3 K105 ["generatePKCEAsync"]
      306 GETUPVAL                         R4 4
      307 LOADK                            R5 K106 ["startMCPAuthAsync"]
      308 CALL                             R4 1 1
      309 SETTABLEKS                       R4 R3 K106 ["startMCPAuthAsync"]
      311 GETUPVAL                         R4 4
      312 LOADK                            R5 K107 ["setupMCPServerAsync"]
      313 CALL                             R4 1 1
      314 SETTABLEKS                       R4 R3 K107 ["setupMCPServerAsync"]
      316 GETUPVAL                         R4 4
      317 LOADK                            R5 K108 ["getScopePermissionsAsync"]
      318 CALL                             R4 1 1
      319 SETTABLEKS                       R4 R3 K108 ["getScopePermissionsAsync"]
      321 GETUPVAL                         R4 4
      322 LOADK                            R5 K109 ["setScopePermissionsAsync"]
      323 CALL                             R4 1 1
      324 SETTABLEKS                       R4 R3 K109 ["setScopePermissionsAsync"]
      326 GETUPVAL                         R4 4
      327 LOADK                            R5 K110 ["getAvailableScopesAsync"]
      328 CALL                             R4 1 1
      329 SETTABLEKS                       R4 R3 K110 ["getAvailableScopesAsync"]
      331 GETUPVAL                         R4 4
      332 LOADK                            R5 K111 ["getScopeRiskLevelsAsync"]
      333 CALL                             R4 1 1
      334 SETTABLEKS                       R4 R3 K111 ["getScopeRiskLevelsAsync"]
      336 GETUPVAL                         R4 4
      337 LOADK                            R5 K112 ["getSelectedPresetAsync"]
      338 CALL                             R4 1 1
      339 SETTABLEKS                       R4 R3 K112 ["getSelectedPresetAsync"]
      341 GETUPVAL                         R4 4
      342 LOADK                            R5 K113 ["setSelectedPresetAsync"]
      343 CALL                             R4 1 1
      344 SETTABLEKS                       R4 R3 K113 ["setSelectedPresetAsync"]
      346 GETUPVAL                         R4 4
      347 LOADK                            R5 K114 ["startStopPlayAsync"]
      348 CALL                             R4 1 1
      349 SETTABLEKS                       R4 R3 K114 ["startStopPlayAsync"]
      351 DUPCLOSURE                       R4 K115 [PROTO_22]
      352 CAPTURE                          UPVAL U12
      353 SETTABLEKS                       R4 R3 K116 ["getLogHistory"]
      355 GETUPVAL                         R4 4
      356 LOADK                            R5 K117 ["subscribeOutput"]
      357 CALL                             R4 1 1
      358 SETTABLEKS                       R4 R3 K117 ["subscribeOutput"]
      360 GETUPVAL                         R4 4
      361 LOADK                            R5 K118 ["subscribeGameLoaded"]
      362 CALL                             R4 1 1
      363 SETTABLEKS                       R4 R3 K118 ["subscribeGameLoaded"]
      365 GETUPVAL                         R4 4
      366 LOADK                            R5 K119 ["subscribeGameStopped"]
      367 CALL                             R4 1 1
      368 SETTABLEKS                       R4 R3 K119 ["subscribeGameStopped"]
      370 GETUPVAL                         R4 4
      371 LOADK                            R5 K120 ["openFileDialogAsync"]
      372 CALL                             R4 1 1
      373 SETTABLEKS                       R4 R3 K120 ["openFileDialogAsync"]
      375 GETUPVAL                         R4 4
      376 LOADK                            R5 K121 ["importFileBinaryAsync"]
      377 CALL                             R4 1 1
      378 SETTABLEKS                       R4 R3 K121 ["importFileBinaryAsync"]
      380 DUPCLOSURE                       R4 K122 [PROTO_23]
      381 SETTABLEKS                       R4 R3 K123 ["printToStudioLogAsync"]
      383 DUPTABLE                         R4 K127 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      384 GETUPVAL                         R5 4
      385 LOADK                            R6 K128 ["quickConnect.fileExistsAsync"]
      386 CALL                             R5 1 1
      387 SETTABLEKS                       R5 R4 K124 ["fileExistsAsync"]
      389 GETUPVAL                         R5 4
      390 LOADK                            R6 K129 ["quickConnect.readFileAsync"]
      391 CALL                             R5 1 1
      392 SETTABLEKS                       R5 R4 K125 ["readFileAsync"]
      394 GETUPVAL                         R5 4
      395 LOADK                            R6 K130 ["quickConnect.modifyFileAsync"]
      396 CALL                             R5 1 1
      397 SETTABLEKS                       R5 R4 K126 ["modifyFileAsync"]
      399 SETTABLEKS                       R4 R3 K131 ["quickConnect"]
      401 DUPTABLE                         R4 K136 [{"listAsync", "readFileAsync", "writeFileAsync", "deleteFileAsync", "openFolderAsync"}]
      402 GETUPVAL                         R5 4
      403 LOADK                            R6 K137 ["userSkills.listAsync"]
      404 CALL                             R5 1 1
      405 SETTABLEKS                       R5 R4 K132 ["listAsync"]
      407 GETUPVAL                         R5 4
      408 LOADK                            R6 K138 ["userSkills.readFileAsync"]
      409 CALL                             R5 1 1
      410 SETTABLEKS                       R5 R4 K125 ["readFileAsync"]
      412 GETUPVAL                         R5 4
      413 LOADK                            R6 K139 ["userSkills.writeFileAsync"]
      414 CALL                             R5 1 1
      415 SETTABLEKS                       R5 R4 K133 ["writeFileAsync"]
      417 GETUPVAL                         R5 4
      418 LOADK                            R6 K140 ["userSkills.deleteFileAsync"]
      419 CALL                             R5 1 1
      420 SETTABLEKS                       R5 R4 K134 ["deleteFileAsync"]
      422 GETUPVAL                         R5 4
      423 LOADK                            R6 K141 ["userSkills.openFolderAsync"]
      424 CALL                             R5 1 1
      425 SETTABLEKS                       R5 R4 K135 ["openFolderAsync"]
      427 SETTABLEKS                       R4 R3 K142 ["userSkills"]
      429 GETUPVAL                         R4 4
      430 LOADK                            R5 K143 ["getStudioPlayState"]
      431 CALL                             R4 1 1
      432 SETTABLEKS                       R4 R3 K143 ["getStudioPlayState"]
      434 GETUPVAL                         R4 4
      435 LOADK                            R5 K144 ["fetchSystemPromptAsync"]
      436 CALL                             R4 1 1
      437 SETTABLEKS                       R4 R3 K144 ["fetchSystemPromptAsync"]
      439 DUPCLOSURE                       R4 K145 [PROTO_24]
      440 SETTABLEKS                       R4 R3 K146 ["hasInternalPermission"]
      442 DUPCLOSURE                       R4 K147 [PROTO_25]
      443 CAPTURE                          UPVAL U13
      444 SETTABLEKS                       R4 R3 K148 ["getMockPrimGenBackendData"]
      446 GETUPVAL                         R4 4
      447 LOADK                            R5 K149 ["startMultiPlayerTest"]
      448 CALL                             R4 1 1
      449 SETTABLEKS                       R4 R3 K149 ["startMultiPlayerTest"]
      451 GETUPVAL                         R4 4
      452 LOADK                            R5 K150 ["stopMultiPlayerTest"]
      453 CALL                             R4 1 1
      454 SETTABLEKS                       R4 R3 K150 ["stopMultiPlayerTest"]
      456 GETUPVAL                         R4 4
      457 LOADK                            R5 K151 ["isInMultiPlayerTest"]
      458 CALL                             R4 1 1
      459 SETTABLEKS                       R4 R3 K151 ["isInMultiPlayerTest"]
      461 GETUPVAL                         R4 4
      462 LOADK                            R5 K152 ["getStopMultiPlayerTestResults"]
      463 CALL                             R4 1 1
      464 SETTABLEKS                       R4 R3 K153 ["subscribeStopMultiPlayerTestStateChanged"]
      466 GETUPVAL                         R4 4
      467 LOADK                            R5 K154 ["createMultiPlayersServer"]
      468 CALL                             R4 1 1
      469 SETTABLEKS                       R4 R3 K154 ["createMultiPlayersServer"]
      471 GETUPVAL                         R4 4
      472 LOADK                            R5 K155 ["createMultiPlayersClient"]
      473 CALL                             R4 1 1
      474 SETTABLEKS                       R4 R3 K155 ["createMultiPlayersClient"]
      476 GETUPVAL                         R4 4
      477 LOADK                            R5 K156 ["getExperimentFeatureEnabled"]
      478 CALL                             R4 1 1
      479 SETTABLEKS                       R4 R3 K156 ["getExperimentFeatureEnabled"]
      481 GETUPVAL                         R4 4
      482 LOADK                            R5 K157 ["getOnExperimentChangedSignal"]
      483 CALL                             R4 1 1
      484 SETTABLEKS                       R4 R3 K158 ["onceExperimentFeatureEnabled"]
      486 GETUPVAL                         R4 4
      487 LOADK                            R5 K159 ["getStudioState"]
      488 CALL                             R4 1 1
      489 SETTABLEKS                       R4 R3 K159 ["getStudioState"]
      491 MOVE                             R2 R3
      492 CLOSEUPVALS                      R2
      493 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_28:
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
       51 GETTABLEKS                       R9 R0 K16 ["Constants"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K15 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Parent"]
       58 GETTABLEKS                       R10 R10 K18 ["DMNetworking"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K15 [require]
       63 GETIMPORT                        R11 K1 [script]
       65 GETTABLEKS                       R11 R11 K19 ["EventLogger"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K15 [require]
       70 GETTABLEKS                       R12 R0 K20 ["Guest"]
       72 GETTABLEKS                       R12 R12 K21 ["LoadAssetHandlers"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K15 [require]
       77 GETTABLEKS                       R13 R0 K22 ["Util"]
       79 GETTABLEKS                       R13 R13 K23 ["MultiPlayersConnection"]
       81 GETTABLEKS                       R13 R13 K24 ["MultiPlayerAgentTypes"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K15 [require]
       86 GETTABLEKS                       R14 R0 K17 ["Parent"]
       88 GETTABLEKS                       R14 R14 K25 ["ReactUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K15 [require]
       93 GETTABLEKS                       R15 R0 K20 ["Guest"]
       95 GETTABLEKS                       R15 R15 K26 ["RecordingHandlers"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K15 [require]
      100 GETTABLEKS                       R16 R0 K27 ["Types"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K15 [require]
      105 GETTABLEKS                       R17 R0 K28 ["Flags"]
      107 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantAnimationGenTool"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R13 K30 ["createUnimplemented"]
      112 DUPCLOSURE                       R18 K31 [PROTO_26]
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 MOVE                             R19 R18
      128 CALL                             R19 0 1
      129 DUPTABLE                         R20 K35 [{"new", "get", "set"}]
      130 SETTABLEKS                       R18 R20 K32 ["new"]
      132 NEWCLOSURE                       R21 P1
      133 CAPTURE                          REF R19
      134 SETTABLEKS                       R21 R20 K33 ["get"]
      136 NEWCLOSURE                       R21 P2
      137 CAPTURE                          REF R19
      138 SETTABLEKS                       R21 R20 K34 ["set"]
      140 CLOSEUPVALS                      R19
      141 RETURN                           R20 1
