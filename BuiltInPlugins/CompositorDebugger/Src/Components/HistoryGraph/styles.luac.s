MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".History"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 11
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIPadding"]
       26 DUPTABLE                         R9 K14 [{"PaddingLeft", "PaddingRight"}]
       27 GETIMPORT                        R10 K17 [UDim.new]
       29 LOADN                            R11 0
       30 LOADN                            R12 15
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["PaddingLeft"]
       34 GETIMPORT                        R10 K17 [UDim.new]
       36 LOADN                            R11 0
       37 LOADN                            R12 15
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K13 ["PaddingRight"]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K18 ["> #Title"]
       44 DUPTABLE                         R10 K20 [{"Size"}]
       45 GETIMPORT                        R11 K22 [UDim2.new]
       47 LOADN                            R12 1
       48 LOADN                            R13 206
       49 LOADN                            R14 0
       50 LOADN                            R15 32
       51 CALL                             R11 4 1
       52 SETTABLEKS                       R11 R10 K19 ["Size"]
       54 NEWTABLE                         R11 0 1
       56 MOVE                             R12 R2
       57 LOADK                            R13 K23 ["> #FieldName"]
       58 DUPTABLE                         R14 K29 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment", "AutomaticSize"}]
       59 GETIMPORT                        R15 K31 [Vector2.new]
       61 LOADK                            R16 K32 [0.5]
       62 LOADK                            R17 K32 [0.5]
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K24 ["AnchorPoint"]
       66 GETIMPORT                        R15 K34 [UDim2.fromScale]
       68 LOADK                            R16 K32 [0.5]
       69 LOADK                            R17 K32 [0.5]
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K25 ["Position"]
       73 GETIMPORT                        R15 K37 [Enum.TextXAlignment.Center]
       75 SETTABLEKS                       R15 R14 K26 ["TextXAlignment"]
       77 GETIMPORT                        R15 K38 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R15 R14 K27 ["TextYAlignment"]
       81 GETIMPORT                        R15 K40 [Enum.AutomaticSize.X]
       83 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
       85 CALL                             R12 2 -1
       86 SETLIST                          R11 R12 -1 [1]
       88 CALL                             R8 3 1
       89 MOVE                             R9 R2
       90 LOADK                            R10 K41 ["> #Graph"]
       91 DUPTABLE                         R11 K44 [{"Size", "Position", "BackgroundColor3", "BackgroundTransparency"}]
       92 GETIMPORT                        R12 K22 [UDim2.new]
       94 LOADN                            R13 1
       95 LOADN                            R14 0
       96 LOADN                            R15 1
       97 LOADN                            R16 192
       98 CALL                             R12 4 1
       99 SETTABLEKS                       R12 R11 K19 ["Size"]
      101 GETIMPORT                        R12 K46 [UDim2.fromOffset]
      103 LOADN                            R13 0
      104 LOADN                            R14 32
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K25 ["Position"]
      108 LOADK                            R12 K47 ["$BackgroundPaper"]
      109 SETTABLEKS                       R12 R11 K42 ["BackgroundColor3"]
      111 LOADN                            R12 0
      112 SETTABLEKS                       R12 R11 K43 ["BackgroundTransparency"]
      114 NEWTABLE                         R12 0 4
      116 MOVE                             R13 R2
      117 LOADK                            R14 K48 ["> #Border"]
      118 DUPTABLE                         R15 K51 [{"Size", "BorderSizePixel", "BorderColor3", "BackgroundColor3", "BackgroundTransparency"}]
      119 GETIMPORT                        R16 K22 [UDim2.new]
      121 LOADN                            R17 1
      122 LOADN                            R18 206
      123 LOADN                            R19 1
      124 LOADN                            R20 0
      125 CALL                             R16 4 1
      126 SETTABLEKS                       R16 R15 K19 ["Size"]
      128 LOADN                            R16 1
      129 SETTABLEKS                       R16 R15 K49 ["BorderSizePixel"]
      131 LOADK                            R16 K52 ["$TextPrimary"]
      132 SETTABLEKS                       R16 R15 K50 ["BorderColor3"]
      134 LOADK                            R16 K47 ["$BackgroundPaper"]
      135 SETTABLEKS                       R16 R15 K42 ["BackgroundColor3"]
      137 LOADN                            R16 0
      138 SETTABLEKS                       R16 R15 K43 ["BackgroundTransparency"]
      140 CALL                             R13 2 1
      141 MOVE                             R14 R2
      142 LOADK                            R15 K53 ["> #Rulers"]
      143 DUPTABLE                         R16 K55 [{"Size", "Position", "ClipsDescendants"}]
      144 GETIMPORT                        R17 K22 [UDim2.new]
      146 LOADN                            R18 1
      147 LOADN                            R19 205
      148 LOADN                            R20 1
      149 LOADN                            R21 254
      150 CALL                             R17 4 1
      151 SETTABLEKS                       R17 R16 K19 ["Size"]
      153 GETIMPORT                        R17 K46 [UDim2.fromOffset]
      155 LOADN                            R18 1
      156 LOADN                            R19 1
      157 CALL                             R17 2 1
      158 SETTABLEKS                       R17 R16 K25 ["Position"]
      160 LOADB                            R17 1
      161 SETTABLEKS                       R17 R16 K54 ["ClipsDescendants"]
      163 NEWTABLE                         R17 0 2
      165 MOVE                             R18 R2
      166 LOADK                            R19 K56 ["> .Ruler"]
      167 DUPTABLE                         R20 K57 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
      168 LOADK                            R21 K58 ["$TextDisabled"]
      169 SETTABLEKS                       R21 R20 K42 ["BackgroundColor3"]
      171 LOADN                            R21 0
      172 SETTABLEKS                       R21 R20 K43 ["BackgroundTransparency"]
      174 LOADN                            R21 0
      175 SETTABLEKS                       R21 R20 K49 ["BorderSizePixel"]
      177 CALL                             R18 2 1
      178 MOVE                             R19 R2
      179 LOADK                            R20 K59 ["> .Axis"]
      180 DUPTABLE                         R21 K60 [{"BackgroundColor3"}]
      181 LOADK                            R22 K52 ["$TextPrimary"]
      182 SETTABLEKS                       R22 R21 K42 ["BackgroundColor3"]
      184 CALL                             R19 2 -1
      185 SETLIST                          R17 R18 -1 [1]
      187 CALL                             R14 3 1
      188 MOVE                             R15 R2
      189 LOADK                            R16 K61 ["> #Scale"]
      190 DUPTABLE                         R17 K62 [{"Size", "Position", "BackgroundTransparency"}]
      191 GETIMPORT                        R18 K22 [UDim2.new]
      193 LOADN                            R19 0
      194 LOADN                            R20 50
      195 LOADN                            R21 1
      196 LOADN                            R22 254
      197 CALL                             R18 4 1
      198 SETTABLEKS                       R18 R17 K19 ["Size"]
      200 GETIMPORT                        R18 K22 [UDim2.new]
      202 LOADN                            R19 1
      203 LOADN                            R20 208
      204 LOADN                            R21 0
      205 LOADN                            R22 1
      206 CALL                             R18 4 1
      207 SETTABLEKS                       R18 R17 K25 ["Position"]
      209 LOADN                            R18 1
      210 SETTABLEKS                       R18 R17 K43 ["BackgroundTransparency"]
      212 NEWTABLE                         R18 0 0
      214 CALL                             R15 3 1
      215 MOVE                             R16 R2
      216 LOADK                            R17 K63 ["> #Canvas"]
      217 DUPTABLE                         R18 K62 [{"Size", "Position", "BackgroundTransparency"}]
      218 GETIMPORT                        R19 K22 [UDim2.new]
      220 LOADN                            R20 1
      221 LOADN                            R21 205
      222 LOADN                            R22 1
      223 LOADN                            R23 254
      224 CALL                             R19 4 1
      225 SETTABLEKS                       R19 R18 K19 ["Size"]
      227 GETIMPORT                        R19 K46 [UDim2.fromOffset]
      229 LOADN                            R20 1
      230 LOADN                            R21 1
      231 CALL                             R19 2 1
      232 SETTABLEKS                       R19 R18 K25 ["Position"]
      234 LOADN                            R19 1
      235 SETTABLEKS                       R19 R18 K43 ["BackgroundTransparency"]
      237 NEWTABLE                         R19 0 1
      239 MOVE                             R20 R2
      240 LOADK                            R21 K64 ["> #NoHistoryData"]
      241 DUPTABLE                         R22 K65 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment"}]
      242 GETIMPORT                        R23 K31 [Vector2.new]
      244 LOADK                            R24 K32 [0.5]
      245 LOADK                            R25 K32 [0.5]
      246 CALL                             R23 2 1
      247 SETTABLEKS                       R23 R22 K24 ["AnchorPoint"]
      249 GETIMPORT                        R23 K34 [UDim2.fromScale]
      251 LOADK                            R24 K32 [0.5]
      252 LOADK                            R25 K32 [0.5]
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K25 ["Position"]
      256 GETIMPORT                        R23 K37 [Enum.TextXAlignment.Center]
      258 SETTABLEKS                       R23 R22 K26 ["TextXAlignment"]
      260 GETIMPORT                        R23 K38 [Enum.TextYAlignment.Center]
      262 SETTABLEKS                       R23 R22 K27 ["TextYAlignment"]
      264 CALL                             R20 2 -1
      265 SETLIST                          R19 R20 -1 [1]
      267 CALL                             R16 3 -1
      268 SETLIST                          R12 R13 -1 [1]
      270 CALL                             R9 3 1
      271 MOVE                             R10 R2
      272 LOADK                            R11 K66 ["> #LegendBar"]
      273 DUPTABLE                         R12 K67 [{"AnchorPoint", "Size", "Position"}]
      274 GETIMPORT                        R13 K31 [Vector2.new]
      276 LOADN                            R14 0
      277 LOADN                            R15 1
      278 CALL                             R13 2 1
      279 SETTABLEKS                       R13 R12 K24 ["AnchorPoint"]
      281 GETIMPORT                        R13 K22 [UDim2.new]
      283 LOADN                            R14 1
      284 LOADN                            R15 206
      285 LOADN                            R16 0
      286 LOADN                            R17 32
      287 CALL                             R13 4 1
      288 SETTABLEKS                       R13 R12 K19 ["Size"]
      290 GETIMPORT                        R13 K34 [UDim2.fromScale]
      292 LOADN                            R14 0
      293 LOADN                            R15 1
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K25 ["Position"]
      297 NEWTABLE                         R13 0 0
      299 CALL                             R10 3 1
      300 MOVE                             R11 R2
      301 LOADK                            R12 K68 [">> .GraphColor"]
      302 DUPTABLE                         R13 K60 [{"BackgroundColor3"}]
      303 LOADK                            R14 K69 ["$PrimaryMain"]
      304 SETTABLEKS                       R14 R13 K42 ["BackgroundColor3"]
      306 CALL                             R11 2 1
      307 MOVE                             R12 R2
      308 LOADK                            R13 K70 [">> .GraphColor1"]
      309 DUPTABLE                         R14 K60 [{"BackgroundColor3"}]
      310 LOADK                            R15 K71 ["$HistoryLegend1"]
      311 SETTABLEKS                       R15 R14 K42 ["BackgroundColor3"]
      313 CALL                             R12 2 1
      314 MOVE                             R13 R2
      315 LOADK                            R14 K72 [">> .GraphColor2"]
      316 DUPTABLE                         R15 K60 [{"BackgroundColor3"}]
      317 LOADK                            R16 K73 ["$HistoryLegend2"]
      318 SETTABLEKS                       R16 R15 K42 ["BackgroundColor3"]
      320 CALL                             R13 2 1
      321 MOVE                             R14 R2
      322 LOADK                            R15 K74 [">> .GraphColor3"]
      323 DUPTABLE                         R16 K60 [{"BackgroundColor3"}]
      324 LOADK                            R17 K75 ["$HistoryLegend3"]
      325 SETTABLEKS                       R17 R16 K42 ["BackgroundColor3"]
      327 CALL                             R14 2 1
      328 MOVE                             R15 R2
      329 LOADK                            R16 K76 [">> .LegendColor1"]
      330 DUPTABLE                         R17 K78 [{"TextColor3"}]
      331 LOADK                            R18 K71 ["$HistoryLegend1"]
      332 SETTABLEKS                       R18 R17 K77 ["TextColor3"]
      334 CALL                             R15 2 1
      335 MOVE                             R16 R2
      336 LOADK                            R17 K79 [">> .LegendColor2"]
      337 DUPTABLE                         R18 K78 [{"TextColor3"}]
      338 LOADK                            R19 K73 ["$HistoryLegend2"]
      339 SETTABLEKS                       R19 R18 K77 ["TextColor3"]
      341 CALL                             R16 2 1
      342 MOVE                             R17 R2
      343 LOADK                            R18 K80 [">> .LegendColor3"]
      344 DUPTABLE                         R19 K78 [{"TextColor3"}]
      345 LOADK                            R20 K75 ["$HistoryLegend3"]
      346 SETTABLEKS                       R20 R19 K77 ["TextColor3"]
      348 CALL                             R17 2 -1
      349 SETLIST                          R6 R7 -1 [1]
      351 CALL                             R3 3 -1
      352 RETURN                           R3 -1
