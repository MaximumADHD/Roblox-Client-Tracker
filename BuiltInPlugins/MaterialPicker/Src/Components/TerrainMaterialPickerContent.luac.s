PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCatalogChanged"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnUndo"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["OnRedo"]
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"name", "slotIndex"}]
        7 GETTABLEKS                       R10 R6 K3 ["displayName"]
        9 SETTABLEKS                       R10 R9 K0 ["name"]
       11 GETTABLEKS                       R10 R6 K1 ["slotIndex"]
       13 SETTABLEKS                       R10 R9 K1 ["slotIndex"]
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K6 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 GETIMPORT                        R2 K8 [pcall]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K9 ["TerrainSlotMutations"]
       28 GETTABLEKS                       R3 R3 K10 ["createSlot"]
       30 DUPTABLE                         R4 K15 [{"entries", "historyService", "onCatalogChanged", "terrain"}]
       31 SETTABLEKS                       R1 R4 K11 ["entries"]
       33 DUPTABLE                         R5 K17 [{"setWaypoint"}]
       34 DUPCLOSURE                       R6 K18 [PROTO_3]
       35 CAPTURE                          UPVAL U2
       36 SETTABLEKS                       R6 R5 K16 ["setWaypoint"]
       38 SETTABLEKS                       R5 R4 K12 ["historyService"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K13 ["onCatalogChanged"]
       43 SETTABLEKS                       R5 R4 K13 ["onCatalogChanged"]
       45 GETIMPORT                        R5 K20 [workspace]
       47 GETTABLEKS                       R5 R5 K21 ["Terrain"]
       49 SETTABLEKS                       R5 R4 K14 ["terrain"]
       51 MOVE                             R5 R0
       52 CALL                             R2 3 2
       53 JUMPIFNOT                        R2 ; [+2]
       54 JUMPIFNOTEQKNIL                  R3 ; [+3]
       56 LOADNIL                          R4
       57 RETURN                           R4 1
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K22 ["onSlotCreated"]
       61 MOVE                             R5 R3
       62 CALL                             R4 1 0
       63 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["refreshKey"]
        3 GETTABLEKS                       R3 R0 K1 ["hostService"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R2
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 1
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K3 ["createElement"]
       32 GETUPVAL                         R5 5
       33 DUPTABLE                         R6 K13 [{"catalog", "onCreateSlot", "onEditSlot", "onSlotSelected", "onSortTypeChanged", "onViewTypeChanged", "request", "sortType", "viewType"}]
       34 SETTABLEKS                       R1 R6 K4 ["catalog"]
       36 SETTABLEKS                       R3 R6 K5 ["onCreateSlot"]
       38 GETTABLEKS                       R7 R0 K6 ["onEditSlot"]
       40 SETTABLEKS                       R7 R6 K6 ["onEditSlot"]
       42 GETTABLEKS                       R7 R0 K7 ["onSlotSelected"]
       44 SETTABLEKS                       R7 R6 K7 ["onSlotSelected"]
       46 GETTABLEKS                       R7 R0 K8 ["onSortTypeChanged"]
       48 SETTABLEKS                       R7 R6 K8 ["onSortTypeChanged"]
       50 GETTABLEKS                       R7 R0 K9 ["onViewTypeChanged"]
       52 SETTABLEKS                       R7 R6 K9 ["onViewTypeChanged"]
       54 GETTABLEKS                       R7 R0 K10 ["request"]
       56 SETTABLEKS                       R7 R6 K10 ["request"]
       58 GETTABLEKS                       R7 R0 K11 ["sortType"]
       60 SETTABLEKS                       R7 R6 K11 ["sortType"]
       62 GETTABLEKS                       R7 R0 K12 ["viewType"]
       64 SETTABLEKS                       R7 R6 K12 ["viewType"]
       66 CALL                             R4 2 -1
       67 RETURN                           R4 -1

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
       34 GETTABLEKS                       R5 R5 K12 ["TerrainMaterialPickerView"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useTerrainMaterialCatalog"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["useEventCallback"]
       55 GETIMPORT                        R8 K18 [game]
       57 LOADK                            R10 K19 ["ChangeHistoryService"]
       58 NAMECALL                         R8 R8 K20 ["GetService"]
       60 CALL                             R8 2 1
       61 DUPCLOSURE                       R9 K21 [PROTO_5]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 RETURN                           R9 1
