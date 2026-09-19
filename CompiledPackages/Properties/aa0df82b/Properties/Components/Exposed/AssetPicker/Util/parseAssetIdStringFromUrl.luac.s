PROTO_0:
        0 LOADK                            R3 K0 ["^https://create%.roblox%.com/store/asset/(%d+)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 LOADK                            R4 K2 ["^https://www%.roblox%.com/catalog/(%d+)"]
        7 NAMECALL                         R2 R0 K1 ["match"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+4]
       11 LOADK                            R4 K3 ["^https://www%.roblox%.com/library/(%d+)"]
       12 NAMECALL                         R2 R0 K1 ["match"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R1 1
       18 LOADK                            R4 K4 ["^http://www%.roblox%.com"]
       19 NAMECALL                         R2 R0 K1 ["match"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+7]
       23 LOADK                            R4 K5 ["[?&]id=(%d+)"]
       24 NAMECALL                         R2 R0 K1 ["match"]
       26 CALL                             R2 2 1
       27 MOVE                             R1 R2
       28 JUMPIFNOT                        R1 ; [+1]
       29 RETURN                           R1 1
       30 LOADNIL                          R2
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
