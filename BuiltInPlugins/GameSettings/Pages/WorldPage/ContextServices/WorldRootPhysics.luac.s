PROTO_0:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"impl"}]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["new"]
        5 GETVARARGS                       R2 -1
        6 CALL                             R1 -1 1
        7 SETTABLEKS                       R1 R0 K0 ["impl"]
        9 GETUPVAL                         R3 1
       10 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [setmetatable]
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["impl"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       26 GETTABLEKS                       R3 R2 K8 ["ContextItem"]
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Controllers"]
       32 GETTABLEKS                       R5 R5 K10 ["WorldRootPhysicsController"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K11 ["Name"]
       39 NAMECALL                         R5 R3 K12 ["extend"]
       41 CALL                             R5 2 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R6 R5 K14 ["new"]
       47 DUPCLOSURE                       R6 K15 [PROTO_1]
       48 SETTABLEKS                       R6 R5 K16 ["get"]
       50 RETURN                           R5 1
