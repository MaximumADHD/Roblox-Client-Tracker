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
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K4 [{[1] = "", ["ImageRectOffset"], ["ImageRectSize"]}]
        1 GETIMPORT                        R1 K7 [Vector2.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K2 ["ImageRectOffset"]
        8 GETIMPORT                        R1 K7 [Vector2.new]
       10 LOADN                            R2 16
       11 LOADN                            R3 16
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K3 ["ImageRectSize"]
       15 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_24:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Features"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenTool"]
        9 GETTABLEKS                       R1 R1 K5 ["PrimitiveGenMockData"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["MockFerrisWheelResult"]
       14 RETURN                           R1 1

PROTO_25:
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
       28 SETTABLEKS                       R4 R3 K12 ["getEngineFeature"]
       30 GETUPVAL                         R4 3
       31 LOADK                            R5 K13 ["getNetworking"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K13 ["getNetworking"]
       35 DUPCLOSURE                       R4 K14 [PROTO_4]
       36 SETTABLEKS                       R4 R3 K15 ["getSystemPrompt"]
       38 DUPCLOSURE                       R4 K16 [PROTO_5]
       39 CAPTURE                          UPVAL U4
       40 SETTABLEKS                       R4 R3 K17 ["getUserId"]
       42 DUPCLOSURE                       R4 K18 [PROTO_6]
       43 SETTABLEKS                       R4 R3 K19 ["getGameId"]
       45 NEWCLOSURE                       R4 P7
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K20 ["getStudioSessionId"]
       49 GETUPVAL                         R4 3
       50 LOADK                            R5 K21 ["copyToClipboard"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K21 ["copyToClipboard"]
       54 DUPCLOSURE                       R4 K22 [PROTO_8]
       55 SETTABLEKS                       R4 R3 K23 ["getClassIcon"]
       57 GETTABLEKS                       R4 R0 K24 ["startRecording"]
       59 SETTABLEKS                       R4 R3 K24 ["startRecording"]
       61 GETTABLEKS                       R4 R0 K25 ["endRecording"]
       63 SETTABLEKS                       R4 R3 K25 ["endRecording"]
       65 DUPCLOSURE                       R4 K26 [PROTO_9]
       66 SETTABLEKS                       R4 R3 K27 ["getScriptSource"]
       68 GETUPVAL                         R4 3
       69 LOADK                            R5 K28 ["openScriptAsync"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K28 ["openScriptAsync"]
       73 DUPTABLE                         R4 K32 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       74 DUPCLOSURE                       R5 K33 [PROTO_10]
       75 CAPTURE                          UPVAL U1
       76 SETTABLEKS                       R5 R4 K29 ["createWebStreamClient"]
       78 DUPCLOSURE                       R5 K34 [PROTO_11]
       79 CAPTURE                          UPVAL U1
       80 SETTABLEKS                       R5 R4 K30 ["requestAsync"]
       82 GETUPVAL                         R5 3
       83 LOADK                            R6 K31 ["openUrl"]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R5 R4 K31 ["openUrl"]
       87 SETTABLEKS                       R4 R3 K35 ["http"]
       89 DUPTABLE                         R4 K38 [{"encodeAsync", "decodeAsync"}]
       90 DUPCLOSURE                       R5 K39 [PROTO_12]
       91 CAPTURE                          UPVAL U1
       92 SETTABLEKS                       R5 R4 K36 ["encodeAsync"]
       94 DUPCLOSURE                       R5 K40 [PROTO_13]
       95 CAPTURE                          UPVAL U1
       96 SETTABLEKS                       R5 R4 K37 ["decodeAsync"]
       98 SETTABLEKS                       R4 R3 K41 ["json"]
      100 DUPTABLE                         R4 K44 [{"get", "set"}]
      101 DUPCLOSURE                       R5 K45 [PROTO_14]
      102 SETTABLEKS                       R5 R4 K42 ["get"]
      104 DUPCLOSURE                       R5 K46 [PROTO_15]
      105 SETTABLEKS                       R5 R4 K43 ["set"]
      107 SETTABLEKS                       R4 R3 K47 ["selection"]
      109 DUPTABLE                         R4 K51 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
      110 GETUPVAL                         R5 3
      111 LOADK                            R6 K48 ["getUniqueId"]
      112 CALL                             R5 1 1
      113 SETTABLEKS                       R5 R4 K48 ["getUniqueId"]
      115 GETUPVAL                         R5 3
      116 LOADK                            R6 K49 ["getInstanceFromUniqueId"]
      117 CALL                             R5 1 1
      118 SETTABLEKS                       R5 R4 K49 ["getInstanceFromUniqueId"]
      120 GETUPVAL                         R5 3
      121 LOADK                            R6 K50 ["pickInstanceAsync"]
      122 CALL                             R5 1 1
      123 SETTABLEKS                       R5 R4 K50 ["pickInstanceAsync"]
      125 SETTABLEKS                       R4 R3 K52 ["instances"]
      127 DUPTABLE                         R4 K61 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "screenCapture", "uploadImage"}]
      128 DUPTABLE                         R5 K64 [{"loadCode", "stopCode"}]
      129 GETUPVAL                         R6 3
      130 LOADK                            R7 K62 ["loadCode"]
      131 CALL                             R6 1 1
      132 SETTABLEKS                       R6 R5 K62 ["loadCode"]
      134 GETUPVAL                         R6 3
      135 LOADK                            R7 K63 ["stopCode"]
      136 CALL                             R6 1 1
      137 SETTABLEKS                       R6 R5 K63 ["stopCode"]
      139 SETTABLEKS                       R5 R4 K53 ["executeLuau"]
      141 DUPTABLE                         R5 K67 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      142 DUPCLOSURE                       R6 K68 [PROTO_16]
      143 SETTABLEKS                       R6 R5 K65 ["updateScriptSourceAsync"]
      145 DUPCLOSURE                       R6 K69 [PROTO_17]
      146 SETTABLEKS                       R6 R5 K66 ["applyScriptSourceDirectly"]
      148 SETTABLEKS                       R5 R4 K54 ["multiEdit"]
      150 DUPTABLE                         R5 K72 [{"getFreeModelsAsync", "loadAssetAsync"}]
      151 NEWCLOSURE                       R6 P18
      152 CAPTURE                          REF R2
      153 CAPTURE                          UPVAL U5
      154 SETTABLEKS                       R6 R5 K70 ["getFreeModelsAsync"]
      156 GETUPVAL                         R6 6
      157 GETTABLEKS                       R6 R6 K73 ["getStandardHandler"]
      159 GETUPVAL                         R7 7
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K71 ["loadAssetAsync"]
      163 SETTABLEKS                       R5 R4 K55 ["marketplaceInsertion"]
      165 DUPTABLE                         R5 K76 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      166 GETUPVAL                         R6 3
      167 LOADK                            R7 K74 ["generateMaterialVariantsAsync"]
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R5 K74 ["generateMaterialVariantsAsync"]
      171 GETUPVAL                         R6 3
      172 LOADK                            R7 K75 ["uploadMaterialsAsync"]
      173 CALL                             R6 1 1
      174 SETTABLEKS                       R6 R5 K75 ["uploadMaterialsAsync"]
      176 SETTABLEKS                       R5 R4 K56 ["materialGen"]
      178 DUPTABLE                         R5 K80 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool"}]
      179 DUPCLOSURE                       R6 K81 [PROTO_19]
      180 CAPTURE                          UPVAL U8
      181 SETTABLEKS                       R6 R5 K77 ["generateModelAsync"]
      183 GETUPVAL                         R6 3
      184 LOADK                            R7 K78 ["publishModelAsync"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K78 ["publishModelAsync"]
      188 GETUPVAL                         R6 6
      189 GETTABLEKS                       R6 R6 K73 ["getStandardHandler"]
      191 GETUPVAL                         R7 7
      192 CALL                             R6 1 1
      193 SETTABLEKS                       R6 R5 K71 ["loadAssetAsync"]
      195 GETUPVAL                         R6 3
      196 LOADK                            R7 K79 ["activateScaleTool"]
      197 CALL                             R6 1 1
      198 SETTABLEKS                       R6 R5 K79 ["activateScaleTool"]
      200 SETTABLEKS                       R5 R4 K57 ["meshGen"]
      202 GETUPVAL                         R6 9
      203 CALL                             R6 0 1
      204 JUMPIFNOT                        R6 ; [+12]
      205 DUPTABLE                         R5 K84 [{"generateAnimationAsync", "publishAnimationAsync"}]
      206 GETUPVAL                         R6 3
      207 LOADK                            R7 K82 ["generateAnimationAsync"]
      208 CALL                             R6 1 1
      209 SETTABLEKS                       R6 R5 K82 ["generateAnimationAsync"]
      211 GETUPVAL                         R6 3
      212 LOADK                            R7 K83 ["publishAnimationAsync"]
      213 CALL                             R6 1 1
      214 SETTABLEKS                       R6 R5 K83 ["publishAnimationAsync"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R5
      218 SETTABLEKS                       R5 R4 K58 ["animationGen"]
      220 DUPTABLE                         R5 K87 [{"getImageDataBase64Async", "captureScreenshot"}]
      221 GETUPVAL                         R6 3
      222 LOADK                            R7 K85 ["getImageDataBase64Async"]
      223 CALL                             R6 1 1
      224 SETTABLEKS                       R6 R5 K85 ["getImageDataBase64Async"]
      226 DUPCLOSURE                       R6 K88 [PROTO_20]
      227 CAPTURE                          UPVAL U10
      228 SETTABLEKS                       R6 R5 K86 ["captureScreenshot"]
      230 SETTABLEKS                       R5 R4 K59 ["screenCapture"]
      232 DUPTABLE                         R5 K92 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      233 GETUPVAL                         R6 3
      234 LOADK                            R7 K89 ["loadImageAsync"]
      235 CALL                             R6 1 1
      236 SETTABLEKS                       R6 R5 K89 ["loadImageAsync"]
      238 GETUPVAL                         R6 3
      239 LOADK                            R7 K90 ["publishAssetAsync"]
      240 CALL                             R6 1 1
      241 SETTABLEKS                       R6 R5 K90 ["publishAssetAsync"]
      243 GETUPVAL                         R6 3
      244 LOADK                            R7 K91 ["searchAssetAsync"]
      245 CALL                             R6 1 1
      246 SETTABLEKS                       R6 R5 K91 ["searchAssetAsync"]
      248 SETTABLEKS                       R5 R4 K60 ["uploadImage"]
      250 SETTABLEKS                       R4 R3 K93 ["tools"]
      252 GETUPVAL                         R4 3
      253 LOADK                            R5 K94 ["convertImageDataToTempIdAsync"]
      254 CALL                             R4 1 1
      255 SETTABLEKS                       R4 R3 K94 ["convertImageDataToTempIdAsync"]
      257 GETUPVAL                         R4 3
      258 LOADK                            R5 K95 ["releaseTempIdAsync"]
      259 CALL                             R4 1 1
      260 SETTABLEKS                       R4 R3 K95 ["releaseTempIdAsync"]
      262 GETUPVAL                         R4 3
      263 LOADK                            R5 K96 ["getSettingsAsync"]
      264 CALL                             R4 1 1
      265 SETTABLEKS                       R4 R3 K96 ["getSettingsAsync"]
      267 GETUPVAL                         R4 3
      268 LOADK                            R5 K97 ["setSettingsAsync"]
      269 CALL                             R4 1 1
      270 SETTABLEKS                       R4 R3 K97 ["setSettingsAsync"]
      272 GETUPVAL                         R4 3
      273 LOADK                            R5 K98 ["getUserSettingsAsync"]
      274 CALL                             R4 1 1
      275 SETTABLEKS                       R4 R3 K98 ["getUserSettingsAsync"]
      277 GETUPVAL                         R4 3
      278 LOADK                            R5 K99 ["setUserSettingsAsync"]
      279 CALL                             R4 1 1
      280 SETTABLEKS                       R4 R3 K99 ["setUserSettingsAsync"]
      282 GETUPVAL                         R4 3
      283 LOADK                            R5 K100 ["getSecureSettingsAsync"]
      284 CALL                             R4 1 1
      285 SETTABLEKS                       R4 R3 K100 ["getSecureSettingsAsync"]
      287 GETUPVAL                         R4 3
      288 LOADK                            R5 K101 ["setSecureSettingsAsync"]
      289 CALL                             R4 1 1
      290 SETTABLEKS                       R4 R3 K101 ["setSecureSettingsAsync"]
      292 GETUPVAL                         R4 3
      293 LOADK                            R5 K102 ["base64EncodeAsync"]
      294 CALL                             R4 1 1
      295 SETTABLEKS                       R4 R3 K102 ["base64EncodeAsync"]
      297 GETUPVAL                         R4 3
      298 LOADK                            R5 K103 ["generatePKCEAsync"]
      299 CALL                             R4 1 1
      300 SETTABLEKS                       R4 R3 K103 ["generatePKCEAsync"]
      302 GETUPVAL                         R4 3
      303 LOADK                            R5 K104 ["startMCPAuthAsync"]
      304 CALL                             R4 1 1
      305 SETTABLEKS                       R4 R3 K104 ["startMCPAuthAsync"]
      307 GETUPVAL                         R4 3
      308 LOADK                            R5 K105 ["setupMCPServerAsync"]
      309 CALL                             R4 1 1
      310 SETTABLEKS                       R4 R3 K105 ["setupMCPServerAsync"]
      312 GETUPVAL                         R4 3
      313 LOADK                            R5 K106 ["getScopePermissionsAsync"]
      314 CALL                             R4 1 1
      315 SETTABLEKS                       R4 R3 K106 ["getScopePermissionsAsync"]
      317 GETUPVAL                         R4 3
      318 LOADK                            R5 K107 ["setScopePermissionsAsync"]
      319 CALL                             R4 1 1
      320 SETTABLEKS                       R4 R3 K107 ["setScopePermissionsAsync"]
      322 GETUPVAL                         R4 3
      323 LOADK                            R5 K108 ["getAvailableScopesAsync"]
      324 CALL                             R4 1 1
      325 SETTABLEKS                       R4 R3 K108 ["getAvailableScopesAsync"]
      327 GETUPVAL                         R4 3
      328 LOADK                            R5 K109 ["getScopeRiskLevelsAsync"]
      329 CALL                             R4 1 1
      330 SETTABLEKS                       R4 R3 K109 ["getScopeRiskLevelsAsync"]
      332 GETUPVAL                         R4 3
      333 LOADK                            R5 K110 ["getSelectedPresetAsync"]
      334 CALL                             R4 1 1
      335 SETTABLEKS                       R4 R3 K110 ["getSelectedPresetAsync"]
      337 GETUPVAL                         R4 3
      338 LOADK                            R5 K111 ["setSelectedPresetAsync"]
      339 CALL                             R4 1 1
      340 SETTABLEKS                       R4 R3 K111 ["setSelectedPresetAsync"]
      342 GETUPVAL                         R4 3
      343 LOADK                            R5 K112 ["startStopPlayAsync"]
      344 CALL                             R4 1 1
      345 SETTABLEKS                       R4 R3 K112 ["startStopPlayAsync"]
      347 DUPCLOSURE                       R4 K113 [PROTO_21]
      348 CAPTURE                          UPVAL U11
      349 SETTABLEKS                       R4 R3 K114 ["getLogHistory"]
      351 GETUPVAL                         R4 3
      352 LOADK                            R5 K115 ["subscribeOutput"]
      353 CALL                             R4 1 1
      354 SETTABLEKS                       R4 R3 K115 ["subscribeOutput"]
      356 GETUPVAL                         R4 3
      357 LOADK                            R5 K116 ["subscribeGameLoaded"]
      358 CALL                             R4 1 1
      359 SETTABLEKS                       R4 R3 K116 ["subscribeGameLoaded"]
      361 GETUPVAL                         R4 3
      362 LOADK                            R5 K117 ["subscribeGameStopped"]
      363 CALL                             R4 1 1
      364 SETTABLEKS                       R4 R3 K117 ["subscribeGameStopped"]
      366 GETUPVAL                         R4 3
      367 LOADK                            R5 K118 ["openFileDialogAsync"]
      368 CALL                             R4 1 1
      369 SETTABLEKS                       R4 R3 K118 ["openFileDialogAsync"]
      371 GETUPVAL                         R4 3
      372 LOADK                            R5 K119 ["importFileBinaryAsync"]
      373 CALL                             R4 1 1
      374 SETTABLEKS                       R4 R3 K119 ["importFileBinaryAsync"]
      376 DUPCLOSURE                       R4 K120 [PROTO_22]
      377 SETTABLEKS                       R4 R3 K121 ["printToStudioLogAsync"]
      379 DUPTABLE                         R4 K125 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      380 GETUPVAL                         R5 3
      381 LOADK                            R6 K126 ["quickConnect.fileExistsAsync"]
      382 CALL                             R5 1 1
      383 SETTABLEKS                       R5 R4 K122 ["fileExistsAsync"]
      385 GETUPVAL                         R5 3
      386 LOADK                            R6 K127 ["quickConnect.readFileAsync"]
      387 CALL                             R5 1 1
      388 SETTABLEKS                       R5 R4 K123 ["readFileAsync"]
      390 GETUPVAL                         R5 3
      391 LOADK                            R6 K128 ["quickConnect.modifyFileAsync"]
      392 CALL                             R5 1 1
      393 SETTABLEKS                       R5 R4 K124 ["modifyFileAsync"]
      395 SETTABLEKS                       R4 R3 K129 ["quickConnect"]
      397 DUPTABLE                         R4 K136 [{"getManifestAsync", "setManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      398 GETUPVAL                         R5 3
      399 LOADK                            R6 K137 ["userSkillAssets.getManifestAsync"]
      400 CALL                             R5 1 1
      401 SETTABLEKS                       R5 R4 K130 ["getManifestAsync"]
      403 GETUPVAL                         R5 3
      404 LOADK                            R6 K138 ["userSkillAssets.setManifestAsync"]
      405 CALL                             R5 1 1
      406 SETTABLEKS                       R5 R4 K131 ["setManifestAsync"]
      408 GETUPVAL                         R5 3
      409 LOADK                            R6 K139 ["userSkillAssets.fetchContentAsync"]
      410 CALL                             R5 1 1
      411 SETTABLEKS                       R5 R4 K132 ["fetchContentAsync"]
      413 GETUPVAL                         R5 3
      414 LOADK                            R6 K140 ["userSkillAssets.publishNewAsync"]
      415 CALL                             R5 1 1
      416 SETTABLEKS                       R5 R4 K133 ["publishNewAsync"]
      418 GETUPVAL                         R5 3
      419 LOADK                            R6 K141 ["userSkillAssets.publishUpdateAsync"]
      420 CALL                             R5 1 1
      421 SETTABLEKS                       R5 R4 K134 ["publishUpdateAsync"]
      423 GETUPVAL                         R5 3
      424 LOADK                            R6 K142 ["userSkillAssets.deleteAsync"]
      425 CALL                             R5 1 1
      426 SETTABLEKS                       R5 R4 K135 ["deleteAsync"]
      428 SETTABLEKS                       R4 R3 K143 ["userSkillAssets"]
      430 GETUPVAL                         R4 3
      431 LOADK                            R5 K144 ["getStudioPlayState"]
      432 CALL                             R4 1 1
      433 SETTABLEKS                       R4 R3 K144 ["getStudioPlayState"]
      435 GETUPVAL                         R4 3
      436 LOADK                            R5 K145 ["fetchSystemPromptAsync"]
      437 CALL                             R4 1 1
      438 SETTABLEKS                       R4 R3 K145 ["fetchSystemPromptAsync"]
      440 DUPCLOSURE                       R4 K146 [PROTO_23]
      441 SETTABLEKS                       R4 R3 K147 ["hasInternalPermission"]
      443 DUPCLOSURE                       R4 K148 [PROTO_24]
      444 CAPTURE                          UPVAL U12
      445 SETTABLEKS                       R4 R3 K149 ["getMockPrimGenBackendData"]
      447 GETUPVAL                         R4 3
      448 LOADK                            R5 K150 ["startMultiPlayerTest"]
      449 CALL                             R4 1 1
      450 SETTABLEKS                       R4 R3 K150 ["startMultiPlayerTest"]
      452 GETUPVAL                         R4 3
      453 LOADK                            R5 K151 ["stopMultiPlayerTest"]
      454 CALL                             R4 1 1
      455 SETTABLEKS                       R4 R3 K151 ["stopMultiPlayerTest"]
      457 GETUPVAL                         R4 3
      458 LOADK                            R5 K152 ["isInMultiPlayerTest"]
      459 CALL                             R4 1 1
      460 SETTABLEKS                       R4 R3 K152 ["isInMultiPlayerTest"]
      462 GETUPVAL                         R4 3
      463 LOADK                            R5 K153 ["getStopMultiPlayerTestResults"]
      464 CALL                             R4 1 1
      465 SETTABLEKS                       R4 R3 K154 ["subscribeStopMultiPlayerTestStateChanged"]
      467 GETUPVAL                         R4 3
      468 LOADK                            R5 K155 ["createMultiPlayersServer"]
      469 CALL                             R4 1 1
      470 SETTABLEKS                       R4 R3 K155 ["createMultiPlayersServer"]
      472 GETUPVAL                         R4 3
      473 LOADK                            R5 K156 ["createMultiPlayersClient"]
      474 CALL                             R4 1 1
      475 SETTABLEKS                       R4 R3 K156 ["createMultiPlayersClient"]
      477 GETUPVAL                         R4 3
      478 LOADK                            R5 K157 ["getExperimentFeatureEnabled"]
      479 CALL                             R4 1 1
      480 SETTABLEKS                       R4 R3 K157 ["getExperimentFeatureEnabled"]
      482 GETUPVAL                         R4 3
      483 LOADK                            R5 K158 ["getOnExperimentChangedSignal"]
      484 CALL                             R4 1 1
      485 SETTABLEKS                       R4 R3 K159 ["onceExperimentFeatureEnabled"]
      487 GETUPVAL                         R4 3
      488 LOADK                            R5 K160 ["getStudioState"]
      489 CALL                             R4 1 1
      490 SETTABLEKS                       R4 R3 K160 ["getStudioState"]
      492 MOVE                             R2 R3
      493 CLOSEUPVALS                      R2
      494 RETURN                           R2 1

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
       72 GETTABLEKS                       R12 R0 K21 ["Util"]
       74 GETTABLEKS                       R12 R12 K22 ["MultiPlayersConnection"]
       76 GETTABLEKS                       R12 R12 K23 ["MultiPlayerAgentTypes"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K15 [require]
       81 GETTABLEKS                       R13 R0 K16 ["Parent"]
       83 GETTABLEKS                       R13 R13 K24 ["ReactUtils"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K15 [require]
       88 GETTABLEKS                       R14 R0 K19 ["Guest"]
       90 GETTABLEKS                       R14 R14 K25 ["RecordingHandlers"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K15 [require]
       95 GETTABLEKS                       R15 R0 K26 ["Types"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K15 [require]
      100 GETTABLEKS                       R16 R0 K27 ["Flags"]
      102 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantAnimationGenTool"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R16 R12 K29 ["createUnimplemented"]
      107 DUPCLOSURE                       R17 K30 [PROTO_25]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R0
      121 MOVE                             R18 R17
      122 CALL                             R18 0 1
      123 DUPTABLE                         R19 K34 [{"new", "get", "set"}]
      124 SETTABLEKS                       R17 R19 K31 ["new"]
      126 NEWCLOSURE                       R20 P1
      127 CAPTURE                          REF R18
      128 SETTABLEKS                       R20 R19 K32 ["get"]
      130 NEWCLOSURE                       R20 P2
      131 CAPTURE                          REF R18
      132 SETTABLEKS                       R20 R19 K33 ["set"]
      134 CLOSEUPVALS                      R18
      135 RETURN                           R19 1
