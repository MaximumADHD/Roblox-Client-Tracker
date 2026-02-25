PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIF                           R1 ; [+27]
        3 GETTABLEKS                       R2 R0 K1 ["linkData"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R2 R0 K1 ["linkData"]
        8 GETTABLEKS                       R1 R2 K2 ["key"]
       10 JUMPIF                           R1 ; [+19]
       11 GETTABLEKS                       R2 R0 K3 ["index"]
       13 JUMPIFNOT                        R2 ; [+7]
       14 GETIMPORT                        R1 K6 [string.format]
       16 LOADK                            R2 K7 ["[%d]"]
       17 GETTABLEKS                       R3 R0 K3 ["index"]
       19 CALL                             R1 2 1
       20 JUMPIF                           R1 ; [+9]
       21 GETTABLEKS                       R1 R0 K8 ["className"]
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETIMPORT                        R1 K6 [string.format]
       26 LOADK                            R2 K9 ["[%s]"]
       27 GETTABLEKS                       R3 R0 K8 ["className"]
       29 CALL                             R1 2 1
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
