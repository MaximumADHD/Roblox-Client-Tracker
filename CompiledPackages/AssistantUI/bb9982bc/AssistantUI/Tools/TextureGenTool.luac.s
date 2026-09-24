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
       87 GETTABLEKS                       R6 R1 K25 ["getSelectedMeshRef"]
       89 CALL                             R5 1 2
       90 MOVE                             R8 R5
       91 JUMPIFNOT                        R8 ; [+4]
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K26 ; [+4]
       98 LOADK                            R9 K26 ["selectedInstanceRef or instance_path must be provided — texture generation requires a source MeshPart or Model"]
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
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantHintImageAsUri"]
       19 JUMPIFNOT                        R4 ; [+8]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K7 ["resolveImage"]
       23 GETTABLEKS                       R5 R2 K8 ["hintImage"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R3 R2 K8 ["hintImage"]
       30 GETTABLEKS                       R7 R2 K9 ["textPrompt"]
       32 FASTCALL1                        TYPEOF R7 ; [+2]
       33 GETIMPORT                        R6 K1 [typeof]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+8]
       38 LOADB                            R5 1
       39 GETTABLEKS                       R7 R2 K9 ["textPrompt"]
       41 LENGTH                           R6 R7
       42 LOADN                            R7 0
       43 JUMPIFLT                         R7 R6 ; [+5]
       45 JUMPIFNOTEQKNIL                  R3 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       51 LOADK                            R6 K11 ["textPrompt must be a non-empty string, or hintImage must be provided"]
       52 GETIMPORT                        R4 K5 [assert]
       54 CALL                             R4 2 0
       55 GETTABLEKS                       R4 R2 K12 ["isManualRun"]
       57 JUMPIFEQKNIL                     R4 ; [+16]
       59 FASTCALL1                        TYPEOF R4 ; [+3]
       60 MOVE                             R8 R4
       61 GETIMPORT                        R7 K1 [typeof]
       63 CALL                             R7 1 1
       64 JUMPIFEQKS                       R7 K13 ["boolean"] ; [+2]
       66 LOADB                            R6 0 +1
       67 LOADB                            R6 1
       68 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       70 LOADK                            R7 K14 ["isManualRun must be a boolean"]
       71 GETIMPORT                        R5 K5 [assert]
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 2
       75 MOVE                             R6 R0
       76 MOVE                             R7 R1
       77 MOVE                             R8 R2
       78 CALL                             R5 3 1
       79 GETTABLEKS                       R6 R2 K15 ["model"]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantTextureGenModelSelection"]
       84 JUMPIFNOT                        R7 ; [+42]
       85 JUMPIFEQKNIL                     R6 ; [+31]
       87 FASTCALL1                        TYPEOF R6 ; [+3]
       88 MOVE                             R10 R6
       89 GETIMPORT                        R9 K1 [typeof]
       91 CALL                             R9 1 1
       92 JUMPIFEQKS                       R9 K10 ["string"] ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 FASTCALL2K                       ASSERT R8 K17 ; [+4]
       98 LOADK                            R9 K17 ["model must be a string"]
       99 GETIMPORT                        R7 K5 [assert]
      101 CALL                             R7 2 0
      102 GETUPVAL                         R7 3
      103 GETTABLEKS                       R7 R7 K18 ["MODEL_BY_MODE"]
      105 GETTABLE                         R6 R7 R6
      106 JUMPIFNOTEQKNIL                  R6 ; [+2]
      108 LOADB                            R8 0 +1
      109 LOADB                            R8 1
      110 FASTCALL2K                       ASSERT R8 K19 ; [+4]
      112 LOADK                            R9 K19 ["model must be one of the values declared in the tool schema's enum"]
      113 GETIMPORT                        R7 K5 [assert]
      115 CALL                             R7 2 0
      116 JUMP                             ; [+11]
      117 GETUPVAL                         R7 3
      118 GETTABLEKS                       R7 R7 K18 ["MODEL_BY_MODE"]
      120 GETUPVAL                         R8 3
      121 GETTABLEKS                       R8 R8 K20 ["MODE"]
      123 GETTABLEKS                       R8 R8 K21 ["Quality"]
      125 GETTABLE                         R6 R7 R8
      126 JUMP                             ; [+1]
      127 LOADNIL                          R6
      128 DUPTABLE                         R7 K23 [{"textPrompt", "hintImage", "isManualRun", "selectedUniqueId", "model"}]
      129 GETTABLEKS                       R8 R2 K9 ["textPrompt"]
      131 SETTABLEKS                       R8 R7 K9 ["textPrompt"]
      133 SETTABLEKS                       R3 R7 K8 ["hintImage"]
      135 SETTABLEKS                       R4 R7 K12 ["isManualRun"]
      137 SETTABLEKS                       R5 R7 K22 ["selectedUniqueId"]
      139 SETTABLEKS                       R6 R7 K15 ["model"]
      141 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTextureAsync"]
        3 DUPTABLE                         R1 K6 [{"requestId", "textPrompt", "hintImage", "selectedUniqueId", "model"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["textPrompt"]
       10 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["hintImage"]
       15 SETTABLEKS                       R2 R1 K3 ["hintImage"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["selectedUniqueId"]
       20 SETTABLEKS                       R2 R1 K4 ["selectedUniqueId"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["model"]
       25 SETTABLEKS                       R2 R1 K5 ["model"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertTexturedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["environment"]
       16 MOVE                             R4 R1
       17 MOVE                             R5 R0
       18 CALL                             R2 3 1
       19 LOADK                            R4 K5 ["TextureGen-"]
       20 GETUPVAL                         R5 2
       21 LOADB                            R7 0
       22 NAMECALL                         R5 R5 K6 ["GenerateGUID"]
       24 CALL                             R5 2 1
       25 CONCAT                           R3 R4 R5
       26 GETIMPORT                        R4 K8 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CALL                             R4 1 2
       33 JUMPIF                           R4 ; [+11]
       34 GETIMPORT                        R6 K10 [error]
       36 LOADK                            R8 K11 ["Texture generation failed with error: "]
       37 FASTCALL1                        TOSTRING R5 ; [+3]
       38 MOVE                             R10 R5
       39 GETIMPORT                        R9 K13 [tostring]
       41 CALL                             R9 1 1
       42 CONCAT                           R7 R8 R9
       43 LOADN                            R8 0
       44 CALL                             R6 2 0
       45 GETTABLEKS                       R6 R2 K14 ["isManualRun"]
       47 JUMPIFNOT                        R6 ; [+15]
       48 DUPTABLE                         R6 K18 [{"tag", "requestId", "generationName"}]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K19 ["getLinkTag"]
       52 MOVE                             R8 R3
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K15 ["tag"]
       56 SETTABLEKS                       R3 R6 K16 ["requestId"]
       58 GETTABLEKS                       R7 R2 K20 ["textPrompt"]
       60 SETTABLEKS                       R7 R6 K17 ["generationName"]
       62 RETURN                           R6 1
       63 GETIMPORT                        R6 K8 [pcall]
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CALL                             R6 1 2
       69 JUMPIF                           R6 ; [+19]
       70 GETIMPORT                        R8 K8 [pcall]
       72 GETTABLEKS                       R9 R1 K21 ["cancelGenerationAsync"]
       74 DUPTABLE                         R10 K22 [{"requestId"}]
       75 SETTABLEKS                       R3 R10 K16 ["requestId"]
       77 CALL                             R8 2 0
       78 GETIMPORT                        R8 K10 [error]
       80 LOADK                            R10 K23 ["Failed to insert textured model with error: "]
       81 FASTCALL1                        TOSTRING R7 ; [+3]
       82 MOVE                             R12 R7
       83 GETIMPORT                        R11 K13 [tostring]
       85 CALL                             R11 1 1
       86 CONCAT                           R9 R10 R11
       87 LOADN                            R10 0
       88 CALL                             R8 2 0
       89 DUPTABLE                         R8 K18 [{"tag", "requestId", "generationName"}]
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K19 ["getLinkTag"]
       93 MOVE                             R10 R3
       94 CALL                             R9 1 1
       95 SETTABLEKS                       R9 R8 K15 ["tag"]
       97 SETTABLEKS                       R3 R8 K16 ["requestId"]
       99 GETTABLEKS                       R9 R2 K20 ["textPrompt"]
      101 SETTABLEKS                       R9 R8 K17 ["generationName"]
      103 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+25]
        9 FASTCALL1                        TOSTRING R4 ; [+3]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K3 [tostring]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 MOVE                             R8 R5
       17 NAMECALL                         R6 R6 K4 ["addText"]
       19 CALL                             R6 2 1
       20 DUPTABLE                         R8 K6 [{"errorMessage"}]
       21 SETTABLEKS                       R5 R8 K5 ["errorMessage"]
       23 NAMECALL                         R6 R6 K7 ["setStructuredContent"]
       25 CALL                             R6 2 1
       26 LOADB                            R8 1
       27 NAMECALL                         R6 R6 K8 ["setError"]
       29 CALL                             R6 2 1
       30 NAMECALL                         R6 R6 K9 ["build"]
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
       34 GETUPVAL                         R5 2
       35 CALL                             R5 0 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K10 ["toString"]
       39 DUPTABLE                         R8 K13 [{"tag", "generationName"}]
       40 GETTABLEKS                       R9 R4 K11 ["tag"]
       42 SETTABLEKS                       R9 R8 K11 ["tag"]
       44 GETTABLEKS                       R9 R4 K12 ["generationName"]
       46 SETTABLEKS                       R9 R8 K12 ["generationName"]
       48 CALL                             R7 1 -1
       49 NAMECALL                         R5 R5 K4 ["addText"]
       51 CALL                             R5 -1 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K7 ["setStructuredContent"]
       55 CALL                             R5 2 1
       56 NAMECALL                         R5 R5 K9 ["build"]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K5 [pcall]
       15 GETTABLEKS                       R4 R1 K6 ["getSelectedMeshRef"]
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+19]
       19 JUMPIFNOT                        R4 ; [+18]
       20 DUPTABLE                         R5 K11 [{"uniqueId", "name", "className", "isValid"}]
       21 GETTABLEKS                       R6 R4 K7 ["uniqueId"]
       23 SETTABLEKS                       R6 R5 K7 ["uniqueId"]
       25 GETTABLEKS                       R6 R4 K8 ["name"]
       27 SETTABLEKS                       R6 R5 K8 ["name"]
       29 GETTABLEKS                       R6 R4 K9 ["className"]
       31 SETTABLEKS                       R6 R5 K9 ["className"]
       33 GETTABLEKS                       R6 R4 K12 ["isTextureable"]
       35 SETTABLEKS                       R6 R5 K10 ["isValid"]
       37 MOVE                             R2 R5
       38 NEWTABLE                         R5 0 3
       40 DUPTABLE                         R6 K17 [{["name"], ["inputType"], ["initialValue"], ["required"] = True}]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K18 ["SelectedInstanceRef"]
       44 SETTABLEKS                       R7 R6 K8 ["name"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K19 ["Instance"]
       49 SETTABLEKS                       R7 R6 K13 ["inputType"]
       51 SETTABLEKS                       R2 R6 K14 ["initialValue"]
       53 DUPTABLE                         R7 K20 [{"name", "inputType", "initialValue"}]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K21 ["TextPrompt"]
       57 SETTABLEKS                       R8 R7 K8 ["name"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K22 ["String"]
       62 SETTABLEKS                       R8 R7 K13 ["inputType"]
       64 GETUPVAL                         R8 3
       65 SETTABLEKS                       R8 R7 K14 ["initialValue"]
       67 DUPTABLE                         R8 K20 [{"name", "inputType", "initialValue"}]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K23 ["HintImage"]
       71 SETTABLEKS                       R9 R8 K8 ["name"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K24 ["Image"]
       76 SETTABLEKS                       R9 R8 K13 ["inputType"]
       78 GETUPVAL                         R10 4
       79 JUMPIFNOT                        R10 ; [+12]
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R10 R10 K25 ["FFlagAssistantHintImageAsUri"]
       83 JUMPIFNOT                        R10 ; [+2]
       84 GETUPVAL                         R9 4
       85 JUMP                             ; [+7]
       86 GETUPVAL                         R9 6
       87 GETTABLEKS                       R9 R9 K26 ["getImage"]
       89 GETUPVAL                         R10 4
       90 CALL                             R9 1 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K14 ["initialValue"]
       95 SETLIST                          R5 R6 3 [1]
       97 GETUPVAL                         R6 5
       98 GETTABLEKS                       R6 R6 K27 ["FFlagAssistantTextureGenModelSelection"]
      100 JUMPIFNOT                        R6 ; [+40]
      101 DUPTABLE                         R8 K29 [{"name", "inputType", "initialValue", "options"}]
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K30 ["Mode"]
      105 SETTABLEKS                       R9 R8 K8 ["name"]
      107 GETUPVAL                         R9 2
      108 GETTABLEKS                       R9 R9 K31 ["Option"]
      110 SETTABLEKS                       R9 R8 K13 ["inputType"]
      112 GETUPVAL                         R9 7
      113 GETTABLEKS                       R9 R9 K32 ["MODE"]
      115 GETTABLEKS                       R9 R9 K33 ["Quality"]
      117 SETTABLEKS                       R9 R8 K14 ["initialValue"]
      119 NEWTABLE                         R9 0 2
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R10 R10 K32 ["MODE"]
      124 GETTABLEKS                       R10 R10 K34 ["Fast"]
      126 GETUPVAL                         R11 7
      127 GETTABLEKS                       R11 R11 K32 ["MODE"]
      129 GETTABLEKS                       R11 R11 K33 ["Quality"]
      131 SETLIST                          R9 R10 2 [1]
      133 SETTABLEKS                       R9 R8 K28 ["options"]
      135 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      137 MOVE                             R7 R5
      138 GETIMPORT                        R6 K37 [table.insert]
      140 CALL                             R6 2 0
      141 DUPTABLE                         R6 K41 [{"formId", "fields", "validation"}]
      142 GETUPVAL                         R7 8
      143 GETTABLEKS                       R7 R7 K38 ["formId"]
      145 SETTABLEKS                       R7 R6 K38 ["formId"]
      147 SETTABLEKS                       R5 R6 K39 ["fields"]
      149 GETUPVAL                         R7 9
      150 DUPTABLE                         R8 K44 [{"kind", "rules"}]
      151 GETUPVAL                         R9 10
      152 GETTABLEKS                       R9 R9 K45 ["All"]
      154 SETTABLEKS                       R9 R8 K42 ["kind"]
      156 NEWTABLE                         R9 0 2
      158 GETUPVAL                         R10 9
      159 DUPTABLE                         R11 K44 [{"kind", "rules"}]
      160 GETUPVAL                         R12 10
      161 GETTABLEKS                       R12 R12 K46 ["Any"]
      163 SETTABLEKS                       R12 R11 K42 ["kind"]
      165 NEWTABLE                         R12 0 2
      167 GETUPVAL                         R13 9
      168 DUPTABLE                         R14 K48 [{"kind", "field"}]
      169 GETUPVAL                         R15 10
      170 GETTABLEKS                       R15 R15 K49 ["NonEmpty"]
      172 SETTABLEKS                       R15 R14 K42 ["kind"]
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K21 ["TextPrompt"]
      177 SETTABLEKS                       R15 R14 K47 ["field"]
      179 CALL                             R13 1 1
      180 GETUPVAL                         R14 9
      181 DUPTABLE                         R15 K48 [{"kind", "field"}]
      182 GETUPVAL                         R16 10
      183 GETTABLEKS                       R16 R16 K49 ["NonEmpty"]
      185 SETTABLEKS                       R16 R15 K42 ["kind"]
      187 GETUPVAL                         R16 1
      188 GETTABLEKS                       R16 R16 K23 ["HintImage"]
      190 SETTABLEKS                       R16 R15 K47 ["field"]
      192 CALL                             R14 1 -1
      193 SETLIST                          R12 R13 -1 [1]
      195 SETTABLEKS                       R12 R11 K43 ["rules"]
      197 CALL                             R10 1 1
      198 GETUPVAL                         R11 9
      199 DUPTABLE                         R12 K51 [{"kind", "rule"}]
      200 GETUPVAL                         R13 10
      201 GETTABLEKS                       R13 R13 K52 ["Not"]
      203 SETTABLEKS                       R13 R12 K42 ["kind"]
      205 GETUPVAL                         R13 9
      206 DUPTABLE                         R14 K55 [{["kind"], ["field"], ["value"] = False}]
      207 GETUPVAL                         R15 10
      208 GETTABLEKS                       R15 R15 K56 ["Equals"]
      210 SETTABLEKS                       R15 R14 K42 ["kind"]
      212 GETUPVAL                         R15 1
      213 GETTABLEKS                       R15 R15 K57 ["SelectedInstanceRefIsValid"]
      215 SETTABLEKS                       R15 R14 K47 ["field"]
      217 CALL                             R13 1 1
      218 SETTABLEKS                       R13 R12 K50 ["rule"]
      220 CALL                             R11 1 -1
      221 SETLIST                          R9 R10 -1 [1]
      223 SETTABLEKS                       R9 R8 K43 ["rules"]
      225 CALL                             R7 1 1
      226 SETTABLEKS                       R7 R6 K40 ["validation"]
      228 DUPTABLE                         R7 K59 [{"name", "arguments"}]
      229 GETUPVAL                         R8 11
      230 GETTABLEKS                       R8 R8 K60 ["AskInput"]
      232 SETTABLEKS                       R8 R7 K8 ["name"]
      234 SETTABLEKS                       R6 R7 K58 ["arguments"]
      236 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantHintImageAsUri"]
       10 JUMPIFNOT                        R3 ; [+10]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["resolveUri"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K3 ["HintImage"]
       17 GETTABLE                         R4 R1 R5
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 JUMP                             ; [+26]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K3 ["HintImage"]
       24 GETTABLE                         R3 R1 R4
       25 FASTCALL1                        TYPEOF R3 ; [+3]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K5 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+8]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K7 ["getImage"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 MOVE                             R2 R4
       38 JUMP                             ; [+8]
       39 FASTCALL1                        TYPEOF R3 ; [+3]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K5 [typeof]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K8 ["table"] ; [+2]
       46 MOVE                             R2 R3
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K9 ["Mode"]
       50 GETTABLE                         R3 R1 R4
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K10 ["FFlagAssistantTextureGenModelSelection"]
       54 JUMPIFNOT                        R5 ; [+9]
       55 FASTCALL1                        TYPEOF R3 ; [+3]
       56 MOVE                             R6 R3
       57 GETIMPORT                        R5 K5 [typeof]
       59 CALL                             R5 1 1
       60 JUMPIFNOTEQKS                    R5 K6 ["string"] ; [+3]
       62 MOVE                             R4 R3
       63 JUMP                             ; [+1]
       64 LOADNIL                          R4
       65 DUPTABLE                         R5 K17 [{["textPrompt"], ["hintImage"], ["isManualRun"] = True, ["selectedInstanceRef"], ["model"]}]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K18 ["TextPrompt"]
       69 GETTABLE                         R6 R1 R7
       70 SETTABLEKS                       R6 R5 K11 ["textPrompt"]
       72 SETTABLEKS                       R2 R5 K12 ["hintImage"]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K19 ["SelectedInstanceRef"]
       77 GETTABLE                         R6 R1 R7
       78 SETTABLEKS                       R6 R5 K15 ["selectedInstanceRef"]
       80 SETTABLEKS                       R4 R5 K16 ["model"]
       82 DUPTABLE                         R6 K22 [{"name", "arguments"}]
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R7 R7 K23 ["TextureGen"]
       86 SETTABLEKS                       R7 R6 K20 ["name"]
       88 SETTABLEKS                       R5 R6 K21 ["arguments"]
       90 RETURN                           R6 1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 DUPCLOSURE                       R2 K0 [PROTO_9]
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U10
       19 NEWTABLE                         R3 0 2
       21 MOVE                             R4 R1
       22 MOVE                             R5 R2
       23 SETLIST                          R3 R4 2 [1]
       25 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [buffer.fromstring]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["imageBase64"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K4 ["Base64Decode"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["selectedInstanceRef"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETIMPORT                        R3 K2 [pcall]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["captureSourceInstanceImageAsync"]
       11 DUPTABLE                         R5 K5 [{"selectedUniqueId"}]
       12 GETTABLEKS                       R6 R2 K6 ["uniqueId"]
       14 SETTABLEKS                       R6 R5 K4 ["selectedUniqueId"]
       16 CALL                             R3 2 2
       17 JUMPIFNOT                        R3 ; [+2]
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADNIL                          R5
       21 RETURN                           R5 1
       22 GETIMPORT                        R5 K2 [pcall]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 2
       28 JUMPIF                           R5 ; [+2]
       29 LOADNIL                          R7
       30 RETURN                           R7 1
       31 DUPTABLE                         R7 K8 [{"imageBytes"}]
       32 SETTABLEKS                       R6 R7 K7 ["imageBytes"]
       34 RETURN                           R7 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["build"]
        3 DUPTABLE                         R2 K8 [{["promptKey"] = "textPrompt", ["wizardMode"], ["model"], ["modelFlow"] = "texture", ["resolveSeedImageAsync"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
        7 SETTABLEKS                       R3 R2 K3 ["wizardMode"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K10 ["FStringAssistantMeshGenImageGenModelOverride"]
       12 SETTABLEKS                       R3 R2 K4 ["model"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R3 R2 K7 ["resolveSeedImageAsync"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_14:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 DUPTABLE                         R2 K5 [{[1], ["hintImage"] = , ["isManualRun"], ["selectedInstanceRef"] = }]
       11 SETTABLEKS                       R0 R2 K0 ["textPrompt"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantTextureGenConfirmBeforeInsert"]
       16 SETTABLEKS                       R3 R2 K3 ["isManualRun"]
       18 DUPTABLE                         R3 K9 [{"name", "arguments"}]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K10 ["TextureGen"]
       22 SETTABLEKS                       R4 R3 K7 ["name"]
       24 SETTABLEKS                       R2 R3 K8 ["arguments"]
       26 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["isValid"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K1 ["TextureGen"]
        8 LOADK                            R4 K2 ["RequiresSingleMeshPart"]
        9 NAMECALL                         R1 R1 K3 ["getText"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["isTextureableInstance"]
        5 DUPTABLE                         R3 K4 [{"uniqueId"}]
        6 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        8 SETTABLEKS                       R4 R3 K3 ["uniqueId"]
       10 CALL                             R1 2 2
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+4]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_17:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+3]
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["storeImage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 SETUPVAL                         R1 0
       17 RETURN                           R0 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 0
       20 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["textPrompt"]
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R3 R0 K0 ["textPrompt"]
       11 LENGTH                           R2 R3
       12 LOADN                            R3 0
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 GETTABLEKS                       R3 R0 K4 ["hintImage"]
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 GETTABLEKS                       R3 R0 K5 ["selectedInstanceRef"]
       25 LOADB                            R4 0
       26 JUMPIFEQKNIL                     R3 ; [+7]
       28 GETTABLEKS                       R5 R3 K6 ["isValid"]
       30 JUMPIFEQKB                       R5 TRUE ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 JUMPIF                           R1 ; [+2]
       35 MOVE                             R5 R2
       36 JUMPIFNOT                        R5 ; [+1]
       37 MOVE                             R5 R4
       38 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridges"]
        3 GETTABLEKS                       R0 R0 K1 ["TextureGen"]
        5 GETTABLEKS                       R0 R0 K2 ["createGuestContext"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K3 ["bridge"]
       12 LOADNIL                          R1
       13 GETIMPORT                        R2 K5 [pcall]
       15 GETTABLEKS                       R3 R0 K6 ["getSelectedMeshRef"]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R1 R3
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R4 K8 [warn]
       23 LOADK                            R5 K9 ["[TextureGen] getSelectedMeshRef failed:"]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R7 R3
       26 GETIMPORT                        R6 K11 [tostring]
       28 CALL                             R6 1 1
       29 CALL                             R4 2 0
       30 JUMPIFNOT                        R1 ; [+18]
       31 DUPTABLE                         R4 K16 [{"uniqueId", "name", "className", "isValid"}]
       32 GETTABLEKS                       R5 R1 K12 ["uniqueId"]
       34 SETTABLEKS                       R5 R4 K12 ["uniqueId"]
       36 GETTABLEKS                       R5 R1 K13 ["name"]
       38 SETTABLEKS                       R5 R4 K13 ["name"]
       40 GETTABLEKS                       R5 R1 K14 ["className"]
       42 SETTABLEKS                       R5 R4 K14 ["className"]
       44 GETTABLEKS                       R5 R1 K17 ["isTextureable"]
       46 SETTABLEKS                       R5 R4 K15 ["isValid"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R4
       50 NEWTABLE                         R5 0 0
       52 MOVE                             R7 R5
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K18 ["createInstanceRowDefinition"]
       56 DUPTABLE                         R9 K25 [{["label"], ["prop"] = "selectedInstanceRef", ["initialValue"], ["validate"], ["resolveValidityAsync"]}]
       57 GETUPVAL                         R10 2
       58 LOADK                            R12 K1 ["TextureGen"]
       59 LOADK                            R13 K26 ["InputSelectedMesh"]
       60 NAMECALL                         R10 R10 K27 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K19 ["label"]
       65 SETTABLEKS                       R4 R9 K22 ["initialValue"]
       67 DUPCLOSURE                       R10 K28 [PROTO_15]
       68 CAPTURE                          UPVAL U2
       69 SETTABLEKS                       R10 R9 K23 ["validate"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K24 ["resolveValidityAsync"]
       75 CALL                             R8 1 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R6 K31 [table.insert]
       79 CALL                             R6 -1 0
       80 MOVE                             R7 R5
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K32 ["createStringRowDefinition"]
       84 DUPTABLE                         R9 K38 [{["label"], ["prop"] = "textPrompt", ["initialValue"], ["multiLine"] = True, ["placeholder"], ["onChanged"]}]
       85 GETUPVAL                         R10 2
       86 LOADK                            R12 K1 ["TextureGen"]
       87 LOADK                            R13 K39 ["InputPromptTitle"]
       88 NAMECALL                         R10 R10 K27 ["getText"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K19 ["label"]
       93 GETUPVAL                         R10 3
       94 SETTABLEKS                       R10 R9 K22 ["initialValue"]
       96 GETUPVAL                         R10 2
       97 LOADK                            R12 K1 ["TextureGen"]
       98 LOADK                            R13 K40 ["InputPromptPlaceholder"]
       99 NAMECALL                         R10 R10 K27 ["getText"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K36 ["placeholder"]
      104 NEWCLOSURE                       R10 P2
      105 CAPTURE                          UPVAL U3
      106 SETTABLEKS                       R10 R9 K37 ["onChanged"]
      108 CALL                             R8 1 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R6 K31 [table.insert]
      112 CALL                             R6 -1 0
      113 MOVE                             R7 R5
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R8 R8 K41 ["createHintImageRowDefinition"]
      117 DUPTABLE                         R9 K43 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["onChanged"]}]
      118 GETUPVAL                         R10 2
      119 LOADK                            R12 K1 ["TextureGen"]
      120 LOADK                            R13 K44 ["InputHintImageTitle"]
      121 NAMECALL                         R10 R10 K27 ["getText"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K19 ["label"]
      126 GETUPVAL                         R11 4
      127 GETTABLEKS                       R11 R11 K45 ["FFlagAssistantHintImageAsUri"]
      129 JUMPIFNOT                        R11 ; [+2]
      130 GETUPVAL                         R10 5
      131 JUMP                             ; [+9]
      132 GETUPVAL                         R11 5
      133 JUMPIFNOT                        R11 ; [+6]
      134 GETUPVAL                         R10 6
      135 GETTABLEKS                       R10 R10 K46 ["getImage"]
      137 GETUPVAL                         R11 5
      138 CALL                             R10 1 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R10
      141 SETTABLEKS                       R10 R9 K22 ["initialValue"]
      143 NEWCLOSURE                       R10 P3
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          UPVAL U6
      146 SETTABLEKS                       R10 R9 K37 ["onChanged"]
      148 CALL                             R8 1 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R6 K31 [table.insert]
      152 CALL                             R6 -1 0
      153 DUPTABLE                         R6 K52 [{"description", "confirmButtonText", "propertyRows", "canConfirm", "imageSelection"}]
      154 GETUPVAL                         R7 2
      155 LOADK                            R9 K1 ["TextureGen"]
      156 LOADK                            R10 K53 ["InputDisclaimer"]
      157 NAMECALL                         R7 R7 K27 ["getText"]
      159 CALL                             R7 3 1
      160 SETTABLEKS                       R7 R6 K47 ["description"]
      162 GETUPVAL                         R7 2
      163 LOADK                            R9 K1 ["TextureGen"]
      164 LOADK                            R10 K54 ["InputGenerateTexture"]
      165 NAMECALL                         R7 R7 K27 ["getText"]
      167 CALL                             R7 3 1
      168 SETTABLEKS                       R7 R6 K48 ["confirmButtonText"]
      170 SETTABLEKS                       R5 R6 K49 ["propertyRows"]
      172 DUPCLOSURE                       R7 K55 [PROTO_19]
      173 SETTABLEKS                       R7 R6 K50 ["canConfirm"]
      175 GETUPVAL                         R8 4
      176 GETTABLEKS                       R8 R8 K56 ["EngineFeatureAssistantGen3dImagePreview"]
      178 JUMPIFNOT                        R8 ; [+4]
      179 GETUPVAL                         R7 7
      180 MOVE                             R8 R0
      181 CALL                             R7 1 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R7
      184 SETTABLEKS                       R7 R6 K51 ["imageSelection"]
      186 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["TextureGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_22:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_23:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 GETUPVAL                         R3 5
       10 GETTABLEKS                       R3 R3 K0 ["define"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 6
       14 GETTABLEKS                       R5 R5 K1 ["TextureGen"]
       16 NAMECALL                         R3 R3 K2 ["setName"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K3 ["Re-textures an existing mesh using AI, given a text prompt describing the desired look. Requires a source MeshPart or Model. Replaces the source in place."]
       20 NAMECALL                         R3 R3 K4 ["setDescription"]
       22 CALL                             R3 2 1
       23 LOADK                            R5 K5 ["textPrompt"]
       24 DUPTABLE                         R6 K10 [{["type"] = "string", ["description"] = "Text description of the desired texture/appearance, e.g. \"rusty metal\"."}]
       25 NAMECALL                         R3 R3 K11 ["addArgument"]
       27 CALL                             R3 3 1
       28 LOADK                            R5 K12 ["hintImage"]
       29 DUPTABLE                         R6 K15 [{["type"] = "object", ["description"] = "Optional reference image guiding the texture style. When provided, textPrompt may be an empty string."}]
       30 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       32 CALL                             R3 3 1
       33 LOADK                            R5 K17 ["instance_path"]
       34 DUPTABLE                         R6 K19 [{["type"] = "string", ["description"] = "Full Studio path to the source MeshPart or Model, e.g. \"Workspace.Model1.Part2\". Resolved directly — no live Studio selection required. If omitted, falls back to the current Studio selection (which must be exactly one MeshPart or Model)."}]
       35 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       37 CALL                             R3 3 1
       38 GETUPVAL                         R4 7
       39 GETTABLEKS                       R4 R4 K20 ["FFlagAssistantTextureGenModelSelection"]
       41 JUMPIFNOT                        R4 ; [+21]
       42 LOADK                            R6 K21 ["model"]
       43 DUPTABLE                         R7 K24 [{["type"] = "string", ["enum"], ["description"] = "Generation mode. \"Fast\" trades quality for speed. \"Quality\" (default) is a research preview that only supports a single-MeshPart source and can vary in results."}]
       44 NEWTABLE                         R8 0 2
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K25 ["MODE"]
       49 GETTABLEKS                       R9 R9 K26 ["Fast"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K25 ["MODE"]
       54 GETTABLEKS                       R10 R10 K27 ["Quality"]
       56 SETLIST                          R8 R9 2 [1]
       58 SETTABLEKS                       R8 R7 K22 ["enum"]
       60 NAMECALL                         R4 R3 K16 ["addOptionalArgument"]
       62 CALL                             R4 3 0
       63 DUPTABLE                         R6 K35 [{["title"] = "Texture Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       64 NAMECALL                         R4 R3 K36 ["setAnnotations"]
       66 CALL                             R4 2 1
       67 MOVE                             R6 R2
       68 NAMECALL                         R4 R4 K37 ["setHandler"]
       70 CALL                             R4 2 1
       71 NAMECALL                         R4 R4 K38 ["build"]
       73 CALL                             R4 1 1
       74 LOADK                            R5 K39 [""]
       75 LOADNIL                          R6
       76 NEWCLOSURE                       R7 P2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          REF R6
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          UPVAL U13
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U14
       89 DUPCLOSURE                       R8 K40 [PROTO_13]
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U16
       93 NEWCLOSURE                       R9 P4
       94 CAPTURE                          REF R5
       95 CAPTURE                          REF R6
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U6
       98 NEWCLOSURE                       R10 P5
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U17
      101 CAPTURE                          UPVAL U18
      102 CAPTURE                          REF R5
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          REF R6
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          VAL R8
      107 DUPTABLE                         R11 K47 [{["command"] = "generate_texture", ["getDescription"], ["runToolChain"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      108 DUPCLOSURE                       R12 K48 [PROTO_21]
      109 CAPTURE                          UPVAL U18
      110 SETTABLEKS                       R12 R11 K43 ["getDescription"]
      112 GETUPVAL                         R13 7
      113 GETTABLEKS                       R13 R13 K49 ["FFlagAssistantAskInputTool"]
      115 JUMPIFNOT                        R13 ; [+2]
      116 MOVE                             R12 R7
      117 JUMP                             ; [+1]
      118 LOADNIL                          R12
      119 SETTABLEKS                       R12 R11 K44 ["runToolChain"]
      121 GETUPVAL                         R13 7
      122 GETTABLEKS                       R13 R13 K49 ["FFlagAssistantAskInputTool"]
      124 JUMPIFNOT                        R13 ; [+2]
      125 LOADNIL                          R12
      126 JUMP                             ; [+1]
      127 MOVE                             R12 R9
      128 SETTABLEKS                       R12 R11 K45 ["mapToToolCall"]
      130 GETUPVAL                         R13 7
      131 GETTABLEKS                       R13 R13 K49 ["FFlagAssistantAskInputTool"]
      133 JUMPIFNOT                        R13 ; [+2]
      134 LOADNIL                          R12
      135 JUMP                             ; [+1]
      136 MOVE                             R12 R10
      137 SETTABLEKS                       R12 R11 K46 ["getInputRequestArguments"]
      139 DUPTABLE                         R12 K54 [{"definition", "slashCommands", "getPreExecuteWarning", "toolCallOptions"}]
      140 SETTABLEKS                       R4 R12 K50 ["definition"]
      142 GETUPVAL                         R14 7
      143 GETTABLEKS                       R14 R14 K55 ["FFlagAssistantTextureGenTool"]
      145 JUMPIFNOT                        R14 ; [+6]
      146 NEWTABLE                         R13 0 1
      148 MOVE                             R14 R11
      149 SETLIST                          R13 R14 1 [1]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R13
      153 SETTABLEKS                       R13 R12 K51 ["slashCommands"]
      155 DUPCLOSURE                       R13 K56 [PROTO_22]
      156 SETTABLEKS                       R13 R12 K52 ["getPreExecuteWarning"]
      158 DUPTABLE                         R13 K59 [{["resetTimeoutOnProgress"] = True}]
      159 SETTABLEKS                       R13 R12 K53 ["toolCallOptions"]
      161 CLOSEUPVALS                      R5
      162 RETURN                           R12 1

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AskInput"]
       19 GETTABLEKS                       R3 R3 K12 ["AskInputTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Components"]
       26 GETTABLEKS                       R4 R4 K14 ["DEPRECATED_PropertyRows"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Guest"]
       33 GETTABLEKS                       R5 R5 K16 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K17 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["Parent"]
       45 GETTABLEKS                       R7 R7 K19 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Util"]
       52 GETTABLEKS                       R8 R8 K20 ["SlashCommandConfiguration"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K21 ["Tools"]
       59 GETTABLEKS                       R9 R9 K22 ["ToolTypes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Util"]
       66 GETTABLEKS                       R10 R10 K23 ["ToolUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K24 ["Resources"]
       73 GETTABLEKS                       R11 R11 K25 ["Localization"]
       75 GETTABLEKS                       R11 R11 K26 ["Translator"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K27 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [game]
       85 LOADK                            R14 K28 ["EncodingService"]
       86 NAMECALL                         R12 R12 K7 ["GetService"]
       88 CALL                             R12 2 1
       89 GETIMPORT                        R13 K9 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Util"]
       93 GETTABLEKS                       R14 R14 K29 ["ImageContentStore"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K9 [require]
       98 GETTABLEKS                       R15 R0 K13 ["Components"]
      100 GETTABLEKS                       R15 R15 K30 ["ImageSelection"]
      102 GETTABLEKS                       R15 R15 K31 ["ImageSelectionConfigBuilder"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K9 [require]
      107 GETTABLEKS                       R16 R0 K32 ["Bridges"]
      109 GETTABLEKS                       R16 R16 K33 ["createTextureGenBridge"]
      111 GETTABLEKS                       R16 R16 K34 ["TextureGenBridgeTypes"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K9 [require]
      116 GETTABLEKS                       R17 R0 K10 ["Util"]
      118 GETTABLEKS                       R17 R17 K35 ["TextureGen"]
      120 GETTABLEKS                       R17 R17 K36 ["TextureGenTypes"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R6 K10 ["Util"]
      125 GETTABLEKS                       R17 R17 K37 ["ToolBuilder"]
      127 GETTABLEKS                       R18 R6 K10 ["Util"]
      129 GETTABLEKS                       R18 R18 K38 ["ToolResult"]
      131 GETTABLEKS                       R19 R8 K39 ["ToolNames"]
      133 GETTABLEKS                       R20 R2 K40 ["INPUT_TYPE"]
      135 GETTABLEKS                       R21 R2 K41 ["RULE_KIND"]
      137 GETTABLEKS                       R22 R2 K42 ["asRule"]
      139 GETTABLEKS                       R23 R7 K43 ["Configs"]
      141 GETTABLEKS                       R23 R23 K35 ["TextureGen"]
      143 GETTABLEKS                       R24 R23 K44 ["row"]
      145 DUPCLOSURE                       R25 K45 [PROTO_0]
      146 CAPTURE                          VAL R1
      147 DUPCLOSURE                       R26 K46 [PROTO_1]
      148 DUPCLOSURE                       R27 K47 [PROTO_2]
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R26
      152 CAPTURE                          VAL R16
      153 DUPCLOSURE                       R28 K48 [PROTO_23]
      154 CAPTURE                          VAL R27
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R24
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R10
      173 RETURN                           R28 1
