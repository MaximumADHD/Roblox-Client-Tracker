PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETIMPORT                        R1 K1 [workspace]
        4 SETLIST                          R0 R1 1 [1]
        6 GETUPVAL                         R1 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K2 ["ForEach"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R3 K0 ["WorldModel"]
        1 GETIMPORT                        R4 K2 [game]
        3 NAMECALL                         R1 R0 K3 ["CreateCollection"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
