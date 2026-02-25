PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["focusedRootObservable"]
        2 GETTABLEKS                       R2 R3 K1 ["get"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R1 R2 K2 ["children"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+3]
        9 LOADN                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K4 ["treeDescendantCount"]
       13 SUBK                             R2 R3 K3 [1]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
