PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["unknown"] ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K3 [Instance.new]
        6 LOADK                            R3 K4 ["Script"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GetInstanceByRfc4122String"]
       12 RETURN                           R0 1
