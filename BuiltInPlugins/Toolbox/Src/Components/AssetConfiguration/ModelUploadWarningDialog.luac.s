PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDead"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 JUMPIF                           R1 ; [+12]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["OnClose"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["props"]
       17 GETTABLEKS                       R1 R2 K3 ["OnClose"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["isDead"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R2 ; [+12]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["props"]
        9 GETTABLEKS                       R3 R4 K2 ["OnClose"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["props"]
       15 GETTABLEKS                       R3 R4 K2 ["OnClose"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["NonBlockingDependencyIssues"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 GETIMPORT                        R2 K3 [ipairs]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 3
       13 FORGPREP_INEXT                   R2
       14 GETTABLE                         R7 R0 R6
       15 JUMPIFNOT                        R7 ; [+24]
       16 LENGTH                           R8 R7
       17 LOADN                            R9 0
       18 JUMPIFNOTLT                      R9 R8 ; [+21]
       20 GETIMPORT                        R8 K3 [ipairs]
       22 MOVE                             R9 R7
       23 CALL                             R8 1 3
       24 FORGPREP_INEXT                   R8
       25 LOADK                            R16 K4 ["rbxassetid://"]
       26 FASTCALL1                        TOSTRING R12 ; [+3]
       27 MOVE                             R18 R12
       28 GETIMPORT                        R17 K6 [tostring]
       30 CALL                             R17 1 1
       31 CONCAT                           R15 R16 R17
       32 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       34 MOVE                             R14 R1
       35 GETIMPORT                        R13 K9 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 [inext] ; [-14]
       40 FORGLOOP                         R2 2 [inext] ; [-27]
       42 GETIMPORT                        R2 K11 [table.concat]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K12 ["\n"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 2
       48 MOVE                             R5 R2
       49 NAMECALL                         R3 R3 K13 ["CopyToClipboard"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R3 0
       53 DUPTABLE                         R5 K15 [{"copied"}]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K14 ["copied"]
       57 NAMECALL                         R3 R3 K16 ["setState"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 DUPTABLE                         R3 K2 [{"copied"}]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["copied"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onEnabledChanged"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onAncestryChanged"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onCloseButtonClicked"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 SETTABLEKS                       R1 R0 K7 ["onCopyButtonClicked"]
       28 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["NonBlockingDependencyIssues"]
        8 GETTABLEKS                       R6 R2 K4 ["messageBox"]
       10 GETTABLEKS                       R5 R6 K5 ["textColor"]
       12 GETTABLEKS                       R7 R2 K4 ["messageBox"]
       14 GETTABLEKS                       R6 R7 K6 ["separatorColor"]
       16 JUMPIF                           R6 ; [+6]
       17 GETIMPORT                        R6 K9 [Color3.fromRGB]
       19 LOADN                            R7 180
       20 LOADN                            R8 180
       21 LOADN                            R9 180
       22 CALL                             R6 3 1
       23 DUPTABLE                         R7 K13 [{"BadPermissionState", "StoreIneligible", "NotFound"}]
       24 LOADK                            R10 K14 ["ModelUploadWarning"]
       25 LOADK                            R11 K15 ["ReasonBadPermissionState"]
       26 NAMECALL                         R8 R3 K16 ["getText"]
       28 CALL                             R8 3 1
       29 SETTABLEKS                       R8 R7 K10 ["BadPermissionState"]
       31 LOADK                            R10 K14 ["ModelUploadWarning"]
       32 LOADK                            R11 K17 ["ReasonStoreIneligible"]
       33 NAMECALL                         R8 R3 K16 ["getText"]
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K11 ["StoreIneligible"]
       38 LOADK                            R10 K14 ["ModelUploadWarning"]
       39 LOADK                            R11 K18 ["ReasonNotFound"]
       40 NAMECALL                         R8 R3 K16 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K12 ["NotFound"]
       45 NEWTABLE                         R8 0 0
       47 JUMPIFNOT                        R4 ; [+38]
       48 GETIMPORT                        R9 K20 [ipairs]
       50 GETUPVAL                         R10 0
       51 CALL                             R9 1 3
       52 FORGPREP_INEXT                   R9
       53 GETTABLE                         R14 R4 R13
       54 GETTABLE                         R16 R7 R13
       55 OR                               R15 R16 R13
       56 JUMPIFNOT                        R14 ; [+27]
       57 LENGTH                           R16 R14
       58 LOADN                            R17 0
       59 JUMPIFNOTLT                      R17 R16 ; [+24]
       61 GETIMPORT                        R16 K20 [ipairs]
       63 MOVE                             R17 R14
       64 CALL                             R16 1 3
       65 FORGPREP_INEXT                   R16
       66 DUPTABLE                         R23 K23 [{"id", "reason"}]
       67 FASTCALL1                        TOSTRING R20 ; [+3]
       68 MOVE                             R25 R20
       69 GETIMPORT                        R24 K25 [tostring]
       71 CALL                             R24 1 1
       72 SETTABLEKS                       R24 R23 K21 ["id"]
       74 SETTABLEKS                       R15 R23 K22 ["reason"]
       76 FASTCALL2                        TABLE_INSERT R8 R23 ; [+4]
       78 MOVE                             R22 R8
       79 GETIMPORT                        R21 K28 [table.insert]
       81 CALL                             R21 2 0
       82 FORGLOOP                         R16 2 [inext] ; [-17]
       84 FORGLOOP                         R9 2 [inext] ; [-32]
       86 DUPTABLE                         R9 K30 [{"Layout"}]
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R10 R11 K31 ["createElement"]
       90 LOADK                            R11 K32 ["UIListLayout"]
       91 DUPTABLE                         R12 K36 [{"SortOrder", "FillDirection", "Padding"}]
       92 GETIMPORT                        R13 K39 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R13 R12 K33 ["SortOrder"]
       96 GETIMPORT                        R13 K41 [Enum.FillDirection.Vertical]
       98 SETTABLEKS                       R13 R12 K34 ["FillDirection"]
      100 GETIMPORT                        R13 K44 [UDim.new]
      102 LOADN                            R14 0
      103 LOADN                            R15 0
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K35 ["Padding"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K29 ["Layout"]
      110 GETIMPORT                        R10 K20 [ipairs]
      112 MOVE                             R11 R8
      113 CALL                             R10 1 3
      114 FORGPREP_INEXT                   R10
      115 LOADK                            R16 K45 ["Row_"]
      116 MOVE                             R17 R13
      117 CONCAT                           R15 R16 R17
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R16 R17 K31 ["createElement"]
      121 LOADK                            R17 K46 ["Frame"]
      122 DUPTABLE                         R18 K51 [{"BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      123 MODK                             R20 R13 K52 [2]
      124 JUMPIFNOTEQKN                    R20 K53 [0] ; [+3]
      126 LOADK                            R19 K54 [0.96]
      127 JUMP                             ; [+1]
      128 LOADN                            R19 1
      129 SETTABLEKS                       R19 R18 K47 ["BackgroundTransparency"]
      131 SETTABLEKS                       R5 R18 K48 ["BackgroundColor3"]
      133 LOADN                            R19 0
      134 SETTABLEKS                       R19 R18 K49 ["BorderSizePixel"]
      136 SETTABLEKS                       R13 R18 K38 ["LayoutOrder"]
      138 GETIMPORT                        R19 K56 [UDim2.new]
      140 LOADN                            R20 1
      141 LOADN                            R21 0
      142 LOADN                            R22 0
      143 LOADN                            R23 22
      144 CALL                             R19 4 1
      145 SETTABLEKS                       R19 R18 K50 ["Size"]
      147 DUPTABLE                         R19 K59 [{"AssetId", "Reason"}]
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R20 R21 K31 ["createElement"]
      151 LOADK                            R21 K60 ["TextBox"]
      152 DUPTABLE                         R22 K71 [{"BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "Font", "Position", "Size", "Text", "TextEditable", "TextSize", "TextColor3", "TextXAlignment", "TextTruncate", "ClipsDescendants"}]
      153 LOADN                            R23 1
      154 SETTABLEKS                       R23 R22 K47 ["BackgroundTransparency"]
      156 LOADN                            R23 0
      157 SETTABLEKS                       R23 R22 K49 ["BorderSizePixel"]
      159 LOADB                            R23 0
      160 SETTABLEKS                       R23 R22 K61 ["ClearTextOnFocus"]
      162 GETUPVAL                         R24 2
      163 GETTABLEKS                       R23 R24 K72 ["FONT"]
      165 SETTABLEKS                       R23 R22 K62 ["Font"]
      167 GETIMPORT                        R23 K56 [UDim2.new]
      169 LOADN                            R24 0
      170 LOADN                            R25 0
      171 LOADN                            R26 0
      172 LOADN                            R27 0
      173 CALL                             R23 4 1
      174 SETTABLEKS                       R23 R22 K63 ["Position"]
      176 GETIMPORT                        R23 K56 [UDim2.new]
      178 LOADK                            R24 K73 [0.6]
      179 LOADN                            R25 252
      180 LOADN                            R26 1
      181 LOADN                            R27 0
      182 CALL                             R23 4 1
      183 SETTABLEKS                       R23 R22 K50 ["Size"]
      185 LOADK                            R24 K74 ["rbxassetid://"]
      186 GETTABLEKS                       R25 R14 K21 ["id"]
      188 CONCAT                           R23 R24 R25
      189 SETTABLEKS                       R23 R22 K64 ["Text"]
      191 LOADB                            R23 0
      192 SETTABLEKS                       R23 R22 K65 ["TextEditable"]
      194 GETUPVAL                         R24 2
      195 GETTABLEKS                       R23 R24 K75 ["FONT_SIZE_SMALL"]
      197 SETTABLEKS                       R23 R22 K66 ["TextSize"]
      199 SETTABLEKS                       R5 R22 K67 ["TextColor3"]
      201 GETIMPORT                        R23 K77 [Enum.TextXAlignment.Left]
      203 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      205 GETIMPORT                        R23 K79 [Enum.TextTruncate.AtEnd]
      207 SETTABLEKS                       R23 R22 K69 ["TextTruncate"]
      209 LOADB                            R23 1
      210 SETTABLEKS                       R23 R22 K70 ["ClipsDescendants"]
      212 DUPTABLE                         R23 K80 [{"Padding"}]
      213 GETUPVAL                         R25 1
      214 GETTABLEKS                       R24 R25 K31 ["createElement"]
      216 LOADK                            R25 K81 ["UIPadding"]
      217 DUPTABLE                         R26 K83 [{"PaddingLeft"}]
      218 GETIMPORT                        R27 K44 [UDim.new]
      220 LOADN                            R28 0
      221 LOADN                            R29 4
      222 CALL                             R27 2 1
      223 SETTABLEKS                       R27 R26 K82 ["PaddingLeft"]
      225 CALL                             R24 2 1
      226 SETTABLEKS                       R24 R23 K35 ["Padding"]
      228 CALL                             R20 3 1
      229 SETTABLEKS                       R20 R19 K57 ["AssetId"]
      231 GETUPVAL                         R21 1
      232 GETTABLEKS                       R20 R21 K31 ["createElement"]
      234 LOADK                            R21 K84 ["TextLabel"]
      235 DUPTABLE                         R22 K86 [{"BackgroundTransparency", "Font", "AnchorPoint", "Position", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment", "TextTruncate"}]
      236 LOADN                            R23 1
      237 SETTABLEKS                       R23 R22 K47 ["BackgroundTransparency"]
      239 GETUPVAL                         R24 2
      240 GETTABLEKS                       R23 R24 K72 ["FONT"]
      242 SETTABLEKS                       R23 R22 K62 ["Font"]
      244 GETIMPORT                        R23 K88 [Vector2.new]
      246 LOADN                            R24 1
      247 LOADN                            R25 0
      248 CALL                             R23 2 1
      249 SETTABLEKS                       R23 R22 K85 ["AnchorPoint"]
      251 GETIMPORT                        R23 K56 [UDim2.new]
      253 LOADN                            R24 1
      254 LOADN                            R25 0
      255 LOADN                            R26 0
      256 LOADN                            R27 0
      257 CALL                             R23 4 1
      258 SETTABLEKS                       R23 R22 K63 ["Position"]
      260 GETIMPORT                        R23 K56 [UDim2.new]
      262 LOADK                            R24 K89 [0.4]
      263 LOADN                            R25 252
      264 LOADN                            R26 1
      265 LOADN                            R27 0
      266 CALL                             R23 4 1
      267 SETTABLEKS                       R23 R22 K50 ["Size"]
      269 GETTABLEKS                       R23 R14 K22 ["reason"]
      271 SETTABLEKS                       R23 R22 K64 ["Text"]
      273 GETUPVAL                         R24 2
      274 GETTABLEKS                       R23 R24 K75 ["FONT_SIZE_SMALL"]
      276 SETTABLEKS                       R23 R22 K66 ["TextSize"]
      278 SETTABLEKS                       R5 R22 K67 ["TextColor3"]
      280 GETIMPORT                        R23 K77 [Enum.TextXAlignment.Left]
      282 SETTABLEKS                       R23 R22 K68 ["TextXAlignment"]
      284 GETIMPORT                        R23 K79 [Enum.TextTruncate.AtEnd]
      286 SETTABLEKS                       R23 R22 K69 ["TextTruncate"]
      288 DUPTABLE                         R23 K80 [{"Padding"}]
      289 GETUPVAL                         R25 1
      290 GETTABLEKS                       R24 R25 K31 ["createElement"]
      292 LOADK                            R25 K81 ["UIPadding"]
      293 DUPTABLE                         R26 K83 [{"PaddingLeft"}]
      294 GETIMPORT                        R27 K44 [UDim.new]
      296 LOADN                            R28 0
      297 LOADN                            R29 4
      298 CALL                             R27 2 1
      299 SETTABLEKS                       R27 R26 K82 ["PaddingLeft"]
      301 CALL                             R24 2 1
      302 SETTABLEKS                       R24 R23 K35 ["Padding"]
      304 CALL                             R20 3 1
      305 SETTABLEKS                       R20 R19 K58 ["Reason"]
      307 CALL                             R16 3 1
      308 SETTABLE                         R16 R9 R15
      309 FORGLOOP                         R10 2 [inext] ; [-195]
      311 GETUPVAL                         R11 1
      312 GETTABLEKS                       R10 R11 K31 ["createElement"]
      314 GETUPVAL                         R11 3
      315 NEWTABLE                         R12 16 0
      317 LOADK                            R13 K90 ["Roblox Studio"]
      318 SETTABLEKS                       R13 R12 K91 ["Title"]
      320 LOADK                            R13 K92 ["ModelUploadWarningDialog"]
      321 SETTABLEKS                       R13 R12 K93 ["Name"]
      323 GETUPVAL                         R13 4
      324 SETTABLEKS                       R13 R12 K50 ["Size"]
      326 GETUPVAL                         R13 5
      327 SETTABLEKS                       R13 R12 K94 ["MinSize"]
      329 LOADB                            R13 1
      330 SETTABLEKS                       R13 R12 K95 ["Resizable"]
      332 LOADB                            R13 1
      333 SETTABLEKS                       R13 R12 K96 ["Modal"]
      335 GETTABLEKS                       R13 R1 K97 ["Plugin"]
      337 NAMECALL                         R13 R13 K98 ["get"]
      339 CALL                             R13 1 1
      340 SETTABLEKS                       R13 R12 K99 ["plugin"]
      342 GETUPVAL                         R15 1
      343 GETTABLEKS                       R14 R15 K100 ["Change"]
      345 GETTABLEKS                       R13 R14 K101 ["Enabled"]
      347 GETTABLEKS                       R14 R0 K102 ["onEnabledChanged"]
      349 SETTABLE                         R14 R12 R13
      350 GETUPVAL                         R15 1
      351 GETTABLEKS                       R14 R15 K103 ["Event"]
      353 GETTABLEKS                       R13 R14 K104 ["AncestryChanged"]
      355 GETTABLEKS                       R14 R0 K105 ["onAncestryChanged"]
      357 SETTABLE                         R14 R12 R13
      358 DUPTABLE                         R13 K107 [{"Background"}]
      359 GETUPVAL                         R15 1
      360 GETTABLEKS                       R14 R15 K31 ["createElement"]
      362 LOADK                            R15 K46 ["Frame"]
      363 DUPTABLE                         R16 K108 [{"Size", "BackgroundColor3"}]
      364 GETIMPORT                        R17 K56 [UDim2.new]
      366 LOADN                            R18 1
      367 LOADN                            R19 0
      368 LOADN                            R20 1
      369 LOADN                            R21 0
      370 CALL                             R17 4 1
      371 SETTABLEKS                       R17 R16 K50 ["Size"]
      373 GETTABLEKS                       R18 R2 K4 ["messageBox"]
      375 GETTABLEKS                       R17 R18 K109 ["backgroundColor"]
      377 SETTABLEKS                       R17 R16 K48 ["BackgroundColor3"]
      379 DUPTABLE                         R17 K114 [{"UIPadding", "Header", "TableArea", "InfoBar", "ButtonBar"}]
      380 GETUPVAL                         R19 1
      381 GETTABLEKS                       R18 R19 K31 ["createElement"]
      383 LOADK                            R19 K81 ["UIPadding"]
      384 DUPTABLE                         R20 K118 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      385 GETIMPORT                        R21 K44 [UDim.new]
      387 LOADN                            R22 0
      388 LOADN                            R23 12
      389 CALL                             R21 2 1
      390 SETTABLEKS                       R21 R20 K115 ["PaddingTop"]
      392 GETIMPORT                        R21 K44 [UDim.new]
      394 LOADN                            R22 0
      395 LOADN                            R23 12
      396 CALL                             R21 2 1
      397 SETTABLEKS                       R21 R20 K116 ["PaddingBottom"]
      399 GETIMPORT                        R21 K44 [UDim.new]
      401 LOADN                            R22 0
      402 LOADN                            R23 12
      403 CALL                             R21 2 1
      404 SETTABLEKS                       R21 R20 K82 ["PaddingLeft"]
      406 GETIMPORT                        R21 K44 [UDim.new]
      408 LOADN                            R22 0
      409 LOADN                            R23 12
      410 CALL                             R21 2 1
      411 SETTABLEKS                       R21 R20 K117 ["PaddingRight"]
      413 CALL                             R18 2 1
      414 SETTABLEKS                       R18 R17 K81 ["UIPadding"]
      416 GETUPVAL                         R19 1
      417 GETTABLEKS                       R18 R19 K31 ["createElement"]
      419 LOADK                            R19 K46 ["Frame"]
      420 DUPTABLE                         R20 K119 [{"BackgroundTransparency", "Position", "Size"}]
      421 LOADN                            R21 1
      422 SETTABLEKS                       R21 R20 K47 ["BackgroundTransparency"]
      424 GETIMPORT                        R21 K56 [UDim2.new]
      426 LOADN                            R22 0
      427 LOADN                            R23 0
      428 LOADN                            R24 0
      429 LOADN                            R25 0
      430 CALL                             R21 4 1
      431 SETTABLEKS                       R21 R20 K63 ["Position"]
      433 GETIMPORT                        R21 K56 [UDim2.new]
      435 LOADN                            R22 1
      436 LOADN                            R23 0
      437 LOADN                            R24 0
      438 LOADN                            R25 100
      439 CALL                             R21 4 1
      440 SETTABLEKS                       R21 R20 K50 ["Size"]
      442 DUPTABLE                         R21 K122 [{"Icon", "Title", "Subtitle"}]
      443 GETUPVAL                         R23 1
      444 GETTABLEKS                       R22 R23 K31 ["createElement"]
      446 LOADK                            R23 K123 ["ImageLabel"]
      447 DUPTABLE                         R24 K126 [{"BackgroundTransparency", "Image", "ImageColor3", "Position", "Size"}]
      448 LOADN                            R25 1
      449 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
      451 GETUPVAL                         R26 6
      452 GETTABLEKS                       R25 R26 K127 ["WARNING_ICON"]
      454 SETTABLEKS                       R25 R24 K124 ["Image"]
      456 GETTABLEKS                       R26 R2 K128 ["publishAsset"]
      458 GETTABLEKS                       R25 R26 K129 ["warningIconColor"]
      460 SETTABLEKS                       R25 R24 K125 ["ImageColor3"]
      462 GETIMPORT                        R25 K56 [UDim2.new]
      464 LOADN                            R26 0
      465 LOADN                            R27 0
      466 LOADN                            R28 0
      467 LOADN                            R29 12
      468 CALL                             R25 4 1
      469 SETTABLEKS                       R25 R24 K63 ["Position"]
      471 GETIMPORT                        R25 K131 [UDim2.fromOffset]
      473 LOADN                            R26 20
      474 LOADN                            R27 20
      475 CALL                             R25 2 1
      476 SETTABLEKS                       R25 R24 K50 ["Size"]
      478 CALL                             R22 2 1
      479 SETTABLEKS                       R22 R21 K120 ["Icon"]
      481 GETUPVAL                         R23 1
      482 GETTABLEKS                       R22 R23 K31 ["createElement"]
      484 LOADK                            R23 K60 ["TextBox"]
      485 DUPTABLE                         R24 K133 [{"BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "Font", "Position", "Size", "Text", "TextEditable", "TextWrapped", "TextXAlignment", "TextSize", "TextColor3"}]
      486 LOADN                            R25 1
      487 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
      489 LOADN                            R25 0
      490 SETTABLEKS                       R25 R24 K49 ["BorderSizePixel"]
      492 LOADB                            R25 0
      493 SETTABLEKS                       R25 R24 K61 ["ClearTextOnFocus"]
      495 GETUPVAL                         R26 2
      496 GETTABLEKS                       R25 R26 K134 ["FONT_BOLD"]
      498 SETTABLEKS                       R25 R24 K62 ["Font"]
      500 GETIMPORT                        R25 K56 [UDim2.new]
      502 LOADN                            R26 0
      503 LOADN                            R27 28
      504 LOADN                            R28 0
      505 LOADN                            R29 0
      506 CALL                             R25 4 1
      507 SETTABLEKS                       R25 R24 K63 ["Position"]
      509 GETIMPORT                        R25 K56 [UDim2.new]
      511 LOADN                            R26 1
      512 LOADN                            R27 228
      513 LOADN                            R28 0
      514 LOADN                            R29 44
      515 CALL                             R25 4 1
      516 SETTABLEKS                       R25 R24 K50 ["Size"]
      518 LOADK                            R27 K14 ["ModelUploadWarning"]
      519 LOADK                            R28 K91 ["Title"]
      520 NAMECALL                         R25 R3 K16 ["getText"]
      522 CALL                             R25 3 1
      523 SETTABLEKS                       R25 R24 K64 ["Text"]
      525 LOADB                            R25 0
      526 SETTABLEKS                       R25 R24 K65 ["TextEditable"]
      528 LOADB                            R25 1
      529 SETTABLEKS                       R25 R24 K132 ["TextWrapped"]
      531 GETIMPORT                        R25 K77 [Enum.TextXAlignment.Left]
      533 SETTABLEKS                       R25 R24 K68 ["TextXAlignment"]
      535 GETUPVAL                         R26 2
      536 GETTABLEKS                       R25 R26 K135 ["FONT_SIZE_MEDIUM"]
      538 SETTABLEKS                       R25 R24 K66 ["TextSize"]
      540 SETTABLEKS                       R5 R24 K67 ["TextColor3"]
      542 CALL                             R22 2 1
      543 SETTABLEKS                       R22 R21 K91 ["Title"]
      545 GETUPVAL                         R23 1
      546 GETTABLEKS                       R22 R23 K31 ["createElement"]
      548 LOADK                            R23 K84 ["TextLabel"]
      549 DUPTABLE                         R24 K136 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment", "TextWrapped"}]
      550 LOADN                            R25 1
      551 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
      553 GETUPVAL                         R26 2
      554 GETTABLEKS                       R25 R26 K72 ["FONT"]
      556 SETTABLEKS                       R25 R24 K62 ["Font"]
      558 GETIMPORT                        R25 K56 [UDim2.new]
      560 LOADN                            R26 0
      561 LOADN                            R27 28
      562 LOADN                            R28 0
      563 LOADN                            R29 46
      564 CALL                             R25 4 1
      565 SETTABLEKS                       R25 R24 K63 ["Position"]
      567 GETIMPORT                        R25 K56 [UDim2.new]
      569 LOADN                            R26 1
      570 LOADN                            R27 228
      571 LOADN                            R28 0
      572 LOADN                            R29 54
      573 CALL                             R25 4 1
      574 SETTABLEKS                       R25 R24 K50 ["Size"]
      576 LOADK                            R27 K14 ["ModelUploadWarning"]
      577 LOADK                            R28 K121 ["Subtitle"]
      578 NAMECALL                         R25 R3 K16 ["getText"]
      580 CALL                             R25 3 1
      581 SETTABLEKS                       R25 R24 K64 ["Text"]
      583 GETUPVAL                         R26 2
      584 GETTABLEKS                       R25 R26 K75 ["FONT_SIZE_SMALL"]
      586 SETTABLEKS                       R25 R24 K66 ["TextSize"]
      588 SETTABLEKS                       R5 R24 K67 ["TextColor3"]
      590 GETIMPORT                        R25 K77 [Enum.TextXAlignment.Left]
      592 SETTABLEKS                       R25 R24 K68 ["TextXAlignment"]
      594 LOADB                            R25 1
      595 SETTABLEKS                       R25 R24 K132 ["TextWrapped"]
      597 CALL                             R22 2 1
      598 SETTABLEKS                       R22 R21 K121 ["Subtitle"]
      600 CALL                             R18 3 1
      601 SETTABLEKS                       R18 R17 K110 ["Header"]
      603 GETUPVAL                         R19 1
      604 GETTABLEKS                       R18 R19 K31 ["createElement"]
      606 LOADK                            R19 K46 ["Frame"]
      607 DUPTABLE                         R20 K119 [{"BackgroundTransparency", "Position", "Size"}]
      608 LOADN                            R21 1
      609 SETTABLEKS                       R21 R20 K47 ["BackgroundTransparency"]
      611 GETIMPORT                        R21 K56 [UDim2.new]
      613 LOADN                            R22 0
      614 LOADN                            R23 0
      615 LOADN                            R24 0
      616 LOADN                            R25 110
      617 CALL                             R21 4 1
      618 SETTABLEKS                       R21 R20 K63 ["Position"]
      620 GETIMPORT                        R21 K56 [UDim2.new]
      622 LOADN                            R22 1
      623 LOADN                            R23 0
      624 LOADN                            R24 1
      625 LOADN                            R25 82
      626 CALL                             R21 4 1
      627 SETTABLEKS                       R21 R20 K50 ["Size"]
      629 DUPTABLE                         R21 K139 [{"TableHeader", "TableRows"}]
      630 GETUPVAL                         R23 1
      631 GETTABLEKS                       R22 R23 K31 ["createElement"]
      633 LOADK                            R23 K46 ["Frame"]
      634 DUPTABLE                         R24 K119 [{"BackgroundTransparency", "Position", "Size"}]
      635 LOADN                            R25 1
      636 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
      638 GETIMPORT                        R25 K56 [UDim2.new]
      640 LOADN                            R26 0
      641 LOADN                            R27 0
      642 LOADN                            R28 0
      643 LOADN                            R29 0
      644 CALL                             R25 4 1
      645 SETTABLEKS                       R25 R24 K63 ["Position"]
      647 GETIMPORT                        R25 K56 [UDim2.new]
      649 LOADN                            R26 1
      650 LOADN                            R27 0
      651 LOADN                            R28 0
      652 LOADN                            R29 24
      653 CALL                             R25 4 1
      654 SETTABLEKS                       R25 R24 K50 ["Size"]
      656 DUPTABLE                         R25 K144 [{"AssetIdLabel", "ColumnDivider", "ReasonLabel", "BottomSeparator"}]
      657 GETUPVAL                         R27 1
      658 GETTABLEKS                       R26 R27 K31 ["createElement"]
      660 LOADK                            R27 K84 ["TextLabel"]
      661 DUPTABLE                         R28 K145 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment"}]
      662 LOADN                            R29 1
      663 SETTABLEKS                       R29 R28 K47 ["BackgroundTransparency"]
      665 GETUPVAL                         R30 2
      666 GETTABLEKS                       R29 R30 K134 ["FONT_BOLD"]
      668 SETTABLEKS                       R29 R28 K62 ["Font"]
      670 GETIMPORT                        R29 K56 [UDim2.new]
      672 LOADN                            R30 0
      673 LOADN                            R31 4
      674 LOADN                            R32 0
      675 LOADN                            R33 0
      676 CALL                             R29 4 1
      677 SETTABLEKS                       R29 R28 K63 ["Position"]
      679 GETIMPORT                        R29 K56 [UDim2.new]
      681 LOADK                            R30 K73 [0.6]
      682 LOADN                            R31 248
      683 LOADN                            R32 1
      684 LOADN                            R33 0
      685 CALL                             R29 4 1
      686 SETTABLEKS                       R29 R28 K50 ["Size"]
      688 LOADK                            R31 K14 ["ModelUploadWarning"]
      689 LOADK                            R32 K146 ["ColumnAssetId"]
      690 NAMECALL                         R29 R3 K16 ["getText"]
      692 CALL                             R29 3 1
      693 SETTABLEKS                       R29 R28 K64 ["Text"]
      695 GETUPVAL                         R30 2
      696 GETTABLEKS                       R29 R30 K75 ["FONT_SIZE_SMALL"]
      698 SETTABLEKS                       R29 R28 K66 ["TextSize"]
      700 SETTABLEKS                       R5 R28 K67 ["TextColor3"]
      702 GETIMPORT                        R29 K77 [Enum.TextXAlignment.Left]
      704 SETTABLEKS                       R29 R28 K68 ["TextXAlignment"]
      706 CALL                             R26 2 1
      707 SETTABLEKS                       R26 R25 K140 ["AssetIdLabel"]
      709 GETUPVAL                         R27 1
      710 GETTABLEKS                       R26 R27 K31 ["createElement"]
      712 LOADK                            R27 K46 ["Frame"]
      713 DUPTABLE                         R28 K147 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
      714 SETTABLEKS                       R6 R28 K48 ["BackgroundColor3"]
      716 LOADN                            R29 0
      717 SETTABLEKS                       R29 R28 K47 ["BackgroundTransparency"]
      719 LOADN                            R29 0
      720 SETTABLEKS                       R29 R28 K49 ["BorderSizePixel"]
      722 GETIMPORT                        R29 K56 [UDim2.new]
      724 LOADK                            R30 K73 [0.6]
      725 LOADN                            R31 0
      726 LOADN                            R32 0
      727 LOADN                            R33 2
      728 CALL                             R29 4 1
      729 SETTABLEKS                       R29 R28 K63 ["Position"]
      731 GETIMPORT                        R29 K56 [UDim2.new]
      733 LOADN                            R30 0
      734 LOADN                            R31 1
      735 LOADN                            R32 1
      736 LOADN                            R33 252
      737 CALL                             R29 4 1
      738 SETTABLEKS                       R29 R28 K50 ["Size"]
      740 CALL                             R26 2 1
      741 SETTABLEKS                       R26 R25 K141 ["ColumnDivider"]
      743 GETUPVAL                         R27 1
      744 GETTABLEKS                       R26 R27 K31 ["createElement"]
      746 LOADK                            R27 K84 ["TextLabel"]
      747 DUPTABLE                         R28 K148 [{"BackgroundTransparency", "Font", "AnchorPoint", "Position", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment"}]
      748 LOADN                            R29 1
      749 SETTABLEKS                       R29 R28 K47 ["BackgroundTransparency"]
      751 GETUPVAL                         R30 2
      752 GETTABLEKS                       R29 R30 K134 ["FONT_BOLD"]
      754 SETTABLEKS                       R29 R28 K62 ["Font"]
      756 GETIMPORT                        R29 K88 [Vector2.new]
      758 LOADN                            R30 1
      759 LOADN                            R31 0
      760 CALL                             R29 2 1
      761 SETTABLEKS                       R29 R28 K85 ["AnchorPoint"]
      763 GETIMPORT                        R29 K56 [UDim2.new]
      765 LOADN                            R30 1
      766 LOADN                            R31 252
      767 LOADN                            R32 0
      768 LOADN                            R33 0
      769 CALL                             R29 4 1
      770 SETTABLEKS                       R29 R28 K63 ["Position"]
      772 GETIMPORT                        R29 K56 [UDim2.new]
      774 LOADK                            R30 K89 [0.4]
      775 LOADN                            R31 248
      776 LOADN                            R32 1
      777 LOADN                            R33 0
      778 CALL                             R29 4 1
      779 SETTABLEKS                       R29 R28 K50 ["Size"]
      781 LOADK                            R31 K14 ["ModelUploadWarning"]
      782 LOADK                            R32 K149 ["ColumnReason"]
      783 NAMECALL                         R29 R3 K16 ["getText"]
      785 CALL                             R29 3 1
      786 SETTABLEKS                       R29 R28 K64 ["Text"]
      788 GETUPVAL                         R30 2
      789 GETTABLEKS                       R29 R30 K75 ["FONT_SIZE_SMALL"]
      791 SETTABLEKS                       R29 R28 K66 ["TextSize"]
      793 SETTABLEKS                       R5 R28 K67 ["TextColor3"]
      795 GETIMPORT                        R29 K77 [Enum.TextXAlignment.Left]
      797 SETTABLEKS                       R29 R28 K68 ["TextXAlignment"]
      799 CALL                             R26 2 1
      800 SETTABLEKS                       R26 R25 K142 ["ReasonLabel"]
      802 GETUPVAL                         R27 1
      803 GETTABLEKS                       R26 R27 K31 ["createElement"]
      805 LOADK                            R27 K46 ["Frame"]
      806 DUPTABLE                         R28 K150 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
      807 GETIMPORT                        R29 K88 [Vector2.new]
      809 LOADN                            R30 0
      810 LOADN                            R31 1
      811 CALL                             R29 2 1
      812 SETTABLEKS                       R29 R28 K85 ["AnchorPoint"]
      814 SETTABLEKS                       R6 R28 K48 ["BackgroundColor3"]
      816 LOADN                            R29 0
      817 SETTABLEKS                       R29 R28 K47 ["BackgroundTransparency"]
      819 LOADN                            R29 0
      820 SETTABLEKS                       R29 R28 K49 ["BorderSizePixel"]
      822 GETIMPORT                        R29 K56 [UDim2.new]
      824 LOADN                            R30 0
      825 LOADN                            R31 0
      826 LOADN                            R32 1
      827 LOADN                            R33 0
      828 CALL                             R29 4 1
      829 SETTABLEKS                       R29 R28 K63 ["Position"]
      831 GETIMPORT                        R29 K56 [UDim2.new]
      833 LOADN                            R30 1
      834 LOADN                            R31 0
      835 LOADN                            R32 0
      836 LOADN                            R33 1
      837 CALL                             R29 4 1
      838 SETTABLEKS                       R29 R28 K50 ["Size"]
      840 CALL                             R26 2 1
      841 SETTABLEKS                       R26 R25 K143 ["BottomSeparator"]
      843 CALL                             R22 3 1
      844 SETTABLEKS                       R22 R21 K137 ["TableHeader"]
      846 GETUPVAL                         R23 1
      847 GETTABLEKS                       R22 R23 K31 ["createElement"]
      849 GETUPVAL                         R23 7
      850 DUPTABLE                         R24 K153 [{"Position", "Size", "AutomaticCanvasSize", "CanvasSize"}]
      851 GETIMPORT                        R25 K56 [UDim2.new]
      853 LOADN                            R26 0
      854 LOADN                            R27 0
      855 LOADN                            R28 0
      856 LOADN                            R29 25
      857 CALL                             R25 4 1
      858 SETTABLEKS                       R25 R24 K63 ["Position"]
      860 GETIMPORT                        R25 K56 [UDim2.new]
      862 LOADN                            R26 1
      863 LOADN                            R27 0
      864 LOADN                            R28 1
      865 LOADN                            R29 231
      866 CALL                             R25 4 1
      867 SETTABLEKS                       R25 R24 K50 ["Size"]
      869 GETIMPORT                        R25 K156 [Enum.AutomaticSize.Y]
      871 SETTABLEKS                       R25 R24 K151 ["AutomaticCanvasSize"]
      873 GETIMPORT                        R25 K56 [UDim2.new]
      875 LOADN                            R26 1
      876 LOADN                            R27 0
      877 LOADN                            R28 0
      878 LOADN                            R29 0
      879 CALL                             R25 4 1
      880 SETTABLEKS                       R25 R24 K152 ["CanvasSize"]
      882 MOVE                             R25 R9
      883 CALL                             R22 3 1
      884 SETTABLEKS                       R22 R21 K138 ["TableRows"]
      886 CALL                             R18 3 1
      887 SETTABLEKS                       R18 R17 K111 ["TableArea"]
      889 GETUPVAL                         R19 1
      890 GETTABLEKS                       R18 R19 K31 ["createElement"]
      892 LOADK                            R19 K46 ["Frame"]
      893 DUPTABLE                         R20 K119 [{"BackgroundTransparency", "Position", "Size"}]
      894 LOADN                            R21 1
      895 SETTABLEKS                       R21 R20 K47 ["BackgroundTransparency"]
      897 GETIMPORT                        R21 K56 [UDim2.new]
      899 LOADN                            R22 0
      900 LOADN                            R23 0
      901 LOADN                            R24 1
      902 LOADN                            R25 198
      903 CALL                             R21 4 1
      904 SETTABLEKS                       R21 R20 K63 ["Position"]
      906 GETIMPORT                        R21 K56 [UDim2.new]
      908 LOADN                            R22 1
      909 LOADN                            R23 0
      910 LOADN                            R24 0
      911 LOADN                            R25 18
      912 CALL                             R21 4 1
      913 SETTABLEKS                       R21 R20 K50 ["Size"]
      915 DUPTABLE                         R21 K158 [{"Label"}]
      916 GETUPVAL                         R23 1
      917 GETTABLEKS                       R22 R23 K31 ["createElement"]
      919 LOADK                            R23 K84 ["TextLabel"]
      920 DUPTABLE                         R24 K159 [{"BackgroundTransparency", "Font", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment", "TextTruncate"}]
      921 LOADN                            R25 1
      922 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
      924 GETUPVAL                         R26 2
      925 GETTABLEKS                       R25 R26 K72 ["FONT"]
      927 SETTABLEKS                       R25 R24 K62 ["Font"]
      929 GETIMPORT                        R25 K56 [UDim2.new]
      931 LOADN                            R26 1
      932 LOADN                            R27 0
      933 LOADN                            R28 1
      934 LOADN                            R29 0
      935 CALL                             R25 4 1
      936 SETTABLEKS                       R25 R24 K50 ["Size"]
      938 LOADK                            R27 K14 ["ModelUploadWarning"]
      939 LOADK                            R28 K160 ["AiAssistantTip"]
      940 NAMECALL                         R25 R3 K16 ["getText"]
      942 CALL                             R25 3 1
      943 SETTABLEKS                       R25 R24 K64 ["Text"]
      945 GETUPVAL                         R26 2
      946 GETTABLEKS                       R25 R26 K75 ["FONT_SIZE_SMALL"]
      948 SETTABLEKS                       R25 R24 K66 ["TextSize"]
      950 SETTABLEKS                       R5 R24 K67 ["TextColor3"]
      952 GETIMPORT                        R25 K77 [Enum.TextXAlignment.Left]
      954 SETTABLEKS                       R25 R24 K68 ["TextXAlignment"]
      956 GETIMPORT                        R25 K79 [Enum.TextTruncate.AtEnd]
      958 SETTABLEKS                       R25 R24 K69 ["TextTruncate"]
      960 CALL                             R22 2 1
      961 SETTABLEKS                       R22 R21 K157 ["Label"]
      963 CALL                             R18 3 1
      964 SETTABLEKS                       R18 R17 K112 ["InfoBar"]
      966 GETUPVAL                         R19 1
      967 GETTABLEKS                       R18 R19 K31 ["createElement"]
      969 LOADK                            R19 K46 ["Frame"]
      970 DUPTABLE                         R20 K161 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
      971 GETIMPORT                        R21 K88 [Vector2.new]
      973 LOADN                            R22 0
      974 LOADN                            R23 1
      975 CALL                             R21 2 1
      976 SETTABLEKS                       R21 R20 K85 ["AnchorPoint"]
      978 LOADN                            R21 1
      979 SETTABLEKS                       R21 R20 K47 ["BackgroundTransparency"]
      981 GETIMPORT                        R21 K56 [UDim2.new]
      983 LOADN                            R22 0
      984 LOADN                            R23 0
      985 LOADN                            R24 1
      986 LOADN                            R25 0
      987 CALL                             R21 4 1
      988 SETTABLEKS                       R21 R20 K63 ["Position"]
      990 GETIMPORT                        R21 K56 [UDim2.new]
      992 LOADN                            R22 1
      993 LOADN                            R23 0
      994 LOADN                            R24 0
      995 LOADN                            R25 32
      996 CALL                             R21 4 1
      997 SETTABLEKS                       R21 R20 K50 ["Size"]
      999 DUPTABLE                         R21 K166 [{"CopiedLabel", "ButtonLayout", "CopyButton", "CloseButton"}]
     1000 GETUPVAL                         R23 1
     1001 GETTABLEKS                       R22 R23 K31 ["createElement"]
     1003 LOADK                            R23 K84 ["TextLabel"]
     1004 DUPTABLE                         R24 K168 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextColor3", "TextXAlignment", "Visible"}]
     1005 LOADN                            R25 1
     1006 SETTABLEKS                       R25 R24 K47 ["BackgroundTransparency"]
     1008 GETUPVAL                         R26 2
     1009 GETTABLEKS                       R25 R26 K72 ["FONT"]
     1011 SETTABLEKS                       R25 R24 K62 ["Font"]
     1013 GETIMPORT                        R25 K56 [UDim2.new]
     1015 LOADN                            R26 0
     1016 LOADN                            R27 0
     1017 LOADN                            R28 0
     1018 LOADN                            R29 0
     1019 CALL                             R25 4 1
     1020 SETTABLEKS                       R25 R24 K63 ["Position"]
     1022 GETIMPORT                        R25 K56 [UDim2.new]
     1024 LOADN                            R26 0
     1025 LOADN                            R27 70
     1026 LOADN                            R28 1
     1027 LOADN                            R29 0
     1028 CALL                             R25 4 1
     1029 SETTABLEKS                       R25 R24 K50 ["Size"]
     1031 LOADK                            R27 K14 ["ModelUploadWarning"]
     1032 LOADK                            R28 K169 ["Copied"]
     1033 NAMECALL                         R25 R3 K16 ["getText"]
     1035 CALL                             R25 3 1
     1036 SETTABLEKS                       R25 R24 K64 ["Text"]
     1038 GETUPVAL                         R26 2
     1039 GETTABLEKS                       R25 R26 K75 ["FONT_SIZE_SMALL"]
     1041 SETTABLEKS                       R25 R24 K66 ["TextSize"]
     1043 SETTABLEKS                       R5 R24 K67 ["TextColor3"]
     1045 GETIMPORT                        R25 K77 [Enum.TextXAlignment.Left]
     1047 SETTABLEKS                       R25 R24 K68 ["TextXAlignment"]
     1049 GETTABLEKS                       R26 R0 K170 ["state"]
     1051 GETTABLEKS                       R25 R26 K171 ["copied"]
     1053 SETTABLEKS                       R25 R24 K167 ["Visible"]
     1055 CALL                             R22 2 1
     1056 SETTABLEKS                       R22 R21 K162 ["CopiedLabel"]
     1058 GETUPVAL                         R23 1
     1059 GETTABLEKS                       R22 R23 K31 ["createElement"]
     1061 LOADK                            R23 K32 ["UIListLayout"]
     1062 DUPTABLE                         R24 K174 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
     1063 GETIMPORT                        R25 K176 [Enum.FillDirection.Horizontal]
     1065 SETTABLEKS                       R25 R24 K34 ["FillDirection"]
     1067 GETIMPORT                        R25 K178 [Enum.HorizontalAlignment.Right]
     1069 SETTABLEKS                       R25 R24 K172 ["HorizontalAlignment"]
     1071 GETIMPORT                        R25 K39 [Enum.SortOrder.LayoutOrder]
     1073 SETTABLEKS                       R25 R24 K33 ["SortOrder"]
     1075 GETIMPORT                        R25 K180 [Enum.VerticalAlignment.Center]
     1077 SETTABLEKS                       R25 R24 K173 ["VerticalAlignment"]
     1079 GETIMPORT                        R25 K44 [UDim.new]
     1081 LOADN                            R26 0
     1082 LOADN                            R27 8
     1083 CALL                             R25 2 1
     1084 SETTABLEKS                       R25 R24 K35 ["Padding"]
     1086 CALL                             R22 2 1
     1087 SETTABLEKS                       R22 R21 K163 ["ButtonLayout"]
     1089 GETUPVAL                         R23 1
     1090 GETTABLEKS                       R22 R23 K31 ["createElement"]
     1092 LOADK                            R23 K181 ["TextButton"]
     1093 NEWTABLE                         R24 16 0
     1095 LOADB                            R25 1
     1096 SETTABLEKS                       R25 R24 K182 ["AutoButtonColor"]
     1098 GETTABLEKS                       R26 R2 K4 ["messageBox"]
     1100 GETTABLEKS                       R25 R26 K109 ["backgroundColor"]
     1102 SETTABLEKS                       R25 R24 K48 ["BackgroundColor3"]
     1104 SETTABLEKS                       R6 R24 K183 ["BorderColor3"]
     1106 LOADN                            R25 1
     1107 SETTABLEKS                       R25 R24 K49 ["BorderSizePixel"]
     1109 GETUPVAL                         R26 2
     1110 GETTABLEKS                       R25 R26 K72 ["FONT"]
     1112 SETTABLEKS                       R25 R24 K62 ["Font"]
     1114 LOADN                            R25 1
     1115 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
     1117 GETIMPORT                        R25 K56 [UDim2.new]
     1119 LOADN                            R26 0
     1120 LOADN                            R27 130
     1121 LOADN                            R28 1
     1122 LOADN                            R29 0
     1123 CALL                             R25 4 1
     1124 SETTABLEKS                       R25 R24 K50 ["Size"]
     1126 LOADK                            R27 K14 ["ModelUploadWarning"]
     1127 LOADK                            R28 K184 ["CopyToClipboard"]
     1128 NAMECALL                         R25 R3 K16 ["getText"]
     1130 CALL                             R25 3 1
     1131 SETTABLEKS                       R25 R24 K64 ["Text"]
     1133 GETUPVAL                         R26 2
     1134 GETTABLEKS                       R25 R26 K75 ["FONT_SIZE_SMALL"]
     1136 SETTABLEKS                       R25 R24 K66 ["TextSize"]
     1138 SETTABLEKS                       R5 R24 K67 ["TextColor3"]
     1140 GETUPVAL                         R27 1
     1141 GETTABLEKS                       R26 R27 K103 ["Event"]
     1143 GETTABLEKS                       R25 R26 K185 ["Activated"]
     1145 GETTABLEKS                       R26 R0 K186 ["onCopyButtonClicked"]
     1147 SETTABLE                         R26 R24 R25
     1148 CALL                             R22 2 1
     1149 SETTABLEKS                       R22 R21 K164 ["CopyButton"]
     1151 GETUPVAL                         R23 1
     1152 GETTABLEKS                       R22 R23 K31 ["createElement"]
     1154 GETUPVAL                         R23 8
     1155 DUPTABLE                         R24 K190 [{"index", "Text", "action", "onButtonClicked"}]
     1156 LOADN                            R25 2
     1157 SETTABLEKS                       R25 R24 K187 ["index"]
     1159 LOADK                            R27 K191 ["AssetUploadResult"]
     1160 LOADK                            R28 K192 ["Close"]
     1161 NAMECALL                         R25 R3 K16 ["getText"]
     1163 CALL                             R25 3 1
     1164 SETTABLEKS                       R25 R24 K64 ["Text"]
     1166 LOADK                            R25 K193 ["close"]
     1167 SETTABLEKS                       R25 R24 K188 ["action"]
     1169 GETTABLEKS                       R25 R0 K194 ["onCloseButtonClicked"]
     1171 SETTABLEKS                       R25 R24 K189 ["onButtonClicked"]
     1173 CALL                             R22 2 1
     1174 SETTABLEKS                       R22 R21 K165 ["CloseButton"]
     1176 CALL                             R18 3 1
     1177 SETTABLEKS                       R18 R17 K113 ["ButtonBar"]
     1179 CALL                             R14 3 1
     1180 SETTABLEKS                       R14 R13 K106 ["Background"]
     1182 CALL                             R10 3 -1
     1183 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["withContext"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R9 R0 K11 ["Src"]
       27 GETTABLEKS                       R8 R9 K12 ["Util"]
       29 GETTABLEKS                       R7 R8 K13 ["Constants"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R10 R0 K11 ["Src"]
       36 GETTABLEKS                       R9 R10 K12 ["Util"]
       38 GETTABLEKS                       R8 R9 K14 ["Images"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R12 R0 K11 ["Src"]
       45 GETTABLEKS                       R11 R12 K15 ["Components"]
       47 GETTABLEKS                       R10 R11 K16 ["PluginWidget"]
       49 GETTABLEKS                       R9 R10 K17 ["Dialog"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R13 R0 K11 ["Src"]
       56 GETTABLEKS                       R12 R13 K15 ["Components"]
       58 GETTABLEKS                       R11 R12 K18 ["MessageBox"]
       60 GETTABLEKS                       R10 R11 K19 ["MessageBoxButton"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K11 ["Src"]
       67 GETTABLEKS                       R12 R13 K15 ["Components"]
       69 GETTABLEKS                       R11 R12 K20 ["StyledScrollingFrame"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K22 [game]
       74 LOADK                            R13 K23 ["StudioService"]
       75 NAMECALL                         R11 R11 K24 ["GetService"]
       77 CALL                             R11 2 1
       78 GETIMPORT                        R12 K27 [Vector2.new]
       80 LOADN                            R13 48
       81 LOADN                            R14 204
       82 CALL                             R12 2 1
       83 GETIMPORT                        R13 K27 [Vector2.new]
       85 LOADN                            R14 144
       86 LOADN                            R15 44
       87 CALL                             R13 2 1
       88 NEWTABLE                         R14 0 3
       90 LOADK                            R15 K28 ["BadPermissionState"]
       91 LOADK                            R16 K29 ["StoreIneligible"]
       92 LOADK                            R17 K30 ["NotFound"]
       93 SETLIST                          R14 R15 3 [1]
       95 GETTABLEKS                       R15 R3 K31 ["PureComponent"]
       97 LOADK                            R17 K32 ["ModelUploadWarningDialog"]
       98 NAMECALL                         R15 R15 K33 ["extend"]
      100 CALL                             R15 2 1
      101 DUPCLOSURE                       R16 K34 [PROTO_4]
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R11
      104 SETTABLEKS                       R16 R15 K35 ["init"]
      106 DUPCLOSURE                       R16 K36 [PROTO_5]
      107 SETTABLEKS                       R16 R15 K37 ["willUnmount"]
      109 DUPCLOSURE                       R16 K38 [PROTO_6]
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R16 R15 K39 ["render"]
      121 MOVE                             R16 R5
      122 DUPTABLE                         R17 K43 [{"Plugin", "Stylizer", "Localization"}]
      123 GETTABLEKS                       R18 R4 K40 ["Plugin"]
      125 SETTABLEKS                       R18 R17 K40 ["Plugin"]
      127 GETTABLEKS                       R18 R4 K41 ["Stylizer"]
      129 SETTABLEKS                       R18 R17 K41 ["Stylizer"]
      131 GETTABLEKS                       R18 R4 K42 ["Localization"]
      133 SETTABLEKS                       R18 R17 K42 ["Localization"]
      135 CALL                             R16 1 1
      136 MOVE                             R17 R15
      137 CALL                             R16 1 1
      138 MOVE                             R15 R16
      139 RETURN                           R15 1
