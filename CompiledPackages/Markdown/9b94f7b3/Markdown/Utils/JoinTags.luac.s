PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+9]
        7 GETUPVAL                         R2 0
        8 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R1 K5 [table.insert]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K1 [typeof]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+15]
       22 MOVE                             R1 R0
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 JUMPIFNOT                        R5 ; [+7]
       27 GETUPVAL                         R7 0
       28 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
       30 MOVE                             R8 R4
       31 GETIMPORT                        R6 K5 [table.insert]
       33 CALL                             R6 2 0
       34 FORGLOOP                         R1 2 ; [-9]
       36 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 GETVARARGS                       R3 -1
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 LOADK                            R3 K0 [" "]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Dash"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["forEachArgs"]
       14 GETIMPORT                        R3 K10 [table.concat]
       16 DUPCLOSURE                       R4 K11 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 RETURN                           R4 1
