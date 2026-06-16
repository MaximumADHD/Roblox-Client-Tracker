PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["setAbsoluteSize"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderedGraphRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["current"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K3 ["update"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R6 0 2
       23 GETTABLEKS                       R7 R1 K4 ["setAbsoluteSize"]
       25 GETTABLEKS                       R8 R3 K5 ["observeAbsoluteSize"]
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["useLayoutEffect"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R1 K7 ["observeViewportRect"]
       41 GETTABLEKS                       R8 R1 K8 ["observeRenderedGraphRect"]
       43 SETLIST                          R6 R7 2 [1]
       45 CALL                             R4 2 0
       46 GETUPVAL                         R5 4
       47 JUMPIFNOT                        R5 ; [+2]
       48 LOADNIL                          R4
       49 JUMP                             ; [+6]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R4 R4 K9 ["useSignalState"]
       53 GETTABLEKS                       R5 R1 K7 ["observeViewportRect"]
       55 CALL                             R4 1 1
       56 GETUPVAL                         R6 4
       57 JUMPIFNOT                        R6 ; [+2]
       58 LOADNIL                          R5
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R5 5
       61 GETTABLEKS                       R5 R5 K9 ["useSignalState"]
       63 GETTABLEKS                       R6 R1 K8 ["observeRenderedGraphRect"]
       65 CALL                             R5 1 1
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K2 ["useRef"]
       69 LOADNIL                          R7
       70 CALL                             R6 1 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R9 0 1
       79 GETTABLEKS                       R10 R3 K11 ["setFrame"]
       81 SETLIST                          R9 R10 1 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 6
       85 GETTABLEKS                       R8 R8 K12 ["Hooks"]
       87 GETTABLEKS                       R8 R8 K13 ["useTokens"]
       89 CALL                             R8 0 1
       90 GETUPVAL                         R9 7
       91 GETTABLEKS                       R9 R9 K14 ["createNextOrder"]
       93 CALL                             R9 0 1
       94 DUPTABLE                         R10 K21 [{"GraphingCanvasBackground", "NodeSelectionBox", "CompositorNodes", "GraphingCanvasContextMenuAnchor", "GraphingCanvasKeyboardInput", "GraphingCanvasScroller"}]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K22 ["createElement"]
       98 GETUPVAL                         R12 8
       99 DUPTABLE                         R13 K24 [{"ZIndex"}]
      100 MOVE                             R14 R9
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K15 ["GraphingCanvasBackground"]
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R11 R11 K22 ["createElement"]
      110 GETUPVAL                         R12 9
      111 DUPTABLE                         R13 K24 [{"ZIndex"}]
      112 MOVE                             R14 R9
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K16 ["NodeSelectionBox"]
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K22 ["createElement"]
      122 GETUPVAL                         R12 10
      123 DUPTABLE                         R13 K24 [{"ZIndex"}]
      124 MOVE                             R14 R9
      125 CALL                             R14 0 1
      126 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      128 CALL                             R11 2 1
      129 SETTABLEKS                       R11 R10 K17 ["CompositorNodes"]
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K22 ["createElement"]
      134 GETUPVAL                         R12 11
      135 CALL                             R11 1 1
      136 SETTABLEKS                       R11 R10 K18 ["GraphingCanvasContextMenuAnchor"]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R11 R11 K22 ["createElement"]
      141 GETUPVAL                         R12 12
      142 DUPTABLE                         R13 K24 [{"ZIndex"}]
      143 MOVE                             R14 R9
      144 CALL                             R14 0 1
      145 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R10 K19 ["GraphingCanvasKeyboardInput"]
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R11 R11 K22 ["createElement"]
      153 GETUPVAL                         R12 13
      154 DUPTABLE                         R13 K24 [{"ZIndex"}]
      155 MOVE                             R14 R9
      156 CALL                             R14 0 1
      157 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K20 ["GraphingCanvasScroller"]
      162 GETUPVAL                         R11 0
      163 GETTABLEKS                       R11 R11 K22 ["createElement"]
      165 GETUPVAL                         R12 6
      166 GETTABLEKS                       R12 R12 K25 ["View"]
      168 DUPTABLE                         R13 K28 [{"tag", "ref"}]
      169 LOADK                            R14 K29 ["size-full-full"]
      170 SETTABLEKS                       R14 R13 K26 ["tag"]
      172 SETTABLEKS                       R7 R13 K27 ["ref"]
      174 DUPTABLE                         R14 K31 [{"Contexts"}]
      175 GETUPVAL                         R15 0
      176 GETTABLEKS                       R15 R15 K22 ["createElement"]
      178 GETUPVAL                         R16 7
      179 GETTABLEKS                       R16 R16 K32 ["ContextStack"]
      181 DUPTABLE                         R17 K34 [{"providers"}]
      182 NEWTABLE                         R18 0 3
      184 GETUPVAL                         R19 0
      185 GETTABLEKS                       R19 R19 K22 ["createElement"]
      187 GETUPVAL                         R20 14
      188 GETTABLEKS                       R20 R20 K35 ["Provider"]
      190 CALL                             R19 1 1
      191 GETUPVAL                         R20 0
      192 GETTABLEKS                       R20 R20 K22 ["createElement"]
      194 GETUPVAL                         R21 15
      195 GETTABLEKS                       R21 R21 K35 ["Provider"]
      197 CALL                             R20 1 1
      198 GETUPVAL                         R21 0
      199 GETTABLEKS                       R21 R21 K22 ["createElement"]
      201 GETUPVAL                         R22 16
      202 GETTABLEKS                       R22 R22 K35 ["Provider"]
      204 CALL                             R21 1 -1
      205 SETLIST                          R18 R19 -1 [1]
      207 SETTABLEKS                       R18 R17 K33 ["providers"]
      209 DUPTABLE                         R18 K39 [{"Canvas", "ParameterPane", "Children"}]
      210 GETUPVAL                         R19 0
      211 GETTABLEKS                       R19 R19 K22 ["createElement"]
      213 GETUPVAL                         R20 17
      214 GETTABLEKS                       R20 R20 K36 ["Canvas"]
      216 DUPTABLE                         R21 K52 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      217 SETTABLEKS                       R2 R21 K27 ["ref"]
      219 GETUPVAL                         R23 4
      220 JUMPIFNOT                        R23 ; [+2]
      221 LOADNIL                          R22
      222 JUMP                             ; [+1]
      223 MOVE                             R22 R5
      224 SETTABLEKS                       R22 R21 K40 ["GraphRect"]
      226 GETUPVAL                         R23 4
      227 JUMPIFNOT                        R23 ; [+2]
      228 LOADNIL                          R22
      229 JUMP                             ; [+1]
      230 MOVE                             R22 R4
      231 SETTABLEKS                       R22 R21 K41 ["ViewportRect"]
      233 GETIMPORT                        R22 K55 [UDim2.fromScale]
      235 LOADN                            R23 1
      236 LOADN                            R24 1
      237 CALL                             R22 2 1
      238 SETTABLEKS                       R22 R21 K42 ["Size"]
      240 GETIMPORT                        R22 K58 [UDim.new]
      242 LOADN                            R23 0
      243 LOADN                            R24 0
      244 CALL                             R22 2 1
      245 SETTABLEKS                       R22 R21 K43 ["ViewportPaddingLeft"]
      247 GETIMPORT                        R22 K58 [UDim.new]
      249 LOADN                            R23 0
      250 LOADN                            R24 0
      251 CALL                             R22 2 1
      252 SETTABLEKS                       R22 R21 K44 ["ViewportPaddingRight"]
      254 GETIMPORT                        R22 K58 [UDim.new]
      256 LOADN                            R23 0
      257 LOADN                            R24 0
      258 CALL                             R22 2 1
      259 SETTABLEKS                       R22 R21 K45 ["ViewportPaddingBottom"]
      261 GETIMPORT                        R22 K58 [UDim.new]
      263 LOADN                            R23 0
      264 LOADN                            R24 0
      265 CALL                             R22 2 1
      266 SETTABLEKS                       R22 R21 K46 ["ViewportPaddingTop"]
      268 GETTABLEKS                       R22 R8 K59 ["Color"]
      270 GETTABLEKS                       R22 R22 K60 ["Surface"]
      272 GETTABLEKS                       R22 R22 K61 ["Surface_100"]
      274 GETTABLEKS                       R22 R22 K62 ["Color3"]
      276 SETTABLEKS                       R22 R21 K47 ["CanvasBackgroundColor3"]
      278 GETTABLEKS                       R22 R8 K59 ["Color"]
      280 GETTABLEKS                       R22 R22 K60 ["Surface"]
      282 GETTABLEKS                       R22 R22 K61 ["Surface_100"]
      284 GETTABLEKS                       R22 R22 K63 ["Transparency"]
      286 SETTABLEKS                       R22 R21 K48 ["CanvasBackgroundTransparency"]
      288 GETTABLEKS                       R22 R8 K59 ["Color"]
      290 GETTABLEKS                       R22 R22 K60 ["Surface"]
      292 GETTABLEKS                       R22 R22 K61 ["Surface_100"]
      294 GETTABLEKS                       R22 R22 K62 ["Color3"]
      296 SETTABLEKS                       R22 R21 K49 ["ViewportBackgroundColor3"]
      298 GETTABLEKS                       R22 R8 K59 ["Color"]
      300 GETTABLEKS                       R22 R22 K60 ["Surface"]
      302 GETTABLEKS                       R22 R22 K61 ["Surface_100"]
      304 GETTABLEKS                       R22 R22 K63 ["Transparency"]
      306 SETTABLEKS                       R22 R21 K50 ["ViewportBackgroundTransparency"]
      308 SETTABLEKS                       R10 R21 K51 ["childrenUnclipped"]
      310 CALL                             R19 2 1
      311 SETTABLEKS                       R19 R18 K36 ["Canvas"]
      313 GETUPVAL                         R19 0
      314 GETTABLEKS                       R19 R19 K22 ["createElement"]
      316 GETUPVAL                         R20 18
      317 DUPTABLE                         R21 K65 [{"canvasFrameRef"}]
      318 SETTABLEKS                       R6 R21 K64 ["canvasFrameRef"]
      320 CALL                             R19 2 1
      321 SETTABLEKS                       R19 R18 K37 ["ParameterPane"]
      323 GETUPVAL                         R19 0
      324 GETTABLEKS                       R19 R19 K22 ["createElement"]
      326 GETUPVAL                         R20 0
      327 GETTABLEKS                       R20 R20 K66 ["Fragment"]
      329 NEWTABLE                         R21 0 0
      331 GETTABLEKS                       R22 R0 K67 ["children"]
      333 CALL                             R19 3 1
      334 SETTABLEKS                       R19 R18 K38 ["Children"]
      336 CALL                             R15 3 1
      337 SETTABLEKS                       R15 R14 K30 ["Contexts"]
      339 CALL                             R11 3 -1
      340 RETURN                           R11 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"initialGraphRect"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 DUPTABLE                         R4 K5 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 NEWTABLE                         R7 0 0
       18 GETTABLEKS                       R8 R0 K6 ["children"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K4 ["Inner"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNodes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["FFlagAnimGraphUI_PerfFixes_7123"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Graphing"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K14 ["GraphingCanvasBackground"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K15 ["GraphingCanvasContextMenuAnchor"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K16 ["GraphingCanvasKeyboardInput"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K17 ["GraphingCanvasScroller"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K18 ["InsertNodeContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["ModifierKeysContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K20 ["NodeSelectionBox"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K21 ["ParameterPane"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K11 ["Parent"]
      102 GETTABLEKS                       R15 R15 K22 ["React"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K11 ["Parent"]
      109 GETTABLEKS                       R16 R16 K23 ["ReactUtils"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K11 ["Parent"]
      116 GETTABLEKS                       R17 R17 K24 ["Signals"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K11 ["Parent"]
      123 GETTABLEKS                       R18 R18 K25 ["SignalsReact"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K6 ["Components"]
      130 GETTABLEKS                       R19 R19 K26 ["ViewportRectContext"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K27 ["Hooks"]
      137 GETTABLEKS                       R20 R20 K28 ["useAbsoluteSize"]
      139 CALL                             R19 1 1
      140 DUPCLOSURE                       R20 K29 [PROTO_5]
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R13
      160 DUPCLOSURE                       R21 K30 [PROTO_6]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R20
      164 RETURN                           R21 1
