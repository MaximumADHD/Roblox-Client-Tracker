PROTO_0:
        0 JUMPIF                           R0 ; [+11]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["shouldDebugWarnings"]
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["ixp was undefined"]
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 NAMECALL                         R3 R0 K4 ["isReady"]
       14 CALL                             R3 1 1
       15 JUMPIF                           R3 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 NAMECALL                         R4 R0 K5 ["getVariables"]
       20 CALL                             R4 1 1
       21 GETTABLE                         R3 R4 R1
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETTABLE                         R4 R3 R2
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADB                            R4 1
       26 RETURN                           R4 1
       27 LOADB                            R4 0
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DebugFlags"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
