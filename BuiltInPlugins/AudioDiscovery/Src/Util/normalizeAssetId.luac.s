PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["rbxassetid://"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 2
        7 JUMPIFNOT                        R1 ; [+5]
        8 ADDK                             R5 R2 K4 [1]
        9 NAMECALL                         R3 R0 K5 ["sub"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 GETIMPORT                        R3 K2 [string.find]
       15 MOVE                             R4 R0
       16 LOADK                            R5 K6 ["http[s]?://www.roblox.com/asset/%?id="]
       17 CALL                             R3 2 2
       18 MOVE                             R1 R3
       19 MOVE                             R2 R4
       20 JUMPIFNOT                        R1 ; [+5]
       21 ADDK                             R5 R2 K4 [1]
       22 NAMECALL                         R3 R0 K5 ["sub"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
       26 GETIMPORT                        R3 K2 [string.find]
       28 MOVE                             R4 R0
       29 LOADK                            R5 K7 ["rbxgameasset://Audio/"]
       30 LOADN                            R6 1
       31 LOADB                            R7 1
       32 CALL                             R3 4 2
       33 MOVE                             R1 R3
       34 MOVE                             R2 R4
       35 JUMPIFNOT                        R1 ; [+2]
       36 LOADNIL                          R3
       37 RETURN                           R3 1
       38 LOADNIL                          R3
       39 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
