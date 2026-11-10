PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
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
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 0
        5 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R1 0
       10 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       12 LOADK                            R2 K1 ["Failed to generate studio session ID"]
       13 GETIMPORT                        R0 K3 [assert]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 RETURN                           R0 1

PROTO_9:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["JSONEncode"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_19:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["GenerateModelAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CreateMeshPartAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_24:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Texture"]
        9 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["ColorMap"]
        9 RETURN                           R1 1

PROTO_26:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_27:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["VideoFrame"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Video"]
        9 GETIMPORT                        R2 K8 [UDim2.fromScale]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K9 ["Size"]
       16 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_31:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_32:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Util"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenMockData"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["MockFerrisWheelResult"]
       12 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 NEWTABLE                         R3 128 0
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K1 ["EventLogger"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["new"]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K3 ["Destroying"]
       17 LOADK                            R4 K4 [""]
       18 SETTABLEKS                       R4 R3 K5 ["apisUrl"]
       20 DUPCLOSURE                       R4 K6 [PROTO_0]
       21 SETTABLEKS                       R4 R3 K7 ["isRobloxScriptSecurity"]
       23 DUPCLOSURE                       R4 K8 [PROTO_1]
       24 SETTABLEKS                       R4 R3 K9 ["isCompactionExperimentEnabled"]
       26 DUPCLOSURE                       R4 K10 [PROTO_2]
       27 SETTABLEKS                       R4 R3 K11 ["getEngineFeature"]
       29 DUPCLOSURE                       R4 K12 [PROTO_3]
       30 SETTABLEKS                       R4 R3 K13 ["hasUI"]
       32 GETUPVAL                         R4 3
       33 LOADK                            R5 K14 ["getNetworkingOLD"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K14 ["getNetworkingOLD"]
       37 DUPCLOSURE                       R4 K15 [PROTO_4]
       38 SETTABLEKS                       R4 R3 K16 ["getSystemPrompt"]
       40 DUPCLOSURE                       R4 K17 [PROTO_5]
       41 CAPTURE                          UPVAL U4
       42 SETTABLEKS                       R4 R3 K18 ["getUserId"]
       44 DUPCLOSURE                       R4 K19 [PROTO_6]
       45 SETTABLEKS                       R4 R3 K20 ["getGameId"]
       47 DUPCLOSURE                       R4 K21 [PROTO_7]
       48 SETTABLEKS                       R4 R3 K22 ["getPlaceSessionInfoAsync"]
       50 NEWCLOSURE                       R4 P8
       51 CAPTURE                          REF R1
       52 CAPTURE                          UPVAL U5
       53 SETTABLEKS                       R4 R3 K23 ["getStudioSessionId"]
       55 NEWCLOSURE                       R4 P9
       56 CAPTURE                          REF R1
       57 SETTABLEKS                       R4 R3 K24 ["resetStudioSessionId"]
       59 GETUPVAL                         R4 3
       60 LOADK                            R5 K25 ["copyToClipboard"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K25 ["copyToClipboard"]
       64 GETUPVAL                         R4 3
       65 LOADK                            R5 K26 ["openAssetManager"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K26 ["openAssetManager"]
       69 GETUPVAL                         R4 3
       70 LOADK                            R5 K27 ["browseAssetsAsync"]
       71 CALL                             R4 1 1
       72 SETTABLEKS                       R4 R3 K27 ["browseAssetsAsync"]
       74 DUPCLOSURE                       R4 K28 [PROTO_10]
       75 SETTABLEKS                       R4 R3 K29 ["getClassIcon"]
       77 GETTABLEKS                       R4 R0 K30 ["startRecording"]
       79 SETTABLEKS                       R4 R3 K30 ["startRecording"]
       81 GETTABLEKS                       R4 R0 K31 ["endRecording"]
       83 SETTABLEKS                       R4 R3 K31 ["endRecording"]
       85 DUPCLOSURE                       R4 K32 [PROTO_11]
       86 SETTABLEKS                       R4 R3 K33 ["getScriptSource"]
       88 GETUPVAL                         R4 3
       89 LOADK                            R5 K34 ["openScriptAsync"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K34 ["openScriptAsync"]
       93 DUPTABLE                         R4 K38 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       94 DUPCLOSURE                       R5 K39 [PROTO_12]
       95 CAPTURE                          UPVAL U5
       96 SETTABLEKS                       R5 R4 K35 ["createWebStreamClient"]
       98 DUPCLOSURE                       R5 K40 [PROTO_13]
       99 CAPTURE                          UPVAL U5
      100 SETTABLEKS                       R5 R4 K36 ["requestAsync"]
      102 GETUPVAL                         R5 3
      103 LOADK                            R6 K37 ["openUrl"]
      104 CALL                             R5 1 1
      105 SETTABLEKS                       R5 R4 K37 ["openUrl"]
      107 SETTABLEKS                       R4 R3 K41 ["http"]
      109 DUPTABLE                         R4 K44 [{"encodeAsync", "decodeAsync"}]
      110 DUPCLOSURE                       R5 K45 [PROTO_14]
      111 CAPTURE                          UPVAL U5
      112 SETTABLEKS                       R5 R4 K42 ["encodeAsync"]
      114 DUPCLOSURE                       R5 K46 [PROTO_15]
      115 CAPTURE                          UPVAL U5
      116 SETTABLEKS                       R5 R4 K43 ["decodeAsync"]
      118 SETTABLEKS                       R4 R3 K47 ["json"]
      120 DUPTABLE                         R4 K50 [{"get", "set"}]
      121 DUPCLOSURE                       R5 K51 [PROTO_16]
      122 SETTABLEKS                       R5 R4 K48 ["get"]
      124 DUPCLOSURE                       R5 K52 [PROTO_17]
      125 SETTABLEKS                       R5 R4 K49 ["set"]
      127 SETTABLEKS                       R4 R3 K53 ["selection"]
      129 DUPTABLE                         R4 K58 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync", "resolveInstanceByPathAsync"}]
      130 GETUPVAL                         R5 3
      131 LOADK                            R6 K54 ["getUniqueId"]
      132 CALL                             R5 1 1
      133 SETTABLEKS                       R5 R4 K54 ["getUniqueId"]
      135 GETUPVAL                         R5 3
      136 LOADK                            R6 K55 ["getInstanceFromUniqueId"]
      137 CALL                             R5 1 1
      138 SETTABLEKS                       R5 R4 K55 ["getInstanceFromUniqueId"]
      140 GETUPVAL                         R5 3
      141 LOADK                            R6 K56 ["pickInstanceAsync"]
      142 CALL                             R5 1 1
      143 SETTABLEKS                       R5 R4 K56 ["pickInstanceAsync"]
      145 GETUPVAL                         R5 3
      146 LOADK                            R6 K57 ["resolveInstanceByPathAsync"]
      147 CALL                             R5 1 1
      148 SETTABLEKS                       R5 R4 K57 ["resolveInstanceByPathAsync"]
      150 SETTABLEKS                       R4 R3 K59 ["instances"]
      152 DUPTABLE                         R4 K75 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "layoutGen", "animationGen", "avatarAutoSetup", "avatarGen", "screenCapture", "pluginCapture", "uploadImage", "assetSearch", "listPlace", "assetInsert"}]
      153 DUPTABLE                         R5 K78 [{"loadCode", "stopCode"}]
      154 GETUPVAL                         R6 3
      155 LOADK                            R7 K76 ["loadCode"]
      156 CALL                             R6 1 1
      157 SETTABLEKS                       R6 R5 K76 ["loadCode"]
      159 GETUPVAL                         R6 3
      160 LOADK                            R7 K77 ["stopCode"]
      161 CALL                             R6 1 1
      162 SETTABLEKS                       R6 R5 K77 ["stopCode"]
      164 SETTABLEKS                       R5 R4 K60 ["executeLuau"]
      166 DUPTABLE                         R5 K81 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      167 DUPCLOSURE                       R6 K82 [PROTO_18]
      168 SETTABLEKS                       R6 R5 K79 ["updateScriptSourceAsync"]
      170 DUPCLOSURE                       R6 K83 [PROTO_19]
      171 SETTABLEKS                       R6 R5 K80 ["applyScriptSourceDirectly"]
      173 SETTABLEKS                       R5 R4 K61 ["multiEdit"]
      175 DUPTABLE                         R5 K86 [{"getFreeModelsAsync", "loadAssetAsync"}]
      176 NEWCLOSURE                       R6 P20
      177 CAPTURE                          REF R2
      178 CAPTURE                          UPVAL U6
      179 SETTABLEKS                       R6 R5 K84 ["getFreeModelsAsync"]
      181 GETUPVAL                         R6 7
      182 GETTABLEKS                       R6 R6 K87 ["getStandardHandler"]
      184 GETUPVAL                         R7 8
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K85 ["loadAssetAsync"]
      188 SETTABLEKS                       R5 R4 K62 ["marketplaceInsertion"]
      190 DUPTABLE                         R5 K90 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      191 GETUPVAL                         R6 3
      192 LOADK                            R7 K88 ["generateMaterialVariantsAsync"]
      193 CALL                             R6 1 1
      194 SETTABLEKS                       R6 R5 K88 ["generateMaterialVariantsAsync"]
      196 GETUPVAL                         R6 3
      197 LOADK                            R7 K89 ["uploadMaterialsAsync"]
      198 CALL                             R6 1 1
      199 SETTABLEKS                       R6 R5 K89 ["uploadMaterialsAsync"]
      201 SETTABLEKS                       R5 R4 K63 ["materialGen"]
      203 DUPTABLE                         R5 K97 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      204 DUPCLOSURE                       R6 K98 [PROTO_21]
      205 CAPTURE                          UPVAL U9
      206 SETTABLEKS                       R6 R5 K91 ["generateModelAsync"]
      208 GETUPVAL                         R6 3
      209 LOADK                            R7 K92 ["publishModelAsync"]
      210 CALL                             R6 1 1
      211 SETTABLEKS                       R6 R5 K92 ["publishModelAsync"]
      213 GETUPVAL                         R6 7
      214 GETTABLEKS                       R6 R6 K87 ["getStandardHandler"]
      216 GETUPVAL                         R7 8
      217 CALL                             R6 1 1
      218 SETTABLEKS                       R6 R5 K85 ["loadAssetAsync"]
      220 GETUPVAL                         R6 3
      221 LOADK                            R7 K93 ["activateScaleTool"]
      222 CALL                             R6 1 1
      223 SETTABLEKS                       R6 R5 K93 ["activateScaleTool"]
      225 GETUPVAL                         R6 3
      226 LOADK                            R7 K94 ["exportInstanceToGlbAsync"]
      227 CALL                             R6 1 1
      228 SETTABLEKS                       R6 R5 K94 ["exportInstanceToGlbAsync"]
      230 GETUPVAL                         R6 3
      231 LOADK                            R7 K95 ["exportMeshToGlbAsync"]
      232 CALL                             R6 1 1
      233 SETTABLEKS                       R6 R5 K95 ["exportMeshToGlbAsync"]
      235 GETUPVAL                         R6 3
      236 LOADK                            R7 K96 ["loadModelFromUrlAsync"]
      237 CALL                             R6 1 1
      238 SETTABLEKS                       R6 R5 K96 ["loadModelFromUrlAsync"]
      240 SETTABLEKS                       R5 R4 K64 ["meshGen"]
      242 DUPTABLE                         R5 K99 [{"activateScaleTool"}]
      243 GETUPVAL                         R6 3
      244 LOADK                            R7 K93 ["activateScaleTool"]
      245 CALL                             R6 1 1
      246 SETTABLEKS                       R6 R5 K93 ["activateScaleTool"]
      248 SETTABLEKS                       R5 R4 K65 ["layoutGen"]
      250 GETUPVAL                         R6 10
      251 CALL                             R6 0 1
      252 JUMPIFNOT                        R6 ; [+7]
      253 DUPTABLE                         R5 K101 [{"generateAnimationAsync"}]
      254 GETUPVAL                         R6 3
      255 LOADK                            R7 K100 ["generateAnimationAsync"]
      256 CALL                             R6 1 1
      257 SETTABLEKS                       R6 R5 K100 ["generateAnimationAsync"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R5
      261 SETTABLEKS                       R5 R4 K66 ["animationGen"]
      263 GETUPVAL                         R6 11
      264 GETTABLEKS                       R6 R6 K102 ["FFlagAssistantAvatarAutoSetupTool"]
      266 JUMPIFNOT                        R6 ; [+17]
      267 DUPTABLE                         R5 K106 [{"autoSetupAsync", "cancelAutoSetup", "getClassificationPlan"}]
      268 GETUPVAL                         R6 3
      269 LOADK                            R7 K103 ["autoSetupAsync"]
      270 CALL                             R6 1 1
      271 SETTABLEKS                       R6 R5 K103 ["autoSetupAsync"]
      273 GETUPVAL                         R6 3
      274 LOADK                            R7 K104 ["cancelAutoSetup"]
      275 CALL                             R6 1 1
      276 SETTABLEKS                       R6 R5 K104 ["cancelAutoSetup"]
      278 GETUPVAL                         R6 3
      279 LOADK                            R7 K105 ["getClassificationPlan"]
      280 CALL                             R6 1 1
      281 SETTABLEKS                       R6 R5 K105 ["getClassificationPlan"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R5
      285 SETTABLEKS                       R5 R4 K67 ["avatarAutoSetup"]
      287 GETUPVAL                         R6 11
      288 GETTABLEKS                       R6 R6 K107 ["FFlagAssistantAvatarGenTool"]
      290 JUMPIFNOT                        R6 ; [+7]
      291 DUPTABLE                         R5 K109 [{"generateAvatarAsync"}]
      292 GETUPVAL                         R6 3
      293 LOADK                            R7 K108 ["generateAvatarAsync"]
      294 CALL                             R6 1 1
      295 SETTABLEKS                       R6 R5 K108 ["generateAvatarAsync"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R5
      299 SETTABLEKS                       R5 R4 K68 ["avatarGen"]
      301 DUPTABLE                         R5 K112 [{"getImageDataBase64Async", "captureScreenshot"}]
      302 GETUPVAL                         R6 3
      303 LOADK                            R7 K110 ["getImageDataBase64Async"]
      304 CALL                             R6 1 1
      305 SETTABLEKS                       R6 R5 K110 ["getImageDataBase64Async"]
      307 DUPCLOSURE                       R6 K113 [PROTO_22]
      308 CAPTURE                          UPVAL U12
      309 SETTABLEKS                       R6 R5 K111 ["captureScreenshot"]
      311 SETTABLEKS                       R5 R4 K69 ["screenCapture"]
      313 DUPTABLE                         R5 K117 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync", "focusPanelAsync"}]
      314 GETUPVAL                         R6 3
      315 LOADK                            R7 K118 ["pluginCapture.listPluginGuisAsync"]
      316 CALL                             R6 1 1
      317 SETTABLEKS                       R6 R5 K114 ["listPluginGuisAsync"]
      319 GETUPVAL                         R6 3
      320 LOADK                            R7 K119 ["pluginCapture.capturePluginGuiByIdAsync"]
      321 CALL                             R6 1 1
      322 SETTABLEKS                       R6 R5 K115 ["capturePluginGuiByIdAsync"]
      324 GETUPVAL                         R6 3
      325 LOADK                            R7 K120 ["pluginCapture.focusPanelAsync"]
      326 CALL                             R6 1 1
      327 SETTABLEKS                       R6 R5 K116 ["focusPanelAsync"]
      329 SETTABLEKS                       R5 R4 K70 ["pluginCapture"]
      331 DUPTABLE                         R5 K124 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      332 GETUPVAL                         R6 3
      333 LOADK                            R7 K121 ["loadImageAsync"]
      334 CALL                             R6 1 1
      335 SETTABLEKS                       R6 R5 K121 ["loadImageAsync"]
      337 GETUPVAL                         R6 3
      338 LOADK                            R7 K122 ["publishAssetAsync"]
      339 CALL                             R6 1 1
      340 SETTABLEKS                       R6 R5 K122 ["publishAssetAsync"]
      342 GETUPVAL                         R6 3
      343 LOADK                            R7 K123 ["searchAssetAsync"]
      344 CALL                             R6 1 1
      345 SETTABLEKS                       R6 R5 K123 ["searchAssetAsync"]
      347 SETTABLEKS                       R5 R4 K71 ["uploadImage"]
      349 DUPTABLE                         R5 K131 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      350 GETUPVAL                         R6 3
      351 LOADK                            R7 K132 ["assetSearch.getStudioIdentity"]
      352 CALL                             R6 1 1
      353 SETTABLEKS                       R6 R5 K125 ["getStudioIdentity"]
      355 GETUPVAL                         R6 3
      356 LOADK                            R7 K133 ["assetSearch.searchCreatorInventoryAsync"]
      357 CALL                             R6 1 1
      358 SETTABLEKS                       R6 R5 K126 ["searchCreatorInventoryAsync"]
      360 GETUPVAL                         R6 3
      361 LOADK                            R7 K134 ["assetSearch.fetchUserGroupsAsync"]
      362 CALL                             R6 1 1
      363 SETTABLEKS                       R6 R5 K127 ["fetchUserGroupsAsync"]
      365 GETUPVAL                         R6 3
      366 LOADK                            R7 K135 ["assetSearch.searchCreatorStoreAssetsAsync"]
      367 CALL                             R6 1 1
      368 SETTABLEKS                       R6 R5 K128 ["searchCreatorStoreAssetsAsync"]
      370 GETUPVAL                         R6 3
      371 LOADK                            R7 K136 ["assetSearch.getThumbnailsUrl"]
      372 CALL                             R6 1 1
      373 SETTABLEKS                       R6 R5 K129 ["getThumbnailsUrl"]
      375 GETUPVAL                         R6 3
      376 LOADK                            R7 K137 ["assetSearch.getCreatorHubUrl"]
      377 CALL                             R6 1 1
      378 SETTABLEKS                       R6 R5 K130 ["getCreatorHubUrl"]
      380 SETTABLEKS                       R5 R4 K72 ["assetSearch"]
      382 DUPTABLE                         R5 K145 [{"getRecentPlaces", "getRecentLocalFiles", "getRootPlaceIdsAsync", "searchExperiencesAsync", "getGroupsAsync", "getTemplatesAsync", "getUniversePlacesAsync"}]
      383 GETUPVAL                         R6 3
      384 LOADK                            R7 K146 ["listPlace.getRecentPlaces"]
      385 CALL                             R6 1 1
      386 SETTABLEKS                       R6 R5 K138 ["getRecentPlaces"]
      388 GETUPVAL                         R6 3
      389 LOADK                            R7 K147 ["listPlace.getRecentLocalFiles"]
      390 CALL                             R6 1 1
      391 SETTABLEKS                       R6 R5 K139 ["getRecentLocalFiles"]
      393 GETUPVAL                         R6 3
      394 LOADK                            R7 K148 ["listPlace.getRootPlaceIdsAsync"]
      395 CALL                             R6 1 1
      396 SETTABLEKS                       R6 R5 K140 ["getRootPlaceIdsAsync"]
      398 GETUPVAL                         R6 3
      399 LOADK                            R7 K149 ["listPlace.searchExperiencesAsync"]
      400 CALL                             R6 1 1
      401 SETTABLEKS                       R6 R5 K141 ["searchExperiencesAsync"]
      403 GETUPVAL                         R6 3
      404 LOADK                            R7 K150 ["listPlace.getGroupsAsync"]
      405 CALL                             R6 1 1
      406 SETTABLEKS                       R6 R5 K142 ["getGroupsAsync"]
      408 GETUPVAL                         R6 3
      409 LOADK                            R7 K151 ["listPlace.getTemplatesAsync"]
      410 CALL                             R6 1 1
      411 SETTABLEKS                       R6 R5 K143 ["getTemplatesAsync"]
      413 GETUPVAL                         R6 3
      414 LOADK                            R7 K152 ["listPlace.getUniversePlacesAsync"]
      415 CALL                             R6 1 1
      416 SETTABLEKS                       R6 R5 K144 ["getUniversePlacesAsync"]
      418 SETTABLEKS                       R5 R4 K73 ["listPlace"]
      420 DUPTABLE                         R5 K164 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      421 GETUPVAL                         R6 3
      422 LOADK                            R7 K165 ["assetInsert.getObjects"]
      423 CALL                             R6 1 1
      424 SETTABLEKS                       R6 R5 K153 ["getObjects"]
      426 GETUPVAL                         R6 3
      427 LOADK                            R7 K166 ["assetInsert.getItemDetailsAsync"]
      428 CALL                             R6 1 1
      429 SETTABLEKS                       R6 R5 K154 ["getItemDetailsAsync"]
      431 GETUPVAL                         R6 3
      432 LOADK                            R7 K167 ["assetInsert.loadPackageAssetAsync"]
      433 CALL                             R6 1 1
      434 SETTABLEKS                       R6 R5 K155 ["loadPackageAssetAsync"]
      436 GETUPVAL                         R6 3
      437 LOADK                            R7 K168 ["assetInsert.insertAudioAsset"]
      438 CALL                             R6 1 1
      439 SETTABLEKS                       R6 R5 K156 ["insertAudioAsset"]
      441 GETUPVAL                         R6 3
      442 LOADK                            R7 K169 ["assetInsert.getAudioApiByDefault"]
      443 CALL                             R6 1 1
      444 SETTABLEKS                       R6 R5 K157 ["getAudioApiByDefault"]
      446 GETUPVAL                         R6 3
      447 LOADK                            R7 K170 ["assetInsert.assignSourceAssetId"]
      448 CALL                             R6 1 1
      449 SETTABLEKS                       R6 R5 K158 ["assignSourceAssetId"]
      451 DUPCLOSURE                       R6 K171 [PROTO_23]
      452 CAPTURE                          UPVAL U8
      453 SETTABLEKS                       R6 R5 K159 ["createMeshPartAsync"]
      455 DUPCLOSURE                       R6 K172 [PROTO_24]
      456 SETTABLEKS                       R6 R5 K160 ["createDecal"]
      458 DUPCLOSURE                       R6 K173 [PROTO_25]
      459 SETTABLEKS                       R6 R5 K161 ["createDecalFromImage"]
      461 DUPCLOSURE                       R6 K174 [PROTO_26]
      462 SETTABLEKS                       R6 R5 K162 ["createSound"]
      464 DUPCLOSURE                       R6 K175 [PROTO_27]
      465 SETTABLEKS                       R6 R5 K163 ["createVideoFrame"]
      467 SETTABLEKS                       R5 R4 K74 ["assetInsert"]
      469 SETTABLEKS                       R4 R3 K176 ["tools"]
      471 GETUPVAL                         R4 3
      472 LOADK                            R5 K177 ["convertImageDataToTempIdAsync"]
      473 CALL                             R4 1 1
      474 SETTABLEKS                       R4 R3 K177 ["convertImageDataToTempIdAsync"]
      476 GETUPVAL                         R4 3
      477 LOADK                            R5 K178 ["releaseTempIdAsync"]
      478 CALL                             R4 1 1
      479 SETTABLEKS                       R4 R3 K178 ["releaseTempIdAsync"]
      481 GETUPVAL                         R4 3
      482 LOADK                            R5 K179 ["getSettingsAsync"]
      483 CALL                             R4 1 1
      484 SETTABLEKS                       R4 R3 K179 ["getSettingsAsync"]
      486 GETUPVAL                         R4 3
      487 LOADK                            R5 K180 ["setSettingsAsync"]
      488 CALL                             R4 1 1
      489 SETTABLEKS                       R4 R3 K180 ["setSettingsAsync"]
      491 GETUPVAL                         R4 3
      492 LOADK                            R5 K181 ["getUserSettingsAsync"]
      493 CALL                             R4 1 1
      494 SETTABLEKS                       R4 R3 K181 ["getUserSettingsAsync"]
      496 GETUPVAL                         R4 3
      497 LOADK                            R5 K182 ["setUserSettingsAsync"]
      498 CALL                             R4 1 1
      499 SETTABLEKS                       R4 R3 K182 ["setUserSettingsAsync"]
      501 GETUPVAL                         R4 3
      502 LOADK                            R5 K183 ["getPluginSetting"]
      503 CALL                             R4 1 1
      504 SETTABLEKS                       R4 R3 K183 ["getPluginSetting"]
      506 GETUPVAL                         R4 3
      507 LOADK                            R5 K184 ["setPluginSetting"]
      508 CALL                             R4 1 1
      509 SETTABLEKS                       R4 R3 K184 ["setPluginSetting"]
      511 GETUPVAL                         R4 3
      512 LOADK                            R5 K185 ["getSecureSettingsAsync"]
      513 CALL                             R4 1 1
      514 SETTABLEKS                       R4 R3 K185 ["getSecureSettingsAsync"]
      516 GETUPVAL                         R4 3
      517 LOADK                            R5 K186 ["setSecureSettingsAsync"]
      518 CALL                             R4 1 1
      519 SETTABLEKS                       R4 R3 K186 ["setSecureSettingsAsync"]
      521 GETUPVAL                         R4 3
      522 LOADK                            R5 K187 ["base64EncodeAsync"]
      523 CALL                             R4 1 1
      524 SETTABLEKS                       R4 R3 K187 ["base64EncodeAsync"]
      526 GETUPVAL                         R4 3
      527 LOADK                            R5 K188 ["generatePKCEAsync"]
      528 CALL                             R4 1 1
      529 SETTABLEKS                       R4 R3 K188 ["generatePKCEAsync"]
      531 GETUPVAL                         R4 3
      532 LOADK                            R5 K189 ["startMCPAuthAsync"]
      533 CALL                             R4 1 1
      534 SETTABLEKS                       R4 R3 K189 ["startMCPAuthAsync"]
      536 GETUPVAL                         R4 3
      537 LOADK                            R5 K190 ["setupMCPServerAsync"]
      538 CALL                             R4 1 1
      539 SETTABLEKS                       R4 R3 K190 ["setupMCPServerAsync"]
      541 GETUPVAL                         R4 3
      542 LOADK                            R5 K191 ["getMCPProxyTokenAsync"]
      543 CALL                             R4 1 1
      544 SETTABLEKS                       R4 R3 K191 ["getMCPProxyTokenAsync"]
      546 GETUPVAL                         R4 3
      547 LOADK                            R5 K192 ["getMCPCaptureHookCommandAsync"]
      548 CALL                             R4 1 1
      549 SETTABLEKS                       R4 R3 K192 ["getMCPCaptureHookCommandAsync"]
      551 GETUPVAL                         R4 3
      552 LOADK                            R5 K193 ["startStopPlayAsync"]
      553 CALL                             R4 1 1
      554 SETTABLEKS                       R4 R3 K193 ["startStopPlayAsync"]
      556 DUPCLOSURE                       R4 K194 [PROTO_28]
      557 CAPTURE                          UPVAL U13
      558 SETTABLEKS                       R4 R3 K195 ["getLogHistory"]
      560 GETUPVAL                         R4 3
      561 LOADK                            R5 K196 ["subscribeOutput"]
      562 CALL                             R4 1 1
      563 SETTABLEKS                       R4 R3 K196 ["subscribeOutput"]
      565 GETUPVAL                         R4 3
      566 LOADK                            R5 K197 ["subscribeGameLoaded"]
      567 CALL                             R4 1 1
      568 SETTABLEKS                       R4 R3 K197 ["subscribeGameLoaded"]
      570 GETUPVAL                         R4 3
      571 LOADK                            R5 K198 ["subscribeGameStopped"]
      572 CALL                             R4 1 1
      573 SETTABLEKS                       R4 R3 K198 ["subscribeGameStopped"]
      575 GETUPVAL                         R4 3
      576 LOADK                            R5 K199 ["openFileDialogAsync"]
      577 CALL                             R4 1 1
      578 SETTABLEKS                       R4 R3 K199 ["openFileDialogAsync"]
      580 GETUPVAL                         R4 3
      581 LOADK                            R5 K200 ["openDirectoryDialogAsync"]
      582 CALL                             R4 1 1
      583 SETTABLEKS                       R4 R3 K200 ["openDirectoryDialogAsync"]
      585 GETUPVAL                         R4 3
      586 LOADK                            R5 K201 ["importFileBinaryAsync"]
      587 CALL                             R4 1 1
      588 SETTABLEKS                       R4 R3 K201 ["importFileBinaryAsync"]
      590 DUPCLOSURE                       R4 K202 [PROTO_29]
      591 SETTABLEKS                       R4 R3 K203 ["printToStudioLogAsync"]
      593 DUPTABLE                         R4 K207 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      594 GETUPVAL                         R5 3
      595 LOADK                            R6 K208 ["quickConnect.fileExistsAsync"]
      596 CALL                             R5 1 1
      597 SETTABLEKS                       R5 R4 K204 ["fileExistsAsync"]
      599 GETUPVAL                         R5 3
      600 LOADK                            R6 K209 ["quickConnect.readFileAsync"]
      601 CALL                             R5 1 1
      602 SETTABLEKS                       R5 R4 K205 ["readFileAsync"]
      604 GETUPVAL                         R5 3
      605 LOADK                            R6 K210 ["quickConnect.modifyFileAsync"]
      606 CALL                             R5 1 1
      607 SETTABLEKS                       R5 R4 K206 ["modifyFileAsync"]
      609 SETTABLEKS                       R4 R3 K211 ["quickConnect"]
      611 DUPTABLE                         R4 K217 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      612 GETUPVAL                         R5 3
      613 LOADK                            R6 K218 ["userSkillAssets.getManifestAsync"]
      614 CALL                             R5 1 1
      615 SETTABLEKS                       R5 R4 K212 ["getManifestAsync"]
      617 GETUPVAL                         R5 3
      618 LOADK                            R6 K219 ["userSkillAssets.fetchContentAsync"]
      619 CALL                             R5 1 1
      620 SETTABLEKS                       R5 R4 K213 ["fetchContentAsync"]
      622 GETUPVAL                         R5 3
      623 LOADK                            R6 K220 ["userSkillAssets.publishNewAsync"]
      624 CALL                             R5 1 1
      625 SETTABLEKS                       R5 R4 K214 ["publishNewAsync"]
      627 GETUPVAL                         R5 3
      628 LOADK                            R6 K221 ["userSkillAssets.publishUpdateAsync"]
      629 CALL                             R5 1 1
      630 SETTABLEKS                       R5 R4 K215 ["publishUpdateAsync"]
      632 GETUPVAL                         R5 3
      633 LOADK                            R6 K222 ["userSkillAssets.deleteAsync"]
      634 CALL                             R5 1 1
      635 SETTABLEKS                       R5 R4 K216 ["deleteAsync"]
      637 SETTABLEKS                       R4 R3 K223 ["userSkillAssets"]
      639 DUPTABLE                         R4 K227 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      640 GETUPVAL                         R5 3
      641 LOADK                            R6 K228 ["cloudSkillAssets.getAssetsAsync"]
      642 CALL                             R5 1 1
      643 SETTABLEKS                       R5 R4 K224 ["getAssetsAsync"]
      645 GETUPVAL                         R5 3
      646 LOADK                            R6 K229 ["cloudSkillAssets.uploadAssetsAsync"]
      647 CALL                             R5 1 1
      648 SETTABLEKS                       R5 R4 K225 ["uploadAssetsAsync"]
      650 GETUPVAL                         R5 3
      651 LOADK                            R6 K230 ["cloudSkillAssets.deleteAssetAsync"]
      652 CALL                             R5 1 1
      653 SETTABLEKS                       R5 R4 K226 ["deleteAssetAsync"]
      655 SETTABLEKS                       R4 R3 K231 ["cloudSkillAssets"]
      657 GETUPVAL                         R4 3
      658 LOADK                            R5 K232 ["getStudioPlayState"]
      659 CALL                             R4 1 1
      660 SETTABLEKS                       R4 R3 K232 ["getStudioPlayState"]
      662 GETUPVAL                         R4 3
      663 LOADK                            R5 K233 ["getFocusedDataModelType"]
      664 CALL                             R4 1 1
      665 SETTABLEKS                       R4 R3 K233 ["getFocusedDataModelType"]
      667 GETUPVAL                         R4 3
      668 LOADK                            R5 K234 ["isEditDataModelAvailable"]
      669 CALL                             R4 1 1
      670 SETTABLEKS                       R4 R3 K234 ["isEditDataModelAvailable"]
      672 GETUPVAL                         R4 3
      673 LOADK                            R5 K235 ["subscribeEditDataModelAvailabilityChanged"]
      674 CALL                             R4 1 1
      675 SETTABLEKS                       R4 R3 K235 ["subscribeEditDataModelAvailabilityChanged"]
      677 GETUPVAL                         R4 3
      678 LOADK                            R5 K236 ["fetchSystemPromptAsync"]
      679 CALL                             R4 1 1
      680 SETTABLEKS                       R4 R3 K236 ["fetchSystemPromptAsync"]
      682 DUPTABLE                         R4 K239 [{"startAsync", "getStatusAsync"}]
      683 GETUPVAL                         R5 3
      684 LOADK                            R6 K240 ["imageGeneration.startAsync"]
      685 CALL                             R5 1 1
      686 SETTABLEKS                       R5 R4 K237 ["startAsync"]
      688 GETUPVAL                         R5 3
      689 LOADK                            R6 K241 ["imageGeneration.getStatusAsync"]
      690 CALL                             R5 1 1
      691 SETTABLEKS                       R5 R4 K238 ["getStatusAsync"]
      693 SETTABLEKS                       R4 R3 K242 ["imageGeneration"]
      695 DUPTABLE                         R4 K239 [{"startAsync", "getStatusAsync"}]
      696 GETUPVAL                         R5 3
      697 LOADK                            R6 K243 ["texturePreview.startAsync"]
      698 CALL                             R5 1 1
      699 SETTABLEKS                       R5 R4 K237 ["startAsync"]
      701 GETUPVAL                         R5 3
      702 LOADK                            R6 K244 ["texturePreview.getStatusAsync"]
      703 CALL                             R5 1 1
      704 SETTABLEKS                       R5 R4 K238 ["getStatusAsync"]
      706 SETTABLEKS                       R4 R3 K245 ["texturePreview"]
      708 DUPTABLE                         R4 K239 [{"startAsync", "getStatusAsync"}]
      709 GETUPVAL                         R5 3
      710 LOADK                            R6 K246 ["sceneGeneration.startAsync"]
      711 CALL                             R5 1 1
      712 SETTABLEKS                       R5 R4 K237 ["startAsync"]
      714 GETUPVAL                         R5 3
      715 LOADK                            R6 K247 ["sceneGeneration.getStatusAsync"]
      716 CALL                             R5 1 1
      717 SETTABLEKS                       R5 R4 K238 ["getStatusAsync"]
      719 SETTABLEKS                       R4 R3 K248 ["sceneGeneration"]
      721 DUPTABLE                         R4 K253 [{"saveAsync", "saveVersionNotesAsync", "getMaxNotesTitleLength", "validateVersionNotesAsync"}]
      722 GETUPVAL                         R5 3
      723 LOADK                            R6 K254 ["placeSaving.saveAsync"]
      724 CALL                             R5 1 1
      725 SETTABLEKS                       R5 R4 K249 ["saveAsync"]
      727 GETUPVAL                         R5 3
      728 LOADK                            R6 K255 ["placeSaving.saveVersionNotesAsync"]
      729 CALL                             R5 1 1
      730 SETTABLEKS                       R5 R4 K250 ["saveVersionNotesAsync"]
      732 GETUPVAL                         R5 3
      733 LOADK                            R6 K256 ["placeSaving.getMaxNotesTitleLength"]
      734 CALL                             R5 1 1
      735 SETTABLEKS                       R5 R4 K251 ["getMaxNotesTitleLength"]
      737 GETUPVAL                         R5 3
      738 LOADK                            R6 K257 ["placeSaving.validateVersionNotesAsync"]
      739 CALL                             R5 1 1
      740 SETTABLEKS                       R5 R4 K252 ["validateVersionNotesAsync"]
      742 SETTABLEKS                       R4 R3 K258 ["placeSaving"]
      744 DUPTABLE                         R4 K259 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      745 GETUPVAL                         R5 3
      746 LOADK                            R6 K260 ["segmentMesh.startAsync"]
      747 CALL                             R5 1 1
      748 SETTABLEKS                       R5 R4 K237 ["startAsync"]
      750 GETUPVAL                         R5 3
      751 LOADK                            R6 K261 ["segmentMesh.getStatusAsync"]
      752 CALL                             R5 1 1
      753 SETTABLEKS                       R5 R4 K238 ["getStatusAsync"]
      755 GETUPVAL                         R5 3
      756 LOADK                            R6 K262 ["segmentMesh.publishAssetAsync"]
      757 CALL                             R5 1 1
      758 SETTABLEKS                       R5 R4 K122 ["publishAssetAsync"]
      760 GETUPVAL                         R5 3
      761 LOADK                            R6 K263 ["segmentMesh.loadAssetAsync"]
      762 CALL                             R5 1 1
      763 SETTABLEKS                       R5 R4 K85 ["loadAssetAsync"]
      765 SETTABLEKS                       R4 R3 K264 ["segmentMesh"]
      767 DUPTABLE                         R4 K259 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      768 GETUPVAL                         R5 3
      769 LOADK                            R6 K265 ["textureGeneration.startAsync"]
      770 CALL                             R5 1 1
      771 SETTABLEKS                       R5 R4 K237 ["startAsync"]
      773 GETUPVAL                         R5 3
      774 LOADK                            R6 K266 ["textureGeneration.getStatusAsync"]
      775 CALL                             R5 1 1
      776 SETTABLEKS                       R5 R4 K238 ["getStatusAsync"]
      778 GETUPVAL                         R5 3
      779 LOADK                            R6 K267 ["textureGeneration.publishAssetAsync"]
      780 CALL                             R5 1 1
      781 SETTABLEKS                       R5 R4 K122 ["publishAssetAsync"]
      783 GETUPVAL                         R5 3
      784 LOADK                            R6 K268 ["textureGeneration.loadAssetAsync"]
      785 CALL                             R5 1 1
      786 SETTABLEKS                       R5 R4 K85 ["loadAssetAsync"]
      788 SETTABLEKS                       R4 R3 K269 ["textureGeneration"]
      790 DUPCLOSURE                       R4 K270 [PROTO_30]
      791 SETTABLEKS                       R4 R3 K271 ["hasInternalPermission"]
      793 DUPCLOSURE                       R4 K272 [PROTO_31]
      794 SETTABLEKS                       R4 R3 K273 ["getAssistantPermissionsBridge"]
      796 DUPCLOSURE                       R4 K274 [PROTO_32]
      797 CAPTURE                          UPVAL U14
      798 SETTABLEKS                       R4 R3 K275 ["getMockPrimGenBackendData"]
      800 GETUPVAL                         R4 3
      801 LOADK                            R5 K276 ["startMultiPlayerTest"]
      802 CALL                             R4 1 1
      803 SETTABLEKS                       R4 R3 K276 ["startMultiPlayerTest"]
      805 GETUPVAL                         R4 3
      806 LOADK                            R5 K277 ["stopMultiPlayerTest"]
      807 CALL                             R4 1 1
      808 SETTABLEKS                       R4 R3 K277 ["stopMultiPlayerTest"]
      810 GETUPVAL                         R4 3
      811 LOADK                            R5 K278 ["isInMultiPlayerTest"]
      812 CALL                             R4 1 1
      813 SETTABLEKS                       R4 R3 K278 ["isInMultiPlayerTest"]
      815 GETUPVAL                         R4 3
      816 LOADK                            R5 K279 ["getStopMultiPlayerTestResults"]
      817 CALL                             R4 1 1
      818 SETTABLEKS                       R4 R3 K280 ["subscribeStopMultiPlayerTestStateChanged"]
      820 GETUPVAL                         R4 3
      821 LOADK                            R5 K281 ["createMultiPlayersServer"]
      822 CALL                             R4 1 1
      823 SETTABLEKS                       R4 R3 K281 ["createMultiPlayersServer"]
      825 GETUPVAL                         R4 3
      826 LOADK                            R5 K282 ["createMultiPlayersClient"]
      827 CALL                             R4 1 1
      828 SETTABLEKS                       R4 R3 K282 ["createMultiPlayersClient"]
      830 GETUPVAL                         R4 3
      831 LOADK                            R5 K283 ["getExperimentFeatureEnabled"]
      832 CALL                             R4 1 1
      833 SETTABLEKS                       R4 R3 K283 ["getExperimentFeatureEnabled"]
      835 GETUPVAL                         R4 3
      836 LOADK                            R5 K284 ["getOnExperimentChangedSignal"]
      837 CALL                             R4 1 1
      838 SETTABLEKS                       R4 R3 K285 ["onceExperimentFeatureEnabled"]
      840 GETUPVAL                         R4 3
      841 LOADK                            R5 K286 ["getStudioState"]
      842 CALL                             R4 1 1
      843 SETTABLEKS                       R4 R3 K286 ["getStudioState"]
      845 MOVE                             R2 R3
      846 CLOSEUPVALS                      R1
      847 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R2 R2 K1 ["logErrorEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logToolStarted"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionFallback"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionSuccess"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logThinkingBlock"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCompactionExperimentEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["printToStudioLogAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_42:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["Destroying"]
        6 NAMECALL                         R2 R2 K1 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

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
       49 GETTABLEKS                       R8 R0 K14 ["Parent"]
       51 GETIMPORT                        R9 K16 [require]
       53 GETTABLEKS                       R10 R8 K17 ["AssistantHarness"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K16 [require]
       58 GETTABLEKS                       R11 R8 K18 ["DMNetworking"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K16 [require]
       63 GETTABLEKS                       R12 R8 K19 ["DMNetworkingOLD"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K16 [require]
       68 GETTABLEKS                       R13 R8 K20 ["Gen3dCore"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K16 [require]
       73 GETTABLEKS                       R14 R8 K21 ["ReactUtils"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K16 [require]
       78 GETTABLEKS                       R15 R8 K22 ["Signal"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K16 [require]
       83 GETTABLEKS                       R16 R0 K23 ["Util"]
       85 GETTABLEKS                       R16 R16 K24 ["AvatarGen"]
       87 GETTABLEKS                       R16 R16 K25 ["AvatarGenEnums"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K16 [require]
       92 GETIMPORT                        R17 K1 [script]
       94 GETTABLEKS                       R17 R17 K26 ["EventLogger"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K16 [require]
       99 GETTABLEKS                       R18 R0 K27 ["Flags"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K16 [require]
      104 GETTABLEKS                       R19 R0 K28 ["Guest"]
      106 GETTABLEKS                       R19 R19 K29 ["LoadAssetHandlers"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K16 [require]
      111 GETTABLEKS                       R20 R0 K23 ["Util"]
      113 GETTABLEKS                       R20 R20 K30 ["MultiPlayersConnection"]
      115 GETTABLEKS                       R20 R20 K31 ["MultiPlayerAgentTypes"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K16 [require]
      120 GETTABLEKS                       R21 R0 K28 ["Guest"]
      122 GETTABLEKS                       R21 R21 K32 ["RecordingHandlers"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K16 [require]
      127 GETTABLEKS                       R22 R0 K33 ["Types"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K16 [require]
      132 GETTABLEKS                       R23 R0 K34 ["FlagUtils"]
      134 GETTABLEKS                       R23 R23 K35 ["getIsAnimationGenEnabled"]
      136 CALL                             R22 1 1
      137 GETTABLEKS                       R23 R13 K36 ["createUnimplemented"]
      139 GETTABLEKS                       R24 R9 K37 ["Engine"]
      141 GETTABLEKS                       R24 R24 K38 ["EngineEnv"]
      143 DUPCLOSURE                       R25 K39 [PROTO_33]
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R0
      159 MOVE                             R26 R25
      160 CALL                             R26 0 1
      161 GETTABLEKS                       R27 R24 K40 ["configure"]
      163 DUPTABLE                         R28 K44 [{"eventLogger", "isCompactionExperimentEnabled", "printToStudioLog"}]
      164 DUPTABLE                         R29 K50 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      165 NEWCLOSURE                       R30 P1
      166 CAPTURE                          REF R26
      167 SETTABLEKS                       R30 R29 K45 ["logErrorEvent"]
      169 NEWCLOSURE                       R30 P2
      170 CAPTURE                          REF R26
      171 SETTABLEKS                       R30 R29 K46 ["logToolStarted"]
      173 NEWCLOSURE                       R30 P3
      174 CAPTURE                          REF R26
      175 SETTABLEKS                       R30 R29 K47 ["logCompactionFallback"]
      177 NEWCLOSURE                       R30 P4
      178 CAPTURE                          REF R26
      179 SETTABLEKS                       R30 R29 K48 ["logCompactionSuccess"]
      181 NEWCLOSURE                       R30 P5
      182 CAPTURE                          REF R26
      183 SETTABLEKS                       R30 R29 K49 ["logThinkingBlock"]
      185 SETTABLEKS                       R29 R28 K41 ["eventLogger"]
      187 NEWCLOSURE                       R29 P6
      188 CAPTURE                          REF R26
      189 SETTABLEKS                       R29 R28 K42 ["isCompactionExperimentEnabled"]
      191 NEWCLOSURE                       R29 P7
      192 CAPTURE                          REF R26
      193 SETTABLEKS                       R29 R28 K43 ["printToStudioLog"]
      195 CALL                             R27 1 0
      196 DUPTABLE                         R27 K55 [{"new", "get", "set", "destroy"}]
      197 SETTABLEKS                       R25 R27 K51 ["new"]
      199 NEWCLOSURE                       R28 P8
      200 CAPTURE                          REF R26
      201 SETTABLEKS                       R28 R27 K52 ["get"]
      203 NEWCLOSURE                       R28 P9
      204 CAPTURE                          REF R26
      205 SETTABLEKS                       R28 R27 K53 ["set"]
      207 NEWCLOSURE                       R28 P10
      208 CAPTURE                          REF R26
      209 SETTABLEKS                       R28 R27 K54 ["destroy"]
      211 CLOSEUPVALS                      R26
      212 RETURN                           R27 1
