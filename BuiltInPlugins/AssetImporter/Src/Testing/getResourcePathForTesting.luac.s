PROTO_0:
        0 ORK                              R0 R0 K0 ["blender-cube-default.fbx"]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["This function can only be called in a FTF test runner"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K5 [script]
       11 LOADK                            R3 K6 ["Plugin"]
       12 NAMECALL                         R1 R1 K7 ["FindFirstAncestorWhichIsA"]
       14 CALL                             R1 2 1
       15 LOADK                            R4 K8 ["FTFUtil"]
       16 NAMECALL                         R2 R1 K9 ["GetPluginComponent"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K10 ["%*/AssetImport/AssetImportTest.Lib/resources/%*"]
       20 NAMECALL                         R6 R2 K11 ["ClientFolderPathAsync"]
       22 CALL                             R6 1 1
       23 MOVE                             R7 R0
       24 NAMECALL                         R4 R4 K12 ["format"]
       26 CALL                             R4 3 1
       27 MOVE                             R3 R4
       28 RETURN                           R3 1

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
       14 GETTABLEKS                       R2 R1 K8 ["isFTF"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
