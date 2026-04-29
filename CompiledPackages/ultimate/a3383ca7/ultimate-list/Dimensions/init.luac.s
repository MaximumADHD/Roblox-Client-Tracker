PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "callback"}]
        1 LOADK                            R2 K3 ["getter"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["callback"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "size"}]
        1 LOADK                            R2 K3 ["consistentSize"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["size"]
        6 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"type", "udim2"}]
        1 LOADK                            R2 K3 ["consistentUDim2"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["udim2"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R4 K1 ["getter"] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["withSpacing does not support getter. Instead, include your padding as part of your returned position."]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K0 ["type"]
       14 JUMPIFNOTEQKS                    R2 K5 ["spaced"] ; [+9]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K6 ["withSpacing"]
       19 GETTABLEKS                       R3 R0 K7 ["inner"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 DUPTABLE                         R2 K9 [{"type", "spacing", "inner"}]
       25 LOADK                            R3 K5 ["spaced"]
       26 SETTABLEKS                       R3 R2 K0 ["type"]
       28 SETTABLEKS                       R1 R2 K8 ["spacing"]
       30 SETTABLEKS                       R0 R2 K7 ["inner"]
       32 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getter"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["consistentSize"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["consistentUDim2"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["withSpacing"]
       16 RETURN                           R0 1
