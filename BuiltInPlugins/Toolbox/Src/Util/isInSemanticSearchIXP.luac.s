PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DomainSearchAlgorithmName"]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+9]
        5 GETIMPORT                        R2 K3 [string.find]
        7 GETIMPORT                        R3 K5 [string.lower]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 LOADK                            R4 K6 ["semantic"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R4 R0 K0 ["getVariables"]
        2 CALL                             R4 1 1
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOT                        R3 ; [+11]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["find"]
        8 MOVE                             R5 R3
        9 DUPCLOSURE                       R6 K2 [PROTO_0]
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 RETURN                           R5 1
       16 LOADB                            R4 0
       17 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
