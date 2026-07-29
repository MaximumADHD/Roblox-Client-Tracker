PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 GETTABLEKS                       R5 R0 K0 ["items"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLEKS                       R10 R9 K1 ["dividerAbove"]
       13 JUMPIFNOT                        R10 ; [+21]
       14 ADDK                             R3 R3 K2 [1]
       15 LOADK                            R11 K3 ["Divider_"]
       16 FASTCALL1                        TOSTRING R8 ; [+3]
       17 MOVE                             R13 R8
       18 GETIMPORT                        R12 K5 [tostring]
       20 CALL                             R12 1 1
       21 CONCAT                           R10 R11 R12
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K6 ["createElement"]
       25 GETUPVAL                         R12 1
       26 GETTABLEKS                       R12 R12 K7 ["Divider"]
       28 DUPTABLE                         R13 K9 [{"LayoutOrder"}]
       29 ADDK                             R2 R2 K2 [1]
       30 MOVE                             R14 R2
       31 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       33 CALL                             R11 2 1
       34 SETTABLE                         R11 R1 R10
       35 LOADK                            R11 K10 ["Item_"]
       36 GETTABLEKS                       R12 R9 K11 ["id"]
       38 CONCAT                           R10 R11 R12
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K6 ["createElement"]
       42 GETUPVAL                         R12 2
       43 DUPTABLE                         R13 K15 [{"item", "layoutOrder", "onActivated"}]
       44 SETTABLEKS                       R9 R13 K12 ["item"]
       46 ADDK                             R2 R2 K2 [1]
       47 MOVE                             R14 R2
       48 SETTABLEKS                       R14 R13 K13 ["layoutOrder"]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 SETTABLEKS                       R14 R13 K14 ["onActivated"]
       56 CALL                             R11 2 1
       57 SETTABLE                         R11 R1 R10
       58 FORGLOOP                         R5 2 ; [-48]
       60 GETTABLEKS                       R6 R0 K16 ["width"]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K17 ["MENU_MIN_WIDTH"]
       65 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       67 GETIMPORT                        R5 K20 [math.max]
       69 CALL                             R5 2 1
       70 LOADN                            R10 2
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R11 R11 K21 ["MENU_PADDING_Y"]
       74 MUL                              R9 R10 R11
       75 GETTABLEKS                       R12 R0 K0 ["items"]
       77 LENGTH                           R11 R12
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K22 ["ITEM_HEIGHT"]
       81 MUL                              R10 R11 R12
       82 ADD                              R8 R9 R10
       83 ADD                              R7 R8 R3
       84 LOADN                            R10 0
       85 SUBK                             R11 R2 K2 [1]
       86 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       88 GETIMPORT                        R9 K20 [math.max]
       90 CALL                             R9 2 1
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R10 R10 K23 ["MENU_ROW_GAP"]
       94 MUL                              R8 R9 R10
       95 ADD                              R6 R7 R8
       96 LOADB                            R7 0
       97 GETTABLEKS                       R8 R0 K24 ["maxHeight"]
       99 JUMPIFEQKNIL                     R8 ; [+7]
      101 GETTABLEKS                       R8 R0 K24 ["maxHeight"]
      103 JUMPIFLT                         R8 R6 ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 JUMPIFNOT                        R7 ; [+111]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R8 R8 K6 ["createElement"]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R9 R9 K25 ["View"]
      114 DUPTABLE                         R10 K29 [{["Size"], ["tag"] = "bg-surface-0 radius-medium stroke-default clip"}]
      115 GETIMPORT                        R11 K32 [UDim2.fromOffset]
      117 MOVE                             R12 R5
      118 GETTABLEKS                       R13 R0 K24 ["maxHeight"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K26 ["Size"]
      123 DUPTABLE                         R11 K34 [{"Scroll"}]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K6 ["createElement"]
      127 GETUPVAL                         R13 1
      128 GETTABLEKS                       R13 R13 K35 ["ScrollView"]
      130 DUPTABLE                         R14 K40 [{["tag"] = "size-full", ["scroll"], ["padding"], ["layout"]}]
      131 DUPTABLE                         R15 K45 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      132 GETIMPORT                        R16 K48 [Enum.ScrollingDirection.Y]
      134 SETTABLEKS                       R16 R15 K41 ["ScrollingDirection"]
      136 GETIMPORT                        R16 K50 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R16 R15 K42 ["AutomaticCanvasSize"]
      140 GETIMPORT                        R16 K32 [UDim2.fromOffset]
      142 LOADN                            R17 0
      143 LOADN                            R18 0
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K43 ["CanvasSize"]
      147 GETIMPORT                        R16 K53 [Enum.ScrollBarInset.Always]
      149 SETTABLEKS                       R16 R15 K44 ["VerticalScrollBarInset"]
      151 SETTABLEKS                       R15 R14 K37 ["scroll"]
      153 DUPTABLE                         R15 K58 [{"top", "bottom", "left", "right"}]
      154 GETIMPORT                        R16 K61 [UDim.new]
      156 LOADN                            R17 0
      157 GETUPVAL                         R18 3
      158 GETTABLEKS                       R18 R18 K21 ["MENU_PADDING_Y"]
      160 CALL                             R16 2 1
      161 SETTABLEKS                       R16 R15 K54 ["top"]
      163 GETIMPORT                        R16 K61 [UDim.new]
      165 LOADN                            R17 0
      166 GETUPVAL                         R18 3
      167 GETTABLEKS                       R18 R18 K21 ["MENU_PADDING_Y"]
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K55 ["bottom"]
      172 GETIMPORT                        R16 K61 [UDim.new]
      174 LOADN                            R17 0
      175 GETUPVAL                         R18 3
      176 GETTABLEKS                       R18 R18 K62 ["MENU_PADDING_X"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K56 ["left"]
      181 GETIMPORT                        R16 K61 [UDim.new]
      183 LOADN                            R17 0
      184 GETUPVAL                         R18 3
      185 GETTABLEKS                       R18 R18 K62 ["MENU_PADDING_X"]
      187 CALL                             R16 2 1
      188 SETTABLEKS                       R16 R15 K57 ["right"]
      190 SETTABLEKS                       R15 R14 K38 ["padding"]
      192 DUPTABLE                         R15 K66 [{"FillDirection", "SortOrder", "Padding"}]
      193 GETIMPORT                        R16 K68 [Enum.FillDirection.Vertical]
      195 SETTABLEKS                       R16 R15 K63 ["FillDirection"]
      197 GETIMPORT                        R16 K69 [Enum.SortOrder.LayoutOrder]
      199 SETTABLEKS                       R16 R15 K64 ["SortOrder"]
      201 GETIMPORT                        R16 K61 [UDim.new]
      203 LOADN                            R17 0
      204 GETUPVAL                         R18 3
      205 GETTABLEKS                       R18 R18 K23 ["MENU_ROW_GAP"]
      207 CALL                             R16 2 1
      208 SETTABLEKS                       R16 R15 K65 ["Padding"]
      210 SETTABLEKS                       R15 R14 K39 ["layout"]
      212 MOVE                             R15 R1
      213 CALL                             R12 3 1
      214 SETTABLEKS                       R12 R11 K33 ["Scroll"]
      216 CALL                             R8 3 -1
      217 CLOSEUPVALS                      R2
      218 RETURN                           R8 -1
      219 GETUPVAL                         R8 0
      220 GETTABLEKS                       R8 R8 K6 ["createElement"]
      222 GETUPVAL                         R9 1
      223 GETTABLEKS                       R9 R9 K25 ["View"]
      225 DUPTABLE                         R10 K70 [{"Size", "tag", "padding"}]
      226 GETIMPORT                        R11 K32 [UDim2.fromOffset]
      228 MOVE                             R12 R5
      229 LOADN                            R13 0
      230 CALL                             R11 2 1
      231 SETTABLEKS                       R11 R10 K26 ["Size"]
      233 LOADK                            R11 K71 ["col auto-y %s bg-surface-0 radius-medium stroke-default"]
      234 GETUPVAL                         R13 3
      235 GETTABLEKS                       R13 R13 K72 ["MENU_ROW_GAP_TAG"]
      237 NAMECALL                         R11 R11 K73 ["format"]
      239 CALL                             R11 2 1
      240 SETTABLEKS                       R11 R10 K27 ["tag"]
      242 DUPTABLE                         R11 K58 [{"top", "bottom", "left", "right"}]
      243 GETIMPORT                        R12 K61 [UDim.new]
      245 LOADN                            R13 0
      246 GETUPVAL                         R14 3
      247 GETTABLEKS                       R14 R14 K21 ["MENU_PADDING_Y"]
      249 CALL                             R12 2 1
      250 SETTABLEKS                       R12 R11 K54 ["top"]
      252 GETIMPORT                        R12 K61 [UDim.new]
      254 LOADN                            R13 0
      255 GETUPVAL                         R14 3
      256 GETTABLEKS                       R14 R14 K21 ["MENU_PADDING_Y"]
      258 CALL                             R12 2 1
      259 SETTABLEKS                       R12 R11 K55 ["bottom"]
      261 GETIMPORT                        R12 K61 [UDim.new]
      263 LOADN                            R13 0
      264 GETUPVAL                         R14 3
      265 GETTABLEKS                       R14 R14 K62 ["MENU_PADDING_X"]
      267 CALL                             R12 2 1
      268 SETTABLEKS                       R12 R11 K56 ["left"]
      270 GETIMPORT                        R12 K61 [UDim.new]
      272 LOADN                            R13 0
      273 GETUPVAL                         R14 3
      274 GETTABLEKS                       R14 R14 K62 ["MENU_PADDING_X"]
      276 CALL                             R12 2 1
      277 SETTABLEKS                       R12 R11 K57 ["right"]
      279 SETTABLEKS                       R11 R10 K38 ["padding"]
      281 MOVE                             R11 R1
      282 CALL                             R8 3 -1
      283 CLOSEUPVALS                      R2
      284 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["MenuItem"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K12 ["Types"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K13 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 RETURN                           R6 1
