PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["omit"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["id"]
        7 LOADK                            R5 K2 ["TextVariant"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETGLOBAL                        R4 K1 ["mapProps"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["InlineLayout"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R0 K7 ["Dash"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R1 K9 ["InlineLayoutElements"]
       27 GETTABLEKS                       R5 R6 K10 ["BaseTextElement"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K11 ["Text"]
       32 NEWTABLE                         R6 1 0
       34 DUPCLOSURE                       R7 K12 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 SETGLOBAL                        R7 K13 ["mapProps"]
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K15 ["new"]
       43 RETURN                           R6 1
