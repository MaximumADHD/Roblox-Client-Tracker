PROTO_0:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 JUMPIFEQKS                       R2 K3 ["AnimSaves"] ; [+21]
        9 GETIMPORT                        R2 K5 [ipairs]
       11 NAMECALL                         R3 R1 K6 ["GetChildren"]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 3
       15 FORGPREP_INEXT                   R2
       16 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       18 MOVE                             R8 R0
       19 MOVE                             R9 R6
       20 GETIMPORT                        R7 K9 [table.insert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R7 0
       24 MOVE                             R8 R0
       25 MOVE                             R9 R6
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 [inext] ; [-12]
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
