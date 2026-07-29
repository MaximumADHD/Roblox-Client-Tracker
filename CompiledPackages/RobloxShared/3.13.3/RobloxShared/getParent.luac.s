PROTO_0:
        0 ORK                              R2 R1 K0 [0]
        1 LOADN                            R6 1
        2 LOADN                            R7 1
        3 FASTCALL3                        STRING_SUB R0 R6 R7
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [string.sub]
        8 CALL                             R4 3 1
        9 JUMPIFEQKS                       R4 K4 ["/"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 NEWTABLE                         R4 0 0
       15 GETIMPORT                        R5 K6 [string.gmatch]
       17 MOVE                             R6 R0
       18 LOADK                            R7 K7 ["[^\\/][^\\/]*"]
       19 CALL                             R5 2 3
       20 FORGPREP                         R5
       21 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       23 MOVE                             R11 R4
       24 MOVE                             R12 R8
       25 GETIMPORT                        R10 K10 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R5 1 ; [-8]
       30 LOADN                            R5 0
       31 JUMPIFNOTLT                      R5 R2 ; [+15]
       33 NEWTABLE                         R5 0 1
       35 LOADN                            R8 1
       36 LENGTH                           R10 R4
       37 SUB                              R9 R10 R2
       38 FASTCALL3                        TABLE_UNPACK R4 R8 R9
       40 MOVE                             R7 R4
       41 GETIMPORT                        R6 K12 [table.unpack]
       43 CALL                             R6 3 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 MOVE                             R4 R5
       47 JUMPIFNOT                        R3 ; [+8]
       48 LOADK                            R6 K4 ["/"]
       49 GETIMPORT                        R7 K14 [table.concat]
       51 MOVE                             R8 R4
       52 LOADK                            R9 K4 ["/"]
       53 CALL                             R7 2 1
       54 CONCAT                           R5 R6 R7
       55 RETURN                           R5 1
       56 GETIMPORT                        R5 K14 [table.concat]
       58 MOVE                             R6 R4
       59 LOADK                            R7 K15 ["\\"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
