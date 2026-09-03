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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CreateMeshPartAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["Texture"]
        9 RETURN                           R1 1

PROTO_23:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Decal"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["ColorMap"]
        9 RETURN                           R1 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Sound"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K4 ["rbxassetid://"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K5 ["SoundId"]
        9 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetLogHistory"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_29:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Util"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenMockData"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["MockFerrisWheelResult"]
       12 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K1 ["GenerateGUID"]
        8 CALL                             R1 2 1
        9 LOADNIL                          R2
       10 NEWTABLE                         R3 128 0
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
      127 DUPTABLE                         R4 K64 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "avatarAutoSetup", "screenCapture", "uploadImage", "assetSearch", "assetInsert"}]
      128 DUPTABLE                         R5 K67 [{"loadCode", "stopCode"}]
      129 GETUPVAL                         R6 3
      130 LOADK                            R7 K65 ["loadCode"]
      131 CALL                             R6 1 1
      132 SETTABLEKS                       R6 R5 K65 ["loadCode"]
      134 GETUPVAL                         R6 3
      135 LOADK                            R7 K66 ["stopCode"]
      136 CALL                             R6 1 1
      137 SETTABLEKS                       R6 R5 K66 ["stopCode"]
      139 SETTABLEKS                       R5 R4 K53 ["executeLuau"]
      141 DUPTABLE                         R5 K70 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      142 DUPCLOSURE                       R6 K71 [PROTO_16]
      143 SETTABLEKS                       R6 R5 K68 ["updateScriptSourceAsync"]
      145 DUPCLOSURE                       R6 K72 [PROTO_17]
      146 SETTABLEKS                       R6 R5 K69 ["applyScriptSourceDirectly"]
      148 SETTABLEKS                       R5 R4 K54 ["multiEdit"]
      150 DUPTABLE                         R5 K75 [{"getFreeModelsAsync", "loadAssetAsync"}]
      151 NEWCLOSURE                       R6 P18
      152 CAPTURE                          REF R2
      153 CAPTURE                          UPVAL U5
      154 SETTABLEKS                       R6 R5 K73 ["getFreeModelsAsync"]
      156 GETUPVAL                         R6 6
      157 GETTABLEKS                       R6 R6 K76 ["getStandardHandler"]
      159 GETUPVAL                         R7 7
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K74 ["loadAssetAsync"]
      163 SETTABLEKS                       R5 R4 K55 ["marketplaceInsertion"]
      165 DUPTABLE                         R5 K79 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      166 GETUPVAL                         R6 3
      167 LOADK                            R7 K77 ["generateMaterialVariantsAsync"]
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R5 K77 ["generateMaterialVariantsAsync"]
      171 GETUPVAL                         R6 3
      172 LOADK                            R7 K78 ["uploadMaterialsAsync"]
      173 CALL                             R6 1 1
      174 SETTABLEKS                       R6 R5 K78 ["uploadMaterialsAsync"]
      176 SETTABLEKS                       R5 R4 K56 ["materialGen"]
      178 DUPTABLE                         R5 K86 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool", "exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
      179 DUPCLOSURE                       R6 K87 [PROTO_19]
      180 CAPTURE                          UPVAL U8
      181 SETTABLEKS                       R6 R5 K80 ["generateModelAsync"]
      183 GETUPVAL                         R6 3
      184 LOADK                            R7 K81 ["publishModelAsync"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K81 ["publishModelAsync"]
      188 GETUPVAL                         R6 6
      189 GETTABLEKS                       R6 R6 K76 ["getStandardHandler"]
      191 GETUPVAL                         R7 7
      192 CALL                             R6 1 1
      193 SETTABLEKS                       R6 R5 K74 ["loadAssetAsync"]
      195 GETUPVAL                         R6 3
      196 LOADK                            R7 K82 ["activateScaleTool"]
      197 CALL                             R6 1 1
      198 SETTABLEKS                       R6 R5 K82 ["activateScaleTool"]
      200 GETUPVAL                         R6 3
      201 LOADK                            R7 K83 ["exportInstanceToGlbAsync"]
      202 CALL                             R6 1 1
      203 SETTABLEKS                       R6 R5 K83 ["exportInstanceToGlbAsync"]
      205 GETUPVAL                         R6 3
      206 LOADK                            R7 K84 ["exportMeshToGlbAsync"]
      207 CALL                             R6 1 1
      208 SETTABLEKS                       R6 R5 K84 ["exportMeshToGlbAsync"]
      210 GETUPVAL                         R6 3
      211 LOADK                            R7 K85 ["loadModelFromUrlAsync"]
      212 CALL                             R6 1 1
      213 SETTABLEKS                       R6 R5 K85 ["loadModelFromUrlAsync"]
      215 SETTABLEKS                       R5 R4 K57 ["meshGen"]
      217 GETUPVAL                         R6 9
      218 GETTABLEKS                       R6 R6 K88 ["FFlagAssistantAnimationGenTool"]
      220 JUMPIFNOT                        R6 ; [+12]
      221 DUPTABLE                         R5 K91 [{"generateAnimationAsync", "publishAnimationAsync"}]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K89 ["generateAnimationAsync"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K89 ["generateAnimationAsync"]
      227 GETUPVAL                         R6 3
      228 LOADK                            R7 K90 ["publishAnimationAsync"]
      229 CALL                             R6 1 1
      230 SETTABLEKS                       R6 R5 K90 ["publishAnimationAsync"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R5
      234 SETTABLEKS                       R5 R4 K58 ["animationGen"]
      236 GETUPVAL                         R6 9
      237 GETTABLEKS                       R6 R6 K92 ["FFlagAssistantAvatarAutoSetupTool"]
      239 JUMPIFNOT                        R6 ; [+12]
      240 DUPTABLE                         R5 K95 [{"autoSetupAsync", "cancelAutoSetup"}]
      241 GETUPVAL                         R6 3
      242 LOADK                            R7 K93 ["autoSetupAsync"]
      243 CALL                             R6 1 1
      244 SETTABLEKS                       R6 R5 K93 ["autoSetupAsync"]
      246 GETUPVAL                         R6 3
      247 LOADK                            R7 K94 ["cancelAutoSetup"]
      248 CALL                             R6 1 1
      249 SETTABLEKS                       R6 R5 K94 ["cancelAutoSetup"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R5
      253 SETTABLEKS                       R5 R4 K59 ["avatarAutoSetup"]
      255 DUPTABLE                         R5 K98 [{"getImageDataBase64Async", "captureScreenshot"}]
      256 GETUPVAL                         R6 3
      257 LOADK                            R7 K96 ["getImageDataBase64Async"]
      258 CALL                             R6 1 1
      259 SETTABLEKS                       R6 R5 K96 ["getImageDataBase64Async"]
      261 DUPCLOSURE                       R6 K99 [PROTO_20]
      262 CAPTURE                          UPVAL U10
      263 SETTABLEKS                       R6 R5 K97 ["captureScreenshot"]
      265 SETTABLEKS                       R5 R4 K60 ["screenCapture"]
      267 DUPTABLE                         R5 K103 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      268 GETUPVAL                         R6 3
      269 LOADK                            R7 K100 ["loadImageAsync"]
      270 CALL                             R6 1 1
      271 SETTABLEKS                       R6 R5 K100 ["loadImageAsync"]
      273 GETUPVAL                         R6 3
      274 LOADK                            R7 K101 ["publishAssetAsync"]
      275 CALL                             R6 1 1
      276 SETTABLEKS                       R6 R5 K101 ["publishAssetAsync"]
      278 GETUPVAL                         R6 3
      279 LOADK                            R7 K102 ["searchAssetAsync"]
      280 CALL                             R6 1 1
      281 SETTABLEKS                       R6 R5 K102 ["searchAssetAsync"]
      283 SETTABLEKS                       R5 R4 K61 ["uploadImage"]
      285 DUPTABLE                         R5 K110 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      286 GETUPVAL                         R6 3
      287 LOADK                            R7 K111 ["assetSearch.getStudioIdentity"]
      288 CALL                             R6 1 1
      289 SETTABLEKS                       R6 R5 K104 ["getStudioIdentity"]
      291 GETUPVAL                         R6 3
      292 LOADK                            R7 K112 ["assetSearch.searchCreatorInventoryAsync"]
      293 CALL                             R6 1 1
      294 SETTABLEKS                       R6 R5 K105 ["searchCreatorInventoryAsync"]
      296 GETUPVAL                         R6 3
      297 LOADK                            R7 K113 ["assetSearch.fetchUserGroupsAsync"]
      298 CALL                             R6 1 1
      299 SETTABLEKS                       R6 R5 K106 ["fetchUserGroupsAsync"]
      301 GETUPVAL                         R6 3
      302 LOADK                            R7 K114 ["assetSearch.searchCreatorStoreAssetsAsync"]
      303 CALL                             R6 1 1
      304 SETTABLEKS                       R6 R5 K107 ["searchCreatorStoreAssetsAsync"]
      306 GETUPVAL                         R6 3
      307 LOADK                            R7 K115 ["assetSearch.getThumbnailsUrl"]
      308 CALL                             R6 1 1
      309 SETTABLEKS                       R6 R5 K108 ["getThumbnailsUrl"]
      311 GETUPVAL                         R6 3
      312 LOADK                            R7 K116 ["assetSearch.getCreatorHubUrl"]
      313 CALL                             R6 1 1
      314 SETTABLEKS                       R6 R5 K109 ["getCreatorHubUrl"]
      316 SETTABLEKS                       R5 R4 K62 ["assetSearch"]
      318 DUPTABLE                         R5 K128 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      319 GETUPVAL                         R6 3
      320 LOADK                            R7 K129 ["assetInsert.getObjects"]
      321 CALL                             R6 1 1
      322 SETTABLEKS                       R6 R5 K117 ["getObjects"]
      324 GETUPVAL                         R6 3
      325 LOADK                            R7 K130 ["assetInsert.getItemDetailsAsync"]
      326 CALL                             R6 1 1
      327 SETTABLEKS                       R6 R5 K118 ["getItemDetailsAsync"]
      329 GETUPVAL                         R6 3
      330 LOADK                            R7 K131 ["assetInsert.loadPackageAssetAsync"]
      331 CALL                             R6 1 1
      332 SETTABLEKS                       R6 R5 K119 ["loadPackageAssetAsync"]
      334 GETUPVAL                         R6 3
      335 LOADK                            R7 K132 ["assetInsert.insertAudioAsset"]
      336 CALL                             R6 1 1
      337 SETTABLEKS                       R6 R5 K120 ["insertAudioAsset"]
      339 GETUPVAL                         R6 3
      340 LOADK                            R7 K133 ["assetInsert.getAudioApiByDefault"]
      341 CALL                             R6 1 1
      342 SETTABLEKS                       R6 R5 K121 ["getAudioApiByDefault"]
      344 GETUPVAL                         R6 3
      345 LOADK                            R7 K134 ["assetInsert.assignSourceAssetId"]
      346 CALL                             R6 1 1
      347 SETTABLEKS                       R6 R5 K122 ["assignSourceAssetId"]
      349 DUPCLOSURE                       R6 K135 [PROTO_21]
      350 CAPTURE                          UPVAL U7
      351 SETTABLEKS                       R6 R5 K123 ["createMeshPartAsync"]
      353 DUPCLOSURE                       R6 K136 [PROTO_22]
      354 SETTABLEKS                       R6 R5 K124 ["createDecal"]
      356 DUPCLOSURE                       R6 K137 [PROTO_23]
      357 SETTABLEKS                       R6 R5 K125 ["createDecalFromImage"]
      359 DUPCLOSURE                       R6 K138 [PROTO_24]
      360 SETTABLEKS                       R6 R5 K126 ["createSound"]
      362 DUPCLOSURE                       R6 K139 [PROTO_25]
      363 SETTABLEKS                       R6 R5 K127 ["createVideoFrame"]
      365 SETTABLEKS                       R5 R4 K63 ["assetInsert"]
      367 SETTABLEKS                       R4 R3 K140 ["tools"]
      369 GETUPVAL                         R4 3
      370 LOADK                            R5 K141 ["convertImageDataToTempIdAsync"]
      371 CALL                             R4 1 1
      372 SETTABLEKS                       R4 R3 K141 ["convertImageDataToTempIdAsync"]
      374 GETUPVAL                         R4 3
      375 LOADK                            R5 K142 ["releaseTempIdAsync"]
      376 CALL                             R4 1 1
      377 SETTABLEKS                       R4 R3 K142 ["releaseTempIdAsync"]
      379 GETUPVAL                         R4 3
      380 LOADK                            R5 K143 ["getSettingsAsync"]
      381 CALL                             R4 1 1
      382 SETTABLEKS                       R4 R3 K143 ["getSettingsAsync"]
      384 GETUPVAL                         R4 3
      385 LOADK                            R5 K144 ["setSettingsAsync"]
      386 CALL                             R4 1 1
      387 SETTABLEKS                       R4 R3 K144 ["setSettingsAsync"]
      389 GETUPVAL                         R4 3
      390 LOADK                            R5 K145 ["getUserSettingsAsync"]
      391 CALL                             R4 1 1
      392 SETTABLEKS                       R4 R3 K145 ["getUserSettingsAsync"]
      394 GETUPVAL                         R4 3
      395 LOADK                            R5 K146 ["setUserSettingsAsync"]
      396 CALL                             R4 1 1
      397 SETTABLEKS                       R4 R3 K146 ["setUserSettingsAsync"]
      399 GETUPVAL                         R4 3
      400 LOADK                            R5 K147 ["getPluginSetting"]
      401 CALL                             R4 1 1
      402 SETTABLEKS                       R4 R3 K147 ["getPluginSetting"]
      404 GETUPVAL                         R4 3
      405 LOADK                            R5 K148 ["setPluginSetting"]
      406 CALL                             R4 1 1
      407 SETTABLEKS                       R4 R3 K148 ["setPluginSetting"]
      409 GETUPVAL                         R4 3
      410 LOADK                            R5 K149 ["getSecureSettingsAsync"]
      411 CALL                             R4 1 1
      412 SETTABLEKS                       R4 R3 K149 ["getSecureSettingsAsync"]
      414 GETUPVAL                         R4 3
      415 LOADK                            R5 K150 ["setSecureSettingsAsync"]
      416 CALL                             R4 1 1
      417 SETTABLEKS                       R4 R3 K150 ["setSecureSettingsAsync"]
      419 GETUPVAL                         R4 3
      420 LOADK                            R5 K151 ["base64EncodeAsync"]
      421 CALL                             R4 1 1
      422 SETTABLEKS                       R4 R3 K151 ["base64EncodeAsync"]
      424 GETUPVAL                         R4 3
      425 LOADK                            R5 K152 ["generatePKCEAsync"]
      426 CALL                             R4 1 1
      427 SETTABLEKS                       R4 R3 K152 ["generatePKCEAsync"]
      429 GETUPVAL                         R4 3
      430 LOADK                            R5 K153 ["startMCPAuthAsync"]
      431 CALL                             R4 1 1
      432 SETTABLEKS                       R4 R3 K153 ["startMCPAuthAsync"]
      434 GETUPVAL                         R4 3
      435 LOADK                            R5 K154 ["setupMCPServerAsync"]
      436 CALL                             R4 1 1
      437 SETTABLEKS                       R4 R3 K154 ["setupMCPServerAsync"]
      439 GETUPVAL                         R4 3
      440 LOADK                            R5 K155 ["getScopePermissionsAsync"]
      441 CALL                             R4 1 1
      442 SETTABLEKS                       R4 R3 K155 ["getScopePermissionsAsync"]
      444 GETUPVAL                         R4 3
      445 LOADK                            R5 K156 ["setScopePermissionsAsync"]
      446 CALL                             R4 1 1
      447 SETTABLEKS                       R4 R3 K156 ["setScopePermissionsAsync"]
      449 GETUPVAL                         R4 3
      450 LOADK                            R5 K157 ["getAvailableScopesAsync"]
      451 CALL                             R4 1 1
      452 SETTABLEKS                       R4 R3 K157 ["getAvailableScopesAsync"]
      454 GETUPVAL                         R4 3
      455 LOADK                            R5 K158 ["getScopeRiskLevelsAsync"]
      456 CALL                             R4 1 1
      457 SETTABLEKS                       R4 R3 K158 ["getScopeRiskLevelsAsync"]
      459 GETUPVAL                         R4 3
      460 LOADK                            R5 K159 ["getSelectedPresetAsync"]
      461 CALL                             R4 1 1
      462 SETTABLEKS                       R4 R3 K159 ["getSelectedPresetAsync"]
      464 GETUPVAL                         R4 3
      465 LOADK                            R5 K160 ["setSelectedPresetAsync"]
      466 CALL                             R4 1 1
      467 SETTABLEKS                       R4 R3 K160 ["setSelectedPresetAsync"]
      469 GETUPVAL                         R4 3
      470 LOADK                            R5 K161 ["startStopPlayAsync"]
      471 CALL                             R4 1 1
      472 SETTABLEKS                       R4 R3 K161 ["startStopPlayAsync"]
      474 DUPCLOSURE                       R4 K162 [PROTO_26]
      475 CAPTURE                          UPVAL U11
      476 SETTABLEKS                       R4 R3 K163 ["getLogHistory"]
      478 GETUPVAL                         R4 3
      479 LOADK                            R5 K164 ["subscribeOutput"]
      480 CALL                             R4 1 1
      481 SETTABLEKS                       R4 R3 K164 ["subscribeOutput"]
      483 GETUPVAL                         R4 3
      484 LOADK                            R5 K165 ["subscribeGameLoaded"]
      485 CALL                             R4 1 1
      486 SETTABLEKS                       R4 R3 K165 ["subscribeGameLoaded"]
      488 GETUPVAL                         R4 3
      489 LOADK                            R5 K166 ["subscribeGameStopped"]
      490 CALL                             R4 1 1
      491 SETTABLEKS                       R4 R3 K166 ["subscribeGameStopped"]
      493 GETUPVAL                         R4 3
      494 LOADK                            R5 K167 ["openFileDialogAsync"]
      495 CALL                             R4 1 1
      496 SETTABLEKS                       R4 R3 K167 ["openFileDialogAsync"]
      498 GETUPVAL                         R4 3
      499 LOADK                            R5 K168 ["importFileBinaryAsync"]
      500 CALL                             R4 1 1
      501 SETTABLEKS                       R4 R3 K168 ["importFileBinaryAsync"]
      503 DUPCLOSURE                       R4 K169 [PROTO_27]
      504 SETTABLEKS                       R4 R3 K170 ["printToStudioLogAsync"]
      506 DUPTABLE                         R4 K174 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      507 GETUPVAL                         R5 3
      508 LOADK                            R6 K175 ["quickConnect.fileExistsAsync"]
      509 CALL                             R5 1 1
      510 SETTABLEKS                       R5 R4 K171 ["fileExistsAsync"]
      512 GETUPVAL                         R5 3
      513 LOADK                            R6 K176 ["quickConnect.readFileAsync"]
      514 CALL                             R5 1 1
      515 SETTABLEKS                       R5 R4 K172 ["readFileAsync"]
      517 GETUPVAL                         R5 3
      518 LOADK                            R6 K177 ["quickConnect.modifyFileAsync"]
      519 CALL                             R5 1 1
      520 SETTABLEKS                       R5 R4 K173 ["modifyFileAsync"]
      522 SETTABLEKS                       R4 R3 K178 ["quickConnect"]
      524 DUPTABLE                         R4 K184 [{"getManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      525 GETUPVAL                         R5 3
      526 LOADK                            R6 K185 ["userSkillAssets.getManifestAsync"]
      527 CALL                             R5 1 1
      528 SETTABLEKS                       R5 R4 K179 ["getManifestAsync"]
      530 GETUPVAL                         R5 3
      531 LOADK                            R6 K186 ["userSkillAssets.fetchContentAsync"]
      532 CALL                             R5 1 1
      533 SETTABLEKS                       R5 R4 K180 ["fetchContentAsync"]
      535 GETUPVAL                         R5 3
      536 LOADK                            R6 K187 ["userSkillAssets.publishNewAsync"]
      537 CALL                             R5 1 1
      538 SETTABLEKS                       R5 R4 K181 ["publishNewAsync"]
      540 GETUPVAL                         R5 3
      541 LOADK                            R6 K188 ["userSkillAssets.publishUpdateAsync"]
      542 CALL                             R5 1 1
      543 SETTABLEKS                       R5 R4 K182 ["publishUpdateAsync"]
      545 GETUPVAL                         R5 3
      546 LOADK                            R6 K189 ["userSkillAssets.deleteAsync"]
      547 CALL                             R5 1 1
      548 SETTABLEKS                       R5 R4 K183 ["deleteAsync"]
      550 SETTABLEKS                       R4 R3 K190 ["userSkillAssets"]
      552 DUPTABLE                         R4 K194 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      553 GETUPVAL                         R5 3
      554 LOADK                            R6 K195 ["cloudSkillAssets.getAssetsAsync"]
      555 CALL                             R5 1 1
      556 SETTABLEKS                       R5 R4 K191 ["getAssetsAsync"]
      558 GETUPVAL                         R5 3
      559 LOADK                            R6 K196 ["cloudSkillAssets.uploadAssetsAsync"]
      560 CALL                             R5 1 1
      561 SETTABLEKS                       R5 R4 K192 ["uploadAssetsAsync"]
      563 GETUPVAL                         R5 3
      564 LOADK                            R6 K197 ["cloudSkillAssets.deleteAssetAsync"]
      565 CALL                             R5 1 1
      566 SETTABLEKS                       R5 R4 K193 ["deleteAssetAsync"]
      568 SETTABLEKS                       R4 R3 K198 ["cloudSkillAssets"]
      570 GETUPVAL                         R4 3
      571 LOADK                            R5 K199 ["getStudioPlayState"]
      572 CALL                             R4 1 1
      573 SETTABLEKS                       R4 R3 K199 ["getStudioPlayState"]
      575 GETUPVAL                         R4 3
      576 LOADK                            R5 K200 ["getFocusedDataModelType"]
      577 CALL                             R4 1 1
      578 SETTABLEKS                       R4 R3 K200 ["getFocusedDataModelType"]
      580 GETUPVAL                         R4 3
      581 LOADK                            R5 K201 ["isEditDataModelAvailable"]
      582 CALL                             R4 1 1
      583 SETTABLEKS                       R4 R3 K201 ["isEditDataModelAvailable"]
      585 GETUPVAL                         R4 3
      586 LOADK                            R5 K202 ["subscribeEditDataModelAvailabilityChanged"]
      587 CALL                             R4 1 1
      588 SETTABLEKS                       R4 R3 K202 ["subscribeEditDataModelAvailabilityChanged"]
      590 GETUPVAL                         R4 3
      591 LOADK                            R5 K203 ["fetchSystemPromptAsync"]
      592 CALL                             R4 1 1
      593 SETTABLEKS                       R4 R3 K203 ["fetchSystemPromptAsync"]
      595 DUPTABLE                         R4 K206 [{"startAsync", "getStatusAsync"}]
      596 GETUPVAL                         R5 3
      597 LOADK                            R6 K207 ["imageGeneration.startAsync"]
      598 CALL                             R5 1 1
      599 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      601 GETUPVAL                         R5 3
      602 LOADK                            R6 K208 ["imageGeneration.getStatusAsync"]
      603 CALL                             R5 1 1
      604 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      606 SETTABLEKS                       R4 R3 K209 ["imageGeneration"]
      608 DUPTABLE                         R4 K206 [{"startAsync", "getStatusAsync"}]
      609 GETUPVAL                         R5 3
      610 LOADK                            R6 K210 ["layoutGeneration.startAsync"]
      611 CALL                             R5 1 1
      612 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      614 GETUPVAL                         R5 3
      615 LOADK                            R6 K211 ["layoutGeneration.getStatusAsync"]
      616 CALL                             R5 1 1
      617 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      619 SETTABLEKS                       R4 R3 K212 ["layoutGeneration"]
      621 DUPTABLE                         R4 K213 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      622 GETUPVAL                         R5 3
      623 LOADK                            R6 K214 ["segmentMesh.startAsync"]
      624 CALL                             R5 1 1
      625 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      627 GETUPVAL                         R5 3
      628 LOADK                            R6 K215 ["segmentMesh.getStatusAsync"]
      629 CALL                             R5 1 1
      630 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      632 GETUPVAL                         R5 3
      633 LOADK                            R6 K216 ["segmentMesh.publishAssetAsync"]
      634 CALL                             R5 1 1
      635 SETTABLEKS                       R5 R4 K101 ["publishAssetAsync"]
      637 GETUPVAL                         R5 3
      638 LOADK                            R6 K217 ["segmentMesh.loadAssetAsync"]
      639 CALL                             R5 1 1
      640 SETTABLEKS                       R5 R4 K74 ["loadAssetAsync"]
      642 SETTABLEKS                       R4 R3 K218 ["segmentMesh"]
      644 DUPTABLE                         R4 K213 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      645 GETUPVAL                         R5 3
      646 LOADK                            R6 K219 ["textureGeneration.startAsync"]
      647 CALL                             R5 1 1
      648 SETTABLEKS                       R5 R4 K204 ["startAsync"]
      650 GETUPVAL                         R5 3
      651 LOADK                            R6 K220 ["textureGeneration.getStatusAsync"]
      652 CALL                             R5 1 1
      653 SETTABLEKS                       R5 R4 K205 ["getStatusAsync"]
      655 GETUPVAL                         R5 3
      656 LOADK                            R6 K221 ["textureGeneration.publishAssetAsync"]
      657 CALL                             R5 1 1
      658 SETTABLEKS                       R5 R4 K101 ["publishAssetAsync"]
      660 GETUPVAL                         R5 3
      661 LOADK                            R6 K222 ["textureGeneration.loadAssetAsync"]
      662 CALL                             R5 1 1
      663 SETTABLEKS                       R5 R4 K74 ["loadAssetAsync"]
      665 SETTABLEKS                       R4 R3 K223 ["textureGeneration"]
      667 DUPCLOSURE                       R4 K224 [PROTO_28]
      668 SETTABLEKS                       R4 R3 K225 ["hasInternalPermission"]
      670 DUPCLOSURE                       R4 K226 [PROTO_29]
      671 CAPTURE                          UPVAL U12
      672 SETTABLEKS                       R4 R3 K227 ["getMockPrimGenBackendData"]
      674 GETUPVAL                         R4 3
      675 LOADK                            R5 K228 ["startMultiPlayerTest"]
      676 CALL                             R4 1 1
      677 SETTABLEKS                       R4 R3 K228 ["startMultiPlayerTest"]
      679 GETUPVAL                         R4 3
      680 LOADK                            R5 K229 ["stopMultiPlayerTest"]
      681 CALL                             R4 1 1
      682 SETTABLEKS                       R4 R3 K229 ["stopMultiPlayerTest"]
      684 GETUPVAL                         R4 3
      685 LOADK                            R5 K230 ["isInMultiPlayerTest"]
      686 CALL                             R4 1 1
      687 SETTABLEKS                       R4 R3 K230 ["isInMultiPlayerTest"]
      689 GETUPVAL                         R4 3
      690 LOADK                            R5 K231 ["getStopMultiPlayerTestResults"]
      691 CALL                             R4 1 1
      692 SETTABLEKS                       R4 R3 K232 ["subscribeStopMultiPlayerTestStateChanged"]
      694 GETUPVAL                         R4 3
      695 LOADK                            R5 K233 ["createMultiPlayersServer"]
      696 CALL                             R4 1 1
      697 SETTABLEKS                       R4 R3 K233 ["createMultiPlayersServer"]
      699 GETUPVAL                         R4 3
      700 LOADK                            R5 K234 ["createMultiPlayersClient"]
      701 CALL                             R4 1 1
      702 SETTABLEKS                       R4 R3 K234 ["createMultiPlayersClient"]
      704 GETUPVAL                         R4 3
      705 LOADK                            R5 K235 ["getExperimentFeatureEnabled"]
      706 CALL                             R4 1 1
      707 SETTABLEKS                       R4 R3 K235 ["getExperimentFeatureEnabled"]
      709 GETUPVAL                         R4 3
      710 LOADK                            R5 K236 ["getOnExperimentChangedSignal"]
      711 CALL                             R4 1 1
      712 SETTABLEKS                       R4 R3 K237 ["onceExperimentFeatureEnabled"]
      714 GETUPVAL                         R4 3
      715 LOADK                            R5 K238 ["getStudioState"]
      716 CALL                             R4 1 1
      717 SETTABLEKS                       R4 R3 K238 ["getStudioState"]
      719 MOVE                             R2 R3
      720 CLOSEUPVALS                      R2
      721 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R2 R2 K1 ["logErrorEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logToolStarted"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionFallback"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logCompactionSuccess"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EventLogger"]
        3 GETTABLEKS                       R1 R1 K1 ["logThinkingBlock"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCompactionExperimentEnabled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getExperimentFeatureEnabled"]
        3 LOADK                            R1 K1 ["AssistantHarnessSplit"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHarnessSplit"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantHarnessSplitExp"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADB                            R0 0
       11 RETURN                           R0 1
       12 GETIMPORT                        R0 K3 [pcall]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R0 1 2
       17 JUMPIFNOT                        R0 ; [+2]
       18 MOVE                             R2 R1
       19 JUMPIF                           R2 ; [+1]
       20 LOADB                            R2 0
       21 RETURN                           R2 1

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
       53 GETTABLEKS                       R9 R9 K17 ["AssistantHarness"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Parent"]
       60 GETTABLEKS                       R10 R10 K18 ["DMNetworking"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R11 R11 K19 ["EventLogger"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K15 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Flags"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K15 [require]
       77 GETTABLEKS                       R13 R0 K21 ["Guest"]
       79 GETTABLEKS                       R13 R13 K22 ["LoadAssetHandlers"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K15 [require]
       84 GETTABLEKS                       R14 R0 K23 ["Util"]
       86 GETTABLEKS                       R14 R14 K24 ["MultiPlayersConnection"]
       88 GETTABLEKS                       R14 R14 K25 ["MultiPlayerAgentTypes"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K15 [require]
       93 GETTABLEKS                       R15 R0 K16 ["Parent"]
       95 GETTABLEKS                       R15 R15 K26 ["ReactUtils"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K15 [require]
      100 GETTABLEKS                       R16 R0 K21 ["Guest"]
      102 GETTABLEKS                       R16 R16 K27 ["RecordingHandlers"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K15 [require]
      107 GETTABLEKS                       R17 R0 K28 ["Types"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R14 K29 ["createUnimplemented"]
      112 GETTABLEKS                       R18 R8 K30 ["Engine"]
      114 GETTABLEKS                       R18 R18 K31 ["EngineEnv"]
      116 DUPCLOSURE                       R19 K32 [PROTO_30]
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R0
      130 MOVE                             R20 R19
      131 CALL                             R20 0 1
      132 GETTABLEKS                       R21 R18 K33 ["configure"]
      134 DUPTABLE                         R22 K37 [{"eventLogger", "isCompactionExperimentEnabled", "isAssistantHarnessSplitEnabled"}]
      135 DUPTABLE                         R23 K43 [{"logErrorEvent", "logToolStarted", "logCompactionFallback", "logCompactionSuccess", "logThinkingBlock"}]
      136 NEWCLOSURE                       R24 P1
      137 CAPTURE                          REF R20
      138 SETTABLEKS                       R24 R23 K38 ["logErrorEvent"]
      140 NEWCLOSURE                       R24 P2
      141 CAPTURE                          REF R20
      142 SETTABLEKS                       R24 R23 K39 ["logToolStarted"]
      144 NEWCLOSURE                       R24 P3
      145 CAPTURE                          REF R20
      146 SETTABLEKS                       R24 R23 K40 ["logCompactionFallback"]
      148 NEWCLOSURE                       R24 P4
      149 CAPTURE                          REF R20
      150 SETTABLEKS                       R24 R23 K41 ["logCompactionSuccess"]
      152 NEWCLOSURE                       R24 P5
      153 CAPTURE                          REF R20
      154 SETTABLEKS                       R24 R23 K42 ["logThinkingBlock"]
      156 SETTABLEKS                       R23 R22 K34 ["eventLogger"]
      158 NEWCLOSURE                       R23 P6
      159 CAPTURE                          REF R20
      160 SETTABLEKS                       R23 R22 K35 ["isCompactionExperimentEnabled"]
      162 NEWCLOSURE                       R23 P7
      163 CAPTURE                          VAL R11
      164 CAPTURE                          REF R20
      165 SETTABLEKS                       R23 R22 K36 ["isAssistantHarnessSplitEnabled"]
      167 CALL                             R21 1 0
      168 DUPTABLE                         R21 K47 [{"new", "get", "set"}]
      169 SETTABLEKS                       R19 R21 K44 ["new"]
      171 NEWCLOSURE                       R22 P8
      172 CAPTURE                          REF R20
      173 SETTABLEKS                       R22 R21 K45 ["get"]
      175 NEWCLOSURE                       R22 P9
      176 CAPTURE                          REF R20
      177 SETTABLEKS                       R22 R21 K46 ["set"]
      179 CLOSEUPVALS                      R20
      180 RETURN                           R21 1
