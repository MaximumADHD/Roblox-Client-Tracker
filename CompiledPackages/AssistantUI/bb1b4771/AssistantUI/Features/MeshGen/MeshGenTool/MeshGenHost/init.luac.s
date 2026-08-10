PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["environment"]
        4 GETTABLEKS                       R3 R3 K2 ["instances"]
        6 GETTABLEKS                       R3 R3 K3 ["getInstanceFromUniqueId"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+7]
       11 GETIMPORT                        R4 K5 [error]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["NO_SELECTION_ERROR_MESSAGE"]
       16 LOADN                            R6 0
       17 CALL                             R4 2 0
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K7 ["BOUNDING_BOX_INSTANCE_TYPE"]
       21 NAMECALL                         R4 R3 K8 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+7]
       25 GETIMPORT                        R4 K5 [error]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["INVALID_SELECTION_ERROR_MESSAGE"]
       30 LOADN                            R6 0
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K10 ["getGenerationSession"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["selectedBoundingBox"]
       39 JUMPIFNOT                        R5 ; [+10]
       40 GETTABLEKS                       R6 R5 K12 ["Parent"]
       42 JUMPIFEQKNIL                     R6 ; [+7]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K12 ["Parent"]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R4 K11 ["selectedBoundingBox"]
       50 NAMECALL                         R6 R3 K13 ["Clone"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K14 ["Size"]
       55 GETTABLEKS                       R8 R3 K15 ["CFrame"]
       57 SETTABLEKS                       R8 R6 K15 ["CFrame"]
       59 SETTABLEKS                       R6 R4 K16 ["boundingBoxCopy"]
       61 SETTABLEKS                       R3 R4 K11 ["selectedBoundingBox"]
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K17 ["VIEWPORT_BOUNDING_BOX_TAG"]
       66 NAMECALL                         R9 R3 K18 ["HasTag"]
       68 CALL                             R9 2 1
       69 JUMPIFNOT                        R9 ; [+8]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K19 ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"]
       73 MOVE                             R13 R1
       74 CONCAT                           R11 R12 R13
       75 NAMECALL                         R9 R3 K20 ["AddTag"]
       77 CALL                             R9 2 0
       78 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["meshGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateModelAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 2
       11 DUPTABLE                         R2 K5 [{"model", "metadata"}]
       12 SETTABLEKS                       R0 R2 K3 ["model"]
       14 SETTABLEKS                       R1 R2 K4 ["metadata"]
       16 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K5 [{"TextPrompt", "Size", "MaxTriangles", "GenerateTextures", "Image"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["TextPrompt"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["Size"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["MaxTriangles"]
       10 SETTABLEKS                       R0 R1 K3 ["GenerateTextures"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K4 ["Image"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADNIL                          R2
       20 JUMP                             ; [+4]
       21 DUPTABLE                         R2 K8 [{"adminOptions"}]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K7 ["adminOptions"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K9 ["FFlagDebugLogAssistantUI"]
       28 JUMPIFNOT                        R3 ; [+63]
       29 GETIMPORT                        R3 K11 [warn]
       31 LOADK                            R4 K12 ["[MeshGen] generateModelAsync:"]
       32 GETUPVAL                         R5 6
       33 DUPTABLE                         R7 K16 [{"inputs", "schema", "options"}]
       34 DUPTABLE                         R8 K18 [{"TextPrompt", "Size", "MaxTriangles", "GenerateTextures", "HasImage"}]
       35 GETTABLEKS                       R9 R1 K0 ["TextPrompt"]
       37 SETTABLEKS                       R9 R8 K0 ["TextPrompt"]
       39 GETTABLEKS                       R10 R1 K1 ["Size"]
       41 JUMPIFNOT                        R10 ; [+20]
       42 DUPTABLE                         R9 K22 [{"X", "Y", "Z"}]
       43 GETTABLEKS                       R10 R1 K1 ["Size"]
       45 GETTABLEKS                       R10 R10 K19 ["X"]
       47 SETTABLEKS                       R10 R9 K19 ["X"]
       49 GETTABLEKS                       R10 R1 K1 ["Size"]
       51 GETTABLEKS                       R10 R10 K20 ["Y"]
       53 SETTABLEKS                       R10 R9 K20 ["Y"]
       55 GETTABLEKS                       R10 R1 K1 ["Size"]
       57 GETTABLEKS                       R10 R10 K21 ["Z"]
       59 SETTABLEKS                       R10 R9 K21 ["Z"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K1 ["Size"]
       65 GETTABLEKS                       R9 R1 K2 ["MaxTriangles"]
       67 SETTABLEKS                       R9 R8 K2 ["MaxTriangles"]
       69 GETTABLEKS                       R9 R1 K3 ["GenerateTextures"]
       71 SETTABLEKS                       R9 R8 K3 ["GenerateTextures"]
       73 GETTABLEKS                       R10 R1 K4 ["Image"]
       75 JUMPIFNOTEQKNIL                  R10 ; [+2]
       77 LOADB                            R9 0 +1
       78 LOADB                            R9 1
       79 SETTABLEKS                       R9 R8 K17 ["HasImage"]
       81 SETTABLEKS                       R8 R7 K13 ["inputs"]
       83 GETUPVAL                         R8 7
       84 SETTABLEKS                       R8 R7 K14 ["schema"]
       86 SETTABLEKS                       R2 R7 K15 ["options"]
       88 NAMECALL                         R5 R5 K23 ["JSONEncode"]
       90 CALL                             R5 2 -1
       91 CALL                             R3 -1 0
       92 GETIMPORT                        R3 K25 [pcall]
       94 NEWCLOSURE                       R4 P0
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          VAL R1
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          VAL R2
       99 CALL                             R3 1 2
      100 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["bridge"]
        3 GETTABLEKS                       R2 R2 K1 ["setPreviewImage"]
        5 DUPTABLE                         R3 K4 [{"index", "image"}]
        6 SETTABLEKS                       R0 R3 K2 ["index"]
        8 SETTABLEKS                       R1 R3 K3 ["image"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
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
       35 LOADK                            R13 K11 ["Generation thread already exists for requestId"]
       36 GETIMPORT                        R11 K13 [assert]
       38 CALL                             R11 2 0
       39 GETIMPORT                        R11 K16 [coroutine.running]
       41 CALL                             R11 0 1
       42 SETTABLEKS                       R11 R10 K10 ["generationThread"]
       44 GETTABLEKS                       R11 R1 K17 ["initArgs"]
       46 GETTABLEKS                       R11 R11 K18 ["environment"]
       48 JUMPIFNOT                        R9 ; [+8]
       49 GETUPVAL                         R12 2
       50 MOVE                             R13 R1
       51 MOVE                             R14 R2
       52 MOVE                             R15 R9
       53 CALL                             R12 3 1
       54 JUMPIFNOT                        R12 ; [+10]
       55 MOVE                             R4 R12
       56 JUMP                             ; [+8]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K19 ["FFlagDebugLogAssistantUI"]
       60 JUMPIFNOT                        R12 ; [+4]
       61 GETIMPORT                        R12 K21 [warn]
       63 LOADK                            R13 K22 ["[MeshGen] generateAssetsAsync: selectedUniqueId is nil, bounding box will not be used"]
       64 CALL                             R12 1 0
       65 JUMPIFEQKNIL                     R6 ; [+11]
       67 DUPTABLE                         R12 K24 [{"SchemaDefinition"}]
       68 NEWTABLE                         R13 1 0
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K25 ["DFStringGenerationServiceSchemaDefinitionPartsKey"]
       73 SETTABLE                         R6 R13 R14
       74 SETTABLEKS                       R13 R12 K23 ["SchemaDefinition"]
       76 JUMP                             ; [+8]
       77 DUPTABLE                         R12 K27 [{"PredefinedSchema"}]
       78 GETUPVAL                         R13 3
       79 GETTABLEKS                       R13 R13 K26 ["PredefinedSchema"]
       81 GETTABLEKS                       R13 R13 K28 ["Body1"]
       83 SETTABLEKS                       R13 R12 K26 ["PredefinedSchema"]
       85 LOADNIL                          R13
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R14 R14 K29 ["FFlagAssistantMeshGenHintImage"]
       89 JUMPIFNOT                        R14 ; [+81]
       90 JUMPIFNOT                        R8 ; [+80]
       91 GETTABLEKS                       R14 R11 K30 ["getUserId"]
       93 CALL                             R14 0 1
       94 GETIMPORT                        R15 K33 [buffer.tostring]
       96 GETUPVAL                         R16 4
       97 GETIMPORT                        R18 K35 [buffer.fromstring]
       99 GETTABLEKS                       R19 R8 K36 ["data"]
      101 CALL                             R18 1 -1
      102 NAMECALL                         R16 R16 K37 ["Base64Decode"]
      104 CALL                             R16 -1 -1
      105 CALL                             R15 -1 1
      106 DUPTABLE                         R16 K51 [{["AssetType"] = "Image", ["AssetName"], ["Description"] = "Hint image for mesh generation", ["AssetId"] = , ["CreatorId"], ["CreatorType"], ["ContentType"] = "", ["Token"] = "", ["AdditionalParameters"]}]
      107 LOADK                            R18 K52 ["MeshGenHintImage_"]
      108 FASTCALL1                        TOSTRING R14 ; [+3]
      109 MOVE                             R23 R14
      110 GETIMPORT                        R22 K53 [tostring]
      112 CALL                             R22 1 1
      113 MOVE                             R19 R22
      114 LOADK                            R20 K54 ["_"]
      115 GETIMPORT                        R22 K57 [os.time]
      117 CALL                             R22 0 -1
      118 FASTCALL                         TOSTRING ; [+2]
      119 GETIMPORT                        R21 K53 [tostring]
      121 CALL                             R21 -1 1
      122 CONCAT                           R17 R18 R21
      123 SETTABLEKS                       R17 R16 K40 ["AssetName"]
      125 SETTABLEKS                       R14 R16 K45 ["CreatorId"]
      127 GETIMPORT                        R17 K61 [Enum.AssetCreatorType.User]
      129 SETTABLEKS                       R17 R16 K46 ["CreatorType"]
      131 DUPTABLE                         R17 K64 [{["PublishAsPackage"] = False}]
      132 SETTABLEKS                       R17 R16 K50 ["AdditionalParameters"]
      134 GETTABLEKS                       R17 R11 K65 ["tools"]
      136 GETTABLEKS                       R17 R17 K66 ["uploadImage"]
      138 GETTABLEKS                       R17 R17 K67 ["publishAssetAsync"]
      140 MOVE                             R18 R15
      141 MOVE                             R19 R16
      142 CALL                             R17 2 1
      143 GETIMPORT                        R18 K70 [Content.fromUri]
      145 LOADK                            R20 K71 ["rbxassetid://"]
      146 GETTABLEKS                       R22 R17 K43 ["AssetId"]
      148 FASTCALL1                        TOSTRING R22 ; [+2]
      149 GETIMPORT                        R21 K53 [tostring]
      151 CALL                             R21 1 1
      152 CONCAT                           R19 R20 R21
      153 CALL                             R18 1 1
      154 MOVE                             R13 R18
      155 GETUPVAL                         R18 0
      156 GETTABLEKS                       R18 R18 K19 ["FFlagDebugLogAssistantUI"]
      158 JUMPIFNOT                        R18 ; [+12]
      159 GETIMPORT                        R18 K21 [warn]
      161 LOADK                            R19 K72 ["[MeshGen] hint image uploaded, assetId:"]
      162 GETTABLEKS                       R20 R17 K43 ["AssetId"]
      164 LOADK                            R21 K73 ["content:"]
      165 FASTCALL1                        TOSTRING R13 ; [+3]
      166 MOVE                             R23 R13
      167 GETIMPORT                        R22 K53 [tostring]
      169 CALL                             R22 1 1
      170 CALL                             R18 4 0
      171 NEWCLOSURE                       R14 P0
      172 CAPTURE                          VAL R3
      173 CAPTURE                          REF R4
      174 CAPTURE                          VAL R5
      175 CAPTURE                          REF R13
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          VAL R7
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R11
      181 MOVE                             R15 R14
      182 LOADB                            R16 1
      183 CALL                             R15 1 1
      184 FASTCALL2K                       ASSERT R15 K74 ; [+5]
      186 MOVE                             R17 R15
      187 LOADK                            R18 K74 ["MeshGen generation failed"]
      188 GETIMPORT                        R16 K13 [assert]
      190 CALL                             R16 2 0
      191 FASTCALL1                        TYPEOF R15 ; [+3]
      192 MOVE                             R19 R15
      193 GETIMPORT                        R18 K76 [typeof]
      195 CALL                             R18 1 1
      196 JUMPIFNOTEQKS                    R18 K77 ["string"] ; [+2]
      198 LOADB                            R17 0 +1
      199 LOADB                            R17 1
      200 LOADK                            R19 K78 ["MeshGen generation failed: "]
      201 FASTCALL1                        TOSTRING R15 ; [+3]
      202 MOVE                             R21 R15
      203 GETIMPORT                        R20 K53 [tostring]
      205 CALL                             R20 1 1
      206 CONCAT                           R18 R19 R20
      207 FASTCALL2                        ASSERT R17 R18 ; [+3]
      209 GETIMPORT                        R16 K13 [assert]
      211 CALL                             R16 2 0
      212 GETTABLEKS                       R16 R15 K79 ["model"]
      214 GETUPVAL                         R17 0
      215 GETTABLEKS                       R17 R17 K80 ["FFlagPrimGenSchemaSelector"]
      217 JUMPIFNOT                        R17 ; [+12]
      218 LENGTH                           R17 R3
      219 JUMPIFNOTEQKN                    R17 K81 [0] ; [+10]
      221 GETUPVAL                         R17 6
      222 ADDK                             R17 R17 K82 [1]
      223 SETUPVAL                         R17 6
      224 LOADK                            R18 K83 ["MeshGen"]
      225 GETUPVAL                         R19 6
      226 CONCAT                           R17 R18 R19
      227 SETTABLEKS                       R17 R16 K84 ["Name"]
      229 JUMP                             ; [+2]
      230 SETTABLEKS                       R3 R16 K84 ["Name"]
      232 SETTABLEKS                       R16 R10 K85 ["previewAssets"]
      234 GETTABLEKS                       R17 R1 K86 ["callArgs"]
      236 GETTABLEKS                       R17 R17 K87 ["isThirdPartyRequest"]
      238 JUMPIF                           R17 ; [+14]
      239 GETUPVAL                         R17 7
      240 GETTABLEKS                       R17 R17 K88 ["capturePreviewImages"]
      242 MOVE                             R18 R16
      243 NEWCLOSURE                       R19 P1
      244 CAPTURE                          VAL R1
      245 GETUPVAL                         R21 0
      246 GETTABLEKS                       R21 R21 K89 ["FFlagAssistantMeshGenCarouselPreview"]
      248 JUMPIFNOT                        R21 ; [+2]
      249 GETUPVAL                         R20 8
      250 JUMP                             ; [+1]
      251 LOADNIL                          R20
      252 CALL                             R17 3 0
      253 DUPTABLE                         R17 K91 [{"generationId"}]
      254 GETTABLEKS                       R18 R15 K92 ["metadata"]
      256 GETTABLEKS                       R18 R18 K93 ["UUID"]
      258 SETTABLEKS                       R18 R17 K90 ["generationId"]
      260 CLOSEUPVALS                      R4
      261 RETURN                           R17 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
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
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["generationId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["getGenerationSession"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R4 K3 ["previewAssets"]
       11 FASTCALL2K                       ASSERT R5 K4 ; [+5]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K4 ["PreviewAssets not found"]
       15 GETIMPORT                        R6 K6 [assert]
       17 CALL                             R6 2 0
       18 LOADK                            R9 K7 ["PVInstance"]
       19 NAMECALL                         R7 R5 K8 ["IsA"]
       21 CALL                             R7 2 1
       22 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       24 LOADK                            R8 K9 ["PreviewAssets is not a PVInstance"]
       25 GETIMPORT                        R6 K6 [assert]
       27 CALL                             R6 2 0
       28 GETTABLEKS                       R6 R1 K10 ["initArgs"]
       30 GETTABLEKS                       R6 R6 K11 ["environment"]
       32 GETTABLEKS                       R6 R6 K12 ["tools"]
       34 GETTABLEKS                       R6 R6 K13 ["meshGen"]
       36 GETTABLEKS                       R7 R6 K14 ["publishModelAsync"]
       38 MOVE                             R8 R3
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R6 K15 ["loadAssetAsync"]
       42 GETTABLEKS                       R10 R7 K16 ["assetId"]
       44 FASTCALL1                        TOSTRING R10 ; [+2]
       45 GETIMPORT                        R9 K18 [tostring]
       47 CALL                             R9 1 1
       48 CALL                             R8 1 1
       49 LOADNIL                          R9
       50 LENGTH                           R10 R8
       51 LOADN                            R11 1
       52 JUMPIFNOTLT                      R11 R10 ; [+15]
       54 GETIMPORT                        R10 K21 [Instance.new]
       56 LOADK                            R11 K22 ["Model"]
       57 CALL                             R10 1 1
       58 MOVE                             R9 R10
       59 MOVE                             R10 R8
       60 LOADNIL                          R11
       61 LOADNIL                          R12
       62 FORGPREP                         R10
       63 SETTABLEKS                       R9 R14 K23 ["Parent"]
       65 FORGLOOP                         R10 2 ; [-3]
       67 JUMP                             ; [+23]
       68 LENGTH                           R10 R8
       69 JUMPIFNOTEQKN                    R10 K24 [1] ; [+17]
       71 GETTABLEN                        R10 R8 1
       72 LOADK                            R13 K7 ["PVInstance"]
       73 NAMECALL                         R11 R10 K8 ["IsA"]
       75 CALL                             R11 2 1
       76 JUMPIFNOT                        R11 ; [+2]
       77 MOVE                             R9 R10
       78 JUMP                             ; [+12]
       79 GETIMPORT                        R11 K21 [Instance.new]
       81 LOADK                            R12 K22 ["Model"]
       82 CALL                             R11 1 1
       83 MOVE                             R9 R11
       84 SETTABLEKS                       R9 R10 K23 ["Parent"]
       86 JUMP                             ; [+4]
       87 GETIMPORT                        R10 K26 [error]
       89 LOADK                            R11 K27 ["No instances were loaded from the published asset"]
       90 CALL                             R10 1 0
       91 LOADK                            R12 K22 ["Model"]
       92 NAMECALL                         R10 R9 K8 ["IsA"]
       94 CALL                             R10 2 1
       95 JUMPIFNOT                        R10 ; [+21]
       96 LOADK                            R12 K28 ["world"]
       97 NAMECALL                         R10 R9 K29 ["FindFirstChild"]
       99 CALL                             R10 2 1
      100 JUMPIFNOT                        R10 ; [+16]
      101 LOADK                            R13 K22 ["Model"]
      102 NAMECALL                         R11 R10 K8 ["IsA"]
      104 CALL                             R11 2 1
      105 JUMPIFNOT                        R11 ; [+11]
      106 NAMECALL                         R11 R10 K30 ["GetChildren"]
      108 CALL                             R11 1 3
      109 FORGPREP                         R11
      110 SETTABLEKS                       R9 R15 K23 ["Parent"]
      112 FORGLOOP                         R11 2 ; [-3]
      114 NAMECALL                         R11 R10 K31 ["Destroy"]
      116 CALL                             R11 1 0
      117 GETTABLEKS                       R10 R5 K32 ["Name"]
      119 SETTABLEKS                       R10 R9 K32 ["Name"]
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K33 ["markAsAIGeneratedAsset"]
      124 MOVE                             R11 R9
      125 MOVE                             R12 R3
      126 CALL                             R10 2 0
      127 NEWTABLE                         R10 0 0
      129 NAMECALL                         R11 R9 K34 ["GetDescendants"]
      131 CALL                             R11 1 1
      132 FASTCALL2                        TABLE_INSERT R11 R9 ; [+5]
      134 MOVE                             R13 R11
      135 MOVE                             R14 R9
      136 GETIMPORT                        R12 K37 [table.insert]
      138 CALL                             R12 2 0
      139 MOVE                             R12 R11
      140 LOADNIL                          R13
      141 LOADNIL                          R14
      142 FORGPREP                         R12
      143 LOADK                            R19 K38 ["MeshPart"]
      144 NAMECALL                         R17 R16 K8 ["IsA"]
      146 CALL                             R17 2 1
      147 JUMPIFNOT                        R17 ; [+15]
      148 DUPTABLE                         R19 K41 [{"meshId", "textureId"}]
      149 GETTABLEKS                       R20 R16 K42 ["MeshId"]
      151 SETTABLEKS                       R20 R19 K39 ["meshId"]
      153 GETTABLEKS                       R20 R16 K43 ["TextureID"]
      155 SETTABLEKS                       R20 R19 K40 ["textureId"]
      157 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      159 MOVE                             R18 R10
      160 GETIMPORT                        R17 K37 [table.insert]
      162 CALL                             R17 2 0
      163 FORGLOOP                         R12 2 ; [-21]
      165 GETTABLEKS                       R12 R0 K44 ["hasPredeterminedSize"]
      167 JUMPIF                           R12 ; [+5]
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R12 R12 K45 ["scaleUpToMinimumSize"]
      171 MOVE                             R13 R9
      172 CALL                             R12 1 0
      173 LOADNIL                          R12
      174 SETTABLEKS                       R12 R4 K3 ["previewAssets"]
      176 SETTABLEKS                       R9 R4 K46 ["publishedAssets"]
      178 DUPTABLE                         R12 K48 [{"assets"}]
      179 SETTABLEKS                       R10 R12 K47 ["assets"]
      181 RETURN                           R12 1

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["reportGeneratedInstanceDeleted"]
        5 DUPTABLE                         R1 K5 [{"requestId", "generationId", "secondsSinceInsertion"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["generationId"]
       12 GETIMPORT                        R3 K8 [os.clock]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 3
       16 SUB                              R2 R3 R4
       17 SETTABLEKS                       R2 R1 K4 ["secondsSinceInsertion"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K2 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        4 GETTABLEKS                       R3 R3 K2 ["environment"]
        6 GETUPVAL                         R4 0
        7 ADDK                             R4 R4 K3 [1]
        8 SETUPVAL                         R4 0
        9 LOADK                            R5 K4 ["Insert AI Generated MeshPart %*"]
       10 GETUPVAL                         R7 0
       11 NAMECALL                         R5 R5 K5 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 GETTABLEKS                       R5 R3 K6 ["startRecording"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R4
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["getGenerationSession"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R5 K8 ["publishedAssets"]
       27 FASTCALL2K                       ASSERT R6 K9 ; [+5]
       29 MOVE                             R8 R6
       30 LOADK                            R9 K9 ["PublishedAssets not found"]
       31 GETIMPORT                        R7 K11 [assert]
       33 CALL                             R7 2 0
       34 NAMECALL                         R7 R6 K12 ["Clone"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K13 ["getLinkTag"]
       40 MOVE                             R11 R2
       41 CALL                             R10 1 -1
       42 NAMECALL                         R8 R7 K14 ["AddTag"]
       44 CALL                             R8 -1 0
       45 GETTABLEKS                       R8 R5 K15 ["boundingBoxCopy"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K16 ["FFlagDebugLogAssistantUI"]
       50 JUMPIFNOT                        R9 ; [+8]
       51 GETIMPORT                        R9 K18 [warn]
       53 LOADK                            R10 K19 ["[MeshGen] insertAssetsAsync: boundingBoxCopy"]
       54 JUMPIFNOT                        R8 ; [+2]
       55 LOADK                            R11 K20 ["SET"]
       56 JUMP                             ; [+1]
       57 LOADK                            R11 K21 ["NIL"]
       58 CALL                             R9 2 0
       59 JUMPIFNOT                        R8 ; [+73]
       60 GETTABLEKS                       R9 R5 K22 ["selectedBoundingBox"]
       62 JUMPIFNOT                        R9 ; [+4]
       63 NAMECALL                         R10 R9 K23 ["GetPivot"]
       65 CALL                             R10 1 1
       66 JUMP                             ; [+3]
       67 NAMECALL                         R10 R8 K23 ["GetPivot"]
       69 CALL                             R10 1 1
       70 MOVE                             R13 R10
       71 NAMECALL                         R11 R7 K24 ["PivotTo"]
       73 CALL                             R11 2 0
       74 JUMPIFNOT                        R9 ; [+51]
       75 GETUPVAL                         R13 4
       76 GETTABLEKS                       R13 R13 K25 ["VIEWPORT_BOUNDING_BOX_TAG"]
       78 NAMECALL                         R11 R9 K26 ["HasTag"]
       80 CALL                             R11 2 1
       81 JUMPIFNOT                        R11 ; [+4]
       82 LOADNIL                          R12
       83 SETTABLEKS                       R12 R9 K27 ["Parent"]
       85 JUMP                             ; [+40]
       86 LOADK                            R14 K28 ["Part"]
       87 NAMECALL                         R12 R8 K29 ["IsA"]
       89 CALL                             R12 2 1
       90 JUMPIFNOT                        R12 ; [+35]
       91 LOADK                            R14 K28 ["Part"]
       92 NAMECALL                         R12 R9 K29 ["IsA"]
       94 CALL                             R12 2 1
       95 JUMPIFNOT                        R12 ; [+30]
       96 GETTABLEKS                       R12 R9 K30 ["Size"]
       98 GETTABLEKS                       R14 R8 K30 ["Size"]
      100 LOADK                            R15 K31 [0.01]
      101 NAMECALL                         R12 R12 K32 ["FuzzyEq"]
      103 CALL                             R12 3 1
      104 GETTABLEKS                       R13 R9 K33 ["Position"]
      106 GETTABLEKS                       R15 R8 K33 ["Position"]
      108 LOADK                            R16 K31 [0.01]
      109 NAMECALL                         R13 R13 K32 ["FuzzyEq"]
      111 CALL                             R13 3 1
      112 GETTABLEKS                       R14 R9 K34 ["Orientation"]
      114 GETTABLEKS                       R16 R8 K34 ["Orientation"]
      116 LOADK                            R17 K31 [0.01]
      117 NAMECALL                         R14 R14 K32 ["FuzzyEq"]
      119 CALL                             R14 3 1
      120 JUMPIFNOT                        R12 ; [+5]
      121 JUMPIFNOT                        R13 ; [+4]
      122 JUMPIFNOT                        R14 ; [+3]
      123 LOADNIL                          R15
      124 SETTABLEKS                       R15 R9 K27 ["Parent"]
      126 GETUPVAL                         R11 5
      127 DUPTABLE                         R12 K35 [{"requestId"}]
      128 SETTABLEKS                       R2 R12 K0 ["requestId"]
      130 MOVE                             R13 R1
      131 CALL                             R11 2 0
      132 JUMP                             ; [+16]
      133 GETIMPORT                        R9 K18 [warn]
      135 LOADK                            R10 K36 ["[MeshGen] insertAssetsAsync: no boundingBoxCopy — falling back to setPositionOnGround"]
      136 CALL                             R9 1 0
      137 GETUPVAL                         R9 6
      138 GETTABLEKS                       R9 R9 K37 ["setPositionOnGround"]
      140 MOVE                             R10 R7
      141 LOADB                            R11 1
      142 CALL                             R9 2 0
      143 GETUPVAL                         R9 5
      144 DUPTABLE                         R10 K35 [{"requestId"}]
      145 SETTABLEKS                       R2 R10 K0 ["requestId"]
      147 MOVE                             R11 R1
      148 CALL                             R9 2 0
      149 GETIMPORT                        R9 K39 [workspace]
      151 SETTABLEKS                       R9 R7 K27 ["Parent"]
      153 GETUPVAL                         R9 3
      154 GETTABLEKS                       R9 R9 K40 ["FFlagAssistantGen3DTelemetryV2"]
      156 JUMPIFNOT                        R9 ; [+34]
      157 GETUPVAL                         R11 4
      158 GETTABLEKS                       R11 R11 K41 ["ATTRIBUTE_AI_GENERATION_ID"]
      160 NAMECALL                         R9 R7 K42 ["GetAttribute"]
      162 CALL                             R9 2 1
      163 FASTCALL1                        TYPEOF R9 ; [+3]
      164 MOVE                             R12 R9
      165 GETIMPORT                        R11 K44 [typeof]
      167 CALL                             R11 1 1
      168 JUMPIFNOTEQKS                    R11 K45 ["string"] ; [+3]
      170 MOVE                             R10 R9
      171 JUMP                             ; [+1]
      172 LOADNIL                          R10
      173 JUMPIFNOT                        R10 ; [+17]
      174 GETIMPORT                        R11 K48 [os.clock]
      176 CALL                             R11 0 1
      177 LOADNIL                          R12
      178 GETTABLEKS                       R13 R7 K49 ["Destroying"]
      180 NEWCLOSURE                       R15 P0
      181 CAPTURE                          REF R12
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R11
      186 NAMECALL                         R13 R13 K50 ["Connect"]
      188 CALL                             R13 2 1
      189 MOVE                             R12 R13
      190 CLOSEUPVALS                      R12
      191 GETTABLEKS                       R9 R3 K51 ["endRecording"]
      193 MOVE                             R10 R2
      194 CALL                             R9 1 0
      195 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getLinkTag"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R4 K2 ["GetTagged"]
       11 CALL                             R4 2 1
       12 LENGTH                           R5 R4
       13 JUMPIFNOTEQKN                    R5 K3 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R1 K4 ["initArgs"]
       18 GETTABLEKS                       R5 R5 K5 ["environment"]
       20 GETTABLEKS                       R6 R5 K6 ["selection"]
       22 GETTABLEKS                       R6 R6 K7 ["set"]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["FFlagPrimGenSchemaSelector"]
        9 JUMPIFNOT                        R3 ; [+11]
       10 GETUPVAL                         R4 3
       11 LENGTH                           R3 R4
       12 JUMPIFNOTEQKN                    R3 K2 [0] ; [+8]
       14 LOADN                            R3 0
       15 JUMPIFNOTLT                      R3 R1 ; [+5]
       17 GETTABLEN                        R2 R0 1
       18 GETTABLEKS                       R2 R2 K3 ["Name"]
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R2
       23 LOADN                            R4 1
       24 JUMPIFNOTLT                      R4 R1 ; [+13]
       26 GETUPVAL                         R4 4
       27 LOADK                            R6 K4 ["InstanceChip"]
       28 LOADK                            R7 K5 ["Multiple"]
       29 DUPTABLE                         R8 K8 [{"name", "count"}]
       30 SETTABLEKS                       R2 R8 K6 ["name"]
       32 SETTABLEKS                       R1 R8 K7 ["count"]
       34 NAMECALL                         R4 R4 K9 ["getText"]
       36 CALL                             R4 4 1
       37 MOVE                             R3 R4
       38 LOADNIL                          R4
       39 LOADN                            R5 0
       40 JUMPIFNOTLT                      R5 R1 ; [+4]
       42 GETTABLEN                        R5 R0 1
       43 GETTABLEKS                       R4 R5 K10 ["ClassName"]
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K11 ["bridge"]
       48 GETTABLEKS                       R5 R5 K12 ["updateContentHeader"]
       50 DUPTABLE                         R6 K16 [{"newDisplayName", "newClassName", "showChip"}]
       51 SETTABLEKS                       R3 R6 K13 ["newDisplayName"]
       53 SETTABLEKS                       R4 R6 K14 ["newClassName"]
       55 LOADN                            R8 0
       56 JUMPIFLT                         R8 R1 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 SETTABLEKS                       R7 R6 K15 ["showChip"]
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["generationName"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["getLinkTag"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["observeTagChanges"]
       12 MOVE                             R6 R4
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R1
       20 CALL                             R5 2 0
       21 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       34 GETTABLEKS                       R6 R0 K14 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["Tagging"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K17 ["Resources"]
       50 GETTABLEKS                       R8 R8 K18 ["Localization"]
       52 GETTABLEKS                       R8 R8 K19 ["Translator"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R0 K20 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K1 [script]
       62 LOADK                            R11 K21 ["MeshGen"]
       63 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       65 CALL                             R9 2 1
       66 GETIMPORT                        R10 K11 [require]
       68 GETTABLEKS                       R11 R0 K22 ["Flags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K11 [require]
       73 GETTABLEKS                       R12 R0 K14 ["Util"]
       75 GETTABLEKS                       R12 R12 K21 ["MeshGen"]
       77 GETTABLEKS                       R12 R12 K23 ["MeshGenAssetManager"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K11 [require]
       82 GETTABLEKS                       R13 R9 K24 ["MeshGenTool"]
       84 GETTABLEKS                       R13 R13 K25 ["MeshGenToolBridgeTypes"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K11 [require]
       89 GETTABLEKS                       R14 R0 K14 ["Util"]
       91 GETTABLEKS                       R14 R14 K21 ["MeshGen"]
       93 GETTABLEKS                       R14 R14 K26 ["MeshGenConstants"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K11 [require]
       98 GETTABLEKS                       R15 R0 K14 ["Util"]
      100 GETTABLEKS                       R15 R15 K21 ["MeshGen"]
      102 GETTABLEKS                       R15 R15 K27 ["MeshGenTypes"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K11 [require]
      107 GETTABLEKS                       R16 R0 K28 ["Features"]
      109 GETTABLEKS                       R16 R16 K29 ["Gen3dUtils"]
      111 GETTABLEKS                       R16 R16 K30 ["ViewportPreviewUtils"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R13 K31 ["Enums"]
      116 LOADN                            R17 0
      117 LOADN                            R18 0
      118 GETTABLEKS                       R19 R13 K32 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      120 NEWTABLE                         R20 0 0
      122 LOADN                            R23 0
      123 SUBK                             R21 R19 K33 [1]
      124 LOADN                            R22 1
      125 FORNPREP                         R21
      126 DUPTABLE                         R26 K37 [{["azimuth"], ["elevation"] = 30}]
      127 DIVRK                            R29 K39 [360] R19
      128 MUL                              R28 R29 R23
      129 ADDK                             R27 R28 K38 [45]
      130 SETTABLEKS                       R27 R26 K34 ["azimuth"]
      132 FASTCALL2                        TABLE_INSERT R20 R26 ; [+4]
      134 MOVE                             R25 R20
      135 GETIMPORT                        R24 K42 [table.insert]
      137 CALL                             R24 2 0
      138 FORNLOOP                         R21
      139 DUPCLOSURE                       R21 K43 [PROTO_0]
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R11
      142 NEWCLOSURE                       R22 P1
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R3
      149 CAPTURE                          REF R18
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R20
      152 DUPCLOSURE                       R23 K44 [PROTO_5]
      153 CAPTURE                          VAL R11
      154 DUPCLOSURE                       R24 K45 [PROTO_6]
      155 CAPTURE                          VAL R11
      156 DUPCLOSURE                       R25 K46 [PROTO_7]
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R1
      159 DUPCLOSURE                       R26 K47 [PROTO_8]
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R1
      163 NEWCLOSURE                       R27 P6
      164 CAPTURE                          REF R17
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R26
      170 CAPTURE                          VAL R6
      171 DUPCLOSURE                       R28 K48 [PROTO_12]
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R1
      174 DUPCLOSURE                       R29 K49 [PROTO_14]
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R7
      180 DUPCLOSURE                       R30 K50 [PROTO_15]
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R13
      183 DUPCLOSURE                       R31 K51 [PROTO_16]
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R13
      186 DUPCLOSURE                       R32 K52 [PROTO_17]
      187 CAPTURE                          VAL R10
      188 DUPTABLE                         R33 K63 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "selectLinkedAssets", "listenToLinkChanges", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync"}]
      189 SETTABLEKS                       R22 R33 K53 ["generateAssetsAsync"]
      191 SETTABLEKS                       R23 R33 K54 ["cancelGenerationAsync"]
      193 SETTABLEKS                       R24 R33 K55 ["publishAssetsAsync"]
      195 SETTABLEKS                       R26 R33 K56 ["removeSelectedBoundsAsync"]
      197 SETTABLEKS                       R27 R33 K57 ["insertAssetsAsync"]
      199 SETTABLEKS                       R28 R33 K58 ["selectLinkedAssets"]
      201 SETTABLEKS                       R29 R33 K59 ["listenToLinkChanges"]
      203 SETTABLEKS                       R30 R33 K60 ["getSelectedBoundingBox"]
      205 SETTABLEKS                       R31 R33 K61 ["createViewportBoundingBoxAsync"]
      207 SETTABLEKS                       R32 R33 K62 ["destroyViewportBoundingBoxAsync"]
      209 DUPTABLE                         R34 K65 [{"bridge"}]
      210 SETTABLEKS                       R33 R34 K64 ["bridge"]
      212 CLOSEUPVALS                      R17
      213 RETURN                           R34 1
