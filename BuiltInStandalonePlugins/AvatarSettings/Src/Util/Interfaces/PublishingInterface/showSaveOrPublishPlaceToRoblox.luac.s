PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioPublishService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 LOADB                            R4 0
        3 GETIMPORT                        R5 K3 [Enum.StudioCloseMode.None]
        5 NAMECALL                         R1 R1 K4 ["ShowSaveOrPublishPlaceToRoblox"]
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+2]
        7 DUPCLOSURE                       R2 K3 [PROTO_1]
        8 RETURN                           R2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_2]
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1
