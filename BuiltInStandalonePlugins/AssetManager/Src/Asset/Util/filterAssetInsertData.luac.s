PROTO_0:
        0 NEWTABLE                         R6 0 0
        2 NEWTABLE                         R7 0 0
        4 NEWTABLE                         R8 0 0
        6 NEWTABLE                         R9 0 0
        8 NEWTABLE                         R10 0 0
       10 MOVE                             R11 R1
       11 LOADNIL                          R12
       12 LOADNIL                          R13
       13 FORGPREP                         R11
       14 GETTABLE                         R16 R0 R15
       15 JUMPIF                           R16 ; [+31]
       16 FASTCALL2                        TABLE_INSERT R6 R15 ; [+5]
       18 MOVE                             R17 R6
       19 MOVE                             R18 R15
       20 GETIMPORT                        R16 K2 [table.insert]
       22 CALL                             R16 2 0
       23 LENGTH                           R16 R6
       24 GETTABLE                         R17 R2 R14
       25 SETTABLE                         R17 R7 R16
       26 GETTABLE                         R18 R3 R14
       27 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
       29 MOVE                             R17 R8
       30 GETIMPORT                        R16 K2 [table.insert]
       32 CALL                             R16 2 0
       33 GETTABLE                         R18 R4 R14
       34 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
       36 MOVE                             R17 R9
       37 GETIMPORT                        R16 K2 [table.insert]
       39 CALL                             R16 2 0
       40 GETTABLE                         R18 R5 R14
       41 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
       43 MOVE                             R17 R10
       44 GETIMPORT                        R16 K2 [table.insert]
       46 CALL                             R16 2 0
       47 FORGLOOP                         R11 2 ; [-34]
       49 RETURN                           R6 5

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
