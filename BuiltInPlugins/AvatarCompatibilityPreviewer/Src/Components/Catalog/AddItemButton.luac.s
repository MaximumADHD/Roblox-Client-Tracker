PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K3 [assert]
       18 CALL                             R1 2 0
       19 MOVE                             R1 R0
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R6 1
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 MOVE                             R11 R10
       28 LOADNIL                          R12
       29 LOADNIL                          R13
       30 FORGPREP                         R11
       31 GETTABLEKS                       R16 R15 K4 ["CreateCustomInstanceFromSelection"]
       33 MOVE                             R17 R5
       34 CALL                             R16 1 1
       35 JUMPIFEQKNIL                     R16 ; [+10]
       37 FASTCALL1                        TYPEOF R16 ; [+3]
       38 MOVE                             R18 R16
       39 GETIMPORT                        R17 K6 [typeof]
       41 CALL                             R17 1 1
       42 JUMPIFEQKS                       R17 K7 ["string"] ; [+3]
       44 LOADB                            R17 1
       45 RETURN                           R17 1
       46 FORGLOOP                         R11 2 ; [-16]
       48 FORGLOOP                         R6 2 ; [-22]
       50 FORGLOOP                         R1 2 ; [-28]
       52 LOADB                            R1 0
       53 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+12]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["addUserItems"]
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 NAMECALL                         R1 R1 K3 ["report"]
       13 CALL                             R1 4 0
       14 GETUPVAL                         R1 2
       15 DUPTABLE                         R2 K6 [{["type"] = "noSelection"}]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R3 R1 K7 ["invalidInstances"]
       23 LENGTH                           R2 R3
       24 LOADN                            R3 0
       25 JUMPIFNOTLT                      R3 R2 ; [+12]
       27 GETUPVAL                         R2 2
       28 DUPTABLE                         R3 K11 [{["type"] = "noPalette", ["instances"], ["extraErrors"]}]
       29 GETTABLEKS                       R4 R1 K7 ["invalidInstances"]
       31 SETTABLEKS                       R4 R3 K9 ["instances"]
       33 GETTABLEKS                       R4 R1 K10 ["extraErrors"]
       35 SETTABLEKS                       R4 R3 K10 ["extraErrors"]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 1
       39 LOADK                            R4 K2 ["addUserItems"]
       40 LENGTH                           R5 R0
       41 LENGTH                           R7 R0
       42 GETTABLEKS                       R9 R1 K7 ["invalidInstances"]
       44 LENGTH                           R8 R9
       45 SUB                              R6 R7 R8
       46 NAMECALL                         R2 R2 K3 ["report"]
       48 CALL                             R2 4 0
       49 GETTABLEKS                       R2 R1 K12 ["activePalette"]
       51 JUMPIFEQKNIL                     R2 ; [+9]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K13 ["openPalette"]
       56 GETTABLEKS                       R3 R1 K12 ["activePalette"]
       58 GETTABLEKS                       R3 R3 K14 ["Key"]
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["useContext"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K3 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 4
       31 MOVE                             R8 R2
       32 MOVE                             R9 R4
       33 MOVE                             R10 R3
       34 MOVE                             R11 R0
       35 SETLIST                          R7 R8 4 [1]
       37 CALL                             R5 2 -1
       38 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+35]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["type"]
        6 JUMPIFNOTEQKS                    R0 K1 ["noPalette"] ; [+30]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["instances"]
       11 LENGTH                           R0 R1
       12 JUMPIFNOTEQKN                    R0 K3 [1] ; [+24]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["extraErrors"]
       17 JUMPIFEQKNIL                     R0 ; [+19]
       19 GETIMPORT                        R0 K6 [next]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["extraErrors"]
       24 CALL                             R0 1 2
       25 LOADB                            R2 0
       26 JUMPIFNOTEQKS                    R1 K7 ["OnlyOneShoe"] ; [+9]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K2 ["instances"]
       31 GETTABLEN                        R3 R4 1
       32 JUMPIFEQ                         R3 R0 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R0 0
       38 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AddItems"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AddItemButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 LOADNIL                          R4
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R4
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K4 ["new"]
       28 CALL                             R7 0 1
       29 NEWCLOSURE                       R8 P1
       30 CAPTURE                          VAL R3
       31 JUMPIFNOTEQKNIL                  R3 ; [+3]
       33 LOADNIL                          R9
       34 JUMP                             ; [+85]
       35 JUMPIFEQKNIL                     R3 ; [+30]
       37 GETTABLEKS                       R11 R3 K5 ["type"]
       39 JUMPIFNOTEQKS                    R11 K6 ["noPalette"] ; [+26]
       41 GETTABLEKS                       R12 R3 K7 ["instances"]
       43 LENGTH                           R11 R12
       44 JUMPIFNOTEQKN                    R11 K8 [1] ; [+21]
       46 GETTABLEKS                       R11 R3 K9 ["extraErrors"]
       48 JUMPIFEQKNIL                     R11 ; [+17]
       50 GETIMPORT                        R11 K11 [next]
       52 GETTABLEKS                       R12 R3 K9 ["extraErrors"]
       54 CALL                             R11 1 2
       55 LOADB                            R10 0
       56 JUMPIFNOTEQKS                    R12 K12 ["OnlyOneShoe"] ; [+10]
       58 GETTABLEKS                       R14 R3 K7 ["instances"]
       60 GETTABLEN                        R13 R14 1
       61 JUMPIFEQ                         R13 R11 ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 JUMP                             ; [+1]
       66 LOADB                            R10 0
       67 JUMPIFNOT                        R10 ; [+6]
       68 LOADK                            R11 K13 ["AddItems"]
       69 LOADK                            R12 K14 ["WarningHeaderOneShoe"]
       70 NAMECALL                         R9 R1 K15 ["getText"]
       72 CALL                             R9 3 1
       73 JUMP                             ; [+46]
       74 GETTABLEKS                       R10 R3 K5 ["type"]
       76 JUMPIFNOTEQKS                    R10 K6 ["noPalette"] ; [+12]
       78 GETTABLEKS                       R11 R3 K7 ["instances"]
       80 LENGTH                           R10 R11
       81 JUMPIFNOTEQKN                    R10 K8 [1] ; [+7]
       83 LOADK                            R11 K13 ["AddItems"]
       84 LOADK                            R12 K16 ["FailedAddNoPaletteHeaderSingle"]
       85 NAMECALL                         R9 R1 K15 ["getText"]
       87 CALL                             R9 3 1
       88 JUMP                             ; [+31]
       89 GETTABLEKS                       R10 R3 K5 ["type"]
       91 JUMPIFNOTEQKS                    R10 K6 ["noPalette"] ; [+27]
       93 GETTABLEKS                       R11 R3 K7 ["instances"]
       95 LENGTH                           R10 R11
       96 LOADN                            R11 1
       97 JUMPIFNOTLT                      R11 R10 ; [+21]
       99 LOADK                            R11 K13 ["AddItems"]
      100 LOADK                            R12 K17 ["FailedAddNoPaletteHeaderMultiple"]
      101 DUPTABLE                         R13 K19 [{"items"}]
      102 GETIMPORT                        R14 K22 [table.concat]
      104 GETUPVAL                         R15 5
      105 GETTABLEKS                       R15 R15 K23 ["collectArray"]
      107 GETTABLEKS                       R16 R3 K7 ["instances"]
      109 DUPCLOSURE                       R17 K24 [PROTO_5]
      110 CALL                             R15 2 1
      111 LOADK                            R16 K25 [", "]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K18 ["items"]
      115 NAMECALL                         R9 R1 K15 ["getText"]
      117 CALL                             R9 4 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R9
      120 JUMPIFNOT                        R3 ; [+29]
      121 GETTABLEKS                       R11 R3 K5 ["type"]
      123 JUMPIFNOTEQKS                    R11 K6 ["noPalette"] ; [+26]
      125 GETTABLEKS                       R11 R3 K9 ["extraErrors"]
      127 JUMPIFNOT                        R11 ; [+22]
      128 GETIMPORT                        R11 K11 [next]
      130 GETTABLEKS                       R12 R3 K9 ["extraErrors"]
      132 CALL                             R11 1 1
      133 JUMPIFEQKNIL                     R11 ; [+16]
      135 GETIMPORT                        R11 K22 [table.concat]
      137 GETUPVAL                         R12 5
      138 GETTABLEKS                       R12 R12 K23 ["collectArray"]
      140 GETTABLEKS                       R13 R3 K9 ["extraErrors"]
      142 NEWCLOSURE                       R14 P3
      143 CAPTURE                          VAL R1
      144 CALL                             R12 2 1
      145 LOADK                            R13 K26 [" "]
      146 CALL                             R11 2 1
      147 LOADK                            R12 K26 [" "]
      148 CONCAT                           R10 R11 R12
      149 JUMP                             ; [+1]
      150 LOADK                            R10 K27 [""]
      151 GETUPVAL                         R11 2
      152 GETTABLEKS                       R11 R11 K2 ["useState"]
      154 LOADN                            R12 100
      155 CALL                             R11 1 2
      156 GETUPVAL                         R13 6
      157 NAMECALL                         R13 R13 K0 ["use"]
      159 CALL                             R13 1 1
      160 NAMECALL                         R13 R13 K28 ["get"]
      162 CALL                             R13 1 1
      163 GETUPVAL                         R14 2
      164 GETTABLEKS                       R14 R14 K2 ["useState"]
      166 NEWCLOSURE                       R15 P4
      167 CAPTURE                          UPVAL U7
      168 CAPTURE                          VAL R13
      169 CALL                             R14 1 2
      170 GETUPVAL                         R16 8
      171 GETTABLEKS                       R17 R13 K29 ["SelectionChanged"]
      173 NEWCLOSURE                       R18 P5
      174 CAPTURE                          VAL R15
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          VAL R13
      177 NEWTABLE                         R19 0 0
      179 CALL                             R16 3 0
      180 GETUPVAL                         R16 2
      181 GETTABLEKS                       R16 R16 K30 ["createElement"]
      183 GETUPVAL                         R17 9
      184 DUPTABLE                         R18 K33 [{"LayoutOrder", "Size"}]
      185 GETTABLEKS                       R19 R0 K31 ["LayoutOrder"]
      187 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      189 GETIMPORT                        R19 K35 [UDim2.new]
      191 LOADN                            R20 1
      192 LOADN                            R21 0
      193 LOADN                            R22 0
      194 GETTABLEKS                       R23 R2 K36 ["Height"]
      196 CALL                             R19 4 1
      197 SETTABLEKS                       R19 R18 K32 ["Size"]
      199 DUPTABLE                         R19 K40 [{"Padding", "Inner", "FailureDialog"}]
      200 GETUPVAL                         R20 2
      201 GETTABLEKS                       R20 R20 K30 ["createElement"]
      203 LOADK                            R21 K41 ["UIPadding"]
      204 DUPTABLE                         R22 K46 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      205 GETIMPORT                        R23 K48 [UDim.new]
      207 LOADN                            R24 0
      208 GETTABLEKS                       R25 R2 K42 ["PaddingTop"]
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K42 ["PaddingTop"]
      213 GETIMPORT                        R23 K48 [UDim.new]
      215 LOADN                            R24 0
      216 GETTABLEKS                       R25 R2 K43 ["PaddingLeft"]
      218 CALL                             R23 2 1
      219 SETTABLEKS                       R23 R22 K43 ["PaddingLeft"]
      221 GETIMPORT                        R23 K48 [UDim.new]
      223 LOADN                            R24 0
      224 GETTABLEKS                       R25 R2 K44 ["PaddingRight"]
      226 CALL                             R23 2 1
      227 SETTABLEKS                       R23 R22 K44 ["PaddingRight"]
      229 GETIMPORT                        R23 K48 [UDim.new]
      231 LOADN                            R24 0
      232 GETTABLEKS                       R25 R2 K45 ["PaddingBottom"]
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K45 ["PaddingBottom"]
      237 CALL                             R20 2 1
      238 SETTABLEKS                       R20 R19 K37 ["Padding"]
      240 GETUPVAL                         R20 2
      241 GETTABLEKS                       R20 R20 K30 ["createElement"]
      243 GETUPVAL                         R21 10
      244 DUPTABLE                         R22 K54 [{["OnClick"], ["Style"] = "Round", ["Tooltip"], ["DisableHover"]}]
      245 SETTABLEKS                       R6 R22 K49 ["OnClick"]
      247 JUMPIF                           R14 ; [+6]
      248 LOADK                            R25 K13 ["AddItems"]
      249 LOADK                            R26 K55 ["FailedAddHint"]
      250 NAMECALL                         R23 R1 K15 ["getText"]
      252 CALL                             R23 3 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R23
      255 SETTABLEKS                       R23 R22 K52 ["Tooltip"]
      257 NOT                              R23 R14
      258 SETTABLEKS                       R23 R22 K53 ["DisableHover"]
      260 DUPTABLE                         R23 K57 [{"Image"}]
      261 GETUPVAL                         R24 2
      262 GETTABLEKS                       R24 R24 K30 ["createElement"]
      264 GETUPVAL                         R25 11
      265 DUPTABLE                         R26 K61 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      266 GETIMPORT                        R27 K63 [Vector2.new]
      268 LOADK                            R28 K64 [0.5]
      269 LOADK                            R29 K64 [0.5]
      270 CALL                             R27 2 1
      271 SETTABLEKS                       R27 R26 K58 ["AnchorPoint"]
      273 GETTABLEKS                       R27 R2 K56 ["Image"]
      275 SETTABLEKS                       R27 R26 K56 ["Image"]
      277 JUMPIF                           R14 ; [+3]
      278 GETTABLEKS                       R27 R2 K65 ["ImageColorDisabled"]
      280 JUMP                             ; [+2]
      281 GETTABLEKS                       R27 R2 K66 ["ImageColor"]
      283 SETTABLEKS                       R27 R26 K59 ["ImageColor3"]
      285 GETIMPORT                        R27 K68 [UDim2.fromScale]
      287 LOADK                            R28 K64 [0.5]
      288 LOADK                            R29 K64 [0.5]
      289 CALL                             R27 2 1
      290 SETTABLEKS                       R27 R26 K60 ["Position"]
      292 GETIMPORT                        R27 K70 [UDim2.fromOffset]
      294 GETTABLEKS                       R28 R2 K71 ["ImageSize"]
      296 GETTABLEKS                       R29 R2 K71 ["ImageSize"]
      298 CALL                             R27 2 1
      299 SETTABLEKS                       R27 R26 K32 ["Size"]
      301 CALL                             R24 2 1
      302 SETTABLEKS                       R24 R23 K56 ["Image"]
      304 CALL                             R20 3 1
      305 SETTABLEKS                       R20 R19 K38 ["Inner"]
      307 JUMPIFEQKNIL                     R3 ; [+230]
      309 GETUPVAL                         R20 2
      310 GETTABLEKS                       R20 R20 K30 ["createElement"]
      312 GETUPVAL                         R21 12
      313 DUPTABLE                         R22 K81 [{["Title"], ["Enabled"] = True, ["MinContentSize"], ["Modal"] = True, ["OnClose"], ["OnButtonPressed"], ["Buttons"], ["ButtonHorizontalAlignment"]}]
      314 JUMPIFEQKNIL                     R3 ; [+30]
      316 GETTABLEKS                       R25 R3 K5 ["type"]
      318 JUMPIFNOTEQKS                    R25 K6 ["noPalette"] ; [+26]
      320 GETTABLEKS                       R26 R3 K7 ["instances"]
      322 LENGTH                           R25 R26
      323 JUMPIFNOTEQKN                    R25 K8 [1] ; [+21]
      325 GETTABLEKS                       R25 R3 K9 ["extraErrors"]
      327 JUMPIFEQKNIL                     R25 ; [+17]
      329 GETIMPORT                        R25 K11 [next]
      331 GETTABLEKS                       R26 R3 K9 ["extraErrors"]
      333 CALL                             R25 1 2
      334 LOADB                            R24 0
      335 JUMPIFNOTEQKS                    R26 K12 ["OnlyOneShoe"] ; [+10]
      337 GETTABLEKS                       R28 R3 K7 ["instances"]
      339 GETTABLEN                        R27 R28 1
      340 JUMPIFEQ                         R27 R25 ; [+2]
      342 LOADB                            R24 0 +1
      343 LOADB                            R24 1
      344 JUMP                             ; [+1]
      345 LOADB                            R24 0
      346 JUMPIFNOT                        R24 ; [+6]
      347 LOADK                            R25 K13 ["AddItems"]
      348 LOADK                            R26 K82 ["WarningTitle"]
      349 NAMECALL                         R23 R1 K15 ["getText"]
      351 CALL                             R23 3 1
      352 JUMP                             ; [+5]
      353 LOADK                            R25 K13 ["AddItems"]
      354 LOADK                            R26 K83 ["FailedTitle"]
      355 NAMECALL                         R23 R1 K15 ["getText"]
      357 CALL                             R23 3 1
      358 SETTABLEKS                       R23 R22 K72 ["Title"]
      360 GETIMPORT                        R23 K63 [Vector2.new]
      362 LOADN                            R24 350
      363 MOVE                             R25 R11
      364 CALL                             R23 2 1
      365 SETTABLEKS                       R23 R22 K75 ["MinContentSize"]
      367 SETTABLEKS                       R5 R22 K77 ["OnClose"]
      369 SETTABLEKS                       R5 R22 K78 ["OnButtonPressed"]
      371 NEWTABLE                         R23 0 1
      373 DUPTABLE                         R24 K87 [{["Key"] = "OK", ["Text"]}]
      374 LOADK                            R27 K13 ["AddItems"]
      375 LOADK                            R28 K85 ["OK"]
      376 NAMECALL                         R25 R1 K15 ["getText"]
      378 CALL                             R25 3 1
      379 SETTABLEKS                       R25 R24 K86 ["Text"]
      381 SETLIST                          R23 R24 1 [1]
      383 SETTABLEKS                       R23 R22 K79 ["Buttons"]
      385 GETIMPORT                        R23 K91 [Enum.HorizontalAlignment.Center]
      387 SETTABLEKS                       R23 R22 K80 ["ButtonHorizontalAlignment"]
      389 DUPTABLE                         R23 K93 [{"Contents"}]
      390 GETUPVAL                         R24 2
      391 GETTABLEKS                       R24 R24 K30 ["createElement"]
      393 GETUPVAL                         R25 9
      394 NEWTABLE                         R26 8 0
      396 GETIMPORT                        R27 K96 [Enum.AutomaticSize.Y]
      398 SETTABLEKS                       R27 R26 K94 ["AutomaticSize"]
      400 GETIMPORT                        R27 K99 [Enum.FillDirection.Vertical]
      402 SETTABLEKS                       R27 R26 K100 ["Layout"]
      404 GETIMPORT                        R27 K91 [Enum.HorizontalAlignment.Center]
      406 SETTABLEKS                       R27 R26 K89 ["HorizontalAlignment"]
      408 GETIMPORT                        R27 K103 [Enum.VerticalAlignment.Top]
      410 SETTABLEKS                       R27 R26 K101 ["VerticalAlignment"]
      412 GETTABLEKS                       R27 R2 K104 ["FailureDialogSpacing"]
      414 SETTABLEKS                       R27 R26 K105 ["Spacing"]
      416 GETUPVAL                         R27 2
      417 GETTABLEKS                       R27 R27 K106 ["Change"]
      419 GETTABLEKS                       R27 R27 K107 ["AbsoluteSize"]
      421 NEWCLOSURE                       R28 P6
      422 CAPTURE                          VAL R12
      423 SETTABLE                         R28 R26 R27
      424 DUPTABLE                         R27 K109 [{"Title", "Hint"}]
      425 MOVE                             R28 R9
      426 JUMPIFNOT                        R28 ; [+32]
      427 GETUPVAL                         R28 2
      428 GETTABLEKS                       R28 R28 K30 ["createElement"]
      430 GETUPVAL                         R29 13
      431 DUPTABLE                         R30 K113 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      432 GETIMPORT                        R31 K96 [Enum.AutomaticSize.Y]
      434 SETTABLEKS                       R31 R30 K94 ["AutomaticSize"]
      436 GETIMPORT                        R31 K115 [Enum.Font.SourceSansBold]
      438 SETTABLEKS                       R31 R30 K110 ["Font"]
      440 NAMECALL                         R31 R7 K116 ["getNextOrder"]
      442 CALL                             R31 1 1
      443 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      445 GETIMPORT                        R31 K68 [UDim2.fromScale]
      447 LOADN                            R32 1
      448 LOADN                            R33 0
      449 CALL                             R31 2 1
      450 SETTABLEKS                       R31 R30 K32 ["Size"]
      452 SETTABLEKS                       R9 R30 K86 ["Text"]
      454 GETIMPORT                        R31 K118 [Enum.TextXAlignment.Left]
      456 SETTABLEKS                       R31 R30 K112 ["TextXAlignment"]
      458 CALL                             R28 2 1
      459 SETTABLEKS                       R28 R27 K72 ["Title"]
      461 GETUPVAL                         R28 2
      462 GETTABLEKS                       R28 R28 K30 ["createElement"]
      464 GETUPVAL                         R29 13
      465 DUPTABLE                         R30 K119 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      466 GETIMPORT                        R31 K96 [Enum.AutomaticSize.Y]
      468 SETTABLEKS                       R31 R30 K94 ["AutomaticSize"]
      470 NAMECALL                         R31 R7 K116 ["getNextOrder"]
      472 CALL                             R31 1 1
      473 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      475 GETIMPORT                        R31 K68 [UDim2.fromScale]
      477 LOADN                            R32 1
      478 LOADN                            R33 0
      479 CALL                             R31 2 1
      480 SETTABLEKS                       R31 R30 K32 ["Size"]
      482 JUMPIFEQKNIL                     R3 ; [+30]
      484 GETTABLEKS                       R33 R3 K5 ["type"]
      486 JUMPIFNOTEQKS                    R33 K6 ["noPalette"] ; [+26]
      488 GETTABLEKS                       R34 R3 K7 ["instances"]
      490 LENGTH                           R33 R34
      491 JUMPIFNOTEQKN                    R33 K8 [1] ; [+21]
      493 GETTABLEKS                       R33 R3 K9 ["extraErrors"]
      495 JUMPIFEQKNIL                     R33 ; [+17]
      497 GETIMPORT                        R33 K11 [next]
      499 GETTABLEKS                       R34 R3 K9 ["extraErrors"]
      501 CALL                             R33 1 2
      502 LOADB                            R32 0
      503 JUMPIFNOTEQKS                    R34 K12 ["OnlyOneShoe"] ; [+10]
      505 GETTABLEKS                       R36 R3 K7 ["instances"]
      507 GETTABLEN                        R35 R36 1
      508 JUMPIFEQ                         R35 R33 ; [+2]
      510 LOADB                            R32 0 +1
      511 LOADB                            R32 1
      512 JUMP                             ; [+1]
      513 LOADB                            R32 0
      514 JUMPIFNOT                        R32 ; [+2]
      515 MOVE                             R31 R10
      516 JUMP                             ; [+7]
      517 MOVE                             R32 R10
      518 LOADK                            R35 K13 ["AddItems"]
      519 LOADK                            R36 K55 ["FailedAddHint"]
      520 NAMECALL                         R33 R1 K15 ["getText"]
      522 CALL                             R33 3 1
      523 CONCAT                           R31 R32 R33
      524 SETTABLEKS                       R31 R30 K86 ["Text"]
      526 GETIMPORT                        R31 K118 [Enum.TextXAlignment.Left]
      528 SETTABLEKS                       R31 R30 K112 ["TextXAlignment"]
      530 CALL                             R28 2 1
      531 SETTABLEKS                       R28 R27 K108 ["Hint"]
      533 CALL                             R24 3 1
      534 SETTABLEKS                       R24 R23 K92 ["Contents"]
      536 CALL                             R20 3 1
      537 JUMP                             ; [+1]
      538 LOADNIL                          R20
      539 SETTABLEKS                       R20 R19 K39 ["FailureDialog"]
      541 CALL                             R16 3 -1
      542 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["AvatarScreenContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Resources"]
       43 GETTABLEKS                       R6 R6 K14 ["CatalogItems"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["SelectionWrapper"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K18 ["useAddInstancesToUserCatalogAndEquip"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K19 ["useEventConnection"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Src"]
       77 GETTABLEKS                       R10 R10 K15 ["Util"]
       79 GETTABLEKS                       R10 R10 K20 ["Constants"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K10 ["Src"]
       86 GETTABLEKS                       R11 R11 K13 ["Resources"]
       88 GETTABLEKS                       R11 R11 K21 ["Theme"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K10 ["Src"]
       95 GETTABLEKS                       R12 R12 K22 ["Types"]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R12 R2 K23 ["UI"]
      100 GETTABLEKS                       R13 R12 K24 ["Button"]
      102 GETTABLEKS                       R14 R12 K25 ["Image"]
      104 GETTABLEKS                       R15 R12 K26 ["Pane"]
      106 GETTABLEKS                       R16 R12 K27 ["StyledDialog"]
      108 GETTABLEKS                       R17 R12 K28 ["TextLabel"]
      110 GETTABLEKS                       R18 R2 K29 ["ContextServices"]
      112 GETTABLEKS                       R18 R18 K30 ["Analytics"]
      114 GETTABLEKS                       R19 R2 K29 ["ContextServices"]
      116 GETTABLEKS                       R19 R19 K31 ["Localization"]
      118 GETTABLEKS                       R20 R2 K29 ["ContextServices"]
      120 GETTABLEKS                       R20 R20 K32 ["Stylizer"]
      122 GETTABLEKS                       R21 R2 K15 ["Util"]
      124 GETTABLEKS                       R21 R21 K33 ["LayoutOrderIterator"]
      126 DUPCLOSURE                       R22 K34 [PROTO_0]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 DUPCLOSURE                       R23 K35 [PROTO_2]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R4
      135 DUPCLOSURE                       R24 K36 [PROTO_10]
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R21
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 RETURN                           R24 1
