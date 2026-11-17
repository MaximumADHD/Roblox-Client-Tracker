PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K2 [{"assetId", "grantToDependencies"}]
        7 SETTABLEKS                       R7 R10 K0 ["assetId"]
        9 JUMPIFEQKNIL                     R1 ; [+3]
       11 MOVE                             R11 R1
       12 JUMP                             ; [+1]
       13 LOADB                            R11 1
       14 SETTABLEKS                       R11 R10 K1 ["grantToDependencies"]
       16 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K5 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-17]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
