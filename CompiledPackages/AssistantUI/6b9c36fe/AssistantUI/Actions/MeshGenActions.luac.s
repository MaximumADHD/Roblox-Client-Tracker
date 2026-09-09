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
        0 GETTABLEKS                       R3 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["environment"]
        4 GETTABLEKS                       R3 R3 K2 ["instances"]
        6 GETTABLEKS                       R3 R3 K3 ["getInstanceFromUniqueId"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["NO_SELECTION_ERROR_MESSAGE"]
       13 FASTCALL2                        ASSERT R3 R6 ; [+4]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K6 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["BOUNDING_BOX_INSTANCE_TYPE"]
       22 NAMECALL                         R5 R3 K8 ["IsA"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K9 ["INVALID_SELECTION_ERROR_MESSAGE"]
       28 FASTCALL2                        ASSERT R5 R6 ; [+3]
       30 GETIMPORT                        R4 K6 [assert]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K10 ["getGenerationSession"]
       36 MOVE                             R5 R1
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K11 ["selectedBoundingBox"]
       40 JUMPIFNOT                        R5 ; [+10]
       41 GETTABLEKS                       R6 R5 K12 ["Parent"]
       43 JUMPIFEQKNIL                     R6 ; [+7]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K12 ["Parent"]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R4 K11 ["selectedBoundingBox"]
       51 NAMECALL                         R6 R3 K13 ["Clone"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R6 K14 ["Size"]
       56 GETTABLEKS                       R8 R3 K15 ["CFrame"]
       58 SETTABLEKS                       R8 R6 K15 ["CFrame"]
       60 SETTABLEKS                       R6 R4 K16 ["boundingBoxCopy"]
       62 SETTABLEKS                       R3 R4 K11 ["selectedBoundingBox"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K17 ["VIEWPORT_BOUNDING_BOX_TAG"]
       67 NAMECALL                         R9 R3 K18 ["HasTag"]
       69 CALL                             R9 2 1
       70 JUMPIFNOT                        R9 ; [+8]
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K19 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       74 MOVE                             R13 R1
       75 CONCAT                           R11 R12 R13
       76 NAMECALL                         R9 R3 K20 ["AddTag"]
       78 CALL                             R9 2 0
       79 RETURN                           R7 1

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
       70 GETTABLEKS                       R12 R1 K24 ["initArgs"]
       72 GETTABLEKS                       R12 R12 K25 ["environment"]
       74 JUMPIFNOT                        R9 ; [+8]
       75 GETUPVAL                         R13 2
       76 MOVE                             R14 R1
       77 MOVE                             R15 R2
       78 MOVE                             R16 R9
       79 CALL                             R13 3 1
       80 JUMPIFNOT                        R13 ; [+10]
       81 MOVE                             R4 R13
       82 JUMP                             ; [+8]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K26 ["FFlagDebugLogAssistantUI"]
       86 JUMPIFNOT                        R13 ; [+4]
       87 GETIMPORT                        R13 K28 [warn]
       89 LOADK                            R14 K29 ["[MeshGen] generateAssetsAsync: selectedUniqueId is nil, bounding box will not be used"]
       90 CALL                             R13 1 0
       91 JUMPIFEQKNIL                     R6 ; [+11]
       93 DUPTABLE                         R13 K31 [{"SchemaDefinition"}]
       94 NEWTABLE                         R14 1 0
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K32 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       99 SETTABLE                         R6 R14 R15
      100 SETTABLEKS                       R14 R13 K30 ["SchemaDefinition"]
      102 JUMP                             ; [+8]
      103 DUPTABLE                         R13 K34 [{"PredefinedSchema"}]
      104 GETUPVAL                         R14 3
      105 GETTABLEKS                       R14 R14 K33 ["PredefinedSchema"]
      107 GETTABLEKS                       R14 R14 K35 ["Body1"]
      109 SETTABLEKS                       R14 R13 K33 ["PredefinedSchema"]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K5 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      114 JUMPIFNOT                        R15 ; [+2]
      115 LOADNIL                          R14
      116 JUMP                             ; [+3]
      117 DUPTABLE                         R14 K36 [{"adminOptions"}]
      118 SETTABLEKS                       R7 R14 K6 ["adminOptions"]
      120 GETIMPORT                        R15 K38 [pcall]
      122 NEWCLOSURE                       R16 P0
      123 CAPTURE                          UPVAL U0
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R12
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R3
      128 CAPTURE                          REF R4
      129 CAPTURE                          VAL R5
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CALL                             R15 1 2
      134 GETUPVAL                         R17 0
      135 GETTABLEKS                       R17 R17 K39 ["FFlagAssistantGen3DTelemetryV2"]
      137 JUMPIFNOT                        R15 ; [+6]
      138 JUMPIFNOT                        R16 ; [+5]
      139 GETTABLEKS                       R18 R16 K40 ["metadata"]
      141 GETTABLEKS                       R18 R18 K41 ["UUID"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R18
      145 GETTABLEKS                       R19 R12 K42 ["EventLogger"]
      147 GETTABLEKS                       R19 R19 K43 ["logMeshGenCompleted"]
      149 DUPTABLE                         R20 K52 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      150 SETTABLEKS                       R2 R20 K44 ["requestId"]
      152 ORK                              R21 R18 K53 [""]
      153 SETTABLEKS                       R21 R20 K45 ["generationId"]
      155 SETTABLEKS                       R15 R20 K46 ["success"]
      157 JUMPIFNOT                        R15 ; [+2]
      158 LOADK                            R21 K53 [""]
      159 JUMP                             ; [+5]
      160 FASTCALL1                        TOSTRING R16 ; [+3]
      161 MOVE                             R22 R16
      162 GETIMPORT                        R21 K55 [tostring]
      164 CALL                             R21 1 1
      165 SETTABLEKS                       R21 R20 K47 ["errorMessage"]
      167 SETTABLEKS                       R3 R20 K48 ["prompt"]
      169 JUMPIFNOT                        R17 ; [+2]
      170 LOADK                            R21 K56 ["mesh"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R21
      173 SETTABLEKS                       R21 R20 K49 ["modelFlow"]
      175 JUMPIFNOT                        R17 ; [+3]
      176 GETTABLEKS                       R21 R10 K23 ["inputFormat"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R21
      180 SETTABLEKS                       R21 R20 K23 ["inputFormat"]
      182 JUMPIFNOT                        R17 ; [+10]
      183 LOADB                            R21 0
      184 JUMPIFEQKNIL                     R6 ; [+9]
      186 LENGTH                           R22 R6
      187 LOADN                            R23 0
      188 JUMPIFLT                         R23 R22 ; [+2]
      190 LOADB                            R21 0 +1
      191 LOADB                            R21 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R21
      194 SETTABLEKS                       R21 R20 K50 ["segmentationEnabled"]
      196 JUMPIFNOT                        R17 ; [+2]
      197 MOVE                             R21 R6
      198 JUMP                             ; [+1]
      199 LOADNIL                          R21
      200 SETTABLEKS                       R21 R20 K51 ["finalParts"]
      202 CALL                             R19 1 0
      203 JUMPIFNOT                        R15 ; [+1]
      204 JUMPIF                           R16 ; [+5]
      205 GETIMPORT                        R19 K58 [error]
      207 MOVE                             R20 R16
      208 LOADN                            R21 0
      209 CALL                             R19 2 0
      210 GETTABLEKS                       R19 R16 K59 ["model"]
      212 GETUPVAL                         R20 0
      213 GETTABLEKS                       R20 R20 K60 ["FFlagPrimGenSchemaSelector"]
      215 JUMPIFNOT                        R20 ; [+12]
      216 LENGTH                           R20 R3
      217 JUMPIFNOTEQKN                    R20 K61 [0] ; [+10]
      219 GETUPVAL                         R20 6
      220 ADDK                             R20 R20 K62 [1]
      221 SETUPVAL                         R20 6
      222 LOADK                            R21 K63 ["MeshGen"]
      223 GETUPVAL                         R22 6
      224 CONCAT                           R20 R21 R22
      225 SETTABLEKS                       R20 R19 K64 ["Name"]
      227 JUMP                             ; [+2]
      228 SETTABLEKS                       R3 R19 K64 ["Name"]
      230 SETTABLEKS                       R19 R10 K65 ["previewAssets"]
      232 LOADNIL                          R20
      233 SETTABLEKS                       R20 R10 K10 ["generationThread"]
      235 GETUPVAL                         R20 7
      236 MOVE                             R21 R2
      237 MOVE                             R22 R19
      238 CALL                             R20 2 0
      239 DUPTABLE                         R20 K66 [{"generationId"}]
      240 GETTABLEKS                       R21 R16 K40 ["metadata"]
      242 GETTABLEKS                       R21 R21 K41 ["UUID"]
      244 SETTABLEKS                       R21 R20 K45 ["generationId"]
      246 CLOSEUPVALS                      R4
      247 RETURN                           R20 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getGenerationSession"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K2 ["generationThread"]
        9 JUMPIFNOT                        R4 ; [+13]
       10 GETIMPORT                        R5 K5 [coroutine.status]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K6 ["dead"] ; [+5]
       16 GETIMPORT                        R5 K9 [task.cancel]
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 LOADNIL                          R5
       21 SETTABLEKS                       R5 R3 K2 ["generationThread"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K10 ["find"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K11 ["Scope"]
       29 MOVE                             R7 R2
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+3]
       32 NAMECALL                         R6 R5 K12 ["Destroy"]
       34 CALL                             R6 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R2 R2 K2 ["tools"]
        6 GETTABLEKS                       R2 R2 K3 ["meshGen"]
        8 GETTABLEKS                       R3 R2 K4 ["loadAssetAsync"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 LENGTH                           R4 R3
       13 JUMPIFNOTEQKN                    R4 K5 [0] ; [+3]
       15 LOADNIL                          R4
       16 RETURN                           R4 1
       17 LOADNIL                          R4
       18 GETTABLEN                        R5 R3 1
       19 LENGTH                           R6 R3
       20 JUMPIFNOTEQKN                    R6 K6 [1] ; [+8]
       22 LOADK                            R8 K7 ["PVInstance"]
       23 NAMECALL                         R6 R5 K8 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+2]
       27 MOVE                             R4 R5
       28 JUMP                             ; [+13]
       29 GETIMPORT                        R6 K11 [Instance.new]
       31 LOADK                            R7 K12 ["Model"]
       32 CALL                             R6 1 1
       33 MOVE                             R4 R6
       34 MOVE                             R6 R3
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 SETTABLEKS                       R4 R10 K13 ["Parent"]
       40 FORGLOOP                         R6 2 ; [-3]
       42 LOADK                            R8 K12 ["Model"]
       43 NAMECALL                         R6 R4 K8 ["IsA"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+21]
       47 LOADK                            R8 K14 ["world"]
       48 NAMECALL                         R6 R4 K15 ["FindFirstChild"]
       50 CALL                             R6 2 1
       51 JUMPIFNOT                        R6 ; [+16]
       52 LOADK                            R9 K12 ["Model"]
       53 NAMECALL                         R7 R6 K8 ["IsA"]
       55 CALL                             R7 2 1
       56 JUMPIFNOT                        R7 ; [+11]
       57 NAMECALL                         R7 R6 K16 ["GetChildren"]
       59 CALL                             R7 1 3
       60 FORGPREP                         R7
       61 SETTABLEKS                       R4 R11 K13 ["Parent"]
       63 FORGLOOP                         R7 2 ; [-3]
       65 NAMECALL                         R7 R6 K17 ["Destroy"]
       67 CALL                             R7 1 0
       68 RETURN                           R4 1

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
       30 GETUPVAL                         R3 4
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
       49 GETUPVAL                         R3 5
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
       93 GETUPVAL                         R5 6
       94 GETTABLEKS                       R5 R5 K26 ["hasPredeterminedSize"]
       96 JUMPIF                           R5 ; [+5]
       97 GETUPVAL                         R5 5
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
        4 GETTABLEKS                       R4 R1 K2 ["initArgs"]
        6 GETTABLEKS                       R4 R4 K3 ["environment"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["getGenerationSession"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 GETIMPORT                        R6 K6 [pcall]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 CALL                             R6 1 2
       24 JUMPIF                           R6 ; [+22]
       25 GETTABLEKS                       R8 R4 K7 ["EventLogger"]
       27 GETTABLEKS                       R8 R8 K8 ["logMeshGenPublishedAssets"]
       29 DUPTABLE                         R9 K16 [{["requestId"], ["generationId"], ["success"] = False, ["errorMessage"], ["meshId"] = , ["imageId"] = }]
       30 SETTABLEKS                       R2 R9 K9 ["requestId"]
       32 SETTABLEKS                       R3 R9 K1 ["generationId"]
       34 FASTCALL1                        TOSTRING R7 ; [+3]
       35 MOVE                             R11 R7
       36 GETIMPORT                        R10 K18 [tostring]
       38 CALL                             R10 1 1
       39 SETTABLEKS                       R10 R9 K12 ["errorMessage"]
       41 CALL                             R8 1 0
       42 GETIMPORT                        R8 K20 [error]
       44 MOVE                             R9 R7
       45 LOADN                            R10 0
       46 CALL                             R8 2 0
       47 GETTABLEKS                       R8 R7 K21 ["assets"]
       49 LOADNIL                          R9
       50 LOADNIL                          R10
       51 FORGPREP                         R8
       52 GETTABLEKS                       R13 R4 K7 ["EventLogger"]
       54 GETTABLEKS                       R13 R13 K8 ["logMeshGenPublishedAssets"]
       56 DUPTABLE                         R14 K24 [{["requestId"], ["generationId"], ["success"] = True, ["errorMessage"] = "", ["meshId"], ["imageId"]}]
       57 SETTABLEKS                       R2 R14 K9 ["requestId"]
       59 SETTABLEKS                       R3 R14 K1 ["generationId"]
       61 GETTABLEKS                       R16 R12 K13 ["meshId"]
       63 LOADK                            R18 K25 ["%d+"]
       64 NAMECALL                         R16 R16 K26 ["match"]
       66 CALL                             R16 2 -1
       67 FASTCALL                         TONUMBER ; [+2]
       68 GETIMPORT                        R15 K28 [tonumber]
       70 CALL                             R15 -1 1
       71 SETTABLEKS                       R15 R14 K13 ["meshId"]
       73 GETTABLEKS                       R16 R12 K29 ["textureId"]
       75 LOADK                            R18 K25 ["%d+"]
       76 NAMECALL                         R16 R16 K26 ["match"]
       78 CALL                             R16 2 -1
       79 FASTCALL                         TONUMBER ; [+2]
       80 GETIMPORT                        R15 K28 [tonumber]
       82 CALL                             R15 -1 1
       83 SETTABLEKS                       R15 R14 K15 ["imageId"]
       85 CALL                             R13 1 0
       86 FORGLOOP                         R8 2 ; [-35]
       88 RETURN                           R7 1

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
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getGenerationSession"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K2 ["boundingBoxCopy"]
        9 JUMPIFNOT                        R4 ; [+6]
       10 NAMECALL                         R5 R4 K3 ["Destroy"]
       12 CALL                             R5 1 0
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R3 K2 ["boundingBoxCopy"]
       16 GETTABLEKS                       R5 R3 K4 ["selectedBoundingBox"]
       18 JUMPIFNOT                        R5 ; [+14]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["VIEWPORT_BOUNDING_BOX_TAG"]
       22 NAMECALL                         R6 R5 K6 ["HasTag"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+7]
       26 GETTABLEKS                       R7 R5 K7 ["Parent"]
       28 JUMPIFEQKNIL                     R7 ; [+4]
       30 LOADNIL                          R7
       31 SETTABLEKS                       R7 R5 K7 ["Parent"]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R3 K4 ["selectedBoundingBox"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K8 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       39 MOVE                             R8 R2
       40 CONCAT                           R6 R7 R8
       41 GETUPVAL                         R7 2
       42 MOVE                             R9 R6
       43 NAMECALL                         R7 R7 K9 ["GetTagged"]
       45 CALL                             R7 2 3
       46 FORGPREP                         R7
       47 NAMECALL                         R12 R11 K3 ["Destroy"]
       49 CALL                             R12 1 0
       50 FORGLOOP                         R7 2 ; [-4]
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
       36 JUMPIFNOT                        R2 ; [+75]
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
      109 GETUPVAL                         R7 6
      110 CALL                             R5 2 0
      111 JUMP                             ; [+17]
      112 GETIMPORT                        R3 K10 [warn]
      114 LOADK                            R4 K29 ["[MeshGen] insertAssetsAsync: no boundingBoxCopy — falling back to setPositionOnGround"]
      115 CALL                             R3 1 0
      116 GETUPVAL                         R3 7
      117 GETTABLEKS                       R3 R3 K30 ["setPositionOnGround"]
      119 MOVE                             R4 R1
      120 LOADB                            R5 1
      121 CALL                             R3 2 0
      122 GETUPVAL                         R3 5
      123 DUPTABLE                         R4 K28 [{"toolUseId"}]
      124 GETUPVAL                         R5 2
      125 SETTABLEKS                       R5 R4 K27 ["toolUseId"]
      127 GETUPVAL                         R5 6
      128 CALL                             R3 2 0
      129 GETIMPORT                        R3 K32 [workspace]
      131 SETTABLEKS                       R3 R1 K19 ["Parent"]
      133 RETURN                           R1 1

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
        2 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        4 GETTABLEKS                       R3 R3 K2 ["environment"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getGenerationSession"]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 ADDK                             R5 R5 K4 [1]
       13 SETUPVAL                         R5 1
       14 LOADK                            R6 K5 ["Insert AI Generated MeshPart %*"]
       15 GETUPVAL                         R8 1
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 GETTABLEKS                       R6 R3 K7 ["startRecording"]
       22 MOVE                             R7 R2
       23 MOVE                             R8 R5
       24 CALL                             R6 2 0
       25 GETIMPORT                        R6 K9 [pcall]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U6
       36 CALL                             R6 1 2
       37 GETTABLEKS                       R8 R3 K10 ["endRecording"]
       39 MOVE                             R9 R2
       40 CALL                             R8 1 0
       41 JUMPIFNOT                        R6 ; [+7]
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K11 ["ATTRIBUTE_AI_GENERATION_ID"]
       45 NAMECALL                         R8 R7 K12 ["GetAttribute"]
       47 CALL                             R8 2 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R8
       50 FASTCALL1                        TYPEOF R8 ; [+3]
       51 MOVE                             R11 R8
       52 GETIMPORT                        R10 K14 [typeof]
       54 CALL                             R10 1 1
       55 JUMPIFNOTEQKS                    R10 K15 ["string"] ; [+3]
       57 MOVE                             R9 R8
       58 JUMP                             ; [+1]
       59 LOADK                            R9 K16 [""]
       60 GETTABLEKS                       R10 R3 K17 ["EventLogger"]
       62 GETTABLEKS                       R10 R10 K18 ["logMeshGenMeshInserted"]
       64 DUPTABLE                         R11 K25 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       65 SETTABLEKS                       R2 R11 K19 ["requestId"]
       67 SETTABLEKS                       R9 R11 K20 ["generationId"]
       69 SETTABLEKS                       R6 R11 K21 ["success"]
       71 JUMPIFNOT                        R6 ; [+2]
       72 LOADK                            R12 K16 [""]
       73 JUMP                             ; [+5]
       74 FASTCALL1                        TOSTRING R7 ; [+3]
       75 MOVE                             R13 R7
       76 GETIMPORT                        R12 K27 [tostring]
       78 CALL                             R12 1 1
       79 SETTABLEKS                       R12 R11 K22 ["errorMessage"]
       81 GETUPVAL                         R13 3
       82 GETTABLEKS                       R13 R13 K28 ["FFlagAssistantGen3DTelemetryV2"]
       84 JUMPIFNOT                        R13 ; [+2]
       85 LOADK                            R12 K29 ["mesh"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 SETTABLEKS                       R12 R11 K23 ["modelFlow"]
       90 GETUPVAL                         R13 3
       91 GETTABLEKS                       R13 R13 K28 ["FFlagAssistantGen3DTelemetryV2"]
       93 JUMPIFNOT                        R13 ; [+3]
       94 GETTABLEKS                       R12 R4 K24 ["inputFormat"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R12
       98 SETTABLEKS                       R12 R11 K24 ["inputFormat"]
      100 CALL                             R10 1 0
      101 JUMPIF                           R6 ; [+5]
      102 GETIMPORT                        R10 K31 [error]
      104 MOVE                             R11 R7
      105 LOADN                            R12 0
      106 CALL                             R10 2 0
      107 GETUPVAL                         R10 3
      108 GETTABLEKS                       R10 R10 K28 ["FFlagAssistantGen3DTelemetryV2"]
      110 JUMPIFNOT                        R10 ; [+19]
      111 JUMPIFEQKS                       R9 K16 [""] ; [+18]
      113 GETIMPORT                        R10 K34 [os.clock]
      115 CALL                             R10 0 1
      116 LOADNIL                          R11
      117 GETTABLEKS                       R12 R7 K35 ["Destroying"]
      119 NEWCLOSURE                       R14 P1
      120 CAPTURE                          REF R11
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 NAMECALL                         R12 R12 K36 ["Connect"]
      127 CALL                             R12 2 1
      128 MOVE                             R11 R12
      129 CLOSEUPVALS                      R11
      130 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["initArgs"]
        7 GETTABLEKS                       R1 R1 K2 ["environment"]
        9 GETTABLEKS                       R2 R1 K3 ["selection"]
       11 GETTABLEKS                       R2 R2 K4 ["get"]
       13 CALL                             R2 0 1
       14 LENGTH                           R3 R2
       15 JUMPIFEQKN                       R3 K5 [1] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEN                        R3 R2 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["BOUNDING_BOX_INSTANCE_TYPE"]
       22 NAMECALL                         R4 R3 K7 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R1 K8 ["instances"]
       29 GETTABLEKS                       R4 R4 K9 ["getUniqueId"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 DUPTABLE                         R5 K13 [{"uniqueId", "name", "className"}]
       34 SETTABLEKS                       R4 R5 K10 ["uniqueId"]
       36 GETTABLEKS                       R6 R3 K14 ["Name"]
       38 SETTABLEKS                       R6 R5 K11 ["name"]
       40 GETTABLEKS                       R6 R3 K15 ["ClassName"]
       42 SETTABLEKS                       R6 R5 K12 ["className"]
       44 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["initArgs"]
        8 GETTABLEKS                       R1 R1 K2 ["environment"]
       10 GETIMPORT                        R2 K4 [workspace]
       12 GETTABLEKS                       R2 R2 K5 ["CurrentCamera"]
       14 JUMPIFNOT                        R2 ; [+11]
       15 GETTABLEKS                       R4 R2 K6 ["CFrame"]
       17 GETTABLEKS                       R4 R4 K7 ["Position"]
       19 GETTABLEKS                       R6 R2 K6 ["CFrame"]
       21 GETTABLEKS                       R6 R6 K9 ["LookVector"]
       23 MULK                             R5 R6 K8 [10]
       24 ADD                              R3 R4 R5
       25 JUMP                             ; [+1]
       26 LOADK                            R3 K10 [{0, 0, 0}]
       27 GETIMPORT                        R4 K12 [CFrame.new]
       29 GETTABLEKS                       R6 R3 K13 ["X"]
       31 LOADK                            R7 K14 [1.5]
       32 GETTABLEKS                       R8 R3 K15 ["Z"]
       34 FASTCALL                         VECTOR ; [+2]
       35 GETIMPORT                        R5 K17 [Vector3.new]
       37 CALL                             R5 3 1
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K19 [Instance.new]
       41 LOADK                            R6 K20 ["Part"]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K21 ["VIEWPORT_BOUNDING_BOX_NAME"]
       46 SETTABLEKS                       R6 R5 K22 ["Name"]
       48 LOADK                            R6 K23 [{6, 3, 6}]
       49 SETTABLEKS                       R6 R5 K24 ["Size"]
       51 SETTABLEKS                       R4 R5 K6 ["CFrame"]
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R5 K25 ["Anchored"]
       56 LOADK                            R6 K26 [0.6]
       57 SETTABLEKS                       R6 R5 K27 ["Transparency"]
       59 GETIMPORT                        R6 K30 [Color3.fromRGB]
       61 LOADN                            R7 0
       62 LOADN                            R8 170
       63 LOADN                            R9 255
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K31 ["Color"]
       67 GETIMPORT                        R6 K35 [Enum.Material.SmoothPlastic]
       69 SETTABLEKS                       R6 R5 K33 ["Material"]
       71 GETIMPORT                        R6 K4 [workspace]
       73 SETTABLEKS                       R6 R5 K36 ["Parent"]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K37 ["VIEWPORT_BOUNDING_BOX_TAG"]
       78 NAMECALL                         R6 R5 K38 ["AddTag"]
       80 CALL                             R6 2 0
       81 GETTABLEKS                       R6 R1 K39 ["instances"]
       83 GETTABLEKS                       R6 R6 K40 ["getUniqueId"]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R7 R1 K41 ["selection"]
       89 GETTABLEKS                       R7 R7 K42 ["set"]
       91 NEWTABLE                         R8 0 1
       93 MOVE                             R9 R5
       94 SETLIST                          R8 R9 1 [1]
       96 CALL                             R7 1 0
       97 GETTABLEKS                       R7 R1 K43 ["tools"]
       99 GETTABLEKS                       R7 R7 K44 ["meshGen"]
      101 GETTABLEKS                       R7 R7 K45 ["activateScaleTool"]
      103 CALL                             R7 0 0
      104 DUPTABLE                         R7 K49 [{"uniqueId", "name", "className"}]
      105 SETTABLEKS                       R6 R7 K46 ["uniqueId"]
      107 GETTABLEKS                       R8 R5 K22 ["Name"]
      109 SETTABLEKS                       R8 R7 K47 ["name"]
      111 GETTABLEKS                       R8 R5 K50 ["ClassName"]
      113 SETTABLEKS                       R8 R7 K48 ["className"]
      115 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["uniqueId"]
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETTABLEKS                       R2 R1 K2 ["initArgs"]
       10 GETTABLEKS                       R2 R2 K3 ["environment"]
       12 GETTABLEKS                       R2 R2 K4 ["instances"]
       14 GETTABLEKS                       R2 R2 K5 ["getInstanceFromUniqueId"]
       16 GETTABLEKS                       R3 R0 K1 ["uniqueId"]
       18 CALL                             R2 1 1
       19 JUMPIFNOT                        R2 ; [+4]
       20 NAMECALL                         R3 R2 K6 ["Destroy"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K7 ["FFlagDebugLogAssistantUI"]
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETIMPORT                        R2 K9 [warn]
       30 LOADK                            R3 K10 ["[MeshGen] destroyViewportBoundingBoxAsync: uniqueId lookup failed, skipping cleanup"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["peekGenerationSession"]
        3 GETTABLEKS                       R3 R0 K1 ["toolUseId"]
        5 CALL                             R2 1 1
        6 LOADB                            R3 0
        7 JUMPIFEQKNIL                     R2 ; [+12]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R2 K2 ["previewAssets"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R2 K3 ["publishedAssets"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

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
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Guest"]
       29 GETTABLEKS                       R5 R5 K13 ["Environment"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Flags"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K11 [require]
       46 GETTABLEKS                       R8 R0 K17 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K11 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Util"]
       53 GETTABLEKS                       R9 R9 K18 ["InstanceChannel"]
       55 GETTABLEKS                       R9 R9 K18 ["InstanceChannel"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K11 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Util"]
       62 GETTABLEKS                       R10 R10 K19 ["MeshGen"]
       64 GETTABLEKS                       R10 R10 K20 ["MeshGenAssetManager"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K11 [require]
       69 GETTABLEKS                       R11 R0 K21 ["Bridges"]
       71 GETTABLEKS                       R11 R11 K22 ["createMeshGenBridge"]
       73 GETTABLEKS                       R11 R11 K23 ["MeshGenBridgeTypes"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K11 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Util"]
       80 GETTABLEKS                       R12 R12 K19 ["MeshGen"]
       82 GETTABLEKS                       R12 R12 K24 ["MeshGenChannel"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K11 [require]
       87 GETTABLEKS                       R13 R0 K15 ["Util"]
       89 GETTABLEKS                       R13 R13 K19 ["MeshGen"]
       91 GETTABLEKS                       R13 R13 K25 ["MeshGenConstants"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K11 [require]
       96 GETTABLEKS                       R14 R0 K15 ["Util"]
       98 GETTABLEKS                       R14 R14 K19 ["MeshGen"]
      100 GETTABLEKS                       R14 R14 K26 ["MeshGenTypes"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K11 [require]
      105 GETTABLEKS                       R15 R0 K15 ["Util"]
      107 GETTABLEKS                       R15 R15 K27 ["Gen3dUtils"]
      109 GETTABLEKS                       R15 R15 K28 ["ViewportPreviewUtils"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R12 K29 ["Enums"]
      114 GETTABLEKS                       R16 R12 K30 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      116 NEWTABLE                         R17 0 0
      118 LOADN                            R20 0
      119 SUBK                             R18 R16 K31 [1]
      120 LOADN                            R19 1
      121 FORNPREP                         R18
      122 DUPTABLE                         R23 K35 [{["azimuth"], ["elevation"] = 30}]
      123 DIVRK                            R26 K37 [360] R16
      124 MUL                              R25 R26 R20
      125 ADDK                             R24 R25 K36 [45]
      126 SETTABLEKS                       R24 R23 K32 ["azimuth"]
      128 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      130 MOVE                             R22 R17
      131 GETIMPORT                        R21 K40 [table.insert]
      133 CALL                             R21 2 0
      134 FORNLOOP                         R18
      135 LOADN                            R18 0
      136 LOADN                            R19 0
      137 DUPCLOSURE                       R20 K41 [PROTO_1]
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R17
      144 DUPCLOSURE                       R21 K42 [PROTO_2]
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R9
      147 NEWCLOSURE                       R22 P2
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          REF R19
      155 CAPTURE                          VAL R20
      156 DUPCLOSURE                       R23 K43 [PROTO_5]
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R11
      160 DUPCLOSURE                       R24 K44 [PROTO_6]
      161 DUPCLOSURE                       R25 K45 [PROTO_8]
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R24
      164 DUPCLOSURE                       R26 K46 [PROTO_9]
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R1
      167 DUPCLOSURE                       R27 K47 [PROTO_10]
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R1
      171 NEWCLOSURE                       R28 P8
      172 CAPTURE                          VAL R9
      173 CAPTURE                          REF R18
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R27
      178 CAPTURE                          VAL R6
      179 DUPCLOSURE                       R29 K48 [PROTO_14]
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R12
      182 DUPCLOSURE                       R30 K49 [PROTO_15]
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R12
      185 DUPCLOSURE                       R31 K50 [PROTO_16]
      186 CAPTURE                          VAL R5
      187 DUPCLOSURE                       R32 K51 [PROTO_17]
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R20
      192 DUPCLOSURE                       R33 K52 [PROTO_18]
      193 CAPTURE                          VAL R9
      194 DUPTABLE                         R34 K63 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync", "capturePreviewImagesAsync", "isGenerationCachedAsync"}]
      195 SETTABLEKS                       R22 R34 K53 ["generateAssetsAsync"]
      197 SETTABLEKS                       R23 R34 K54 ["cancelGenerationAsync"]
      199 SETTABLEKS                       R25 R34 K55 ["publishAssetsAsync"]
      201 SETTABLEKS                       R27 R34 K56 ["removeSelectedBoundsAsync"]
      203 SETTABLEKS                       R28 R34 K57 ["insertAssetsAsync"]
      205 SETTABLEKS                       R29 R34 K58 ["getSelectedBoundingBox"]
      207 SETTABLEKS                       R30 R34 K59 ["createViewportBoundingBoxAsync"]
      209 SETTABLEKS                       R31 R34 K60 ["destroyViewportBoundingBoxAsync"]
      211 SETTABLEKS                       R32 R34 K61 ["capturePreviewImagesAsync"]
      213 SETTABLEKS                       R33 R34 K62 ["isGenerationCachedAsync"]
      215 DUPTABLE                         R35 K65 [{"bridge"}]
      216 SETTABLEKS                       R34 R35 K64 ["bridge"]
      218 CLOSEUPVALS                      R18
      219 RETURN                           R35 1
