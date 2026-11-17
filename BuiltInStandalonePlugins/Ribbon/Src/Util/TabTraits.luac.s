PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 JUMPIFEQKS                       R2 K1 ["BuiltIn"] ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["Type"]
        7 JUMPIFEQKS                       R2 K2 ["Custom"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Reserved"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["Filename"]
        7 JUMPIFEQKS                       R2 K3 ["Custom"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 JUMPIFEQKS                       R2 K1 ["Custom"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 JUMPIFEQKS                       R2 K1 ["BuiltIn"] ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["Type"]
        7 JUMPIFEQKS                       R2 K2 ["Custom"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 JUMPIFEQKS                       R2 K1 ["Custom"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 JUMPIFNOTEQKS                    R2 K1 ["BuiltIn"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["Filename"]
        7 JUMPIFEQKS                       R2 K3 ["PluginsTab"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["hasToggleableVisibility"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isAddButton"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["isDeletable"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["isDuplicable"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["isRenamable"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["shouldCopyCustomTools"]
       21 RETURN                           R0 1
