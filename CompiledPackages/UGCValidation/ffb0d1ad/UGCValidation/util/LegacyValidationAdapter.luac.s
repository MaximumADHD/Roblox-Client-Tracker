PROTO_0:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["key"]
        3 GETTABLE                         R2 R1 R3
        4 JUMP                             ; [+1]
        5 LOADNIL                          R2
        6 JUMPIFNOTEQKNIL                  R2 ; [+13]
        8 GETTABLEKS                       R3 R0 K0 ["key"]
       10 LOADK                            R5 K1 ["."]
       11 NAMECALL                         R3 R3 K2 ["split"]
       13 CALL                             R3 2 1
       14 LENGTH                           R5 R3
       15 GETTABLE                         R4 R3 R5
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["Values"]
       19 GETTABLE                         R2 R5 R4
       20 JUMPIFNOTEQKNIL                  R2 ; [+4]
       22 GETTABLEKS                       R3 R0 K0 ["key"]
       24 RETURN                           R3 1
       25 NEWTABLE                         R3 0 0
       27 LOADNIL                          R4
       28 LOADN                            R7 1
       29 LENGTH                           R5 R2
       30 LOADN                            R6 1
       31 FORNPREP                         R5
       32 FASTCALL3                        STRING_SUB R2 R7 R7
       34 MOVE                             R9 R2
       35 MOVE                             R10 R7
       36 MOVE                             R11 R7
       37 GETIMPORT                        R8 K6 [string.sub]
       39 CALL                             R8 3 1
       40 JUMPIFNOTEQKS                    R8 K7 ["{"] ; [+4]
       42 NEWTABLE                         R4 0 0
       44 JUMP                             ; [+45]
       45 JUMPIFNOTEQKS                    R8 K8 ["}"] ; [+27]
       47 JUMPIFEQKNIL                     R4 ; [+42]
       49 GETIMPORT                        R9 K11 [table.concat]
       51 MOVE                             R10 R4
       52 CALL                             R9 1 1
       53 GETTABLEKS                       R11 R0 K12 ["params"]
       55 GETTABLE                         R10 R11 R9
       56 JUMPIFEQKNIL                     R10 ; [+14]
       58 GETTABLEKS                       R14 R0 K12 ["params"]
       60 GETTABLE                         R13 R14 R9
       61 FASTCALL1                        TOSTRING R13 ; [+2]
       62 GETIMPORT                        R12 K14 [tostring]
       64 CALL                             R12 1 1
       65 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       67 MOVE                             R11 R3
       68 GETIMPORT                        R10 K16 [table.insert]
       70 CALL                             R10 2 0
       71 LOADNIL                          R4
       72 JUMP                             ; [+17]
       73 JUMPIFEQKNIL                     R4 ; [+9]
       75 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       77 MOVE                             R10 R4
       78 MOVE                             R11 R8
       79 GETIMPORT                        R9 K16 [table.insert]
       81 CALL                             R9 2 0
       82 JUMP                             ; [+7]
       83 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       85 MOVE                             R10 R3
       86 MOVE                             R11 R8
       87 GETIMPORT                        R9 K16 [table.insert]
       89 CALL                             R9 2 0
       90 FORNLOOP                         R5
       91 GETIMPORT                        R5 K11 [table.concat]
       93 MOVE                             R6 R3
       94 CALL                             R5 1 -1
       95 RETURN                           R5 -1

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
        0 GETTABLEKS                       R3 R1 K0 ["key"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["LegacyValidator"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+7]
        7 GETTABLEKS                       R4 R1 K3 ["params"]
        9 GETTABLEKS                       R4 R4 K4 ["Message"]
       11 ORK                              R3 R4 K2 [""]
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 JUMPIFNOT                        R0 ; [+8]
       16 GETIMPORT                        R5 K6 [pcall]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R5 1 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETTABLEKS                       R5 R1 K0 ["key"]
       27 JUMPIFEQ                         R4 R5 ; [+2]
       29 RETURN                           R4 1
       30 GETUPVAL                         R5 1
       31 MOVE                             R6 R1
       32 MOVE                             R7 R2
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1

PROTO_5:
        0 MOVE                             R4 R0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R4
        3 JUMPIFNOT                        R6 ; [+2]
        4 GETTABLEKS                       R6 R2 K0 ["pass"]
        6 MOVE                             R4 R6
        7 GETUPVAL                         R6 0
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+44]
       10 GETIMPORT                        R6 K2 [next]
       12 GETTABLEKS                       R7 R2 K3 ["failureMap"]
       14 CALL                             R6 1 1
       15 JUMPIFEQKNIL                     R6 ; [+64]
       17 JUMPIFNOTEQKNIL                  R5 ; [+3]
       19 NEWTABLE                         R5 0 0
       21 GETTABLEKS                       R6 R2 K3 ["failureMap"]
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 MOVE                             R11 R10
       27 LOADNIL                          R12
       28 LOADNIL                          R13
       29 FORGPREP                         R11
       30 MOVE                             R17 R5
       31 GETUPVAL                         R18 1
       32 MOVE                             R19 R3
       33 DUPTABLE                         R20 K6 [{"key", "params"}]
       34 GETTABLEKS                       R21 R15 K7 ["failureStringKey"]
       36 SETTABLEKS                       R21 R20 K4 ["key"]
       38 GETTABLEKS                       R21 R15 K8 ["failureStringParams"]
       40 SETTABLEKS                       R21 R20 K5 ["params"]
       42 GETTABLEKS                       R21 R2 K9 ["relevantSourceStrings"]
       44 CALL                             R18 3 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R16 K12 [table.insert]
       48 CALL                             R16 -1 0
       49 FORGLOOP                         R11 2 ; [-20]
       51 FORGLOOP                         R6 2 ; [-26]
       53 JUMP                             ; [+26]
       54 GETTABLEKS                       R6 R2 K13 ["errorTranslationContexts"]
       56 JUMPIFNOT                        R6 ; [+23]
       57 LENGTH                           R7 R6
       58 LOADN                            R8 0
       59 JUMPIFNOTLT                      R8 R7 ; [+20]
       61 JUMPIFNOTEQKNIL                  R5 ; [+3]
       63 NEWTABLE                         R5 0 0
       65 MOVE                             R7 R6
       66 LOADNIL                          R8
       67 LOADNIL                          R9
       68 FORGPREP                         R7
       69 MOVE                             R13 R5
       70 GETUPVAL                         R14 1
       71 MOVE                             R15 R3
       72 MOVE                             R16 R11
       73 CALL                             R14 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R12 K12 [table.insert]
       77 CALL                             R12 -1 0
       78 FORGLOOP                         R7 2 ; [-10]
       80 JUMPIF                           R4 ; [+58]
       81 JUMPIFEQKNIL                     R5 ; [+4]
       83 LENGTH                           R6 R5
       84 JUMPIFNOTEQKN                    R6 K14 [0] ; [+54]
       86 JUMPIFNOTEQKNIL                  R5 ; [+3]
       88 NEWTABLE                         R5 0 0
       90 GETUPVAL                         R6 0
       91 CALL                             R6 0 1
       92 JUMPIFNOT                        R6 ; [+26]
       93 MOVE                             R7 R5
       94 GETUPVAL                         R8 1
       95 MOVE                             R9 R3
       96 DUPTABLE                         R10 K6 [{"key", "params"}]
       97 GETUPVAL                         R11 2
       98 GETTABLEKS                       R11 R11 K15 ["Keys"]
      100 GETTABLEKS                       R11 R11 K16 ["InternalError"]
      102 SETTABLEKS                       R11 R10 K4 ["key"]
      104 DUPTABLE                         R11 K18 [{"ValidationJobId"}]
      105 GETTABLEKS                       R12 R2 K19 ["validationJobId"]
      107 SETTABLEKS                       R12 R11 K17 ["ValidationJobId"]
      109 SETTABLEKS                       R11 R10 K5 ["params"]
      111 GETTABLEKS                       R11 R2 K9 ["relevantSourceStrings"]
      113 CALL                             R8 3 -1
      114 FASTCALL                         TABLE_INSERT ; [+2]
      115 GETIMPORT                        R6 K12 [table.insert]
      117 CALL                             R6 -1 0
      118 RETURN                           R4 2
      119 MOVE                             R7 R5
      120 GETUPVAL                         R8 1
      121 MOVE                             R9 R3
      122 DUPTABLE                         R10 K6 [{"key", "params"}]
      123 GETUPVAL                         R11 2
      124 GETTABLEKS                       R11 R11 K15 ["Keys"]
      126 GETTABLEKS                       R11 R11 K20 ["FailureWithoutReason"]
      128 SETTABLEKS                       R11 R10 K4 ["key"]
      130 NEWTABLE                         R11 0 0
      132 SETTABLEKS                       R11 R10 K5 ["params"]
      134 CALL                             R8 2 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R6 K12 [table.insert]
      138 CALL                             R6 -1 0
      139 RETURN                           R4 2

