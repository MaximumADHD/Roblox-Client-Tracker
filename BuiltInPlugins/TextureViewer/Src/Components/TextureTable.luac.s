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
        1 DUPTABLE                         R2 K1 [{"editingCell"}]
        2 LOADN                            R3 255
        3 SETTABLEKS                       R3 R2 K0 ["editingCell"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       15 DUPTABLE                         R2 K4 [{"editingCell"}]
       16 LOADN                            R3 255
       17 SETTABLEKS                       R3 R2 K3 ["editingCell"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K6 ["refreshData"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

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
       14 DIVRK                            R5 R7 K6 [UDim.new]
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
       27 JUMPIFNOT                        R1 ; [+469]
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
       62 JUMP                             ; [+434]
       63 JUMPIFNOTEQKN                    R2 K24 [2] ; [+214]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K25 ["state"]
       68 GETTABLEKS                       R10 R10 K26 ["editingCell"]
       70 JUMPIFNOTEQ                      R10 R3 ; [+195]
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
       93 DUPTABLE                         R16 K40 [{"Text", "TextXAlignment", "Size", "OnTextChanged", "LayoutOrder"}]
       94 SETTABLEKS                       R7 R16 K36 ["Text"]
       96 GETIMPORT                        R17 K42 [Enum.TextXAlignment.Center]
       98 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      100 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      102 GETTABLEKS                       R17 R17 K33 ["TextInput"]
      104 GETTABLEKS                       R17 R17 K19 ["Size"]
      106 SETTABLEKS                       R17 R16 K19 ["Size"]
      108 SETTABLEKS                       R8 R16 K38 ["OnTextChanged"]
      110 LOADN                            R17 1
      111 SETTABLEKS                       R17 R16 K39 ["LayoutOrder"]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K33 ["TextInput"]
      116 GETUPVAL                         R14 3
      117 GETTABLEKS                       R14 R14 K17 ["createElement"]
      119 GETUPVAL                         R15 5
      120 DUPTABLE                         R16 K45 [{"Size", "Layout", "Padding", "LayoutOrder"}]
      121 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      123 GETTABLEKS                       R17 R17 K46 ["Buttons"]
      125 GETTABLEKS                       R17 R17 K34 ["ButtonsWrapper"]
      127 GETTABLEKS                       R17 R17 K19 ["Size"]
      129 SETTABLEKS                       R17 R16 K19 ["Size"]
      131 GETIMPORT                        R17 K48 [Enum.FillDirection.Horizontal]
      133 SETTABLEKS                       R17 R16 K27 ["Layout"]
      135 GETTABLEKS                       R17 R5 K43 ["IdCell"]
      137 GETTABLEKS                       R17 R17 K46 ["Buttons"]
      139 GETTABLEKS                       R17 R17 K44 ["Padding"]
      141 SETTABLEKS                       R17 R16 K44 ["Padding"]
      143 LOADN                            R17 2
      144 SETTABLEKS                       R17 R16 K39 ["LayoutOrder"]
      146 DUPTABLE                         R17 K51 [{"CancelButton", "ConfirmButton"}]
      147 GETUPVAL                         R18 3
      148 GETTABLEKS                       R18 R18 K17 ["createElement"]
      150 GETUPVAL                         R19 5
      151 DUPTABLE                         R20 K53 [{"AutomaticSize", "Padding", "LayoutOrder"}]
      152 GETIMPORT                        R21 K55 [Enum.AutomaticSize.XY]
      154 SETTABLEKS                       R21 R20 K52 ["AutomaticSize"]
      156 GETTABLEKS                       R21 R5 K43 ["IdCell"]
      158 GETTABLEKS                       R21 R21 K46 ["Buttons"]
      160 GETTABLEKS                       R21 R21 K44 ["Padding"]
      162 SETTABLEKS                       R21 R20 K44 ["Padding"]
      164 LOADN                            R21 1
      165 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
      167 NEWTABLE                         R21 0 1
      169 GETUPVAL                         R22 3
      170 GETTABLEKS                       R22 R22 K17 ["createElement"]
      172 GETUPVAL                         R23 7
      173 DUPTABLE                         R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
      174 GETTABLEKS                       R25 R5 K43 ["IdCell"]
      176 GETTABLEKS                       R25 R25 K46 ["Buttons"]
      178 GETTABLEKS                       R25 R25 K59 ["CancelIcon"]
      180 SETTABLEKS                       R25 R24 K56 ["LeftIcon"]
      182 GETIMPORT                        R25 K42 [Enum.TextXAlignment.Center]
      184 SETTABLEKS                       R25 R24 K37 ["TextXAlignment"]
      186 GETIMPORT                        R25 K23 [UDim2.fromScale]
      188 LOADN                            R26 1
      189 LOADN                            R27 1
      190 CALL                             R25 2 1
      191 SETTABLEKS                       R25 R24 K19 ["Size"]
      193 SETTABLEKS                       R9 R24 K57 ["OnClick"]
      195 CALL                             R22 2 -1
      196 SETLIST                          R21 R22 -1 [1]
      198 CALL                             R18 3 1
      199 SETTABLEKS                       R18 R17 K49 ["CancelButton"]
      201 GETUPVAL                         R18 3
      202 GETTABLEKS                       R18 R18 K17 ["createElement"]
      204 GETUPVAL                         R19 5
      205 DUPTABLE                         R20 K53 [{"AutomaticSize", "Padding", "LayoutOrder"}]
      206 GETIMPORT                        R21 K55 [Enum.AutomaticSize.XY]
      208 SETTABLEKS                       R21 R20 K52 ["AutomaticSize"]
      210 GETTABLEKS                       R21 R5 K43 ["IdCell"]
      212 GETTABLEKS                       R21 R21 K46 ["Buttons"]
      214 GETTABLEKS                       R21 R21 K44 ["Padding"]
      216 SETTABLEKS                       R21 R20 K44 ["Padding"]
      218 LOADN                            R21 2
      219 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
      221 NEWTABLE                         R21 0 1
      223 GETUPVAL                         R22 3
      224 GETTABLEKS                       R22 R22 K17 ["createElement"]
      226 GETUPVAL                         R23 7
      227 DUPTABLE                         R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
      228 GETTABLEKS                       R25 R5 K43 ["IdCell"]
      230 GETTABLEKS                       R25 R25 K46 ["Buttons"]
      232 GETTABLEKS                       R25 R25 K60 ["ConfirmIcon"]
      234 SETTABLEKS                       R25 R24 K56 ["LeftIcon"]
      236 GETIMPORT                        R25 K42 [Enum.TextXAlignment.Center]
      238 SETTABLEKS                       R25 R24 K37 ["TextXAlignment"]
      240 GETIMPORT                        R25 K23 [UDim2.fromScale]
      242 LOADN                            R26 1
      243 LOADN                            R27 1
      244 CALL                             R25 2 1
      245 SETTABLEKS                       R25 R24 K19 ["Size"]
      247 NEWCLOSURE                       R25 P2
      248 CAPTURE                          VAL R1
      249 CAPTURE                          REF R7
      250 CAPTURE                          UPVAL U8
      251 CAPTURE                          UPVAL U1
      252 SETTABLEKS                       R25 R24 K57 ["OnClick"]
      254 CALL                             R22 2 -1
      255 SETLIST                          R21 R22 -1 [1]
      257 CALL                             R18 3 1
      258 SETTABLEKS                       R18 R17 K50 ["ConfirmButton"]
      260 CALL                             R14 3 1
      261 SETTABLEKS                       R14 R13 K34 ["ButtonsWrapper"]
      263 CALL                             R10 3 1
      264 MOVE                             R6 R10
      265 JUMP                             ; [+231]
      266 GETUPVAL                         R10 3
      267 GETTABLEKS                       R10 R10 K17 ["createElement"]
      269 GETUPVAL                         R11 9
      270 DUPTABLE                         R12 K61 [{"Text"}]
      271 GETTABLEKS                       R13 R1 K16 ["Id"]
      273 SETTABLEKS                       R13 R12 K36 ["Text"]
      275 CALL                             R10 2 1
      276 MOVE                             R6 R10
      277 JUMP                             ; [+219]
      278 JUMPIFNOTEQKN                    R2 K62 [3] ; [+37]
      280 GETTABLEKS                       R11 R1 K19 ["Size"]
      282 LOADN                            R12 0
      283 JUMPIFNOTLT                      R12 R11 ; [+16]
      285 GETUPVAL                         R13 2
      286 GETTABLEKS                       R13 R13 K63 ["round"]
      288 GETTABLEKS                       R15 R1 K19 ["Size"]
      290 GETUPVAL                         R16 10
      291 GETTABLEKS                       R16 R16 K64 ["BYTES_IN_KB"]
      293 DIV                              R14 R15 R16
      294 LOADN                            R15 2
      295 CALL                             R13 2 1
      296 MOVE                             R11 R13
      297 LOADK                            R12 K65 [" KB"]
      298 CONCAT                           R10 R11 R12
      299 JUMPIF                           R10 ; [+6]
      300 GETUPVAL                         R10 11
      301 LOADK                            R12 K66 ["TextureTable"]
      302 LOADK                            R13 K67 ["NotLoaded"]
      303 NAMECALL                         R10 R10 K68 ["getText"]
      305 CALL                             R10 3 1
      306 GETUPVAL                         R11 3
      307 GETTABLEKS                       R11 R11 K17 ["createElement"]
      309 GETUPVAL                         R12 9
      310 DUPTABLE                         R13 K61 [{"Text"}]
      311 SETTABLEKS                       R10 R13 K36 ["Text"]
      313 CALL                             R11 2 1
      314 MOVE                             R6 R11
      315 JUMP                             ; [+181]
      316 JUMPIFNOTEQKN                    R2 K69 [4] ; [+180]
      318 LOADNIL                          R10
      319 GETTABLEKS                       R11 R1 K70 ["ZoomedInstanceIndex"]
      321 JUMPIFEQKN                       R11 K71 [0] ; [+19]
      323 GETTABLEKS                       R18 R1 K70 ["ZoomedInstanceIndex"]
      325 SUBK                             R17 R18 K7 [1]
      326 GETTABLEKS                       R19 R1 K72 ["Instances"]
      328 LENGTH                           R18 R19
      329 MOD                              R16 R17 R18
      330 ADDK                             R15 R16 K7 [1]
      331 FASTCALL1                        TOSTRING R15 ; [+2]
      332 GETIMPORT                        R14 K74 [tostring]
      334 CALL                             R14 1 1
      335 MOVE                             R11 R14
      336 LOADK                            R12 K75 ["/"]
      337 GETTABLEKS                       R13 R1 K76 ["Count"]
      339 CONCAT                           R10 R11 R13
      340 JUMP                             ; [+4]
      341 LOADK                            R11 K77 ["-/"]
      342 GETTABLEKS                       R12 R1 K76 ["Count"]
      344 CONCAT                           R10 R11 R12
      345 GETUPVAL                         R11 3
      346 GETTABLEKS                       R11 R11 K17 ["createElement"]
      348 GETUPVAL                         R12 5
      349 DUPTABLE                         R13 K28 [{"Layout", "Size"}]
      350 GETIMPORT                        R14 K48 [Enum.FillDirection.Horizontal]
      352 SETTABLEKS                       R14 R13 K27 ["Layout"]
      354 GETIMPORT                        R14 K23 [UDim2.fromScale]
      356 LOADN                            R15 1
      357 LOADN                            R16 1
      358 CALL                             R14 2 1
      359 SETTABLEKS                       R14 R13 K19 ["Size"]
      361 DUPTABLE                         R14 K81 [{"PrevButton", "ZoomTextLabel", "NextButton"}]
      362 GETUPVAL                         R15 3
      363 GETTABLEKS                       R15 R15 K17 ["createElement"]
      365 GETUPVAL                         R16 5
      366 DUPTABLE                         R17 K82 [{"AutomaticSize", "LayoutOrder"}]
      367 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      369 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      371 LOADN                            R18 1
      372 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      374 NEWTABLE                         R18 0 1
      376 GETUPVAL                         R19 3
      377 GETTABLEKS                       R19 R19 K17 ["createElement"]
      379 GETUPVAL                         R20 7
      380 DUPTABLE                         R21 K83 [{"LeftIcon", "Size", "OnClick"}]
      381 GETTABLEKS                       R22 R5 K84 ["FindSelectCell"]
      383 GETTABLEKS                       R22 R22 K78 ["PrevButton"]
      385 GETTABLEKS                       R22 R22 K85 ["Icon"]
      387 SETTABLEKS                       R22 R21 K56 ["LeftIcon"]
      389 GETIMPORT                        R22 K23 [UDim2.fromScale]
      391 LOADN                            R23 1
      392 LOADN                            R24 1
      393 CALL                             R22 2 1
      394 SETTABLEKS                       R22 R21 K19 ["Size"]
      396 NEWCLOSURE                       R22 P3
      397 CAPTURE                          VAL R1
      398 CAPTURE                          UPVAL U1
      399 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      401 CALL                             R19 2 -1
      402 SETLIST                          R18 R19 -1 [1]
      404 CALL                             R15 3 1
      405 SETTABLEKS                       R15 R14 K78 ["PrevButton"]
      407 GETUPVAL                         R15 3
      408 GETTABLEKS                       R15 R15 K17 ["createElement"]
      410 GETUPVAL                         R16 5
      411 DUPTABLE                         R17 K86 [{"Padding", "AutomaticSize", "LayoutOrder"}]
      412 GETTABLEKS                       R18 R5 K84 ["FindSelectCell"]
      414 GETTABLEKS                       R18 R18 K87 ["ZoomText"]
      416 GETTABLEKS                       R18 R18 K44 ["Padding"]
      418 SETTABLEKS                       R18 R17 K44 ["Padding"]
      420 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      422 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      424 LOADN                            R18 2
      425 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      427 NEWTABLE                         R18 0 1
      429 GETUPVAL                         R19 3
      430 GETTABLEKS                       R19 R19 K17 ["createElement"]
      432 GETUPVAL                         R20 9
      433 DUPTABLE                         R21 K89 [{"Text", "TextSize"}]
      434 SETTABLEKS                       R10 R21 K36 ["Text"]
      436 GETTABLEKS                       R22 R5 K84 ["FindSelectCell"]
      438 GETTABLEKS                       R22 R22 K87 ["ZoomText"]
      440 GETTABLEKS                       R22 R22 K88 ["TextSize"]
      442 SETTABLEKS                       R22 R21 K88 ["TextSize"]
      444 CALL                             R19 2 -1
      445 SETLIST                          R18 R19 -1 [1]
      447 CALL                             R15 3 1
      448 SETTABLEKS                       R15 R14 K79 ["ZoomTextLabel"]
      450 GETUPVAL                         R15 3
      451 GETTABLEKS                       R15 R15 K17 ["createElement"]
      453 GETUPVAL                         R16 5
      454 DUPTABLE                         R17 K82 [{"AutomaticSize", "LayoutOrder"}]
      455 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      457 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      459 LOADN                            R18 3
      460 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      462 NEWTABLE                         R18 0 1
      464 GETUPVAL                         R19 3
      465 GETTABLEKS                       R19 R19 K17 ["createElement"]
      467 GETUPVAL                         R20 7
      468 DUPTABLE                         R21 K83 [{"LeftIcon", "Size", "OnClick"}]
      469 GETTABLEKS                       R22 R5 K84 ["FindSelectCell"]
      471 GETTABLEKS                       R22 R22 K80 ["NextButton"]
      473 GETTABLEKS                       R22 R22 K85 ["Icon"]
      475 SETTABLEKS                       R22 R21 K56 ["LeftIcon"]
      477 GETIMPORT                        R22 K23 [UDim2.fromScale]
      479 LOADN                            R23 1
      480 LOADN                            R24 1
      481 CALL                             R22 2 1
      482 SETTABLEKS                       R22 R21 K19 ["Size"]
      484 NEWCLOSURE                       R22 P4
      485 CAPTURE                          VAL R1
      486 CAPTURE                          UPVAL U1
      487 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      489 CALL                             R19 2 -1
      490 SETLIST                          R18 R19 -1 [1]
      492 CALL                             R15 3 1
      493 SETTABLEKS                       R15 R14 K80 ["NextButton"]
      495 CALL                             R11 3 1
      496 MOVE                             R6 R11
      497 GETUPVAL                         R10 3
      498 GETTABLEKS                       R10 R10 K17 ["createElement"]
      500 GETUPVAL                         R11 5
      501 DUPTABLE                         R12 K96 [{"LayoutOrder", "Style", "BorderSizePixel", "BackgroundColor3", "BorderColor3", "Size", "OnRightClick", "ClipsDescendants"}]
      502 GETTABLEKS                       R13 R0 K1 ["ColumnIndex"]
      504 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      506 GETTABLEKS                       R13 R5 K90 ["Style"]
      508 SETTABLEKS                       R13 R12 K90 ["Style"]
      510 GETTABLEKS                       R13 R5 K91 ["BorderSizePixel"]
      512 SETTABLEKS                       R13 R12 K91 ["BorderSizePixel"]
      514 GETTABLEKS                       R13 R0 K90 ["Style"]
      516 GETTABLEKS                       R13 R13 K97 ["BackgroundEven"]
      518 SETTABLEKS                       R13 R12 K92 ["BackgroundColor3"]
      520 GETTABLEKS                       R13 R0 K90 ["Style"]
      522 GETTABLEKS                       R13 R13 K98 ["Border"]
      524 SETTABLEKS                       R13 R12 K93 ["BorderColor3"]
      526 GETIMPORT                        R13 K99 [UDim2.new]
      528 GETTABLEKS                       R14 R4 K100 ["Scale"]
      530 GETTABLEKS                       R15 R4 K101 ["Offset"]
      532 LOADN                            R16 1
      533 LOADN                            R17 0
      534 CALL                             R13 4 1
      535 SETTABLEKS                       R13 R12 K19 ["Size"]
      537 NEWCLOSURE                       R13 P5
      538 CAPTURE                          UPVAL U1
      539 CAPTURE                          VAL R3
      540 CAPTURE                          VAL R1
      541 SETTABLEKS                       R13 R12 K94 ["OnRightClick"]
      543 LOADB                            R13 1
      544 SETTABLEKS                       R13 R12 K95 ["ClipsDescendants"]
      546 DUPTABLE                         R13 K103 [{"Content"}]
      547 SETTABLEKS                       R6 R13 K102 ["Content"]
      549 CALL                             R10 3 -1
      550 CLOSEUPVALS                      R7
      551 RETURN                           R10 -1

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
       12 DUPTABLE                         R7 K12 [{"Size", "Rows", "Columns", "CellComponent", "Scroll", "RowHeight", "LayoutOrder"}]
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
       43 LOADB                            R8 1
       44 SETTABLEKS                       R8 R7 K9 ["Scroll"]
       46 GETTABLEKS                       R8 R4 K10 ["RowHeight"]
       48 SETTABLEKS                       R8 R7 K10 ["RowHeight"]
       50 LOADN                            R8 3
       51 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       53 CALL                             R5 2 -1
       54 RETURN                           R5 -1

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
