PROTO_0:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R4 R0 K0 ["get"]
        5 CALL                             R4 0 1
        6 JUMPIFEQ                         R4 R2 ; [+6]
        8 MOVE                             R4 R1
        9 MOVE                             R5 R2
       10 CALL                             R4 1 0
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 LOADB                            R4 0
       14 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Observable"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["setObservableIfChanged"]
       21 RETURN                           R2 1
