PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K1 ["Main"] ; [+3]
        9 JUMPIFNOTEQKS                    R2 K2 ["Export"] ; [+9]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["createElement"]
       14 GETUPVAL                         R4 3
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1
       19 JUMPIFNOTEQKS                    R2 K4 ["Permissions"] ; [+9]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K3 ["createElement"]
       24 GETUPVAL                         R4 4
       25 NEWTABLE                         R5 0 0
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 LOADNIL                          R3
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["MainView"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["PermissionView"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Controllers"]
       38 GETTABLEKS                       R5 R6 K13 ["ExportController"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K14 ["Hooks"]
       47 GETTABLEKS                       R6 R7 K15 ["useViewState"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K16 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1
