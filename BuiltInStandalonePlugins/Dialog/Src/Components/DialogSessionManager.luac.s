PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R3 K1 ["%*:%*"]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 3 1
       14 RETURN                           R3 1
       15 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["toString"]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 3
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+8]
       10 LOADK                            R5 K1 ["%*:%*"]
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 NAMECALL                         R5 R5 K2 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R1 R5
       17 JUMP                             ; [+1]
       18 MOVE                             R1 R4
       19 GETTABLE                         R2 R0 R1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 1
       22 GETIMPORT                        R2 K5 [table.clone]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R2 R1
       28 GETIMPORT                        R3 K7 [table.freeze]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["toString"]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 3
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+8]
       10 LOADK                            R5 K1 ["%*:%*"]
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 NAMECALL                         R5 R5 K2 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R1 R5
       17 JUMP                             ; [+1]
       18 MOVE                             R1 R4
       19 GETTABLE                         R2 R0 R1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 1
       22 GETIMPORT                        R2 K5 [table.clone]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R2 R1
       28 GETIMPORT                        R3 K7 [table.freeze]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 3
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"SelectedButtonUri", "WasSuppressionRequested"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 GETUPVAL                         R4 3
        7 SETTABLEKS                       R4 R3 K1 ["WasSuppressionRequested"]
        9 GETUPVAL                         R4 4
       10 NAMECALL                         R0 R0 K3 ["UserInteractedAsync"]
       12 CALL                             R0 4 0
       13 GETUPVAL                         R0 5
       14 GETTABLEKS                       R0 R0 K4 ["CloseOnFirstInteraction"]
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R0 6
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 4
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{[1], ["WasSuppressionRequested"] = }]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 GETUPVAL                         R4 3
        7 NAMECALL                         R0 R0 K4 ["UserInteractedAsync"]
        9 CALL                             R0 4 0
       10 GETUPVAL                         R0 4
       11 GETTABLEKS                       R0 R0 K5 ["CloseOnFirstInteraction"]
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 3
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 GETUPVAL                         R6 1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R5
        5 CALL                             R6 2 0
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R7 R7 K0 ["toString"]
        9 MOVE                             R8 R1
       10 CALL                             R7 1 1
       11 GETUPVAL                         R8 3
       12 CALL                             R8 0 1
       13 JUMPIFNOT                        R8 ; [+8]
       14 LOADK                            R8 K1 ["%*:%*"]
       15 MOVE                             R10 R4
       16 MOVE                             R11 R7
       17 NAMECALL                         R8 R8 K2 ["format"]
       19 CALL                             R8 3 1
       20 MOVE                             R6 R8
       21 JUMP                             ; [+1]
       22 MOVE                             R6 R7
       23 GETIMPORT                        R7 K5 [table.freeze]
       25 DUPTABLE                         R8 K10 [{"uri", "dmId", "signals", "onUserInteracted"}]
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R9 R9 K11 ["wrap"]
       29 MOVE                             R10 R1
       30 CALL                             R9 1 1
       31 SETTABLEKS                       R9 R8 K6 ["uri"]
       33 GETUPVAL                         R10 3
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+2]
       36 MOVE                             R9 R4
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 SETTABLEKS                       R9 R8 K7 ["dmId"]
       41 SETTABLEKS                       R5 R8 K8 ["signals"]
       43 GETUPVAL                         R10 4
       44 CALL                             R10 0 1
       45 JUMPIFNOT                        R10 ; [+7]
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U6
       52 JUMP                             ; [+6]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U6
       59 SETTABLEKS                       R9 R8 K9 ["onUserInteracted"]
       61 CALL                             R7 1 1
       62 SETTABLE                         R7 R0 R6
       63 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 4
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 3
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toString"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 GETUPVAL                         R6 1
        6 GETTABLE                         R5 R6 R4
        7 JUMPIF                           R5 ; [+16]
        8 GETIMPORT                        R6 K2 [warn]
       10 LOADK                            R7 K3 ["[Dialog] Could not locate custom dialog with URI: %*"]
       11 MOVE                             R9 R4
       12 NAMECALL                         R7 R7 K4 ["format"]
       14 CALL                             R7 2 1
       15 CALL                             R6 1 0
       16 GETIMPORT                        R6 K7 [task.spawn]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CALL                             R6 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K0 ["toString"]
       27 MOVE                             R8 R1
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 3
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+8]
       32 LOADK                            R8 K8 ["%*:%*"]
       33 MOVE                             R10 R3
       34 MOVE                             R11 R7
       35 NAMECALL                         R8 R8 K4 ["format"]
       37 CALL                             R8 3 1
       38 MOVE                             R6 R8
       39 JUMP                             ; [+1]
       40 MOVE                             R6 R7
       41 GETIMPORT                        R7 K11 [table.freeze]
       43 DUPTABLE                         R8 K17 [{"component", "uri", "dmId", "input", "onResolved"}]
       44 SETTABLEKS                       R5 R8 K12 ["component"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K18 ["wrap"]
       49 MOVE                             R10 R1
       50 CALL                             R9 1 1
       51 SETTABLEKS                       R9 R8 K13 ["uri"]
       53 GETUPVAL                         R10 3
       54 CALL                             R10 0 1
       55 JUMPIFNOT                        R10 ; [+2]
       56 MOVE                             R9 R3
       57 JUMP                             ; [+1]
       58 LOADNIL                          R9
       59 SETTABLEKS                       R9 R8 K14 ["dmId"]
       61 SETTABLEKS                       R2 R8 K15 ["input"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U4
       68 SETTABLEKS                       R9 R8 K16 ["onResolved"]
       70 CALL                             R7 1 1
       71 SETTABLE                         R7 R0 R6
       72 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 GETUPVAL                         R6 3
        9 GETUPVAL                         R7 4
       10 CALL                             R2 5 0
       11 GETIMPORT                        R2 K4 [table.freeze]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CALL                             R4 1 0
        8 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R5 R5 K0 ["toString"]
        5 MOVE                             R6 R3
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 3
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+8]
       10 LOADK                            R6 K1 ["%*:%*"]
       11 MOVE                             R8 R4
       12 MOVE                             R9 R5
       13 NAMECALL                         R6 R6 K2 ["format"]
       15 CALL                             R6 3 1
       16 MOVE                             R2 R6
       17 JUMP                             ; [+1]
       18 MOVE                             R2 R5
       19 GETTABLE                         R1 R0 R2
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 1
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R4 R1 K3 ["signals"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["VisibleDialogs"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R9 R6 K4 ["Uri"]
       12 GETTABLEKS                       R10 R6 K5 ["DataModelId"]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K6 ["toString"]
       17 MOVE                             R12 R9
       18 CALL                             R11 1 1
       19 GETUPVAL                         R12 2
       20 CALL                             R12 0 1
       21 JUMPIFNOT                        R12 ; [+8]
       22 LOADK                            R12 K7 ["%*:%*"]
       23 MOVE                             R14 R10
       24 MOVE                             R15 R11
       25 NAMECALL                         R12 R12 K8 ["format"]
       27 CALL                             R12 3 1
       28 MOVE                             R8 R12
       29 JUMP                             ; [+1]
       30 MOVE                             R8 R11
       31 GETTABLE                         R7 R1 R8
       32 JUMPIF                           R7 ; [+11]
       33 GETUPVAL                         R7 3
       34 MOVE                             R8 R1
       35 GETTABLEKS                       R9 R6 K4 ["Uri"]
       37 GETTABLEKS                       R10 R6 K9 ["Properties"]
       39 GETTABLEKS                       R11 R6 K10 ["InternalProperties"]
       41 GETTABLEKS                       R12 R6 K5 ["DataModelId"]
       43 CALL                             R7 5 0
       44 FORGLOOP                         R2 2 ; [-35]
       46 GETIMPORT                        R2 K12 [table.freeze]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 -1
       50 RETURN                           R2 -1

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["VisibleCustomDialogs"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R9 R6 K4 ["Uri"]
       12 GETTABLEKS                       R10 R6 K5 ["DataModelId"]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K6 ["toString"]
       17 MOVE                             R12 R9
       18 CALL                             R11 1 1
       19 GETUPVAL                         R12 2
       20 CALL                             R12 0 1
       21 JUMPIFNOT                        R12 ; [+8]
       22 LOADK                            R12 K7 ["%*:%*"]
       23 MOVE                             R14 R10
       24 MOVE                             R15 R11
       25 NAMECALL                         R12 R12 K8 ["format"]
       27 CALL                             R12 3 1
       28 MOVE                             R8 R12
       29 JUMP                             ; [+1]
       30 MOVE                             R8 R11
       31 GETTABLE                         R7 R1 R8
       32 JUMPIF                           R7 ; [+9]
       33 GETUPVAL                         R7 3
       34 MOVE                             R8 R1
       35 GETTABLEKS                       R9 R6 K4 ["Uri"]
       37 GETTABLEKS                       R10 R6 K9 ["Input"]
       39 GETTABLEKS                       R11 R6 K5 ["DataModelId"]
       41 CALL                             R7 4 0
       42 FORGLOOP                         R2 2 ; [-33]
       44 GETIMPORT                        R2 K11 [table.freeze]
       46 MOVE                             R3 R1
       47 CALL                             R2 1 -1
       48 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetStateAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 5
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       25 CAPTURE                          UPVAL U7
       26 NAMECALL                         R2 R2 K1 ["Connect"]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K4 ["DestroyDialog"]
       32 GETUPVAL                         R5 8
       33 NAMECALL                         R3 R3 K1 ["Connect"]
       35 CALL                             R3 2 1
       36 GETIMPORT                        R4 K7 [task.spawn]
       38 NEWCLOSURE                       R5 P3
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CALL                             R4 1 1
       47 NEWCLOSURE                       R5 P4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 RETURN                           R5 1

PROTO_26:
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
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R8 0 2
       46 MOVE                             R9 R3
       47 MOVE                             R10 R5
       48 SETLIST                          R8 R9 2 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R9 0 2
       64 MOVE                             R10 R1
       65 MOVE                             R11 R6
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       72 NEWCLOSURE                       R9 P3
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R6
       78 NEWTABLE                         R10 0 2
       80 MOVE                             R11 R1
       81 MOVE                             R12 R6
       82 SETLIST                          R10 R11 2 [1]
       84 CALL                             R8 2 1
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       88 NEWCLOSURE                       R10 P4
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R6
       98 NEWTABLE                         R11 0 6
      100 MOVE                             R12 R1
      101 MOVE                             R13 R3
      102 MOVE                             R14 R6
      103 MOVE                             R15 R5
      104 MOVE                             R16 R7
      105 MOVE                             R17 R8
      106 SETLIST                          R11 R12 6 [1]
      108 CALL                             R9 2 0
      109 NEWTABLE                         R9 0 0
      111 MOVE                             R10 R2
      112 LOADNIL                          R11
      113 LOADNIL                          R12
      114 FORGPREP                         R10
      115 GETUPVAL                         R15 8
      116 GETUPVAL                         R16 9
      117 MOVE                             R17 R14
      118 CALL                             R15 2 1
      119 SETTABLE                         R15 R9 R13
      120 FORGLOOP                         R10 2 ; [-6]
      122 MOVE                             R10 R4
      123 LOADNIL                          R11
      124 LOADNIL                          R12
      125 FORGPREP                         R10
      126 GETUPVAL                         R15 3
      127 CALL                             R15 0 1
      128 JUMPIFNOT                        R15 ; [+17]
      129 GETUPVAL                         R15 8
      130 GETUPVAL                         R16 10
      131 GETTABLEKS                       R16 R16 K9 ["Provider"]
      133 DUPTABLE                         R17 K11 [{"value"}]
      134 GETTABLEKS                       R18 R14 K12 ["dmId"]
      136 SETTABLEKS                       R18 R17 K10 ["value"]
      138 GETUPVAL                         R18 8
      139 GETTABLEKS                       R19 R14 K13 ["component"]
      141 MOVE                             R20 R14
      142 CALL                             R18 2 -1
      143 CALL                             R15 -1 1
      144 SETTABLE                         R15 R9 R13
      145 JUMP                             ; [+6]
      146 GETUPVAL                         R15 8
      147 GETTABLEKS                       R16 R14 K13 ["component"]
      149 MOVE                             R17 R14
      150 CALL                             R15 2 1
      151 SETTABLE                         R15 R9 R13
      152 FORGLOOP                         R10 2 ; [-27]
      154 GETUPVAL                         R10 8
      155 GETUPVAL                         R11 1
      156 GETTABLEKS                       R11 R11 K14 ["Fragment"]
      158 LOADNIL                          R12
      159 MOVE                             R13 R9
      160 CALL                             R10 3 -1
      161 RETURN                           R10 -1

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
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getStudioDialogManagerMultiDataModel"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R3 K20 ["ContextServices"]
       82 GETTABLEKS                       R10 R10 K21 ["Plugin"]
       84 GETTABLEKS                       R11 R5 K15 ["Util"]
       86 GETTABLEKS                       R11 R11 K22 ["StudioUri"]
       88 GETTABLEKS                       R12 R5 K23 ["Contexts"]
       90 GETTABLEKS                       R12 R12 K24 ["DialogDmIdContext"]
       92 GETTABLEKS                       R13 R4 K25 ["createElement"]
       94 DUPCLOSURE                       R14 K26 [PROTO_0]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R9
       97 DUPCLOSURE                       R15 K27 [PROTO_1]
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R16 K28 [PROTO_26]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R12
      111 GETTABLEKS                       R17 R4 K29 ["memo"]
      113 MOVE                             R18 R16
      114 CALL                             R17 1 -1
      115 RETURN                           R17 -1
