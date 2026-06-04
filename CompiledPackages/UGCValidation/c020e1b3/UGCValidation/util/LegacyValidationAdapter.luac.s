PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["key"]
        2 LOADK                            R3 K1 ["."]
        3 NAMECALL                         R1 R1 K2 ["split"]
        5 CALL                             R1 2 1
        6 LENGTH                           R3 R1
        7 GETTABLE                         R2 R1 R3
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["Values"]
       11 GETTABLE                         R3 R4 R2
       12 JUMPIF                           R3 ; [+3]
       13 GETTABLEKS                       R4 R0 K0 ["key"]
       15 RETURN                           R4 1
       16 NEWTABLE                         R4 0 0
       18 LOADNIL                          R5
       19 LOADN                            R8 1
       20 LENGTH                           R6 R3
       21 LOADN                            R7 1
       22 FORNPREP                         R6
       23 FASTCALL3                        STRING_SUB R3 R8 R8
       25 MOVE                             R10 R3
       26 MOVE                             R11 R8
       27 MOVE                             R12 R8
       28 GETIMPORT                        R9 K6 [string.sub]
       30 CALL                             R9 3 1
       31 JUMPIFNOTEQKS                    R9 K7 ["{"] ; [+4]
       33 NEWTABLE                         R5 0 0
       35 JUMP                             ; [+45]
       36 JUMPIFNOTEQKS                    R9 K8 ["}"] ; [+27]
       38 JUMPIFEQKNIL                     R5 ; [+42]
       40 GETIMPORT                        R10 K11 [table.concat]
       42 MOVE                             R11 R5
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R12 R0 K12 ["params"]
       46 GETTABLE                         R11 R12 R10
       47 JUMPIFEQKNIL                     R11 ; [+14]
       49 GETTABLEKS                       R15 R0 K12 ["params"]
       51 GETTABLE                         R14 R15 R10
       52 FASTCALL1                        TOSTRING R14 ; [+2]
       53 GETIMPORT                        R13 K14 [tostring]
       55 CALL                             R13 1 1
       56 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       58 MOVE                             R12 R4
       59 GETIMPORT                        R11 K16 [table.insert]
       61 CALL                             R11 2 0
       62 LOADNIL                          R5
       63 JUMP                             ; [+17]
       64 JUMPIFEQKNIL                     R5 ; [+9]
       66 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       68 MOVE                             R11 R5
       69 MOVE                             R12 R9
       70 GETIMPORT                        R10 K16 [table.insert]
       72 CALL                             R10 2 0
       73 JUMP                             ; [+7]
       74 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       76 MOVE                             R11 R4
       77 MOVE                             R12 R9
       78 GETIMPORT                        R10 K16 [table.insert]
       80 CALL                             R10 2 0
       81 FORNLOOP                         R6
       82 GETIMPORT                        R6 K11 [table.concat]
       84 MOVE                             R7 R4
       85 CALL                             R6 1 -1
       86 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLE                         R1 R2 R3
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R2 R2 K1 ["instance"]
       13 SETTABLE                         R2 R1 R0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 2
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 SETLIST                          R2 R3 2 [1]
        8 NEWTABLE                         R3 0 2
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 SETLIST                          R3 R4 2 [1]
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 MOVE                             R9 R8
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 MOVE                             R14 R13
       23 LOADNIL                          R15
       24 LOADNIL                          R16
       25 FORGPREP                         R14
       26 GETIMPORT                        R19 K1 [pcall]
       28 NEWCLOSURE                       R20 P0
       29 CAPTURE                          VAL R12
       30 CAPTURE                          VAL R17
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R18
       34 CALL                             R19 1 0
       35 FORGLOOP                         R14 2 ; [-10]
       37 FORGLOOP                         R9 2 ; [-16]
       39 FORGLOOP                         R4 2 ; [-22]
       41 GETTABLEN                        R4 R2 1
       42 GETTABLEN                        R5 R2 2
       43 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETIMPORT                        R4 K1 [pcall]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R4 1 2
        9 MOVE                             R2 R4
       10 MOVE                             R3 R5
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETTABLEKS                       R4 R1 K2 ["key"]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 RETURN                           R3 1
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R1
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1

