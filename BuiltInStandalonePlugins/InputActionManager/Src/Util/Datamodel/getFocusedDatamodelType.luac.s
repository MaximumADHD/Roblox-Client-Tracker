PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["MultipleDocumentInterfaceInstance"]
        2 JUMPIF                           R1 ; [+3]
        3 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.None]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K5 ["FocusedDataModelSession"]
        8 JUMPIF                           R2 ; [+3]
        9 GETIMPORT                        R3 K4 [Enum.StudioDataModelType.None]
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R2 K6 ["CurrentDataModelType"]
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
