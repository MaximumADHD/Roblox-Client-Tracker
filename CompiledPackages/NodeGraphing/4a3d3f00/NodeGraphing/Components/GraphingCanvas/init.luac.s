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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 2
        5 LOADB                            R3 0
        6 CALL                             R2 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFEQKNIL                     R0 ; [+3]
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 LOADN                            R1 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 ADDK                             R0 R0 K0 [1]
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 0
        7 LOADN                            R1 2
        8 JUMPIFLE                         R1 R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 LOADN                            R1 15
       12 JUMPIFNOTLE                      R1 R0 ; [+26]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["current"]
       17 JUMPIFEQKNIL                     R0 ; [+4]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K2 ["Size"]
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R0 1
       26 SETUPVAL                         R0 4
       27 GETUPVAL                         R0 5
       28 JUMPIFEQKNIL                     R0 ; [+5]
       30 GETUPVAL                         R0 5
       31 NAMECALL                         R0 R0 K3 ["Disconnect"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 JUMPIFEQKNIL                     R0 ; [+3]
       37 GETUPVAL                         R0 6
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R0 1
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 JUMPIFEQKNIL                     R0 ; [+5]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K2 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 JUMPIFEQKNIL                     R0 ; [+3]
       23 GETUPVAL                         R0 4
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isCli"]
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["isFTF"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K2 ["current"]
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K3 ["Size"]
       22 GETIMPORT                        R3 K6 [UDim2.fromOffset]
       24 LOADN                            R4 0
       25 LOADN                            R5 1
       26 CALL                             R3 2 1
       27 SUB                              R2 R1 R3
       28 SETTABLEKS                       R2 R0 K3 ["Size"]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 LOADN                            R3 0
       34 LOADN                            R4 0
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 LOADB                            R7 0
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          REF R7
       40 CAPTURE                          REF R5
       41 CAPTURE                          REF R6
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K7 ["createEffect"]
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          REF R3
       48 CALL                             R9 1 1
       49 MOVE                             R6 R9
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K8 ["Heartbeat"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          REF R3
       55 CAPTURE                          REF R4
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R5
       60 CAPTURE                          REF R6
       61 NAMECALL                         R9 R9 K9 ["Connect"]
       63 CALL                             R9 2 1
       64 MOVE                             R5 R9
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          REF R7
       69 CAPTURE                          REF R5
       70 CAPTURE                          REF R6
       71 CLOSEUPVALS                      R3
       72 RETURN                           R9 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"layer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["layer"]
        4 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useConsumerHasParameters"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useRef"]
       21 LOADNIL                          R5
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 4
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R1 K5 ["setAbsoluteSize"]
       36 GETTABLEKS                       R10 R5 K6 ["observeAbsoluteSize"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 0
       41 GETTABLEKS                       R6 R0 K7 ["onSaveViewState"]
       43 GETTABLEKS                       R7 R1 K8 ["observeViewportPosition"]
       45 GETTABLEKS                       R8 R1 K9 ["observeZoomRatio"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K4 ["useEffect"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 NEWTABLE                         R11 0 3
       56 MOVE                             R12 R6
       57 MOVE                             R13 R7
       58 MOVE                             R14 R8
       59 SETLIST                          R11 R12 3 [1]
       61 CALL                             R9 2 0
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K10 ["useLayoutEffect"]
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 NEWTABLE                         R11 0 2
       71 GETTABLEKS                       R12 R1 K11 ["observeViewportRect"]
       73 GETTABLEKS                       R13 R1 K12 ["observeRenderedGraphRect"]
       75 SETLIST                          R11 R12 2 [1]
       77 CALL                             R9 2 0
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K3 ["useRef"]
       81 LOADNIL                          R10
       82 CALL                             R9 1 1
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       86 NEWCLOSURE                       R11 P3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R12 0 1
       91 GETTABLEKS                       R13 R5 K14 ["setFrame"]
       93 SETLIST                          R12 R13 1 [1]
       95 CALL                             R10 2 1
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K4 ["useEffect"]
       99 NEWCLOSURE                       R12 P4
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R9
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U8
      106 NEWTABLE                         R13 0 1
      108 GETTABLEKS                       R14 R2 K15 ["nodeRenderInfoDispatcher"]
      110 GETTABLEKS                       R14 R14 K16 ["observeMap"]
      112 SETLIST                          R13 R14 1 [1]
      114 CALL                             R11 2 0
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K17 ["useState"]
      118 LOADNIL                          R12
      119 CALL                             R11 1 2
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K18 ["useMemo"]
      123 NEWCLOSURE                       R14 P5
      124 CAPTURE                          VAL R11
      125 NEWTABLE                         R15 0 1
      127 MOVE                             R16 R11
      128 SETLIST                          R15 R16 1 [1]
      130 CALL                             R13 2 1
      131 GETUPVAL                         R14 9
      132 GETTABLEKS                       R14 R14 K19 ["Hooks"]
      134 GETTABLEKS                       R14 R14 K20 ["useTokens"]
      136 CALL                             R14 0 1
      137 GETUPVAL                         R15 10
      138 GETTABLEKS                       R15 R15 K21 ["createNextOrder"]
      140 CALL                             R15 0 1
      141 NEWTABLE                         R16 16 0
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R17 R17 K22 ["createElement"]
      146 GETUPVAL                         R18 11
      147 DUPTABLE                         R19 K24 [{"ZIndex"}]
      148 MOVE                             R20 R15
      149 CALL                             R20 0 1
      150 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K25 ["GraphingCanvasBackground"]
      155 GETUPVAL                         R17 0
      156 GETTABLEKS                       R17 R17 K22 ["createElement"]
      158 GETUPVAL                         R18 12
      159 DUPTABLE                         R19 K24 [{"ZIndex"}]
      160 MOVE                             R20 R15
      161 CALL                             R20 0 1
      162 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K26 ["GraphingCanvasBackgroundDragger"]
      167 GETUPVAL                         R17 0
      168 GETTABLEKS                       R17 R17 K22 ["createElement"]
      170 GETUPVAL                         R18 13
      171 DUPTABLE                         R19 K24 [{"ZIndex"}]
      172 MOVE                             R20 R15
      173 CALL                             R20 0 1
      174 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K27 ["NodeSelectionBox"]
      179 GETTABLEKS                       R17 R0 K28 ["childrenBehindNodes"]
      181 JUMPIFNOT                        R17 ; [+21]
      182 GETUPVAL                         R17 0
      183 GETTABLEKS                       R17 R17 K22 ["createElement"]
      185 LOADK                            R18 K29 ["Frame"]
      186 DUPTABLE                         R19 K33 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      187 GETIMPORT                        R20 K36 [UDim2.fromScale]
      189 LOADN                            R21 1
      190 LOADN                            R22 1
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K30 ["Size"]
      194 MOVE                             R20 R15
      195 CALL                             R20 0 1
      196 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      198 GETTABLEKS                       R20 R0 K28 ["childrenBehindNodes"]
      200 CALL                             R17 3 1
      201 SETTABLEKS                       R17 R16 K37 ["ChildrenBehindNodes"]
      203 GETUPVAL                         R17 0
      204 GETTABLEKS                       R17 R17 K22 ["createElement"]
      206 GETUPVAL                         R18 14
      207 DUPTABLE                         R19 K24 [{"ZIndex"}]
      208 MOVE                             R20 R15
      209 CALL                             R20 0 1
      210 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      212 CALL                             R17 2 1
      213 SETTABLEKS                       R17 R16 K38 ["CompositorNodes"]
      215 GETUPVAL                         R17 0
      216 GETTABLEKS                       R17 R17 K22 ["createElement"]
      218 GETUPVAL                         R18 15
      219 CALL                             R17 1 1
      220 SETTABLEKS                       R17 R16 K39 ["GraphingCanvasContextMenuAnchor"]
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R17 R17 K22 ["createElement"]
      225 GETUPVAL                         R18 16
      226 CALL                             R17 1 1
      227 SETTABLEKS                       R17 R16 K40 ["NodeRightClickMenuAnchor"]
      229 GETUPVAL                         R17 0
      230 GETTABLEKS                       R17 R17 K22 ["createElement"]
      232 GETUPVAL                         R18 17
      233 DUPTABLE                         R19 K24 [{"ZIndex"}]
      234 MOVE                             R20 R15
      235 CALL                             R20 0 1
      236 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      238 CALL                             R17 2 1
      239 SETTABLEKS                       R17 R16 K41 ["GraphingCanvasKeyboardInput"]
      241 GETUPVAL                         R17 0
      242 GETTABLEKS                       R17 R17 K22 ["createElement"]
      244 GETUPVAL                         R18 18
      245 DUPTABLE                         R19 K24 [{"ZIndex"}]
      246 MOVE                             R20 R15
      247 CALL                             R20 0 1
      248 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      250 CALL                             R17 2 1
      251 SETTABLEKS                       R17 R16 K42 ["GraphingCanvasScroller"]
      253 GETUPVAL                         R17 0
      254 GETTABLEKS                       R17 R17 K22 ["createElement"]
      256 GETUPVAL                         R18 19
      257 GETTABLEKS                       R18 R18 K43 ["InputDetector"]
      259 DUPTABLE                         R19 K24 [{"ZIndex"}]
      260 MOVE                             R20 R15
      261 CALL                             R20 0 1
      262 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      264 CALL                             R17 2 1
      265 SETTABLEKS                       R17 R16 K44 ["CompositorConnectionInputDetector"]
      267 GETUPVAL                         R17 0
      268 GETTABLEKS                       R17 R17 K22 ["createElement"]
      270 GETUPVAL                         R18 9
      271 GETTABLEKS                       R18 R18 K45 ["View"]
      273 DUPTABLE                         R19 K49 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      274 MOVE                             R20 R15
      275 CALL                             R20 0 1
      276 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      278 SETTABLEKS                       R12 R19 K48 ["ref"]
      280 CALL                             R17 2 1
      281 SETTABLEKS                       R17 R16 K50 ["CanvasOverlayLayer"]
      283 GETUPVAL                         R17 0
      284 GETTABLEKS                       R17 R17 K22 ["createElement"]
      286 GETUPVAL                         R18 9
      287 GETTABLEKS                       R18 R18 K45 ["View"]
      289 DUPTABLE                         R19 K51 [{["tag"] = "size-full-full", ["ref"]}]
      290 SETTABLEKS                       R10 R19 K48 ["ref"]
      292 DUPTABLE                         R20 K53 [{"Contexts"}]
      293 GETUPVAL                         R21 0
      294 GETTABLEKS                       R21 R21 K22 ["createElement"]
      296 GETUPVAL                         R22 10
      297 GETTABLEKS                       R22 R22 K54 ["ContextStack"]
      299 DUPTABLE                         R23 K56 [{"providers"}]
      300 NEWTABLE                         R24 0 4
      302 GETUPVAL                         R25 0
      303 GETTABLEKS                       R25 R25 K22 ["createElement"]
      305 GETUPVAL                         R26 20
      306 GETTABLEKS                       R26 R26 K1 ["Context"]
      308 GETTABLEKS                       R26 R26 K57 ["Provider"]
      310 DUPTABLE                         R27 K59 [{"value"}]
      311 SETTABLEKS                       R13 R27 K58 ["value"]
      313 CALL                             R25 2 1
      314 GETUPVAL                         R26 0
      315 GETTABLEKS                       R26 R26 K22 ["createElement"]
      317 GETUPVAL                         R27 21
      318 GETTABLEKS                       R27 R27 K57 ["Provider"]
      320 CALL                             R26 1 1
      321 GETUPVAL                         R27 0
      322 GETTABLEKS                       R27 R27 K22 ["createElement"]
      324 GETUPVAL                         R28 22
      325 GETTABLEKS                       R28 R28 K57 ["Provider"]
      327 CALL                             R27 1 1
      328 GETUPVAL                         R28 0
      329 GETTABLEKS                       R28 R28 K22 ["createElement"]
      331 GETUPVAL                         R29 23
      332 GETTABLEKS                       R29 R29 K57 ["Provider"]
      334 CALL                             R28 1 -1
      335 SETLIST                          R24 R25 -1 [1]
      337 SETTABLEKS                       R24 R23 K55 ["providers"]
      339 DUPTABLE                         R24 K63 [{"Canvas", "ParameterPane", "Children"}]
      340 GETUPVAL                         R25 0
      341 GETTABLEKS                       R25 R25 K22 ["createElement"]
      343 GETUPVAL                         R26 24
      344 GETTABLEKS                       R26 R26 K60 ["Canvas"]
      346 DUPTABLE                         R27 K73 [{"ref", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      347 SETTABLEKS                       R4 R27 K48 ["ref"]
      349 GETIMPORT                        R28 K36 [UDim2.fromScale]
      351 LOADN                            R29 1
      352 LOADN                            R30 1
      353 CALL                             R28 2 1
      354 SETTABLEKS                       R28 R27 K30 ["Size"]
      356 GETIMPORT                        R28 K76 [UDim.new]
      358 LOADN                            R29 0
      359 LOADN                            R30 0
      360 CALL                             R28 2 1
      361 SETTABLEKS                       R28 R27 K64 ["ViewportPaddingLeft"]
      363 GETIMPORT                        R28 K76 [UDim.new]
      365 LOADN                            R29 0
      366 LOADN                            R30 0
      367 CALL                             R28 2 1
      368 SETTABLEKS                       R28 R27 K65 ["ViewportPaddingRight"]
      370 GETIMPORT                        R28 K76 [UDim.new]
      372 LOADN                            R29 0
      373 LOADN                            R30 0
      374 CALL                             R28 2 1
      375 SETTABLEKS                       R28 R27 K66 ["ViewportPaddingBottom"]
      377 GETIMPORT                        R28 K76 [UDim.new]
      379 LOADN                            R29 0
      380 LOADN                            R30 0
      381 CALL                             R28 2 1
      382 SETTABLEKS                       R28 R27 K67 ["ViewportPaddingTop"]
      384 GETTABLEKS                       R28 R14 K77 ["Color"]
      386 GETTABLEKS                       R28 R28 K78 ["Surface"]
      388 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      390 GETTABLEKS                       R28 R28 K80 ["Color3"]
      392 SETTABLEKS                       R28 R27 K68 ["CanvasBackgroundColor3"]
      394 GETTABLEKS                       R28 R14 K77 ["Color"]
      396 GETTABLEKS                       R28 R28 K78 ["Surface"]
      398 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      400 GETTABLEKS                       R28 R28 K81 ["Transparency"]
      402 SETTABLEKS                       R28 R27 K69 ["CanvasBackgroundTransparency"]
      404 GETTABLEKS                       R28 R14 K77 ["Color"]
      406 GETTABLEKS                       R28 R28 K78 ["Surface"]
      408 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      410 GETTABLEKS                       R28 R28 K80 ["Color3"]
      412 SETTABLEKS                       R28 R27 K70 ["ViewportBackgroundColor3"]
      414 GETTABLEKS                       R28 R14 K77 ["Color"]
      416 GETTABLEKS                       R28 R28 K78 ["Surface"]
      418 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      420 GETTABLEKS                       R28 R28 K81 ["Transparency"]
      422 SETTABLEKS                       R28 R27 K71 ["ViewportBackgroundTransparency"]
      424 DUPTABLE                         R28 K83 [{"ConnectionContexts"}]
      425 GETUPVAL                         R29 0
      426 GETTABLEKS                       R29 R29 K22 ["createElement"]
      428 GETUPVAL                         R30 10
      429 GETTABLEKS                       R30 R30 K54 ["ContextStack"]
      431 DUPTABLE                         R31 K56 [{"providers"}]
      432 NEWTABLE                         R32 0 4
      434 GETUPVAL                         R33 0
      435 GETTABLEKS                       R33 R33 K22 ["createElement"]
      437 GETUPVAL                         R34 19
      438 GETTABLEKS                       R34 R34 K57 ["Provider"]
      440 CALL                             R33 1 1
      441 GETUPVAL                         R34 0
      442 GETTABLEKS                       R34 R34 K22 ["createElement"]
      444 GETUPVAL                         R35 25
      445 GETTABLEKS                       R35 R35 K57 ["Provider"]
      447 CALL                             R34 1 1
      448 GETUPVAL                         R35 0
      449 GETTABLEKS                       R35 R35 K22 ["createElement"]
      451 GETUPVAL                         R36 26
      452 GETTABLEKS                       R36 R36 K57 ["Provider"]
      454 CALL                             R35 1 1
      455 GETUPVAL                         R36 0
      456 GETTABLEKS                       R36 R36 K22 ["createElement"]
      458 GETUPVAL                         R37 27
      459 GETTABLEKS                       R37 R37 K57 ["Provider"]
      461 CALL                             R36 1 -1
      462 SETLIST                          R32 R33 -1 [1]
      464 SETTABLEKS                       R32 R31 K55 ["providers"]
      466 MOVE                             R32 R16
      467 CALL                             R29 3 1
      468 SETTABLEKS                       R29 R28 K82 ["ConnectionContexts"]
      470 SETTABLEKS                       R28 R27 K72 ["childrenUnclipped"]
      472 CALL                             R25 2 1
      473 SETTABLEKS                       R25 R24 K60 ["Canvas"]
      475 MOVE                             R25 R3
      476 JUMPIFNOT                        R25 ; [+12]
      477 GETUPVAL                         R25 0
      478 GETTABLEKS                       R25 R25 K22 ["createElement"]
      480 GETUPVAL                         R26 28
      481 DUPTABLE                         R27 K85 [{"canvasFrameRef", "ZIndex"}]
      482 SETTABLEKS                       R9 R27 K84 ["canvasFrameRef"]
      484 MOVE                             R28 R15
      485 CALL                             R28 0 1
      486 SETTABLEKS                       R28 R27 K23 ["ZIndex"]
      488 CALL                             R25 2 1
      489 SETTABLEKS                       R25 R24 K61 ["ParameterPane"]
      491 GETUPVAL                         R25 0
      492 GETTABLEKS                       R25 R25 K22 ["createElement"]
      494 GETUPVAL                         R26 0
      495 GETTABLEKS                       R26 R26 K86 ["Fragment"]
      497 NEWTABLE                         R27 0 0
      499 GETTABLEKS                       R28 R0 K87 ["children"]
      501 CALL                             R25 3 1
      502 SETTABLEKS                       R25 R24 K62 ["Children"]
      504 CALL                             R21 3 1
      505 SETTABLEKS                       R21 R20 K52 ["Contexts"]
      507 CALL                             R17 3 -1
      508 RETURN                           R17 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K6 [{"initialGraphRect", "initialViewportPosition", "initialZoomRatio", "renderStepped"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETTABLEKS                       R4 R0 K3 ["initialViewportPosition"]
       13 SETTABLEKS                       R4 R3 K3 ["initialViewportPosition"]
       15 GETTABLEKS                       R4 R0 K4 ["initialZoomRatio"]
       17 SETTABLEKS                       R4 R3 K4 ["initialZoomRatio"]
       19 GETTABLEKS                       R4 R0 K5 ["renderStepped"]
       21 SETTABLEKS                       R4 R3 K5 ["renderStepped"]
       23 DUPTABLE                         R4 K8 [{"Inner"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"childrenBehindNodes", "onSaveViewState"}]
       29 GETTABLEKS                       R8 R0 K9 ["childrenBehindNodes"]
       31 SETTABLEKS                       R8 R7 K9 ["childrenBehindNodes"]
       33 GETTABLEKS                       R8 R0 K10 ["onSaveViewState"]
       35 SETTABLEKS                       R8 R7 K10 ["onSaveViewState"]
       37 GETTABLEKS                       R8 R0 K12 ["children"]
       39 CALL                             R5 3 1
       40 SETTABLEKS                       R5 R4 K7 ["Inner"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CanvasOverlayContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["CompositorConnectionContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["CompositorCurveDragContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["CompositorNodes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["Foundation"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["GraphContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K15 ["Parent"]
       59 GETTABLEKS                       R9 R9 K18 ["Graphing"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETIMPORT                        R10 K5 [script]
       66 GETTABLEKS                       R10 R10 K19 ["GraphingCanvasBackground"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K10 ["Components"]
       73 GETTABLEKS                       R11 R11 K20 ["GraphingCanvasBackgroundDragContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K10 ["Components"]
       80 GETTABLEKS                       R12 R12 K21 ["GraphingCanvasBackgroundDragger"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETIMPORT                        R13 K5 [script]
       87 GETTABLEKS                       R13 R13 K22 ["GraphingCanvasContextMenuAnchor"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETIMPORT                        R14 K5 [script]
       94 GETTABLEKS                       R14 R14 K23 ["GraphingCanvasKeyboardInput"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETIMPORT                        R15 K5 [script]
      101 GETTABLEKS                       R15 R15 K24 ["GraphingCanvasScroller"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K9 [require]
      106 GETTABLEKS                       R16 R1 K10 ["Components"]
      108 GETTABLEKS                       R16 R16 K25 ["InsertNodeContext"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETTABLEKS                       R17 R1 K10 ["Components"]
      115 GETTABLEKS                       R17 R17 K26 ["ModifierKeysContext"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETIMPORT                        R18 K5 [script]
      122 GETTABLEKS                       R18 R18 K27 ["NodeRightClickMenuAnchor"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R19 R1 K10 ["Components"]
      129 GETTABLEKS                       R19 R19 K28 ["NodeSelectionBox"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K10 ["Components"]
      136 GETTABLEKS                       R20 R20 K29 ["NodeSelectionBoxDragContext"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K9 [require]
      141 GETTABLEKS                       R21 R1 K10 ["Components"]
      143 GETTABLEKS                       R21 R21 K30 ["ParameterContext"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K9 [require]
      148 GETTABLEKS                       R22 R1 K10 ["Components"]
      150 GETTABLEKS                       R22 R22 K31 ["ParameterPane"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K9 [require]
      155 GETTABLEKS                       R23 R1 K10 ["Components"]
      157 GETTABLEKS                       R23 R23 K32 ["ParameterPaneBoundsContext"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K9 [require]
      162 GETTABLEKS                       R24 R1 K15 ["Parent"]
      164 GETTABLEKS                       R24 R24 K33 ["React"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K9 [require]
      169 GETTABLEKS                       R25 R1 K15 ["Parent"]
      171 GETTABLEKS                       R25 R25 K34 ["ReactUtils"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K9 [require]
      176 GETTABLEKS                       R26 R1 K15 ["Parent"]
      178 GETTABLEKS                       R26 R26 K35 ["Signals"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R1 K15 ["Parent"]
      185 GETTABLEKS                       R27 R27 K36 ["TestLoader"]
      187 CALL                             R26 1 1
      188 GETIMPORT                        R27 K9 [require]
      190 GETTABLEKS                       R28 R1 K10 ["Components"]
      192 GETTABLEKS                       R28 R28 K37 ["ViewportRectContext"]
      194 CALL                             R27 1 1
      195 GETIMPORT                        R28 K9 [require]
      197 GETTABLEKS                       R29 R1 K38 ["Hooks"]
      199 GETTABLEKS                       R29 R29 K39 ["useAbsoluteSize"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K9 [require]
      204 GETTABLEKS                       R30 R1 K40 ["Flags"]
      206 GETTABLEKS                       R30 R30 K41 ["getFFlagAnimGraphUI_FixCanvasRepaintOnRemount"]
      208 CALL                             R29 1 1
      209 DUPCLOSURE                       R30 K42 [PROTO_14]
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R28
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R0
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R19
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R21
      239 DUPCLOSURE                       R31 K43 [PROTO_15]
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R30
      243 RETURN                           R31 1
