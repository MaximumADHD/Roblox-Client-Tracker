PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R0 K1 ["router"]
        4 GETTABLEKS                       R4 R0 K2 ["getChildNavigation"]
        6 GETTABLEKS                       R6 R2 K3 ["routes"]
        8 GETTABLEKS                       R7 R2 K4 ["index"]
       10 GETTABLE                         R5 R6 R7
       11 MOVE                             R6 R4
       12 GETTABLEKS                       R7 R5 K5 ["key"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R7 R3 K6 ["getScreenOptions"]
       17 MOVE                             R8 R6
       18 MOVE                             R9 R1
       19 CALL                             R7 2 -1
       20 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
