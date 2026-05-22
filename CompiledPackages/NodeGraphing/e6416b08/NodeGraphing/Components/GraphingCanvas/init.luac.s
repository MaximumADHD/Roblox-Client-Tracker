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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useRef"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 2
       23 GETTABLEKS                       R6 R0 K4 ["setAbsoluteSize"]
       25 GETTABLEKS                       R7 R2 K5 ["observeAbsoluteSize"]
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K6 ["useLayoutEffect"]
       33 NEWCLOSURE                       R4 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R5 0 2
       39 GETTABLEKS                       R6 R0 K7 ["observeViewportRect"]
       41 GETTABLEKS                       R7 R0 K8 ["observeRenderedGraphRect"]
       43 SETLIST                          R5 R6 2 [1]
       45 CALL                             R3 2 0
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K9 ["useSignalState"]
       49 GETTABLEKS                       R4 R0 K7 ["observeViewportRect"]
       51 CALL                             R3 1 1
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K9 ["useSignalState"]
       55 GETTABLEKS                       R5 R0 K8 ["observeRenderedGraphRect"]
       57 CALL                             R4 1 1
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K2 ["useRef"]
       61 LOADNIL                          R6
       62 CALL                             R5 1 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       66 NEWCLOSURE                       R7 P2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R8 0 1
       71 GETTABLEKS                       R9 R2 K11 ["setFrame"]
       73 SETLIST                          R8 R9 1 [1]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K12 ["Hooks"]
       79 GETTABLEKS                       R7 R7 K13 ["useTokens"]
       81 CALL                             R7 0 1
       82 GETUPVAL                         R8 6
       83 GETTABLEKS                       R8 R8 K14 ["createNextOrder"]
       85 CALL                             R8 0 1
       86 DUPTABLE                         R9 K21 [{"GraphingCanvasBackground", "NodeSelectionBox", "CompositorNodes", "GraphingCanvasContextMenuAnchor", "GraphingCanvasKeyboardInput", "GraphingCanvasScroller"}]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K22 ["createElement"]
       90 GETUPVAL                         R11 7
       91 DUPTABLE                         R12 K24 [{"ZIndex"}]
       92 MOVE                             R13 R8
       93 CALL                             R13 0 1
       94 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K15 ["GraphingCanvasBackground"]
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K22 ["createElement"]
      102 GETUPVAL                         R11 8
      103 DUPTABLE                         R12 K24 [{"ZIndex"}]
      104 MOVE                             R13 R8
      105 CALL                             R13 0 1
      106 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K16 ["NodeSelectionBox"]
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R10 R10 K22 ["createElement"]
      114 GETUPVAL                         R11 9
      115 DUPTABLE                         R12 K24 [{"ZIndex"}]
      116 MOVE                             R13 R8
      117 CALL                             R13 0 1
      118 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R9 K17 ["CompositorNodes"]
      123 GETUPVAL                         R10 0
      124 GETTABLEKS                       R10 R10 K22 ["createElement"]
      126 GETUPVAL                         R11 10
      127 CALL                             R10 1 1
      128 SETTABLEKS                       R10 R9 K18 ["GraphingCanvasContextMenuAnchor"]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R10 R10 K22 ["createElement"]
      133 GETUPVAL                         R11 11
      134 DUPTABLE                         R12 K24 [{"ZIndex"}]
      135 MOVE                             R13 R8
      136 CALL                             R13 0 1
      137 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K19 ["GraphingCanvasKeyboardInput"]
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K22 ["createElement"]
      145 GETUPVAL                         R11 12
      146 DUPTABLE                         R12 K24 [{"ZIndex"}]
      147 MOVE                             R13 R8
      148 CALL                             R13 0 1
      149 SETTABLEKS                       R13 R12 K23 ["ZIndex"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K20 ["GraphingCanvasScroller"]
      154 GETUPVAL                         R10 0
      155 GETTABLEKS                       R10 R10 K22 ["createElement"]
      157 GETUPVAL                         R11 5
      158 GETTABLEKS                       R11 R11 K25 ["View"]
      160 DUPTABLE                         R12 K28 [{"tag", "ref"}]
      161 LOADK                            R13 K29 ["size-full-full"]
      162 SETTABLEKS                       R13 R12 K26 ["tag"]
      164 SETTABLEKS                       R6 R12 K27 ["ref"]
      166 DUPTABLE                         R13 K31 [{"Contexts"}]
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R14 R14 K22 ["createElement"]
      170 GETUPVAL                         R15 6
      171 GETTABLEKS                       R15 R15 K32 ["ContextStack"]
      173 DUPTABLE                         R16 K34 [{"providers"}]
      174 NEWTABLE                         R17 0 4
      176 GETUPVAL                         R18 0
      177 GETTABLEKS                       R18 R18 K22 ["createElement"]
      179 GETUPVAL                         R19 13
      180 GETTABLEKS                       R19 R19 K35 ["Provider"]
      182 CALL                             R18 1 1
      183 GETUPVAL                         R19 0
      184 GETTABLEKS                       R19 R19 K22 ["createElement"]
      186 GETUPVAL                         R20 14
      187 GETTABLEKS                       R20 R20 K35 ["Provider"]
      189 CALL                             R19 1 1
      190 GETUPVAL                         R20 0
      191 GETTABLEKS                       R20 R20 K22 ["createElement"]
      193 GETUPVAL                         R21 15
      194 GETTABLEKS                       R21 R21 K35 ["Provider"]
      196 CALL                             R20 1 1
      197 GETUPVAL                         R21 0
      198 GETTABLEKS                       R21 R21 K22 ["createElement"]
      200 GETUPVAL                         R22 16
      201 GETTABLEKS                       R22 R22 K35 ["Provider"]
      203 CALL                             R21 1 -1
      204 SETLIST                          R17 R18 -1 [1]
      206 SETTABLEKS                       R17 R16 K33 ["providers"]
      208 DUPTABLE                         R17 K38 [{"Canvas", "ParameterPane"}]
      209 GETUPVAL                         R18 0
      210 GETTABLEKS                       R18 R18 K22 ["createElement"]
      212 GETUPVAL                         R19 17
      213 GETTABLEKS                       R19 R19 K36 ["Canvas"]
      215 DUPTABLE                         R20 K51 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      216 SETTABLEKS                       R1 R20 K27 ["ref"]
      218 SETTABLEKS                       R4 R20 K39 ["GraphRect"]
      220 SETTABLEKS                       R3 R20 K40 ["ViewportRect"]
      222 GETIMPORT                        R21 K54 [UDim2.fromScale]
      224 LOADN                            R22 1
      225 LOADN                            R23 1
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K41 ["Size"]
      229 GETIMPORT                        R21 K57 [UDim.new]
      231 LOADN                            R22 0
      232 LOADN                            R23 0
      233 CALL                             R21 2 1
      234 SETTABLEKS                       R21 R20 K42 ["ViewportPaddingLeft"]
      236 GETIMPORT                        R21 K57 [UDim.new]
      238 LOADN                            R22 0
      239 LOADN                            R23 0
      240 CALL                             R21 2 1
      241 SETTABLEKS                       R21 R20 K43 ["ViewportPaddingRight"]
      243 GETIMPORT                        R21 K57 [UDim.new]
      245 LOADN                            R22 0
      246 LOADN                            R23 0
      247 CALL                             R21 2 1
      248 SETTABLEKS                       R21 R20 K44 ["ViewportPaddingBottom"]
      250 GETIMPORT                        R21 K57 [UDim.new]
      252 LOADN                            R22 0
      253 LOADN                            R23 0
      254 CALL                             R21 2 1
      255 SETTABLEKS                       R21 R20 K45 ["ViewportPaddingTop"]
      257 GETTABLEKS                       R21 R7 K58 ["Color"]
      259 GETTABLEKS                       R21 R21 K59 ["Surface"]
      261 GETTABLEKS                       R21 R21 K60 ["Surface_100"]
      263 GETTABLEKS                       R21 R21 K61 ["Color3"]
      265 SETTABLEKS                       R21 R20 K46 ["CanvasBackgroundColor3"]
      267 GETTABLEKS                       R21 R7 K58 ["Color"]
      269 GETTABLEKS                       R21 R21 K59 ["Surface"]
      271 GETTABLEKS                       R21 R21 K60 ["Surface_100"]
      273 GETTABLEKS                       R21 R21 K62 ["Transparency"]
      275 SETTABLEKS                       R21 R20 K47 ["CanvasBackgroundTransparency"]
      277 GETTABLEKS                       R21 R7 K58 ["Color"]
      279 GETTABLEKS                       R21 R21 K59 ["Surface"]
      281 GETTABLEKS                       R21 R21 K60 ["Surface_100"]
      283 GETTABLEKS                       R21 R21 K61 ["Color3"]
      285 SETTABLEKS                       R21 R20 K48 ["ViewportBackgroundColor3"]
      287 GETTABLEKS                       R21 R7 K58 ["Color"]
      289 GETTABLEKS                       R21 R21 K59 ["Surface"]
      291 GETTABLEKS                       R21 R21 K60 ["Surface_100"]
      293 GETTABLEKS                       R21 R21 K62 ["Transparency"]
      295 SETTABLEKS                       R21 R20 K49 ["ViewportBackgroundTransparency"]
      297 SETTABLEKS                       R9 R20 K50 ["childrenUnclipped"]
      299 CALL                             R18 2 1
      300 SETTABLEKS                       R18 R17 K36 ["Canvas"]
      302 GETUPVAL                         R18 0
      303 GETTABLEKS                       R18 R18 K22 ["createElement"]
      305 GETUPVAL                         R19 18
      306 DUPTABLE                         R20 K64 [{"canvasFrameRef"}]
      307 SETTABLEKS                       R5 R20 K63 ["canvasFrameRef"]
      309 CALL                             R18 2 1
      310 SETTABLEKS                       R18 R17 K37 ["ParameterPane"]
      312 CALL                             R14 3 1
      313 SETTABLEKS                       R14 R13 K30 ["Contexts"]
      315 CALL                             R10 3 -1
      316 RETURN                           R10 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"initialGraphRect"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["createElement"]
       14 GETUPVAL                         R5 2
       15 CALL                             R4 1 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Graphing"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K12 ["GraphingCanvasBackground"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K13 ["GraphingCanvasContextMenuAnchor"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K14 ["GraphingCanvasKeyboardInput"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K15 ["GraphingCanvasScroller"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R10 K16 ["InputSelectionContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K17 ["InsertNodeContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K18 ["ModifierKeysContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K19 ["NodeSelectionBox"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K20 ["ParameterPane"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K9 ["Parent"]
      102 GETTABLEKS                       R15 R15 K21 ["React"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K9 ["Parent"]
      109 GETTABLEKS                       R16 R16 K22 ["ReactUtils"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K9 ["Parent"]
      116 GETTABLEKS                       R17 R17 K23 ["Signals"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K9 ["Parent"]
      123 GETTABLEKS                       R18 R18 K24 ["SignalsReact"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K6 ["Components"]
      130 GETTABLEKS                       R19 R19 K25 ["ViewportRectContext"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      137 GETTABLEKS                       R20 R20 K27 ["useAbsoluteSize"]
      139 CALL                             R19 1 1
      140 DUPCLOSURE                       R20 K28 [PROTO_5]
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R13
      160 DUPCLOSURE                       R21 K29 [PROTO_6]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R20
      164 RETURN                           R21 1
