PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+11]
        7 LOADN                            R4 0
        8 GETTABLEKS                       R5 R1 K3 ["columns"]
       10 FASTCALL3                        MATH_CLAMP R0 R4 R5
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K6 [math.clamp]
       15 CALL                             R2 3 1
       16 RETURN                           R2 1
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K1 [type]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K7 ["table"] ; [+30]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R5 R1 K8 ["breakpoint"]
       27 FASTCALL1                        TOSTRING R5 ; [+2]
       28 GETIMPORT                        R4 K10 [tostring]
       30 CALL                             R4 1 1
       31 GETTABLE                         R2 R3 R4
       32 JUMPIFNOT                        R2 ; [+2]
       33 GETTABLE                         R3 R0 R2
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 FASTCALL1                        TYPE R3 ; [+3]
       37 MOVE                             R5 R3
       38 GETIMPORT                        R4 K1 [type]
       40 CALL                             R4 1 1
       41 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+11]
       43 LOADN                            R6 0
       44 GETTABLEKS                       R7 R1 K3 ["columns"]
       46 FASTCALL3                        MATH_CLAMP R3 R6 R7
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K6 [math.clamp]
       51 CALL                             R4 3 1
       52 RETURN                           R4 1
       53 GETTABLEKS                       R2 R1 K3 ["columns"]
       55 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+9]
        7 LOADN                            R3 0
        8 FASTCALL2                        MATH_MAX R3 R0 ; [+4]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K5 [math.max]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 JUMPIFNOTEQKS                    R0 K6 ["none"] ; [+3]
       17 LOADN                            R2 0
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R1 K7 ["gutter"]
       21 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useDeviceProfile"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useLayoutMetrics"]
       11 CALL                             R3 0 1
       12 LOADN                            R5 0
       13 GETTABLEKS                       R7 R1 K3 ["isProvided"]
       15 JUMPIFNOT                        R7 ; [+3]
       16 GETTABLEKS                       R6 R1 K4 ["width"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R6 R2 K4 ["width"]
       21 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       23 GETIMPORT                        R4 K7 [math.max]
       25 CALL                             R4 2 1
       26 LOADN                            R6 1
       27 GETTABLEKS                       R7 R3 K8 ["columns"]
       29 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       31 GETIMPORT                        R5 K7 [math.max]
       33 CALL                             R5 2 1
       34 LOADN                            R7 0
       35 GETTABLEKS                       R8 R3 K9 ["margin"]
       37 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       39 GETIMPORT                        R6 K7 [math.max]
       41 CALL                             R6 2 1
       42 LOADN                            R8 0
       43 GETTABLEKS                       R9 R3 K10 ["gutter"]
       45 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       47 GETIMPORT                        R7 K7 [math.max]
       49 CALL                             R7 2 1
       50 LOADN                            R9 0
       51 MULK                             R11 R6 K11 [2]
       52 SUB                              R10 R4 R11
       53 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       55 GETIMPORT                        R8 K7 [math.max]
       57 CALL                             R8 2 1
       58 SUBK                             R10 R5 K12 [1]
       59 MUL                              R9 R7 R10
       60 JUMPIFNOTLT                      R9 R8 ; [+4]
       62 SUB                              R11 R8 R9
       63 DIV                              R10 R11 R5
       64 JUMP                             ; [+1]
       65 LOADN                            R10 0
       66 DUPTABLE                         R11 K16 [{"columns", "margin", "gutter", "contentWidth", "colWidth", "breakpoint"}]
       67 SETTABLEKS                       R5 R11 K8 ["columns"]
       69 SETTABLEKS                       R6 R11 K9 ["margin"]
       71 SETTABLEKS                       R7 R11 K10 ["gutter"]
       73 SETTABLEKS                       R4 R11 K13 ["contentWidth"]
       75 SETTABLEKS                       R10 R11 K14 ["colWidth"]
       77 GETTABLEKS                       R12 R3 K15 ["breakpoint"]
       79 SETTABLEKS                       R12 R11 K15 ["breakpoint"]
       81 GETUPVAL                         R12 1
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R13 R13 K17 ["GridContext"]
       85 GETTABLEKS                       R13 R13 K18 ["Provider"]
       87 DUPTABLE                         R14 K20 [{"value"}]
       88 SETTABLEKS                       R11 R14 K19 ["value"]
       90 DUPTABLE                         R15 K22 [{"GridScroll"}]
       91 GETUPVAL                         R16 1
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R17 R17 K23 ["ScrollView"]
       95 DUPTABLE                         R18 K30 [{["Name"], ["LayoutOrder"], ["tag"] = "size-full", ["scroll"], ["layout"]}]
       96 GETTABLEKS                       R20 R0 K24 ["Name"]
       98 ORK                              R19 R20 K31 ["AppFrameworkGridScroll"]
       99 SETTABLEKS                       R19 R18 K24 ["Name"]
      101 GETTABLEKS                       R19 R0 K25 ["LayoutOrder"]
      103 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      105 DUPTABLE                         R19 K36 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      106 GETIMPORT                        R20 K40 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R20 R19 K32 ["AutomaticCanvasSize"]
      110 GETIMPORT                        R20 K43 [UDim2.fromOffset]
      112 LOADN                            R21 0
      113 LOADN                            R22 0
      114 CALL                             R20 2 1
      115 SETTABLEKS                       R20 R19 K33 ["CanvasSize"]
      117 GETIMPORT                        R20 K44 [Enum.ScrollingDirection.Y]
      119 SETTABLEKS                       R20 R19 K34 ["ScrollingDirection"]
      121 GETIMPORT                        R20 K47 [Enum.ScrollBarInset.Always]
      123 SETTABLEKS                       R20 R19 K35 ["VerticalScrollBarInset"]
      125 SETTABLEKS                       R19 R18 K28 ["scroll"]
      127 DUPTABLE                         R19 K50 [{"FillDirection", "SortOrder"}]
      128 GETIMPORT                        R20 K52 [Enum.FillDirection.Vertical]
      130 SETTABLEKS                       R20 R19 K48 ["FillDirection"]
      132 GETIMPORT                        R20 K53 [Enum.SortOrder.LayoutOrder]
      134 SETTABLEKS                       R20 R19 K49 ["SortOrder"]
      136 SETTABLEKS                       R19 R18 K29 ["layout"]
      138 DUPTABLE                         R19 K55 [{"Grid"}]
      139 GETUPVAL                         R20 1
      140 GETUPVAL                         R21 3
      141 GETTABLEKS                       R21 R21 K56 ["View"]
      143 DUPTABLE                         R22 K59 [{["Name"] = "AppFrameworkGrid", ["LayoutOrder"] = 1, ["tag"], ["padding"], ["layout"]}]
      144 GETTABLEKS                       R24 R0 K26 ["tag"]
      146 ORK                              R23 R24 K60 ["size-full-0 auto-y"]
      147 SETTABLEKS                       R23 R22 K26 ["tag"]
      149 DUPTABLE                         R23 K63 [{"left", "right"}]
      150 GETIMPORT                        R24 K66 [UDim.new]
      152 LOADN                            R25 0
      153 MOVE                             R26 R6
      154 CALL                             R24 2 1
      155 SETTABLEKS                       R24 R23 K61 ["left"]
      157 GETIMPORT                        R24 K66 [UDim.new]
      159 LOADN                            R25 0
      160 MOVE                             R26 R6
      161 CALL                             R24 2 1
      162 SETTABLEKS                       R24 R23 K62 ["right"]
      164 SETTABLEKS                       R23 R22 K58 ["padding"]
      166 DUPTABLE                         R23 K70 [{["FillDirection"], ["SortOrder"], ["Wraps"] = True, ["Padding"]}]
      167 GETIMPORT                        R24 K72 [Enum.FillDirection.Horizontal]
      169 SETTABLEKS                       R24 R23 K48 ["FillDirection"]
      171 GETIMPORT                        R24 K53 [Enum.SortOrder.LayoutOrder]
      173 SETTABLEKS                       R24 R23 K49 ["SortOrder"]
      175 GETIMPORT                        R24 K66 [UDim.new]
      177 LOADN                            R25 0
      178 MOVE                             R26 R7
      179 CALL                             R24 2 1
      180 SETTABLEKS                       R24 R23 K69 ["Padding"]
      182 SETTABLEKS                       R23 R22 K29 ["layout"]
      184 GETTABLEKS                       R23 R0 K73 ["children"]
      186 CALL                             R20 3 1
      187 SETTABLEKS                       R20 R19 K54 ["Grid"]
      189 CALL                             R16 3 1
      190 SETTABLEKS                       R16 R15 K21 ["GridScroll"]
      192 CALL                             R12 3 -1
      193 RETURN                           R12 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GridContext"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K2 ["size"]
        9 FASTCALL1                        TYPE R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K4 [type]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+12]
       16 LOADN                            R6 0
       17 GETTABLEKS                       R7 R1 K6 ["columns"]
       19 FASTCALL3                        MATH_CLAMP R3 R6 R7
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K9 [math.clamp]
       24 CALL                             R4 3 1
       25 MOVE                             R2 R4
       26 JUMP                             ; [+39]
       27 FASTCALL1                        TYPE R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K4 [type]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+31]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R7 R1 K11 ["breakpoint"]
       37 FASTCALL1                        TOSTRING R7 ; [+2]
       38 GETIMPORT                        R6 K13 [tostring]
       40 CALL                             R6 1 1
       41 GETTABLE                         R4 R5 R6
       42 JUMPIFNOT                        R4 ; [+2]
       43 GETTABLE                         R5 R3 R4
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 FASTCALL1                        TYPE R5 ; [+3]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K4 [type]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+12]
       53 LOADN                            R8 0
       54 GETTABLEKS                       R9 R1 K6 ["columns"]
       56 FASTCALL3                        MATH_CLAMP R5 R8 R9
       58 MOVE                             R7 R5
       59 GETIMPORT                        R6 K9 [math.clamp]
       61 CALL                             R6 3 1
       62 MOVE                             R2 R6
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R2 R1 K6 ["columns"]
       66 LOADN                            R4 0
       67 JUMPIFNOTLT                      R4 R2 ; [+10]
       69 GETTABLEKS                       R5 R1 K14 ["colWidth"]
       71 MUL                              R4 R5 R2
       72 GETTABLEKS                       R6 R1 K15 ["gutter"]
       74 SUBK                             R7 R2 K16 [1]
       75 MUL                              R5 R6 R7
       76 ADD                              R3 R4 R5
       77 JUMP                             ; [+1]
       78 LOADN                            R3 0
       79 GETUPVAL                         R4 3
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R5 R5 K17 ["View"]
       83 DUPTABLE                         R6 K23 [{"Name", "LayoutOrder", "tag", "Size", "AutomaticSize"}]
       84 GETTABLEKS                       R7 R0 K18 ["Name"]
       86 SETTABLEKS                       R7 R6 K18 ["Name"]
       88 GETTABLEKS                       R7 R0 K19 ["LayoutOrder"]
       90 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
       92 GETTABLEKS                       R8 R0 K20 ["tag"]
       94 ORK                              R7 R8 K24 ["auto-y col"]
       95 SETTABLEKS                       R7 R6 K20 ["tag"]
       97 GETIMPORT                        R7 K27 [UDim2.new]
       99 LOADN                            R8 0
      100 MOVE                             R9 R3
      101 LOADN                            R10 0
      102 LOADN                            R11 0
      103 CALL                             R7 4 1
      104 SETTABLEKS                       R7 R6 K21 ["Size"]
      106 GETIMPORT                        R7 K30 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R7 R6 K22 ["AutomaticSize"]
      110 GETTABLEKS                       R7 R0 K31 ["children"]
      112 CALL                             R4 3 -1
      113 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 FASTCALL1                        TYPE R3 ; [+2]
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["number"] ; [+18]
        8 GETTABLEKS                       R3 R1 K0 ["key"]
       10 FASTCALL1                        TYPE R3 ; [+2]
       11 GETIMPORT                        R2 K2 [type]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["number"] ; [+10]
       16 GETTABLEKS                       R3 R0 K0 ["key"]
       18 GETTABLEKS                       R4 R1 K0 ["key"]
       20 JUMPIFLT                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 GETTABLEKS                       R4 R0 K0 ["key"]
       27 FASTCALL1                        TOSTRING R4 ; [+2]
       28 GETIMPORT                        R3 K5 [tostring]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R5 R1 K0 ["key"]
       33 FASTCALL1                        TOSTRING R5 ; [+2]
       34 GETIMPORT                        R4 K5 [tostring]
       36 CALL                             R4 1 1
       37 JUMPIFLT                         R3 R4 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R1 1
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K1 [type]
        9 CALL                             R2 1 1
       10 JUMPIFEQKS                       R2 K2 ["table"] ; [+11]
       12 DUPTABLE                         R4 K6 [{["key"] = 1, ["child"]}]
       13 SETTABLEKS                       R0 R4 K5 ["child"]
       15 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K8 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 DUPTABLE                         R9 K9 [{"key", "child"}]
       27 SETTABLEKS                       R5 R9 K3 ["key"]
       29 SETTABLEKS                       R6 R9 K5 ["child"]
       31 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       33 MOVE                             R8 R1
       34 GETIMPORT                        R7 K8 [table.insert]
       36 CALL                             R7 2 0
       37 FORGLOOP                         R2 2 ; [-12]
       39 GETIMPORT                        R2 K11 [table.sort]
       41 MOVE                             R3 R1
       42 DUPCLOSURE                       R4 K12 [PROTO_4]
       43 CALL                             R2 2 0
       44 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R3 0
        1 GETUPVAL                         R4 0
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R1 R2 K3 ["current"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 1
        5 FASTCALL                         MATH_CLAMP ; [+2]
        6 GETIMPORT                        R0 K3 [math.clamp]
        8 CALL                             R0 3 1
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R0 R1 K0 ["current"]
       12 GETUPVAL                         R1 2
       13 JUMPIFEQ                         R1 R0 ; [+4]
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteContentSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R4 0
        5 SUB                              R3 R1 R4
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K5 [0.5]
       11 JUMPIFNOTLT                      R3 R2 ; [+4]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 LOADN                            R4 0
        5 GETUPVAL                         R5 0
        6 FASTCALL3                        MATH_CLAMP R1 R4 R5
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [math.clamp]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R3 1
       13 SETTABLEKS                       R2 R3 K5 ["current"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GridContext"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K2 ["size"]
        9 FASTCALL1                        TYPE R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K4 [type]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+12]
       16 LOADN                            R6 0
       17 GETTABLEKS                       R7 R1 K6 ["columns"]
       19 FASTCALL3                        MATH_CLAMP R3 R6 R7
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K9 [math.clamp]
       24 CALL                             R4 3 1
       25 MOVE                             R2 R4
       26 JUMP                             ; [+39]
       27 FASTCALL1                        TYPE R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K4 [type]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+31]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R7 R1 K11 ["breakpoint"]
       37 FASTCALL1                        TOSTRING R7 ; [+2]
       38 GETIMPORT                        R6 K13 [tostring]
       40 CALL                             R6 1 1
       41 GETTABLE                         R4 R5 R6
       42 JUMPIFNOT                        R4 ; [+2]
       43 GETTABLE                         R5 R3 R4
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 FASTCALL1                        TYPE R5 ; [+3]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K4 [type]
       50 CALL                             R6 1 1
       51 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+12]
       53 LOADN                            R8 0
       54 GETTABLEKS                       R9 R1 K6 ["columns"]
       56 FASTCALL3                        MATH_CLAMP R5 R8 R9
       58 MOVE                             R7 R5
       59 GETIMPORT                        R6 K9 [math.clamp]
       61 CALL                             R6 3 1
       62 MOVE                             R2 R6
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R2 R1 K6 ["columns"]
       66 GETTABLEKS                       R4 R0 K14 ["itemSize"]
       68 JUMPIFEQKS                       R4 K15 ["auto"] ; [+2]
       70 LOADB                            R3 0 +1
       71 LOADB                            R3 1
       72 JUMPIFNOT                        R3 ; [+2]
       73 LOADN                            R4 0
       74 JUMP                             ; [+59]
       75 GETTABLEKS                       R5 R0 K14 ["itemSize"]
       77 FASTCALL1                        TYPE R5 ; [+3]
       78 MOVE                             R7 R5
       79 GETIMPORT                        R6 K4 [type]
       81 CALL                             R6 1 1
       82 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+12]
       84 LOADN                            R8 0
       85 GETTABLEKS                       R9 R1 K6 ["columns"]
       87 FASTCALL3                        MATH_CLAMP R5 R8 R9
       89 MOVE                             R7 R5
       90 GETIMPORT                        R6 K9 [math.clamp]
       92 CALL                             R6 3 1
       93 MOVE                             R4 R6
       94 JUMP                             ; [+39]
       95 FASTCALL1                        TYPE R5 ; [+3]
       96 MOVE                             R7 R5
       97 GETIMPORT                        R6 K4 [type]
       99 CALL                             R6 1 1
      100 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+31]
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R9 R1 K11 ["breakpoint"]
      105 FASTCALL1                        TOSTRING R9 ; [+2]
      106 GETIMPORT                        R8 K13 [tostring]
      108 CALL                             R8 1 1
      109 GETTABLE                         R6 R7 R8
      110 JUMPIFNOT                        R6 ; [+2]
      111 GETTABLE                         R7 R5 R6
      112 JUMP                             ; [+1]
      113 LOADNIL                          R7
      114 FASTCALL1                        TYPE R7 ; [+3]
      115 MOVE                             R9 R7
      116 GETIMPORT                        R8 K4 [type]
      118 CALL                             R8 1 1
      119 JUMPIFNOTEQKS                    R8 K5 ["number"] ; [+12]
      121 LOADN                            R10 0
      122 GETTABLEKS                       R11 R1 K6 ["columns"]
      124 FASTCALL3                        MATH_CLAMP R7 R10 R11
      126 MOVE                             R9 R7
      127 GETIMPORT                        R8 K9 [math.clamp]
      129 CALL                             R8 3 1
      130 MOVE                             R4 R8
      131 JUMP                             ; [+2]
      132 GETTABLEKS                       R4 R1 K6 ["columns"]
      134 LOADN                            R6 0
      135 JUMPIFNOTLT                      R6 R2 ; [+10]
      137 GETTABLEKS                       R7 R1 K16 ["colWidth"]
      139 MUL                              R6 R7 R2
      140 GETTABLEKS                       R8 R1 K17 ["gutter"]
      142 SUBK                             R9 R2 K18 [1]
      143 MUL                              R7 R8 R9
      144 ADD                              R5 R6 R7
      145 JUMP                             ; [+1]
      146 LOADN                            R5 0
      147 LOADN                            R7 0
      148 JUMPIFNOTLT                      R7 R4 ; [+10]
      150 GETTABLEKS                       R8 R1 K16 ["colWidth"]
      152 MUL                              R7 R8 R4
      153 GETTABLEKS                       R9 R1 K17 ["gutter"]
      155 SUBK                             R10 R4 K18 [1]
      156 MUL                              R8 R9 R10
      157 ADD                              R6 R7 R8
      158 JUMP                             ; [+1]
      159 LOADN                            R6 0
      160 LOADN                            R8 1
      161 GETTABLEKS                       R10 R0 K20 ["height"]
      163 ORK                              R9 R10 K19 [216]
      164 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      166 GETIMPORT                        R7 K22 [math.max]
      168 CALL                             R7 2 1
      169 GETTABLEKS                       R9 R0 K23 ["itemSpacing"]
      171 FASTCALL1                        TYPE R9 ; [+3]
      172 MOVE                             R11 R9
      173 GETIMPORT                        R10 K4 [type]
      175 CALL                             R10 1 1
      176 JUMPIFNOTEQKS                    R10 K5 ["number"] ; [+10]
      178 LOADN                            R11 0
      179 FASTCALL2                        MATH_MAX R11 R9 ; [+4]
      181 MOVE                             R12 R9
      182 GETIMPORT                        R10 K22 [math.max]
      184 CALL                             R10 2 1
      185 MOVE                             R8 R10
      186 JUMP                             ; [+6]
      187 JUMPIFNOTEQKS                    R9 K24 ["none"] ; [+3]
      189 LOADN                            R8 0
      190 JUMP                             ; [+2]
      191 GETTABLEKS                       R8 R1 K17 ["gutter"]
      193 GETTABLEKS                       R10 R0 K25 ["peek"]
      195 FASTCALL1                        TYPE R10 ; [+3]
      196 MOVE                             R12 R10
      197 GETIMPORT                        R11 K4 [type]
      199 CALL                             R11 1 1
      200 JUMPIFNOTEQKS                    R11 K5 ["number"] ; [+10]
      202 LOADN                            R12 0
      203 FASTCALL2                        MATH_MAX R12 R10 ; [+4]
      205 MOVE                             R13 R10
      206 GETIMPORT                        R11 K22 [math.max]
      208 CALL                             R11 2 1
      209 MOVE                             R9 R11
      210 JUMP                             ; [+6]
      211 JUMPIFNOTEQKS                    R10 K24 ["none"] ; [+3]
      213 LOADN                            R9 0
      214 JUMP                             ; [+2]
      215 GETTABLEKS                       R9 R1 K17 ["gutter"]
      217 GETTABLEKS                       R12 R1 K26 ["margin"]
      219 ADD                              R11 R5 R12
      220 ADD                              R10 R11 R9
      221 GETTABLEKS                       R12 R1 K27 ["contentWidth"]
      223 FASTCALL2                        MATH_MAX R12 R10 ; [+4]
      225 MOVE                             R13 R10
      226 GETIMPORT                        R11 K22 [math.max]
      228 CALL                             R11 2 1
      229 GETUPVAL                         R12 3
      230 GETTABLEKS                       R13 R0 K28 ["children"]
      232 CALL                             R12 1 1
      233 GETUPVAL                         R13 0
      234 GETTABLEKS                       R13 R13 K29 ["useState"]
      236 LOADN                            R14 0
      237 CALL                             R13 1 2
      238 JUMPIFNOT                        R3 ; [+2]
      239 MOVE                             R15 R13
      240 JUMP                             ; [+18]
      241 LENGTH                           R16 R12
      242 LOADN                            R17 0
      243 JUMPIFNOTLT                      R17 R16 ; [+14]
      245 LENGTH                           R17 R12
      246 MUL                              R16 R17 R6
      247 LOADN                            R19 0
      248 LENGTH                           R21 R12
      249 SUBK                             R20 R21 K18 [1]
      250 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      252 GETIMPORT                        R18 K22 [math.max]
      254 CALL                             R18 2 1
      255 MUL                              R17 R18 R8
      256 ADD                              R15 R16 R17
      257 JUMP                             ; [+1]
      258 LOADN                            R15 0
      259 LOADN                            R17 0
      260 SUB                              R18 R15 R5
      261 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      263 GETIMPORT                        R16 K22 [math.max]
      265 CALL                             R16 2 1
      266 GETUPVAL                         R17 0
      267 GETTABLEKS                       R17 R17 K29 ["useState"]
      269 LOADN                            R18 0
      270 CALL                             R17 1 2
      271 GETUPVAL                         R19 0
      272 GETTABLEKS                       R19 R19 K30 ["useRef"]
      274 MOVE                             R20 R17
      275 CALL                             R19 1 1
      276 NEWCLOSURE                       R20 P0
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R19
      279 CAPTURE                          VAL R18
      280 GETUPVAL                         R21 0
      281 GETTABLEKS                       R21 R21 K31 ["useEffect"]
      283 NEWCLOSURE                       R22 P1
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R16
      286 CAPTURE                          VAL R17
      287 CAPTURE                          VAL R18
      288 NEWTABLE                         R23 0 5
      290 GETTABLEKS                       R24 R1 K11 ["breakpoint"]
      292 MOVE                             R25 R16
      293 MOVE                             R26 R5
      294 MOVE                             R27 R6
      295 MOVE                             R28 R17
      296 SETLIST                          R23 R24 5 [1]
      298 CALL                             R21 2 0
      299 NEWTABLE                         R21 2 0
      301 GETUPVAL                         R22 4
      302 LOADK                            R23 K32 ["UIListLayout"]
      303 NEWTABLE                         R24 4 0
      305 GETIMPORT                        R25 K36 [Enum.FillDirection.Horizontal]
      307 SETTABLEKS                       R25 R24 K34 ["FillDirection"]
      309 GETIMPORT                        R25 K39 [Enum.SortOrder.LayoutOrder]
      311 SETTABLEKS                       R25 R24 K37 ["SortOrder"]
      313 GETIMPORT                        R25 K42 [UDim.new]
      315 LOADN                            R26 0
      316 MOVE                             R27 R8
      317 CALL                             R25 2 1
      318 SETTABLEKS                       R25 R24 K43 ["Padding"]
      320 GETUPVAL                         R25 0
      321 GETTABLEKS                       R25 R25 K44 ["Change"]
      323 GETTABLEKS                       R25 R25 K45 ["AbsoluteContentSize"]
      325 JUMPIFNOT                        R3 ; [+4]
      326 NEWCLOSURE                       R26 P2
      327 CAPTURE                          VAL R13
      328 CAPTURE                          VAL R14
      329 JUMP                             ; [+1]
      330 LOADNIL                          R26
      331 SETTABLE                         R26 R24 R25
      332 CALL                             R22 2 1
      333 SETTABLEKS                       R22 R21 K46 ["Layout"]
      335 GETUPVAL                         R22 4
      336 LOADK                            R23 K47 ["UIPadding"]
      337 DUPTABLE                         R24 K50 [{"PaddingLeft", "PaddingRight"}]
      338 GETIMPORT                        R25 K42 [UDim.new]
      340 LOADN                            R26 0
      341 GETTABLEKS                       R27 R1 K26 ["margin"]
      343 CALL                             R25 2 1
      344 SETTABLEKS                       R25 R24 K48 ["PaddingLeft"]
      346 GETIMPORT                        R25 K42 [UDim.new]
      348 LOADN                            R26 0
      349 GETTABLEKS                       R27 R1 K26 ["margin"]
      351 CALL                             R25 2 1
      352 SETTABLEKS                       R25 R24 K49 ["PaddingRight"]
      354 CALL                             R22 2 1
      355 SETTABLEKS                       R22 R21 K43 ["Padding"]
      357 MOVE                             R22 R12
      358 LOADNIL                          R23
      359 LOADNIL                          R24
      360 FORGPREP                         R22
      361 GETTABLEKS                       R27 R26 K51 ["key"]
      363 GETUPVAL                         R28 4
      364 GETUPVAL                         R29 5
      365 GETTABLEKS                       R29 R29 K52 ["View"]
      367 DUPTABLE                         R30 K57 [{["Name"] = "ItemSlot", ["LayoutOrder"], ["AutomaticSize"], ["Size"]}]
      368 SETTABLEKS                       R25 R30 K38 ["LayoutOrder"]
      370 JUMPIFNOT                        R3 ; [+3]
      371 GETIMPORT                        R31 K59 [Enum.AutomaticSize.X]
      373 JUMP                             ; [+1]
      374 LOADNIL                          R31
      375 SETTABLEKS                       R31 R30 K55 ["AutomaticSize"]
      377 JUMPIFNOT                        R3 ; [+8]
      378 GETIMPORT                        R31 K61 [UDim2.new]
      380 LOADN                            R32 0
      381 LOADN                            R33 0
      382 LOADN                            R34 1
      383 LOADN                            R35 0
      384 CALL                             R31 4 1
      385 JUMP                             ; [+7]
      386 GETIMPORT                        R31 K61 [UDim2.new]
      388 LOADN                            R32 0
      389 MOVE                             R33 R6
      390 LOADN                            R34 1
      391 LOADN                            R35 0
      392 CALL                             R31 4 1
      393 SETTABLEKS                       R31 R30 K56 ["Size"]
      395 DUPTABLE                         R31 K63 [{"Content"}]
      396 GETTABLEKS                       R32 R26 K64 ["child"]
      398 SETTABLEKS                       R32 R31 K62 ["Content"]
      400 CALL                             R28 3 1
      401 SETTABLE                         R28 R21 R27
      402 FORGLOOP                         R22 2 ; [-42]
      404 GETUPVAL                         R22 4
      405 GETUPVAL                         R23 5
      406 GETTABLEKS                       R23 R23 K52 ["View"]
      408 DUPTABLE                         R24 K66 [{"Name", "LayoutOrder", "tag", "Size"}]
      409 GETTABLEKS                       R26 R0 K53 ["Name"]
      411 ORK                              R25 R26 K67 ["AppFrameworkGridCarousel"]
      412 SETTABLEKS                       R25 R24 K53 ["Name"]
      414 GETTABLEKS                       R25 R0 K38 ["LayoutOrder"]
      416 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      418 GETTABLEKS                       R26 R0 K65 ["tag"]
      420 ORK                              R25 R26 K68 ["auto-y"]
      421 SETTABLEKS                       R25 R24 K65 ["tag"]
      423 GETIMPORT                        R25 K61 [UDim2.new]
      425 LOADN                            R26 0
      426 MOVE                             R27 R5
      427 LOADN                            R28 0
      428 MOVE                             R29 R7
      429 CALL                             R25 4 1
      430 SETTABLEKS                       R25 R24 K56 ["Size"]
      432 DUPTABLE                         R25 K70 [{"Viewport"}]
      433 GETUPVAL                         R26 4
      434 LOADK                            R27 K71 ["Frame"]
      435 DUPTABLE                         R28 K78 [{["Name"] = "Viewport", ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = False}]
      436 GETIMPORT                        R29 K80 [UDim2.fromOffset]
      438 GETTABLEKS                       R31 R1 K26 ["margin"]
      440 MINUS                            R30 R31
      441 LOADN                            R31 0
      442 CALL                             R29 2 1
      443 SETTABLEKS                       R29 R28 K72 ["Position"]
      445 GETIMPORT                        R29 K61 [UDim2.new]
      447 LOADN                            R30 0
      448 MOVE                             R31 R11
      449 LOADN                            R32 0
      450 MOVE                             R33 R7
      451 CALL                             R29 4 1
      452 SETTABLEKS                       R29 R28 K56 ["Size"]
      454 DUPTABLE                         R29 K83 [{"Track", "ScrollDriver"}]
      455 GETUPVAL                         R30 4
      456 LOADK                            R31 K71 ["Frame"]
      457 DUPTABLE                         R32 K86 [{["Name"] = "Track", ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      458 GETIMPORT                        R33 K80 [UDim2.fromOffset]
      460 MINUS                            R34 R17
      461 LOADN                            R35 0
      462 CALL                             R33 2 1
      463 SETTABLEKS                       R33 R32 K72 ["Position"]
      465 GETIMPORT                        R33 K61 [UDim2.new]
      467 LOADN                            R34 0
      468 GETTABLEKS                       R37 R1 K26 ["margin"]
      470 MULK                             R36 R37 K85 [2]
      471 ADD                              R35 R15 R36
      472 LOADN                            R36 1
      473 LOADN                            R37 0
      474 CALL                             R33 4 1
      475 SETTABLEKS                       R33 R32 K56 ["Size"]
      477 MOVE                             R33 R21
      478 CALL                             R30 3 1
      479 SETTABLEKS                       R30 R29 K81 ["Track"]
      481 GETUPVAL                         R30 4
      482 LOADK                            R31 K87 ["ScrollingFrame"]
      483 NEWTABLE                         R32 16 0
      485 LOADK                            R33 K82 ["ScrollDriver"]
      486 SETTABLEKS                       R33 R32 K53 ["Name"]
      488 GETIMPORT                        R33 K61 [UDim2.new]
      490 LOADN                            R34 0
      491 MOVE                             R35 R10
      492 LOADN                            R36 0
      493 MOVE                             R37 R7
      494 CALL                             R33 4 1
      495 SETTABLEKS                       R33 R32 K56 ["Size"]
      497 GETIMPORT                        R33 K80 [UDim2.fromOffset]
      499 ADD                              R34 R10 R16
      500 LOADN                            R35 0
      501 CALL                             R33 2 1
      502 SETTABLEKS                       R33 R32 K88 ["CanvasSize"]
      504 GETIMPORT                        R33 K90 [Vector2.new]
      506 MOVE                             R34 R17
      507 LOADN                            R35 0
      508 CALL                             R33 2 1
      509 SETTABLEKS                       R33 R32 K91 ["CanvasPosition"]
      511 GETIMPORT                        R33 K93 [Enum.AutomaticSize.None]
      513 SETTABLEKS                       R33 R32 K94 ["AutomaticCanvasSize"]
      515 GETIMPORT                        R33 K96 [Enum.ScrollingDirection.X]
      517 SETTABLEKS                       R33 R32 K95 ["ScrollingDirection"]
      519 LOADN                            R34 0
      520 JUMPIFLT                         R34 R16 ; [+2]
      522 LOADB                            R33 0 +1
      523 LOADB                            R33 1
      524 SETTABLEKS                       R33 R32 K97 ["ScrollingEnabled"]
      526 LOADN                            R33 0
      527 SETTABLEKS                       R33 R32 K98 ["ScrollBarThickness"]
      529 LOADN                            R33 1
      530 SETTABLEKS                       R33 R32 K73 ["BackgroundTransparency"]
      532 LOADN                            R33 0
      533 SETTABLEKS                       R33 R32 K74 ["BorderSizePixel"]
      535 LOADB                            R33 1
      536 SETTABLEKS                       R33 R32 K76 ["ClipsDescendants"]
      538 LOADN                            R34 0
      539 JUMPIFLT                         R34 R16 ; [+2]
      541 LOADB                            R33 0 +1
      542 LOADB                            R33 1
      543 SETTABLEKS                       R33 R32 K99 ["Active"]
      545 LOADN                            R33 1
      546 SETTABLEKS                       R33 R32 K84 ["ZIndex"]
      548 GETUPVAL                         R33 0
      549 GETTABLEKS                       R33 R33 K44 ["Change"]
      551 GETTABLEKS                       R33 R33 K91 ["CanvasPosition"]
      553 NEWCLOSURE                       R34 P3
      554 CAPTURE                          VAL R16
      555 CAPTURE                          VAL R19
      556 CAPTURE                          VAL R18
      557 SETTABLE                         R34 R32 R33
      558 CALL                             R30 2 1
      559 SETTABLEKS                       R30 R29 K82 ["ScrollDriver"]
      561 CALL                             R26 3 1
      562 SETTABLEKS                       R26 R25 K69 ["Viewport"]
      564 CALL                             R22 3 -1
      565 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Grid must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETIMPORT                        R5 K1 [script]
       41 GETTABLEKS                       R5 R5 K12 ["Parent"]
       43 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R1 K15 ["createElement"]
       48 NEWTABLE                         R6 4 0
       50 DUPTABLE                         R7 K28 [{["XSmall"] = "xs", ["Small"] = "sm", ["Medium"] = "md", ["Large"] = "lg", ["XLarge"] = "xl", ["XXLarge"] = "xxl"}]
       51 DUPCLOSURE                       R8 K29 [PROTO_0]
       52 CAPTURE                          VAL R7
       53 DUPCLOSURE                       R9 K30 [PROTO_1]
       54 DUPCLOSURE                       R10 K31 [PROTO_2]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R10 R6 K32 ["Root"]
       61 DUPCLOSURE                       R10 K33 [PROTO_3]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R10 R6 K34 ["Cell"]
       69 DUPCLOSURE                       R10 K35 [PROTO_5]
       70 DUPCLOSURE                       R11 K36 [PROTO_10]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R11 R6 K37 ["Carousel"]
       79 RETURN                           R6 1
