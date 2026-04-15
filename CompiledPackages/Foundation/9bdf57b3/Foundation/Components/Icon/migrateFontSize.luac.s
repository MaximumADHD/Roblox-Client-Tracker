PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["Size"]
        2 GETTABLEKS                       R2 R3 K1 ["Size_100"]
        4 GETTABLEKS                       R4 R1 K0 ["Size"]
        6 GETTABLEKS                       R3 R4 K2 ["Size_600"]
        8 GETTABLEKS                       R5 R1 K0 ["Size"]
       10 GETTABLEKS                       R4 R5 K3 ["Size_900"]
       12 JUMPIFNOTLE                      R3 R0 ; [+4]
       14 JUMPIFNOTLE                      R0 R4 ; [+2]
       16 MOVE                             R0 R3
       17 DIV                              R7 R0 R2
       18 FASTCALL1                        MATH_ROUND R7 ; [+2]
       19 GETIMPORT                        R6 K6 [math.round]
       21 CALL                             R6 1 1
       22 MUL                              R5 R6 R2
       23 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Providers"]
       11 GETTABLEKS                       R3 R4 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 RETURN                           R2 1
