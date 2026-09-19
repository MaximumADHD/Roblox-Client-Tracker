PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+6]
        9 NEWTABLE                         R5 0 0
       11 NAMECALL                         R3 R1 K1 ["SetControlPoints"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K2 ["thickness"]
       17 SETTABLEKS                       R3 R1 K3 ["Thickness"]
       19 NEWTABLE                         R5 0 2
       21 GETIMPORT                        R6 K6 [Path2DControlPoint.new]
       23 GETIMPORT                        R7 K9 [UDim2.fromOffset]
       25 GETTABLEKS                       R8 R2 K10 ["from"]
       27 GETTABLEKS                       R8 R8 K11 ["X"]
       29 GETTABLEKS                       R9 R2 K10 ["from"]
       31 GETTABLEKS                       R9 R9 K12 ["Y"]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 2
       35 GETUPVAL                         R9 2
       36 CALL                             R6 3 1
       37 GETIMPORT                        R7 K6 [Path2DControlPoint.new]
       39 GETIMPORT                        R8 K9 [UDim2.fromOffset]
       41 GETTABLEKS                       R9 R2 K13 ["to"]
       43 GETTABLEKS                       R9 R9 K11 ["X"]
       45 GETTABLEKS                       R10 R2 K13 ["to"]
       47 GETTABLEKS                       R10 R10 K12 ["Y"]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R9 2
       51 GETUPVAL                         R10 2
       52 CALL                             R7 3 -1
       53 SETLIST                          R5 R6 -1 [1]
       55 NAMECALL                         R3 R1 K1 ["SetControlPoints"]
       57 CALL                             R3 2 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["observe"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useLayoutEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R2
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K3 ["createElement"]
       24 LOADK                            R4 K4 ["Path2D"]
       25 DUPTABLE                         R5 K8 [{"ref", "Color3", "ZIndex"}]
       26 SETTABLEKS                       R1 R5 K5 ["ref"]
       28 GETTABLEKS                       R6 R0 K9 ["color"]
       30 SETTABLEKS                       R6 R5 K6 ["Color3"]
       32 GETTABLEKS                       R6 R0 K10 ["zIndex"]
       34 SETTABLEKS                       R6 R5 K7 ["ZIndex"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [UDim2.new]
       23 CALL                             R3 0 1
       24 DUPCLOSURE                       R4 K12 [PROTO_2]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
