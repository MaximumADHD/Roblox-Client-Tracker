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
       53 RETURN                           R0 0

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
        2 DUPTABLE                         R3 K1 [{"SelectedButtonUri"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 NAMECALL                         R0 R0 K2 ["UserInteractedAsync"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K3 ["CloseOnFirstInteraction"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
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
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R8 R7 K6 ["onUserInteracted"]
       30 CALL                             R6 1 1
       31 SETTABLE                         R6 R0 R5
       32 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toString"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R5 R3
        7 JUMPIF                           R4 ; [+16]
        8 GETIMPORT                        R5 K2 [warn]
       10 LOADK                            R7 K3 ["[Dialog] Could not locate custom dialog with URI: %*"]
       11 MOVE                             R9 R3
       12 NAMECALL                         R7 R7 K4 ["format"]
       14 CALL                             R7 2 1
       15 MOVE                             R6 R7
       16 CALL                             R5 1 0
       17 GETIMPORT                        R5 K7 [task.spawn]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CALL                             R5 1 0
       23 RETURN                           R0 0
       24 GETIMPORT                        R5 K10 [table.freeze]
       26 DUPTABLE                         R6 K15 [{"component", "uri", "input", "onResolved"}]
       27 SETTABLEKS                       R4 R6 K11 ["component"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K16 ["wrap"]
       32 MOVE                             R8 R1
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K12 ["uri"]
       36 SETTABLEKS                       R2 R6 K13 ["input"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U3
       42 SETTABLEKS                       R7 R6 K14 ["onResolved"]
       44 CALL                             R5 1 1
       45 SETTABLE                         R5 R0 R3
       46 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"SelectedButtonUri"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 NAMECALL                         R0 R0 K2 ["UserInteractedAsync"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K3 ["CloseOnFirstInteraction"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R5 3
       11 GETUPVAL                         R6 4
       12 CALL                             R2 4 0
       13 JUMP                             ; [+32]
       14 GETUPVAL                         R2 5
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 6
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 7
       21 GETTABLEKS                       R3 R3 K3 ["toString"]
       23 GETUPVAL                         R4 2
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [table.freeze]
       27 DUPTABLE                         R5 K9 [{"uri", "signals", "onUserInteracted"}]
       28 GETUPVAL                         R6 7
       29 GETTABLEKS                       R6 R6 K10 ["wrap"]
       31 GETUPVAL                         R7 2
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R5 K6 ["uri"]
       35 SETTABLEKS                       R2 R5 K7 ["signals"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U9
       42 SETTABLEKS                       R6 R5 K8 ["onUserInteracted"]
       44 CALL                             R4 1 1
       45 SETTABLE                         R4 R1 R3
       46 GETIMPORT                        R2 K5 [table.freeze]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 -1
       50 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K2 [table.clone]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R5 3
       11 CALL                             R2 3 0
       12 GETIMPORT                        R2 K4 [table.freeze]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K5 ["toString"]
       20 GETUPVAL                         R2 2
       21 CALL                             R1 1 1
       22 GETUPVAL                         R3 5
       23 GETTABLE                         R2 R3 R1
       24 JUMPIF                           R2 ; [+16]
       25 GETIMPORT                        R3 K7 [warn]
       27 LOADK                            R5 K8 ["[Dialog] Could not locate custom dialog with URI: %*"]
       28 MOVE                             R7 R1
       29 NAMECALL                         R5 R5 K9 ["format"]
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 CALL                             R3 1 0
       34 GETIMPORT                        R3 K12 [task.spawn]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U2
       39 CALL                             R3 1 0
       40 RETURN                           R0 1
       41 GETIMPORT                        R3 K2 [table.clone]
       43 MOVE                             R4 R0
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K4 [table.freeze]
       47 DUPTABLE                         R5 K17 [{"component", "uri", "input", "onResolved"}]
       48 SETTABLEKS                       R2 R5 K13 ["component"]
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K18 ["wrap"]
       53 GETUPVAL                         R7 2
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K14 ["uri"]
       57 GETUPVAL                         R6 3
       58 SETTABLEKS                       R6 R5 K15 ["input"]
       60 NEWCLOSURE                       R6 P1
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U7
       64 SETTABLEKS                       R6 R5 K16 ["onResolved"]
       66 CALL                             R4 1 1
       67 SETTABLE                         R4 R3 R1
       68 GETIMPORT                        R4 K4 [table.freeze]
       70 MOVE                             R5 R3
       71 CALL                             R4 1 -1
       72 RETURN                           R4 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       16 GETUPVAL                         R0 4
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETIMPORT                        R0 K3 [task.cancel]
       21 GETUPVAL                         R1 5
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ShowDialog"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U7
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["ShowCustomDialog"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U10
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U7
       26 NAMECALL                         R1 R1 K1 ["Connect"]
       28 CALL                             R1 2 1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K3 ["UpdateDialog"]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U5
       36 NAMECALL                         R2 R2 K1 ["Connect"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K4 ["DestroyDialog"]
       42 GETUPVAL                         R5 7
       43 NAMECALL                         R3 R3 K1 ["Connect"]
       45 CALL                             R3 2 1
       46 LOADNIL                          R4
       47 GETUPVAL                         R5 2
       48 CALL                             R5 0 1
       49 JUMPIFNOT                        R5 ; [+11]
       50 GETIMPORT                        R5 K7 [task.spawn]
       52 NEWCLOSURE                       R6 P3
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U9
       59 CALL                             R5 1 1
       60 MOVE                             R4 R5
       61 NEWCLOSURE                       R5 P4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          REF R4
       68 CLOSEUPVALS                      R4
       69 RETURN                           R5 1

PROTO_28:
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
       50 LOADNIL                          R7
       51 GETUPVAL                         R8 3
       52 CALL                             R8 0 1
       53 JUMPIFNOT                        R8 ; [+17]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       57 NEWCLOSURE                       R9 P2
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 NEWTABLE                         R10 0 2
       65 MOVE                             R11 R1
       66 MOVE                             R12 R6
       67 SETLIST                          R10 R11 2 [1]
       69 CALL                             R8 2 1
       70 MOVE                             R7 R8
       71 LOADNIL                          R8
       72 GETUPVAL                         R9 3
       73 CALL                             R9 0 1
       74 JUMPIFNOT                        R9 ; [+16]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       78 NEWCLOSURE                       R10 P3
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 NEWTABLE                         R11 0 2
       85 MOVE                             R12 R1
       86 MOVE                             R13 R6
       87 SETLIST                          R11 R12 2 [1]
       89 CALL                             R9 2 1
       90 MOVE                             R8 R9
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       94 NEWCLOSURE                       R10 P4
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          REF R7
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 CAPTURE                          REF R8
      105 CAPTURE                          UPVAL U6
      106 NEWTABLE                         R11 0 6
      108 MOVE                             R12 R1
      109 MOVE                             R13 R3
      110 MOVE                             R14 R6
      111 MOVE                             R15 R5
      112 GETUPVAL                         R17 3
      113 CALL                             R17 0 1
      114 JUMPIFNOT                        R17 ; [+2]
      115 MOVE                             R16 R7
      116 JUMP                             ; [+1]
      117 LOADNIL                          R16
      118 GETUPVAL                         R18 3
      119 CALL                             R18 0 1
      120 JUMPIFNOT                        R18 ; [+2]
      121 MOVE                             R17 R8
      122 JUMP                             ; [+1]
      123 LOADNIL                          R17
      124 SETLIST                          R11 R12 6 [1]
      126 CALL                             R9 2 0
      127 NEWTABLE                         R9 0 0
      129 MOVE                             R10 R2
      130 LOADNIL                          R11
      131 LOADNIL                          R12
      132 FORGPREP                         R10
      133 GETUPVAL                         R15 7
      134 GETUPVAL                         R16 8
      135 MOVE                             R17 R14
      136 CALL                             R15 2 1
      137 SETTABLE                         R15 R9 R13
      138 FORGLOOP                         R10 2 ; [-6]
      140 MOVE                             R10 R4
      141 LOADNIL                          R11
      142 LOADNIL                          R12
      143 FORGPREP                         R10
      144 GETUPVAL                         R15 7
      145 GETTABLEKS                       R16 R14 K9 ["component"]
      147 MOVE                             R17 R14
      148 CALL                             R15 2 1
      149 SETTABLE                         R15 R9 R13
      150 FORGLOOP                         R10 2 ; [-7]
      152 GETUPVAL                         R10 7
      153 GETUPVAL                         R11 1
      154 GETTABLEKS                       R11 R11 K10 ["Fragment"]
      156 LOADNIL                          R12
      157 MOVE                             R13 R9
      158 CALL                             R10 3 -1
      159 CLOSEUPVALS                      R7
      160 RETURN                           R10 -1

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
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagStudioDialogManagerUIBridgeGetState"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R3 K19 ["ContextServices"]
       73 GETTABLEKS                       R9 R9 K20 ["Plugin"]
       75 GETTABLEKS                       R10 R5 K15 ["Util"]
       77 GETTABLEKS                       R10 R10 K21 ["StudioUri"]
       79 GETTABLEKS                       R11 R4 K22 ["createElement"]
       81 DUPCLOSURE                       R12 K23 [PROTO_0]
       82 DUPCLOSURE                       R13 K24 [PROTO_28]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R2
       92 GETTABLEKS                       R14 R4 K25 ["memo"]
       94 MOVE                             R15 R13
       95 CALL                             R14 1 -1
       96 RETURN                           R14 -1
