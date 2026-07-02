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
        1 GETTABLEKS                       R0 R0 K0 ["removeEquippedItem"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ItemData"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrementDummyPreviewLock"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["incrementDummyPreviewLock"]
        7 CALL                             R0 0 0
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U1
       10 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETIMPORT                        R3 K6 [Vector2.new]
        9 GETTABLEKS                       R4 R1 K7 ["Position"]
       11 GETTABLEKS                       R4 R4 K8 ["X"]
       13 GETTABLEKS                       R5 R1 K7 ["Position"]
       15 GETTABLEKS                       R5 R5 K9 ["Y"]
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       22 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton2]
       24 JUMPIFNOTEQ                      R2 R3 ; [+65]
       26 GETUPVAL                         R2 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K12 ["Parent"]
       30 NEWTABLE                         R4 0 4
       32 DUPTABLE                         R5 K15 [{"Text", "OnItemClicked"}]
       33 GETUPVAL                         R6 3
       34 LOADK                            R8 K16 ["EquippedItemContextMenu"]
       35 LOADK                            R9 K17 ["OpenPalette"]
       36 DUPTABLE                         R10 K19 [{"palette"}]
       37 GETUPVAL                         R11 3
       38 LOADK                            R13 K20 ["AssetPalettes"]
       39 GETUPVAL                         R14 4
       40 GETTABLEKS                       R14 R14 K21 ["ItemData"]
       42 GETTABLEKS                       R14 R14 K18 ["palette"]
       44 GETTABLEKS                       R14 R14 K22 ["Key"]
       46 NAMECALL                         R11 R11 K23 ["getText"]
       48 CALL                             R11 3 1
       49 SETTABLEKS                       R11 R10 K18 ["palette"]
       51 NAMECALL                         R6 R6 K23 ["getText"]
       53 CALL                             R6 4 1
       54 SETTABLEKS                       R6 R5 K13 ["Text"]
       56 GETUPVAL                         R6 5
       57 SETTABLEKS                       R6 R5 K14 ["OnItemClicked"]
       59 DUPTABLE                         R6 K26 [{["ShowSeparator"] = True}]
       60 DUPTABLE                         R7 K15 [{"Text", "OnItemClicked"}]
       61 GETUPVAL                         R8 3
       62 LOADK                            R10 K16 ["EquippedItemContextMenu"]
       63 LOADK                            R11 K27 ["UnequipItem"]
       64 NAMECALL                         R8 R8 K23 ["getText"]
       66 CALL                             R8 3 1
       67 SETTABLEKS                       R8 R7 K13 ["Text"]
       69 GETUPVAL                         R8 6
       70 SETTABLEKS                       R8 R7 K14 ["OnItemClicked"]
       72 DUPTABLE                         R8 K15 [{"Text", "OnItemClicked"}]
       73 GETUPVAL                         R9 3
       74 LOADK                            R11 K16 ["EquippedItemContextMenu"]
       75 LOADK                            R12 K28 ["UnequipAllItems"]
       76 NAMECALL                         R9 R9 K23 ["getText"]
       78 CALL                             R9 3 1
       79 SETTABLEKS                       R9 R8 K13 ["Text"]
       81 GETUPVAL                         R9 7
       82 GETTABLEKS                       R9 R9 K29 ["removeAllEquippedItems"]
       84 SETTABLEKS                       R9 R8 K14 ["OnItemClicked"]
       86 SETLIST                          R4 R5 4 [1]
       88 CALL                             R2 2 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       92 GETIMPORT                        R3 K31 [Enum.UserInputType.MouseMovement]
       94 JUMPIFNOTEQ                      R2 R3 ; [+4]
       96 GETUPVAL                         R2 8
       97 LOADB                            R3 1
       98 CALL                             R2 1 0
       99 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       12 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       14 JUMPIFNOTEQ                      R2 R3 ; [+21]
       16 GETIMPORT                        R2 K8 [Vector2.new]
       18 GETTABLEKS                       R3 R1 K9 ["Position"]
       20 GETTABLEKS                       R3 R3 K10 ["X"]
       22 GETTABLEKS                       R4 R1 K9 ["Position"]
       24 GETTABLEKS                       R4 R4 K11 ["Y"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 1
       28 SUB                              R3 R2 R4
       29 GETTABLEKS                       R3 R3 K12 ["Magnitude"]
       31 LOADN                            R4 4
       32 JUMPIFNOTLT                      R3 R4 ; [+3]
       34 GETUPVAL                         R3 2
       35 CALL                             R3 0 0
       36 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["EquippedItemPreview"]
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
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R9 0 2
       34 GETTABLEKS                       R10 R0 K6 ["ItemData"]
       36 GETTABLEKS                       R11 R3 K7 ["openPalette"]
       38 SETLIST                          R9 R10 2 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R10 0 2
       49 GETTABLEKS                       R11 R0 K6 ["ItemData"]
       51 GETTABLEKS                       R12 R4 K8 ["removeEquippedItem"]
       53 SETLIST                          R10 R11 2 [1]
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       59 NEWCLOSURE                       R10 P2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R11 0 1
       64 MOVE                             R12 R5
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K4 ["useState"]
       71 GETIMPORT                        R10 K12 [Vector2.new]
       73 CALL                             R10 0 -1
       74 CALL                             R9 -1 2
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       78 NEWCLOSURE                       R12 P3
       79 CAPTURE                          VAL R10
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 NEWTABLE                         R13 0 3
       90 GETTABLEKS                       R14 R0 K6 ["ItemData"]
       92 MOVE                             R15 R7
       93 MOVE                             R16 R8
       94 SETLIST                          R13 R14 3 [1]
       96 CALL                             R11 2 1
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K5 ["useCallback"]
      100 NEWCLOSURE                       R13 P4
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R7
      104 NEWTABLE                         R14 0 1
      106 MOVE                             R15 R9
      107 SETLIST                          R14 R15 1 [1]
      109 CALL                             R12 2 1
      110 GETUPVAL                         R13 7
      111 GETTABLEKS                       R14 R0 K6 ["ItemData"]
      113 CALL                             R13 1 1
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R14 R14 K13 ["createElement"]
      117 GETUPVAL                         R15 8
      118 NEWTABLE                         R16 8 0
      120 LOADK                            R17 K1 ["EquippedItemPreview"]
      121 SETTABLEKS                       R17 R16 K14 ["Style"]
      123 JUMPIFNOT                        R5 ; [+4]
      124 GETUPVAL                         R17 9
      125 GETTABLEKS                       R17 R17 K15 ["Hover"]
      127 JUMP                             ; [+10]
      128 GETTABLEKS                       R18 R0 K6 ["ItemData"]
      130 GETTABLEKS                       R18 R18 K16 ["isHidden"]
      132 JUMPIFNOT                        R18 ; [+4]
      133 GETUPVAL                         R17 9
      134 GETTABLEKS                       R17 R17 K17 ["Disabled"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R17
      138 SETTABLEKS                       R17 R16 K18 ["StyleModifier"]
      140 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      142 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      144 GETTABLEKS                       R17 R0 K20 ["Position"]
      146 SETTABLEKS                       R17 R16 K20 ["Position"]
      148 GETTABLEKS                       R17 R0 K21 ["Size"]
      150 SETTABLEKS                       R17 R16 K21 ["Size"]
      152 GETUPVAL                         R17 2
      153 GETTABLEKS                       R17 R17 K22 ["Event"]
      155 GETTABLEKS                       R17 R17 K23 ["InputBegan"]
      157 SETTABLE                         R11 R16 R17
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R17 R17 K22 ["Event"]
      161 GETTABLEKS                       R17 R17 K24 ["InputEnded"]
      163 SETTABLE                         R12 R16 R17
      164 GETUPVAL                         R17 2
      165 GETTABLEKS                       R17 R17 K25 ["Tag"]
      167 LOADK                            R18 K26 ["data-testid=EquippedItemPreview"]
      168 SETTABLE                         R18 R16 R17
      169 DUPTABLE                         R17 K30 [{"UICorner", "Inner", "Outer"}]
      170 GETUPVAL                         R18 2
      171 GETTABLEKS                       R18 R18 K13 ["createElement"]
      173 LOADK                            R19 K27 ["UICorner"]
      174 DUPTABLE                         R20 K32 [{"CornerRadius"}]
      175 GETTABLEKS                       R22 R2 K31 ["CornerRadius"]
      177 GETIMPORT                        R23 K34 [UDim.new]
      179 LOADN                            R24 0
      180 GETTABLEKS                       R25 R2 K35 ["StrokeThickness"]
      182 CALL                             R23 2 1
      183 ADD                              R21 R22 R23
      184 SETTABLEKS                       R21 R20 K31 ["CornerRadius"]
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K27 ["UICorner"]
      189 GETUPVAL                         R18 2
      190 GETTABLEKS                       R18 R18 K13 ["createElement"]
      192 GETUPVAL                         R19 8
      193 DUPTABLE                         R20 K38 [{["Style"] = "EquippedItemPreviewInner", ["AnchorPoint"], ["Position"], ["Size"]}]
      194 GETIMPORT                        R21 K12 [Vector2.new]
      196 LOADK                            R22 K39 [0.5]
      197 LOADK                            R23 K39 [0.5]
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K37 ["AnchorPoint"]
      201 GETIMPORT                        R21 K42 [UDim2.fromScale]
      203 LOADK                            R22 K39 [0.5]
      204 LOADK                            R23 K39 [0.5]
      205 CALL                             R21 2 1
      206 SETTABLEKS                       R21 R20 K20 ["Position"]
      208 GETIMPORT                        R21 K43 [UDim2.new]
      210 LOADN                            R22 1
      211 GETTABLEKS                       R24 R2 K35 ["StrokeThickness"]
      213 MINUS                            R23 R24
      214 LOADN                            R24 1
      215 GETTABLEKS                       R26 R2 K35 ["StrokeThickness"]
      217 MINUS                            R25 R26
      218 CALL                             R21 4 1
      219 SETTABLEKS                       R21 R20 K21 ["Size"]
      221 DUPTABLE                         R21 K48 [{"UIStroke", "UICorner", "Tooltip", "HoverX", "Preview"}]
      222 GETUPVAL                         R22 2
      223 GETTABLEKS                       R22 R22 K13 ["createElement"]
      225 LOADK                            R23 K44 ["UIStroke"]
      226 DUPTABLE                         R24 K51 [{"Color", "Thickness"}]
      227 GETTABLEKS                       R25 R2 K52 ["StrokeColor"]
      229 SETTABLEKS                       R25 R24 K49 ["Color"]
      231 GETTABLEKS                       R25 R2 K35 ["StrokeThickness"]
      233 SETTABLEKS                       R25 R24 K50 ["Thickness"]
      235 CALL                             R22 2 1
      236 SETTABLEKS                       R22 R21 K44 ["UIStroke"]
      238 GETUPVAL                         R22 2
      239 GETTABLEKS                       R22 R22 K13 ["createElement"]
      241 LOADK                            R23 K27 ["UICorner"]
      242 DUPTABLE                         R24 K32 [{"CornerRadius"}]
      243 GETTABLEKS                       R25 R2 K31 ["CornerRadius"]
      245 SETTABLEKS                       R25 R24 K31 ["CornerRadius"]
      247 CALL                             R22 2 1
      248 SETTABLEKS                       R22 R21 K27 ["UICorner"]
      250 GETTABLEKS                       R23 R0 K53 ["EnableTooltip"]
      252 JUMPIFNOT                        R23 ; [+14]
      253 JUMPIFNOT                        R5 ; [+13]
      254 GETTABLEKS                       R23 R0 K54 ["IsDragging"]
      256 JUMPIF                           R23 ; [+10]
      257 JUMPIFNOT                        R13 ; [+9]
      258 GETUPVAL                         R22 2
      259 GETTABLEKS                       R22 R22 K13 ["createElement"]
      261 GETUPVAL                         R23 10
      262 DUPTABLE                         R24 K56 [{"Text"}]
      263 SETTABLEKS                       R13 R24 K55 ["Text"]
      265 CALL                             R22 2 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R22
      268 SETTABLEKS                       R22 R21 K45 ["Tooltip"]
      270 JUMPIFNOT                        R5 ; [+54]
      271 GETTABLEKS                       R23 R0 K54 ["IsDragging"]
      273 JUMPIF                           R23 ; [+51]
      274 GETUPVAL                         R22 2
      275 GETTABLEKS                       R22 R22 K13 ["createElement"]
      277 GETUPVAL                         R23 8
      278 DUPTABLE                         R24 K58 [{"AnchorPoint", "Position", "Size", "OnClick"}]
      279 GETTABLEKS                       R25 R2 K46 ["HoverX"]
      281 GETTABLEKS                       R25 R25 K37 ["AnchorPoint"]
      283 SETTABLEKS                       R25 R24 K37 ["AnchorPoint"]
      285 GETTABLEKS                       R25 R2 K46 ["HoverX"]
      287 GETTABLEKS                       R25 R25 K20 ["Position"]
      289 SETTABLEKS                       R25 R24 K20 ["Position"]
      291 GETTABLEKS                       R25 R2 K46 ["HoverX"]
      293 GETTABLEKS                       R25 R25 K21 ["Size"]
      295 SETTABLEKS                       R25 R24 K21 ["Size"]
      297 SETTABLEKS                       R8 R24 K57 ["OnClick"]
      299 DUPTABLE                         R25 K59 [{"HoverX"}]
      300 GETUPVAL                         R26 2
      301 GETTABLEKS                       R26 R26 K13 ["createElement"]
      303 GETUPVAL                         R27 11
      304 GETTABLEKS                       R27 R27 K60 ["Image"]
      306 DUPTABLE                         R28 K61 [{"Image", "Size"}]
      307 GETTABLEKS                       R29 R2 K46 ["HoverX"]
      309 GETTABLEKS                       R29 R29 K60 ["Image"]
      311 SETTABLEKS                       R29 R28 K60 ["Image"]
      313 GETIMPORT                        R29 K42 [UDim2.fromScale]
      315 LOADN                            R30 1
      316 LOADN                            R31 1
      317 CALL                             R29 2 1
      318 SETTABLEKS                       R29 R28 K21 ["Size"]
      320 CALL                             R26 2 1
      321 SETTABLEKS                       R26 R25 K46 ["HoverX"]
      323 CALL                             R22 3 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R22
      326 SETTABLEKS                       R22 R21 K46 ["HoverX"]
      328 GETUPVAL                         R22 2
      329 GETTABLEKS                       R22 R22 K13 ["createElement"]
      331 GETUPVAL                         R23 12
      332 DUPTABLE                         R24 K65 [{["ItemData"], ["Selected"] = False, ["Transparency"]}]
      333 GETTABLEKS                       R25 R0 K6 ["ItemData"]
      335 SETTABLEKS                       R25 R24 K6 ["ItemData"]
      337 GETTABLEKS                       R26 R0 K6 ["ItemData"]
      339 GETTABLEKS                       R26 R26 K16 ["isHidden"]
      341 JUMPIFNOT                        R26 ; [+3]
      342 GETTABLEKS                       R25 R2 K66 ["ItemHiddenTransparency"]
      344 JUMP                             ; [+2]
      345 GETTABLEKS                       R25 R2 K67 ["ItemWornTransparency"]
      347 SETTABLEKS                       R25 R24 K64 ["Transparency"]
      349 CALL                             R22 2 1
      350 SETTABLEKS                       R22 R21 K47 ["Preview"]
      352 CALL                             R18 3 1
      353 SETTABLEKS                       R18 R17 K28 ["Inner"]
      355 GETUPVAL                         R18 2
      356 GETTABLEKS                       R18 R18 K13 ["createElement"]
      358 GETUPVAL                         R19 13
      359 DUPTABLE                         R20 K69 [{"ItemData", "tileHovered"}]
      360 GETTABLEKS                       R21 R0 K6 ["ItemData"]
      362 SETTABLEKS                       R21 R20 K6 ["ItemData"]
      364 SETTABLEKS                       R5 R20 K68 ["tileHovered"]
      366 CALL                             R18 2 1
      367 SETTABLEKS                       R18 R17 K29 ["Outer"]
      369 CALL                             R14 3 -1
      370 RETURN                           R14 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["EquippedItemsSidebar"]
       29 GETTABLEKS                       R4 R4 K12 ["EquippedItemSideMenu"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["ItemDataPreview"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Components"]
       47 GETTABLEKS                       R6 R6 K14 ["AvatarScreenContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Util"]
       56 GETTABLEKS                       R7 R7 K16 ["EquipmentStateContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Src"]
       63 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       65 GETTABLEKS                       R8 R8 K18 ["useItemName"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Src"]
       72 GETTABLEKS                       R9 R9 K19 ["Resources"]
       74 GETTABLEKS                       R9 R9 K20 ["Theme"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K9 ["Src"]
       81 GETTABLEKS                       R10 R10 K21 ["Types"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R1 K22 ["UI"]
       86 GETTABLEKS                       R11 R10 K23 ["showContextMenu"]
       88 GETTABLEKS                       R12 R10 K24 ["Pane"]
       90 GETTABLEKS                       R13 R10 K25 ["Tooltip"]
       92 GETTABLEKS                       R14 R1 K26 ["ContextServices"]
       94 GETTABLEKS                       R14 R14 K27 ["Localization"]
       96 GETTABLEKS                       R15 R1 K26 ["ContextServices"]
       98 GETTABLEKS                       R15 R15 K28 ["Stylizer"]
      100 GETTABLEKS                       R16 R1 K15 ["Util"]
      102 GETTABLEKS                       R16 R16 K29 ["StyleModifier"]
      104 DUPCLOSURE                       R17 K30 [PROTO_6]
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R3
      119 RETURN                           R17 1
