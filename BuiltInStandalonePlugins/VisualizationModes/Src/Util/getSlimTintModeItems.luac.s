PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [Enum.SlimTintMode]
        4 NAMECALL                         R2 R2 K3 ["GetEnumItems"]
        6 CALL                             R2 1 3
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K4 ["Name"]
       10 SETTABLE                         R6 R1 R7
       11 FORGLOOP                         R2 2 ; [-4]
       13 NEWTABLE                         R2 0 0
       15 NEWTABLE                         R3 0 0
       17 MOVE                             R4 R0
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLE                         R9 R1 R8
       22 JUMPIFNOT                        R9 ; [+15]
       23 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       25 MOVE                             R11 R2
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K7 [table.insert]
       29 CALL                             R10 2 0
       30 GETTABLEKS                       R12 R9 K4 ["Name"]
       32 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       34 MOVE                             R11 R3
       35 GETIMPORT                        R10 K7 [table.insert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R4 2 ; [-18]
       40 GETIMPORT                        R4 K9 [table.freeze]
       42 MOVE                             R5 R2
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [table.freeze]
       46 MOVE                             R6 R3
       47 CALL                             R5 1 -1
       48 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
