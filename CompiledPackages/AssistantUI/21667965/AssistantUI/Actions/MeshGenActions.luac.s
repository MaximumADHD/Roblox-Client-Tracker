PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K0 ["Field"]
        6 GETTABLEKS                       R4 R4 K1 ["Images"]
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R7 0
       10 NAMECALL                         R5 R5 K2 ["JSONEncode"]
       12 CALL                             R5 2 -1
       13 NAMECALL                         R2 R2 K3 ["Set"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getOrCreate"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K4 [table.create]
       10 GETUPVAL                         R4 2
       11 LOADK                            R5 K5 [""]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K6 ["Field"]
       16 GETTABLEKS                       R6 R6 K7 ["Images"]
       18 GETUPVAL                         R7 3
       19 MOVE                             R9 R3
       20 NAMECALL                         R7 R7 K8 ["JSONEncode"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R4 R2 K9 ["Set"]
       25 CALL                             R4 -1 0
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K10 ["capturePreviewImages"]
       29 MOVE                             R5 R1
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U3
       35 GETUPVAL                         R7 5
       36 CALL                             R4 3 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 GETTABLEKS                       R3 R3 K1 ["getInstanceFromUniqueId"]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["NO_SELECTION_ERROR_MESSAGE"]
        9 FASTCALL2                        ASSERT R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K5 ["BOUNDING_BOX_INSTANCE_TYPE"]
       18 NAMECALL                         R5 R3 K6 ["IsA"]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["INVALID_SELECTION_ERROR_MESSAGE"]
       24 FASTCALL2                        ASSERT R5 R6 ; [+3]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["getGenerationSession"]
       32 MOVE                             R5 R1
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K9 ["selectedBoundingBox"]
       36 JUMPIFNOT                        R5 ; [+10]
       37 GETTABLEKS                       R6 R5 K10 ["Parent"]
       39 JUMPIFEQKNIL                     R6 ; [+7]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K10 ["Parent"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R4 K9 ["selectedBoundingBox"]
       47 NAMECALL                         R6 R3 K11 ["Clone"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K12 ["Size"]
       52 GETTABLEKS                       R8 R3 K13 ["CFrame"]
       54 SETTABLEKS                       R8 R6 K13 ["CFrame"]
       56 SETTABLEKS                       R6 R4 K14 ["boundingBoxCopy"]
       58 SETTABLEKS                       R3 R4 K9 ["selectedBoundingBox"]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K15 ["VIEWPORT_BOUNDING_BOX_TAG"]
       63 NAMECALL                         R9 R3 K16 ["HasTag"]
       65 CALL                             R9 2 1
       66 JUMPIFNOT                        R9 ; [+8]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K17 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       70 MOVE                             R13 R1
       71 CONCAT                           R11 R12 R13
       72 NAMECALL                         R9 R3 K18 ["AddTag"]
       74 CALL                             R9 2 0
       75 RETURN                           R7 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMeshGenHintImage"]
        4 JUMPIFNOT                        R1 ; [+85]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+83]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["getUserId"]
       10 CALL                             R1 0 1
       11 GETIMPORT                        R2 K4 [buffer.tostring]
       13 GETUPVAL                         R3 3
       14 GETIMPORT                        R5 K6 [buffer.fromstring]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K7 ["data"]
       19 CALL                             R5 1 -1
       20 NAMECALL                         R3 R3 K8 ["Base64Decode"]
       22 CALL                             R3 -1 -1
       23 CALL                             R2 -1 1
       24 DUPTABLE                         R3 K22 [{["AssetType"] = "Image", ["AssetName"], ["Description"] = "Hint image for mesh generation", ["AssetId"] = , ["CreatorId"], ["CreatorType"], ["ContentType"] = "", ["Token"] = "", ["AdditionalParameters"]}]
       25 LOADK                            R5 K23 ["MeshGenHintImage_"]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R10 R1
       28 GETIMPORT                        R9 K24 [tostring]
       30 CALL                             R9 1 1
       31 MOVE                             R6 R9
       32 LOADK                            R7 K25 ["_"]
       33 GETIMPORT                        R9 K28 [os.time]
       35 CALL                             R9 0 -1
       36 FASTCALL                         TOSTRING ; [+2]
       37 GETIMPORT                        R8 K24 [tostring]
       39 CALL                             R8 -1 1
       40 CONCAT                           R4 R5 R8
       41 SETTABLEKS                       R4 R3 K11 ["AssetName"]
       43 SETTABLEKS                       R1 R3 K16 ["CreatorId"]
       45 GETIMPORT                        R4 K32 [Enum.AssetCreatorType.User]
       47 SETTABLEKS                       R4 R3 K17 ["CreatorType"]
       49 DUPTABLE                         R4 K35 [{["PublishAsPackage"] = False}]
       50 SETTABLEKS                       R4 R3 K21 ["AdditionalParameters"]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R4 R4 K36 ["tools"]
       55 GETTABLEKS                       R4 R4 K37 ["uploadImage"]
       57 GETTABLEKS                       R4 R4 K38 ["publishAssetAsync"]
       59 MOVE                             R5 R2
       60 MOVE                             R6 R3
       61 CALL                             R4 2 1
       62 GETIMPORT                        R5 K41 [Content.fromUri]
       64 LOADK                            R7 K42 ["rbxassetid://"]
       65 GETTABLEKS                       R9 R4 K14 ["AssetId"]
       67 FASTCALL1                        TOSTRING R9 ; [+2]
       68 GETIMPORT                        R8 K24 [tostring]
       70 CALL                             R8 1 1
       71 CONCAT                           R6 R7 R8
       72 CALL                             R5 1 1
       73 MOVE                             R0 R5
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K43 ["FFlagDebugLogAssistantUI"]
       77 JUMPIFNOT                        R5 ; [+12]
       78 GETIMPORT                        R5 K45 [warn]
       80 LOADK                            R6 K46 ["[MeshGen] hint image uploaded, assetId:"]
       81 GETTABLEKS                       R7 R4 K14 ["AssetId"]
       83 LOADK                            R8 K47 ["content:"]
       84 FASTCALL1                        TOSTRING R0 ; [+3]
       85 MOVE                             R10 R0
       86 GETIMPORT                        R9 K24 [tostring]
       88 CALL                             R9 1 1
       89 CALL                             R5 4 0
       90 DUPTABLE                         R1 K53 [{["TextPrompt"], ["Size"], ["MaxTriangles"], ["GenerateTextures"] = True, ["Image"]}]
       91 GETUPVAL                         R2 4
       92 SETTABLEKS                       R2 R1 K48 ["TextPrompt"]
       94 GETUPVAL                         R2 5
       95 SETTABLEKS                       R2 R1 K49 ["Size"]
       97 GETUPVAL                         R2 6
       98 SETTABLEKS                       R2 R1 K50 ["MaxTriangles"]
      100 SETTABLEKS                       R0 R1 K10 ["Image"]
      102 GETUPVAL                         R2 0
      103 GETTABLEKS                       R2 R2 K43 ["FFlagDebugLogAssistantUI"]
      105 JUMPIFNOT                        R2 ; [+64]
      106 GETIMPORT                        R2 K45 [warn]
      108 LOADK                            R3 K54 ["[MeshGen] generateModelAsync:"]
      109 GETUPVAL                         R4 7
      110 DUPTABLE                         R6 K58 [{"inputs", "schema", "options"}]
      111 DUPTABLE                         R7 K60 [{"TextPrompt", "Size", "MaxTriangles", "GenerateTextures", "HasImage"}]
      112 GETTABLEKS                       R8 R1 K48 ["TextPrompt"]
      114 SETTABLEKS                       R8 R7 K48 ["TextPrompt"]
      116 GETTABLEKS                       R9 R1 K49 ["Size"]
      118 JUMPIFNOT                        R9 ; [+20]
      119 DUPTABLE                         R8 K64 [{"X", "Y", "Z"}]
      120 GETTABLEKS                       R9 R1 K49 ["Size"]
      122 GETTABLEKS                       R9 R9 K61 ["X"]
      124 SETTABLEKS                       R9 R8 K61 ["X"]
      126 GETTABLEKS                       R9 R1 K49 ["Size"]
      128 GETTABLEKS                       R9 R9 K62 ["Y"]
      130 SETTABLEKS                       R9 R8 K62 ["Y"]
      132 GETTABLEKS                       R9 R1 K49 ["Size"]
      134 GETTABLEKS                       R9 R9 K63 ["Z"]
      136 SETTABLEKS                       R9 R8 K63 ["Z"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R8
      140 SETTABLEKS                       R8 R7 K49 ["Size"]
      142 GETTABLEKS                       R8 R1 K50 ["MaxTriangles"]
      144 SETTABLEKS                       R8 R7 K50 ["MaxTriangles"]
      146 GETTABLEKS                       R8 R1 K51 ["GenerateTextures"]
      148 SETTABLEKS                       R8 R7 K51 ["GenerateTextures"]
      150 GETTABLEKS                       R9 R1 K10 ["Image"]
      152 JUMPIFNOTEQKNIL                  R9 ; [+2]
      154 LOADB                            R8 0 +1
      155 LOADB                            R8 1
      156 SETTABLEKS                       R8 R7 K59 ["HasImage"]
      158 SETTABLEKS                       R7 R6 K55 ["inputs"]
      160 GETUPVAL                         R7 8
      161 SETTABLEKS                       R7 R6 K56 ["schema"]
      163 GETUPVAL                         R7 9
      164 SETTABLEKS                       R7 R6 K57 ["options"]
      166 NAMECALL                         R4 R4 K65 ["JSONEncode"]
      168 CALL                             R4 2 -1
      169 CALL                             R2 -1 0
      170 GETUPVAL                         R2 2
      171 GETTABLEKS                       R2 R2 K36 ["tools"]
      173 GETTABLEKS                       R2 R2 K66 ["meshGen"]
      175 GETTABLEKS                       R2 R2 K67 ["generateModelAsync"]
      177 MOVE                             R3 R1
      178 GETUPVAL                         R4 8
      179 GETUPVAL                         R5 9
      180 CALL                             R2 3 2
      181 DUPTABLE                         R4 K70 [{"model", "metadata"}]
      182 SETTABLEKS                       R2 R4 K68 ["model"]
      184 SETTABLEKS                       R3 R4 K69 ["metadata"]
      186 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R3 R0 K1 ["textPrompt"]
        4 GETTABLEKS                       R4 R0 K2 ["size"]
        6 GETTABLEKS                       R5 R0 K3 ["maxTriangles"]
        8 GETTABLEKS                       R6 R0 K4 ["partNames"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K5 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       13 JUMPIFNOT                        R8 ; [+2]
       14 LOADNIL                          R7
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R7 R0 K6 ["adminOptions"]
       18 GETTABLEKS                       R8 R0 K7 ["hintImage"]
       20 GETTABLEKS                       R9 R0 K8 ["selectedUniqueId"]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K9 ["getGenerationSession"]
       25 MOVE                             R11 R2
       26 CALL                             R10 1 1
       27 GETTABLEKS                       R13 R10 K10 ["generationThread"]
       29 JUMPIFEQKNIL                     R13 ; [+2]
       31 LOADB                            R12 0 +1
       32 LOADB                            R12 1
       33 FASTCALL2K                       ASSERT R12 K11 ; [+4]
       35 LOADK                            R13 K11 ["Generation thread already exists for toolUseId"]
       36 GETIMPORT                        R11 K13 [assert]
       38 CALL                             R11 2 0
       39 GETIMPORT                        R11 K16 [coroutine.running]
       41 CALL                             R11 0 1
       42 SETTABLEKS                       R11 R10 K10 ["generationThread"]
       44 LOADB                            R11 0
       45 FASTCALL1                        TYPEOF R3 ; [+3]
       46 MOVE                             R13 R3
       47 GETIMPORT                        R12 K18 [typeof]
       49 CALL                             R12 1 1
       50 JUMPIFNOTEQKS                    R12 K19 ["string"] ; [+7]
       52 LENGTH                           R12 R3
       53 LOADN                            R13 0
       54 JUMPIFLT                         R13 R12 ; [+2]
       56 LOADB                            R11 0 +1
       57 LOADB                            R11 1
       58 JUMPIFNOT                        R11 ; [+4]
       59 JUMPIFEQKNIL                     R8 ; [+3]
       61 LOADK                            R12 K20 ["text+image"]
       62 JUMP                             ; [+5]
       63 JUMPIFEQKNIL                     R8 ; [+3]
       65 LOADK                            R12 K21 ["image"]
       66 JUMP                             ; [+1]
       67 LOADK                            R12 K22 ["text"]
       68 SETTABLEKS                       R12 R10 K23 ["inputFormat"]
       70 JUMPIFNOT                        R9 ; [+8]
       71 GETUPVAL                         R12 2
       72 MOVE                             R13 R1
       73 MOVE                             R14 R2
       74 MOVE                             R15 R9
       75 CALL                             R12 3 1
       76 JUMPIFNOT                        R12 ; [+10]
       77 MOVE                             R4 R12
       78 JUMP                             ; [+8]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K24 ["FFlagDebugLogAssistantUI"]
       82 JUMPIFNOT                        R12 ; [+4]
       83 GETIMPORT                        R12 K26 [warn]
       85 LOADK                            R13 K27 ["[MeshGen] generateAssetsAsync: selectedUniqueId is nil, bounding box will not be used"]
       86 CALL                             R12 1 0
       87 JUMPIFEQKNIL                     R6 ; [+11]
       89 DUPTABLE                         R12 K29 [{"SchemaDefinition"}]
       90 NEWTABLE                         R13 1 0
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K30 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       95 SETTABLE                         R6 R13 R14
       96 SETTABLEKS                       R13 R12 K28 ["SchemaDefinition"]
       98 JUMP                             ; [+8]
       99 DUPTABLE                         R12 K32 [{"PredefinedSchema"}]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R13 R13 K31 ["PredefinedSchema"]
      103 GETTABLEKS                       R13 R13 K33 ["Body1"]
      105 SETTABLEKS                       R13 R12 K31 ["PredefinedSchema"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K5 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      110 JUMPIFNOT                        R14 ; [+2]
      111 LOADNIL                          R13
      112 JUMP                             ; [+3]
      113 DUPTABLE                         R13 K34 [{"adminOptions"}]
      114 SETTABLEKS                       R7 R13 K6 ["adminOptions"]
      116 GETIMPORT                        R14 K36 [pcall]
      118 NEWCLOSURE                       R15 P0
      119 CAPTURE                          UPVAL U0
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          VAL R3
      124 CAPTURE                          REF R4
      125 CAPTURE                          VAL R5
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R13
      129 CALL                             R14 1 2
      130 GETUPVAL                         R16 0
      131 GETTABLEKS                       R16 R16 K37 ["FFlagAssistantGen3DTelemetryV2"]
      133 JUMPIFNOT                        R14 ; [+6]
      134 JUMPIFNOT                        R15 ; [+5]
      135 GETTABLEKS                       R17 R15 K38 ["metadata"]
      137 GETTABLEKS                       R17 R17 K39 ["UUID"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R17
      141 GETTABLEKS                       R18 R1 K40 ["EventLogger"]
      143 GETTABLEKS                       R18 R18 K41 ["logMeshGenCompleted"]
      145 DUPTABLE                         R19 K50 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      146 SETTABLEKS                       R2 R19 K42 ["requestId"]
      148 ORK                              R20 R17 K51 [""]
      149 SETTABLEKS                       R20 R19 K43 ["generationId"]
      151 SETTABLEKS                       R14 R19 K44 ["success"]
      153 JUMPIFNOT                        R14 ; [+2]
      154 LOADK                            R20 K51 [""]
      155 JUMP                             ; [+5]
      156 FASTCALL1                        TOSTRING R15 ; [+3]
      157 MOVE                             R21 R15
      158 GETIMPORT                        R20 K53 [tostring]
      160 CALL                             R20 1 1
      161 SETTABLEKS                       R20 R19 K45 ["errorMessage"]
      163 SETTABLEKS                       R3 R19 K46 ["prompt"]
      165 JUMPIFNOT                        R16 ; [+2]
      166 LOADK                            R20 K54 ["mesh"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R20
      169 SETTABLEKS                       R20 R19 K47 ["modelFlow"]
      171 JUMPIFNOT                        R16 ; [+3]
      172 GETTABLEKS                       R20 R10 K23 ["inputFormat"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R20
      176 SETTABLEKS                       R20 R19 K23 ["inputFormat"]
      178 JUMPIFNOT                        R16 ; [+10]
      179 LOADB                            R20 0
      180 JUMPIFEQKNIL                     R6 ; [+9]
      182 LENGTH                           R21 R6
      183 LOADN                            R22 0
      184 JUMPIFLT                         R22 R21 ; [+2]
      186 LOADB                            R20 0 +1
      187 LOADB                            R20 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R20
      190 SETTABLEKS                       R20 R19 K48 ["segmentationEnabled"]
      192 JUMPIFNOT                        R16 ; [+2]
      193 MOVE                             R20 R6
      194 JUMP                             ; [+1]
      195 LOADNIL                          R20
      196 SETTABLEKS                       R20 R19 K49 ["finalParts"]
      198 CALL                             R18 1 0
      199 JUMPIFNOT                        R14 ; [+1]
      200 JUMPIF                           R15 ; [+5]
      201 GETIMPORT                        R18 K56 [error]
      203 MOVE                             R19 R15
      204 LOADN                            R20 0
      205 CALL                             R18 2 0
      206 GETTABLEKS                       R18 R15 K57 ["model"]
      208 GETUPVAL                         R19 0
      209 GETTABLEKS                       R19 R19 K58 ["FFlagPrimGenSchemaSelector"]
      211 JUMPIFNOT                        R19 ; [+12]
      212 LENGTH                           R19 R3
      213 JUMPIFNOTEQKN                    R19 K59 [0] ; [+10]
      215 GETUPVAL                         R19 6
      216 ADDK                             R19 R19 K60 [1]
      217 SETUPVAL                         R19 6
      218 LOADK                            R20 K61 ["MeshGen"]
      219 GETUPVAL                         R21 6
      220 CONCAT                           R19 R20 R21
      221 SETTABLEKS                       R19 R18 K62 ["Name"]
      223 JUMP                             ; [+2]
      224 SETTABLEKS                       R3 R18 K62 ["Name"]
      226 SETTABLEKS                       R18 R10 K63 ["previewAssets"]
      228 LOADNIL                          R19
      229 SETTABLEKS                       R19 R10 K10 ["generationThread"]
      231 GETUPVAL                         R19 7
      232 MOVE                             R20 R2
      233 MOVE                             R21 R18
      234 CALL                             R19 2 0
      235 DUPTABLE                         R19 K64 [{"generationId"}]
      236 GETTABLEKS                       R20 R15 K38 ["metadata"]
      238 GETTABLEKS                       R20 R20 K39 ["UUID"]
      240 SETTABLEKS                       R20 R19 K43 ["generationId"]
      242 CLOSEUPVALS                      R4
      243 RETURN                           R19 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getGenerationSession"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["generationThread"]
        9 JUMPIFNOT                        R3 ; [+13]
       10 GETIMPORT                        R4 K5 [coroutine.status]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K6 ["dead"] ; [+5]
       16 GETIMPORT                        R4 K9 [task.cancel]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R2 K2 ["generationThread"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K10 ["find"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K11 ["Scope"]
       29 MOVE                             R6 R1
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+3]
       32 NAMECALL                         R5 R4 K12 ["Destroy"]
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 GETTABLEKS                       R3 R2 K2 ["loadAssetAsync"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 LENGTH                           R4 R3
        9 JUMPIFNOTEQKN                    R4 K3 [0] ; [+3]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 LOADNIL                          R4
       14 GETTABLEN                        R5 R3 1
       15 LENGTH                           R6 R3
       16 JUMPIFNOTEQKN                    R6 K4 [1] ; [+8]
       18 LOADK                            R8 K5 ["PVInstance"]
       19 NAMECALL                         R6 R5 K6 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+2]
       23 MOVE                             R4 R5
       24 JUMP                             ; [+13]
       25 GETIMPORT                        R6 K9 [Instance.new]
       27 LOADK                            R7 K10 ["Model"]
       28 CALL                             R6 1 1
       29 MOVE                             R4 R6
       30 MOVE                             R6 R3
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 SETTABLEKS                       R4 R10 K11 ["Parent"]
       36 FORGLOOP                         R6 2 ; [-3]
       38 LOADK                            R8 K10 ["Model"]
       39 NAMECALL                         R6 R4 K6 ["IsA"]
       41 CALL                             R6 2 1
       42 JUMPIFNOT                        R6 ; [+21]
       43 LOADK                            R8 K12 ["world"]
       44 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
       46 CALL                             R6 2 1
       47 JUMPIFNOT                        R6 ; [+16]
       48 LOADK                            R9 K10 ["Model"]
       49 NAMECALL                         R7 R6 K6 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+11]
       53 NAMECALL                         R7 R6 K14 ["GetChildren"]
       55 CALL                             R7 1 3
       56 FORGPREP                         R7
       57 SETTABLEKS                       R4 R11 K11 ["Parent"]
       59 FORGLOOP                         R7 2 ; [-3]
       61 NAMECALL                         R7 R6 K15 ["Destroy"]
       63 CALL                             R7 1 0
       64 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["previewAssets"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["PreviewAssets not found"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R4 K4 ["PVInstance"]
       11 NAMECALL                         R2 R0 K5 ["IsA"]
       13 CALL                             R2 2 1
       14 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       16 LOADK                            R3 K6 ["PreviewAssets is not a PVInstance"]
       17 GETIMPORT                        R1 K3 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K7 ["tools"]
       23 GETTABLEKS                       R1 R1 K8 ["meshGen"]
       25 GETTABLEKS                       R1 R1 K9 ["publishModelAsync"]
       27 GETUPVAL                         R2 2
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R5 R1 K10 ["assetId"]
       33 FASTCALL1                        TOSTRING R5 ; [+2]
       34 GETIMPORT                        R4 K12 [tostring]
       36 CALL                             R4 1 1
       37 CALL                             R2 2 1
       38 FASTCALL2K                       ASSERT R2 K13 ; [+5]
       40 MOVE                             R4 R2
       41 LOADK                            R5 K13 ["No instances were loaded from the published asset"]
       42 GETIMPORT                        R3 K3 [assert]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R0 K14 ["Name"]
       47 SETTABLEKS                       R3 R2 K14 ["Name"]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K15 ["markAsAIGeneratedAsset"]
       52 MOVE                             R4 R2
       53 GETUPVAL                         R5 2
       54 CALL                             R3 2 0
       55 NEWTABLE                         R3 0 0
       57 NAMECALL                         R4 R2 K16 ["GetDescendants"]
       59 CALL                             R4 1 1
       60 FASTCALL2                        TABLE_INSERT R4 R2 ; [+5]
       62 MOVE                             R6 R4
       63 MOVE                             R7 R2
       64 GETIMPORT                        R5 K19 [table.insert]
       66 CALL                             R5 2 0
       67 MOVE                             R5 R4
       68 LOADNIL                          R6
       69 LOADNIL                          R7
       70 FORGPREP                         R5
       71 LOADK                            R12 K20 ["MeshPart"]
       72 NAMECALL                         R10 R9 K5 ["IsA"]
       74 CALL                             R10 2 1
       75 JUMPIFNOT                        R10 ; [+15]
       76 DUPTABLE                         R12 K23 [{"meshId", "textureId"}]
       77 GETTABLEKS                       R13 R9 K24 ["MeshId"]
       79 SETTABLEKS                       R13 R12 K21 ["meshId"]
       81 GETTABLEKS                       R13 R9 K25 ["TextureID"]
       83 SETTABLEKS                       R13 R12 K22 ["textureId"]
       85 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       87 MOVE                             R11 R3
       88 GETIMPORT                        R10 K19 [table.insert]
       90 CALL                             R10 2 0
       91 FORGLOOP                         R5 2 ; [-21]
       93 GETUPVAL                         R5 5
       94 GETTABLEKS                       R5 R5 K26 ["hasPredeterminedSize"]
       96 JUMPIF                           R5 ; [+5]
       97 GETUPVAL                         R5 4
       98 GETTABLEKS                       R5 R5 K27 ["scaleUpToMinimumSize"]
      100 MOVE                             R6 R2
      101 CALL                             R5 1 0
      102 GETUPVAL                         R5 0
      103 LOADNIL                          R6
      104 SETTABLEKS                       R6 R5 K0 ["previewAssets"]
      106 GETUPVAL                         R5 0
      107 SETTABLEKS                       R2 R5 K28 ["publishedAssets"]
      109 DUPTABLE                         R5 K30 [{"assetId", "assets"}]
      110 GETTABLEKS                       R7 R1 K10 ["assetId"]
      112 FASTCALL1                        TOSTRING R7 ; [+2]
      113 GETIMPORT                        R6 K12 [tostring]
      115 CALL                             R6 1 1
      116 SETTABLEKS                       R6 R5 K10 ["assetId"]
      118 SETTABLEKS                       R3 R5 K29 ["assets"]
      120 RETURN                           R5 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R3 R0 K1 ["generationId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["getGenerationSession"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 GETIMPORT                        R5 K4 [pcall]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CALL                             R5 1 2
       19 JUMPIF                           R5 ; [+22]
       20 GETTABLEKS                       R7 R1 K5 ["EventLogger"]
       22 GETTABLEKS                       R7 R7 K6 ["logMeshGenPublishedAssets"]
       24 DUPTABLE                         R8 K14 [{["requestId"], ["generationId"], ["success"] = False, ["errorMessage"], ["meshId"] = , ["imageId"] = }]
       25 SETTABLEKS                       R2 R8 K7 ["requestId"]
       27 SETTABLEKS                       R3 R8 K1 ["generationId"]
       29 FASTCALL1                        TOSTRING R6 ; [+3]
       30 MOVE                             R10 R6
       31 GETIMPORT                        R9 K16 [tostring]
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R9 R8 K10 ["errorMessage"]
       36 CALL                             R7 1 0
       37 GETIMPORT                        R7 K18 [error]
       39 MOVE                             R8 R6
       40 LOADN                            R9 0
       41 CALL                             R7 2 0
       42 GETTABLEKS                       R7 R6 K19 ["assets"]
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 GETTABLEKS                       R12 R1 K5 ["EventLogger"]
       49 GETTABLEKS                       R12 R12 K6 ["logMeshGenPublishedAssets"]
       51 DUPTABLE                         R13 K22 [{["requestId"], ["generationId"], ["success"] = True, ["errorMessage"] = "", ["meshId"], ["imageId"]}]
       52 SETTABLEKS                       R2 R13 K7 ["requestId"]
       54 SETTABLEKS                       R3 R13 K1 ["generationId"]
       56 GETTABLEKS                       R15 R11 K11 ["meshId"]
       58 LOADK                            R17 K23 ["%d+"]
       59 NAMECALL                         R15 R15 K24 ["match"]
       61 CALL                             R15 2 -1
       62 FASTCALL                         TONUMBER ; [+2]
       63 GETIMPORT                        R14 K26 [tonumber]
       65 CALL                             R14 -1 1
       66 SETTABLEKS                       R14 R13 K11 ["meshId"]
       68 GETTABLEKS                       R15 R11 K27 ["textureId"]
       70 LOADK                            R17 K23 ["%d+"]
       71 NAMECALL                         R15 R15 K24 ["match"]
       73 CALL                             R15 2 -1
       74 FASTCALL                         TONUMBER ; [+2]
       75 GETIMPORT                        R14 K26 [tonumber]
       77 CALL                             R14 -1 1
       78 SETTABLEKS                       R14 R13 K13 ["imageId"]
       80 CALL                             R12 1 0
       81 FORGLOOP                         R7 2 ; [-35]
       83 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
        3 MOVE                             R3 R0
        4 CONCAT                           R1 R2 R3
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetTagged"]
        9 CALL                             R2 2 3
       10 FORGPREP                         R2
       11 NAMECALL                         R7 R6 K2 ["Destroy"]
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-4]
       16 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getGenerationSession"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["boundingBoxCopy"]
        9 JUMPIFNOT                        R3 ; [+6]
       10 NAMECALL                         R4 R3 K3 ["Destroy"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R2 K2 ["boundingBoxCopy"]
       16 GETTABLEKS                       R4 R2 K4 ["selectedBoundingBox"]
       18 JUMPIFNOT                        R4 ; [+14]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K5 ["VIEWPORT_BOUNDING_BOX_TAG"]
       22 NAMECALL                         R5 R4 K6 ["HasTag"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+7]
       26 GETTABLEKS                       R6 R4 K7 ["Parent"]
       28 JUMPIFEQKNIL                     R6 ; [+4]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R4 K7 ["Parent"]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R2 K4 ["selectedBoundingBox"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K8 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       39 MOVE                             R7 R1
       40 CONCAT                           R5 R6 R7
       41 GETUPVAL                         R6 2
       42 MOVE                             R8 R5
       43 NAMECALL                         R6 R6 K9 ["GetTagged"]
       45 CALL                             R6 2 3
       46 FORGPREP                         R6
       47 NAMECALL                         R11 R10 K3 ["Destroy"]
       49 CALL                             R11 1 0
       50 FORGLOOP                         R6 2 ; [-4]
       52 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishedAssets"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["PublishedAssets not found"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 NAMECALL                         R1 R0 K4 ["Clone"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["getLinkTag"]
       16 GETUPVAL                         R5 2
       17 CALL                             R4 1 -1
       18 NAMECALL                         R2 R1 K6 ["AddTag"]
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["boundingBoxCopy"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K8 ["FFlagDebugLogAssistantUI"]
       27 JUMPIFNOT                        R3 ; [+8]
       28 GETIMPORT                        R3 K10 [warn]
       30 LOADK                            R4 K11 ["[MeshGen] insertAssetsAsync: boundingBoxCopy"]
       31 JUMPIFNOT                        R2 ; [+2]
       32 LOADK                            R5 K12 ["SET"]
       33 JUMP                             ; [+1]
       34 LOADK                            R5 K13 ["NIL"]
       35 CALL                             R3 2 0
       36 JUMPIFNOT                        R2 ; [+74]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K14 ["selectedBoundingBox"]
       40 JUMPIFNOT                        R3 ; [+4]
       41 NAMECALL                         R4 R3 K15 ["GetPivot"]
       43 CALL                             R4 1 1
       44 JUMP                             ; [+3]
       45 NAMECALL                         R4 R2 K15 ["GetPivot"]
       47 CALL                             R4 1 1
       48 MOVE                             R7 R4
       49 NAMECALL                         R5 R1 K16 ["PivotTo"]
       51 CALL                             R5 2 0
       52 JUMPIFNOT                        R3 ; [+51]
       53 GETUPVAL                         R7 4
       54 GETTABLEKS                       R7 R7 K17 ["VIEWPORT_BOUNDING_BOX_TAG"]
       56 NAMECALL                         R5 R3 K18 ["HasTag"]
       58 CALL                             R5 2 1
       59 JUMPIFNOT                        R5 ; [+4]
       60 LOADNIL                          R6
       61 SETTABLEKS                       R6 R3 K19 ["Parent"]
       63 JUMP                             ; [+40]
       64 LOADK                            R8 K20 ["Part"]
       65 NAMECALL                         R6 R2 K21 ["IsA"]
       67 CALL                             R6 2 1
       68 JUMPIFNOT                        R6 ; [+35]
       69 LOADK                            R8 K20 ["Part"]
       70 NAMECALL                         R6 R3 K21 ["IsA"]
       72 CALL                             R6 2 1
       73 JUMPIFNOT                        R6 ; [+30]
       74 GETTABLEKS                       R6 R3 K22 ["Size"]
       76 GETTABLEKS                       R8 R2 K22 ["Size"]
       78 LOADK                            R9 K23 [0.01]
       79 NAMECALL                         R6 R6 K24 ["FuzzyEq"]
       81 CALL                             R6 3 1
       82 GETTABLEKS                       R7 R3 K25 ["Position"]
       84 GETTABLEKS                       R9 R2 K25 ["Position"]
       86 LOADK                            R10 K23 [0.01]
       87 NAMECALL                         R7 R7 K24 ["FuzzyEq"]
       89 CALL                             R7 3 1
       90 GETTABLEKS                       R8 R3 K26 ["Orientation"]
       92 GETTABLEKS                       R10 R2 K26 ["Orientation"]
       94 LOADK                            R11 K23 [0.01]
       95 NAMECALL                         R8 R8 K24 ["FuzzyEq"]
       97 CALL                             R8 3 1
       98 JUMPIFNOT                        R6 ; [+5]
       99 JUMPIFNOT                        R7 ; [+4]
      100 JUMPIFNOT                        R8 ; [+3]
      101 LOADNIL                          R9
      102 SETTABLEKS                       R9 R3 K19 ["Parent"]
      104 GETUPVAL                         R5 5
      105 DUPTABLE                         R6 K28 [{"toolUseId"}]
      106 GETUPVAL                         R7 2
      107 SETTABLEKS                       R7 R6 K27 ["toolUseId"]
      109 CALL                             R5 1 0
      110 JUMP                             ; [+16]
      111 GETIMPORT                        R3 K10 [warn]
      113 LOADK                            R4 K29 ["[MeshGen] insertAssetsAsync: no boundingBoxCopy — falling back to setPositionOnGround"]
      114 CALL                             R3 1 0
      115 GETUPVAL                         R3 6
      116 GETTABLEKS                       R3 R3 K30 ["setPositionOnGround"]
      118 MOVE                             R4 R1
      119 LOADB                            R5 1
      120 CALL                             R3 2 0
      121 GETUPVAL                         R3 5
      122 DUPTABLE                         R4 K28 [{"toolUseId"}]
      123 GETUPVAL                         R5 2
      124 SETTABLEKS                       R5 R4 K27 ["toolUseId"]
      126 CALL                             R3 1 0
      127 GETIMPORT                        R3 K32 [workspace]
      129 SETTABLEKS                       R3 R1 K19 ["Parent"]
      131 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
       11 GETTABLEKS                       R0 R0 K2 ["logGen3DInstanceDeleted"]
       13 DUPTABLE                         R1 K8 [{["requestId"], ["generationId"], ["modelFlow"] = "mesh", ["secondsSinceInsertion"]}]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K3 ["requestId"]
       17 GETUPVAL                         R2 3
       18 SETTABLEKS                       R2 R1 K4 ["generationId"]
       20 GETIMPORT                        R3 K11 [os.clock]
       22 CALL                             R3 0 1
       23 GETUPVAL                         R4 4
       24 SUB                              R2 R3 R4
       25 SETTABLEKS                       R2 R1 K7 ["secondsSinceInsertion"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getGenerationSession"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 ADDK                             R4 R4 K2 [1]
        9 SETUPVAL                         R4 1
       10 LOADK                            R4 K3 ["Insert AI Generated MeshPart %*"]
       11 GETUPVAL                         R6 1
       12 NAMECALL                         R4 R4 K4 ["format"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R1 K5 ["startRecording"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R4
       19 CALL                             R5 2 0
       20 GETIMPORT                        R5 K7 [pcall]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CALL                             R5 1 2
       31 GETTABLEKS                       R7 R1 K8 ["endRecording"]
       33 MOVE                             R8 R2
       34 CALL                             R7 1 0
       35 JUMPIFNOT                        R5 ; [+7]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K9 ["ATTRIBUTE_AI_GENERATION_ID"]
       39 NAMECALL                         R7 R6 K10 ["GetAttribute"]
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 FASTCALL1                        TYPEOF R7 ; [+3]
       45 MOVE                             R10 R7
       46 GETIMPORT                        R9 K12 [typeof]
       48 CALL                             R9 1 1
       49 JUMPIFNOTEQKS                    R9 K13 ["string"] ; [+3]
       51 MOVE                             R8 R7
       52 JUMP                             ; [+1]
       53 LOADK                            R8 K14 [""]
       54 GETTABLEKS                       R9 R1 K15 ["EventLogger"]
       56 GETTABLEKS                       R9 R9 K16 ["logMeshGenMeshInserted"]
       58 DUPTABLE                         R10 K23 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       59 SETTABLEKS                       R2 R10 K17 ["requestId"]
       61 SETTABLEKS                       R8 R10 K18 ["generationId"]
       63 SETTABLEKS                       R5 R10 K19 ["success"]
       65 JUMPIFNOT                        R5 ; [+2]
       66 LOADK                            R11 K14 [""]
       67 JUMP                             ; [+5]
       68 FASTCALL1                        TOSTRING R6 ; [+3]
       69 MOVE                             R12 R6
       70 GETIMPORT                        R11 K25 [tostring]
       72 CALL                             R11 1 1
       73 SETTABLEKS                       R11 R10 K20 ["errorMessage"]
       75 GETUPVAL                         R12 3
       76 GETTABLEKS                       R12 R12 K26 ["FFlagAssistantGen3DTelemetryV2"]
       78 JUMPIFNOT                        R12 ; [+2]
       79 LOADK                            R11 K27 ["mesh"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K21 ["modelFlow"]
       84 GETUPVAL                         R12 3
       85 GETTABLEKS                       R12 R12 K26 ["FFlagAssistantGen3DTelemetryV2"]
       87 JUMPIFNOT                        R12 ; [+3]
       88 GETTABLEKS                       R11 R3 K22 ["inputFormat"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R11
       92 SETTABLEKS                       R11 R10 K22 ["inputFormat"]
       94 CALL                             R9 1 0
       95 JUMPIF                           R5 ; [+5]
       96 GETIMPORT                        R9 K29 [error]
       98 MOVE                             R10 R6
       99 LOADN                            R11 0
      100 CALL                             R9 2 0
      101 GETUPVAL                         R9 3
      102 GETTABLEKS                       R9 R9 K26 ["FFlagAssistantGen3DTelemetryV2"]
      104 JUMPIFNOT                        R9 ; [+19]
      105 JUMPIFEQKS                       R8 K14 [""] ; [+18]
      107 GETIMPORT                        R9 K32 [os.clock]
      109 CALL                             R9 0 1
      110 LOADNIL                          R10
      111 GETTABLEKS                       R11 R6 K33 ["Destroying"]
      113 NEWCLOSURE                       R13 P1
      114 CAPTURE                          REF R10
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 NAMECALL                         R11 R11 K34 ["Connect"]
      121 CALL                             R11 2 1
      122 MOVE                             R10 R11
      123 CLOSEUPVALS                      R10
      124 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["selection"]
        7 GETTABLEKS                       R1 R1 K2 ["get"]
        9 CALL                             R1 0 1
       10 LENGTH                           R2 R1
       11 JUMPIFEQKN                       R2 K3 [1] ; [+2]
       13 RETURN                           R0 0
       14 GETTABLEN                        R2 R1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["BOUNDING_BOX_INSTANCE_TYPE"]
       18 NAMECALL                         R3 R2 K5 ["IsA"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+1]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R0 K6 ["instances"]
       25 GETTABLEKS                       R3 R3 K7 ["getUniqueId"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K11 [{"uniqueId", "name", "className"}]
       30 SETTABLEKS                       R3 R4 K8 ["uniqueId"]
       32 GETTABLEKS                       R5 R2 K12 ["Name"]
       34 SETTABLEKS                       R5 R4 K9 ["name"]
       36 GETTABLEKS                       R5 R2 K13 ["ClassName"]
       38 SETTABLEKS                       R5 R4 K10 ["className"]
       40 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K2 [workspace]
        8 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETTABLEKS                       R3 R1 K4 ["CFrame"]
       13 GETTABLEKS                       R3 R3 K5 ["Position"]
       15 GETTABLEKS                       R5 R1 K4 ["CFrame"]
       17 GETTABLEKS                       R5 R5 K7 ["LookVector"]
       19 MULK                             R4 R5 K6 [10]
       20 ADD                              R2 R3 R4
       21 JUMP                             ; [+1]
       22 LOADK                            R2 K8 [{0, 0, 0}]
       23 GETIMPORT                        R3 K10 [CFrame.new]
       25 GETTABLEKS                       R5 R2 K11 ["X"]
       27 LOADK                            R6 K12 [1.5]
       28 GETTABLEKS                       R7 R2 K13 ["Z"]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R4 K15 [Vector3.new]
       33 CALL                             R4 3 1
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K17 [Instance.new]
       37 LOADK                            R5 K18 ["Part"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K19 ["VIEWPORT_BOUNDING_BOX_NAME"]
       42 SETTABLEKS                       R5 R4 K20 ["Name"]
       44 LOADK                            R5 K21 [{6, 3, 6}]
       45 SETTABLEKS                       R5 R4 K22 ["Size"]
       47 SETTABLEKS                       R3 R4 K4 ["CFrame"]
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K23 ["Anchored"]
       52 LOADK                            R5 K24 [0.6]
       53 SETTABLEKS                       R5 R4 K25 ["Transparency"]
       55 GETIMPORT                        R5 K28 [Color3.fromRGB]
       57 LOADN                            R6 0
       58 LOADN                            R7 170
       59 LOADN                            R8 255
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K29 ["Color"]
       63 GETIMPORT                        R5 K33 [Enum.Material.SmoothPlastic]
       65 SETTABLEKS                       R5 R4 K31 ["Material"]
       67 GETIMPORT                        R5 K2 [workspace]
       69 SETTABLEKS                       R5 R4 K34 ["Parent"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K35 ["VIEWPORT_BOUNDING_BOX_TAG"]
       74 NAMECALL                         R5 R4 K36 ["AddTag"]
       76 CALL                             R5 2 0
       77 GETTABLEKS                       R5 R0 K37 ["instances"]
       79 GETTABLEKS                       R5 R5 K38 ["getUniqueId"]
       81 MOVE                             R6 R4
       82 CALL                             R5 1 1
       83 GETTABLEKS                       R6 R0 K39 ["selection"]
       85 GETTABLEKS                       R6 R6 K40 ["set"]
       87 NEWTABLE                         R7 0 1
       89 MOVE                             R8 R4
       90 SETLIST                          R7 R8 1 [1]
       92 CALL                             R6 1 0
       93 GETTABLEKS                       R6 R0 K41 ["tools"]
       95 GETTABLEKS                       R6 R6 K42 ["meshGen"]
       97 GETTABLEKS                       R6 R6 K43 ["activateScaleTool"]
       99 CALL                             R6 0 0
      100 DUPTABLE                         R6 K47 [{"uniqueId", "name", "className"}]
      101 SETTABLEKS                       R5 R6 K44 ["uniqueId"]
      103 GETTABLEKS                       R7 R4 K20 ["Name"]
      105 SETTABLEKS                       R7 R6 K45 ["name"]
      107 GETTABLEKS                       R7 R4 K48 ["ClassName"]
      109 SETTABLEKS                       R7 R6 K46 ["className"]
      111 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["uniqueId"]
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETTABLEKS                       R2 R1 K2 ["instances"]
       10 GETTABLEKS                       R2 R2 K3 ["getInstanceFromUniqueId"]
       12 GETTABLEKS                       R3 R0 K1 ["uniqueId"]
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 NAMECALL                         R3 R2 K4 ["Destroy"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETIMPORT                        R2 K7 [warn]
       26 LOADK                            R3 K8 ["[MeshGen] destroyViewportBoundingBoxAsync: uniqueId lookup failed, skipping cleanup"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["hasLiveGeneration"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["publishedAssetId"]
       11 JUMPIF                           R3 ; [+10]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETIMPORT                        R3 K5 [warn]
       18 LOADK                            R4 K6 ["[MeshGen] capturePreviewImagesAsync: no channel and no publishedAssetId for"]
       19 MOVE                             R5 R2
       20 CALL                             R3 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R1
       24 GETTABLEKS                       R5 R0 K2 ["publishedAssetId"]
       26 CALL                             R3 2 1
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R2
       31 MOVE                             R6 R3
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["peekGenerationSession"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUseId"]
        5 CALL                             R1 1 1
        6 LOADB                            R2 0
        7 JUMPIFEQKNIL                     R1 ; [+12]
        9 LOADB                            R2 1
       10 GETTABLEKS                       R3 R1 K2 ["previewAssets"]
       12 JUMPIFNOTEQKNIL                  R3 ; [+7]
       14 GETTABLEKS                       R3 R1 K3 ["publishedAssets"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        3 GETTABLEKS                       R2 R2 K1 ["environment"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        3 GETTABLEKS                       R2 R2 K1 ["environment"]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["peekGenerationSession"]
        3 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        5 CALL                             R3 1 1
        6 LOADB                            R2 0
        7 JUMPIFEQKNIL                     R3 ; [+12]
        9 LOADB                            R2 1
       10 GETTABLEKS                       R4 R3 K2 ["previewAssets"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R3 K3 ["publishedAssets"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["run"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cancel"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantSegmentationBridge"]
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K1 ["uniqueId"]
        8 JUMPIFNOT                        R3 ; [+12]
        9 GETTABLEKS                       R3 R2 K2 ["instances"]
       11 GETTABLEKS                       R3 R3 K3 ["getInstanceFromUniqueId"]
       13 GETTABLEKS                       R4 R1 K1 ["uniqueId"]
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+4]
       17 NAMECALL                         R4 R3 K4 ["Destroy"]
       19 CALL                             R4 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETIMPORT                        R3 K7 [warn]
       27 LOADK                            R4 K8 ["[MeshGen] destroyViewportBoundingBoxAsync: uniqueId lookup failed, skipping cleanup"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["peekGenerationSession"]
        3 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        5 CALL                             R3 1 1
        6 LOADB                            R2 0
        7 JUMPIFEQKNIL                     R3 ; [+12]
        9 LOADB                            R2 1
       10 GETTABLEKS                       R4 R3 K2 ["previewAssets"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R3 K3 ["publishedAssets"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R7 R2 K1 ["generateAssets"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R7 R7 K2 ["Connect"]
       19 CALL                             R7 2 -1
       20 NAMECALL                         R5 R4 K3 ["Add"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R7 R2 K4 ["cancelGeneration"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 NAMECALL                         R7 R7 K2 ["Connect"]
       30 CALL                             R7 2 -1
       31 NAMECALL                         R5 R4 K3 ["Add"]
       33 CALL                             R5 -1 0
       34 GETTABLEKS                       R7 R2 K5 ["publishAssets"]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R7 R7 K2 ["Connect"]
       41 CALL                             R7 2 -1
       42 NAMECALL                         R5 R4 K3 ["Add"]
       44 CALL                             R5 -1 0
       45 GETTABLEKS                       R7 R2 K6 ["removeSelectedBounds"]
       47 DUPCLOSURE                       R9 K7 [PROTO_34]
       48 CAPTURE                          UPVAL U6
       49 NAMECALL                         R7 R7 K2 ["Connect"]
       51 CALL                             R7 2 -1
       52 NAMECALL                         R5 R4 K3 ["Add"]
       54 CALL                             R5 -1 0
       55 GETTABLEKS                       R7 R2 K8 ["insertAssets"]
       57 NEWCLOSURE                       R9 P4
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R1
       60 NAMECALL                         R7 R7 K2 ["Connect"]
       62 CALL                             R7 2 -1
       63 NAMECALL                         R5 R4 K3 ["Add"]
       65 CALL                             R5 -1 0
       66 GETTABLEKS                       R7 R2 K9 ["getSelectedBoundingBox"]
       68 NEWCLOSURE                       R9 P5
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R7 R7 K2 ["Connect"]
       73 CALL                             R7 2 -1
       74 NAMECALL                         R5 R4 K3 ["Add"]
       76 CALL                             R5 -1 0
       77 GETTABLEKS                       R7 R2 K10 ["createViewportBoundingBox"]
       79 NEWCLOSURE                       R9 P6
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          VAL R1
       82 NAMECALL                         R7 R7 K2 ["Connect"]
       84 CALL                             R7 2 -1
       85 NAMECALL                         R5 R4 K3 ["Add"]
       87 CALL                             R5 -1 0
       88 GETTABLEKS                       R7 R2 K11 ["destroyViewportBoundingBox"]
       90 NEWCLOSURE                       R9 P7
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U10
       93 NAMECALL                         R7 R7 K2 ["Connect"]
       95 CALL                             R7 2 -1
       96 NAMECALL                         R5 R4 K3 ["Add"]
       98 CALL                             R5 -1 0
       99 GETTABLEKS                       R7 R2 K12 ["capturePreviewImages"]
      101 NEWCLOSURE                       R9 P8
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          VAL R1
      104 NAMECALL                         R7 R7 K2 ["Connect"]
      106 CALL                             R7 2 -1
      107 NAMECALL                         R5 R4 K3 ["Add"]
      109 CALL                             R5 -1 0
      110 GETTABLEKS                       R7 R2 K13 ["isGenerationCached"]
      112 DUPCLOSURE                       R9 K14 [PROTO_40]
      113 CAPTURE                          UPVAL U12
      114 NAMECALL                         R7 R7 K2 ["Connect"]
      116 CALL                             R7 2 -1
      117 NAMECALL                         R5 R4 K3 ["Add"]
      119 CALL                             R5 -1 0
      120 GETTABLEKS                       R5 R1 K15 ["Destroying"]
      122 NEWCLOSURE                       R7 P10
      123 CAPTURE                          VAL R4
      124 NAMECALL                         R5 R5 K16 ["Once"]
      126 CALL                             R5 2 0
      127 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["EncodingService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["HttpService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R0 K10 ["Parent"]
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R4 K13 ["DMNetworking"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Util"]
       36 GETTABLEKS                       R7 R7 K15 ["Bin"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K12 [require]
       41 GETTABLEKS                       R8 R0 K16 ["Guest"]
       43 GETTABLEKS                       R8 R8 K17 ["Environment"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K12 [require]
       48 GETTABLEKS                       R9 R0 K18 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K12 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Util"]
       55 GETTABLEKS                       R10 R10 K19 ["InstanceChannel"]
       57 GETTABLEKS                       R10 R10 K19 ["InstanceChannel"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K12 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Util"]
       64 GETTABLEKS                       R11 R11 K20 ["MeshGen"]
       66 GETTABLEKS                       R11 R11 K21 ["MeshGenAssetManager"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K12 [require]
       71 GETTABLEKS                       R12 R0 K22 ["Bridges"]
       73 GETTABLEKS                       R12 R12 K23 ["createMeshGenBridge"]
       75 GETTABLEKS                       R12 R12 K24 ["MeshGenBridgeTypes"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K12 [require]
       80 GETTABLEKS                       R13 R0 K14 ["Util"]
       82 GETTABLEKS                       R13 R13 K20 ["MeshGen"]
       84 GETTABLEKS                       R13 R13 K25 ["MeshGenChannel"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K12 [require]
       89 GETTABLEKS                       R14 R0 K14 ["Util"]
       91 GETTABLEKS                       R14 R14 K20 ["MeshGen"]
       93 GETTABLEKS                       R14 R14 K26 ["MeshGenConstants"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K12 [require]
       98 GETTABLEKS                       R15 R0 K27 ["Remotes"]
      100 GETTABLEKS                       R15 R15 K28 ["MeshGenRemotes"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K12 [require]
      105 GETTABLEKS                       R16 R0 K14 ["Util"]
      107 GETTABLEKS                       R16 R16 K20 ["MeshGen"]
      109 GETTABLEKS                       R16 R16 K29 ["MeshGenTypes"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K12 [require]
      114 GETTABLEKS                       R17 R0 K14 ["Util"]
      116 GETTABLEKS                       R17 R17 K30 ["ToolUtils"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K12 [require]
      121 GETTABLEKS                       R18 R0 K31 ["Types"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K12 [require]
      126 GETTABLEKS                       R19 R0 K14 ["Util"]
      128 GETTABLEKS                       R19 R19 K32 ["Gen3dUtils"]
      130 GETTABLEKS                       R19 R19 K33 ["ViewportPreviewUtils"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K12 [require]
      135 GETTABLEKS                       R20 R0 K14 ["Util"]
      137 GETTABLEKS                       R20 R20 K34 ["createCancellableHandlers"]
      139 CALL                             R19 1 1
      140 GETTABLEKS                       R20 R13 K35 ["Enums"]
      142 GETTABLEKS                       R21 R13 K36 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      144 NEWTABLE                         R22 0 0
      146 LOADN                            R25 0
      147 SUBK                             R23 R21 K37 [1]
      148 LOADN                            R24 1
      149 FORNPREP                         R23
      150 DUPTABLE                         R28 K41 [{["azimuth"], ["elevation"] = 30}]
      151 DIVRK                            R31 K43 [360] R21
      152 MUL                              R30 R31 R25
      153 ADDK                             R29 R30 K42 [45]
      154 SETTABLEKS                       R29 R28 K38 ["azimuth"]
      156 FASTCALL2                        TABLE_INSERT R22 R28 ; [+4]
      158 MOVE                             R27 R22
      159 GETIMPORT                        R26 K46 [table.insert]
      161 CALL                             R26 2 0
      162 FORNLOOP                         R23
      163 LOADN                            R23 0
      164 LOADN                            R24 0
      165 DUPCLOSURE                       R25 K47 [PROTO_1]
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R22
      172 DUPCLOSURE                       R26 K48 [PROTO_2]
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R10
      175 NEWCLOSURE                       R27 P2
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R26
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R3
      182 CAPTURE                          REF R24
      183 CAPTURE                          VAL R25
      184 DUPCLOSURE                       R28 K49 [PROTO_5]
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R12
      188 DUPCLOSURE                       R29 K50 [PROTO_6]
      189 DUPCLOSURE                       R30 K51 [PROTO_8]
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R29
      192 DUPCLOSURE                       R31 K52 [PROTO_9]
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R1
      195 DUPCLOSURE                       R32 K53 [PROTO_10]
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R1
      199 NEWCLOSURE                       R33 P8
      200 CAPTURE                          VAL R10
      201 CAPTURE                          REF R23
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R32
      206 CAPTURE                          VAL R16
      207 DUPCLOSURE                       R34 K54 [PROTO_14]
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R13
      210 DUPCLOSURE                       R35 K55 [PROTO_15]
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R13
      213 DUPCLOSURE                       R36 K56 [PROTO_16]
      214 CAPTURE                          VAL R8
      215 DUPCLOSURE                       R37 K57 [PROTO_17]
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R29
      219 CAPTURE                          VAL R25
      220 DUPCLOSURE                       R38 K58 [PROTO_18]
      221 CAPTURE                          VAL R10
      222 DUPTABLE                         R39 K69 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync", "capturePreviewImagesAsync", "isGenerationCachedAsync"}]
      223 DUPCLOSURE                       R40 K70 [PROTO_19]
      224 CAPTURE                          VAL R27
      225 SETTABLEKS                       R40 R39 K59 ["generateAssetsAsync"]
      227 DUPCLOSURE                       R40 K71 [PROTO_20]
      228 CAPTURE                          VAL R28
      229 SETTABLEKS                       R40 R39 K60 ["cancelGenerationAsync"]
      231 DUPCLOSURE                       R40 K72 [PROTO_21]
      232 CAPTURE                          VAL R30
      233 SETTABLEKS                       R40 R39 K61 ["publishAssetsAsync"]
      235 DUPCLOSURE                       R40 K73 [PROTO_22]
      236 CAPTURE                          VAL R32
      237 SETTABLEKS                       R40 R39 K62 ["removeSelectedBoundsAsync"]
      239 DUPCLOSURE                       R40 K74 [PROTO_23]
      240 CAPTURE                          VAL R33
      241 SETTABLEKS                       R40 R39 K63 ["insertAssetsAsync"]
      243 DUPCLOSURE                       R40 K75 [PROTO_24]
      244 CAPTURE                          VAL R34
      245 SETTABLEKS                       R40 R39 K64 ["getSelectedBoundingBox"]
      247 DUPCLOSURE                       R40 K76 [PROTO_25]
      248 CAPTURE                          VAL R35
      249 SETTABLEKS                       R40 R39 K65 ["createViewportBoundingBoxAsync"]
      251 DUPCLOSURE                       R40 K77 [PROTO_26]
      252 CAPTURE                          VAL R36
      253 SETTABLEKS                       R40 R39 K66 ["destroyViewportBoundingBoxAsync"]
      255 DUPCLOSURE                       R40 K78 [PROTO_27]
      256 CAPTURE                          VAL R37
      257 SETTABLEKS                       R40 R39 K67 ["capturePreviewImagesAsync"]
      259 DUPCLOSURE                       R40 K79 [PROTO_28]
      260 CAPTURE                          VAL R10
      261 SETTABLEKS                       R40 R39 K68 ["isGenerationCachedAsync"]
      263 DUPCLOSURE                       R40 K80 [PROTO_42]
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R28
      269 CAPTURE                          VAL R30
      270 CAPTURE                          VAL R32
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R34
      273 CAPTURE                          VAL R35
      274 CAPTURE                          VAL R8
      275 CAPTURE                          VAL R37
      276 CAPTURE                          VAL R10
      277 DUPTABLE                         R41 K83 [{"bridge", "connectRemotes"}]
      278 SETTABLEKS                       R39 R41 K81 ["bridge"]
      280 SETTABLEKS                       R40 R41 K82 ["connectRemotes"]
      282 CLOSEUPVALS                      R23
      283 RETURN                           R41 1
