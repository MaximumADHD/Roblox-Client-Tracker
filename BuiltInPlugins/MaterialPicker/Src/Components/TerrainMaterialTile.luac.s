PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["entry"]
        6 GETTABLEKS                       R1 R1 K2 ["slotIndex"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onContextMenuOpened"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["entry"]
        6 GETTABLEKS                       R3 R3 K2 ["slotIndex"]
        8 GETIMPORT                        R4 K5 [Vector2.new]
       10 GETTABLEKS                       R5 R1 K6 ["Position"]
       12 GETTABLEKS                       R5 R5 K7 ["X"]
       14 GETTABLEKS                       R6 R1 K6 ["Position"]
       16 GETTABLEKS                       R6 R6 K8 ["Y"]
       18 CALL                             R4 2 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 1
        8 DUPTABLE                         R3 K5 [{"entry", "isSelected", "layoutOrder", "onActivated", "onSecondaryActivated"}]
        9 GETTABLEKS                       R4 R0 K0 ["entry"]
       11 SETTABLEKS                       R4 R3 K0 ["entry"]
       13 GETTABLEKS                       R4 R0 K1 ["isSelected"]
       15 SETTABLEKS                       R4 R3 K1 ["isSelected"]
       17 GETTABLEKS                       R4 R0 K2 ["layoutOrder"]
       19 SETTABLEKS                       R4 R3 K2 ["layoutOrder"]
       21 SETTABLEKS                       R1 R3 K3 ["onActivated"]
       23 SETTABLEKS                       R2 R3 K4 ["onSecondaryActivated"]
       25 GETTABLEKS                       R5 R0 K6 ["viewType"]
       27 JUMPIFNOTEQKS                    R5 K7 ["grid"] ; [+8]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["createElement"]
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R3
       34 CALL                             R4 2 1
       35 RETURN                           R4 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K8 ["createElement"]
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R3
       41 CALL                             R4 2 1
       42 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["TerrainPalette"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["TerrainMaterialGridTile"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["TerrainMaterialListTile"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K15 ["useEventCallback"]
       55 DUPCLOSURE                       R8 K16 [PROTO_2]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 GETTABLEKS                       R9 R1 K17 ["memo"]
       62 MOVE                             R10 R8
       63 CALL                             R9 1 -1
       64 RETURN                           R9 -1
