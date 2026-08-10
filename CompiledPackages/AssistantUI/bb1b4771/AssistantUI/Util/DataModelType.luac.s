PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["IsEdit"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["Edit"]
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K3 ["IsServer"]
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K4 ["Server"]
       23 RETURN                           R0 1
       24 GETUPVAL                         R0 2
       25 NAMECALL                         R0 R0 K5 ["IsClient"]
       27 CALL                             R0 1 1
       28 JUMPIFNOT                        R0 ; [+4]
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K6 ["Client"]
       32 RETURN                           R0 1
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K7 ["Unknown"]
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
        7 DUPTABLE                         R1 K9 [{["Edit"] = "Edit", ["Client"] = "Client", ["Server"] = "Server", ["Standalone"] = "Standalone", ["Unknown"] = "Unknown"}]
        8 LOADB                            R2 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          REF R2
       15 DUPTABLE                         R5 K13 [{"getDataModelType", "setIsStandalone", "Types"}]
       16 SETTABLEKS                       R3 R5 K10 ["getDataModelType"]
       18 SETTABLEKS                       R4 R5 K11 ["setIsStandalone"]
       20 SETTABLEKS                       R1 R5 K12 ["Types"]
       22 CLOSEUPVALS                      R2
       23 RETURN                           R5 1
