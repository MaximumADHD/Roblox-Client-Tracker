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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R7 0 2
       28 MOVE                             R8 R4
       29 GETTABLEKS                       R9 R0 K3 ["dismissAfterSeconds"]
       31 SETLIST                          R7 R8 2 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R8 0 4
       45 MOVE                             R9 R5
       46 MOVE                             R10 R4
       47 GETTABLEKS                       R11 R0 K5 ["cpcChannel"]
       49 GETTABLEKS                       R12 R0 K6 ["cpcEvent"]
       51 SETLIST                          R8 R9 4 [1]
       53 CALL                             R6 2 0
       54 JUMPIF                           R1 ; [+2]
       55 LOADNIL                          R6
       56 RETURN                           R6 1
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K7 ["createElement"]
       60 GETUPVAL                         R7 2
       61 DUPTABLE                         R8 K12 [{"title", "Position", "AnchorPoint", "ZIndex"}]
       62 GETTABLEKS                       R9 R0 K13 ["message"]
       64 SETTABLEKS                       R9 R8 K8 ["title"]
       66 GETIMPORT                        R9 K16 [UDim2.new]
       68 LOADK                            R10 K17 [0.5]
       69 LOADN                            R11 0
       70 LOADN                            R12 1
       71 LOADN                            R13 224
       72 CALL                             R9 4 1
       73 SETTABLEKS                       R9 R8 K9 ["Position"]
       75 GETIMPORT                        R9 K19 [Vector2.new]
       77 LOADK                            R10 K17 [0.5]
       78 LOADN                            R11 1
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K10 ["AnchorPoint"]
       82 LOADN                            R9 100
       83 SETTABLEKS                       R9 R8 K11 ["ZIndex"]
       85 CALL                             R6 2 -1
       86 RETURN                           R6 -1

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
       36 DUPCLOSURE                       R6 K14 [PROTO_6]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R5
       40 RETURN                           R6 1
