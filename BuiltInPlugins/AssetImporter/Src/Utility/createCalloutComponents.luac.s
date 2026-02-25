PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["ShouldShow"]
        8 MOVE                             R10 R2
        9 CALL                             R9 1 1
       10 JUMPIFNOT                        R9 ; [+15]
       11 GETTABLEKS                       R10 R8 K1 ["Name"]
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R11 R12 K2 ["createElement"]
       16 GETUPVAL                         R12 1
       17 DUPTABLE                         R13 K5 [{"DefinitionId", "LocationId"}]
       18 GETTABLEKS                       R14 R8 K1 ["Name"]
       20 SETTABLEKS                       R14 R13 K3 ["DefinitionId"]
       22 SETTABLEKS                       R1 R13 K4 ["LocationId"]
       24 CALL                             R11 2 1
       25 SETTABLE                         R11 R3 R10
       26 FORGLOOP                         R4 2 ; [-21]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Dialogs"]
       22 GETTABLEKS                       R3 R4 K11 ["TeachingCallout"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K12 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
