PROTO_0:
        0 LOADK                            R1 K0 ["TextureGen-"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["selectedInstanceRef"]
        2 JUMPIFEQKNIL                     R3 ; [+35]
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K2 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFEQKS                       R6 K3 ["table"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       15 LOADK                            R6 K4 ["selectedInstanceRef must be a table"]
       16 GETIMPORT                        R4 K6 [assert]
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R7 R3 K7 ["uniqueId"]
       21 FASTCALL1                        TYPEOF R7 ; [+2]
       22 GETIMPORT                        R6 K2 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFEQKS                       R6 K8 ["string"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       31 LOADK                            R6 K9 ["selectedInstanceRef.uniqueId must be a string"]
       32 GETIMPORT                        R4 K6 [assert]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K7 ["uniqueId"]
       37 RETURN                           R4 1
       38 GETTABLEKS                       R4 R2 K10 ["instance_path"]
       40 JUMPIFEQKNIL                     R4 ; [+44]
       42 JUMPIFEQKS                       R4 K11 [""] ; [+42]
       44 GETTABLEKS                       R5 R0 K12 ["instances"]
       46 GETTABLEKS                       R5 R5 K13 ["resolveInstanceByPathAsync"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 JUMPIFNOTEQKNIL                  R5 ; [+10]
       52 GETIMPORT                        R6 K15 [error]
       54 LOADK                            R7 K16 ["could not resolve instance_path \"%*\"; it must point to an existing MeshPart or Model."]
       55 MOVE                             R9 R4
       56 NAMECALL                         R7 R7 K17 ["format"]
       58 CALL                             R7 2 1
       59 LOADN                            R8 0
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R6 R5 K18 ["className"]
       63 JUMPIFEQKS                       R6 K19 ["MeshPart"] ; [+18]
       65 GETTABLEKS                       R6 R5 K18 ["className"]
       67 JUMPIFEQKS                       R6 K20 ["Model"] ; [+14]
       69 GETIMPORT                        R6 K15 [error]
       71 LOADK                            R7 K21 ["requires a MeshPart or Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       72 MOVE                             R9 R4
       73 GETTABLEKS                       R10 R5 K18 ["className"]
       75 GETTABLEKS                       R11 R5 K22 ["name"]
       77 NAMECALL                         R7 R7 K17 ["format"]
       79 CALL                             R7 4 1
       80 LOADN                            R8 0
       81 CALL                             R6 2 0
       82 GETTABLEKS                       R6 R5 K7 ["uniqueId"]
       84 RETURN                           R6 1
       85 GETIMPORT                        R5 K24 [pcall]
       87 MOVE                             R6 R1
       88 CALL                             R5 1 2
       89 MOVE                             R8 R5
       90 JUMPIFNOT                        R8 ; [+4]
       91 JUMPIFNOTEQKNIL                  R6 ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       97 LOADK                            R9 K25 ["selectedInstanceRef or instance_path must be provided — texture generation requires a source MeshPart or Model"]
       98 GETIMPORT                        R7 K6 [assert]
      100 CALL                             R7 2 0
      101 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      103 RETURN                           R7 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["resolveImage"]
       18 GETTABLEKS                       R4 R2 K7 ["hintImage"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R7 R2 K8 ["textPrompt"]
       23 FASTCALL1                        TYPEOF R7 ; [+2]
       24 GETIMPORT                        R6 K1 [typeof]
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+8]
       29 LOADB                            R5 1
       30 GETTABLEKS                       R7 R2 K8 ["textPrompt"]
       32 LENGTH                           R6 R7
       33 LOADN                            R7 0
       34 JUMPIFLT                         R7 R6 ; [+5]
       36 JUMPIFNOTEQKNIL                  R3 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       42 LOADK                            R6 K10 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       43 GETIMPORT                        R4 K5 [assert]
       45 CALL                             R4 2 0
       46 GETTABLEKS                       R4 R2 K11 ["isManualRun"]
       48 JUMPIFEQKNIL                     R4 ; [+16]
       50 FASTCALL1                        TYPEOF R4 ; [+3]
       51 MOVE                             R8 R4
       52 GETIMPORT                        R7 K1 [typeof]
       54 CALL                             R7 1 1
       55 JUMPIFEQKS                       R7 K12 ["boolean"] ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       61 LOADK                            R7 K13 ["isManualRun must be a boolean"]
       62 GETIMPORT                        R5 K5 [assert]
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 1
       66 MOVE                             R6 R0
       67 MOVE                             R7 R1
       68 MOVE                             R8 R2
       69 CALL                             R5 3 1
       70 GETTABLEKS                       R6 R2 K14 ["model"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantTextureGenModelSelection"]
       75 JUMPIFNOT                        R7 ; [+42]
       76 JUMPIFEQKNIL                     R6 ; [+31]
       78 FASTCALL1                        TYPEOF R6 ; [+3]
       79 MOVE                             R10 R6
       80 GETIMPORT                        R9 K1 [typeof]
       82 CALL                             R9 1 1
       83 JUMPIFEQKS                       R9 K9 ["string"] ; [+2]
       85 LOADB                            R8 0 +1
       86 LOADB                            R8 1
       87 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       89 LOADK                            R9 K16 ["model must be a string"]
       90 GETIMPORT                        R7 K5 [assert]
       92 CALL                             R7 2 0
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K17 ["MODEL_BY_MODE"]
       96 GETTABLE                         R6 R7 R6
       97 JUMPIFNOTEQKNIL                  R6 ; [+2]
       99 LOADB                            R8 0 +1
      100 LOADB                            R8 1
      101 FASTCALL2K                       ASSERT R8 K18 ; [+4]
      103 LOADK                            R9 K18 ["model must be one of the values declared in the tool schema's enum"]
      104 GETIMPORT                        R7 K5 [assert]
      106 CALL                             R7 2 0
      107 JUMP                             ; [+11]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantTextureGenMcpQualityAutoView"]
      111 JUMPIFNOT                        R7 ; [+4]
      112 JUMPIFEQKB                       R4 TRUE ; [+3]
      114 GETUPVAL                         R6 4
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R6 5
      117 JUMP                             ; [+1]
      118 LOADNIL                          R6
      119 GETUPVAL                         R7 6
      120 GETTABLEKS                       R7 R7 K20 ["get"]
      122 MOVE                             R8 R3
      123 MOVE                             R9 R5
      124 CALL                             R7 2 1
      125 DUPTABLE                         R8 K25 [{"textPrompt", "hintImage", "isManualRun", "selectedUniqueId", "model", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference"}]
      126 GETTABLEKS                       R9 R2 K8 ["textPrompt"]
      128 SETTABLEKS                       R9 R8 K8 ["textPrompt"]
      130 SETTABLEKS                       R3 R8 K7 ["hintImage"]
      132 SETTABLEKS                       R4 R8 K11 ["isManualRun"]
      134 SETTABLEKS                       R5 R8 K21 ["selectedUniqueId"]
      136 SETTABLEKS                       R6 R8 K14 ["model"]
      138 JUMPIFNOT                        R7 ; [+3]
      139 GETTABLEKS                       R9 R7 K22 ["cameraExtrinsic"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K22 ["cameraExtrinsic"]
      145 JUMPIFNOT                        R7 ; [+3]
      146 GETTABLEKS                       R9 R7 K23 ["cameraIntrinsic"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R9
      150 SETTABLEKS                       R9 R8 K23 ["cameraIntrinsic"]
      152 JUMPIFNOT                        R7 ; [+3]
      153 GETTABLEKS                       R9 R7 K24 ["texturePreviewReference"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R9
      157 SETTABLEKS                       R9 R8 K24 ["texturePreviewReference"]
      159 RETURN                           R8 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedMeshRef"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["prepareTexturePreview"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["generateTexture"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K3 ["generateTextureAsync"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["insertTexturedModel"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"requestId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["insertTexturedModelAsync"]
       19 DUPTABLE                         R1 K3 [{"requestId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["requestId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"requestId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["requestId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseNewDMNetworking"]
        6 JUMPIFNOT                        R5 ; [+34]
        7 LOADB                            R6 1
        8 GETTABLEKS                       R7 R0 K1 ["targetId"]
       10 JUMPIFEQKNIL                     R7 ; [+11]
       12 GETTABLEKS                       R8 R0 K1 ["targetId"]
       14 FASTCALL1                        TYPEOF R8 ; [+2]
       15 GETIMPORT                        R7 K3 [typeof]
       17 CALL                             R7 1 1
       18 JUMPIFEQKS                       R7 K4 ["string"] ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       24 LOADK                            R7 K5 ["targetId must be a string"]
       25 GETIMPORT                        R5 K7 [assert]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K1 ["targetId"]
       30 JUMPIF                           R5 ; [+5]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K8 ["resolveTargetAsync"]
       34 GETUPVAL                         R6 2
       35 CALL                             R5 1 1
       36 MOVE                             R4 R5
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          REF R4
       40 JUMP                             ; [+14]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K9 ["bridges"]
       44 GETTABLEKS                       R5 R5 K10 ["TextureGen"]
       46 GETTABLEKS                       R5 R5 K11 ["createGuestContext"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 CALL                             R5 2 1
       51 GETTABLEKS                       R2 R5 K12 ["bridge"]
       53 GETTABLEKS                       R3 R2 K13 ["getSelectedMeshRef"]
       55 GETUPVAL                         R5 5
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K14 ["environment"]
       59 MOVE                             R7 R3
       60 MOVE                             R8 R0
       61 CALL                             R5 3 1
       62 LOADB                            R6 0
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantTextureGenMcpQualityAutoView"]
       66 JUMPIFNOT                        R7 ; [+84]
       67 GETTABLEKS                       R7 R5 K16 ["isManualRun"]
       69 JUMPIFEQKB                       R7 TRUE ; [+81]
       71 GETTABLEKS                       R7 R5 K17 ["model"]
       73 GETUPVAL                         R8 6
       74 JUMPIFNOTEQ                      R7 R8 ; [+76]
       76 GETTABLEKS                       R7 R5 K18 ["cameraExtrinsic"]
       78 JUMPIFNOTEQKNIL                  R7 ; [+72]
       80 GETUPVAL                         R7 7
       81 GETTABLEKS                       R7 R7 K19 ["getFFlagGen3dTextureGenBatchedPreview"]
       83 CALL                             R7 0 1
       84 JUMPIFNOT                        R7 ; [+61]
       85 GETUPVAL                         R7 8
       86 GETTABLEKS                       R7 R7 K20 ["generateAsync"]
       88 DUPTABLE                         R8 K26 [{"environment", "prepareTexturePreviewAsync", "selectedUniqueId", "textPrompt", "referenceImage", "imageModel"}]
       89 GETUPVAL                         R9 4
       90 GETTABLEKS                       R9 R9 K14 ["environment"]
       92 SETTABLEKS                       R9 R8 K14 ["environment"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K0 ["FFlagAssistantUseNewDMNetworking"]
       97 JUMPIFNOT                        R10 ; [+4]
       98 NEWCLOSURE                       R9 P1
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          REF R4
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R9 R2 K21 ["prepareTexturePreviewAsync"]
      104 SETTABLEKS                       R9 R8 K21 ["prepareTexturePreviewAsync"]
      106 GETTABLEKS                       R9 R5 K22 ["selectedUniqueId"]
      108 SETTABLEKS                       R9 R8 K22 ["selectedUniqueId"]
      110 GETTABLEKS                       R9 R5 K23 ["textPrompt"]
      112 SETTABLEKS                       R9 R8 K23 ["textPrompt"]
      114 GETTABLEKS                       R9 R5 K27 ["hintImage"]
      116 SETTABLEKS                       R9 R8 K24 ["referenceImage"]
      118 GETUPVAL                         R10 9
      119 GETTABLEKS                       R10 R10 K28 ["imageSelection"]
      121 JUMPIFNOT                        R10 ; [+6]
      122 GETUPVAL                         R9 9
      123 GETTABLEKS                       R9 R9 K28 ["imageSelection"]
      125 GETTABLEKS                       R9 R9 K17 ["model"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R9
      129 SETTABLEKS                       R9 R8 K25 ["imageModel"]
      131 CALL                             R7 1 1
      132 GETTABLEKS                       R8 R7 K27 ["hintImage"]
      134 SETTABLEKS                       R8 R5 K27 ["hintImage"]
      136 GETTABLEKS                       R8 R7 K18 ["cameraExtrinsic"]
      138 SETTABLEKS                       R8 R5 K18 ["cameraExtrinsic"]
      140 GETTABLEKS                       R8 R7 K29 ["cameraIntrinsic"]
      142 SETTABLEKS                       R8 R5 K29 ["cameraIntrinsic"]
      144 LOADB                            R6 1
      145 JUMP                             ; [+5]
      146 GETIMPORT                        R7 K31 [error]
      148 LOADK                            R8 K32 ["\"Quality\" mode is unavailable here; use \"Fast\"."]
      149 LOADN                            R9 0
      150 CALL                             R7 2 0
      151 LOADK                            R8 K33 ["TextureGen-"]
      152 GETUPVAL                         R9 10
      153 LOADB                            R11 0
      154 NAMECALL                         R9 R9 K34 ["GenerateGUID"]
      156 CALL                             R9 2 1
      157 CONCAT                           R7 R8 R9
      158 DUPTABLE                         R8 K39 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId", "model", "isManualRun", "conversationId", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference", "autoSelectView"}]
      159 SETTABLEKS                       R7 R8 K35 ["requestId"]
      161 GETTABLEKS                       R9 R5 K23 ["textPrompt"]
      163 SETTABLEKS                       R9 R8 K23 ["textPrompt"]
      165 GETTABLEKS                       R9 R5 K27 ["hintImage"]
      167 SETTABLEKS                       R9 R8 K27 ["hintImage"]
      169 GETTABLEKS                       R9 R5 K22 ["selectedUniqueId"]
      171 SETTABLEKS                       R9 R8 K22 ["selectedUniqueId"]
      173 GETTABLEKS                       R9 R5 K17 ["model"]
      175 SETTABLEKS                       R9 R8 K17 ["model"]
      177 GETTABLEKS                       R9 R5 K16 ["isManualRun"]
      179 SETTABLEKS                       R9 R8 K16 ["isManualRun"]
      181 SETTABLEKS                       R1 R8 K36 ["conversationId"]
      183 GETTABLEKS                       R9 R5 K18 ["cameraExtrinsic"]
      185 SETTABLEKS                       R9 R8 K18 ["cameraExtrinsic"]
      187 GETTABLEKS                       R9 R5 K29 ["cameraIntrinsic"]
      189 SETTABLEKS                       R9 R8 K29 ["cameraIntrinsic"]
      191 GETTABLEKS                       R9 R5 K37 ["texturePreviewReference"]
      193 SETTABLEKS                       R9 R8 K37 ["texturePreviewReference"]
      195 JUMPIFNOT                        R6 ; [+2]
      196 LOADB                            R9 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R9
      199 SETTABLEKS                       R9 R8 K38 ["autoSelectView"]
      201 GETIMPORT                        R9 K41 [pcall]
      203 NEWCLOSURE                       R10 P2
      204 CAPTURE                          UPVAL U0
      205 CAPTURE                          UPVAL U3
      206 CAPTURE                          REF R4
      207 CAPTURE                          VAL R8
      208 CAPTURE                          REF R2
      209 CALL                             R9 1 2
      210 JUMPIF                           R9 ; [+11]
      211 GETIMPORT                        R11 K31 [error]
      213 LOADK                            R13 K42 ["Texture generation failed with error: "]
      214 FASTCALL1                        TOSTRING R10 ; [+3]
      215 MOVE                             R15 R10
      216 GETIMPORT                        R14 K44 [tostring]
      218 CALL                             R14 1 1
      219 CONCAT                           R12 R13 R14
      220 LOADN                            R13 0
      221 CALL                             R11 2 0
      222 GETTABLEKS                       R11 R5 K16 ["isManualRun"]
      224 JUMPIFNOT                        R11 ; [+16]
      225 DUPTABLE                         R11 K47 [{"tag", "requestId", "generationName"}]
      226 GETUPVAL                         R12 11
      227 GETTABLEKS                       R12 R12 K48 ["getLinkTag"]
      229 MOVE                             R13 R7
      230 CALL                             R12 1 1
      231 SETTABLEKS                       R12 R11 K45 ["tag"]
      233 SETTABLEKS                       R7 R11 K35 ["requestId"]
      235 GETTABLEKS                       R12 R5 K23 ["textPrompt"]
      237 SETTABLEKS                       R12 R11 K46 ["generationName"]
      239 CLOSEUPVALS                      R2
      240 RETURN                           R11 1
      241 GETIMPORT                        R11 K41 [pcall]
      243 NEWCLOSURE                       R12 P3
      244 CAPTURE                          UPVAL U0
      245 CAPTURE                          UPVAL U3
      246 CAPTURE                          REF R4
      247 CAPTURE                          VAL R7
      248 CAPTURE                          REF R2
      249 CALL                             R11 1 2
      250 JUMPIF                           R11 ; [+31]
      251 GETUPVAL                         R13 0
      252 GETTABLEKS                       R13 R13 K0 ["FFlagAssistantUseNewDMNetworking"]
      254 JUMPIFNOT                        R13 ; [+8]
      255 GETIMPORT                        R13 K41 [pcall]
      257 NEWCLOSURE                       R14 P4
      258 CAPTURE                          UPVAL U3
      259 CAPTURE                          REF R4
      260 CAPTURE                          VAL R7
      261 CALL                             R13 1 0
      262 JUMP                             ; [+8]
      263 GETIMPORT                        R13 K41 [pcall]
      265 GETTABLEKS                       R14 R2 K49 ["cancelGenerationAsync"]
      267 DUPTABLE                         R15 K50 [{"requestId"}]
      268 SETTABLEKS                       R7 R15 K35 ["requestId"]
      270 CALL                             R13 2 0
      271 GETIMPORT                        R13 K31 [error]
      273 LOADK                            R15 K51 ["Failed to insert textured model with error: "]
      274 FASTCALL1                        TOSTRING R12 ; [+3]
      275 MOVE                             R17 R12
      276 GETIMPORT                        R16 K44 [tostring]
      278 CALL                             R16 1 1
      279 CONCAT                           R14 R15 R16
      280 LOADN                            R15 0
      281 CALL                             R13 2 0
      282 DUPTABLE                         R13 K47 [{"tag", "requestId", "generationName"}]
      283 GETUPVAL                         R14 11
      284 GETTABLEKS                       R14 R14 K48 ["getLinkTag"]
      286 MOVE                             R15 R7
      287 CALL                             R14 1 1
      288 SETTABLEKS                       R14 R13 K45 ["tag"]
      290 SETTABLEKS                       R7 R13 K35 ["requestId"]
      292 GETTABLEKS                       R14 R5 K23 ["textPrompt"]
      294 SETTABLEKS                       R14 R13 K46 ["generationName"]
      296 CLOSEUPVALS                      R2
      297 RETURN                           R13 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["sessionId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 GETIMPORT                        R4 K2 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CALL                             R4 1 2
       14 JUMPIF                           R4 ; [+25]
       15 FASTCALL1                        TOSTRING R5 ; [+3]
       16 MOVE                             R7 R5
       17 GETIMPORT                        R6 K4 [tostring]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 2
       21 CALL                             R7 0 1
       22 MOVE                             R9 R6
       23 NAMECALL                         R7 R7 K5 ["addText"]
       25 CALL                             R7 2 1
       26 DUPTABLE                         R9 K7 [{"errorMessage"}]
       27 SETTABLEKS                       R6 R9 K6 ["errorMessage"]
       29 NAMECALL                         R7 R7 K8 ["setStructuredContent"]
       31 CALL                             R7 2 1
       32 LOADB                            R9 1
       33 NAMECALL                         R7 R7 K9 ["setError"]
       35 CALL                             R7 2 1
       36 NAMECALL                         R7 R7 K10 ["build"]
       38 CALL                             R7 1 -1
       39 RETURN                           R7 -1
       40 GETUPVAL                         R6 2
       41 CALL                             R6 0 1
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K11 ["toString"]
       45 DUPTABLE                         R9 K14 [{"tag", "generationName"}]
       46 GETTABLEKS                       R10 R5 K12 ["tag"]
       48 SETTABLEKS                       R10 R9 K12 ["tag"]
       50 GETTABLEKS                       R10 R5 K13 ["generationName"]
       52 SETTABLEKS                       R10 R9 K13 ["generationName"]
       54 CALL                             R8 1 -1
       55 NAMECALL                         R6 R6 K5 ["addText"]
       57 CALL                             R6 -1 1
       58 MOVE                             R8 R5
       59 NAMECALL                         R6 R6 K8 ["setStructuredContent"]
       61 CALL                             R6 2 1
       62 NAMECALL                         R6 R6 K10 ["build"]
       64 CALL                             R6 1 -1
       65 RETURN                           R6 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["read"]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R1 0 0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
       16 JUMPIFNOT                        R5 ; [+11]
       17 GETIMPORT                        R5 K3 [pcall]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CALL                             R5 1 2
       25 MOVE                             R3 R5
       26 MOVE                             R4 R6
       27 JUMP                             ; [+19]
       28 GETUPVAL                         R5 8
       29 GETTABLEKS                       R5 R5 K4 ["bridges"]
       31 GETTABLEKS                       R5 R5 K5 ["TextureGen"]
       33 GETTABLEKS                       R5 R5 K6 ["createGuestContext"]
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R5 R5 K7 ["bridge"]
       40 GETIMPORT                        R6 K3 [pcall]
       42 GETTABLEKS                       R7 R5 K8 ["getSelectedMeshRef"]
       44 CALL                             R6 1 2
       45 MOVE                             R3 R6
       46 MOVE                             R4 R7
       47 JUMPIFNOT                        R3 ; [+19]
       48 JUMPIFNOT                        R4 ; [+18]
       49 DUPTABLE                         R5 K13 [{"uniqueId", "name", "className", "isValid"}]
       50 GETTABLEKS                       R6 R4 K9 ["uniqueId"]
       52 SETTABLEKS                       R6 R5 K9 ["uniqueId"]
       54 GETTABLEKS                       R6 R4 K10 ["name"]
       56 SETTABLEKS                       R6 R5 K10 ["name"]
       58 GETTABLEKS                       R6 R4 K11 ["className"]
       60 SETTABLEKS                       R6 R5 K11 ["className"]
       62 GETTABLEKS                       R6 R4 K14 ["isTextureable"]
       64 SETTABLEKS                       R6 R5 K12 ["isValid"]
       66 MOVE                             R2 R5
       67 NEWTABLE                         R5 0 3
       69 DUPTABLE                         R6 K19 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       70 GETUPVAL                         R7 9
       71 GETTABLEKS                       R7 R7 K20 ["SelectedInstanceRef"]
       73 SETTABLEKS                       R7 R6 K10 ["name"]
       75 GETUPVAL                         R7 10
       76 GETTABLEKS                       R7 R7 K21 ["Instance"]
       78 SETTABLEKS                       R7 R6 K15 ["inputType"]
       80 SETTABLEKS                       R2 R6 K16 ["initialValue"]
       82 DUPTABLE                         R7 K22 [{"name", "inputType", "initialValue"}]
       83 GETUPVAL                         R8 9
       84 GETTABLEKS                       R8 R8 K23 ["TextPrompt"]
       86 SETTABLEKS                       R8 R7 K10 ["name"]
       88 GETUPVAL                         R8 10
       89 GETTABLEKS                       R8 R8 K24 ["String"]
       91 SETTABLEKS                       R8 R7 K15 ["inputType"]
       93 GETUPVAL                         R8 11
       94 SETTABLEKS                       R8 R7 K16 ["initialValue"]
       96 DUPTABLE                         R8 K22 [{"name", "inputType", "initialValue"}]
       97 GETUPVAL                         R9 9
       98 GETTABLEKS                       R9 R9 K25 ["HintImage"]
      100 SETTABLEKS                       R9 R8 K10 ["name"]
      102 GETUPVAL                         R9 10
      103 GETTABLEKS                       R9 R9 K26 ["Image"]
      105 SETTABLEKS                       R9 R8 K15 ["inputType"]
      107 GETUPVAL                         R9 12
      108 SETTABLEKS                       R9 R8 K16 ["initialValue"]
      110 SETLIST                          R5 R6 3 [1]
      112 GETUPVAL                         R6 3
      113 GETTABLEKS                       R6 R6 K27 ["FFlagAssistantTextureGenModelSelection"]
      115 JUMPIFNOT                        R6 ; [+53]
      116 GETTABLEKS                       R7 R1 K28 ["model"]
      118 JUMPIFNOT                        R7 ; [+7]
      119 GETUPVAL                         R7 13
      120 GETTABLEKS                       R7 R7 K29 ["MODE_BY_MODEL"]
      122 GETTABLEKS                       R8 R1 K28 ["model"]
      124 GETTABLE                         R6 R7 R8
      125 JUMP                             ; [+1]
      126 LOADNIL                          R6
      127 DUPTABLE                         R9 K31 [{"name", "inputType", "initialValue", "options"}]
      128 GETUPVAL                         R10 9
      129 GETTABLEKS                       R10 R10 K32 ["Mode"]
      131 SETTABLEKS                       R10 R9 K10 ["name"]
      133 GETUPVAL                         R10 10
      134 GETTABLEKS                       R10 R10 K33 ["Option"]
      136 SETTABLEKS                       R10 R9 K15 ["inputType"]
      138 MOVE                             R10 R6
      139 JUMPIF                           R10 ; [+5]
      140 GETUPVAL                         R10 13
      141 GETTABLEKS                       R10 R10 K34 ["MODE"]
      143 GETTABLEKS                       R10 R10 K35 ["Quality"]
      145 SETTABLEKS                       R10 R9 K16 ["initialValue"]
      147 NEWTABLE                         R10 0 2
      149 GETUPVAL                         R11 13
      150 GETTABLEKS                       R11 R11 K34 ["MODE"]
      152 GETTABLEKS                       R11 R11 K36 ["Fast"]
      154 GETUPVAL                         R12 13
      155 GETTABLEKS                       R12 R12 K34 ["MODE"]
      157 GETTABLEKS                       R12 R12 K35 ["Quality"]
      159 SETLIST                          R10 R11 2 [1]
      161 SETTABLEKS                       R10 R9 K30 ["options"]
      163 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      165 MOVE                             R8 R5
      166 GETIMPORT                        R7 K39 [table.insert]
      168 CALL                             R7 2 0
      169 GETUPVAL                         R7 14
      170 GETTABLEKS                       R7 R7 K40 ["imageSelection"]
      172 JUMPIFNOT                        R7 ; [+6]
      173 GETUPVAL                         R6 14
      174 GETTABLEKS                       R6 R6 K40 ["imageSelection"]
      176 GETTABLEKS                       R6 R6 K41 ["autoSelectViewField"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R6
      180 JUMPIFEQKNIL                     R6 ; [+23]
      182 DUPTABLE                         R9 K22 [{"name", "inputType", "initialValue"}]
      183 SETTABLEKS                       R6 R9 K10 ["name"]
      185 GETUPVAL                         R10 10
      186 GETTABLEKS                       R10 R10 K42 ["Boolean"]
      188 SETTABLEKS                       R10 R9 K15 ["inputType"]
      190 GETTABLEKS                       R11 R1 K43 ["autoSelectView"]
      192 JUMPIFEQKB                       R11 TRUE ; [+2]
      194 LOADB                            R10 0 +1
      195 LOADB                            R10 1
      196 SETTABLEKS                       R10 R9 K16 ["initialValue"]
      198 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      200 MOVE                             R8 R5
      201 GETIMPORT                        R7 K39 [table.insert]
      203 CALL                             R7 2 0
      204 DUPTABLE                         R7 K47 [{"formId", "fields", "validation"}]
      205 GETUPVAL                         R8 14
      206 GETTABLEKS                       R8 R8 K44 ["formId"]
      208 SETTABLEKS                       R8 R7 K44 ["formId"]
      210 SETTABLEKS                       R5 R7 K45 ["fields"]
      212 GETUPVAL                         R8 15
      213 DUPTABLE                         R9 K50 [{"kind", "rules"}]
      214 GETUPVAL                         R10 16
      215 GETTABLEKS                       R10 R10 K51 ["All"]
      217 SETTABLEKS                       R10 R9 K48 ["kind"]
      219 NEWTABLE                         R10 0 2
      221 GETUPVAL                         R11 15
      222 DUPTABLE                         R12 K50 [{"kind", "rules"}]
      223 GETUPVAL                         R13 16
      224 GETTABLEKS                       R13 R13 K52 ["Any"]
      226 SETTABLEKS                       R13 R12 K48 ["kind"]
      228 NEWTABLE                         R13 0 2
      230 GETUPVAL                         R14 15
      231 DUPTABLE                         R15 K54 [{"kind", "field"}]
      232 GETUPVAL                         R16 16
      233 GETTABLEKS                       R16 R16 K55 ["NonEmpty"]
      235 SETTABLEKS                       R16 R15 K48 ["kind"]
      237 GETUPVAL                         R16 9
      238 GETTABLEKS                       R16 R16 K23 ["TextPrompt"]
      240 SETTABLEKS                       R16 R15 K53 ["field"]
      242 CALL                             R14 1 1
      243 GETUPVAL                         R15 15
      244 DUPTABLE                         R16 K54 [{"kind", "field"}]
      245 GETUPVAL                         R17 16
      246 GETTABLEKS                       R17 R17 K55 ["NonEmpty"]
      248 SETTABLEKS                       R17 R16 K48 ["kind"]
      250 GETUPVAL                         R17 9
      251 GETTABLEKS                       R17 R17 K25 ["HintImage"]
      253 SETTABLEKS                       R17 R16 K53 ["field"]
      255 CALL                             R15 1 -1
      256 SETLIST                          R13 R14 -1 [1]
      258 SETTABLEKS                       R13 R12 K49 ["rules"]
      260 CALL                             R11 1 1
      261 GETUPVAL                         R12 15
      262 DUPTABLE                         R13 K57 [{"kind", "rule"}]
      263 GETUPVAL                         R14 16
      264 GETTABLEKS                       R14 R14 K58 ["Not"]
      266 SETTABLEKS                       R14 R13 K48 ["kind"]
      268 GETUPVAL                         R14 15
      269 DUPTABLE                         R15 K61 [{["kind"], ["field"], ["value"] = False}]
      270 GETUPVAL                         R16 16
      271 GETTABLEKS                       R16 R16 K62 ["Equals"]
      273 SETTABLEKS                       R16 R15 K48 ["kind"]
      275 GETUPVAL                         R16 9
      276 GETTABLEKS                       R16 R16 K63 ["SelectedInstanceRefIsValid"]
      278 SETTABLEKS                       R16 R15 K53 ["field"]
      280 CALL                             R14 1 1
      281 SETTABLEKS                       R14 R13 K56 ["rule"]
      283 CALL                             R12 1 -1
      284 SETLIST                          R10 R11 -1 [1]
      286 SETTABLEKS                       R10 R9 K49 ["rules"]
      288 CALL                             R8 1 1
      289 SETTABLEKS                       R8 R7 K46 ["validation"]
      291 DUPTABLE                         R8 K65 [{"name", "arguments"}]
      292 GETUPVAL                         R9 17
      293 GETTABLEKS                       R9 R9 K66 ["AskInput"]
      295 SETTABLEKS                       R9 R8 K10 ["name"]
      297 SETTABLEKS                       R7 R8 K64 ["arguments"]
      299 RETURN                           R8 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["resolveUri"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["HintImage"]
       12 GETTABLE                         R3 R1 R4
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["Mode"]
       17 GETTABLE                         R3 R1 R4
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantTextureGenModelSelection"]
       21 JUMPIFNOT                        R5 ; [+9]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K6 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+3]
       29 MOVE                             R4 R3
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 GETUPVAL                         R5 4
       33 JUMPIFNOT                        R5 ; [+42]
       34 JUMPIFNOT                        R4 ; [+5]
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K8 ["MODEL_BY_MODE"]
       38 GETTABLE                         R5 R6 R4
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 JUMPIFNOT                        R5 ; [+6]
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R6 R6 K9 ["writeModel"]
       45 GETUPVAL                         R7 7
       46 MOVE                             R8 R5
       47 CALL                             R6 2 0
       48 GETUPVAL                         R7 8
       49 GETTABLEKS                       R7 R7 K10 ["imageSelection"]
       51 JUMPIFNOT                        R7 ; [+6]
       52 GETUPVAL                         R6 8
       53 GETTABLEKS                       R6 R6 K10 ["imageSelection"]
       55 GETTABLEKS                       R6 R6 K11 ["autoSelectViewField"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 JUMPIFNOT                        R6 ; [+2]
       60 GETTABLE                         R7 R1 R6
       61 JUMP                             ; [+1]
       62 LOADNIL                          R7
       63 FASTCALL1                        TYPEOF R7 ; [+3]
       64 MOVE                             R9 R7
       65 GETIMPORT                        R8 K6 [typeof]
       67 CALL                             R8 1 1
       68 JUMPIFNOTEQKS                    R8 K12 ["boolean"] ; [+7]
       70 GETUPVAL                         R8 6
       71 GETTABLEKS                       R8 R8 K13 ["writeAutoSelectView"]
       73 GETUPVAL                         R9 7
       74 MOVE                             R10 R7
       75 CALL                             R8 2 0
       76 DUPTABLE                         R5 K21 [{["textPrompt"], ["hintImage"], ["isManualRun"] = True, ["selectedInstanceRef"], ["model"], ["targetId"]}]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K22 ["TextPrompt"]
       80 GETTABLE                         R6 R1 R7
       81 SETTABLEKS                       R6 R5 K14 ["textPrompt"]
       83 SETTABLEKS                       R2 R5 K15 ["hintImage"]
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K23 ["SelectedInstanceRef"]
       88 GETTABLE                         R6 R1 R7
       89 SETTABLEKS                       R6 R5 K18 ["selectedInstanceRef"]
       91 SETTABLEKS                       R4 R5 K19 ["model"]
       93 GETUPVAL                         R6 9
       94 SETTABLEKS                       R6 R5 K20 ["targetId"]
       96 DUPTABLE                         R6 K26 [{"name", "arguments"}]
       97 GETUPVAL                         R7 10
       98 GETTABLEKS                       R7 R7 K27 ["TextureGen"]
      100 SETTABLEKS                       R7 R6 K24 ["name"]
      102 SETTABLEKS                       R5 R6 K25 ["arguments"]
      104 RETURN                           R6 1

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R3 R1
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+3]
        5 GETTABLEN                        R2 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["getFFlagGen3dTextureGenPersistPreferences"]
       12 CALL                             R4 0 1
       13 DUPTABLE                         R5 K3 [{"getSetting", "setSetting"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["environment"]
       17 GETTABLEKS                       R6 R6 K5 ["getPluginSetting"]
       19 SETTABLEKS                       R6 R5 K1 ["getSetting"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["environment"]
       24 GETTABLEKS                       R6 R6 K6 ["setPluginSetting"]
       26 SETTABLEKS                       R6 R5 K2 ["setSetting"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          REF R3
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U13
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          UPVAL U14
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          REF R3
       58 CAPTURE                          UPVAL U13
       59 NEWTABLE                         R8 0 2
       61 MOVE                             R9 R6
       62 MOVE                             R10 R7
       63 SETLIST                          R8 R9 2 [1]
       65 CLOSEUPVALS                      R3
       66 RETURN                           R8 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["TextureGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U11
       24 GETUPVAL                         R5 12
       25 GETTABLEKS                       R5 R5 K2 ["define"]
       27 CALL                             R5 0 1
       28 GETUPVAL                         R7 13
       29 GETTABLEKS                       R7 R7 K3 ["TextureGen"]
       31 NAMECALL                         R5 R5 K4 ["setName"]
       33 CALL                             R5 2 1
       34 LOADK                            R7 K5 ["Re-textures an existing mesh using AI, given a text prompt describing the desired look. Requires a source MeshPart or Model. Replaces the source in place."]
       35 NAMECALL                         R5 R5 K6 ["setDescription"]
       37 CALL                             R5 2 1
       38 LOADK                            R7 K7 ["textPrompt"]
       39 DUPTABLE                         R8 K12 [{["type"] = "string", ["description"] = "Text description of the desired texture/appearance, e.g. \"rusty metal\"."}]
       40 NAMECALL                         R5 R5 K13 ["addArgument"]
       42 CALL                             R5 3 1
       43 LOADK                            R7 K14 ["hintImage"]
       44 DUPTABLE                         R8 K17 [{["type"] = "object", ["description"] = "Optional reference image guiding the texture style. When provided, textPrompt may be an empty string."}]
       45 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       47 CALL                             R5 3 1
       48 LOADK                            R7 K19 ["instance_path"]
       49 DUPTABLE                         R8 K21 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       50 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       52 CALL                             R5 3 1
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K22 ["FFlagAssistantTextureGenModelSelection"]
       56 JUMPIFNOT                        R6 ; [+30]
       57 LOADK                            R8 K23 ["model"]
       58 DUPTABLE                         R9 K25 [{["type"] = "string", ["enum"], ["description"]}]
       59 NEWTABLE                         R10 0 2
       61 GETUPVAL                         R11 9
       62 GETTABLEKS                       R11 R11 K26 ["MODE"]
       64 GETTABLEKS                       R11 R11 K27 ["Fast"]
       66 GETUPVAL                         R12 9
       67 GETTABLEKS                       R12 R12 K26 ["MODE"]
       69 GETTABLEKS                       R12 R12 K28 ["Quality"]
       71 SETLIST                          R10 R11 2 [1]
       73 SETTABLEKS                       R10 R9 K24 ["enum"]
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K29 ["FFlagAssistantTextureGenMcpQualityAutoView"]
       78 JUMPIFNOT                        R11 ; [+2]
       79 LOADK                            R10 K30 ["Generation mode. \"Fast\" (default) trades quality for speed. \"Quality\" is a research preview and can vary in results; it first generates a reference image from an automatically selected view, so it takes longer."]
       80 JUMP                             ; [+1]
       81 LOADK                            R10 K31 ["Generation mode. \"Fast\" trades quality for speed. \"Quality\" (default) is a research preview and can vary in results."]
       82 SETTABLEKS                       R10 R9 K10 ["description"]
       84 NAMECALL                         R6 R5 K18 ["addOptionalArgument"]
       86 CALL                             R6 3 0
       87 LOADK                            R8 K32 ["Texture Generation"]
       88 NAMECALL                         R6 R5 K33 ["setTitle"]
       90 CALL                             R6 2 1
       91 DUPTABLE                         R8 K41 [{["title"] = "Texture Generation", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       92 NAMECALL                         R6 R6 K42 ["setAnnotations"]
       94 CALL                             R6 2 1
       95 MOVE                             R8 R4
       96 NAMECALL                         R6 R6 K43 ["setHandler"]
       98 CALL                             R6 2 1
       99 NAMECALL                         R6 R6 K44 ["build"]
      101 CALL                             R6 1 1
      102 NEWCLOSURE                       R7 P2
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U14
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          UPVAL U15
      111 CAPTURE                          UPVAL U16
      112 CAPTURE                          UPVAL U9
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          UPVAL U18
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          UPVAL U19
      118 CAPTURE                          UPVAL U20
      119 DUPTABLE                         R8 K49 [{["command"] = "generate_texture", ["getDescription"], ["runToolChain"]}]
      120 DUPCLOSURE                       R9 K50 [PROTO_15]
      121 CAPTURE                          UPVAL U21
      122 SETTABLEKS                       R9 R8 K47 ["getDescription"]
      124 SETTABLEKS                       R7 R8 K48 ["runToolChain"]
      126 DUPTABLE                         R9 K55 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      127 SETTABLEKS                       R6 R9 K51 ["definition"]
      129 GETUPVAL                         R11 1
      130 GETTABLEKS                       R11 R11 K56 ["FFlagAssistantTextureGenTool"]
      132 JUMPIFNOT                        R11 ; [+6]
      133 NEWTABLE                         R10 0 1
      135 MOVE                             R11 R8
      136 SETLIST                          R10 R11 1 [1]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R10
      140 SETTABLEKS                       R10 R9 K52 ["slashCommands"]
      142 DUPCLOSURE                       R10 K57 [PROTO_16]
      143 SETTABLEKS                       R10 R9 K53 ["getPreExecuteWarning"]
      145 DUPTABLE                         R10 K59 [{["resetTimeoutOnProgress"] = True}]
      146 SETTABLEKS                       R10 R9 K54 ["toolCallOptions"]
      148 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Gen3dCore"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["AskInput"]
       36 GETTABLEKS                       R7 R7 K16 ["AskInputTypes"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R0 K14 ["Util"]
       43 GETTABLEKS                       R8 R8 K17 ["TextureGen"]
       45 GETTABLEKS                       R8 R8 K18 ["AutoViewReference"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R0 K19 ["Guest"]
       52 GETTABLEKS                       R9 R9 K20 ["Environment"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R0 K21 ["Flags"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Util"]
       64 GETTABLEKS                       R11 R11 K17 ["TextureGen"]
       66 GETTABLEKS                       R11 R11 K22 ["HintImageCameraStore"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K14 ["Util"]
       73 GETTABLEKS                       R12 R12 K23 ["ImageContentStore"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K14 ["Util"]
       80 GETTABLEKS                       R13 R13 K24 ["NetworkingIdentity"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K10 [require]
       85 GETTABLEKS                       R14 R0 K14 ["Util"]
       87 GETTABLEKS                       R14 R14 K25 ["SlashCommandConfiguration"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K10 [require]
       92 GETTABLEKS                       R15 R0 K26 ["Remotes"]
       94 GETTABLEKS                       R15 R15 K27 ["TextureGenRemotes"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K10 [require]
       99 GETTABLEKS                       R16 R0 K14 ["Util"]
      101 GETTABLEKS                       R16 R16 K17 ["TextureGen"]
      103 GETTABLEKS                       R16 R16 K28 ["TextureGenTypes"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K10 [require]
      108 GETTABLEKS                       R17 R0 K29 ["Tools"]
      110 GETTABLEKS                       R17 R17 K30 ["ToolTypes"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K10 [require]
      115 GETTABLEKS                       R18 R0 K14 ["Util"]
      117 GETTABLEKS                       R18 R18 K31 ["ToolUtils"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K10 [require]
      122 GETTABLEKS                       R19 R0 K32 ["Resources"]
      124 GETTABLEKS                       R19 R19 K33 ["Localization"]
      126 GETTABLEKS                       R19 R19 K34 ["Translator"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K10 [require]
      131 GETTABLEKS                       R20 R0 K35 ["Types"]
      133 CALL                             R19 1 1
      134 GETTABLEKS                       R20 R5 K14 ["Util"]
      136 GETTABLEKS                       R20 R20 K36 ["ToolBuilder"]
      138 GETTABLEKS                       R21 R5 K14 ["Util"]
      140 GETTABLEKS                       R21 R21 K37 ["ToolResult"]
      142 GETTABLEKS                       R22 R16 K38 ["ToolNames"]
      144 GETTABLEKS                       R23 R6 K39 ["INPUT_TYPE"]
      146 GETTABLEKS                       R24 R6 K40 ["RULE_KIND"]
      148 GETTABLEKS                       R25 R6 K41 ["asRule"]
      150 GETTABLEKS                       R26 R13 K42 ["Configs"]
      152 GETTABLEKS                       R26 R26 K17 ["TextureGen"]
      154 GETTABLEKS                       R27 R26 K43 ["row"]
      156 GETTABLEKS                       R28 R4 K44 ["TextureGenPreferences"]
      158 GETTABLEKS                       R30 R15 K45 ["MODEL_BY_MODE"]
      160 GETTABLEKS                       R31 R15 K46 ["MODE"]
      162 GETTABLEKS                       R31 R31 K47 ["Quality"]
      164 GETTABLE                         R29 R30 R31
      165 GETTABLEKS                       R31 R15 K45 ["MODEL_BY_MODE"]
      167 GETTABLEKS                       R32 R15 K46 ["MODE"]
      169 GETTABLEKS                       R32 R32 K48 ["Fast"]
      171 GETTABLE                         R30 R31 R32
      172 DUPCLOSURE                       R31 K49 [PROTO_0]
      173 CAPTURE                          VAL R1
      174 DUPCLOSURE                       R32 K50 [PROTO_1]
      175 DUPCLOSURE                       R33 K51 [PROTO_2]
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R32
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R30
      181 CAPTURE                          VAL R29
      182 CAPTURE                          VAL R10
      183 DUPCLOSURE                       R34 K52 [PROTO_17]
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R29
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R27
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R18
      206 RETURN                           R34 1