PROTO_5:
        0 MOVE                             R4 R0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R4
        3 JUMPIFNOT                        R6 ; [+2]
        4 GETTABLEKS                       R6 R2 K0 ["pass"]
        6 MOVE                             R4 R6
        7 GETTABLEKS                       R7 R2 K1 ["errorTranslationContexts"]
        9 LENGTH                           R6 R7
       10 LOADN                            R7 0
       11 JUMPIFNOTLT                      R7 R6 ; [+21]
       13 JUMPIFNOTEQKNIL                  R5 ; [+3]
       15 NEWTABLE                         R5 0 0
       17 GETTABLEKS                       R6 R2 K1 ["errorTranslationContexts"]
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 MOVE                             R12 R5
       23 GETUPVAL                         R13 0
       24 MOVE                             R14 R3
       25 MOVE                             R15 R10
       26 CALL                             R13 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R11 K4 [table.insert]
       30 CALL                             R11 -1 0
       31 FORGLOOP                         R6 2 ; [-10]
       33 JUMPIF                           R4 ; [+29]
       34 JUMPIFEQKNIL                     R5 ; [+4]
       36 LENGTH                           R6 R5
       37 JUMPIFNOTEQKN                    R6 K5 [0] ; [+25]
       39 JUMPIFNOTEQKNIL                  R5 ; [+3]
       41 NEWTABLE                         R5 0 0
       43 MOVE                             R7 R5
       44 GETUPVAL                         R8 0
       45 MOVE                             R9 R3
       46 DUPTABLE                         R10 K8 [{"key", "params"}]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K9 ["Keys"]
       50 GETTABLEKS                       R11 R11 K10 ["FailureWithoutReason"]
       52 SETTABLEKS                       R11 R10 K6 ["key"]
       54 NEWTABLE                         R11 0 0
       56 SETTABLEKS                       R11 R10 K7 ["params"]
       58 CALL                             R8 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R6 K4 [table.insert]
       62 CALL                             R6 -1 0
       63 RETURN                           R4 2

