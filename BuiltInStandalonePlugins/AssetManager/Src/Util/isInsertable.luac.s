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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["AssetType"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Flags"]
       22 GETTABLEKS                       R4 R5 K10 ["getFFlagAmrOrganizationFoundation"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 4 0
       27 GETTABLEKS                       R5 R2 K11 ["Plugin"]
       29 LOADB                            R6 1
       30 SETTABLE                         R6 R4 R5
       31 GETTABLEKS                       R5 R2 K12 ["FontFamily"]
       33 LOADB                            R6 1
       34 SETTABLE                         R6 R4 R5
       35 GETTABLEKS                       R5 R2 K13 ["Place"]
       37 LOADB                            R6 1
       38 SETTABLE                         R6 R4 R5
       39 GETTABLEKS                       R5 R2 K11 ["Plugin"]
       41 LOADB                            R6 1
       42 SETTABLE                         R6 R4 R5
       43 MOVE                             R5 R3
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+4]
       46 GETTABLEKS                       R5 R2 K14 ["Folder"]
       48 LOADB                            R6 1
       49 SETTABLE                         R6 R4 R5
       50 DUPCLOSURE                       R5 K15 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 RETURN                           R5 1
