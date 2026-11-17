PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 NEWTABLE                         R2 0 4
        6 DUPTABLE                         R3 K3 [{"Name"}]
        7 LOADK                            R6 K4 ["TextureTable"]
        8 LOADK                            R7 K5 ["Texture"]
        9 NAMECALL                         R4 R1 K6 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K2 ["Name"]
       14 DUPTABLE                         R4 K3 [{"Name"}]
       15 LOADK                            R7 K4 ["TextureTable"]
       16 LOADK                            R8 K7 ["Id"]
       17 NAMECALL                         R5 R1 K6 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K2 ["Name"]
       22 DUPTABLE                         R5 K3 [{"Name"}]
       23 LOADK                            R8 K4 ["TextureTable"]
       24 LOADK                            R9 K8 ["Size"]
       25 NAMECALL                         R6 R1 K6 ["getText"]
       27 CALL                             R6 3 1
       28 SETTABLEKS                       R6 R5 K2 ["Name"]
       30 DUPTABLE                         R6 K3 [{"Name"}]
       31 LOADK                            R9 K4 ["TextureTable"]
       32 LOADK                            R10 K9 ["FindSelect"]
       33 NAMECALL                         R7 R1 K6 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K2 ["Name"]
       38 SETLIST                          R2 R3 4 [1]
       40 RETURN                           R2 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = -1}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Texture"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+9]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["replaceAllTexturesWithId"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["Id"]
       12 GETUPVAL                         R2 1
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R2 K5 [{["editingCell"] = -1}]
       16 NAMECALL                         R0 R0 K6 ["setState"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K7 ["refreshData"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["ZoomedInstanceIndex"]
        4 SUBK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["ZoomedInstanceIndex"]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["ZoomedInstanceIndex"]
       10 LOADN                            R1 1
       11 JUMPIFNOTLT                      R0 R1 ; [+8]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["Instances"]
       17 LENGTH                           R1 R2
       18 SETTABLEKS                       R1 R0 K1 ["ZoomedInstanceIndex"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["ZoomedInstanceIndex"]
       23 SUBK                             R2 R3 K0 [1]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["Instances"]
       27 LENGTH                           R3 R4
       28 MOD                              R1 R2 R3
       29 ADDK                             R0 R1 K0 [1]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K2 ["Instances"]
       34 MOVE                             R4 R0
       35 NAMECALL                         R1 R1 K3 ["zoomTo"]
       37 CALL                             R1 3 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["ZoomedInstanceIndex"]
        4 ADDK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["ZoomedInstanceIndex"]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["ZoomedInstanceIndex"]
       10 LOADN                            R1 1
       11 JUMPIFNOTLT                      R0 R1 ; [+8]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["Instances"]
       17 LENGTH                           R1 R2
       18 SETTABLEKS                       R1 R0 K1 ["ZoomedInstanceIndex"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["ZoomedInstanceIndex"]
       23 SUBK                             R2 R3 K0 [1]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["Instances"]
       27 LENGTH                           R3 R4
       28 MOD                              R1 R2 R3
       29 ADDK                             R0 R1 K0 [1]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K2 ["Instances"]
       34 MOVE                             R4 R0
       35 NAMECALL                         R1 R1 K3 ["zoomTo"]
       37 CALL                             R1 3 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showRightClickMenu"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Instances"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Row"]
        2 GETTABLEKS                       R2 R0 K1 ["ColumnIndex"]
        4 GETTABLEKS                       R3 R0 K2 ["RowIndex"]
        6 GETTABLEKS                       R4 R0 K3 ["Width"]
        8 JUMPIF                           R4 ; [+8]
        9 GETIMPORT                        R4 K6 [UDim.new]
       11 GETTABLEKS                       R7 R0 K8 ["Columns"]
       13 LENGTH                           R6 R7
       14 DIVRK                            R5 K7 [1] R6
       15 LOADN                            R6 0
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K9 ["TableCell"]
       20 LOADNIL                          R6
       21 GETTABLEKS                       R7 R1 K10 ["Texture"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          REF R7
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          UPVAL U1
       27 JUMPIFNOT                        R1 ; [+446]
       28 JUMPIFNOTEQKN                    R2 K7 [1] ; [+34]
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R11 R11 K11 ["doesTextureAliasContainId"]
       33 GETTABLEKS                       R12 R1 K10 ["Texture"]
       35 CALL                             R11 1 1
       36 JUMPIFNOT                        R11 ; [+7]
       37 GETIMPORT                        R10 K14 [string.format]
       39 LOADK                            R11 K15 ["rbxthumb://type=Asset&id=%s&w=150&h=150&filters="]
       40 GETTABLEKS                       R12 R1 K16 ["Id"]
       42 CALL                             R10 2 1
       43 JUMPIF                           R10 ; [+2]
       44 GETTABLEKS                       R10 R1 K10 ["Texture"]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K17 ["createElement"]
       49 GETUPVAL                         R12 4
       50 DUPTABLE                         R13 K20 [{"Image", "Size"}]
       51 SETTABLEKS                       R10 R13 K18 ["Image"]
       53 GETIMPORT                        R14 K23 [UDim2.fromScale]
       55 LOADN                            R15 1
       56 LOADN                            R16 1
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K19 ["Size"]
       60 CALL                             R11 2 1
       61 MOVE                             R6 R11
       62 JUMP                             ; [+411]
       63 JUMPIFNOTEQKN                    R2 K24 [2] ; [+202]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K25 ["state"]
       68 GETTABLEKS                       R10 R10 K26 ["editingCell"]
       70 JUMPIFNOTEQ                      R10 R3 ; [+183]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K17 ["createElement"]
       75 GETUPVAL                         R11 5
       76 DUPTABLE                         R12 K28 [{"Layout", "Size"}]
       77 GETIMPORT                        R13 K32 [Enum.FillDirection.Vertical]
       79 SETTABLEKS                       R13 R12 K27 ["Layout"]
       81 GETIMPORT                        R13 K23 [UDim2.fromScale]
       83 LOADN                            R14 1
       84 LOADN                            R15 1
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K19 ["Size"]
       88 DUPTABLE                         R13 K35 [{"TextInput", "ButtonsWrapper"}]
       89 GETUPVAL                         R14 3
       90 GETTABLEKS                       R14 R14 K17 ["createElement"]
       92 GETUPVAL                         R15 6
       93 DUPTABLE                         R16 K40 [{["Text"], ["TextXAlignment"], ["Size"], ["OnTextChanged"], ["LayoutOrder"] = 1}]
       94 SETTABLEKS                       R7 R16 K36 ["Text"]
       96 GETIMPORT                        R17 K42 [Enum.TextXAlignment.Center]
       98 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      100 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      102 GETTABLEKS                       R17 R17 K33 ["TextInput"]
      104 GETTABLEKS                       R17 R17 K19 ["Size"]
      106 SETTABLEKS                       R17 R16 K19 ["Size"]
      108 SETTABLEKS                       R8 R16 K38 ["OnTextChanged"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K33 ["TextInput"]
      113 GETUPVAL                         R14 3
      114 GETTABLEKS                       R14 R14 K17 ["createElement"]
      116 GETUPVAL                         R15 5
      117 DUPTABLE                         R16 K45 [{["Size"], ["Layout"], ["Padding"], ["LayoutOrder"] = 2}]
      118 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      120 GETTABLEKS                       R17 R17 K46 ["Buttons"]
      122 GETTABLEKS                       R17 R17 K34 ["ButtonsWrapper"]
      124 GETTABLEKS                       R17 R17 K19 ["Size"]
      126 SETTABLEKS                       R17 R16 K19 ["Size"]
      128 GETIMPORT                        R17 K48 [Enum.FillDirection.Horizontal]
      130 SETTABLEKS                       R17 R16 K27 ["Layout"]
      132 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      134 GETTABLEKS                       R17 R17 K46 ["Buttons"]
      136 GETTABLEKS                       R17 R17 K44 ["Padding"]
      138 SETTABLEKS                       R17 R16 K44 ["Padding"]
      140 DUPTABLE                         R17 K51 [{"CancelButton", "ConfirmButton"}]
      141 GETUPVAL                         R18 3
      142 GETTABLEKS                       R18 R18 K17 ["createElement"]
      144 GETUPVAL                         R19 5
      145 DUPTABLE                         R20 K53 [{["AutomaticSize"], ["Padding"], ["LayoutOrder"] = 1}]
      146 GETIMPORT                        R21 K55 [Enum.AutomaticSize.XY]
      148 SETTABLEKS                       R21 R20 K52 ["AutomaticSize"]
      150 GETTABLEKS                       R21 R5 K43 ["IdCell"]
      152 GETTABLEKS                       R21 R21 K46 ["Buttons"]
      154 GETTABLEKS                       R21 R21 K44 ["Padding"]
      156 SETTABLEKS                       R21 R20 K44 ["Padding"]
      158 NEWTABLE                         R21 0 1
      160 GETUPVAL                         R22 3
      161 GETTABLEKS                       R22 R22 K17 ["createElement"]
      163 GETUPVAL                         R23 7
      164 DUPTABLE                         R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
      165 GETTABLEKS                       R25 R5 K43 ["IdCell"]
      167 GETTABLEKS                       R25 R25 K46 ["Buttons"]
      169 GETTABLEKS                       R25 R25 K59 ["CancelIcon"]
      171 SETTABLEKS                       R25 R24 K56 ["LeftIcon"]
      173 GETIMPORT                        R25 K42 [Enum.TextXAlignment.Center]
      175 SETTABLEKS                       R25 R24 K37 ["TextXAlignment"]
      177 GETIMPORT                        R25 K23 [UDim2.fromScale]
      179 LOADN                            R26 1
      180 LOADN                            R27 1
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K19 ["Size"]
      184 SETTABLEKS                       R9 R24 K57 ["OnClick"]
      186 CALL                             R22 2 -1
      187 SETLIST                          R21 R22 -1 [1]
      189 CALL                             R18 3 1
      190 SETTABLEKS                       R18 R17 K49 ["CancelButton"]
      192 GETUPVAL                         R18 3
      193 GETTABLEKS                       R18 R18 K17 ["createElement"]
      195 GETUPVAL                         R19 5
      196 DUPTABLE                         R20 K60 [{["AutomaticSize"], ["Padding"], ["LayoutOrder"] = 2}]
      197 GETIMPORT                        R21 K55 [Enum.AutomaticSize.XY]
      199 SETTABLEKS                       R21 R20 K52 ["AutomaticSize"]
      201 GETTABLEKS                       R21 R5 K43 ["IdCell"]
      203 GETTABLEKS                       R21 R21 K46 ["Buttons"]
      205 GETTABLEKS                       R21 R21 K44 ["Padding"]
      207 SETTABLEKS                       R21 R20 K44 ["Padding"]
      209 NEWTABLE                         R21 0 1
      211 GETUPVAL                         R22 3
      212 GETTABLEKS                       R22 R22 K17 ["createElement"]
      214 GETUPVAL                         R23 7
      215 DUPTABLE                         R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
      216 GETTABLEKS                       R25 R5 K43 ["IdCell"]
      218 GETTABLEKS                       R25 R25 K46 ["Buttons"]
      220 GETTABLEKS                       R25 R25 K61 ["ConfirmIcon"]
      222 SETTABLEKS                       R25 R24 K56 ["LeftIcon"]
      224 GETIMPORT                        R25 K42 [Enum.TextXAlignment.Center]
      226 SETTABLEKS                       R25 R24 K37 ["TextXAlignment"]
      228 GETIMPORT                        R25 K23 [UDim2.fromScale]
      230 LOADN                            R26 1
      231 LOADN                            R27 1
      232 CALL                             R25 2 1
      233 SETTABLEKS                       R25 R24 K19 ["Size"]
      235 NEWCLOSURE                       R25 P2
      236 CAPTURE                          VAL R1
      237 CAPTURE                          REF R7
      238 CAPTURE                          UPVAL U8
      239 CAPTURE                          UPVAL U1
      240 SETTABLEKS                       R25 R24 K57 ["OnClick"]
      242 CALL                             R22 2 -1
      243 SETLIST                          R21 R22 -1 [1]
      245 CALL                             R18 3 1
      246 SETTABLEKS                       R18 R17 K50 ["ConfirmButton"]
      248 CALL                             R14 3 1
      249 SETTABLEKS                       R14 R13 K34 ["ButtonsWrapper"]
      251 CALL                             R10 3 1
      252 MOVE                             R6 R10
      253 JUMP                             ; [+220]
      254 GETUPVAL                         R10 3
      255 GETTABLEKS                       R10 R10 K17 ["createElement"]
      257 GETUPVAL                         R11 9
      258 DUPTABLE                         R12 K62 [{"Text"}]
      259 GETTABLEKS                       R13 R1 K16 ["Id"]
      261 SETTABLEKS                       R13 R12 K36 ["Text"]
      263 CALL                             R10 2 1
      264 MOVE                             R6 R10
      265 JUMP                             ; [+208]
      266 JUMPIFNOTEQKN                    R2 K63 [3] ; [+36]
      268 GETTABLEKS                       R11 R1 K19 ["Size"]
      270 LOADN                            R12 0
      271 JUMPIFNOTLT                      R12 R11 ; [+15]
      273 GETUPVAL                         R11 2
      274 GETTABLEKS                       R11 R11 K64 ["round"]
      276 GETTABLEKS                       R13 R1 K19 ["Size"]
      278 GETUPVAL                         R14 10
      279 GETTABLEKS                       R14 R14 K65 ["BYTES_IN_KB"]
      281 DIV                              R12 R13 R14
      282 LOADN                            R13 2
      283 CALL                             R11 2 1
      284 LOADK                            R12 K66 [" KB"]
      285 CONCAT                           R10 R11 R12
      286 JUMPIF                           R10 ; [+6]
      287 GETUPVAL                         R10 11
      288 LOADK                            R12 K67 ["TextureTable"]
      289 LOADK                            R13 K68 ["NotLoaded"]
      290 NAMECALL                         R10 R10 K69 ["getText"]
      292 CALL                             R10 3 1
      293 GETUPVAL                         R11 3
      294 GETTABLEKS                       R11 R11 K17 ["createElement"]
      296 GETUPVAL                         R12 9
      297 DUPTABLE                         R13 K62 [{"Text"}]
      298 SETTABLEKS                       R10 R13 K36 ["Text"]
      300 CALL                             R11 2 1
      301 MOVE                             R6 R11
      302 JUMP                             ; [+171]
      303 JUMPIFNOTEQKN                    R2 K70 [4] ; [+170]
      305 LOADNIL                          R10
      306 GETTABLEKS                       R11 R1 K71 ["ZoomedInstanceIndex"]
      308 JUMPIFEQKN                       R11 K72 [0] ; [+18]
      310 GETTABLEKS                       R15 R1 K71 ["ZoomedInstanceIndex"]
      312 SUBK                             R14 R15 K7 [1]
      313 GETTABLEKS                       R16 R1 K73 ["Instances"]
      315 LENGTH                           R15 R16
      316 MOD                              R13 R14 R15
      317 ADDK                             R12 R13 K7 [1]
      318 FASTCALL1                        TOSTRING R12 ; [+2]
      319 GETIMPORT                        R11 K75 [tostring]
      321 CALL                             R11 1 1
      322 LOADK                            R12 K76 ["/"]
      323 GETTABLEKS                       R13 R1 K77 ["Count"]
      325 CONCAT                           R10 R11 R13
      326 JUMP                             ; [+4]
      327 LOADK                            R11 K78 ["-/"]
      328 GETTABLEKS                       R12 R1 K77 ["Count"]
      330 CONCAT                           R10 R11 R12
      331 GETUPVAL                         R11 3
      332 GETTABLEKS                       R11 R11 K17 ["createElement"]
      334 GETUPVAL                         R12 5
      335 DUPTABLE                         R13 K28 [{"Layout", "Size"}]
      336 GETIMPORT                        R14 K48 [Enum.FillDirection.Horizontal]
      338 SETTABLEKS                       R14 R13 K27 ["Layout"]
      340 GETIMPORT                        R14 K23 [UDim2.fromScale]
      342 LOADN                            R15 1
      343 LOADN                            R16 1
      344 CALL                             R14 2 1
      345 SETTABLEKS                       R14 R13 K19 ["Size"]
      347 DUPTABLE                         R14 K82 [{"PrevButton", "ZoomTextLabel", "NextButton"}]
      348 GETUPVAL                         R15 3
      349 GETTABLEKS                       R15 R15 K17 ["createElement"]
      351 GETUPVAL                         R16 5
      352 DUPTABLE                         R17 K83 [{["AutomaticSize"], ["LayoutOrder"] = 1}]
      353 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      355 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      357 NEWTABLE                         R18 0 1
      359 GETUPVAL                         R19 3
      360 GETTABLEKS                       R19 R19 K17 ["createElement"]
      362 GETUPVAL                         R20 7
      363 DUPTABLE                         R21 K84 [{"LeftIcon", "Size", "OnClick"}]
      364 GETTABLEKS                       R22 R5 K85 ["FindSelectCell"]
      366 GETTABLEKS                       R22 R22 K79 ["PrevButton"]
      368 GETTABLEKS                       R22 R22 K86 ["Icon"]
      370 SETTABLEKS                       R22 R21 K56 ["LeftIcon"]
      372 GETIMPORT                        R22 K23 [UDim2.fromScale]
      374 LOADN                            R23 1
      375 LOADN                            R24 1
      376 CALL                             R22 2 1
      377 SETTABLEKS                       R22 R21 K19 ["Size"]
      379 NEWCLOSURE                       R22 P3
      380 CAPTURE                          VAL R1
      381 CAPTURE                          UPVAL U1
      382 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      384 CALL                             R19 2 -1
      385 SETLIST                          R18 R19 -1 [1]
      387 CALL                             R15 3 1
      388 SETTABLEKS                       R15 R14 K79 ["PrevButton"]
      390 GETUPVAL                         R15 3
      391 GETTABLEKS                       R15 R15 K17 ["createElement"]
      393 GETUPVAL                         R16 5
      394 DUPTABLE                         R17 K87 [{["Padding"], ["AutomaticSize"], ["LayoutOrder"] = 2}]
      395 GETTABLEKS                       R18 R5 K85 ["FindSelectCell"]
      397 GETTABLEKS                       R18 R18 K88 ["ZoomText"]
      399 GETTABLEKS                       R18 R18 K44 ["Padding"]
      401 SETTABLEKS                       R18 R17 K44 ["Padding"]
      403 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      405 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      407 NEWTABLE                         R18 0 1
      409 GETUPVAL                         R19 3
      410 GETTABLEKS                       R19 R19 K17 ["createElement"]
      412 GETUPVAL                         R20 9
      413 DUPTABLE                         R21 K90 [{"Text", "TextSize"}]
      414 SETTABLEKS                       R10 R21 K36 ["Text"]
      416 GETTABLEKS                       R22 R5 K85 ["FindSelectCell"]
      418 GETTABLEKS                       R22 R22 K88 ["ZoomText"]
      420 GETTABLEKS                       R22 R22 K89 ["TextSize"]
      422 SETTABLEKS                       R22 R21 K89 ["TextSize"]
      424 CALL                             R19 2 -1
      425 SETLIST                          R18 R19 -1 [1]
      427 CALL                             R15 3 1
      428 SETTABLEKS                       R15 R14 K80 ["ZoomTextLabel"]
      430 GETUPVAL                         R15 3
      431 GETTABLEKS                       R15 R15 K17 ["createElement"]
      433 GETUPVAL                         R16 5
      434 DUPTABLE                         R17 K91 [{["AutomaticSize"], ["LayoutOrder"] = 3}]
      435 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      437 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      439 NEWTABLE                         R18 0 1
      441 GETUPVAL                         R19 3
      442 GETTABLEKS                       R19 R19 K17 ["createElement"]
      444 GETUPVAL                         R20 7
      445 DUPTABLE                         R21 K84 [{"LeftIcon", "Size", "OnClick"}]
      446 GETTABLEKS                       R22 R5 K85 ["FindSelectCell"]
      448 GETTABLEKS                       R22 R22 K81 ["NextButton"]
      450 GETTABLEKS                       R22 R22 K86 ["Icon"]
      452 SETTABLEKS                       R22 R21 K56 ["LeftIcon"]
      454 GETIMPORT                        R22 K23 [UDim2.fromScale]
      456 LOADN                            R23 1
      457 LOADN                            R24 1
      458 CALL                             R22 2 1
      459 SETTABLEKS                       R22 R21 K19 ["Size"]
      461 NEWCLOSURE                       R22 P4
      462 CAPTURE                          VAL R1
      463 CAPTURE                          UPVAL U1
      464 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      466 CALL                             R19 2 -1
      467 SETLIST                          R18 R19 -1 [1]
      469 CALL                             R15 3 1
      470 SETTABLEKS                       R15 R14 K81 ["NextButton"]
      472 CALL                             R11 3 1
      473 MOVE                             R6 R11
      474 GETUPVAL                         R10 3
      475 GETTABLEKS                       R10 R10 K17 ["createElement"]
      477 GETUPVAL                         R11 5
      478 DUPTABLE                         R12 K99 [{["LayoutOrder"], ["Style"], ["BorderSizePixel"], ["BackgroundColor3"], ["BorderColor3"], ["Size"], ["OnRightClick"], ["ClipsDescendants"] = True}]
      479 GETTABLEKS                       R13 R0 K1 ["ColumnIndex"]
      481 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      483 GETTABLEKS                       R13 R5 K92 ["Style"]
      485 SETTABLEKS                       R13 R12 K92 ["Style"]
      487 GETTABLEKS                       R13 R5 K93 ["BorderSizePixel"]
      489 SETTABLEKS                       R13 R12 K93 ["BorderSizePixel"]
      491 GETTABLEKS                       R13 R0 K92 ["Style"]
      493 GETTABLEKS                       R13 R13 K100 ["BackgroundEven"]
      495 SETTABLEKS                       R13 R12 K94 ["BackgroundColor3"]
      497 GETTABLEKS                       R13 R0 K92 ["Style"]
      499 GETTABLEKS                       R13 R13 K101 ["Border"]
      501 SETTABLEKS                       R13 R12 K95 ["BorderColor3"]
      503 GETIMPORT                        R13 K102 [UDim2.new]
      505 GETTABLEKS                       R14 R4 K103 ["Scale"]
      507 GETTABLEKS                       R15 R4 K104 ["Offset"]
      509 LOADN                            R16 1
      510 LOADN                            R17 0
      511 CALL                             R13 4 1
      512 SETTABLEKS                       R13 R12 K19 ["Size"]
      514 NEWCLOSURE                       R13 P5
      515 CAPTURE                          UPVAL U1
      516 CAPTURE                          VAL R3
      517 CAPTURE                          VAL R1
      518 SETTABLEKS                       R13 R12 K96 ["OnRightClick"]
      520 DUPTABLE                         R13 K106 [{"Content"}]
      521 SETTABLEKS                       R6 R13 K105 ["Content"]
      523 CALL                             R10 3 -1
      524 CLOSEUPVALS                      R7
      525 RETURN                           R10 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Localization"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETTABLEKS                       R4 R2 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R4 K3 ["TextureTable"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K14 [{["Size"], ["Rows"], ["Columns"], ["CellComponent"], ["Scroll"] = True, ["RowHeight"], ["LayoutOrder"] = 3}]
       13 GETTABLEKS                       R8 R4 K5 ["Size"]
       15 SETTABLEKS                       R8 R7 K5 ["Size"]
       17 SETTABLEKS                       R1 R7 K6 ["Rows"]
       19 GETUPVAL                         R8 2
       20 MOVE                             R9 R0
       21 CALL                             R8 1 1
       22 SETTABLEKS                       R8 R7 K7 ["Columns"]
       24 GETTABLEKS                       R9 R0 K0 ["props"]
       26 GETTABLEKS                       R9 R9 K1 ["Localization"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          VAL R9
       41 SETTABLEKS                       R8 R7 K8 ["CellComponent"]
       43 GETTABLEKS                       R8 R4 K11 ["RowHeight"]
       45 SETTABLEKS                       R8 R7 K11 ["RowHeight"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Pane"]
       27 GETTABLEKS                       R4 R2 K8 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["IconButton"]
       31 GETTABLEKS                       R5 R2 K8 ["UI"]
       33 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       35 GETTABLEKS                       R6 R2 K8 ["UI"]
       37 GETTABLEKS                       R6 R6 K12 ["TextInput"]
       39 GETTABLEKS                       R7 R2 K8 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Image"]
       43 GETTABLEKS                       R8 R2 K8 ["UI"]
       45 GETTABLEKS                       R8 R8 K14 ["Table"]
       47 GETTABLEKS                       R9 R0 K15 ["Src"]
       49 GETTABLEKS                       R9 R9 K16 ["Util"]
       51 GETIMPORT                        R10 K4 [require]
       53 GETTABLEKS                       R11 R9 K17 ["Utils"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K4 [require]
       58 GETTABLEKS                       R12 R9 K18 ["WorkspaceOperations"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K4 [require]
       63 GETTABLEKS                       R13 R9 K19 ["Constants"]
       65 CALL                             R12 1 1
       66 DUPCLOSURE                       R13 K20 [PROTO_0]
       67 DUPCLOSURE                       R14 K21 [PROTO_8]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R12
       77 DUPCLOSURE                       R15 K22 [PROTO_9]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 RETURN                           R15 1
