PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETIMPORT                        R2 K2 [table.freeze]
        3 DUPTABLE                         R3 K4 [{"errorString"}]
        4 SETTABLEKS                       R1 R3 K3 ["errorString"]
        6 CALL                             R2 1 1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETIMPORT                        R3 K2 [table.freeze]
        4 DUPTABLE                         R4 K4 [{"errorString"}]
        5 SETTABLEKS                       R1 R4 K3 ["errorString"]
        7 CALL                             R3 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["watchLiveSyncStatus"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R3 2 3
        6 JUMPIFNOT                        R3 ; [+7]
        7 GETIMPORT                        R6 K3 [table.freeze]
        9 DUPTABLE                         R7 K5 [{"errorString"}]
       10 SETTABLEKS                       R4 R7 K4 ["errorString"]
       12 CALL                             R6 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 MOVE                             R7 R5
       16 RETURN                           R6 2

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+28]
        1 GETTABLEKS                       R2 R0 K0 ["errorString"]
        3 JUMPIF                           R2 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["liveSyncStatus"]
        7 LOADK                            R3 K2 ["Syncing"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 GETTABLEKS                       R2 R0 K0 ["errorString"]
       13 JUMPIFEQKS                       R2 K3 ["Syncing Under Root"] ; [+8]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K1 ["liveSyncStatus"]
       18 LOADK                            R3 K4 ["Errored"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K1 ["liveSyncStatus"]
       25 LOADK                            R3 K5 ["Descendant"]
       26 MOVE                             R4 R1
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 LOADK                            R2 K6 [""]
       30 RETURN                           R2 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["errorString"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+7]
        8 LOADK                            R4 K1 ["LiveSync"]
        9 LOADK                            R5 K2 ["ScriptSyncing"]
       10 NAMECALL                         R2 R0 K3 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1
       14 GETTABLEKS                       R2 R1 K0 ["errorString"]
       16 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["valueBinding"]
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKNIL                  R5 ; [+3]
        9 LOADNIL                          R3
       10 JUMP                             ; [+14]
       11 GETTABLEKS                       R6 R5 K2 ["errorString"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+8]
       15 LOADK                            R8 K3 ["LiveSync"]
       16 LOADK                            R9 K4 ["ScriptSyncing"]
       17 NAMECALL                         R6 R4 K5 ["getText"]
       19 CALL                             R6 3 1
       20 MOVE                             R3 R6
       21 JUMP                             ; [+3]
       22 GETTABLEKS                       R3 R5 K2 ["errorString"]
       24 JUMP                             ; [0]
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K6 ["mouseEnter"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 MOVE                             R7 R2
       34 MOVE                             R8 R3
       35 CALL                             R4 4 0
       36 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["theme"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 3
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       29 GETTABLEKS                       R9 R3 K7 ["mouseEnter"]
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K8 ["createElement"]
       37 LOADK                            R6 K9 ["ImageLabel"]
       38 NEWTABLE                         R7 8 0
       40 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       42 LOADN                            R9 16
       43 LOADN                            R10 16
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K13 ["Size"]
       47 LOADN                            R8 1
       48 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K15 ["Event"]
       53 GETTABLEKS                       R8 R9 K16 ["MouseEnter"]
       55 SETTABLE                         R4 R7 R8
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K15 ["Event"]
       59 GETTABLEKS                       R8 R9 K17 ["MouseLeave"]
       61 GETTABLEKS                       R9 R3 K18 ["mouseLeave"]
       63 SETTABLE                         R9 R7 R8
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R8 R9 K19 ["Tag"]
       67 LOADK                            R9 K20 ["data-testid=LiveSyncStatus"]
       68 SETTABLE                         R9 R7 R8
       69 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R2
       74 NAMECALL                         R8 R8 K21 ["map"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K22 ["Image"]
       79 CALL                             R5 2 -1
       80 RETURN                           R5 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 DUPCLOSURE                       R2 K0 [PROTO_8]
        3 RETURN                           R0 3

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"watchLiveSyncStatus", "destroy"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_9]
        2 SETTABLEKS                       R1 R0 K0 ["watchLiveSyncStatus"]
        4 DUPCLOSURE                       R1 K4 [PROTO_10]
        5 SETTABLEKS                       R1 R0 K1 ["destroy"]
        7 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["createLiveSyncStatusWatcher"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 1
        5 MOVE                             R3 R2
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 2
        9 GETUPVAL                         R2 0
       10 CALL                             R2 0 1
       11 DUPCLOSURE                       R3 K1 [PROTO_13]
       12 RETURN                           R2 2

PROTO_15:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K2 [{"valueBinding", "fireAction"}]
        3 SETTABLEKS                       R0 R4 K0 ["valueBinding"]
        5 SETTABLEKS                       R1 R4 K1 ["fireAction"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R3 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Components"]
       39 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K15 ["ThemeContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       48 GETTABLEKS                       R7 R8 K17 ["useTooltipActions"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K18 ["createElement"]
       53 DUPCLOSURE                       R8 K19 [PROTO_0]
       54 DUPCLOSURE                       R9 K20 [PROTO_2]
       55 DUPCLOSURE                       R10 K21 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R11 K22 [PROTO_4]
       58 DUPCLOSURE                       R12 K23 [PROTO_7]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 DUPCLOSURE                       R13 K24 [PROTO_11]
       66 DUPCLOSURE                       R14 K25 [PROTO_14]
       67 CAPTURE                          VAL R13
       68 DUPTABLE                         R15 K33 [{"key", "icon", "init", "watch", "validateArgs", "render", "permanent"}]
       69 LOADK                            R16 K34 ["liveSyncStatus"]
       70 SETTABLEKS                       R16 R15 K26 ["key"]
       72 LOADK                            R16 K35 [""]
       73 SETTABLEKS                       R16 R15 K27 ["icon"]
       75 SETTABLEKS                       R14 R15 K28 ["init"]
       77 SETTABLEKS                       R9 R15 K29 ["watch"]
       79 DUPCLOSURE                       R16 K36 [PROTO_15]
       80 SETTABLEKS                       R16 R15 K30 ["validateArgs"]
       82 DUPCLOSURE                       R16 K37 [PROTO_16]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R12
       85 SETTABLEKS                       R16 R15 K31 ["render"]
       87 LOADB                            R16 1
       88 SETTABLEKS                       R16 R15 K32 ["permanent"]
       90 RETURN                           R15 1
