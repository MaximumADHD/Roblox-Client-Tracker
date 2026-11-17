PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["X"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R0 R0 K2 ["toBeGreaterThan"]
        9 LOADN                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
       15 GETTABLEKS                       R1 R1 K3 ["Y"]
       17 CALL                             R0 1 1
       18 GETTABLEKS                       R0 R0 K2 ["toBeGreaterThan"]
       20 LOADN                            R1 0
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K0 ["expect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["JestGlobals"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expect"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["ReactTestingLibrary"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K10 ["waitFor"]
       23 DUPCLOSURE                       R6 K11 [PROTO_1]
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R3
       26 RETURN                           R6 1
