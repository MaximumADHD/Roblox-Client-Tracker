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
      108 GETUPVAL                         R7 3
      109 GETTABLEKS                       R7 R7 K17 ["MODEL_BY_MODE"]
      111 GETUPVAL                         R8 3
      112 GETTABLEKS                       R8 R8 K19 ["MODE"]
      114 GETTABLEKS                       R8 R8 K20 ["Quality"]
      116 GETTABLE                         R6 R7 R8
      117 JUMP                             ; [+1]
      118 LOADNIL                          R6
      119 GETUPVAL                         R7 4
      120 GETTABLEKS                       R7 R7 K21 ["get"]
      122 MOVE                             R8 R3
      123 MOVE                             R9 R5
      124 CALL                             R7 2 1
      125 DUPTABLE                         R8 K25 [{"textPrompt", "hintImage", "isManualRun", "selectedUniqueId", "model", "cameraExtrinsic", "cameraIntrinsic"}]
      126 GETTABLEKS                       R9 R2 K8 ["textPrompt"]
      128 SETTABLEKS                       R9 R8 K8 ["textPrompt"]
      130 SETTABLEKS                       R3 R8 K7 ["hintImage"]
      132 SETTABLEKS                       R4 R8 K11 ["isManualRun"]
      134 SETTABLEKS                       R5 R8 K22 ["selectedUniqueId"]
      136 SETTABLEKS                       R6 R8 K14 ["model"]
      138 JUMPIFNOT                        R7 ; [+3]
      139 GETTABLEKS                       R9 R7 K23 ["cameraExtrinsic"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K23 ["cameraExtrinsic"]
      145 JUMPIFNOT                        R7 ; [+3]
      146 GETTABLEKS                       R9 R7 K24 ["cameraIntrinsic"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R9
      150 SETTABLEKS                       R9 R8 K24 ["cameraIntrinsic"]
      152 RETURN                           R8 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedMeshRef"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"requestId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["requestId"]
        8 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_7:
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
       62 LOADK                            R7 K15 ["TextureGen-"]
       63 GETUPVAL                         R8 6
       64 LOADB                            R10 0
       65 NAMECALL                         R8 R8 K16 ["GenerateGUID"]
       67 CALL                             R8 2 1
       68 CONCAT                           R6 R7 R8
       69 DUPTABLE                         R7 K26 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId", "model", "isManualRun", "conversationId", "cameraExtrinsic", "cameraIntrinsic"}]
       70 SETTABLEKS                       R6 R7 K17 ["requestId"]
       72 GETTABLEKS                       R8 R5 K18 ["textPrompt"]
       74 SETTABLEKS                       R8 R7 K18 ["textPrompt"]
       76 GETTABLEKS                       R8 R5 K19 ["hintImage"]
       78 SETTABLEKS                       R8 R7 K19 ["hintImage"]
       80 GETTABLEKS                       R8 R5 K20 ["selectedUniqueId"]
       82 SETTABLEKS                       R8 R7 K20 ["selectedUniqueId"]
       84 GETTABLEKS                       R8 R5 K21 ["model"]
       86 SETTABLEKS                       R8 R7 K21 ["model"]
       88 GETTABLEKS                       R8 R5 K22 ["isManualRun"]
       90 SETTABLEKS                       R8 R7 K22 ["isManualRun"]
       92 SETTABLEKS                       R1 R7 K23 ["conversationId"]
       94 GETTABLEKS                       R8 R5 K24 ["cameraExtrinsic"]
       96 SETTABLEKS                       R8 R7 K24 ["cameraExtrinsic"]
       98 GETTABLEKS                       R8 R5 K25 ["cameraIntrinsic"]
      100 SETTABLEKS                       R8 R7 K25 ["cameraIntrinsic"]
      102 GETIMPORT                        R8 K28 [pcall]
      104 NEWCLOSURE                       R9 P1
      105 CAPTURE                          UPVAL U0
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          REF R4
      108 CAPTURE                          VAL R7
      109 CAPTURE                          REF R2
      110 CALL                             R8 1 2
      111 JUMPIF                           R8 ; [+11]
      112 GETIMPORT                        R10 K30 [error]
      114 LOADK                            R12 K31 ["Texture generation failed with error: "]
      115 FASTCALL1                        TOSTRING R9 ; [+3]
      116 MOVE                             R14 R9
      117 GETIMPORT                        R13 K33 [tostring]
      119 CALL                             R13 1 1
      120 CONCAT                           R11 R12 R13
      121 LOADN                            R12 0
      122 CALL                             R10 2 0
      123 GETTABLEKS                       R10 R5 K22 ["isManualRun"]
      125 JUMPIFNOT                        R10 ; [+16]
      126 DUPTABLE                         R10 K36 [{"tag", "requestId", "generationName"}]
      127 GETUPVAL                         R11 7
      128 GETTABLEKS                       R11 R11 K37 ["getLinkTag"]
      130 MOVE                             R12 R6
      131 CALL                             R11 1 1
      132 SETTABLEKS                       R11 R10 K34 ["tag"]
      134 SETTABLEKS                       R6 R10 K17 ["requestId"]
      136 GETTABLEKS                       R11 R5 K18 ["textPrompt"]
      138 SETTABLEKS                       R11 R10 K35 ["generationName"]
      140 CLOSEUPVALS                      R2
      141 RETURN                           R10 1
      142 GETIMPORT                        R10 K28 [pcall]
      144 NEWCLOSURE                       R11 P2
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          REF R4
      148 CAPTURE                          VAL R6
      149 CAPTURE                          REF R2
      150 CALL                             R10 1 2
      151 JUMPIF                           R10 ; [+31]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K0 ["FFlagAssistantUseNewDMNetworking"]
      155 JUMPIFNOT                        R12 ; [+8]
      156 GETIMPORT                        R12 K28 [pcall]
      158 NEWCLOSURE                       R13 P3
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          REF R4
      161 CAPTURE                          VAL R6
      162 CALL                             R12 1 0
      163 JUMP                             ; [+8]
      164 GETIMPORT                        R12 K28 [pcall]
      166 GETTABLEKS                       R13 R2 K38 ["cancelGenerationAsync"]
      168 DUPTABLE                         R14 K39 [{"requestId"}]
      169 SETTABLEKS                       R6 R14 K17 ["requestId"]
      171 CALL                             R12 2 0
      172 GETIMPORT                        R12 K30 [error]
      174 LOADK                            R14 K40 ["Failed to insert textured model with error: "]
      175 FASTCALL1                        TOSTRING R11 ; [+3]
      176 MOVE                             R16 R11
      177 GETIMPORT                        R15 K33 [tostring]
      179 CALL                             R15 1 1
      180 CONCAT                           R13 R14 R15
      181 LOADN                            R14 0
      182 CALL                             R12 2 0
      183 DUPTABLE                         R12 K36 [{"tag", "requestId", "generationName"}]
      184 GETUPVAL                         R13 7
      185 GETTABLEKS                       R13 R13 K37 ["getLinkTag"]
      187 MOVE                             R14 R6
      188 CALL                             R13 1 1
      189 SETTABLEKS                       R13 R12 K34 ["tag"]
      191 SETTABLEKS                       R6 R12 K17 ["requestId"]
      193 GETTABLEKS                       R13 R5 K18 ["textPrompt"]
      195 SETTABLEKS                       R13 R12 K35 ["generationName"]
      197 CLOSEUPVALS                      R2
      198 RETURN                           R12 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["TextureGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_16:
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
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U7
       20 GETUPVAL                         R5 8
       21 GETTABLEKS                       R5 R5 K2 ["define"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R7 9
       25 GETTABLEKS                       R7 R7 K3 ["TextureGen"]
       27 NAMECALL                         R5 R5 K4 ["setName"]
       29 CALL                             R5 2 1
       30 LOADK                            R7 K5 ["Re-textures an existing mesh using AI, given a text prompt describing the desired look. Requires a source MeshPart or Model. Replaces the source in place."]
       31 NAMECALL                         R5 R5 K6 ["setDescription"]
       33 CALL                             R5 2 1
       34 LOADK                            R7 K7 ["textPrompt"]
       35 DUPTABLE                         R8 K12 [{["type"] = "string", ["description"] = "Text description of the desired texture/appearance, e.g. \"rusty metal\"."}]
       36 NAMECALL                         R5 R5 K13 ["addArgument"]
       38 CALL                             R5 3 1
       39 LOADK                            R7 K14 ["hintImage"]
       40 DUPTABLE                         R8 K17 [{["type"] = "object", ["description"] = "Optional reference image guiding the texture style. When provided, textPrompt may be an empty string."}]
       41 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       43 CALL                             R5 3 1
       44 LOADK                            R7 K19 ["instance_path"]
       45 DUPTABLE                         R8 K21 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       46 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       48 CALL                             R5 3 1
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K22 ["FFlagAssistantTextureGenModelSelection"]
       52 JUMPIFNOT                        R6 ; [+21]
       53 LOADK                            R8 K23 ["model"]
       54 DUPTABLE                         R9 K26 [{["type"] = "string", ["enum"], ["description"] = "Generation mode. \"Fast\" trades quality for speed. \"Quality\" (default) is a research preview that only supports a single-MeshPart source and can vary in results."}]
       55 NEWTABLE                         R10 0 2
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R11 R11 K27 ["MODE"]
       60 GETTABLEKS                       R11 R11 K28 ["Fast"]
       62 GETUPVAL                         R12 5
       63 GETTABLEKS                       R12 R12 K27 ["MODE"]
       65 GETTABLEKS                       R12 R12 K29 ["Quality"]
       67 SETLIST                          R10 R11 2 [1]
       69 SETTABLEKS                       R10 R9 K24 ["enum"]
       71 NAMECALL                         R6 R5 K18 ["addOptionalArgument"]
       73 CALL                             R6 3 0
       74 DUPTABLE                         R8 K37 [{["title"] = "Texture Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       75 NAMECALL                         R6 R5 K38 ["setAnnotations"]
       77 CALL                             R6 2 1
       78 MOVE                             R8 R4
       79 NAMECALL                         R6 R6 K39 ["setHandler"]
       81 CALL                             R6 2 1
       82 NAMECALL                         R6 R6 K40 ["build"]
       84 CALL                             R6 1 1
       85 NEWCLOSURE                       R7 P2
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          UPVAL U1
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          UPVAL U13
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          UPVAL U15
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          UPVAL U17
      101 CAPTURE                          UPVAL U18
      102 DUPTABLE                         R8 K45 [{["command"] = "generate_texture", ["getDescription"], ["runToolChain"]}]
      103 DUPCLOSURE                       R9 K46 [PROTO_14]
      104 CAPTURE                          UPVAL U19
      105 SETTABLEKS                       R9 R8 K43 ["getDescription"]
      107 SETTABLEKS                       R7 R8 K44 ["runToolChain"]
      109 DUPTABLE                         R9 K51 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      110 SETTABLEKS                       R6 R9 K47 ["definition"]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R11 R11 K52 ["FFlagAssistantTextureGenTool"]
      115 JUMPIFNOT                        R11 ; [+6]
      116 NEWTABLE                         R10 0 1
      118 MOVE                             R11 R8
      119 SETLIST                          R10 R11 1 [1]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R10
      123 SETTABLEKS                       R10 R9 K48 ["slashCommands"]
      125 DUPCLOSURE                       R10 K53 [PROTO_15]
      126 SETTABLEKS                       R10 R9 K49 ["getPreExecuteWarning"]
      128 DUPTABLE                         R10 K56 [{["resetTimeoutOnProgress"] = True}]
      129 SETTABLEKS                       R10 R9 K50 ["toolCallOptions"]
      131 RETURN                           R9 1

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
       41 GETTABLEKS                       R8 R0 K17 ["Guest"]
       43 GETTABLEKS                       R8 R8 K18 ["Environment"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K19 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Util"]
       55 GETTABLEKS                       R10 R10 K20 ["TextureGen"]
       57 GETTABLEKS                       R10 R10 K21 ["HintImageCameraStore"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Util"]
       64 GETTABLEKS                       R11 R11 K22 ["ImageContentStore"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K10 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Util"]
       71 GETTABLEKS                       R12 R12 K23 ["NetworkingIdentity"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K10 [require]
       76 GETTABLEKS                       R13 R0 K14 ["Util"]
       78 GETTABLEKS                       R13 R13 K24 ["SlashCommandConfiguration"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R0 K25 ["Remotes"]
       85 GETTABLEKS                       R14 R14 K26 ["TextureGenRemotes"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K10 [require]
       90 GETTABLEKS                       R15 R0 K14 ["Util"]
       92 GETTABLEKS                       R15 R15 K20 ["TextureGen"]
       94 GETTABLEKS                       R15 R15 K27 ["TextureGenTypes"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K10 [require]
       99 GETTABLEKS                       R16 R0 K28 ["Tools"]
      101 GETTABLEKS                       R16 R16 K29 ["ToolTypes"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R0 K14 ["Util"]
      108 GETTABLEKS                       R17 R17 K30 ["ToolUtils"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K10 [require]
      113 GETTABLEKS                       R18 R0 K31 ["Resources"]
      115 GETTABLEKS                       R18 R18 K32 ["Localization"]
      117 GETTABLEKS                       R18 R18 K33 ["Translator"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K10 [require]
      122 GETTABLEKS                       R19 R0 K34 ["Types"]
      124 CALL                             R18 1 1
      125 GETTABLEKS                       R19 R5 K14 ["Util"]
      127 GETTABLEKS                       R19 R19 K35 ["ToolBuilder"]
      129 GETTABLEKS                       R20 R5 K14 ["Util"]
      131 GETTABLEKS                       R20 R20 K36 ["ToolResult"]
      133 GETTABLEKS                       R21 R15 K37 ["ToolNames"]
      135 GETTABLEKS                       R22 R6 K38 ["INPUT_TYPE"]
      137 GETTABLEKS                       R23 R6 K39 ["RULE_KIND"]
      139 GETTABLEKS                       R24 R6 K40 ["asRule"]
      141 GETTABLEKS                       R25 R12 K41 ["Configs"]
      143 GETTABLEKS                       R25 R25 K20 ["TextureGen"]
      145 GETTABLEKS                       R26 R25 K42 ["row"]
      147 GETTABLEKS                       R27 R4 K43 ["TextureGenPreferences"]
      149 DUPCLOSURE                       R28 K44 [PROTO_0]
      150 CAPTURE                          VAL R1
      151 DUPCLOSURE                       R29 K45 [PROTO_1]
      152 DUPCLOSURE                       R30 K46 [PROTO_2]
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R29
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R31 K47 [PROTO_16]
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R30
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R21
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R27
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R17
      179 RETURN                           R31 1
