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
       85 MOVE                             R6 R1
       86 FASTPCALL                        pcall 1 ; [+2]
       87 GETIMPORT                        R5 K24 [pcall]
       89 CALL                             R5 1 2
       90 MOVE                             R8 R5
       91 JUMPIFNOT                        R8 ; [+4]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       98 LOADK                            R9 K25 ["selectedInstanceRef or instance_path must be provided — texture generation requires a source MeshPart or Model"]
       99 GETIMPORT                        R7 K6 [assert]
      101 CALL                             R7 2 0
      102 GETTABLEKS                       R7 R6 K7 ["uniqueId"]
      104 RETURN                           R7 1

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
        1 GETTABLEKS                       R0 R0 K0 ["generateTexture"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertTexturedModel"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"requestId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["requestId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

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
        0 LOADB                            R3 1
        1 GETTABLEKS                       R4 R0 K0 ["targetId"]
        3 JUMPIFEQKNIL                     R4 ; [+11]
        5 GETTABLEKS                       R5 R0 K0 ["targetId"]
        7 FASTCALL1                        TYPEOF R5 ; [+2]
        8 GETIMPORT                        R4 K2 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       17 LOADK                            R4 K4 ["targetId must be a string"]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K0 ["targetId"]
       23 JUMPIF                           R2 ; [+5]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K7 ["resolveTargetAsync"]
       27 GETUPVAL                         R3 1
       28 CALL                             R2 1 1
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R2
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K8 ["environment"]
       36 MOVE                             R6 R3
       37 MOVE                             R7 R0
       38 CALL                             R4 3 1
       39 LOADB                            R5 0
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K9 ["FFlagAssistantTextureGenMcpPreviewReference"]
       43 JUMPIFNOT                        R6 ; [+6]
       44 GETTABLEKS                       R7 R4 K10 ["texturePreviewReference"]
       46 JUMPIFNOTEQKNIL                  R7 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R7 R7 K11 ["FFlagAssistantTextureGenMcpQualityAutoView"]
       53 JUMPIFNOT                        R7 ; [+86]
       54 GETTABLEKS                       R7 R4 K12 ["isManualRun"]
       56 JUMPIFEQKB                       R7 TRUE ; [+83]
       58 GETTABLEKS                       R7 R4 K13 ["model"]
       60 GETUPVAL                         R8 6
       61 JUMPIFNOTEQ                      R7 R8 ; [+78]
       63 GETTABLEKS                       R7 R4 K14 ["cameraExtrinsic"]
       65 JUMPIFNOTEQKNIL                  R7 ; [+74]
       67 JUMPIF                           R6 ; [+72]
       68 GETUPVAL                         R7 7
       69 GETTABLEKS                       R7 R7 K15 ["getFFlagGen3dTextureGenBatchedPreview"]
       71 CALL                             R7 0 1
       72 JUMPIFNOT                        R7 ; [+62]
       73 GETUPVAL                         R7 8
       74 GETTABLEKS                       R7 R7 K16 ["generateAsync"]
       76 DUPTABLE                         R8 K22 [{"environment", "prepareTexturePreviewAsync", "selectedUniqueId", "textPrompt", "referenceImage", "imageModel"}]
       77 GETUPVAL                         R9 4
       78 GETTABLEKS                       R9 R9 K8 ["environment"]
       80 SETTABLEKS                       R9 R8 K8 ["environment"]
       82 NEWCLOSURE                       R9 P1
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R9 R8 K17 ["prepareTexturePreviewAsync"]
       87 GETTABLEKS                       R9 R4 K18 ["selectedUniqueId"]
       89 SETTABLEKS                       R9 R8 K18 ["selectedUniqueId"]
       91 GETTABLEKS                       R9 R4 K19 ["textPrompt"]
       93 SETTABLEKS                       R9 R8 K19 ["textPrompt"]
       95 GETTABLEKS                       R9 R4 K23 ["hintImage"]
       97 SETTABLEKS                       R9 R8 K20 ["referenceImage"]
       99 GETUPVAL                         R10 9
      100 GETTABLEKS                       R10 R10 K24 ["imageSelection"]
      102 JUMPIFNOT                        R10 ; [+6]
      103 GETUPVAL                         R9 9
      104 GETTABLEKS                       R9 R9 K24 ["imageSelection"]
      106 GETTABLEKS                       R9 R9 K13 ["model"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R9
      110 SETTABLEKS                       R9 R8 K21 ["imageModel"]
      112 CALL                             R7 1 1
      113 GETTABLEKS                       R8 R7 K23 ["hintImage"]
      115 SETTABLEKS                       R8 R4 K23 ["hintImage"]
      117 GETTABLEKS                       R8 R7 K14 ["cameraExtrinsic"]
      119 SETTABLEKS                       R8 R4 K14 ["cameraExtrinsic"]
      121 GETTABLEKS                       R8 R7 K25 ["cameraIntrinsic"]
      123 SETTABLEKS                       R8 R4 K25 ["cameraIntrinsic"]
      125 GETTABLEKS                       R8 R7 K10 ["texturePreviewReference"]
      127 JUMPIFEQKNIL                     R8 ; [+5]
      129 GETTABLEKS                       R8 R7 K10 ["texturePreviewReference"]
      131 SETTABLEKS                       R8 R4 K10 ["texturePreviewReference"]
      133 LOADB                            R5 1
      134 JUMP                             ; [+5]
      135 GETIMPORT                        R7 K27 [error]
      137 LOADK                            R8 K28 ["\"Quality\" mode is unavailable here; use \"Fast\"."]
      138 LOADN                            R9 0
      139 CALL                             R7 2 0
      140 LOADK                            R8 K29 ["TextureGen-"]
      141 GETUPVAL                         R9 10
      142 LOADB                            R11 0
      143 NAMECALL                         R9 R9 K30 ["GenerateGUID"]
      145 CALL                             R9 2 1
      146 CONCAT                           R7 R8 R9
      147 DUPTABLE                         R8 K34 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId", "model", "isManualRun", "conversationId", "cameraExtrinsic", "cameraIntrinsic", "texturePreviewReference", "autoSelectView"}]
      148 SETTABLEKS                       R7 R8 K31 ["requestId"]
      150 GETTABLEKS                       R9 R4 K19 ["textPrompt"]
      152 SETTABLEKS                       R9 R8 K19 ["textPrompt"]
      154 GETTABLEKS                       R9 R4 K23 ["hintImage"]
      156 SETTABLEKS                       R9 R8 K23 ["hintImage"]
      158 GETTABLEKS                       R9 R4 K18 ["selectedUniqueId"]
      160 SETTABLEKS                       R9 R8 K18 ["selectedUniqueId"]
      162 GETTABLEKS                       R9 R4 K13 ["model"]
      164 SETTABLEKS                       R9 R8 K13 ["model"]
      166 GETTABLEKS                       R9 R4 K12 ["isManualRun"]
      168 SETTABLEKS                       R9 R8 K12 ["isManualRun"]
      170 SETTABLEKS                       R1 R8 K32 ["conversationId"]
      172 GETTABLEKS                       R9 R4 K14 ["cameraExtrinsic"]
      174 SETTABLEKS                       R9 R8 K14 ["cameraExtrinsic"]
      176 GETTABLEKS                       R9 R4 K25 ["cameraIntrinsic"]
      178 SETTABLEKS                       R9 R8 K25 ["cameraIntrinsic"]
      180 GETTABLEKS                       R9 R4 K10 ["texturePreviewReference"]
      182 SETTABLEKS                       R9 R8 K10 ["texturePreviewReference"]
      184 JUMPIFNOT                        R5 ; [+2]
      185 LOADB                            R9 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R9
      188 SETTABLEKS                       R9 R8 K33 ["autoSelectView"]
      190 NEWCLOSURE                       R10 P2
      191 CAPTURE                          UPVAL U2
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R8
      194 FASTPCALL                        pcall 1 ; [+2]
      195 GETIMPORT                        R9 K36 [pcall]
      197 CALL                             R9 1 2
      198 JUMPIF                           R9 ; [+11]
      199 GETIMPORT                        R11 K27 [error]
      201 LOADK                            R13 K37 ["Texture generation failed with error: "]
      202 FASTCALL1                        TOSTRING R10 ; [+3]
      203 MOVE                             R15 R10
      204 GETIMPORT                        R14 K39 [tostring]
      206 CALL                             R14 1 1
      207 CONCAT                           R12 R13 R14
      208 LOADN                            R13 0
      209 CALL                             R11 2 0
      210 GETTABLEKS                       R11 R4 K12 ["isManualRun"]
      212 JUMPIFNOT                        R11 ; [+15]
      213 DUPTABLE                         R11 K42 [{"tag", "requestId", "generationName"}]
      214 GETUPVAL                         R12 11
      215 GETTABLEKS                       R12 R12 K43 ["getLinkTag"]
      217 MOVE                             R13 R7
      218 CALL                             R12 1 1
      219 SETTABLEKS                       R12 R11 K40 ["tag"]
      221 SETTABLEKS                       R7 R11 K31 ["requestId"]
      223 GETTABLEKS                       R12 R4 K19 ["textPrompt"]
      225 SETTABLEKS                       R12 R11 K41 ["generationName"]
      227 RETURN                           R11 1
      228 NEWCLOSURE                       R12 P3
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R7
      232 FASTPCALL                        pcall 1 ; [+2]
      233 GETIMPORT                        R11 K36 [pcall]
      235 CALL                             R11 1 2
      236 JUMPIF                           R11 ; [+19]
      237 NEWCLOSURE                       R14 P4
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R7
      241 FASTPCALL                        pcall 1 ; [+2]
      242 GETIMPORT                        R13 K36 [pcall]
      244 CALL                             R13 1 0
      245 GETIMPORT                        R13 K27 [error]
      247 LOADK                            R15 K44 ["Failed to insert textured model with error: "]
      248 FASTCALL1                        TOSTRING R12 ; [+3]
      249 MOVE                             R17 R12
      250 GETIMPORT                        R16 K39 [tostring]
      252 CALL                             R16 1 1
      253 CONCAT                           R14 R15 R16
      254 LOADN                            R15 0
      255 CALL                             R13 2 0
      256 DUPTABLE                         R13 K42 [{"tag", "requestId", "generationName"}]
      257 GETUPVAL                         R14 11
      258 GETTABLEKS                       R14 R14 K43 ["getLinkTag"]
      260 MOVE                             R15 R7
      261 CALL                             R14 1 1
      262 SETTABLEKS                       R14 R13 K40 ["tag"]
      264 SETTABLEKS                       R7 R13 K31 ["requestId"]
      266 GETTABLEKS                       R14 R4 K19 ["textPrompt"]
      268 SETTABLEKS                       R14 R13 K41 ["generationName"]
      270 RETURN                           R13 1

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
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R4 K2 [pcall]
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+25]
       16 FASTCALL1                        TOSTRING R5 ; [+3]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K4 [tostring]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 2
       22 CALL                             R7 0 1
       23 MOVE                             R9 R6
       24 NAMECALL                         R7 R7 K5 ["addText"]
       26 CALL                             R7 2 1
       27 DUPTABLE                         R9 K7 [{"errorMessage"}]
       28 SETTABLEKS                       R6 R9 K6 ["errorMessage"]
       30 NAMECALL                         R7 R7 K8 ["setStructuredContent"]
       32 CALL                             R7 2 1
       33 LOADB                            R9 1
       34 NAMECALL                         R7 R7 K9 ["setError"]
       36 CALL                             R7 2 1
       37 NAMECALL                         R7 R7 K10 ["build"]
       39 CALL                             R7 1 -1
       40 RETURN                           R7 -1
       41 GETUPVAL                         R6 2
       42 CALL                             R6 0 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K11 ["toString"]
       46 DUPTABLE                         R9 K14 [{"tag", "generationName"}]
       47 GETTABLEKS                       R10 R5 K12 ["tag"]
       49 SETTABLEKS                       R10 R9 K12 ["tag"]
       51 GETTABLEKS                       R10 R5 K13 ["generationName"]
       53 SETTABLEKS                       R10 R9 K13 ["generationName"]
       55 CALL                             R8 1 -1
       56 NAMECALL                         R6 R6 K5 ["addText"]
       58 CALL                             R6 -1 1
       59 MOVE                             R8 R5
       60 NAMECALL                         R6 R6 K8 ["setStructuredContent"]
       62 CALL                             R6 2 1
       63 NAMECALL                         R6 R6 K10 ["build"]
       65 CALL                             R6 1 -1
       66 RETURN                           R6 -1

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
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R5 K2 [pcall]
       21 CALL                             R5 1 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMPIFNOT                        R3 ; [+19]
       25 JUMPIFNOT                        R4 ; [+18]
       26 DUPTABLE                         R5 K7 [{"uniqueId", "name", "className", "isValid"}]
       27 GETTABLEKS                       R6 R4 K3 ["uniqueId"]
       29 SETTABLEKS                       R6 R5 K3 ["uniqueId"]
       31 GETTABLEKS                       R6 R4 K4 ["name"]
       33 SETTABLEKS                       R6 R5 K4 ["name"]
       35 GETTABLEKS                       R6 R4 K5 ["className"]
       37 SETTABLEKS                       R6 R5 K5 ["className"]
       39 GETTABLEKS                       R6 R4 K8 ["isTextureable"]
       41 SETTABLEKS                       R6 R5 K6 ["isValid"]
       43 MOVE                             R2 R5
       44 NEWTABLE                         R5 0 3
       46 DUPTABLE                         R6 K13 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       47 GETUPVAL                         R7 7
       48 GETTABLEKS                       R7 R7 K14 ["SelectedInstanceRef"]
       50 SETTABLEKS                       R7 R6 K4 ["name"]
       52 GETUPVAL                         R7 8
       53 GETTABLEKS                       R7 R7 K15 ["Instance"]
       55 SETTABLEKS                       R7 R6 K9 ["inputType"]
       57 SETTABLEKS                       R2 R6 K10 ["initialValue"]
       59 DUPTABLE                         R7 K16 [{"name", "inputType", "initialValue"}]
       60 GETUPVAL                         R8 7
       61 GETTABLEKS                       R8 R8 K17 ["TextPrompt"]
       63 SETTABLEKS                       R8 R7 K4 ["name"]
       65 GETUPVAL                         R8 8
       66 GETTABLEKS                       R8 R8 K18 ["String"]
       68 SETTABLEKS                       R8 R7 K9 ["inputType"]
       70 GETUPVAL                         R8 9
       71 SETTABLEKS                       R8 R7 K10 ["initialValue"]
       73 DUPTABLE                         R8 K16 [{"name", "inputType", "initialValue"}]
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R9 R9 K19 ["HintImage"]
       77 SETTABLEKS                       R9 R8 K4 ["name"]
       79 GETUPVAL                         R9 8
       80 GETTABLEKS                       R9 R9 K20 ["Image"]
       82 SETTABLEKS                       R9 R8 K9 ["inputType"]
       84 GETUPVAL                         R9 10
       85 SETTABLEKS                       R9 R8 K10 ["initialValue"]
       87 SETLIST                          R5 R6 3 [1]
       89 GETUPVAL                         R6 11
       90 GETTABLEKS                       R6 R6 K21 ["FFlagAssistantTextureGenModelSelection"]
       92 JUMPIFNOT                        R6 ; [+53]
       93 GETTABLEKS                       R7 R1 K22 ["model"]
       95 JUMPIFNOT                        R7 ; [+7]
       96 GETUPVAL                         R7 12
       97 GETTABLEKS                       R7 R7 K23 ["MODE_BY_MODEL"]
       99 GETTABLEKS                       R8 R1 K22 ["model"]
      101 GETTABLE                         R6 R7 R8
      102 JUMP                             ; [+1]
      103 LOADNIL                          R6
      104 DUPTABLE                         R9 K25 [{"name", "inputType", "initialValue", "options"}]
      105 GETUPVAL                         R10 7
      106 GETTABLEKS                       R10 R10 K26 ["Mode"]
      108 SETTABLEKS                       R10 R9 K4 ["name"]
      110 GETUPVAL                         R10 8
      111 GETTABLEKS                       R10 R10 K27 ["Option"]
      113 SETTABLEKS                       R10 R9 K9 ["inputType"]
      115 MOVE                             R10 R6
      116 JUMPIF                           R10 ; [+5]
      117 GETUPVAL                         R10 12
      118 GETTABLEKS                       R10 R10 K28 ["MODE"]
      120 GETTABLEKS                       R10 R10 K29 ["Quality"]
      122 SETTABLEKS                       R10 R9 K10 ["initialValue"]
      124 NEWTABLE                         R10 0 2
      126 GETUPVAL                         R11 12
      127 GETTABLEKS                       R11 R11 K28 ["MODE"]
      129 GETTABLEKS                       R11 R11 K30 ["Fast"]
      131 GETUPVAL                         R12 12
      132 GETTABLEKS                       R12 R12 K28 ["MODE"]
      134 GETTABLEKS                       R12 R12 K29 ["Quality"]
      136 SETLIST                          R10 R11 2 [1]
      138 SETTABLEKS                       R10 R9 K24 ["options"]
      140 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      142 MOVE                             R8 R5
      143 GETIMPORT                        R7 K33 [table.insert]
      145 CALL                             R7 2 0
      146 GETUPVAL                         R7 13
      147 GETTABLEKS                       R7 R7 K34 ["imageSelection"]
      149 JUMPIFNOT                        R7 ; [+6]
      150 GETUPVAL                         R6 13
      151 GETTABLEKS                       R6 R6 K34 ["imageSelection"]
      153 GETTABLEKS                       R6 R6 K35 ["autoSelectViewField"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R6
      157 JUMPIFEQKNIL                     R6 ; [+23]
      159 DUPTABLE                         R9 K16 [{"name", "inputType", "initialValue"}]
      160 SETTABLEKS                       R6 R9 K4 ["name"]
      162 GETUPVAL                         R10 8
      163 GETTABLEKS                       R10 R10 K36 ["Boolean"]
      165 SETTABLEKS                       R10 R9 K9 ["inputType"]
      167 GETTABLEKS                       R11 R1 K37 ["autoSelectView"]
      169 JUMPIFEQKB                       R11 TRUE ; [+2]
      171 LOADB                            R10 0 +1
      172 LOADB                            R10 1
      173 SETTABLEKS                       R10 R9 K10 ["initialValue"]
      175 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      177 MOVE                             R8 R5
      178 GETIMPORT                        R7 K33 [table.insert]
      180 CALL                             R7 2 0
      181 DUPTABLE                         R7 K41 [{"formId", "fields", "validation"}]
      182 GETUPVAL                         R8 13
      183 GETTABLEKS                       R8 R8 K38 ["formId"]
      185 SETTABLEKS                       R8 R7 K38 ["formId"]
      187 SETTABLEKS                       R5 R7 K39 ["fields"]
      189 GETUPVAL                         R8 14
      190 DUPTABLE                         R9 K44 [{"kind", "rules"}]
      191 GETUPVAL                         R10 15
      192 GETTABLEKS                       R10 R10 K45 ["All"]
      194 SETTABLEKS                       R10 R9 K42 ["kind"]
      196 NEWTABLE                         R10 0 2
      198 GETUPVAL                         R11 14
      199 DUPTABLE                         R12 K44 [{"kind", "rules"}]
      200 GETUPVAL                         R13 15
      201 GETTABLEKS                       R13 R13 K46 ["Any"]
      203 SETTABLEKS                       R13 R12 K42 ["kind"]
      205 NEWTABLE                         R13 0 2
      207 GETUPVAL                         R14 14
      208 DUPTABLE                         R15 K48 [{"kind", "field"}]
      209 GETUPVAL                         R16 15
      210 GETTABLEKS                       R16 R16 K49 ["NonEmpty"]
      212 SETTABLEKS                       R16 R15 K42 ["kind"]
      214 GETUPVAL                         R16 7
      215 GETTABLEKS                       R16 R16 K17 ["TextPrompt"]
      217 SETTABLEKS                       R16 R15 K47 ["field"]
      219 CALL                             R14 1 1
      220 GETUPVAL                         R15 14
      221 DUPTABLE                         R16 K48 [{"kind", "field"}]
      222 GETUPVAL                         R17 15
      223 GETTABLEKS                       R17 R17 K49 ["NonEmpty"]
      225 SETTABLEKS                       R17 R16 K42 ["kind"]
      227 GETUPVAL                         R17 7
      228 GETTABLEKS                       R17 R17 K19 ["HintImage"]
      230 SETTABLEKS                       R17 R16 K47 ["field"]
      232 CALL                             R15 1 -1
      233 SETLIST                          R13 R14 -1 [1]
      235 SETTABLEKS                       R13 R12 K43 ["rules"]
      237 CALL                             R11 1 1
      238 GETUPVAL                         R12 14
      239 DUPTABLE                         R13 K51 [{"kind", "rule"}]
      240 GETUPVAL                         R14 15
      241 GETTABLEKS                       R14 R14 K52 ["Not"]
      243 SETTABLEKS                       R14 R13 K42 ["kind"]
      245 GETUPVAL                         R14 14
      246 DUPTABLE                         R15 K55 [{["kind"], ["field"], ["value"] = False}]
      247 GETUPVAL                         R16 15
      248 GETTABLEKS                       R16 R16 K56 ["Equals"]
      250 SETTABLEKS                       R16 R15 K42 ["kind"]
      252 GETUPVAL                         R16 7
      253 GETTABLEKS                       R16 R16 K57 ["SelectedInstanceRefIsValid"]
      255 SETTABLEKS                       R16 R15 K47 ["field"]
      257 CALL                             R14 1 1
      258 SETTABLEKS                       R14 R13 K50 ["rule"]
      260 CALL                             R12 1 -1
      261 SETLIST                          R10 R11 -1 [1]
      263 SETTABLEKS                       R10 R9 K43 ["rules"]
      265 CALL                             R8 1 1
      266 SETTABLEKS                       R8 R7 K40 ["validation"]
      268 DUPTABLE                         R8 K59 [{"name", "arguments"}]
      269 GETUPVAL                         R9 16
      270 GETTABLEKS                       R9 R9 K60 ["AskInput"]
      272 SETTABLEKS                       R9 R8 K4 ["name"]
      274 SETTABLEKS                       R7 R8 K58 ["arguments"]
      276 RETURN                           R8 1

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
       34 CAPTURE                          REF R3
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 CAPTURE                          UPVAL U13
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          UPVAL U15
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          REF R3
       57 CAPTURE                          UPVAL U13
       58 NEWTABLE                         R8 0 2
       60 MOVE                             R9 R6
       61 MOVE                             R10 R7
       62 SETLIST                          R8 R9 2 [1]
       64 CLOSEUPVALS                      R3
       65 RETURN                           R8 1

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
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
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
       53 GETUPVAL                         R6 3
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
       75 GETUPVAL                         R11 3
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
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U15
      110 CAPTURE                          UPVAL U16
      111 CAPTURE                          UPVAL U3
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
      129 GETUPVAL                         R11 3
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
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R33
      187 CAPTURE                          VAL R9
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
