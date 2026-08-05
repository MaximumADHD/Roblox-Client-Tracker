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
        3 GETTABLEKS                       R1 R1 K2 ["Features"]
        5 GETTABLEKS                       R1 R1 K3 ["PrimitiveGen"]
        7 GETTABLEKS                       R1 R1 K4 ["PrimitiveGenTool"]
        9 GETTABLEKS                       R1 R1 K5 ["PrimitiveGenMockData"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["MockFerrisWheelResult"]
       14 RETURN                           R1 1

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
      127 DUPTABLE                         R4 K63 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "animationGen", "screenCapture", "uploadImage", "assetSearch", "assetInsert"}]
      128 DUPTABLE                         R5 K66 [{"loadCode", "stopCode"}]
      129 GETUPVAL                         R6 3
      130 LOADK                            R7 K64 ["loadCode"]
      131 CALL                             R6 1 1
      132 SETTABLEKS                       R6 R5 K64 ["loadCode"]
      134 GETUPVAL                         R6 3
      135 LOADK                            R7 K65 ["stopCode"]
      136 CALL                             R6 1 1
      137 SETTABLEKS                       R6 R5 K65 ["stopCode"]
      139 SETTABLEKS                       R5 R4 K53 ["executeLuau"]
      141 DUPTABLE                         R5 K69 [{"updateScriptSourceAsync", "applyScriptSourceDirectly"}]
      142 DUPCLOSURE                       R6 K70 [PROTO_16]
      143 SETTABLEKS                       R6 R5 K67 ["updateScriptSourceAsync"]
      145 DUPCLOSURE                       R6 K71 [PROTO_17]
      146 SETTABLEKS                       R6 R5 K68 ["applyScriptSourceDirectly"]
      148 SETTABLEKS                       R5 R4 K54 ["multiEdit"]
      150 DUPTABLE                         R5 K74 [{"getFreeModelsAsync", "loadAssetAsync"}]
      151 NEWCLOSURE                       R6 P18
      152 CAPTURE                          REF R2
      153 CAPTURE                          UPVAL U5
      154 SETTABLEKS                       R6 R5 K72 ["getFreeModelsAsync"]
      156 GETUPVAL                         R6 6
      157 GETTABLEKS                       R6 R6 K75 ["getStandardHandler"]
      159 GETUPVAL                         R7 7
      160 CALL                             R6 1 1
      161 SETTABLEKS                       R6 R5 K73 ["loadAssetAsync"]
      163 SETTABLEKS                       R5 R4 K55 ["marketplaceInsertion"]
      165 DUPTABLE                         R5 K78 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      166 GETUPVAL                         R6 3
      167 LOADK                            R7 K76 ["generateMaterialVariantsAsync"]
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R5 K76 ["generateMaterialVariantsAsync"]
      171 GETUPVAL                         R6 3
      172 LOADK                            R7 K77 ["uploadMaterialsAsync"]
      173 CALL                             R6 1 1
      174 SETTABLEKS                       R6 R5 K77 ["uploadMaterialsAsync"]
      176 SETTABLEKS                       R5 R4 K56 ["materialGen"]
      178 DUPTABLE                         R5 K82 [{"generateModelAsync", "publishModelAsync", "loadAssetAsync", "activateScaleTool"}]
      179 DUPCLOSURE                       R6 K83 [PROTO_19]
      180 CAPTURE                          UPVAL U8
      181 SETTABLEKS                       R6 R5 K79 ["generateModelAsync"]
      183 GETUPVAL                         R6 3
      184 LOADK                            R7 K80 ["publishModelAsync"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K80 ["publishModelAsync"]
      188 GETUPVAL                         R6 6
      189 GETTABLEKS                       R6 R6 K75 ["getStandardHandler"]
      191 GETUPVAL                         R7 7
      192 CALL                             R6 1 1
      193 SETTABLEKS                       R6 R5 K73 ["loadAssetAsync"]
      195 GETUPVAL                         R6 3
      196 LOADK                            R7 K81 ["activateScaleTool"]
      197 CALL                             R6 1 1
      198 SETTABLEKS                       R6 R5 K81 ["activateScaleTool"]
      200 SETTABLEKS                       R5 R4 K57 ["meshGen"]
      202 GETUPVAL                         R6 9
      203 GETTABLEKS                       R6 R6 K84 ["FFlagAssistantAnimationGenTool"]
      205 JUMPIFNOT                        R6 ; [+12]
      206 DUPTABLE                         R5 K87 [{"generateAnimationAsync", "publishAnimationAsync"}]
      207 GETUPVAL                         R6 3
      208 LOADK                            R7 K85 ["generateAnimationAsync"]
      209 CALL                             R6 1 1
      210 SETTABLEKS                       R6 R5 K85 ["generateAnimationAsync"]
      212 GETUPVAL                         R6 3
      213 LOADK                            R7 K86 ["publishAnimationAsync"]
      214 CALL                             R6 1 1
      215 SETTABLEKS                       R6 R5 K86 ["publishAnimationAsync"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R5
      219 SETTABLEKS                       R5 R4 K58 ["animationGen"]
      221 DUPTABLE                         R5 K90 [{"getImageDataBase64Async", "captureScreenshot"}]
      222 GETUPVAL                         R6 3
      223 LOADK                            R7 K88 ["getImageDataBase64Async"]
      224 CALL                             R6 1 1
      225 SETTABLEKS                       R6 R5 K88 ["getImageDataBase64Async"]
      227 DUPCLOSURE                       R6 K91 [PROTO_20]
      228 CAPTURE                          UPVAL U10
      229 SETTABLEKS                       R6 R5 K89 ["captureScreenshot"]
      231 SETTABLEKS                       R5 R4 K59 ["screenCapture"]
      233 DUPTABLE                         R5 K95 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      234 GETUPVAL                         R6 3
      235 LOADK                            R7 K92 ["loadImageAsync"]
      236 CALL                             R6 1 1
      237 SETTABLEKS                       R6 R5 K92 ["loadImageAsync"]
      239 GETUPVAL                         R6 3
      240 LOADK                            R7 K93 ["publishAssetAsync"]
      241 CALL                             R6 1 1
      242 SETTABLEKS                       R6 R5 K93 ["publishAssetAsync"]
      244 GETUPVAL                         R6 3
      245 LOADK                            R7 K94 ["searchAssetAsync"]
      246 CALL                             R6 1 1
      247 SETTABLEKS                       R6 R5 K94 ["searchAssetAsync"]
      249 SETTABLEKS                       R5 R4 K60 ["uploadImage"]
      251 DUPTABLE                         R5 K102 [{"getStudioIdentity", "searchCreatorInventoryAsync", "fetchUserGroupsAsync", "searchCreatorStoreAssetsAsync", "getThumbnailsUrl", "getCreatorHubUrl"}]
      252 GETUPVAL                         R6 3
      253 LOADK                            R7 K103 ["assetSearch.getStudioIdentity"]
      254 CALL                             R6 1 1
      255 SETTABLEKS                       R6 R5 K96 ["getStudioIdentity"]
      257 GETUPVAL                         R6 3
      258 LOADK                            R7 K104 ["assetSearch.searchCreatorInventoryAsync"]
      259 CALL                             R6 1 1
      260 SETTABLEKS                       R6 R5 K97 ["searchCreatorInventoryAsync"]
      262 GETUPVAL                         R6 3
      263 LOADK                            R7 K105 ["assetSearch.fetchUserGroupsAsync"]
      264 CALL                             R6 1 1
      265 SETTABLEKS                       R6 R5 K98 ["fetchUserGroupsAsync"]
      267 GETUPVAL                         R6 3
      268 LOADK                            R7 K106 ["assetSearch.searchCreatorStoreAssetsAsync"]
      269 CALL                             R6 1 1
      270 SETTABLEKS                       R6 R5 K99 ["searchCreatorStoreAssetsAsync"]
      272 GETUPVAL                         R6 3
      273 LOADK                            R7 K107 ["assetSearch.getThumbnailsUrl"]
      274 CALL                             R6 1 1
      275 SETTABLEKS                       R6 R5 K100 ["getThumbnailsUrl"]
      277 GETUPVAL                         R6 3
      278 LOADK                            R7 K108 ["assetSearch.getCreatorHubUrl"]
      279 CALL                             R6 1 1
      280 SETTABLEKS                       R6 R5 K101 ["getCreatorHubUrl"]
      282 SETTABLEKS                       R5 R4 K61 ["assetSearch"]
      284 DUPTABLE                         R5 K120 [{"getObjects", "getItemDetailsAsync", "loadPackageAssetAsync", "insertAudioAsset", "getAudioApiByDefault", "assignSourceAssetId", "createMeshPartAsync", "createDecal", "createDecalFromImage", "createSound", "createVideoFrame"}]
      285 GETUPVAL                         R6 3
      286 LOADK                            R7 K121 ["assetInsert.getObjects"]
      287 CALL                             R6 1 1
      288 SETTABLEKS                       R6 R5 K109 ["getObjects"]
      290 GETUPVAL                         R6 3
      291 LOADK                            R7 K122 ["assetInsert.getItemDetailsAsync"]
      292 CALL                             R6 1 1
      293 SETTABLEKS                       R6 R5 K110 ["getItemDetailsAsync"]
      295 GETUPVAL                         R6 3
      296 LOADK                            R7 K123 ["assetInsert.loadPackageAssetAsync"]
      297 CALL                             R6 1 1
      298 SETTABLEKS                       R6 R5 K111 ["loadPackageAssetAsync"]
      300 GETUPVAL                         R6 3
      301 LOADK                            R7 K124 ["assetInsert.insertAudioAsset"]
      302 CALL                             R6 1 1
      303 SETTABLEKS                       R6 R5 K112 ["insertAudioAsset"]
      305 GETUPVAL                         R6 3
      306 LOADK                            R7 K125 ["assetInsert.getAudioApiByDefault"]
      307 CALL                             R6 1 1
      308 SETTABLEKS                       R6 R5 K113 ["getAudioApiByDefault"]
      310 GETUPVAL                         R6 3
      311 LOADK                            R7 K126 ["assetInsert.assignSourceAssetId"]
      312 CALL                             R6 1 1
      313 SETTABLEKS                       R6 R5 K114 ["assignSourceAssetId"]
      315 DUPCLOSURE                       R6 K127 [PROTO_21]
      316 CAPTURE                          UPVAL U7
      317 SETTABLEKS                       R6 R5 K115 ["createMeshPartAsync"]
      319 DUPCLOSURE                       R6 K128 [PROTO_22]
      320 SETTABLEKS                       R6 R5 K116 ["createDecal"]
      322 DUPCLOSURE                       R6 K129 [PROTO_23]
      323 SETTABLEKS                       R6 R5 K117 ["createDecalFromImage"]
      325 DUPCLOSURE                       R6 K130 [PROTO_24]
      326 SETTABLEKS                       R6 R5 K118 ["createSound"]
      328 DUPCLOSURE                       R6 K131 [PROTO_25]
      329 SETTABLEKS                       R6 R5 K119 ["createVideoFrame"]
      331 SETTABLEKS                       R5 R4 K62 ["assetInsert"]
      333 SETTABLEKS                       R4 R3 K132 ["tools"]
      335 GETUPVAL                         R4 3
      336 LOADK                            R5 K133 ["convertImageDataToTempIdAsync"]
      337 CALL                             R4 1 1
      338 SETTABLEKS                       R4 R3 K133 ["convertImageDataToTempIdAsync"]
      340 GETUPVAL                         R4 3
      341 LOADK                            R5 K134 ["releaseTempIdAsync"]
      342 CALL                             R4 1 1
      343 SETTABLEKS                       R4 R3 K134 ["releaseTempIdAsync"]
      345 GETUPVAL                         R4 3
      346 LOADK                            R5 K135 ["getSettingsAsync"]
      347 CALL                             R4 1 1
      348 SETTABLEKS                       R4 R3 K135 ["getSettingsAsync"]
      350 GETUPVAL                         R4 3
      351 LOADK                            R5 K136 ["setSettingsAsync"]
      352 CALL                             R4 1 1
      353 SETTABLEKS                       R4 R3 K136 ["setSettingsAsync"]
      355 GETUPVAL                         R4 3
      356 LOADK                            R5 K137 ["getUserSettingsAsync"]
      357 CALL                             R4 1 1
      358 SETTABLEKS                       R4 R3 K137 ["getUserSettingsAsync"]
      360 GETUPVAL                         R4 3
      361 LOADK                            R5 K138 ["setUserSettingsAsync"]
      362 CALL                             R4 1 1
      363 SETTABLEKS                       R4 R3 K138 ["setUserSettingsAsync"]
      365 GETUPVAL                         R4 3
      366 LOADK                            R5 K139 ["getSecureSettingsAsync"]
      367 CALL                             R4 1 1
      368 SETTABLEKS                       R4 R3 K139 ["getSecureSettingsAsync"]
      370 GETUPVAL                         R4 3
      371 LOADK                            R5 K140 ["setSecureSettingsAsync"]
      372 CALL                             R4 1 1
      373 SETTABLEKS                       R4 R3 K140 ["setSecureSettingsAsync"]
      375 GETUPVAL                         R4 3
      376 LOADK                            R5 K141 ["base64EncodeAsync"]
      377 CALL                             R4 1 1
      378 SETTABLEKS                       R4 R3 K141 ["base64EncodeAsync"]
      380 GETUPVAL                         R4 3
      381 LOADK                            R5 K142 ["generatePKCEAsync"]
      382 CALL                             R4 1 1
      383 SETTABLEKS                       R4 R3 K142 ["generatePKCEAsync"]
      385 GETUPVAL                         R4 3
      386 LOADK                            R5 K143 ["startMCPAuthAsync"]
      387 CALL                             R4 1 1
      388 SETTABLEKS                       R4 R3 K143 ["startMCPAuthAsync"]
      390 GETUPVAL                         R4 3
      391 LOADK                            R5 K144 ["setupMCPServerAsync"]
      392 CALL                             R4 1 1
      393 SETTABLEKS                       R4 R3 K144 ["setupMCPServerAsync"]
      395 GETUPVAL                         R4 3
      396 LOADK                            R5 K145 ["getScopePermissionsAsync"]
      397 CALL                             R4 1 1
      398 SETTABLEKS                       R4 R3 K145 ["getScopePermissionsAsync"]
      400 GETUPVAL                         R4 3
      401 LOADK                            R5 K146 ["setScopePermissionsAsync"]
      402 CALL                             R4 1 1
      403 SETTABLEKS                       R4 R3 K146 ["setScopePermissionsAsync"]
      405 GETUPVAL                         R4 3
      406 LOADK                            R5 K147 ["getAvailableScopesAsync"]
      407 CALL                             R4 1 1
      408 SETTABLEKS                       R4 R3 K147 ["getAvailableScopesAsync"]
      410 GETUPVAL                         R4 3
      411 LOADK                            R5 K148 ["getScopeRiskLevelsAsync"]
      412 CALL                             R4 1 1
      413 SETTABLEKS                       R4 R3 K148 ["getScopeRiskLevelsAsync"]
      415 GETUPVAL                         R4 3
      416 LOADK                            R5 K149 ["getSelectedPresetAsync"]
      417 CALL                             R4 1 1
      418 SETTABLEKS                       R4 R3 K149 ["getSelectedPresetAsync"]
      420 GETUPVAL                         R4 3
      421 LOADK                            R5 K150 ["setSelectedPresetAsync"]
      422 CALL                             R4 1 1
      423 SETTABLEKS                       R4 R3 K150 ["setSelectedPresetAsync"]
      425 GETUPVAL                         R4 3
      426 LOADK                            R5 K151 ["startStopPlayAsync"]
      427 CALL                             R4 1 1
      428 SETTABLEKS                       R4 R3 K151 ["startStopPlayAsync"]
      430 DUPCLOSURE                       R4 K152 [PROTO_26]
      431 CAPTURE                          UPVAL U11
      432 SETTABLEKS                       R4 R3 K153 ["getLogHistory"]
      434 GETUPVAL                         R4 3
      435 LOADK                            R5 K154 ["subscribeOutput"]
      436 CALL                             R4 1 1
      437 SETTABLEKS                       R4 R3 K154 ["subscribeOutput"]
      439 GETUPVAL                         R4 3
      440 LOADK                            R5 K155 ["subscribeGameLoaded"]
      441 CALL                             R4 1 1
      442 SETTABLEKS                       R4 R3 K155 ["subscribeGameLoaded"]
      444 GETUPVAL                         R4 3
      445 LOADK                            R5 K156 ["subscribeGameStopped"]
      446 CALL                             R4 1 1
      447 SETTABLEKS                       R4 R3 K156 ["subscribeGameStopped"]
      449 GETUPVAL                         R4 3
      450 LOADK                            R5 K157 ["openFileDialogAsync"]
      451 CALL                             R4 1 1
      452 SETTABLEKS                       R4 R3 K157 ["openFileDialogAsync"]
      454 GETUPVAL                         R4 3
      455 LOADK                            R5 K158 ["importFileBinaryAsync"]
      456 CALL                             R4 1 1
      457 SETTABLEKS                       R4 R3 K158 ["importFileBinaryAsync"]
      459 DUPCLOSURE                       R4 K159 [PROTO_27]
      460 SETTABLEKS                       R4 R3 K160 ["printToStudioLogAsync"]
      462 DUPTABLE                         R4 K164 [{"fileExistsAsync", "readFileAsync", "modifyFileAsync"}]
      463 GETUPVAL                         R5 3
      464 LOADK                            R6 K165 ["quickConnect.fileExistsAsync"]
      465 CALL                             R5 1 1
      466 SETTABLEKS                       R5 R4 K161 ["fileExistsAsync"]
      468 GETUPVAL                         R5 3
      469 LOADK                            R6 K166 ["quickConnect.readFileAsync"]
      470 CALL                             R5 1 1
      471 SETTABLEKS                       R5 R4 K162 ["readFileAsync"]
      473 GETUPVAL                         R5 3
      474 LOADK                            R6 K167 ["quickConnect.modifyFileAsync"]
      475 CALL                             R5 1 1
      476 SETTABLEKS                       R5 R4 K163 ["modifyFileAsync"]
      478 SETTABLEKS                       R4 R3 K168 ["quickConnect"]
      480 DUPTABLE                         R4 K175 [{"getManifestAsync", "setManifestAsync", "fetchContentAsync", "publishNewAsync", "publishUpdateAsync", "deleteAsync"}]
      481 GETUPVAL                         R5 3
      482 LOADK                            R6 K176 ["userSkillAssets.getManifestAsync"]
      483 CALL                             R5 1 1
      484 SETTABLEKS                       R5 R4 K169 ["getManifestAsync"]
      486 GETUPVAL                         R5 3
      487 LOADK                            R6 K177 ["userSkillAssets.setManifestAsync"]
      488 CALL                             R5 1 1
      489 SETTABLEKS                       R5 R4 K170 ["setManifestAsync"]
      491 GETUPVAL                         R5 3
      492 LOADK                            R6 K178 ["userSkillAssets.fetchContentAsync"]
      493 CALL                             R5 1 1
      494 SETTABLEKS                       R5 R4 K171 ["fetchContentAsync"]
      496 GETUPVAL                         R5 3
      497 LOADK                            R6 K179 ["userSkillAssets.publishNewAsync"]
      498 CALL                             R5 1 1
      499 SETTABLEKS                       R5 R4 K172 ["publishNewAsync"]
      501 GETUPVAL                         R5 3
      502 LOADK                            R6 K180 ["userSkillAssets.publishUpdateAsync"]
      503 CALL                             R5 1 1
      504 SETTABLEKS                       R5 R4 K173 ["publishUpdateAsync"]
      506 GETUPVAL                         R5 3
      507 LOADK                            R6 K181 ["userSkillAssets.deleteAsync"]
      508 CALL                             R5 1 1
      509 SETTABLEKS                       R5 R4 K174 ["deleteAsync"]
      511 SETTABLEKS                       R4 R3 K182 ["userSkillAssets"]
      513 DUPTABLE                         R4 K186 [{"getAssetsAsync", "uploadAssetsAsync", "deleteAssetAsync"}]
      514 GETUPVAL                         R5 3
      515 LOADK                            R6 K187 ["cloudSkillAssets.getAssetsAsync"]
      516 CALL                             R5 1 1
      517 SETTABLEKS                       R5 R4 K183 ["getAssetsAsync"]
      519 GETUPVAL                         R5 3
      520 LOADK                            R6 K188 ["cloudSkillAssets.uploadAssetsAsync"]
      521 CALL                             R5 1 1
      522 SETTABLEKS                       R5 R4 K184 ["uploadAssetsAsync"]
      524 GETUPVAL                         R5 3
      525 LOADK                            R6 K189 ["cloudSkillAssets.deleteAssetAsync"]
      526 CALL                             R5 1 1
      527 SETTABLEKS                       R5 R4 K185 ["deleteAssetAsync"]
      529 SETTABLEKS                       R4 R3 K190 ["cloudSkillAssets"]
      531 GETUPVAL                         R4 3
      532 LOADK                            R5 K191 ["getStudioPlayState"]
      533 CALL                             R4 1 1
      534 SETTABLEKS                       R4 R3 K191 ["getStudioPlayState"]
      536 GETUPVAL                         R4 3
      537 LOADK                            R5 K192 ["fetchSystemPromptAsync"]
      538 CALL                             R4 1 1
      539 SETTABLEKS                       R4 R3 K192 ["fetchSystemPromptAsync"]
      541 DUPTABLE                         R4 K195 [{"startAsync", "getStatusAsync"}]
      542 GETUPVAL                         R5 3
      543 LOADK                            R6 K196 ["imageGeneration.startAsync"]
      544 CALL                             R5 1 1
      545 SETTABLEKS                       R5 R4 K193 ["startAsync"]
      547 GETUPVAL                         R5 3
      548 LOADK                            R6 K197 ["imageGeneration.getStatusAsync"]
      549 CALL                             R5 1 1
      550 SETTABLEKS                       R5 R4 K194 ["getStatusAsync"]
      552 SETTABLEKS                       R4 R3 K198 ["imageGeneration"]
      554 DUPCLOSURE                       R4 K199 [PROTO_28]
      555 SETTABLEKS                       R4 R3 K200 ["hasInternalPermission"]
      557 DUPCLOSURE                       R4 K201 [PROTO_29]
      558 CAPTURE                          UPVAL U12
      559 SETTABLEKS                       R4 R3 K202 ["getMockPrimGenBackendData"]
      561 GETUPVAL                         R4 3
      562 LOADK                            R5 K203 ["startMultiPlayerTest"]
      563 CALL                             R4 1 1
      564 SETTABLEKS                       R4 R3 K203 ["startMultiPlayerTest"]
      566 GETUPVAL                         R4 3
      567 LOADK                            R5 K204 ["stopMultiPlayerTest"]
      568 CALL                             R4 1 1
      569 SETTABLEKS                       R4 R3 K204 ["stopMultiPlayerTest"]
      571 GETUPVAL                         R4 3
      572 LOADK                            R5 K205 ["isInMultiPlayerTest"]
      573 CALL                             R4 1 1
      574 SETTABLEKS                       R4 R3 K205 ["isInMultiPlayerTest"]
      576 GETUPVAL                         R4 3
      577 LOADK                            R5 K206 ["getStopMultiPlayerTestResults"]
      578 CALL                             R4 1 1
      579 SETTABLEKS                       R4 R3 K207 ["subscribeStopMultiPlayerTestStateChanged"]
      581 GETUPVAL                         R4 3
      582 LOADK                            R5 K208 ["createMultiPlayersServer"]
      583 CALL                             R4 1 1
      584 SETTABLEKS                       R4 R3 K208 ["createMultiPlayersServer"]
      586 GETUPVAL                         R4 3
      587 LOADK                            R5 K209 ["createMultiPlayersClient"]
      588 CALL                             R4 1 1
      589 SETTABLEKS                       R4 R3 K209 ["createMultiPlayersClient"]
      591 GETUPVAL                         R4 3
      592 LOADK                            R5 K210 ["getExperimentFeatureEnabled"]
      593 CALL                             R4 1 1
      594 SETTABLEKS                       R4 R3 K210 ["getExperimentFeatureEnabled"]
      596 GETUPVAL                         R4 3
      597 LOADK                            R5 K211 ["getOnExperimentChangedSignal"]
      598 CALL                             R4 1 1
      599 SETTABLEKS                       R4 R3 K212 ["onceExperimentFeatureEnabled"]
      601 GETUPVAL                         R4 3
      602 LOADK                            R5 K213 ["getStudioState"]
      603 CALL                             R4 1 1
      604 SETTABLEKS                       R4 R3 K213 ["getStudioState"]
      606 MOVE                             R2 R3
      607 CLOSEUPVALS                      R2
      608 RETURN                           R2 1

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
