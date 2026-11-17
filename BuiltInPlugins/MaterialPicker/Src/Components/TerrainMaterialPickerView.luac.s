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
        2 GETIMPORT                        R1 K2 [task.cancel]
        4 GETUPVAL                         R2 1
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R0 K4 [pcall]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

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
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["disable"]
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["disable"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K1 ["onInvalidSourceChanged"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_23:
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
       24 GETTABLEKS                       R6 R0 K7 ["request"]
       26 GETTABLEKS                       R6 R6 K8 ["invalidSourceSelected"]
       28 GETUPVAL                         R7 3
       29 CALL                             R7 0 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K9 ["useRef"]
       33 LOADB                            R9 0
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 3
       36 CALL                             R9 0 1
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K9 ["useRef"]
       40 LOADNIL                          R11
       41 CALL                             R10 1 1
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K9 ["useRef"]
       45 LOADNIL                          R12
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R12 R11 K10 ["current"]
       49 JUMPIFNOTEQKNIL                  R12 ; [+29]
       51 GETIMPORT                        R12 K13 [Instance.new]
       53 LOADK                            R13 K14 ["Frame"]
       54 CALL                             R12 1 1
       55 LOADK                            R13 K15 ["ContextMenuOverlay"]
       56 SETTABLEKS                       R13 R12 K16 ["Name"]
       58 LOADN                            R13 1
       59 SETTABLEKS                       R13 R12 K17 ["BackgroundTransparency"]
       61 LOADN                            R13 0
       62 SETTABLEKS                       R13 R12 K18 ["BorderSizePixel"]
       64 LOADB                            R13 0
       65 SETTABLEKS                       R13 R12 K19 ["ClipsDescendants"]
       67 GETIMPORT                        R13 K22 [UDim2.fromScale]
       69 LOADN                            R14 1
       70 LOADN                            R15 1
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K23 ["Size"]
       74 LOADN                            R13 10
       75 SETTABLEKS                       R13 R12 K24 ["ZIndex"]
       77 SETTABLEKS                       R12 R11 K10 ["current"]
       79 GETTABLEKS                       R12 R11 K10 ["current"]
       81 GETUPVAL                         R13 0
       82 GETTABLEKS                       R13 R13 K25 ["useCallback"]
       84 NEWCLOSURE                       R14 P0
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 NEWTABLE                         R15 0 1
       89 MOVE                             R16 R12
       90 SETLIST                          R15 R16 1 [1]
       92 CALL                             R13 2 1
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K26 ["useEffect"]
       96 NEWCLOSURE                       R15 P1
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 NEWTABLE                         R16 0 1
      101 MOVE                             R17 R12
      102 SETLIST                          R16 R17 1 [1]
      104 CALL                             R14 2 0
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K9 ["useRef"]
      108 LOADNIL                          R15
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K29 [string.lower]
      112 MOVE                             R16 R4
      113 CALL                             R15 1 1
      114 NEWTABLE                         R16 0 0
      116 GETTABLEKS                       R17 R0 K30 ["catalog"]
      118 LOADNIL                          R18
      119 LOADNIL                          R19
      120 FORGPREP                         R17
      121 GETTABLEKS                       R23 R0 K7 ["request"]
      123 GETTABLEKS                       R24 R21 K31 ["baseMaterial"]
      125 GETIMPORT                        R25 K35 [Enum.Material.Air]
      127 JUMPIFNOTEQ                      R24 R25 ; [+4]
      129 GETTABLEKS                       R22 R23 K36 ["allowAir"]
      131 JUMP                             ; [+10]
      132 GETTABLEKS                       R24 R21 K31 ["baseMaterial"]
      134 GETIMPORT                        R25 K38 [Enum.Material.Water]
      136 JUMPIFNOTEQ                      R24 R25 ; [+4]
      138 GETTABLEKS                       R22 R23 K39 ["allowWater"]
      140 JUMP                             ; [+1]
      141 LOADB                            R22 1
      142 JUMPIFNOT                        R22 ; [+21]
      143 JUMPIFEQKS                       R15 K6 [""] ; [+13]
      145 GETIMPORT                        R22 K41 [string.find]
      147 GETIMPORT                        R23 K29 [string.lower]
      149 GETTABLEKS                       R24 R21 K42 ["displayName"]
      151 CALL                             R23 1 1
      152 MOVE                             R24 R15
      153 LOADN                            R25 1
      154 LOADB                            R26 1
      155 CALL                             R22 4 1
      156 JUMPIFNOT                        R22 ; [+7]
      157 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      159 MOVE                             R23 R16
      160 MOVE                             R24 R21
      161 GETIMPORT                        R22 K45 [table.insert]
      163 CALL                             R22 2 0
      164 FORGLOOP                         R17 2 ; [-44]
      166 GETUPVAL                         R17 4
      167 MOVE                             R18 R16
      168 GETTABLEKS                       R19 R0 K46 ["sortType"]
      170 GETTABLEKS                       R20 R0 K47 ["recentlyUsedSlots"]
      172 CALL                             R17 3 1
      173 MOVE                             R16 R17
      174 GETUPVAL                         R17 0
      175 GETTABLEKS                       R17 R17 K26 ["useEffect"]
      177 NEWCLOSURE                       R18 P2
      178 CAPTURE                          VAL R15
      179 CAPTURE                          REF R16
      180 CAPTURE                          VAL R0
      181 NEWTABLE                         R19 0 3
      183 MOVE                             R20 R15
      184 LENGTH                           R21 R16
      185 GETTABLEKS                       R22 R0 K48 ["onSearchNoResults"]
      187 SETLIST                          R19 R20 3 [1]
      189 CALL                             R17 2 0
      190 LOADNIL                          R17
      191 MOVE                             R18 R16
      192 LOADNIL                          R19
      193 LOADNIL                          R20
      194 FORGPREP                         R18
      195 GETTABLEKS                       R23 R22 K49 ["slotIndex"]
      197 GETTABLEKS                       R24 R0 K7 ["request"]
      199 GETTABLEKS                       R24 R24 K50 ["selectedSlotIndex"]
      201 JUMPIFNOTEQ                      R23 R24 ; [+3]
      203 MOVE                             R17 R21
      204 JUMP                             ; [+2]
      205 FORGLOOP                         R18 2 ; [-11]
      207 GETUPVAL                         R18 0
      208 GETTABLEKS                       R18 R18 K26 ["useEffect"]
      210 NEWCLOSURE                       R19 P3
      211 CAPTURE                          REF R17
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R14
      214 NEWTABLE                         R20 0 2
      216 MOVE                             R21 R17
      217 GETTABLEKS                       R22 R0 K51 ["viewType"]
      219 SETLIST                          R20 R21 2 [1]
      221 CALL                             R18 2 0
      222 GETUPVAL                         R18 0
      223 GETTABLEKS                       R18 R18 K5 ["useState"]
      225 LOADNIL                          R19
      226 CALL                             R18 1 2
      227 GETUPVAL                         R20 5
      228 NEWCLOSURE                       R21 P4
      229 CAPTURE                          VAL R19
      230 CALL                             R20 1 1
      231 GETUPVAL                         R21 5
      232 NEWCLOSURE                       R22 P5
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R19
      235 CALL                             R21 1 1
      236 GETUPVAL                         R22 5
      237 NEWCLOSURE                       R23 P6
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R0
      241 CALL                             R22 1 1
      242 NEWTABLE                         R23 2 0
      244 MOVE                             R24 R16
      245 LOADNIL                          R25
      246 LOADNIL                          R26
      247 FORGPREP                         R24
      248 GETTABLEKS                       R30 R28 K49 ["slotIndex"]
      250 GETTABLEKS                       R31 R0 K7 ["request"]
      252 GETTABLEKS                       R31 R31 K50 ["selectedSlotIndex"]
      254 JUMPIFEQ                         R30 R31 ; [+2]
      256 LOADB                            R29 0 +1
      257 LOADB                            R29 1
      258 GETUPVAL                         R30 0
      259 GETTABLEKS                       R30 R30 K52 ["createElement"]
      261 GETUPVAL                         R31 6
      262 DUPTABLE                         R32 K59 [{"entry", "isDisabled", "isSelected", "layoutOrder", "onActivated", "onContextMenuOpened", "viewType"}]
      263 SETTABLEKS                       R28 R32 K53 ["entry"]
      265 SETTABLEKS                       R6 R32 K54 ["isDisabled"]
      267 SETTABLEKS                       R29 R32 K55 ["isSelected"]
      269 SETTABLEKS                       R27 R32 K56 ["layoutOrder"]
      271 GETTABLEKS                       R33 R0 K60 ["onSlotSelected"]
      273 SETTABLEKS                       R33 R32 K57 ["onActivated"]
      275 SETTABLEKS                       R21 R32 K58 ["onContextMenuOpened"]
      277 GETTABLEKS                       R33 R0 K51 ["viewType"]
      279 SETTABLEKS                       R33 R32 K51 ["viewType"]
      281 CALL                             R30 2 1
      282 LOADK                            R31 K61 ["Tile_%*"]
      283 GETTABLEKS                       R33 R28 K49 ["slotIndex"]
      285 NAMECALL                         R31 R31 K62 ["format"]
      287 CALL                             R31 2 1
      288 SETTABLE                         R30 R23 R31
      289 FORGLOOP                         R24 2 ; [-42]
      291 GETTABLEKS                       R24 R0 K51 ["viewType"]
      293 JUMPIFNOTEQKS                    R24 K63 ["grid"] ; [+66]
      295 GETUPVAL                         R24 0
      296 GETTABLEKS                       R24 R24 K52 ["createElement"]
      298 LOADK                            R25 K64 ["UIGridLayout"]
      299 DUPTABLE                         R26 K70 [{["CellPadding"], ["CellSize"], ["FillDirectionMaxCells"] = 4, ["SortOrder"]}]
      300 GETIMPORT                        R27 K72 [UDim2.fromOffset]
      302 LOADN                            R28 4
      303 LOADN                            R29 4
      304 CALL                             R27 2 1
      305 SETTABLEKS                       R27 R26 K65 ["CellPadding"]
      307 GETIMPORT                        R27 K73 [UDim2.new]
      309 LOADK                            R28 K74 [0.25]
      310 LOADN                            R29 -5
      311 LOADN                            R30 0
      312 LOADN                            R31 61
      313 CALL                             R27 4 1
      314 SETTABLEKS                       R27 R26 K66 ["CellSize"]
      316 GETIMPORT                        R27 K76 [Enum.SortOrder.LayoutOrder]
      318 SETTABLEKS                       R27 R26 K69 ["SortOrder"]
      320 CALL                             R24 2 1
      321 SETTABLEKS                       R24 R23 K77 ["Layout"]
      323 GETUPVAL                         R24 0
      324 GETTABLEKS                       R24 R24 K52 ["createElement"]
      326 LOADK                            R25 K78 ["UIPadding"]
      327 DUPTABLE                         R26 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      328 GETIMPORT                        R27 K85 [UDim.new]
      330 LOADN                            R28 0
      331 LOADN                            R29 4
      332 CALL                             R27 2 1
      333 SETTABLEKS                       R27 R26 K79 ["PaddingBottom"]
      335 GETIMPORT                        R27 K85 [UDim.new]
      337 LOADN                            R28 0
      338 LOADN                            R29 4
      339 CALL                             R27 2 1
      340 SETTABLEKS                       R27 R26 K80 ["PaddingLeft"]
      342 GETIMPORT                        R27 K85 [UDim.new]
      344 LOADN                            R28 0
      345 LOADN                            R29 4
      346 CALL                             R27 2 1
      347 SETTABLEKS                       R27 R26 K81 ["PaddingRight"]
      349 GETIMPORT                        R27 K85 [UDim.new]
      351 LOADN                            R28 0
      352 LOADN                            R29 4
      353 CALL                             R27 2 1
      354 SETTABLEKS                       R27 R26 K82 ["PaddingTop"]
      356 CALL                             R24 2 1
      357 SETTABLEKS                       R24 R23 K86 ["Padding"]
      359 JUMP                             ; [+55]
      360 GETUPVAL                         R24 0
      361 GETTABLEKS                       R24 R24 K52 ["createElement"]
      363 LOADK                            R25 K87 ["UIListLayout"]
      364 DUPTABLE                         R26 K88 [{"Padding", "SortOrder"}]
      365 GETIMPORT                        R27 K85 [UDim.new]
      367 LOADN                            R28 0
      368 LOADN                            R29 4
      369 CALL                             R27 2 1
      370 SETTABLEKS                       R27 R26 K86 ["Padding"]
      372 GETIMPORT                        R27 K76 [Enum.SortOrder.LayoutOrder]
      374 SETTABLEKS                       R27 R26 K69 ["SortOrder"]
      376 CALL                             R24 2 1
      377 SETTABLEKS                       R24 R23 K77 ["Layout"]
      379 GETUPVAL                         R24 0
      380 GETTABLEKS                       R24 R24 K52 ["createElement"]
      382 LOADK                            R25 K78 ["UIPadding"]
      383 DUPTABLE                         R26 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      384 GETIMPORT                        R27 K85 [UDim.new]
      386 LOADN                            R28 0
      387 LOADN                            R29 4
      388 CALL                             R27 2 1
      389 SETTABLEKS                       R27 R26 K79 ["PaddingBottom"]
      391 GETIMPORT                        R27 K85 [UDim.new]
      393 LOADN                            R28 0
      394 LOADN                            R29 4
      395 CALL                             R27 2 1
      396 SETTABLEKS                       R27 R26 K80 ["PaddingLeft"]
      398 GETIMPORT                        R27 K85 [UDim.new]
      400 LOADN                            R28 0
      401 LOADN                            R29 4
      402 CALL                             R27 2 1
      403 SETTABLEKS                       R27 R26 K81 ["PaddingRight"]
      405 GETIMPORT                        R27 K85 [UDim.new]
      407 LOADN                            R28 0
      408 LOADN                            R29 4
      409 CALL                             R27 2 1
      410 SETTABLEKS                       R27 R26 K82 ["PaddingTop"]
      412 CALL                             R24 2 1
      413 SETTABLEKS                       R24 R23 K86 ["Padding"]
      415 GETUPVAL                         R24 5
      416 NEWCLOSURE                       R25 P7
      417 CAPTURE                          VAL R9
      418 CAPTURE                          VAL R0
      419 CALL                             R24 1 1
      420 GETUPVAL                         R25 5
      421 NEWCLOSURE                       R26 P8
      422 CAPTURE                          VAL R9
      423 CAPTURE                          VAL R0
      424 CALL                             R25 1 1
      425 GETUPVAL                         R26 5
      426 NEWCLOSURE                       R27 P9
      427 CAPTURE                          VAL R5
      428 CAPTURE                          VAL R0
      429 CALL                             R26 1 1
      430 GETUPVAL                         R27 5
      431 NEWCLOSURE                       R28 P10
      432 CAPTURE                          VAL R7
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R20
      435 CAPTURE                          VAL R0
      436 CALL                             R27 1 1
      437 GETUPVAL                         R28 5
      438 NEWCLOSURE                       R29 P11
      439 CAPTURE                          VAL R8
      440 CAPTURE                          VAL R0
      441 CALL                             R28 1 1
      442 GETUPVAL                         R29 5
      443 NEWCLOSURE                       R30 P12
      444 CAPTURE                          VAL R8
      445 CAPTURE                          VAL R0
      446 CAPTURE                          VAL R7
      447 CALL                             R29 1 1
      448 GETUPVAL                         R30 5
      449 NEWCLOSURE                       R31 P13
      450 CAPTURE                          VAL R8
      451 CAPTURE                          VAL R28
      452 CAPTURE                          VAL R7
      453 CALL                             R30 1 1
      454 GETUPVAL                         R31 5
      455 NEWCLOSURE                       R32 P14
      456 CAPTURE                          VAL R7
      457 CAPTURE                          VAL R30
      458 CAPTURE                          VAL R29
      459 CALL                             R31 1 1
      460 GETUPVAL                         R32 5
      461 NEWCLOSURE                       R33 P15
      462 CAPTURE                          VAL R28
      463 CALL                             R32 1 1
      464 GETUPVAL                         R33 0
      465 GETTABLEKS                       R33 R33 K26 ["useEffect"]
      467 NEWCLOSURE                       R34 P16
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R8
      470 CAPTURE                          VAL R28
      471 NEWTABLE                         R35 0 2
      473 GETTABLEKS                       R36 R7 K89 ["enabled"]
      475 MOVE                             R37 R28
      476 SETLIST                          R35 R36 2 [1]
      478 CALL                             R33 2 0
      479 GETUPVAL                         R33 7
      480 CALL                             R33 0 1
      481 GETUPVAL                         R34 0
      482 GETTABLEKS                       R34 R34 K52 ["createElement"]
      484 GETUPVAL                         R35 8
      485 DUPTABLE                         R36 K95 [{["ref"], ["tag"] = "size-full", ["testId"] = "terrain-material-picker-view"}]
      486 SETTABLEKS                       R13 R36 K90 ["ref"]
      488 DUPTABLE                         R37 K98 [{"Content", "ContextMenu"}]
      489 GETUPVAL                         R38 0
      490 GETTABLEKS                       R38 R38 K52 ["createElement"]
      492 GETUPVAL                         R39 8
      493 DUPTABLE                         R40 K101 [{["backgroundStyle"], ["tag"] = "col size-full radius-medium clip"}]
      494 GETTABLEKS                       R41 R3 K102 ["Color"]
      496 GETTABLEKS                       R41 R41 K103 ["Surface"]
      498 GETTABLEKS                       R41 R41 K104 ["Surface_200"]
      500 SETTABLEKS                       R41 R40 K99 ["backgroundStyle"]
      502 DUPTABLE                         R41 K108 [{"Toolbar", "InvalidSource", "Materials"}]
      503 GETUPVAL                         R42 0
      504 GETTABLEKS                       R42 R42 K52 ["createElement"]
      506 GETUPVAL                         R43 8
      507 DUPTABLE                         R44 K110 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-xsmall"}]
      508 MOVE                             R45 R33
      509 CALL                             R45 0 1
      510 SETTABLEKS                       R45 R44 K75 ["LayoutOrder"]
      512 GETIMPORT                        R45 K73 [UDim2.new]
      514 LOADN                            R46 1
      515 LOADN                            R47 0
      516 LOADN                            R48 0
      517 LOADN                            R50 28
      518 GETTABLEKS                       R52 R3 K86 ["Padding"]
      520 GETTABLEKS                       R52 R52 K112 ["XSmall"]
      522 MULK                             R51 R52 K111 [2]
      523 ADD                              R49 R50 R51
      524 CALL                             R45 4 1
      525 SETTABLEKS                       R45 R44 K23 ["Size"]
      527 DUPTABLE                         R45 K116 [{"Search", "ViewSort", "QuickAdd"}]
      528 GETUPVAL                         R46 0
      529 GETTABLEKS                       R46 R46 K52 ["createElement"]
      531 GETUPVAL                         R47 8
      532 DUPTABLE                         R48 K118 [{["LayoutOrder"], ["Size"], ["backgroundStyle"], ["tag"] = "grow radius-small clip"}]
      533 MOVE                             R49 R33
      534 CALL                             R49 0 1
      535 SETTABLEKS                       R49 R48 K75 ["LayoutOrder"]
      537 GETIMPORT                        R49 K73 [UDim2.new]
      539 LOADN                            R50 0
      540 LOADN                            R51 0
      541 LOADN                            R52 0
      542 LOADN                            R53 28
      543 CALL                             R49 4 1
      544 SETTABLEKS                       R49 R48 K23 ["Size"]
      546 GETTABLEKS                       R49 R3 K102 ["Color"]
      548 GETTABLEKS                       R49 R49 K119 ["Shift"]
      550 GETTABLEKS                       R49 R49 K120 ["Shift_100"]
      552 SETTABLEKS                       R49 R48 K99 ["backgroundStyle"]
      554 DUPTABLE                         R49 K122 [{"Input"}]
      555 GETUPVAL                         R50 0
      556 GETTABLEKS                       R50 R50 K52 ["createElement"]
      558 GETUPVAL                         R51 9
      559 DUPTABLE                         R52 K132 [{["Position"], ["onChanged"], ["placeholder"], ["shape"], ["size"], ["text"], ["testId"] = "terrain-material-search", ["variant"], ["width"]}]
      560 GETIMPORT                        R53 K72 [UDim2.fromOffset]
      562 LOADN                            R54 0
      563 LOADN                            R55 2
      564 CALL                             R53 2 1
      565 SETTABLEKS                       R53 R52 K123 ["Position"]
      567 SETTABLEKS                       R26 R52 K124 ["onChanged"]
      569 LOADK                            R55 K133 ["SearchBar"]
      570 LOADK                            R56 K134 ["SearchMaterials"]
      571 NAMECALL                         R53 R1 K135 ["getText"]
      573 CALL                             R53 3 1
      574 SETTABLEKS                       R53 R52 K125 ["placeholder"]
      576 GETUPVAL                         R53 10
      577 GETTABLEKS                       R53 R53 K136 ["Box"]
      579 SETTABLEKS                       R53 R52 K126 ["shape"]
      581 GETUPVAL                         R53 11
      582 GETTABLEKS                       R53 R53 K112 ["XSmall"]
      584 SETTABLEKS                       R53 R52 K127 ["size"]
      586 SETTABLEKS                       R4 R52 K128 ["text"]
      588 GETUPVAL                         R53 12
      589 GETTABLEKS                       R53 R53 K137 ["Utility"]
      591 SETTABLEKS                       R53 R52 K130 ["variant"]
      593 GETIMPORT                        R53 K85 [UDim.new]
      595 LOADN                            R54 1
      596 LOADN                            R55 0
      597 CALL                             R53 2 1
      598 SETTABLEKS                       R53 R52 K131 ["width"]
      600 CALL                             R50 2 1
      601 SETTABLEKS                       R50 R49 K121 ["Input"]
      603 CALL                             R46 3 1
      604 SETTABLEKS                       R46 R45 K113 ["Search"]
      606 GETUPVAL                         R46 0
      607 GETTABLEKS                       R46 R46 K52 ["createElement"]
      609 GETUPVAL                         R47 8
      610 DUPTABLE                         R48 K139 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      611 MOVE                             R49 R33
      612 CALL                             R49 0 1
      613 SETTABLEKS                       R49 R48 K75 ["LayoutOrder"]
      615 DUPTABLE                         R49 K141 [{"Menu"}]
      616 GETUPVAL                         R50 0
      617 GETTABLEKS                       R50 R50 K52 ["createElement"]
      619 GETUPVAL                         R51 13
      620 DUPTABLE                         R52 K150 [{"colorMode", "isDisabled", "isOpen", "onPressedOutside", "onSortTypeChanged", "onToggle", "onViewTypeChanged", "overlayGui", "preferences", "sortType", "viewType"}]
      621 GETTABLEKS                       R53 R3 K151 ["Config"]
      623 GETTABLEKS                       R53 R53 K152 ["ColorMode"]
      625 GETTABLEKS                       R53 R53 K16 ["Name"]
      627 SETTABLEKS                       R53 R52 K142 ["colorMode"]
      629 SETTABLEKS                       R6 R52 K54 ["isDisabled"]
      631 GETTABLEKS                       R53 R9 K89 ["enabled"]
      633 SETTABLEKS                       R53 R52 K143 ["isOpen"]
      635 GETTABLEKS                       R53 R9 K153 ["disable"]
      637 SETTABLEKS                       R53 R52 K144 ["onPressedOutside"]
      639 SETTABLEKS                       R25 R52 K145 ["onSortTypeChanged"]
      641 GETTABLEKS                       R53 R9 K154 ["toggle"]
      643 SETTABLEKS                       R53 R52 K146 ["onToggle"]
      645 SETTABLEKS                       R24 R52 K147 ["onViewTypeChanged"]
      647 SETTABLEKS                       R12 R52 K148 ["overlayGui"]
      649 SETTABLEKS                       R2 R52 K149 ["preferences"]
      651 GETTABLEKS                       R53 R0 K46 ["sortType"]
      653 SETTABLEKS                       R53 R52 K46 ["sortType"]
      655 GETTABLEKS                       R53 R0 K51 ["viewType"]
      657 SETTABLEKS                       R53 R52 K51 ["viewType"]
      659 CALL                             R50 2 1
      660 SETTABLEKS                       R50 R49 K140 ["Menu"]
      662 CALL                             R46 3 1
      663 SETTABLEKS                       R46 R45 K114 ["ViewSort"]
      665 GETUPVAL                         R46 0
      666 GETTABLEKS                       R46 R46 K52 ["createElement"]
      668 GETUPVAL                         R47 14
      669 GETTABLEKS                       R47 R47 K155 ["Root"]
      671 DUPTABLE                         R48 K157 [{["isOpen"], ["testId"] = "terrain-material-quick-add"}]
      672 GETTABLEKS                       R49 R7 K89 ["enabled"]
      674 SETTABLEKS                       R49 R48 K143 ["isOpen"]
      676 DUPTABLE                         R49 K159 [{"Anchor", "Content"}]
      677 GETUPVAL                         R50 0
      678 GETTABLEKS                       R50 R50 K52 ["createElement"]
      680 GETUPVAL                         R51 14
      681 GETTABLEKS                       R51 R51 K158 ["Anchor"]
      683 DUPTABLE                         R52 K160 [{"LayoutOrder"}]
      684 MOVE                             R53 R33
      685 CALL                             R53 0 1
      686 SETTABLEKS                       R53 R52 K75 ["LayoutOrder"]
      688 DUPTABLE                         R53 K162 [{"Tooltip"}]
      689 GETUPVAL                         R54 0
      690 GETTABLEKS                       R54 R54 K52 ["createElement"]
      692 GETUPVAL                         R55 15
      693 DUPTABLE                         R56 K164 [{"title"}]
      694 LOADK                            R59 K165 ["Plugin"]
      695 LOADK                            R60 K166 ["AddIconTooltip"]
      696 NAMECALL                         R57 R1 K135 ["getText"]
      698 CALL                             R57 3 1
      699 SETTABLEKS                       R57 R56 K163 ["title"]
      701 GETUPVAL                         R57 0
      702 GETTABLEKS                       R57 R57 K52 ["createElement"]
      704 GETUPVAL                         R58 16
      705 DUPTABLE                         R59 K169 [{["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-button"}]
      706 GETUPVAL                         R60 2
      707 GETTABLEKS                       R60 R60 K170 ["Enums"]
      709 GETTABLEKS                       R60 R60 K171 ["IconName"]
      711 GETTABLEKS                       R60 R60 K172 ["PlusSmall"]
      713 SETTABLEKS                       R60 R59 K167 ["icon"]
      715 SETTABLEKS                       R6 R59 K54 ["isDisabled"]
      717 SETTABLEKS                       R31 R59 K57 ["onActivated"]
      719 GETUPVAL                         R60 11
      720 GETTABLEKS                       R60 R60 K112 ["XSmall"]
      722 SETTABLEKS                       R60 R59 K127 ["size"]
      724 CALL                             R57 2 -1
      725 CALL                             R54 -1 1
      726 SETTABLEKS                       R54 R53 K161 ["Tooltip"]
      728 CALL                             R50 3 1
      729 SETTABLEKS                       R50 R49 K158 ["Anchor"]
      731 GETUPVAL                         R50 0
      732 GETTABLEKS                       R50 R50 K52 ["createElement"]
      734 GETUPVAL                         R51 14
      735 GETTABLEKS                       R51 R51 K96 ["Content"]
      737 DUPTABLE                         R52 K179 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      738 DUPTABLE                         R53 K182 [{"position", "offset"}]
      739 GETUPVAL                         R54 17
      740 GETTABLEKS                       R54 R54 K183 ["Start"]
      742 SETTABLEKS                       R54 R53 K180 ["position"]
      744 GETTABLEKS                       R55 R3 K86 ["Padding"]
      746 GETTABLEKS                       R55 R55 K112 ["XSmall"]
      748 MINUS                            R54 R55
      749 SETTABLEKS                       R54 R53 K181 ["offset"]
      751 SETTABLEKS                       R53 R52 K173 ["align"]
      753 SETTABLEKS                       R30 R52 K144 ["onPressedOutside"]
      755 DUPTABLE                         R53 K184 [{["position"], ["offset"] = 4}]
      756 GETUPVAL                         R54 18
      757 GETTABLEKS                       R54 R54 K185 ["Right"]
      759 SETTABLEKS                       R54 R53 K180 ["position"]
      761 SETTABLEKS                       R53 R52 K178 ["side"]
      763 DUPTABLE                         R53 K187 [{"Form"}]
      764 GETUPVAL                         R54 0
      765 GETTABLEKS                       R54 R54 K52 ["createElement"]
      767 GETUPVAL                         R55 19
      768 DUPTABLE                         R56 K191 [{"onCancel", "onCreate", "onResult"}]
      769 SETTABLEKS                       R30 R56 K188 ["onCancel"]
      771 GETTABLEKS                       R57 R0 K192 ["onCreateSlot"]
      773 SETTABLEKS                       R57 R56 K189 ["onCreate"]
      775 SETTABLEKS                       R32 R56 K190 ["onResult"]
      777 CALL                             R54 2 1
      778 SETTABLEKS                       R54 R53 K186 ["Form"]
      780 CALL                             R50 3 1
      781 SETTABLEKS                       R50 R49 K96 ["Content"]
      783 CALL                             R46 3 1
      784 SETTABLEKS                       R46 R45 K115 ["QuickAdd"]
      786 CALL                             R42 3 1
      787 SETTABLEKS                       R42 R41 K105 ["Toolbar"]
      789 GETTABLEKS                       R43 R0 K7 ["request"]
      791 GETTABLEKS                       R43 R43 K193 ["allowInvalidSource"]
      793 JUMPIFNOT                        R43 ; [+45]
      794 GETUPVAL                         R42 0
      795 GETTABLEKS                       R42 R42 K52 ["createElement"]
      797 GETUPVAL                         R43 8
      798 DUPTABLE                         R44 K196 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center padding-small", ["testId"] = "terrain-material-invalid-source-row"}]
      799 MOVE                             R45 R33
      800 CALL                             R45 0 1
      801 SETTABLEKS                       R45 R44 K75 ["LayoutOrder"]
      803 GETIMPORT                        R45 K73 [UDim2.new]
      805 LOADN                            R46 1
      806 LOADN                            R47 0
      807 LOADN                            R48 0
      808 LOADN                            R49 40
      809 CALL                             R45 4 1
      810 SETTABLEKS                       R45 R44 K23 ["Size"]
      812 DUPTABLE                         R45 K198 [{"Checkbox"}]
      813 GETUPVAL                         R46 0
      814 GETTABLEKS                       R46 R46 K52 ["createElement"]
      816 GETUPVAL                         R47 20
      817 DUPTABLE                         R48 K202 [{["isChecked"], ["label"], ["onActivated"], ["size"], ["testId"] = "terrain-material-invalid-source-checkbox"}]
      818 SETTABLEKS                       R6 R48 K199 ["isChecked"]
      820 LOADK                            R51 K165 ["Plugin"]
      821 LOADK                            R52 K203 ["InvalidMaterialCheckbox"]
      822 NAMECALL                         R49 R1 K135 ["getText"]
      824 CALL                             R49 3 1
      825 SETTABLEKS                       R49 R48 K200 ["label"]
      827 SETTABLEKS                       R27 R48 K57 ["onActivated"]
      829 GETUPVAL                         R49 11
      830 GETTABLEKS                       R49 R49 K112 ["XSmall"]
      832 SETTABLEKS                       R49 R48 K127 ["size"]
      834 CALL                             R46 2 1
      835 SETTABLEKS                       R46 R45 K197 ["Checkbox"]
      837 CALL                             R42 3 1
      838 JUMP                             ; [+1]
      839 LOADNIL                          R42
      840 SETTABLEKS                       R42 R41 K106 ["InvalidSource"]
      842 GETUPVAL                         R42 0
      843 GETTABLEKS                       R42 R42 K52 ["createElement"]
      845 GETUPVAL                         R43 21
      846 DUPTABLE                         R44 K207 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "grow size-full-0", ["scrollingFrameRef"], ["scroll"], ["testId"]}]
      847 MOVE                             R45 R33
      848 CALL                             R45 0 1
      849 SETTABLEKS                       R45 R44 K75 ["LayoutOrder"]
      851 GETTABLEKS                       R45 R3 K102 ["Color"]
      853 GETTABLEKS                       R45 R45 K103 ["Surface"]
      855 GETTABLEKS                       R45 R45 K208 ["Surface_300"]
      857 SETTABLEKS                       R45 R44 K99 ["backgroundStyle"]
      859 SETTABLEKS                       R14 R44 K205 ["scrollingFrameRef"]
      861 DUPTABLE                         R45 K214 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "scrollBarVisibility"}]
      862 GETIMPORT                        R46 K217 [Enum.AutomaticSize.Y]
      864 SETTABLEKS                       R46 R45 K209 ["AutomaticCanvasSize"]
      866 GETIMPORT                        R46 K72 [UDim2.fromOffset]
      868 LOADN                            R47 0
      869 LOADN                            R48 0
      870 CALL                             R46 2 1
      871 SETTABLEKS                       R46 R45 K210 ["CanvasSize"]
      873 GETIMPORT                        R46 K218 [Enum.ScrollingDirection.Y]
      875 SETTABLEKS                       R46 R45 K211 ["ScrollingDirection"]
      877 GETIMPORT                        R46 K221 [Enum.ScrollBarInset.Always]
      879 SETTABLEKS                       R46 R45 K212 ["VerticalScrollBarInset"]
      881 GETUPVAL                         R46 22
      882 GETTABLEKS                       R46 R46 K222 ["Auto"]
      884 SETTABLEKS                       R46 R45 K213 ["scrollBarVisibility"]
      886 SETTABLEKS                       R45 R44 K206 ["scroll"]
      888 GETTABLEKS                       R46 R0 K51 ["viewType"]
      890 JUMPIFNOTEQKS                    R46 K63 ["grid"] ; [+3]
      892 LOADK                            R45 K223 ["terrain-material-grid"]
      893 JUMP                             ; [+1]
      894 LOADK                            R45 K224 ["terrain-material-list"]
      895 SETTABLEKS                       R45 R44 K93 ["testId"]
      897 LENGTH                           R46 R16
      898 LOADN                            R47 0
      899 JUMPIFNOTLT                      R47 R46 ; [+3]
      901 MOVE                             R45 R23
      902 JUMP                             ; [+27]
      903 DUPTABLE                         R45 K226 [{"Empty"}]
      904 GETUPVAL                         R46 0
      905 GETTABLEKS                       R46 R46 K52 ["createElement"]
      907 GETUPVAL                         R47 8
      908 DUPTABLE                         R48 K229 [{["Size"], ["tag"] = "row align-x-center align-y-center", ["testId"] = "terrain-material-empty"}]
      909 GETIMPORT                        R49 K73 [UDim2.new]
      911 LOADN                            R50 1
      912 LOADN                            R51 0
      913 LOADN                            R52 0
      914 LOADN                            R53 160
      915 CALL                             R49 4 1
      916 SETTABLEKS                       R49 R48 K23 ["Size"]
      918 DUPTABLE                         R49 K231 [{"Label"}]
      919 GETUPVAL                         R50 0
      920 GETTABLEKS                       R50 R50 K52 ["createElement"]
      922 GETUPVAL                         R51 23
      923 DUPTABLE                         R52 K235 [{["Text"] = "No results found", ["tag"] = "auto-xy text-body-small content-muted"}]
      924 CALL                             R50 2 1
      925 SETTABLEKS                       R50 R49 K230 ["Label"]
      927 CALL                             R46 3 1
      928 SETTABLEKS                       R46 R45 K225 ["Empty"]
      930 CALL                             R42 3 1
      931 SETTABLEKS                       R42 R41 K107 ["Materials"]
      933 CALL                             R38 3 1
      934 SETTABLEKS                       R38 R37 K96 ["Content"]
      936 GETUPVAL                         R38 0
      937 GETTABLEKS                       R38 R38 K52 ["createElement"]
      939 GETUPVAL                         R39 24
      940 DUPTABLE                         R40 K237 [{"colorMode", "isOpen", "itemText", "onActivated", "onPressedOutside", "overlayGui", "position", "preferences"}]
      941 GETTABLEKS                       R41 R3 K151 ["Config"]
      943 GETTABLEKS                       R41 R41 K152 ["ColorMode"]
      945 GETTABLEKS                       R41 R41 K16 ["Name"]
      947 SETTABLEKS                       R41 R40 K142 ["colorMode"]
      949 JUMPIFNOTEQKNIL                  R18 ; [+2]
      951 LOADB                            R41 0 +1
      952 LOADB                            R41 1
      953 SETTABLEKS                       R41 R40 K143 ["isOpen"]
      955 LOADK                            R43 K165 ["Plugin"]
      956 LOADK                            R44 K238 ["EditInTerrainMaterialManager"]
      957 NAMECALL                         R41 R1 K135 ["getText"]
      959 CALL                             R41 3 1
      960 SETTABLEKS                       R41 R40 K236 ["itemText"]
      962 SETTABLEKS                       R22 R40 K57 ["onActivated"]
      964 SETTABLEKS                       R20 R40 K144 ["onPressedOutside"]
      966 SETTABLEKS                       R12 R40 K148 ["overlayGui"]
      968 GETIMPORT                        R41 K72 [UDim2.fromOffset]
      970 JUMPIFNOT                        R18 ; [+6]
      971 GETTABLEKS                       R43 R18 K239 ["clickOffset"]
      973 GETTABLEKS                       R43 R43 K240 ["X"]
      975 ADDK                             R42 R43 K68 [4]
      976 JUMP                             ; [+1]
      977 LOADN                            R42 0
      978 JUMPIFNOT                        R18 ; [+5]
      979 GETTABLEKS                       R43 R18 K239 ["clickOffset"]
      981 GETTABLEKS                       R43 R43 K216 ["Y"]
      983 JUMP                             ; [+1]
      984 LOADN                            R43 0
      985 CALL                             R41 2 1
      986 SETTABLEKS                       R41 R40 K180 ["position"]
      988 SETTABLEKS                       R2 R40 K149 ["preferences"]
      990 CALL                             R38 2 1
      991 SETTABLEKS                       R38 R37 K97 ["ContextMenu"]
      993 CALL                             R34 3 -1
      994 CLOSEUPVALS                      R16
      995 RETURN                           R34 -1

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
       85 GETTABLEKS                       R11 R1 K21 ["Checkbox"]
       87 GETTABLEKS                       R12 R1 K22 ["IconButton"]
       89 GETTABLEKS                       R13 R1 K23 ["Enums"]
       91 GETTABLEKS                       R13 R13 K24 ["InputSize"]
       93 GETTABLEKS                       R14 R1 K23 ["Enums"]
       95 GETTABLEKS                       R14 R14 K25 ["InputVariant"]
       97 GETTABLEKS                       R15 R4 K26 ["Contexts"]
       99 GETTABLEKS                       R15 R15 K27 ["Localization"]
      101 GETTABLEKS                       R16 R1 K28 ["Menu"]
      103 GETTABLEKS                       R17 R1 K29 ["Popover"]
      105 GETTABLEKS                       R18 R1 K23 ["Enums"]
      107 GETTABLEKS                       R18 R18 K30 ["PopoverAlign"]
      109 GETTABLEKS                       R19 R1 K23 ["Enums"]
      111 GETTABLEKS                       R19 R19 K31 ["PopoverSide"]
      113 GETTABLEKS                       R20 R1 K32 ["ScrollView"]
      115 GETTABLEKS                       R21 R1 K33 ["SearchInput"]
      117 GETTABLEKS                       R22 R1 K23 ["Enums"]
      119 GETTABLEKS                       R22 R22 K34 ["SearchInputShape"]
      121 GETTABLEKS                       R23 R1 K35 ["Text"]
      123 GETTABLEKS                       R24 R1 K36 ["Tooltip"]
      125 GETTABLEKS                       R25 R1 K37 ["View"]
      127 GETTABLEKS                       R26 R1 K23 ["Enums"]
      129 GETTABLEKS                       R26 R26 K38 ["Visibility"]
      131 GETTABLEKS                       R27 R3 K39 ["createNextOrder"]
      133 GETTABLEKS                       R28 R3 K40 ["useEventCallback"]
      135 GETTABLEKS                       R29 R3 K41 ["useToggleState"]
      137 DUPCLOSURE                       R30 K42 [PROTO_0]
      138 DUPCLOSURE                       R31 K43 [PROTO_1]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R25
      145 DUPCLOSURE                       R32 K44 [PROTO_23]
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R29
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R28
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R27
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R26
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R31
      171 RETURN                           R32 1
