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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["scan"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["terrain"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["slotApi"]
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_7:
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
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findFreeTerrainMaterialIndex"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["set"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["terrain"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["slotApi"]
       18 MOVE                             R5 R1
       19 GETTABLEKS                       R6 R0 K4 ["material"]
       21 LOADK                            R7 K5 [""]
       22 GETTABLEKS                       R8 R0 K6 ["color"]
       24 CALL                             R2 6 0
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K1 ["set"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K2 ["terrain"]
       31 MOVE                             R4 R1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["getNextGeneratedName"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R7 R0 K8 ["name"]
       38 CALL                             R5 2 -1
       39 CALL                             R2 -1 0
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K9 ["setWaypoint"]
       43 LOADK                            R3 K10 ["TerrainPaletteSlotAdded"]
       44 CALL                             R2 1 0
       45 GETUPVAL                         R2 6
       46 CALL                             R2 0 0
       47 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isReadOnlyIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["reset"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["terrain"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["slotApi"]
       17 MOVE                             R4 R0
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K4 ["setWaypoint"]
       22 LOADK                            R2 K5 ["TerrainPaletteSlotDeleted"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 4
       25 CALL                             R1 0 0
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findFreeTerrainMaterialIndex"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R0 K1 ["variant"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R2 R0 K1 ["variant"]
       14 GETTABLEKS                       R2 R2 K2 ["Name"]
       16 JUMP                             ; [+1]
       17 LOADK                            R2 K3 [""]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K4 ["set"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["terrain"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K6 ["slotApi"]
       27 MOVE                             R6 R1
       28 GETTABLEKS                       R7 R0 K7 ["material"]
       30 MOVE                             R8 R2
       31 GETTABLEKS                       R9 R0 K8 ["color"]
       33 JUMPIF                           R9 ; [+6]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K9 ["getColor"]
       37 GETTABLEKS                       R10 R0 K7 ["material"]
       39 CALL                             R9 1 1
       40 CALL                             R3 6 0
       41 GETUPVAL                         R3 5
       42 GETTABLEKS                       R3 R3 K4 ["set"]
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K5 ["terrain"]
       47 MOVE                             R5 R1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K10 ["getDuplicateName"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R8 R0 K11 ["name"]
       54 CALL                             R6 2 -1
       55 CALL                             R3 -1 0
       56 GETUPVAL                         R3 6
       57 GETTABLEKS                       R3 R3 K12 ["setWaypoint"]
       59 LOADK                            R4 K13 ["TerrainPaletteSlotDuplicated"]
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 7
       62 CALL                             R3 0 0
       63 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isReadOnlyIndex"]
        3 GETTABLEKS                       R2 R0 K1 ["slotIndex"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K1 ["slotIndex"]
       16 GETTABLEKS                       R8 R0 K1 ["slotIndex"]
       18 JUMPIFNOTEQ                      R7 R8 ; [+3]
       20 MOVE                             R1 R6
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R2 2 ; [-9]
       24 JUMPIFNOTEQKNIL                  R1 ; [+3]
       26 LOADB                            R2 0
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R1 K2 ["material"]
       30 GETTABLEKS                       R3 R0 K2 ["material"]
       32 JUMPIFNOTEQ                      R2 R3 ; [+21]
       34 GETTABLEKS                       R2 R1 K3 ["variant"]
       36 GETTABLEKS                       R3 R0 K3 ["variant"]
       38 JUMPIFNOTEQ                      R2 R3 ; [+15]
       40 GETTABLEKS                       R2 R1 K4 ["name"]
       42 GETTABLEKS                       R3 R0 K4 ["name"]
       44 JUMPIFNOTEQ                      R2 R3 ; [+9]
       46 GETTABLEKS                       R2 R1 K5 ["color"]
       48 GETTABLEKS                       R3 R0 K5 ["color"]
       50 JUMPIFNOTEQ                      R2 R3 ; [+3]
       52 LOADB                            R2 1
       53 RETURN                           R2 1
       54 GETTABLEKS                       R3 R0 K3 ["variant"]
       56 JUMPIFNOT                        R3 ; [+5]
       57 GETTABLEKS                       R2 R0 K3 ["variant"]
       59 GETTABLEKS                       R2 R2 K6 ["Name"]
       61 JUMP                             ; [+1]
       62 LOADK                            R2 K7 [""]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R3 R3 K8 ["set"]
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K9 ["terrain"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K10 ["slotApi"]
       72 GETTABLEKS                       R6 R0 K1 ["slotIndex"]
       74 GETTABLEKS                       R7 R0 K2 ["material"]
       76 MOVE                             R8 R2
       77 GETTABLEKS                       R9 R0 K5 ["color"]
       79 JUMPIF                           R9 ; [+6]
       80 GETUPVAL                         R9 4
       81 GETTABLEKS                       R9 R9 K11 ["getColor"]
       83 GETTABLEKS                       R10 R0 K2 ["material"]
       85 CALL                             R9 1 1
       86 CALL                             R3 6 0
       87 GETTABLEKS                       R3 R1 K4 ["name"]
       89 GETTABLEKS                       R4 R0 K4 ["name"]
       91 JUMPIFEQ                         R3 R4 ; [+12]
       93 GETUPVAL                         R3 5
       94 GETTABLEKS                       R3 R3 K8 ["set"]
       96 GETUPVAL                         R4 3
       97 GETTABLEKS                       R4 R4 K9 ["terrain"]
       99 GETTABLEKS                       R5 R0 K1 ["slotIndex"]
      101 GETTABLEKS                       R6 R0 K4 ["name"]
      103 CALL                             R3 3 0
      104 GETUPVAL                         R3 6
      105 LOADB                            R4 1
      106 SETTABLEKS                       R4 R3 K12 ["current"]
      108 GETUPVAL                         R3 7
      109 CALL                             R3 0 0
      110 LOADB                            R3 1
      111 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["historyService"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useRef"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 3
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       30 NEWCLOSURE                       R8 P3
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R9 0 1
       35 MOVE                             R10 R1
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 0
       39 GETUPVAL                         R7 3
       40 NEWCLOSURE                       R8 P4
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 3
       50 NEWCLOSURE                       R9 P5
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CALL                             R8 1 1
       57 GETUPVAL                         R9 3
       58 NEWCLOSURE                       R10 P6
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CALL                             R9 1 1
       68 GETUPVAL                         R10 3
       69 NEWCLOSURE                       R11 P7
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 CALL                             R10 1 1
       79 DUPTABLE                         R11 K11 [{"addSlot", "canAddSlot", "commitEntryUpdate", "deleteSlot", "duplicateSlot", "entries", "updateEntry"}]
       80 SETTABLEKS                       R7 R11 K4 ["addSlot"]
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R13 R13 K12 ["findFreeTerrainMaterialIndex"]
       85 MOVE                             R14 R3
       86 CALL                             R13 1 1
       87 JUMPIFNOTEQKNIL                  R13 ; [+2]
       89 LOADB                            R12 0 +1
       90 LOADB                            R12 1
       91 SETTABLEKS                       R12 R11 K5 ["canAddSlot"]
       93 SETTABLEKS                       R6 R11 K6 ["commitEntryUpdate"]
       95 SETTABLEKS                       R8 R11 K7 ["deleteSlot"]
       97 SETTABLEKS                       R9 R11 K8 ["duplicateSlot"]
       99 SETTABLEKS                       R3 R11 K9 ["entries"]
      101 SETTABLEKS                       R10 R11 K10 ["updateEntry"]
      103 RETURN                           R11 1

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
       60 GETTABLEKS                       R9 R9 K16 ["TerrainSlots"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R2 K17 ["useEventCallback"]
       65 GETIMPORT                        R10 K19 [game]
       67 LOADK                            R12 K20 ["ChangeHistoryService"]
       68 NAMECALL                         R10 R10 K21 ["GetService"]
       70 CALL                             R10 2 1
       71 DUPTABLE                         R11 K25 [{"connectRedo", "connectUndo", "setWaypoint"}]
       72 DUPCLOSURE                       R12 K26 [PROTO_1]
       73 CAPTURE                          VAL R10
       74 SETTABLEKS                       R12 R11 K22 ["connectRedo"]
       76 DUPCLOSURE                       R12 K27 [PROTO_3]
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R12 R11 K23 ["connectUndo"]
       80 DUPCLOSURE                       R12 K28 [PROTO_4]
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R12 R11 K24 ["setWaypoint"]
       84 DUPCLOSURE                       R12 K29 [PROTO_14]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 RETURN                           R12 1
