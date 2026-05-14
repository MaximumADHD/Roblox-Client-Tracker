PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
        7 LOADNIL                          R1
        8 LOADK                            R2 K2 ["no instance selected"]
        9 RETURN                           R1 2
       10 LENGTH                           R1 R0
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+4]
       14 LOADNIL                          R1
       15 LOADK                            R2 K3 ["multiple selection not supported"]
       16 RETURN                           R1 2
       17 GETTABLEN                        R1 R0 1
       18 MOVE                             R2 R1
       19 LOADNIL                          R3
       20 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["External"]
       13 GETTABLEKS                       R2 R2 K8 ["SelectionService"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["getSelectionIfOneInstance"]
       22 RETURN                           R2 1
