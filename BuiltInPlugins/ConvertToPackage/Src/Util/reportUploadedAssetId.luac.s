PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetsUploaded"]
        2 GETUPVAL                         R4 1
        3 NEWTABLE                         R6 0 1
        5 MOVE                             R7 R0
        6 SETLIST                          R6 R7 1 [1]
        8 NAMECALL                         R4 R4 K1 ["JSONEncode"]
       10 CALL                             R4 2 -1
       11 NAMECALL                         R1 R1 K2 ["Fire"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

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
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 RETURN                           R2 1
