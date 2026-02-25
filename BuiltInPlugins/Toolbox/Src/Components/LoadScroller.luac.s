PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["scrollingFrameRef"]
        6 GETTABLEKS                       R1 R2 K2 ["current"]
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETTABLEKS                       R2 R0 K3 ["Loading"]
       11 JUMPIF                           R2 ; [+10]
       12 GETTABLEKS                       R2 R0 K4 ["Total"]
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETTABLEKS                       R2 R0 K4 ["Total"]
       17 GETTABLEKS                       R4 R0 K5 ["Items"]
       19 LENGTH                           R3 R4
       20 JUMPIFNOTEQ                      R2 R3 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R1 K6 ["CanvasPosition"]
       25 GETTABLEKS                       R2 R3 K7 ["Y"]
       27 GETTABLEKS                       R4 R1 K8 ["AbsoluteWindowSize"]
       29 GETTABLEKS                       R3 R4 K7 ["Y"]
       31 GETTABLEKS                       R6 R1 K9 ["CanvasSize"]
       33 GETTABLEKS                       R5 R6 K7 ["Y"]
       35 GETTABLEKS                       R4 R5 K10 ["Offset"]
       37 ADD                              R5 R2 R3
       38 SUB                              R6 R4 R5
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K11 ["DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE"]
       42 JUMPIFNOTLT                      R6 R7 ; [+9]
       44 GETTABLEKS                       R7 R0 K12 ["FetchNextPage"]
       46 JUMPIFNOT                        R7 ; [+5]
       47 GETTABLEKS                       R7 R0 K12 ["FetchNextPage"]
       49 GETTABLEKS                       R8 R0 K13 ["PageSize"]
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"initialLoading"}]
        1 GETTABLEKS                       R3 R1 K2 ["Loading"]
        3 SETTABLEKS                       R3 R2 K0 ["initialLoading"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K4 ["createRef"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R0 K5 ["scrollingFrameRef"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K6 ["calculateRenderBounds"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R2 R0 K7 ["checkForNextPage"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["checkForNextPage"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["checkForNextPage"]
        4 CALL                             R3 0 0
        5 GETTABLEKS                       R3 R2 K2 ["Loading"]
        7 JUMPIF                           R3 ; [+10]
        8 GETTABLEKS                       R3 R1 K2 ["Loading"]
       10 JUMPIFNOT                        R3 ; [+7]
       11 DUPTABLE                         R5 K4 [{"initialLoading"}]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K3 ["initialLoading"]
       15 NAMECALL                         R3 R0 K5 ["setState"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["initialLoading"]
        6 GETTABLEKS                       R4 R1 K3 ["Items"]
        8 GETTABLEKS                       R5 R1 K4 ["CalculateCanvasHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["Loading"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["Position"]
       16 GETTABLEKS                       R9 R1 K8 ["RenderTopContent"]
       18 GETTABLEKS                       R10 R1 K9 ["RenderContent"]
       20 GETTABLEKS                       R11 R1 K10 ["Size"]
       22 GETTABLEKS                       R12 R1 K11 ["Stylizer"]
       24 GETTABLEKS                       R13 R1 K12 ["Navigation"]
       26 MOVE                             R14 R5
       27 CALL                             R14 0 1
       28 JUMPIFNOT                        R3 ; [+51]
       29 GETUPVAL                         R16 0
       30 GETTABLEKS                       R15 R16 K13 ["createElement"]
       32 LOADK                            R16 K14 ["Frame"]
       33 DUPTABLE                         R17 K17 [{"BackgroundColor3", "BackgroundTransparency", "LayoutOrder", "Size"}]
       34 GETTABLEKS                       R18 R12 K18 ["backgroundColor"]
       36 SETTABLEKS                       R18 R17 K15 ["BackgroundColor3"]
       38 LOADN                            R18 1
       39 SETTABLEKS                       R18 R17 K16 ["BackgroundTransparency"]
       41 LOADN                            R18 1
       42 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       44 GETIMPORT                        R18 K21 [UDim2.new]
       46 LOADN                            R19 1
       47 LOADN                            R20 0
       48 LOADN                            R21 1
       49 LOADN                            R22 0
       50 CALL                             R18 4 1
       51 SETTABLEKS                       R18 R17 K10 ["Size"]
       53 DUPTABLE                         R18 K23 [{"LoadingIndicator"}]
       54 GETUPVAL                         R20 0
       55 GETTABLEKS                       R19 R20 K13 ["createElement"]
       57 GETUPVAL                         R20 1
       58 DUPTABLE                         R21 K25 [{"AnchorPoint", "Position"}]
       59 GETIMPORT                        R22 K27 [Vector2.new]
       61 LOADK                            R23 K28 [0.5]
       62 LOADK                            R24 K28 [0.5]
       63 CALL                             R22 2 1
       64 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
       66 GETIMPORT                        R22 K21 [UDim2.new]
       68 LOADK                            R23 K28 [0.5]
       69 LOADN                            R24 0
       70 LOADK                            R25 K28 [0.5]
       71 LOADN                            R26 0
       72 CALL                             R22 4 1
       73 SETTABLEKS                       R22 R21 K7 ["Position"]
       75 CALL                             R19 2 1
       76 SETTABLEKS                       R19 R18 K22 ["LoadingIndicator"]
       78 CALL                             R15 3 -1
       79 RETURN                           R15 -1
       80 LOADNIL                          R15
       81 JUMPIFNOT                        R9 ; [+3]
       82 MOVE                             R16 R9
       83 CALL                             R16 0 1
       84 MOVE                             R15 R16
       85 LOADNIL                          R16
       86 NAMECALL                         R17 R13 K29 ["getCurrentPath"]
       88 CALL                             R17 1 1
       89 GETUPVAL                         R19 2
       90 GETTABLEKS                       R18 R19 K30 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       92 JUMPIFNOTEQ                      R17 R18 ; [+20]
       94 GETTABLEKS                       R17 R1 K5 ["Loading"]
       96 JUMPIF                           R17 ; [+16]
       97 GETTABLEKS                       R18 R1 K3 ["Items"]
       99 LENGTH                           R17 R18
      100 JUMPIFNOTEQKN                    R17 K31 [0] ; [+12]
      102 GETUPVAL                         R18 0
      103 GETTABLEKS                       R17 R18 K13 ["createElement"]
      105 GETUPVAL                         R18 3
      106 DUPTABLE                         R19 K32 [{"LayoutOrder"}]
      107 LOADN                            R20 2
      108 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      110 CALL                             R17 2 1
      111 MOVE                             R16 R17
      112 JUMP                             ; [+4]
      113 MOVE                             R17 R10
      114 MOVE                             R18 R4
      115 CALL                             R17 1 1
      116 MOVE                             R16 R17
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R17 R18 K13 ["createElement"]
      120 LOADK                            R18 K14 ["Frame"]
      121 NEWTABLE                         R19 8 0
      123 LOADN                            R20 1
      124 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      126 SETTABLEKS                       R11 R19 K10 ["Size"]
      128 SETTABLEKS                       R7 R19 K6 ["LayoutOrder"]
      130 SETTABLEKS                       R8 R19 K7 ["Position"]
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R21 R22 K33 ["Change"]
      135 GETTABLEKS                       R20 R21 K34 ["AbsoluteSize"]
      137 GETTABLEKS                       R21 R0 K35 ["checkForNextPage"]
      139 SETTABLE                         R21 R19 R20
      140 DUPTABLE                         R20 K37 [{"StyledScrollingFrame"}]
      141 GETUPVAL                         R22 0
      142 GETTABLEKS                       R21 R22 K13 ["createElement"]
      144 GETUPVAL                         R22 4
      145 NEWTABLE                         R23 8 0
      147 GETIMPORT                        R24 K21 [UDim2.new]
      149 LOADN                            R25 1
      150 LOADN                            R26 0
      151 LOADN                            R27 0
      152 MOVE                             R28 R14
      153 CALL                             R24 4 1
      154 SETTABLEKS                       R24 R23 K38 ["CanvasSize"]
      156 GETIMPORT                        R24 K21 [UDim2.new]
      158 LOADN                            R25 1
      159 LOADN                            R26 0
      160 LOADN                            R27 1
      161 LOADN                            R28 0
      162 CALL                             R24 4 1
      163 SETTABLEKS                       R24 R23 K10 ["Size"]
      165 GETTABLEKS                       R24 R0 K35 ["checkForNextPage"]
      167 SETTABLEKS                       R24 R23 K39 ["onScroll"]
      169 GETUPVAL                         R25 0
      170 GETTABLEKS                       R24 R25 K40 ["Ref"]
      172 GETTABLEKS                       R25 R0 K41 ["scrollingFrameRef"]
      174 SETTABLE                         R25 R23 R24
      175 GETUPVAL                         R26 0
      176 GETTABLEKS                       R25 R26 K33 ["Change"]
      178 GETTABLEKS                       R24 R25 K34 ["AbsoluteSize"]
      180 GETTABLEKS                       R25 R0 K35 ["checkForNextPage"]
      182 SETTABLE                         R25 R23 R24
      183 DUPTABLE                         R24 K46 [{"UIPadding", "Layout", "TopContent", "Content", "LoadingIndicator"}]
      184 GETUPVAL                         R26 0
      185 GETTABLEKS                       R25 R26 K13 ["createElement"]
      187 LOADK                            R26 K42 ["UIPadding"]
      188 DUPTABLE                         R27 K51 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      189 GETIMPORT                        R28 K53 [UDim.new]
      191 LOADN                            R29 0
      192 GETUPVAL                         R31 2
      193 GETTABLEKS                       R30 R31 K54 ["LOAD_SCROLL_PADDING"]
      195 CALL                             R28 2 1
      196 SETTABLEKS                       R28 R27 K47 ["PaddingLeft"]
      198 GETIMPORT                        R28 K53 [UDim.new]
      200 LOADN                            R29 0
      201 GETUPVAL                         R32 2
      202 GETTABLEKS                       R31 R32 K54 ["LOAD_SCROLL_PADDING"]
      204 GETUPVAL                         R33 2
      205 GETTABLEKS                       R32 R33 K55 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      207 ADD                              R30 R31 R32
      208 CALL                             R28 2 1
      209 SETTABLEKS                       R28 R27 K48 ["PaddingRight"]
      211 GETIMPORT                        R28 K53 [UDim.new]
      213 LOADN                            R29 0
      214 GETUPVAL                         R31 2
      215 GETTABLEKS                       R30 R31 K54 ["LOAD_SCROLL_PADDING"]
      217 CALL                             R28 2 1
      218 SETTABLEKS                       R28 R27 K49 ["PaddingTop"]
      220 GETIMPORT                        R28 K53 [UDim.new]
      222 LOADN                            R29 0
      223 GETUPVAL                         R31 2
      224 GETTABLEKS                       R30 R31 K54 ["LOAD_SCROLL_PADDING"]
      226 CALL                             R28 2 1
      227 SETTABLEKS                       R28 R27 K50 ["PaddingBottom"]
      229 CALL                             R25 2 1
      230 SETTABLEKS                       R25 R24 K42 ["UIPadding"]
      232 GETUPVAL                         R26 0
      233 GETTABLEKS                       R25 R26 K13 ["createElement"]
      235 LOADK                            R26 K56 ["UIListLayout"]
      236 DUPTABLE                         R27 K59 [{"FillDirection", "SortOrder"}]
      237 GETIMPORT                        R28 K62 [Enum.FillDirection.Vertical]
      239 SETTABLEKS                       R28 R27 K57 ["FillDirection"]
      241 GETIMPORT                        R28 K63 [Enum.SortOrder.LayoutOrder]
      243 SETTABLEKS                       R28 R27 K58 ["SortOrder"]
      245 CALL                             R25 2 1
      246 SETTABLEKS                       R25 R24 K43 ["Layout"]
      248 SETTABLEKS                       R15 R24 K44 ["TopContent"]
      250 SETTABLEKS                       R16 R24 K45 ["Content"]
      252 MOVE                             R25 R6
      253 JUMPIFNOT                        R25 ; [+53]
      254 GETUPVAL                         R26 0
      255 GETTABLEKS                       R25 R26 K13 ["createElement"]
      257 GETUPVAL                         R26 5
      258 DUPTABLE                         R27 K65 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment"}]
      259 LOADN                            R28 3
      260 SETTABLEKS                       R28 R27 K6 ["LayoutOrder"]
      262 GETIMPORT                        R28 K67 [UDim2.fromScale]
      264 LOADN                            R29 1
      265 LOADN                            R30 1
      266 CALL                             R28 2 1
      267 SETTABLEKS                       R28 R27 K10 ["Size"]
      269 GETIMPORT                        R28 K62 [Enum.FillDirection.Vertical]
      271 SETTABLEKS                       R28 R27 K43 ["Layout"]
      273 GETIMPORT                        R28 K69 [Enum.HorizontalAlignment.Center]
      275 SETTABLEKS                       R28 R27 K64 ["HorizontalAlignment"]
      277 DUPTABLE                         R28 K71 [{"Wrapper"}]
      278 GETUPVAL                         R30 0
      279 GETTABLEKS                       R29 R30 K13 ["createElement"]
      281 LOADK                            R30 K14 ["Frame"]
      282 DUPTABLE                         R31 K72 [{"Size", "BackgroundTransparency"}]
      283 GETIMPORT                        R32 K21 [UDim2.new]
      285 LOADN                            R33 0
      286 LOADN                            R34 60
      287 LOADN                            R35 1
      288 LOADN                            R36 0
      289 CALL                             R32 4 1
      290 SETTABLEKS                       R32 R31 K10 ["Size"]
      292 LOADN                            R32 1
      293 SETTABLEKS                       R32 R31 K16 ["BackgroundTransparency"]
      295 DUPTABLE                         R32 K23 [{"LoadingIndicator"}]
      296 GETUPVAL                         R34 0
      297 GETTABLEKS                       R33 R34 K13 ["createElement"]
      299 GETUPVAL                         R34 1
      300 CALL                             R33 1 1
      301 SETTABLEKS                       R33 R32 K22 ["LoadingIndicator"]
      303 CALL                             R29 3 1
      304 SETTABLEKS                       R29 R28 K70 ["Wrapper"]
      306 CALL                             R25 3 1
      307 SETTABLEKS                       R25 R24 K22 ["LoadingIndicator"]
      309 CALL                             R21 3 1
      310 SETTABLEKS                       R21 R20 K36 ["StyledScrollingFrame"]
      312 CALL                             R17 3 -1
      313 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Constants"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R9 R0 K9 ["Src"]
       32 GETTABLEKS                       R8 R9 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R8 K13 ["NavigationContext"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R10 R0 K9 ["Src"]
       41 GETTABLEKS                       R9 R10 K14 ["Components"]
       43 GETTABLEKS                       R8 R9 K15 ["StyledScrollingFrame"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R11 R0 K9 ["Src"]
       50 GETTABLEKS                       R10 R11 K14 ["Components"]
       52 GETTABLEKS                       R9 R10 K16 ["NoSceneSuggestions"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R3 K12 ["ContextServices"]
       57 GETTABLEKS                       R10 R9 K17 ["withContext"]
       59 GETTABLEKS                       R12 R3 K18 ["UI"]
       61 GETTABLEKS                       R11 R12 K19 ["LoadingIndicator"]
       63 GETTABLEKS                       R13 R3 K18 ["UI"]
       65 GETTABLEKS                       R12 R13 K20 ["Pane"]
       67 GETTABLEKS                       R13 R2 K21 ["PureComponent"]
       69 LOADK                            R15 K22 ["LoadScroller"]
       70 NAMECALL                         R13 R13 K23 ["extend"]
       72 CALL                             R13 2 1
       73 DUPTABLE                         R14 K25 [{"Size"}]
       74 GETIMPORT                        R15 K28 [UDim2.new]
       76 LOADN                            R16 1
       77 LOADN                            R17 0
       78 LOADN                            R18 1
       79 LOADN                            R19 0
       80 CALL                             R15 4 1
       81 SETTABLEKS                       R15 R14 K24 ["Size"]
       83 SETTABLEKS                       R14 R13 K29 ["defaultProps"]
       85 DUPCLOSURE                       R14 K30 [PROTO_3]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R14 R13 K31 ["init"]
       90 DUPCLOSURE                       R14 K32 [PROTO_4]
       91 SETTABLEKS                       R14 R13 K33 ["didMount"]
       93 DUPCLOSURE                       R14 K34 [PROTO_5]
       94 SETTABLEKS                       R14 R13 K35 ["didUpdate"]
       96 DUPCLOSURE                       R14 K36 [PROTO_6]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R14 R13 K37 ["render"]
      105 MOVE                             R14 R10
      106 DUPTABLE                         R15 K40 [{"Stylizer", "Navigation"}]
      107 GETTABLEKS                       R16 R9 K38 ["Stylizer"]
      109 SETTABLEKS                       R16 R15 K38 ["Stylizer"]
      111 SETTABLEKS                       R6 R15 K39 ["Navigation"]
      113 CALL                             R14 1 1
      114 MOVE                             R15 R13
      115 CALL                             R14 1 1
      116 MOVE                             R13 R14
      117 RETURN                           R13 1
