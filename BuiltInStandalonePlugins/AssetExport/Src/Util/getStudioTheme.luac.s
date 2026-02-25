PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+11]
        3 GETIMPORT                        R3 K1 [settings]
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R2 R3 K2 ["Studio"]
        8 GETTABLEKS                       R1 R2 K3 ["Theme"]
       10 GETTABLEKS                       R0 R1 K4 ["Name"]
       12 JUMPIFNOTEQKS                    R0 K5 ["Light"] ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K5 ["Light"]
       17 RETURN                           R0 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K6 ["Dark"]
       21 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Enums"]
       16 GETTABLEKS                       R2 R3 K9 ["Theme"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Util"]
       24 GETTABLEKS                       R4 R5 K12 ["isCli"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
