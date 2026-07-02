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
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["useState"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useRef"]
       14 LOADNIL                          R4
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R4
       35 GETTABLEKS                       R9 R0 K5 ["dismissAfterSeconds"]
       37 SETLIST                          R7 R8 2 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R8 0 4
       51 MOVE                             R9 R5
       52 MOVE                             R10 R4
       53 GETTABLEKS                       R11 R0 K7 ["cpcChannel"]
       55 GETTABLEKS                       R12 R0 K8 ["cpcEvent"]
       57 SETLIST                          R8 R9 4 [1]
       59 CALL                             R6 2 0
       60 JUMPIF                           R1 ; [+2]
       61 LOADNIL                          R6
       62 RETURN                           R6 1
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K9 ["createElement"]
       66 GETUPVAL                         R7 3
       67 DUPTABLE                         R8 K15 [{["title"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 100}]
       68 GETTABLEKS                       R9 R0 K16 ["message"]
       70 SETTABLEKS                       R9 R8 K10 ["title"]
       72 GETIMPORT                        R9 K19 [UDim2.new]
       74 LOADK                            R10 K20 [0.5]
       75 LOADN                            R11 0
       76 LOADN                            R12 1
       77 LOADN                            R13 -32
       78 CALL                             R9 4 1
       79 SETTABLEKS                       R9 R8 K11 ["Position"]
       81 GETIMPORT                        R9 K22 [Vector2.new]
       83 LOADK                            R10 K20 [0.5]
       84 LOADN                            R11 1
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K12 ["AnchorPoint"]
       88 CALL                             R6 2 -1
       89 RETURN                           R6 -1

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
       45 DUPCLOSURE                       R7 K16 [PROTO_6]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 RETURN                           R7 1
