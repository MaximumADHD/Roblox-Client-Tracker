PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETIMPORT                        R6 K2 [string.find]
        6 MOVE                             R7 R0
        7 MOVE                             R8 R5
        8 CALL                             R6 2 3
        9 JUMPIFNOT                        R6 ; [+14]
       10 MOVE                             R11 R6
       11 MOVE                             R12 R7
       12 NAMECALL                         R9 R0 K3 ["sub"]
       14 CALL                             R9 3 1
       15 MOVE                             R10 R6
       16 MOVE                             R11 R7
       17 MOVE                             R12 R9
       18 FASTCALL1                        TONUMBER R8 ; [+3]
       19 MOVE                             R14 R8
       20 GETIMPORT                        R13 K5 [tonumber]
       22 CALL                             R13 1 1
       23 RETURN                           R10 4
       24 FORGLOOP                         R1 2 ; [-21]
       26 LOADNIL                          R1
       27 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 LOADK                            R1 K0 ["rbxassetid://(%d+)"]
        4 LOADK                            R2 K1 ["https?://www%.roblox%.com/[Aa]sset/?%?[Ii][Dd]=(%d+)"]
        5 LOADK                            R3 K2 ["https?://assetdelivery%.roblox%.com/v[12]/[Aa]sset/?%?[Ii][Dd]=(%d+)"]
        6 SETLIST                          R0 R1 3 [1]
        8 DUPCLOSURE                       R1 K3 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1
