PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["AnchorPoint"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R2 R3 K1 ["toEqual"]
        6 GETTABLEKS                       R3 R1 K0 ["AnchorPoint"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R2 R3 K3 ["toBe"]
       15 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R0 K4 ["Position"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R2 R3 K3 ["toBe"]
       24 GETTABLEKS                       R3 R1 K4 ["Position"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R4 R0 K5 ["Visible"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R2 R3 K3 ["toBe"]
       33 GETTABLEKS                       R3 R1 K5 ["Visible"]
       35 CALL                             R2 1 0
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R4 R0 K6 ["ZIndex"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R2 R3 K3 ["toBe"]
       42 GETTABLEKS                       R3 R1 K6 ["ZIndex"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["JestGlobals"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactTestingLibrary"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R3 K10 ["expect"]
       26 DUPCLOSURE                       R6 K11 [PROTO_0]
       27 CAPTURE                          VAL R5
       28 RETURN                           R6 1
