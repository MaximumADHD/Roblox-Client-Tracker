PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R3 K3 [script]
        4 GETTABLEKS                       R2 R3 K4 ["Parent"]
        6 GETTABLEKS                       R1 R2 K5 ["DebugFlags"]
        8 CALL                             R0 1 1
        9 GETTABLEKS                       R1 R0 K6 ["RunningUnderCLI"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K8 [game]
       17 LOADK                            R3 K9 ["DebugR15MigratorPlugin"]
       18 NAMECALL                         R1 R1 K10 ["GetFastFlag"]
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 LOADB                            R1 1
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
