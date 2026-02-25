PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LocalPlayer"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["LocalPlayer is nil"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["UserId"]
       12 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClient"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONEncode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R0 K1 ["source"]
        4 SETTABLEKS                       R2 R1 K2 ["Source"]
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getEngineFeature"]
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["CreateAssetAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateMeshPartAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K0 ["GetPlayerByUserId"]
        4 CALL                             R4 2 1
        5 GETUPVAL                         R5 1
        6 MOVE                             R7 R0
        7 MOVE                             R8 R4
        8 MOVE                             R9 R2
        9 MOVE                             R10 R3
       10 NAMECALL                         R5 R5 K1 ["GenerateMeshAsync"]
       12 CALL                             R5 5 -1
       13 RETURN                           R5 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedMeshAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CaptureScreenshot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStandardHandlers"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 NEWTABLE                         R2 64 0
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["EventLogger"]
       10 DUPCLOSURE                       R3 K2 [PROTO_0]
       11 SETTABLEKS                       R3 R2 K3 ["isDevFrameworkAvailable"]
       13 DUPCLOSURE                       R3 K4 [PROTO_1]
       14 SETTABLEKS                       R3 R2 K5 ["isRobloxScriptSecurity"]
       16 DUPCLOSURE                       R3 K6 [PROTO_2]
       17 SETTABLEKS                       R3 R2 K7 ["getEngineFeature"]
       19 GETUPVAL                         R3 2
       20 LOADK                            R4 K8 ["getNetworking"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["getNetworking"]
       24 DUPCLOSURE                       R3 K9 [PROTO_3]
       25 SETTABLEKS                       R3 R2 K10 ["getSystemPrompt"]
       27 DUPCLOSURE                       R3 K11 [PROTO_4]
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R3 R2 K12 ["getUserId"]
       31 GETUPVAL                         R3 2
       32 LOADK                            R4 K13 ["copyToClipboard"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K13 ["copyToClipboard"]
       36 DUPCLOSURE                       R3 K14 [PROTO_5]
       37 SETTABLEKS                       R3 R2 K15 ["getClassIcon"]
       39 GETTABLEKS                       R3 R0 K16 ["startRecording"]
       41 SETTABLEKS                       R3 R2 K16 ["startRecording"]
       43 GETTABLEKS                       R3 R0 K17 ["endRecording"]
       45 SETTABLEKS                       R3 R2 K17 ["endRecording"]
       47 DUPCLOSURE                       R3 K18 [PROTO_6]
       48 SETTABLEKS                       R3 R2 K19 ["getScriptSource"]
       50 DUPTABLE                         R3 K23 [{"createWebStreamClient", "requestAsync", "openUrl"}]
       51 DUPCLOSURE                       R4 K24 [PROTO_7]
       52 CAPTURE                          UPVAL U4
       53 SETTABLEKS                       R4 R3 K20 ["createWebStreamClient"]
       55 DUPCLOSURE                       R4 K25 [PROTO_8]
       56 CAPTURE                          UPVAL U4
       57 SETTABLEKS                       R4 R3 K21 ["requestAsync"]
       59 GETUPVAL                         R4 2
       60 LOADK                            R5 K22 ["openUrl"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K22 ["openUrl"]
       64 SETTABLEKS                       R3 R2 K26 ["http"]
       66 DUPTABLE                         R3 K29 [{"encodeAsync", "decodeAsync"}]
       67 DUPCLOSURE                       R4 K30 [PROTO_9]
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R4 R3 K27 ["encodeAsync"]
       71 DUPCLOSURE                       R4 K31 [PROTO_10]
       72 CAPTURE                          UPVAL U4
       73 SETTABLEKS                       R4 R3 K28 ["decodeAsync"]
       75 SETTABLEKS                       R3 R2 K32 ["json"]
       77 DUPTABLE                         R3 K35 [{"get", "set"}]
       78 DUPCLOSURE                       R4 K36 [PROTO_11]
       79 SETTABLEKS                       R4 R3 K33 ["get"]
       81 DUPCLOSURE                       R4 K37 [PROTO_12]
       82 SETTABLEKS                       R4 R3 K34 ["set"]
       84 SETTABLEKS                       R3 R2 K38 ["selection"]
       86 DUPTABLE                         R3 K46 [{"executeLuau", "multiEdit", "marketplaceInsertion", "materialGen", "meshGen", "screenCapture", "uploadImage"}]
       87 DUPTABLE                         R4 K49 [{"loadCode", "stopCode"}]
       88 GETUPVAL                         R5 2
       89 LOADK                            R6 K47 ["loadCode"]
       90 CALL                             R5 1 1
       91 SETTABLEKS                       R5 R4 K47 ["loadCode"]
       93 GETUPVAL                         R5 2
       94 LOADK                            R6 K48 ["stopCode"]
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R4 K48 ["stopCode"]
       98 SETTABLEKS                       R4 R3 K39 ["executeLuau"]
      100 DUPTABLE                         R4 K51 [{"updateScriptSourceAsync"}]
      101 DUPCLOSURE                       R5 K52 [PROTO_13]
      102 SETTABLEKS                       R5 R4 K50 ["updateScriptSourceAsync"]
      104 SETTABLEKS                       R4 R3 K40 ["multiEdit"]
      106 DUPTABLE                         R4 K55 [{"getFreeModelsAsync", "loadAssetAsync"}]
      107 NEWCLOSURE                       R5 P14
      108 CAPTURE                          REF R1
      109 CAPTURE                          UPVAL U5
      110 SETTABLEKS                       R5 R4 K53 ["getFreeModelsAsync"]
      112 GETUPVAL                         R6 6
      113 GETTABLEKS                       R5 R6 K56 ["getStandardHandler"]
      115 GETUPVAL                         R6 7
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R4 K54 ["loadAssetAsync"]
      119 SETTABLEKS                       R4 R3 K41 ["marketplaceInsertion"]
      121 DUPTABLE                         R4 K59 [{"generateMaterialVariantsAsync", "uploadMaterialsAsync"}]
      122 GETUPVAL                         R5 2
      123 LOADK                            R6 K57 ["generateMaterialVariantsAsync"]
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R4 K57 ["generateMaterialVariantsAsync"]
      127 GETUPVAL                         R5 2
      128 LOADK                            R6 K58 ["uploadMaterialsAsync"]
      129 CALL                             R5 1 1
      130 SETTABLEKS                       R5 R4 K58 ["uploadMaterialsAsync"]
      132 SETTABLEKS                       R4 R3 K42 ["materialGen"]
      134 DUPTABLE                         R4 K65 [{"createAssetAsync", "createMeshPartAsync", "generateMeshAsync", "loadGeneratedMeshAsync", "telemetry"}]
      135 DUPCLOSURE                       R5 K66 [PROTO_15]
      136 CAPTURE                          UPVAL U7
      137 SETTABLEKS                       R5 R4 K60 ["createAssetAsync"]
      139 DUPCLOSURE                       R5 K67 [PROTO_16]
      140 CAPTURE                          UPVAL U7
      141 SETTABLEKS                       R5 R4 K61 ["createMeshPartAsync"]
      143 DUPCLOSURE                       R5 K68 [PROTO_17]
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          UPVAL U8
      146 SETTABLEKS                       R5 R4 K62 ["generateMeshAsync"]
      148 DUPCLOSURE                       R5 K69 [PROTO_18]
      149 CAPTURE                          UPVAL U8
      150 SETTABLEKS                       R5 R4 K63 ["loadGeneratedMeshAsync"]
      152 DUPTABLE                         R5 K74 [{"sendMeshGenActivatedTelemetry", "sendMeshGenCompletedTelemetry", "sendMeshGenPublishedAssetsTelemetry", "sendMeshGenMeshInsertedTelemetry"}]
      153 DUPCLOSURE                       R6 K75 [PROTO_19]
      154 SETTABLEKS                       R6 R5 K70 ["sendMeshGenActivatedTelemetry"]
      156 DUPCLOSURE                       R6 K76 [PROTO_20]
      157 SETTABLEKS                       R6 R5 K71 ["sendMeshGenCompletedTelemetry"]
      159 DUPCLOSURE                       R6 K77 [PROTO_21]
      160 SETTABLEKS                       R6 R5 K72 ["sendMeshGenPublishedAssetsTelemetry"]
      162 DUPCLOSURE                       R6 K78 [PROTO_22]
      163 SETTABLEKS                       R6 R5 K73 ["sendMeshGenMeshInsertedTelemetry"]
      165 SETTABLEKS                       R5 R4 K64 ["telemetry"]
      167 SETTABLEKS                       R4 R3 K43 ["meshGen"]
      169 DUPTABLE                         R4 K81 [{"getImageDataBase64Async", "captureScreenshot"}]
      170 GETUPVAL                         R5 2
      171 LOADK                            R6 K79 ["getImageDataBase64Async"]
      172 CALL                             R5 1 1
      173 SETTABLEKS                       R5 R4 K79 ["getImageDataBase64Async"]
      175 DUPCLOSURE                       R5 K82 [PROTO_23]
      176 CAPTURE                          UPVAL U9
      177 SETTABLEKS                       R5 R4 K80 ["captureScreenshot"]
      179 SETTABLEKS                       R4 R3 K44 ["screenCapture"]
      181 DUPTABLE                         R4 K86 [{"loadImageAsync", "publishAssetAsync", "searchAssetAsync"}]
      182 GETUPVAL                         R5 2
      183 LOADK                            R6 K83 ["loadImageAsync"]
      184 CALL                             R5 1 1
      185 SETTABLEKS                       R5 R4 K83 ["loadImageAsync"]
      187 GETUPVAL                         R5 2
      188 LOADK                            R6 K84 ["publishAssetAsync"]
      189 CALL                             R5 1 1
      190 SETTABLEKS                       R5 R4 K84 ["publishAssetAsync"]
      192 GETUPVAL                         R5 2
      193 LOADK                            R6 K85 ["searchAssetAsync"]
      194 CALL                             R5 1 1
      195 SETTABLEKS                       R5 R4 K85 ["searchAssetAsync"]
      197 SETTABLEKS                       R4 R3 K45 ["uploadImage"]
      199 SETTABLEKS                       R3 R2 K87 ["tools"]
      201 GETUPVAL                         R3 2
      202 LOADK                            R4 K88 ["convertImageDataToTempIdAsync"]
      203 CALL                             R3 1 1
      204 SETTABLEKS                       R3 R2 K88 ["convertImageDataToTempIdAsync"]
      206 GETUPVAL                         R3 2
      207 LOADK                            R4 K89 ["releaseTempIdAsync"]
      208 CALL                             R3 1 1
      209 SETTABLEKS                       R3 R2 K89 ["releaseTempIdAsync"]
      211 GETUPVAL                         R3 2
      212 LOADK                            R4 K90 ["getSettingsAsync"]
      213 CALL                             R3 1 1
      214 SETTABLEKS                       R3 R2 K90 ["getSettingsAsync"]
      216 GETUPVAL                         R3 2
      217 LOADK                            R4 K91 ["setSettingsAsync"]
      218 CALL                             R3 1 1
      219 SETTABLEKS                       R3 R2 K91 ["setSettingsAsync"]
      221 GETUPVAL                         R3 2
      222 LOADK                            R4 K92 ["getUserSettingsAsync"]
      223 CALL                             R3 1 1
      224 SETTABLEKS                       R3 R2 K92 ["getUserSettingsAsync"]
      226 GETUPVAL                         R3 2
      227 LOADK                            R4 K93 ["setUserSettingsAsync"]
      228 CALL                             R3 1 1
      229 SETTABLEKS                       R3 R2 K93 ["setUserSettingsAsync"]
      231 GETUPVAL                         R3 2
      232 LOADK                            R4 K94 ["getSecureSettingsAsync"]
      233 CALL                             R3 1 1
      234 SETTABLEKS                       R3 R2 K94 ["getSecureSettingsAsync"]
      236 GETUPVAL                         R3 2
      237 LOADK                            R4 K95 ["setSecureSettingsAsync"]
      238 CALL                             R3 1 1
      239 SETTABLEKS                       R3 R2 K95 ["setSecureSettingsAsync"]
      241 GETUPVAL                         R3 2
      242 LOADK                            R4 K96 ["base64EncodeAsync"]
      243 CALL                             R3 1 1
      244 SETTABLEKS                       R3 R2 K96 ["base64EncodeAsync"]
      246 GETUPVAL                         R3 2
      247 LOADK                            R4 K97 ["generatePKCEAsync"]
      248 CALL                             R3 1 1
      249 SETTABLEKS                       R3 R2 K97 ["generatePKCEAsync"]
      251 GETUPVAL                         R3 2
      252 LOADK                            R4 K98 ["startMCPAuthAsync"]
      253 CALL                             R3 1 1
      254 SETTABLEKS                       R3 R2 K98 ["startMCPAuthAsync"]
      256 GETUPVAL                         R3 2
      257 LOADK                            R4 K99 ["startStopPlayAsync"]
      258 CALL                             R3 1 1
      259 SETTABLEKS                       R3 R2 K99 ["startStopPlayAsync"]
      261 GETUPVAL                         R3 2
      262 LOADK                            R4 K100 ["subscribeOutput"]
      263 CALL                             R3 1 1
      264 SETTABLEKS                       R3 R2 K100 ["subscribeOutput"]
      266 GETUPVAL                         R3 2
      267 LOADK                            R4 K101 ["subscribeGameLoaded"]
      268 CALL                             R3 1 1
      269 SETTABLEKS                       R3 R2 K101 ["subscribeGameLoaded"]
      271 GETUPVAL                         R3 2
      272 LOADK                            R4 K102 ["subscribeGameStopped"]
      273 CALL                             R3 1 1
      274 SETTABLEKS                       R3 R2 K102 ["subscribeGameStopped"]
      276 GETUPVAL                         R3 2
      277 LOADK                            R4 K103 ["openFileDialogAsync"]
      278 CALL                             R3 1 1
      279 SETTABLEKS                       R3 R2 K103 ["openFileDialogAsync"]
      281 GETUPVAL                         R3 2
      282 LOADK                            R4 K104 ["importFileBinaryAsync"]
      283 CALL                             R3 1 1
      284 SETTABLEKS                       R3 R2 K104 ["importFileBinaryAsync"]
      286 MOVE                             R1 R2
      287 CLOSEUPVALS                      R1
      288 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Environment has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_26:
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
       39 LOADK                            R8 K12 ["Players"]
       40 NAMECALL                         R6 R6 K7 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K14 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Parent"]
       47 GETTABLEKS                       R8 R9 K16 ["DMNetworking"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K14 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R9 R10 K17 ["EventLogger"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K14 [require]
       59 GETTABLEKS                       R11 R0 K18 ["Guest"]
       61 GETTABLEKS                       R10 R11 K19 ["LoadAssetHandlers"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K14 [require]
       66 GETTABLEKS                       R12 R0 K15 ["Parent"]
       68 GETTABLEKS                       R11 R12 K20 ["ReactUtils"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K14 [require]
       73 GETTABLEKS                       R13 R0 K18 ["Guest"]
       75 GETTABLEKS                       R12 R13 K21 ["RecordingHandlers"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R10 K22 ["createUnimplemented"]
       80 DUPCLOSURE                       R13 K23 [PROTO_24]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 MOVE                             R14 R13
       92 CALL                             R14 0 1
       93 DUPTABLE                         R15 K27 [{"new", "get", "set"}]
       94 SETTABLEKS                       R13 R15 K24 ["new"]
       96 NEWCLOSURE                       R16 P1
       97 CAPTURE                          REF R14
       98 SETTABLEKS                       R16 R15 K25 ["get"]
      100 NEWCLOSURE                       R16 P2
      101 CAPTURE                          REF R14
      102 SETTABLEKS                       R16 R15 K26 ["set"]
      104 CLOSEUPVALS                      R14
      105 RETURN                           R15 1
