PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCatalogChanged"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["record"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["onSlotSelected"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
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
       34 DUPCLOSURE                       R6 K18 [PROTO_4]
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
       53 JUMPIF                           R2 ; [+3]
       54 LOADNIL                          R4
       55 LOADK                            R5 K22 ["mutationFailed"]
       56 RETURN                           R4 2
       57 JUMPIFNOTEQKNIL                  R3 ; [+4]
       59 LOADNIL                          R4
       60 LOADK                            R5 K23 ["catalogFull"]
       61 RETURN                           R4 2
       62 GETUPVAL                         R4 4
       63 GETTABLEKS                       R4 R4 K24 ["record"]
       65 GETUPVAL                         R5 5
       66 MOVE                             R6 R3
       67 CALL                             R4 2 0
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R4 R4 K25 ["onSlotCreated"]
       71 MOVE                             R5 R3
       72 CALL                             R4 1 0
       73 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["initialCatalog"]
        3 GETTABLEKS                       R3 R0 K1 ["refreshKey"]
        5 GETTABLEKS                       R4 R0 K2 ["hostService"]
        7 GETTABLEKS                       R5 R0 K3 ["onCatalogRead"]
        9 GETTABLEKS                       R6 R0 K4 ["onCatalogReadFailed"]
       11 CALL                             R1 5 1
       12 GETIMPORT                        R2 K6 [workspace]
       14 GETTABLEKS                       R2 R2 K7 ["Terrain"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K8 ["read"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 2
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R4
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 2
       44 NEWCLOSURE                       R7 P3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R2
       51 CALL                             R6 1 1
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K10 ["createElement"]
       55 GETUPVAL                         R8 6
       56 DUPTABLE                         R9 K25 [{"catalog", "onCreateSlot", "onEditSlot", "onQuickAddOpened", "onQuickAddResult", "onSlotSelected", "onSearchNoResults", "onSearchUsed", "onSortTypeChanged", "onViewTypeChanged", "recentlyUsedSlots", "request", "sortType", "viewType"}]
       57 SETTABLEKS                       R1 R9 K11 ["catalog"]
       59 SETTABLEKS                       R6 R9 K12 ["onCreateSlot"]
       61 GETTABLEKS                       R10 R0 K13 ["onEditSlot"]
       63 SETTABLEKS                       R10 R9 K13 ["onEditSlot"]
       65 GETTABLEKS                       R10 R0 K14 ["onQuickAddOpened"]
       67 SETTABLEKS                       R10 R9 K14 ["onQuickAddOpened"]
       69 GETTABLEKS                       R10 R0 K15 ["onQuickAddResult"]
       71 SETTABLEKS                       R10 R9 K15 ["onQuickAddResult"]
       73 SETTABLEKS                       R5 R9 K16 ["onSlotSelected"]
       75 GETTABLEKS                       R10 R0 K17 ["onSearchNoResults"]
       77 SETTABLEKS                       R10 R9 K17 ["onSearchNoResults"]
       79 GETTABLEKS                       R10 R0 K18 ["onSearchUsed"]
       81 SETTABLEKS                       R10 R9 K18 ["onSearchUsed"]
       83 GETTABLEKS                       R10 R0 K19 ["onSortTypeChanged"]
       85 SETTABLEKS                       R10 R9 K19 ["onSortTypeChanged"]
       87 GETTABLEKS                       R10 R0 K20 ["onViewTypeChanged"]
       89 SETTABLEKS                       R10 R9 K20 ["onViewTypeChanged"]
       91 SETTABLEKS                       R3 R9 K21 ["recentlyUsedSlots"]
       93 GETTABLEKS                       R10 R0 K22 ["request"]
       95 SETTABLEKS                       R10 R9 K22 ["request"]
       97 GETTABLEKS                       R10 R0 K23 ["sortType"]
       99 SETTABLEKS                       R10 R9 K23 ["sortType"]
      101 GETTABLEKS                       R10 R0 K24 ["viewType"]
      103 SETTABLEKS                       R10 R9 K24 ["viewType"]
      105 CALL                             R7 2 -1
      106 RETURN                           R7 -1

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
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["RecentTerrainMaterialSlots"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R2 K18 ["useEventCallback"]
       64 GETIMPORT                        R9 K20 [game]
       66 LOADK                            R11 K21 ["ChangeHistoryService"]
       67 NAMECALL                         R9 R9 K22 ["GetService"]
       69 CALL                             R9 2 1
       70 DUPCLOSURE                       R10 K23 [PROTO_6]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 RETURN                           R10 1
