PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 JUMPIFEQ                         R1 R0 ; [+4]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["wrap"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Plugin"]
        9 NAMECALL                         R2 R2 K3 ["GetUri"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 DUPTABLE                         R2 K8 [{["Category"] = "Widgets", ["ItemId"] = "SystemMenu"}]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["barWidth"]
        2 GETTABLEKS                       R2 R0 K1 ["menuWidth"]
        4 GETTABLEKS                       R3 R0 K2 ["titleWidth"]
        6 GETTABLEKS                       R4 R0 K3 ["rightPadding"]
        8 GETTABLEKS                       R4 R4 K4 ["X"]
       10 GETTABLEKS                       R4 R4 K5 ["Offset"]
       12 FASTCALL2                        MATH_MAX R2 R4 ; [+5]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R4
       16 GETIMPORT                        R5 K8 [math.max]
       18 CALL                             R5 2 1
       19 SUB                              R8 R1 R2
       20 SUB                              R7 R8 R3
       21 FASTCALL3                        MATH_CLAMP R7 R4 R5
       23 MOVE                             R8 R4
       24 MOVE                             R9 R5
       25 GETIMPORT                        R6 K10 [math.clamp]
       27 CALL                             R6 3 1
       28 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       30 MOVE                             R8 R6
       31 LOADN                            R9 0
       32 CALL                             R7 2 -1
       33 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K1 ["X"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R5 R0 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R5 R5 K2 ["X"]
        9 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R6 K2 ["X"]
       13 ADD                              R4 R5 R6
       14 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       16 GETTABLEKS                       R5 R5 K2 ["X"]
       18 SUB                              R3 R4 R5
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K0 ["Plugin"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K1 ["useState"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 3
       19 CALL                             R7 0 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R6
       27 NEWTABLE                         R10 0 1
       29 MOVE                             R11 R3
       30 SETLIST                          R10 R11 1 [1]
       32 CALL                             R8 2 1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R11 0 2
       42 MOVE                             R12 R5
       43 MOVE                             R13 R3
       44 SETLIST                          R11 R12 2 [1]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K2 ["useCallback"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R12 0 0
       55 CALL                             R10 2 1
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K3 ["useMemo"]
       59 NEWCLOSURE                       R12 P3
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R13 0 1
       64 GETTABLEKS                       R14 R0 K0 ["Plugin"]
       66 SETLIST                          R13 R14 1 [1]
       68 CALL                             R11 2 1
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R13 R0 K0 ["Plugin"]
       72 CALL                             R12 1 4
       73 GETUPVAL                         R16 2
       74 GETTABLEKS                       R16 R16 K4 ["useRef"]
       76 LOADNIL                          R17
       77 CALL                             R16 1 1
       78 GETUPVAL                         R17 6
       79 MOVE                             R18 R16
       80 GETTABLEKS                       R19 R0 K5 ["OnUncoveredRectsChange"]
       82 CALL                             R17 2 0
       83 GETUPVAL                         R17 2
       84 GETTABLEKS                       R17 R17 K6 ["useBinding"]
       86 LOADN                            R18 0
       87 CALL                             R17 1 2
       88 GETUPVAL                         R19 2
       89 GETTABLEKS                       R19 R19 K6 ["useBinding"]
       91 LOADN                            R20 0
       92 CALL                             R19 1 2
       93 GETUPVAL                         R21 2
       94 GETTABLEKS                       R21 R21 K6 ["useBinding"]
       96 LOADN                            R22 0
       97 CALL                             R21 1 2
       98 GETUPVAL                         R23 2
       99 GETTABLEKS                       R23 R23 K7 ["joinBindings"]
      101 DUPTABLE                         R24 K12 [{"barWidth", "menuWidth", "titleWidth", "rightPadding"}]
      102 SETTABLEKS                       R17 R24 K8 ["barWidth"]
      104 SETTABLEKS                       R19 R24 K9 ["menuWidth"]
      106 SETTABLEKS                       R21 R24 K10 ["titleWidth"]
      108 SETTABLEKS                       R13 R24 K11 ["rightPadding"]
      110 CALL                             R23 1 1
      111 DUPCLOSURE                       R25 K13 [PROTO_4]
      112 NAMECALL                         R23 R23 K14 ["map"]
      114 CALL                             R23 2 1
      115 GETUPVAL                         R24 2
      116 GETTABLEKS                       R24 R24 K2 ["useCallback"]
      118 NEWCLOSURE                       R25 P5
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R18
      121 NEWTABLE                         R26 0 2
      123 MOVE                             R27 R15
      124 MOVE                             R28 R18
      125 SETLIST                          R26 R27 2 [1]
      127 CALL                             R24 2 1
      128 GETUPVAL                         R25 2
      129 GETTABLEKS                       R25 R25 K2 ["useCallback"]
      131 NEWCLOSURE                       R26 P6
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R20
      134 NEWTABLE                         R27 0 1
      136 MOVE                             R28 R20
      137 SETLIST                          R27 R28 1 [1]
      139 CALL                             R25 2 1
      140 GETUPVAL                         R26 2
      141 GETTABLEKS                       R26 R26 K2 ["useCallback"]
      143 NEWCLOSURE                       R27 P7
      144 CAPTURE                          VAL R22
      145 NEWTABLE                         R28 0 1
      147 MOVE                             R29 R22
      148 SETLIST                          R28 R29 1 [1]
      150 CALL                             R26 2 1
      151 NEWTABLE                         R27 0 0
      153 MOVE                             R28 R1
      154 LOADNIL                          R29
      155 LOADNIL                          R30
      156 FORGPREP                         R28
      157 GETTABLEKS                       R33 R0 K15 ["IsSystemMenuVisible"]
      159 JUMPIF                           R33 ; [+4]
      160 GETTABLEKS                       R33 R32 K16 ["Id"]
      162 JUMPIFNOTEQKS                    R33 K17 ["AppMenu"] ; [+32]
      164 GETTABLEKS                       R33 R32 K16 ["Id"]
      166 GETUPVAL                         R34 2
      167 GETTABLEKS                       R34 R34 K18 ["createElement"]
      169 GETUPVAL                         R35 7
      170 DUPTABLE                         R36 K26 [{"Definition", "WidgetUri", "LayoutOrder", "IsOpen", "OnToggle", "OnHover", "OnClose"}]
      171 SETTABLEKS                       R32 R36 K19 ["Definition"]
      173 SETTABLEKS                       R11 R36 K20 ["WidgetUri"]
      175 MOVE                             R37 R7
      176 CALL                             R37 0 1
      177 SETTABLEKS                       R37 R36 K21 ["LayoutOrder"]
      179 GETTABLEKS                       R38 R32 K16 ["Id"]
      181 JUMPIFEQ                         R3 R38 ; [+2]
      183 LOADB                            R37 0 +1
      184 LOADB                            R37 1
      185 SETTABLEKS                       R37 R36 K22 ["IsOpen"]
      187 SETTABLEKS                       R8 R36 K23 ["OnToggle"]
      189 SETTABLEKS                       R9 R36 K24 ["OnHover"]
      191 SETTABLEKS                       R10 R36 K25 ["OnClose"]
      193 CALL                             R34 2 1
      194 SETTABLE                         R34 R27 R33
      195 FORGLOOP                         R28 2 ; [-39]
      197 GETUPVAL                         R28 2
      198 GETTABLEKS                       R28 R28 K18 ["createElement"]
      200 GETUPVAL                         R29 8
      201 DUPTABLE                         R30 K31 [{["tag"] = "size-full bg-surface-0", ["ref"], ["onAbsoluteSizeChanged"]}]
      202 SETTABLEKS                       R16 R30 K29 ["ref"]
      204 SETTABLEKS                       R24 R30 K30 ["onAbsoluteSizeChanged"]
      206 DUPTABLE                         R31 K34 [{"MenuBar", "TitleMeasure"}]
      207 GETUPVAL                         R32 2
      208 GETTABLEKS                       R32 R32 K18 ["createElement"]
      210 GETUPVAL                         R33 8
      211 DUPTABLE                         R34 K36 [{["tag"] = "row align-y-center size-full"}]
      212 DUPTABLE                         R35 K41 [{"LeftPadding", "Menus", "WindowTitle", "RightPadding"}]
      213 JUMPIFNOTEQKS                    R14 K42 ["left"] ; [+14]
      215 GETUPVAL                         R36 2
      216 GETTABLEKS                       R36 R36 K18 ["createElement"]
      218 GETUPVAL                         R37 8
      219 DUPTABLE                         R38 K44 [{"LayoutOrder", "Size"}]
      220 MOVE                             R39 R7
      221 CALL                             R39 0 1
      222 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      224 SETTABLEKS                       R12 R38 K43 ["Size"]
      226 CALL                             R36 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R36
      229 SETTABLEKS                       R36 R35 K37 ["LeftPadding"]
      231 GETUPVAL                         R36 2
      232 GETTABLEKS                       R36 R36 K18 ["createElement"]
      234 GETUPVAL                         R37 8
      235 DUPTABLE                         R38 K46 [{"tag", "LayoutOrder", "onAbsolutePositionChanged", "onAbsoluteSizeChanged"}]
      236 NEWTABLE                         R39 2 0
      238 LOADB                            R40 1
      239 SETTABLEKS                       R40 R39 K47 ["row align-y-center gap-xsmall auto-xy padding-right-medium"]
      241 GETUPVAL                         R40 9
      242 CALL                             R40 0 1
      243 SETTABLEKS                       R40 R39 K48 ["padding-left-xsmall"]
      245 SETTABLEKS                       R39 R38 K27 ["tag"]
      247 MOVE                             R39 R7
      248 CALL                             R39 0 1
      249 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      251 SETTABLEKS                       R25 R38 K45 ["onAbsolutePositionChanged"]
      253 SETTABLEKS                       R25 R38 K30 ["onAbsoluteSizeChanged"]
      255 MOVE                             R39 R27
      256 CALL                             R36 3 1
      257 SETTABLEKS                       R36 R35 K38 ["Menus"]
      259 GETUPVAL                         R36 2
      260 GETTABLEKS                       R36 R36 K18 ["createElement"]
      262 GETUPVAL                         R37 8
      263 DUPTABLE                         R38 K50 [{["tag"] = "row align-x-center align-y-center grow size-0-full clip", ["LayoutOrder"]}]
      264 MOVE                             R39 R7
      265 CALL                             R39 0 1
      266 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      268 DUPTABLE                         R39 K52 [{"Title"}]
      269 JUMPIFNOT                        R2 ; [+9]
      270 GETUPVAL                         R40 2
      271 GETTABLEKS                       R40 R40 K18 ["createElement"]
      273 GETUPVAL                         R41 10
      274 DUPTABLE                         R42 K55 [{["Text"], ["tag"] = "size-full text-title-small text-no-wrap text-align-x-center text-truncate-end content-emphasis"}]
      275 SETTABLEKS                       R2 R42 K53 ["Text"]
      277 CALL                             R40 2 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R40
      280 SETTABLEKS                       R40 R39 K51 ["Title"]
      282 CALL                             R36 3 1
      283 SETTABLEKS                       R36 R35 K39 ["WindowTitle"]
      285 GETUPVAL                         R36 2
      286 GETTABLEKS                       R36 R36 K18 ["createElement"]
      288 GETUPVAL                         R37 8
      289 DUPTABLE                         R38 K44 [{"LayoutOrder", "Size"}]
      290 MOVE                             R39 R7
      291 CALL                             R39 0 1
      292 SETTABLEKS                       R39 R38 K21 ["LayoutOrder"]
      294 SETTABLEKS                       R23 R38 K43 ["Size"]
      296 CALL                             R36 2 1
      297 SETTABLEKS                       R36 R35 K40 ["RightPadding"]
      299 CALL                             R32 3 1
      300 SETTABLEKS                       R32 R31 K32 ["MenuBar"]
      302 JUMPIFNOT                        R2 ; [+14]
      303 GETUPVAL                         R32 2
      304 GETTABLEKS                       R32 R32 K18 ["createElement"]
      306 GETUPVAL                         R33 10
      307 DUPTABLE                         R34 K58 [{["Text"], ["tag"] = "auto-xy text-title-small text-no-wrap", ["textStyle"], ["onAbsoluteSizeChanged"]}]
      308 SETTABLEKS                       R2 R34 K53 ["Text"]
      310 DUPTABLE                         R35 K61 [{["Transparency"] = 1}]
      311 SETTABLEKS                       R35 R34 K57 ["textStyle"]
      313 SETTABLEKS                       R26 R34 K30 ["onAbsoluteSizeChanged"]
      315 CALL                             R32 2 1
      316 JUMP                             ; [+1]
      317 LOADNIL                          R32
      318 SETTABLEKS                       R32 R31 K33 ["TitleMeasure"]
      320 CALL                             R28 3 -1
      321 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["counter"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Packages"]
       40 GETTABLEKS                       R8 R8 K14 ["StudioFoundation"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R7 K12 ["Util"]
       45 GETTABLEKS                       R8 R8 K15 ["StudioUri"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETIMPORT                        R10 K1 [script]
       51 GETTABLEKS                       R10 R10 K16 ["SystemMenuItem"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["SharedFlags"]
       60 GETTABLEKS                       R11 R11 K19 ["getFFlagRibbonSystemMenuFixes"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       69 GETTABLEKS                       R12 R12 K21 ["useSystemMenu"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K17 ["Src"]
       76 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       78 GETTABLEKS                       R13 R13 K22 ["WindowChrome"]
       80 GETTABLEKS                       R13 R13 K23 ["useSystemButtonRectPadding"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K17 ["Src"]
       87 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       89 GETTABLEKS                       R14 R14 K22 ["WindowChrome"]
       91 GETTABLEKS                       R14 R14 K24 ["useUncoveredRects"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K17 ["Src"]
       98 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      100 GETTABLEKS                       R15 R15 K25 ["useWindowTitle"]
      102 CALL                             R14 1 1
      103 DUPCLOSURE                       R15 K26 [PROTO_8]
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R3
      115 RETURN                           R15 1
