PROTO_0:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["createElement"]
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R3 0
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K2 ["render"]
       19 MOVE                             R3 R1
       20 DUPTABLE                         R4 K4 [{"container"}]
       21 GETUPVAL                         R5 5
       22 SETTABLEKS                       R5 R4 K3 ["container"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["join"]
        3 MOVE                             R4 R1
        4 JUMPIF                           R4 ; [+2]
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R2
        8 JUMPIF                           R5 ; [+2]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["createElement"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R3
       17 CALL                             R4 2 1
       18 GETIMPORT                        R5 K4 [Instance.new]
       20 LOADK                            R6 K5 ["ScreenGui"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 2
       23 SETTABLEKS                       R6 R5 K6 ["Parent"]
       25 GETIMPORT                        R6 K4 [Instance.new]
       27 LOADK                            R7 K7 ["Frame"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K10 [UDim2.fromOffset]
       31 LOADN                            R8 100
       32 LOADN                            R9 100
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K11 ["Position"]
       36 GETIMPORT                        R7 K10 [UDim2.fromOffset]
       38 LOADN                            R8 232
       39 LOADN                            R9 232
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K12 ["Size"]
       43 SETTABLEKS                       R5 R6 K6 ["Parent"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K13 ["render"]
       48 MOVE                             R8 R4
       49 DUPTABLE                         R9 K15 [{"container"}]
       50 SETTABLEKS                       R6 R9 K14 ["container"]
       52 CALL                             R7 2 1
       53 DUPTABLE                         R8 K18 [{"container", "rerender", "destroy"}]
       54 GETTABLEKS                       R9 R7 K14 ["container"]
       56 SETTABLEKS                       R9 R8 K14 ["container"]
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          REF R3
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R9 R8 K16 ["rerender"]
       67 NEWCLOSURE                       R9 P1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R9 R8 K17 ["destroy"]
       72 CLOSEUPVALS                      R3
       73 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dev"]
       23 GETTABLEKS                       R5 R5 K10 ["ReactTestingLibrary"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K12 [game]
       28 LOADK                            R7 K13 ["CoreGui"]
       29 NAMECALL                         R5 R5 K14 ["GetService"]
       31 CALL                             R5 2 1
       32 NEWTABLE                         R6 1 0
       34 DUPCLOSURE                       R7 K15 [PROTO_2]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R7 R6 K16 ["setupTest"]
       41 RETURN                           R6 1
