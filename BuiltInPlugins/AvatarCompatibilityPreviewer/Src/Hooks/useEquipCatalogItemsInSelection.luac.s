PROTO_0:
        0 LOADK                            R3 K0 ["RBX_Palette"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+11]
        5 GETIMPORT                        R2 K3 [warn]
        7 LOADK                            R4 K4 ["%* did not have a palette set. This is a bug in the plugin, please report it."]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K5 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+13]
       21 GETIMPORT                        R3 K3 [warn]
       23 LOADK                            R5 K6 ["%* has an invalid palette \"%*\". This is a bug in the plugin, please report it."]
       24 MOVE                             R7 R0
       25 MOVE                             R8 R1
       26 NAMECALL                         R5 R5 K5 ["format"]
       28 CALL                             R5 3 1
       29 MOVE                             R4 R5
       30 CALL                             R3 1 0
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 DUPTABLE                         R3 K9 [{"palette", "item"}]
       34 SETTABLEKS                       R2 R3 K7 ["palette"]
       36 DUPTABLE                         R4 K12 [{"source", "instance"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K13 ["SOURCE_INSTANCE"]
       40 SETTABLEKS                       R5 R4 K10 ["source"]
       42 SETTABLEKS                       R0 R4 K11 ["instance"]
       44 SETTABLEKS                       R4 R3 K8 ["item"]
       46 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Get"]
        7 CALL                             R0 1 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R8 0
       13 NAMECALL                         R6 R5 K1 ["IsDescendantOf"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+20]
       17 LOADK                            R8 K2 ["Accessory"]
       18 NAMECALL                         R6 R5 K3 ["IsA"]
       20 CALL                             R6 2 1
       21 JUMPIF                           R6 ; [+5]
       22 LOADK                            R8 K4 ["Folder"]
       23 NAMECALL                         R6 R5 K3 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+10]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFEQKNIL                     R6 ; [+6]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R7 R8 K5 ["addEquippedItem"]
       35 MOVE                             R8 R6
       36 CALL                             R7 1 0
       37 FORGLOOP                         R1 2 ; [-26]
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useContext"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["Context"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K2 ["userCatalogFolder"]
       14 GETUPVAL                         R2 3
       15 NAMECALL                         R2 R2 K3 ["use"]
       17 CALL                             R2 1 1
       18 NAMECALL                         R2 R2 K4 ["get"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K5 ["useCallback"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R1
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K9 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["EquipmentStateContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K9 ["Util"]
       45 GETTABLEKS                       R6 R7 K13 ["SelectionWrapper"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Components"]
       54 GETTABLEKS                       R7 R8 K15 ["UserCatalogFolderContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R10 K9 ["Util"]
       63 GETTABLEKS                       R8 R9 K16 ["getPaletteFromKey"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K17 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R9 K18 [PROTO_2]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 RETURN                           R9 1
