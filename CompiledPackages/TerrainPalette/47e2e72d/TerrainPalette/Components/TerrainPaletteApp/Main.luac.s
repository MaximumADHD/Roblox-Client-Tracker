PROTO_0:
        0 LOADNIL                          R2
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K0 ["slotIndex"]
        7 JUMPIFNOTLT                      R0 R8 ; [+6]
        9 MOVE                             R8 R2
       10 JUMPIF                           R8 ; [+2]
       11 GETTABLEKS                       R8 R7 K0 ["slotIndex"]
       13 RETURN                           R8 1
       14 GETTABLEKS                       R8 R7 K0 ["slotIndex"]
       16 JUMPIFNOTLT                      R8 R0 ; [+3]
       18 GETTABLEKS                       R2 R7 K0 ["slotIndex"]
       20 FORGLOOP                         R3 2 ; [-16]
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 GETTABLEKS                       R5 R4 K0 ["slotIndex"]
       11 GETUPVAL                         R6 0
       12 JUMPIFNOTEQ                      R5 R6 ; [+2]
       14 RETURN                           R4 1
       15 FORGLOOP                         R0 2 ; [-7]
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateEntry"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitEntryUpdate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["addSlot"]
        3 DUPTABLE                         R1 K5 [{["color"], ["material"], ["name"] = "NewTerrainSlot"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["color"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["material"]
       10 CALL                             R0 1 1
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 LOADK                            R2 K6 [""]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["duplicateSlot"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 JUMPIFNOTEQKNIL                  R0 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 LOADK                            R2 K1 [""]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["deleteSlot"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 3
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["isDefaultSlotIndex"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADK                            R4 K1 [""]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 LOADK                            R6 K2 ["grid"]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["useState"]
       18 LOADNIL                          R8
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K0 ["useState"]
       23 LOADNIL                          R10
       24 CALL                             R9 1 2
       25 GETUPVAL                         R11 1
       26 DUPTABLE                         R12 K8 [{"refreshKey", "historyService", "onCatalogChanged", "slotApi", "terrain"}]
       27 GETTABLEKS                       R13 R0 K3 ["refreshKey"]
       29 SETTABLEKS                       R13 R12 K3 ["refreshKey"]
       31 GETTABLEKS                       R13 R0 K4 ["historyService"]
       33 SETTABLEKS                       R13 R12 K4 ["historyService"]
       35 GETTABLEKS                       R13 R0 K5 ["onCatalogChanged"]
       37 SETTABLEKS                       R13 R12 K5 ["onCatalogChanged"]
       39 GETTABLEKS                       R13 R0 K6 ["slotApi"]
       41 SETTABLEKS                       R13 R12 K6 ["slotApi"]
       43 GETTABLEKS                       R13 R0 K7 ["terrain"]
       45 SETTABLEKS                       R13 R12 K7 ["terrain"]
       47 CALL                             R11 1 1
       48 GETTABLEKS                       R12 R11 K9 ["entries"]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K10 ["useMemo"]
       53 NEWCLOSURE                       R14 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R12
       56 NEWTABLE                         R15 0 2
       58 MOVE                             R16 R1
       59 MOVE                             R17 R12
       60 SETLIST                          R15 R16 2 [1]
       62 CALL                             R13 2 1
       63 GETUPVAL                         R14 0
       64 GETTABLEKS                       R14 R14 K10 ["useMemo"]
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R12
       70 NEWTABLE                         R16 0 2
       72 MOVE                             R17 R3
       73 MOVE                             R18 R12
       74 SETLIST                          R16 R17 2 [1]
       76 CALL                             R14 2 1
       77 GETUPVAL                         R15 3
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R2
       80 CALL                             R15 1 1
       81 GETUPVAL                         R16 3
       82 NEWCLOSURE                       R17 P3
       83 CAPTURE                          VAL R11
       84 CALL                             R16 1 1
       85 GETUPVAL                         R17 3
       86 NEWCLOSURE                       R18 P4
       87 CAPTURE                          VAL R11
       88 CALL                             R17 1 1
       89 GETUPVAL                         R18 3
       90 NEWCLOSURE                       R19 P5
       91 CAPTURE                          VAL R11
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CALL                             R18 1 1
       98 GETUPVAL                         R19 3
       99 NEWCLOSURE                       R20 P6
      100 CAPTURE                          VAL R2
      101 CALL                             R19 1 1
      102 GETUPVAL                         R20 3
      103 NEWCLOSURE                       R21 P7
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R8
      109 CALL                             R20 1 1
      110 GETUPVAL                         R21 3
      111 NEWCLOSURE                       R22 P8
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R2
      116 CALL                             R21 1 1
      117 GETUPVAL                         R22 3
      118 NEWCLOSURE                       R23 P9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R21
      123 CALL                             R22 1 1
      124 GETUPVAL                         R23 3
      125 NEWCLOSURE                       R24 P10
      126 CAPTURE                          VAL R10
      127 CALL                             R23 1 1
      128 GETUPVAL                         R24 3
      129 NEWCLOSURE                       R25 P11
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R21
      133 CALL                             R24 1 1
      134 GETUPVAL                         R25 3
      135 NEWCLOSURE                       R26 P12
      136 CAPTURE                          VAL R4
      137 CALL                             R25 1 1
      138 GETUPVAL                         R26 3
      139 NEWCLOSURE                       R27 P13
      140 CAPTURE                          VAL R6
      141 CALL                             R26 1 1
      142 GETUPVAL                         R27 3
      143 NEWCLOSURE                       R28 P14
      144 CAPTURE                          VAL R8
      145 CALL                             R27 1 1
      146 GETUPVAL                         R28 8
      147 CALL                             R28 0 1
      148 GETUPVAL                         R29 8
      149 CALL                             R29 0 1
      150 GETUPVAL                         R30 0
      151 GETTABLEKS                       R30 R30 K11 ["createElement"]
      153 GETUPVAL                         R31 9
      154 DUPTABLE                         R32 K14 [{["tag"] = "col gap-medium size-full padding-medium"}]
      155 DUPTABLE                         R33 K18 [{"TopBar", "Body", "DeleteWarning"}]
      156 GETUPVAL                         R34 0
      157 GETTABLEKS                       R34 R34 K11 ["createElement"]
      159 GETUPVAL                         R35 10
      160 DUPTABLE                         R36 K25 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      161 MOVE                             R37 R28
      162 CALL                             R37 0 1
      163 SETTABLEKS                       R37 R36 K19 ["layoutOrder"]
      165 SETTABLEKS                       R18 R36 K20 ["onAddMaterial"]
      167 SETTABLEKS                       R25 R36 K21 ["onSearchChanged"]
      169 SETTABLEKS                       R26 R36 K22 ["onViewTypeChanged"]
      171 SETTABLEKS                       R3 R36 K23 ["searchText"]
      173 SETTABLEKS                       R5 R36 K24 ["viewType"]
      175 CALL                             R34 2 1
      176 SETTABLEKS                       R34 R33 K15 ["TopBar"]
      178 GETUPVAL                         R34 0
      179 GETTABLEKS                       R34 R34 K11 ["createElement"]
      181 GETUPVAL                         R35 9
      182 DUPTABLE                         R36 K28 [{["tag"] = "row grow size-full-0", ["LayoutOrder"]}]
      183 MOVE                             R37 R28
      184 CALL                             R37 0 1
      185 SETTABLEKS                       R37 R36 K27 ["LayoutOrder"]
      187 DUPTABLE                         R37 K31 [{"Grid", "Details"}]
      188 GETUPVAL                         R38 0
      189 GETTABLEKS                       R38 R38 K11 ["createElement"]
      191 GETUPVAL                         R39 9
      192 DUPTABLE                         R40 K33 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      193 MOVE                             R41 R29
      194 CALL                             R41 0 1
      195 SETTABLEKS                       R41 R40 K27 ["LayoutOrder"]
      197 DUPTABLE                         R41 K35 [{"MaterialGrid"}]
      198 GETUPVAL                         R42 0
      199 GETTABLEKS                       R42 R42 K11 ["createElement"]
      201 GETUPVAL                         R43 11
      202 DUPTABLE                         R44 K41 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "onSlotSelected", "onScrolledToSlot"}]
      203 SETTABLEKS                       R14 R44 K36 ["slotEntries"]
      205 SETTABLEKS                       R1 R44 K37 ["selectedSlotIndex"]
      207 SETTABLEKS                       R7 R44 K38 ["scrollToSlotIndex"]
      209 SETTABLEKS                       R5 R44 K24 ["viewType"]
      211 SETTABLEKS                       R15 R44 K39 ["onSlotSelected"]
      213 SETTABLEKS                       R27 R44 K40 ["onScrolledToSlot"]
      215 CALL                             R42 2 1
      216 SETTABLEKS                       R42 R41 K34 ["MaterialGrid"]
      218 CALL                             R38 3 1
      219 SETTABLEKS                       R38 R37 K29 ["Grid"]
      221 JUMPIFNOT                        R13 ; [+45]
      222 GETUPVAL                         R38 0
      223 GETTABLEKS                       R38 R38 K11 ["createElement"]
      225 GETUPVAL                         R39 9
      226 DUPTABLE                         R40 K44 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      227 MOVE                             R41 R29
      228 CALL                             R41 0 1
      229 SETTABLEKS                       R41 R40 K27 ["LayoutOrder"]
      231 GETIMPORT                        R41 K47 [UDim2.new]
      233 LOADN                            R42 0
      234 LOADN                            R43 300
      235 LOADN                            R44 1
      236 LOADN                            R45 0
      237 CALL                             R41 4 1
      238 SETTABLEKS                       R41 R40 K43 ["Size"]
      240 DUPTABLE                         R41 K49 [{"Panel"}]
      241 GETUPVAL                         R42 0
      242 GETTABLEKS                       R42 R42 K11 ["createElement"]
      244 GETUPVAL                         R43 12
      245 DUPTABLE                         R44 K57 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      246 GETTABLEKS                       R45 R11 K58 ["canAddSlot"]
      248 SETTABLEKS                       R45 R44 K50 ["canDuplicate"]
      250 SETTABLEKS                       R13 R44 K51 ["entry"]
      252 SETTABLEKS                       R19 R44 K52 ["onClose"]
      254 SETTABLEKS                       R22 R44 K53 ["onDelete"]
      256 SETTABLEKS                       R20 R44 K54 ["onDuplicate"]
      258 SETTABLEKS                       R17 R44 K55 ["onEntryChangeCommitted"]
      260 SETTABLEKS                       R16 R44 K56 ["onEntryChanged"]
      262 CALL                             R42 2 1
      263 SETTABLEKS                       R42 R41 K48 ["Panel"]
      265 CALL                             R38 3 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R38
      268 SETTABLEKS                       R38 R37 K30 ["Details"]
      270 CALL                             R34 3 1
      271 SETTABLEKS                       R34 R33 K16 ["Body"]
      273 JUMPIFEQKNIL                     R9 ; [+12]
      275 GETUPVAL                         R34 0
      276 GETTABLEKS                       R34 R34 K11 ["createElement"]
      278 GETUPVAL                         R35 13
      279 DUPTABLE                         R36 K61 [{"onCancel", "onConfirm"}]
      280 SETTABLEKS                       R23 R36 K59 ["onCancel"]
      282 SETTABLEKS                       R24 R36 K60 ["onConfirm"]
      284 CALL                             R34 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R34
      287 SETTABLEKS                       R34 R33 K17 ["DeleteWarning"]
      289 CALL                             R30 3 -1
      290 RETURN                           R30 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["destroy"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["slotApi"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["terrain"]
        6 JUMPIF                           R2 ; [+4]
        7 GETIMPORT                        R2 K3 [workspace]
        9 GETTABLEKS                       R2 R2 K4 ["Terrain"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       17 LOADK                            R5 K5 ["Workspace must contain Terrain"]
       18 GETIMPORT                        R3 K7 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K8 ["useMemo"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R5 0 1
       29 GETTABLEKS                       R6 R0 K9 ["localization"]
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETTABLEKS                       R5 R0 K9 ["localization"]
       36 OR                               R4 R5 R3
       37 JUMPIFNOTEQKNIL                  R4 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       43 LOADK                            R7 K10 ["TerrainPaletteApp must have localization"]
       44 GETIMPORT                        R5 K7 [assert]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       50 DUPCLOSURE                       R6 K11 [PROTO_20]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R7 0 0
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       58 DUPCLOSURE                       R7 K12 [PROTO_21]
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 NEWTABLE                         R8 0 0
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       68 NEWCLOSURE                       R8 P3
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R9 0 1
       72 MOVE                             R10 R5
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R7 2 0
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       79 NEWCLOSURE                       R8 P4
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R9 0 1
       83 MOVE                             R10 R3
       84 SETLIST                          R9 R10 1 [1]
       86 CALL                             R7 2 0
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K14 ["createElement"]
       90 GETUPVAL                         R8 7
       91 GETTABLEKS                       R8 R8 K15 ["Provider"]
       93 DUPTABLE                         R9 K16 [{"localization"}]
       94 SETTABLEKS                       R4 R9 K9 ["localization"]
       96 DUPTABLE                         R10 K18 [{"Content"}]
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R11 R11 K19 ["provide"]
      100 NEWTABLE                         R12 0 2
      102 MOVE                             R13 R5
      103 MOVE                             R14 R6
      104 SETLIST                          R12 R13 2 [1]
      106 DUPTABLE                         R13 K21 [{"FoundationProvider"}]
      107 GETUPVAL                         R14 1
      108 GETTABLEKS                       R14 R14 K14 ["createElement"]
      110 GETUPVAL                         R15 9
      111 DUPTABLE                         R16 K25 [{"onStyleSheetChange", "overlayGui", "plugin"}]
      112 GETTABLEKS                       R17 R0 K22 ["onStyleSheetChange"]
      114 SETTABLEKS                       R17 R16 K22 ["onStyleSheetChange"]
      116 GETTABLEKS                       R17 R0 K23 ["overlayGui"]
      118 SETTABLEKS                       R17 R16 K23 ["overlayGui"]
      120 GETTABLEKS                       R17 R0 K24 ["plugin"]
      122 SETTABLEKS                       R17 R16 K24 ["plugin"]
      124 DUPTABLE                         R17 K18 [{"Content"}]
      125 GETUPVAL                         R18 1
      126 GETTABLEKS                       R18 R18 K14 ["createElement"]
      128 GETUPVAL                         R19 10
      129 DUPTABLE                         R20 K29 [{"refreshKey", "historyService", "onCatalogChanged", "slotApi", "terrain"}]
      130 GETTABLEKS                       R21 R0 K26 ["refreshKey"]
      132 SETTABLEKS                       R21 R20 K26 ["refreshKey"]
      134 GETTABLEKS                       R21 R0 K27 ["historyService"]
      136 SETTABLEKS                       R21 R20 K27 ["historyService"]
      138 GETTABLEKS                       R21 R0 K28 ["onCatalogChanged"]
      140 SETTABLEKS                       R21 R20 K28 ["onCatalogChanged"]
      142 SETTABLEKS                       R1 R20 K0 ["slotApi"]
      144 SETTABLEKS                       R2 R20 K1 ["terrain"]
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K17 ["Content"]
      149 CALL                             R14 3 1
      150 SETTABLEKS                       R14 R13 K20 ["FoundationProvider"]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K17 ["Content"]
      155 CALL                             R7 3 -1
      156 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["DeleteWarningDialog"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["DetailsPanel"]
       20 GETTABLEKS                       R3 R3 K8 ["DetailsPanel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["MaterialFramework"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R7 K13 ["MaterialDisplay"]
       50 GETTABLEKS                       R7 R7 K14 ["MaterialGrid"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R8 K15 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Parent"]
       64 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Parent"]
       71 GETTABLEKS                       R10 R10 K17 ["StudioFoundation"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K18 ["Libraries"]
       78 GETTABLEKS                       R11 R11 K19 ["TerrainSlotApi"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Domain"]
       85 GETTABLEKS                       R12 R12 K21 ["TerrainMaterialTypes"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K20 ["Domain"]
       92 GETTABLEKS                       R13 R13 K22 ["TerrainMaterials"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R14 K1 [script]
       99 GETTABLEKS                       R14 R14 K9 ["Parent"]
      101 GETTABLEKS                       R14 R14 K9 ["Parent"]
      103 GETTABLEKS                       R14 R14 K23 ["TopBar"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K24 ["Resources"]
      110 GETTABLEKS                       R15 R15 K25 ["Localization"]
      112 GETTABLEKS                       R15 R15 K26 ["createLocalization"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K27 ["Util"]
      119 GETTABLEKS                       R16 R16 K28 ["filterEntries"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      126 GETTABLEKS                       R17 R17 K30 ["useTerrainSlots"]
      128 CALL                             R16 1 1
      129 GETTABLEKS                       R17 R3 K31 ["View"]
      131 GETTABLEKS                       R18 R8 K32 ["createNextOrder"]
      133 GETTABLEKS                       R19 R8 K33 ["useEventCallback"]
      135 GETTABLEKS                       R20 R9 K6 ["Components"]
      137 GETTABLEKS                       R20 R20 K34 ["FoundationProviderAdapter"]
      139 GETTABLEKS                       R21 R4 K35 ["ContextServices"]
      141 GETTABLEKS                       R22 R4 K36 ["Style"]
      143 GETTABLEKS                       R22 R22 K37 ["Themes"]
      145 GETTABLEKS                       R22 R22 K38 ["DarkTheme"]
      147 GETTABLEKS                       R23 R4 K36 ["Style"]
      149 GETTABLEKS                       R23 R23 K37 ["Themes"]
      151 GETTABLEKS                       R23 R23 K39 ["LightTheme"]
      153 GETTABLEKS                       R24 R5 K24 ["Resources"]
      155 GETTABLEKS                       R24 R24 K40 ["Theme"]
      157 GETTABLEKS                       R25 R9 K41 ["Contexts"]
      159 GETTABLEKS                       R25 R25 K25 ["Localization"]
      161 GETTABLEKS                       R26 R5 K42 ["Context"]
      163 GETTABLEKS                       R26 R26 K43 ["StudioServices"]
      165 GETIMPORT                        R27 K47 [Enum.Material.Asphalt]
      167 GETIMPORT                        R28 K50 [Color3.fromRGB]
      169 LOADN                            R29 80
      170 LOADN                            R30 84
      171 LOADN                            R31 84
      172 CALL                             R28 3 1
      173 DUPCLOSURE                       R29 K51 [PROTO_0]
      174 DUPCLOSURE                       R30 K52 [PROTO_18]
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R29
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R1
      189 DUPCLOSURE                       R31 K53 [PROTO_26]
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R30
      201 RETURN                           R31 1
