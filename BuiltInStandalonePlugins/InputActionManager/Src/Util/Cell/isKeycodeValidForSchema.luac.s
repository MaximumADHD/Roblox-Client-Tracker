PROTO_0:
        0 GETTABLE                         R4 R3 R0
        1 JUMPIF                           R4 ; [+2]
        2 LOADB                            R5 0
        3 RETURN                           R5 1
        4 GETTABLEKS                       R6 R1 K0 ["Name"]
        6 GETTABLE                         R5 R4 R6
        7 JUMPIF                           R5 ; [+2]
        8 LOADB                            R6 0
        9 RETURN                           R6 1
       10 GETIMPORT                        R7 K3 [table.find]
       12 MOVE                             R8 R5
       13 MOVE                             R9 R2
       14 CALL                             R7 2 1
       15 JUMPIFNOTEQKNIL                  R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
