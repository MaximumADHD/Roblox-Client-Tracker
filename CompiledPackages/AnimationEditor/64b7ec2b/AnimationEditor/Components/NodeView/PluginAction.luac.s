PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["ActionId"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["Text"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["StatusTip"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["IconName"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["AllowBinding"]
       21 NAMECALL                         R0 R0 K5 ["CreatePluginAction"]
       23 CALL                             R0 6 1
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K6 ["Checked"]
       27 JUMPIFEQKNIL                     R1 ; [+6]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K6 ["Checked"]
       32 SETTABLEKS                       R1 R0 K6 ["Checked"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K7 ["Enabled"]
       37 JUMPIFEQKNIL                     R1 ; [+6]
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K7 ["Enabled"]
       42 SETTABLEKS                       R1 R0 K7 ["Enabled"]
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K8 ["DefaultShortcut"]
       47 JUMPIFEQKNIL                     R1 ; [+6]
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K8 ["DefaultShortcut"]
       52 SETTABLEKS                       R1 R0 K8 ["DefaultShortcut"]
       54 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Destroy"]
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K0 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["Destroy"]
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Checked"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["Checked"]
       12 SETTABLEKS                       R1 R0 K0 ["Checked"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["Enabled"]
       12 SETTABLEKS                       R1 R0 K0 ["Enabled"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["DefaultShortcut"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["DefaultShortcut"]
       12 SETTABLEKS                       R1 R0 K0 ["DefaultShortcut"]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 6
       17 MOVE                             R5 R1
       18 GETTABLEKS                       R6 R0 K4 ["ActionId"]
       20 GETTABLEKS                       R7 R0 K5 ["Text"]
       22 GETTABLEKS                       R8 R0 K6 ["StatusTip"]
       24 GETTABLEKS                       R9 R0 K7 ["IconName"]
       26 GETTABLEKS                       R10 R0 K8 ["AllowBinding"]
       28 SETLIST                          R4 R5 6 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K9 ["useState"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 2
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R2
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 0
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R7 0 1
       56 MOVE                             R8 R3
       57 SETLIST                          R7 R8 1 [1]
       59 CALL                             R5 2 0
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       63 NEWCLOSURE                       R6 P3
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R7 0 2
       68 MOVE                             R8 R3
       69 GETTABLEKS                       R9 R0 K11 ["Checked"]
       71 SETLIST                          R7 R8 2 [1]
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       77 NEWCLOSURE                       R6 P4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R7 0 2
       82 MOVE                             R8 R3
       83 GETTABLEKS                       R9 R0 K12 ["Enabled"]
       85 SETLIST                          R7 R8 2 [1]
       87 CALL                             R5 2 0
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       91 NEWCLOSURE                       R6 P5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R0
       94 NEWTABLE                         R7 0 2
       96 MOVE                             R8 R3
       97 GETTABLEKS                       R9 R0 K13 ["DefaultShortcut"]
       99 SETLIST                          R7 R8 2 [1]
      101 CALL                             R5 2 0
      102 JUMPIFNOT                        R3 ; [+15]
      103 GETUPVAL                         R5 2
      104 GETTABLEKS                       R5 R5 K14 ["useEventConnection"]
      106 GETTABLEKS                       R6 R3 K15 ["Triggered"]
      108 NEWCLOSURE                       R7 P6
      109 CAPTURE                          VAL R0
      110 NEWTABLE                         R8 0 2
      112 MOVE                             R9 R3
      113 GETTABLEKS                       R10 R0 K16 ["OnTrigger"]
      115 SETLIST                          R8 R9 2 [1]
      117 CALL                             R5 3 0
      118 LOADNIL                          R5
      119 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+5]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 SETTABLE                         R2 R3 R0
        8 GETTABLEKS                       R4 R1 K0 ["ActionId"]
       10 GETTABLE                         R3 R2 R4
       11 JUMPIFEQKNIL                     R3 ; [+2]
       13 RETURN                           R3 1
       14 GETTABLEKS                       R6 R1 K0 ["ActionId"]
       16 GETTABLEKS                       R7 R1 K1 ["Text"]
       18 GETTABLEKS                       R8 R1 K2 ["StatusTip"]
       20 GETTABLEKS                       R9 R1 K3 ["IconName"]
       22 GETTABLEKS                       R10 R1 K4 ["AllowBinding"]
       24 NAMECALL                         R4 R0 K5 ["CreatePluginAction"]
       26 CALL                             R4 6 1
       27 GETTABLEKS                       R5 R1 K0 ["ActionId"]
       29 SETTABLE                         R4 R2 R5
       30 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+36]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["Checked"]
       10 JUMPIFEQKNIL                     R1 ; [+6]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K0 ["Checked"]
       15 SETTABLEKS                       R1 R0 K0 ["Checked"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K1 ["Enabled"]
       20 JUMPIFEQKNIL                     R1 ; [+6]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K1 ["Enabled"]
       25 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K2 ["DefaultShortcut"]
       30 JUMPIFEQKNIL                     R1 ; [+6]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K2 ["DefaultShortcut"]
       35 SETTABLEKS                       R1 R0 K2 ["DefaultShortcut"]
       37 RETURN                           R0 1
       38 LOADNIL                          R0
       39 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Checked"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["Checked"]
       12 SETTABLEKS                       R1 R0 K0 ["Checked"]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["Enabled"]
       12 SETTABLEKS                       R1 R0 K0 ["Enabled"]
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["DefaultShortcut"]
        6 JUMPIFEQKNIL                     R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["DefaultShortcut"]
       12 SETTABLEKS                       R1 R0 K0 ["DefaultShortcut"]
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R4 0 6
       18 MOVE                             R5 R1
       19 GETTABLEKS                       R6 R0 K4 ["ActionId"]
       21 GETTABLEKS                       R7 R0 K5 ["Text"]
       23 GETTABLEKS                       R8 R0 K6 ["StatusTip"]
       25 GETTABLEKS                       R9 R0 K7 ["IconName"]
       27 GETTABLEKS                       R10 R0 K8 ["AllowBinding"]
       29 SETLIST                          R4 R5 6 [1]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K9 ["useEffect"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R5 0 2
       40 MOVE                             R6 R2
       41 GETTABLEKS                       R7 R0 K10 ["Checked"]
       43 SETLIST                          R5 R6 2 [1]
       45 CALL                             R3 2 0
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K9 ["useEffect"]
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R5 0 2
       54 MOVE                             R6 R2
       55 GETTABLEKS                       R7 R0 K11 ["Enabled"]
       57 SETLIST                          R5 R6 2 [1]
       59 CALL                             R3 2 0
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K9 ["useEffect"]
       63 NEWCLOSURE                       R4 P3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R5 0 2
       68 MOVE                             R6 R2
       69 GETTABLEKS                       R7 R0 K12 ["DefaultShortcut"]
       71 SETLIST                          R5 R6 2 [1]
       73 CALL                             R3 2 0
       74 JUMPIFNOT                        R2 ; [+15]
       75 GETUPVAL                         R3 3
       76 GETTABLEKS                       R3 R3 K13 ["useEventConnection"]
       78 GETTABLEKS                       R4 R2 K14 ["Triggered"]
       80 NEWCLOSURE                       R5 P4
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R6 0 2
       84 MOVE                             R7 R2
       85 GETTABLEKS                       R8 R0 K15 ["OnTrigger"]
       87 SETLIST                          R6 R7 2 [1]
       89 CALL                             R3 3 0
       90 LOADNIL                          R3
       91 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getFFlagAnimGraphUITogglePlayShortcut"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["ContextServices"]
       37 DUPCLOSURE                       R6 K13 [PROTO_8]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 MOVE                             R7 R4
       42 CALL                             R7 0 1
       43 JUMPIF                           R7 ; [+1]
       44 RETURN                           R6 1
       45 NEWTABLE                         R8 0 0
       47 DUPTABLE                         R9 K16 [{["__mode"] = "k"}]
       48 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       50 GETIMPORT                        R7 K18 [setmetatable]
       52 CALL                             R7 2 1
       53 DUPCLOSURE                       R8 K19 [PROTO_9]
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K20 [PROTO_15]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 RETURN                           R9 1
