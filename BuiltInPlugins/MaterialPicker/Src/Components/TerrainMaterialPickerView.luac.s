PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
        2 GETIMPORT                        R3 K4 [Enum.Material.Air]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETTABLEKS                       R2 R1 K5 ["allowAir"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K0 ["baseMaterial"]
       11 GETIMPORT                        R3 K7 [Enum.Material.Water]
       13 JUMPIFNOTEQ                      R2 R3 ; [+4]
       15 GETTABLEKS                       R2 R1 K8 ["allowWater"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FoundationProvider"]
        6 DUPTABLE                         R3 K5 [{"colorMode", "overlayGui", "preferences"}]
        7 GETTABLEKS                       R4 R0 K2 ["colorMode"]
        9 SETTABLEKS                       R4 R3 K2 ["colorMode"]
       11 GETTABLEKS                       R4 R0 K3 ["overlayGui"]
       13 SETTABLEKS                       R4 R3 K3 ["overlayGui"]
       15 GETTABLEKS                       R4 R0 K4 ["preferences"]
       17 SETTABLEKS                       R4 R3 K4 ["preferences"]
       19 DUPTABLE                         R4 K7 [{"Menu"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K18 [{["align"], ["isOpen"], ["items"], ["onActivated"], ["onPressedOutside"], ["Position"], ["side"], ["testId"] = "terrain-material-context-menu", ["width"]}]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K19 ["Start"]
       28 SETTABLEKS                       R8 R7 K8 ["align"]
       30 GETTABLEKS                       R8 R0 K9 ["isOpen"]
       32 SETTABLEKS                       R8 R7 K9 ["isOpen"]
       34 NEWTABLE                         R8 0 1
       36 DUPTABLE                         R9 K23 [{["id"] = "edit", ["text"]}]
       37 GETTABLEKS                       R10 R0 K24 ["itemText"]
       39 SETTABLEKS                       R10 R9 K22 ["text"]
       41 SETLIST                          R8 R9 1 [1]
       43 SETTABLEKS                       R8 R7 K10 ["items"]
       45 GETTABLEKS                       R8 R0 K11 ["onActivated"]
       47 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       49 GETTABLEKS                       R8 R0 K12 ["onPressedOutside"]
       51 SETTABLEKS                       R8 R7 K12 ["onPressedOutside"]
       53 GETTABLEKS                       R8 R0 K25 ["position"]
       55 SETTABLEKS                       R8 R7 K13 ["Position"]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K26 ["Bottom"]
       60 SETTABLEKS                       R8 R7 K14 ["side"]
       62 GETIMPORT                        R8 K29 [UDim.new]
       64 LOADN                            R9 0
       65 LOADN                            R10 260
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K17 ["width"]
       69 DUPTABLE                         R8 K31 [{"Anchor"}]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K0 ["createElement"]
       73 GETUPVAL                         R10 5
       74 DUPTABLE                         R11 K33 [{"Size"}]
       75 GETIMPORT                        R12 K36 [UDim2.fromOffset]
       77 LOADN                            R13 1
       78 LOADN                            R14 1
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K32 ["Size"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K30 ["Anchor"]
       85 CALL                             R5 3 1
       86 SETTABLEKS                       R5 R4 K6 ["Menu"]
       88 CALL                             R1 3 -1
       89 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R0 R1 K1 ["Parent"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+9]
        3 GETUPVAL                         R1 1
        4 LENGTH                           R0 R1
        5 JUMPIFNOTEQKN                    R0 K1 [0] ; [+5]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["onSearchNoResults"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+8]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETIMPORT                        R1 K3 [Vector2.new]
        8 LOADN                            R2 0
        9 GETUPVAL                         R3 2
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["CanvasPosition"]
       13 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 1
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 SUBK                             R0 R1 K0 [1]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["viewType"]
        9 JUMPIFNOTEQKS                    R2 K2 ["grid"] ; [+8]
       11 DIVK                             R3 R0 K4 [4]
       12 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       13 GETIMPORT                        R2 K7 [math.floor]
       15 CALL                             R2 1 1
       16 MULK                             R1 R2 K3 [65]
       17 JUMP                             ; [+3]
       18 LOADN                            R2 4
       19 MULK                             R3 R0 K8 [40]
       20 ADD                              R1 R2 R3
       21 LOADB                            R2 0
       22 GETIMPORT                        R3 K11 [task.defer]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          REF R2
       27 CAPTURE                          VAL R1
       28 CALL                             R3 1 1
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          REF R2
       31 CAPTURE                          VAL R3
       32 CLOSEUPVALS                      R2
       33 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K3 [{"clickOffset", "slotIndex"}]
        8 GETTABLEKS                       R6 R2 K4 ["AbsolutePosition"]
       10 SUB                              R5 R1 R6
       11 SETTABLEKS                       R5 R4 K1 ["clickOffset"]
       13 SETTABLEKS                       R0 R4 K2 ["slotIndex"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["slotIndex"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 JUMPIFNOTEQKS                    R0 K1 ["edit"] ; [+8]
       11 JUMPIFEQKNIL                     R1 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["onEditSlot"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onViewTypeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onSortTypeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFEQKS                       R0 K0 [""] ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["onSearchUsed"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R0 K0 ["success"] ; [+6]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["current"]
        5 JUMPIFNOT                        R5 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K0 ["success"] ; [+5]
        9 GETUPVAL                         R5 0
       10 LOADB                            R6 1
       11 SETTABLEKS                       R6 R5 K1 ["current"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["onQuickAddResult"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 CALL                             R5 5 0
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onQuickAddOpened"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["catalog"]
       10 LENGTH                           R1 R2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["enable"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["cancelled"]
       10 LOADNIL                          R2
       11 LOADB                            R3 0
       12 LOADB                            R4 0
       13 LOADNIL                          R5
       14 CALL                             R0 5 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["disable"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["cancelled"]
       10 LOADNIL                          R2
       11 LOADB                            R3 0
       12 LOADB                            R4 0
       13 LOADNIL                          R5
       14 CALL                             R0 5 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["usePreferences"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       16 GETTABLEKS                       R3 R3 K4 ["useTokens"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["useState"]
       22 LOADK                            R5 K6 [""]
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K7 ["useRef"]
       29 LOADB                            R8 0
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 3
       32 CALL                             R8 0 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K7 ["useRef"]
       36 LOADNIL                          R10
       37 CALL                             R9 1 1
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K7 ["useRef"]
       41 LOADNIL                          R11
       42 CALL                             R10 1 1
       43 GETTABLEKS                       R11 R10 K8 ["current"]
       45 JUMPIFNOTEQKNIL                  R11 ; [+29]
       47 GETIMPORT                        R11 K11 [Instance.new]
       49 LOADK                            R12 K12 ["Frame"]
       50 CALL                             R11 1 1
       51 LOADK                            R12 K13 ["ContextMenuOverlay"]
       52 SETTABLEKS                       R12 R11 K14 ["Name"]
       54 LOADN                            R12 1
       55 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       57 LOADN                            R12 0
       58 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
       60 LOADB                            R12 0
       61 SETTABLEKS                       R12 R11 K17 ["ClipsDescendants"]
       63 GETIMPORT                        R12 K20 [UDim2.fromScale]
       65 LOADN                            R13 1
       66 LOADN                            R14 1
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K21 ["Size"]
       70 LOADN                            R12 10
       71 SETTABLEKS                       R12 R11 K22 ["ZIndex"]
       73 SETTABLEKS                       R11 R10 K8 ["current"]
       75 GETTABLEKS                       R11 R10 K8 ["current"]
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R12 R12 K23 ["useCallback"]
       80 NEWCLOSURE                       R13 P0
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R11
       83 NEWTABLE                         R14 0 1
       85 MOVE                             R15 R11
       86 SETLIST                          R14 R15 1 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K24 ["useEffect"]
       92 NEWCLOSURE                       R14 P1
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 NEWTABLE                         R15 0 1
       97 MOVE                             R16 R11
       98 SETLIST                          R15 R16 1 [1]
      100 CALL                             R13 2 0
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R13 R13 K7 ["useRef"]
      104 LOADNIL                          R14
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K27 [string.lower]
      108 MOVE                             R15 R4
      109 CALL                             R14 1 1
      110 NEWTABLE                         R15 0 0
      112 GETTABLEKS                       R16 R0 K28 ["catalog"]
      114 LOADNIL                          R17
      115 LOADNIL                          R18
      116 FORGPREP                         R16
      117 GETTABLEKS                       R22 R0 K29 ["request"]
      119 GETTABLEKS                       R23 R20 K30 ["baseMaterial"]
      121 GETIMPORT                        R24 K34 [Enum.Material.Air]
      123 JUMPIFNOTEQ                      R23 R24 ; [+4]
      125 GETTABLEKS                       R21 R22 K35 ["allowAir"]
      127 JUMP                             ; [+10]
      128 GETTABLEKS                       R23 R20 K30 ["baseMaterial"]
      130 GETIMPORT                        R24 K37 [Enum.Material.Water]
      132 JUMPIFNOTEQ                      R23 R24 ; [+4]
      134 GETTABLEKS                       R21 R22 K38 ["allowWater"]
      136 JUMP                             ; [+1]
      137 LOADB                            R21 1
      138 JUMPIFNOT                        R21 ; [+21]
      139 JUMPIFEQKS                       R14 K6 [""] ; [+13]
      141 GETIMPORT                        R21 K40 [string.find]
      143 GETIMPORT                        R22 K27 [string.lower]
      145 GETTABLEKS                       R23 R20 K41 ["displayName"]
      147 CALL                             R22 1 1
      148 MOVE                             R23 R14
      149 LOADN                            R24 1
      150 LOADB                            R25 1
      151 CALL                             R21 4 1
      152 JUMPIFNOT                        R21 ; [+7]
      153 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      155 MOVE                             R22 R15
      156 MOVE                             R23 R20
      157 GETIMPORT                        R21 K44 [table.insert]
      159 CALL                             R21 2 0
      160 FORGLOOP                         R16 2 ; [-44]
      162 GETUPVAL                         R16 4
      163 MOVE                             R17 R15
      164 GETTABLEKS                       R18 R0 K45 ["sortType"]
      166 GETTABLEKS                       R19 R0 K46 ["recentlyUsedSlots"]
      168 CALL                             R16 3 1
      169 MOVE                             R15 R16
      170 GETUPVAL                         R16 0
      171 GETTABLEKS                       R16 R16 K24 ["useEffect"]
      173 NEWCLOSURE                       R17 P2
      174 CAPTURE                          VAL R14
      175 CAPTURE                          REF R15
      176 CAPTURE                          VAL R0
      177 NEWTABLE                         R18 0 3
      179 MOVE                             R19 R14
      180 LENGTH                           R20 R15
      181 GETTABLEKS                       R21 R0 K47 ["onSearchNoResults"]
      183 SETLIST                          R18 R19 3 [1]
      185 CALL                             R16 2 0
      186 LOADNIL                          R16
      187 MOVE                             R17 R15
      188 LOADNIL                          R18
      189 LOADNIL                          R19
      190 FORGPREP                         R17
      191 GETTABLEKS                       R22 R21 K48 ["slotIndex"]
      193 GETTABLEKS                       R23 R0 K29 ["request"]
      195 GETTABLEKS                       R23 R23 K49 ["selectedSlotIndex"]
      197 JUMPIFNOTEQ                      R22 R23 ; [+3]
      199 MOVE                             R16 R20
      200 JUMP                             ; [+2]
      201 FORGLOOP                         R17 2 ; [-11]
      203 GETUPVAL                         R17 0
      204 GETTABLEKS                       R17 R17 K24 ["useEffect"]
      206 NEWCLOSURE                       R18 P3
      207 CAPTURE                          REF R16
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R13
      210 NEWTABLE                         R19 0 2
      212 MOVE                             R20 R16
      213 GETTABLEKS                       R21 R0 K50 ["viewType"]
      215 SETLIST                          R19 R20 2 [1]
      217 CALL                             R17 2 0
      218 GETUPVAL                         R17 0
      219 GETTABLEKS                       R17 R17 K5 ["useState"]
      221 LOADNIL                          R18
      222 CALL                             R17 1 2
      223 GETUPVAL                         R19 5
      224 NEWCLOSURE                       R20 P4
      225 CAPTURE                          VAL R18
      226 CALL                             R19 1 1
      227 GETUPVAL                         R20 5
      228 NEWCLOSURE                       R21 P5
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R18
      231 CALL                             R20 1 1
      232 GETUPVAL                         R21 5
      233 NEWCLOSURE                       R22 P6
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R0
      237 CALL                             R21 1 1
      238 NEWTABLE                         R22 2 0
      240 MOVE                             R23 R15
      241 LOADNIL                          R24
      242 LOADNIL                          R25
      243 FORGPREP                         R23
      244 GETTABLEKS                       R29 R27 K48 ["slotIndex"]
      246 GETTABLEKS                       R30 R0 K29 ["request"]
      248 GETTABLEKS                       R30 R30 K49 ["selectedSlotIndex"]
      250 JUMPIFEQ                         R29 R30 ; [+2]
      252 LOADB                            R28 0 +1
      253 LOADB                            R28 1
      254 GETUPVAL                         R29 0
      255 GETTABLEKS                       R29 R29 K51 ["createElement"]
      257 GETUPVAL                         R30 6
      258 DUPTABLE                         R31 K57 [{"entry", "isSelected", "layoutOrder", "onActivated", "onContextMenuOpened", "viewType"}]
      259 SETTABLEKS                       R27 R31 K52 ["entry"]
      261 SETTABLEKS                       R28 R31 K53 ["isSelected"]
      263 SETTABLEKS                       R26 R31 K54 ["layoutOrder"]
      265 GETTABLEKS                       R32 R0 K58 ["onSlotSelected"]
      267 SETTABLEKS                       R32 R31 K55 ["onActivated"]
      269 SETTABLEKS                       R20 R31 K56 ["onContextMenuOpened"]
      271 GETTABLEKS                       R32 R0 K50 ["viewType"]
      273 SETTABLEKS                       R32 R31 K50 ["viewType"]
      275 CALL                             R29 2 1
      276 LOADK                            R30 K59 ["Tile_%*"]
      277 GETTABLEKS                       R32 R27 K48 ["slotIndex"]
      279 NAMECALL                         R30 R30 K60 ["format"]
      281 CALL                             R30 2 1
      282 SETTABLE                         R29 R22 R30
      283 FORGLOOP                         R23 2 ; [-40]
      285 GETTABLEKS                       R23 R0 K50 ["viewType"]
      287 JUMPIFNOTEQKS                    R23 K61 ["grid"] ; [+66]
      289 GETUPVAL                         R23 0
      290 GETTABLEKS                       R23 R23 K51 ["createElement"]
      292 LOADK                            R24 K62 ["UIGridLayout"]
      293 DUPTABLE                         R25 K68 [{["CellPadding"], ["CellSize"], ["FillDirectionMaxCells"] = 4, ["SortOrder"]}]
      294 GETIMPORT                        R26 K70 [UDim2.fromOffset]
      296 LOADN                            R27 4
      297 LOADN                            R28 4
      298 CALL                             R26 2 1
      299 SETTABLEKS                       R26 R25 K63 ["CellPadding"]
      301 GETIMPORT                        R26 K71 [UDim2.new]
      303 LOADK                            R27 K72 [0.25]
      304 LOADN                            R28 -5
      305 LOADN                            R29 0
      306 LOADN                            R30 61
      307 CALL                             R26 4 1
      308 SETTABLEKS                       R26 R25 K64 ["CellSize"]
      310 GETIMPORT                        R26 K74 [Enum.SortOrder.LayoutOrder]
      312 SETTABLEKS                       R26 R25 K67 ["SortOrder"]
      314 CALL                             R23 2 1
      315 SETTABLEKS                       R23 R22 K75 ["Layout"]
      317 GETUPVAL                         R23 0
      318 GETTABLEKS                       R23 R23 K51 ["createElement"]
      320 LOADK                            R24 K76 ["UIPadding"]
      321 DUPTABLE                         R25 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      322 GETIMPORT                        R26 K83 [UDim.new]
      324 LOADN                            R27 0
      325 LOADN                            R28 4
      326 CALL                             R26 2 1
      327 SETTABLEKS                       R26 R25 K77 ["PaddingBottom"]
      329 GETIMPORT                        R26 K83 [UDim.new]
      331 LOADN                            R27 0
      332 LOADN                            R28 4
      333 CALL                             R26 2 1
      334 SETTABLEKS                       R26 R25 K78 ["PaddingLeft"]
      336 GETIMPORT                        R26 K83 [UDim.new]
      338 LOADN                            R27 0
      339 LOADN                            R28 4
      340 CALL                             R26 2 1
      341 SETTABLEKS                       R26 R25 K79 ["PaddingRight"]
      343 GETIMPORT                        R26 K83 [UDim.new]
      345 LOADN                            R27 0
      346 LOADN                            R28 4
      347 CALL                             R26 2 1
      348 SETTABLEKS                       R26 R25 K80 ["PaddingTop"]
      350 CALL                             R23 2 1
      351 SETTABLEKS                       R23 R22 K84 ["Padding"]
      353 JUMP                             ; [+55]
      354 GETUPVAL                         R23 0
      355 GETTABLEKS                       R23 R23 K51 ["createElement"]
      357 LOADK                            R24 K85 ["UIListLayout"]
      358 DUPTABLE                         R25 K86 [{"Padding", "SortOrder"}]
      359 GETIMPORT                        R26 K83 [UDim.new]
      361 LOADN                            R27 0
      362 LOADN                            R28 4
      363 CALL                             R26 2 1
      364 SETTABLEKS                       R26 R25 K84 ["Padding"]
      366 GETIMPORT                        R26 K74 [Enum.SortOrder.LayoutOrder]
      368 SETTABLEKS                       R26 R25 K67 ["SortOrder"]
      370 CALL                             R23 2 1
      371 SETTABLEKS                       R23 R22 K75 ["Layout"]
      373 GETUPVAL                         R23 0
      374 GETTABLEKS                       R23 R23 K51 ["createElement"]
      376 LOADK                            R24 K76 ["UIPadding"]
      377 DUPTABLE                         R25 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      378 GETIMPORT                        R26 K83 [UDim.new]
      380 LOADN                            R27 0
      381 LOADN                            R28 4
      382 CALL                             R26 2 1
      383 SETTABLEKS                       R26 R25 K77 ["PaddingBottom"]
      385 GETIMPORT                        R26 K83 [UDim.new]
      387 LOADN                            R27 0
      388 LOADN                            R28 4
      389 CALL                             R26 2 1
      390 SETTABLEKS                       R26 R25 K78 ["PaddingLeft"]
      392 GETIMPORT                        R26 K83 [UDim.new]
      394 LOADN                            R27 0
      395 LOADN                            R28 4
      396 CALL                             R26 2 1
      397 SETTABLEKS                       R26 R25 K79 ["PaddingRight"]
      399 GETIMPORT                        R26 K83 [UDim.new]
      401 LOADN                            R27 0
      402 LOADN                            R28 4
      403 CALL                             R26 2 1
      404 SETTABLEKS                       R26 R25 K80 ["PaddingTop"]
      406 CALL                             R23 2 1
      407 SETTABLEKS                       R23 R22 K84 ["Padding"]
      409 GETUPVAL                         R23 5
      410 NEWCLOSURE                       R24 P7
      411 CAPTURE                          VAL R8
      412 CAPTURE                          VAL R0
      413 CALL                             R23 1 1
      414 GETUPVAL                         R24 5
      415 NEWCLOSURE                       R25 P8
      416 CAPTURE                          VAL R8
      417 CAPTURE                          VAL R0
      418 CALL                             R24 1 1
      419 GETUPVAL                         R25 5
      420 NEWCLOSURE                       R26 P9
      421 CAPTURE                          VAL R5
      422 CAPTURE                          VAL R0
      423 CALL                             R25 1 1
      424 GETUPVAL                         R26 5
      425 NEWCLOSURE                       R27 P10
      426 CAPTURE                          VAL R7
      427 CAPTURE                          VAL R0
      428 CALL                             R26 1 1
      429 GETUPVAL                         R27 5
      430 NEWCLOSURE                       R28 P11
      431 CAPTURE                          VAL R7
      432 CAPTURE                          VAL R0
      433 CAPTURE                          VAL R6
      434 CALL                             R27 1 1
      435 GETUPVAL                         R28 5
      436 NEWCLOSURE                       R29 P12
      437 CAPTURE                          VAL R7
      438 CAPTURE                          VAL R26
      439 CAPTURE                          VAL R6
      440 CALL                             R28 1 1
      441 GETUPVAL                         R29 5
      442 NEWCLOSURE                       R30 P13
      443 CAPTURE                          VAL R6
      444 CAPTURE                          VAL R28
      445 CAPTURE                          VAL R27
      446 CALL                             R29 1 1
      447 GETUPVAL                         R30 5
      448 NEWCLOSURE                       R31 P14
      449 CAPTURE                          VAL R26
      450 CALL                             R30 1 1
      451 GETUPVAL                         R31 0
      452 GETTABLEKS                       R31 R31 K24 ["useEffect"]
      454 NEWCLOSURE                       R32 P15
      455 CAPTURE                          VAL R6
      456 CAPTURE                          VAL R7
      457 CAPTURE                          VAL R26
      458 NEWTABLE                         R33 0 2
      460 GETTABLEKS                       R34 R6 K87 ["enabled"]
      462 MOVE                             R35 R26
      463 SETLIST                          R33 R34 2 [1]
      465 CALL                             R31 2 0
      466 GETUPVAL                         R31 7
      467 CALL                             R31 0 1
      468 GETUPVAL                         R32 0
      469 GETTABLEKS                       R32 R32 K51 ["createElement"]
      471 GETUPVAL                         R33 8
      472 DUPTABLE                         R34 K93 [{["ref"], ["tag"] = "size-full", ["testId"] = "terrain-material-picker-view"}]
      473 SETTABLEKS                       R12 R34 K88 ["ref"]
      475 DUPTABLE                         R35 K96 [{"Content", "ContextMenu"}]
      476 GETUPVAL                         R36 0
      477 GETTABLEKS                       R36 R36 K51 ["createElement"]
      479 GETUPVAL                         R37 8
      480 DUPTABLE                         R38 K99 [{["backgroundStyle"], ["tag"] = "col size-full radius-medium clip"}]
      481 GETTABLEKS                       R39 R3 K100 ["Color"]
      483 GETTABLEKS                       R39 R39 K101 ["Surface"]
      485 GETTABLEKS                       R39 R39 K102 ["Surface_200"]
      487 SETTABLEKS                       R39 R38 K97 ["backgroundStyle"]
      489 DUPTABLE                         R39 K105 [{"Toolbar", "Materials"}]
      490 GETUPVAL                         R40 0
      491 GETTABLEKS                       R40 R40 K51 ["createElement"]
      493 GETUPVAL                         R41 8
      494 DUPTABLE                         R42 K107 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xsmall"}]
      495 MOVE                             R43 R31
      496 CALL                             R43 0 1
      497 SETTABLEKS                       R43 R42 K73 ["LayoutOrder"]
      499 GETIMPORT                        R43 K71 [UDim2.new]
      501 LOADN                            R44 1
      502 LOADN                            R45 0
      503 LOADN                            R46 0
      504 LOADN                            R48 28
      505 GETTABLEKS                       R50 R3 K84 ["Padding"]
      507 GETTABLEKS                       R50 R50 K109 ["XSmall"]
      509 MULK                             R49 R50 K108 [2]
      510 ADD                              R47 R48 R49
      511 CALL                             R43 4 1
      512 SETTABLEKS                       R43 R42 K21 ["Size"]
      514 DUPTABLE                         R43 K113 [{"Search", "ViewSort", "QuickAdd"}]
      515 GETUPVAL                         R44 0
      516 GETTABLEKS                       R44 R44 K51 ["createElement"]
      518 GETUPVAL                         R45 8
      519 DUPTABLE                         R46 K115 [{["LayoutOrder"], ["Size"], ["backgroundStyle"], ["tag"] = "grow radius-small clip"}]
      520 MOVE                             R47 R31
      521 CALL                             R47 0 1
      522 SETTABLEKS                       R47 R46 K73 ["LayoutOrder"]
      524 GETIMPORT                        R47 K71 [UDim2.new]
      526 LOADN                            R48 0
      527 LOADN                            R49 0
      528 LOADN                            R50 0
      529 LOADN                            R51 28
      530 CALL                             R47 4 1
      531 SETTABLEKS                       R47 R46 K21 ["Size"]
      533 GETTABLEKS                       R47 R3 K100 ["Color"]
      535 GETTABLEKS                       R47 R47 K116 ["Shift"]
      537 GETTABLEKS                       R47 R47 K117 ["Shift_100"]
      539 SETTABLEKS                       R47 R46 K97 ["backgroundStyle"]
      541 DUPTABLE                         R47 K119 [{"Input"}]
      542 GETUPVAL                         R48 0
      543 GETTABLEKS                       R48 R48 K51 ["createElement"]
      545 GETUPVAL                         R49 9
      546 DUPTABLE                         R50 K129 [{["Position"], ["onChanged"], ["placeholder"], ["shape"], ["size"], ["text"], ["testId"] = "terrain-material-search", ["variant"], ["width"]}]
      547 GETIMPORT                        R51 K70 [UDim2.fromOffset]
      549 LOADN                            R52 0
      550 LOADN                            R53 2
      551 CALL                             R51 2 1
      552 SETTABLEKS                       R51 R50 K120 ["Position"]
      554 SETTABLEKS                       R25 R50 K121 ["onChanged"]
      556 LOADK                            R53 K130 ["SearchBar"]
      557 LOADK                            R54 K131 ["SearchMaterials"]
      558 NAMECALL                         R51 R1 K132 ["getText"]
      560 CALL                             R51 3 1
      561 SETTABLEKS                       R51 R50 K122 ["placeholder"]
      563 GETUPVAL                         R51 10
      564 GETTABLEKS                       R51 R51 K133 ["Box"]
      566 SETTABLEKS                       R51 R50 K123 ["shape"]
      568 GETUPVAL                         R51 11
      569 GETTABLEKS                       R51 R51 K109 ["XSmall"]
      571 SETTABLEKS                       R51 R50 K124 ["size"]
      573 SETTABLEKS                       R4 R50 K125 ["text"]
      575 GETUPVAL                         R51 12
      576 GETTABLEKS                       R51 R51 K134 ["Utility"]
      578 SETTABLEKS                       R51 R50 K127 ["variant"]
      580 GETIMPORT                        R51 K83 [UDim.new]
      582 LOADN                            R52 1
      583 LOADN                            R53 0
      584 CALL                             R51 2 1
      585 SETTABLEKS                       R51 R50 K128 ["width"]
      587 CALL                             R48 2 1
      588 SETTABLEKS                       R48 R47 K118 ["Input"]
      590 CALL                             R44 3 1
      591 SETTABLEKS                       R44 R43 K110 ["Search"]
      593 GETUPVAL                         R44 0
      594 GETTABLEKS                       R44 R44 K51 ["createElement"]
      596 GETUPVAL                         R45 8
      597 DUPTABLE                         R46 K136 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      598 MOVE                             R47 R31
      599 CALL                             R47 0 1
      600 SETTABLEKS                       R47 R46 K73 ["LayoutOrder"]
      602 DUPTABLE                         R47 K138 [{"Menu"}]
      603 GETUPVAL                         R48 0
      604 GETTABLEKS                       R48 R48 K51 ["createElement"]
      606 GETUPVAL                         R49 13
      607 DUPTABLE                         R50 K147 [{"colorMode", "isOpen", "onPressedOutside", "onSortTypeChanged", "onToggle", "onViewTypeChanged", "overlayGui", "preferences", "sortType", "viewType"}]
      608 GETTABLEKS                       R51 R3 K148 ["Config"]
      610 GETTABLEKS                       R51 R51 K149 ["ColorMode"]
      612 GETTABLEKS                       R51 R51 K14 ["Name"]
      614 SETTABLEKS                       R51 R50 K139 ["colorMode"]
      616 GETTABLEKS                       R51 R8 K87 ["enabled"]
      618 SETTABLEKS                       R51 R50 K140 ["isOpen"]
      620 GETTABLEKS                       R51 R8 K150 ["disable"]
      622 SETTABLEKS                       R51 R50 K141 ["onPressedOutside"]
      624 SETTABLEKS                       R24 R50 K142 ["onSortTypeChanged"]
      626 GETTABLEKS                       R51 R8 K151 ["toggle"]
      628 SETTABLEKS                       R51 R50 K143 ["onToggle"]
      630 SETTABLEKS                       R23 R50 K144 ["onViewTypeChanged"]
      632 SETTABLEKS                       R11 R50 K145 ["overlayGui"]
      634 SETTABLEKS                       R2 R50 K146 ["preferences"]
      636 GETTABLEKS                       R51 R0 K45 ["sortType"]
      638 SETTABLEKS                       R51 R50 K45 ["sortType"]
      640 GETTABLEKS                       R51 R0 K50 ["viewType"]
      642 SETTABLEKS                       R51 R50 K50 ["viewType"]
      644 CALL                             R48 2 1
      645 SETTABLEKS                       R48 R47 K137 ["Menu"]
      647 CALL                             R44 3 1
      648 SETTABLEKS                       R44 R43 K111 ["ViewSort"]
      650 GETUPVAL                         R44 0
      651 GETTABLEKS                       R44 R44 K51 ["createElement"]
      653 GETUPVAL                         R45 14
      654 GETTABLEKS                       R45 R45 K152 ["Root"]
      656 DUPTABLE                         R46 K154 [{["isOpen"], ["testId"] = "terrain-material-quick-add"}]
      657 GETTABLEKS                       R47 R6 K87 ["enabled"]
      659 SETTABLEKS                       R47 R46 K140 ["isOpen"]
      661 DUPTABLE                         R47 K156 [{"Anchor", "Content"}]
      662 GETUPVAL                         R48 0
      663 GETTABLEKS                       R48 R48 K51 ["createElement"]
      665 GETUPVAL                         R49 14
      666 GETTABLEKS                       R49 R49 K155 ["Anchor"]
      668 DUPTABLE                         R50 K157 [{"LayoutOrder"}]
      669 MOVE                             R51 R31
      670 CALL                             R51 0 1
      671 SETTABLEKS                       R51 R50 K73 ["LayoutOrder"]
      673 DUPTABLE                         R51 K159 [{"Tooltip"}]
      674 GETUPVAL                         R52 0
      675 GETTABLEKS                       R52 R52 K51 ["createElement"]
      677 GETUPVAL                         R53 15
      678 DUPTABLE                         R54 K161 [{"title"}]
      679 LOADK                            R57 K162 ["Plugin"]
      680 LOADK                            R58 K163 ["AddIconTooltip"]
      681 NAMECALL                         R55 R1 K132 ["getText"]
      683 CALL                             R55 3 1
      684 SETTABLEKS                       R55 R54 K160 ["title"]
      686 GETUPVAL                         R55 0
      687 GETTABLEKS                       R55 R55 K51 ["createElement"]
      689 GETUPVAL                         R56 16
      690 DUPTABLE                         R57 K166 [{["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-button"}]
      691 GETUPVAL                         R58 2
      692 GETTABLEKS                       R58 R58 K167 ["Enums"]
      694 GETTABLEKS                       R58 R58 K168 ["IconName"]
      696 GETTABLEKS                       R58 R58 K169 ["PlusSmall"]
      698 SETTABLEKS                       R58 R57 K164 ["icon"]
      700 SETTABLEKS                       R29 R57 K55 ["onActivated"]
      702 GETUPVAL                         R58 11
      703 GETTABLEKS                       R58 R58 K109 ["XSmall"]
      705 SETTABLEKS                       R58 R57 K124 ["size"]
      707 CALL                             R55 2 -1
      708 CALL                             R52 -1 1
      709 SETTABLEKS                       R52 R51 K158 ["Tooltip"]
      711 CALL                             R48 3 1
      712 SETTABLEKS                       R48 R47 K155 ["Anchor"]
      714 GETUPVAL                         R48 0
      715 GETTABLEKS                       R48 R48 K51 ["createElement"]
      717 GETUPVAL                         R49 14
      718 GETTABLEKS                       R49 R49 K94 ["Content"]
      720 DUPTABLE                         R50 K176 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      721 DUPTABLE                         R51 K179 [{"position", "offset"}]
      722 GETUPVAL                         R52 17
      723 GETTABLEKS                       R52 R52 K180 ["Start"]
      725 SETTABLEKS                       R52 R51 K177 ["position"]
      727 GETTABLEKS                       R53 R3 K84 ["Padding"]
      729 GETTABLEKS                       R53 R53 K109 ["XSmall"]
      731 MINUS                            R52 R53
      732 SETTABLEKS                       R52 R51 K178 ["offset"]
      734 SETTABLEKS                       R51 R50 K170 ["align"]
      736 SETTABLEKS                       R28 R50 K141 ["onPressedOutside"]
      738 DUPTABLE                         R51 K181 [{["position"], ["offset"] = 4}]
      739 GETUPVAL                         R52 18
      740 GETTABLEKS                       R52 R52 K182 ["Right"]
      742 SETTABLEKS                       R52 R51 K177 ["position"]
      744 SETTABLEKS                       R51 R50 K175 ["side"]
      746 DUPTABLE                         R51 K184 [{"Form"}]
      747 GETUPVAL                         R52 0
      748 GETTABLEKS                       R52 R52 K51 ["createElement"]
      750 GETUPVAL                         R53 19
      751 DUPTABLE                         R54 K188 [{"onCancel", "onCreate", "onResult"}]
      752 SETTABLEKS                       R28 R54 K185 ["onCancel"]
      754 GETTABLEKS                       R55 R0 K189 ["onCreateSlot"]
      756 SETTABLEKS                       R55 R54 K186 ["onCreate"]
      758 SETTABLEKS                       R30 R54 K187 ["onResult"]
      760 CALL                             R52 2 1
      761 SETTABLEKS                       R52 R51 K183 ["Form"]
      763 CALL                             R48 3 1
      764 SETTABLEKS                       R48 R47 K94 ["Content"]
      766 CALL                             R44 3 1
      767 SETTABLEKS                       R44 R43 K112 ["QuickAdd"]
      769 CALL                             R40 3 1
      770 SETTABLEKS                       R40 R39 K103 ["Toolbar"]
      772 GETUPVAL                         R40 0
      773 GETTABLEKS                       R40 R40 K51 ["createElement"]
      775 GETUPVAL                         R41 20
      776 DUPTABLE                         R42 K193 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "grow size-full-0", ["scrollingFrameRef"], ["scroll"], ["testId"]}]
      777 MOVE                             R43 R31
      778 CALL                             R43 0 1
      779 SETTABLEKS                       R43 R42 K73 ["LayoutOrder"]
      781 GETTABLEKS                       R43 R3 K100 ["Color"]
      783 GETTABLEKS                       R43 R43 K101 ["Surface"]
      785 GETTABLEKS                       R43 R43 K194 ["Surface_300"]
      787 SETTABLEKS                       R43 R42 K97 ["backgroundStyle"]
      789 SETTABLEKS                       R13 R42 K191 ["scrollingFrameRef"]
      791 DUPTABLE                         R43 K199 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      792 GETIMPORT                        R44 K202 [Enum.AutomaticSize.Y]
      794 SETTABLEKS                       R44 R43 K195 ["AutomaticCanvasSize"]
      796 GETIMPORT                        R44 K70 [UDim2.fromOffset]
      798 LOADN                            R45 0
      799 LOADN                            R46 0
      800 CALL                             R44 2 1
      801 SETTABLEKS                       R44 R43 K196 ["CanvasSize"]
      803 GETIMPORT                        R44 K203 [Enum.ScrollingDirection.Y]
      805 SETTABLEKS                       R44 R43 K197 ["ScrollingDirection"]
      807 GETUPVAL                         R44 21
      808 GETTABLEKS                       R44 R44 K204 ["Auto"]
      810 SETTABLEKS                       R44 R43 K198 ["scrollBarVisibility"]
      812 SETTABLEKS                       R43 R42 K192 ["scroll"]
      814 GETTABLEKS                       R44 R0 K50 ["viewType"]
      816 JUMPIFNOTEQKS                    R44 K61 ["grid"] ; [+3]
      818 LOADK                            R43 K205 ["terrain-material-grid"]
      819 JUMP                             ; [+1]
      820 LOADK                            R43 K206 ["terrain-material-list"]
      821 SETTABLEKS                       R43 R42 K91 ["testId"]
      823 LENGTH                           R44 R15
      824 LOADN                            R45 0
      825 JUMPIFNOTLT                      R45 R44 ; [+3]
      827 MOVE                             R43 R22
      828 JUMP                             ; [+27]
      829 DUPTABLE                         R43 K208 [{"Empty"}]
      830 GETUPVAL                         R44 0
      831 GETTABLEKS                       R44 R44 K51 ["createElement"]
      833 GETUPVAL                         R45 8
      834 DUPTABLE                         R46 K211 [{["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"] = "terrain-material-empty"}]
      835 GETIMPORT                        R47 K71 [UDim2.new]
      837 LOADN                            R48 1
      838 LOADN                            R49 0
      839 LOADN                            R50 0
      840 LOADN                            R51 160
      841 CALL                             R47 4 1
      842 SETTABLEKS                       R47 R46 K21 ["Size"]
      844 DUPTABLE                         R47 K213 [{"Label"}]
      845 GETUPVAL                         R48 0
      846 GETTABLEKS                       R48 R48 K51 ["createElement"]
      848 GETUPVAL                         R49 22
      849 DUPTABLE                         R50 K217 [{["Text"] = "No results found", ["tag"] = "auto-xy text-body-small content-muted"}]
      850 CALL                             R48 2 1
      851 SETTABLEKS                       R48 R47 K212 ["Label"]
      853 CALL                             R44 3 1
      854 SETTABLEKS                       R44 R43 K207 ["Empty"]
      856 CALL                             R40 3 1
      857 SETTABLEKS                       R40 R39 K104 ["Materials"]
      859 CALL                             R36 3 1
      860 SETTABLEKS                       R36 R35 K94 ["Content"]
      862 GETUPVAL                         R36 0
      863 GETTABLEKS                       R36 R36 K51 ["createElement"]
      865 GETUPVAL                         R37 23
      866 DUPTABLE                         R38 K219 [{"colorMode", "isOpen", "itemText", "onActivated", "onPressedOutside", "overlayGui", "position", "preferences"}]
      867 GETTABLEKS                       R39 R3 K148 ["Config"]
      869 GETTABLEKS                       R39 R39 K149 ["ColorMode"]
      871 GETTABLEKS                       R39 R39 K14 ["Name"]
      873 SETTABLEKS                       R39 R38 K139 ["colorMode"]
      875 JUMPIFNOTEQKNIL                  R17 ; [+2]
      877 LOADB                            R39 0 +1
      878 LOADB                            R39 1
      879 SETTABLEKS                       R39 R38 K140 ["isOpen"]
      881 LOADK                            R41 K162 ["Plugin"]
      882 LOADK                            R42 K220 ["EditInTerrainMaterialManager"]
      883 NAMECALL                         R39 R1 K132 ["getText"]
      885 CALL                             R39 3 1
      886 SETTABLEKS                       R39 R38 K218 ["itemText"]
      888 SETTABLEKS                       R21 R38 K55 ["onActivated"]
      890 SETTABLEKS                       R19 R38 K141 ["onPressedOutside"]
      892 SETTABLEKS                       R11 R38 K145 ["overlayGui"]
      894 GETIMPORT                        R39 K70 [UDim2.fromOffset]
      896 JUMPIFNOT                        R17 ; [+6]
      897 GETTABLEKS                       R41 R17 K221 ["clickOffset"]
      899 GETTABLEKS                       R41 R41 K222 ["X"]
      901 ADDK                             R40 R41 K66 [4]
      902 JUMP                             ; [+1]
      903 LOADN                            R40 0
      904 JUMPIFNOT                        R17 ; [+5]
      905 GETTABLEKS                       R41 R17 K221 ["clickOffset"]
      907 GETTABLEKS                       R41 R41 K201 ["Y"]
      909 JUMP                             ; [+1]
      910 LOADN                            R41 0
      911 CALL                             R39 2 1
      912 SETTABLEKS                       R39 R38 K177 ["position"]
      914 SETTABLEKS                       R2 R38 K146 ["preferences"]
      916 CALL                             R36 2 1
      917 SETTABLEKS                       R36 R35 K95 ["ContextMenu"]
      919 CALL                             R32 3 -1
      920 CLOSEUPVALS                      R15
      921 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["TerrainMaterialQuickAddForm"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Src"]
       55 GETTABLEKS                       R8 R8 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K15 ["TerrainMaterialTile"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K16 ["Parent"]
       66 GETTABLEKS                       R9 R9 K17 ["ViewSortMenu"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K19 ["Util"]
       82 GETTABLEKS                       R11 R11 K20 ["sortTerrainMaterialCatalog"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R1 K21 ["IconButton"]
       87 GETTABLEKS                       R12 R1 K22 ["Enums"]
       89 GETTABLEKS                       R12 R12 K23 ["InputSize"]
       91 GETTABLEKS                       R13 R1 K22 ["Enums"]
       93 GETTABLEKS                       R13 R13 K24 ["InputVariant"]
       95 GETTABLEKS                       R14 R4 K25 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K26 ["Localization"]
       99 GETTABLEKS                       R15 R1 K27 ["Menu"]
      101 GETTABLEKS                       R16 R1 K28 ["Popover"]
      103 GETTABLEKS                       R17 R1 K22 ["Enums"]
      105 GETTABLEKS                       R17 R17 K29 ["PopoverAlign"]
      107 GETTABLEKS                       R18 R1 K22 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["PopoverSide"]
      111 GETTABLEKS                       R19 R1 K31 ["ScrollView"]
      113 GETTABLEKS                       R20 R1 K32 ["SearchInput"]
      115 GETTABLEKS                       R21 R1 K22 ["Enums"]
      117 GETTABLEKS                       R21 R21 K33 ["SearchInputShape"]
      119 GETTABLEKS                       R22 R1 K34 ["Text"]
      121 GETTABLEKS                       R23 R1 K35 ["Tooltip"]
      123 GETTABLEKS                       R24 R1 K36 ["View"]
      125 GETTABLEKS                       R25 R1 K22 ["Enums"]
      127 GETTABLEKS                       R25 R25 K37 ["Visibility"]
      129 GETTABLEKS                       R26 R3 K38 ["createNextOrder"]
      131 GETTABLEKS                       R27 R3 K39 ["useEventCallback"]
      133 GETTABLEKS                       R28 R3 K40 ["useToggleState"]
      135 DUPCLOSURE                       R29 K41 [PROTO_0]
      136 DUPCLOSURE                       R30 K42 [PROTO_1]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R24
      143 DUPCLOSURE                       R31 K43 [PROTO_22]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R28
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R26
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R30
      168 RETURN                           R31 1
