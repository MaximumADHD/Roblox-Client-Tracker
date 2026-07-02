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
       48 LOADN                            R13 -50
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
       91 DUPTABLE                         R11 K46 [{["Size"], ["Position"], ["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
       92 GETIMPORT                        R12 K22 [UDim2.new]
       94 LOADN                            R13 1
       95 LOADN                            R14 0
       96 LOADN                            R15 1
       97 LOADN                            R16 -64
       98 CALL                             R12 4 1
       99 SETTABLEKS                       R12 R11 K19 ["Size"]
      101 GETIMPORT                        R12 K48 [UDim2.fromOffset]
      103 LOADN                            R13 0
      104 LOADN                            R14 32
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K25 ["Position"]
      108 NEWTABLE                         R12 0 4
      110 MOVE                             R13 R2
      111 LOADK                            R14 K49 ["> #Border"]
      112 DUPTABLE                         R15 K54 [{["Size"], ["BorderSizePixel"] = 1, ["BorderColor3"] = "$TextPrimary", ["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      113 GETIMPORT                        R16 K22 [UDim2.new]
      115 LOADN                            R17 1
      116 LOADN                            R18 -50
      117 LOADN                            R19 1
      118 LOADN                            R20 0
      119 CALL                             R16 4 1
      120 SETTABLEKS                       R16 R15 K19 ["Size"]
      122 CALL                             R13 2 1
      123 MOVE                             R14 R2
      124 LOADK                            R15 K55 ["> #Rulers"]
      125 DUPTABLE                         R16 K58 [{["Size"], ["Position"], ["ClipsDescendants"] = True}]
      126 GETIMPORT                        R17 K22 [UDim2.new]
      128 LOADN                            R18 1
      129 LOADN                            R19 -51
      130 LOADN                            R20 1
      131 LOADN                            R21 -2
      132 CALL                             R17 4 1
      133 SETTABLEKS                       R17 R16 K19 ["Size"]
      135 GETIMPORT                        R17 K48 [UDim2.fromOffset]
      137 LOADN                            R18 1
      138 LOADN                            R19 1
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K25 ["Position"]
      142 NEWTABLE                         R17 0 2
      144 MOVE                             R18 R2
      145 LOADK                            R19 K59 ["> .Ruler"]
      146 DUPTABLE                         R20 K61 [{["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
      147 CALL                             R18 2 1
      148 MOVE                             R19 R2
      149 LOADK                            R20 K62 ["> .Axis"]
      150 DUPTABLE                         R21 K63 [{["BackgroundColor3"] = "$TextPrimary"}]
      151 CALL                             R19 2 -1
      152 SETLIST                          R17 R18 -1 [1]
      154 CALL                             R14 3 1
      155 MOVE                             R15 R2
      156 LOADK                            R16 K64 ["> #Scale"]
      157 DUPTABLE                         R17 K65 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      158 GETIMPORT                        R18 K22 [UDim2.new]
      160 LOADN                            R19 0
      161 LOADN                            R20 50
      162 LOADN                            R21 1
      163 LOADN                            R22 -2
      164 CALL                             R18 4 1
      165 SETTABLEKS                       R18 R17 K19 ["Size"]
      167 GETIMPORT                        R18 K22 [UDim2.new]
      169 LOADN                            R19 1
      170 LOADN                            R20 -48
      171 LOADN                            R21 0
      172 LOADN                            R22 1
      173 CALL                             R18 4 1
      174 SETTABLEKS                       R18 R17 K25 ["Position"]
      176 NEWTABLE                         R18 0 0
      178 CALL                             R15 3 1
      179 MOVE                             R16 R2
      180 LOADK                            R17 K66 ["> #Canvas"]
      181 DUPTABLE                         R18 K65 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      182 GETIMPORT                        R19 K22 [UDim2.new]
      184 LOADN                            R20 1
      185 LOADN                            R21 -51
      186 LOADN                            R22 1
      187 LOADN                            R23 -2
      188 CALL                             R19 4 1
      189 SETTABLEKS                       R19 R18 K19 ["Size"]
      191 GETIMPORT                        R19 K48 [UDim2.fromOffset]
      193 LOADN                            R20 1
      194 LOADN                            R21 1
      195 CALL                             R19 2 1
      196 SETTABLEKS                       R19 R18 K25 ["Position"]
      198 NEWTABLE                         R19 0 1
      200 MOVE                             R20 R2
      201 LOADK                            R21 K67 ["> #NoHistoryData"]
      202 DUPTABLE                         R22 K68 [{"AnchorPoint", "Position", "TextXAlignment", "TextYAlignment"}]
      203 GETIMPORT                        R23 K31 [Vector2.new]
      205 LOADK                            R24 K32 [0.5]
      206 LOADK                            R25 K32 [0.5]
      207 CALL                             R23 2 1
      208 SETTABLEKS                       R23 R22 K24 ["AnchorPoint"]
      210 GETIMPORT                        R23 K34 [UDim2.fromScale]
      212 LOADK                            R24 K32 [0.5]
      213 LOADK                            R25 K32 [0.5]
      214 CALL                             R23 2 1
      215 SETTABLEKS                       R23 R22 K25 ["Position"]
      217 GETIMPORT                        R23 K37 [Enum.TextXAlignment.Center]
      219 SETTABLEKS                       R23 R22 K26 ["TextXAlignment"]
      221 GETIMPORT                        R23 K38 [Enum.TextYAlignment.Center]
      223 SETTABLEKS                       R23 R22 K27 ["TextYAlignment"]
      225 CALL                             R20 2 -1
      226 SETLIST                          R19 R20 -1 [1]
      228 CALL                             R16 3 -1
      229 SETLIST                          R12 R13 -1 [1]
      231 CALL                             R9 3 1
      232 MOVE                             R10 R2
      233 LOADK                            R11 K69 ["> #LegendBar"]
      234 DUPTABLE                         R12 K70 [{"AnchorPoint", "Size", "Position"}]
      235 GETIMPORT                        R13 K31 [Vector2.new]
      237 LOADN                            R14 0
      238 LOADN                            R15 1
      239 CALL                             R13 2 1
      240 SETTABLEKS                       R13 R12 K24 ["AnchorPoint"]
      242 GETIMPORT                        R13 K22 [UDim2.new]
      244 LOADN                            R14 1
      245 LOADN                            R15 -50
      246 LOADN                            R16 0
      247 LOADN                            R17 32
      248 CALL                             R13 4 1
      249 SETTABLEKS                       R13 R12 K19 ["Size"]
      251 GETIMPORT                        R13 K34 [UDim2.fromScale]
      253 LOADN                            R14 0
      254 LOADN                            R15 1
      255 CALL                             R13 2 1
      256 SETTABLEKS                       R13 R12 K25 ["Position"]
      258 NEWTABLE                         R13 0 0
      260 CALL                             R10 3 1
      261 MOVE                             R11 R2
      262 LOADK                            R12 K71 [">> .GraphColor"]
      263 DUPTABLE                         R13 K73 [{["BackgroundColor3"] = "$PrimaryMain"}]
      264 CALL                             R11 2 1
      265 MOVE                             R12 R2
      266 LOADK                            R13 K74 [">> .GraphColor1"]
      267 DUPTABLE                         R14 K76 [{["BackgroundColor3"] = "$HistoryLegend1"}]
      268 CALL                             R12 2 1
      269 MOVE                             R13 R2
      270 LOADK                            R14 K77 [">> .GraphColor2"]
      271 DUPTABLE                         R15 K79 [{["BackgroundColor3"] = "$HistoryLegend2"}]
      272 CALL                             R13 2 1
      273 MOVE                             R14 R2
      274 LOADK                            R15 K80 [">> .GraphColor3"]
      275 DUPTABLE                         R16 K82 [{["BackgroundColor3"] = "$HistoryLegend3"}]
      276 CALL                             R14 2 1
      277 MOVE                             R15 R2
      278 LOADK                            R16 K83 [">> .LegendColor1"]
      279 DUPTABLE                         R17 K85 [{["TextColor3"] = "$HistoryLegend1"}]
      280 CALL                             R15 2 1
      281 MOVE                             R16 R2
      282 LOADK                            R17 K86 [">> .LegendColor2"]
      283 DUPTABLE                         R18 K87 [{["TextColor3"] = "$HistoryLegend2"}]
      284 CALL                             R16 2 1
      285 MOVE                             R17 R2
      286 LOADK                            R18 K88 [">> .LegendColor3"]
      287 DUPTABLE                         R19 K89 [{["TextColor3"] = "$HistoryLegend3"}]
      288 CALL                             R17 2 -1
      289 SETLIST                          R6 R7 -1 [1]
      291 CALL                             R3 3 -1
      292 RETURN                           R3 -1
