PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openPalette"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ItemData"]
        6 GETTABLEKS                       R1 R1 K2 ["palette"]
        8 GETTABLEKS                       R1 R1 K3 ["Key"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideEquippedItem"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ItemData"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showEquippedItem"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ItemData"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setHideAllEquippedItems"]
        3 LOADB                            R2 1
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setHideAllEquippedItems"]
        3 LOADB                            R2 0
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["equippedItems"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFEQ                         R6 R1 ; [+8]
        8 GETTABLEKS                       R8 R6 K2 ["isHidden"]
       10 ORK                              R7 R8 K1 [False]
       11 JUMPIFEQ                         R0 R7 ; [+3]
       13 LOADB                            R7 0
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-10]
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeEquippedItem"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ItemData"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+89]
        6 GETIMPORT                        R4 K6 [Enum.ModifierKey.Shift]
        8 NAMECALL                         R2 R1 K7 ["IsModifierKeyDown"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+26]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K8 ["ItemData"]
       15 GETTABLEKS                       R2 R2 K9 ["isHidden"]
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETUPVAL                         R2 1
       19 LOADB                            R3 1
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 2
       23 CALL                             R2 0 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 1
       29 LOADB                            R3 0
       30 CALL                             R2 1 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETUPVAL                         R2 3
       33 CALL                             R2 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 2
       36 CALL                             R2 0 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R4 K11 [Enum.ModifierKey.Alt]
       40 NAMECALL                         R2 R1 K7 ["IsModifierKeyDown"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+38]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K8 ["ItemData"]
       47 GETTABLEKS                       R2 R2 K9 ["isHidden"]
       49 JUMPIFNOT                        R2 ; [+16]
       50 GETUPVAL                         R2 1
       51 LOADB                            R3 0
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K8 ["ItemData"]
       55 CALL                             R2 2 1
       56 JUMPIFNOT                        R2 ; [+3]
       57 GETUPVAL                         R2 3
       58 CALL                             R2 0 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R2 2
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K8 ["ItemData"]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R2 1
       67 LOADB                            R3 1
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K8 ["ItemData"]
       71 CALL                             R2 2 1
       72 JUMPIFNOT                        R2 ; [+3]
       73 GETUPVAL                         R2 2
       74 CALL                             R2 0 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 3
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R3 R3 K8 ["ItemData"]
       80 CALL                             R2 1 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K8 ["ItemData"]
       85 GETTABLEKS                       R2 R2 K9 ["isHidden"]
       87 JUMPIFNOT                        R2 ; [+3]
       88 GETUPVAL                         R2 4
       89 CALL                             R2 0 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R2 5
       92 CALL                             R2 0 0
       93 RETURN                           R0 0
       94 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       96 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseMovement]
       98 JUMPIFNOTEQ                      R2 R3 ; [+4]
      100 GETUPVAL                         R2 6
      101 LOADB                            R3 1
      102 CALL                             R2 1 0
      103 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Parent"]
        8 NEWTABLE                         R2 0 8
       10 DUPTABLE                         R3 K4 [{"Text", "OnItemClicked"}]
       11 GETUPVAL                         R4 3
       12 LOADK                            R6 K5 ["EquippedItemContextMenu"]
       13 LOADK                            R7 K6 ["OpenPalette"]
       14 DUPTABLE                         R8 K8 [{"palette"}]
       15 GETUPVAL                         R9 3
       16 LOADK                            R11 K9 ["AssetPalettes"]
       17 GETUPVAL                         R12 4
       18 GETTABLEKS                       R12 R12 K10 ["ItemData"]
       20 GETTABLEKS                       R12 R12 K7 ["palette"]
       22 GETTABLEKS                       R12 R12 K11 ["Key"]
       24 NAMECALL                         R9 R9 K12 ["getText"]
       26 CALL                             R9 3 1
       27 SETTABLEKS                       R9 R8 K7 ["palette"]
       29 NAMECALL                         R4 R4 K12 ["getText"]
       31 CALL                             R4 4 1
       32 SETTABLEKS                       R4 R3 K2 ["Text"]
       34 GETUPVAL                         R4 5
       35 SETTABLEKS                       R4 R3 K3 ["OnItemClicked"]
       37 DUPTABLE                         R4 K15 [{["ShowSeparator"] = True}]
       38 DUPTABLE                         R5 K4 [{"Text", "OnItemClicked"}]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K10 ["ItemData"]
       42 GETTABLEKS                       R7 R7 K16 ["isHidden"]
       44 JUMPIFNOT                        R7 ; [+7]
       45 GETUPVAL                         R6 3
       46 LOADK                            R8 K5 ["EquippedItemContextMenu"]
       47 LOADK                            R9 K17 ["ShowItem"]
       48 NAMECALL                         R6 R6 K12 ["getText"]
       50 CALL                             R6 3 1
       51 JUMP                             ; [+6]
       52 GETUPVAL                         R6 3
       53 LOADK                            R8 K5 ["EquippedItemContextMenu"]
       54 LOADK                            R9 K18 ["HideItem"]
       55 NAMECALL                         R6 R6 K12 ["getText"]
       57 CALL                             R6 3 1
       58 SETTABLEKS                       R6 R5 K2 ["Text"]
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R7 R7 K10 ["ItemData"]
       63 GETTABLEKS                       R7 R7 K16 ["isHidden"]
       65 JUMPIFNOT                        R7 ; [+2]
       66 GETUPVAL                         R6 6
       67 JUMP                             ; [+1]
       68 GETUPVAL                         R6 7
       69 SETTABLEKS                       R6 R5 K3 ["OnItemClicked"]
       71 DUPTABLE                         R6 K4 [{"Text", "OnItemClicked"}]
       72 GETUPVAL                         R7 3
       73 LOADK                            R9 K5 ["EquippedItemContextMenu"]
       74 LOADK                            R10 K19 ["HideAllItems"]
       75 NAMECALL                         R7 R7 K12 ["getText"]
       77 CALL                             R7 3 1
       78 SETTABLEKS                       R7 R6 K2 ["Text"]
       80 GETUPVAL                         R7 8
       81 SETTABLEKS                       R7 R6 K3 ["OnItemClicked"]
       83 DUPTABLE                         R7 K4 [{"Text", "OnItemClicked"}]
       84 GETUPVAL                         R8 3
       85 LOADK                            R10 K5 ["EquippedItemContextMenu"]
       86 LOADK                            R11 K20 ["ShowAllItems"]
       87 NAMECALL                         R8 R8 K12 ["getText"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K2 ["Text"]
       92 GETUPVAL                         R8 9
       93 SETTABLEKS                       R8 R7 K3 ["OnItemClicked"]
       95 DUPTABLE                         R8 K15 [{["ShowSeparator"] = True}]
       96 DUPTABLE                         R9 K4 [{"Text", "OnItemClicked"}]
       97 GETUPVAL                         R10 3
       98 LOADK                            R12 K5 ["EquippedItemContextMenu"]
       99 LOADK                            R13 K21 ["UnequipItem"]
      100 NAMECALL                         R10 R10 K12 ["getText"]
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K2 ["Text"]
      105 GETUPVAL                         R10 10
      106 SETTABLEKS                       R10 R9 K3 ["OnItemClicked"]
      108 DUPTABLE                         R10 K4 [{"Text", "OnItemClicked"}]
      109 GETUPVAL                         R11 3
      110 LOADK                            R13 K5 ["EquippedItemContextMenu"]
      111 LOADK                            R14 K22 ["UnequipAllItems"]
      112 NAMECALL                         R11 R11 K12 ["getText"]
      114 CALL                             R11 3 1
      115 SETTABLEKS                       R11 R10 K2 ["Text"]
      117 GETUPVAL                         R11 11
      118 GETTABLEKS                       R11 R11 K23 ["removeAllEquippedItems"]
      120 SETTABLEKS                       R11 R10 K3 ["OnItemClicked"]
      122 SETLIST                          R2 R3 8 [1]
      124 CALL                             R0 2 0
      125 GETUPVAL                         R0 0
      126 GETTABLEKS                       R0 R0 K24 ["disable"]
      128 CALL                             R0 0 0
      129 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrementDummyPreviewLock"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isHovered"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["incrementDummyPreviewLock"]
        9 CALL                             R0 0 0
       10 NEWCLOSURE                       R0 P0
       11 CAPTURE                          UPVAL U1
       12 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["EquippedItemSideMenu"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["useContext"]
       19 GETUPVAL                         R5 4
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["useState"]
       24 LOADB                            R6 0
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 5
       27 LOADB                            R8 0
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 5
       30 LOADB                            R9 0
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R9 R9 K5 ["useRef"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 6
       38 MOVE                             R11 R9
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R0
       46 NEWTABLE                         R13 0 2
       48 GETTABLEKS                       R14 R0 K7 ["ItemData"]
       50 GETTABLEKS                       R15 R3 K8 ["openPalette"]
       52 SETLIST                          R13 R14 2 [1]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       58 NEWCLOSURE                       R13 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R14 0 2
       63 GETTABLEKS                       R15 R0 K7 ["ItemData"]
       65 GETTABLEKS                       R16 R4 K9 ["hideEquippedItem"]
       67 SETLIST                          R14 R15 2 [1]
       69 CALL                             R12 2 1
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       73 NEWCLOSURE                       R14 P2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R15 0 2
       78 GETTABLEKS                       R16 R0 K7 ["ItemData"]
       80 GETTABLEKS                       R17 R4 K10 ["showEquippedItem"]
       82 SETLIST                          R15 R16 2 [1]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       88 NEWCLOSURE                       R15 P3
       89 CAPTURE                          VAL R4
       90 NEWTABLE                         R16 0 1
       92 GETTABLEKS                       R17 R4 K11 ["setHideAllEquippedItems"]
       94 SETLIST                          R16 R17 1 [1]
       96 CALL                             R14 2 1
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R15 R15 K6 ["useCallback"]
      100 NEWCLOSURE                       R16 P4
      101 CAPTURE                          VAL R4
      102 NEWTABLE                         R17 0 1
      104 GETTABLEKS                       R18 R4 K11 ["setHideAllEquippedItems"]
      106 SETLIST                          R17 R18 1 [1]
      108 CALL                             R15 2 1
      109 GETUPVAL                         R16 2
      110 GETTABLEKS                       R16 R16 K6 ["useCallback"]
      112 NEWCLOSURE                       R17 P5
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R18 0 1
      116 GETTABLEKS                       R19 R4 K12 ["equippedItems"]
      118 SETLIST                          R18 R19 1 [1]
      120 CALL                             R16 2 1
      121 GETUPVAL                         R17 2
      122 GETTABLEKS                       R17 R17 K6 ["useCallback"]
      124 NEWCLOSURE                       R18 P6
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R19 0 2
      129 GETTABLEKS                       R20 R0 K7 ["ItemData"]
      131 GETTABLEKS                       R21 R4 K13 ["removeEquippedItem"]
      133 SETLIST                          R19 R20 2 [1]
      135 CALL                             R17 2 1
      136 GETUPVAL                         R18 2
      137 GETTABLEKS                       R18 R18 K6 ["useCallback"]
      139 NEWCLOSURE                       R19 P7
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R6
      147 NEWTABLE                         R20 0 5
      149 GETTABLEKS                       R21 R0 K7 ["ItemData"]
      151 GETTABLEKS                       R21 R21 K14 ["isHidden"]
      153 MOVE                             R22 R13
      154 MOVE                             R23 R12
      155 MOVE                             R24 R15
      156 MOVE                             R25 R14
      157 SETLIST                          R20 R21 5 [1]
      159 CALL                             R18 2 1
      160 GETUPVAL                         R19 2
      161 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      163 NEWCLOSURE                       R20 P8
      164 CAPTURE                          VAL R6
      165 NEWTABLE                         R21 0 0
      167 CALL                             R19 2 1
      168 NEWCLOSURE                       R20 P9
      169 CAPTURE                          VAL R8
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          UPVAL U8
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R4
      181 GETUPVAL                         R21 2
      182 GETTABLEKS                       R21 R21 K15 ["useEffect"]
      184 NEWCLOSURE                       R22 P10
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R3
      187 NEWTABLE                         R23 0 1
      189 GETTABLEKS                       R24 R10 K16 ["isHovered"]
      191 SETLIST                          R23 R24 1 [1]
      193 CALL                             R21 2 0
      194 GETTABLEKS                       R22 R0 K17 ["tileHovered"]
      196 JUMPIF                           R22 ; [+6]
      197 GETTABLEKS                       R22 R10 K16 ["isHovered"]
      199 JUMPIF                           R22 ; [+3]
      200 GETTABLEKS                       R22 R8 K18 ["enabled"]
      202 JUMPIFNOT                        R22 ; [+195]
      203 GETUPVAL                         R21 2
      204 GETTABLEKS                       R21 R21 K19 ["createElement"]
      206 GETUPVAL                         R22 9
      207 DUPTABLE                         R23 K25 [{["Style"] = "EquippedItemHoverMenuBackground", ["AnchorPoint"], ["Position"], ["Size"]}]
      208 GETIMPORT                        R24 K28 [Vector2.new]
      210 LOADK                            R25 K29 [-0.5]
      211 LOADN                            R26 0
      212 CALL                             R24 2 1
      213 SETTABLEKS                       R24 R23 K22 ["AnchorPoint"]
      215 GETIMPORT                        R24 K31 [UDim2.new]
      217 LOADK                            R25 K29 [-0.5]
      218 LOADN                            R26 0
      219 LOADN                            R27 0
      220 GETTABLEKS                       R28 R2 K32 ["Margin"]
      222 CALL                             R24 4 1
      223 SETTABLEKS                       R24 R23 K23 ["Position"]
      225 GETIMPORT                        R24 K31 [UDim2.new]
      227 LOADK                            R25 K33 [0.5]
      228 LOADN                            R26 0
      229 LOADN                            R27 1
      230 GETTABLEKS                       R29 R2 K32 ["Margin"]
      232 MINUS                            R28 R29
      233 CALL                             R24 4 1
      234 SETTABLEKS                       R24 R23 K24 ["Size"]
      236 DUPTABLE                         R24 K35 [{"Container"}]
      237 GETUPVAL                         R25 2
      238 GETTABLEKS                       R25 R25 K19 ["createElement"]
      240 GETUPVAL                         R26 10
      241 NEWTABLE                         R27 4 0
      243 GETIMPORT                        R28 K39 [Enum.FillDirection.Vertical]
      245 SETTABLEKS                       R28 R27 K40 ["Layout"]
      247 LOADN                            R28 8
      248 SETTABLEKS                       R28 R27 K41 ["Spacing"]
      250 SETTABLEKS                       R9 R27 K42 ["ref"]
      252 GETUPVAL                         R28 2
      253 GETTABLEKS                       R28 R28 K43 ["Event"]
      255 GETTABLEKS                       R28 R28 K44 ["MouseEnter"]
      257 GETTABLEKS                       R29 R10 K45 ["hover"]
      259 SETTABLE                         R29 R27 R28
      260 DUPTABLE                         R28 K48 [{"HideShowPane", "DotsPane"}]
      261 GETUPVAL                         R29 2
      262 GETTABLEKS                       R29 R29 K19 ["createElement"]
      264 GETUPVAL                         R30 10
      265 NEWTABLE                         R31 8 0
      267 GETIMPORT                        R32 K28 [Vector2.new]
      269 LOADN                            R33 0
      270 LOADN                            R34 0
      271 CALL                             R32 2 1
      272 SETTABLEKS                       R32 R31 K22 ["AnchorPoint"]
      274 GETIMPORT                        R32 K50 [UDim2.fromScale]
      276 LOADN                            R33 0
      277 LOADN                            R34 0
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K23 ["Position"]
      281 GETIMPORT                        R32 K53 [Enum.AutomaticSize.XY]
      283 SETTABLEKS                       R32 R31 K51 ["AutomaticSize"]
      285 GETUPVAL                         R32 2
      286 GETTABLEKS                       R32 R32 K43 ["Event"]
      288 GETTABLEKS                       R32 R32 K54 ["InputBegan"]
      290 SETTABLE                         R18 R31 R32
      291 GETUPVAL                         R32 2
      292 GETTABLEKS                       R32 R32 K43 ["Event"]
      294 GETTABLEKS                       R32 R32 K55 ["InputEnded"]
      296 SETTABLE                         R19 R31 R32
      297 DUPTABLE                         R32 K57 [{"HideShowIcon"}]
      298 GETUPVAL                         R33 2
      299 GETTABLEKS                       R33 R33 K19 ["createElement"]
      301 GETUPVAL                         R34 9
      302 DUPTABLE                         R35 K58 [{"Style", "Size"}]
      303 GETTABLEKS                       R37 R0 K7 ["ItemData"]
      305 GETTABLEKS                       R37 R37 K14 ["isHidden"]
      307 JUMPIFNOT                        R37 ; [+5]
      308 JUMPIFNOT                        R5 ; [+2]
      309 LOADK                            R36 K59 ["EquippedItemUnhideHoverIcon"]
      310 JUMP                             ; [+6]
      311 LOADK                            R36 K60 ["EquippedItemUnhideIcon"]
      312 JUMP                             ; [+4]
      313 JUMPIFNOT                        R5 ; [+2]
      314 LOADK                            R36 K61 ["EquippedItemHideHoverIcon"]
      315 JUMP                             ; [+1]
      316 LOADK                            R36 K62 ["EquippedItemHideIcon"]
      317 SETTABLEKS                       R36 R35 K20 ["Style"]
      319 GETIMPORT                        R36 K64 [UDim2.fromOffset]
      321 GETTABLEKS                       R37 R2 K65 ["IconSize"]
      323 GETTABLEKS                       R38 R2 K65 ["IconSize"]
      325 CALL                             R36 2 1
      326 SETTABLEKS                       R36 R35 K24 ["Size"]
      328 CALL                             R33 2 1
      329 SETTABLEKS                       R33 R32 K56 ["HideShowIcon"]
      331 CALL                             R29 3 1
      332 SETTABLEKS                       R29 R28 K46 ["HideShowPane"]
      334 GETUPVAL                         R29 2
      335 GETTABLEKS                       R29 R29 K19 ["createElement"]
      337 GETUPVAL                         R30 10
      338 NEWTABLE                         R31 4 0
      340 SETTABLEKS                       R20 R31 K66 ["OnClick"]
      342 GETIMPORT                        R32 K53 [Enum.AutomaticSize.XY]
      344 SETTABLEKS                       R32 R31 K51 ["AutomaticSize"]
      346 GETUPVAL                         R32 2
      347 GETTABLEKS                       R32 R32 K43 ["Event"]
      349 GETTABLEKS                       R32 R32 K44 ["MouseEnter"]
      351 GETTABLEKS                       R33 R7 K67 ["enable"]
      353 SETTABLE                         R33 R31 R32
      354 GETUPVAL                         R32 2
      355 GETTABLEKS                       R32 R32 K43 ["Event"]
      357 GETTABLEKS                       R32 R32 K68 ["MouseLeave"]
      359 GETTABLEKS                       R33 R7 K69 ["disable"]
      361 SETTABLE                         R33 R31 R32
      362 DUPTABLE                         R32 K71 [{"DotsIcon"}]
      363 GETUPVAL                         R33 2
      364 GETTABLEKS                       R33 R33 K19 ["createElement"]
      366 GETUPVAL                         R34 9
      367 DUPTABLE                         R35 K74 [{["Style"] = "EquippedItemDotsIcon", ["ImageColor3"], ["Size"]}]
      368 GETTABLEKS                       R37 R7 K18 ["enabled"]
      370 JUMPIFNOT                        R37 ; [+3]
      371 GETTABLEKS                       R36 R2 K75 ["DotsBackgroundHover"]
      373 JUMP                             ; [+2]
      374 GETTABLEKS                       R36 R2 K76 ["DotsBackground"]
      376 SETTABLEKS                       R36 R35 K73 ["ImageColor3"]
      378 GETIMPORT                        R36 K64 [UDim2.fromOffset]
      380 GETTABLEKS                       R37 R2 K65 ["IconSize"]
      382 GETTABLEKS                       R38 R2 K65 ["IconSize"]
      384 CALL                             R36 2 1
      385 SETTABLEKS                       R36 R35 K24 ["Size"]
      387 CALL                             R33 2 1
      388 SETTABLEKS                       R33 R32 K70 ["DotsIcon"]
      390 CALL                             R29 3 1
      391 SETTABLEKS                       R29 R28 K47 ["DotsPane"]
      393 CALL                             R25 3 1
      394 SETTABLEKS                       R25 R24 K34 ["Container"]
      396 CALL                             R21 3 1
      397 RETURN                           R21 1
      398 GETTABLEKS                       R22 R0 K7 ["ItemData"]
      400 GETTABLEKS                       R22 R22 K14 ["isHidden"]
      402 JUMPIFNOT                        R22 ; [+89]
      403 GETUPVAL                         R21 2
      404 GETTABLEKS                       R21 R21 K19 ["createElement"]
      406 GETUPVAL                         R22 11
      407 GETTABLEKS                       R22 R22 K77 ["Image"]
      409 DUPTABLE                         R23 K79 [{["Style"] = "EquippedItemDisabledBackground", ["AnchorPoint"], ["Position"], ["Size"]}]
      410 GETIMPORT                        R24 K28 [Vector2.new]
      412 LOADK                            R25 K29 [-0.5]
      413 LOADN                            R26 0
      414 CALL                             R24 2 1
      415 SETTABLEKS                       R24 R23 K22 ["AnchorPoint"]
      417 GETIMPORT                        R24 K31 [UDim2.new]
      419 LOADK                            R25 K29 [-0.5]
      420 LOADN                            R26 0
      421 LOADN                            R27 0
      422 GETTABLEKS                       R28 R2 K32 ["Margin"]
      424 CALL                             R24 4 1
      425 SETTABLEKS                       R24 R23 K23 ["Position"]
      427 GETIMPORT                        R24 K50 [UDim2.fromScale]
      429 LOADK                            R25 K33 [0.5]
      430 LOADK                            R26 K33 [0.5]
      431 CALL                             R24 2 1
      432 SETTABLEKS                       R24 R23 K24 ["Size"]
      434 DUPTABLE                         R24 K80 [{"HideShowPane"}]
      435 GETUPVAL                         R25 2
      436 GETTABLEKS                       R25 R25 K19 ["createElement"]
      438 GETUPVAL                         R26 10
      439 NEWTABLE                         R27 4 0
      441 GETIMPORT                        R28 K28 [Vector2.new]
      443 LOADN                            R29 0
      444 LOADN                            R30 0
      445 CALL                             R28 2 1
      446 SETTABLEKS                       R28 R27 K22 ["AnchorPoint"]
      448 GETIMPORT                        R28 K50 [UDim2.fromScale]
      450 LOADN                            R29 0
      451 LOADN                            R30 0
      452 CALL                             R28 2 1
      453 SETTABLEKS                       R28 R27 K23 ["Position"]
      455 GETIMPORT                        R28 K39 [Enum.FillDirection.Vertical]
      457 SETTABLEKS                       R28 R27 K40 ["Layout"]
      459 GETUPVAL                         R28 2
      460 GETTABLEKS                       R28 R28 K43 ["Event"]
      462 GETTABLEKS                       R28 R28 K44 ["MouseEnter"]
      464 GETTABLEKS                       R29 R10 K45 ["hover"]
      466 SETTABLE                         R29 R27 R28
      467 DUPTABLE                         R28 K57 [{"HideShowIcon"}]
      468 GETUPVAL                         R29 2
      469 GETTABLEKS                       R29 R29 K19 ["createElement"]
      471 GETUPVAL                         R30 11
      472 GETTABLEKS                       R30 R30 K77 ["Image"]
      474 DUPTABLE                         R31 K81 [{["Style"] = "EquippedItemUnhideIcon", ["Size"]}]
      475 GETIMPORT                        R32 K64 [UDim2.fromOffset]
      477 GETTABLEKS                       R33 R2 K65 ["IconSize"]
      479 GETTABLEKS                       R34 R2 K65 ["IconSize"]
      481 CALL                             R32 2 1
      482 SETTABLEKS                       R32 R31 K24 ["Size"]
      484 CALL                             R29 2 1
      485 SETTABLEKS                       R29 R28 K56 ["HideShowIcon"]
      487 CALL                             R25 3 1
      488 SETTABLEKS                       R25 R24 K46 ["HideShowPane"]
      490 CALL                             R21 3 1
      491 RETURN                           R21 1
      492 LOADNIL                          R21
      493 RETURN                           R21 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useAggressiveHoverEndState"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["useToggleState"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Components"]
       45 GETTABLEKS                       R6 R6 K14 ["AvatarScreenContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Util"]
       54 GETTABLEKS                       R7 R7 K16 ["EquipmentStateContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Resources"]
       63 GETTABLEKS                       R8 R8 K18 ["Theme"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K19 ["Types"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R1 K20 ["UI"]
       75 GETTABLEKS                       R10 R9 K21 ["Image"]
       77 GETTABLEKS                       R11 R9 K22 ["Pane"]
       79 GETTABLEKS                       R12 R9 K23 ["showContextMenu"]
       81 GETTABLEKS                       R13 R1 K24 ["ContextServices"]
       83 GETTABLEKS                       R13 R13 K25 ["Localization"]
       85 GETTABLEKS                       R14 R1 K24 ["ContextServices"]
       87 GETTABLEKS                       R14 R14 K26 ["Stylizer"]
       89 DUPCLOSURE                       R15 K27 [PROTO_12]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 RETURN                           R15 1
