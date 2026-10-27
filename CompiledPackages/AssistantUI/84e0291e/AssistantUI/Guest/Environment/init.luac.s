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

PROTO_8:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CreateMeshPartAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Texture"]
        9 RETURN                           R1 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["ColorMap"]
        9 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_30:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_31:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Util"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenMockData"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["MockFerrisWheelResult"]
       12 RETURN                           R1 1

PROTO_32:
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
       47 NEWCLOSURE                       R4 P7
       48 CAPTURE                          REF R1
       49 CAPTURE                          UPVAL U5
       50 SETTABLEKS                       R4 R3 K21 ["getStudioSessionId"]
       52 NEWCLOSURE                       R4 P8
       53 CAPTURE                          REF R1
       54 SETTABLEKS                       R4 R3 K22 ["resetStudioSessionId"]
       56 GETUPVAL                         R4 3
       57 LOADK                            R5 K23 ["copyToClipboard"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K23 ["copyToClipboard"]
       61 GETUPVAL                         R4 3
       62 LOADK                            R5 K24 ["openAssetManager"]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R3 K24 ["openAssetManager"]
       66 GETUPVAL                         R4 3
       67 LOADK                            R5 K25 ["browseAssetsAsync"]
       68 CALL                             R4 1 1
       69 SETTABLEKS                       R4 R3 K25 ["browseAssetsAsync"]
       71 DUPCLOSURE                       R4 K26 [PROTO_9]
       72 SETTABLEKS                       R4 R3 K27 ["getClassIcon"]
       74 GETTABLEKS                       R4 R0 K28 ["startRecording"]
       76 SETTABLEKS                       R4 R3 K28 ["startRecording"]
       78 GETTABLEKS                       R4 R0 K29 ["endRecording"]
       80 SETTABLEKS                       R4 R3 K29 ["endRecording"]
       82 DUPCLOSURE                       R4 K30 [PROTO_10]
       83 SETTABLEKS                       R4 R3 K31 ["getScriptSource"]
       85 GETUPVAL                         R4 3
       86 LOADK                            R5 K32 ["openScriptAsync"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K32 ["openScriptAsync"]
       90 DUPTABLE                         R4 K36 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       91 DUPCLOSURE                       R5 K37 [PROTO_11]
       92 CAPTURE                          UPVAL U5
       93 SETTABLEKS                       R5 R4 K33 ["createWebStreamClient"]
       95 DUPCLOSURE                       R5 K38 [PROTO_12]
       96 CAPTURE                          UPVAL U5
       97 SETTABLEKS                       R5 R4 K34 ["requestAsync"]
       99 GETUPVAL                         R5 3
      100 LOADK                            R6 K35 ["openUrl"]
      101 CALL                             R5 1 1
      102 SETTABLEKS                       R5 R4 K35 ["openUrl"]
      104 SETTABLEKS                       R4 R3 K39 ["http"]
      106 DUPTABLE                         R4 K42 [{"encodeAsync", "decodeAsync"}]
      107 DUPCLOSURE                       R5 K43 [PROTO_13]
      108 CAPTURE                          UPVAL U5
      109 SETTABLEKS                       R5 R4 K40 ["encodeAsync"]
      111 DUPCLOSURE                       R5 K44 [PROTO_14]
      112 CAPTURE                          UPVAL U5
      113 SETTABLEKS                       R5 R4 K41 ["decodeAsync"]
      115 SETTABLEKS                       R4 R3 K45 ["json"]
      117 DUPTABLE                         R4 K48 [{"get", "set"}]
      118 DUPCLOSURE                       R5 K49 [PROTO_15]
      119 SETTABLEKS                       R5 R4 K46 ["get"]
      121 DUPCLOSURE                       R5 K50 [PROTO_16]
      122 SETTABLEKS                       R5 R4 K47 ["set"]
      124 SETTABLEKS                       R4 R3 K51 ["selection"]
      126 DUPTABLE                         R4 K56 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync", "resolveInstanceByPathAsync"}]
      127 GETUPVAL                         R5 3
      128 LOADK                            R6 K52 ["getUniqueId"]
      129 CALL                             R5 1 1
      130 SETTABLEKS                       R5 R4 K52 ["getUniqueId"]
      132 GETUPVAL                         R5 3
      133 LOADK                            R6 K53 ["getInstanceFromUniqueId"]
      134 CALL                             R5 1 1
      135 SETTABLEKS                       R5 R4 K53 ["getInstanceFromUniqueId"]
      137 GETUPVAL                         R5 3
      138 LOADK                            R6 K54 ["pickInstanceAsync"]
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K54 ["pickInstanceAsync"]
      142 GETUPVAL                         R5 3
      143 LOADK                            R6 K55 ["resolveInstanceByPathAsync"]
      144 CALL                             R5 1 1
      145 SETTABLEKS                       R5 R4 K55 ["resolveInstanceByPathAsync"]
      147 SETTABLEKS                       R4 R3 K57 ["instances"]
      149 DUPTABLE                         R4 K72 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "layoutGen", "animationGen", "avatarAutoSetup", "avatarGen", "screenCapture", "pluginCapture", "uploadImage", "assetSearch", "assetInsert"}]
      150 DUPTABLE                         R5 K75 [{"loadCode", "stopCode"}]
      151 GETUPVAL                         R6 3
      152 LOADK                            R7 K73 ["loadCode"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K73 ["loadCode"]
      156 GETUPVAL                         R6 3
      157 LOADK                            R7 K74 ["stopCode"]
      158 CALL                             R6 1 1
      159 SETTABLEKS                       R6 R5 K74 ["stopCode"]
      161 SETTABLEKS                       R5 R4 K58 ["executeLuau"]
      163 DUPTABLE                         R5 K78 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      164 DUPCLOSURE                       R6 K79 [PROTO_17]
      165 SETTABLEKS                       R6 R5 K76 ["updateScriptSourceAsync"]
      167 DUPCLOSURE                       R6 K80 [PROTO_18]
      168 SETTABLEKS                       R6 R5 K77 ["applyScriptSourceDirectly"]
      170 SETTABLEKS                       R5 R4 K59 ["multiEdit"]
      172 DUPTABLE                         R5 K83 [{"getFreeModelsAsync", "loadAssetAsync"}]
      173 NEWCLOSURE                       R6 P19
      174 CAPTURE                          REF R2
      175 CAPTURE                          UPVAL U6
      176 SETTABLEKS                       R6 R5 K81 ["getFreeModelsAsync"]
      178 GETUPVAL                         R6 7
      179 GETTABLEKS                       R6 R6 K84 ["getStandardHandler"]
      181 GETUPVAL                         R7 8
      182 CALL                             R6 1 1
      183 SETTABLEKS                       R6 R5 K82 ["loadAssetAsync"]
      185 SETTABLEKS                       R5 R4 K60 ["marketplaceInsertion"]
      187 DUPTABLE                         R5 K87 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      188 GETUPVAL                         R6 3
      189 LOADK                            R7 K85 ["generateMaterialVariantsAsync"]
      190 CALL                             R6 1 1
      191 SETTABLEKS                       R6 R5 K85 ["generateMaterialVariantsAsync"]
      193 GETUPVAL                         R6 3
      194 LOADK                            R7 K86 ["uploadMaterialsAsync"]
      195 CALL                             R6 1 1
      196 SETTABLEKS                       R6 R5 K86 ["uploadMaterialsAsync"]
      198 SETTABLEKS                       R5 R4 K61 ["materialGen"]
      200 DUPTABLE                         R5 K94 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      201 DUPCLOSURE                       R6 K95 [PROTO_20]
      202 CAPTURE                          UPVAL U9
      203 SETTABLEKS                       R6 R5 K88 ["generateModelAsync"]
      205 GETUPVAL                         R6 3
      206 LOADK                            R7 K89 ["publishModelAsync"]
      207 CALL                             R6 1 1
      208 SETTABLEKS                       R6 R5 K89 ["publishModelAsync"]
      210 GETUPVAL                         R6 7
      211 GETTABLEKS                       R6 R6 K84 ["getStandardHandler"]
      213 GETUPVAL                         R7 8
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K82 ["loadAssetAsync"]
      217 GETUPVAL                         R6 3
      218 LOADK                            R7 K90 ["activateScaleTool"]
      219 CALL                             R6 1 1
      220 SETTABLEKS                       R6 R5 K90 ["activateScaleTool"]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K91 ["exportInstanceToGlbAsync"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K91 ["exportInstanceToGlbAsync"]
      227 GETUPVAL                         R6 3
      228 LOADK                            R7 K92 ["exportMeshToGlbAsync"]
      229 CALL                             R6 1 1
      230 SETTABLEKS                       R6 R5 K92 ["exportMeshToGlbAsync"]
      232 GETUPVAL                         R6 3
      233 LOADK                            R7 K93 ["loadModelFromUrlAsync"]
      234 CALL                             R6 1 1
      235 SETTABLEKS                       R6 R5 K93 ["loadModelFromUrlAsync"]
      237 SETTABLEKS                       R5 R4 K62 ["meshGen"]
      239 DUPTABLE                         R5 K96 [{"activateScaleTool"}]
      240 GETUPVAL                         R6 3
      241 LOADK                            R7 K90 ["activateScaleTool"]
      242 CALL                             R6 1 1
      243 SETTABLEKS                       R6 R5 K90 ["activateScaleTool"]
      245 SETTABLEKS                       R5 R4 K63 ["layoutGen"]
      247 GETUPVAL                         R6 10
      248 GETTABLEKS                       R6 R6 K97 ["FFlagAssistantAnimationGenTool"]
      250 JUMPIFNOT                        R6 ; [+7]
      251 DUPTABLE                         R5 K99 [{"generateAnimationAsync"}]
      252 GETUPVAL                         R6 3
      253 LOADK                            R7 K98 ["generateAnimationAsync"]
      254 CALL                             R6 1 1
      255 SETTABLEKS                       R6 R5 K98 ["generateAnimationAsync"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R5
      259 SETTABLEKS                       R5 R4 K64 ["animationGen"]
      261 GETUPVAL                         R6 10
      262 GETTABLEKS                       R6 R6 K100 ["FFlagAssistantAvatarAutoSetupTool"]
      264 JUMPIFNOT                        R6 ; [+17]
      265 DUPTABLE                         R5 K104 [{"autoSetupAsync", "cancelAutoSetup", "getClassificationPlan"}]
      266 GETUPVAL                         R6 3
      267 LOADK                            R7 K101 ["autoSetupAsync"]
      268 CALL                             R6 1 1
      269 SETTABLEKS                       R6 R5 K101 ["autoSetupAsync"]
      271 GETUPVAL                         R6 3
      272 LOADK                            R7 K102 ["cancelAutoSetup"]
      273 CALL                             R6 1 1
      274 SETTABLEKS                       R6 R5 K102 ["cancelAutoSetup"]
      276 GETUPVAL                         R6 3
      277 LOADK                            R7 K103 ["getClassificationPlan"]
      278 CALL                             R6 1 1
      279 SETTABLEKS                       R6 R5 K103 ["getClassificationPlan"]
      281 JUMP                             ; [+1]
      282 LOADNIL                          R5
      283 SETTABLEKS                       R5 R4 K65 ["avatarAutoSetup"]
      285 GETUPVAL                         R6 10
      286 GETTABLEKS                       R6 R6 K105 ["FFlagAssistantAvatarGenTool"]
      288 JUMPIFNOT                        R6 ; [+7]
      289 DUPTABLE                         R5 K107 [{"generateAvatarAsync"}]
      290 GETUPVAL                         R6 3
      291 LOADK                            R7 K106 ["generateAvatarAsync"]
      292 CALL                             R6 1 1
      293 SETTABLEKS                       R6 R5 K106 ["generateAvatarAsync"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R5
      297 SETTABLEKS                       R5 R4 K66 ["avatarGen"]
      299 DUPTABLE                         R5 K110 [{"getImageDataBase64Async", "captureScreenshot"}]
      300 GETUPVAL                         R6 3
      301 LOADK                            R7 K108 ["getImageDataBase64Async"]
      302 CALL                             R6 1 1
      303 SETTABLEKS                       R6 R5 K108 ["getImageDataBase64Async"]
      305 DUPCLOSURE                       R6 K111 [PROTO_21]
      306 CAPTURE                          UPVAL U11
      307 SETTABLEKS                       R6 R5 K109 ["captureScreenshot"]
      309 SETTABLEKS                       R5 R4 K67 ["screenCapture"]
      311 DUPTABLE                         R5 K115 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync", "focusPanelAsync"}]
      312 GETUPVAL                         R6 3
      313 LOADK                            R7 K116 ["pluginCapture.listPluginGuisAsync"]
      314 CALL                             R6 1 1
      315 SETTABLEKS                       R6 R5 K112 ["listPluginGuisAsync"]
      317 GETUPVAL                         R6 3
      318 LOADK                            R7 K117 ["pluginCapture.capturePluginGuiByIdAsync"]
      319 CALL                             R6 1 1
      320 SETTABLEKS                       R6 R5 K113 ["capturePluginGuiByIdAsync"]
      322 GETUPVAL                         R6 3
      323 LOADK                            R7 K118 ["pluginCapture.focusPanelAsync"]
      324 CALL                             R6 1 1
      325 SETTABLEKS                       R6 R5 K114 ["focusPanelAsync"]
      327 SETTABLEKS                       R5 R4 K68 ["pluginCapture"]
      329 DUPTABLE                         R5 K122 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      330 GETUPVAL                         R6 3
      331 LOADK                            R7 K119 ["loadImageAsync"]
      332 CALL                             R6 1 1
      333 SETTABLEKS                       R6 R5 K119 ["loadImageAsync"]
      335 GETUPVAL                         R6 3
      336 LOADK                            R7 K120 ["publishAssetAsync"]
      337 CALL                             R6 1 1
      338 SETTABLEKS                       R6 R5 K120 ["publishAssetAsync"]
      340 GETUPVAL                         R6 3
      341 LOADK                            R7 K121 ["searchAssetAsync"]
      342 CALL                             R6 1 1
      343 SETTABLEKS                       R6 R5 K121 ["searchAssetAsync"]
      345 SETTABLEKS                       R5 R4 K69 ["uploadImage"]
      347 DUPTABLE                         R5 K129 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      348 GETUPVAL                         R6 3
      349 LOADK                            R7 K130 ["assetSearch.getStudioIdentity"]
      350 CALL                             R6 1 1
      351 SETTABLEKS                       R6 R5 K123 ["getStudioIdentity"]
      353 GETUPVAL                         R6 3
      354 LOADK                            R7 K131 ["assetSearch.searchCreatorInventoryAsync"]
      355 CALL                             R6 1 1
      356 SETTABLEKS                       R6 R5 K124 ["searchCreatorInventoryAsync"]
      358 GETUPVAL                         R6 3
      359 LOADK                            R7 K132 ["assetSearch.fetchUserGroupsAsync"]
      360 CALL                             R6 1 1
      361 SETTABLEKS                       R6 R5 K125 ["fetchUserGroupsAsync"]
      363 GETUPVAL                         R6 3
      364 LOADK                            R7 K133 ["assetSearch.searchCreatorStoreAssetsAsync"]
      365 CALL                             R6 1 1
      366 SETTABLEKS                       R6 R5 K126 ["searchCreatorStoreAssetsAsync"]
      368 GETUPVAL                         R6 3
      369 LOADK                            R7 K134 ["assetSearch.getThumbnailsUrl"]
      370 CALL                             R6 1 1
      371 SETTABLEKS                       R6 R5 K127 ["getThumbnailsUrl"]
      373 GETUPVAL                         R6 3
      374 LOADK                            R7 K135 ["assetSearch.getCreatorHubUrl"]
      375 CALL                             R6 1 1
      376 SETTABLEKS                       R6 R5 K128 ["getCreatorHubUrl"]
      378 SETTABLEKS                       R5 R4 K70 ["assetSearch"]
      380 DUPTABLE                         R5 K147 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      381 GETUPVAL                         R6 3
      382 LOADK                            R7 K148 ["assetInsert.getObjects"]
      383 CALL                             R6 1 1
      384 SETTABLEKS                       R6 R5 K136 ["getObjects"]
      386 GETUPVAL                         R6 3
      387 LOADK                            R7 K149 ["assetInsert.getItemDetailsAsync"]
      388 CALL                             R6 1 1
      389 SETTABLEKS                       R6 R5 K137 ["getItemDetailsAsync"]
      391 GETUPVAL                         R6 3
      392 LOADK                            R7 K150 ["assetInsert.loadPackageAssetAsync"]
      393 CALL                             R6 1 1
      394 SETTABLEKS                       R6 R5 K138 ["loadPackageAssetAsync"]
      396 GETUPVAL                         R6 3
      397 LOADK                            R7 K151 ["assetInsert.insertAudioAsset"]
      398 CALL                             R6 1 1
      399 SETTABLEKS                       R6 R5 K139 ["insertAudioAsset"]
      401 GETUPVAL                         R6 3
      402 LOADK                            R7 K152 ["assetInsert.getAudioApiByDefault"]
      403 CALL                             R6 1 1
      404 SETTABLEKS                       R6 R5 K140 ["getAudioApiByDefault"]
      406 GETUPVAL                         R6 3
      407 LOADK                            R7 K153 ["assetInsert.assignSourceAssetId"]
      408 CALL                             R6 1 1
      409 SETTABLEKS                       R6 R5 K141 ["assignSourceAssetId"]
      411 DUPCLOSURE                       R6 K154 [PROTO_22]
      412 CAPTURE                          UPVAL U8
      413 SETTABLEKS                       R6 R5 K142 ["createMeshPartAsync"]
      415 DUPCLOSURE                       R6 K155 [PROTO_23]
      416 SETTABLEKS                       R6 R5 K143 ["createDecal"]
      418 DUPCLOSURE                       R6 K156 [PROTO_24]
      419 SETTABLEKS                       R6 R5 K144 ["createDecalFromImage"]
      421 DUPCLOSURE                       R6 K157 [PROTO_25]
      422 SETTABLEKS                       R6 R5 K145 ["createSound"]
      424 DUPCLOSURE                       R6 K158 [PROTO_26]
      425 SETTABLEKS                       R6 R5 K146 ["createVideoFrame"]
      427 SETTABLEKS                       R5 R4 K71 ["assetInsert"]
      429 SETTABLEKS                       R4 R3 K159 ["tools"]
      431 GETUPVAL                         R4 3
      432 LOADK                            R5 K160 ["convertImageDataToTempIdAsync"]
      433 CALL                             R4 1 1
      434 SETTABLEKS                       R4 R3 K160 ["convertImageDataToTempIdAsync"]
      436 GETUPVAL                         R4 3
      437 LOADK                            R5 K161 ["releaseTempIdAsync"]
      438 CALL                             R4 1 1
      439 SETTABLEKS                       R4 R3 K161 ["releaseTempIdAsync"]
      441 GETUPVAL                         R4 3
      442 LOADK                            R5 K162 ["getSettingsAsync"]
      443 CALL                             R4 1 1
      444 SETTABLEKS                       R4 R3 K162 ["getSettingsAsync"]
      446 GETUPVAL                         R4 3
      447 LOADK                            R5 K163 ["setSettingsAsync"]
      448 CALL                             R4 1 1
      449 SETTABLEKS                       R4 R3 K163 ["setSettingsAsync"]
      451 GETUPVAL                         R4 3
      452 LOADK                            R5 K164 ["getUserSettingsAsync"]
      453 CALL                             R4 1 1
      454 SETTABLEKS                       R4 R3 K164 ["getUserSettingsAsync"]
      456 GETUPVAL                         R4 3
      457 LOADK                            R5 K165 ["setUserSettingsAsync"]
      458 CALL                             R4 1 1
      459 SETTABLEKS                       R4 R3 K165 ["setUserSettingsAsync"]
      461 GETUPVAL                         R4 3
      462 LOADK                            R5 K166 ["getPluginSetting"]
      463 CALL                             R4 1 1
      464 SETTABLEKS                       R4 R3 K166 ["getPluginSetting"]
      466 GETUPVAL                         R4 3
      467 LOADK                            R5 K167 ["setPluginSetting"]
      468 CALL                             R4 1 1
      469 SETTABLEKS                       R4 R3 K167 ["setPluginSetting"]
      471 GETUPVAL                         R4 3
      472 LOADK                            R5 K168 ["getSecureSettingsAsync"]
      473 CALL                             R4 1 1
      474 SETTABLEKS                       R4 R3 K168 ["getSecureSettingsAsync"]
      476 GETUPVAL                         R4 3
      477 LOADK                            R5 K169 ["setSecureSettingsAsync"]
      478 CALL                             R4 1 1
      479 SETTABLEKS                       R4 R3 K169 ["setSecureSettingsAsync"]
      481 GETUPVAL                         R4 3
      482 LOADK                            R5 K170 ["base64EncodeAsync"]
      483 CALL                             R4 1 1
      484 SETTABLEKS                       R4 R3 K170 ["base64EncodeAsync"]
      486 GETUPVAL                         R4 3
      487 LOADK                            R5 K171 ["generatePKCEAsync"]
      488 CALL                             R4 1 1
      489 SETTABLEKS                       R4 R3 K171 ["generatePKCEAsync"]
      491 GETUPVAL                         R4 3
      492 LOADK                            R5 K172 ["startMCPAuthAsync"]
      493 CALL                             R4 1 1
      494 SETTABLEKS                       R4 R3 K172 ["startMCPAuthAsync"]
      496 GETUPVAL                         R4 3
      497 LOADK                            R5 K173 ["setupMCPServerAsync"]
      498 CALL                             R4 1 1
      499 SETTABLEKS                       R4 R3 K173 ["setupMCPServerAsync"]
      501 GETUPVAL                         R4 3
      502 LOADK                            R5 K174 ["getMCPProxyTokenAsync"]
      503 CALL                             R4 1 1
      504 SETTABLEKS                       R4 R3 K174 ["getMCPProxyTokenAsync"]
      506 GETUPVAL                         R4 3
      507 LOADK                            R5 K175 ["startStopPlayAsync"]
      508 CALL                             R4 1 1
      509 SETTABLEKS                       R4 R3 K175 ["startStopPlayAsync"]
      511 DUPCLOSURE                       R4 K176 [PROTO_27]
      512 CAPTURE                          UPVAL U12
      513 SETTABLEKS                       R4 R3 K177 ["getLogHistory"]
      515 GETUPVAL                         R4 3
      516 LOADK                            R5 K178 ["subscribeOutput"]
      517 CALL                             R4 1 1
      518 SETTABLEKS                       R4 R3 K178 ["subscribeOutput"]
      520 GETUPVAL                         R4 3
      521 LOADK                            R5 K179 ["subscribeGameLoaded"]
      522 CALL                             R4 1 1
      523 SETTABLEKS                       R4 R3 K179 ["subscribeGameLoaded"]
      525 GETUPVAL                         R4 3
      526 LOADK                            R5 K180 ["subscribeGameStopped"]
      527 CALL                             R4 1 1
      528 SETTABLEKS                       R4 R3 K180 ["subscribeGameStopped"]
      530 GETUPVAL                         R4 3
      531 LOADK                            R5 K181 ["openFileDialogAsync"]
      532 CALL                             R4 1 1
      533 SETTABLEKS                       R4 R3 K181 ["openFileDialogAsync"]
      535 GETUPVAL                         R4 3
      536 LOADK                            R5 K182 ["openDirectoryDialogAsync"]
      537 CALL                             R4 1 1
      538 SETTABLEKS                       R4 R3 K182 ["openDirectoryDialogAsync"]
      540 GETUPVAL                         R4 3
      541 LOADK                            R5 K183 ["importFileBinaryAsync"]
      542 CALL                             R4 1 1
      543 SETTABLEKS                       R4 R3 K183 ["importFileBinaryAsync"]
      545 DUPCLOSURE                       R4 K184 [PROTO_28]
      546 SETTABLEKS                       R4 R3 K185 ["printToStudioLogAsync"]
      548 DUPTABLE                         R4 K189 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      549 GETUPVAL                         R5 3
      550 LOADK                            R6 K190 ["quickConnect.fileExistsAsync"]
      551 CALL                             R5 1 1
      552 SETTABLEKS                       R5 R4 K186 ["fileExistsAsync"]
      554 GETUPVAL                         R5 3
      555 LOADK                            R6 K191 ["quickConnect.readFileAsync"]
      556 CALL                             R5 1 1
      557 SETTABLEKS                       R5 R4 K187 ["readFileAsync"]
      559 GETUPVAL                         R5 3
      560 LOADK                            R6 K192 ["quickConnect.modifyFileAsync"]
      561 CALL                             R5 1 1
      562 SETTABLEKS                       R5 R4 K188 ["modifyFileAsync"]
      564 SETTABLEKS                       R4 R3 K193 ["quickConnect"]
      566 DUPTABLE                         R4 K199 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      567 GETUPVAL                         R5 3
      568 LOADK                            R6 K200 ["userSkillAssets.getManifestAsync"]
      569 CALL                             R5 1 1
      570 SETTABLEKS                       R5 R4 K194 ["getManifestAsync"]
      572 GETUPVAL                         R5 3
      573 LOADK                            R6 K201 ["userSkillAssets.fetchContentAsync"]
      574 CALL                             R5 1 1
      575 SETTABLEKS                       R5 R4 K195 ["fetchContentAsync"]
      577 GETUPVAL                         R5 3
      578 LOADK                            R6 K202 ["userSkillAssets.publishNewAsync"]
      579 CALL                             R5 1 1
      580 SETTABLEKS                       R5 R4 K196 ["publishNewAsync"]
      582 GETUPVAL                         R5 3
      583 LOADK                            R6 K203 ["userSkillAssets.publishUpdateAsync"]
      584 CALL                             R5 1 1
      585 SETTABLEKS                       R5 R4 K197 ["publishUpdateAsync"]
      587 GETUPVAL                         R5 3
      588 LOADK                            R6 K204 ["userSkillAssets.deleteAsync"]
      589 CALL                             R5 1 1
      590 SETTABLEKS                       R5 R4 K198 ["deleteAsync"]
      592 SETTABLEKS                       R4 R3 K205 ["userSkillAssets"]
      594 DUPTABLE                         R4 K209 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      595 GETUPVAL                         R5 3
      596 LOADK                            R6 K210 ["cloudSkillAssets.getAssetsAsync"]
      597 CALL                             R5 1 1
      598 SETTABLEKS                       R5 R4 K206 ["getAssetsAsync"]
      600 GETUPVAL                         R5 3
      601 LOADK                            R6 K211 ["cloudSkillAssets.uploadAssetsAsync"]
      602 CALL                             R5 1 1
      603 SETTABLEKS                       R5 R4 K207 ["uploadAssetsAsync"]
      605 GETUPVAL                         R5 3
      606 LOADK                            R6 K212 ["cloudSkillAssets.deleteAssetAsync"]
      607 CALL                             R5 1 1
      608 SETTABLEKS                       R5 R4 K208 ["deleteAssetAsync"]
      610 SETTABLEKS                       R4 R3 K213 ["cloudSkillAssets"]
      612 GETUPVAL                         R4 3
      613 LOADK                            R5 K214 ["getStudioPlayState"]
      614 CALL                             R4 1 1
      615 SETTABLEKS                       R4 R3 K214 ["getStudioPlayState"]
      617 GETUPVAL                         R4 3
      618 LOADK                            R5 K215 ["getFocusedDataModelType"]
      619 CALL                             R4 1 1
      620 SETTABLEKS                       R4 R3 K215 ["getFocusedDataModelType"]
      622 GETUPVAL                         R4 3
      623 LOADK                            R5 K216 ["isEditDataModelAvailable"]
      624 CALL                             R4 1 1
      625 SETTABLEKS                       R4 R3 K216 ["isEditDataModelAvailable"]
      627 GETUPVAL                         R4 3
      628 LOADK                            R5 K217 ["subscribeEditDataModelAvailabilityChanged"]
      629 CALL                             R4 1 1
      630 SETTABLEKS                       R4 R3 K217 ["subscribeEditDataModelAvailabilityChanged"]
      632 GETUPVAL                         R4 3
      633 LOADK                            R5 K218 ["fetchSystemPromptAsync"]
      634 CALL                             R4 1 1
      635 SETTABLEKS                       R4 R3 K218 ["fetchSystemPromptAsync"]
      637 DUPTABLE                         R4 K221 [{"startAsync", "getStatusAsync"}]
      638 GETUPVAL                         R5 3
      639 LOADK                            R6 K222 ["imageGeneration.startAsync"]
      640 CALL                             R5 1 1
      641 SETTABLEKS                       R5 R4 K219 ["startAsync"]
      643 GETUPVAL                         R5 3
      644 LOADK                            R6 K223 ["imageGeneration.getStatusAsync"]
      645 CALL                             R5 1 1
      646 SETTABLEKS                       R5 R4 K220 ["getStatusAsync"]
      648 SETTABLEKS                       R4 R3 K224 ["imageGeneration"]
      650 DUPTABLE                         R4 K221 [{"startAsync", "getStatusAsync"}]
      651 GETUPVAL                         R5 3
      652 LOADK                            R6 K225 ["texturePreview.startAsync"]
      653 CALL                             R5 1 1
      654 SETTABLEKS                       R5 R4 K219 ["startAsync"]
      656 GETUPVAL                         R5 3
      657 LOADK                            R6 K226 ["texturePreview.getStatusAsync"]
      658 CALL                             R5 1 1
      659 SETTABLEKS                       R5 R4 K220 ["getStatusAsync"]
      661 SETTABLEKS                       R4 R3 K227 ["texturePreview"]
      663 DUPTABLE                         R4 K221 [{"startAsync", "getStatusAsync"}]
      664 GETUPVAL                         R5 3
      665 LOADK                            R6 K228 ["sceneGeneration.startAsync"]
      666 CALL                             R5 1 1
      667 SETTABLEKS                       R5 R4 K219 ["startAsync"]
      669 GETUPVAL                         R5 3
      670 LOADK                            R6 K229 ["sceneGeneration.getStatusAsync"]
      671 CALL                             R5 1 1
      672 SETTABLEKS                       R5 R4 K220 ["getStatusAsync"]
      674 SETTABLEKS                       R4 R3 K230 ["sceneGeneration"]
      676 DUPTABLE                         R4 K231 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      677 GETUPVAL                         R5 3
      678 LOADK                            R6 K232 ["segmentMesh.startAsync"]
      679 CALL                             R5 1 1
      680 SETTABLEKS                       R5 R4 K219 ["startAsync"]
      682 GETUPVAL                         R5 3
      683 LOADK                            R6 K233 ["segmentMesh.getStatusAsync"]
      684 CALL                             R5 1 1
      685 SETTABLEKS                       R5 R4 K220 ["getStatusAsync"]
      687 GETUPVAL                         R5 3
      688 LOADK                            R6 K234 ["segmentMesh.publishAssetAsync"]
      689 CALL                             R5 1 1
      690 SETTABLEKS                       R5 R4 K120 ["publishAssetAsync"]
      692 GETUPVAL                         R5 3
      693 LOADK                            R6 K235 ["segmentMesh.loadAssetAsync"]
      694 CALL                             R5 1 1
      695 SETTABLEKS                       R5 R4 K82 ["loadAssetAsync"]
      697 SETTABLEKS                       R4 R3 K236 ["segmentMesh"]
      699 DUPTABLE                         R4 K231 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      700 GETUPVAL                         R5 3
      701 LOADK                            R6 K237 ["textureGeneration.startAsync"]
      702 CALL                             R5 1 1
      703 SETTABLEKS                       R5 R4 K219 ["startAsync"]
      705 GETUPVAL                         R5 3
      706 LOADK                            R6 K238 ["textureGeneration.getStatusAsync"]
      707 CALL                             R5 1 1
      708 SETTABLEKS                       R5 R4 K220 ["getStatusAsync"]
      710 GETUPVAL                         R5 3
      711 LOADK                            R6 K239 ["textureGeneration.publishAssetAsync"]
      712 CALL                             R5 1 1
      713 SETTABLEKS                       R5 R4 K120 ["publishAssetAsync"]
      715 GETUPVAL                         R5 3
      716 LOADK                            R6 K240 ["textureGeneration.loadAssetAsync"]
      717 CALL                             R5 1 1
      718 SETTABLEKS                       R5 R4 K82 ["loadAssetAsync"]
      720 SETTABLEKS                       R4 R3 K241 ["textureGeneration"]
      722 DUPCLOSURE                       R4 K242 [PROTO_29]
      723 SETTABLEKS                       R4 R3 K243 ["hasInternalPermission"]
      725 DUPCLOSURE                       R4 K244 [PROTO_30]
      726 SETTABLEKS                       R4 R3 K245 ["getAssistantPermissionsBridge"]
      728 DUPCLOSURE                       R4 K246 [PROTO_31]
      729 CAPTURE                          UPVAL U13
      730 SETTABLEKS                       R4 R3 K247 ["getMockPrimGenBackendData"]
      732 GETUPVAL                         R4 3
      733 LOADK                            R5 K248 ["startMultiPlayerTest"]
      734 CALL                             R4 1 1
      735 SETTABLEKS                       R4 R3 K248 ["startMultiPlayerTest"]
      737 GETUPVAL                         R4 3
      738 LOADK                            R5 K249 ["stopMultiPlayerTest"]
      739 CALL                             R4 1 1
      740 SETTABLEKS                       R4 R3 K249 ["stopMultiPlayerTest"]
      742 GETUPVAL                         R4 3
      743 LOADK                            R5 K250 ["isInMultiPlayerTest"]
      744 CALL                             R4 1 1
      745 SETTABLEKS                       R4 R3 K250 ["isInMultiPlayerTest"]
      747 GETUPVAL                         R4 3
      748 LOADK                            R5 K251 ["getStopMultiPlayerTestResults"]
      749 CALL                             R4 1 1
      750 SETTABLEKS                       R4 R3 K252 ["subscribeStopMultiPlayerTestStateChanged"]
      752 GETUPVAL                         R4 3
      753 LOADK                            R5 K253 ["createMultiPlayersServer"]
      754 CALL                             R4 1 1
      755 SETTABLEKS                       R4 R3 K253 ["createMultiPlayersServer"]
      757 GETUPVAL                         R4 3
      758 LOADK                            R5 K254 ["createMultiPlayersClient"]
      759 CALL                             R4 1 1
      760 SETTABLEKS                       R4 R3 K254 ["createMultiPlayersClient"]
      762 GETUPVAL                         R4 3
      763 LOADK                            R5 K255 ["getExperimentFeatureEnabled"]
      764 CALL                             R4 1 1
      765 SETTABLEKS                       R4 R3 K255 ["getExperimentFeatureEnabled"]
      767 GETUPVAL                         R4 3
      768 LOADK                            R5 K256 ["getOnExperimentChangedSignal"]
      769 CALL                             R4 1 1
      770 SETTABLEKS                       R4 R3 K257 ["onceExperimentFeatureEnabled"]
      772 GETUPVAL                         R4 3
      773 LOADK                            R5 K258 ["getStudioState"]
      774 CALL                             R4 1 1
      775 SETTABLEKS                       R4 R3 K258 ["getStudioState"]
      777 MOVE                             R2 R3
      778 CLOSEUPVALS                      R1
      779 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R2 R2 K1 ["logErrorEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logToolStarted"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionFallback"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionSuccess"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logThinkingBlock"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCompactionExperimentEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["printToStudioLogAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_41:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_42:
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
      130 GETTABLEKS                       R22 R13 K34 ["createUnimplemented"]
      132 GETTABLEKS                       R23 R9 K35 ["Engine"]
      134 GETTABLEKS                       R23 R23 K36 ["EngineEnv"]
      136 DUPCLOSURE                       R24 K37 [PROTO_32]
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R0
      151 MOVE                             R25 R24
      152 CALL                             R25 0 1
      153 GETTABLEKS                       R26 R23 K38 ["configure"]
      155 DUPTABLE                         R27 K42 [{"eventLogger", "isCompactionExperimentEnabled", "printToStudioLog"}]
      156 DUPTABLE                         R28 K48 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      157 NEWCLOSURE                       R29 P1
      158 CAPTURE                          REF R25
      159 SETTABLEKS                       R29 R28 K43 ["logErrorEvent"]
      161 NEWCLOSURE                       R29 P2
      162 CAPTURE                          REF R25
      163 SETTABLEKS                       R29 R28 K44 ["logToolStarted"]
      165 NEWCLOSURE                       R29 P3
      166 CAPTURE                          REF R25
      167 SETTABLEKS                       R29 R28 K45 ["logCompactionFallback"]
      169 NEWCLOSURE                       R29 P4
      170 CAPTURE                          REF R25
      171 SETTABLEKS                       R29 R28 K46 ["logCompactionSuccess"]
      173 NEWCLOSURE                       R29 P5
      174 CAPTURE                          REF R25
      175 SETTABLEKS                       R29 R28 K47 ["logThinkingBlock"]
      177 SETTABLEKS                       R28 R27 K39 ["eventLogger"]
      179 NEWCLOSURE                       R28 P6
      180 CAPTURE                          REF R25
      181 SETTABLEKS                       R28 R27 K40 ["isCompactionExperimentEnabled"]
      183 NEWCLOSURE                       R28 P7
      184 CAPTURE                          REF R25
      185 SETTABLEKS                       R28 R27 K41 ["printToStudioLog"]
      187 CALL                             R26 1 0
      188 DUPTABLE                         R26 K53 [{"new", "get", "set", "destroy"}]
      189 SETTABLEKS                       R24 R26 K49 ["new"]
      191 NEWCLOSURE                       R27 P8
      192 CAPTURE                          REF R25
      193 SETTABLEKS                       R27 R26 K50 ["get"]
      195 NEWCLOSURE                       R27 P9
      196 CAPTURE                          REF R25
      197 SETTABLEKS                       R27 R26 K51 ["set"]
      199 NEWCLOSURE                       R27 P10
      200 CAPTURE                          REF R25
      201 SETTABLEKS                       R27 R26 K52 ["destroy"]
      203 CLOSEUPVALS                      R25
      204 RETURN                           R26 1
