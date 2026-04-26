PROTO_0:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+9]
        4 JUMPIF                           R1 ; [+7]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K2 [table.insert]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"ShowSeparator"}]
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["ShowSeparator"]
        5 DUPCLOSURE                       R1 K2 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
