PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 JUMPIFNOT                        R4 ; [+16]
        6 NEWTABLE                         R3 4 0
        8 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
       10 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R0 K2 ["Size"]
       14 SETTABLEKS                       R4 R3 K2 ["Size"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["Tag"]
       19 LOADK                            R5 K4 ["Buttons X-Row X-FitY"]
       20 SETTABLE                         R5 R3 R4
       21 JUMP                             ; [+27]
       22 DUPTABLE                         R3 K8 [{"AnchorPoint", "Position", "Size", "LayoutOrder", "Layout"}]
       23 GETIMPORT                        R4 K11 [Vector2.new]
       25 LOADN                            R5 1
       26 LOADN                            R6 0
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K5 ["AnchorPoint"]
       30 GETIMPORT                        R4 K14 [UDim2.fromScale]
       32 LOADN                            R5 1
       33 LOADN                            R6 0
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K6 ["Position"]
       37 GETTABLEKS                       R4 R0 K2 ["Size"]
       39 SETTABLEKS                       R4 R3 K2 ["Size"]
       41 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
       43 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       45 GETIMPORT                        R4 K18 [Enum.FillDirection.Horizontal]
       47 SETTABLEKS                       R4 R3 K7 ["Layout"]
       49 DUPTABLE                         R4 K23 [{"ClearButton", "Separator", "SearchButton", "FilterButton"}]
       50 GETTABLEKS                       R6 R0 K24 ["ShowClearButton"]
       52 JUMPIFNOT                        R6 ; [+69]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K0 ["createElement"]
       56 GETUPVAL                         R7 2
       57 JUMPIFNOT                        R7 ; [+2]
       58 GETUPVAL                         R6 4
       59 JUMP                             ; [+1]
       60 GETUPVAL                         R6 5
       61 GETUPVAL                         R8 2
       62 JUMPIFNOT                        R8 ; [+29]
       63 NEWTABLE                         R7 4 0
       65 NEWTABLE                         R8 1 0
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K3 ["Tag"]
       70 LOADK                            R10 K25 ["Primary Icon16"]
       71 SETTABLE                         R10 R8 R9
       72 SETTABLEKS                       R8 R7 K26 ["LeftIcon"]
       74 GETTABLEKS                       R8 R0 K27 ["OnClear"]
       76 SETTABLEKS                       R8 R7 K28 ["OnClick"]
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K3 ["Tag"]
       81 GETUPVAL                         R9 6
       82 LOADK                            R10 K29 ["ClearButton Compact IconOnly"]
       83 GETTABLEKS                       R12 R0 K30 ["Disabled"]
       85 JUMPIFNOT                        R12 ; [+2]
       86 LOADK                            R11 K30 ["Disabled"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R11
       89 CALL                             R9 2 1
       90 SETTABLE                         R9 R7 R8
       91 JUMP                             ; [+28]
       92 DUPTABLE                         R7 K33 [{"Size", "LayoutOrder", "OnClick", "Style", "StyleModifier"}]
       93 GETTABLEKS                       R8 R0 K34 ["ButtonSize"]
       95 SETTABLEKS                       R8 R7 K2 ["Size"]
       97 LOADN                            R8 1
       98 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      100 GETTABLEKS                       R8 R0 K27 ["OnClear"]
      102 SETTABLEKS                       R8 R7 K28 ["OnClick"]
      104 GETTABLEKS                       R8 R0 K31 ["Style"]
      106 GETTABLEKS                       R8 R8 K35 ["Clear"]
      108 SETTABLEKS                       R8 R7 K31 ["Style"]
      110 GETTABLEKS                       R9 R0 K30 ["Disabled"]
      112 JUMPIFNOT                        R9 ; [+4]
      113 GETUPVAL                         R8 7
      114 GETTABLEKS                       R8 R8 K30 ["Disabled"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R8
      118 SETTABLEKS                       R8 R7 K32 ["StyleModifier"]
      120 CALL                             R5 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R5
      123 SETTABLEKS                       R5 R4 K19 ["ClearButton"]
      125 GETTABLEKS                       R5 R0 K36 ["ShowSearchButton"]
      127 JUMPIFNOT                        R5 ; [+13]
      128 GETUPVAL                         R5 0
      129 GETTABLEKS                       R5 R5 K0 ["createElement"]
      131 GETUPVAL                         R6 8
      132 DUPTABLE                         R7 K38 [{"DominantAxis", "LayoutOrder"}]
      133 GETIMPORT                        R8 K40 [Enum.DominantAxis.Height]
      135 SETTABLEKS                       R8 R7 K37 ["DominantAxis"]
      137 LOADN                            R8 2
      138 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      140 CALL                             R5 2 1
      141 SETTABLEKS                       R5 R4 K20 ["Separator"]
      143 GETTABLEKS                       R5 R0 K36 ["ShowSearchButton"]
      145 JUMPIFNOT                        R5 ; [+71]
      146 GETUPVAL                         R5 0
      147 GETTABLEKS                       R5 R5 K0 ["createElement"]
      149 GETUPVAL                         R7 2
      150 JUMPIFNOT                        R7 ; [+2]
      151 GETUPVAL                         R6 4
      152 JUMP                             ; [+1]
      153 GETUPVAL                         R6 5
      154 GETUPVAL                         R8 2
      155 JUMPIFNOT                        R8 ; [+32]
      156 NEWTABLE                         R7 4 0
      158 LOADN                            R8 3
      159 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      161 NEWTABLE                         R8 1 0
      163 GETUPVAL                         R9 3
      164 GETTABLEKS                       R9 R9 K3 ["Tag"]
      166 LOADK                            R10 K25 ["Primary Icon16"]
      167 SETTABLE                         R10 R8 R9
      168 SETTABLEKS                       R8 R7 K26 ["LeftIcon"]
      170 GETTABLEKS                       R8 R0 K41 ["OnSearch"]
      172 SETTABLEKS                       R8 R7 K28 ["OnClick"]
      174 GETUPVAL                         R8 3
      175 GETTABLEKS                       R8 R8 K3 ["Tag"]
      177 GETUPVAL                         R9 6
      178 LOADK                            R10 K42 ["SearchButton Compact IconOnly"]
      179 GETTABLEKS                       R12 R0 K30 ["Disabled"]
      181 JUMPIFNOT                        R12 ; [+2]
      182 LOADK                            R11 K30 ["Disabled"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R11
      185 CALL                             R9 2 1
      186 SETTABLE                         R9 R7 R8
      187 JUMP                             ; [+28]
      188 DUPTABLE                         R7 K33 [{"Size", "LayoutOrder", "OnClick", "Style", "StyleModifier"}]
      189 GETTABLEKS                       R8 R0 K34 ["ButtonSize"]
      191 SETTABLEKS                       R8 R7 K2 ["Size"]
      193 LOADN                            R8 3
      194 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      196 GETTABLEKS                       R8 R0 K41 ["OnSearch"]
      198 SETTABLEKS                       R8 R7 K28 ["OnClick"]
      200 GETTABLEKS                       R8 R0 K31 ["Style"]
      202 GETTABLEKS                       R8 R8 K43 ["Search"]
      204 SETTABLEKS                       R8 R7 K31 ["Style"]
      206 GETTABLEKS                       R9 R0 K30 ["Disabled"]
      208 JUMPIFNOT                        R9 ; [+4]
      209 GETUPVAL                         R8 7
      210 GETTABLEKS                       R8 R8 K30 ["Disabled"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R8
      214 SETTABLEKS                       R8 R7 K32 ["StyleModifier"]
      216 CALL                             R5 2 1
      217 SETTABLEKS                       R5 R4 K21 ["SearchButton"]
      219 GETTABLEKS                       R6 R0 K44 ["ShowFilterButton"]
      221 JUMPIFNOT                        R6 ; [+86]
      222 GETUPVAL                         R5 0
      223 GETTABLEKS                       R5 R5 K0 ["createElement"]
      225 GETUPVAL                         R7 2
      226 JUMPIFNOT                        R7 ; [+2]
      227 GETUPVAL                         R6 4
      228 JUMP                             ; [+1]
      229 GETUPVAL                         R6 5
      230 GETUPVAL                         R8 2
      231 JUMPIFNOT                        R8 ; [+38]
      232 NEWTABLE                         R7 4 0
      234 LOADN                            R8 4
      235 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      237 NEWTABLE                         R8 1 0
      239 GETUPVAL                         R9 3
      240 GETTABLEKS                       R9 R9 K3 ["Tag"]
      242 LOADK                            R10 K25 ["Primary Icon16"]
      243 SETTABLE                         R10 R8 R9
      244 SETTABLEKS                       R8 R7 K26 ["LeftIcon"]
      246 GETTABLEKS                       R8 R0 K45 ["OnSearchOptionsToggled"]
      248 SETTABLEKS                       R8 R7 K28 ["OnClick"]
      250 GETUPVAL                         R8 3
      251 GETTABLEKS                       R8 R8 K3 ["Tag"]
      253 GETUPVAL                         R9 6
      254 LOADK                            R10 K46 ["FilterButton Compact IconOnly"]
      255 GETTABLEKS                       R12 R0 K30 ["Disabled"]
      257 JUMPIFNOT                        R12 ; [+2]
      258 LOADK                            R11 K30 ["Disabled"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R11
      261 GETTABLEKS                       R13 R0 K47 ["SearchIsFiltered"]
      263 JUMPIFNOT                        R13 ; [+2]
      264 LOADK                            R12 K48 ["Filtered"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R12
      267 CALL                             R9 3 1
      268 SETTABLE                         R9 R7 R8
      269 JUMP                             ; [+36]
      270 DUPTABLE                         R7 K33 [{"Size", "LayoutOrder", "OnClick", "Style", "StyleModifier"}]
      271 GETTABLEKS                       R8 R0 K34 ["ButtonSize"]
      273 SETTABLEKS                       R8 R7 K2 ["Size"]
      275 LOADN                            R8 4
      276 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
      278 GETTABLEKS                       R8 R0 K45 ["OnSearchOptionsToggled"]
      280 SETTABLEKS                       R8 R7 K28 ["OnClick"]
      282 GETTABLEKS                       R9 R0 K47 ["SearchIsFiltered"]
      284 JUMPIFNOT                        R9 ; [+5]
      285 GETTABLEKS                       R8 R0 K31 ["Style"]
      287 GETTABLEKS                       R8 R8 K49 ["FilterHighlighted"]
      289 JUMP                             ; [+4]
      290 GETTABLEKS                       R8 R0 K31 ["Style"]
      292 GETTABLEKS                       R8 R8 K50 ["Filter"]
      294 SETTABLEKS                       R8 R7 K31 ["Style"]
      296 GETTABLEKS                       R9 R0 K30 ["Disabled"]
      298 JUMPIFNOT                        R9 ; [+4]
      299 GETUPVAL                         R8 7
      300 GETTABLEKS                       R8 R8 K30 ["Disabled"]
      302 JUMP                             ; [+1]
      303 LOADNIL                          R8
      304 SETTABLEKS                       R8 R7 K32 ["StyleModifier"]
      306 CALL                             R5 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R5
      309 SETTABLEKS                       R5 R4 K22 ["FilterButton"]
      311 CALL                             R1 3 -1
      312 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["DEPRECATED_Button"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["IconButton"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K2 ["UI"]
       45 GETTABLEKS                       R6 R6 K10 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["Pane"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K2 ["UI"]
       54 GETTABLEKS                       R7 R7 K10 ["Components"]
       56 GETTABLEKS                       R7 R7 K14 ["Separator"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R8 R0 K4 ["Parent"]
       61 LOADK                            R10 K15 ["React"]
       62 NAMECALL                         R8 R8 K16 ["FindFirstChild"]
       64 CALL                             R8 2 1
       65 JUMPIFNOT                        R8 ; [+8]
       66 GETIMPORT                        R7 K6 [require]
       68 GETTABLEKS                       R8 R0 K4 ["Parent"]
       70 GETTABLEKS                       R8 R8 K15 ["React"]
       72 CALL                             R7 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R7
       75 GETIMPORT                        R8 K6 [require]
       77 GETTABLEKS                       R9 R0 K17 ["Styling"]
       79 GETTABLEKS                       R9 R9 K18 ["supportsStyleSheets"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K6 [require]
       84 GETTABLEKS                       R10 R0 K17 ["Styling"]
       86 GETTABLEKS                       R10 R10 K19 ["joinTags"]
       88 CALL                             R9 1 1
       89 DUPCLOSURE                       R10 K20 [PROTO_0]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 RETURN                           R10 1
