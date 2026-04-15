PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["width"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADK                            R3 K1 ["forwardedRef"]
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["Ref"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K3 ["Dictionary"]
       18 GETTABLEKS                       R4 R5 K4 ["join"]
       20 MOVE                             R5 R0
       21 NEWTABLE                         R6 4 0
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R8 R9 K5 ["Axis"]
       26 GETTABLEKS                       R7 R8 K6 ["Vertical"]
       28 SETTABLEKS                       R7 R6 K7 ["axis"]
       30 GETIMPORT                        R7 K10 [UDim2.new]
       32 MOVE                             R8 R2
       33 GETIMPORT                        R9 K12 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 0
       37 CALL                             R9 2 -1
       38 CALL                             R7 -1 1
       39 SETTABLEKS                       R7 R6 K13 ["minimumSize"]
       41 SETTABLE                         R1 R6 R3
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K14 ["None"]
       45 SETTABLEKS                       R7 R6 K0 ["width"]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R5 R6 K15 ["createElement"]
       51 GETUPVAL                         R6 3
       52 MOVE                             R7 R4
       53 CALL                             R5 2 -1
       54 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Cryo"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["Roact"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETIMPORT                        R7 K1 [script]
       21 GETTABLEKS                       R6 R7 K2 ["Parent"]
       23 GETTABLEKS                       R5 R6 K7 ["FitFrameOnAxis"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K2 ["Parent"]
       32 GETTABLEKS                       R6 R7 K8 ["isRoact17"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R3 K9 ["forwardRef"]
       37 DUPCLOSURE                       R7 K10 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CALL                             R6 1 -1
       43 RETURN                           R6 -1
