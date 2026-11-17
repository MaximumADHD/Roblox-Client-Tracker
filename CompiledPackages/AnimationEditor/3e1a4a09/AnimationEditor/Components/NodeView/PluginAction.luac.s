PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnTrigger"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
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
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R3 R3 K13 ["useEventConnection"]
       77 JUMPIFNOT                        R2 ; [+3]
       78 GETTABLEKS                       R4 R2 K14 ["Triggered"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R4
       82 NEWCLOSURE                       R5 P4
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R6 0 2
       86 MOVE                             R7 R2
       87 GETTABLEKS                       R8 R0 K15 ["OnTrigger"]
       89 SETLIST                          R6 R7 2 [1]
       91 CALL                             R3 3 0
       92 LOADNIL                          R3
       93 RETURN                           R3 1

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
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 NEWTABLE                         R6 0 0
       32 DUPTABLE                         R7 K13 [{["__mode"] = "k"}]
       33 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       35 GETIMPORT                        R5 K15 [setmetatable]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K16 [PROTO_0]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R7 K17 [PROTO_6]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 RETURN                           R7 1
