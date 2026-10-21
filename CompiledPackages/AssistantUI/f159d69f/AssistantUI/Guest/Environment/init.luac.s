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
       61 DUPCLOSURE                       R4 K24 [PROTO_9]
       62 SETTABLEKS                       R4 R3 K25 ["getClassIcon"]
       64 GETTABLEKS                       R4 R0 K26 ["startRecording"]
       66 SETTABLEKS                       R4 R3 K26 ["startRecording"]
       68 GETTABLEKS                       R4 R0 K27 ["endRecording"]
       70 SETTABLEKS                       R4 R3 K27 ["endRecording"]
       72 DUPCLOSURE                       R4 K28 [PROTO_10]
       73 SETTABLEKS                       R4 R3 K29 ["getScriptSource"]
       75 GETUPVAL                         R4 3
       76 LOADK                            R5 K30 ["openScriptAsync"]
       77 CALL                             R4 1 1
       78 SETTABLEKS                       R4 R3 K30 ["openScriptAsync"]
       80 DUPTABLE                         R4 K34 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       81 DUPCLOSURE                       R5 K35 [PROTO_11]
       82 CAPTURE                          UPVAL U5
       83 SETTABLEKS                       R5 R4 K31 ["createWebStreamClient"]
       85 DUPCLOSURE                       R5 K36 [PROTO_12]
       86 CAPTURE                          UPVAL U5
       87 SETTABLEKS                       R5 R4 K32 ["requestAsync"]
       89 GETUPVAL                         R5 3
       90 LOADK                            R6 K33 ["openUrl"]
       91 CALL                             R5 1 1
       92 SETTABLEKS                       R5 R4 K33 ["openUrl"]
       94 SETTABLEKS                       R4 R3 K37 ["http"]
       96 DUPTABLE                         R4 K40 [{"encodeAsync", "decodeAsync"}]
       97 DUPCLOSURE                       R5 K41 [PROTO_13]
       98 CAPTURE                          UPVAL U5
       99 SETTABLEKS                       R5 R4 K38 ["encodeAsync"]
      101 DUPCLOSURE                       R5 K42 [PROTO_14]
      102 CAPTURE                          UPVAL U5
      103 SETTABLEKS                       R5 R4 K39 ["decodeAsync"]
      105 SETTABLEKS                       R4 R3 K43 ["json"]
      107 DUPTABLE                         R4 K46 [{"get", "set"}]
      108 DUPCLOSURE                       R5 K47 [PROTO_15]
      109 SETTABLEKS                       R5 R4 K44 ["get"]
      111 DUPCLOSURE                       R5 K48 [PROTO_16]
      112 SETTABLEKS                       R5 R4 K45 ["set"]
      114 SETTABLEKS                       R4 R3 K49 ["selection"]
      116 DUPTABLE                         R4 K54 [{"getUniqueId", "getInstanceFromUniqueId", "pickInstanceAsync", "resolveInstanceByPathAsync"}]
      117 GETUPVAL                         R5 3
      118 LOADK                            R6 K50 ["getUniqueId"]
      119 CALL                             R5 1 1
      120 SETTABLEKS                       R5 R4 K50 ["getUniqueId"]
      122 GETUPVAL                         R5 3
      123 LOADK                            R6 K51 ["getInstanceFromUniqueId"]
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R4 K51 ["getInstanceFromUniqueId"]
      127 GETUPVAL                         R5 3
      128 LOADK                            R6 K52 ["pickInstanceAsync"]
      129 CALL                             R5 1 1
      130 SETTABLEKS                       R5 R4 K52 ["pickInstanceAsync"]
      132 GETUPVAL                         R5 3
      133 LOADK                            R6 K53 ["resolveInstanceByPathAsync"]
      134 CALL                             R5 1 1
      135 SETTABLEKS                       R5 R4 K53 ["resolveInstanceByPathAsync"]
      137 SETTABLEKS                       R4 R3 K55 ["instances"]
      139 DUPTABLE                         R4 K69 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "avatarAutoSetup", "avatarGen", "screenCapture", "pluginCapture", "uploadImage", "assetSearch", "assetInsert"}]
      140 DUPTABLE                         R5 K72 [{"loadCode", "stopCode"}]
      141 GETUPVAL                         R6 3
      142 LOADK                            R7 K70 ["loadCode"]
      143 CALL                             R6 1 1
      144 SETTABLEKS                       R6 R5 K70 ["loadCode"]
      146 GETUPVAL                         R6 3
      147 LOADK                            R7 K71 ["stopCode"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R5 K71 ["stopCode"]
      151 SETTABLEKS                       R5 R4 K56 ["executeLuau"]
      153 DUPTABLE                         R5 K75 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      154 DUPCLOSURE                       R6 K76 [PROTO_17]
      155 SETTABLEKS                       R6 R5 K73 ["updateScriptSourceAsync"]
      157 DUPCLOSURE                       R6 K77 [PROTO_18]
      158 SETTABLEKS                       R6 R5 K74 ["applyScriptSourceDirectly"]
      160 SETTABLEKS                       R5 R4 K57 ["multiEdit"]
      162 DUPTABLE                         R5 K80 [{"getFreeModelsAsync", "loadAssetAsync"}]
      163 NEWCLOSURE                       R6 P19
      164 CAPTURE                          REF R2
      165 CAPTURE                          UPVAL U6
      166 SETTABLEKS                       R6 R5 K78 ["getFreeModelsAsync"]
      168 GETUPVAL                         R6 7
      169 GETTABLEKS                       R6 R6 K81 ["getStandardHandler"]
      171 GETUPVAL                         R7 8
      172 CALL                             R6 1 1
      173 SETTABLEKS                       R6 R5 K79 ["loadAssetAsync"]
      175 SETTABLEKS                       R5 R4 K58 ["marketplaceInsertion"]
      177 DUPTABLE                         R5 K84 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      178 GETUPVAL                         R6 3
      179 LOADK                            R7 K82 ["generateMaterialVariantsAsync"]
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R5 K82 ["generateMaterialVariantsAsync"]
      183 GETUPVAL                         R6 3
      184 LOADK                            R7 K83 ["uploadMaterialsAsync"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K83 ["uploadMaterialsAsync"]
      188 SETTABLEKS                       R5 R4 K59 ["materialGen"]
      190 DUPTABLE                         R5 K91 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      191 DUPCLOSURE                       R6 K92 [PROTO_20]
      192 CAPTURE                          UPVAL U9
      193 SETTABLEKS                       R6 R5 K85 ["generateModelAsync"]
      195 GETUPVAL                         R6 3
      196 LOADK                            R7 K86 ["publishModelAsync"]
      197 CALL                             R6 1 1
      198 SETTABLEKS                       R6 R5 K86 ["publishModelAsync"]
      200 GETUPVAL                         R6 7
      201 GETTABLEKS                       R6 R6 K81 ["getStandardHandler"]
      203 GETUPVAL                         R7 8
      204 CALL                             R6 1 1
      205 SETTABLEKS                       R6 R5 K79 ["loadAssetAsync"]
      207 GETUPVAL                         R6 3
      208 LOADK                            R7 K87 ["activateScaleTool"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K87 ["activateScaleTool"]
      212 GETUPVAL                         R6 3
      213 LOADK                            R7 K88 ["exportInstanceToGlbAsync"]
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K88 ["exportInstanceToGlbAsync"]
      217 GETUPVAL                         R6 3
      218 LOADK                            R7 K89 ["exportMeshToGlbAsync"]
      219 CALL                             R6 1 1
      220 SETTABLEKS                       R6 R5 K89 ["exportMeshToGlbAsync"]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K90 ["loadModelFromUrlAsync"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K90 ["loadModelFromUrlAsync"]
      227 SETTABLEKS                       R5 R4 K60 ["meshGen"]
      229 GETUPVAL                         R6 10
      230 GETTABLEKS                       R6 R6 K93 ["FFlagAssistantAnimationGenTool"]
      232 JUMPIFNOT                        R6 ; [+7]
      233 DUPTABLE                         R5 K95 [{"generateAnimationAsync"}]
      234 GETUPVAL                         R6 3
      235 LOADK                            R7 K94 ["generateAnimationAsync"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K94 ["generateAnimationAsync"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R5
      241 SETTABLEKS                       R5 R4 K61 ["animationGen"]
      243 GETUPVAL                         R6 10
      244 GETTABLEKS                       R6 R6 K96 ["FFlagAssistantAvatarAutoSetupTool"]
      246 JUMPIFNOT                        R6 ; [+17]
      247 DUPTABLE                         R5 K100 [{"autoSetupAsync", "cancelAutoSetup", "getClassificationPlan"}]
      248 GETUPVAL                         R6 3
      249 LOADK                            R7 K97 ["autoSetupAsync"]
      250 CALL                             R6 1 1
      251 SETTABLEKS                       R6 R5 K97 ["autoSetupAsync"]
      253 GETUPVAL                         R6 3
      254 LOADK                            R7 K98 ["cancelAutoSetup"]
      255 CALL                             R6 1 1
      256 SETTABLEKS                       R6 R5 K98 ["cancelAutoSetup"]
      258 GETUPVAL                         R6 3
      259 LOADK                            R7 K99 ["getClassificationPlan"]
      260 CALL                             R6 1 1
      261 SETTABLEKS                       R6 R5 K99 ["getClassificationPlan"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R5
      265 SETTABLEKS                       R5 R4 K62 ["avatarAutoSetup"]
      267 GETUPVAL                         R6 10
      268 GETTABLEKS                       R6 R6 K101 ["FFlagAssistantAvatarGenTool"]
      270 JUMPIFNOT                        R6 ; [+7]
      271 DUPTABLE                         R5 K103 [{"generateAvatarAsync"}]
      272 GETUPVAL                         R6 3
      273 LOADK                            R7 K102 ["generateAvatarAsync"]
      274 CALL                             R6 1 1
      275 SETTABLEKS                       R6 R5 K102 ["generateAvatarAsync"]
      277 JUMP                             ; [+1]
      278 LOADNIL                          R5
      279 SETTABLEKS                       R5 R4 K63 ["avatarGen"]
      281 DUPTABLE                         R5 K106 [{"getImageDataBase64Async", "captureScreenshot"}]
      282 GETUPVAL                         R6 3
      283 LOADK                            R7 K104 ["getImageDataBase64Async"]
      284 CALL                             R6 1 1
      285 SETTABLEKS                       R6 R5 K104 ["getImageDataBase64Async"]
      287 DUPCLOSURE                       R6 K107 [PROTO_21]
      288 CAPTURE                          UPVAL U11
      289 SETTABLEKS                       R6 R5 K105 ["captureScreenshot"]
      291 SETTABLEKS                       R5 R4 K64 ["screenCapture"]
      293 DUPTABLE                         R5 K110 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync"}]
      294 GETUPVAL                         R6 3
      295 LOADK                            R7 K111 ["pluginCapture.listPluginGuisAsync"]
      296 CALL                             R6 1 1
      297 SETTABLEKS                       R6 R5 K108 ["listPluginGuisAsync"]
      299 GETUPVAL                         R6 3
      300 LOADK                            R7 K112 ["pluginCapture.capturePluginGuiByIdAsync"]
      301 CALL                             R6 1 1
      302 SETTABLEKS                       R6 R5 K109 ["capturePluginGuiByIdAsync"]
      304 SETTABLEKS                       R5 R4 K65 ["pluginCapture"]
      306 DUPTABLE                         R5 K116 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      307 GETUPVAL                         R6 3
      308 LOADK                            R7 K113 ["loadImageAsync"]
      309 CALL                             R6 1 1
      310 SETTABLEKS                       R6 R5 K113 ["loadImageAsync"]
      312 GETUPVAL                         R6 3
      313 LOADK                            R7 K114 ["publishAssetAsync"]
      314 CALL                             R6 1 1
      315 SETTABLEKS                       R6 R5 K114 ["publishAssetAsync"]
      317 GETUPVAL                         R6 3
      318 LOADK                            R7 K115 ["searchAssetAsync"]
      319 CALL                             R6 1 1
      320 SETTABLEKS                       R6 R5 K115 ["searchAssetAsync"]
      322 SETTABLEKS                       R5 R4 K66 ["uploadImage"]
      324 DUPTABLE                         R5 K123 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      325 GETUPVAL                         R6 3
      326 LOADK                            R7 K124 ["assetSearch.getStudioIdentity"]
      327 CALL                             R6 1 1
      328 SETTABLEKS                       R6 R5 K117 ["getStudioIdentity"]
      330 GETUPVAL                         R6 3
      331 LOADK                            R7 K125 ["assetSearch.searchCreatorInventoryAsync"]
      332 CALL                             R6 1 1
      333 SETTABLEKS                       R6 R5 K118 ["searchCreatorInventoryAsync"]
      335 GETUPVAL                         R6 3
      336 LOADK                            R7 K126 ["assetSearch.fetchUserGroupsAsync"]
      337 CALL                             R6 1 1
      338 SETTABLEKS                       R6 R5 K119 ["fetchUserGroupsAsync"]
      340 GETUPVAL                         R6 3
      341 LOADK                            R7 K127 ["assetSearch.searchCreatorStoreAssetsAsync"]
      342 CALL                             R6 1 1
      343 SETTABLEKS                       R6 R5 K120 ["searchCreatorStoreAssetsAsync"]
      345 GETUPVAL                         R6 3
      346 LOADK                            R7 K128 ["assetSearch.getThumbnailsUrl"]
      347 CALL                             R6 1 1
      348 SETTABLEKS                       R6 R5 K121 ["getThumbnailsUrl"]
      350 GETUPVAL                         R6 3
      351 LOADK                            R7 K129 ["assetSearch.getCreatorHubUrl"]
      352 CALL                             R6 1 1
      353 SETTABLEKS                       R6 R5 K122 ["getCreatorHubUrl"]
      355 SETTABLEKS                       R5 R4 K67 ["assetSearch"]
      357 DUPTABLE                         R5 K141 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      358 GETUPVAL                         R6 3
      359 LOADK                            R7 K142 ["assetInsert.getObjects"]
      360 CALL                             R6 1 1
      361 SETTABLEKS                       R6 R5 K130 ["getObjects"]
      363 GETUPVAL                         R6 3
      364 LOADK                            R7 K143 ["assetInsert.getItemDetailsAsync"]
      365 CALL                             R6 1 1
      366 SETTABLEKS                       R6 R5 K131 ["getItemDetailsAsync"]
      368 GETUPVAL                         R6 3
      369 LOADK                            R7 K144 ["assetInsert.loadPackageAssetAsync"]
      370 CALL                             R6 1 1
      371 SETTABLEKS                       R6 R5 K132 ["loadPackageAssetAsync"]
      373 GETUPVAL                         R6 3
      374 LOADK                            R7 K145 ["assetInsert.insertAudioAsset"]
      375 CALL                             R6 1 1
      376 SETTABLEKS                       R6 R5 K133 ["insertAudioAsset"]
      378 GETUPVAL                         R6 3
      379 LOADK                            R7 K146 ["assetInsert.getAudioApiByDefault"]
      380 CALL                             R6 1 1
      381 SETTABLEKS                       R6 R5 K134 ["getAudioApiByDefault"]
      383 GETUPVAL                         R6 3
      384 LOADK                            R7 K147 ["assetInsert.assignSourceAssetId"]
      385 CALL                             R6 1 1
      386 SETTABLEKS                       R6 R5 K135 ["assignSourceAssetId"]
      388 DUPCLOSURE                       R6 K148 [PROTO_22]
      389 CAPTURE                          UPVAL U8
      390 SETTABLEKS                       R6 R5 K136 ["createMeshPartAsync"]
      392 DUPCLOSURE                       R6 K149 [PROTO_23]
      393 SETTABLEKS                       R6 R5 K137 ["createDecal"]
      395 DUPCLOSURE                       R6 K150 [PROTO_24]
      396 SETTABLEKS                       R6 R5 K138 ["createDecalFromImage"]
      398 DUPCLOSURE                       R6 K151 [PROTO_25]
      399 SETTABLEKS                       R6 R5 K139 ["createSound"]
      401 DUPCLOSURE                       R6 K152 [PROTO_26]
      402 SETTABLEKS                       R6 R5 K140 ["createVideoFrame"]
      404 SETTABLEKS                       R5 R4 K68 ["assetInsert"]
      406 SETTABLEKS                       R4 R3 K153 ["tools"]
      408 GETUPVAL                         R4 3
      409 LOADK                            R5 K154 ["convertImageDataToTempIdAsync"]
      410 CALL                             R4 1 1
      411 SETTABLEKS                       R4 R3 K154 ["convertImageDataToTempIdAsync"]
      413 GETUPVAL                         R4 3
      414 LOADK                            R5 K155 ["releaseTempIdAsync"]
      415 CALL                             R4 1 1
      416 SETTABLEKS                       R4 R3 K155 ["releaseTempIdAsync"]
      418 GETUPVAL                         R4 3
      419 LOADK                            R5 K156 ["getSettingsAsync"]
      420 CALL                             R4 1 1
      421 SETTABLEKS                       R4 R3 K156 ["getSettingsAsync"]
      423 GETUPVAL                         R4 3
      424 LOADK                            R5 K157 ["setSettingsAsync"]
      425 CALL                             R4 1 1
      426 SETTABLEKS                       R4 R3 K157 ["setSettingsAsync"]
      428 GETUPVAL                         R4 3
      429 LOADK                            R5 K158 ["getUserSettingsAsync"]
      430 CALL                             R4 1 1
      431 SETTABLEKS                       R4 R3 K158 ["getUserSettingsAsync"]
      433 GETUPVAL                         R4 3
      434 LOADK                            R5 K159 ["setUserSettingsAsync"]
      435 CALL                             R4 1 1
      436 SETTABLEKS                       R4 R3 K159 ["setUserSettingsAsync"]
      438 GETUPVAL                         R4 3
      439 LOADK                            R5 K160 ["getPluginSetting"]
      440 CALL                             R4 1 1
      441 SETTABLEKS                       R4 R3 K160 ["getPluginSetting"]
      443 GETUPVAL                         R4 3
      444 LOADK                            R5 K161 ["setPluginSetting"]
      445 CALL                             R4 1 1
      446 SETTABLEKS                       R4 R3 K161 ["setPluginSetting"]
      448 GETUPVAL                         R4 3
      449 LOADK                            R5 K162 ["getSecureSettingsAsync"]
      450 CALL                             R4 1 1
      451 SETTABLEKS                       R4 R3 K162 ["getSecureSettingsAsync"]
      453 GETUPVAL                         R4 3
      454 LOADK                            R5 K163 ["setSecureSettingsAsync"]
      455 CALL                             R4 1 1
      456 SETTABLEKS                       R4 R3 K163 ["setSecureSettingsAsync"]
      458 GETUPVAL                         R4 3
      459 LOADK                            R5 K164 ["base64EncodeAsync"]
      460 CALL                             R4 1 1
      461 SETTABLEKS                       R4 R3 K164 ["base64EncodeAsync"]
      463 GETUPVAL                         R4 3
      464 LOADK                            R5 K165 ["generatePKCEAsync"]
      465 CALL                             R4 1 1
      466 SETTABLEKS                       R4 R3 K165 ["generatePKCEAsync"]
      468 GETUPVAL                         R4 3
      469 LOADK                            R5 K166 ["startMCPAuthAsync"]
      470 CALL                             R4 1 1
      471 SETTABLEKS                       R4 R3 K166 ["startMCPAuthAsync"]
      473 GETUPVAL                         R4 3
      474 LOADK                            R5 K167 ["setupMCPServerAsync"]
      475 CALL                             R4 1 1
      476 SETTABLEKS                       R4 R3 K167 ["setupMCPServerAsync"]
      478 GETUPVAL                         R4 3
      479 LOADK                            R5 K168 ["getMCPProxyTokenAsync"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K168 ["getMCPProxyTokenAsync"]
      483 GETUPVAL                         R4 3
      484 LOADK                            R5 K169 ["startStopPlayAsync"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K169 ["startStopPlayAsync"]
      488 DUPCLOSURE                       R4 K170 [PROTO_27]
      489 CAPTURE                          UPVAL U12
      490 SETTABLEKS                       R4 R3 K171 ["getLogHistory"]
      492 GETUPVAL                         R4 3
      493 LOADK                            R5 K172 ["subscribeOutput"]
      494 CALL                             R4 1 1
      495 SETTABLEKS                       R4 R3 K172 ["subscribeOutput"]
      497 GETUPVAL                         R4 3
      498 LOADK                            R5 K173 ["subscribeGameLoaded"]
      499 CALL                             R4 1 1
      500 SETTABLEKS                       R4 R3 K173 ["subscribeGameLoaded"]
      502 GETUPVAL                         R4 3
      503 LOADK                            R5 K174 ["subscribeGameStopped"]
      504 CALL                             R4 1 1
      505 SETTABLEKS                       R4 R3 K174 ["subscribeGameStopped"]
      507 GETUPVAL                         R4 3
      508 LOADK                            R5 K175 ["openFileDialogAsync"]
      509 CALL                             R4 1 1
      510 SETTABLEKS                       R4 R3 K175 ["openFileDialogAsync"]
      512 GETUPVAL                         R4 3
      513 LOADK                            R5 K176 ["importFileBinaryAsync"]
      514 CALL                             R4 1 1
      515 SETTABLEKS                       R4 R3 K176 ["importFileBinaryAsync"]
      517 DUPCLOSURE                       R4 K177 [PROTO_28]
      518 SETTABLEKS                       R4 R3 K178 ["printToStudioLogAsync"]
      520 DUPTABLE                         R4 K182 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      521 GETUPVAL                         R5 3
      522 LOADK                            R6 K183 ["quickConnect.fileExistsAsync"]
      523 CALL                             R5 1 1
      524 SETTABLEKS                       R5 R4 K179 ["fileExistsAsync"]
      526 GETUPVAL                         R5 3
      527 LOADK                            R6 K184 ["quickConnect.readFileAsync"]
      528 CALL                             R5 1 1
      529 SETTABLEKS                       R5 R4 K180 ["readFileAsync"]
      531 GETUPVAL                         R5 3
      532 LOADK                            R6 K185 ["quickConnect.modifyFileAsync"]
      533 CALL                             R5 1 1
      534 SETTABLEKS                       R5 R4 K181 ["modifyFileAsync"]
      536 SETTABLEKS                       R4 R3 K186 ["quickConnect"]
      538 DUPTABLE                         R4 K192 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      539 GETUPVAL                         R5 3
      540 LOADK                            R6 K193 ["userSkillAssets.getManifestAsync"]
      541 CALL                             R5 1 1
      542 SETTABLEKS                       R5 R4 K187 ["getManifestAsync"]
      544 GETUPVAL                         R5 3
      545 LOADK                            R6 K194 ["userSkillAssets.fetchContentAsync"]
      546 CALL                             R5 1 1
      547 SETTABLEKS                       R5 R4 K188 ["fetchContentAsync"]
      549 GETUPVAL                         R5 3
      550 LOADK                            R6 K195 ["userSkillAssets.publishNewAsync"]
      551 CALL                             R5 1 1
      552 SETTABLEKS                       R5 R4 K189 ["publishNewAsync"]
      554 GETUPVAL                         R5 3
      555 LOADK                            R6 K196 ["userSkillAssets.publishUpdateAsync"]
      556 CALL                             R5 1 1
      557 SETTABLEKS                       R5 R4 K190 ["publishUpdateAsync"]
      559 GETUPVAL                         R5 3
      560 LOADK                            R6 K197 ["userSkillAssets.deleteAsync"]
      561 CALL                             R5 1 1
      562 SETTABLEKS                       R5 R4 K191 ["deleteAsync"]
      564 SETTABLEKS                       R4 R3 K198 ["userSkillAssets"]
      566 DUPTABLE                         R4 K202 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      567 GETUPVAL                         R5 3
      568 LOADK                            R6 K203 ["cloudSkillAssets.getAssetsAsync"]
      569 CALL                             R5 1 1
      570 SETTABLEKS                       R5 R4 K199 ["getAssetsAsync"]
      572 GETUPVAL                         R5 3
      573 LOADK                            R6 K204 ["cloudSkillAssets.uploadAssetsAsync"]
      574 CALL                             R5 1 1
      575 SETTABLEKS                       R5 R4 K200 ["uploadAssetsAsync"]
      577 GETUPVAL                         R5 3
      578 LOADK                            R6 K205 ["cloudSkillAssets.deleteAssetAsync"]
      579 CALL                             R5 1 1
      580 SETTABLEKS                       R5 R4 K201 ["deleteAssetAsync"]
      582 SETTABLEKS                       R4 R3 K206 ["cloudSkillAssets"]
      584 GETUPVAL                         R4 3
      585 LOADK                            R5 K207 ["getStudioPlayState"]
      586 CALL                             R4 1 1
      587 SETTABLEKS                       R4 R3 K207 ["getStudioPlayState"]
      589 GETUPVAL                         R4 3
      590 LOADK                            R5 K208 ["getFocusedDataModelType"]
      591 CALL                             R4 1 1
      592 SETTABLEKS                       R4 R3 K208 ["getFocusedDataModelType"]
      594 GETUPVAL                         R4 3
      595 LOADK                            R5 K209 ["isEditDataModelAvailable"]
      596 CALL                             R4 1 1
      597 SETTABLEKS                       R4 R3 K209 ["isEditDataModelAvailable"]
      599 GETUPVAL                         R4 3
      600 LOADK                            R5 K210 ["subscribeEditDataModelAvailabilityChanged"]
      601 CALL                             R4 1 1
      602 SETTABLEKS                       R4 R3 K210 ["subscribeEditDataModelAvailabilityChanged"]
      604 GETUPVAL                         R4 3
      605 LOADK                            R5 K211 ["fetchSystemPromptAsync"]
      606 CALL                             R4 1 1
      607 SETTABLEKS                       R4 R3 K211 ["fetchSystemPromptAsync"]
      609 DUPTABLE                         R4 K214 [{"startAsync", "getStatusAsync"}]
      610 GETUPVAL                         R5 3
      611 LOADK                            R6 K215 ["imageGeneration.startAsync"]
      612 CALL                             R5 1 1
      613 SETTABLEKS                       R5 R4 K212 ["startAsync"]
      615 GETUPVAL                         R5 3
      616 LOADK                            R6 K216 ["imageGeneration.getStatusAsync"]
      617 CALL                             R5 1 1
      618 SETTABLEKS                       R5 R4 K213 ["getStatusAsync"]
      620 SETTABLEKS                       R4 R3 K217 ["imageGeneration"]
      622 DUPTABLE                         R4 K214 [{"startAsync", "getStatusAsync"}]
      623 GETUPVAL                         R5 3
      624 LOADK                            R6 K218 ["texturePreview.startAsync"]
      625 CALL                             R5 1 1
      626 SETTABLEKS                       R5 R4 K212 ["startAsync"]
      628 GETUPVAL                         R5 3
      629 LOADK                            R6 K219 ["texturePreview.getStatusAsync"]
      630 CALL                             R5 1 1
      631 SETTABLEKS                       R5 R4 K213 ["getStatusAsync"]
      633 SETTABLEKS                       R4 R3 K220 ["texturePreview"]
      635 DUPTABLE                         R4 K214 [{"startAsync", "getStatusAsync"}]
      636 GETUPVAL                         R5 3
      637 LOADK                            R6 K221 ["layoutGeneration.startAsync"]
      638 CALL                             R5 1 1
      639 SETTABLEKS                       R5 R4 K212 ["startAsync"]
      641 GETUPVAL                         R5 3
      642 LOADK                            R6 K222 ["layoutGeneration.getStatusAsync"]
      643 CALL                             R5 1 1
      644 SETTABLEKS                       R5 R4 K213 ["getStatusAsync"]
      646 SETTABLEKS                       R4 R3 K223 ["layoutGeneration"]
      648 DUPTABLE                         R4 K224 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      649 GETUPVAL                         R5 3
      650 LOADK                            R6 K225 ["segmentMesh.startAsync"]
      651 CALL                             R5 1 1
      652 SETTABLEKS                       R5 R4 K212 ["startAsync"]
      654 GETUPVAL                         R5 3
      655 LOADK                            R6 K226 ["segmentMesh.getStatusAsync"]
      656 CALL                             R5 1 1
      657 SETTABLEKS                       R5 R4 K213 ["getStatusAsync"]
      659 GETUPVAL                         R5 3
      660 LOADK                            R6 K227 ["segmentMesh.publishAssetAsync"]
      661 CALL                             R5 1 1
      662 SETTABLEKS                       R5 R4 K114 ["publishAssetAsync"]
      664 GETUPVAL                         R5 3
      665 LOADK                            R6 K228 ["segmentMesh.loadAssetAsync"]
      666 CALL                             R5 1 1
      667 SETTABLEKS                       R5 R4 K79 ["loadAssetAsync"]
      669 SETTABLEKS                       R4 R3 K229 ["segmentMesh"]
      671 DUPTABLE                         R4 K224 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      672 GETUPVAL                         R5 3
      673 LOADK                            R6 K230 ["textureGeneration.startAsync"]
      674 CALL                             R5 1 1
      675 SETTABLEKS                       R5 R4 K212 ["startAsync"]
      677 GETUPVAL                         R5 3
      678 LOADK                            R6 K231 ["textureGeneration.getStatusAsync"]
      679 CALL                             R5 1 1
      680 SETTABLEKS                       R5 R4 K213 ["getStatusAsync"]
      682 GETUPVAL                         R5 3
      683 LOADK                            R6 K232 ["textureGeneration.publishAssetAsync"]
      684 CALL                             R5 1 1
      685 SETTABLEKS                       R5 R4 K114 ["publishAssetAsync"]
      687 GETUPVAL                         R5 3
      688 LOADK                            R6 K233 ["textureGeneration.loadAssetAsync"]
      689 CALL                             R5 1 1
      690 SETTABLEKS                       R5 R4 K79 ["loadAssetAsync"]
      692 SETTABLEKS                       R4 R3 K234 ["textureGeneration"]
      694 DUPCLOSURE                       R4 K235 [PROTO_29]
      695 SETTABLEKS                       R4 R3 K236 ["hasInternalPermission"]
      697 DUPCLOSURE                       R4 K237 [PROTO_30]
      698 SETTABLEKS                       R4 R3 K238 ["getAssistantPermissionsBridge"]
      700 DUPCLOSURE                       R4 K239 [PROTO_31]
      701 CAPTURE                          UPVAL U13
      702 SETTABLEKS                       R4 R3 K240 ["getMockPrimGenBackendData"]
      704 GETUPVAL                         R4 3
      705 LOADK                            R5 K241 ["startMultiPlayerTest"]
      706 CALL                             R4 1 1
      707 SETTABLEKS                       R4 R3 K241 ["startMultiPlayerTest"]
      709 GETUPVAL                         R4 3
      710 LOADK                            R5 K242 ["stopMultiPlayerTest"]
      711 CALL                             R4 1 1
      712 SETTABLEKS                       R4 R3 K242 ["stopMultiPlayerTest"]
      714 GETUPVAL                         R4 3
      715 LOADK                            R5 K243 ["isInMultiPlayerTest"]
      716 CALL                             R4 1 1
      717 SETTABLEKS                       R4 R3 K243 ["isInMultiPlayerTest"]
      719 GETUPVAL                         R4 3
      720 LOADK                            R5 K244 ["getStopMultiPlayerTestResults"]
      721 CALL                             R4 1 1
      722 SETTABLEKS                       R4 R3 K245 ["subscribeStopMultiPlayerTestStateChanged"]
      724 GETUPVAL                         R4 3
      725 LOADK                            R5 K246 ["createMultiPlayersServer"]
      726 CALL                             R4 1 1
      727 SETTABLEKS                       R4 R3 K246 ["createMultiPlayersServer"]
      729 GETUPVAL                         R4 3
      730 LOADK                            R5 K247 ["createMultiPlayersClient"]
      731 CALL                             R4 1 1
      732 SETTABLEKS                       R4 R3 K247 ["createMultiPlayersClient"]
      734 GETUPVAL                         R4 3
      735 LOADK                            R5 K248 ["getExperimentFeatureEnabled"]
      736 CALL                             R4 1 1
      737 SETTABLEKS                       R4 R3 K248 ["getExperimentFeatureEnabled"]
      739 GETUPVAL                         R4 3
      740 LOADK                            R5 K249 ["getOnExperimentChangedSignal"]
      741 CALL                             R4 1 1
      742 SETTABLEKS                       R4 R3 K250 ["onceExperimentFeatureEnabled"]
      744 GETUPVAL                         R4 3
      745 LOADK                            R5 K251 ["getStudioState"]
      746 CALL                             R4 1 1
      747 SETTABLEKS                       R4 R3 K251 ["getStudioState"]
      749 MOVE                             R2 R3
      750 CLOSEUPVALS                      R1
      751 RETURN                           R2 1

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
