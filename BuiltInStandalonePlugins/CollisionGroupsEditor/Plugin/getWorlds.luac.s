PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["WorldModel"]
        3 NAMECALL                         R0 R0 K3 ["QueryDescendants"]
        5 CALL                             R0 2 1
        6 LOADN                            R3 1
        7 GETIMPORT                        R4 K5 [workspace]
        9 FASTCALL3                        TABLE_INSERT R0 R3 R4
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K8 [table.insert]
       14 CALL                             R1 3 0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
