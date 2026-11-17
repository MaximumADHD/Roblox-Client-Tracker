PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCli"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K2 [game]
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K3 ["GetService"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Testing"]
       20 GETTABLEKS                       R3 R3 K10 ["Mocks"]
       22 GETTABLEKS                       R3 R3 K11 ["AssetImportServiceMock"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Testing"]
       31 GETTABLEKS                       R4 R4 K10 ["Mocks"]
       33 GETTABLEKS                       R4 R4 K12 ["StudioServiceMock"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 1 0
       38 DUPTABLE                         R5 K15 [{"AssetImportService", "StudioService"}]
       39 GETTABLEKS                       R6 R2 K16 ["new"]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K13 ["AssetImportService"]
       44 GETTABLEKS                       R6 R3 K16 ["new"]
       46 CALL                             R6 0 1
       47 SETTABLEKS                       R6 R5 K14 ["StudioService"]
       49 DUPCLOSURE                       R6 K17 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R6 R4 K18 ["GetService"]
       54 RETURN                           R4 1
