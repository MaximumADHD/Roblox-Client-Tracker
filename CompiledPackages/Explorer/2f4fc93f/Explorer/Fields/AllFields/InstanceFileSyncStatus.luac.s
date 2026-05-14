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
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["instanceFileSyncStatus"]
       13 LOADK                            R3 K7 ["Syncing"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R2 R0 K1 ["status"]
       19 GETIMPORT                        R3 K9 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       21 JUMPIFNOTEQ                      R2 R3 ; [+8]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["instanceFileSyncStatus"]
       26 LOADK                            R3 K10 ["Descendant"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1
       30 GETTABLEKS                       R2 R0 K1 ["status"]
       32 GETIMPORT                        R3 K12 [Enum.InstanceFileSyncStatus.Errored]
       34 JUMPIFNOTEQ                      R2 R3 ; [+8]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K6 ["instanceFileSyncStatus"]
       39 LOADK                            R3 K11 ["Errored"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1
       43 GETUPVAL                         R2 1
       44 CALL                             R2 0 1
       45 JUMPIFNOT                        R2 ; [+13]
       46 GETTABLEKS                       R2 R0 K1 ["status"]
       48 GETIMPORT                        R3 K14 [Enum.InstanceFileSyncStatus.AncestorErrored]
       50 JUMPIFNOTEQ                      R2 R3 ; [+8]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K6 ["instanceFileSyncStatus"]
       55 LOADK                            R3 K13 ["AncestorErrored"]
       56 MOVE                             R4 R1
       57 CALL                             R2 2 -1
       58 RETURN                           R2 -1
       59 LOADK                            R2 K0 [""]
       60 RETURN                           R2 1

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
       20 GETUPVAL                         R2 0
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+12]
       23 GETTABLEKS                       R2 R1 K0 ["status"]
       25 GETIMPORT                        R3 K8 [Enum.InstanceFileSyncStatus.AncestorErrored]
       27 JUMPIFNOTEQ                      R2 R3 ; [+7]
       29 LOADK                            R4 K9 ["LiveSync"]
       30 LOADK                            R5 K7 ["AncestorErrored"]
       31 NAMECALL                         R2 R0 K10 ["getText"]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1
       35 LOADK                            R4 K9 ["LiveSync"]
       36 LOADK                            R5 K11 ["ScriptSyncing"]
       37 NAMECALL                         R2 R0 K10 ["getText"]
       39 CALL                             R2 3 -1
       40 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R5 R5 K0 ["valueBinding"]
        5 NAMECALL                         R5 R5 K1 ["getValue"]
        7 CALL                             R5 1 -1
        8 CALL                             R3 -1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K2 ["mouseEnter"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["theme"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 3
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       30 GETTABLEKS                       R9 R3 K7 ["mouseEnter"]
       32 SETLIST                          R6 R7 3 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K8 ["createElement"]
       38 LOADK                            R6 K9 ["ImageLabel"]
       39 NEWTABLE                         R7 8 0
       41 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       43 LOADN                            R9 16
       44 LOADN                            R10 16
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K13 ["Size"]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K15 ["Event"]
       54 GETTABLEKS                       R8 R8 K16 ["MouseEnter"]
       56 SETTABLE                         R4 R7 R8
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K15 ["Event"]
       60 GETTABLEKS                       R8 R8 K17 ["MouseLeave"]
       62 GETTABLEKS                       R9 R3 K18 ["mouseLeave"]
       64 SETTABLE                         R9 R7 R8
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K19 ["Tag"]
       68 LOADK                            R9 K20 ["data-testid=InstanceFileSyncStatus"]
       69 SETTABLE                         R9 R7 R8
       70 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R2
       75 NAMECALL                         R8 R8 K21 ["map"]
       77 CALL                             R8 2 1
       78 SETTABLEKS                       R8 R7 K22 ["Image"]
       80 CALL                             R5 2 -1
       81 RETURN                           R5 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K15 ["ThemeContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["getFFlagLuaExplorerAncestorErroredIcon"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K19 ["useTooltipActions"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R4 K20 ["createElement"]
       60 DUPCLOSURE                       R9 K21 [PROTO_0]
       61 DUPCLOSURE                       R10 K22 [PROTO_2]
       62 CAPTURE                          VAL R9
       63 DUPCLOSURE                       R11 K23 [PROTO_3]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R12 K24 [PROTO_4]
       67 CAPTURE                          VAL R6
       68 DUPCLOSURE                       R13 K25 [PROTO_7]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R11
       75 DUPCLOSURE                       R14 K26 [PROTO_11]
       76 DUPCLOSURE                       R15 K27 [PROTO_14]
       77 CAPTURE                          VAL R14
       78 DUPTABLE                         R16 K35 [{"key", "icon", "init", "watch", "validateArgs", "render", "permanent"}]
       79 LOADK                            R17 K36 ["instanceFileSyncStatus"]
       80 SETTABLEKS                       R17 R16 K28 ["key"]
       82 LOADK                            R17 K37 [""]
       83 SETTABLEKS                       R17 R16 K29 ["icon"]
       85 SETTABLEKS                       R15 R16 K30 ["init"]
       87 SETTABLEKS                       R10 R16 K31 ["watch"]
       89 DUPCLOSURE                       R17 K38 [PROTO_15]
       90 SETTABLEKS                       R17 R16 K32 ["validateArgs"]
       92 DUPCLOSURE                       R17 K39 [PROTO_16]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R13
       95 SETTABLEKS                       R17 R16 K33 ["render"]
       97 LOADB                            R17 1
       98 SETTABLEKS                       R17 R16 K34 ["permanent"]
      100 RETURN                           R16 1
