PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["inputAssetId"]
        2 LOADB                            R2 0
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+5]
       10 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R3 R0 K5 ["generationMode"]
       16 JUMPIF                           R3 ; [+12]
       17 JUMPIFNOT                        R2 ; [+6]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K6 ["GenerationModes"]
       21 GETTABLEKS                       R3 R3 K7 ["Upscale"]
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["GenerationModes"]
       27 GETTABLEKS                       R3 R3 K8 ["New"]
       29 RETURN                           R3 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
        4 GETTABLEKS                       R2 R2 K1 ["EditNew"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
       11 GETTABLEKS                       R2 R2 K2 ["EditUpscale"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
        3 GETTABLEKS                       R2 R2 K1 ["Upscale"]
        5 JUMPIFEQ                         R0 R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["GenerationModes"]
       10 GETTABLEKS                       R2 R2 K2 ["EditUpscale"]
       12 JUMPIFNOTEQ                      R0 R2 ; [+7]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["GenerationModes"]
       17 GETTABLEKS                       R1 R1 K1 ["Upscale"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["GenerationModes"]
       23 GETTABLEKS                       R1 R1 K3 ["New"]
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Animation"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R1 K3 ["Assistant-AnimationGenLink-%*"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 ORK                              R1 R2 K0 ["Animation generation failed"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["State"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationHistoryTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["DMNetworking"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Tagging"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Types"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 GETIMPORT                        R7 K17 [table.freeze]
       46 DUPTABLE                         R8 K26 [{["New"] = "new", ["Upscale"] = "upscale", ["EditNew"] = "editNew", ["EditUpscale"] = "editUpscale"}]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K27 ["GenerationModes"]
       50 DUPCLOSURE                       R7 K28 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R7 R6 K29 ["resolveGenerationMode"]
       54 DUPCLOSURE                       R7 K30 [PROTO_1]
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R7 R6 K31 ["isEditMode"]
       58 DUPCLOSURE                       R7 K32 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R7 R6 K33 ["getEditSource"]
       62 DUPCLOSURE                       R7 K34 [PROTO_3]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R7 R6 K35 ["getLinkTag"]
       67 DUPTABLE                         R7 K40 [{["Preparing"] = "Preparing", ["Generating"] = "Generating", ["GenerationFailed"] = "GenerationFailed", ["GenerationSucceeded"] = "GenerationSucceeded"}]
       68 SETTABLEKS                       R7 R6 K41 ["PreviewStates"]
       70 DUPTABLE                         R7 K49 [{["NoPromptProvided"] = "NoPromptProvided", ["GenerationFailed"] = "GenerationFailed", ["RigInsertFailed"] = "RigInsertFailed", ["RigNotFound"] = "RigNotFound", ["InputClipNotR6"] = "InputClipNotR6", ["InputClipLoadFailed"] = "InputClipLoadFailed", ["InputClipConversionFailed"] = "InputClipConversionFailed", ["EditSourceNotFound"] = "EditSourceNotFound"}]
       71 SETTABLEKS                       R7 R6 K50 ["FailureReasons"]
       73 NEWTABLE                         R8 8 0
       75 GETTABLEKS                       R9 R7 K42 ["NoPromptProvided"]
       77 LOADK                            R10 K51 ["No prompt provided, please provide a prompt"]
       78 SETTABLE                         R10 R8 R9
       79 GETTABLEKS                       R9 R7 K38 ["GenerationFailed"]
       81 LOADK                            R10 K52 ["Animation generation failed"]
       82 SETTABLE                         R10 R8 R9
       83 GETTABLEKS                       R9 R7 K43 ["RigInsertFailed"]
       85 LOADK                            R10 K53 ["Rig insert failed"]
       86 SETTABLE                         R10 R8 R9
       87 GETTABLEKS                       R9 R7 K44 ["RigNotFound"]
       89 LOADK                            R10 K54 ["The animation's rig is no longer in the workspace"]
       90 SETTABLE                         R10 R8 R9
       91 GETTABLEKS                       R9 R7 K45 ["InputClipNotR6"]
       93 LOADK                            R10 K55 ["Upscale only supports R6 animation clips"]
       94 SETTABLE                         R10 R8 R9
       95 GETTABLEKS                       R9 R7 K46 ["InputClipLoadFailed"]
       97 LOADK                            R10 K56 ["Couldn't load the input animation clip"]
       98 SETTABLE                         R10 R8 R9
       99 GETTABLEKS                       R9 R7 K47 ["InputClipConversionFailed"]
      101 LOADK                            R10 K57 ["Couldn't read the input animation clip for upscaling"]
      102 SETTABLE                         R10 R8 R9
      103 GETTABLEKS                       R9 R7 K48 ["EditSourceNotFound"]
      105 LOADK                            R10 K58 ["The source animation is no longer available to edit"]
      106 SETTABLE                         R10 R8 R9
      107 MOVE                             R9 R7
      108 LOADNIL                          R10
      109 LOADNIL                          R11
      110 FORGPREP                         R9
      111 GETTABLE                         R16 R8 R13
      112 JUMPIFNOTEQKNIL                  R16 ; [+2]
      114 LOADB                            R15 0 +1
      115 LOADB                            R15 1
      116 LOADK                            R16 K59 ["AnimationGen: FailureReasonMessages is missing an entry for \"%*\""]
      117 MOVE                             R18 R13
      118 NAMECALL                         R16 R16 K60 ["format"]
      120 CALL                             R16 2 1
      121 FASTCALL2                        ASSERT R15 R16 ; [+3]
      123 GETIMPORT                        R14 K62 [assert]
      125 CALL                             R14 2 0
      126 FORGLOOP                         R9 2 ; [-16]
      128 DUPCLOSURE                       R9 K63 [PROTO_4]
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R9 R6 K64 ["getFailureMessage"]
      132 RETURN                           R6 1
