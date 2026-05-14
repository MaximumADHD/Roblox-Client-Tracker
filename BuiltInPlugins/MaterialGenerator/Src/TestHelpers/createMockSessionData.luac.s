PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R1 R0 K0 ["StartSession"]
        4 CALL                             R1 1 1
        5 LOADK                            R4 K1 ["test"]
        6 NEWTABLE                         R5 0 0
        8 NAMECALL                         R2 R1 K2 ["GenerateImagesAsync"]
       10 CALL                             R2 3 2
       11 RETURN                           R1 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["TestHelpers"]
       15 GETTABLEKS                       R2 R2 K7 ["createMockMaterialGenerationService"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
