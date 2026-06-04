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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
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
       46 NEWCLOSURE                       R4 P7
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R4 R3 K20 ["getStudioSessionId"]
       50 GETUPVAL                         R4 4
       51 LOADK                            R5 K21 ["copyToClipboard"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K21 ["copyToClipboard"]
       55 DUPCLOSURE                       R4 K22 [PROTO_8]
       56 SETTABLEKS                       R4 R3 K23 ["getClassIcon"]
       58 GETTABLEKS                       R4 R0 K24 ["startRecording"]
       60 SETTABLEKS                       R4 R3 K24 ["startRecording"]
       62 GETTABLEKS                       R4 R0 K25 ["endRecording"]
       64 SETTABLEKS                       R4 R3 K25 ["endRecording"]
       66 DUPCLOSURE                       R4 K26 [PROTO_9]
       67 SETTABLEKS                       R4 R3 K27 ["getScriptSource"]
       69 GETUPVAL                         R4 4
       70 LOADK                            R5 K28 ["openScriptAsync"]
       71 CALL                             R4 1 1
       72 SETTABLEKS                       R4 R3 K28 ["openScriptAsync"]
       74 DUPTABLE                         R4 K32 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       75 DUPCLOSURE                       R5 K33 [PROTO_10]
       76 CAPTURE                          UPVAL U1
       77 SETTABLEKS                       R5 R4 K29 ["createWebStreamClient"]
       79 DUPCLOSURE                       R5 K34 [PROTO_11]
       80 CAPTURE                          UPVAL U1
       81 SETTABLEKS                       R5 R4 K30 ["requestAsync"]
       83 GETUPVAL                         R5 4
       84 LOADK                            R6 K31 ["openUrl"]
       85 CALL                             R5 1 1
       86 SETTABLEKS                       R5 R4 K31 ["openUrl"]
       88 SETTABLEKS                       R4 R3 K35 ["http"]
       90 DUPTABLE                         R4 K38 [{"encodeAsync", "decodeAsync"}]
       91 DUPCLOSURE                       R5 K39 [PROTO_12]
       92 CAPTURE                          UPVAL U1
       93 SETTABLEKS                       R5 R4 K36 ["encodeAsync"]
       95 DUPCLOSURE                       R5 K40 [PROTO_13]
       96 CAPTURE                          UPVAL U1
       97 SETTABLEKS                       R5 R4 K37 ["decodeAsync"]
       99 SETTABLEKS                       R4 R3 K41 ["json"]
      101 DUPTABLE                         R4 K44 [{"get", "set"}]
      102 DUPCLOSURE                       R5 K45 [PROTO_14]
      103 SETTABLEKS                       R5 R4 K42 ["get"]
      105 DUPCLOSURE                       R5 K46 [PROTO_15]
      106 SETTABLEKS                       R5 R4 K43 ["set"]
      108 SETTABLEKS                       R4 R3 K47 ["selection"]
      110 DUPTABLE                         R4 K51 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync"}]
      111 GETUPVAL                         R5 4
      112 LOADK                            R6 K48 ["getUniqueId"]
      113 CALL                             R5 1 1
      114 SETTABLEKS                       R5 R4 K48 ["getUniqueId"]
      116 GETUPVAL                         R5 4
      117 LOADK                            R6 K49 ["getInstanceFromUniqueId"]
      118 CALL                             R5 1 1
      119 SETTABLEKS                       R5 R4 K49 ["getInstanceFromUniqueId"]
      121 GETUPVAL                         R5 4
      122 LOADK                            R6 K50 ["pickInstanceAsync"]
      123 CALL                             R5 1 1
      124 SETTABLEKS                       R5 R4 K50 ["pickInstanceAsync"]
      126 SETTABLEKS                       R4 R3 K52 ["instances"]
      128 DUPTABLE                         R4 K61 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "screenCapture", "uploadImage"}]
      129 DUPTABLE                         R5 K64 [{"loadCode", "stopCode"}]
      130 GETUPVAL                         R6 4
      131 LOADK                            R7 K62 ["loadCode"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K62 ["loadCode"]
      135 GETUPVAL                         R6 4
      136 LOADK                            R7 K63 ["stopCode"]
      137 CALL                             R6 1 1
      138 SETTABLEKS                       R6 R5 K63 ["stopCode"]
      140 SETTABLEKS                       R5 R4 K53 ["executeLuau"]
      142 DUPTABLE                         R5 K67 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      143 DUPCLOSURE                       R6 K68 [PROTO_16]
      144 SETTABLEKS                       R6 R5 K65 ["updateScriptSourceAsync"]
      146 DUPCLOSURE                       R6 K69 [PROTO_17]
      147 SETTABLEKS                       R6 R5 K66 ["applyScriptSourceDirectly"]
      149 SETTABLEKS                       R5 R4 K54 ["multiEdit"]
      151 DUPTABLE                         R5 K72 [{"getFreeModelsAsync", "loadAssetAsync"}]
      152 NEWCLOSURE                       R6 P18
      153 CAPTURE                          REF R2
      154 CAPTURE                          UPVAL U6
      155 SETTABLEKS                       R6 R5 K70 ["getFreeModelsAsync"]
      157 GETUPVAL                         R6 7
      158 GETTABLEKS                       R6 R6 K73 ["getStandardHandler"]
      160 GETUPVAL                         R7 8
      161 CALL                             R6 1 1
      162 SETTABLEKS                       R6 R5 K71 ["loadAssetAsync"]
      164 SETTABLEKS                       R5 R4 K55 ["marketplaceInsertion"]
      166 DUPTABLE                         R5 K76 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      167 GETUPVAL                         R6 4
      168 LOADK                            R7 K74 ["generateMaterialVariantsAsync"]
      169 CALL                             R6 1 1
      170 SETTABLEKS                       R6 R5 K74 ["generateMaterialVariantsAsync"]
      172 GETUPVAL                         R6 4
      173 LOADK                            R7 K75 ["uploadMaterialsAsync"]
      174 CALL                             R6 1 1
      175 SETTABLEKS                       R6 R5 K75 ["uploadMaterialsAsync"]
      177 SETTABLEKS                       R5 R4 K56 ["materialGen"]
      179 DUPTABLE                         R5 K79 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync"}]
      180 DUPCLOSURE                       R6 K80 [PROTO_19]
      181 CAPTURE                          UPVAL U9
      182 SETTABLEKS                       R6 R5 K77 ["generateModelAsync"]
      184 GETUPVAL                         R6 4
      185 LOADK                            R7 K78 ["publishModelAsync"]
      186 CALL                             R6 1 1
      187 SETTABLEKS                       R6 R5 K78 ["publishModelAsync"]
      189 GETUPVAL                         R6 7
      190 GETTABLEKS                       R6 R6 K73 ["getStandardHandler"]
      192 GETUPVAL                         R7 8
      193 CALL                             R6 1 1
      194 SETTABLEKS                       R6 R5 K71 ["loadAssetAsync"]
      196 SETTABLEKS                       R5 R4 K57 ["meshGen"]
      198 GETUPVAL                         R6 10
      199 CALL                             R6 0 1
      200 JUMPIFNOT                        R6 ; [+12]
      201 DUPTABLE                         R5 K83 [{"generateAnimationAsync", "publishAnimationAsync"}]
      202 GETUPVAL                         R6 4
      203 LOADK                            R7 K81 ["generateAnimationAsync"]
      204 CALL                             R6 1 1
      205 SETTABLEKS                       R6 R5 K81 ["generateAnimationAsync"]
      207 GETUPVAL                         R6 4
      208 LOADK                            R7 K82 ["publishAnimationAsync"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K82 ["publishAnimationAsync"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R5
      214 SETTABLEKS                       R5 R4 K58 ["animationGen"]
      216 DUPTABLE                         R5 K86 [{"getImageDataBase64Async", "captureScreenshot"}]
      217 GETUPVAL                         R6 4
      218 LOADK                            R7 K84 ["getImageDataBase64Async"]
      219 CALL                             R6 1 1
      220 SETTABLEKS                       R6 R5 K84 ["getImageDataBase64Async"]
      222 DUPCLOSURE                       R6 K87 [PROTO_20]
      223 CAPTURE                          UPVAL U11
      224 SETTABLEKS                       R6 R5 K85 ["captureScreenshot"]
      226 SETTABLEKS                       R5 R4 K59 ["screenCapture"]
      228 DUPTABLE                         R5 K91 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      229 GETUPVAL                         R6 4
      230 LOADK                            R7 K88 ["loadImageAsync"]
      231 CALL                             R6 1 1
      232 SETTABLEKS                       R6 R5 K88 ["loadImageAsync"]
      234 GETUPVAL                         R6 4
      235 LOADK                            R7 K89 ["publishAssetAsync"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K89 ["publishAssetAsync"]
      239 GETUPVAL                         R6 4
      240 LOADK                            R7 K90 ["searchAssetAsync"]
      241 CALL                             R6 1 1
      242 SETTABLEKS                       R6 R5 K90 ["searchAssetAsync"]
      244 SETTABLEKS                       R5 R4 K60 ["uploadImage"]
      246 SETTABLEKS                       R4 R3 K92 ["tools"]
      248 GETUPVAL                         R4 4
      249 LOADK                            R5 K93 ["convertImageDataToTempIdAsync"]
      250 CALL                             R4 1 1
      251 SETTABLEKS                       R4 R3 K93 ["convertImageDataToTempIdAsync"]
      253 GETUPVAL                         R4 4
      254 LOADK                            R5 K94 ["releaseTempIdAsync"]
      255 CALL                             R4 1 1
      256 SETTABLEKS                       R4 R3 K94 ["releaseTempIdAsync"]
      258 GETUPVAL                         R4 4
      259 LOADK                            R5 K95 ["getSettingsAsync"]
      260 CALL                             R4 1 1
      261 SETTABLEKS                       R4 R3 K95 ["getSettingsAsync"]
      263 GETUPVAL                         R4 4
      264 LOADK                            R5 K96 ["setSettingsAsync"]
      265 CALL                             R4 1 1
      266 SETTABLEKS                       R4 R3 K96 ["setSettingsAsync"]
      268 GETUPVAL                         R4 4
      269 LOADK                            R5 K97 ["getUserSettingsAsync"]
      270 CALL                             R4 1 1
      271 SETTABLEKS                       R4 R3 K97 ["getUserSettingsAsync"]
      273 GETUPVAL                         R4 4
      274 LOADK                            R5 K98 ["setUserSettingsAsync"]
      275 CALL                             R4 1 1
      276 SETTABLEKS                       R4 R3 K98 ["setUserSettingsAsync"]
      278 GETUPVAL                         R4 4
      279 LOADK                            R5 K99 ["getSecureSettingsAsync"]
      280 CALL                             R4 1 1
      281 SETTABLEKS                       R4 R3 K99 ["getSecureSettingsAsync"]
      283 GETUPVAL                         R4 4
      284 LOADK                            R5 K100 ["setSecureSettingsAsync"]
      285 CALL                             R4 1 1
      286 SETTABLEKS                       R4 R3 K100 ["setSecureSettingsAsync"]
      288 GETUPVAL                         R4 4
      289 LOADK                            R5 K101 ["base64EncodeAsync"]
      290 CALL                             R4 1 1
      291 SETTABLEKS                       R4 R3 K101 ["base64EncodeAsync"]
      293 GETUPVAL                         R4 4
      294 LOADK                            R5 K102 ["generatePKCEAsync"]
      295 CALL                             R4 1 1
      296 SETTABLEKS                       R4 R3 K102 ["generatePKCEAsync"]
      298 GETUPVAL                         R4 4
      299 LOADK                            R5 K103 ["startMCPAuthAsync"]
      300 CALL                             R4 1 1
      301 SETTABLEKS                       R4 R3 K103 ["startMCPAuthAsync"]
      303 GETUPVAL                         R4 4
      304 LOADK                            R5 K104 ["setupMCPServerAsync"]
      305 CALL                             R4 1 1
      306 SETTABLEKS                       R4 R3 K104 ["setupMCPServerAsync"]
      308 GETUPVAL                         R4 4
      309 LOADK                            R5 K105 ["getScopePermissionsAsync"]
      310 CALL                             R4 1 1
      311 SETTABLEKS                       R4 R3 K105 ["getScopePermissionsAsync"]
      313 GETUPVAL                         R4 4
      314 LOADK                            R5 K106 ["setScopePermissionsAsync"]
      315 CALL                             R4 1 1
      316 SETTABLEKS                       R4 R3 K106 ["setScopePermissionsAsync"]
      318 GETUPVAL                         R4 4
      319 LOADK                            R5 K107 ["getAvailableScopesAsync"]
      320 CALL                             R4 1 1
      321 SETTABLEKS                       R4 R3 K107 ["getAvailableScopesAsync"]
      323 GETUPVAL                         R4 4
      324 LOADK                            R5 K108 ["getScopeRiskLevelsAsync"]
      325 CALL                             R4 1 1
      326 SETTABLEKS                       R4 R3 K108 ["getScopeRiskLevelsAsync"]
      328 GETUPVAL                         R4 4
      329 LOADK                            R5 K109 ["getSelectedPresetAsync"]
      330 CALL                             R4 1 1
      331 SETTABLEKS                       R4 R3 K109 ["getSelectedPresetAsync"]
      333 GETUPVAL                         R4 4
      334 LOADK                            R5 K110 ["setSelectedPresetAsync"]
      335 CALL                             R4 1 1
      336 SETTABLEKS                       R4 R3 K110 ["setSelectedPresetAsync"]
      338 GETUPVAL                         R4 4
      339 LOADK                            R5 K111 ["startStopPlayAsync"]
      340 CALL                             R4 1 1
      341 SETTABLEKS                       R4 R3 K111 ["startStopPlayAsync"]
      343 DUPCLOSURE                       R4 K112 [PROTO_21]
      344 CAPTURE                          UPVAL U12
      345 SETTABLEKS                       R4 R3 K113 ["getLogHistory"]
      347 GETUPVAL                         R4 4
      348 LOADK                            R5 K114 ["subscribeOutput"]
      349 CALL                             R4 1 1
      350 SETTABLEKS                       R4 R3 K114 ["subscribeOutput"]
      352 GETUPVAL                         R4 4
      353 LOADK                            R5 K115 ["subscribeGameLoaded"]
      354 CALL                             R4 1 1
      355 SETTABLEKS                       R4 R3 K115 ["subscribeGameLoaded"]
      357 GETUPVAL                         R4 4
      358 LOADK                            R5 K116 ["subscribeGameStopped"]
      359 CALL                             R4 1 1
      360 SETTABLEKS                       R4 R3 K116 ["subscribeGameStopped"]
      362 GETUPVAL                         R4 4
      363 LOADK                            R5 K117 ["openFileDialogAsync"]
      364 CALL                             R4 1 1
      365 SETTABLEKS                       R4 R3 K117 ["openFileDialogAsync"]
      367 GETUPVAL                         R4 4
      368 LOADK                            R5 K118 ["importFileBinaryAsync"]
      369 CALL                             R4 1 1
      370 SETTABLEKS                       R4 R3 K118 ["importFileBinaryAsync"]
      372 DUPCLOSURE                       R4 K119 [PROTO_22]
      373 SETTABLEKS                       R4 R3 K120 ["printToStudioLogAsync"]
      375 DUPTABLE                         R4 K124 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      376 GETUPVAL                         R5 4
      377 LOADK                            R6 K125 ["quickConnect.fileExistsAsync"]
      378 CALL                             R5 1 1
      379 SETTABLEKS                       R5 R4 K121 ["fileExistsAsync"]
      381 GETUPVAL                         R5 4
      382 LOADK                            R6 K126 ["quickConnect.readFileAsync"]
      383 CALL                             R5 1 1
      384 SETTABLEKS                       R5 R4 K122 ["readFileAsync"]
      386 GETUPVAL                         R5 4
      387 LOADK                            R6 K127 ["quickConnect.modifyFileAsync"]
      388 CALL                             R5 1 1
      389 SETTABLEKS                       R5 R4 K123 ["modifyFileAsync"]
      391 SETTABLEKS                       R4 R3 K128 ["quickConnect"]
      393 DUPTABLE                         R4 K133 [{"listAsync", "readFileAsync", "writeFileAsync", "deleteFileAsync", "openFolderAsync"}]
      394 GETUPVAL                         R5 4
      395 LOADK                            R6 K134 ["userSkills.listAsync"]
      396 CALL                             R5 1 1
      397 SETTABLEKS                       R5 R4 K129 ["listAsync"]
      399 GETUPVAL                         R5 4
      400 LOADK                            R6 K135 ["userSkills.readFileAsync"]
      401 CALL                             R5 1 1
      402 SETTABLEKS                       R5 R4 K122 ["readFileAsync"]
      404 GETUPVAL                         R5 4
      405 LOADK                            R6 K136 ["userSkills.writeFileAsync"]
      406 CALL                             R5 1 1
      407 SETTABLEKS                       R5 R4 K130 ["writeFileAsync"]
      409 GETUPVAL                         R5 4
      410 LOADK                            R6 K137 ["userSkills.deleteFileAsync"]
      411 CALL                             R5 1 1
      412 SETTABLEKS                       R5 R4 K131 ["deleteFileAsync"]
      414 GETUPVAL                         R5 4
      415 LOADK                            R6 K138 ["userSkills.openFolderAsync"]
      416 CALL                             R5 1 1
      417 SETTABLEKS                       R5 R4 K132 ["openFolderAsync"]
      419 SETTABLEKS                       R4 R3 K139 ["userSkills"]
      421 GETUPVAL                         R4 4
      422 LOADK                            R5 K140 ["getStudioPlayState"]
      423 CALL                             R4 1 1
      424 SETTABLEKS                       R4 R3 K140 ["getStudioPlayState"]
      426 GETUPVAL                         R4 4
      427 LOADK                            R5 K141 ["fetchSystemPromptAsync"]
      428 CALL                             R4 1 1
      429 SETTABLEKS                       R4 R3 K141 ["fetchSystemPromptAsync"]
      431 DUPCLOSURE                       R4 K142 [PROTO_23]
      432 SETTABLEKS                       R4 R3 K143 ["hasInternalPermission"]
      434 DUPCLOSURE                       R4 K144 [PROTO_24]
      435 CAPTURE                          UPVAL U13
      436 SETTABLEKS                       R4 R3 K145 ["getMockPrimGenBackendData"]
      438 GETUPVAL                         R4 4
      439 LOADK                            R5 K146 ["getExperimentFeatureEnabled"]
      440 CALL                             R4 1 1
      441 SETTABLEKS                       R4 R3 K146 ["getExperimentFeatureEnabled"]
      443 GETUPVAL                         R4 4
      444 LOADK                            R5 K147 ["getOnExperimentChangedSignal"]
      445 CALL                             R4 1 1
      446 SETTABLEKS                       R4 R3 K148 ["onceExperimentFeatureEnabled"]
      448 MOVE                             R2 R3
      449 CLOSEUPVALS                      R2
      450 RETURN                           R2 1

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
       77 GETTABLEKS                       R13 R0 K17 ["Parent"]
       79 GETTABLEKS                       R13 R13 K22 ["ReactUtils"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K15 [require]
       84 GETTABLEKS                       R14 R0 K20 ["Guest"]
       86 GETTABLEKS                       R14 R14 K23 ["RecordingHandlers"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K15 [require]
       91 GETTABLEKS                       R15 R0 K24 ["Types"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K15 [require]
       96 GETTABLEKS                       R16 R0 K25 ["Flags"]
       98 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantAnimationGenTool"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R16 R12 K27 ["createUnimplemented"]
      103 DUPCLOSURE                       R17 K28 [PROTO_25]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R0
      118 MOVE                             R18 R17
      119 CALL                             R18 0 1
      120 DUPTABLE                         R19 K32 [{"new", "get", "set"}]
      121 SETTABLEKS                       R17 R19 K29 ["new"]
      123 NEWCLOSURE                       R20 P1
      124 CAPTURE                          REF R18
      125 SETTABLEKS                       R20 R19 K30 ["get"]
      127 NEWCLOSURE                       R20 P2
      128 CAPTURE                          REF R18
      129 SETTABLEKS                       R20 R19 K31 ["set"]
      131 CLOSEUPVALS                      R18
      132 RETURN                           R19 1
