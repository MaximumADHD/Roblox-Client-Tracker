PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+17]
        7 JUMPIFEQKNIL                     R0 ; [+16]
        9 GETIMPORT                        R1 K4 [Vector2.new]
       11 LOADN                            R2 0
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["onScrolledToSlot"]
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K6 ["onScrolledToSlot"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["targetSlotIndex"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADNIL                          R0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["slotEntries"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K2 ["slotIndex"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["targetSlotIndex"]
       18 JUMPIFNOTEQ                      R6 R7 ; [+3]
       20 SUBK                             R0 R4 K3 [1]
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R1 2 ; [-10]
       24 JUMPIFNOTEQKNIL                  R0 ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K4 ["viewType"]
       30 JUMPIFNOTEQKS                    R2 K5 ["grid"] ; [+18]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K6 ["padding"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K7 ["columns"]
       38 DIV                              R5 R0 R6
       39 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       40 GETIMPORT                        R4 K10 [math.floor]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K11 ["gridRowStride"]
       46 MUL                              R3 R4 R5
       47 ADD                              R1 R2 R3
       48 JUMP                             ; [+8]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K6 ["padding"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K12 ["listRowStride"]
       55 MUL                              R3 R0 R4
       56 ADD                              R1 R2 R3
       57 LOADB                            R2 0
       58 GETIMPORT                        R3 K15 [task.defer]
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          REF R2
       63 CAPTURE                          VAL R1
       64 CALL                             R3 1 0
       65 NEWCLOSURE                       R3 P1
       66 CAPTURE                          REF R2
       67 CLOSEUPVALS                      R2
       68 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        5 MOVE                             R3 R1
        6 NEWTABLE                         R4 0 8
        8 GETTABLEKS                       R5 R0 K1 ["columns"]
       10 GETTABLEKS                       R6 R0 K2 ["gridRowStride"]
       12 GETTABLEKS                       R7 R0 K3 ["listRowStride"]
       14 GETTABLEKS                       R8 R0 K4 ["onScrolledToSlot"]
       16 GETTABLEKS                       R9 R0 K5 ["padding"]
       18 GETTABLEKS                       R10 R0 K6 ["slotEntries"]
       20 GETTABLEKS                       R11 R0 K7 ["targetSlotIndex"]
       22 GETTABLEKS                       R12 R0 K8 ["viewType"]
       24 SETLIST                          R4 R5 8 [1]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Domain"]
       18 GETTABLEKS                       R3 R3 K9 ["TerrainMaterialTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 RETURN                           R4 1
