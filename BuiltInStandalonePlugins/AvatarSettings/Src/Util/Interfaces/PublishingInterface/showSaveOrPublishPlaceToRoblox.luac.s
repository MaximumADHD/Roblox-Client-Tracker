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
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+2]
        6 DUPCLOSURE                       R2 K3 [PROTO_1]
        7 RETURN                           R2 1
        8 DUPCLOSURE                       R2 K4 [PROTO_2]
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1
