PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["positions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["triangles"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["instance"]
       10 DUPCLOSURE                       R2 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R2 R1 K4 ["getVertices"]
       15 DUPCLOSURE                       R2 K5 [PROTO_1]
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R2 R1 K6 ["getTriangleIndexData"]
       20 DUPCLOSURE                       R2 K7 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K8 ["getMeshOrigin"]
       23 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["positions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["triangles"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 1
        4 LOADN                            R4 0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["instance"]
       10 DUPCLOSURE                       R2 K3 [PROTO_4]
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R2 R1 K4 ["getVertices"]
       15 DUPCLOSURE                       R2 K5 [PROTO_5]
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R2 R1 K6 ["getTriangleIndexData"]
       20 DUPCLOSURE                       R2 K7 [PROTO_6]
       21 SETTABLEKS                       R2 R1 K8 ["getMeshOrigin"]
       23 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["MeshPart"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Cube1"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K3 ["MeshPart"]
       13 CALL                             R1 1 1
       14 LOADK                            R2 K7 ["Cube2"]
       15 SETTABLEKS                       R2 R1 K5 ["Name"]
       17 GETUPVAL                         R2 0
       18 SETTABLEKS                       R2 R1 K6 ["Parent"]
       20 NEWTABLE                         R2 0 2
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K1 ["new"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K1 ["new"]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 -1
       32 SETLIST                          R2 R3 -1 [1]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETIMPORT                        R2 K6 [script]
        9 GETTABLEKS                       R2 R2 K7 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["deepCopy"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 NEWTABLE                         R3 0 8
       20 LOADK                            R4 K9 [{0, 0, 1}]
       21 LOADK                            R5 K10 [{0, 1, 1}]
       22 LOADK                            R6 K11 [{0, 0, 0}]
       23 LOADK                            R7 K12 [{0, 1, 0}]
       24 LOADK                            R8 K13 [{1, 0, 0}]
       25 LOADK                            R9 K14 [{1, 1, 0}]
       26 LOADK                            R10 K15 [{1, 0, 1}]
       27 LOADK                            R11 K16 [{1, 1, 1}]
       28 SETLIST                          R3 R4 8 [1]
       30 SETTABLEKS                       R3 R2 K17 ["positions"]
       32 NEWTABLE                         R3 0 12
       34 NEWTABLE                         R4 0 3
       36 LOADN                            R5 1
       37 LOADN                            R6 2
       38 LOADN                            R7 4
       39 SETLIST                          R4 R5 3 [1]
       41 NEWTABLE                         R5 0 3
       43 LOADN                            R6 1
       44 LOADN                            R7 3
       45 LOADN                            R8 4
       46 SETLIST                          R5 R6 3 [1]
       48 NEWTABLE                         R6 0 3
       50 LOADN                            R7 3
       51 LOADN                            R8 4
       52 LOADN                            R9 6
       53 SETLIST                          R6 R7 3 [1]
       55 NEWTABLE                         R7 0 3
       57 LOADN                            R8 3
       58 LOADN                            R9 5
       59 LOADN                            R10 6
       60 SETLIST                          R7 R8 3 [1]
       62 NEWTABLE                         R8 0 3
       64 LOADN                            R9 1
       65 LOADN                            R10 3
       66 LOADN                            R11 5
       67 SETLIST                          R8 R9 3 [1]
       69 NEWTABLE                         R9 0 3
       71 LOADN                            R10 1
       72 LOADN                            R11 5
       73 LOADN                            R12 7
       74 SETLIST                          R9 R10 3 [1]
       76 NEWTABLE                         R10 0 3
       78 LOADN                            R11 2
       79 LOADN                            R12 4
       80 LOADN                            R13 8
       81 SETLIST                          R10 R11 3 [1]
       83 NEWTABLE                         R11 0 3
       85 LOADN                            R12 4
       86 LOADN                            R13 6
       87 LOADN                            R14 8
       88 SETLIST                          R11 R12 3 [1]
       90 NEWTABLE                         R12 0 3
       92 LOADN                            R13 5
       93 LOADN                            R14 6
       94 LOADN                            R15 8
       95 SETLIST                          R12 R13 3 [1]
       97 NEWTABLE                         R13 0 3
       99 LOADN                            R14 5
      100 LOADN                            R15 7
      101 LOADN                            R16 8
      102 SETLIST                          R13 R14 3 [1]
      104 NEWTABLE                         R14 0 3
      106 LOADN                            R15 2
      107 LOADN                            R16 7
      108 LOADN                            R17 8
      109 SETLIST                          R14 R15 3 [1]
      111 NEWTABLE                         R15 0 3
      113 LOADN                            R16 1
      114 LOADN                            R17 2
      115 LOADN                            R18 7
      116 SETLIST                          R15 R16 3 [1]
      118 SETLIST                          R3 R4 12 [1]
      120 SETTABLEKS                       R3 R2 K18 ["triangles"]
      122 NEWTABLE                         R3 2 0
      124 SETTABLEKS                       R3 R3 K19 ["__index"]
      126 DUPCLOSURE                       R4 K20 [PROTO_3]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 SETTABLEKS                       R4 R3 K21 ["new"]
      132 NEWTABLE                         R4 2 0
      134 SETTABLEKS                       R4 R4 K19 ["__index"]
      136 DUPCLOSURE                       R5 K22 [PROTO_7]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R2
      140 SETTABLEKS                       R5 R4 K21 ["new"]
      142 DUPCLOSURE                       R5 K23 [PROTO_8]
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R5 R2 K24 ["getWrappers"]
      148 RETURN                           R2 1
