PROTO_0:
        0 DUPTABLE                         R0 K11 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K12 ["Constants"]
        4 GETTABLEKS                       R1 R1 K13 ["DEFAULT_TEXTURE_GEN_MODEL"]
        6 SETTABLEKS                       R1 R0 K5 ["model"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K6 ["slots"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["View"]
        3 GETTABLEKS                       R0 R0 K1 ["subscribe"]
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["View"]
        3 GETTABLEKS                       R2 R2 K1 ["sendIntent"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["StartGeneration"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["View"]
        3 GETTABLEKS                       R1 R1 K1 ["sendIntent"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["PickSlot"]
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["View"]
        3 GETTABLEKS                       R0 R0 K1 ["sendIntent"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Cancel"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["View"]
        3 GETTABLEKS                       R2 R2 K1 ["sendIntent"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["StartBatch"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K4 [{"startGeneration", "pickSlot", "cancel", "startBatch"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["startGeneration"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R1 R0 K1 ["pickSlot"]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R1 R0 K2 ["cancel"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R1 R0 K3 ["startBatch"]
       25 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K4 [{"selection", "generation", "batch", "activeGenerationUniqueIds"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["selection"]
        4 DUPTABLE                         R1 K9 [{"state", "startGeneration", "pickSlot", "cancel"}]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K5 ["state"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K6 ["startGeneration"]
       11 SETTABLEKS                       R2 R1 K6 ["startGeneration"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K7 ["pickSlot"]
       16 SETTABLEKS                       R2 R1 K7 ["pickSlot"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K8 ["cancel"]
       21 SETTABLEKS                       R2 R1 K8 ["cancel"]
       23 SETTABLEKS                       R1 R0 K1 ["generation"]
       25 DUPTABLE                         R1 K11 [{"startBatch"}]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K10 ["startBatch"]
       29 SETTABLEKS                       R2 R1 K10 ["startBatch"]
       31 SETTABLEKS                       R1 R0 K2 ["batch"]
       33 GETUPVAL                         R1 3
       34 SETTABLEKS                       R1 R0 K3 ["activeGenerationUniqueIds"]
       36 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R0
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETTABLEKS                       R4 R1 K3 ["selection"]
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R4 3
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETTABLEKS                       R5 R1 K4 ["generation"]
       39 JUMP                             ; [+2]
       40 GETUPVAL                         R5 4
       41 CALL                             R5 0 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETTABLEKS                       R7 R1 K5 ["activeGenerationUniqueIds"]
       45 JUMPIFNOT                        R7 ; [+3]
       46 GETTABLEKS                       R6 R1 K5 ["activeGenerationUniqueIds"]
       48 JUMP                             ; [+2]
       49 NEWTABLE                         R6 0 0
       51 JUMPIFNOT                        R1 ; [+7]
       52 GETTABLEKS                       R8 R1 K6 ["visible"]
       54 JUMPIFEQKB                       R8 TRUE ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMP                             ; [+1]
       59 LOADB                            R7 0
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       63 NEWCLOSURE                       R9 P2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R10 0 4
       70 MOVE                             R11 R4
       71 MOVE                             R12 R5
       72 MOVE                             R13 R6
       73 MOVE                             R14 R3
       74 SETLIST                          R10 R11 4 [1]
       76 CALL                             R8 2 1
       77 DUPTABLE                         R9 K8 [{"visible", "value"}]
       78 SETTABLEKS                       R7 R9 K6 ["visible"]
       80 SETTABLEKS                       R8 R9 K7 ["value"]
       82 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["CrossDMViewModel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["GenViewModelContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["Gen3dCore"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K15 ["Intents"]
       48 DUPTABLE                         R7 K20 [{["kind"] = "none", ["count"] = 0}]
       49 DUPCLOSURE                       R8 K21 [PROTO_0]
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R9 K22 [PROTO_9]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 RETURN                           R9 1
