PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["LUAU_ANALYZE_ERROR"]
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
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+15]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["addUserItems"]
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 NAMECALL                         R1 R1 K3 ["report"]
       13 CALL                             R1 4 0
       14 GETUPVAL                         R1 2
       15 DUPTABLE                         R2 K5 [{"type"}]
       16 LOADK                            R3 K6 ["noSelection"]
       17 SETTABLEKS                       R3 R2 K4 ["type"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 3
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 GETTABLEKS                       R3 R1 K7 ["invalidInstances"]
       26 LENGTH                           R2 R3
       27 LOADN                            R3 0
       28 JUMPIFNOTLT                      R3 R2 ; [+15]
       30 GETUPVAL                         R2 2
       31 DUPTABLE                         R3 K10 [{"type", "instances", "extraErrors"}]
       32 LOADK                            R4 K11 ["noPalette"]
       33 SETTABLEKS                       R4 R3 K4 ["type"]
       35 GETTABLEKS                       R4 R1 K7 ["invalidInstances"]
       37 SETTABLEKS                       R4 R3 K8 ["instances"]
       39 GETTABLEKS                       R4 R1 K9 ["extraErrors"]
       41 SETTABLEKS                       R4 R3 K9 ["extraErrors"]
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 1
       45 LOADK                            R4 K2 ["addUserItems"]
       46 LENGTH                           R5 R0
       47 LENGTH                           R7 R0
       48 GETTABLEKS                       R9 R1 K7 ["invalidInstances"]
       50 LENGTH                           R8 R9
       51 SUB                              R6 R7 R8
       52 NAMECALL                         R2 R2 K3 ["report"]
       54 CALL                             R2 4 0
       55 GETTABLEKS                       R2 R1 K12 ["activePalette"]
       57 JUMPIFEQKNIL                     R2 ; [+9]
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R2 R3 K13 ["openPalette"]
       62 GETTABLEKS                       R4 R1 K12 ["activePalette"]
       64 GETTABLEKS                       R3 R4 K14 ["Key"]
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

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
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useContext"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K3 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K4 ["useCallback"]
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
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["type"]
        6 JUMPIFNOTEQKS                    R0 K1 ["noPalette"] ; [+30]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["instances"]
       11 LENGTH                           R0 R1
       12 JUMPIFNOTEQKN                    R0 K3 [1] ; [+24]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["extraErrors"]
       17 JUMPIFEQKNIL                     R0 ; [+19]
       19 GETIMPORT                        R0 K6 [next]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K4 ["extraErrors"]
       24 CALL                             R0 1 2
       25 LOADB                            R2 0
       26 JUMPIFNOTEQKS                    R1 K7 ["OnlyOneShoe"] ; [+9]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K2 ["instances"]
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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useState"]
       12 LOADNIL                          R4
       13 CALL                             R3 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R4
       24 CALL                             R6 1 1
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K4 ["new"]
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
      104 GETUPVAL                         R16 5
      105 GETTABLEKS                       R15 R16 K23 ["collectArray"]
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
      120 JUMPIFNOT                        R3 ; [+30]
      121 GETTABLEKS                       R11 R3 K5 ["type"]
      123 JUMPIFNOTEQKS                    R11 K6 ["noPalette"] ; [+27]
      125 GETTABLEKS                       R11 R3 K9 ["extraErrors"]
      127 JUMPIFNOT                        R11 ; [+23]
      128 GETIMPORT                        R11 K11 [next]
      130 GETTABLEKS                       R12 R3 K9 ["extraErrors"]
      132 CALL                             R11 1 1
      133 JUMPIFEQKNIL                     R11 ; [+17]
      135 GETIMPORT                        R13 K22 [table.concat]
      137 GETUPVAL                         R15 5
      138 GETTABLEKS                       R14 R15 K23 ["collectArray"]
      140 GETTABLEKS                       R15 R3 K9 ["extraErrors"]
      142 NEWCLOSURE                       R16 P3
      143 CAPTURE                          VAL R1
      144 CALL                             R14 2 1
      145 LOADK                            R15 K26 [" "]
      146 CALL                             R13 2 1
      147 MOVE                             R11 R13
      148 LOADK                            R12 K26 [" "]
      149 CONCAT                           R10 R11 R12
      150 JUMP                             ; [+1]
      151 LOADK                            R10 K27 [""]
      152 GETUPVAL                         R12 2
      153 GETTABLEKS                       R11 R12 K2 ["useState"]
      155 LOADN                            R12 100
      156 CALL                             R11 1 2
      157 GETUPVAL                         R13 6
      158 NAMECALL                         R13 R13 K0 ["use"]
      160 CALL                             R13 1 1
      161 NAMECALL                         R13 R13 K28 ["get"]
      163 CALL                             R13 1 1
      164 GETUPVAL                         R15 2
      165 GETTABLEKS                       R14 R15 K2 ["useState"]
      167 NEWCLOSURE                       R15 P4
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          VAL R13
      170 CALL                             R14 1 2
      171 GETUPVAL                         R16 8
      172 GETTABLEKS                       R17 R13 K29 ["SelectionChanged"]
      174 NEWCLOSURE                       R18 P5
      175 CAPTURE                          VAL R15
      176 CAPTURE                          UPVAL U7
      177 CAPTURE                          VAL R13
      178 NEWTABLE                         R19 0 0
      180 CALL                             R16 3 0
      181 GETUPVAL                         R17 2
      182 GETTABLEKS                       R16 R17 K30 ["createElement"]
      184 GETUPVAL                         R17 9
      185 DUPTABLE                         R18 K33 [{"LayoutOrder", "Size"}]
      186 GETTABLEKS                       R19 R0 K31 ["LayoutOrder"]
      188 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      190 GETIMPORT                        R19 K35 [UDim2.new]
      192 LOADN                            R20 1
      193 LOADN                            R21 0
      194 LOADN                            R22 0
      195 GETTABLEKS                       R23 R2 K36 ["Height"]
      197 CALL                             R19 4 1
      198 SETTABLEKS                       R19 R18 K32 ["Size"]
      200 DUPTABLE                         R19 K40 [{"Padding", "Inner", "FailureDialog"}]
      201 GETUPVAL                         R21 2
      202 GETTABLEKS                       R20 R21 K30 ["createElement"]
      204 LOADK                            R21 K41 ["UIPadding"]
      205 DUPTABLE                         R22 K46 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      206 GETIMPORT                        R23 K48 [UDim.new]
      208 LOADN                            R24 0
      209 GETTABLEKS                       R25 R2 K42 ["PaddingTop"]
      211 CALL                             R23 2 1
      212 SETTABLEKS                       R23 R22 K42 ["PaddingTop"]
      214 GETIMPORT                        R23 K48 [UDim.new]
      216 LOADN                            R24 0
      217 GETTABLEKS                       R25 R2 K43 ["PaddingLeft"]
      219 CALL                             R23 2 1
      220 SETTABLEKS                       R23 R22 K43 ["PaddingLeft"]
      222 GETIMPORT                        R23 K48 [UDim.new]
      224 LOADN                            R24 0
      225 GETTABLEKS                       R25 R2 K44 ["PaddingRight"]
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K44 ["PaddingRight"]
      230 GETIMPORT                        R23 K48 [UDim.new]
      232 LOADN                            R24 0
      233 GETTABLEKS                       R25 R2 K45 ["PaddingBottom"]
      235 CALL                             R23 2 1
      236 SETTABLEKS                       R23 R22 K45 ["PaddingBottom"]
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K37 ["Padding"]
      241 GETUPVAL                         R21 2
      242 GETTABLEKS                       R20 R21 K30 ["createElement"]
      244 GETUPVAL                         R21 10
      245 DUPTABLE                         R22 K53 [{"OnClick", "Style", "Tooltip", "DisableHover"}]
      246 SETTABLEKS                       R6 R22 K49 ["OnClick"]
      248 LOADK                            R23 K54 ["Round"]
      249 SETTABLEKS                       R23 R22 K50 ["Style"]
      251 JUMPIF                           R14 ; [+6]
      252 LOADK                            R25 K13 ["AddItems"]
      253 LOADK                            R26 K55 ["FailedAddHint"]
      254 NAMECALL                         R23 R1 K15 ["getText"]
      256 CALL                             R23 3 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R23
      259 SETTABLEKS                       R23 R22 K51 ["Tooltip"]
      261 NOT                              R23 R14
      262 SETTABLEKS                       R23 R22 K52 ["DisableHover"]
      264 DUPTABLE                         R23 K57 [{"Image"}]
      265 GETUPVAL                         R25 2
      266 GETTABLEKS                       R24 R25 K30 ["createElement"]
      268 GETUPVAL                         R25 11
      269 DUPTABLE                         R26 K61 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      270 GETIMPORT                        R27 K63 [Vector2.new]
      272 LOADK                            R28 K64 [0.5]
      273 LOADK                            R29 K64 [0.5]
      274 CALL                             R27 2 1
      275 SETTABLEKS                       R27 R26 K58 ["AnchorPoint"]
      277 GETTABLEKS                       R27 R2 K56 ["Image"]
      279 SETTABLEKS                       R27 R26 K56 ["Image"]
      281 JUMPIF                           R14 ; [+3]
      282 GETTABLEKS                       R27 R2 K65 ["ImageColorDisabled"]
      284 JUMP                             ; [+2]
      285 GETTABLEKS                       R27 R2 K66 ["ImageColor"]
      287 SETTABLEKS                       R27 R26 K59 ["ImageColor3"]
      289 GETIMPORT                        R27 K68 [UDim2.fromScale]
      291 LOADK                            R28 K64 [0.5]
      292 LOADK                            R29 K64 [0.5]
      293 CALL                             R27 2 1
      294 SETTABLEKS                       R27 R26 K60 ["Position"]
      296 GETIMPORT                        R27 K70 [UDim2.fromOffset]
      298 GETTABLEKS                       R28 R2 K71 ["ImageSize"]
      300 GETTABLEKS                       R29 R2 K71 ["ImageSize"]
      302 CALL                             R27 2 1
      303 SETTABLEKS                       R27 R26 K32 ["Size"]
      305 CALL                             R24 2 1
      306 SETTABLEKS                       R24 R23 K56 ["Image"]
      308 CALL                             R20 3 1
      309 SETTABLEKS                       R20 R19 K38 ["Inner"]
      311 JUMPIFEQKNIL                     R3 ; [+245]
      313 GETUPVAL                         R21 2
      314 GETTABLEKS                       R20 R21 K30 ["createElement"]
      316 GETUPVAL                         R21 12
      317 DUPTABLE                         R22 K80 [{"Title", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment"}]
      318 JUMPIFEQKNIL                     R3 ; [+30]
      320 GETTABLEKS                       R25 R3 K5 ["type"]
      322 JUMPIFNOTEQKS                    R25 K6 ["noPalette"] ; [+26]
      324 GETTABLEKS                       R26 R3 K7 ["instances"]
      326 LENGTH                           R25 R26
      327 JUMPIFNOTEQKN                    R25 K8 [1] ; [+21]
      329 GETTABLEKS                       R25 R3 K9 ["extraErrors"]
      331 JUMPIFEQKNIL                     R25 ; [+17]
      333 GETIMPORT                        R25 K11 [next]
      335 GETTABLEKS                       R26 R3 K9 ["extraErrors"]
      337 CALL                             R25 1 2
      338 LOADB                            R24 0
      339 JUMPIFNOTEQKS                    R26 K12 ["OnlyOneShoe"] ; [+10]
      341 GETTABLEKS                       R28 R3 K7 ["instances"]
      343 GETTABLEN                        R27 R28 1
      344 JUMPIFEQ                         R27 R25 ; [+2]
      346 LOADB                            R24 0 +1
      347 LOADB                            R24 1
      348 JUMP                             ; [+1]
      349 LOADB                            R24 0
      350 JUMPIFNOT                        R24 ; [+6]
      351 LOADK                            R25 K13 ["AddItems"]
      352 LOADK                            R26 K81 ["WarningTitle"]
      353 NAMECALL                         R23 R1 K15 ["getText"]
      355 CALL                             R23 3 1
      356 JUMP                             ; [+5]
      357 LOADK                            R25 K13 ["AddItems"]
      358 LOADK                            R26 K82 ["FailedTitle"]
      359 NAMECALL                         R23 R1 K15 ["getText"]
      361 CALL                             R23 3 1
      362 SETTABLEKS                       R23 R22 K72 ["Title"]
      364 LOADB                            R23 1
      365 SETTABLEKS                       R23 R22 K73 ["Enabled"]
      367 GETIMPORT                        R23 K63 [Vector2.new]
      369 LOADN                            R24 94
      370 MOVE                             R25 R11
      371 CALL                             R23 2 1
      372 SETTABLEKS                       R23 R22 K74 ["MinContentSize"]
      374 LOADB                            R23 1
      375 SETTABLEKS                       R23 R22 K75 ["Modal"]
      377 SETTABLEKS                       R5 R22 K76 ["OnClose"]
      379 SETTABLEKS                       R5 R22 K77 ["OnButtonPressed"]
      381 NEWTABLE                         R23 0 1
      383 DUPTABLE                         R24 K85 [{"Key", "Text"}]
      384 LOADK                            R25 K86 ["OK"]
      385 SETTABLEKS                       R25 R24 K83 ["Key"]
      387 LOADK                            R27 K13 ["AddItems"]
      388 LOADK                            R28 K86 ["OK"]
      389 NAMECALL                         R25 R1 K15 ["getText"]
      391 CALL                             R25 3 1
      392 SETTABLEKS                       R25 R24 K84 ["Text"]
      394 SETLIST                          R23 R24 1 [1]
      396 SETTABLEKS                       R23 R22 K78 ["Buttons"]
      398 GETIMPORT                        R23 K90 [Enum.HorizontalAlignment.Center]
      400 SETTABLEKS                       R23 R22 K79 ["ButtonHorizontalAlignment"]
      402 DUPTABLE                         R23 K92 [{"Contents"}]
      403 GETUPVAL                         R25 2
      404 GETTABLEKS                       R24 R25 K30 ["createElement"]
      406 GETUPVAL                         R25 9
      407 NEWTABLE                         R26 8 0
      409 GETIMPORT                        R27 K95 [Enum.AutomaticSize.Y]
      411 SETTABLEKS                       R27 R26 K93 ["AutomaticSize"]
      413 GETIMPORT                        R27 K98 [Enum.FillDirection.Vertical]
      415 SETTABLEKS                       R27 R26 K99 ["Layout"]
      417 GETIMPORT                        R27 K90 [Enum.HorizontalAlignment.Center]
      419 SETTABLEKS                       R27 R26 K88 ["HorizontalAlignment"]
      421 GETIMPORT                        R27 K102 [Enum.VerticalAlignment.Top]
      423 SETTABLEKS                       R27 R26 K100 ["VerticalAlignment"]
      425 GETTABLEKS                       R27 R2 K103 ["FailureDialogSpacing"]
      427 SETTABLEKS                       R27 R26 K104 ["Spacing"]
      429 GETUPVAL                         R29 2
      430 GETTABLEKS                       R28 R29 K105 ["Change"]
      432 GETTABLEKS                       R27 R28 K106 ["AbsoluteSize"]
      434 NEWCLOSURE                       R28 P6
      435 CAPTURE                          VAL R12
      436 SETTABLE                         R28 R26 R27
      437 DUPTABLE                         R27 K108 [{"Title", "Hint"}]
      438 MOVE                             R28 R9
      439 JUMPIFNOT                        R28 ; [+35]
      440 GETUPVAL                         R29 2
      441 GETTABLEKS                       R28 R29 K30 ["createElement"]
      443 GETUPVAL                         R29 13
      444 DUPTABLE                         R30 K112 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      445 GETIMPORT                        R31 K95 [Enum.AutomaticSize.Y]
      447 SETTABLEKS                       R31 R30 K93 ["AutomaticSize"]
      449 GETIMPORT                        R31 K114 [Enum.Font.SourceSansBold]
      451 SETTABLEKS                       R31 R30 K109 ["Font"]
      453 NAMECALL                         R31 R7 K115 ["getNextOrder"]
      455 CALL                             R31 1 1
      456 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      458 GETIMPORT                        R31 K68 [UDim2.fromScale]
      460 LOADN                            R32 1
      461 LOADN                            R33 0
      462 CALL                             R31 2 1
      463 SETTABLEKS                       R31 R30 K32 ["Size"]
      465 SETTABLEKS                       R9 R30 K84 ["Text"]
      467 LOADB                            R31 1
      468 SETTABLEKS                       R31 R30 K110 ["TextWrapped"]
      470 GETIMPORT                        R31 K117 [Enum.TextXAlignment.Left]
      472 SETTABLEKS                       R31 R30 K111 ["TextXAlignment"]
      474 CALL                             R28 2 1
      475 SETTABLEKS                       R28 R27 K72 ["Title"]
      477 GETUPVAL                         R29 2
      478 GETTABLEKS                       R28 R29 K30 ["createElement"]
      480 GETUPVAL                         R29 13
      481 DUPTABLE                         R30 K118 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      482 GETIMPORT                        R31 K95 [Enum.AutomaticSize.Y]
      484 SETTABLEKS                       R31 R30 K93 ["AutomaticSize"]
      486 NAMECALL                         R31 R7 K115 ["getNextOrder"]
      488 CALL                             R31 1 1
      489 SETTABLEKS                       R31 R30 K31 ["LayoutOrder"]
      491 GETIMPORT                        R31 K68 [UDim2.fromScale]
      493 LOADN                            R32 1
      494 LOADN                            R33 0
      495 CALL                             R31 2 1
      496 SETTABLEKS                       R31 R30 K32 ["Size"]
      498 JUMPIFEQKNIL                     R3 ; [+30]
      500 GETTABLEKS                       R33 R3 K5 ["type"]
      502 JUMPIFNOTEQKS                    R33 K6 ["noPalette"] ; [+26]
      504 GETTABLEKS                       R34 R3 K7 ["instances"]
      506 LENGTH                           R33 R34
      507 JUMPIFNOTEQKN                    R33 K8 [1] ; [+21]
      509 GETTABLEKS                       R33 R3 K9 ["extraErrors"]
      511 JUMPIFEQKNIL                     R33 ; [+17]
      513 GETIMPORT                        R33 K11 [next]
      515 GETTABLEKS                       R34 R3 K9 ["extraErrors"]
      517 CALL                             R33 1 2
      518 LOADB                            R32 0
      519 JUMPIFNOTEQKS                    R34 K12 ["OnlyOneShoe"] ; [+10]
      521 GETTABLEKS                       R36 R3 K7 ["instances"]
      523 GETTABLEN                        R35 R36 1
      524 JUMPIFEQ                         R35 R33 ; [+2]
      526 LOADB                            R32 0 +1
      527 LOADB                            R32 1
      528 JUMP                             ; [+1]
      529 LOADB                            R32 0
      530 JUMPIFNOT                        R32 ; [+2]
      531 MOVE                             R31 R10
      532 JUMP                             ; [+7]
      533 MOVE                             R32 R10
      534 LOADK                            R35 K13 ["AddItems"]
      535 LOADK                            R36 K55 ["FailedAddHint"]
      536 NAMECALL                         R33 R1 K15 ["getText"]
      538 CALL                             R33 3 1
      539 CONCAT                           R31 R32 R33
      540 SETTABLEKS                       R31 R30 K84 ["Text"]
      542 LOADB                            R31 1
      543 SETTABLEKS                       R31 R30 K110 ["TextWrapped"]
      545 GETIMPORT                        R31 K117 [Enum.TextXAlignment.Left]
      547 SETTABLEKS                       R31 R30 K111 ["TextXAlignment"]
      549 CALL                             R28 2 1
      550 SETTABLEKS                       R28 R27 K107 ["Hint"]
      552 CALL                             R24 3 1
      553 SETTABLEKS                       R24 R23 K91 ["Contents"]
      555 CALL                             R20 3 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R20
      558 SETTABLEKS                       R20 R19 K39 ["FailureDialog"]
      560 CALL                             R16 3 -1
      561 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["AvatarScreenContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Resources"]
       43 GETTABLEKS                       R6 R7 K14 ["CatalogItems"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Util"]
       52 GETTABLEKS                       R7 R8 K16 ["SelectionWrapper"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K17 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K18 ["useAddInstancesToUserCatalogAndEquip"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K10 ["Src"]
       68 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       70 GETTABLEKS                       R9 R10 K19 ["useEventConnection"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K10 ["Src"]
       77 GETTABLEKS                       R11 R12 K15 ["Util"]
       79 GETTABLEKS                       R10 R11 K20 ["Constants"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K10 ["Src"]
       86 GETTABLEKS                       R12 R13 K13 ["Resources"]
       88 GETTABLEKS                       R11 R12 K21 ["Theme"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K10 ["Src"]
       95 GETTABLEKS                       R12 R13 K22 ["Types"]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R12 R2 K23 ["UI"]
      100 GETTABLEKS                       R13 R12 K24 ["Button"]
      102 GETTABLEKS                       R14 R12 K25 ["Image"]
      104 GETTABLEKS                       R15 R12 K26 ["Pane"]
      106 GETTABLEKS                       R16 R12 K27 ["StyledDialog"]
      108 GETTABLEKS                       R17 R12 K28 ["TextLabel"]
      110 GETTABLEKS                       R19 R2 K29 ["ContextServices"]
      112 GETTABLEKS                       R18 R19 K30 ["Analytics"]
      114 GETTABLEKS                       R20 R2 K29 ["ContextServices"]
      116 GETTABLEKS                       R19 R20 K31 ["Localization"]
      118 GETTABLEKS                       R21 R2 K29 ["ContextServices"]
      120 GETTABLEKS                       R20 R21 K32 ["Stylizer"]
      122 GETTABLEKS                       R22 R2 K15 ["Util"]
      124 GETTABLEKS                       R21 R22 K33 ["LayoutOrderIterator"]
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
