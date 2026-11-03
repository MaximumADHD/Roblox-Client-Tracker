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
      149 DUPTABLE                         R4 K73 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "layoutGen", "animationGen", "avatarAutoSetup", "avatarGen", "screenCapture", "pluginCapture", "uploadImage", "assetSearch", "listPlace", "assetInsert"}]
      150 DUPTABLE                         R5 K76 [{"loadCode", "stopCode"}]
      151 GETUPVAL                         R6 3
      152 LOADK                            R7 K74 ["loadCode"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K74 ["loadCode"]
      156 GETUPVAL                         R6 3
      157 LOADK                            R7 K75 ["stopCode"]
      158 CALL                             R6 1 1
      159 SETTABLEKS                       R6 R5 K75 ["stopCode"]
      161 SETTABLEKS                       R5 R4 K58 ["executeLuau"]
      163 DUPTABLE                         R5 K79 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      164 DUPCLOSURE                       R6 K80 [PROTO_17]
      165 SETTABLEKS                       R6 R5 K77 ["updateScriptSourceAsync"]
      167 DUPCLOSURE                       R6 K81 [PROTO_18]
      168 SETTABLEKS                       R6 R5 K78 ["applyScriptSourceDirectly"]
      170 SETTABLEKS                       R5 R4 K59 ["multiEdit"]
      172 DUPTABLE                         R5 K84 [{"getFreeModelsAsync", "loadAssetAsync"}]
      173 NEWCLOSURE                       R6 P19
      174 CAPTURE                          REF R2
      175 CAPTURE                          UPVAL U6
      176 SETTABLEKS                       R6 R5 K82 ["getFreeModelsAsync"]
      178 GETUPVAL                         R6 7
      179 GETTABLEKS                       R6 R6 K85 ["getStandardHandler"]
      181 GETUPVAL                         R7 8
      182 CALL                             R6 1 1
      183 SETTABLEKS                       R6 R5 K83 ["loadAssetAsync"]
      185 SETTABLEKS                       R5 R4 K60 ["marketplaceInsertion"]
      187 DUPTABLE                         R5 K88 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      188 GETUPVAL                         R6 3
      189 LOADK                            R7 K86 ["generateMaterialVariantsAsync"]
      190 CALL                             R6 1 1
      191 SETTABLEKS                       R6 R5 K86 ["generateMaterialVariantsAsync"]
      193 GETUPVAL                         R6 3
      194 LOADK                            R7 K87 ["uploadMaterialsAsync"]
      195 CALL                             R6 1 1
      196 SETTABLEKS                       R6 R5 K87 ["uploadMaterialsAsync"]
      198 SETTABLEKS                       R5 R4 K61 ["materialGen"]
      200 DUPTABLE                         R5 K95 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      201 DUPCLOSURE                       R6 K96 [PROTO_20]
      202 CAPTURE                          UPVAL U9
      203 SETTABLEKS                       R6 R5 K89 ["generateModelAsync"]
      205 GETUPVAL                         R6 3
      206 LOADK                            R7 K90 ["publishModelAsync"]
      207 CALL                             R6 1 1
      208 SETTABLEKS                       R6 R5 K90 ["publishModelAsync"]
      210 GETUPVAL                         R6 7
      211 GETTABLEKS                       R6 R6 K85 ["getStandardHandler"]
      213 GETUPVAL                         R7 8
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K83 ["loadAssetAsync"]
      217 GETUPVAL                         R6 3
      218 LOADK                            R7 K91 ["activateScaleTool"]
      219 CALL                             R6 1 1
      220 SETTABLEKS                       R6 R5 K91 ["activateScaleTool"]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K92 ["exportInstanceToGlbAsync"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K92 ["exportInstanceToGlbAsync"]
      227 GETUPVAL                         R6 3
      228 LOADK                            R7 K93 ["exportMeshToGlbAsync"]
      229 CALL                             R6 1 1
      230 SETTABLEKS                       R6 R5 K93 ["exportMeshToGlbAsync"]
      232 GETUPVAL                         R6 3
      233 LOADK                            R7 K94 ["loadModelFromUrlAsync"]
      234 CALL                             R6 1 1
      235 SETTABLEKS                       R6 R5 K94 ["loadModelFromUrlAsync"]
      237 SETTABLEKS                       R5 R4 K62 ["meshGen"]
      239 DUPTABLE                         R5 K97 [{"activateScaleTool"}]
      240 GETUPVAL                         R6 3
      241 LOADK                            R7 K91 ["activateScaleTool"]
      242 CALL                             R6 1 1
      243 SETTABLEKS                       R6 R5 K91 ["activateScaleTool"]
      245 SETTABLEKS                       R5 R4 K63 ["layoutGen"]
      247 GETUPVAL                         R6 10
      248 CALL                             R6 0 1
      249 JUMPIFNOT                        R6 ; [+7]
      250 DUPTABLE                         R5 K99 [{"generateAnimationAsync"}]
      251 GETUPVAL                         R6 3
      252 LOADK                            R7 K98 ["generateAnimationAsync"]
      253 CALL                             R6 1 1
      254 SETTABLEKS                       R6 R5 K98 ["generateAnimationAsync"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R5
      258 SETTABLEKS                       R5 R4 K64 ["animationGen"]
      260 GETUPVAL                         R6 11
      261 GETTABLEKS                       R6 R6 K100 ["FFlagAssistantAvatarAutoSetupTool"]
      263 JUMPIFNOT                        R6 ; [+17]
      264 DUPTABLE                         R5 K104 [{"autoSetupAsync", "cancelAutoSetup", "getClassificationPlan"}]
      265 GETUPVAL                         R6 3
      266 LOADK                            R7 K101 ["autoSetupAsync"]
      267 CALL                             R6 1 1
      268 SETTABLEKS                       R6 R5 K101 ["autoSetupAsync"]
      270 GETUPVAL                         R6 3
      271 LOADK                            R7 K102 ["cancelAutoSetup"]
      272 CALL                             R6 1 1
      273 SETTABLEKS                       R6 R5 K102 ["cancelAutoSetup"]
      275 GETUPVAL                         R6 3
      276 LOADK                            R7 K103 ["getClassificationPlan"]
      277 CALL                             R6 1 1
      278 SETTABLEKS                       R6 R5 K103 ["getClassificationPlan"]
      280 JUMP                             ; [+1]
      281 LOADNIL                          R5
      282 SETTABLEKS                       R5 R4 K65 ["avatarAutoSetup"]
      284 GETUPVAL                         R6 11
      285 GETTABLEKS                       R6 R6 K105 ["FFlagAssistantAvatarGenTool"]
      287 JUMPIFNOT                        R6 ; [+7]
      288 DUPTABLE                         R5 K107 [{"generateAvatarAsync"}]
      289 GETUPVAL                         R6 3
      290 LOADK                            R7 K106 ["generateAvatarAsync"]
      291 CALL                             R6 1 1
      292 SETTABLEKS                       R6 R5 K106 ["generateAvatarAsync"]
      294 JUMP                             ; [+1]
      295 LOADNIL                          R5
      296 SETTABLEKS                       R5 R4 K66 ["avatarGen"]
      298 DUPTABLE                         R5 K110 [{"getImageDataBase64Async", "captureScreenshot"}]
      299 GETUPVAL                         R6 3
      300 LOADK                            R7 K108 ["getImageDataBase64Async"]
      301 CALL                             R6 1 1
      302 SETTABLEKS                       R6 R5 K108 ["getImageDataBase64Async"]
      304 DUPCLOSURE                       R6 K111 [PROTO_21]
      305 CAPTURE                          UPVAL U12
      306 SETTABLEKS                       R6 R5 K109 ["captureScreenshot"]
      308 SETTABLEKS                       R5 R4 K67 ["screenCapture"]
      310 DUPTABLE                         R5 K115 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync", "focusPanelAsync"}]
      311 GETUPVAL                         R6 3
      312 LOADK                            R7 K116 ["pluginCapture.listPluginGuisAsync"]
      313 CALL                             R6 1 1
      314 SETTABLEKS                       R6 R5 K112 ["listPluginGuisAsync"]
      316 GETUPVAL                         R6 3
      317 LOADK                            R7 K117 ["pluginCapture.capturePluginGuiByIdAsync"]
      318 CALL                             R6 1 1
      319 SETTABLEKS                       R6 R5 K113 ["capturePluginGuiByIdAsync"]
      321 GETUPVAL                         R6 3
      322 LOADK                            R7 K118 ["pluginCapture.focusPanelAsync"]
      323 CALL                             R6 1 1
      324 SETTABLEKS                       R6 R5 K114 ["focusPanelAsync"]
      326 SETTABLEKS                       R5 R4 K68 ["pluginCapture"]
      328 DUPTABLE                         R5 K122 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      329 GETUPVAL                         R6 3
      330 LOADK                            R7 K119 ["loadImageAsync"]
      331 CALL                             R6 1 1
      332 SETTABLEKS                       R6 R5 K119 ["loadImageAsync"]
      334 GETUPVAL                         R6 3
      335 LOADK                            R7 K120 ["publishAssetAsync"]
      336 CALL                             R6 1 1
      337 SETTABLEKS                       R6 R5 K120 ["publishAssetAsync"]
      339 GETUPVAL                         R6 3
      340 LOADK                            R7 K121 ["searchAssetAsync"]
      341 CALL                             R6 1 1
      342 SETTABLEKS                       R6 R5 K121 ["searchAssetAsync"]
      344 SETTABLEKS                       R5 R4 K69 ["uploadImage"]
      346 DUPTABLE                         R5 K129 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      347 GETUPVAL                         R6 3
      348 LOADK                            R7 K130 ["assetSearch.getStudioIdentity"]
      349 CALL                             R6 1 1
      350 SETTABLEKS                       R6 R5 K123 ["getStudioIdentity"]
      352 GETUPVAL                         R6 3
      353 LOADK                            R7 K131 ["assetSearch.searchCreatorInventoryAsync"]
      354 CALL                             R6 1 1
      355 SETTABLEKS                       R6 R5 K124 ["searchCreatorInventoryAsync"]
      357 GETUPVAL                         R6 3
      358 LOADK                            R7 K132 ["assetSearch.fetchUserGroupsAsync"]
      359 CALL                             R6 1 1
      360 SETTABLEKS                       R6 R5 K125 ["fetchUserGroupsAsync"]
      362 GETUPVAL                         R6 3
      363 LOADK                            R7 K133 ["assetSearch.searchCreatorStoreAssetsAsync"]
      364 CALL                             R6 1 1
      365 SETTABLEKS                       R6 R5 K126 ["searchCreatorStoreAssetsAsync"]
      367 GETUPVAL                         R6 3
      368 LOADK                            R7 K134 ["assetSearch.getThumbnailsUrl"]
      369 CALL                             R6 1 1
      370 SETTABLEKS                       R6 R5 K127 ["getThumbnailsUrl"]
      372 GETUPVAL                         R6 3
      373 LOADK                            R7 K135 ["assetSearch.getCreatorHubUrl"]
      374 CALL                             R6 1 1
      375 SETTABLEKS                       R6 R5 K128 ["getCreatorHubUrl"]
      377 SETTABLEKS                       R5 R4 K70 ["assetSearch"]
      379 DUPTABLE                         R5 K143 [{"getRecentPlaces", "getRecentLocalFiles", "getRootPlaceIdsAsync", "searchExperiencesAsync", "getGroupsAsync", "getTemplatesAsync", "getUniversePlacesAsync"}]
      380 GETUPVAL                         R6 3
      381 LOADK                            R7 K144 ["listPlace.getRecentPlaces"]
      382 CALL                             R6 1 1
      383 SETTABLEKS                       R6 R5 K136 ["getRecentPlaces"]
      385 GETUPVAL                         R6 3
      386 LOADK                            R7 K145 ["listPlace.getRecentLocalFiles"]
      387 CALL                             R6 1 1
      388 SETTABLEKS                       R6 R5 K137 ["getRecentLocalFiles"]
      390 GETUPVAL                         R6 3
      391 LOADK                            R7 K146 ["listPlace.getRootPlaceIdsAsync"]
      392 CALL                             R6 1 1
      393 SETTABLEKS                       R6 R5 K138 ["getRootPlaceIdsAsync"]
      395 GETUPVAL                         R6 3
      396 LOADK                            R7 K147 ["listPlace.searchExperiencesAsync"]
      397 CALL                             R6 1 1
      398 SETTABLEKS                       R6 R5 K139 ["searchExperiencesAsync"]
      400 GETUPVAL                         R6 3
      401 LOADK                            R7 K148 ["listPlace.getGroupsAsync"]
      402 CALL                             R6 1 1
      403 SETTABLEKS                       R6 R5 K140 ["getGroupsAsync"]
      405 GETUPVAL                         R6 3
      406 LOADK                            R7 K149 ["listPlace.getTemplatesAsync"]
      407 CALL                             R6 1 1
      408 SETTABLEKS                       R6 R5 K141 ["getTemplatesAsync"]
      410 GETUPVAL                         R6 3
      411 LOADK                            R7 K150 ["listPlace.getUniversePlacesAsync"]
      412 CALL                             R6 1 1
      413 SETTABLEKS                       R6 R5 K142 ["getUniversePlacesAsync"]
      415 SETTABLEKS                       R5 R4 K71 ["listPlace"]
      417 DUPTABLE                         R5 K162 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      418 GETUPVAL                         R6 3
      419 LOADK                            R7 K163 ["assetInsert.getObjects"]
      420 CALL                             R6 1 1
      421 SETTABLEKS                       R6 R5 K151 ["getObjects"]
      423 GETUPVAL                         R6 3
      424 LOADK                            R7 K164 ["assetInsert.getItemDetailsAsync"]
      425 CALL                             R6 1 1
      426 SETTABLEKS                       R6 R5 K152 ["getItemDetailsAsync"]
      428 GETUPVAL                         R6 3
      429 LOADK                            R7 K165 ["assetInsert.loadPackageAssetAsync"]
      430 CALL                             R6 1 1
      431 SETTABLEKS                       R6 R5 K153 ["loadPackageAssetAsync"]
      433 GETUPVAL                         R6 3
      434 LOADK                            R7 K166 ["assetInsert.insertAudioAsset"]
      435 CALL                             R6 1 1
      436 SETTABLEKS                       R6 R5 K154 ["insertAudioAsset"]
      438 GETUPVAL                         R6 3
      439 LOADK                            R7 K167 ["assetInsert.getAudioApiByDefault"]
      440 CALL                             R6 1 1
      441 SETTABLEKS                       R6 R5 K155 ["getAudioApiByDefault"]
      443 GETUPVAL                         R6 3
      444 LOADK                            R7 K168 ["assetInsert.assignSourceAssetId"]
      445 CALL                             R6 1 1
      446 SETTABLEKS                       R6 R5 K156 ["assignSourceAssetId"]
      448 DUPCLOSURE                       R6 K169 [PROTO_22]
      449 CAPTURE                          UPVAL U8
      450 SETTABLEKS                       R6 R5 K157 ["createMeshPartAsync"]
      452 DUPCLOSURE                       R6 K170 [PROTO_23]
      453 SETTABLEKS                       R6 R5 K158 ["createDecal"]
      455 DUPCLOSURE                       R6 K171 [PROTO_24]
      456 SETTABLEKS                       R6 R5 K159 ["createDecalFromImage"]
      458 DUPCLOSURE                       R6 K172 [PROTO_25]
      459 SETTABLEKS                       R6 R5 K160 ["createSound"]
      461 DUPCLOSURE                       R6 K173 [PROTO_26]
      462 SETTABLEKS                       R6 R5 K161 ["createVideoFrame"]
      464 SETTABLEKS                       R5 R4 K72 ["assetInsert"]
      466 SETTABLEKS                       R4 R3 K174 ["tools"]
      468 GETUPVAL                         R4 3
      469 LOADK                            R5 K175 ["convertImageDataToTempIdAsync"]
      470 CALL                             R4 1 1
      471 SETTABLEKS                       R4 R3 K175 ["convertImageDataToTempIdAsync"]
      473 GETUPVAL                         R4 3
      474 LOADK                            R5 K176 ["releaseTempIdAsync"]
      475 CALL                             R4 1 1
      476 SETTABLEKS                       R4 R3 K176 ["releaseTempIdAsync"]
      478 GETUPVAL                         R4 3
      479 LOADK                            R5 K177 ["getSettingsAsync"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K177 ["getSettingsAsync"]
      483 GETUPVAL                         R4 3
      484 LOADK                            R5 K178 ["setSettingsAsync"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K178 ["setSettingsAsync"]
      488 GETUPVAL                         R4 3
      489 LOADK                            R5 K179 ["getUserSettingsAsync"]
      490 CALL                             R4 1 1
      491 SETTABLEKS                       R4 R3 K179 ["getUserSettingsAsync"]
      493 GETUPVAL                         R4 3
      494 LOADK                            R5 K180 ["setUserSettingsAsync"]
      495 CALL                             R4 1 1
      496 SETTABLEKS                       R4 R3 K180 ["setUserSettingsAsync"]
      498 GETUPVAL                         R4 3
      499 LOADK                            R5 K181 ["getPluginSetting"]
      500 CALL                             R4 1 1
      501 SETTABLEKS                       R4 R3 K181 ["getPluginSetting"]
      503 GETUPVAL                         R4 3
      504 LOADK                            R5 K182 ["setPluginSetting"]
      505 CALL                             R4 1 1
      506 SETTABLEKS                       R4 R3 K182 ["setPluginSetting"]
      508 GETUPVAL                         R4 3
      509 LOADK                            R5 K183 ["getSecureSettingsAsync"]
      510 CALL                             R4 1 1
      511 SETTABLEKS                       R4 R3 K183 ["getSecureSettingsAsync"]
      513 GETUPVAL                         R4 3
      514 LOADK                            R5 K184 ["setSecureSettingsAsync"]
      515 CALL                             R4 1 1
      516 SETTABLEKS                       R4 R3 K184 ["setSecureSettingsAsync"]
      518 GETUPVAL                         R4 3
      519 LOADK                            R5 K185 ["base64EncodeAsync"]
      520 CALL                             R4 1 1
      521 SETTABLEKS                       R4 R3 K185 ["base64EncodeAsync"]
      523 GETUPVAL                         R4 3
      524 LOADK                            R5 K186 ["generatePKCEAsync"]
      525 CALL                             R4 1 1
      526 SETTABLEKS                       R4 R3 K186 ["generatePKCEAsync"]
      528 GETUPVAL                         R4 3
      529 LOADK                            R5 K187 ["startMCPAuthAsync"]
      530 CALL                             R4 1 1
      531 SETTABLEKS                       R4 R3 K187 ["startMCPAuthAsync"]
      533 GETUPVAL                         R4 3
      534 LOADK                            R5 K188 ["setupMCPServerAsync"]
      535 CALL                             R4 1 1
      536 SETTABLEKS                       R4 R3 K188 ["setupMCPServerAsync"]
      538 GETUPVAL                         R4 3
      539 LOADK                            R5 K189 ["getMCPProxyTokenAsync"]
      540 CALL                             R4 1 1
      541 SETTABLEKS                       R4 R3 K189 ["getMCPProxyTokenAsync"]
      543 GETUPVAL                         R4 3
      544 LOADK                            R5 K190 ["startStopPlayAsync"]
      545 CALL                             R4 1 1
      546 SETTABLEKS                       R4 R3 K190 ["startStopPlayAsync"]
      548 DUPCLOSURE                       R4 K191 [PROTO_27]
      549 CAPTURE                          UPVAL U13
      550 SETTABLEKS                       R4 R3 K192 ["getLogHistory"]
      552 GETUPVAL                         R4 3
      553 LOADK                            R5 K193 ["subscribeOutput"]
      554 CALL                             R4 1 1
      555 SETTABLEKS                       R4 R3 K193 ["subscribeOutput"]
      557 GETUPVAL                         R4 3
      558 LOADK                            R5 K194 ["subscribeGameLoaded"]
      559 CALL                             R4 1 1
      560 SETTABLEKS                       R4 R3 K194 ["subscribeGameLoaded"]
      562 GETUPVAL                         R4 3
      563 LOADK                            R5 K195 ["subscribeGameStopped"]
      564 CALL                             R4 1 1
      565 SETTABLEKS                       R4 R3 K195 ["subscribeGameStopped"]
      567 GETUPVAL                         R4 3
      568 LOADK                            R5 K196 ["openFileDialogAsync"]
      569 CALL                             R4 1 1
      570 SETTABLEKS                       R4 R3 K196 ["openFileDialogAsync"]
      572 GETUPVAL                         R4 3
      573 LOADK                            R5 K197 ["openDirectoryDialogAsync"]
      574 CALL                             R4 1 1
      575 SETTABLEKS                       R4 R3 K197 ["openDirectoryDialogAsync"]
      577 GETUPVAL                         R4 3
      578 LOADK                            R5 K198 ["importFileBinaryAsync"]
      579 CALL                             R4 1 1
      580 SETTABLEKS                       R4 R3 K198 ["importFileBinaryAsync"]
      582 DUPCLOSURE                       R4 K199 [PROTO_28]
      583 SETTABLEKS                       R4 R3 K200 ["printToStudioLogAsync"]
      585 DUPTABLE                         R4 K204 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      586 GETUPVAL                         R5 3
      587 LOADK                            R6 K205 ["quickConnect.fileExistsAsync"]
      588 CALL                             R5 1 1
      589 SETTABLEKS                       R5 R4 K201 ["fileExistsAsync"]
      591 GETUPVAL                         R5 3
      592 LOADK                            R6 K206 ["quickConnect.readFileAsync"]
      593 CALL                             R5 1 1
      594 SETTABLEKS                       R5 R4 K202 ["readFileAsync"]
      596 GETUPVAL                         R5 3
      597 LOADK                            R6 K207 ["quickConnect.modifyFileAsync"]
      598 CALL                             R5 1 1
      599 SETTABLEKS                       R5 R4 K203 ["modifyFileAsync"]
      601 SETTABLEKS                       R4 R3 K208 ["quickConnect"]
      603 DUPTABLE                         R4 K214 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      604 GETUPVAL                         R5 3
      605 LOADK                            R6 K215 ["userSkillAssets.getManifestAsync"]
      606 CALL                             R5 1 1
      607 SETTABLEKS                       R5 R4 K209 ["getManifestAsync"]
      609 GETUPVAL                         R5 3
      610 LOADK                            R6 K216 ["userSkillAssets.fetchContentAsync"]
      611 CALL                             R5 1 1
      612 SETTABLEKS                       R5 R4 K210 ["fetchContentAsync"]
      614 GETUPVAL                         R5 3
      615 LOADK                            R6 K217 ["userSkillAssets.publishNewAsync"]
      616 CALL                             R5 1 1
      617 SETTABLEKS                       R5 R4 K211 ["publishNewAsync"]
      619 GETUPVAL                         R5 3
      620 LOADK                            R6 K218 ["userSkillAssets.publishUpdateAsync"]
      621 CALL                             R5 1 1
      622 SETTABLEKS                       R5 R4 K212 ["publishUpdateAsync"]
      624 GETUPVAL                         R5 3
      625 LOADK                            R6 K219 ["userSkillAssets.deleteAsync"]
      626 CALL                             R5 1 1
      627 SETTABLEKS                       R5 R4 K213 ["deleteAsync"]
      629 SETTABLEKS                       R4 R3 K220 ["userSkillAssets"]
      631 DUPTABLE                         R4 K224 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      632 GETUPVAL                         R5 3
      633 LOADK                            R6 K225 ["cloudSkillAssets.getAssetsAsync"]
      634 CALL                             R5 1 1
      635 SETTABLEKS                       R5 R4 K221 ["getAssetsAsync"]
      637 GETUPVAL                         R5 3
      638 LOADK                            R6 K226 ["cloudSkillAssets.uploadAssetsAsync"]
      639 CALL                             R5 1 1
      640 SETTABLEKS                       R5 R4 K222 ["uploadAssetsAsync"]
      642 GETUPVAL                         R5 3
      643 LOADK                            R6 K227 ["cloudSkillAssets.deleteAssetAsync"]
      644 CALL                             R5 1 1
      645 SETTABLEKS                       R5 R4 K223 ["deleteAssetAsync"]
      647 SETTABLEKS                       R4 R3 K228 ["cloudSkillAssets"]
      649 GETUPVAL                         R4 3
      650 LOADK                            R5 K229 ["getStudioPlayState"]
      651 CALL                             R4 1 1
      652 SETTABLEKS                       R4 R3 K229 ["getStudioPlayState"]
      654 GETUPVAL                         R4 3
      655 LOADK                            R5 K230 ["getFocusedDataModelType"]
      656 CALL                             R4 1 1
      657 SETTABLEKS                       R4 R3 K230 ["getFocusedDataModelType"]
      659 GETUPVAL                         R4 3
      660 LOADK                            R5 K231 ["isEditDataModelAvailable"]
      661 CALL                             R4 1 1
      662 SETTABLEKS                       R4 R3 K231 ["isEditDataModelAvailable"]
      664 GETUPVAL                         R4 3
      665 LOADK                            R5 K232 ["subscribeEditDataModelAvailabilityChanged"]
      666 CALL                             R4 1 1
      667 SETTABLEKS                       R4 R3 K232 ["subscribeEditDataModelAvailabilityChanged"]
      669 GETUPVAL                         R4 3
      670 LOADK                            R5 K233 ["fetchSystemPromptAsync"]
      671 CALL                             R4 1 1
      672 SETTABLEKS                       R4 R3 K233 ["fetchSystemPromptAsync"]
      674 DUPTABLE                         R4 K236 [{"startAsync", "getStatusAsync"}]
      675 GETUPVAL                         R5 3
      676 LOADK                            R6 K237 ["imageGeneration.startAsync"]
      677 CALL                             R5 1 1
      678 SETTABLEKS                       R5 R4 K234 ["startAsync"]
      680 GETUPVAL                         R5 3
      681 LOADK                            R6 K238 ["imageGeneration.getStatusAsync"]
      682 CALL                             R5 1 1
      683 SETTABLEKS                       R5 R4 K235 ["getStatusAsync"]
      685 SETTABLEKS                       R4 R3 K239 ["imageGeneration"]
      687 DUPTABLE                         R4 K236 [{"startAsync", "getStatusAsync"}]
      688 GETUPVAL                         R5 3
      689 LOADK                            R6 K240 ["texturePreview.startAsync"]
      690 CALL                             R5 1 1
      691 SETTABLEKS                       R5 R4 K234 ["startAsync"]
      693 GETUPVAL                         R5 3
      694 LOADK                            R6 K241 ["texturePreview.getStatusAsync"]
      695 CALL                             R5 1 1
      696 SETTABLEKS                       R5 R4 K235 ["getStatusAsync"]
      698 SETTABLEKS                       R4 R3 K242 ["texturePreview"]
      700 DUPTABLE                         R4 K236 [{"startAsync", "getStatusAsync"}]
      701 GETUPVAL                         R5 3
      702 LOADK                            R6 K243 ["sceneGeneration.startAsync"]
      703 CALL                             R5 1 1
      704 SETTABLEKS                       R5 R4 K234 ["startAsync"]
      706 GETUPVAL                         R5 3
      707 LOADK                            R6 K244 ["sceneGeneration.getStatusAsync"]
      708 CALL                             R5 1 1
      709 SETTABLEKS                       R5 R4 K235 ["getStatusAsync"]
      711 SETTABLEKS                       R4 R3 K245 ["sceneGeneration"]
      713 DUPTABLE                         R4 K246 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      714 GETUPVAL                         R5 3
      715 LOADK                            R6 K247 ["segmentMesh.startAsync"]
      716 CALL                             R5 1 1
      717 SETTABLEKS                       R5 R4 K234 ["startAsync"]
      719 GETUPVAL                         R5 3
      720 LOADK                            R6 K248 ["segmentMesh.getStatusAsync"]
      721 CALL                             R5 1 1
      722 SETTABLEKS                       R5 R4 K235 ["getStatusAsync"]
      724 GETUPVAL                         R5 3
      725 LOADK                            R6 K249 ["segmentMesh.publishAssetAsync"]
      726 CALL                             R5 1 1
      727 SETTABLEKS                       R5 R4 K120 ["publishAssetAsync"]
      729 GETUPVAL                         R5 3
      730 LOADK                            R6 K250 ["segmentMesh.loadAssetAsync"]
      731 CALL                             R5 1 1
      732 SETTABLEKS                       R5 R4 K83 ["loadAssetAsync"]
      734 SETTABLEKS                       R4 R3 K251 ["segmentMesh"]
      736 DUPTABLE                         R4 K246 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      737 GETUPVAL                         R5 3
      738 LOADK                            R6 K252 ["textureGeneration.startAsync"]
      739 CALL                             R5 1 1
      740 SETTABLEKS                       R5 R4 K234 ["startAsync"]
      742 GETUPVAL                         R5 3
      743 LOADK                            R6 K253 ["textureGeneration.getStatusAsync"]
      744 CALL                             R5 1 1
      745 SETTABLEKS                       R5 R4 K235 ["getStatusAsync"]
      747 GETUPVAL                         R5 3
      748 LOADK                            R6 K254 ["textureGeneration.publishAssetAsync"]
      749 CALL                             R5 1 1
      750 SETTABLEKS                       R5 R4 K120 ["publishAssetAsync"]
      752 GETUPVAL                         R5 3
      753 LOADK                            R6 K255 ["textureGeneration.loadAssetAsync"]
      754 CALL                             R5 1 1
      755 SETTABLEKS                       R5 R4 K83 ["loadAssetAsync"]
      757 SETTABLEKS                       R4 R3 K256 ["textureGeneration"]
      759 DUPCLOSURE                       R4 K257 [PROTO_29]
      760 SETTABLEKS                       R4 R3 K258 ["hasInternalPermission"]
      762 DUPCLOSURE                       R4 K259 [PROTO_30]
      763 SETTABLEKS                       R4 R3 K260 ["getAssistantPermissionsBridge"]
      765 DUPCLOSURE                       R4 K261 [PROTO_31]
      766 CAPTURE                          UPVAL U14
      767 SETTABLEKS                       R4 R3 K262 ["getMockPrimGenBackendData"]
      769 GETUPVAL                         R4 3
      770 LOADK                            R5 K263 ["startMultiPlayerTest"]
      771 CALL                             R4 1 1
      772 SETTABLEKS                       R4 R3 K263 ["startMultiPlayerTest"]
      774 GETUPVAL                         R4 3
      775 LOADK                            R5 K264 ["stopMultiPlayerTest"]
      776 CALL                             R4 1 1
      777 SETTABLEKS                       R4 R3 K264 ["stopMultiPlayerTest"]
      779 GETUPVAL                         R4 3
      780 LOADK                            R5 K265 ["isInMultiPlayerTest"]
      781 CALL                             R4 1 1
      782 SETTABLEKS                       R4 R3 K265 ["isInMultiPlayerTest"]
      784 GETUPVAL                         R4 3
      785 LOADK                            R5 K266 ["getStopMultiPlayerTestResults"]
      786 CALL                             R4 1 1
      787 SETTABLEKS                       R4 R3 K267 ["subscribeStopMultiPlayerTestStateChanged"]
      789 GETUPVAL                         R4 3
      790 LOADK                            R5 K268 ["createMultiPlayersServer"]
      791 CALL                             R4 1 1
      792 SETTABLEKS                       R4 R3 K268 ["createMultiPlayersServer"]
      794 GETUPVAL                         R4 3
      795 LOADK                            R5 K269 ["createMultiPlayersClient"]
      796 CALL                             R4 1 1
      797 SETTABLEKS                       R4 R3 K269 ["createMultiPlayersClient"]
      799 GETUPVAL                         R4 3
      800 LOADK                            R5 K270 ["getExperimentFeatureEnabled"]
      801 CALL                             R4 1 1
      802 SETTABLEKS                       R4 R3 K270 ["getExperimentFeatureEnabled"]
      804 GETUPVAL                         R4 3
      805 LOADK                            R5 K271 ["getOnExperimentChangedSignal"]
      806 CALL                             R4 1 1
      807 SETTABLEKS                       R4 R3 K272 ["onceExperimentFeatureEnabled"]
      809 GETUPVAL                         R4 3
      810 LOADK                            R5 K273 ["getStudioState"]
      811 CALL                             R4 1 1
      812 SETTABLEKS                       R4 R3 K273 ["getStudioState"]
      814 MOVE                             R2 R3
      815 CLOSEUPVALS                      R1
      816 RETURN                           R2 1

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
      130 GETIMPORT                        R22 K16 [require]
      132 GETTABLEKS                       R23 R0 K34 ["FlagUtils"]
      134 GETTABLEKS                       R23 R23 K35 ["getIsAnimationGenEnabled"]
      136 CALL                             R22 1 1
      137 GETTABLEKS                       R23 R13 K36 ["createUnimplemented"]
      139 GETTABLEKS                       R24 R9 K37 ["Engine"]
      141 GETTABLEKS                       R24 R24 K38 ["EngineEnv"]
      143 DUPCLOSURE                       R25 K39 [PROTO_32]
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
