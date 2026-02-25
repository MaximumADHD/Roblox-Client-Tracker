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
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toString"]
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
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"SelectedButtonUri"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["SelectedButtonUri"]
        6 NAMECALL                         R0 R0 K2 ["UserInteractedAsync"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K3 ["CloseOnFirstInteraction"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R2
        9 CALL                             R3 2 0
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K3 ["toString"]
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K5 [table.freeze]
       17 DUPTABLE                         R5 K9 [{"uri", "signals", "onUserInteracted"}]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K10 ["wrap"]
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowDialog"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["DestroyDialog"]
       16 GETUPVAL                         R3 5
       17 NAMECALL                         R1 R1 K1 ["Connect"]
       19 CALL                             R1 2 1
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K3 ["useState"]
       21 GETIMPORT                        R3 K6 [table.freeze]
       23 NEWTABLE                         R4 0 0
       25 CALL                             R3 1 1
       26 CALL                             R2 1 2
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K7 ["useCallback"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U2
       33 NEWTABLE                         R6 0 1
       35 MOVE                             R7 R3
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K8 ["useEffect"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R7 0 3
       51 MOVE                             R8 R1
       52 MOVE                             R9 R3
       53 MOVE                             R10 R4
       54 SETLIST                          R7 R8 3 [1]
       56 CALL                             R5 2 0
       57 NEWTABLE                         R5 0 0
       59 MOVE                             R6 R2
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 GETUPVAL                         R11 5
       64 GETUPVAL                         R12 6
       65 MOVE                             R13 R10
       66 CALL                             R11 2 1
       67 SETTABLE                         R11 R5 R9
       68 FORGLOOP                         R6 2 ; [-6]
       70 GETUPVAL                         R6 5
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K9 ["Fragment"]
       74 LOADNIL                          R8
       75 MOVE                             R9 R5
       76 CALL                             R6 3 -1
       77 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogSession"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Util"]
       50 GETTABLEKS                       R7 R8 K15 ["createDialogSignals"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       55 GETTABLEKS                       R7 R8 K17 ["Plugin"]
       57 GETTABLEKS                       R9 R4 K14 ["Util"]
       59 GETTABLEKS                       R8 R9 K18 ["StudioUri"]
       61 GETTABLEKS                       R9 R3 K19 ["createElement"]
       63 DUPCLOSURE                       R10 K20 [PROTO_0]
       64 DUPCLOSURE                       R11 K21 [PROTO_10]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R1
       72 GETTABLEKS                       R12 R3 K22 ["memo"]
       74 MOVE                             R13 R11
       75 CALL                             R12 1 -1
       76 RETURN                           R12 -1
