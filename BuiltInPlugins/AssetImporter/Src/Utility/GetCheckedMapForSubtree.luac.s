PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["ShouldImport"]
        4 SETTABLE                         R2 R1 R0
        5 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        7 CALL                             R2 1 3
        8 FORGPREP                         R2
        9 LOADK                            R9 K2 ["BaseImportData"]
       10 NAMECALL                         R7 R6 K3 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETTABLEKS                       R7 R6 K0 ["ShouldImport"]
       16 SETTABLE                         R7 R1 R6
       17 FORGLOOP                         R2 2 ; [-9]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
