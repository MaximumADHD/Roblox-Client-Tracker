PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reimportInstanceDebounced"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["wasAutoReimport"] = True}]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["normalize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+18]
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETIMPORT                        R10 K2 [game]
       14 NAMECALL                         R8 R6 K3 ["IsDescendantOf"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+6]
       18 GETIMPORT                        R8 K6 [task.defer]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R6
       23 CALL                             R8 1 0
       24 FORGLOOP                         R3 2 ; [-13]
       26 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 DUPTABLE                         R1 K3 [{[1] = False, ["IsWatched"] = False}]
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["getConfigFromInstance"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 2
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K5 ["filepath"]
       11 JUMPIF                           R3 ; [+2]
       12 DUPTABLE                         R3 K3 [{[1] = False, ["IsWatched"] = False}]
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K6 ["normalize"]
       17 GETTABLEKS                       R4 R2 K5 ["filepath"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R4 R5 R3
       22 JUMPIF                           R4 ; [+4]
       23 DUPTABLE                         R5 K8 [{[1] = True, ["IsWatched"] = False, ["filepath"]}]
       24 SETTABLEKS                       R3 R5 K5 ["filepath"]
       26 RETURN                           R5 1
       27 DUPTABLE                         R5 K9 [{[1] = True, ["IsWatched"], ["filepath"]}]
       28 GETTABLE                         R7 R4 R0
       29 ORK                              R6 R7 K1 [False]
       30 SETTABLEKS                       R6 R5 K2 ["IsWatched"]
       32 SETTABLEKS                       R3 R5 K5 ["filepath"]
       34 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["REIMPORT"]
        4 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R4 K2 ["WATCH_STATUS_CHANGED"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["updateAction"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["REIMPORT"]
       13 GETTABLEKS                       R4 R4 K3 ["ACTION_EVENTS"]
       15 GETTABLEKS                       R4 R4 K4 ["WATCH_INSTANCE_FILE"]
       17 DUPTABLE                         R5 K7 [{"Checked", "Enabled"}]
       18 GETTABLEKS                       R6 R2 K8 ["IsWatched"]
       20 SETTABLEKS                       R6 R5 K5 ["Checked"]
       22 GETTABLEKS                       R6 R2 K9 ["Watchable"]
       24 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R1
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K0 ["StartSingleFileWatch"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R4 0
       13 GETTABLE                         R3 R4 R1
       14 GETTABLE                         R2 R3 R0
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETIMPORT                        R2 K2 [error]
       18 LOADK                            R4 K3 ["Reimport: cannot start watching file %* for instance %* which is already being watched"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R0
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 3 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 0
       27 GETTABLE                         R2 R3 R1
       28 LOADB                            R3 1
       29 SETTABLE                         R3 R2 R0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConfigFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETTABLEKS                       R4 R2 K1 ["filepath"]
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["normalize"]
       12 GETTABLEKS                       R4 R2 K1 ["filepath"]
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIF                           R3 ; [+9]
       18 GETIMPORT                        R4 K4 [error]
       20 LOADK                            R6 K5 ["Reimport: cannot start watching instance %* because it does not have a valid config"]
       21 MOVE                             R8 R0
       22 NAMECALL                         R6 R6 K6 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 LOADK                            R6 K7 ["SurfaceAppearance"]
       32 NAMECALL                         R4 R0 K8 ["IsA"]
       34 CALL                             R4 2 1
       35 JUMPIF                           R4 ; [+5]
       36 LOADK                            R6 K9 ["Decal"]
       37 NAMECALL                         R4 R0 K8 ["IsA"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+28]
       41 GETUPVAL                         R4 3
       42 MOVE                             R6 R3
       43 NAMECALL                         R4 R4 K10 ["GetFilesInDirAsync"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K11 ["findMaps"]
       49 MOVE                             R6 R3
       50 MOVE                             R7 R4
       51 CALL                             R5 2 1
       52 MOVE                             R6 R5
       53 LOADNIL                          R7
       54 LOADNIL                          R8
       55 FORGPREP                         R6
       56 JUMPIFEQ                         R10 R3 ; [+10]
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K2 ["normalize"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 2
       64 MOVE                             R13 R0
       65 MOVE                             R14 R11
       66 CALL                             R12 2 0
       67 FORGLOOP                         R6 2 ; [-12]
       69 GETUPVAL                         R4 5
       70 CALL                             R4 0 0
       71 GETUPVAL                         R4 6
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+14]
       74 DUPTABLE                         R4 K14 [{["isWatched"] = True}]
       75 GETUPVAL                         R5 7
       76 GETUPVAL                         R7 8
       77 GETTABLEKS                       R7 R7 K15 ["REIMPORT"]
       79 GETTABLEKS                       R7 R7 K16 ["CPC_EVENTS"]
       81 GETTABLEKS                       R7 R7 K17 ["WATCH_STATUS_CHANGED"]
       83 MOVE                             R8 R0
       84 MOVE                             R9 R4
       85 NAMECALL                         R5 R5 K18 ["Fire"]
       87 CALL                             R5 4 0
       88 GETUPVAL                         R4 9
       89 GETTABLEKS                       R4 R4 K19 ["reimportInstanceDebounced"]
       91 MOVE                             R5 R0
       92 DUPTABLE                         R6 K21 [{["wasAutoReimport"] = True}]
       93 CALL                             R4 2 0
       94 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R0
        4 GETIMPORT                        R2 K1 [next]
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R4 R1
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R1
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["StopSingleFileWatch"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+9]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["Reimport: cannot stop watching instance %* which is not being watched"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 0
       14 GETTABLE                         R2 R3 R1
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 GETIMPORT                        R2 K5 [next]
       19 GETUPVAL                         R4 0
       20 GETTABLE                         R3 R4 R1
       21 CALL                             R2 1 1
       22 JUMPIF                           R2 ; [+8]
       23 GETUPVAL                         R2 0
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R2 R1
       26 GETUPVAL                         R2 1
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K6 ["StopSingleFileWatch"]
       30 CALL                             R2 2 0
       31 LOADK                            R4 K7 ["SurfaceAppearance"]
       32 NAMECALL                         R2 R0 K8 ["IsA"]
       34 CALL                             R2 2 1
       35 JUMPIF                           R2 ; [+5]
       36 LOADK                            R4 K9 ["Decal"]
       37 NAMECALL                         R2 R0 K8 ["IsA"]
       39 CALL                             R2 2 1
       40 JUMPIFNOT                        R2 ; [+42]
       41 GETUPVAL                         R2 1
       42 MOVE                             R4 R1
       43 NAMECALL                         R2 R2 K10 ["GetFilesInDirAsync"]
       45 CALL                             R2 2 1
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K11 ["findMaps"]
       49 MOVE                             R4 R1
       50 MOVE                             R5 R2
       51 CALL                             R3 2 1
       52 MOVE                             R4 R3
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 FORGPREP                         R4
       56 JUMPIFEQ                         R8 R1 ; [+24]
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K12 ["normalize"]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 1
       63 GETUPVAL                         R11 0
       64 GETTABLE                         R10 R11 R9
       65 LOADNIL                          R11
       66 SETTABLE                         R11 R10 R0
       67 GETIMPORT                        R10 K5 [next]
       69 GETUPVAL                         R12 0
       70 GETTABLE                         R11 R12 R9
       71 CALL                             R10 1 1
       72 JUMPIF                           R10 ; [+8]
       73 GETUPVAL                         R10 0
       74 LOADNIL                          R11
       75 SETTABLE                         R11 R10 R9
       76 GETUPVAL                         R10 1
       77 MOVE                             R12 R9
       78 NAMECALL                         R10 R10 K6 ["StopSingleFileWatch"]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R4 2 ; [-26]
       83 GETUPVAL                         R2 4
       84 CALL                             R2 0 1
       85 JUMPIFNOT                        R2 ; [+14]
       86 DUPTABLE                         R2 K15 [{["isWatched"] = False}]
       87 GETUPVAL                         R3 5
       88 GETUPVAL                         R5 6
       89 GETTABLEKS                       R5 R5 K16 ["REIMPORT"]
       91 GETTABLEKS                       R5 R5 K17 ["CPC_EVENTS"]
       93 GETTABLEKS                       R5 R5 K18 ["WATCH_STATUS_CHANGED"]
       95 MOVE                             R6 R0
       96 MOVE                             R7 R2
       97 NAMECALL                         R3 R3 K19 ["Fire"]
       99 CALL                             R3 4 0
      100 GETUPVAL                         R2 7
      101 CALL                             R2 0 0
      102 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETTABLEKS                       R4 R1 K0 ["filepath"]
        3 JUMPIFNOT                        R4 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["normalize"]
        7 GETTABLEKS                       R4 R1 K0 ["filepath"]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R2 ; [+10]
       13 GETTABLEKS                       R5 R2 K0 ["filepath"]
       15 JUMPIFNOT                        R5 ; [+7]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["normalize"]
       19 GETTABLEKS                       R5 R2 K0 ["filepath"]
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 JUMPIFNOT                        R3 ; [+3]
       25 GETUPVAL                         R6 1
       26 GETTABLE                         R5 R6 R3
       27 JUMPIF                           R5 ; [+3]
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R8 1
       32 GETTABLE                         R5 R8 R3
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 FORGPREP                         R5
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K2 ["getConfigIdFromInstance"]
       39 MOVE                             R11 R8
       40 CALL                             R10 1 1
       41 JUMPIFNOTEQ                      R10 R0 ; [+20]
       43 JUMPIFNOTEQ                      R3 R4 ; [+2]
       45 LOADB                            R11 0 +1
       46 LOADB                            R11 1
       47 JUMPIFNOT                        R3 ; [+7]
       48 JUMPIFEQKS                       R3 K3 [""] ; [+6]
       50 JUMPIFNOT                        R11 ; [+4]
       51 GETUPVAL                         R12 4
       52 MOVE                             R13 R8
       53 MOVE                             R14 R3
       54 CALL                             R12 2 0
       55 JUMPIFNOT                        R4 ; [+6]
       56 JUMPIFEQKS                       R4 K3 [""] ; [+5]
       58 JUMPIFNOT                        R11 ; [+3]
       59 GETUPVAL                         R12 5
       60 MOVE                             R13 R8
       61 CALL                             R12 1 0
       62 FORGLOOP                         R5 2 ; [-27]
       64 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETTABLEKS                       R3 R1 K0 ["filepath"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["normalize"]
        7 GETTABLEKS                       R3 R1 K0 ["filepath"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R3 R4 R2
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETUPVAL                         R5 1
       17 GETTABLE                         R4 R5 R2
       18 GETTABLE                         R3 R4 R0
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R0
       22 MOVE                             R5 R2
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R3
        6 NAMECALL                         R5 R5 K0 ["StopSingleFileWatch"]
        8 CALL                             R5 2 0
        9 GETUPVAL                         R5 0
       10 LOADNIL                          R6
       11 SETTABLE                         R6 R5 R3
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.PlayClient]
        5 JUMPIFEQ                         R0 R1 ; [+5]
        7 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayServer]
        9 JUMPIFNOTEQ                      R0 R1 ; [+14]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K7 ["updateAction"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K8 ["REIMPORT"]
       17 GETTABLEKS                       R2 R2 K9 ["ACTION_EVENTS"]
       19 GETTABLEKS                       R2 R2 K10 ["WATCH_INSTANCE_FILE"]
       21 DUPTABLE                         R3 K14 [{["Checked"] = False, ["Enabled"] = False}]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 3
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["MultipleDocumentInterfaceInstance"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Reimport Error: missing plugin context"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K0 ["MultipleDocumentInterfaceInstance"]
       10 GETTABLEKS                       R2 R2 K4 ["FocusedDataModelSession"]
       12 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       14 LOADK                            R3 K1 ["Reimport Error: missing plugin context"]
       15 GETIMPORT                        R1 K3 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K0 ["MultipleDocumentInterfaceInstance"]
       20 GETTABLEKS                       R1 R1 K4 ["FocusedDataModelSession"]
       22 GETTABLEKS                       R2 R1 K5 ["CurrentDataModelTypeChanged"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 NAMECALL                         R2 R2 K6 ["Connect"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SingleFileChanged"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 0
        7 NEWTABLE                         R1 0 0
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
       13 GETUPVAL                         R3 4
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K3 ["registerConfigUpdateCallback"]
       20 GETUPVAL                         R2 6
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 5
       23 GETTABLEKS                       R1 R1 K4 ["registerConfigRemovedCallback"]
       25 GETUPVAL                         R2 7
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 4
       28 CALL                             R1 0 0
       29 GETTABLEKS                       R2 R0 K5 ["MultipleDocumentInterfaceInstance"]
       31 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       33 LOADK                            R3 K6 ["Reimport Error: missing plugin context"]
       34 GETIMPORT                        R1 K8 [assert]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R2 R0 K5 ["MultipleDocumentInterfaceInstance"]
       39 GETTABLEKS                       R2 R2 K9 ["FocusedDataModelSession"]
       41 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       43 LOADK                            R3 K6 ["Reimport Error: missing plugin context"]
       44 GETIMPORT                        R1 K8 [assert]
       46 CALL                             R1 2 0
       47 GETTABLEKS                       R1 R0 K5 ["MultipleDocumentInterfaceInstance"]
       49 GETTABLEKS                       R1 R1 K9 ["FocusedDataModelSession"]
       51 GETTABLEKS                       R2 R1 K10 ["CurrentDataModelTypeChanged"]
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          UPVAL U4
       58 NAMECALL                         R2 R2 K1 ["Connect"]
       60 CALL                             R2 2 0
       61 GETTABLEKS                       R1 R0 K11 ["Unloading"]
       63 GETUPVAL                         R3 10
       64 NAMECALL                         R1 R1 K1 ["Connect"]
       66 CALL                             R1 2 0
       67 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["IsWatched"]
        5 RETURN                           R1 1

PROTO_16:
        0 DUPTABLE                         R1 K1 [{"isWatched"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["isWatching"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["isWatched"]
        8 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETTABLEKS                       R4 R1 K0 ["filepath"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Reimport"]
       15 GETTABLEKS                       R2 R2 K8 ["MaterialUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Lib"]
       22 GETTABLEKS                       R3 R3 K10 ["External"]
       24 GETTABLEKS                       R3 R3 K11 ["AssetImportService"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K9 ["Lib"]
       31 GETTABLEKS                       R4 R4 K10 ["External"]
       33 GETTABLEKS                       R4 R4 K12 ["SelectionService"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K9 ["Lib"]
       40 GETTABLEKS                       R5 R5 K7 ["Reimport"]
       42 GETTABLEKS                       R5 R5 K13 ["SelectionHelper"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K9 ["Lib"]
       49 GETTABLEKS                       R6 R6 K7 ["Reimport"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K14 ["Packages"]
       56 GETTABLEKS                       R7 R7 K15 ["SharedPluginConstants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Lib"]
       63 GETTABLEKS                       R8 R8 K16 ["Actions"]
       65 GETTABLEKS                       R8 R8 K17 ["ActionUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Lib"]
       72 GETTABLEKS                       R9 R9 K7 ["Reimport"]
       74 GETTABLEKS                       R9 R9 K18 ["ReimportConfigs"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K9 ["Lib"]
       81 GETTABLEKS                       R10 R10 K7 ["Reimport"]
       83 GETTABLEKS                       R10 R10 K19 ["Path"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K9 ["Lib"]
       90 GETTABLEKS                       R11 R11 K10 ["External"]
       92 GETTABLEKS                       R11 R11 K20 ["CrossPluginCommunication"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K9 ["Lib"]
       99 GETTABLEKS                       R12 R12 K7 ["Reimport"]
      101 GETTABLEKS                       R12 R12 K21 ["Types"]
      103 CALL                             R11 1 1
      104 GETTABLEKS                       R12 R10 K22 ["new"]
      106 GETTABLEKS                       R13 R6 K23 ["REIMPORT"]
      108 GETTABLEKS                       R13 R13 K24 ["CPC_ID"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R6 K23 ["REIMPORT"]
      113 GETTABLEKS                       R13 R13 K25 ["getFFlagReimportFileWatchIcon"]
      115 NEWTABLE                         R14 0 0
      117 NEWTABLE                         R15 4 0
      119 NEWCLOSURE                       R16 P0
      120 CAPTURE                          VAL R9
      121 CAPTURE                          REF R14
      122 CAPTURE                          VAL R5
      123 NEWCLOSURE                       R17 P1
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R9
      126 CAPTURE                          REF R14
      127 DUPCLOSURE                       R18 K26 [PROTO_3]
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R6
      130 DUPCLOSURE                       R19 K27 [PROTO_4]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R6
      135 NEWCLOSURE                       R20 P4
      136 CAPTURE                          REF R14
      137 CAPTURE                          VAL R2
      138 DUPCLOSURE                       R21 K28 [PROTO_6]
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R5
      149 NEWCLOSURE                       R22 P6
      150 CAPTURE                          REF R14
      151 CAPTURE                          VAL R2
      152 NEWCLOSURE                       R23 P7
      153 CAPTURE                          REF R14
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R19
      161 NEWCLOSURE                       R24 P8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          REF R14
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R21
      168 NEWCLOSURE                       R25 P9
      169 CAPTURE                          VAL R9
      170 CAPTURE                          REF R14
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R19
      173 NEWCLOSURE                       R26 P10
      174 CAPTURE                          REF R14
      175 CAPTURE                          VAL R2
      176 DUPCLOSURE                       R27 K29 [PROTO_13]
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R19
      180 NEWCLOSURE                       R28 P12
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R16
      183 CAPTURE                          REF R14
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R26
      192 SETTABLEKS                       R28 R15 K30 ["init"]
      194 DUPCLOSURE                       R28 K31 [PROTO_15]
      195 CAPTURE                          VAL R17
      196 SETTABLEKS                       R28 R15 K32 ["isWatching"]
      198 GETTABLEKS                       R30 R6 K23 ["REIMPORT"]
      200 GETTABLEKS                       R30 R30 K33 ["CPC_CALLBACKS"]
      202 GETTABLEKS                       R30 R30 K34 ["GET_WATCH_STATUS"]
      204 DUPCLOSURE                       R31 K35 [PROTO_16]
      205 CAPTURE                          VAL R15
      206 NAMECALL                         R28 R12 K36 ["OnInvoke"]
      208 CALL                             R28 3 0
      209 DUPCLOSURE                       R28 K37 [PROTO_17]
      210 CAPTURE                          VAL R21
      211 SETTABLEKS                       R28 R15 K38 ["start"]
      213 DUPCLOSURE                       R28 K39 [PROTO_18]
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R23
      216 SETTABLEKS                       R28 R15 K40 ["stop"]
      218 CLOSEUPVALS                      R14
      219 RETURN                           R15 1
