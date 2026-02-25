MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Toolbar"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 4
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIPadding"]
       26 DUPTABLE                         R9 K14 [{"PaddingLeft", "PaddingRight"}]
       27 LOADK                            R10 K15 ["$Padding"]
       28 SETTABLEKS                       R10 R9 K12 ["PaddingLeft"]
       30 LOADK                            R10 K15 ["$Padding"]
       31 SETTABLEKS                       R10 R9 K13 ["PaddingRight"]
       33 CALL                             R7 2 1
       34 MOVE                             R8 R2
       35 LOADK                            R9 K16 ["> .MediaButton"]
       36 DUPTABLE                         R10 K21 [{"BackgroundColor3", "BackgroundTransparency", "Size", "TextColor3"}]
       37 LOADK                            R11 K22 ["$PrimaryMain"]
       38 SETTABLEKS                       R11 R10 K17 ["BackgroundColor3"]
       40 LOADN                            R11 0
       41 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
       43 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       45 LOADN                            R12 20
       46 LOADN                            R13 20
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K19 ["Size"]
       50 LOADK                            R11 K26 ["$TextPrimary"]
       51 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
       53 NEWTABLE                         R11 0 1
       55 MOVE                             R12 R2
       56 LOADK                            R13 K27 [":hover"]
       57 DUPTABLE                         R14 K28 [{"BackgroundColor3"}]
       58 LOADK                            R15 K29 ["$PrimaryHoverBackground"]
       59 SETTABLEKS                       R15 R14 K17 ["BackgroundColor3"]
       61 CALL                             R12 2 -1
       62 SETLIST                          R11 R12 -1 [1]
       64 CALL                             R8 3 1
       65 MOVE                             R9 R2
       66 LOADK                            R10 K30 [">> #Icon"]
       67 DUPTABLE                         R11 K34 [{"Size", "Position", "AnchorPoint", "ImageColor3"}]
       68 GETIMPORT                        R12 K25 [UDim2.fromOffset]
       70 LOADN                            R13 20
       71 LOADN                            R14 20
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K19 ["Size"]
       75 GETIMPORT                        R12 K36 [UDim2.fromScale]
       77 LOADK                            R13 K37 [0.5]
       78 LOADK                            R14 K37 [0.5]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K31 ["Position"]
       82 GETIMPORT                        R12 K40 [Vector2.new]
       84 LOADK                            R13 K37 [0.5]
       85 LOADK                            R14 K37 [0.5]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K32 ["AnchorPoint"]
       89 LOADK                            R12 K26 ["$TextPrimary"]
       90 SETTABLEKS                       R12 R11 K33 ["ImageColor3"]
       92 CALL                             R9 2 1
       93 MOVE                             R10 R2
       94 LOADK                            R11 K41 ["> .Timeline"]
       95 DUPTABLE                         R12 K42 [{"BackgroundColor3", "BackgroundTransparency"}]
       96 LOADK                            R13 K43 ["$BackgroundPaper"]
       97 SETTABLEKS                       R13 R12 K17 ["BackgroundColor3"]
       99 LOADN                            R13 0
      100 SETTABLEKS                       R13 R12 K18 ["BackgroundTransparency"]
      102 NEWTABLE                         R13 0 7
      104 MOVE                             R14 R2
      105 LOADK                            R15 K44 ["> .LBorder"]
      106 NEWTABLE                         R16 0 0
      108 NEWTABLE                         R17 0 2
      110 MOVE                             R18 R2
      111 LOADK                            R19 K45 ["> .Tick"]
      112 DUPTABLE                         R20 K46 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      113 GETIMPORT                        R21 K47 [UDim2.new]
      115 LOADN                            R22 0
      116 LOADN                            R23 2
      117 LOADN                            R24 1
      118 LOADN                            R25 0
      119 CALL                             R21 4 1
      120 SETTABLEKS                       R21 R20 K19 ["Size"]
      122 LOADK                            R21 K48 ["$TextDisabled"]
      123 SETTABLEKS                       R21 R20 K17 ["BackgroundColor3"]
      125 LOADN                            R21 0
      126 SETTABLEKS                       R21 R20 K18 ["BackgroundTransparency"]
      128 CALL                             R18 2 1
      129 MOVE                             R19 R2
      130 LOADK                            R20 K49 ["> .Label"]
      131 DUPTABLE                         R21 K53 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
      132 GETIMPORT                        R22 K40 [Vector2.new]
      134 LOADN                            R23 0
      135 LOADN                            R24 0
      136 CALL                             R22 2 1
      137 SETTABLEKS                       R22 R21 K32 ["AnchorPoint"]
      139 GETIMPORT                        R22 K47 [UDim2.new]
      141 LOADN                            R23 0
      142 LOADN                            R24 3
      143 LOADN                            R25 0
      144 LOADN                            R26 0
      145 CALL                             R22 4 1
      146 SETTABLEKS                       R22 R21 K31 ["Position"]
      148 GETIMPORT                        R22 K56 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R22 R21 K50 ["TextXAlignment"]
      152 GETIMPORT                        R22 K58 [Enum.TextYAlignment.Top]
      154 SETTABLEKS                       R22 R21 K51 ["TextYAlignment"]
      156 LOADK                            R22 K26 ["$TextPrimary"]
      157 SETTABLEKS                       R22 R21 K20 ["TextColor3"]
      159 LOADN                            R22 14
      160 SETTABLEKS                       R22 R21 K52 ["TextSize"]
      162 CALL                             R19 2 -1
      163 SETLIST                          R17 R18 -1 [1]
      165 CALL                             R14 3 1
      166 MOVE                             R15 R2
      167 LOADK                            R16 K59 ["> .RBorder"]
      168 NEWTABLE                         R17 0 0
      170 NEWTABLE                         R18 0 2
      172 MOVE                             R19 R2
      173 LOADK                            R20 K45 ["> .Tick"]
      174 DUPTABLE                         R21 K46 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      175 GETIMPORT                        R22 K47 [UDim2.new]
      177 LOADN                            R23 0
      178 LOADN                            R24 2
      179 LOADN                            R25 1
      180 LOADN                            R26 0
      181 CALL                             R22 4 1
      182 SETTABLEKS                       R22 R21 K19 ["Size"]
      184 LOADK                            R22 K48 ["$TextDisabled"]
      185 SETTABLEKS                       R22 R21 K17 ["BackgroundColor3"]
      187 LOADN                            R22 0
      188 SETTABLEKS                       R22 R21 K18 ["BackgroundTransparency"]
      190 CALL                             R19 2 1
      191 MOVE                             R20 R2
      192 LOADK                            R21 K49 ["> .Label"]
      193 DUPTABLE                         R22 K53 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
      194 GETIMPORT                        R23 K40 [Vector2.new]
      196 LOADN                            R24 1
      197 LOADN                            R25 0
      198 CALL                             R23 2 1
      199 SETTABLEKS                       R23 R22 K32 ["AnchorPoint"]
      201 GETIMPORT                        R23 K47 [UDim2.new]
      203 LOADN                            R24 0
      204 LOADN                            R25 253
      205 LOADN                            R26 0
      206 LOADN                            R27 0
      207 CALL                             R23 4 1
      208 SETTABLEKS                       R23 R22 K31 ["Position"]
      210 GETIMPORT                        R23 K61 [Enum.TextXAlignment.Right]
      212 SETTABLEKS                       R23 R22 K50 ["TextXAlignment"]
      214 GETIMPORT                        R23 K58 [Enum.TextYAlignment.Top]
      216 SETTABLEKS                       R23 R22 K51 ["TextYAlignment"]
      218 LOADK                            R23 K26 ["$TextPrimary"]
      219 SETTABLEKS                       R23 R22 K20 ["TextColor3"]
      221 LOADN                            R23 14
      222 SETTABLEKS                       R23 R22 K52 ["TextSize"]
      224 CALL                             R20 2 -1
      225 SETLIST                          R18 R19 -1 [1]
      227 CALL                             R15 3 1
      228 MOVE                             R16 R2
      229 LOADK                            R17 K62 ["> .Major"]
      230 NEWTABLE                         R18 0 0
      232 NEWTABLE                         R19 0 2
      234 MOVE                             R20 R2
      235 LOADK                            R21 K45 ["> .Tick"]
      236 DUPTABLE                         R22 K46 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      237 GETIMPORT                        R23 K47 [UDim2.new]
      239 LOADN                            R24 0
      240 LOADN                            R25 1
      241 LOADK                            R26 K63 [0.6]
      242 LOADN                            R27 0
      243 CALL                             R23 4 1
      244 SETTABLEKS                       R23 R22 K19 ["Size"]
      246 LOADK                            R23 K48 ["$TextDisabled"]
      247 SETTABLEKS                       R23 R22 K17 ["BackgroundColor3"]
      249 LOADN                            R23 0
      250 SETTABLEKS                       R23 R22 K18 ["BackgroundTransparency"]
      252 CALL                             R20 2 1
      253 MOVE                             R21 R2
      254 LOADK                            R22 K49 ["> .Label"]
      255 DUPTABLE                         R23 K53 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "TextColor3", "TextSize"}]
      256 GETIMPORT                        R24 K40 [Vector2.new]
      258 LOADN                            R25 0
      259 LOADN                            R26 0
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K32 ["AnchorPoint"]
      263 GETIMPORT                        R24 K47 [UDim2.new]
      265 LOADN                            R25 0
      266 LOADN                            R26 3
      267 LOADN                            R27 0
      268 LOADN                            R28 0
      269 CALL                             R24 4 1
      270 SETTABLEKS                       R24 R23 K31 ["Position"]
      272 GETIMPORT                        R24 K56 [Enum.TextXAlignment.Left]
      274 SETTABLEKS                       R24 R23 K50 ["TextXAlignment"]
      276 GETIMPORT                        R24 K58 [Enum.TextYAlignment.Top]
      278 SETTABLEKS                       R24 R23 K51 ["TextYAlignment"]
      280 LOADK                            R24 K26 ["$TextPrimary"]
      281 SETTABLEKS                       R24 R23 K20 ["TextColor3"]
      283 LOADN                            R24 14
      284 SETTABLEKS                       R24 R23 K52 ["TextSize"]
      286 CALL                             R21 2 -1
      287 SETLIST                          R19 R20 -1 [1]
      289 CALL                             R16 3 1
      290 MOVE                             R17 R2
      291 LOADK                            R18 K64 ["> .Medium"]
      292 NEWTABLE                         R19 0 0
      294 NEWTABLE                         R20 0 2
      296 MOVE                             R21 R2
      297 LOADK                            R22 K45 ["> .Tick"]
      298 DUPTABLE                         R23 K46 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      299 GETIMPORT                        R24 K47 [UDim2.new]
      301 LOADN                            R25 0
      302 LOADN                            R26 1
      303 LOADK                            R27 K65 [0.4]
      304 LOADN                            R28 0
      305 CALL                             R24 4 1
      306 SETTABLEKS                       R24 R23 K19 ["Size"]
      308 LOADK                            R24 K48 ["$TextDisabled"]
      309 SETTABLEKS                       R24 R23 K17 ["BackgroundColor3"]
      311 LOADN                            R24 0
      312 SETTABLEKS                       R24 R23 K18 ["BackgroundTransparency"]
      314 CALL                             R21 2 1
      315 MOVE                             R22 R2
      316 LOADK                            R23 K49 ["> .Label"]
      317 DUPTABLE                         R24 K67 [{"Visible"}]
      318 LOADB                            R25 0
      319 SETTABLEKS                       R25 R24 K66 ["Visible"]
      321 CALL                             R22 2 -1
      322 SETLIST                          R20 R21 -1 [1]
      324 CALL                             R17 3 1
      325 MOVE                             R18 R2
      326 LOADK                            R19 K68 ["> .Minor"]
      327 NEWTABLE                         R20 0 0
      329 NEWTABLE                         R21 0 2
      331 MOVE                             R22 R2
      332 LOADK                            R23 K45 ["> .Tick"]
      333 DUPTABLE                         R24 K46 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      334 GETIMPORT                        R25 K47 [UDim2.new]
      336 LOADN                            R26 0
      337 LOADN                            R27 1
      338 LOADK                            R28 K69 [0.2]
      339 LOADN                            R29 0
      340 CALL                             R25 4 1
      341 SETTABLEKS                       R25 R24 K19 ["Size"]
      343 LOADK                            R25 K48 ["$TextDisabled"]
      344 SETTABLEKS                       R25 R24 K17 ["BackgroundColor3"]
      346 LOADN                            R25 0
      347 SETTABLEKS                       R25 R24 K18 ["BackgroundTransparency"]
      349 CALL                             R22 2 1
      350 MOVE                             R23 R2
      351 LOADK                            R24 K49 ["> .Label"]
      352 DUPTABLE                         R25 K67 [{"Visible"}]
      353 LOADB                            R26 0
      354 SETTABLEKS                       R26 R25 K66 ["Visible"]
      356 CALL                             R23 2 -1
      357 SETLIST                          R21 R22 -1 [1]
      359 CALL                             R18 3 1
      360 MOVE                             R19 R2
      361 LOADK                            R20 K70 ["> #BufferBar"]
      362 DUPTABLE                         R21 K71 [{"BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position"}]
      363 LOADK                            R22 K72 ["$Blue60"]
      364 SETTABLEKS                       R22 R21 K17 ["BackgroundColor3"]
      366 LOADK                            R22 K37 [0.5]
      367 SETTABLEKS                       R22 R21 K18 ["BackgroundTransparency"]
      369 GETIMPORT                        R22 K40 [Vector2.new]
      371 LOADN                            R23 1
      372 LOADN                            R24 1
      373 CALL                             R22 2 1
      374 SETTABLEKS                       R22 R21 K32 ["AnchorPoint"]
      376 GETIMPORT                        R22 K36 [UDim2.fromScale]
      378 LOADN                            R23 1
      379 LOADN                            R24 1
      380 CALL                             R22 2 1
      381 SETTABLEKS                       R22 R21 K31 ["Position"]
      383 CALL                             R19 2 1
      384 MOVE                             R20 R2
      385 LOADK                            R21 K73 [">> .Scrubber"]
      386 DUPTABLE                         R22 K74 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency"}]
      387 GETIMPORT                        R23 K40 [Vector2.new]
      389 LOADK                            R24 K37 [0.5]
      390 LOADN                            R25 0
      391 CALL                             R23 2 1
      392 SETTABLEKS                       R23 R22 K32 ["AnchorPoint"]
      394 LOADK                            R23 K72 ["$Blue60"]
      395 SETTABLEKS                       R23 R22 K17 ["BackgroundColor3"]
      397 LOADN                            R23 0
      398 SETTABLEKS                       R23 R22 K18 ["BackgroundTransparency"]
      400 CALL                             R20 2 -1
      401 SETLIST                          R13 R14 -1 [1]
      403 CALL                             R10 3 -1
      404 SETLIST                          R6 R7 -1 [1]
      406 DUPTABLE                         R7 K79 [{"ScrubberLineSize", "ScrubberHeadSize", "BufferBarHeight", "Padding"}]
      407 GETIMPORT                        R8 K47 [UDim2.new]
      409 LOADN                            R9 0
      410 LOADN                            R10 1
      411 LOADN                            R11 1
      412 LOADN                            R12 0
      413 CALL                             R8 4 1
      414 SETTABLEKS                       R8 R7 K75 ["ScrubberLineSize"]
      416 GETIMPORT                        R8 K25 [UDim2.fromOffset]
      418 LOADN                            R9 5
      419 LOADN                            R10 5
      420 CALL                             R8 2 1
      421 SETTABLEKS                       R8 R7 K76 ["ScrubberHeadSize"]
      423 LOADN                            R8 3
      424 SETTABLEKS                       R8 R7 K77 ["BufferBarHeight"]
      426 GETIMPORT                        R8 K81 [UDim.new]
      428 LOADN                            R9 0
      429 LOADN                            R10 10
      430 CALL                             R8 2 1
      431 SETTABLEKS                       R8 R7 K78 ["Padding"]
      433 CALL                             R3 4 -1
      434 RETURN                           R3 -1
