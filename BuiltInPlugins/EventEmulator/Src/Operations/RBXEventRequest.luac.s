PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Namespace"]
        3 GETTABLEKS                       R4 R0 K1 ["Detail"]
        5 GETTABLEKS                       R5 R0 K2 ["DetailType"]
        7 NAMECALL                         R1 R1 K3 ["sendRobloxEvent"]
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
