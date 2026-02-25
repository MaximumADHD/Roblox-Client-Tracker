PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 LOADK                            R3 K0 ["AssetsUploaded"]
        4 GETUPVAL                         R4 2
        5 NEWTABLE                         R6 0 1
        7 MOVE                             R7 R0
        8 SETLIST                          R6 R7 1 [1]
       10 NAMECALL                         R4 R4 K1 ["JSONEncode"]
       12 CALL                             R4 2 -1
       13 NAMECALL                         R1 R1 K2 ["Fire"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ConvertToPackageShareUploadResults"]
       16 LOADB                            R5 0
       17 NAMECALL                         R2 R2 K6 ["DefineFastFlag"]
       19 CALL                             R2 3 1
       20 DUPCLOSURE                       R3 K7 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 RETURN                           R3 1
