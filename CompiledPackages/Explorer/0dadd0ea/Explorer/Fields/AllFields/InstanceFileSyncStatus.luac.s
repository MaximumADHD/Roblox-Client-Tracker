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
        7 LOADN                            R2 -1
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
       42 DUPTABLE                         R5 K17 [{["status"], ["isCollaboratorStatus"] = True, ["collaboratorDisplayNames"]}]
       43 SETTABLEKS                       R1 R5 K13 ["status"]
       45 GETIMPORT                        R6 K12 [table.freeze]
       47 MOVE                             R7 R3
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K16 ["collaboratorDisplayNames"]
       51 CALL                             R4 1 -1
       52 RETURN                           R4 -1

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
        2 LOADK                            R3 K0 [""]
        3 RETURN                           R3 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 LOADB                            R3 0
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETTABLEKS                       R4 R2 K1 ["kind"]
       12 JUMPIFEQKS                       R4 K2 ["Selected"] ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETTABLEKS                       R4 R0 K3 ["status"]
       18 GETIMPORT                        R5 K7 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
       20 JUMPIFNOTEQ                      R4 R5 ; [+8]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["instanceFileSyncStatus"]
       25 LOADK                            R5 K9 ["Syncing"]
       26 MOVE                             R6 R1
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1
       29 GETTABLEKS                       R4 R0 K3 ["status"]
       31 GETIMPORT                        R5 K11 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       33 JUMPIFNOTEQ                      R4 R5 ; [+8]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K8 ["instanceFileSyncStatus"]
       38 LOADK                            R5 K12 ["Descendant"]
       39 MOVE                             R6 R1
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1
       42 GETTABLEKS                       R4 R0 K3 ["status"]
       44 GETIMPORT                        R5 K14 [Enum.InstanceFileSyncStatus.Errored]
       46 JUMPIFNOTEQ                      R4 R5 ; [+14]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K8 ["instanceFileSyncStatus"]
       51 GETUPVAL                         R6 0
       52 CALL                             R6 0 1
       53 JUMPIFNOT                        R6 ; [+3]
       54 JUMPIFNOT                        R3 ; [+2]
       55 LOADK                            R5 K15 ["Errored_Highlighted"]
       56 JUMP                             ; [+1]
       57 LOADK                            R5 K13 ["Errored"]
       58 MOVE                             R6 R1
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1
       61 GETUPVAL                         R4 2
       62 CALL                             R4 0 1
       63 JUMPIFNOT                        R4 ; [+13]
       64 GETTABLEKS                       R4 R0 K3 ["status"]
       66 GETIMPORT                        R5 K17 [Enum.InstanceFileSyncStatus.AncestorErrored]
       68 JUMPIFNOTEQ                      R4 R5 ; [+8]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K8 ["instanceFileSyncStatus"]
       73 LOADK                            R5 K16 ["AncestorErrored"]
       74 MOVE                             R6 R1
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1
       77 LOADK                            R4 K0 [""]
       78 RETURN                           R4 1

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
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLEKS                       R4 R0 K2 ["selectionState"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["theme"]
        5 LOADNIL                          R4
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R2 R0 K0 ["isCollaboratorStatus"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K1 [0.6]
        5 RETURN                           R1 1
        6 LOADN                            R1 0
        7 RETURN                           R1 1

PROTO_14:
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
       70 GETUPVAL                         R9 5
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+20]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K21 ["joinBindings"]
       76 DUPTABLE                         R9 K24 [{"value", "selectionState"}]
       77 GETTABLEKS                       R10 R0 K6 ["valueBinding"]
       79 SETTABLEKS                       R10 R9 K22 ["value"]
       81 GETTABLEKS                       R10 R0 K25 ["selectionStateBinding"]
       83 SETTABLEKS                       R10 R9 K23 ["selectionState"]
       85 CALL                             R8 1 1
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R2
       89 NAMECALL                         R8 R8 K26 ["map"]
       91 CALL                             R8 2 1
       92 JUMP                             ; [+8]
       93 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R2
       98 NAMECALL                         R8 R8 K26 ["map"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K27 ["Image"]
      103 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
      105 DUPCLOSURE                       R10 K28 [PROTO_13]
      106 NAMECALL                         R8 R8 K26 ["map"]
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R7 K29 ["ImageTransparency"]
      111 CALL                             R5 2 -1
      112 RETURN                           R5 -1

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K3 [Enum.InstanceFileSyncStatus.NotSynced]
        2 LOADNIL                          R1
        3 DUPCLOSURE                       R2 K4 [PROTO_15]
        4 RETURN                           R0 3

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R0 K2 [{"watchInstanceFileSyncStatus", "destroy"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_16]
        2 SETTABLEKS                       R1 R0 K0 ["watchInstanceFileSyncStatus"]
        4 DUPCLOSURE                       R1 K4 [PROTO_17]
        5 SETTABLEKS                       R1 R0 K1 ["destroy"]
        7 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
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
       11 DUPCLOSURE                       R3 K1 [PROTO_20]
       12 RETURN                           R2 2

PROTO_22:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K3 [{"valueBinding", "fireAction", "selectionStateBinding"}]
        3 SETTABLEKS                       R0 R5 K0 ["valueBinding"]
        5 SETTABLEKS                       R1 R5 K1 ["fireAction"]
        7 GETUPVAL                         R7 2
        8 CALL                             R7 0 1
        9 JUMPIFNOT                        R7 ; [+2]
       10 MOVE                             R6 R2
       11 JUMP                             ; [+1]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K2 ["selectionStateBinding"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

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
       48 GETTABLEKS                       R7 R7 K17 ["getEngineFeatureExplorerUseHighlightedIcons"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["getEngineFeatureReplicateTCSyncStatus"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Flags"]
       62 GETTABLEKS                       R9 R9 K19 ["getFFlagLuaExplorerAncestorErroredIcon"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K21 ["useTooltipActions"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R4 K22 ["createElement"]
       74 NEWTABLE                         R11 8 0
       76 GETIMPORT                        R12 K26 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
       78 LOADN                            R13 4
       79 SETTABLE                         R13 R11 R12
       80 GETIMPORT                        R12 K28 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
       82 LOADN                            R13 3
       83 SETTABLE                         R13 R11 R12
       84 GETIMPORT                        R12 K30 [Enum.InstanceFileSyncStatus.Errored]
       86 LOADN                            R13 2
       87 SETTABLE                         R13 R11 R12
       88 GETIMPORT                        R12 K32 [Enum.InstanceFileSyncStatus.AncestorErrored]
       90 LOADN                            R13 1
       91 SETTABLE                         R13 R11 R12
       92 GETIMPORT                        R12 K34 [Enum.InstanceFileSyncStatus.NotSynced]
       94 LOADN                            R13 0
       95 SETTABLE                         R13 R11 R12
       96 NEWTABLE                         R12 4 0
       98 GETIMPORT                        R13 K30 [Enum.InstanceFileSyncStatus.Errored]
      100 GETIMPORT                        R14 K26 [Enum.InstanceFileSyncStatus.SyncedAsRoot]
      102 SETTABLE                         R14 R12 R13
      103 GETIMPORT                        R13 K28 [Enum.InstanceFileSyncStatus.SyncedAsDescendant]
      105 GETIMPORT                        R14 K34 [Enum.InstanceFileSyncStatus.NotSynced]
      107 SETTABLE                         R14 R12 R13
      108 GETIMPORT                        R13 K32 [Enum.InstanceFileSyncStatus.AncestorErrored]
      110 GETIMPORT                        R14 K34 [Enum.InstanceFileSyncStatus.NotSynced]
      112 SETTABLE                         R14 R12 R13
      113 DUPCLOSURE                       R13 K35 [PROTO_0]
      114 DUPCLOSURE                       R14 K36 [PROTO_1]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R11
      117 DUPCLOSURE                       R15 K37 [PROTO_2]
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 DUPCLOSURE                       R16 K38 [PROTO_7]
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R14
      124 DUPCLOSURE                       R17 K39 [PROTO_8]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R8
      128 DUPCLOSURE                       R18 K40 [PROTO_9]
      129 CAPTURE                          VAL R8
      130 DUPCLOSURE                       R19 K41 [PROTO_14]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R17
      138 DUPCLOSURE                       R20 K42 [PROTO_18]
      139 DUPCLOSURE                       R21 K43 [PROTO_21]
      140 CAPTURE                          VAL R20
      141 DUPTABLE                         R22 K54 [{["key"] = "instanceFileSyncStatus", ["icon"] = "", ["init"], ["watch"], ["validateArgs"], ["render"], ["permanent"] = True}]
      142 SETTABLEKS                       R21 R22 K48 ["init"]
      144 SETTABLEKS                       R16 R22 K49 ["watch"]
      146 DUPCLOSURE                       R23 K55 [PROTO_22]
      147 SETTABLEKS                       R23 R22 K50 ["validateArgs"]
      149 DUPCLOSURE                       R23 K56 [PROTO_23]
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R6
      153 SETTABLEKS                       R23 R22 K51 ["render"]
      155 RETURN                           R22 1
