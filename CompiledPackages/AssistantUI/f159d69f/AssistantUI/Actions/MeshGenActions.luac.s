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
        6 GETUPVAL                         R7 0
        7 JUMPIFNOT                        R7 ; [+6]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["MeshGenConstants"]
       11 GETTABLEKS                       R6 R6 K3 ["NO_SELECTION_ERROR_MESSAGE"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["NO_SELECTION_ERROR_MESSAGE"]
       17 FASTCALL2                        ASSERT R3 R6 ; [+4]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K5 [assert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R8 0
       24 JUMPIFNOT                        R8 ; [+6]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K2 ["MeshGenConstants"]
       28 GETTABLEKS                       R7 R7 K6 ["BOUNDING_BOX_INSTANCE_TYPE"]
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K6 ["BOUNDING_BOX_INSTANCE_TYPE"]
       34 NAMECALL                         R5 R3 K7 ["IsA"]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R7 0
       38 JUMPIFNOT                        R7 ; [+6]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K2 ["MeshGenConstants"]
       42 GETTABLEKS                       R6 R6 K8 ["INVALID_SELECTION_ERROR_MESSAGE"]
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K8 ["INVALID_SELECTION_ERROR_MESSAGE"]
       48 FASTCALL2                        ASSERT R5 R6 ; [+3]
       50 GETIMPORT                        R4 K5 [assert]
       52 CALL                             R4 2 0
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R4 R4 K9 ["getGenerationSession"]
       56 MOVE                             R5 R1
       57 CALL                             R4 1 1
       58 GETTABLEKS                       R5 R4 K10 ["selectedBoundingBox"]
       60 JUMPIFNOT                        R5 ; [+10]
       61 GETTABLEKS                       R6 R5 K11 ["Parent"]
       63 JUMPIFEQKNIL                     R6 ; [+7]
       65 LOADNIL                          R6
       66 SETTABLEKS                       R6 R5 K11 ["Parent"]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R4 K10 ["selectedBoundingBox"]
       71 NAMECALL                         R6 R3 K12 ["Clone"]
       73 CALL                             R6 1 1
       74 GETTABLEKS                       R7 R6 K13 ["Size"]
       76 GETTABLEKS                       R8 R3 K14 ["CFrame"]
       78 SETTABLEKS                       R8 R6 K14 ["CFrame"]
       80 SETTABLEKS                       R6 R4 K15 ["boundingBoxCopy"]
       82 SETTABLEKS                       R3 R4 K10 ["selectedBoundingBox"]
       84 GETUPVAL                         R12 0
       85 JUMPIFNOT                        R12 ; [+6]
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R11 R11 K2 ["MeshGenConstants"]
       89 GETTABLEKS                       R11 R11 K16 ["VIEWPORT_BOUNDING_BOX_TAG"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K16 ["VIEWPORT_BOUNDING_BOX_TAG"]
       95 NAMECALL                         R9 R3 K17 ["HasTag"]
       97 CALL                             R9 2 1
       98 JUMPIFNOT                        R9 ; [+16]
       99 GETUPVAL                         R14 0
      100 JUMPIFNOT                        R14 ; [+6]
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K2 ["MeshGenConstants"]
      104 GETTABLEKS                       R12 R12 K18 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R12 R12 K18 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
      110 MOVE                             R13 R1
      111 CONCAT                           R11 R12 R13
      112 NAMECALL                         R9 R3 K19 ["AddTag"]
      114 CALL                             R9 2 0
      115 RETURN                           R7 1

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
       98 JUMP                             ; [+16]
       99 DUPTABLE                         R12 K32 [{"PredefinedSchema"}]
      100 GETUPVAL                         R14 3
      101 JUMPIFNOT                        R14 ; [+6]
      102 GETUPVAL                         R13 4
      103 GETTABLEKS                       R13 R13 K33 ["MeshGenConstants"]
      105 GETTABLEKS                       R13 R13 K34 ["PREDEFINED_SCHEMA_BODY"]
      107 JUMP                             ; [+5]
      108 GETUPVAL                         R13 5
      109 GETTABLEKS                       R13 R13 K31 ["PredefinedSchema"]
      111 GETTABLEKS                       R13 R13 K35 ["Body1"]
      113 SETTABLEKS                       R13 R12 K31 ["PredefinedSchema"]
      115 GETUPVAL                         R14 0
      116 GETTABLEKS                       R14 R14 K5 ["FFlagAssistantMeshGenRemoveAdminOptions"]
      118 JUMPIFNOT                        R14 ; [+2]
      119 LOADNIL                          R13
      120 JUMP                             ; [+3]
      121 DUPTABLE                         R13 K36 [{"adminOptions"}]
      122 SETTABLEKS                       R7 R13 K6 ["adminOptions"]
      124 GETIMPORT                        R14 K38 [pcall]
      126 NEWCLOSURE                       R15 P0
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          VAL R3
      132 CAPTURE                          REF R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R13
      137 CALL                             R14 1 2
      138 GETUPVAL                         R16 0
      139 GETTABLEKS                       R16 R16 K39 ["FFlagAssistantGen3DTelemetryV2"]
      141 JUMPIFNOT                        R14 ; [+6]
      142 JUMPIFNOT                        R15 ; [+5]
      143 GETTABLEKS                       R17 R15 K40 ["metadata"]
      145 GETTABLEKS                       R17 R17 K41 ["UUID"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R17
      149 GETTABLEKS                       R18 R1 K42 ["EventLogger"]
      151 GETTABLEKS                       R18 R18 K43 ["logMeshGenCompleted"]
      153 DUPTABLE                         R19 K52 [{"requestId", "generationId", "success", "errorMessage", "prompt", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      154 SETTABLEKS                       R2 R19 K44 ["requestId"]
      156 ORK                              R20 R17 K53 [""]
      157 SETTABLEKS                       R20 R19 K45 ["generationId"]
      159 SETTABLEKS                       R14 R19 K46 ["success"]
      161 JUMPIFNOT                        R14 ; [+2]
      162 LOADK                            R20 K53 [""]
      163 JUMP                             ; [+5]
      164 FASTCALL1                        TOSTRING R15 ; [+3]
      165 MOVE                             R21 R15
      166 GETIMPORT                        R20 K55 [tostring]
      168 CALL                             R20 1 1
      169 SETTABLEKS                       R20 R19 K47 ["errorMessage"]
      171 SETTABLEKS                       R3 R19 K48 ["prompt"]
      173 JUMPIFNOT                        R16 ; [+2]
      174 LOADK                            R20 K56 ["mesh"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R20
      177 SETTABLEKS                       R20 R19 K49 ["modelFlow"]
      179 JUMPIFNOT                        R16 ; [+3]
      180 GETTABLEKS                       R20 R10 K23 ["inputFormat"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R20
      184 SETTABLEKS                       R20 R19 K23 ["inputFormat"]
      186 JUMPIFNOT                        R16 ; [+10]
      187 LOADB                            R20 0
      188 JUMPIFEQKNIL                     R6 ; [+9]
      190 LENGTH                           R21 R6
      191 LOADN                            R22 0
      192 JUMPIFLT                         R22 R21 ; [+2]
      194 LOADB                            R20 0 +1
      195 LOADB                            R20 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R20
      198 SETTABLEKS                       R20 R19 K50 ["segmentationEnabled"]
      200 JUMPIFNOT                        R16 ; [+2]
      201 MOVE                             R20 R6
      202 JUMP                             ; [+1]
      203 LOADNIL                          R20
      204 SETTABLEKS                       R20 R19 K51 ["finalParts"]
      206 CALL                             R18 1 0
      207 JUMPIFNOT                        R14 ; [+1]
      208 JUMPIF                           R15 ; [+5]
      209 GETIMPORT                        R18 K58 [error]
      211 MOVE                             R19 R15
      212 LOADN                            R20 0
      213 CALL                             R18 2 0
      214 GETTABLEKS                       R18 R15 K59 ["model"]
      216 GETUPVAL                         R19 0
      217 GETTABLEKS                       R19 R19 K60 ["FFlagPrimGenSchemaSelector"]
      219 JUMPIFNOT                        R19 ; [+12]
      220 LENGTH                           R19 R3
      221 JUMPIFNOTEQKN                    R19 K61 [0] ; [+10]
      223 GETUPVAL                         R19 8
      224 ADDK                             R19 R19 K62 [1]
      225 SETUPVAL                         R19 8
      226 LOADK                            R20 K63 ["MeshGen"]
      227 GETUPVAL                         R21 8
      228 CONCAT                           R19 R20 R21
      229 SETTABLEKS                       R19 R18 K64 ["Name"]
      231 JUMP                             ; [+2]
      232 SETTABLEKS                       R3 R18 K64 ["Name"]
      234 SETTABLEKS                       R18 R10 K65 ["previewAssets"]
      236 LOADNIL                          R19
      237 SETTABLEKS                       R19 R10 K10 ["generationThread"]
      239 GETUPVAL                         R19 9
      240 MOVE                             R20 R2
      241 MOVE                             R21 R18
      242 CALL                             R19 2 0
      243 DUPTABLE                         R19 K66 [{"generationId"}]
      244 GETTABLEKS                       R20 R15 K40 ["metadata"]
      246 GETTABLEKS                       R20 R20 K41 ["UUID"]
      248 SETTABLEKS                       R20 R19 K45 ["generationId"]
      250 CLOSEUPVALS                      R4
      251 RETURN                           R19 1

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
       42 JUMPIFNOT                        R6 ; [+29]
       43 GETUPVAL                         R9 0
       44 JUMPIFNOT                        R9 ; [+6]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K12 ["MeshGenConstants"]
       48 GETTABLEKS                       R8 R8 K13 ["WORLD_CHILD_NAME"]
       50 JUMP                             ; [+1]
       51 LOADK                            R8 K14 ["world"]
       52 NAMECALL                         R6 R4 K15 ["FindFirstChild"]
       54 CALL                             R6 2 1
       55 JUMPIFNOT                        R6 ; [+16]
       56 LOADK                            R9 K10 ["Model"]
       57 NAMECALL                         R7 R6 K6 ["IsA"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+11]
       61 NAMECALL                         R7 R6 K16 ["GetChildren"]
       63 CALL                             R7 1 3
       64 FORGPREP                         R7
       65 SETTABLEKS                       R4 R11 K11 ["Parent"]
       67 FORGLOOP                         R7 2 ; [-3]
       69 NAMECALL                         R7 R6 K17 ["Destroy"]
       71 CALL                             R7 1 0
       72 RETURN                           R4 1

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
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["MeshGenConstants"]
        5 GETTABLEKS                       R2 R2 K1 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       11 MOVE                             R3 R0
       12 CONCAT                           R1 R2 R3
       13 GETUPVAL                         R2 3
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["GetTagged"]
       17 CALL                             R2 2 3
       18 FORGPREP                         R2
       19 NAMECALL                         R7 R6 K3 ["Destroy"]
       21 CALL                             R7 1 0
       22 FORGLOOP                         R2 2 ; [-4]
       24 RETURN                           R0 0

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
       18 JUMPIFNOT                        R4 ; [+22]
       19 GETUPVAL                         R8 1
       20 JUMPIFNOT                        R8 ; [+6]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K5 ["MeshGenConstants"]
       24 GETTABLEKS                       R7 R7 K6 ["VIEWPORT_BOUNDING_BOX_TAG"]
       26 JUMP                             ; [+3]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K6 ["VIEWPORT_BOUNDING_BOX_TAG"]
       30 NAMECALL                         R5 R4 K7 ["HasTag"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+7]
       34 GETTABLEKS                       R6 R4 K8 ["Parent"]
       36 JUMPIFEQKNIL                     R6 ; [+4]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R4 K8 ["Parent"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R2 K4 ["selectedBoundingBox"]
       44 GETUPVAL                         R8 1
       45 JUMPIFNOT                        R8 ; [+6]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K5 ["MeshGenConstants"]
       49 GETTABLEKS                       R6 R6 K9 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K9 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       55 MOVE                             R7 R1
       56 CONCAT                           R5 R6 R7
       57 GETUPVAL                         R6 4
       58 MOVE                             R8 R5
       59 NAMECALL                         R6 R6 K10 ["GetTagged"]
       61 CALL                             R6 2 3
       62 FORGPREP                         R6
       63 NAMECALL                         R11 R10 K3 ["Destroy"]
       65 CALL                             R11 1 0
       66 FORGLOOP                         R6 2 ; [-4]
       68 RETURN                           R0 0

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
       36 JUMPIFNOT                        R2 ; [+91]
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
       52 JUMPIFNOT                        R3 ; [+68]
       53 GETUPVAL                         R8 4
       54 JUMPIFNOT                        R8 ; [+6]
       55 GETUPVAL                         R7 5
       56 GETTABLEKS                       R7 R7 K17 ["MeshGenConstants"]
       58 GETTABLEKS                       R7 R7 K18 ["VIEWPORT_BOUNDING_BOX_TAG"]
       60 JUMP                             ; [+3]
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R7 R7 K18 ["VIEWPORT_BOUNDING_BOX_TAG"]
       64 NAMECALL                         R5 R3 K19 ["HasTag"]
       66 CALL                             R5 2 1
       67 JUMPIFNOT                        R5 ; [+4]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R3 K20 ["Parent"]
       71 JUMP                             ; [+49]
       72 LOADK                            R8 K21 ["Part"]
       73 NAMECALL                         R6 R2 K22 ["IsA"]
       75 CALL                             R6 2 1
       76 JUMPIFNOT                        R6 ; [+44]
       77 LOADK                            R8 K21 ["Part"]
       78 NAMECALL                         R6 R3 K22 ["IsA"]
       80 CALL                             R6 2 1
       81 JUMPIFNOT                        R6 ; [+39]
       82 GETUPVAL                         R7 4
       83 JUMPIFNOT                        R7 ; [+6]
       84 GETUPVAL                         R6 5
       85 GETTABLEKS                       R6 R6 K17 ["MeshGenConstants"]
       87 GETTABLEKS                       R6 R6 K23 ["BOUNDING_BOX_FUZZY_EPSILON"]
       89 JUMP                             ; [+1]
       90 LOADK                            R6 K24 [0.01]
       91 GETTABLEKS                       R7 R3 K25 ["Size"]
       93 GETTABLEKS                       R9 R2 K25 ["Size"]
       95 MOVE                             R10 R6
       96 NAMECALL                         R7 R7 K26 ["FuzzyEq"]
       98 CALL                             R7 3 1
       99 GETTABLEKS                       R8 R3 K27 ["Position"]
      101 GETTABLEKS                       R10 R2 K27 ["Position"]
      103 MOVE                             R11 R6
      104 NAMECALL                         R8 R8 K26 ["FuzzyEq"]
      106 CALL                             R8 3 1
      107 GETTABLEKS                       R9 R3 K28 ["Orientation"]
      109 GETTABLEKS                       R11 R2 K28 ["Orientation"]
      111 MOVE                             R12 R6
      112 NAMECALL                         R9 R9 K26 ["FuzzyEq"]
      114 CALL                             R9 3 1
      115 JUMPIFNOT                        R7 ; [+5]
      116 JUMPIFNOT                        R8 ; [+4]
      117 JUMPIFNOT                        R9 ; [+3]
      118 LOADNIL                          R10
      119 SETTABLEKS                       R10 R3 K20 ["Parent"]
      121 GETUPVAL                         R5 7
      122 DUPTABLE                         R6 K30 [{"toolUseId"}]
      123 GETUPVAL                         R7 2
      124 SETTABLEKS                       R7 R6 K29 ["toolUseId"]
      126 CALL                             R5 1 0
      127 JUMP                             ; [+16]
      128 GETIMPORT                        R3 K10 [warn]
      130 LOADK                            R4 K31 ["[MeshGen] insertAssetsAsync: no boundingBoxCopy — falling back to setPositionOnGround"]
      131 CALL                             R3 1 0
      132 GETUPVAL                         R3 8
      133 GETTABLEKS                       R3 R3 K32 ["setPositionOnGround"]
      135 MOVE                             R4 R1
      136 LOADB                            R5 1
      137 CALL                             R3 2 0
      138 GETUPVAL                         R3 7
      139 DUPTABLE                         R4 K30 [{"toolUseId"}]
      140 GETUPVAL                         R5 2
      141 SETTABLEKS                       R5 R4 K29 ["toolUseId"]
      143 CALL                             R3 1 0
      144 GETIMPORT                        R3 K34 [workspace]
      146 SETTABLEKS                       R3 R1 K20 ["Parent"]
      148 RETURN                           R1 1

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
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CALL                             R5 1 2
       33 GETTABLEKS                       R7 R1 K8 ["endRecording"]
       35 MOVE                             R8 R2
       36 CALL                             R7 1 0
       37 JUMPIFNOT                        R5 ; [+15]
       38 GETUPVAL                         R10 4
       39 JUMPIFNOT                        R10 ; [+6]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K9 ["Constants"]
       43 GETTABLEKS                       R9 R9 K10 ["ATTRIBUTE_AI_GENERATION_ID"]
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R9 R9 K10 ["ATTRIBUTE_AI_GENERATION_ID"]
       49 NAMECALL                         R7 R6 K11 ["GetAttribute"]
       51 CALL                             R7 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 FASTCALL1                        TYPEOF R7 ; [+3]
       55 MOVE                             R10 R7
       56 GETIMPORT                        R9 K13 [typeof]
       58 CALL                             R9 1 1
       59 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+3]
       61 MOVE                             R8 R7
       62 JUMP                             ; [+1]
       63 LOADK                            R8 K15 [""]
       64 GETTABLEKS                       R9 R1 K16 ["EventLogger"]
       66 GETTABLEKS                       R9 R9 K17 ["logMeshGenMeshInserted"]
       68 DUPTABLE                         R10 K24 [{"requestId", "generationId", "success", "errorMessage", "modelFlow", "inputFormat"}]
       69 SETTABLEKS                       R2 R10 K18 ["requestId"]
       71 SETTABLEKS                       R8 R10 K19 ["generationId"]
       73 SETTABLEKS                       R5 R10 K20 ["success"]
       75 JUMPIFNOT                        R5 ; [+2]
       76 LOADK                            R11 K15 [""]
       77 JUMP                             ; [+5]
       78 FASTCALL1                        TOSTRING R6 ; [+3]
       79 MOVE                             R12 R6
       80 GETIMPORT                        R11 K26 [tostring]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K21 ["errorMessage"]
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R12 R12 K27 ["FFlagAssistantGen3DTelemetryV2"]
       88 JUMPIFNOT                        R12 ; [+2]
       89 LOADK                            R11 K28 ["mesh"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R11
       92 SETTABLEKS                       R11 R10 K22 ["modelFlow"]
       94 GETUPVAL                         R12 3
       95 GETTABLEKS                       R12 R12 K27 ["FFlagAssistantGen3DTelemetryV2"]
       97 JUMPIFNOT                        R12 ; [+3]
       98 GETTABLEKS                       R11 R3 K23 ["inputFormat"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K23 ["inputFormat"]
      104 CALL                             R9 1 0
      105 JUMPIF                           R5 ; [+5]
      106 GETIMPORT                        R9 K30 [error]
      108 MOVE                             R10 R6
      109 LOADN                            R11 0
      110 CALL                             R9 2 0
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R9 R9 K27 ["FFlagAssistantGen3DTelemetryV2"]
      114 JUMPIFNOT                        R9 ; [+19]
      115 JUMPIFEQKS                       R8 K15 [""] ; [+18]
      117 GETIMPORT                        R9 K33 [os.clock]
      119 CALL                             R9 0 1
      120 LOADNIL                          R10
      121 GETTABLEKS                       R11 R6 K34 ["Destroying"]
      123 NEWCLOSURE                       R13 P1
      124 CAPTURE                          REF R10
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 NAMECALL                         R11 R11 K35 ["Connect"]
      131 CALL                             R11 2 1
      132 MOVE                             R10 R11
      133 CLOSEUPVALS                      R10
      134 RETURN                           R0 0

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
       15 GETUPVAL                         R6 1
       16 JUMPIFNOT                        R6 ; [+6]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["MeshGenConstants"]
       20 GETTABLEKS                       R5 R5 K5 ["BOUNDING_BOX_INSTANCE_TYPE"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K5 ["BOUNDING_BOX_INSTANCE_TYPE"]
       26 NAMECALL                         R3 R2 K6 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R3 R0 K7 ["instances"]
       33 GETTABLEKS                       R3 R3 K8 ["getUniqueId"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 1
       37 DUPTABLE                         R4 K12 [{"uniqueId", "name", "className"}]
       38 SETTABLEKS                       R3 R4 K9 ["uniqueId"]
       40 GETTABLEKS                       R5 R2 K13 ["Name"]
       42 SETTABLEKS                       R5 R4 K10 ["name"]
       44 GETTABLEKS                       R5 R2 K14 ["ClassName"]
       46 SETTABLEKS                       R5 R4 K11 ["className"]
       48 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSegmentationBridge"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K2 [workspace]
        8 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["MeshGenConstants"]
       15 GETTABLEKS                       R2 R2 K5 ["VIEWPORT_BOUNDING_BOX_DISTANCE"]
       17 JUMP                             ; [+1]
       18 LOADN                            R2 10
       19 JUMPIFNOT                        R1 ; [+11]
       20 GETTABLEKS                       R4 R1 K6 ["CFrame"]
       22 GETTABLEKS                       R4 R4 K7 ["Position"]
       24 GETTABLEKS                       R6 R1 K6 ["CFrame"]
       26 GETTABLEKS                       R6 R6 K8 ["LookVector"]
       28 MUL                              R5 R6 R2
       29 ADD                              R3 R4 R5
       30 JUMP                             ; [+1]
       31 LOADK                            R3 K9 [{0, 0, 0}]
       32 GETUPVAL                         R5 1
       33 JUMPIFNOT                        R5 ; [+6]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K4 ["MeshGenConstants"]
       37 GETTABLEKS                       R4 R4 K10 ["VIEWPORT_BOUNDING_BOX_SIZE"]
       39 JUMP                             ; [+1]
       40 LOADK                            R4 K11 [{6, 3, 6}]
       41 GETIMPORT                        R5 K13 [CFrame.new]
       43 GETTABLEKS                       R7 R3 K14 ["X"]
       45 GETTABLEKS                       R9 R4 K16 ["Y"]
       47 DIVK                             R8 R9 K15 [2]
       48 GETTABLEKS                       R9 R3 K17 ["Z"]
       50 FASTCALL                         VECTOR ; [+2]
       51 GETIMPORT                        R6 K19 [Vector3.new]
       53 CALL                             R6 3 1
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K21 [Instance.new]
       57 LOADK                            R7 K22 ["Part"]
       58 CALL                             R6 1 1
       59 GETUPVAL                         R8 1
       60 JUMPIFNOT                        R8 ; [+6]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K4 ["MeshGenConstants"]
       64 GETTABLEKS                       R7 R7 K23 ["VIEWPORT_BOUNDING_BOX_NAME"]
       66 JUMP                             ; [+3]
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R7 R7 K23 ["VIEWPORT_BOUNDING_BOX_NAME"]
       70 SETTABLEKS                       R7 R6 K24 ["Name"]
       72 SETTABLEKS                       R4 R6 K25 ["Size"]
       74 SETTABLEKS                       R5 R6 K6 ["CFrame"]
       76 LOADB                            R7 1
       77 SETTABLEKS                       R7 R6 K26 ["Anchored"]
       79 LOADK                            R7 K27 [0.6]
       80 SETTABLEKS                       R7 R6 K28 ["Transparency"]
       82 GETIMPORT                        R7 K31 [Color3.fromRGB]
       84 LOADN                            R8 0
       85 LOADN                            R9 170
       86 LOADN                            R10 255
       87 CALL                             R7 3 1
       88 SETTABLEKS                       R7 R6 K32 ["Color"]
       90 GETIMPORT                        R7 K36 [Enum.Material.SmoothPlastic]
       92 SETTABLEKS                       R7 R6 K34 ["Material"]
       94 GETIMPORT                        R7 K2 [workspace]
       96 SETTABLEKS                       R7 R6 K37 ["Parent"]
       98 GETUPVAL                         R10 1
       99 JUMPIFNOT                        R10 ; [+6]
      100 GETUPVAL                         R9 2
      101 GETTABLEKS                       R9 R9 K4 ["MeshGenConstants"]
      103 GETTABLEKS                       R9 R9 K38 ["VIEWPORT_BOUNDING_BOX_TAG"]
      105 JUMP                             ; [+3]
      106 GETUPVAL                         R9 3
      107 GETTABLEKS                       R9 R9 K38 ["VIEWPORT_BOUNDING_BOX_TAG"]
      109 NAMECALL                         R7 R6 K39 ["AddTag"]
      111 CALL                             R7 2 0
      112 GETTABLEKS                       R7 R0 K40 ["instances"]
      114 GETTABLEKS                       R7 R7 K41 ["getUniqueId"]
      116 MOVE                             R8 R6
      117 CALL                             R7 1 1
      118 GETTABLEKS                       R8 R0 K42 ["selection"]
      120 GETTABLEKS                       R8 R8 K43 ["set"]
      122 NEWTABLE                         R9 0 1
      124 MOVE                             R10 R6
      125 SETLIST                          R9 R10 1 [1]
      127 CALL                             R8 1 0
      128 GETTABLEKS                       R8 R0 K44 ["tools"]
      130 GETTABLEKS                       R8 R8 K45 ["meshGen"]
      132 GETTABLEKS                       R8 R8 K46 ["activateScaleTool"]
      134 CALL                             R8 0 0
      135 DUPTABLE                         R8 K50 [{"uniqueId", "name", "className"}]
      136 SETTABLEKS                       R7 R8 K47 ["uniqueId"]
      138 GETTABLEKS                       R9 R6 K24 ["Name"]
      140 SETTABLEKS                       R9 R8 K48 ["name"]
      142 GETTABLEKS                       R9 R6 K51 ["ClassName"]
      144 SETTABLEKS                       R9 R8 K49 ["className"]
      146 RETURN                           R8 1

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
       29 GETTABLEKS                       R6 R4 K13 ["Bin"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R4 K14 ["DMNetworking"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K12 [require]
       39 GETTABLEKS                       R8 R4 K15 ["Gen3dCore"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K12 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Guest"]
       46 GETTABLEKS                       R9 R9 K17 ["Environment"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K12 [require]
       51 GETTABLEKS                       R10 R0 K18 ["Flags"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K12 [require]
       56 GETTABLEKS                       R11 R0 K19 ["Util"]
       58 GETTABLEKS                       R11 R11 K20 ["InstanceChannel"]
       60 GETTABLEKS                       R11 R11 K20 ["InstanceChannel"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K12 [require]
       65 GETTABLEKS                       R12 R0 K19 ["Util"]
       67 GETTABLEKS                       R12 R12 K21 ["MeshGen"]
       69 GETTABLEKS                       R12 R12 K22 ["MeshGenAssetManager"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K12 [require]
       74 GETTABLEKS                       R13 R0 K23 ["Bridges"]
       76 GETTABLEKS                       R13 R13 K24 ["createMeshGenBridge"]
       78 GETTABLEKS                       R13 R13 K25 ["MeshGenBridgeTypes"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K12 [require]
       83 GETTABLEKS                       R14 R0 K19 ["Util"]
       85 GETTABLEKS                       R14 R14 K21 ["MeshGen"]
       87 GETTABLEKS                       R14 R14 K26 ["MeshGenChannel"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K12 [require]
       92 GETTABLEKS                       R15 R0 K19 ["Util"]
       94 GETTABLEKS                       R15 R15 K21 ["MeshGen"]
       96 GETTABLEKS                       R15 R15 K27 ["MeshGenConstants"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K12 [require]
      101 GETTABLEKS                       R16 R0 K28 ["Remotes"]
      103 GETTABLEKS                       R16 R16 K29 ["MeshGenRemotes"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K12 [require]
      108 GETTABLEKS                       R17 R0 K19 ["Util"]
      110 GETTABLEKS                       R17 R17 K21 ["MeshGen"]
      112 GETTABLEKS                       R17 R17 K30 ["MeshGenTypes"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K12 [require]
      117 GETTABLEKS                       R18 R0 K19 ["Util"]
      119 GETTABLEKS                       R18 R18 K31 ["ToolUtils"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K12 [require]
      124 GETTABLEKS                       R19 R0 K32 ["Types"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K12 [require]
      129 GETTABLEKS                       R20 R0 K19 ["Util"]
      131 GETTABLEKS                       R20 R20 K33 ["Gen3dUtils"]
      133 GETTABLEKS                       R20 R20 K34 ["ViewportPreviewUtils"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K12 [require]
      138 GETTABLEKS                       R21 R0 K19 ["Util"]
      140 GETTABLEKS                       R21 R21 K35 ["createCancellableHandlers"]
      142 CALL                             R20 1 1
      143 GETTABLEKS                       R21 R7 K36 ["getFFlagGen3dSharedMeshGenOps"]
      145 CALL                             R21 0 1
      146 GETTABLEKS                       R22 R14 K37 ["Enums"]
      148 GETTABLEKS                       R23 R14 K38 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      150 NEWTABLE                         R24 0 0
      152 LOADN                            R27 0
      153 SUBK                             R25 R23 K39 [1]
      154 LOADN                            R26 1
      155 FORNPREP                         R25
      156 DUPTABLE                         R30 K43 [{["azimuth"], ["elevation"] = 30}]
      157 DIVRK                            R33 K45 [360] R23
      158 MUL                              R32 R33 R27
      159 ADDK                             R31 R32 K44 [45]
      160 SETTABLEKS                       R31 R30 K40 ["azimuth"]
      162 FASTCALL2                        TABLE_INSERT R24 R30 ; [+4]
      164 MOVE                             R29 R24
      165 GETIMPORT                        R28 K48 [table.insert]
      167 CALL                             R28 2 0
      168 FORNLOOP                         R25
      169 LOADN                            R25 0
      170 LOADN                            R26 0
      171 DUPCLOSURE                       R27 K49 [PROTO_1]
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R24
      178 DUPCLOSURE                       R28 K50 [PROTO_2]
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R11
      183 NEWCLOSURE                       R29 P2
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R3
      192 CAPTURE                          REF R26
      193 CAPTURE                          VAL R27
      194 DUPCLOSURE                       R30 K51 [PROTO_5]
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R13
      198 DUPCLOSURE                       R31 K52 [PROTO_6]
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R7
      201 DUPCLOSURE                       R32 K53 [PROTO_8]
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R31
      204 DUPCLOSURE                       R33 K54 [PROTO_9]
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R1
      209 DUPCLOSURE                       R34 K55 [PROTO_10]
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R1
      215 NEWCLOSURE                       R35 P8
      216 CAPTURE                          VAL R11
      217 CAPTURE                          REF R25
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R34
      224 CAPTURE                          VAL R17
      225 DUPCLOSURE                       R36 K56 [PROTO_14]
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R14
      230 DUPCLOSURE                       R37 K57 [PROTO_15]
      231 CAPTURE                          VAL R9
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R14
      235 DUPCLOSURE                       R38 K58 [PROTO_16]
      236 CAPTURE                          VAL R9
      237 DUPCLOSURE                       R39 K59 [PROTO_17]
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R27
      242 DUPCLOSURE                       R40 K60 [PROTO_18]
      243 CAPTURE                          VAL R11
      244 DUPTABLE                         R41 K71 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync", "capturePreviewImagesAsync", "isGenerationCachedAsync"}]
      245 DUPCLOSURE                       R42 K72 [PROTO_19]
      246 CAPTURE                          VAL R29
      247 SETTABLEKS                       R42 R41 K61 ["generateAssetsAsync"]
      249 DUPCLOSURE                       R42 K73 [PROTO_20]
      250 CAPTURE                          VAL R30
      251 SETTABLEKS                       R42 R41 K62 ["cancelGenerationAsync"]
      253 DUPCLOSURE                       R42 K74 [PROTO_21]
      254 CAPTURE                          VAL R32
      255 SETTABLEKS                       R42 R41 K63 ["publishAssetsAsync"]
      257 DUPCLOSURE                       R42 K75 [PROTO_22]
      258 CAPTURE                          VAL R34
      259 SETTABLEKS                       R42 R41 K64 ["removeSelectedBoundsAsync"]
      261 DUPCLOSURE                       R42 K76 [PROTO_23]
      262 CAPTURE                          VAL R35
      263 SETTABLEKS                       R42 R41 K65 ["insertAssetsAsync"]
      265 DUPCLOSURE                       R42 K77 [PROTO_24]
      266 CAPTURE                          VAL R36
      267 SETTABLEKS                       R42 R41 K66 ["getSelectedBoundingBox"]
      269 DUPCLOSURE                       R42 K78 [PROTO_25]
      270 CAPTURE                          VAL R37
      271 SETTABLEKS                       R42 R41 K67 ["createViewportBoundingBoxAsync"]
      273 DUPCLOSURE                       R42 K79 [PROTO_26]
      274 CAPTURE                          VAL R38
      275 SETTABLEKS                       R42 R41 K68 ["destroyViewportBoundingBoxAsync"]
      277 DUPCLOSURE                       R42 K80 [PROTO_27]
      278 CAPTURE                          VAL R39
      279 SETTABLEKS                       R42 R41 K69 ["capturePreviewImagesAsync"]
      281 DUPCLOSURE                       R42 K81 [PROTO_28]
      282 CAPTURE                          VAL R11
      283 SETTABLEKS                       R42 R41 K70 ["isGenerationCachedAsync"]
      285 DUPCLOSURE                       R42 K82 [PROTO_42]
      286 CAPTURE                          VAL R15
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R29
      290 CAPTURE                          VAL R30
      291 CAPTURE                          VAL R32
      292 CAPTURE                          VAL R34
      293 CAPTURE                          VAL R35
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R37
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R39
      298 CAPTURE                          VAL R11
      299 DUPTABLE                         R43 K85 [{"bridge", "connectRemotes"}]
      300 SETTABLEKS                       R41 R43 K83 ["bridge"]
      302 SETTABLEKS                       R42 R43 K84 ["connectRemotes"]
      304 CLOSEUPVALS                      R25
      305 RETURN                           R43 1
