PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AssetAccess"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R2 R0 K6 ["Bin"]
       13 GETTABLEKS                       R1 R2 K7 ["Common"]
       15 GETIMPORT                        R2 K9 [require]
       17 GETTABLEKS                       R3 R1 K10 ["defineLuaFlags"]
       19 CALL                             R2 1 0
       20 GETIMPORT                        R2 K9 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R3 R4 K12 ["TestLoader"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K13 ["launch"]
       29 LOADK                            R4 K4 ["AssetAccess"]
       30 GETTABLEKS                       R5 R0 K14 ["Src"]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R2 K15 ["isCli"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R4 K1 [plugin]
       40 GETTABLEKS                       R3 R4 K16 ["HostDataModelType"]
       42 GETIMPORT                        R4 K20 [Enum.StudioDataModelType.Edit]
       44 JUMPIFEQ                         R3 R4 ; [+2]
       46 RETURN                           R0 0
       47 GETIMPORT                        R3 K9 [require]
       49 GETTABLEKS                       R6 R0 K14 ["Src"]
       51 GETTABLEKS                       R5 R6 K21 ["Util"]
       53 GETTABLEKS                       R4 R5 K22 ["ShareDialogController"]
       55 CALL                             R3 1 1
       56 GETTABLEKS                       R4 R3 K23 ["new"]
       58 GETIMPORT                        R5 K1 [plugin]
       60 CALL                             R4 1 1
       61 GETIMPORT                        R6 K1 [plugin]
       63 GETTABLEKS                       R5 R6 K24 ["Unloading"]
       65 DUPCLOSURE                       R7 K25 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 NAMECALL                         R5 R5 K26 ["Once"]
       69 CALL                             R5 2 0
       70 RETURN                           R0 0
