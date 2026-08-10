PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AmrImageVersioning"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AmrImageVersioning"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K5 [require]
       10 GETIMPORT                        R1 K7 [script]
       12 GETTABLEKS                       R1 R1 K8 ["Parent"]
       14 GETTABLEKS                       R1 R1 K9 ["safeGetFastFlag"]
       16 CALL                             R0 1 1
       17 MOVE                             R1 R0
       18 LOADK                            R2 K10 ["CinImageAssetVersioning"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K11 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
