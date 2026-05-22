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
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K4 [Enum.InstanceFileSyncStatus.NotSynced]
        7 LOADN                            R2 255
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R0
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R11 R8 K5 ["Status"]
       17 GETTABLE                         R9 R10 R11
       18 JUMPIF                           R9 ; [+2]
       19 GETTABLEKS                       R9 R8 K5 ["Status"]
       21 GETUPVAL                         R12 1
       22 GETTABLE                         R11 R12 R9
       23 ORK                              R10 R11 K0 [0]
       24 JUMPIFNOTLT                      R2 R10 ; [+3]
       26 MOVE                             R2 R10
       27 MOVE                             R1 R9
       28 GETTABLEKS                       R13 R8 K6 ["Player"]
       30 GETTABLEKS                       R13 R13 K7 ["DisplayName"]
       32 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       34 MOVE                             R12 R3
       35 GETIMPORT                        R11 K10 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R4 2 ; [-25]
       40 GETIMPORT                        R4 K12 [table.freeze]
       42 DUPTABLE                         R5 K16 [{"status", "isCollaboratorStatus", "collaboratorDisplayNames"}]
       43 SETTABLEKS                       R1 R5 K13 ["status"]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K14 ["isCollaboratorStatus"]
       48 GETIMPORT                        R6 K12 [table.freeze]
       50 MOVE                             R7 R3
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R6 R5 K15 ["collaboratorDisplayNames"]
       54 CALL                             R4 1 -1
       55 RETURN                           R4 -1

PROTO_2:
        0 GETIMPORT                        R3 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 JUMPIFEQ                         R0 R3 ; [+6]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1
        9 JUMPIFNOT                        R2 ; [+8]
       10 LENGTH                           R3 R2
       11 LOADN                            R4 0
       12 JUMPIFNOTLT                      R4 R3 ; [+5]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 LOADNIL                          R3
       19 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R1 3 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 4
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getSyncingCollaborators"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 4
        8 GETUPVAL                         R2 5
        9 GETUPVAL                         R3 6
       10 GETUPVAL                         R4 0
       11 CALL                             R1 3 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R3 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R3
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R5
       10 GETTABLEKS                       R7 R2 K4 ["watchInstanceFileSyncStatus"]
       12 MOVE                             R8 R0
       13 NEWCLOSURE                       R9 P1
       14 CAPTURE                          REF R3
       15 CAPTURE                          REF R4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          REF R5
       19 CALL                             R7 2 3
       20 MOVE                             R3 R7
       21 MOVE                             R4 R8
       22 LOADNIL                          R10
       23 GETUPVAL                         R11 1
       24 CALL                             R11 0 1
       25 JUMPIFNOT                        R11 ; [+26]
       26 GETTABLEKS                       R11 R2 K5 ["getSyncingCollaborators"]
       28 JUMPIFEQKNIL                     R11 ; [+23]
       30 GETTABLEKS                       R11 R2 K6 ["watchSyncingCollaborators"]
       32 JUMPIFEQKNIL                     R11 ; [+19]
       34 GETTABLEKS                       R11 R2 K5 ["getSyncingCollaborators"]
       36 MOVE                             R12 R0
       37 CALL                             R11 1 1
       38 MOVE                             R5 R11
       39 GETTABLEKS                       R11 R2 K6 ["watchSyncingCollaborators"]
       41 MOVE                             R12 R0
       42 NEWCLOSURE                       R13 P2
       43 CAPTURE                          REF R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          REF R3
       49 CAPTURE                          REF R4
       50 CALL                             R11 2 1
       51 MOVE                             R10 R11
       52 MOVE                             R12 R5
       53 GETIMPORT                        R13 K3 [Enum.InstanceFileSyncStatus.NotSynced]
       55 JUMPIFEQ                         R7 R13 ; [+17]
       57 GETIMPORT                        R13 K3 [Enum.InstanceFileSyncStatus.NotSynced]
       59 JUMPIFNOTEQ                      R7 R13 ; [+3]
       61 LOADNIL                          R11
       62 JUMP                             ; [+21]
       63 GETIMPORT                        R13 K9 [table.freeze]
       65 DUPTABLE                         R14 K12 [{"status", "tooltip"}]
       66 SETTABLEKS                       R7 R14 K10 ["status"]
       68 SETTABLEKS                       R8 R14 K11 ["tooltip"]
       70 CALL                             R13 1 1
       71 MOVE                             R11 R13
       72 JUMP                             ; [+11]
       73 JUMPIFNOT                        R12 ; [+9]
       74 LENGTH                           R13 R12
       75 LOADN                            R14 0
       76 JUMPIFNOTLT                      R14 R13 ; [+6]
       78 GETUPVAL                         R13 2
       79 MOVE                             R14 R12
       80 CALL                             R13 1 1
       81 MOVE                             R11 R13
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 MOVE                             R12 R11
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          REF R10
       88 CLOSEUPVALS                      R3
       89 RETURN                           R12 2

