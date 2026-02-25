PROTO_0:
        0 GETIMPORT                        R1 K2 [game]
        2 LOADK                            R3 K3 ["LuaStartPageStudioLogo"]
        3 NAMECALL                         R1 R1 K4 ["GetFastFlag"]
        5 CALL                             R1 2 1
        6 ORK                              R0 R1 K0 [True]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LuaStartPageStudioLogo"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPCLOSURE                       R0 K4 [PROTO_0]
        9 RETURN                           R0 1
