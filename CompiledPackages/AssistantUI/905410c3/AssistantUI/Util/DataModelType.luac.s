PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["Standalone"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["IsEdit"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K2 ["Edit"]
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K3 ["IsServer"]
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K4 ["Server"]
       23 RETURN                           R0 1
       24 GETUPVAL                         R0 2
       25 NAMECALL                         R0 R0 K5 ["IsClient"]
       27 CALL                             R0 1 1
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R0 R1 K6 ["Client"]
       32 RETURN                           R0 1
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R0 R1 K7 ["Unknown"]
       36 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K9 [{"Edit", "Client", "Server", "Standalone", "Unknown"}]
        8 LOADK                            R2 K4 ["Edit"]
        9 SETTABLEKS                       R2 R1 K4 ["Edit"]
       11 LOADK                            R2 K5 ["Client"]
       12 SETTABLEKS                       R2 R1 K5 ["Client"]
       14 LOADK                            R2 K6 ["Server"]
       15 SETTABLEKS                       R2 R1 K6 ["Server"]
       17 LOADK                            R2 K7 ["Standalone"]
       18 SETTABLEKS                       R2 R1 K7 ["Standalone"]
       20 LOADK                            R2 K8 ["Unknown"]
       21 SETTABLEKS                       R2 R1 K8 ["Unknown"]
       23 LOADB                            R2 0
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          REF R2
       30 DUPTABLE                         R5 K13 [{"getDataModelType", "setIsStandalone", "Types"}]
       31 SETTABLEKS                       R3 R5 K10 ["getDataModelType"]
       33 SETTABLEKS                       R4 R5 K11 ["setIsStandalone"]
       35 SETTABLEKS                       R1 R5 K12 ["Types"]
       37 CLOSEUPVALS                      R2
       38 RETURN                           R5 1
