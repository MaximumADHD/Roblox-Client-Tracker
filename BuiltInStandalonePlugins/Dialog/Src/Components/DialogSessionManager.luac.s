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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R2
        9 CALL                             R3 2 0
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["toString"]
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K5 [table.freeze]
       17 DUPTABLE                         R5 K9 [{"uri", "signals", "onUserInteracted"}]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K10 ["wrap"]
       21 GETUPVAL                         R7 4
       22 CALL                             R6 1 1
       23 SETTABLEKS                       R6 R5 K6 ["uri"]
       25 SETTABLEKS                       R2 R5 K7 ["signals"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 SETTABLEKS                       R6 R5 K8 ["onUserInteracted"]
       34 CALL                             R4 1 1
       35 SETTABLE                         R4 R1 R3
       36 GETIMPORT                        R3 K5 [table.freeze]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U5
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ResolveCustomDialogAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLE                         R2 R3 R1
        7 JUMPIF                           R2 ; [+16]
        8 GETIMPORT                        R3 K2 [warn]
       10 LOADK                            R5 K3 ["[Dialog] Could not locate custom dialog with URI: %*"]
       11 MOVE                             R7 R1
       12 NAMECALL                         R5 R5 K4 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 CALL                             R3 1 0
       17 GETIMPORT                        R3 K7 [task.spawn]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U1
       22 CALL                             R3 1 0
       23 RETURN                           R0 1
       24 GETIMPORT                        R3 K10 [table.clone]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [table.freeze]
       30 DUPTABLE                         R5 K17 [{"component", "uri", "input", "onResolved"}]
       31 SETTABLEKS                       R2 R5 K13 ["component"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K18 ["wrap"]
       36 GETUPVAL                         R7 1
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K14 ["uri"]
       40 GETUPVAL                         R6 4
       41 SETTABLEKS                       R6 R5 K15 ["input"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R6 R5 K16 ["onResolved"]
       49 CALL                             R4 1 1
       50 SETTABLE                         R4 R3 R1
       51 GETIMPORT                        R4 K12 [table.freeze]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 -1
       55 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_16:
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
       16 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ShowDialog"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["ShowCustomDialog"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U5
       22 NAMECALL                         R1 R1 K1 ["Connect"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K3 ["UpdateDialog"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R2 R2 K1 ["Connect"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K4 ["DestroyDialog"]
       38 GETUPVAL                         R5 5
       39 NAMECALL                         R3 R3 K1 ["Connect"]
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R4 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 RETURN                           R4 1

PROTO_18:
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
       25 CALL                             R3 1 1
       26 CALL                             R2 1 2
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["useState"]
       30 GETIMPORT                        R5 K6 [table.freeze]
       32 NEWTABLE                         R6 0 0
       34 CALL                             R5 1 1
       35 CALL                             R4 1 2
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
       51 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U5
       62 NEWTABLE                         R9 0 4
       64 MOVE                             R10 R1
       65 MOVE                             R11 R3
       66 MOVE                             R12 R6
       67 MOVE                             R13 R5
       68 SETLIST                          R9 R10 4 [1]
       70 CALL                             R7 2 0
       71 NEWTABLE                         R7 0 0
       73 MOVE                             R8 R2
       74 LOADNIL                          R9
       75 LOADNIL                          R10
       76 FORGPREP                         R8
       77 GETUPVAL                         R13 6
       78 GETUPVAL                         R14 7
       79 MOVE                             R15 R12
       80 CALL                             R13 2 1
       81 SETTABLE                         R13 R7 R11
       82 FORGLOOP                         R8 2 ; [-6]
       84 MOVE                             R8 R4
       85 LOADNIL                          R9
       86 LOADNIL                          R10
       87 FORGPREP                         R8
       88 GETUPVAL                         R13 6
       89 GETTABLEKS                       R14 R12 K9 ["component"]
       91 MOVE                             R15 R12
       92 CALL                             R13 2 1
       93 SETTABLE                         R13 R7 R11
       94 FORGLOOP                         R8 2 ; [-7]
       96 GETUPVAL                         R8 6
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K10 ["Fragment"]
      100 LOADNIL                          R10
      101 MOVE                             R11 R7
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1

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
       62 GETTABLEKS                       R8 R3 K17 ["ContextServices"]
       64 GETTABLEKS                       R8 R8 K18 ["Plugin"]
       66 GETTABLEKS                       R9 R5 K15 ["Util"]
       68 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       70 GETTABLEKS                       R10 R4 K20 ["createElement"]
       72 DUPCLOSURE                       R11 K21 [PROTO_0]
       73 DUPCLOSURE                       R12 K22 [PROTO_18]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R2
       82 GETTABLEKS                       R13 R4 K23 ["memo"]
       84 MOVE                             R14 R12
       85 CALL                             R13 1 -1
       86 RETURN                           R13 -1
