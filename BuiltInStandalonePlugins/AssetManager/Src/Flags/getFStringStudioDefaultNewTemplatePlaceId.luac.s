PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDefaultNewTemplatePlaceId"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioDefaultNewTemplatePlaceId"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 LOADK                            R0 K0 ["95206881"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 DUPCLOSURE                       R1 K3 [PROTO_1]
        7 RETURN                           R1 1
        8 DUPCLOSURE                       R1 K4 [PROTO_2]
        9 RETURN                           R1 1
