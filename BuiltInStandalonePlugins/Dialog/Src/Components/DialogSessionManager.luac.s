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
       30 GETUPVAL                         R2 0
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETTABLEKS                       R2 R1 K12 ["setEscapeButtonUri"]
       34 GETTABLEKS                       R3 R0 K13 ["EscapeButtonUri"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 1
       38 JUMPIFNOT                        R2 ; [+18]
       39 GETTABLEKS                       R2 R1 K14 ["setImageUri"]
       41 GETTABLEKS                       R4 R0 K15 ["Image"]
       43 JUMPIFNOT                        R4 ; [+5]
       44 GETTABLEKS                       R3 R0 K15 ["Image"]
       46 GETTABLEKS                       R3 R3 K16 ["Uri"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R3
       50 CALL                             R2 1 0
       51 GETTABLEKS                       R2 R1 K17 ["setShowIndeterminateProgressIndicator"]
       53 GETTABLEKS                       R4 R0 K19 ["ShowIndeterminateProgressIndicator"]
       55 ORK                              R3 R4 K18 [False]
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

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
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 3
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 4
       14 NAMECALL                         R0 R0 K0 ["Disconnect"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 5
       18 NAMECALL                         R0 R0 K0 ["Disconnect"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

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
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 6
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+13]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K2 ["ShowCustomDialog"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U5
       26 NAMECALL                         R2 R2 K1 ["Connect"]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 LOADNIL                          R2
       31 GETUPVAL                         R3 9
       32 JUMPIFNOT                        R3 ; [+11]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K3 ["UpdateDialog"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U3
       40 NAMECALL                         R3 R3 K1 ["Connect"]
       42 CALL                             R3 2 1
       43 MOVE                             R2 R3
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K4 ["DestroyDialog"]
       47 GETUPVAL                         R5 5
       48 NAMECALL                         R3 R3 K1 ["Connect"]
       50 CALL                             R3 2 1
       51 NEWCLOSURE                       R4 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          REF R1
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          REF R2
       57 CAPTURE                          VAL R3
       58 CLOSEUPVALS                      R1
       59 RETURN                           R4 1

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
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 GETUPVAL                         R6 2
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+11]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K3 ["useState"]
       35 GETIMPORT                        R7 K6 [table.freeze]
       37 NEWTABLE                         R8 0 0
       39 CALL                             R7 1 1
       40 CALL                             R6 1 2
       41 MOVE                             R4 R6
       42 MOVE                             R5 R7
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          REF R5
       51 NEWTABLE                         R8 0 2
       53 MOVE                             R9 R3
       54 GETUPVAL                         R11 2
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+2]
       57 MOVE                             R10 R5
       58 JUMP                             ; [+1]
       59 LOADNIL                          R10
       60 SETLIST                          R8 R9 2 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       66 NEWCLOSURE                       R8 P2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          REF R5
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U7
       77 NEWTABLE                         R9 0 4
       79 MOVE                             R10 R1
       80 MOVE                             R11 R3
       81 MOVE                             R12 R6
       82 GETUPVAL                         R14 2
       83 CALL                             R14 0 1
       84 JUMPIFNOT                        R14 ; [+2]
       85 MOVE                             R13 R5
       86 JUMP                             ; [+1]
       87 LOADNIL                          R13
       88 SETLIST                          R9 R10 4 [1]
       90 CALL                             R7 2 0
       91 NEWTABLE                         R7 0 0
       93 MOVE                             R8 R2
       94 LOADNIL                          R9
       95 LOADNIL                          R10
       96 FORGPREP                         R8
       97 GETUPVAL                         R13 8
       98 GETUPVAL                         R14 9
       99 MOVE                             R15 R12
      100 CALL                             R13 2 1
      101 SETTABLE                         R13 R7 R11
      102 FORGLOOP                         R8 2 ; [-6]
      104 GETUPVAL                         R8 2
      105 CALL                             R8 0 1
      106 JUMPIFNOT                        R8 ; [+12]
      107 MOVE                             R8 R4
      108 LOADNIL                          R9
      109 LOADNIL                          R10
      110 FORGPREP                         R8
      111 GETUPVAL                         R13 8
      112 GETTABLEKS                       R14 R12 K9 ["component"]
      114 MOVE                             R15 R12
      115 CALL                             R13 2 1
      116 SETTABLE                         R13 R7 R11
      117 FORGLOOP                         R8 2 ; [-7]
      119 GETUPVAL                         R8 8
      120 GETUPVAL                         R9 1
      121 GETTABLEKS                       R9 R9 K10 ["Fragment"]
      123 LOADNIL                          R10
      124 MOVE                             R11 R7
      125 CALL                             R8 3 -1
      126 CLOSEUPVALS                      R5
      127 RETURN                           R8 -1

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
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagDialogManagerUpdateSemantics"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getFeatureStudioDialogManagerCustomDialogs"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K17 ["Flags"]
       86 GETTABLEKS                       R11 R11 K20 ["getFFlagDialogManagerAddEscapeTitleButton"]
       88 CALL                             R10 1 1
       89 CALL                             R10 0 1
       90 MOVE                             R11 R8
       91 CALL                             R11 0 1
       92 GETTABLEKS                       R12 R3 K21 ["ContextServices"]
       94 GETTABLEKS                       R12 R12 K22 ["Plugin"]
       96 GETTABLEKS                       R13 R5 K15 ["Util"]
       98 GETTABLEKS                       R13 R13 K23 ["StudioUri"]
      100 GETTABLEKS                       R14 R4 K24 ["createElement"]
      102 DUPCLOSURE                       R15 K25 [PROTO_0]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 DUPCLOSURE                       R16 K26 [PROTO_18]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R2
      116 GETTABLEKS                       R17 R4 K27 ["memo"]
      118 MOVE                             R18 R16
      119 CALL                             R17 1 -1
      120 RETURN                           R17 -1
