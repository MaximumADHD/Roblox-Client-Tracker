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
       32 DUPCLOSURE                       R4 K14 [PROTO_4]
       33 SETTABLEKS                       R4 R3 K15 ["getSystemPrompt"]
       35 DUPCLOSURE                       R4 K16 [PROTO_5]
       36 CAPTURE                          UPVAL U3
       37 SETTABLEKS                       R4 R3 K17 ["getUserId"]
       39 DUPCLOSURE                       R4 K18 [PROTO_6]
       40 SETTABLEKS                       R4 R3 K19 ["getGameId"]
       42 DUPCLOSURE                       R4 K20 [PROTO_7]
       43 SETTABLEKS                       R4 R3 K21 ["getPlaceSessionInfoAsync"]
       45 NEWCLOSURE                       R4 P8
       46 CAPTURE                          REF R1
       47 CAPTURE                          UPVAL U4
       48 SETTABLEKS                       R4 R3 K22 ["getStudioSessionId"]
       50 NEWCLOSURE                       R4 P9
       51 CAPTURE                          REF R1
       52 SETTABLEKS                       R4 R3 K23 ["resetStudioSessionId"]
       54 GETUPVAL                         R4 5
       55 LOADK                            R5 K24 ["copyToClipboard"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K24 ["copyToClipboard"]
       59 GETUPVAL                         R4 5
       60 LOADK                            R5 K25 ["openAssetManager"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K25 ["openAssetManager"]
       64 GETUPVAL                         R4 5
       65 LOADK                            R5 K26 ["browseAssetsAsync"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K26 ["browseAssetsAsync"]
       69 DUPCLOSURE                       R4 K27 [PROTO_10]
       70 SETTABLEKS                       R4 R3 K28 ["getClassIcon"]
       72 GETTABLEKS                       R4 R0 K29 ["startRecording"]
       74 SETTABLEKS                       R4 R3 K29 ["startRecording"]
       76 GETTABLEKS                       R4 R0 K30 ["endRecording"]
       78 SETTABLEKS                       R4 R3 K30 ["endRecording"]
       80 DUPCLOSURE                       R4 K31 [PROTO_11]
       81 SETTABLEKS                       R4 R3 K32 ["getScriptSource"]
       83 GETUPVAL                         R4 5
       84 LOADK                            R5 K33 ["openScriptAsync"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K33 ["openScriptAsync"]
       88 DUPTABLE                         R4 K37 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       89 DUPCLOSURE                       R5 K38 [PROTO_12]
       90 CAPTURE                          UPVAL U4
       91 SETTABLEKS                       R5 R4 K34 ["createWebStreamClient"]
       93 DUPCLOSURE                       R5 K39 [PROTO_13]
       94 CAPTURE                          UPVAL U4
       95 SETTABLEKS                       R5 R4 K35 ["requestAsync"]
       97 GETUPVAL                         R5 5
       98 LOADK                            R6 K36 ["openUrl"]
       99 CALL                             R5 1 1
      100 SETTABLEKS                       R5 R4 K36 ["openUrl"]
      102 SETTABLEKS                       R4 R3 K40 ["http"]
      104 DUPTABLE                         R4 K43 [{"encodeAsync", "decodeAsync"}]
      105 DUPCLOSURE                       R5 K44 [PROTO_14]
      106 CAPTURE                          UPVAL U4
      107 SETTABLEKS                       R5 R4 K41 ["encodeAsync"]
      109 DUPCLOSURE                       R5 K45 [PROTO_15]
      110 CAPTURE                          UPVAL U4
      111 SETTABLEKS                       R5 R4 K42 ["decodeAsync"]
      113 SETTABLEKS                       R4 R3 K46 ["json"]
      115 DUPTABLE                         R4 K49 [{"get", "set"}]
      116 DUPCLOSURE                       R5 K50 [PROTO_16]
      117 SETTABLEKS                       R5 R4 K47 ["get"]
      119 DUPCLOSURE                       R5 K51 [PROTO_17]
      120 SETTABLEKS                       R5 R4 K48 ["set"]
      122 SETTABLEKS                       R4 R3 K52 ["selection"]
      124 DUPTABLE                         R4 K57 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync", "resolveInstanceByPathAsync"}]
      125 GETUPVAL                         R5 5
      126 LOADK                            R6 K53 ["getUniqueId"]
      127 CALL                             R5 1 1
      128 SETTABLEKS                       R5 R4 K53 ["getUniqueId"]
      130 GETUPVAL                         R5 5
      131 LOADK                            R6 K54 ["getInstanceFromUniqueId"]
      132 CALL                             R5 1 1
      133 SETTABLEKS                       R5 R4 K54 ["getInstanceFromUniqueId"]
      135 GETUPVAL                         R5 5
      136 LOADK                            R6 K55 ["pickInstanceAsync"]
      137 CALL                             R5 1 1
      138 SETTABLEKS                       R5 R4 K55 ["pickInstanceAsync"]
      140 GETUPVAL                         R5 5
      141 LOADK                            R6 K56 ["resolveInstanceByPathAsync"]
      142 CALL                             R5 1 1
      143 SETTABLEKS                       R5 R4 K56 ["resolveInstanceByPathAsync"]
      145 SETTABLEKS                       R4 R3 K58 ["instances"]
      147 DUPTABLE                         R4 K76 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "layoutGen", "animationGen", "assetQuality", "avatarAutoSetup", "avatarGen", "screenCapture", "pluginCapture", "pluginActivation", "uploadImage", "assetSearch", "listPlace", "assetInsert"}]
      148 DUPTABLE                         R5 K79 [{"loadCode", "stopCode"}]
      149 GETUPVAL                         R6 5
      150 LOADK                            R7 K77 ["loadCode"]
      151 CALL                             R6 1 1
      152 SETTABLEKS                       R6 R5 K77 ["loadCode"]
      154 GETUPVAL                         R6 5
      155 LOADK                            R7 K78 ["stopCode"]
      156 CALL                             R6 1 1
      157 SETTABLEKS                       R6 R5 K78 ["stopCode"]
      159 SETTABLEKS                       R5 R4 K59 ["executeLuau"]
      161 DUPTABLE                         R5 K82 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      162 DUPCLOSURE                       R6 K83 [PROTO_18]
      163 SETTABLEKS                       R6 R5 K80 ["updateScriptSourceAsync"]
      165 DUPCLOSURE                       R6 K84 [PROTO_19]
      166 SETTABLEKS                       R6 R5 K81 ["applyScriptSourceDirectly"]
      168 SETTABLEKS                       R5 R4 K60 ["multiEdit"]
      170 DUPTABLE                         R5 K87 [{"getFreeModelsAsync", "loadAssetAsync"}]
      171 NEWCLOSURE                       R6 P20
      172 CAPTURE                          REF R2
      173 CAPTURE                          UPVAL U6
      174 SETTABLEKS                       R6 R5 K85 ["getFreeModelsAsync"]
      176 GETUPVAL                         R6 7
      177 GETTABLEKS                       R6 R6 K88 ["getStandardHandler"]
      179 GETUPVAL                         R7 8
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R5 K86 ["loadAssetAsync"]
      183 SETTABLEKS                       R5 R4 K61 ["marketplaceInsertion"]
      185 DUPTABLE                         R5 K91 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      186 GETUPVAL                         R6 5
      187 LOADK                            R7 K89 ["generateMaterialVariantsAsync"]
      188 CALL                             R6 1 1
      189 SETTABLEKS                       R6 R5 K89 ["generateMaterialVariantsAsync"]
      191 GETUPVAL                         R6 5
      192 LOADK                            R7 K90 ["uploadMaterialsAsync"]
      193 CALL                             R6 1 1
      194 SETTABLEKS                       R6 R5 K90 ["uploadMaterialsAsync"]
      196 SETTABLEKS                       R5 R4 K62 ["materialGen"]
      198 DUPTABLE                         R5 K98 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      199 DUPCLOSURE                       R6 K99 [PROTO_21]
      200 CAPTURE                          UPVAL U9
      201 SETTABLEKS                       R6 R5 K92 ["generateModelAsync"]
      203 GETUPVAL                         R6 5
      204 LOADK                            R7 K93 ["publishModelAsync"]
      205 CALL                             R6 1 1
      206 SETTABLEKS                       R6 R5 K93 ["publishModelAsync"]
      208 GETUPVAL                         R6 7
      209 GETTABLEKS                       R6 R6 K88 ["getStandardHandler"]
      211 GETUPVAL                         R7 8
      212 CALL                             R6 1 1
      213 SETTABLEKS                       R6 R5 K86 ["loadAssetAsync"]
      215 GETUPVAL                         R6 5
      216 LOADK                            R7 K94 ["activateScaleTool"]
      217 CALL                             R6 1 1
      218 SETTABLEKS                       R6 R5 K94 ["activateScaleTool"]
      220 GETUPVAL                         R6 5
      221 LOADK                            R7 K95 ["exportInstanceToGlbAsync"]
      222 CALL                             R6 1 1
      223 SETTABLEKS                       R6 R5 K95 ["exportInstanceToGlbAsync"]
      225 GETUPVAL                         R6 5
      226 LOADK                            R7 K96 ["exportMeshToGlbAsync"]
      227 CALL                             R6 1 1
      228 SETTABLEKS                       R6 R5 K96 ["exportMeshToGlbAsync"]
      230 GETUPVAL                         R6 5
      231 LOADK                            R7 K97 ["loadModelFromUrlAsync"]
      232 CALL                             R6 1 1
      233 SETTABLEKS                       R6 R5 K97 ["loadModelFromUrlAsync"]
      235 SETTABLEKS                       R5 R4 K63 ["meshGen"]
      237 DUPTABLE                         R5 K100 [{"activateScaleTool"}]
      238 GETUPVAL                         R6 5
      239 LOADK                            R7 K94 ["activateScaleTool"]
      240 CALL                             R6 1 1
      241 SETTABLEKS                       R6 R5 K94 ["activateScaleTool"]
      243 SETTABLEKS                       R5 R4 K64 ["layoutGen"]
      245 GETUPVAL                         R6 10
      246 CALL                             R6 0 1
      247 JUMPIFNOT                        R6 ; [+7]
      248 DUPTABLE                         R5 K102 [{"generateAnimationAsync"}]
      249 GETUPVAL                         R6 5
      250 LOADK                            R7 K101 ["generateAnimationAsync"]
      251 CALL                             R6 1 1
      252 SETTABLEKS                       R6 R5 K101 ["generateAnimationAsync"]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R5
      256 SETTABLEKS                       R5 R4 K65 ["animationGen"]
      258 GETUPVAL                         R6 11
      259 GETTABLEKS                       R6 R6 K103 ["FFlagAssistantAssetQualityTool"]
      261 JUMPIFNOT                        R6 ; [+7]
      262 DUPTABLE                         R5 K105 [{"validateAsync"}]
      263 GETUPVAL                         R6 5
      264 LOADK                            R7 K104 ["validateAsync"]
      265 CALL                             R6 1 1
      266 SETTABLEKS                       R6 R5 K104 ["validateAsync"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R5
      270 SETTABLEKS                       R5 R4 K66 ["assetQuality"]
      272 GETUPVAL                         R6 11
      273 GETTABLEKS                       R6 R6 K106 ["FFlagAssistantAvatarAutoSetupTool"]
      275 JUMPIFNOT                        R6 ; [+17]
      276 DUPTABLE                         R5 K110 [{"autoSetupAsync", "cancelAutoSetup", "getClassificationPlan"}]
      277 GETUPVAL                         R6 5
      278 LOADK                            R7 K107 ["autoSetupAsync"]
      279 CALL                             R6 1 1
      280 SETTABLEKS                       R6 R5 K107 ["autoSetupAsync"]
      282 GETUPVAL                         R6 5
      283 LOADK                            R7 K108 ["cancelAutoSetup"]
      284 CALL                             R6 1 1
      285 SETTABLEKS                       R6 R5 K108 ["cancelAutoSetup"]
      287 GETUPVAL                         R6 5
      288 LOADK                            R7 K109 ["getClassificationPlan"]
      289 CALL                             R6 1 1
      290 SETTABLEKS                       R6 R5 K109 ["getClassificationPlan"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R5
      294 SETTABLEKS                       R5 R4 K67 ["avatarAutoSetup"]
      296 GETUPVAL                         R6 11
      297 GETTABLEKS                       R6 R6 K111 ["FFlagAssistantAvatarGenTool"]
      299 JUMPIFNOT                        R6 ; [+7]
      300 DUPTABLE                         R5 K113 [{"generateAvatarAsync"}]
      301 GETUPVAL                         R6 5
      302 LOADK                            R7 K112 ["generateAvatarAsync"]
      303 CALL                             R6 1 1
      304 SETTABLEKS                       R6 R5 K112 ["generateAvatarAsync"]
      306 JUMP                             ; [+1]
      307 LOADNIL                          R5
      308 SETTABLEKS                       R5 R4 K68 ["avatarGen"]
      310 DUPTABLE                         R5 K116 [{"getImageDataBase64Async", "captureScreenshot"}]
      311 GETUPVAL                         R6 5
      312 LOADK                            R7 K114 ["getImageDataBase64Async"]
      313 CALL                             R6 1 1
      314 SETTABLEKS                       R6 R5 K114 ["getImageDataBase64Async"]
      316 DUPCLOSURE                       R6 K117 [PROTO_22]
      317 CAPTURE                          UPVAL U12
      318 SETTABLEKS                       R6 R5 K115 ["captureScreenshot"]
      320 SETTABLEKS                       R5 R4 K69 ["screenCapture"]
      322 DUPTABLE                         R5 K121 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync", "focusPanelAsync"}]
      323 GETUPVAL                         R6 5
      324 LOADK                            R7 K122 ["pluginCapture.listPluginGuisAsync"]
      325 CALL                             R6 1 1
      326 SETTABLEKS                       R6 R5 K118 ["listPluginGuisAsync"]
      328 GETUPVAL                         R6 5
      329 LOADK                            R7 K123 ["pluginCapture.capturePluginGuiByIdAsync"]
      330 CALL                             R6 1 1
      331 SETTABLEKS                       R6 R5 K119 ["capturePluginGuiByIdAsync"]
      333 GETUPVAL                         R6 5
      334 LOADK                            R7 K124 ["pluginCapture.focusPanelAsync"]
      335 CALL                             R6 1 1
      336 SETTABLEKS                       R6 R5 K120 ["focusPanelAsync"]
      338 SETTABLEKS                       R5 R4 K70 ["pluginCapture"]
      340 DUPTABLE                         R5 K128 [{"listActionsAsync", "getActionStatesAsync", "activateActionAsync"}]
      341 GETUPVAL                         R6 5
      342 LOADK                            R7 K129 ["pluginActivation.listActionsAsync"]
      343 CALL                             R6 1 1
      344 SETTABLEKS                       R6 R5 K125 ["listActionsAsync"]
      346 GETUPVAL                         R6 5
      347 LOADK                            R7 K130 ["pluginActivation.getActionStatesAsync"]
      348 CALL                             R6 1 1
      349 SETTABLEKS                       R6 R5 K126 ["getActionStatesAsync"]
      351 GETUPVAL                         R6 5
      352 LOADK                            R7 K131 ["pluginActivation.activateActionAsync"]
      353 CALL                             R6 1 1
      354 SETTABLEKS                       R6 R5 K127 ["activateActionAsync"]
      356 SETTABLEKS                       R5 R4 K71 ["pluginActivation"]
      358 DUPTABLE                         R5 K135 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      359 GETUPVAL                         R6 5
      360 LOADK                            R7 K132 ["loadImageAsync"]
      361 CALL                             R6 1 1
      362 SETTABLEKS                       R6 R5 K132 ["loadImageAsync"]
      364 GETUPVAL                         R6 5
      365 LOADK                            R7 K133 ["publishAssetAsync"]
      366 CALL                             R6 1 1
      367 SETTABLEKS                       R6 R5 K133 ["publishAssetAsync"]
      369 GETUPVAL                         R6 5
      370 LOADK                            R7 K134 ["searchAssetAsync"]
      371 CALL                             R6 1 1
      372 SETTABLEKS                       R6 R5 K134 ["searchAssetAsync"]
      374 SETTABLEKS                       R5 R4 K72 ["uploadImage"]
      376 DUPTABLE                         R5 K142 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      377 GETUPVAL                         R6 5
      378 LOADK                            R7 K143 ["assetSearch.getStudioIdentity"]
      379 CALL                             R6 1 1
      380 SETTABLEKS                       R6 R5 K136 ["getStudioIdentity"]
      382 GETUPVAL                         R6 5
      383 LOADK                            R7 K144 ["assetSearch.searchCreatorInventoryAsync"]
      384 CALL                             R6 1 1
      385 SETTABLEKS                       R6 R5 K137 ["searchCreatorInventoryAsync"]
      387 GETUPVAL                         R6 5
      388 LOADK                            R7 K145 ["assetSearch.fetchUserGroupsAsync"]
      389 CALL                             R6 1 1
      390 SETTABLEKS                       R6 R5 K138 ["fetchUserGroupsAsync"]
      392 GETUPVAL                         R6 5
      393 LOADK                            R7 K146 ["assetSearch.searchCreatorStoreAssetsAsync"]
      394 CALL                             R6 1 1
      395 SETTABLEKS                       R6 R5 K139 ["searchCreatorStoreAssetsAsync"]
      397 GETUPVAL                         R6 5
      398 LOADK                            R7 K147 ["assetSearch.getThumbnailsUrl"]
      399 CALL                             R6 1 1
      400 SETTABLEKS                       R6 R5 K140 ["getThumbnailsUrl"]
      402 GETUPVAL                         R6 5
      403 LOADK                            R7 K148 ["assetSearch.getCreatorHubUrl"]
      404 CALL                             R6 1 1
      405 SETTABLEKS                       R6 R5 K141 ["getCreatorHubUrl"]
      407 SETTABLEKS                       R5 R4 K73 ["assetSearch"]
      409 DUPTABLE                         R5 K156 [{"getRecentPlaces", "getRecentLocalFiles", "getRootPlaceIdsAsync", "searchExperiencesAsync", "getGroupsAsync", "getTemplatesAsync", "getUniversePlacesAsync"}]
      410 GETUPVAL                         R6 5
      411 LOADK                            R7 K157 ["listPlace.getRecentPlaces"]
      412 CALL                             R6 1 1
      413 SETTABLEKS                       R6 R5 K149 ["getRecentPlaces"]
      415 GETUPVAL                         R6 5
      416 LOADK                            R7 K158 ["listPlace.getRecentLocalFiles"]
      417 CALL                             R6 1 1
      418 SETTABLEKS                       R6 R5 K150 ["getRecentLocalFiles"]
      420 GETUPVAL                         R6 5
      421 LOADK                            R7 K159 ["listPlace.getRootPlaceIdsAsync"]
      422 CALL                             R6 1 1
      423 SETTABLEKS                       R6 R5 K151 ["getRootPlaceIdsAsync"]
      425 GETUPVAL                         R6 5
      426 LOADK                            R7 K160 ["listPlace.searchExperiencesAsync"]
      427 CALL                             R6 1 1
      428 SETTABLEKS                       R6 R5 K152 ["searchExperiencesAsync"]
      430 GETUPVAL                         R6 5
      431 LOADK                            R7 K161 ["listPlace.getGroupsAsync"]
      432 CALL                             R6 1 1
      433 SETTABLEKS                       R6 R5 K153 ["getGroupsAsync"]
      435 GETUPVAL                         R6 5
      436 LOADK                            R7 K162 ["listPlace.getTemplatesAsync"]
      437 CALL                             R6 1 1
      438 SETTABLEKS                       R6 R5 K154 ["getTemplatesAsync"]
      440 GETUPVAL                         R6 5
      441 LOADK                            R7 K163 ["listPlace.getUniversePlacesAsync"]
      442 CALL                             R6 1 1
      443 SETTABLEKS                       R6 R5 K155 ["getUniversePlacesAsync"]
      445 SETTABLEKS                       R5 R4 K74 ["listPlace"]
      447 DUPTABLE                         R5 K175 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      448 GETUPVAL                         R6 5
      449 LOADK                            R7 K176 ["assetInsert.getObjects"]
      450 CALL                             R6 1 1
      451 SETTABLEKS                       R6 R5 K164 ["getObjects"]
      453 GETUPVAL                         R6 5
      454 LOADK                            R7 K177 ["assetInsert.getItemDetailsAsync"]
      455 CALL                             R6 1 1
      456 SETTABLEKS                       R6 R5 K165 ["getItemDetailsAsync"]
      458 GETUPVAL                         R6 5
      459 LOADK                            R7 K178 ["assetInsert.loadPackageAssetAsync"]
      460 CALL                             R6 1 1
      461 SETTABLEKS                       R6 R5 K166 ["loadPackageAssetAsync"]
      463 GETUPVAL                         R6 5
      464 LOADK                            R7 K179 ["assetInsert.insertAudioAsset"]
      465 CALL                             R6 1 1
      466 SETTABLEKS                       R6 R5 K167 ["insertAudioAsset"]
      468 GETUPVAL                         R6 5
      469 LOADK                            R7 K180 ["assetInsert.getAudioApiByDefault"]
      470 CALL                             R6 1 1
      471 SETTABLEKS                       R6 R5 K168 ["getAudioApiByDefault"]
      473 GETUPVAL                         R6 5
      474 LOADK                            R7 K181 ["assetInsert.assignSourceAssetId"]
      475 CALL                             R6 1 1
      476 SETTABLEKS                       R6 R5 K169 ["assignSourceAssetId"]
      478 DUPCLOSURE                       R6 K182 [PROTO_23]
      479 CAPTURE                          UPVAL U8
      480 SETTABLEKS                       R6 R5 K170 ["createMeshPartAsync"]
      482 DUPCLOSURE                       R6 K183 [PROTO_24]
      483 SETTABLEKS                       R6 R5 K171 ["createDecal"]
      485 DUPCLOSURE                       R6 K184 [PROTO_25]
      486 SETTABLEKS                       R6 R5 K172 ["createDecalFromImage"]
      488 DUPCLOSURE                       R6 K185 [PROTO_26]
      489 SETTABLEKS                       R6 R5 K173 ["createSound"]
      491 DUPCLOSURE                       R6 K186 [PROTO_27]
      492 SETTABLEKS                       R6 R5 K174 ["createVideoFrame"]
      494 SETTABLEKS                       R5 R4 K75 ["assetInsert"]
      496 SETTABLEKS                       R4 R3 K187 ["tools"]
      498 GETUPVAL                         R4 5
      499 LOADK                            R5 K188 ["convertImageDataToTempIdAsync"]
      500 CALL                             R4 1 1
      501 SETTABLEKS                       R4 R3 K188 ["convertImageDataToTempIdAsync"]
      503 GETUPVAL                         R4 5
      504 LOADK                            R5 K189 ["releaseTempIdAsync"]
      505 CALL                             R4 1 1
      506 SETTABLEKS                       R4 R3 K189 ["releaseTempIdAsync"]
      508 GETUPVAL                         R4 5
      509 LOADK                            R5 K190 ["getSettingsAsync"]
      510 CALL                             R4 1 1
      511 SETTABLEKS                       R4 R3 K190 ["getSettingsAsync"]
      513 GETUPVAL                         R4 5
      514 LOADK                            R5 K191 ["setSettingsAsync"]
      515 CALL                             R4 1 1
      516 SETTABLEKS                       R4 R3 K191 ["setSettingsAsync"]
      518 GETUPVAL                         R4 5
      519 LOADK                            R5 K192 ["getUserSettingsAsync"]
      520 CALL                             R4 1 1
      521 SETTABLEKS                       R4 R3 K192 ["getUserSettingsAsync"]
      523 GETUPVAL                         R4 5
      524 LOADK                            R5 K193 ["setUserSettingsAsync"]
      525 CALL                             R4 1 1
      526 SETTABLEKS                       R4 R3 K193 ["setUserSettingsAsync"]
      528 GETUPVAL                         R4 5
      529 LOADK                            R5 K194 ["getPluginSetting"]
      530 CALL                             R4 1 1
      531 SETTABLEKS                       R4 R3 K194 ["getPluginSetting"]
      533 GETUPVAL                         R4 5
      534 LOADK                            R5 K195 ["setPluginSetting"]
      535 CALL                             R4 1 1
      536 SETTABLEKS                       R4 R3 K195 ["setPluginSetting"]
      538 GETUPVAL                         R4 5
      539 LOADK                            R5 K196 ["getSecureSettingsAsync"]
      540 CALL                             R4 1 1
      541 SETTABLEKS                       R4 R3 K196 ["getSecureSettingsAsync"]
      543 GETUPVAL                         R4 5
      544 LOADK                            R5 K197 ["setSecureSettingsAsync"]
      545 CALL                             R4 1 1
      546 SETTABLEKS                       R4 R3 K197 ["setSecureSettingsAsync"]
      548 GETUPVAL                         R4 5
      549 LOADK                            R5 K198 ["base64EncodeAsync"]
      550 CALL                             R4 1 1
      551 SETTABLEKS                       R4 R3 K198 ["base64EncodeAsync"]
      553 GETUPVAL                         R4 5
      554 LOADK                            R5 K199 ["generatePKCEAsync"]
      555 CALL                             R4 1 1
      556 SETTABLEKS                       R4 R3 K199 ["generatePKCEAsync"]
      558 GETUPVAL                         R4 5
      559 LOADK                            R5 K200 ["startMCPAuthAsync"]
      560 CALL                             R4 1 1
      561 SETTABLEKS                       R4 R3 K200 ["startMCPAuthAsync"]
      563 GETUPVAL                         R4 5
      564 LOADK                            R5 K201 ["setupMCPServerAsync"]
      565 CALL                             R4 1 1
      566 SETTABLEKS                       R4 R3 K201 ["setupMCPServerAsync"]
      568 GETUPVAL                         R4 5
      569 LOADK                            R5 K202 ["getMCPProxyTokenAsync"]
      570 CALL                             R4 1 1
      571 SETTABLEKS                       R4 R3 K202 ["getMCPProxyTokenAsync"]
      573 GETUPVAL                         R4 5
      574 LOADK                            R5 K203 ["getMCPCaptureHookCommandAsync"]
      575 CALL                             R4 1 1
      576 SETTABLEKS                       R4 R3 K203 ["getMCPCaptureHookCommandAsync"]
      578 GETUPVAL                         R4 5
      579 LOADK                            R5 K204 ["reportMcpToolCallAsync"]
      580 CALL                             R4 1 1
      581 SETTABLEKS                       R4 R3 K204 ["reportMcpToolCallAsync"]
      583 GETUPVAL                         R4 5
      584 LOADK                            R5 K205 ["startStopPlayAsync"]
      585 CALL                             R4 1 1
      586 SETTABLEKS                       R4 R3 K205 ["startStopPlayAsync"]
      588 DUPCLOSURE                       R4 K206 [PROTO_28]
      589 CAPTURE                          UPVAL U13
      590 SETTABLEKS                       R4 R3 K207 ["getLogHistory"]
      592 GETUPVAL                         R4 5
      593 LOADK                            R5 K208 ["subscribeOutput"]
      594 CALL                             R4 1 1
      595 SETTABLEKS                       R4 R3 K208 ["subscribeOutput"]
      597 GETUPVAL                         R4 5
      598 LOADK                            R5 K209 ["subscribeGameLoaded"]
      599 CALL                             R4 1 1
      600 SETTABLEKS                       R4 R3 K209 ["subscribeGameLoaded"]
      602 GETUPVAL                         R4 5
      603 LOADK                            R5 K210 ["subscribeGameStopped"]
      604 CALL                             R4 1 1
      605 SETTABLEKS                       R4 R3 K210 ["subscribeGameStopped"]
      607 GETUPVAL                         R4 5
      608 LOADK                            R5 K211 ["openFileDialogAsync"]
      609 CALL                             R4 1 1
      610 SETTABLEKS                       R4 R3 K211 ["openFileDialogAsync"]
      612 GETUPVAL                         R4 5
      613 LOADK                            R5 K212 ["openDirectoryDialogAsync"]
      614 CALL                             R4 1 1
      615 SETTABLEKS                       R4 R3 K212 ["openDirectoryDialogAsync"]
      617 GETUPVAL                         R4 5
      618 LOADK                            R5 K213 ["importFileBinaryAsync"]
      619 CALL                             R4 1 1
      620 SETTABLEKS                       R4 R3 K213 ["importFileBinaryAsync"]
      622 DUPCLOSURE                       R4 K214 [PROTO_29]
      623 SETTABLEKS                       R4 R3 K215 ["printToStudioLogAsync"]
      625 DUPTABLE                         R4 K219 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      626 GETUPVAL                         R5 5
      627 LOADK                            R6 K220 ["quickConnect.fileExistsAsync"]
      628 CALL                             R5 1 1
      629 SETTABLEKS                       R5 R4 K216 ["fileExistsAsync"]
      631 GETUPVAL                         R5 5
      632 LOADK                            R6 K221 ["quickConnect.readFileAsync"]
      633 CALL                             R5 1 1
      634 SETTABLEKS                       R5 R4 K217 ["readFileAsync"]
      636 GETUPVAL                         R5 5
      637 LOADK                            R6 K222 ["quickConnect.modifyFileAsync"]
      638 CALL                             R5 1 1
      639 SETTABLEKS                       R5 R4 K218 ["modifyFileAsync"]
      641 SETTABLEKS                       R4 R3 K223 ["quickConnect"]
      643 DUPTABLE                         R4 K229 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      644 GETUPVAL                         R5 5
      645 LOADK                            R6 K230 ["userSkillAssets.getManifestAsync"]
      646 CALL                             R5 1 1
      647 SETTABLEKS                       R5 R4 K224 ["getManifestAsync"]
      649 GETUPVAL                         R5 5
      650 LOADK                            R6 K231 ["userSkillAssets.fetchContentAsync"]
      651 CALL                             R5 1 1
      652 SETTABLEKS                       R5 R4 K225 ["fetchContentAsync"]
      654 GETUPVAL                         R5 5
      655 LOADK                            R6 K232 ["userSkillAssets.publishNewAsync"]
      656 CALL                             R5 1 1
      657 SETTABLEKS                       R5 R4 K226 ["publishNewAsync"]
      659 GETUPVAL                         R5 5
      660 LOADK                            R6 K233 ["userSkillAssets.publishUpdateAsync"]
      661 CALL                             R5 1 1
      662 SETTABLEKS                       R5 R4 K227 ["publishUpdateAsync"]
      664 GETUPVAL                         R5 5
      665 LOADK                            R6 K234 ["userSkillAssets.deleteAsync"]
      666 CALL                             R5 1 1
      667 SETTABLEKS                       R5 R4 K228 ["deleteAsync"]
      669 SETTABLEKS                       R4 R3 K235 ["userSkillAssets"]
      671 DUPTABLE                         R4 K239 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      672 GETUPVAL                         R5 5
      673 LOADK                            R6 K240 ["cloudSkillAssets.getAssetsAsync"]
      674 CALL                             R5 1 1
      675 SETTABLEKS                       R5 R4 K236 ["getAssetsAsync"]
      677 GETUPVAL                         R5 5
      678 LOADK                            R6 K241 ["cloudSkillAssets.uploadAssetsAsync"]
      679 CALL                             R5 1 1
      680 SETTABLEKS                       R5 R4 K237 ["uploadAssetsAsync"]
      682 GETUPVAL                         R5 5
      683 LOADK                            R6 K242 ["cloudSkillAssets.deleteAssetAsync"]
      684 CALL                             R5 1 1
      685 SETTABLEKS                       R5 R4 K238 ["deleteAssetAsync"]
      687 SETTABLEKS                       R4 R3 K243 ["cloudSkillAssets"]
      689 GETUPVAL                         R4 5
      690 LOADK                            R5 K244 ["getStudioPlayState"]
      691 CALL                             R4 1 1
      692 SETTABLEKS                       R4 R3 K244 ["getStudioPlayState"]
      694 GETUPVAL                         R4 5
      695 LOADK                            R5 K245 ["getFocusedDataModelType"]
      696 CALL                             R4 1 1
      697 SETTABLEKS                       R4 R3 K245 ["getFocusedDataModelType"]
      699 GETUPVAL                         R4 5
      700 LOADK                            R5 K246 ["isEditDataModelAvailable"]
      701 CALL                             R4 1 1
      702 SETTABLEKS                       R4 R3 K246 ["isEditDataModelAvailable"]
      704 GETUPVAL                         R4 5
      705 LOADK                            R5 K247 ["subscribeEditDataModelAvailabilityChanged"]
      706 CALL                             R4 1 1
      707 SETTABLEKS                       R4 R3 K247 ["subscribeEditDataModelAvailabilityChanged"]
      709 GETUPVAL                         R4 5
      710 LOADK                            R5 K248 ["fetchSystemPromptAsync"]
      711 CALL                             R4 1 1
      712 SETTABLEKS                       R4 R3 K248 ["fetchSystemPromptAsync"]
      714 DUPTABLE                         R4 K251 [{"startAsync", "getStatusAsync"}]
      715 GETUPVAL                         R5 5
      716 LOADK                            R6 K252 ["imageGeneration.startAsync"]
      717 CALL                             R5 1 1
      718 SETTABLEKS                       R5 R4 K249 ["startAsync"]
      720 GETUPVAL                         R5 5
      721 LOADK                            R6 K253 ["imageGeneration.getStatusAsync"]
      722 CALL                             R5 1 1
      723 SETTABLEKS                       R5 R4 K250 ["getStatusAsync"]
      725 SETTABLEKS                       R4 R3 K254 ["imageGeneration"]
      727 DUPTABLE                         R4 K251 [{"startAsync", "getStatusAsync"}]
      728 GETUPVAL                         R5 5
      729 LOADK                            R6 K255 ["texturePreview.startAsync"]
      730 CALL                             R5 1 1
      731 SETTABLEKS                       R5 R4 K249 ["startAsync"]
      733 GETUPVAL                         R5 5
      734 LOADK                            R6 K256 ["texturePreview.getStatusAsync"]
      735 CALL                             R5 1 1
      736 SETTABLEKS                       R5 R4 K250 ["getStatusAsync"]
      738 SETTABLEKS                       R4 R3 K257 ["texturePreview"]
      740 DUPTABLE                         R4 K251 [{"startAsync", "getStatusAsync"}]
      741 GETUPVAL                         R5 5
      742 LOADK                            R6 K258 ["sceneGeneration.startAsync"]
      743 CALL                             R5 1 1
      744 SETTABLEKS                       R5 R4 K249 ["startAsync"]
      746 GETUPVAL                         R5 5
      747 LOADK                            R6 K259 ["sceneGeneration.getStatusAsync"]
      748 CALL                             R5 1 1
      749 SETTABLEKS                       R5 R4 K250 ["getStatusAsync"]
      751 SETTABLEKS                       R4 R3 K260 ["sceneGeneration"]
      753 DUPTABLE                         R4 K265 [{"saveAsync", "saveVersionNotesAsync", "getMaxNotesTitleLength", "validateVersionNotesAsync"}]
      754 GETUPVAL                         R5 5
      755 LOADK                            R6 K266 ["placeSaving.saveAsync"]
      756 CALL                             R5 1 1
      757 SETTABLEKS                       R5 R4 K261 ["saveAsync"]
      759 GETUPVAL                         R5 5
      760 LOADK                            R6 K267 ["placeSaving.saveVersionNotesAsync"]
      761 CALL                             R5 1 1
      762 SETTABLEKS                       R5 R4 K262 ["saveVersionNotesAsync"]
      764 GETUPVAL                         R5 5
      765 LOADK                            R6 K268 ["placeSaving.getMaxNotesTitleLength"]
      766 CALL                             R5 1 1
      767 SETTABLEKS                       R5 R4 K263 ["getMaxNotesTitleLength"]
      769 GETUPVAL                         R5 5
      770 LOADK                            R6 K269 ["placeSaving.validateVersionNotesAsync"]
      771 CALL                             R5 1 1
      772 SETTABLEKS                       R5 R4 K264 ["validateVersionNotesAsync"]
      774 SETTABLEKS                       R4 R3 K270 ["placeSaving"]
      776 DUPTABLE                         R4 K271 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      777 GETUPVAL                         R5 5
      778 LOADK                            R6 K272 ["segmentMesh.startAsync"]
      779 CALL                             R5 1 1
      780 SETTABLEKS                       R5 R4 K249 ["startAsync"]
      782 GETUPVAL                         R5 5
      783 LOADK                            R6 K273 ["segmentMesh.getStatusAsync"]
      784 CALL                             R5 1 1
      785 SETTABLEKS                       R5 R4 K250 ["getStatusAsync"]
      787 GETUPVAL                         R5 5
      788 LOADK                            R6 K274 ["segmentMesh.publishAssetAsync"]
      789 CALL                             R5 1 1
      790 SETTABLEKS                       R5 R4 K133 ["publishAssetAsync"]
      792 GETUPVAL                         R5 5
      793 LOADK                            R6 K275 ["segmentMesh.loadAssetAsync"]
      794 CALL                             R5 1 1
      795 SETTABLEKS                       R5 R4 K86 ["loadAssetAsync"]
      797 SETTABLEKS                       R4 R3 K276 ["segmentMesh"]
      799 DUPTABLE                         R4 K271 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      800 GETUPVAL                         R5 5
      801 LOADK                            R6 K277 ["textureGeneration.startAsync"]
      802 CALL                             R5 1 1
      803 SETTABLEKS                       R5 R4 K249 ["startAsync"]
      805 GETUPVAL                         R5 5
      806 LOADK                            R6 K278 ["textureGeneration.getStatusAsync"]
      807 CALL                             R5 1 1
      808 SETTABLEKS                       R5 R4 K250 ["getStatusAsync"]
      810 GETUPVAL                         R5 5
      811 LOADK                            R6 K279 ["textureGeneration.publishAssetAsync"]
      812 CALL                             R5 1 1
      813 SETTABLEKS                       R5 R4 K133 ["publishAssetAsync"]
      815 GETUPVAL                         R5 5
      816 LOADK                            R6 K280 ["textureGeneration.loadAssetAsync"]
      817 CALL                             R5 1 1
      818 SETTABLEKS                       R5 R4 K86 ["loadAssetAsync"]
      820 SETTABLEKS                       R4 R3 K281 ["textureGeneration"]
      822 DUPCLOSURE                       R4 K282 [PROTO_30]
      823 SETTABLEKS                       R4 R3 K283 ["hasInternalPermission"]
      825 DUPCLOSURE                       R4 K284 [PROTO_31]
      826 SETTABLEKS                       R4 R3 K285 ["getAssistantPermissionsBridge"]
      828 DUPCLOSURE                       R4 K286 [PROTO_32]
      829 CAPTURE                          UPVAL U14
      830 SETTABLEKS                       R4 R3 K287 ["getMockPrimGenBackendData"]
      832 GETUPVAL                         R4 5
      833 LOADK                            R5 K288 ["startMultiPlayerTest"]
      834 CALL                             R4 1 1
      835 SETTABLEKS                       R4 R3 K288 ["startMultiPlayerTest"]
      837 GETUPVAL                         R4 5
      838 LOADK                            R5 K289 ["stopMultiPlayerTest"]
      839 CALL                             R4 1 1
      840 SETTABLEKS                       R4 R3 K289 ["stopMultiPlayerTest"]
      842 GETUPVAL                         R4 5
      843 LOADK                            R5 K290 ["isInMultiPlayerTest"]
      844 CALL                             R4 1 1
      845 SETTABLEKS                       R4 R3 K290 ["isInMultiPlayerTest"]
      847 GETUPVAL                         R4 5
      848 LOADK                            R5 K291 ["getStopMultiPlayerTestResults"]
      849 CALL                             R4 1 1
      850 SETTABLEKS                       R4 R3 K292 ["subscribeStopMultiPlayerTestStateChanged"]
      852 GETUPVAL                         R4 5
      853 LOADK                            R5 K293 ["createMultiPlayersServer"]
      854 CALL                             R4 1 1
      855 SETTABLEKS                       R4 R3 K293 ["createMultiPlayersServer"]
      857 GETUPVAL                         R4 5
      858 LOADK                            R5 K294 ["createMultiPlayersClient"]
      859 CALL                             R4 1 1
      860 SETTABLEKS                       R4 R3 K294 ["createMultiPlayersClient"]
      862 GETUPVAL                         R4 5
      863 LOADK                            R5 K295 ["getExperimentFeatureEnabled"]
      864 CALL                             R4 1 1
      865 SETTABLEKS                       R4 R3 K295 ["getExperimentFeatureEnabled"]
      867 GETUPVAL                         R4 5
      868 LOADK                            R5 K296 ["getOnExperimentChangedSignal"]
      869 CALL                             R4 1 1
      870 SETTABLEKS                       R4 R3 K297 ["onceExperimentFeatureEnabled"]
      872 GETUPVAL                         R4 5
      873 LOADK                            R5 K298 ["getStudioState"]
      874 CALL                             R4 1 1
      875 SETTABLEKS                       R4 R3 K298 ["getStudioState"]
      877 MOVE                             R2 R3
      878 CLOSEUPVALS                      R1
      879 RETURN                           R2 1

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
       63 GETTABLEKS                       R12 R8 K19 ["Gen3dCore"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K16 [require]
       68 GETTABLEKS                       R13 R8 K20 ["ReactUtils"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K16 [require]
       73 GETTABLEKS                       R14 R8 K21 ["Signal"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K16 [require]
       78 GETTABLEKS                       R15 R0 K22 ["Util"]
       80 GETTABLEKS                       R15 R15 K23 ["AvatarGen"]
       82 GETTABLEKS                       R15 R15 K24 ["AvatarGenEnums"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K16 [require]
       87 GETIMPORT                        R16 K1 [script]
       89 GETTABLEKS                       R16 R16 K25 ["EventLogger"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K16 [require]
       94 GETTABLEKS                       R17 R0 K26 ["Flags"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K16 [require]
       99 GETTABLEKS                       R18 R0 K27 ["Guest"]
      101 GETTABLEKS                       R18 R18 K28 ["LoadAssetHandlers"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K16 [require]
      106 GETTABLEKS                       R19 R0 K22 ["Util"]
      108 GETTABLEKS                       R19 R19 K29 ["MultiPlayersConnection"]
      110 GETTABLEKS                       R19 R19 K30 ["MultiPlayerAgentTypes"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K16 [require]
      115 GETTABLEKS                       R20 R0 K27 ["Guest"]
      117 GETTABLEKS                       R20 R20 K31 ["RecordingHandlers"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K16 [require]
      122 GETTABLEKS                       R21 R0 K32 ["Types"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K16 [require]
      127 GETTABLEKS                       R22 R0 K33 ["FlagUtils"]
      129 GETTABLEKS                       R22 R22 K34 ["getIsAnimationGenEnabled"]
      131 CALL                             R21 1 1
      132 GETTABLEKS                       R22 R12 K35 ["createUnimplemented"]
      134 GETTABLEKS                       R23 R9 K36 ["Engine"]
      136 GETTABLEKS                       R23 R23 K37 ["EngineEnv"]
      138 DUPCLOSURE                       R24 K38 [PROTO_33]
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R0
      154 MOVE                             R25 R24
      155 CALL                             R25 0 1
      156 GETTABLEKS                       R26 R23 K39 ["configure"]
      158 DUPTABLE                         R27 K43 [{"eventLogger", "isCompactionExperimentEnabled", "printToStudioLog"}]
      159 DUPTABLE                         R28 K49 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      160 NEWCLOSURE                       R29 P1
      161 CAPTURE                          REF R25
      162 SETTABLEKS                       R29 R28 K44 ["logErrorEvent"]
      164 NEWCLOSURE                       R29 P2
      165 CAPTURE                          REF R25
      166 SETTABLEKS                       R29 R28 K45 ["logToolStarted"]
      168 NEWCLOSURE                       R29 P3
      169 CAPTURE                          REF R25
      170 SETTABLEKS                       R29 R28 K46 ["logCompactionFallback"]
      172 NEWCLOSURE                       R29 P4
      173 CAPTURE                          REF R25
      174 SETTABLEKS                       R29 R28 K47 ["logCompactionSuccess"]
      176 NEWCLOSURE                       R29 P5
      177 CAPTURE                          REF R25
      178 SETTABLEKS                       R29 R28 K48 ["logThinkingBlock"]
      180 SETTABLEKS                       R28 R27 K40 ["eventLogger"]
      182 NEWCLOSURE                       R28 P6
      183 CAPTURE                          REF R25
      184 SETTABLEKS                       R28 R27 K41 ["isCompactionExperimentEnabled"]
      186 NEWCLOSURE                       R28 P7
      187 CAPTURE                          REF R25
      188 SETTABLEKS                       R28 R27 K42 ["printToStudioLog"]
      190 CALL                             R26 1 0
      191 DUPTABLE                         R26 K54 [{"new", "get", "set", "destroy"}]
      192 SETTABLEKS                       R24 R26 K50 ["new"]
      194 NEWCLOSURE                       R27 P8
      195 CAPTURE                          REF R25
      196 SETTABLEKS                       R27 R26 K51 ["get"]
      198 NEWCLOSURE                       R27 P9
      199 CAPTURE                          REF R25
      200 SETTABLEKS                       R27 R26 K52 ["set"]
      202 NEWCLOSURE                       R27 P10
      203 CAPTURE                          REF R25
      204 SETTABLEKS                       R27 R26 K53 ["destroy"]
      206 CLOSEUPVALS                      R25
      207 RETURN                           R26 1
