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
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Util"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenMockData"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["MockFerrisWheelResult"]
       12 RETURN                           R1 1

PROTO_31:
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
      139 DUPTABLE                         R4 K68 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "avatarAutoSetup", "screenCapture", "pluginCapture", "uploadImage", "assetSearch", "assetInsert"}]
      140 DUPTABLE                         R5 K71 [{"loadCode", "stopCode"}]
      141 GETUPVAL                         R6 3
      142 LOADK                            R7 K69 ["loadCode"]
      143 CALL                             R6 1 1
      144 SETTABLEKS                       R6 R5 K69 ["loadCode"]
      146 GETUPVAL                         R6 3
      147 LOADK                            R7 K70 ["stopCode"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R5 K70 ["stopCode"]
      151 SETTABLEKS                       R5 R4 K56 ["executeLuau"]
      153 DUPTABLE                         R5 K74 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      154 DUPCLOSURE                       R6 K75 [PROTO_17]
      155 SETTABLEKS                       R6 R5 K72 ["updateScriptSourceAsync"]
      157 DUPCLOSURE                       R6 K76 [PROTO_18]
      158 SETTABLEKS                       R6 R5 K73 ["applyScriptSourceDirectly"]
      160 SETTABLEKS                       R5 R4 K57 ["multiEdit"]
      162 DUPTABLE                         R5 K79 [{"getFreeModelsAsync", "loadAssetAsync"}]
      163 NEWCLOSURE                       R6 P19
      164 CAPTURE                          REF R2
      165 CAPTURE                          UPVAL U6
      166 SETTABLEKS                       R6 R5 K77 ["getFreeModelsAsync"]
      168 GETUPVAL                         R6 7
      169 GETTABLEKS                       R6 R6 K80 ["getStandardHandler"]
      171 GETUPVAL                         R7 8
      172 CALL                             R6 1 1
      173 SETTABLEKS                       R6 R5 K78 ["loadAssetAsync"]
      175 SETTABLEKS                       R5 R4 K58 ["marketplaceInsertion"]
      177 DUPTABLE                         R5 K83 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      178 GETUPVAL                         R6 3
      179 LOADK                            R7 K81 ["generateMaterialVariantsAsync"]
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R5 K81 ["generateMaterialVariantsAsync"]
      183 GETUPVAL                         R6 3
      184 LOADK                            R7 K82 ["uploadMaterialsAsync"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K82 ["uploadMaterialsAsync"]
      188 SETTABLEKS                       R5 R4 K59 ["materialGen"]
      190 DUPTABLE                         R5 K90 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      191 DUPCLOSURE                       R6 K91 [PROTO_20]
      192 CAPTURE                          UPVAL U9
      193 SETTABLEKS                       R6 R5 K84 ["generateModelAsync"]
      195 GETUPVAL                         R6 3
      196 LOADK                            R7 K85 ["publishModelAsync"]
      197 CALL                             R6 1 1
      198 SETTABLEKS                       R6 R5 K85 ["publishModelAsync"]
      200 GETUPVAL                         R6 7
      201 GETTABLEKS                       R6 R6 K80 ["getStandardHandler"]
      203 GETUPVAL                         R7 8
      204 CALL                             R6 1 1
      205 SETTABLEKS                       R6 R5 K78 ["loadAssetAsync"]
      207 GETUPVAL                         R6 3
      208 LOADK                            R7 K86 ["activateScaleTool"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K86 ["activateScaleTool"]
      212 GETUPVAL                         R6 3
      213 LOADK                            R7 K87 ["exportInstanceToGlbAsync"]
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K87 ["exportInstanceToGlbAsync"]
      217 GETUPVAL                         R6 3
      218 LOADK                            R7 K88 ["exportMeshToGlbAsync"]
      219 CALL                             R6 1 1
      220 SETTABLEKS                       R6 R5 K88 ["exportMeshToGlbAsync"]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K89 ["loadModelFromUrlAsync"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K89 ["loadModelFromUrlAsync"]
      227 SETTABLEKS                       R5 R4 K60 ["meshGen"]
      229 GETUPVAL                         R6 10
      230 GETTABLEKS                       R6 R6 K92 ["FFlagAssistantAnimationGenTool"]
      232 JUMPIFNOT                        R6 ; [+7]
      233 DUPTABLE                         R5 K94 [{"generateAnimationAsync"}]
      234 GETUPVAL                         R6 3
      235 LOADK                            R7 K93 ["generateAnimationAsync"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K93 ["generateAnimationAsync"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R5
      241 SETTABLEKS                       R5 R4 K61 ["animationGen"]
      243 GETUPVAL                         R6 10
      244 GETTABLEKS                       R6 R6 K95 ["FFlagAssistantAvatarAutoSetupTool"]
      246 JUMPIFNOT                        R6 ; [+12]
      247 DUPTABLE                         R5 K98 [{"autoSetupAsync", "cancelAutoSetup"}]
      248 GETUPVAL                         R6 3
      249 LOADK                            R7 K96 ["autoSetupAsync"]
      250 CALL                             R6 1 1
      251 SETTABLEKS                       R6 R5 K96 ["autoSetupAsync"]
      253 GETUPVAL                         R6 3
      254 LOADK                            R7 K97 ["cancelAutoSetup"]
      255 CALL                             R6 1 1
      256 SETTABLEKS                       R6 R5 K97 ["cancelAutoSetup"]
      258 JUMP                             ; [+1]
      259 LOADNIL                          R5
      260 SETTABLEKS                       R5 R4 K62 ["avatarAutoSetup"]
      262 DUPTABLE                         R5 K101 [{"getImageDataBase64Async", "captureScreenshot"}]
      263 GETUPVAL                         R6 3
      264 LOADK                            R7 K99 ["getImageDataBase64Async"]
      265 CALL                             R6 1 1
      266 SETTABLEKS                       R6 R5 K99 ["getImageDataBase64Async"]
      268 DUPCLOSURE                       R6 K102 [PROTO_21]
      269 CAPTURE                          UPVAL U11
      270 SETTABLEKS                       R6 R5 K100 ["captureScreenshot"]
      272 SETTABLEKS                       R5 R4 K63 ["screenCapture"]
      274 DUPTABLE                         R5 K105 [{"listPluginGuisAsync", "capturePluginGuiByIdAsync"}]
      275 GETUPVAL                         R6 3
      276 LOADK                            R7 K106 ["pluginCapture.listPluginGuisAsync"]
      277 CALL                             R6 1 1
      278 SETTABLEKS                       R6 R5 K103 ["listPluginGuisAsync"]
      280 GETUPVAL                         R6 3
      281 LOADK                            R7 K107 ["pluginCapture.capturePluginGuiByIdAsync"]
      282 CALL                             R6 1 1
      283 SETTABLEKS                       R6 R5 K104 ["capturePluginGuiByIdAsync"]
      285 SETTABLEKS                       R5 R4 K64 ["pluginCapture"]
      287 DUPTABLE                         R5 K111 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      288 GETUPVAL                         R6 3
      289 LOADK                            R7 K108 ["loadImageAsync"]
      290 CALL                             R6 1 1
      291 SETTABLEKS                       R6 R5 K108 ["loadImageAsync"]
      293 GETUPVAL                         R6 3
      294 LOADK                            R7 K109 ["publishAssetAsync"]
      295 CALL                             R6 1 1
      296 SETTABLEKS                       R6 R5 K109 ["publishAssetAsync"]
      298 GETUPVAL                         R6 3
      299 LOADK                            R7 K110 ["searchAssetAsync"]
      300 CALL                             R6 1 1
      301 SETTABLEKS                       R6 R5 K110 ["searchAssetAsync"]
      303 SETTABLEKS                       R5 R4 K65 ["uploadImage"]
      305 DUPTABLE                         R5 K118 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      306 GETUPVAL                         R6 3
      307 LOADK                            R7 K119 ["assetSearch.getStudioIdentity"]
      308 CALL                             R6 1 1
      309 SETTABLEKS                       R6 R5 K112 ["getStudioIdentity"]
      311 GETUPVAL                         R6 3
      312 LOADK                            R7 K120 ["assetSearch.searchCreatorInventoryAsync"]
      313 CALL                             R6 1 1
      314 SETTABLEKS                       R6 R5 K113 ["searchCreatorInventoryAsync"]
      316 GETUPVAL                         R6 3
      317 LOADK                            R7 K121 ["assetSearch.fetchUserGroupsAsync"]
      318 CALL                             R6 1 1
      319 SETTABLEKS                       R6 R5 K114 ["fetchUserGroupsAsync"]
      321 GETUPVAL                         R6 3
      322 LOADK                            R7 K122 ["assetSearch.searchCreatorStoreAssetsAsync"]
      323 CALL                             R6 1 1
      324 SETTABLEKS                       R6 R5 K115 ["searchCreatorStoreAssetsAsync"]
      326 GETUPVAL                         R6 3
      327 LOADK                            R7 K123 ["assetSearch.getThumbnailsUrl"]
      328 CALL                             R6 1 1
      329 SETTABLEKS                       R6 R5 K116 ["getThumbnailsUrl"]
      331 GETUPVAL                         R6 3
      332 LOADK                            R7 K124 ["assetSearch.getCreatorHubUrl"]
      333 CALL                             R6 1 1
      334 SETTABLEKS                       R6 R5 K117 ["getCreatorHubUrl"]
      336 SETTABLEKS                       R5 R4 K66 ["assetSearch"]
      338 DUPTABLE                         R5 K136 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      339 GETUPVAL                         R6 3
      340 LOADK                            R7 K137 ["assetInsert.getObjects"]
      341 CALL                             R6 1 1
      342 SETTABLEKS                       R6 R5 K125 ["getObjects"]
      344 GETUPVAL                         R6 3
      345 LOADK                            R7 K138 ["assetInsert.getItemDetailsAsync"]
      346 CALL                             R6 1 1
      347 SETTABLEKS                       R6 R5 K126 ["getItemDetailsAsync"]
      349 GETUPVAL                         R6 3
      350 LOADK                            R7 K139 ["assetInsert.loadPackageAssetAsync"]
      351 CALL                             R6 1 1
      352 SETTABLEKS                       R6 R5 K127 ["loadPackageAssetAsync"]
      354 GETUPVAL                         R6 3
      355 LOADK                            R7 K140 ["assetInsert.insertAudioAsset"]
      356 CALL                             R6 1 1
      357 SETTABLEKS                       R6 R5 K128 ["insertAudioAsset"]
      359 GETUPVAL                         R6 3
      360 LOADK                            R7 K141 ["assetInsert.getAudioApiByDefault"]
      361 CALL                             R6 1 1
      362 SETTABLEKS                       R6 R5 K129 ["getAudioApiByDefault"]
      364 GETUPVAL                         R6 3
      365 LOADK                            R7 K142 ["assetInsert.assignSourceAssetId"]
      366 CALL                             R6 1 1
      367 SETTABLEKS                       R6 R5 K130 ["assignSourceAssetId"]
      369 DUPCLOSURE                       R6 K143 [PROTO_22]
      370 CAPTURE                          UPVAL U8
      371 SETTABLEKS                       R6 R5 K131 ["createMeshPartAsync"]
      373 DUPCLOSURE                       R6 K144 [PROTO_23]
      374 SETTABLEKS                       R6 R5 K132 ["createDecal"]
      376 DUPCLOSURE                       R6 K145 [PROTO_24]
      377 SETTABLEKS                       R6 R5 K133 ["createDecalFromImage"]
      379 DUPCLOSURE                       R6 K146 [PROTO_25]
      380 SETTABLEKS                       R6 R5 K134 ["createSound"]
      382 DUPCLOSURE                       R6 K147 [PROTO_26]
      383 SETTABLEKS                       R6 R5 K135 ["createVideoFrame"]
      385 SETTABLEKS                       R5 R4 K67 ["assetInsert"]
      387 SETTABLEKS                       R4 R3 K148 ["tools"]
      389 GETUPVAL                         R4 3
      390 LOADK                            R5 K149 ["convertImageDataToTempIdAsync"]
      391 CALL                             R4 1 1
      392 SETTABLEKS                       R4 R3 K149 ["convertImageDataToTempIdAsync"]
      394 GETUPVAL                         R4 3
      395 LOADK                            R5 K150 ["releaseTempIdAsync"]
      396 CALL                             R4 1 1
      397 SETTABLEKS                       R4 R3 K150 ["releaseTempIdAsync"]
      399 GETUPVAL                         R4 3
      400 LOADK                            R5 K151 ["getSettingsAsync"]
      401 CALL                             R4 1 1
      402 SETTABLEKS                       R4 R3 K151 ["getSettingsAsync"]
      404 GETUPVAL                         R4 3
      405 LOADK                            R5 K152 ["setSettingsAsync"]
      406 CALL                             R4 1 1
      407 SETTABLEKS                       R4 R3 K152 ["setSettingsAsync"]
      409 GETUPVAL                         R4 3
      410 LOADK                            R5 K153 ["getUserSettingsAsync"]
      411 CALL                             R4 1 1
      412 SETTABLEKS                       R4 R3 K153 ["getUserSettingsAsync"]
      414 GETUPVAL                         R4 3
      415 LOADK                            R5 K154 ["setUserSettingsAsync"]
      416 CALL                             R4 1 1
      417 SETTABLEKS                       R4 R3 K154 ["setUserSettingsAsync"]
      419 GETUPVAL                         R4 3
      420 LOADK                            R5 K155 ["getPluginSetting"]
      421 CALL                             R4 1 1
      422 SETTABLEKS                       R4 R3 K155 ["getPluginSetting"]
      424 GETUPVAL                         R4 3
      425 LOADK                            R5 K156 ["setPluginSetting"]
      426 CALL                             R4 1 1
      427 SETTABLEKS                       R4 R3 K156 ["setPluginSetting"]
      429 GETUPVAL                         R4 3
      430 LOADK                            R5 K157 ["getSecureSettingsAsync"]
      431 CALL                             R4 1 1
      432 SETTABLEKS                       R4 R3 K157 ["getSecureSettingsAsync"]
      434 GETUPVAL                         R4 3
      435 LOADK                            R5 K158 ["setSecureSettingsAsync"]
      436 CALL                             R4 1 1
      437 SETTABLEKS                       R4 R3 K158 ["setSecureSettingsAsync"]
      439 GETUPVAL                         R4 3
      440 LOADK                            R5 K159 ["base64EncodeAsync"]
      441 CALL                             R4 1 1
      442 SETTABLEKS                       R4 R3 K159 ["base64EncodeAsync"]
      444 GETUPVAL                         R4 3
      445 LOADK                            R5 K160 ["generatePKCEAsync"]
      446 CALL                             R4 1 1
      447 SETTABLEKS                       R4 R3 K160 ["generatePKCEAsync"]
      449 GETUPVAL                         R4 3
      450 LOADK                            R5 K161 ["startMCPAuthAsync"]
      451 CALL                             R4 1 1
      452 SETTABLEKS                       R4 R3 K161 ["startMCPAuthAsync"]
      454 GETUPVAL                         R4 3
      455 LOADK                            R5 K162 ["setupMCPServerAsync"]
      456 CALL                             R4 1 1
      457 SETTABLEKS                       R4 R3 K162 ["setupMCPServerAsync"]
      459 GETUPVAL                         R4 3
      460 LOADK                            R5 K163 ["getMCPProxyTokenAsync"]
      461 CALL                             R4 1 1
      462 SETTABLEKS                       R4 R3 K163 ["getMCPProxyTokenAsync"]
      464 GETUPVAL                         R4 3
      465 LOADK                            R5 K164 ["startStopPlayAsync"]
      466 CALL                             R4 1 1
      467 SETTABLEKS                       R4 R3 K164 ["startStopPlayAsync"]
      469 DUPCLOSURE                       R4 K165 [PROTO_27]
      470 CAPTURE                          UPVAL U12
      471 SETTABLEKS                       R4 R3 K166 ["getLogHistory"]
      473 GETUPVAL                         R4 3
      474 LOADK                            R5 K167 ["subscribeOutput"]
      475 CALL                             R4 1 1
      476 SETTABLEKS                       R4 R3 K167 ["subscribeOutput"]
      478 GETUPVAL                         R4 3
      479 LOADK                            R5 K168 ["subscribeGameLoaded"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K168 ["subscribeGameLoaded"]
      483 GETUPVAL                         R4 3
      484 LOADK                            R5 K169 ["subscribeGameStopped"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K169 ["subscribeGameStopped"]
      488 GETUPVAL                         R4 3
      489 LOADK                            R5 K170 ["openFileDialogAsync"]
      490 CALL                             R4 1 1
      491 SETTABLEKS                       R4 R3 K170 ["openFileDialogAsync"]
      493 GETUPVAL                         R4 3
      494 LOADK                            R5 K171 ["importFileBinaryAsync"]
      495 CALL                             R4 1 1
      496 SETTABLEKS                       R4 R3 K171 ["importFileBinaryAsync"]
      498 DUPCLOSURE                       R4 K172 [PROTO_28]
      499 SETTABLEKS                       R4 R3 K173 ["printToStudioLogAsync"]
      501 DUPTABLE                         R4 K177 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      502 GETUPVAL                         R5 3
      503 LOADK                            R6 K178 ["quickConnect.fileExistsAsync"]
      504 CALL                             R5 1 1
      505 SETTABLEKS                       R5 R4 K174 ["fileExistsAsync"]
      507 GETUPVAL                         R5 3
      508 LOADK                            R6 K179 ["quickConnect.readFileAsync"]
      509 CALL                             R5 1 1
      510 SETTABLEKS                       R5 R4 K175 ["readFileAsync"]
      512 GETUPVAL                         R5 3
      513 LOADK                            R6 K180 ["quickConnect.modifyFileAsync"]
      514 CALL                             R5 1 1
      515 SETTABLEKS                       R5 R4 K176 ["modifyFileAsync"]
      517 SETTABLEKS                       R4 R3 K181 ["quickConnect"]
      519 DUPTABLE                         R4 K187 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      520 GETUPVAL                         R5 3
      521 LOADK                            R6 K188 ["userSkillAssets.getManifestAsync"]
      522 CALL                             R5 1 1
      523 SETTABLEKS                       R5 R4 K182 ["getManifestAsync"]
      525 GETUPVAL                         R5 3
      526 LOADK                            R6 K189 ["userSkillAssets.fetchContentAsync"]
      527 CALL                             R5 1 1
      528 SETTABLEKS                       R5 R4 K183 ["fetchContentAsync"]
      530 GETUPVAL                         R5 3
      531 LOADK                            R6 K190 ["userSkillAssets.publishNewAsync"]
      532 CALL                             R5 1 1
      533 SETTABLEKS                       R5 R4 K184 ["publishNewAsync"]
      535 GETUPVAL                         R5 3
      536 LOADK                            R6 K191 ["userSkillAssets.publishUpdateAsync"]
      537 CALL                             R5 1 1
      538 SETTABLEKS                       R5 R4 K185 ["publishUpdateAsync"]
      540 GETUPVAL                         R5 3
      541 LOADK                            R6 K192 ["userSkillAssets.deleteAsync"]
      542 CALL                             R5 1 1
      543 SETTABLEKS                       R5 R4 K186 ["deleteAsync"]
      545 SETTABLEKS                       R4 R3 K193 ["userSkillAssets"]
      547 DUPTABLE                         R4 K197 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      548 GETUPVAL                         R5 3
      549 LOADK                            R6 K198 ["cloudSkillAssets.getAssetsAsync"]
      550 CALL                             R5 1 1
      551 SETTABLEKS                       R5 R4 K194 ["getAssetsAsync"]
      553 GETUPVAL                         R5 3
      554 LOADK                            R6 K199 ["cloudSkillAssets.uploadAssetsAsync"]
      555 CALL                             R5 1 1
      556 SETTABLEKS                       R5 R4 K195 ["uploadAssetsAsync"]
      558 GETUPVAL                         R5 3
      559 LOADK                            R6 K200 ["cloudSkillAssets.deleteAssetAsync"]
      560 CALL                             R5 1 1
      561 SETTABLEKS                       R5 R4 K196 ["deleteAssetAsync"]
      563 SETTABLEKS                       R4 R3 K201 ["cloudSkillAssets"]
      565 GETUPVAL                         R4 3
      566 LOADK                            R5 K202 ["getStudioPlayState"]
      567 CALL                             R4 1 1
      568 SETTABLEKS                       R4 R3 K202 ["getStudioPlayState"]
      570 GETUPVAL                         R4 3
      571 LOADK                            R5 K203 ["getFocusedDataModelType"]
      572 CALL                             R4 1 1
      573 SETTABLEKS                       R4 R3 K203 ["getFocusedDataModelType"]
      575 GETUPVAL                         R4 3
      576 LOADK                            R5 K204 ["isEditDataModelAvailable"]
      577 CALL                             R4 1 1
      578 SETTABLEKS                       R4 R3 K204 ["isEditDataModelAvailable"]
      580 GETUPVAL                         R4 3
      581 LOADK                            R5 K205 ["subscribeEditDataModelAvailabilityChanged"]
      582 CALL                             R4 1 1
      583 SETTABLEKS                       R4 R3 K205 ["subscribeEditDataModelAvailabilityChanged"]
      585 GETUPVAL                         R4 3
      586 LOADK                            R5 K206 ["fetchSystemPromptAsync"]
      587 CALL                             R4 1 1
      588 SETTABLEKS                       R4 R3 K206 ["fetchSystemPromptAsync"]
      590 DUPTABLE                         R4 K209 [{"startAsync", "getStatusAsync"}]
      591 GETUPVAL                         R5 3
      592 LOADK                            R6 K210 ["imageGeneration.startAsync"]
      593 CALL                             R5 1 1
      594 SETTABLEKS                       R5 R4 K207 ["startAsync"]
      596 GETUPVAL                         R5 3
      597 LOADK                            R6 K211 ["imageGeneration.getStatusAsync"]
      598 CALL                             R5 1 1
      599 SETTABLEKS                       R5 R4 K208 ["getStatusAsync"]
      601 SETTABLEKS                       R4 R3 K212 ["imageGeneration"]
      603 DUPTABLE                         R4 K209 [{"startAsync", "getStatusAsync"}]
      604 GETUPVAL                         R5 3
      605 LOADK                            R6 K213 ["texturePreview.startAsync"]
      606 CALL                             R5 1 1
      607 SETTABLEKS                       R5 R4 K207 ["startAsync"]
      609 GETUPVAL                         R5 3
      610 LOADK                            R6 K214 ["texturePreview.getStatusAsync"]
      611 CALL                             R5 1 1
      612 SETTABLEKS                       R5 R4 K208 ["getStatusAsync"]
      614 SETTABLEKS                       R4 R3 K215 ["texturePreview"]
      616 DUPTABLE                         R4 K209 [{"startAsync", "getStatusAsync"}]
      617 GETUPVAL                         R5 3
      618 LOADK                            R6 K216 ["layoutGeneration.startAsync"]
      619 CALL                             R5 1 1
      620 SETTABLEKS                       R5 R4 K207 ["startAsync"]
      622 GETUPVAL                         R5 3
      623 LOADK                            R6 K217 ["layoutGeneration.getStatusAsync"]
      624 CALL                             R5 1 1
      625 SETTABLEKS                       R5 R4 K208 ["getStatusAsync"]
      627 SETTABLEKS                       R4 R3 K218 ["layoutGeneration"]
      629 DUPTABLE                         R4 K219 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      630 GETUPVAL                         R5 3
      631 LOADK                            R6 K220 ["segmentMesh.startAsync"]
      632 CALL                             R5 1 1
      633 SETTABLEKS                       R5 R4 K207 ["startAsync"]
      635 GETUPVAL                         R5 3
      636 LOADK                            R6 K221 ["segmentMesh.getStatusAsync"]
      637 CALL                             R5 1 1
      638 SETTABLEKS                       R5 R4 K208 ["getStatusAsync"]
      640 GETUPVAL                         R5 3
      641 LOADK                            R6 K222 ["segmentMesh.publishAssetAsync"]
      642 CALL                             R5 1 1
      643 SETTABLEKS                       R5 R4 K109 ["publishAssetAsync"]
      645 GETUPVAL                         R5 3
      646 LOADK                            R6 K223 ["segmentMesh.loadAssetAsync"]
      647 CALL                             R5 1 1
      648 SETTABLEKS                       R5 R4 K78 ["loadAssetAsync"]
      650 SETTABLEKS                       R4 R3 K224 ["segmentMesh"]
      652 DUPTABLE                         R4 K219 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      653 GETUPVAL                         R5 3
      654 LOADK                            R6 K225 ["textureGeneration.startAsync"]
      655 CALL                             R5 1 1
      656 SETTABLEKS                       R5 R4 K207 ["startAsync"]
      658 GETUPVAL                         R5 3
      659 LOADK                            R6 K226 ["textureGeneration.getStatusAsync"]
      660 CALL                             R5 1 1
      661 SETTABLEKS                       R5 R4 K208 ["getStatusAsync"]
      663 GETUPVAL                         R5 3
      664 LOADK                            R6 K227 ["textureGeneration.publishAssetAsync"]
      665 CALL                             R5 1 1
      666 SETTABLEKS                       R5 R4 K109 ["publishAssetAsync"]
      668 GETUPVAL                         R5 3
      669 LOADK                            R6 K228 ["textureGeneration.loadAssetAsync"]
      670 CALL                             R5 1 1
      671 SETTABLEKS                       R5 R4 K78 ["loadAssetAsync"]
      673 SETTABLEKS                       R4 R3 K229 ["textureGeneration"]
      675 DUPCLOSURE                       R4 K230 [PROTO_29]
      676 SETTABLEKS                       R4 R3 K231 ["hasInternalPermission"]
      678 DUPCLOSURE                       R4 K232 [PROTO_30]
      679 CAPTURE                          UPVAL U13
      680 SETTABLEKS                       R4 R3 K233 ["getMockPrimGenBackendData"]
      682 GETUPVAL                         R4 3
      683 LOADK                            R5 K234 ["startMultiPlayerTest"]
      684 CALL                             R4 1 1
      685 SETTABLEKS                       R4 R3 K234 ["startMultiPlayerTest"]
      687 GETUPVAL                         R4 3
      688 LOADK                            R5 K235 ["stopMultiPlayerTest"]
      689 CALL                             R4 1 1
      690 SETTABLEKS                       R4 R3 K235 ["stopMultiPlayerTest"]
      692 GETUPVAL                         R4 3
      693 LOADK                            R5 K236 ["isInMultiPlayerTest"]
      694 CALL                             R4 1 1
      695 SETTABLEKS                       R4 R3 K236 ["isInMultiPlayerTest"]
      697 GETUPVAL                         R4 3
      698 LOADK                            R5 K237 ["getStopMultiPlayerTestResults"]
      699 CALL                             R4 1 1
      700 SETTABLEKS                       R4 R3 K238 ["subscribeStopMultiPlayerTestStateChanged"]
      702 GETUPVAL                         R4 3
      703 LOADK                            R5 K239 ["createMultiPlayersServer"]
      704 CALL                             R4 1 1
      705 SETTABLEKS                       R4 R3 K239 ["createMultiPlayersServer"]
      707 GETUPVAL                         R4 3
      708 LOADK                            R5 K240 ["createMultiPlayersClient"]
      709 CALL                             R4 1 1
      710 SETTABLEKS                       R4 R3 K240 ["createMultiPlayersClient"]
      712 GETUPVAL                         R4 3
      713 LOADK                            R5 K241 ["getExperimentFeatureEnabled"]
      714 CALL                             R4 1 1
      715 SETTABLEKS                       R4 R3 K241 ["getExperimentFeatureEnabled"]
      717 GETUPVAL                         R4 3
      718 LOADK                            R5 K242 ["getOnExperimentChangedSignal"]
      719 CALL                             R4 1 1
      720 SETTABLEKS                       R4 R3 K243 ["onceExperimentFeatureEnabled"]
      722 GETUPVAL                         R4 3
      723 LOADK                            R5 K244 ["getStudioState"]
      724 CALL                             R4 1 1
      725 SETTABLEKS                       R4 R3 K244 ["getStudioState"]
      727 MOVE                             R2 R3
      728 CLOSEUPVALS                      R1
      729 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R2 R2 K1 ["logErrorEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logToolStarted"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionFallback"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionSuccess"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logThinkingBlock"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCompactionExperimentEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["printToStudioLogAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_40:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_41:
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
       83 GETIMPORT                        R16 K1 [script]
       85 GETTABLEKS                       R16 R16 K23 ["EventLogger"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K16 [require]
       90 GETTABLEKS                       R17 R0 K24 ["Flags"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K16 [require]
       95 GETTABLEKS                       R18 R0 K25 ["Guest"]
       97 GETTABLEKS                       R18 R18 K26 ["LoadAssetHandlers"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K16 [require]
      102 GETTABLEKS                       R19 R0 K27 ["Util"]
      104 GETTABLEKS                       R19 R19 K28 ["MultiPlayersConnection"]
      106 GETTABLEKS                       R19 R19 K29 ["MultiPlayerAgentTypes"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K16 [require]
      111 GETTABLEKS                       R20 R0 K25 ["Guest"]
      113 GETTABLEKS                       R20 R20 K30 ["RecordingHandlers"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K16 [require]
      118 GETTABLEKS                       R21 R0 K31 ["Types"]
      120 CALL                             R20 1 1
      121 GETTABLEKS                       R21 R13 K32 ["createUnimplemented"]
      123 GETTABLEKS                       R22 R9 K33 ["Engine"]
      125 GETTABLEKS                       R22 R22 K34 ["EngineEnv"]
      127 DUPCLOSURE                       R23 K35 [PROTO_31]
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R0
      142 MOVE                             R24 R23
      143 CALL                             R24 0 1
      144 GETTABLEKS                       R25 R22 K36 ["configure"]
      146 DUPTABLE                         R26 K40 [{"eventLogger", "isCompactionExperimentEnabled", "printToStudioLog"}]
      147 DUPTABLE                         R27 K46 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      148 NEWCLOSURE                       R28 P1
      149 CAPTURE                          REF R24
      150 SETTABLEKS                       R28 R27 K41 ["logErrorEvent"]
      152 NEWCLOSURE                       R28 P2
      153 CAPTURE                          REF R24
      154 SETTABLEKS                       R28 R27 K42 ["logToolStarted"]
      156 NEWCLOSURE                       R28 P3
      157 CAPTURE                          REF R24
      158 SETTABLEKS                       R28 R27 K43 ["logCompactionFallback"]
      160 NEWCLOSURE                       R28 P4
      161 CAPTURE                          REF R24
      162 SETTABLEKS                       R28 R27 K44 ["logCompactionSuccess"]
      164 NEWCLOSURE                       R28 P5
      165 CAPTURE                          REF R24
      166 SETTABLEKS                       R28 R27 K45 ["logThinkingBlock"]
      168 SETTABLEKS                       R27 R26 K37 ["eventLogger"]
      170 NEWCLOSURE                       R27 P6
      171 CAPTURE                          REF R24
      172 SETTABLEKS                       R27 R26 K38 ["isCompactionExperimentEnabled"]
      174 NEWCLOSURE                       R27 P7
      175 CAPTURE                          REF R24
      176 SETTABLEKS                       R27 R26 K39 ["printToStudioLog"]
      178 CALL                             R25 1 0
      179 DUPTABLE                         R25 K51 [{"new", "get", "set", "destroy"}]
      180 SETTABLEKS                       R23 R25 K47 ["new"]
      182 NEWCLOSURE                       R26 P8
      183 CAPTURE                          REF R24
      184 SETTABLEKS                       R26 R25 K48 ["get"]
      186 NEWCLOSURE                       R26 P9
      187 CAPTURE                          REF R24
      188 SETTABLEKS                       R26 R25 K49 ["set"]
      190 NEWCLOSURE                       R26 P10
      191 CAPTURE                          REF R24
      192 SETTABLEKS                       R26 R25 K50 ["destroy"]
      194 CLOSEUPVALS                      R24
      195 RETURN                           R25 1
