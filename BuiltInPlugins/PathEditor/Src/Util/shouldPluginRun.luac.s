PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["Parent"]
        6 GETTABLEKS                       R1 R1 K5 ["DebugFlags"]
        8 CALL                             R0 1 1
        9 GETTABLEKS                       R1 R0 K6 ["RunningUnderCLI"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 NAMECALL                         R1 R1 K7 ["IsRunning"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 0
       21 RETURN                           R1 1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
