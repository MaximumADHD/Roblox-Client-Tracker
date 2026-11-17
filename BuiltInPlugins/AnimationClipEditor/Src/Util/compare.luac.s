PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWTABLE                         R5 0 0
        8 MOVE                             R6 R0
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 LOADB                            R11 1
       13 SETTABLE                         R11 R2 R10
       14 FORGLOOP                         R6 2 ; [-3]
       16 MOVE                             R6 R1
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 LOADB                            R11 1
       21 SETTABLE                         R11 R3 R10
       22 GETTABLE                         R11 R2 R10
       23 JUMPIF                           R11 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       26 MOVE                             R12 R4
       27 MOVE                             R13 R10
       28 GETIMPORT                        R11 K2 [table.insert]
       30 CALL                             R11 2 0
       31 FORGLOOP                         R6 2 ; [-12]
       33 MOVE                             R6 R0
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 GETTABLE                         R11 R3 R10
       38 JUMPIF                           R11 ; [+7]
       39 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       41 MOVE                             R12 R5
       42 MOVE                             R13 R10
       43 GETIMPORT                        R11 K2 [table.insert]
       45 CALL                             R11 2 0
       46 FORGLOOP                         R6 2 ; [-10]
       48 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
