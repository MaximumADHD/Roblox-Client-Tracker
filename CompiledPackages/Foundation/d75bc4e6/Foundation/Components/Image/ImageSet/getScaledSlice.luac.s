PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getResolutionScale"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETTABLEKS                       R4 R0 K1 ["Min"]
        7 MUL                              R3 R4 R2
        8 GETTABLEKS                       R5 R0 K2 ["Max"]
       10 MUL                              R4 R5 R2
       11 GETIMPORT                        R5 K5 [Rect.new]
       13 MOVE                             R6 R3
       14 MOVE                             R7 R4
       15 CALL                             R5 2 1
       16 MOVE                             R0 R5
       17 ORK                              R5 R1 K6 [1]
       18 DIV                              R1 R5 R2
       19 DUPTABLE                         R3 K9 [{"center", "scale"}]
       20 SETTABLEKS                       R0 R3 K7 ["center"]
       22 SETTABLEKS                       R1 R3 K8 ["scale"]
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["FoundationImages"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
