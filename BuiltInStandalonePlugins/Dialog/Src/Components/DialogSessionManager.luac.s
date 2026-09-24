PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["setType"]
        2 GETTABLEKS                       R3 R0 K1 ["Type"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R1 K2 ["setTitle"]
        7 GETTABLEKS                       R3 R0 K3 ["Title"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K4 ["setDescription"]
       12 GETTABLEKS                       R3 R0 K5 ["Description"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R1 K6 ["setPrimaryButton"]
       17 GETTABLEKS                       R3 R0 K7 ["PrimaryButton"]
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R1 K8 ["setSecondaryButton"]
       22 GETTABLEKS                       R3 R0 K9 ["SecondaryButton"]
       24 CALL                             R2 1 0
       25 GETTABLEKS                       R2 R1 K10 ["setTertiaryButton"]
       27 GETTABLEKS                       R3 R0 K11 ["TertiaryButton"]
       29 CALL                             R2 1 0
       30 GETTABLEKS                       R2 R1 K12 ["setEscapeButtonUri"]
       32 GETTABLEKS                       R3 R0 K13 ["EscapeButtonUri"]
       34 CALL                             R2 1 0
       35 GETTABLEKS                       R2 R1 K14 ["setImageUri"]
       37 GETTABLEKS                       R4 R0 K15 ["Image"]
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETTABLEKS                       R3 R0 K15 ["Image"]
       42 GETTABLEKS                       R3 R3 K16 ["Uri"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 CALL                             R2 1 0
       47 GETTABLEKS                       R2 R1 K17 ["setShowIndeterminateProgressIndicator"]
       49 GETTABLEKS                       R4 R0 K19 ["ShowIndeterminateProgressIndicator"]
       51 ORK                              R3 R4 K18 [False]
       52 CALL                             R2 1 0
       53 GETUPVAL                         R2 0
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+9]
       56 GETTABLEKS                       R2 R1 K20 ["setSuppressible"]
       58 GETTABLEKS                       R4 R0 K21 ["Suppression"]
       60 JUMPIFNOTEQKNIL                  R4 ; [+2]
       62 LOADB                            R3 0 +1
       63 LOADB                            R3 1
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R0 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K3 [table.clone]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R1
       14 GETIMPORT                        R3 K5 [table.freeze]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R0 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K3 [table.clone]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R1
       14 GETIMPORT                        R3 K5 [table.freeze]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"SelectedButtonUri", "WasSuppressionRequested"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 GETUPVAL                         R4 3
        7 SETTABLEKS                       R4 R3 K1 ["WasSuppressionRequested"]
        9 NAMECALL                         R0 R0 K3 ["UserInteractedAsync"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K4 ["CloseOnFirstInteraction"]
       15 JUMPIFNOT                        R0 ; [+3]
       16 GETUPVAL                         R0 5
       17 GETUPVAL                         R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{[1], ["WasSuppressionRequested"] = }]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 NAMECALL                         R0 R0 K4 ["UserInteractedAsync"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K5 ["CloseOnFirstInteraction"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 GETUPVAL                         R5 1
        3 MOVE                             R6 R2
        4 MOVE                             R7 R4
        5 CALL                             R5 2 0
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K0 ["toString"]
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETIMPORT                        R6 K3 [table.freeze]
       13 DUPTABLE                         R7 K7 [{"uri", "signals", "onUserInteracted"}]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K8 ["wrap"]
       17 MOVE                             R9 R1
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K4 ["uri"]
       21 SETTABLEKS                       R4 R7 K5 ["signals"]
       23 GETUPVAL                         R9 3
       24 CALL                             R9 0 1
       25 JUMPIFNOT                        R9 ; [+6]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 JUMP                             ; [+5]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U5
       37 SETTABLEKS                       R8 R7 K6 ["onUserInteracted"]
       39 CALL                             R6 1 1
       40 SETTABLE                         R6 R0 R5
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toString"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R5 R3
        7 JUMPIF                           R4 ; [+15]
        8 GETIMPORT                        R5 K2 [warn]
       10 LOADK                            R6 K3 ["[Dialog] Could not locate custom dialog with URI: %*"]
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R6 K4 ["format"]
       14 CALL                             R6 2 1
       15 CALL                             R5 1 0
       16 GETIMPORT                        R5 K7 [task.spawn]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 CALL                             R5 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R5 K10 [table.freeze]
       25 DUPTABLE                         R6 K15 [{"component", "uri", "input", "onResolved"}]
       26 SETTABLEKS                       R4 R6 K11 ["component"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K16 ["wrap"]
       31 MOVE                             R8 R1
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K12 ["uri"]
       35 SETTABLEKS                       R2 R6 K13 ["input"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U3
       41 SETTABLEKS                       R7 R6 K14 ["onResolved"]
       43 CALL                             R5 1 1
       44 SETTABLE                         R5 R0 R3
       45 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 GETUPVAL                         R6 3
        9 CALL                             R2 4 0
       10 GETIMPORT                        R2 K4 [table.freeze]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 CALL                             R2 3 0
        9 GETIMPORT                        R2 K4 [table.freeze]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R0 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R5 R2 K1 ["signals"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["VisibleDialogs"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K4 ["toString"]
       13 GETTABLEKS                       R9 R6 K5 ["Uri"]
       15 CALL                             R8 1 1
       16 GETTABLE                         R7 R1 R8
       17 JUMPIF                           R7 ; [+9]
       18 GETUPVAL                         R7 2
       19 MOVE                             R8 R1
       20 GETTABLEKS                       R9 R6 K5 ["Uri"]
       22 GETTABLEKS                       R10 R6 K6 ["Properties"]
       24 GETTABLEKS                       R11 R6 K7 ["InternalProperties"]
       26 CALL                             R7 4 0
       27 FORGLOOP                         R2 2 ; [-18]
       29 GETIMPORT                        R2 K9 [table.freeze]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1

PROTO_21:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["VisibleCustomDialogs"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K4 ["toString"]
       13 GETTABLEKS                       R9 R6 K5 ["Uri"]
       15 CALL                             R8 1 1
       16 GETTABLE                         R7 R1 R8
       17 JUMPIF                           R7 ; [+7]
       18 GETUPVAL                         R7 2
       19 MOVE                             R8 R1
       20 GETTABLEKS                       R9 R6 K5 ["Uri"]
       22 GETTABLEKS                       R10 R6 K6 ["Input"]
       24 CALL                             R7 3 0
       25 FORGLOOP                         R2 2 ; [-16]
       27 GETIMPORT                        R2 K8 [table.freeze]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 -1
       31 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetStateAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 4
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U5
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K3 [task.cancel]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ShowDialog"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["ShowCustomDialog"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["UpdateDialog"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 NAMECALL                         R2 R2 K1 ["Connect"]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K4 ["DestroyDialog"]
       31 GETUPVAL                         R5 7
       32 NAMECALL                         R3 R3 K1 ["Connect"]
       34 CALL                             R3 2 1
       35 GETIMPORT                        R4 K7 [task.spawn]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CALL                             R4 1 1
       45 NEWCLOSURE                       R5 P4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 RETURN                           R5 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["useState"]
       21 GETIMPORT                        R3 K6 [table.freeze]
       23 NEWTABLE                         R4 0 0
       25 CALL                             R3 1 -1
       26 CALL                             R2 -1 2
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["useState"]
       30 GETIMPORT                        R5 K6 [table.freeze]
       32 NEWTABLE                         R6 0 0
       34 CALL                             R5 1 -1
       35 CALL                             R4 -1 2
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 2
       45 MOVE                             R9 R3
       46 MOVE                             R10 R5
       47 SETLIST                          R8 R9 2 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R9 0 2
       62 MOVE                             R10 R1
       63 MOVE                             R11 R6
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       70 NEWCLOSURE                       R9 P3
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 NEWTABLE                         R10 0 2
       77 MOVE                             R11 R1
       78 MOVE                             R12 R6
       79 SETLIST                          R10 R11 2 [1]
       81 CALL                             R8 2 1
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       85 NEWCLOSURE                       R10 P4
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R6
       94 NEWTABLE                         R11 0 6
       96 MOVE                             R12 R1
       97 MOVE                             R13 R3
       98 MOVE                             R14 R6
       99 MOVE                             R15 R5
      100 MOVE                             R16 R7
      101 MOVE                             R17 R8
      102 SETLIST                          R11 R12 6 [1]
      104 CALL                             R9 2 0
      105 NEWTABLE                         R9 0 0
      107 MOVE                             R10 R2
      108 LOADNIL                          R11
      109 LOADNIL                          R12
      110 FORGPREP                         R10
      111 GETUPVAL                         R15 7
      112 GETUPVAL                         R16 8
      113 MOVE                             R17 R14
      114 CALL                             R15 2 1
      115 SETTABLE                         R15 R9 R13
      116 FORGLOOP                         R10 2 ; [-6]
      118 MOVE                             R10 R4
      119 LOADNIL                          R11
      120 LOADNIL                          R12
      121 FORGPREP                         R10
      122 GETUPVAL                         R15 7
      123 GETTABLEKS                       R16 R14 K9 ["component"]
      125 MOVE                             R17 R14
      126 CALL                             R15 2 1
      127 SETTABLE                         R15 R9 R13
      128 FORGLOOP                         R10 2 ; [-7]
      130 GETUPVAL                         R10 7
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K10 ["Fragment"]
      134 LOADNIL                          R12
      135 MOVE                             R13 R9
      136 CALL                             R10 3 -1
      137 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["CustomDialogs"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DialogSession"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["createDialogSignals"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagStudioDialogManagerSuppression"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R3 K19 ["ContextServices"]
       73 GETTABLEKS                       R9 R9 K20 ["Plugin"]
       75 GETTABLEKS                       R10 R5 K15 ["Util"]
       77 GETTABLEKS                       R10 R10 K21 ["StudioUri"]
       79 GETTABLEKS                       R11 R4 K22 ["createElement"]
       81 DUPCLOSURE                       R12 K23 [PROTO_0]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R13 K24 [PROTO_25]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R2
       93 GETTABLEKS                       R14 R4 K25 ["memo"]
       95 MOVE                             R15 R13
       96 CALL                             R14 1 -1
       97 RETURN                           R14 -1
