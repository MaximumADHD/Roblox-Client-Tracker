PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETIMPORT                        R9 K2 [table.clone]
       11 MOVE                             R10 R8
       12 CALL                             R9 1 1
       13 GETTABLEKS                       R11 R8 K3 ["name"]
       15 GETTABLE                         R10 R3 R11
       16 SETTABLEKS                       R10 R9 K3 ["name"]
       18 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       20 MOVE                             R11 R2
       21 MOVE                             R12 R9
       22 GETIMPORT                        R10 K5 [table.insert]
       24 CALL                             R10 2 0
       25 FORGLOOP                         R4 2 ; [-17]
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Localization"]
       13 GETTABLEKS                       R2 R2 K8 ["getLocalizedCategoryMap"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