PROTO_6:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["mergeLegacyIntoModern requires EngineUGCValidationExpandReturnSchema"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R2 K3 ["pass"]
       10 AND                              R3 R4 R0
       11 SETTABLEKS                       R3 R2 K3 ["pass"]
       13 JUMPIFNOT                        R1 ; [+47]
       14 LENGTH                           R3 R1
       15 LOADN                            R4 0
       16 JUMPIFNOTLT                      R4 R3 ; [+44]
       18 NEWTABLE                         R3 0 0
       20 MOVE                             R4 R1
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 JUMPIFEQKS                       R8 K4 [""] ; [+18]
       26 DUPTABLE                         R11 K8 [{["failureStringKey"], ["failureStringParams"], ["instancePath"] = ""}]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K9 ["LegacyValidator"]
       30 SETTABLEKS                       R12 R11 K5 ["failureStringKey"]
       32 DUPTABLE                         R12 K11 [{"Message"}]
       33 SETTABLEKS                       R8 R12 K10 ["Message"]
       35 SETTABLEKS                       R12 R11 K6 ["failureStringParams"]
       37 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       39 MOVE                             R10 R3
       40 GETIMPORT                        R9 K14 [table.insert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R4 2 ; [-20]
       45 LENGTH                           R4 R3
       46 LOADN                            R5 0
       47 JUMPIFNOTLT                      R5 R4 ; [+13]
       49 GETTABLEKS                       R4 R2 K15 ["failureMap"]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K9 ["LegacyValidator"]
       54 SETTABLE                         R3 R4 R5
       55 GETTABLEKS                       R4 R2 K16 ["numFailures"]
       57 LENGTH                           R5 R3
       58 ADD                              R4 R4 R5
       59 SETTABLEKS                       R4 R2 K16 ["numFailures"]
       61 RETURN                           R0 0

PROTO_7:
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
       43 DUPTABLE                         R11 K17 [{"source", "enforceR15FolderStructure", "enforceShadowValidations", "telemetryBundleId", "preloadedEditableMeshes", "preloadedEditableImages", "backendConfigs", "iecConfigs"}]
       44 SETTABLEKS                       R4 R11 K10 ["source"]
       46 GETTABLEKS                       R13 R0 K19 ["requireAllFolders"]
       48 ORK                              R12 R13 K18 [False]
       49 SETTABLEKS                       R12 R11 K11 ["enforceR15FolderStructure"]
       51 SETTABLEKS                       R5 R11 K2 ["enforceShadowValidations"]
       53 SETTABLEKS                       R1 R11 K12 ["telemetryBundleId"]
       55 SETTABLEKS                       R6 R11 K13 ["preloadedEditableMeshes"]
       57 SETTABLEKS                       R7 R11 K14 ["preloadedEditableImages"]
       59 GETTABLEKS                       R13 R0 K20 ["restrictedUserIds"]
       61 JUMPIFNOT                        R13 ; [+6]
       62 DUPTABLE                         R12 K21 [{"restrictedUserIds"}]
       63 GETTABLEKS                       R13 R0 K20 ["restrictedUserIds"]
       65 SETTABLEKS                       R13 R12 K20 ["restrictedUserIds"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R12
       69 SETTABLEKS                       R12 R11 K15 ["backendConfigs"]
       71 GETTABLEKS                       R13 R0 K22 ["token"]
       73 JUMPIFNOT                        R13 ; [+10]
       74 DUPTABLE                         R12 K24 [{"token", "universeId"}]
       75 GETTABLEKS                       R13 R0 K22 ["token"]
       77 SETTABLEKS                       R13 R12 K22 ["token"]
       79 GETTABLEKS                       R13 R0 K23 ["universeId"]
       81 SETTABLEKS                       R13 R12 K23 ["universeId"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R12
       85 SETTABLEKS                       R12 R11 K16 ["iecConfigs"]
       87 CALL                             R8 3 1
       88 GETUPVAL                         R9 2
       89 CALL                             R9 0 1
       90 JUMPIFNOT                        R9 ; [+18]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K25 ["combineResultsIntoLegacy"]
       94 MOVE                             R10 R2
       95 MOVE                             R11 R3
       96 MOVE                             R12 R8
       97 GETTABLEKS                       R14 R0 K1 ["bypassFlags"]
       99 JUMPIFEQKNIL                     R14 ; [+6]
      101 GETTABLEKS                       R13 R0 K1 ["bypassFlags"]
      103 GETTABLEKS                       R13 R13 K26 ["localizationCallback"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R13
      107 CALL                             R9 4 -1
      108 RETURN                           R9 -1
      109 RETURN                           R2 2

PROTO_8:
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
       41 DUPTABLE                         R13 K15 [{"source", "enforceR15FolderStructure", "enforceShadowValidations", "telemetryBundleId", "preloadedEditableMeshes", "preloadedEditableImages", "backendConfigs", "iecConfigs"}]
       42 SETTABLEKS                       R6 R13 K8 ["source"]
       44 GETTABLEKS                       R15 R2 K17 ["requireAllFolders"]
       46 ORK                              R14 R15 K16 [False]
       47 SETTABLEKS                       R14 R13 K9 ["enforceR15FolderStructure"]
       49 SETTABLEKS                       R7 R13 K3 ["enforceShadowValidations"]
       51 SETTABLEKS                       R3 R13 K10 ["telemetryBundleId"]
       53 SETTABLEKS                       R8 R13 K11 ["preloadedEditableMeshes"]
       55 SETTABLEKS                       R9 R13 K12 ["preloadedEditableImages"]
       57 GETTABLEKS                       R15 R2 K18 ["restrictedUserIds"]
       59 JUMPIFNOT                        R15 ; [+6]
       60 DUPTABLE                         R14 K19 [{"restrictedUserIds"}]
       61 GETTABLEKS                       R15 R2 K18 ["restrictedUserIds"]
       63 SETTABLEKS                       R15 R14 K18 ["restrictedUserIds"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R14
       67 SETTABLEKS                       R14 R13 K13 ["backendConfigs"]
       69 GETTABLEKS                       R15 R2 K20 ["token"]
       71 JUMPIFNOT                        R15 ; [+10]
       72 DUPTABLE                         R14 K22 [{"token", "universeId"}]
       73 GETTABLEKS                       R15 R2 K20 ["token"]
       75 SETTABLEKS                       R15 R14 K20 ["token"]
       77 GETTABLEKS                       R15 R2 K21 ["universeId"]
       79 SETTABLEKS                       R15 R14 K21 ["universeId"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R14
       83 SETTABLEKS                       R14 R13 K14 ["iecConfigs"]
       85 CALL                             R10 3 1
       86 GETUPVAL                         R11 2
       87 CALL                             R11 0 1
       88 JUMPIFNOT                        R11 ; [+32]
       89 GETTABLEKS                       R12 R2 K1 ["bypassFlags"]
       91 FASTCALL1                        ASSERT R12 ; [+2]
       92 GETIMPORT                        R11 K24 [assert]
       94 CALL                             R11 1 0
       95 GETTABLEKS                       R12 R2 K1 ["bypassFlags"]
       97 GETTABLEKS                       R12 R12 K25 ["localizationCallback"]
       99 FASTCALL1                        ASSERT R12 ; [+2]
      100 GETIMPORT                        R11 K24 [assert]
      102 CALL                             R11 1 0
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K26 ["combineResultsIntoLegacy"]
      106 MOVE                             R12 R4
      107 MOVE                             R13 R5
      108 MOVE                             R14 R10
      109 GETTABLEKS                       R16 R2 K1 ["bypassFlags"]
      111 JUMPIFEQKNIL                     R16 ; [+6]
      113 GETTABLEKS                       R15 R2 K1 ["bypassFlags"]
      115 GETTABLEKS                       R15 R15 K25 ["localizationCallback"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R15
      119 CALL                             R11 4 -1
      120 RETURN                           R11 -1
      121 RETURN                           R4 2

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
       30 GETTABLEKS                       R5 R0 K9 ["flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K7 ["validationSystem"]
       39 GETTABLEKS                       R6 R6 K12 ["ErrorSourceStrings"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 LOADK                            R7 K13 ["LegacyValidator"]
       45 SETTABLEKS                       R7 R6 K13 ["LegacyValidator"]
       47 DUPCLOSURE                       R7 K14 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R8 K15 [PROTO_2]
       50 SETTABLEKS                       R8 R6 K16 ["getPrecomputedEditables"]
       52 DUPCLOSURE                       R8 K17 [PROTO_4]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K18 [PROTO_5]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R6 K19 ["combineResultsIntoLegacy"]
       61 DUPCLOSURE                       R9 K20 [PROTO_6]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R9 R6 K21 ["mergeLegacyIntoModern"]
       66 DUPCLOSURE                       R9 K22 [PROTO_7]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R9 R6 K23 ["studioRFUAssetValidation"]
       72 DUPCLOSURE                       R9 K24 [PROTO_8]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R9 R6 K25 ["studioRFUBundleValidation"]
       78 RETURN                           R6 1
