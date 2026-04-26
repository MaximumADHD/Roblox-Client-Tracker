PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["omit"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K1 ["id"]
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R6 R0 K2 ["UI"]
       20 GETTABLEKS                       R5 R6 K8 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["InlineLayout"]
       24 GETTABLEKS                       R3 R4 K10 ["RenderableInlineElement"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R6 R0 K2 ["UI"]
       31 GETTABLEKS                       R5 R6 K8 ["Components"]
       33 GETTABLEKS                       R4 R5 K11 ["Image"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 1 0
       38 DUPCLOSURE                       R5 K12 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R6 K13 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R6 R4 K14 ["new"]
       46 RETURN                           R4 1
