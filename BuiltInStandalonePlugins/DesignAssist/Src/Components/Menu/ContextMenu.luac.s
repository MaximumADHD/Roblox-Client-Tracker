PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["dividerAbove"]
        7 JUMPIFNOT                        R7 ; [+1]
        8 ADDK                             R1 R1 K1 [1]
        9 FORGLOOP                         R2 2 ; [-5]
       11 LENGTH                           R3 R0
       12 ADD                              R2 R3 R1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K3 ["MENU_PADDING_Y"]
       16 MULK                             R6 R7 K2 [2]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K4 ["ITEM_HEIGHT"]
       20 LENGTH                           R9 R0
       21 MUL                              R7 R8 R9
       22 ADD                              R5 R6 R7
       23 ADD                              R4 R5 R1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K5 ["MENU_ROW_GAP"]
       27 LOADN                            R8 0
       28 SUBK                             R9 R2 K1 [1]
       29 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       31 GETIMPORT                        R7 K8 [math.max]
       33 CALL                             R7 2 1
       34 MUL                              R5 R6 R7
       35 ADD                              R3 R4 R5
       36 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isDisabled"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["keepsMenuOpen"]
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["onClose"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["onActivated"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K1 ["items"]
        7 LOADN                            R4 0
        8 MOVE                             R5 R3
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R10 R9 K2 ["dividerAbove"]
       14 JUMPIFNOT                        R10 ; [+1]
       15 ADDK                             R4 R4 K3 [1]
       16 FORGLOOP                         R5 2 ; [-5]
       18 LENGTH                           R6 R3
       19 ADD                              R5 R6 R4
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R9 R9 K5 ["MENU_PADDING_Y"]
       23 MULK                             R8 R9 K4 [2]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K6 ["ITEM_HEIGHT"]
       27 LENGTH                           R11 R3
       28 MUL                              R9 R10 R11
       29 ADD                              R7 R8 R9
       30 ADD                              R6 R7 R4
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K7 ["MENU_ROW_GAP"]
       34 LOADN                            R10 0
       35 SUBK                             R11 R5 K3 [1]
       36 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       38 GETIMPORT                        R9 K10 [math.max]
       40 CALL                             R9 2 1
       41 MUL                              R7 R8 R9
       42 ADD                              R2 R6 R7
       43 GETTABLEKS                       R3 R0 K11 ["position"]
       45 JUMPIF                           R3 ; [+7]
       46 GETIMPORT                        R3 K14 [Vector2.new]
       48 GETTABLEKS                       R5 R0 K15 ["width"]
       50 MINUS                            R4 R5
       51 MINUS                            R5 R2
       52 CALL                             R3 2 1
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R3
       55 GETTABLEKS                       R6 R0 K16 ["overlayFrame"]
       57 GETTABLEKS                       R6 R6 K17 ["AbsoluteSize"]
       59 GETIMPORT                        R7 K14 [Vector2.new]
       61 GETTABLEKS                       R9 R0 K15 ["width"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K18 ["MENU_MIN_WIDTH"]
       66 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       68 GETIMPORT                        R8 K10 [math.max]
       70 CALL                             R8 2 1
       71 MOVE                             R9 R2
       72 CALL                             R7 2 -1
       73 CALL                             R4 -1 1
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          VAL R0
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R6 R6 K19 ["createPortal"]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K20 ["createElement"]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K21 ["Fragment"]
       85 LOADNIL                          R9
       86 DUPTABLE                         R10 K24 [{"AnchorTarget", "Popover"}]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K20 ["createElement"]
       90 GETUPVAL                         R12 4
       91 GETTABLEKS                       R12 R12 K25 ["View"]
       93 DUPTABLE                         R13 K30 [{"ref", "Position", "Size", "ZIndex"}]
       94 SETTABLEKS                       R1 R13 K26 ["ref"]
       96 GETIMPORT                        R14 K33 [UDim2.fromOffset]
       98 GETTABLEKS                       R15 R4 K34 ["X"]
      100 GETTABLEKS                       R16 R4 K35 ["Y"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K27 ["Position"]
      105 GETIMPORT                        R14 K33 [UDim2.fromOffset]
      107 LOADN                            R15 1
      108 LOADN                            R16 1
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K28 ["Size"]
      112 GETUPVAL                         R14 1
      113 GETTABLEKS                       R14 R14 K36 ["CONTEXT_Z_INDEX"]
      115 SETTABLEKS                       R14 R13 K29 ["ZIndex"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K22 ["AnchorTarget"]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K20 ["createElement"]
      123 GETUPVAL                         R12 4
      124 GETTABLEKS                       R12 R12 K23 ["Popover"]
      126 GETTABLEKS                       R12 R12 K37 ["Root"]
      128 DUPTABLE                         R13 K39 [{"isOpen"}]
      129 GETTABLEKS                       R15 R0 K11 ["position"]
      131 JUMPIFNOTEQKNIL                  R15 ; [+2]
      133 LOADB                            R14 0 +1
      134 LOADB                            R14 1
      135 SETTABLEKS                       R14 R13 K38 ["isOpen"]
      137 DUPTABLE                         R14 K42 [{"Anchor", "Content"}]
      138 GETUPVAL                         R15 0
      139 GETTABLEKS                       R15 R15 K20 ["createElement"]
      141 GETUPVAL                         R16 4
      142 GETTABLEKS                       R16 R16 K23 ["Popover"]
      144 GETTABLEKS                       R16 R16 K40 ["Anchor"]
      146 DUPTABLE                         R17 K44 [{"anchorRef"}]
      147 SETTABLEKS                       R1 R17 K43 ["anchorRef"]
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K40 ["Anchor"]
      152 GETTABLEKS                       R16 R0 K11 ["position"]
      154 JUMPIFNOT                        R16 ; [+55]
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R15 R15 K20 ["createElement"]
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R16 R16 K23 ["Popover"]
      161 GETTABLEKS                       R16 R16 K41 ["Content"]
      163 DUPTABLE                         R17 K50 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
      164 DUPTABLE                         R18 K53 [{["position"], ["offset"] = 0}]
      165 GETUPVAL                         R19 4
      166 GETTABLEKS                       R19 R19 K54 ["Enums"]
      168 GETTABLEKS                       R19 R19 K55 ["PopoverSide"]
      170 GETTABLEKS                       R19 R19 K56 ["Bottom"]
      172 SETTABLEKS                       R19 R18 K11 ["position"]
      174 SETTABLEKS                       R18 R17 K47 ["side"]
      176 GETUPVAL                         R18 4
      177 GETTABLEKS                       R18 R18 K54 ["Enums"]
      179 GETTABLEKS                       R18 R18 K57 ["PopoverAlign"]
      181 GETTABLEKS                       R18 R18 K58 ["Start"]
      183 SETTABLEKS                       R18 R17 K48 ["align"]
      185 GETTABLEKS                       R18 R0 K59 ["onClose"]
      187 SETTABLEKS                       R18 R17 K49 ["onPressedOutside"]
      189 DUPTABLE                         R18 K61 [{"Menu"}]
      190 GETUPVAL                         R19 0
      191 GETTABLEKS                       R19 R19 K20 ["createElement"]
      193 GETUPVAL                         R20 5
      194 DUPTABLE                         R21 K63 [{"items", "width", "onActivated"}]
      195 GETTABLEKS                       R22 R0 K1 ["items"]
      197 SETTABLEKS                       R22 R21 K1 ["items"]
      199 GETTABLEKS                       R22 R0 K15 ["width"]
      201 SETTABLEKS                       R22 R21 K15 ["width"]
      203 SETTABLEKS                       R5 R21 K62 ["onActivated"]
      205 CALL                             R19 2 1
      206 SETTABLEKS                       R19 R18 K60 ["Menu"]
      208 CALL                             R15 3 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R15
      211 SETTABLEKS                       R15 R14 K41 ["Content"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K23 ["Popover"]
      216 CALL                             R7 3 1
      217 GETTABLEKS                       R8 R0 K16 ["overlayFrame"]
      219 CALL                             R6 2 -1
      220 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["MenuSurface"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K10 ["Parent"]
       52 GETTABLEKS                       R7 R7 K13 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K10 ["Parent"]
       61 GETTABLEKS                       R8 R8 K14 ["clampPosition"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K15 [PROTO_0]
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R9 K16 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 RETURN                           R9 1
