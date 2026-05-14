PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSingleWrapper"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 CALL                             R1 0 1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R0
       11 SETLIST                          R4 R5 1 [1]
       13 NAMECALL                         R2 R1 K2 ["init"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K3 ["instance"]
       18 MOVE                             R3 R1
       19 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSingleWrapper"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["getSecondWrapper"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["new"]
       11 CALL                             R2 0 1
       12 GETIMPORT                        R3 K4 [Instance.new]
       14 LOADK                            R4 K5 ["WrapLayer"]
       15 CALL                             R3 1 1
       16 LOADK                            R4 K6 ["Cube1"]
       17 SETTABLEKS                       R4 R3 K7 ["Name"]
       19 GETTABLEKS                       R4 R0 K8 ["instance"]
       21 SETTABLEKS                       R4 R3 K9 ["Parent"]
       23 GETIMPORT                        R4 K4 [Instance.new]
       25 LOADK                            R5 K10 ["Motor6D"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R0 K8 ["instance"]
       29 SETTABLEKS                       R5 R4 K11 ["Part0"]
       31 GETTABLEKS                       R5 R1 K8 ["instance"]
       33 SETTABLEKS                       R5 R4 K12 ["Part1"]
       35 GETTABLEKS                       R5 R1 K8 ["instance"]
       37 SETTABLEKS                       R5 R4 K9 ["Parent"]
       39 NEWTABLE                         R7 0 2
       41 MOVE                             R8 R0
       42 MOVE                             R9 R1
       43 SETLIST                          R7 R8 2 [1]
       45 NAMECALL                         R5 R2 K13 ["init"]
       47 CALL                             R5 2 0
       48 GETTABLEKS                       R5 R0 K8 ["instance"]
       50 GETTABLEKS                       R6 R1 K8 ["instance"]
       52 MOVE                             R7 R2
       53 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["TestHelpers"]
       13 GETTABLEKS                       R2 R2 K8 ["MeshWrapperObjectTestHelper"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["MeshEditingContexts"]
       20 GETTABLEKS                       R3 R3 K10 ["MeshEditingContextBase"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K12 ["createContextWithSingleWrapper"]
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K14 ["createContextWithTwoWrappers"]
       35 RETURN                           R3 1
