PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R3 R1 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R3 K5 ["X"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Text", "Items", "KeepExpanded"}]
        5 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K2 ["Text"]
       11 SETTABLEKS                       R5 R4 K2 ["Text"]
       13 GETTABLEKS                       R5 R0 K3 ["Items"]
       15 SETTABLEKS                       R5 R4 K3 ["Items"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K4 ["KeepExpanded"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K1 [""]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["useRef"]
       14 LOADNIL                          R6
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 0
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K2 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 4
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 5
       32 CALL                             R8 0 3
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R13 0 2
       42 MOVE                             R14 R7
       43 MOVE                             R15 R3
       44 SETLIST                          R13 R14 2 [1]
       46 CALL                             R11 2 2
       47 NEWCLOSURE                       R13 P2
       48 CAPTURE                          VAL R11
       49 NEWCLOSURE                       R14 P3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 GETUPVAL                         R15 3
       53 GETTABLEKS                       R15 R15 K5 ["createElement"]
       55 GETUPVAL                         R16 7
       56 GETTABLEKS                       R16 R16 K6 ["View"]
       58 DUPTABLE                         R17 K10 [{["Size"], ["tag"] = "col flex-fill padding-small stroke-default radius-medium bg-surface-100"}]
       59 GETIMPORT                        R18 K13 [UDim2.fromOffset]
       61 GETUPVAL                         R20 8
       62 GETTABLEKS                       R20 R20 K14 ["FilterTypesWidth"]
       64 FASTCALL2                        MATH_MIN R20 R8 ; [+4]
       66 MOVE                             R21 R8
       67 GETIMPORT                        R19 K17 [math.min]
       69 CALL                             R19 2 1
       70 GETUPVAL                         R21 8
       71 GETTABLEKS                       R21 R21 K18 ["FilterTypesHeight"]
       73 GETUPVAL                         R23 8
       74 GETTABLEKS                       R23 R23 K19 ["HeaderRowHeight"]
       76 SUB                              R22 R9 R23
       77 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
       79 GETIMPORT                        R20 K17 [math.min]
       81 CALL                             R20 2 1
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K7 ["Size"]
       85 DUPTABLE                         R18 K22 [{"Content", "Footer"}]
       86 GETUPVAL                         R19 3
       87 GETTABLEKS                       R19 R19 K5 ["createElement"]
       89 GETUPVAL                         R20 7
       90 GETTABLEKS                       R20 R20 K23 ["ScrollView"]
       92 DUPTABLE                         R21 K30 [{["LayoutOrder"] = 1, ["layout"], ["scroll"], ["scrollingFrameRef"], ["tag"] = "size-full"}]
       93 DUPTABLE                         R22 K32 [{"FillDirection"}]
       94 GETIMPORT                        R23 K35 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R23 R22 K31 ["FillDirection"]
       98 SETTABLEKS                       R22 R21 K26 ["layout"]
      100 DUPTABLE                         R22 K40 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      101 GETIMPORT                        R23 K43 [Enum.AutomaticSize.Y]
      103 SETTABLEKS                       R23 R22 K36 ["AutomaticCanvasSize"]
      105 GETIMPORT                        R23 K13 [UDim2.fromOffset]
      107 LOADN                            R24 0
      108 LOADN                            R25 0
      109 CALL                             R23 2 1
      110 SETTABLEKS                       R23 R22 K37 ["CanvasSize"]
      112 GETIMPORT                        R23 K44 [Enum.ScrollingDirection.Y]
      114 SETTABLEKS                       R23 R22 K38 ["ScrollingDirection"]
      116 GETIMPORT                        R23 K47 [Enum.ScrollBarInset.ScrollBar]
      118 SETTABLEKS                       R23 R22 K39 ["VerticalScrollBarInset"]
      120 SETTABLEKS                       R22 R21 K27 ["scroll"]
      122 SETTABLEKS                       R6 R21 K28 ["scrollingFrameRef"]
      124 DUPTABLE                         R22 K50 [{"Header", "Items"}]
      125 GETUPVAL                         R23 3
      126 GETTABLEKS                       R23 R23 K5 ["createElement"]
      128 GETUPVAL                         R24 7
      129 GETTABLEKS                       R24 R24 K6 ["View"]
      131 DUPTABLE                         R25 K52 [{["LayoutOrder"] = 1, ["tag"] = "col gap-small size-full-0 auto-y padding-bottom-small"}]
      132 DUPTABLE                         R26 K54 [{"SearchInput"}]
      133 GETUPVAL                         R27 3
      134 GETTABLEKS                       R27 R27 K5 ["createElement"]
      136 GETUPVAL                         R28 7
      137 GETTABLEKS                       R28 R28 K55 ["TextInput"]
      139 DUPTABLE                         R29 K65 [{["label"] = "", ["placeholder"], ["text"], ["leadingIcon"], ["iconTrailing"], ["onChanged"], ["width"], ["size"], ["textBoxRef"]}]
      140 LOADK                            R32 K66 ["FiltersByType"]
      141 LOADK                            R33 K67 ["SearchAllPlaceholder"]
      142 NAMECALL                         R30 R2 K68 ["getText"]
      144 CALL                             R30 3 1
      145 SETTABLEKS                       R30 R29 K57 ["placeholder"]
      147 SETTABLEKS                       R3 R29 K58 ["text"]
      149 GETUPVAL                         R30 7
      150 GETTABLEKS                       R30 R30 K69 ["Enums"]
      152 GETTABLEKS                       R30 R30 K70 ["IconName"]
      154 GETTABLEKS                       R30 R30 K71 ["MagnifyingGlass"]
      156 SETTABLEKS                       R30 R29 K59 ["leadingIcon"]
      158 LENGTH                           R31 R3
      159 LOADN                            R32 0
      160 JUMPIFNOTLT                      R32 R31 ; [+16]
      162 DUPTABLE                         R30 K74 [{"name", "onActivated"}]
      163 GETUPVAL                         R31 7
      164 GETTABLEKS                       R31 R31 K69 ["Enums"]
      166 GETTABLEKS                       R31 R31 K70 ["IconName"]
      168 GETTABLEKS                       R31 R31 K75 ["CircleX"]
      170 SETTABLEKS                       R31 R30 K72 ["name"]
      172 NEWCLOSURE                       R31 P4
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R31 R30 K73 ["onActivated"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R30
      178 SETTABLEKS                       R30 R29 K60 ["iconTrailing"]
      180 SETTABLEKS                       R14 R29 K61 ["onChanged"]
      182 GETIMPORT                        R30 K78 [UDim.new]
      184 LOADN                            R31 1
      185 LOADN                            R32 0
      186 CALL                             R30 2 1
      187 SETTABLEKS                       R30 R29 K62 ["width"]
      189 GETUPVAL                         R30 7
      190 GETTABLEKS                       R30 R30 K69 ["Enums"]
      192 GETTABLEKS                       R30 R30 K79 ["InputSize"]
      194 GETTABLEKS                       R30 R30 K80 ["Small"]
      196 SETTABLEKS                       R30 R29 K63 ["size"]
      198 SETTABLEKS                       R5 R29 K64 ["textBoxRef"]
      200 CALL                             R27 2 1
      201 SETTABLEKS                       R27 R26 K53 ["SearchInput"]
      203 CALL                             R23 3 1
      204 SETTABLEKS                       R23 R22 K48 ["Header"]
      206 GETUPVAL                         R23 3
      207 GETTABLEKS                       R23 R23 K5 ["createElement"]
      209 GETUPVAL                         R24 7
      210 GETTABLEKS                       R24 R24 K6 ["View"]
      212 DUPTABLE                         R25 K83 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall auto-xy"}]
      213 GETIMPORT                        R28 K85 [next]
      215 MOVE                             R29 R11
      216 CALL                             R28 1 1
      217 JUMPIFNOTEQKNIL                  R28 ; [+2]
      219 LOADB                            R27 0 +1
      220 LOADB                            R27 1
      221 JUMPIFNOT                        R27 ; [+10]
      222 GETUPVAL                         R26 9
      223 GETTABLEKS                       R26 R26 K86 ["map"]
      225 MOVE                             R27 R11
      226 NEWCLOSURE                       R28 P5
      227 CAPTURE                          UPVAL U3
      228 CAPTURE                          UPVAL U10
      229 CAPTURE                          VAL R12
      230 CALL                             R26 2 1
      231 JUMP                             ; [+19]
      232 NEWTABLE                         R26 0 1
      234 GETUPVAL                         R27 3
      235 GETTABLEKS                       R27 R27 K5 ["createElement"]
      237 GETUPVAL                         R28 7
      238 GETTABLEKS                       R28 R28 K87 ["Text"]
      240 DUPTABLE                         R29 K89 [{["Text"], ["tag"] = "size-full text-title-medium text-align-x-center text-align-y-center"}]
      241 LOADK                            R32 K90 ["Plugin"]
      242 LOADK                            R33 K91 ["NoAssets"]
      243 NAMECALL                         R30 R2 K68 ["getText"]
      245 CALL                             R30 3 1
      246 SETTABLEKS                       R30 R29 K87 ["Text"]
      248 CALL                             R27 2 -1
      249 SETLIST                          R26 R27 -1 [1]
      251 CALL                             R23 3 1
      252 SETTABLEKS                       R23 R22 K49 ["Items"]
      254 CALL                             R19 3 1
      255 SETTABLEKS                       R19 R18 K20 ["Content"]
      257 GETIMPORT                        R21 K85 [next]
      259 MOVE                             R22 R11
      260 CALL                             R21 1 1
      261 JUMPIFNOTEQKNIL                  R21 ; [+2]
      263 LOADB                            R20 0 +1
      264 LOADB                            R20 1
      265 JUMPIFNOT                        R20 ; [+75]
      266 GETUPVAL                         R19 3
      267 GETTABLEKS                       R19 R19 K5 ["createElement"]
      269 GETUPVAL                         R20 7
      270 GETTABLEKS                       R20 R20 K6 ["View"]
      272 DUPTABLE                         R21 K93 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-bottom-xxsmall"}]
      273 DUPTABLE                         R22 K96 [{"BottomDivider", "ResetButton"}]
      274 GETUPVAL                         R23 3
      275 GETTABLEKS                       R23 R23 K5 ["createElement"]
      277 GETUPVAL                         R24 7
      278 GETTABLEKS                       R24 R24 K97 ["Divider"]
      280 DUPTABLE                         R25 K99 [{["LayoutOrder"] = 1, ["orientation"]}]
      281 GETUPVAL                         R26 7
      282 GETTABLEKS                       R26 R26 K69 ["Enums"]
      284 GETTABLEKS                       R26 R26 K100 ["DividerOrientation"]
      286 GETTABLEKS                       R26 R26 K101 ["Horizontal"]
      288 SETTABLEKS                       R26 R25 K98 ["orientation"]
      290 CALL                             R23 2 1
      291 SETTABLEKS                       R23 R22 K94 ["BottomDivider"]
      293 GETUPVAL                         R23 3
      294 GETTABLEKS                       R23 R23 K5 ["createElement"]
      296 GETUPVAL                         R24 7
      297 GETTABLEKS                       R24 R24 K102 ["Button"]
      299 DUPTABLE                         R25 K104 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["width"], ["size"]}]
      300 LOADK                            R28 K105 ["Filters"]
      301 LOADK                            R29 K106 ["ResetFilters"]
      302 NAMECALL                         R26 R2 K68 ["getText"]
      304 CALL                             R26 3 1
      305 SETTABLEKS                       R26 R25 K58 ["text"]
      307 NEWCLOSURE                       R26 P6
      308 CAPTURE                          VAL R1
      309 SETTABLEKS                       R26 R25 K73 ["onActivated"]
      311 GETUPVAL                         R26 7
      312 GETTABLEKS                       R26 R26 K69 ["Enums"]
      314 GETTABLEKS                       R26 R26 K107 ["ButtonVariant"]
      316 GETTABLEKS                       R26 R26 K108 ["Utility"]
      318 SETTABLEKS                       R26 R25 K103 ["variant"]
      320 GETIMPORT                        R26 K78 [UDim.new]
      322 LOADN                            R27 1
      323 LOADN                            R28 0
      324 CALL                             R26 2 1
      325 SETTABLEKS                       R26 R25 K62 ["width"]
      327 GETUPVAL                         R26 7
      328 GETTABLEKS                       R26 R26 K69 ["Enums"]
      330 GETTABLEKS                       R26 R26 K79 ["InputSize"]
      332 GETTABLEKS                       R26 R26 K80 ["Small"]
      334 SETTABLEKS                       R26 R25 K63 ["size"]
      336 CALL                             R23 2 1
      337 SETTABLEKS                       R23 R22 K95 ["ResetButton"]
      339 CALL                             R19 3 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R19
      342 SETTABLEKS                       R19 R18 K21 ["Footer"]
      344 CALL                             R15 3 -1
      345 RETURN                           R15 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 2
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 5
       16 GETTABLEKS                       R8 R8 K2 ["Popover"]
       18 GETTABLEKS                       R8 R8 K3 ["Root"]
       20 DUPTABLE                         R9 K5 [{"isOpen"}]
       21 SETTABLEKS                       R2 R9 K4 ["isOpen"]
       23 DUPTABLE                         R10 K8 [{"Anchor", "Content"}]
       24 GETUPVAL                         R11 4
       25 GETTABLEKS                       R11 R11 K1 ["createElement"]
       27 GETUPVAL                         R12 5
       28 GETTABLEKS                       R12 R12 K2 ["Popover"]
       30 GETTABLEKS                       R12 R12 K6 ["Anchor"]
       32 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       33 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R14 R14 K1 ["createElement"]
       40 GETUPVAL                         R15 5
       41 GETTABLEKS                       R15 R15 K11 ["Tooltip"]
       43 DUPTABLE                         R16 K14 [{"title", "side"}]
       44 LOADK                            R19 K15 ["SearchBar"]
       45 LOADK                            R20 K16 ["PlaceholderText"]
       46 NAMECALL                         R17 R1 K17 ["getText"]
       48 CALL                             R17 3 1
       49 SETTABLEKS                       R17 R16 K12 ["title"]
       51 GETUPVAL                         R17 5
       52 GETTABLEKS                       R17 R17 K18 ["Enums"]
       54 GETTABLEKS                       R17 R17 K19 ["PopoverSide"]
       56 GETTABLEKS                       R17 R17 K20 ["Bottom"]
       58 SETTABLEKS                       R17 R16 K13 ["side"]
       60 GETUPVAL                         R17 4
       61 GETTABLEKS                       R17 R17 K1 ["createElement"]
       63 GETUPVAL                         R18 5
       64 GETTABLEKS                       R18 R18 K21 ["IconButton"]
       66 DUPTABLE                         R19 K26 [{"onActivated", "variant", "size", "icon"}]
       67 NEWCLOSURE                       R20 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R20 R19 K22 ["onActivated"]
       72 JUMPIFNOT                        R6 ; [+8]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K18 ["Enums"]
       76 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       78 GETTABLEKS                       R20 R20 K28 ["Emphasis"]
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R20 5
       82 GETTABLEKS                       R20 R20 K18 ["Enums"]
       84 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       86 GETTABLEKS                       R20 R20 K29 ["Utility"]
       88 SETTABLEKS                       R20 R19 K23 ["variant"]
       90 GETUPVAL                         R20 5
       91 GETTABLEKS                       R20 R20 K18 ["Enums"]
       93 GETTABLEKS                       R20 R20 K30 ["InputSize"]
       95 GETTABLEKS                       R20 R20 K31 ["XSmall"]
       97 SETTABLEKS                       R20 R19 K24 ["size"]
       99 GETUPVAL                         R20 5
      100 GETTABLEKS                       R20 R20 K18 ["Enums"]
      102 GETTABLEKS                       R20 R20 K32 ["IconName"]
      104 GETTABLEKS                       R20 R20 K33 ["ThreeBarsHorizontalNarrowing"]
      106 SETTABLEKS                       R20 R19 K25 ["icon"]
      108 CALL                             R17 2 -1
      109 CALL                             R14 -1 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K6 ["Anchor"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K1 ["createElement"]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K2 ["Popover"]
      119 GETTABLEKS                       R12 R12 K7 ["Content"]
      121 DUPTABLE                         R13 K38 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
      122 GETUPVAL                         R14 5
      123 GETTABLEKS                       R14 R14 K18 ["Enums"]
      125 GETTABLEKS                       R14 R14 K19 ["PopoverSide"]
      127 GETTABLEKS                       R14 R14 K20 ["Bottom"]
      129 SETTABLEKS                       R14 R13 K13 ["side"]
      131 GETUPVAL                         R14 5
      132 GETTABLEKS                       R14 R14 K18 ["Enums"]
      134 GETTABLEKS                       R14 R14 K39 ["PopoverAlign"]
      136 GETTABLEKS                       R14 R14 K40 ["Center"]
      138 SETTABLEKS                       R14 R13 K36 ["align"]
      140 NEWCLOSURE                       R14 P1
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R14 R13 K37 ["onPressedOutside"]
      144 GETUPVAL                         R14 4
      145 GETTABLEKS                       R14 R14 K1 ["createElement"]
      147 GETUPVAL                         R15 6
      148 CALL                             R14 1 -1
      149 CALL                             R11 -1 1
      150 SETTABLEKS                       R11 R10 K7 ["Content"]
      152 CALL                             R7 3 -1
      153 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Packages"]
       38 GETTABLEKS                       R7 R7 K14 ["Dash"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Packages"]
       45 GETTABLEKS                       R8 R8 K15 ["React"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["useState"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K17 ["FilterTypeGroup"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K6 ["Src"]
       70 GETTABLEKS                       R12 R12 K20 ["Util"]
       72 GETTABLEKS                       R12 R12 K21 ["hasActiveFilters"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R13 R13 K20 ["Util"]
       81 GETTABLEKS                       R13 R13 K22 ["searchFilterTypes"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K23 ["Hooks"]
       90 GETTABLEKS                       R14 R14 K24 ["usePluginSize"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K23 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K25 ["useSortFilter"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K6 ["Src"]
      106 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      108 GETTABLEKS                       R16 R16 K26 ["useFilterTypeTable"]
      110 CALL                             R15 1 1
      111 DUPCLOSURE                       R16 K27 [PROTO_7]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R9
      123 DUPCLOSURE                       R17 K28 [PROTO_10]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R16
      131 RETURN                           R17 1
