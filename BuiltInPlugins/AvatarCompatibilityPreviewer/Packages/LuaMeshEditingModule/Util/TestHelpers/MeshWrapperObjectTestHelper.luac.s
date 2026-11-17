PROTO_0:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["_meshOrigin"]
       10 SETTABLEKS                       R0 R2 K3 ["instance"]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["positions"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["triangles"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_meshOrigin"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["instance"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["MeshPart"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Cube1"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["new"]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R3 K8 [CFrame.new]
       16 LOADN                            R4 0
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R3 3 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["MeshPart"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Cube2"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["new"]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R3 K8 [CFrame.new]
       16 LOADN                            R4 0
       17 LOADN                            R5 1
       18 LOADN                            R6 0
       19 CALL                             R3 3 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["MeshPart"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["Cube2"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 NEWTABLE                         R1 0 2
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K7 ["getSingleWrapper"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K8 ["getSecondWrapper"]
       19 CALL                             R3 0 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 GETTABLEKS                       R1 R1 K6 ["Workspace"]
       11 GETIMPORT                        R2 K8 [require]
       13 GETTABLEKS                       R3 R0 K9 ["Util"]
       15 GETTABLEKS                       R3 R3 K10 ["deepCopy"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R0 K11 ["Types"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R4 8 0
       25 NEWTABLE                         R5 0 8
       27 LOADK                            R6 K12 [{0, 0, 1}]
       28 LOADK                            R7 K13 [{0, 1, 1}]
       29 LOADK                            R8 K14 [{0, 0, 0}]
       30 LOADK                            R9 K15 [{0, 1, 0}]
       31 LOADK                            R10 K16 [{1, 0, 0}]
       32 LOADK                            R11 K17 [{1, 1, 0}]
       33 LOADK                            R12 K18 [{1, 0, 1}]
       34 LOADK                            R13 K19 [{1, 1, 1}]
       35 SETLIST                          R5 R6 8 [1]
       37 SETTABLEKS                       R5 R4 K20 ["positions"]
       39 NEWTABLE                         R5 0 12
       41 NEWTABLE                         R6 0 3
       43 LOADN                            R7 1
       44 LOADN                            R8 2
       45 LOADN                            R9 4
       46 SETLIST                          R6 R7 3 [1]
       48 NEWTABLE                         R7 0 3
       50 LOADN                            R8 1
       51 LOADN                            R9 3
       52 LOADN                            R10 4
       53 SETLIST                          R7 R8 3 [1]
       55 NEWTABLE                         R8 0 3
       57 LOADN                            R9 3
       58 LOADN                            R10 4
       59 LOADN                            R11 6
       60 SETLIST                          R8 R9 3 [1]
       62 NEWTABLE                         R9 0 3
       64 LOADN                            R10 3
       65 LOADN                            R11 5
       66 LOADN                            R12 6
       67 SETLIST                          R9 R10 3 [1]
       69 NEWTABLE                         R10 0 3
       71 LOADN                            R11 1
       72 LOADN                            R12 3
       73 LOADN                            R13 5
       74 SETLIST                          R10 R11 3 [1]
       76 NEWTABLE                         R11 0 3
       78 LOADN                            R12 1
       79 LOADN                            R13 5
       80 LOADN                            R14 7
       81 SETLIST                          R11 R12 3 [1]
       83 NEWTABLE                         R12 0 3
       85 LOADN                            R13 2
       86 LOADN                            R14 4
       87 LOADN                            R15 8
       88 SETLIST                          R12 R13 3 [1]
       90 NEWTABLE                         R13 0 3
       92 LOADN                            R14 4
       93 LOADN                            R15 6
       94 LOADN                            R16 8
       95 SETLIST                          R13 R14 3 [1]
       97 NEWTABLE                         R14 0 3
       99 LOADN                            R15 5
      100 LOADN                            R16 6
      101 LOADN                            R17 8
      102 SETLIST                          R14 R15 3 [1]
      104 NEWTABLE                         R15 0 3
      106 LOADN                            R16 5
      107 LOADN                            R17 7
      108 LOADN                            R18 8
      109 SETLIST                          R15 R16 3 [1]
      111 NEWTABLE                         R16 0 3
      113 LOADN                            R17 2
      114 LOADN                            R18 7
      115 LOADN                            R19 8
      116 SETLIST                          R16 R17 3 [1]
      118 NEWTABLE                         R17 0 3
      120 LOADN                            R18 1
      121 LOADN                            R19 2
      122 LOADN                            R20 7
      123 SETLIST                          R17 R18 3 [1]
      125 SETLIST                          R5 R6 12 [1]
      127 SETTABLEKS                       R5 R4 K21 ["triangles"]
      129 NEWTABLE                         R5 8 0
      131 SETTABLEKS                       R5 R5 K22 ["__index"]
      133 DUPCLOSURE                       R6 K23 [PROTO_0]
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R6 R5 K24 ["new"]
      137 DUPCLOSURE                       R6 K25 [PROTO_1]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R6 R5 K26 ["getVertices"]
      142 DUPCLOSURE                       R6 K27 [PROTO_2]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R6 R5 K28 ["getTriangleIndexData"]
      147 DUPCLOSURE                       R6 K29 [PROTO_3]
      148 SETTABLEKS                       R6 R5 K30 ["getMeshOrigin"]
      150 DUPCLOSURE                       R6 K31 [PROTO_4]
      151 SETTABLEKS                       R6 R5 K32 ["cleanup"]
      153 DUPCLOSURE                       R6 K33 [PROTO_5]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R5
      156 SETTABLEKS                       R6 R4 K34 ["getSingleWrapper"]
      158 DUPCLOSURE                       R6 K35 [PROTO_6]
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R5
      161 SETTABLEKS                       R6 R4 K36 ["getSecondWrapper"]
      163 DUPCLOSURE                       R6 K37 [PROTO_7]
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R6 R4 K38 ["getWrappers"]
      168 RETURN                           R4 1