PROTO_8:
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

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETTABLEKS                       R2 R1 K0 ["status"]
        4 GETIMPORT                        R3 K4 [Enum.InstanceFileSyncStatus.NotSynced]
        6 JUMPIFNOTEQ                      R2 R3 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       12 JUMPIFEQKNIL                     R2 ; [+8]
       14 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       16 JUMPIFEQKS                       R2 K6 [""] ; [+4]
       18 GETTABLEKS                       R2 R1 K5 ["tooltip"]
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 0
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+12]
       24 GETTABLEKS                       R2 R1 K0 ["status"]
       26 GETIMPORT                        R3 K8 [Enum.InstanceFileSyncStatus.AncestorErrored]
       28 JUMPIFNOTEQ                      R2 R3 ; [+7]
       30 LOADK                            R4 K9 ["LiveSync"]
       31 LOADK                            R5 K7 ["AncestorErrored"]
       32 NAMECALL                         R2 R0 K10 ["getText"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1
       36 GETTABLEKS                       R2 R1 K11 ["isCollaboratorStatus"]
       38 JUMPIFNOT                        R2 ; [+36]
       39 GETTABLEKS                       R2 R1 K12 ["collaboratorDisplayNames"]
       41 JUMPIFNOT                        R2 ; [+33]
       42 GETTABLEKS                       R3 R1 K12 ["collaboratorDisplayNames"]
       44 LENGTH                           R2 R3
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R3 R2 ; [+28]
       48 LOADK                            R4 K9 ["LiveSync"]
       49 LOADK                            R5 K13 ["CollaboratorSyncing"]
       50 DUPTABLE                         R6 K15 [{"collaboratorNames"}]
       51 GETIMPORT                        R7 K18 [table.concat]
       53 GETTABLEKS                       R8 R1 K12 ["collaboratorDisplayNames"]
       55 LOADK                            R9 K19 [", "]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K14 ["collaboratorNames"]
       59 NAMECALL                         R2 R0 K10 ["getText"]
       61 CALL                             R2 4 1
       62 LOADK                            R5 K9 ["LiveSync"]
       63 LOADK                            R6 K20 ["CollaboratorSyncingDetail"]
       64 NAMECALL                         R3 R0 K10 ["getText"]
       66 CALL                             R3 3 1
       67 LOADK                            R5 K21 ["<b>%*</b>\n%*"]
       68 MOVE                             R7 R2
       69 MOVE                             R8 R3
       70 NAMECALL                         R5 R5 K22 ["format"]
       72 CALL                             R5 3 1
       73 MOVE                             R4 R5
       74 RETURN                           R4 1
       75 LOADK                            R4 K9 ["LiveSync"]
       76 LOADK                            R5 K23 ["ScriptSyncing"]
       77 NAMECALL                         R2 R0 K10 ["getText"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["theme"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R2 R0 K0 ["isCollaboratorStatus"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K1 [0.6]
        5 RETURN                           R1 1
        6 LOADN                            R1 0
        7 RETURN                           R1 1

PROTO_13:
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
       80 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       82 DUPCLOSURE                       R10 K23 [PROTO_12]
       83 NAMECALL                         R8 R8 K21 ["map"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K24 ["ImageTransparency"]
       88 CALL                             R5 2 -1
       89 RETURN                           R5 -1

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 LOADNIL                          R1
        3 DUPCLOSURE                       R2 K4 [PROTO_14]
        4 RETURN                           R0 3

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"watchInstanceFileSyncStatus", "destroy"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_15]
        2 SETTABLEKS                       R1 R0 K0 ["watchInstanceFileSyncStatus"]
        4 DUPCLOSURE                       R1 K4 [PROTO_16]
        5 SETTABLEKS                       R1 R0 K1 ["destroy"]
        7 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
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
       11 DUPCLOSURE                       R3 K1 [PROTO_19]
       12 RETURN                           R2 2

PROTO_21:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_22:
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
       48 GETTABLEKS                       R7 R7 K17 ["getEngineFeatureReplicateTCSyncStatus"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["getFFlagLuaExplorerAncestorErroredIcon"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K20 ["useTooltipActions"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R4 K21 ["createElement"]
       67 NEWTABLE                         R10 8 0
       69 GETIMPORT                        R11 K25 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
       71 LOADN                            R12 4
       72 SETTABLE                         R12 R10 R11
       73 GETIMPORT                        R11 K27 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       75 LOADN                            R12 3
       76 SETTABLE                         R12 R10 R11
       77 GETIMPORT                        R11 K29 [Enum.InstanceFileSyncStatus.Errored]
       79 LOADN                            R12 2
       80 SETTABLE                         R12 R10 R11
       81 GETIMPORT                        R11 K31 [Enum.InstanceFileSyncStatus.AncestorErrored]
       83 LOADN                            R12 1
       84 SETTABLE                         R12 R10 R11
       85 GETIMPORT                        R11 K33 [Enum.InstanceFileSyncStatus.NotSynced]
       87 LOADN                            R12 0
       88 SETTABLE                         R12 R10 R11
       89 NEWTABLE                         R11 4 0
       91 GETIMPORT                        R12 K29 [Enum.InstanceFileSyncStatus.Errored]
       93 GETIMPORT                        R13 K25 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
       95 SETTABLE                         R13 R11 R12
       96 GETIMPORT                        R12 K27 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       98 GETIMPORT                        R13 K33 [Enum.InstanceFileSyncStatus.NotSynced]
      100 SETTABLE                         R13 R11 R12
      101 GETIMPORT                        R12 K31 [Enum.InstanceFileSyncStatus.AncestorErrored]
      103 GETIMPORT                        R13 K33 [Enum.InstanceFileSyncStatus.NotSynced]
      105 SETTABLE                         R13 R11 R12
      106 DUPCLOSURE                       R12 K34 [PROTO_0]
      107 DUPCLOSURE                       R13 K35 [PROTO_1]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R10
      110 DUPCLOSURE                       R14 K36 [PROTO_2]
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R13
      113 DUPCLOSURE                       R15 K37 [PROTO_7]
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R13
      117 DUPCLOSURE                       R16 K38 [PROTO_8]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R7
      120 DUPCLOSURE                       R17 K39 [PROTO_9]
      121 CAPTURE                          VAL R7
      122 DUPCLOSURE                       R18 K40 [PROTO_13]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R16
      129 DUPCLOSURE                       R19 K41 [PROTO_17]
      130 DUPCLOSURE                       R20 K42 [PROTO_20]
      131 CAPTURE                          VAL R19
      132 DUPTABLE                         R21 K50 [{"key", "icon", "init", "watch", "validateArgs", "render", "permanent"}]
      133 LOADK                            R22 K51 ["instanceFileSyncStatus"]
      134 SETTABLEKS                       R22 R21 K43 ["key"]
      136 LOADK                            R22 K52 [""]
      137 SETTABLEKS                       R22 R21 K44 ["icon"]
      139 SETTABLEKS                       R20 R21 K45 ["init"]
      141 SETTABLEKS                       R15 R21 K46 ["watch"]
      143 DUPCLOSURE                       R22 K53 [PROTO_21]
      144 SETTABLEKS                       R22 R21 K47 ["validateArgs"]
      146 DUPCLOSURE                       R22 K54 [PROTO_22]
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R18
      149 SETTABLEKS                       R22 R21 K48 ["render"]
      151 LOADB                            R22 1
      152 SETTABLEKS                       R22 R21 K49 ["permanent"]
      154 RETURN                           R21 1
