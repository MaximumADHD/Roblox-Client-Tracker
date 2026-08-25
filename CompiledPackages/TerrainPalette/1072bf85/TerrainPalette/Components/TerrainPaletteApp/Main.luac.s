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
       26 DUPTABLE                         R12 K6 [{"historyService", "slotApi", "terrain"}]
       27 GETTABLEKS                       R13 R0 K3 ["historyService"]
       29 SETTABLEKS                       R13 R12 K3 ["historyService"]
       31 GETTABLEKS                       R13 R0 K4 ["slotApi"]
       33 SETTABLEKS                       R13 R12 K4 ["slotApi"]
       35 GETTABLEKS                       R13 R0 K5 ["terrain"]
       37 SETTABLEKS                       R13 R12 K5 ["terrain"]
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R12 R11 K7 ["entries"]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R13 R13 K8 ["useMemo"]
       45 NEWCLOSURE                       R14 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R12
       48 NEWTABLE                         R15 0 2
       50 MOVE                             R16 R1
       51 MOVE                             R17 R12
       52 SETLIST                          R15 R16 2 [1]
       54 CALL                             R13 2 1
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K8 ["useMemo"]
       58 NEWCLOSURE                       R15 P1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R12
       62 NEWTABLE                         R16 0 2
       64 MOVE                             R17 R3
       65 MOVE                             R18 R12
       66 SETLIST                          R16 R17 2 [1]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 3
       70 NEWCLOSURE                       R16 P2
       71 CAPTURE                          VAL R2
       72 CALL                             R15 1 1
       73 GETUPVAL                         R16 3
       74 NEWCLOSURE                       R17 P3
       75 CAPTURE                          VAL R11
       76 CALL                             R16 1 1
       77 GETUPVAL                         R17 3
       78 NEWCLOSURE                       R18 P4
       79 CAPTURE                          VAL R11
       80 CALL                             R17 1 1
       81 GETUPVAL                         R18 3
       82 NEWCLOSURE                       R19 P5
       83 CAPTURE                          VAL R11
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R8
       89 CALL                             R18 1 1
       90 GETUPVAL                         R19 3
       91 NEWCLOSURE                       R20 P6
       92 CAPTURE                          VAL R2
       93 CALL                             R19 1 1
       94 GETUPVAL                         R20 3
       95 NEWCLOSURE                       R21 P7
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CALL                             R20 1 1
      102 GETUPVAL                         R21 3
      103 NEWCLOSURE                       R22 P8
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R2
      108 CALL                             R21 1 1
      109 GETUPVAL                         R22 3
      110 NEWCLOSURE                       R23 P9
      111 CAPTURE                          VAL R1
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R21
      115 CALL                             R22 1 1
      116 GETUPVAL                         R23 3
      117 NEWCLOSURE                       R24 P10
      118 CAPTURE                          VAL R10
      119 CALL                             R23 1 1
      120 GETUPVAL                         R24 3
      121 NEWCLOSURE                       R25 P11
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R21
      125 CALL                             R24 1 1
      126 GETUPVAL                         R25 3
      127 NEWCLOSURE                       R26 P12
      128 CAPTURE                          VAL R4
      129 CALL                             R25 1 1
      130 GETUPVAL                         R26 3
      131 NEWCLOSURE                       R27 P13
      132 CAPTURE                          VAL R6
      133 CALL                             R26 1 1
      134 GETUPVAL                         R27 3
      135 NEWCLOSURE                       R28 P14
      136 CAPTURE                          VAL R8
      137 CALL                             R27 1 1
      138 GETUPVAL                         R28 8
      139 CALL                             R28 0 1
      140 GETUPVAL                         R29 8
      141 CALL                             R29 0 1
      142 GETUPVAL                         R30 0
      143 GETTABLEKS                       R30 R30 K9 ["createElement"]
      145 GETUPVAL                         R31 9
      146 DUPTABLE                         R32 K12 [{["tag"] = "col gap-medium size-full padding-medium"}]
      147 DUPTABLE                         R33 K16 [{"TopBar", "Body", "DeleteWarning"}]
      148 GETUPVAL                         R34 0
      149 GETTABLEKS                       R34 R34 K9 ["createElement"]
      151 GETUPVAL                         R35 10
      152 DUPTABLE                         R36 K23 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      153 MOVE                             R37 R28
      154 CALL                             R37 0 1
      155 SETTABLEKS                       R37 R36 K17 ["layoutOrder"]
      157 SETTABLEKS                       R18 R36 K18 ["onAddMaterial"]
      159 SETTABLEKS                       R25 R36 K19 ["onSearchChanged"]
      161 SETTABLEKS                       R26 R36 K20 ["onViewTypeChanged"]
      163 SETTABLEKS                       R3 R36 K21 ["searchText"]
      165 SETTABLEKS                       R5 R36 K22 ["viewType"]
      167 CALL                             R34 2 1
      168 SETTABLEKS                       R34 R33 K13 ["TopBar"]
      170 GETUPVAL                         R34 0
      171 GETTABLEKS                       R34 R34 K9 ["createElement"]
      173 GETUPVAL                         R35 9
      174 DUPTABLE                         R36 K26 [{["tag"] = "row grow size-full-0", ["LayoutOrder"]}]
      175 MOVE                             R37 R28
      176 CALL                             R37 0 1
      177 SETTABLEKS                       R37 R36 K25 ["LayoutOrder"]
      179 DUPTABLE                         R37 K29 [{"Grid", "Details"}]
      180 GETUPVAL                         R38 0
      181 GETTABLEKS                       R38 R38 K9 ["createElement"]
      183 GETUPVAL                         R39 9
      184 DUPTABLE                         R40 K31 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      185 MOVE                             R41 R29
      186 CALL                             R41 0 1
      187 SETTABLEKS                       R41 R40 K25 ["LayoutOrder"]
      189 DUPTABLE                         R41 K33 [{"MaterialGrid"}]
      190 GETUPVAL                         R42 0
      191 GETTABLEKS                       R42 R42 K9 ["createElement"]
      193 GETUPVAL                         R43 11
      194 DUPTABLE                         R44 K39 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "onSlotSelected", "onScrolledToSlot"}]
      195 SETTABLEKS                       R14 R44 K34 ["slotEntries"]
      197 SETTABLEKS                       R1 R44 K35 ["selectedSlotIndex"]
      199 SETTABLEKS                       R7 R44 K36 ["scrollToSlotIndex"]
      201 SETTABLEKS                       R5 R44 K22 ["viewType"]
      203 SETTABLEKS                       R15 R44 K37 ["onSlotSelected"]
      205 SETTABLEKS                       R27 R44 K38 ["onScrolledToSlot"]
      207 CALL                             R42 2 1
      208 SETTABLEKS                       R42 R41 K32 ["MaterialGrid"]
      210 CALL                             R38 3 1
      211 SETTABLEKS                       R38 R37 K27 ["Grid"]
      213 JUMPIFNOT                        R13 ; [+45]
      214 GETUPVAL                         R38 0
      215 GETTABLEKS                       R38 R38 K9 ["createElement"]
      217 GETUPVAL                         R39 9
      218 DUPTABLE                         R40 K42 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      219 MOVE                             R41 R29
      220 CALL                             R41 0 1
      221 SETTABLEKS                       R41 R40 K25 ["LayoutOrder"]
      223 GETIMPORT                        R41 K45 [UDim2.new]
      225 LOADN                            R42 0
      226 LOADN                            R43 300
      227 LOADN                            R44 1
      228 LOADN                            R45 0
      229 CALL                             R41 4 1
      230 SETTABLEKS                       R41 R40 K41 ["Size"]
      232 DUPTABLE                         R41 K47 [{"Panel"}]
      233 GETUPVAL                         R42 0
      234 GETTABLEKS                       R42 R42 K9 ["createElement"]
      236 GETUPVAL                         R43 12
      237 DUPTABLE                         R44 K55 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      238 GETTABLEKS                       R45 R11 K56 ["canAddSlot"]
      240 SETTABLEKS                       R45 R44 K48 ["canDuplicate"]
      242 SETTABLEKS                       R13 R44 K49 ["entry"]
      244 SETTABLEKS                       R19 R44 K50 ["onClose"]
      246 SETTABLEKS                       R22 R44 K51 ["onDelete"]
      248 SETTABLEKS                       R20 R44 K52 ["onDuplicate"]
      250 SETTABLEKS                       R17 R44 K53 ["onEntryChangeCommitted"]
      252 SETTABLEKS                       R16 R44 K54 ["onEntryChanged"]
      254 CALL                             R42 2 1
      255 SETTABLEKS                       R42 R41 K46 ["Panel"]
      257 CALL                             R38 3 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R38
      260 SETTABLEKS                       R38 R37 K28 ["Details"]
      262 CALL                             R34 3 1
      263 SETTABLEKS                       R34 R33 K14 ["Body"]
      265 JUMPIFEQKNIL                     R9 ; [+12]
      267 GETUPVAL                         R34 0
      268 GETTABLEKS                       R34 R34 K9 ["createElement"]
      270 GETUPVAL                         R35 13
      271 DUPTABLE                         R36 K59 [{"onCancel", "onConfirm"}]
      272 SETTABLEKS                       R23 R36 K57 ["onCancel"]
      274 SETTABLEKS                       R24 R36 K58 ["onConfirm"]
      276 CALL                             R34 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R34
      279 SETTABLEKS                       R34 R33 K15 ["DeleteWarning"]
      281 CALL                             R30 3 -1
      282 RETURN                           R30 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_23:
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
       24 DUPCLOSURE                       R4 K9 [PROTO_19]
       25 CAPTURE                          UPVAL U2
       26 NEWTABLE                         R5 0 0
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       32 DUPCLOSURE                       R5 K10 [PROTO_20]
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K11 ["useEffect"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R7 0 1
       46 MOVE                             R8 R3
       47 SETLIST                          R7 R8 1 [1]
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 6
       51 GETTABLEKS                       R5 R5 K12 ["provide"]
       53 NEWTABLE                         R6 0 2
       55 MOVE                             R7 R3
       56 MOVE                             R8 R4
       57 SETLIST                          R6 R7 2 [1]
       59 DUPTABLE                         R7 K14 [{"FoundationProvider"}]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K15 ["createElement"]
       63 GETUPVAL                         R9 7
       64 DUPTABLE                         R10 K19 [{"onStyleSheetChange", "overlayGui", "plugin"}]
       65 GETTABLEKS                       R11 R0 K16 ["onStyleSheetChange"]
       67 SETTABLEKS                       R11 R10 K16 ["onStyleSheetChange"]
       69 GETTABLEKS                       R11 R0 K17 ["overlayGui"]
       71 SETTABLEKS                       R11 R10 K17 ["overlayGui"]
       73 GETTABLEKS                       R11 R0 K18 ["plugin"]
       75 SETTABLEKS                       R11 R10 K18 ["plugin"]
       77 DUPTABLE                         R11 K21 [{"Content"}]
       78 GETUPVAL                         R12 1
       79 GETTABLEKS                       R12 R12 K15 ["createElement"]
       81 GETUPVAL                         R13 8
       82 DUPTABLE                         R14 K23 [{"historyService", "slotApi", "terrain"}]
       83 GETTABLEKS                       R15 R0 K22 ["historyService"]
       85 SETTABLEKS                       R15 R14 K22 ["historyService"]
       87 SETTABLEKS                       R1 R14 K0 ["slotApi"]
       89 SETTABLEKS                       R2 R14 K1 ["terrain"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K20 ["Content"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K13 ["FoundationProvider"]
       97 CALL                             R5 2 -1
       98 RETURN                           R5 -1

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
      108 GETTABLEKS                       R15 R0 K24 ["Util"]
      110 GETTABLEKS                       R15 R15 K25 ["filterEntries"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      117 GETTABLEKS                       R16 R16 K27 ["useTerrainSlots"]
      119 CALL                             R15 1 1
      120 GETTABLEKS                       R16 R3 K28 ["View"]
      122 GETTABLEKS                       R17 R8 K29 ["createNextOrder"]
      124 GETTABLEKS                       R18 R8 K30 ["useEventCallback"]
      126 GETTABLEKS                       R19 R9 K6 ["Components"]
      128 GETTABLEKS                       R19 R19 K31 ["FoundationProviderAdapter"]
      130 GETTABLEKS                       R20 R4 K32 ["ContextServices"]
      132 GETTABLEKS                       R21 R4 K33 ["Style"]
      134 GETTABLEKS                       R21 R21 K34 ["Themes"]
      136 GETTABLEKS                       R21 R21 K35 ["DarkTheme"]
      138 GETTABLEKS                       R22 R4 K33 ["Style"]
      140 GETTABLEKS                       R22 R22 K34 ["Themes"]
      142 GETTABLEKS                       R22 R22 K36 ["LightTheme"]
      144 GETTABLEKS                       R23 R5 K37 ["Resources"]
      146 GETTABLEKS                       R23 R23 K38 ["Theme"]
      148 GETTABLEKS                       R24 R5 K39 ["Context"]
      150 GETTABLEKS                       R24 R24 K40 ["StudioServices"]
      152 GETIMPORT                        R25 K44 [Enum.Material.Asphalt]
      154 GETIMPORT                        R26 K47 [Color3.fromRGB]
      156 LOADN                            R27 80
      157 LOADN                            R28 84
      158 LOADN                            R29 84
      159 CALL                             R26 3 1
      160 DUPCLOSURE                       R27 K48 [PROTO_0]
      161 DUPCLOSURE                       R28 K49 [PROTO_18]
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R27
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R1
      176 DUPCLOSURE                       R29 K50 [PROTO_23]
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R28
      186 RETURN                           R29 1
