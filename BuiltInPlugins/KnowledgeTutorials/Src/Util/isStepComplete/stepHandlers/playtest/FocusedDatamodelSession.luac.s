PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MultipleDocumentInterfaceInstance"]
        3 GETTABLEKS                       R1 R0 K1 ["FocusedDataModelSession"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+6]
        4 GETIMPORT                        R0 K3 [script]
        6 LOADK                            R2 K4 ["Plugin"]
        7 NAMECALL                         R0 R0 K5 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R0 2 1
       10 NEWTABLE                         R1 1 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["get"]
       16 RETURN                           R1 1
