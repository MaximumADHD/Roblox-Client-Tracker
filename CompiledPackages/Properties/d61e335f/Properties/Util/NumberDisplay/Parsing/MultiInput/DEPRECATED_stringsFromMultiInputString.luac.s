PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["([^,%s]+)"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R5
       12 GETIMPORT                        R7 K6 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 1 ; [-8]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
