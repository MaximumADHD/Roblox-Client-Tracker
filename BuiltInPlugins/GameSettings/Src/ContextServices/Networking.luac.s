PROTO_0:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"impl"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["new"]
        5 GETVARARGS                       R2 -1
        6 CALL                             R1 -1 1
        7 SETTABLEKS                       R1 R0 K0 ["impl"]
        9 GETUPVAL                         R3 1
       10 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["impl"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Packages"]
       13 GETTABLEKS                       R3 R4 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R1 K8 ["ContextItem"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K7 ["ContextServices"]
       26 GETTABLEKS                       R4 R5 K10 ["NetworkingImpl"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R7 K1 [script]
       31 GETTABLEKS                       R6 R7 K11 ["Name"]
       33 NAMECALL                         R4 R2 K12 ["extend"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R5 K13 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R4 K14 ["new"]
       41 DUPCLOSURE                       R5 K15 [PROTO_1]
       42 SETTABLEKS                       R5 R4 K16 ["get"]
       44 RETURN                           R4 1
