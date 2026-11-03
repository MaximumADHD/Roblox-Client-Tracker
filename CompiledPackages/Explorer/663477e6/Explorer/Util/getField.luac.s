PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["fieldValues"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R3 R0 K0 ["datum"]
        7 GETTABLEKS                       R3 R3 K1 ["fieldValues"]
        9 GETTABLE                         R2 R3 R1
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Hooks"]
       11 GETTABLEKS                       R2 R2 K7 ["useVisibleExplorerNodeRange"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