PROTO_6:
        0 LOADK                            R4 K0 ["Toolbox"]
        1 GETTABLEKS                       R6 R0 K1 ["bypassFlags"]
        3 JUMPIFNOT                        R6 ; [+5]
        4 GETTABLEKS                       R5 R0 K1 ["bypassFlags"]
        6 GETTABLEKS                       R5 R5 K2 ["enforceShadowValidations"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADB                            R5 0
       10 GETTABLEKS                       R6 R0 K1 ["bypassFlags"]
       12 JUMPIFNOT                        R6 ; [+9]
       13 GETTABLEKS                       R6 R0 K1 ["bypassFlags"]
       15 GETTABLEKS                       R6 R6 K3 ["studioPluginName"]
       17 JUMPIFNOT                        R6 ; [+4]
       18 GETTABLEKS                       R6 R0 K1 ["bypassFlags"]
       20 GETTABLEKS                       R4 R6 K3 ["studioPluginName"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K4 ["getPrecomputedEditables"]
       25 GETTABLEKS                       R7 R0 K5 ["editableMeshes"]
       27 JUMPIF                           R7 ; [+2]
       28 NEWTABLE                         R7 0 0
       30 GETTABLEKS                       R8 R0 K6 ["editableImages"]
       32 JUMPIF                           R8 ; [+2]
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 2
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K7 ["ValidateAsset"]
       39 GETTABLEKS                       R9 R0 K8 ["instances"]
       41 GETTABLEKS                       R10 R0 K9 ["assetTypeEnum"]
       43 DUPTABLE                         R11 K15 [{"source", "enforceR15FolderStructure", "enforceShadowValidations", "telemetryBundleId", "preloadedEditableMeshes", "preloadedEditableImages"}]
       44 SETTABLEKS                       R4 R11 K10 ["source"]
       46 GETTABLEKS                       R13 R0 K17 ["requireAllFolders"]
       48 ORK                              R12 R13 K16 [False]
       49 SETTABLEKS                       R12 R11 K11 ["enforceR15FolderStructure"]
       51 SETTABLEKS                       R5 R11 K2 ["enforceShadowValidations"]
       53 SETTABLEKS                       R1 R11 K12 ["telemetryBundleId"]
       55 SETTABLEKS                       R6 R11 K13 ["preloadedEditableMeshes"]
       57 SETTABLEKS                       R7 R11 K14 ["preloadedEditableImages"]
       59 CALL                             R8 3 1
       60 GETUPVAL                         R9 2
       61 CALL                             R9 0 1
       62 JUMPIFNOT                        R9 ; [+18]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K18 ["combineResultsIntoLegacy"]
       66 MOVE                             R10 R2
       67 MOVE                             R11 R3
       68 MOVE                             R12 R8
       69 GETTABLEKS                       R14 R0 K1 ["bypassFlags"]
       71 JUMPIFEQKNIL                     R14 ; [+6]
       73 GETTABLEKS                       R13 R0 K1 ["bypassFlags"]
       75 GETTABLEKS                       R13 R13 K19 ["localizationCallback"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R13
       79 CALL                             R9 4 -1
       80 RETURN                           R9 -1
       81 RETURN                           R2 2

PROTO_7:
        0 LOADK                            R6 K0 ["Toolbox"]
        1 GETTABLEKS                       R7 R2 K1 ["bypassFlags"]
        3 JUMPIFNOT                        R7 ; [+9]
        4 GETTABLEKS                       R7 R2 K1 ["bypassFlags"]
        6 GETTABLEKS                       R7 R7 K2 ["studioPluginName"]
        8 JUMPIFNOT                        R7 ; [+4]
        9 GETTABLEKS                       R7 R2 K1 ["bypassFlags"]
       11 GETTABLEKS                       R6 R7 K2 ["studioPluginName"]
       13 GETTABLEKS                       R8 R2 K1 ["bypassFlags"]
       15 JUMPIFNOT                        R8 ; [+5]
       16 GETTABLEKS                       R7 R2 K1 ["bypassFlags"]
       18 GETTABLEKS                       R7 R7 K3 ["enforceShadowValidations"]
       20 JUMPIF                           R7 ; [+1]
       21 LOADB                            R7 0
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["getPrecomputedEditables"]
       25 GETTABLEKS                       R9 R2 K5 ["editableMeshes"]
       27 JUMPIF                           R9 ; [+2]
       28 NEWTABLE                         R9 0 0
       30 GETTABLEKS                       R10 R2 K6 ["editableImages"]
       32 JUMPIF                           R10 ; [+2]
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 2
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K7 ["ValidateFinalizedBundle"]
       39 MOVE                             R11 R0
       40 MOVE                             R12 R1
       41 DUPTABLE                         R13 K13 [{"source", "enforceR15FolderStructure", "enforceShadowValidations", "telemetryBundleId", "preloadedEditableMeshes", "preloadedEditableImages"}]
       42 SETTABLEKS                       R6 R13 K8 ["source"]
       44 GETTABLEKS                       R15 R2 K15 ["requireAllFolders"]
       46 ORK                              R14 R15 K14 [False]
       47 SETTABLEKS                       R14 R13 K9 ["enforceR15FolderStructure"]
       49 SETTABLEKS                       R7 R13 K3 ["enforceShadowValidations"]
       51 SETTABLEKS                       R3 R13 K10 ["telemetryBundleId"]
       53 SETTABLEKS                       R8 R13 K11 ["preloadedEditableMeshes"]
       55 SETTABLEKS                       R9 R13 K12 ["preloadedEditableImages"]
       57 CALL                             R10 3 1
       58 GETUPVAL                         R11 2
       59 CALL                             R11 0 1
       60 JUMPIFNOT                        R11 ; [+32]
       61 GETTABLEKS                       R12 R2 K1 ["bypassFlags"]
       63 FASTCALL1                        ASSERT R12 ; [+2]
       64 GETIMPORT                        R11 K17 [assert]
       66 CALL                             R11 1 0
       67 GETTABLEKS                       R12 R2 K1 ["bypassFlags"]
       69 GETTABLEKS                       R12 R12 K18 ["localizationCallback"]
       71 FASTCALL1                        ASSERT R12 ; [+2]
       72 GETIMPORT                        R11 K17 [assert]
       74 CALL                             R11 1 0
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K19 ["combineResultsIntoLegacy"]
       78 MOVE                             R12 R4
       79 MOVE                             R13 R5
       80 MOVE                             R14 R10
       81 GETTABLEKS                       R16 R2 K1 ["bypassFlags"]
       83 JUMPIFEQKNIL                     R16 ; [+6]
       85 GETTABLEKS                       R15 R2 K1 ["bypassFlags"]
       87 GETTABLEKS                       R15 R15 K18 ["localizationCallback"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R15
       91 CALL                             R11 4 -1
       92 RETURN                           R11 -1
       93 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K8 ["ValidationManager"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagUGCValidationCombineEntrypointResults"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K11 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 4 0
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R7 K13 [PROTO_2]
       40 SETTABLEKS                       R7 R5 K14 ["getPrecomputedEditables"]
       42 DUPCLOSURE                       R7 K15 [PROTO_4]
       43 CAPTURE                          VAL R6
       44 DUPCLOSURE                       R8 K16 [PROTO_5]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R8 R5 K17 ["combineResultsIntoLegacy"]
       49 DUPCLOSURE                       R8 K18 [PROTO_6]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R8 R5 K19 ["studioRFUAssetValidation"]
       55 DUPCLOSURE                       R8 K20 [PROTO_7]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R8 R5 K21 ["studioRFUBundleValidation"]
       61 RETURN                           R5 1
