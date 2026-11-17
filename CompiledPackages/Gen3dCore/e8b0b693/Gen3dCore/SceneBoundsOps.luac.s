PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETIMPORT                        R1 K2 [CFrame.new]
        5 LOADN                            R2 0
        6 GETTABLEKS                       R5 R0 K4 ["Size"]
        8 GETTABLEKS                       R5 R5 K5 ["Y"]
       10 MINUS                            R4 R5
       11 DIVK                             R3 R4 K3 [2]
       12 LOADN                            R4 0
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K6 ["PivotOffset"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETIMPORT                        R1 K2 [CFrame.new]
        8 LOADN                            R2 0
        9 GETTABLEKS                       R5 R0 K4 ["Size"]
       11 GETTABLEKS                       R5 R5 K5 ["Y"]
       13 MINUS                            R4 R5
       14 DIVK                             R3 R4 K3 [2]
       15 LOADN                            R4 0
       16 CALL                             R1 3 1
       17 SETTABLEKS                       R1 R0 K6 ["PivotOffset"]
       19 NAMECALL                         R1 R0 K7 ["GetPivot"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R1 R1 K8 ["Position"]
       24 RETURN                           R1 1
       25 GETTABLEKS                       R1 R0 K8 ["Position"]
       27 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+30]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETIMPORT                        R2 K2 [CFrame.new]
        8 LOADN                            R3 0
        9 GETTABLEKS                       R6 R0 K4 ["Size"]
       11 GETTABLEKS                       R6 R6 K5 ["Y"]
       13 MINUS                            R5 R6
       14 DIVK                             R4 R5 K3 [2]
       15 LOADN                            R5 0
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R0 K6 ["PivotOffset"]
       19 GETIMPORT                        R5 K2 [CFrame.new]
       21 MOVE                             R6 R1
       22 CALL                             R5 1 1
       23 NAMECALL                         R6 R0 K7 ["GetPivot"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R6 R6 K8 ["Rotation"]
       28 MUL                              R4 R5 R6
       29 NAMECALL                         R2 R0 K9 ["PivotTo"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0
       33 SETTABLEKS                       R1 R0 K10 ["Position"]
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+42]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETIMPORT                        R2 K2 [CFrame.new]
        8 LOADN                            R3 0
        9 GETTABLEKS                       R6 R0 K4 ["Size"]
       11 GETTABLEKS                       R6 R6 K5 ["Y"]
       13 MINUS                            R5 R6
       14 DIVK                             R4 R5 K3 [2]
       15 LOADN                            R5 0
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R0 K6 ["PivotOffset"]
       19 NAMECALL                         R2 R0 K7 ["GetPivot"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R1 R0 K4 ["Size"]
       24 GETUPVAL                         R3 0
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+13]
       27 GETIMPORT                        R3 K2 [CFrame.new]
       29 LOADN                            R4 0
       30 GETTABLEKS                       R7 R0 K4 ["Size"]
       32 GETTABLEKS                       R7 R7 K5 ["Y"]
       34 MINUS                            R6 R7
       35 DIVK                             R5 R6 K3 [2]
       36 LOADN                            R6 0
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R0 K6 ["PivotOffset"]
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R0 K8 ["PivotTo"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 SETTABLEKS                       R1 R0 K4 ["Size"]
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Flags"]
        9 GETTABLEKS                       R1 R1 K6 ["getFFlagGen3dSceneBoundsBottomPivot"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K7 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R0
       16 DUPCLOSURE                       R3 K9 [PROTO_2]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R4 K10 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 DUPTABLE                         R5 K15 [{"updatePivot", "getPosition", "setPosition", "setSize"}]
       21 SETTABLEKS                       R1 R5 K11 ["updatePivot"]
       23 SETTABLEKS                       R2 R5 K12 ["getPosition"]
       25 SETTABLEKS                       R3 R5 K13 ["setPosition"]
       27 SETTABLEKS                       R4 R5 K14 ["setSize"]
       29 RETURN                           R5 1
