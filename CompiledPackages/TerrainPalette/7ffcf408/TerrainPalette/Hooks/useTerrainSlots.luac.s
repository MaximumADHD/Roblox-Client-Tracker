PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnRedo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnUndo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetWaypoint"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scan"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["terrain"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["slotApi"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scan"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["terrain"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["slotApi"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onEvent"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["onEvent"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCatalogChanged"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onCatalogChanged"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["setWaypoint"]
        8 LOADK                            R1 K2 ["TerrainPaletteSlotChanged"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 2
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 3
       17 DUPTABLE                         R1 K13 [{["kind"] = "catalogMutation", ["action"] = "update", ["outcome"] = "success", ["previousEntry"], ["nextEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K0 ["current"]
       21 SETTABLEKS                       R2 R1 K9 ["previousEntry"]
       23 GETUPVAL                         R2 5
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 SETTABLEKS                       R2 R1 K10 ["nextEntry"]
       28 GETUPVAL                         R3 6
       29 LENGTH                           R2 R3
       30 SETTABLEKS                       R2 R1 K11 ["catalogSizeBefore"]
       32 GETUPVAL                         R3 6
       33 LENGTH                           R2 R3
       34 SETTABLEKS                       R2 R1 K12 ["catalogSizeAfter"]
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 4
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K0 ["current"]
       41 GETUPVAL                         R0 5
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K0 ["current"]
       45 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectUndo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["connectRedo"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSlot"]
        3 DUPTABLE                         R2 K6 [{"entries", "historyService", "onCatalogChanged", "slotApi", "terrain"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["entries"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["historyService"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["onCatalogChanged"]
       13 SETTABLEKS                       R3 R2 K3 ["onCatalogChanged"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["slotApi"]
       18 SETTABLEKS                       R3 R2 K4 ["slotApi"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["terrain"]
       23 SETTABLEKS                       R3 R2 K5 ["terrain"]
       25 MOVE                             R3 R0
       26 CALL                             R1 2 1
       27 JUMPIFNOTEQKNIL                  R1 ; [+14]
       29 GETUPVAL                         R2 4
       30 DUPTABLE                         R3 K17 [{["kind"] = "catalogMutation", ["action"] = "create", ["outcome"] = "rejected", ["failureReason"] = "catalogFull", ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       31 GETUPVAL                         R5 1
       32 LENGTH                           R4 R5
       33 SETTABLEKS                       R4 R3 K15 ["catalogSizeBefore"]
       35 GETUPVAL                         R5 1
       36 LENGTH                           R4 R5
       37 SETTABLEKS                       R4 R3 K16 ["catalogSizeAfter"]
       39 CALL                             R2 1 0
       40 LOADNIL                          R2
       41 RETURN                           R2 1
       42 GETUPVAL                         R2 5
       43 CALL                             R2 0 1
       44 LOADNIL                          R3
       45 MOVE                             R4 R2
       46 LOADNIL                          R5
       47 LOADNIL                          R6
       48 FORGPREP                         R4
       49 GETTABLEKS                       R9 R8 K18 ["slotIndex"]
       51 JUMPIFNOTEQ                      R9 R1 ; [+3]
       53 MOVE                             R3 R8
       54 JUMP                             ; [+2]
       55 FORGLOOP                         R4 2 ; [-7]
       57 GETUPVAL                         R4 4
       58 DUPTABLE                         R5 K21 [{["kind"] = "catalogMutation", ["action"] = "create", ["outcome"] = "success", ["nextEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       59 SETTABLEKS                       R3 R5 K20 ["nextEntry"]
       61 GETUPVAL                         R7 1
       62 LENGTH                           R6 R7
       63 SETTABLEKS                       R6 R5 K15 ["catalogSizeBefore"]
       65 LENGTH                           R6 R2
       66 SETTABLEKS                       R6 R5 K16 ["catalogSizeAfter"]
       68 CALL                             R4 1 0
       69 RETURN                           R1 1

PROTO_15:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["slotIndex"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+3]
        9 MOVE                             R1 R6
       10 JUMP                             ; [+2]
       11 FORGLOOP                         R2 2 ; [-7]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["isReadOnlyIndex"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R2 ; [+15]
       19 GETUPVAL                         R2 2
       20 DUPTABLE                         R3 K13 [{["kind"] = "catalogMutation", ["action"] = "delete", ["outcome"] = "rejected", ["failureReason"] = "readOnlySlot", ["previousEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       21 SETTABLEKS                       R1 R3 K10 ["previousEntry"]
       23 GETUPVAL                         R5 0
       24 LENGTH                           R4 R5
       25 SETTABLEKS                       R4 R3 K11 ["catalogSizeBefore"]
       27 GETUPVAL                         R5 0
       28 LENGTH                           R4 R5
       29 SETTABLEKS                       R4 R3 K12 ["catalogSizeAfter"]
       31 CALL                             R2 1 0
       32 LOADB                            R2 0
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKNIL                  R1 ; [+14]
       36 GETUPVAL                         R2 2
       37 DUPTABLE                         R3 K15 [{["kind"] = "catalogMutation", ["action"] = "delete", ["outcome"] = "rejected", ["failureReason"] = "slotMissing", ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       38 GETUPVAL                         R5 0
       39 LENGTH                           R4 R5
       40 SETTABLEKS                       R4 R3 K11 ["catalogSizeBefore"]
       42 GETUPVAL                         R5 0
       43 LENGTH                           R4 R5
       44 SETTABLEKS                       R4 R3 K12 ["catalogSizeAfter"]
       46 CALL                             R2 1 0
       47 LOADB                            R2 0
       48 RETURN                           R2 1
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R2 R2 K16 ["reset"]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K17 ["terrain"]
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K18 ["slotApi"]
       58 MOVE                             R5 R0
       59 CALL                             R2 3 0
       60 GETUPVAL                         R2 5
       61 GETTABLEKS                       R2 R2 K19 ["setWaypoint"]
       63 LOADK                            R3 K20 ["TerrainPaletteSlotDeleted"]
       64 CALL                             R2 1 0
       65 GETUPVAL                         R2 6
       66 CALL                             R2 0 1
       67 GETUPVAL                         R3 7
       68 CALL                             R3 0 0
       69 GETUPVAL                         R3 2
       70 DUPTABLE                         R4 K22 [{["kind"] = "catalogMutation", ["action"] = "delete", ["outcome"] = "success", ["previousEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       71 SETTABLEKS                       R1 R4 K10 ["previousEntry"]
       73 GETUPVAL                         R6 0
       74 LENGTH                           R5 R6
       75 SETTABLEKS                       R5 R4 K11 ["catalogSizeBefore"]
       77 LENGTH                           R5 R2
       78 SETTABLEKS                       R5 R4 K12 ["catalogSizeAfter"]
       80 CALL                             R3 1 0
       81 LOADB                            R3 1
       82 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findFreeTerrainMaterialIndex"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+16]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K12 [{["kind"] = "catalogMutation", ["action"] = "duplicate", ["outcome"] = "rejected", ["failureReason"] = "catalogFull", ["previousEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
        9 SETTABLEKS                       R0 R3 K9 ["previousEntry"]
       11 GETUPVAL                         R5 1
       12 LENGTH                           R4 R5
       13 SETTABLEKS                       R4 R3 K10 ["catalogSizeBefore"]
       15 GETUPVAL                         R5 1
       16 LENGTH                           R4 R5
       17 SETTABLEKS                       R4 R3 K11 ["catalogSizeAfter"]
       19 CALL                             R2 1 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETTABLEKS                       R3 R0 K13 ["variant"]
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETTABLEKS                       R2 R0 K13 ["variant"]
       27 GETTABLEKS                       R2 R2 K14 ["Name"]
       29 JUMP                             ; [+1]
       30 LOADK                            R2 K15 [""]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K16 ["set"]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K17 ["terrain"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K18 ["slotApi"]
       40 MOVE                             R6 R1
       41 GETTABLEKS                       R7 R0 K19 ["material"]
       43 MOVE                             R8 R2
       44 GETTABLEKS                       R9 R0 K20 ["color"]
       46 JUMPIF                           R9 ; [+6]
       47 GETUPVAL                         R9 5
       48 GETTABLEKS                       R9 R9 K21 ["getColor"]
       50 GETTABLEKS                       R10 R0 K19 ["material"]
       52 CALL                             R9 1 1
       53 CALL                             R3 6 0
       54 GETUPVAL                         R3 6
       55 GETTABLEKS                       R3 R3 K16 ["set"]
       57 GETUPVAL                         R4 4
       58 GETTABLEKS                       R4 R4 K17 ["terrain"]
       60 MOVE                             R5 R1
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K22 ["getDuplicateName"]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R8 R0 K23 ["name"]
       67 CALL                             R6 2 -1
       68 CALL                             R3 -1 0
       69 GETUPVAL                         R3 7
       70 GETTABLEKS                       R3 R3 K24 ["setWaypoint"]
       72 LOADK                            R4 K25 ["TerrainPaletteSlotDuplicated"]
       73 CALL                             R3 1 0
       74 GETUPVAL                         R3 8
       75 CALL                             R3 0 1
       76 GETUPVAL                         R4 9
       77 CALL                             R4 0 0
       78 LOADNIL                          R4
       79 MOVE                             R5 R3
       80 LOADNIL                          R6
       81 LOADNIL                          R7
       82 FORGPREP                         R5
       83 GETTABLEKS                       R10 R9 K26 ["slotIndex"]
       85 JUMPIFNOTEQ                      R10 R1 ; [+3]
       87 MOVE                             R4 R9
       88 JUMP                             ; [+2]
       89 FORGLOOP                         R5 2 ; [-7]
       91 GETUPVAL                         R5 2
       92 DUPTABLE                         R6 K29 [{["kind"] = "catalogMutation", ["action"] = "duplicate", ["outcome"] = "success", ["previousEntry"], ["nextEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       93 SETTABLEKS                       R0 R6 K9 ["previousEntry"]
       95 SETTABLEKS                       R4 R6 K28 ["nextEntry"]
       97 GETUPVAL                         R8 1
       98 LENGTH                           R7 R8
       99 SETTABLEKS                       R7 R6 K10 ["catalogSizeBefore"]
      101 LENGTH                           R7 R3
      102 SETTABLEKS                       R7 R6 K11 ["catalogSizeAfter"]
      104 CALL                             R5 1 0
      105 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isReadOnlyIndex"]
        3 GETTABLEKS                       R2 R0 K1 ["slotIndex"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+15]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K13 [{["kind"] = "catalogMutation", ["action"] = "update", ["outcome"] = "rejected", ["failureReason"] = "readOnlySlot", ["nextEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
        9 SETTABLEKS                       R0 R2 K10 ["nextEntry"]
       11 GETUPVAL                         R4 2
       12 LENGTH                           R3 R4
       13 SETTABLEKS                       R3 R2 K11 ["catalogSizeBefore"]
       15 GETUPVAL                         R4 2
       16 LENGTH                           R3 R4
       17 SETTABLEKS                       R3 R2 K12 ["catalogSizeAfter"]
       19 CALL                             R1 1 0
       20 LOADB                            R1 0
       21 RETURN                           R1 1
       22 LOADNIL                          R1
       23 GETUPVAL                         R2 2
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETTABLEKS                       R7 R6 K1 ["slotIndex"]
       29 GETTABLEKS                       R8 R0 K1 ["slotIndex"]
       31 JUMPIFNOTEQ                      R7 R8 ; [+3]
       33 MOVE                             R1 R6
       34 JUMP                             ; [+2]
       35 FORGLOOP                         R2 2 ; [-9]
       37 JUMPIFNOTEQKNIL                  R1 ; [+16]
       39 GETUPVAL                         R2 1
       40 DUPTABLE                         R3 K15 [{["kind"] = "catalogMutation", ["action"] = "update", ["outcome"] = "rejected", ["failureReason"] = "slotMissing", ["nextEntry"], ["catalogSizeBefore"], ["catalogSizeAfter"]}]
       41 SETTABLEKS                       R0 R3 K10 ["nextEntry"]
       43 GETUPVAL                         R5 2
       44 LENGTH                           R4 R5
       45 SETTABLEKS                       R4 R3 K11 ["catalogSizeBefore"]
       47 GETUPVAL                         R5 2
       48 LENGTH                           R4 R5
       49 SETTABLEKS                       R4 R3 K12 ["catalogSizeAfter"]
       51 CALL                             R2 1 0
       52 LOADB                            R2 0
       53 RETURN                           R2 1
       54 GETTABLEKS                       R2 R1 K16 ["material"]
       56 GETTABLEKS                       R3 R0 K16 ["material"]
       58 JUMPIFNOTEQ                      R2 R3 ; [+21]
       60 GETTABLEKS                       R2 R1 K17 ["variant"]
       62 GETTABLEKS                       R3 R0 K17 ["variant"]
       64 JUMPIFNOTEQ                      R2 R3 ; [+15]
       66 GETTABLEKS                       R2 R1 K18 ["name"]
       68 GETTABLEKS                       R3 R0 K18 ["name"]
       70 JUMPIFNOTEQ                      R2 R3 ; [+9]
       72 GETTABLEKS                       R2 R1 K19 ["color"]
       74 GETTABLEKS                       R3 R0 K19 ["color"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+3]
       78 LOADB                            R2 1
       79 RETURN                           R2 1
       80 GETTABLEKS                       R3 R0 K17 ["variant"]
       82 JUMPIFNOT                        R3 ; [+5]
       83 GETTABLEKS                       R2 R0 K17 ["variant"]
       85 GETTABLEKS                       R2 R2 K20 ["Name"]
       87 JUMP                             ; [+1]
       88 LOADK                            R2 K21 [""]
       89 GETUPVAL                         R3 3
       90 GETTABLEKS                       R3 R3 K22 ["set"]
       92 GETUPVAL                         R4 4
       93 GETTABLEKS                       R4 R4 K23 ["terrain"]
       95 GETUPVAL                         R5 4
       96 GETTABLEKS                       R5 R5 K24 ["slotApi"]
       98 GETTABLEKS                       R6 R0 K1 ["slotIndex"]
      100 GETTABLEKS                       R7 R0 K16 ["material"]
      102 MOVE                             R8 R2
      103 GETTABLEKS                       R9 R0 K19 ["color"]
      105 JUMPIF                           R9 ; [+6]
      106 GETUPVAL                         R9 5
      107 GETTABLEKS                       R9 R9 K25 ["getColor"]
      109 GETTABLEKS                       R10 R0 K16 ["material"]
      111 CALL                             R9 1 1
      112 CALL                             R3 6 0
      113 GETTABLEKS                       R3 R1 K18 ["name"]
      115 GETTABLEKS                       R4 R0 K18 ["name"]
      117 JUMPIFEQ                         R3 R4 ; [+12]
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R3 R3 K22 ["set"]
      122 GETUPVAL                         R4 4
      123 GETTABLEKS                       R4 R4 K23 ["terrain"]
      125 GETTABLEKS                       R5 R0 K1 ["slotIndex"]
      127 GETTABLEKS                       R6 R0 K18 ["name"]
      129 CALL                             R3 3 0
      130 GETUPVAL                         R3 7
      131 GETTABLEKS                       R3 R3 K26 ["current"]
      133 JUMPIF                           R3 ; [+3]
      134 GETUPVAL                         R3 8
      135 SETTABLEKS                       R1 R3 K26 ["current"]
      137 GETUPVAL                         R3 7
      138 LOADB                            R4 1
      139 SETTABLEKS                       R4 R3 K26 ["current"]
      141 GETUPVAL                         R3 9
      142 SETTABLEKS                       R0 R3 K26 ["current"]
      144 GETUPVAL                         R3 10
      145 CALL                             R3 0 0
      146 LOADB                            R3 1
      147 RETURN                           R3 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["historyService"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useRef"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["useRef"]
       12 LOADNIL                          R4
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["useRef"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K2 ["useState"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 3
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R6
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 3
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R0
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 3
       37 NEWCLOSURE                       R10 P3
       38 CAPTURE                          VAL R0
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 3
       41 NEWCLOSURE                       R11 P4
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R9
       44 CALL                             R10 1 1
       45 GETUPVAL                         R11 3
       46 NEWCLOSURE                       R12 P5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CALL                             R11 1 1
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K3 ["useEffect"]
       58 NEWCLOSURE                       R13 P6
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R10
       61 NEWTABLE                         R14 0 2
       63 MOVE                             R15 R1
       64 MOVE                             R16 R10
       65 SETLIST                          R14 R15 2 [1]
       67 CALL                             R12 2 0
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K3 ["useEffect"]
       71 NEWCLOSURE                       R13 P7
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R14 0 2
       75 GETTABLEKS                       R15 R0 K4 ["refreshKey"]
       77 MOVE                             R16 R7
       78 SETLIST                          R14 R15 2 [1]
       80 CALL                             R12 2 0
       81 GETUPVAL                         R12 3
       82 NEWCLOSURE                       R13 P8
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 CALL                             R12 1 1
       90 GETUPVAL                         R13 3
       91 NEWCLOSURE                       R14 P9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R8
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CALL                             R13 1 1
      101 GETUPVAL                         R14 3
      102 NEWCLOSURE                       R15 P10
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 CALL                             R14 1 1
      114 GETUPVAL                         R15 3
      115 NEWCLOSURE                       R16 P11
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R5
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R7
      127 CALL                             R15 1 1
      128 DUPTABLE                         R16 K13 [{"addSlot", "canAddSlot", "commitEntryUpdate", "deleteSlot", "duplicateSlot", "entries", "refreshEntries", "updateEntry"}]
      129 SETTABLEKS                       R12 R16 K5 ["addSlot"]
      131 GETUPVAL                         R18 5
      132 GETTABLEKS                       R18 R18 K14 ["findFreeTerrainMaterialIndex"]
      134 MOVE                             R19 R5
      135 CALL                             R18 1 1
      136 JUMPIFNOTEQKNIL                  R18 ; [+2]
      138 LOADB                            R17 0 +1
      139 LOADB                            R17 1
      140 SETTABLEKS                       R17 R16 K6 ["canAddSlot"]
      142 SETTABLEKS                       R11 R16 K7 ["commitEntryUpdate"]
      144 SETTABLEKS                       R13 R16 K8 ["deleteSlot"]
      146 SETTABLEKS                       R14 R16 K9 ["duplicateSlot"]
      148 SETTABLEKS                       R5 R16 K10 ["entries"]
      150 SETTABLEKS                       R7 R16 K11 ["refreshEntries"]
      152 SETTABLEKS                       R15 R16 K12 ["updateEntry"]
      154 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Domain"]
       25 GETTABLEKS                       R4 R4 K10 ["SlotCollection"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Libraries"]
       32 GETTABLEKS                       R5 R5 K12 ["SlotNames"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Libraries"]
       39 GETTABLEKS                       R6 R6 K13 ["TerrainSlotApi"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Domain"]
       46 GETTABLEKS                       R7 R7 K14 ["TerrainMaterialTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Domain"]
       53 GETTABLEKS                       R8 R8 K15 ["TerrainMaterials"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Libraries"]
       60 GETTABLEKS                       R9 R9 K16 ["TerrainSlotMutations"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Domain"]
       67 GETTABLEKS                       R10 R10 K17 ["TerrainSlotTypes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Libraries"]
       74 GETTABLEKS                       R11 R11 K18 ["TerrainSlots"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R2 K19 ["useEventCallback"]
       79 GETIMPORT                        R12 K21 [game]
       81 LOADK                            R14 K22 ["ChangeHistoryService"]
       82 NAMECALL                         R12 R12 K23 ["GetService"]
       84 CALL                             R12 2 1
       85 DUPTABLE                         R13 K27 [{"connectRedo", "connectUndo", "setWaypoint"}]
       86 DUPCLOSURE                       R14 K28 [PROTO_1]
       87 CAPTURE                          VAL R12
       88 SETTABLEKS                       R14 R13 K24 ["connectRedo"]
       90 DUPCLOSURE                       R14 K29 [PROTO_3]
       91 CAPTURE                          VAL R12
       92 SETTABLEKS                       R14 R13 K25 ["connectUndo"]
       94 DUPCLOSURE                       R14 K30 [PROTO_4]
       95 CAPTURE                          VAL R12
       96 SETTABLEKS                       R14 R13 K26 ["setWaypoint"]
       98 DUPCLOSURE                       R14 K31 [PROTO_18]
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 RETURN                           R14 1
