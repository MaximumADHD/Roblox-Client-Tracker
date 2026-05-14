PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+11]
        3 GETIMPORT                        R0 K1 [settings]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R0 R0 K2 ["Studio"]
        8 GETTABLEKS                       R0 R0 K3 ["Theme"]
       10 GETTABLEKS                       R0 R0 K4 ["Name"]
       12 JUMPIFNOTEQKS                    R0 K5 ["Light"] ; [+5]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K5 ["Light"]
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K6 ["Dark"]
       21 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Enums"]
       16 GETTABLEKS                       R2 R2 K9 ["Theme"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Utility"]
       24 GETTABLEKS                       R4 R4 K12 ["isCli"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
