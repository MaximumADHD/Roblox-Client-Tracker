PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 NOT                              R1 R2
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["GetService"]
       12 LOADK                            R2 K1 ["RunService"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R1 R1 K2 ["IsEdit"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+1]
       18 MOVE                             R1 R0
       19 SETUPVAL                         R1 0
       20 GETUPVAL                         R1 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["isCli"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Services"]
       20 CALL                             R3 1 1
       21 LOADNIL                          R4
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CLOSEUPVALS                      R4
       27 RETURN                           R5 1
