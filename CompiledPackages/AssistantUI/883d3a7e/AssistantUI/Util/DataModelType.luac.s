PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADK                            R0 K0 ["Standalone"]
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["IsEdit"]
        7 CALL                             R0 1 1
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADK                            R0 K2 ["Edit"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K3 ["IsServer"]
       14 CALL                             R0 1 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 LOADK                            R0 K4 ["Server"]
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 1
       19 NAMECALL                         R0 R0 K5 ["IsClient"]
       21 CALL                             R0 1 1
       22 JUMPIFNOT                        R0 ; [+2]
       23 LOADK                            R0 K6 ["Client"]
       24 RETURN                           R0 1
       25 LOADK                            R0 K7 ["Unknown"]
       26 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADB                            R1 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          REF R1
       13 DUPTABLE                         R4 K6 [{"getDataModelType", "setIsStandalone"}]
       14 SETTABLEKS                       R2 R4 K4 ["getDataModelType"]
       16 SETTABLEKS                       R3 R4 K5 ["setIsStandalone"]
       18 CLOSEUPVALS                      R1
       19 RETURN                           R4 1
