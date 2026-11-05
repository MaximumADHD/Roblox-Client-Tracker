PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R4 1
        5 JUMPIF                           R1 ; [+15]
        6 LOADN                            R7 1
        7 LENGTH                           R5 R0
        8 LOADN                            R6 1
        9 FORNPREP                         R5
       10 MOVE                             R9 R2
       11 MOVE                             R12 R7
       12 MOVE                             R13 R7
       13 NAMECALL                         R10 R0 K0 ["sub"]
       15 CALL                             R10 3 -1
       16 FASTCALL                         TABLE_INSERT ; [+1]
       17 GETUPVAL                         R8 0
       18 CALL                             R8 -1 0
       19 FORNLOOP                         R5
       20 RETURN                           R2 1
       21 MOVE                             R7 R1
       22 MOVE                             R8 R4
       23 NAMECALL                         R5 R0 K1 ["find"]
       25 CALL                             R5 3 2
       26 JUMPIFNOT                        R5 ; [+27]
       27 MOVE                             R8 R3
       28 MOVE                             R11 R5
       29 MOVE                             R12 R6
       30 NAMECALL                         R9 R0 K0 ["sub"]
       32 CALL                             R9 3 -1
       33 FASTCALL                         TABLE_INSERT ; [+1]
       34 GETUPVAL                         R7 0
       35 CALL                             R7 -1 0
       36 MOVE                             R8 R2
       37 MOVE                             R11 R4
       38 SUBK                             R12 R5 K2 [1]
       39 NAMECALL                         R9 R0 K0 ["sub"]
       41 CALL                             R9 3 -1
       42 FASTCALL                         TABLE_INSERT ; [+1]
       43 GETUPVAL                         R7 0
       44 CALL                             R7 -1 0
       45 ADDK                             R4 R6 K2 [1]
       46 MOVE                             R9 R1
       47 MOVE                             R10 R4
       48 NAMECALL                         R7 R0 K1 ["find"]
       50 CALL                             R7 3 2
       51 MOVE                             R5 R7
       52 MOVE                             R6 R8
       53 JUMPBACK                         ; [-28]
       54 MOVE                             R8 R2
       55 MOVE                             R11 R4
       56 NAMECALL                         R9 R0 K0 ["sub"]
       58 CALL                             R9 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+1]
       60 GETUPVAL                         R7 0
       61 CALL                             R7 -1 0
       62 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.insert]
        3 DUPCLOSURE                       R1 K3 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
