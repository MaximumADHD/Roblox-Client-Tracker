PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K3 [string.gmatch]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K4 ["[^,]+"]
       11 CALL                             R2 2 3
       12 FORGPREP                         R2
       13 GETIMPORT                        R7 K6 [string.match]
       15 MOVE                             R8 R5
       16 LOADK                            R9 K7 ["^%s*(.-)%s*$"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+9]
       19 JUMPIFEQKS                       R7 K0 [""] ; [+8]
       21 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K10 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 1 ; [-16]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
