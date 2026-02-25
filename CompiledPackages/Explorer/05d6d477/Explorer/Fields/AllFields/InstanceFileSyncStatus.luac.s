PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K6 [table.freeze]
        8 DUPTABLE                         R3 K9 [{"status", "tooltip"}]
        9 SETTABLEKS                       R0 R3 K7 ["status"]
       11 SETTABLEKS                       R1 R3 K8 ["tooltip"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["watchInstanceFileSyncStatus"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CALL                             R3 2 3
        7 GETIMPORT                        R7 K4 [Enum.InstanceFileSyncStatus.NotSynced]
        9 JUMPIFNOTEQ                      R3 R7 ; [+3]
       11 LOADNIL                          R6
       12 JUMP                             ; [+8]
       13 GETIMPORT                        R6 K7 [table.freeze]
       15 DUPTABLE                         R7 K10 [{"status", "tooltip"}]
       16 SETTABLEKS                       R3 R7 K8 ["status"]
       18 SETTABLEKS                       R4 R7 K9 ["tooltip"]
       20 CALL                             R6 1 1
       21 MOVE                             R7 R5
       22 RETURN                           R6 2

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K1 ["status"]
        6 GETIMPORT                        R3 K5 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
        8 JUMPIFNOTEQ                      R2 R3 ; [+8]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K6 ["instanceFileSyncStatus"]
       13 LOADK                            R3 K7 ["Syncing"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R2 R0 K1 ["status"]
       19 GETIMPORT                        R3 K9 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       21 JUMPIFNOTEQ                      R2 R3 ; [+8]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K6 ["instanceFileSyncStatus"]
       26 LOADK                            R3 K10 ["Descendant"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1
       30 GETTABLEKS                       R2 R0 K1 ["status"]
       32 GETIMPORT                        R3 K12 [Enum.InstanceFileSyncStatus.Errored]
       34 JUMPIFNOTEQ                      R2 R3 ; [+8]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K6 ["instanceFileSyncStatus"]
       39 LOADK                            R3 K11 ["Errored"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1
       43 LOADK                            R2 K0 [""]
       44 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETTABLEKS                       R2 R1 K0 ["status"]
        4 GETIMPORT                        R3 K4 [Enum.InstanceFileSyncStatus.NotSynced]
        6 JUMPIFNOTEQ                      R2 R3 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       15 JUMPIFEQKS                       R2 K6 [""] ; [+4]
       17 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       19 RETURN                           R2 1
       20 LOADK                            R4 K7 ["LiveSync"]
       21 LOADK                            R5 K8 ["ScriptSyncing"]
       22 NAMECALL                         R2 R0 K9 ["getText"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["valueBinding"]
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 JUMPIFEQKNIL                     R5 ; [+7]
        9 GETTABLEKS                       R6 R5 K2 ["status"]
       11 GETIMPORT                        R7 K6 [Enum.InstanceFileSyncStatus.NotSynced]
       13 JUMPIFNOTEQ                      R6 R7 ; [+3]
       15 LOADNIL                          R3
       16 JUMP                             ; [+16]
       17 GETTABLEKS                       R6 R5 K7 ["tooltip"]
       19 JUMPIFNOT                        R6 ; [+7]
       20 GETTABLEKS                       R6 R5 K7 ["tooltip"]
       22 JUMPIFEQKS                       R6 K8 [""] ; [+4]
       24 GETTABLEKS                       R3 R5 K7 ["tooltip"]
       26 JUMP                             ; [+6]
       27 LOADK                            R8 K9 ["LiveSync"]
       28 LOADK                            R9 K10 ["ScriptSyncing"]
       29 NAMECALL                         R6 R4 K11 ["getText"]
       31 CALL                             R6 3 1
       32 MOVE                             R3 R6
       33 JUMPIFNOTEQKNIL                  R3 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K12 ["mouseEnter"]
       39 MOVE                             R5 R0
       40 MOVE                             R6 R1
       41 MOVE                             R7 R2
       42 MOVE                             R8 R3
       43 CALL                             R4 4 0
       44 RETURN                           R0 0

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
       67 LOADK                            R9 K20 ["data-testid=InstanceFileSyncStatus"]
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
        0 GETIMPORT                        R0 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 LOADNIL                          R1
        3 DUPCLOSURE                       R2 K4 [PROTO_8]
        4 RETURN                           R0 3

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"watchInstanceFileSyncStatus", "destroy"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_9]
        2 SETTABLEKS                       R1 R0 K0 ["watchInstanceFileSyncStatus"]
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
        0 GETTABLEKS                       R1 R0 K0 ["createInstanceFileSyncStatusWatcher"]
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
       55 CAPTURE                          VAL R8
       56 DUPCLOSURE                       R10 K21 [PROTO_3]
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R11 K22 [PROTO_4]
       59 DUPCLOSURE                       R12 K23 [PROTO_7]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R10
       66 DUPCLOSURE                       R13 K24 [PROTO_11]
       67 DUPCLOSURE                       R14 K25 [PROTO_14]
       68 CAPTURE                          VAL R13
       69 DUPTABLE                         R15 K33 [{"key", "icon", "init", "watch", "validateArgs", "render", "permanent"}]
       70 LOADK                            R16 K34 ["instanceFileSyncStatus"]
       71 SETTABLEKS                       R16 R15 K26 ["key"]
       73 LOADK                            R16 K35 [""]
       74 SETTABLEKS                       R16 R15 K27 ["icon"]
       76 SETTABLEKS                       R14 R15 K28 ["init"]
       78 SETTABLEKS                       R9 R15 K29 ["watch"]
       80 DUPCLOSURE                       R16 K36 [PROTO_15]
       81 SETTABLEKS                       R16 R15 K30 ["validateArgs"]
       83 DUPCLOSURE                       R16 K37 [PROTO_16]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R12
       86 SETTABLEKS                       R16 R15 K31 ["render"]
       88 LOADB                            R16 1
       89 SETTABLEKS                       R16 R15 K32 ["permanent"]
       91 RETURN                           R15 1
