PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["scrollingFrameRef"]
        6 GETTABLEKS                       R1 R1 K2 ["current"]
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
       23 GETTABLEKS                       R2 R1 K6 ["CanvasPosition"]
       25 GETTABLEKS                       R2 R2 K7 ["Y"]
       27 GETTABLEKS                       R3 R1 K8 ["AbsoluteWindowSize"]
       29 GETTABLEKS                       R3 R3 K7 ["Y"]
       31 GETTABLEKS                       R4 R1 K9 ["CanvasSize"]
       33 GETTABLEKS                       R4 R4 K7 ["Y"]
       35 GETTABLEKS                       R4 R4 K10 ["Offset"]
       37 ADD                              R5 R2 R3
       38 SUB                              R6 R4 R5
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K11 ["DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE"]
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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["createRef"]
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
        7 JUMPIF                           R3 ; [+7]
        8 GETTABLEKS                       R3 R1 K2 ["Loading"]
       10 JUMPIFNOT                        R3 ; [+4]
       11 DUPTABLE                         R5 K5 [{["initialLoading"] = False}]
       12 NAMECALL                         R3 R0 K6 ["setState"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

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
       28 JUMPIFNOT                        R3 ; [+45]
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R15 R15 K13 ["createElement"]
       32 LOADK                            R16 K14 ["Frame"]
       33 DUPTABLE                         R17 K18 [{["BackgroundColor3"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
       34 GETTABLEKS                       R18 R12 K19 ["backgroundColor"]
       36 SETTABLEKS                       R18 R17 K15 ["BackgroundColor3"]
       38 GETIMPORT                        R18 K22 [UDim2.new]
       40 LOADN                            R19 1
       41 LOADN                            R20 0
       42 LOADN                            R21 1
       43 LOADN                            R22 0
       44 CALL                             R18 4 1
       45 SETTABLEKS                       R18 R17 K10 ["Size"]
       47 DUPTABLE                         R18 K24 [{"LoadingIndicator"}]
       48 GETUPVAL                         R19 0
       49 GETTABLEKS                       R19 R19 K13 ["createElement"]
       51 GETUPVAL                         R20 1
       52 DUPTABLE                         R21 K26 [{"AnchorPoint", "Position"}]
       53 GETIMPORT                        R22 K28 [Vector2.new]
       55 LOADK                            R23 K29 [0.5]
       56 LOADK                            R24 K29 [0.5]
       57 CALL                             R22 2 1
       58 SETTABLEKS                       R22 R21 K25 ["AnchorPoint"]
       60 GETIMPORT                        R22 K22 [UDim2.new]
       62 LOADK                            R23 K29 [0.5]
       63 LOADN                            R24 0
       64 LOADK                            R25 K29 [0.5]
       65 LOADN                            R26 0
       66 CALL                             R22 4 1
       67 SETTABLEKS                       R22 R21 K7 ["Position"]
       69 CALL                             R19 2 1
       70 SETTABLEKS                       R19 R18 K23 ["LoadingIndicator"]
       72 CALL                             R15 3 -1
       73 RETURN                           R15 -1
       74 LOADNIL                          R15
       75 JUMPIFNOT                        R9 ; [+3]
       76 MOVE                             R16 R9
       77 CALL                             R16 0 1
       78 MOVE                             R15 R16
       79 LOADNIL                          R16
       80 NAMECALL                         R17 R13 K30 ["getCurrentPath"]
       82 CALL                             R17 1 1
       83 GETUPVAL                         R18 2
       84 GETTABLEKS                       R18 R18 K31 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       86 JUMPIFNOTEQ                      R17 R18 ; [+17]
       88 GETTABLEKS                       R17 R1 K5 ["Loading"]
       90 JUMPIF                           R17 ; [+13]
       91 GETTABLEKS                       R18 R1 K3 ["Items"]
       93 LENGTH                           R17 R18
       94 JUMPIFNOTEQKN                    R17 K32 [0] ; [+9]
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R17 R17 K13 ["createElement"]
       99 GETUPVAL                         R18 3
      100 DUPTABLE                         R19 K34 [{["LayoutOrder"] = 2}]
      101 CALL                             R17 2 1
      102 MOVE                             R16 R17
      103 JUMP                             ; [+4]
      104 MOVE                             R17 R10
      105 MOVE                             R18 R4
      106 CALL                             R17 1 1
      107 MOVE                             R16 R17
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R17 R17 K13 ["createElement"]
      111 LOADK                            R18 K14 ["Frame"]
      112 NEWTABLE                         R19 8 0
      114 LOADN                            R20 1
      115 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      117 SETTABLEKS                       R11 R19 K10 ["Size"]
      119 SETTABLEKS                       R7 R19 K6 ["LayoutOrder"]
      121 SETTABLEKS                       R8 R19 K7 ["Position"]
      123 GETUPVAL                         R20 0
      124 GETTABLEKS                       R20 R20 K35 ["Change"]
      126 GETTABLEKS                       R20 R20 K36 ["AbsoluteSize"]
      128 GETTABLEKS                       R21 R0 K37 ["checkForNextPage"]
      130 SETTABLE                         R21 R19 R20
      131 DUPTABLE                         R20 K39 [{"StyledScrollingFrame"}]
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R21 R21 K13 ["createElement"]
      135 GETUPVAL                         R22 4
      136 NEWTABLE                         R23 8 0
      138 GETIMPORT                        R24 K22 [UDim2.new]
      140 LOADN                            R25 1
      141 LOADN                            R26 0
      142 LOADN                            R27 0
      143 MOVE                             R28 R14
      144 CALL                             R24 4 1
      145 SETTABLEKS                       R24 R23 K40 ["CanvasSize"]
      147 GETIMPORT                        R24 K22 [UDim2.new]
      149 LOADN                            R25 1
      150 LOADN                            R26 0
      151 LOADN                            R27 1
      152 LOADN                            R28 0
      153 CALL                             R24 4 1
      154 SETTABLEKS                       R24 R23 K10 ["Size"]
      156 GETTABLEKS                       R24 R0 K37 ["checkForNextPage"]
      158 SETTABLEKS                       R24 R23 K41 ["onScroll"]
      160 GETUPVAL                         R24 0
      161 GETTABLEKS                       R24 R24 K42 ["Ref"]
      163 GETTABLEKS                       R25 R0 K43 ["scrollingFrameRef"]
      165 SETTABLE                         R25 R23 R24
      166 GETUPVAL                         R24 0
      167 GETTABLEKS                       R24 R24 K35 ["Change"]
      169 GETTABLEKS                       R24 R24 K36 ["AbsoluteSize"]
      171 GETTABLEKS                       R25 R0 K37 ["checkForNextPage"]
      173 SETTABLE                         R25 R23 R24
      174 DUPTABLE                         R24 K48 [{"UIPadding", "Layout", "TopContent", "Content", "LoadingIndicator"}]
      175 GETUPVAL                         R25 0
      176 GETTABLEKS                       R25 R25 K13 ["createElement"]
      178 LOADK                            R26 K44 ["UIPadding"]
      179 DUPTABLE                         R27 K53 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      180 GETIMPORT                        R28 K55 [UDim.new]
      182 LOADN                            R29 0
      183 GETUPVAL                         R30 2
      184 GETTABLEKS                       R30 R30 K56 ["LOAD_SCROLL_PADDING"]
      186 CALL                             R28 2 1
      187 SETTABLEKS                       R28 R27 K49 ["PaddingLeft"]
      189 GETIMPORT                        R28 K55 [UDim.new]
      191 LOADN                            R29 0
      192 GETUPVAL                         R31 2
      193 GETTABLEKS                       R31 R31 K56 ["LOAD_SCROLL_PADDING"]
      195 GETUPVAL                         R32 2
      196 GETTABLEKS                       R32 R32 K57 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      198 ADD                              R30 R31 R32
      199 CALL                             R28 2 1
      200 SETTABLEKS                       R28 R27 K50 ["PaddingRight"]
      202 GETIMPORT                        R28 K55 [UDim.new]
      204 LOADN                            R29 0
      205 GETUPVAL                         R30 2
      206 GETTABLEKS                       R30 R30 K56 ["LOAD_SCROLL_PADDING"]
      208 CALL                             R28 2 1
      209 SETTABLEKS                       R28 R27 K51 ["PaddingTop"]
      211 GETIMPORT                        R28 K55 [UDim.new]
      213 LOADN                            R29 0
      214 GETUPVAL                         R30 2
      215 GETTABLEKS                       R30 R30 K56 ["LOAD_SCROLL_PADDING"]
      217 CALL                             R28 2 1
      218 SETTABLEKS                       R28 R27 K52 ["PaddingBottom"]
      220 CALL                             R25 2 1
      221 SETTABLEKS                       R25 R24 K44 ["UIPadding"]
      223 GETUPVAL                         R25 0
      224 GETTABLEKS                       R25 R25 K13 ["createElement"]
      226 LOADK                            R26 K58 ["UIListLayout"]
      227 DUPTABLE                         R27 K61 [{"FillDirection", "SortOrder"}]
      228 GETIMPORT                        R28 K64 [Enum.FillDirection.Vertical]
      230 SETTABLEKS                       R28 R27 K59 ["FillDirection"]
      232 GETIMPORT                        R28 K65 [Enum.SortOrder.LayoutOrder]
      234 SETTABLEKS                       R28 R27 K60 ["SortOrder"]
      236 CALL                             R25 2 1
      237 SETTABLEKS                       R25 R24 K45 ["Layout"]
      239 SETTABLEKS                       R15 R24 K46 ["TopContent"]
      241 SETTABLEKS                       R16 R24 K47 ["Content"]
      243 MOVE                             R25 R6
      244 JUMPIFNOT                        R25 ; [+47]
      245 GETUPVAL                         R25 0
      246 GETTABLEKS                       R25 R25 K13 ["createElement"]
      248 GETUPVAL                         R26 5
      249 DUPTABLE                         R27 K68 [{["LayoutOrder"] = 3, ["Size"], ["Layout"], ["HorizontalAlignment"]}]
      250 GETIMPORT                        R28 K70 [UDim2.fromScale]
      252 LOADN                            R29 1
      253 LOADN                            R30 1
      254 CALL                             R28 2 1
      255 SETTABLEKS                       R28 R27 K10 ["Size"]
      257 GETIMPORT                        R28 K64 [Enum.FillDirection.Vertical]
      259 SETTABLEKS                       R28 R27 K45 ["Layout"]
      261 GETIMPORT                        R28 K72 [Enum.HorizontalAlignment.Center]
      263 SETTABLEKS                       R28 R27 K67 ["HorizontalAlignment"]
      265 DUPTABLE                         R28 K74 [{"Wrapper"}]
      266 GETUPVAL                         R29 0
      267 GETTABLEKS                       R29 R29 K13 ["createElement"]
      269 LOADK                            R30 K14 ["Frame"]
      270 DUPTABLE                         R31 K75 [{["Size"], ["BackgroundTransparency"] = 1}]
      271 GETIMPORT                        R32 K22 [UDim2.new]
      273 LOADN                            R33 0
      274 LOADN                            R34 60
      275 LOADN                            R35 1
      276 LOADN                            R36 0
      277 CALL                             R32 4 1
      278 SETTABLEKS                       R32 R31 K10 ["Size"]
      280 DUPTABLE                         R32 K24 [{"LoadingIndicator"}]
      281 GETUPVAL                         R33 0
      282 GETTABLEKS                       R33 R33 K13 ["createElement"]
      284 GETUPVAL                         R34 1
      285 CALL                             R33 1 1
      286 SETTABLEKS                       R33 R32 K23 ["LoadingIndicator"]
      288 CALL                             R29 3 1
      289 SETTABLEKS                       R29 R28 K73 ["Wrapper"]
      291 CALL                             R25 3 1
      292 SETTABLEKS                       R25 R24 K23 ["LoadingIndicator"]
      294 CALL                             R21 3 1
      295 SETTABLEKS                       R21 R20 K38 ["StyledScrollingFrame"]
      297 CALL                             R17 3 -1
      298 RETURN                           R17 -1

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
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Constants"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R7 R7 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R7 K13 ["NavigationContext"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Src"]
       41 GETTABLEKS                       R8 R8 K14 ["Components"]
       43 GETTABLEKS                       R8 R8 K15 ["StyledScrollingFrame"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K9 ["Src"]
       50 GETTABLEKS                       R9 R9 K14 ["Components"]
       52 GETTABLEKS                       R9 R9 K16 ["NoSceneSuggestions"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R3 K12 ["ContextServices"]
       57 GETTABLEKS                       R10 R9 K17 ["withContext"]
       59 GETTABLEKS                       R11 R3 K18 ["UI"]
       61 GETTABLEKS                       R11 R11 K19 ["LoadingIndicator"]
       63 GETTABLEKS                       R12 R3 K18 ["UI"]
       65 GETTABLEKS                       R12 R12 K20 ["Pane"]
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
