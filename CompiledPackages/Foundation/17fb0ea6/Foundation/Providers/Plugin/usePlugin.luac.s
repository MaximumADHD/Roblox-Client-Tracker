PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["None"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["useContext"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K4 ["Parent"]
       22 GETTABLEKS                       R5 R6 K9 ["PluginContext"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
