PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["omit"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["id"]
        7 LOADK                            R5 K2 ["EngineTags"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Components"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K1 [script]
       13 LOADK                            R4 K5 ["InlineLayoutElements"]
       14 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [require]
       19 GETTABLEKS                       R4 R1 K8 ["Dash"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R2 K10 ["BaseTextElement"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R4 K11 ["Text"]
       34 NEWTABLE                         R7 1 0
       36 DUPCLOSURE                       R8 K12 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 SETGLOBAL                        R8 K13 ["mapProps"]
       40 DUPCLOSURE                       R8 K14 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R8 R7 K15 ["new"]
       45 RETURN                           R7 1
