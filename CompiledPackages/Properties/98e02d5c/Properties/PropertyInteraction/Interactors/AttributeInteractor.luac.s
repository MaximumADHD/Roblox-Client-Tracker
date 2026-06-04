PROTO_0:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R5 R1 K0 ["name"]
        3 NAMECALL                         R3 R0 K1 ["GetAttribute"]
        5 CALL                             R3 2 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R5 R1 K0 ["name"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["SetAttribute"]
        5 CALL                             R3 3 0
        6 LOADB                            R3 1
        7 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["name"]
        2 NAMECALL                         R3 R0 K1 ["GetAttribute"]
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["InteractorTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_1]
       23 DUPCLOSURE                       R5 K11 [PROTO_2]
       24 DUPTABLE                         R6 K15 [{"read", "write", "has"}]
       25 SETTABLEKS                       R3 R6 K12 ["read"]
       27 SETTABLEKS                       R4 R6 K13 ["write"]
       29 SETTABLEKS                       R5 R6 K14 ["has"]
       31 RETURN                           R6 1
