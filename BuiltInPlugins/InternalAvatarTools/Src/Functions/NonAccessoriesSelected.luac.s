PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [ipairs]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 LOADK                            R8 K3 ["Accessory"]
       13 NAMECALL                         R6 R5 K4 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIF                           R6 ; [+2]
       17 LOADB                            R6 1
       18 RETURN                           R6 1
       19 FORGLOOP                         R1 2 [inext] ; [-8]
       21 LOADB                            R1 0
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
