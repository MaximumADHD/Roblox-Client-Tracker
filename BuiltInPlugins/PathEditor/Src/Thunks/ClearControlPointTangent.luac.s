PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETUPVAL                         R2 0
        6 LOADN                            R3 0
        7 JUMPIFLE                         R2 R3 ; [+7]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R4 R1 K2 ["ControlPoints"]
       12 LENGTH                           R3 R4
       13 JUMPIFNOTLT                      R3 R2 ; [+2]
       15 RETURN                           R1 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R1 K3 ["SelectedObject"]
       19 NAMECALL                         R3 R3 K4 ["GetControlPoints"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R1 K5 ["ControlPointStates"]
       24 GETUPVAL                         R5 1
       25 GETUPVAL                         R6 2
       26 CALL                             R5 1 1
       27 GETTABLE                         R7 R3 R2
       28 GETTABLE                         R6 R7 R5
       29 GETIMPORT                        R7 K8 [UDim2.new]
       31 CALL                             R7 0 1
       32 JUMPIFNOTEQ                      R6 R7 ; [+2]
       34 RETURN                           R1 1
       35 GETUPVAL                         R8 3
       36 LOADK                            R9 K9 ["Removed Tangent"]
       37 CALL                             R8 1 -1
       38 NAMECALL                         R6 R0 K10 ["dispatch"]
       40 CALL                             R6 -1 0
       41 GETTABLE                         R6 R3 R2
       42 GETIMPORT                        R7 K8 [UDim2.new]
       44 CALL                             R7 0 1
       45 SETTABLE                         R7 R6 R5
       46 GETTABLE                         R6 R4 R2
       47 GETTABLEKS                       R6 R6 K11 ["Sharp"]
       49 JUMPIF                           R6 ; [+6]
       50 GETUPVAL                         R8 4
       51 MOVE                             R9 R2
       52 CALL                             R8 1 -1
       53 NAMECALL                         R6 R0 K10 ["dispatch"]
       55 CALL                             R6 -1 0
       56 GETTABLEKS                       R6 R1 K3 ["SelectedObject"]
       58 MOVE                             R8 R2
       59 GETTABLE                         R9 R3 R2
       60 NAMECALL                         R6 R6 K12 ["UpdateControlPoint"]
       62 CALL                             R6 3 0
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R7 R1 K13 ["SelectedTangentSide"]
       66 JUMPIFNOTEQ                      R6 R7 ; [+7]
       68 GETUPVAL                         R8 5
       69 LOADNIL                          R9
       70 CALL                             R8 1 -1
       71 NAMECALL                         R6 R0 K10 ["dispatch"]
       73 CALL                             R6 -1 0
       74 GETUPVAL                         R8 3
       75 CALL                             R8 0 -1
       76 NAMECALL                         R6 R0 K10 ["dispatch"]
       78 CALL                             R6 -1 0
       79 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Thunks"]
       22 GETTABLEKS                       R3 R3 K8 ["RecordChangeHistory"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["SelectTangentSide"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["ToggleSharp"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["getTangentNameForSide"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K14 [PROTO_1]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 RETURN                           R6 1
