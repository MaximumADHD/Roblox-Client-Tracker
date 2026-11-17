PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 2
        3 GETTABLEKS                       R0 R0 K0 ["getAvatarFromBundleId"]
        5 GETUPVAL                         R1 3
        6 GETUPVAL                         R2 4
        7 CALL                             R0 2 1
        8 SETUPVAL                         R0 1
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 6
       11 GETUPVAL                         R2 4
       12 NAMECALL                         R0 R0 K1 ["LoadAsset"]
       14 CALL                             R0 2 1
       15 SETUPVAL                         R0 5
       16 GETUPVAL                         R1 5
       17 NAMECALL                         R1 R1 K2 ["GetChildren"]
       19 CALL                             R1 1 1
       20 GETTABLEN                        R0 R1 1
       21 SETUPVAL                         R0 1
       22 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          REF R4
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          REF R3
        9 CAPTURE                          UPVAL U1
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R5 K1 [pcall]
       13 CALL                             R5 1 2
       14 JUMPIFNOT                        R5 ; [+12]
       15 LOADNIL                          R7
       16 SETTABLEKS                       R7 R4 K2 ["Parent"]
       18 LOADB                            R7 0
       19 SETTABLEKS                       R7 R4 K3 ["Archivable"]
       21 JUMPIFNOT                        R3 ; [+3]
       22 NAMECALL                         R7 R3 K4 ["Destroy"]
       24 CALL                             R7 1 0
       25 CLOSEUPVALS                      R3
       26 RETURN                           R4 1
       27 GETIMPORT                        R7 K6 [warn]
       29 LOADK                            R9 K7 ["unable to insert model because: "]
       30 MOVE                             R10 R6
       31 CONCAT                           R8 R9 R10
       32 CALL                             R7 1 0
       33 CLOSEUPVALS                      R3
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETIMPORT                        R2 K8 [require]
       13 GETTABLEKS                       R3 R1 K9 ["BundleImporter"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K10 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 RETURN                           R3 1
