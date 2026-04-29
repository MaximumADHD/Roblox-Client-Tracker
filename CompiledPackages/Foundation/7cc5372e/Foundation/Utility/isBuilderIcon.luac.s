PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 LOADB                            R1 0
        4 JUMPIFEQKS                       R0 K0 [""] ; [+9]
        6 LOADK                            R4 K1 ["[^%l%d%-]"]
        7 NAMECALL                         R2 R0 K2 ["find"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 GETTABLEKS                       R4 R2 K9 ["memoize"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 -1
       19 RETURN                           R4 -1
