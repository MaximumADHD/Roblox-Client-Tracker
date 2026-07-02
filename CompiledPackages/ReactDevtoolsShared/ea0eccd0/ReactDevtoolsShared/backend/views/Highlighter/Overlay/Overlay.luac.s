PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsolutePosition"]
        4 GETIMPORT                        R3 K4 [Rect.new]
        6 MOVE                             R4 R2
        7 ADD                              R5 R2 R1
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["layerCollector"]
       11 GETIMPORT                        R1 K5 [Instance.new]
       13 LOADK                            R2 K6 ["Folder"]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K7 ["container"]
       17 GETTABLEKS                       R1 R0 K7 ["container"]
       19 LOADK                            R2 K8 ["REACT_DEVTOOLS_OVERLAY"]
       20 SETTABLEKS                       R2 R1 K9 ["Name"]
       22 GETIMPORT                        R1 K5 [Instance.new]
       24 LOADK                            R2 K10 ["ImageButton"]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K11 ["containerFrame"]
       28 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       30 LOADK                            R2 K12 ["OverlayContainer"]
       31 SETTABLEKS                       R2 R1 K9 ["Name"]
       33 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       35 GETIMPORT                        R2 K15 [UDim2.fromScale]
       37 LOADN                            R3 1
       38 LOADN                            R4 1
       39 CALL                             R2 2 1
       40 SETTABLEKS                       R2 R1 K16 ["Size"]
       42 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       44 LOADN                            R2 1
       45 SETTABLEKS                       R2 R1 K17 ["BackgroundTransparency"]
       47 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       49 LOADK                            R2 K18 [""]
       50 SETTABLEKS                       R2 R1 K19 ["Image"]
       52 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       54 LOADK                            R2 K20 [1000000]
       55 SETTABLEKS                       R2 R1 K21 ["ZIndex"]
       57 GETTABLEKS                       R1 R0 K11 ["containerFrame"]
       59 GETTABLEKS                       R2 R0 K7 ["container"]
       61 SETTABLEKS                       R2 R1 K22 ["Parent"]
       63 GETIMPORT                        R1 K5 [Instance.new]
       65 LOADK                            R2 K23 ["CanvasGroup"]
       66 CALL                             R1 1 1
       67 SETTABLEKS                       R1 R0 K24 ["rectContainer"]
       69 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
       71 LOADK                            R2 K25 ["OverlayRects"]
       72 SETTABLEKS                       R2 R1 K9 ["Name"]
       74 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
       76 GETIMPORT                        R2 K15 [UDim2.fromScale]
       78 LOADN                            R3 1
       79 LOADN                            R4 1
       80 CALL                             R2 2 1
       81 SETTABLEKS                       R2 R1 K16 ["Size"]
       83 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
       85 LOADN                            R2 1
       86 SETTABLEKS                       R2 R1 K17 ["BackgroundTransparency"]
       88 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
       90 LOADK                            R2 K26 [0.3]
       91 SETTABLEKS                       R2 R1 K27 ["GroupTransparency"]
       93 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
       95 LOADK                            R2 K28 [1000001]
       96 SETTABLEKS                       R2 R1 K21 ["ZIndex"]
       98 GETTABLEKS                       R1 R0 K24 ["rectContainer"]
      100 GETTABLEKS                       R2 R0 K11 ["containerFrame"]
      102 SETTABLEKS                       R2 R1 K22 ["Parent"]
      104 GETUPVAL                         R1 1
      105 GETTABLEKS                       R1 R1 K4 ["new"]
      107 GETTABLEKS                       R2 R0 K11 ["containerFrame"]
      109 CALL                             R1 1 1
      110 SETTABLEKS                       R1 R0 K29 ["tip"]
      112 NEWTABLE                         R1 0 0
      114 SETTABLEKS                       R1 R0 K30 ["rects"]
      116 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tip"]
        2 NAMECALL                         R1 R1 K1 ["remove"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["rects"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 NAMECALL                         R6 R5 K1 ["remove"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-4]
       15 GETIMPORT                        R1 K5 [table.clear]
       17 GETTABLEKS                       R2 R0 K2 ["rects"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K6 ["container"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K7 ["Parent"]
       25 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["LayerCollector"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+12]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["layerCollector"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["layerCollector"]
       12 NAMECALL                         R1 R0 K3 ["IsDescendantOf"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_4:
        0 GETTABLEN                        R3 R1 1
        1 LOADK                            R5 K0 ["LayerCollector"]
        2 NAMECALL                         R3 R3 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R3 R0 K2 ["layerCollector"]
        7 GETTABLEKS                       R3 R0 K2 ["layerCollector"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+15]
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 LOADK                            R10 K0 ["LayerCollector"]
       16 NAMECALL                         R8 R7 K3 ["IsA"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+3]
       20 SETTABLEKS                       R7 R0 K2 ["layerCollector"]
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R3 2 ; [-9]
       25 GETTABLEKS                       R3 R0 K4 ["container"]
       27 GETTABLEKS                       R4 R0 K2 ["layerCollector"]
       29 SETTABLEKS                       R4 R3 K5 ["Parent"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K6 ["filter"]
       34 MOVE                             R4 R1
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R0
       37 CALL                             R3 2 1
       38 LENGTH                           R7 R3
       39 ADDK                             R6 R7 K7 [1]
       40 GETTABLEKS                       R7 R0 K8 ["rects"]
       42 LENGTH                           R4 R7
       43 LOADN                            R5 1
       44 FORNPREP                         R4
       45 GETTABLEKS                       R8 R0 K8 ["rects"]
       47 GETTABLE                         R7 R8 R6
       48 NAMECALL                         R7 R7 K9 ["remove"]
       50 CALL                             R7 1 0
       51 FORNLOOP                         R4
       52 LENGTH                           R4 R3
       53 JUMPIFNOTEQKN                    R4 K10 [0] ; [+2]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R5 R0 K8 ["rects"]
       58 LENGTH                           R4 R5
       59 LENGTH                           R5 R3
       60 JUMPIFNOTLT                      R4 R5 ; [+14]
       62 GETTABLEKS                       R5 R0 K8 ["rects"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K11 ["new"]
       67 GETTABLEKS                       R7 R0 K12 ["rectContainer"]
       69 CALL                             R6 1 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R4 K15 [table.insert]
       73 CALL                             R4 -1 0
       74 JUMPBACK                         ; [-19]
       75 DUPTABLE                         R4 K22 [{["top"] = ∞, ["right"] = -∞, ["bottom"] = -∞, ["left"] = ∞}]
       76 MOVE                             R5 R3
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 GETTABLEKS                       R11 R9 K23 ["AbsoluteSize"]
       82 GETTABLEKS                       R12 R9 K24 ["AbsolutePosition"]
       84 GETIMPORT                        R13 K26 [Rect.new]
       86 MOVE                             R14 R12
       87 ADD                              R15 R12 R11
       88 CALL                             R13 2 1
       89 MOVE                             R10 R13
       90 GETTABLEKS                       R12 R4 K16 ["top"]
       92 GETTABLEKS                       R13 R10 K27 ["Min"]
       94 GETTABLEKS                       R13 R13 K28 ["Y"]
       96 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       98 GETIMPORT                        R11 K31 [math.min]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R4 K16 ["top"]
      103 GETTABLEKS                       R12 R4 K18 ["right"]
      105 GETTABLEKS                       R13 R10 K32 ["Max"]
      107 GETTABLEKS                       R13 R13 K33 ["X"]
      109 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
      111 GETIMPORT                        R11 K35 [math.max]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R4 K18 ["right"]
      116 GETTABLEKS                       R12 R4 K20 ["bottom"]
      118 GETTABLEKS                       R13 R10 K32 ["Max"]
      120 GETTABLEKS                       R13 R13 K28 ["Y"]
      122 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
      124 GETIMPORT                        R11 K35 [math.max]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R4 K20 ["bottom"]
      129 GETTABLEKS                       R12 R4 K21 ["left"]
      131 GETTABLEKS                       R13 R10 K27 ["Min"]
      133 GETTABLEKS                       R13 R13 K33 ["X"]
      135 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      137 GETIMPORT                        R11 K31 [math.min]
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R4 K21 ["left"]
      142 GETTABLEKS                       R12 R0 K8 ["rects"]
      144 GETTABLE                         R11 R12 R8
      145 MOVE                             R14 R9
      146 NAMECALL                         R12 R11 K36 ["update"]
      148 CALL                             R12 2 0
      149 FORGLOOP                         R5 2 ; [-70]
      151 JUMPIFEQKNIL                     R2 ; [+3]
      153 JUMPIFNOTEQKS                    R2 K37 [""] ; [+45]
      155 GETTABLEN                        R5 R3 1
      156 GETTABLEKS                       R2 R5 K38 ["Name"]
      158 GETUPVAL                         R6 2
      159 GETTABLEKS                       R6 R6 K39 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
      161 JUMPIFEQKNIL                     R6 ; [+37]
      163 GETTABLEKS                       R7 R6 K40 ["rendererInterfaces"]
      165 JUMPIFEQKNIL                     R7 ; [+33]
      167 LOADNIL                          R7
      168 GETTABLEKS                       R8 R6 K40 ["rendererInterfaces"]
      170 NAMECALL                         R8 R8 K41 ["values"]
      172 CALL                             R8 1 3
      173 FORGPREP                         R8
      174 GETTABLEKS                       R13 R12 K42 ["getFiberIDForNative"]
      176 MOVE                             R14 R5
      177 LOADB                            R15 1
      178 CALL                             R13 2 1
      179 JUMPIFEQKNIL                     R13 ; [+8]
      181 GETTABLEKS                       R14 R12 K43 ["getDisplayNameForFiberID"]
      183 MOVE                             R15 R13
      184 LOADB                            R16 1
      185 CALL                             R14 2 1
      186 MOVE                             R7 R14
      187 JUMP                             ; [+2]
      188 FORGLOOP                         R8 2 ; [-15]
      190 JUMPIFEQKNIL                     R7 ; [+8]
      192 LOADK                            R8 K44 ["%* (in %*)"]
      193 MOVE                             R10 R2
      194 MOVE                             R11 R7
      195 NAMECALL                         R8 R8 K45 ["format"]
      197 CALL                             R8 3 1
      198 MOVE                             R2 R8
      199 GETTABLEKS                       R5 R0 K46 ["tip"]
      201 MOVE                             R7 R2
      202 GETTABLEKS                       R9 R4 K18 ["right"]
      204 GETTABLEKS                       R10 R4 K21 ["left"]
      206 SUB                              R8 R9 R10
      207 GETTABLEKS                       R10 R4 K20 ["bottom"]
      209 GETTABLEKS                       R11 R4 K16 ["top"]
      211 SUB                              R9 R10 R11
      212 NAMECALL                         R5 R5 K47 ["updateText"]
      214 CALL                             R5 4 0
      215 GETTABLEKS                       R6 R0 K2 ["layerCollector"]
      217 JUMPIFNOT                        R6 ; [+3]
      218 GETTABLEKS                       R5 R0 K2 ["layerCollector"]
      220 JUMP                             ; [+9]
      221 GETTABLEN                        R6 R3 1
      222 LOADK                            R8 K0 ["LayerCollector"]
      223 NAMECALL                         R6 R6 K3 ["IsA"]
      225 CALL                             R6 2 1
      226 JUMPIFNOT                        R6 ; [+2]
      227 GETTABLEN                        R5 R3 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R5
      230 JUMPIFNOT                        R5 ; [+11]
      231 GETTABLEKS                       R7 R5 K23 ["AbsoluteSize"]
      233 GETTABLEKS                       R8 R5 K24 ["AbsolutePosition"]
      235 GETIMPORT                        R9 K26 [Rect.new]
      237 MOVE                             R10 R8
      238 ADD                              R11 R8 R7
      239 CALL                             R9 2 1
      240 MOVE                             R6 R9
      241 JUMP                             ; [+13]
      242 GETIMPORT                        R6 K26 [Rect.new]
      244 GETIMPORT                        R7 K49 [Vector2.new]
      246 LOADN                            R8 0
      247 LOADN                            R9 0
      248 CALL                             R7 2 1
      249 GETIMPORT                        R8 K49 [Vector2.new]
      251 LOADK                            R9 K17 [∞]
      252 LOADK                            R10 K17 [∞]
      253 CALL                             R8 2 -1
      254 CALL                             R6 -1 1
      255 GETTABLEKS                       R7 R0 K46 ["tip"]
      257 DUPTABLE                         R9 K52 [{"top", "left", "height", "width"}]
      258 GETTABLEKS                       R10 R4 K16 ["top"]
      260 SETTABLEKS                       R10 R9 K16 ["top"]
      262 GETTABLEKS                       R10 R4 K21 ["left"]
      264 SETTABLEKS                       R10 R9 K21 ["left"]
      266 GETTABLEKS                       R11 R4 K20 ["bottom"]
      268 GETTABLEKS                       R12 R4 K16 ["top"]
      270 SUB                              R10 R11 R12
      271 SETTABLEKS                       R10 R9 K50 ["height"]
      273 GETTABLEKS                       R11 R4 K18 ["right"]
      275 GETTABLEKS                       R12 R4 K21 ["left"]
      277 SUB                              R10 R11 R12
      278 SETTABLEKS                       R10 R9 K51 ["width"]
      280 DUPTABLE                         R10 K52 [{"top", "left", "height", "width"}]
      281 GETTABLEKS                       R11 R6 K27 ["Min"]
      283 GETTABLEKS                       R11 R11 K28 ["Y"]
      285 SETTABLEKS                       R11 R10 K16 ["top"]
      287 GETTABLEKS                       R11 R6 K27 ["Min"]
      289 GETTABLEKS                       R11 R11 K33 ["X"]
      291 SETTABLEKS                       R11 R10 K21 ["left"]
      293 GETTABLEKS                       R11 R6 K53 ["Height"]
      295 SETTABLEKS                       R11 R10 K50 ["height"]
      297 GETTABLEKS                       R11 R6 K54 ["Width"]
      299 SETTABLEKS                       R11 R10 K51 ["width"]
      301 NAMECALL                         R7 R7 K55 ["updatePosition"]
      303 CALL                             R7 3 0
      304 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K2 ["Parent"]
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R1 K5 ["ReactGlobals"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K7 ["Array"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K8 ["backend"]
       31 GETTABLEKS                       R6 R6 K9 ["types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R7 R7 K2 ["Parent"]
       40 GETTABLEKS                       R7 R7 K10 ["OverlayRect"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R8 R8 K2 ["Parent"]
       49 GETTABLEKS                       R8 R8 K11 ["OverlayTip"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K12 [PROTO_0]
       53 NEWTABLE                         R9 4 0
       55 SETTABLEKS                       R9 R9 K13 ["__index"]
       57 DUPCLOSURE                       R10 K14 [PROTO_1]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R10 R9 K15 ["new"]
       62 DUPCLOSURE                       R10 K16 [PROTO_2]
       63 SETTABLEKS                       R10 R9 K17 ["remove"]
       65 DUPCLOSURE                       R10 K18 [PROTO_4]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R10 R9 K19 ["inspect"]
       71 DUPTABLE                         R10 K20 [{"new"}]
       72 GETTABLEKS                       R11 R9 K15 ["new"]
       74 SETTABLEKS                       R11 R10 K15 ["new"]
       76 RETURN                           R10 1
