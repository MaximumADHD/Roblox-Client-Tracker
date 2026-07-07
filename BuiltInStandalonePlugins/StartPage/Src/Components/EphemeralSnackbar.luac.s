PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETIMPORT                        R1 K2 [task.delay]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K3 ["dismissAfterSeconds"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K4 ["current"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["cpcChannel"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["cpcEvent"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R1 R0 K3 ["Connect"]
       15 CALL                             R1 3 1
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U4
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 FASTCALL1                        ASSERT R2 ; [+2]
        6 GETIMPORT                        R1 K1 [assert]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["useState"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 2
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["useRef"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R4
       38 GETTABLEKS                       R9 R0 K5 ["dismissAfterSeconds"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 4
       54 MOVE                             R9 R5
       55 MOVE                             R10 R4
       56 GETTABLEKS                       R11 R0 K7 ["cpcChannel"]
       58 GETTABLEKS                       R12 R0 K8 ["cpcEvent"]
       60 SETLIST                          R8 R9 4 [1]
       62 CALL                             R6 2 0
       63 JUMPIF                           R1 ; [+2]
       64 LOADNIL                          R6
       65 RETURN                           R6 1
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K9 ["createElement"]
       69 GETUPVAL                         R7 4
       70 DUPTABLE                         R8 K15 [{["title"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 100}]
       71 GETTABLEKS                       R9 R0 K16 ["message"]
       73 SETTABLEKS                       R9 R8 K10 ["title"]
       75 GETIMPORT                        R9 K19 [UDim2.new]
       77 LOADK                            R10 K20 [0.5]
       78 LOADN                            R11 0
       79 LOADN                            R12 1
       80 LOADN                            R13 -32
       81 CALL                             R9 4 1
       82 SETTABLEKS                       R9 R8 K11 ["Position"]
       84 GETIMPORT                        R9 K22 [Vector2.new]
       86 LOADK                            R10 K20 [0.5]
       87 LOADN                            R11 1
       88 CALL                             R9 2 1
       89 SETTABLEKS                       R9 R8 K12 ["AnchorPoint"]
       91 CALL                             R6 2 -1
       92 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["CrossPluginCommunication"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Snackbar"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["SharedFlags"]
       42 GETTABLEKS                       R7 R7 K15 ["getFFlagStartPageTrustedConnectionSnackbar"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["SharedFlags"]
       51 GETTABLEKS                       R8 R8 K16 ["getFFlagStartPageSaveAsCopy"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K17 [PROTO_6]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 RETURN                           R8 1
