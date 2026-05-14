PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWrappers"]
        3 CALL                             R0 0 1
        4 GETTABLEN                        R1 R0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 LOADK                            R5 K2 ["Cube1"]
       11 NAMECALL                         R3 R3 K3 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 LOADK                            R6 K4 ["Cube2"]
       16 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       18 CALL                             R4 2 1
       19 NAMECALL                         R5 R4 K5 ["Destroy"]
       21 CALL                             R5 1 0
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R1
       25 SETLIST                          R7 R8 1 [1]
       27 NAMECALL                         R5 R2 K6 ["init"]
       29 CALL                             R5 2 0
       30 MOVE                             R5 R3
       31 MOVE                             R6 R2
       32 RETURN                           R5 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getWrappers"]
        3 CALL                             R0 0 1
        4 GETTABLEN                        R1 R0 1
        5 GETTABLEN                        R2 R0 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["new"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 2
       11 LOADK                            R6 K2 ["Cube1"]
       12 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       14 CALL                             R4 2 1
       15 LOADK                            R5 K2 ["Cube1"]
       16 SETTABLEKS                       R5 R4 K4 ["Name"]
       18 GETIMPORT                        R5 K6 [Instance.new]
       20 LOADK                            R6 K7 ["WrapLayer"]
       21 CALL                             R5 1 1
       22 LOADK                            R6 K2 ["Cube1"]
       23 SETTABLEKS                       R6 R5 K4 ["Name"]
       25 SETTABLEKS                       R4 R5 K8 ["Parent"]
       27 GETUPVAL                         R6 2
       28 LOADK                            R8 K9 ["Cube2"]
       29 NAMECALL                         R6 R6 K3 ["FindFirstChild"]
       31 CALL                             R6 2 1
       32 GETIMPORT                        R7 K6 [Instance.new]
       34 LOADK                            R8 K10 ["Motor6D"]
       35 CALL                             R7 1 1
       36 SETTABLEKS                       R4 R7 K11 ["Part0"]
       38 SETTABLEKS                       R6 R7 K12 ["Part1"]
       40 LOADK                            R8 K9 ["Cube2"]
       41 SETTABLEKS                       R8 R6 K4 ["Name"]
       43 SETTABLEKS                       R6 R7 K8 ["Parent"]
       45 NEWTABLE                         R10 0 2
       47 MOVE                             R11 R1
       48 MOVE                             R12 R2
       49 SETLIST                          R10 R11 2 [1]
       51 NAMECALL                         R8 R3 K13 ["init"]
       53 CALL                             R8 2 0
       54 MOVE                             R8 R4
       55 MOVE                             R9 R6
       56 MOVE                             R10 R3
       57 RETURN                           R8 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K4 [require]
        9 GETIMPORT                        R3 K6 [script]
       11 GETTABLEKS                       R3 R3 K7 ["Parent"]
       13 GETTABLEKS                       R3 R3 K8 ["MeshWrapperObjectTestHelper"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K6 [script]
       20 GETTABLEKS                       R4 R4 K7 ["Parent"]
       22 GETTABLEKS                       R4 R4 K7 ["Parent"]
       24 GETTABLEKS                       R4 R4 K7 ["Parent"]
       26 GETTABLEKS                       R4 R4 K9 ["MeshEditingContexts"]
       28 GETTABLEKS                       R4 R4 K10 ["MeshEditingContextBase"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K11 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R2 K12 ["createContextWithSingleWrapper"]
       37 DUPCLOSURE                       R4 K13 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R2 K14 ["createContextWithTwoWrappers"]
       43 RETURN                           R2 1
