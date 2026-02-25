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
       15 GETIMPORT                        R1 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K4 ["Parent"]
       21 GETTABLEKS                       R2 R3 K7 ["hasInternalPermission"]
       23 CALL                             R1 1 1
       24 MOVE                             R2 R1
       25 CALL                             R2 0 1
       26 JUMPIF                           R2 ; [+2]
       27 LOADB                            R2 0
       28 RETURN                           R2 1
       29 GETIMPORT                        R2 K9 [game]
       31 LOADK                            R4 K10 ["NestedPackagePublisherPlugin"]
       32 NAMECALL                         R2 R2 K11 ["GetFastFlag"]
       34 CALL                             R2 2 1
       35 JUMPIF                           R2 ; [+2]
       36 LOADB                            R2 0
       37 RETURN                           R2 1
       38 LOADB                            R2 1
       39 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
