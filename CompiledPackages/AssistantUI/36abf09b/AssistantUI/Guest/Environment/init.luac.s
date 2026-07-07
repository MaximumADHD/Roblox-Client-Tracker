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
      203 GETTABLEKS                       R6 R6 K82 ["FFlagAssistantAnimationGenTool"]
      205 JUMPIFNOT                        R6 ; [+12]
      206 DUPTABLE                         R5 K85 [{"generateAnimationAsync", "publishAnimationAsync"}]
      207 GETUPVAL                         R6 3
      208 LOADK                            R7 K83 ["generateAnimationAsync"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K83 ["generateAnimationAsync"]
      212 GETUPVAL                         R6 3
      213 LOADK                            R7 K84 ["publishAnimationAsync"]
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K84 ["publishAnimationAsync"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R5
      219 SETTABLEKS                       R5 R4 K58 ["animationGen"]
      221 DUPTABLE                         R5 K88 [{"getImageDataBase64Async", "captureScreenshot"}]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K86 ["getImageDataBase64Async"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K86 ["getImageDataBase64Async"]
      227 DUPCLOSURE                       R6 K89 [PROTO_20]
      228 CAPTURE                          UPVAL U10
      229 SETTABLEKS                       R6 R5 K87 ["captureScreenshot"]
      231 SETTABLEKS                       R5 R4 K59 ["screenCapture"]
      233 DUPTABLE                         R5 K93 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      234 GETUPVAL                         R6 3
      235 LOADK                            R7 K90 ["loadImageAsync"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K90 ["loadImageAsync"]
      239 GETUPVAL                         R6 3
      240 LOADK                            R7 K91 ["publishAssetAsync"]
      241 CALL                             R6 1 1
      242 SETTABLEKS                       R6 R5 K91 ["publishAssetAsync"]
      244 GETUPVAL                         R6 3
      245 LOADK                            R7 K92 ["searchAssetAsync"]
      246 CALL                             R6 1 1
      247 SETTABLEKS                       R6 R5 K92 ["searchAssetAsync"]
      249 SETTABLEKS                       R5 R4 K60 ["uploadImage"]
      251 SETTABLEKS                       R4 R3 K94 ["tools"]
      253 GETUPVAL                         R4 3
      254 LOADK                            R5 K95 ["convertImageDataToTempIdAsync"]
      255 CALL                             R4 1 1
      256 SETTABLEKS                       R4 R3 K95 ["convertImageDataToTempIdAsync"]
      258 GETUPVAL                         R4 3
      259 LOADK                            R5 K96 ["releaseTempIdAsync"]
      260 CALL                             R4 1 1
      261 SETTABLEKS                       R4 R3 K96 ["releaseTempIdAsync"]
      263 GETUPVAL                         R4 3
      264 LOADK                            R5 K97 ["getSettingsAsync"]
      265 CALL                             R4 1 1
      266 SETTABLEKS                       R4 R3 K97 ["getSettingsAsync"]
      268 GETUPVAL                         R4 3
      269 LOADK                            R5 K98 ["setSettingsAsync"]
      270 CALL                             R4 1 1
      271 SETTABLEKS                       R4 R3 K98 ["setSettingsAsync"]
      273 GETUPVAL                         R4 3
      274 LOADK                            R5 K99 ["getUserSettingsAsync"]
      275 CALL                             R4 1 1
      276 SETTABLEKS                       R4 R3 K99 ["getUserSettingsAsync"]
      278 GETUPVAL                         R4 3
      279 LOADK                            R5 K100 ["setUserSettingsAsync"]
      280 CALL                             R4 1 1
      281 SETTABLEKS                       R4 R3 K100 ["setUserSettingsAsync"]
      283 GETUPVAL                         R4 3
      284 LOADK                            R5 K101 ["getSecureSettingsAsync"]
      285 CALL                             R4 1 1
      286 SETTABLEKS                       R4 R3 K101 ["getSecureSettingsAsync"]
      288 GETUPVAL                         R4 3
      289 LOADK                            R5 K102 ["setSecureSettingsAsync"]
      290 CALL                             R4 1 1
      291 SETTABLEKS                       R4 R3 K102 ["setSecureSettingsAsync"]
      293 GETUPVAL                         R4 3
      294 LOADK                            R5 K103 ["base64EncodeAsync"]
      295 CALL                             R4 1 1
      296 SETTABLEKS                       R4 R3 K103 ["base64EncodeAsync"]
      298 GETUPVAL                         R4 3
      299 LOADK                            R5 K104 ["generatePKCEAsync"]
      300 CALL                             R4 1 1
      301 SETTABLEKS                       R4 R3 K104 ["generatePKCEAsync"]
      303 GETUPVAL                         R4 3
      304 LOADK                            R5 K105 ["startMCPAuthAsync"]
      305 CALL                             R4 1 1
      306 SETTABLEKS                       R4 R3 K105 ["startMCPAuthAsync"]
      308 GETUPVAL                         R4 3
      309 LOADK                            R5 K106 ["setupMCPServerAsync"]
      310 CALL                             R4 1 1
      311 SETTABLEKS                       R4 R3 K106 ["setupMCPServerAsync"]
      313 GETUPVAL                         R4 3
      314 LOADK                            R5 K107 ["getScopePermissionsAsync"]
      315 CALL                             R4 1 1
      316 SETTABLEKS                       R4 R3 K107 ["getScopePermissionsAsync"]
      318 GETUPVAL                         R4 3
      319 LOADK                            R5 K108 ["setScopePermissionsAsync"]
      320 CALL                             R4 1 1
      321 SETTABLEKS                       R4 R3 K108 ["setScopePermissionsAsync"]
      323 GETUPVAL                         R4 3
      324 LOADK                            R5 K109 ["getAvailableScopesAsync"]
      325 CALL                             R4 1 1
      326 SETTABLEKS                       R4 R3 K109 ["getAvailableScopesAsync"]
      328 GETUPVAL                         R4 3
      329 LOADK                            R5 K110 ["getScopeRiskLevelsAsync"]
      330 CALL                             R4 1 1
      331 SETTABLEKS                       R4 R3 K110 ["getScopeRiskLevelsAsync"]
      333 GETUPVAL                         R4 3
      334 LOADK                            R5 K111 ["getSelectedPresetAsync"]
      335 CALL                             R4 1 1
      336 SETTABLEKS                       R4 R3 K111 ["getSelectedPresetAsync"]
      338 GETUPVAL                         R4 3
      339 LOADK                            R5 K112 ["setSelectedPresetAsync"]
      340 CALL                             R4 1 1
      341 SETTABLEKS                       R4 R3 K112 ["setSelectedPresetAsync"]
      343 GETUPVAL                         R4 3
      344 LOADK                            R5 K113 ["startStopPlayAsync"]
      345 CALL                             R4 1 1
      346 SETTABLEKS                       R4 R3 K113 ["startStopPlayAsync"]
      348 DUPCLOSURE                       R4 K114 [PROTO_21]
      349 CAPTURE                          UPVAL U11
      350 SETTABLEKS                       R4 R3 K115 ["getLogHistory"]
      352 GETUPVAL                         R4 3
      353 LOADK                            R5 K116 ["subscribeOutput"]
      354 CALL                             R4 1 1
      355 SETTABLEKS                       R4 R3 K116 ["subscribeOutput"]
      357 GETUPVAL                         R4 3
      358 LOADK                            R5 K117 ["subscribeGameLoaded"]
      359 CALL                             R4 1 1
      360 SETTABLEKS                       R4 R3 K117 ["subscribeGameLoaded"]
      362 GETUPVAL                         R4 3
      363 LOADK                            R5 K118 ["subscribeGameStopped"]
      364 CALL                             R4 1 1
      365 SETTABLEKS                       R4 R3 K118 ["subscribeGameStopped"]
      367 GETUPVAL                         R4 3
      368 LOADK                            R5 K119 ["openFileDialogAsync"]
      369 CALL                             R4 1 1
      370 SETTABLEKS                       R4 R3 K119 ["openFileDialogAsync"]
      372 GETUPVAL                         R4 3
      373 LOADK                            R5 K120 ["importFileBinaryAsync"]
      374 CALL                             R4 1 1
      375 SETTABLEKS                       R4 R3 K120 ["importFileBinaryAsync"]
      377 DUPCLOSURE                       R4 K121 [PROTO_22]
      378 SETTABLEKS                       R4 R3 K122 ["printToStudioLogAsync"]
      380 DUPTABLE                         R4 K126 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      381 GETUPVAL                         R5 3
      382 LOADK                            R6 K127 ["quickConnect.fileExistsAsync"]
      383 CALL                             R5 1 1
      384 SETTABLEKS                       R5 R4 K123 ["fileExistsAsync"]
      386 GETUPVAL                         R5 3
      387 LOADK                            R6 K128 ["quickConnect.readFileAsync"]
      388 CALL                             R5 1 1
      389 SETTABLEKS                       R5 R4 K124 ["readFileAsync"]
      391 GETUPVAL                         R5 3
      392 LOADK                            R6 K129 ["quickConnect.modifyFileAsync"]
      393 CALL                             R5 1 1
      394 SETTABLEKS                       R5 R4 K125 ["modifyFileAsync"]
      396 SETTABLEKS                       R4 R3 K130 ["quickConnect"]
      398 DUPTABLE                         R4 K137 [{"getManifestAsync", "setManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      399 GETUPVAL                         R5 3
      400 LOADK                            R6 K138 ["userSkillAssets.getManifestAsync"]
      401 CALL                             R5 1 1
      402 SETTABLEKS                       R5 R4 K131 ["getManifestAsync"]
      404 GETUPVAL                         R5 3
      405 LOADK                            R6 K139 ["userSkillAssets.setManifestAsync"]
      406 CALL                             R5 1 1
      407 SETTABLEKS                       R5 R4 K132 ["setManifestAsync"]
      409 GETUPVAL                         R5 3
      410 LOADK                            R6 K140 ["userSkillAssets.fetchContentAsync"]
      411 CALL                             R5 1 1
      412 SETTABLEKS                       R5 R4 K133 ["fetchContentAsync"]
      414 GETUPVAL                         R5 3
      415 LOADK                            R6 K141 ["userSkillAssets.publishNewAsync"]
      416 CALL                             R5 1 1
      417 SETTABLEKS                       R5 R4 K134 ["publishNewAsync"]
      419 GETUPVAL                         R5 3
      420 LOADK                            R6 K142 ["userSkillAssets.publishUpdateAsync"]
      421 CALL                             R5 1 1
      422 SETTABLEKS                       R5 R4 K135 ["publishUpdateAsync"]
      424 GETUPVAL                         R5 3
      425 LOADK                            R6 K143 ["userSkillAssets.deleteAsync"]
      426 CALL                             R5 1 1
      427 SETTABLEKS                       R5 R4 K136 ["deleteAsync"]
      429 SETTABLEKS                       R4 R3 K144 ["userSkillAssets"]
      431 GETUPVAL                         R4 3
      432 LOADK                            R5 K145 ["getStudioPlayState"]
      433 CALL                             R4 1 1
      434 SETTABLEKS                       R4 R3 K145 ["getStudioPlayState"]
      436 GETUPVAL                         R4 3
      437 LOADK                            R5 K146 ["fetchSystemPromptAsync"]
      438 CALL                             R4 1 1
      439 SETTABLEKS                       R4 R3 K146 ["fetchSystemPromptAsync"]
      441 DUPCLOSURE                       R4 K147 [PROTO_23]
      442 SETTABLEKS                       R4 R3 K148 ["hasInternalPermission"]
      444 DUPCLOSURE                       R4 K149 [PROTO_24]
      445 CAPTURE                          UPVAL U12
      446 SETTABLEKS                       R4 R3 K150 ["getMockPrimGenBackendData"]
      448 GETUPVAL                         R4 3
      449 LOADK                            R5 K151 ["startMultiPlayerTest"]
      450 CALL                             R4 1 1
      451 SETTABLEKS                       R4 R3 K151 ["startMultiPlayerTest"]
      453 GETUPVAL                         R4 3
      454 LOADK                            R5 K152 ["stopMultiPlayerTest"]
      455 CALL                             R4 1 1
      456 SETTABLEKS                       R4 R3 K152 ["stopMultiPlayerTest"]
      458 GETUPVAL                         R4 3
      459 LOADK                            R5 K153 ["isInMultiPlayerTest"]
      460 CALL                             R4 1 1
      461 SETTABLEKS                       R4 R3 K153 ["isInMultiPlayerTest"]
      463 GETUPVAL                         R4 3
      464 LOADK                            R5 K154 ["getStopMultiPlayerTestResults"]
      465 CALL                             R4 1 1
      466 SETTABLEKS                       R4 R3 K155 ["subscribeStopMultiPlayerTestStateChanged"]
      468 GETUPVAL                         R4 3
      469 LOADK                            R5 K156 ["createMultiPlayersServer"]
      470 CALL                             R4 1 1
      471 SETTABLEKS                       R4 R3 K156 ["createMultiPlayersServer"]
      473 GETUPVAL                         R4 3
      474 LOADK                            R5 K157 ["createMultiPlayersClient"]
      475 CALL                             R4 1 1
      476 SETTABLEKS                       R4 R3 K157 ["createMultiPlayersClient"]
      478 GETUPVAL                         R4 3
      479 LOADK                            R5 K158 ["getExperimentFeatureEnabled"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K158 ["getExperimentFeatureEnabled"]
      483 GETUPVAL                         R4 3
      484 LOADK                            R5 K159 ["getOnExperimentChangedSignal"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K160 ["onceExperimentFeatureEnabled"]
      488 GETUPVAL                         R4 3
      489 LOADK                            R5 K161 ["getStudioState"]
      490 CALL                             R4 1 1
      491 SETTABLEKS                       R4 R3 K161 ["getStudioState"]
      493 MOVE                             R2 R3
      494 CLOSEUPVALS                      R2
      495 RETURN                           R2 1

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
       65 GETTABLEKS                       R11 R0 K19 ["Flags"]
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
       86 GETTABLEKS                       R14 R0 K16 ["Parent"]
       88 GETTABLEKS                       R14 R14 K25 ["ReactUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K15 [require]
       93 GETTABLEKS                       R15 R0 K20 ["Guest"]
       95 GETTABLEKS                       R15 R15 K26 ["RecordingHandlers"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K15 [require]
      100 GETTABLEKS                       R16 R0 K27 ["Types"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R13 K28 ["createUnimplemented"]
      105 DUPCLOSURE                       R17 K29 [PROTO_25]
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R0
      119 MOVE                             R18 R17
      120 CALL                             R18 0 1
      121 DUPTABLE                         R19 K33 [{"new", "get", "set"}]
      122 SETTABLEKS                       R17 R19 K30 ["new"]
      124 NEWCLOSURE                       R20 P1
      125 CAPTURE                          REF R18
      126 SETTABLEKS                       R20 R19 K31 ["get"]
      128 NEWCLOSURE                       R20 P2
      129 CAPTURE                          REF R18
      130 SETTABLEKS                       R20 R19 K32 ["set"]
      132 CLOSEUPVALS                      R18
      133 RETURN                           R19 1
