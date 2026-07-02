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
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+2]
       18 LOADNIL                          R2
       19 JUMP                             ; [+4]
       20 DUPTABLE                         R2 K7 [{"adminOptions"}]
       21 GETUPVAL                         R3 5
       22 SETTABLEKS                       R3 R2 K6 ["adminOptions"]
       24 GETUPVAL                         R3 6
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+63]
       27 GETIMPORT                        R3 K9 [warn]
       29 LOADK                            R4 K10 ["[MeshGen] generateModelAsync:"]
       30 GETUPVAL                         R5 7
       31 DUPTABLE                         R7 K14 [{"inputs", "schema", "options"}]
       32 DUPTABLE                         R8 K16 [{"TextPrompt", "Size", "MaxTriangles", "GenerateTextures", "HasImage"}]
       33 GETTABLEKS                       R9 R1 K0 ["TextPrompt"]
       35 SETTABLEKS                       R9 R8 K0 ["TextPrompt"]
       37 GETTABLEKS                       R10 R1 K1 ["Size"]
       39 JUMPIFNOT                        R10 ; [+20]
       40 DUPTABLE                         R9 K20 [{"X", "Y", "Z"}]
       41 GETTABLEKS                       R10 R1 K1 ["Size"]
       43 GETTABLEKS                       R10 R10 K17 ["X"]
       45 SETTABLEKS                       R10 R9 K17 ["X"]
       47 GETTABLEKS                       R10 R1 K1 ["Size"]
       49 GETTABLEKS                       R10 R10 K18 ["Y"]
       51 SETTABLEKS                       R10 R9 K18 ["Y"]
       53 GETTABLEKS                       R10 R1 K1 ["Size"]
       55 GETTABLEKS                       R10 R10 K19 ["Z"]
       57 SETTABLEKS                       R10 R9 K19 ["Z"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K1 ["Size"]
       63 GETTABLEKS                       R9 R1 K2 ["MaxTriangles"]
       65 SETTABLEKS                       R9 R8 K2 ["MaxTriangles"]
       67 GETTABLEKS                       R9 R1 K3 ["GenerateTextures"]
       69 SETTABLEKS                       R9 R8 K3 ["GenerateTextures"]
       71 GETTABLEKS                       R10 R1 K4 ["Image"]
       73 JUMPIFNOTEQKNIL                  R10 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 SETTABLEKS                       R9 R8 K15 ["HasImage"]
       79 SETTABLEKS                       R8 R7 K11 ["inputs"]
       81 GETUPVAL                         R8 8
       82 SETTABLEKS                       R8 R7 K12 ["schema"]
       84 SETTABLEKS                       R2 R7 K13 ["options"]
       86 NAMECALL                         R5 R5 K21 ["JSONEncode"]
       88 CALL                             R5 2 -1
       89 CALL                             R3 -1 0
       90 GETIMPORT                        R3 K23 [pcall]
       92 NEWCLOSURE                       R4 P0
       93 CAPTURE                          UPVAL U9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          VAL R2
       97 CALL                             R3 1 2
       98 RETURN                           R4 1

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
       11 CALL                             R8 0 1
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADNIL                          R7
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R7 R0 K5 ["adminOptions"]
       17 GETTABLEKS                       R8 R0 K6 ["hintImage"]
       19 GETTABLEKS                       R9 R0 K7 ["selectedUniqueId"]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K8 ["getGenerationSession"]
       24 MOVE                             R11 R2
       25 CALL                             R10 1 1
       26 GETTABLEKS                       R13 R10 K9 ["generationThread"]
       28 JUMPIFEQKNIL                     R13 ; [+2]
       30 LOADB                            R12 0 +1
       31 LOADB                            R12 1
       32 FASTCALL2K                       ASSERT R12 K10 ; [+4]
       34 LOADK                            R13 K10 ["Generation thread already exists for requestId"]
       35 GETIMPORT                        R11 K12 [assert]
       37 CALL                             R11 2 0
       38 GETIMPORT                        R11 K15 [coroutine.running]
       40 CALL                             R11 0 1
       41 SETTABLEKS                       R11 R10 K9 ["generationThread"]
       43 GETTABLEKS                       R11 R1 K16 ["initArgs"]
       45 GETTABLEKS                       R11 R11 K17 ["environment"]
       47 JUMPIFNOT                        R9 ; [+8]
       48 GETUPVAL                         R12 2
       49 MOVE                             R13 R1
       50 MOVE                             R14 R2
       51 MOVE                             R15 R9
       52 CALL                             R12 3 1
       53 JUMPIFNOT                        R12 ; [+9]
       54 MOVE                             R4 R12
       55 JUMP                             ; [+7]
       56 GETUPVAL                         R12 3
       57 CALL                             R12 0 1
       58 JUMPIFNOT                        R12 ; [+4]
       59 GETIMPORT                        R12 K19 [warn]
       61 LOADK                            R13 K20 ["[MeshGen] generateAssetsAsync: selectedUniqueId is nil, bounding box will not be used"]
       62 CALL                             R12 1 0
       63 JUMPIFEQKNIL                     R6 ; [+10]
       65 DUPTABLE                         R12 K22 [{"SchemaDefinition"}]
       66 NEWTABLE                         R13 1 0
       68 GETUPVAL                         R14 4
       69 CALL                             R14 0 1
       70 SETTABLE                         R6 R13 R14
       71 SETTABLEKS                       R13 R12 K21 ["SchemaDefinition"]
       73 JUMP                             ; [+8]
       74 DUPTABLE                         R12 K24 [{"PredefinedSchema"}]
       75 GETUPVAL                         R13 5
       76 GETTABLEKS                       R13 R13 K23 ["PredefinedSchema"]
       78 GETTABLEKS                       R13 R13 K25 ["Body1"]
       80 SETTABLEKS                       R13 R12 K23 ["PredefinedSchema"]
       82 LOADNIL                          R13
       83 GETUPVAL                         R14 6
       84 CALL                             R14 0 1
       85 JUMPIFNOT                        R14 ; [+80]
       86 JUMPIFNOT                        R8 ; [+79]
       87 GETTABLEKS                       R14 R11 K26 ["getUserId"]
       89 CALL                             R14 0 1
       90 GETIMPORT                        R15 K29 [buffer.tostring]
       92 GETUPVAL                         R16 7
       93 GETIMPORT                        R18 K31 [buffer.fromstring]
       95 GETTABLEKS                       R19 R8 K32 ["data"]
       97 CALL                             R18 1 -1
       98 NAMECALL                         R16 R16 K33 ["Base64Decode"]
      100 CALL                             R16 -1 -1
      101 CALL                             R15 -1 1
      102 DUPTABLE                         R16 K47 [{["AssetType"] = "Image", ["AssetName"], ["Description"] = "Hint image for mesh generation", ["AssetId"] = , ["CreatorId"], ["CreatorType"], ["ContentType"] = "", ["Token"] = "", ["AdditionalParameters"]}]
      103 LOADK                            R18 K48 ["MeshGenHintImage_"]
      104 FASTCALL1                        TOSTRING R14 ; [+3]
      105 MOVE                             R23 R14
      106 GETIMPORT                        R22 K49 [tostring]
      108 CALL                             R22 1 1
      109 MOVE                             R19 R22
      110 LOADK                            R20 K50 ["_"]
      111 GETIMPORT                        R22 K53 [os.time]
      113 CALL                             R22 0 -1
      114 FASTCALL                         TOSTRING ; [+2]
      115 GETIMPORT                        R21 K49 [tostring]
      117 CALL                             R21 -1 1
      118 CONCAT                           R17 R18 R21
      119 SETTABLEKS                       R17 R16 K36 ["AssetName"]
      121 SETTABLEKS                       R14 R16 K41 ["CreatorId"]
      123 GETIMPORT                        R17 K57 [Enum.AssetCreatorType.User]
      125 SETTABLEKS                       R17 R16 K42 ["CreatorType"]
      127 DUPTABLE                         R17 K60 [{["PublishAsPackage"] = False}]
      128 SETTABLEKS                       R17 R16 K46 ["AdditionalParameters"]
      130 GETTABLEKS                       R17 R11 K61 ["tools"]
      132 GETTABLEKS                       R17 R17 K62 ["uploadImage"]
      134 GETTABLEKS                       R17 R17 K63 ["publishAssetAsync"]
      136 MOVE                             R18 R15
      137 MOVE                             R19 R16
      138 CALL                             R17 2 1
      139 GETIMPORT                        R18 K66 [Content.fromUri]
      141 LOADK                            R20 K67 ["rbxassetid://"]
      142 GETTABLEKS                       R22 R17 K39 ["AssetId"]
      144 FASTCALL1                        TOSTRING R22 ; [+2]
      145 GETIMPORT                        R21 K49 [tostring]
      147 CALL                             R21 1 1
      148 CONCAT                           R19 R20 R21
      149 CALL                             R18 1 1
      150 MOVE                             R13 R18
      151 GETUPVAL                         R18 3
      152 CALL                             R18 0 1
      153 JUMPIFNOT                        R18 ; [+12]
      154 GETIMPORT                        R18 K19 [warn]
      156 LOADK                            R19 K68 ["[MeshGen] hint image uploaded, assetId:"]
      157 GETTABLEKS                       R20 R17 K39 ["AssetId"]
      159 LOADK                            R21 K69 ["content:"]
      160 FASTCALL1                        TOSTRING R13 ; [+3]
      161 MOVE                             R23 R13
      162 GETIMPORT                        R22 K49 [tostring]
      164 CALL                             R22 1 1
      165 CALL                             R18 4 0
      166 NEWCLOSURE                       R14 P0
      167 CAPTURE                          VAL R3
      168 CAPTURE                          REF R4
      169 CAPTURE                          VAL R5
      170 CAPTURE                          REF R13
      171 CAPTURE                          UPVAL U0
      172 CAPTURE                          VAL R7
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R11
      177 MOVE                             R15 R14
      178 LOADB                            R16 1
      179 CALL                             R15 1 1
      180 JUMPIFNOT                        R15 ; [+7]
      181 FASTCALL1                        TYPEOF R15 ; [+3]
      182 MOVE                             R17 R15
      183 GETIMPORT                        R16 K71 [typeof]
      185 CALL                             R16 1 1
      186 JUMPIFNOTEQKS                    R16 K72 ["string"] ; [+6]
      188 GETIMPORT                        R16 K74 [error]
      190 MOVE                             R17 R15
      191 LOADN                            R18 0
      192 CALL                             R16 2 0
      193 GETTABLEKS                       R16 R15 K75 ["model"]
      195 GETUPVAL                         R17 9
      196 CALL                             R17 0 1
      197 JUMPIFNOT                        R17 ; [+12]
      198 LENGTH                           R17 R3
      199 JUMPIFNOTEQKN                    R17 K76 [0] ; [+10]
      201 GETUPVAL                         R17 10
      202 ADDK                             R17 R17 K77 [1]
      203 SETUPVAL                         R17 10
      204 LOADK                            R18 K78 ["MeshGen"]
      205 GETUPVAL                         R19 10
      206 CONCAT                           R17 R18 R19
      207 SETTABLEKS                       R17 R16 K79 ["Name"]
      209 JUMP                             ; [+2]
      210 SETTABLEKS                       R3 R16 K79 ["Name"]
      212 SETTABLEKS                       R16 R10 K80 ["previewAssets"]
      214 GETTABLEKS                       R17 R1 K81 ["callArgs"]
      216 GETTABLEKS                       R17 R17 K82 ["isThirdPartyRequest"]
      218 JUMPIF                           R17 ; [+13]
      219 GETUPVAL                         R17 11
      220 GETTABLEKS                       R17 R17 K83 ["capturePreviewImages"]
      222 MOVE                             R18 R16
      223 NEWCLOSURE                       R19 P1
      224 CAPTURE                          VAL R1
      225 GETUPVAL                         R21 12
      226 CALL                             R21 0 1
      227 JUMPIFNOT                        R21 ; [+2]
      228 GETUPVAL                         R20 13
      229 JUMP                             ; [+1]
      230 LOADNIL                          R20
      231 CALL                             R17 3 0
      232 DUPTABLE                         R17 K85 [{"generationId"}]
      233 GETTABLEKS                       R18 R15 K86 ["metadata"]
      235 GETTABLEKS                       R18 R18 K87 ["UUID"]
      237 SETTABLEKS                       R18 R17 K84 ["generationId"]
      239 CLOSEUPVALS                      R4
      240 RETURN                           R17 1

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
       48 CALL                             R9 0 1
       49 JUMPIFNOT                        R9 ; [+8]
       50 GETIMPORT                        R9 K17 [warn]
       52 LOADK                            R10 K18 ["[MeshGen] insertAssetsAsync: boundingBoxCopy"]
       53 JUMPIFNOT                        R8 ; [+2]
       54 LOADK                            R11 K19 ["SET"]
       55 JUMP                             ; [+1]
       56 LOADK                            R11 K20 ["NIL"]
       57 CALL                             R9 2 0
       58 JUMPIFNOT                        R8 ; [+73]
       59 GETTABLEKS                       R9 R5 K21 ["selectedBoundingBox"]
       61 JUMPIFNOT                        R9 ; [+4]
       62 NAMECALL                         R10 R9 K22 ["GetPivot"]
       64 CALL                             R10 1 1
       65 JUMP                             ; [+3]
       66 NAMECALL                         R10 R8 K22 ["GetPivot"]
       68 CALL                             R10 1 1
       69 MOVE                             R13 R10
       70 NAMECALL                         R11 R7 K23 ["PivotTo"]
       72 CALL                             R11 2 0
       73 JUMPIFNOT                        R9 ; [+51]
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R13 R13 K24 ["VIEWPORT_BOUNDING_BOX_TAG"]
       77 NAMECALL                         R11 R9 K25 ["HasTag"]
       79 CALL                             R11 2 1
       80 JUMPIFNOT                        R11 ; [+4]
       81 LOADNIL                          R12
       82 SETTABLEKS                       R12 R9 K26 ["Parent"]
       84 JUMP                             ; [+40]
       85 LOADK                            R14 K27 ["Part"]
       86 NAMECALL                         R12 R8 K28 ["IsA"]
       88 CALL                             R12 2 1
       89 JUMPIFNOT                        R12 ; [+35]
       90 LOADK                            R14 K27 ["Part"]
       91 NAMECALL                         R12 R9 K28 ["IsA"]
       93 CALL                             R12 2 1
       94 JUMPIFNOT                        R12 ; [+30]
       95 GETTABLEKS                       R12 R9 K29 ["Size"]
       97 GETTABLEKS                       R14 R8 K29 ["Size"]
       99 LOADK                            R15 K30 [0.01]
      100 NAMECALL                         R12 R12 K31 ["FuzzyEq"]
      102 CALL                             R12 3 1
      103 GETTABLEKS                       R13 R9 K32 ["Position"]
      105 GETTABLEKS                       R15 R8 K32 ["Position"]
      107 LOADK                            R16 K30 [0.01]
      108 NAMECALL                         R13 R13 K31 ["FuzzyEq"]
      110 CALL                             R13 3 1
      111 GETTABLEKS                       R14 R9 K33 ["Orientation"]
      113 GETTABLEKS                       R16 R8 K33 ["Orientation"]
      115 LOADK                            R17 K30 [0.01]
      116 NAMECALL                         R14 R14 K31 ["FuzzyEq"]
      118 CALL                             R14 3 1
      119 JUMPIFNOT                        R12 ; [+5]
      120 JUMPIFNOT                        R13 ; [+4]
      121 JUMPIFNOT                        R14 ; [+3]
      122 LOADNIL                          R15
      123 SETTABLEKS                       R15 R9 K26 ["Parent"]
      125 GETUPVAL                         R11 5
      126 DUPTABLE                         R12 K34 [{"requestId"}]
      127 SETTABLEKS                       R2 R12 K0 ["requestId"]
      129 MOVE                             R13 R1
      130 CALL                             R11 2 0
      131 JUMP                             ; [+16]
      132 GETIMPORT                        R9 K17 [warn]
      134 LOADK                            R10 K35 ["[MeshGen] insertAssetsAsync: no boundingBoxCopy — falling back to setPositionOnGround"]
      135 CALL                             R9 1 0
      136 GETUPVAL                         R9 6
      137 GETTABLEKS                       R9 R9 K36 ["setPositionOnGround"]
      139 MOVE                             R10 R7
      140 LOADB                            R11 1
      141 CALL                             R9 2 0
      142 GETUPVAL                         R9 5
      143 DUPTABLE                         R10 K34 [{"requestId"}]
      144 SETTABLEKS                       R2 R10 K0 ["requestId"]
      146 MOVE                             R11 R1
      147 CALL                             R9 2 0
      148 GETIMPORT                        R9 K38 [workspace]
      150 SETTABLEKS                       R9 R7 K26 ["Parent"]
      152 GETUPVAL                         R9 7
      153 CALL                             R9 0 1
      154 JUMPIFNOT                        R9 ; [+34]
      155 GETUPVAL                         R11 4
      156 GETTABLEKS                       R11 R11 K39 ["ATTRIBUTE_AI_GENERATION_ID"]
      158 NAMECALL                         R9 R7 K40 ["GetAttribute"]
      160 CALL                             R9 2 1
      161 FASTCALL1                        TYPEOF R9 ; [+3]
      162 MOVE                             R12 R9
      163 GETIMPORT                        R11 K42 [typeof]
      165 CALL                             R11 1 1
      166 JUMPIFNOTEQKS                    R11 K43 ["string"] ; [+3]
      168 MOVE                             R10 R9
      169 JUMP                             ; [+1]
      170 LOADNIL                          R10
      171 JUMPIFNOT                        R10 ; [+17]
      172 GETIMPORT                        R11 K46 [os.clock]
      174 CALL                             R11 0 1
      175 LOADNIL                          R12
      176 GETTABLEKS                       R13 R7 K47 ["Destroying"]
      178 NEWCLOSURE                       R15 P0
      179 CAPTURE                          REF R12
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R11
      184 NAMECALL                         R13 R13 K48 ["Connect"]
      186 CALL                             R13 2 1
      187 MOVE                             R12 R13
      188 CLOSEUPVALS                      R12
      189 GETTABLEKS                       R9 R3 K49 ["endRecording"]
      191 MOVE                             R10 R2
      192 CALL                             R9 1 0
      193 RETURN                           R0 0

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
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETUPVAL                         R4 3
       10 LENGTH                           R3 R4
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+8]
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R1 ; [+5]
       16 GETTABLEN                        R2 R0 1
       17 GETTABLEKS                       R2 R2 K2 ["Name"]
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R2
       22 LOADN                            R4 1
       23 JUMPIFNOTLT                      R4 R1 ; [+13]
       25 GETUPVAL                         R4 4
       26 LOADK                            R6 K3 ["InstanceChip"]
       27 LOADK                            R7 K4 ["Multiple"]
       28 DUPTABLE                         R8 K7 [{"name", "count"}]
       29 SETTABLEKS                       R2 R8 K5 ["name"]
       31 SETTABLEKS                       R1 R8 K6 ["count"]
       33 NAMECALL                         R4 R4 K8 ["getText"]
       35 CALL                             R4 4 1
       36 MOVE                             R3 R4
       37 LOADNIL                          R4
       38 LOADN                            R5 0
       39 JUMPIFNOTLT                      R5 R1 ; [+4]
       41 GETTABLEN                        R5 R0 1
       42 GETTABLEKS                       R4 R5 K9 ["ClassName"]
       44 GETUPVAL                         R5 5
       45 GETTABLEKS                       R5 R5 K10 ["bridge"]
       47 GETTABLEKS                       R5 R5 K11 ["updateContentHeader"]
       49 DUPTABLE                         R6 K15 [{"newDisplayName", "newClassName", "showChip"}]
       50 SETTABLEKS                       R3 R6 K12 ["newDisplayName"]
       52 SETTABLEKS                       R4 R6 K13 ["newClassName"]
       54 LOADN                            R8 0
       55 JUMPIFLT                         R8 R1 ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 SETTABLEKS                       R7 R6 K14 ["showChip"]
       61 CALL                             R5 1 0
       62 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        6 GETTABLEKS                       R1 R1 K1 ["environment"]
        8 GETTABLEKS                       R2 R1 K2 ["selection"]
       10 GETTABLEKS                       R2 R2 K3 ["get"]
       12 CALL                             R2 0 1
       13 LENGTH                           R3 R2
       14 JUMPIFEQKN                       R3 K4 [1] ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEN                        R3 R2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["BOUNDING_BOX_INSTANCE_TYPE"]
       21 NAMECALL                         R4 R3 K6 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R1 K7 ["instances"]
       28 GETTABLEKS                       R4 R4 K8 ["getUniqueId"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 DUPTABLE                         R5 K12 [{"uniqueId", "name", "className"}]
       33 SETTABLEKS                       R4 R5 K9 ["uniqueId"]
       35 GETTABLEKS                       R6 R3 K13 ["Name"]
       37 SETTABLEKS                       R6 R5 K10 ["name"]
       39 GETTABLEKS                       R6 R3 K14 ["ClassName"]
       41 SETTABLEKS                       R6 R5 K11 ["className"]
       43 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        7 GETTABLEKS                       R1 R1 K1 ["environment"]
        9 GETIMPORT                        R2 K3 [workspace]
       11 GETTABLEKS                       R2 R2 K4 ["CurrentCamera"]
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETTABLEKS                       R4 R2 K5 ["CFrame"]
       16 GETTABLEKS                       R4 R4 K6 ["Position"]
       18 GETTABLEKS                       R6 R2 K5 ["CFrame"]
       20 GETTABLEKS                       R6 R6 K8 ["LookVector"]
       22 MULK                             R5 R6 K7 [10]
       23 ADD                              R3 R4 R5
       24 JUMP                             ; [+1]
       25 LOADK                            R3 K9 [{0, 0, 0}]
       26 GETIMPORT                        R4 K11 [CFrame.new]
       28 GETTABLEKS                       R6 R3 K12 ["X"]
       30 LOADK                            R7 K13 [1.5]
       31 GETTABLEKS                       R8 R3 K14 ["Z"]
       33 FASTCALL                         VECTOR ; [+2]
       34 GETIMPORT                        R5 K16 [Vector3.new]
       36 CALL                             R5 3 1
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K18 [Instance.new]
       40 LOADK                            R6 K19 ["Part"]
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K20 ["VIEWPORT_BOUNDING_BOX_NAME"]
       45 SETTABLEKS                       R6 R5 K21 ["Name"]
       47 LOADK                            R6 K22 [{6, 3, 6}]
       48 SETTABLEKS                       R6 R5 K23 ["Size"]
       50 SETTABLEKS                       R4 R5 K5 ["CFrame"]
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K24 ["Anchored"]
       55 LOADK                            R6 K25 [0.6]
       56 SETTABLEKS                       R6 R5 K26 ["Transparency"]
       58 GETIMPORT                        R6 K29 [Color3.fromRGB]
       60 LOADN                            R7 0
       61 LOADN                            R8 170
       62 LOADN                            R9 255
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K30 ["Color"]
       66 GETIMPORT                        R6 K34 [Enum.Material.SmoothPlastic]
       68 SETTABLEKS                       R6 R5 K32 ["Material"]
       70 GETIMPORT                        R6 K3 [workspace]
       72 SETTABLEKS                       R6 R5 K35 ["Parent"]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K36 ["VIEWPORT_BOUNDING_BOX_TAG"]
       77 NAMECALL                         R6 R5 K37 ["AddTag"]
       79 CALL                             R6 2 0
       80 GETTABLEKS                       R6 R1 K38 ["instances"]
       82 GETTABLEKS                       R6 R6 K39 ["getUniqueId"]
       84 MOVE                             R7 R5
       85 CALL                             R6 1 1
       86 GETTABLEKS                       R7 R1 K40 ["selection"]
       88 GETTABLEKS                       R7 R7 K41 ["set"]
       90 NEWTABLE                         R8 0 1
       92 MOVE                             R9 R5
       93 SETLIST                          R8 R9 1 [1]
       95 CALL                             R7 1 0
       96 GETTABLEKS                       R7 R1 K42 ["tools"]
       98 GETTABLEKS                       R7 R7 K43 ["meshGen"]
      100 GETTABLEKS                       R7 R7 K44 ["activateScaleTool"]
      102 CALL                             R7 0 0
      103 DUPTABLE                         R7 K48 [{"uniqueId", "name", "className"}]
      104 SETTABLEKS                       R6 R7 K45 ["uniqueId"]
      106 GETTABLEKS                       R8 R5 K21 ["Name"]
      108 SETTABLEKS                       R8 R7 K46 ["name"]
      110 GETTABLEKS                       R8 R5 K49 ["ClassName"]
      112 SETTABLEKS                       R8 R7 K47 ["className"]
      114 RETURN                           R7 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["uniqueId"]
        6 JUMPIFNOT                        R2 ; [+16]
        7 GETTABLEKS                       R2 R1 K1 ["initArgs"]
        9 GETTABLEKS                       R2 R2 K2 ["environment"]
       11 GETTABLEKS                       R2 R2 K3 ["instances"]
       13 GETTABLEKS                       R2 R2 K4 ["getInstanceFromUniqueId"]
       15 GETTABLEKS                       R3 R0 K0 ["uniqueId"]
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 NAMECALL                         R3 R2 K5 ["Destroy"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 1
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETIMPORT                        R2 K7 [warn]
       28 LOADK                            R3 K8 ["[MeshGen] destroyViewportBoundingBoxAsync: uniqueId lookup failed, skipping cleanup"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

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
       60 GETIMPORT                        R9 K11 [require]
       62 GETTABLEKS                       R10 R0 K21 ["Flags"]
       64 GETTABLEKS                       R10 R10 K22 ["FFlagAssistantGen3DTelemetryV2"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K11 [require]
       69 GETTABLEKS                       R11 R0 K21 ["Flags"]
       71 GETTABLEKS                       R11 R11 K23 ["FFlagAssistantMeshGenCarouselPreview"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K11 [require]
       76 GETTABLEKS                       R12 R0 K21 ["Flags"]
       78 GETTABLEKS                       R12 R12 K24 ["FFlagAssistantMeshGenHintImage"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K11 [require]
       83 GETTABLEKS                       R13 R0 K21 ["Flags"]
       85 GETTABLEKS                       R13 R13 K25 ["FFlagAssistantMeshGenRemoveAdminOptions"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K11 [require]
       90 GETTABLEKS                       R14 R0 K21 ["Flags"]
       92 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantSegmentationBridge"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K11 [require]
       97 GETTABLEKS                       R15 R0 K21 ["Flags"]
       99 GETTABLEKS                       R15 R15 K27 ["FFlagDebugLogAssistantUI"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K11 [require]
      104 GETTABLEKS                       R16 R0 K21 ["Flags"]
      106 GETTABLEKS                       R16 R16 K28 ["FFlagPrimGenSchemaSelector"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K1 [script]
      111 LOADK                            R18 K29 ["MeshGen"]
      112 NAMECALL                         R16 R16 K3 ["FindFirstAncestor"]
      114 CALL                             R16 2 1
      115 GETIMPORT                        R17 K11 [require]
      117 GETTABLEKS                       R18 R16 K30 ["MeshGenTool"]
      119 GETTABLEKS                       R18 R18 K31 ["MeshGenHost"]
      121 GETTABLEKS                       R18 R18 K32 ["MeshGenAssetManager"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K11 [require]
      126 GETTABLEKS                       R19 R16 K30 ["MeshGenTool"]
      128 GETTABLEKS                       R19 R19 K33 ["MeshGenBridgeTypes"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K11 [require]
      133 GETTABLEKS                       R20 R16 K34 ["MeshGenConstants"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K11 [require]
      138 GETTABLEKS                       R21 R16 K35 ["MeshGenTypes"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K11 [require]
      143 GETTABLEKS                       R22 R0 K36 ["Features"]
      145 GETTABLEKS                       R22 R22 K37 ["Gen3dUtils"]
      147 GETTABLEKS                       R22 R22 K38 ["ViewportPreviewUtils"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K11 [require]
      152 GETTABLEKS                       R23 R0 K21 ["Flags"]
      154 GETTABLEKS                       R23 R23 K39 ["FStringGenerationServiceSchemaDefinitionPartsKey"]
      156 CALL                             R22 1 1
      157 GETTABLEKS                       R23 R19 K40 ["Enums"]
      159 LOADN                            R24 0
      160 LOADN                            R25 0
      161 GETTABLEKS                       R26 R19 K41 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      163 NEWTABLE                         R27 0 0
      165 LOADN                            R30 0
      166 SUBK                             R28 R26 K42 [1]
      167 LOADN                            R29 1
      168 FORNPREP                         R28
      169 DUPTABLE                         R33 K46 [{["azimuth"], ["elevation"] = 30}]
      170 DIVRK                            R36 K48 [360] R26
      171 MUL                              R35 R36 R30
      172 ADDK                             R34 R35 K47 [45]
      173 SETTABLEKS                       R34 R33 K43 ["azimuth"]
      175 FASTCALL2                        TABLE_INSERT R27 R33 ; [+4]
      177 MOVE                             R32 R27
      178 GETIMPORT                        R31 K51 [table.insert]
      180 CALL                             R31 2 0
      181 FORNLOOP                         R28
      182 DUPCLOSURE                       R28 K52 [PROTO_0]
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R17
      185 NEWCLOSURE                       R29 P1
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R15
      196 CAPTURE                          REF R25
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R27
      200 DUPCLOSURE                       R30 K53 [PROTO_5]
      201 CAPTURE                          VAL R17
      202 DUPCLOSURE                       R31 K54 [PROTO_6]
      203 CAPTURE                          VAL R17
      204 DUPCLOSURE                       R32 K55 [PROTO_7]
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R1
      207 DUPCLOSURE                       R33 K56 [PROTO_8]
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R1
      211 NEWCLOSURE                       R34 P6
      212 CAPTURE                          REF R24
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R9
      220 DUPCLOSURE                       R35 K57 [PROTO_12]
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R1
      223 DUPCLOSURE                       R36 K58 [PROTO_14]
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R7
      229 DUPCLOSURE                       R37 K59 [PROTO_15]
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R19
      232 DUPCLOSURE                       R38 K60 [PROTO_16]
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R19
      235 DUPCLOSURE                       R39 K61 [PROTO_17]
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R14
      238 DUPTABLE                         R40 K72 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "selectLinkedAssets", "listenToLinkChanges", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync"}]
      239 SETTABLEKS                       R29 R40 K62 ["generateAssetsAsync"]
      241 SETTABLEKS                       R30 R40 K63 ["cancelGenerationAsync"]
      243 SETTABLEKS                       R31 R40 K64 ["publishAssetsAsync"]
      245 SETTABLEKS                       R33 R40 K65 ["removeSelectedBoundsAsync"]
      247 SETTABLEKS                       R34 R40 K66 ["insertAssetsAsync"]
      249 SETTABLEKS                       R35 R40 K67 ["selectLinkedAssets"]
      251 SETTABLEKS                       R36 R40 K68 ["listenToLinkChanges"]
      253 SETTABLEKS                       R37 R40 K69 ["getSelectedBoundingBox"]
      255 SETTABLEKS                       R38 R40 K70 ["createViewportBoundingBoxAsync"]
      257 SETTABLEKS                       R39 R40 K71 ["destroyViewportBoundingBoxAsync"]
      259 DUPTABLE                         R41 K74 [{"bridge"}]
      260 SETTABLEKS                       R40 R41 K73 ["bridge"]
      262 CLOSEUPVALS                      R24
      263 RETURN                           R41 1
