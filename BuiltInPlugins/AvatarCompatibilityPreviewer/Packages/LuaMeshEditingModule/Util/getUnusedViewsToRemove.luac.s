PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R1 R6
        7 JUMPIF                           R8 ; [+19]
        8 GETTABLEKS                       R8 R0 K0 ["meshName"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 DUPTABLE                         R15 K3 [{"MeshName", "Index"}]
       14 SETTABLEKS                       R6 R15 K1 ["MeshName"]
       16 SETTABLEKS                       R11 R15 K2 ["Index"]
       18 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       20 MOVE                             R14 R2
       21 GETIMPORT                        R13 K6 [table.insert]
       23 CALL                             R13 2 0
       24 FORGLOOP                         R8 1 ; [-12]
       26 JUMP                             ; [+21]
       27 GETTABLE                         R8 R0 R6
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 GETTABLE                         R14 R1 R6
       32 GETTABLE                         R13 R14 R11
       33 JUMPIFNOTEQKNIL                  R13 ; [+12]
       35 DUPTABLE                         R15 K3 [{"MeshName", "Index"}]
       36 SETTABLEKS                       R6 R15 K1 ["MeshName"]
       38 SETTABLEKS                       R11 R15 K2 ["Index"]
       40 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       42 MOVE                             R14 R2
       43 GETIMPORT                        R13 K6 [table.insert]
       45 CALL                             R13 2 0
       46 FORGLOOP                         R8 1 ; [-16]
       48 FORGLOOP                         R3 2 ; [-43]
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
