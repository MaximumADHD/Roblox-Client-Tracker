PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["AssetType"]
       16 NEWTABLE                         R3 4 0
       18 GETTABLEKS                       R4 R2 K9 ["Plugin"]
       20 LOADB                            R5 1
       21 SETTABLE                         R5 R3 R4
       22 GETTABLEKS                       R4 R2 K10 ["FontFamily"]
       24 LOADB                            R5 1
       25 SETTABLE                         R5 R3 R4
       26 GETTABLEKS                       R4 R2 K11 ["Place"]
       28 LOADB                            R5 1
       29 SETTABLE                         R5 R3 R4
       30 GETTABLEKS                       R4 R2 K12 ["Folder"]
       32 LOADB                            R5 1
       33 SETTABLE                         R5 R3 R4
       34 DUPCLOSURE                       R4 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
