MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-AnnotationHeader"]
       24 DUPTABLE                         R5 K14 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"]}]
       25 GETIMPORT                        R6 K17 [UDim2.fromScale]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K12 ["Size"]
       32 GETIMPORT                        R6 K20 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R6 R5 K13 ["AutomaticSize"]
       36 NEWTABLE                         R6 0 3
       38 MOVE                             R7 R2
       39 LOADK                            R8 K21 ["::UIPadding"]
       40 DUPTABLE                         R9 K24 [{"PaddingTop", "PaddingBottom"}]
       41 GETIMPORT                        R10 K27 [UDim.new]
       43 LOADN                            R11 0
       44 LOADN                            R12 8
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K22 ["PaddingTop"]
       48 GETIMPORT                        R10 K27 [UDim.new]
       50 LOADN                            R11 0
       51 LOADN                            R12 16
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K23 ["PaddingBottom"]
       55 CALL                             R7 2 1
       56 MOVE                             R8 R2
       57 LOADK                            R9 K28 ["::UIListLayout"]
       58 DUPTABLE                         R10 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       59 GETIMPORT                        R11 K35 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R11 R10 K29 ["FillDirection"]
       63 GETIMPORT                        R11 K37 [Enum.HorizontalAlignment.Center]
       65 SETTABLEKS                       R11 R10 K30 ["HorizontalAlignment"]
       67 GETIMPORT                        R11 K39 [Enum.SortOrder.LayoutOrder]
       69 SETTABLEKS                       R11 R10 K31 ["SortOrder"]
       71 GETIMPORT                        R11 K27 [UDim.new]
       73 LOADN                            R12 0
       74 LOADN                            R13 10
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K32 ["Padding"]
       78 CALL                             R8 2 1
       79 MOVE                             R9 R2
       80 LOADK                            R10 K40 ["> #Navigation"]
       81 DUPTABLE                         R11 K41 [{["BackgroundTransparency"] = 1, ["Size"]}]
       82 GETIMPORT                        R12 K17 [UDim2.fromScale]
       84 LOADN                            R13 1
       85 LOADN                            R14 0
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K12 ["Size"]
       89 NEWTABLE                         R12 0 3
       91 MOVE                             R13 R2
       92 LOADK                            R14 K42 ["> #ErrorBanner"]
       93 DUPTABLE                         R15 K45 [{"AnchorPoint", "Position"}]
       94 GETIMPORT                        R16 K47 [Vector2.new]
       96 LOADN                            R17 0
       97 LOADK                            R18 K48 [0.5]
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K43 ["AnchorPoint"]
      101 GETIMPORT                        R16 K17 [UDim2.fromScale]
      103 LOADN                            R17 0
      104 LOADK                            R18 K48 [0.5]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K44 ["Position"]
      108 CALL                             R13 2 1
      109 MOVE                             R14 R2
      110 LOADK                            R15 K49 ["> #LeftAligned"]
      111 DUPTABLE                         R16 K50 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["AutomaticSize"]}]
      112 GETIMPORT                        R17 K47 [Vector2.new]
      114 LOADN                            R18 0
      115 LOADK                            R19 K48 [0.5]
      116 CALL                             R17 2 1
      117 SETTABLEKS                       R17 R16 K43 ["AnchorPoint"]
      119 GETIMPORT                        R17 K17 [UDim2.fromScale]
      121 LOADN                            R18 0
      122 LOADK                            R19 K48 [0.5]
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K44 ["Position"]
      126 GETIMPORT                        R17 K52 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R17 R16 K13 ["AutomaticSize"]
      130 NEWTABLE                         R17 0 4
      132 MOVE                             R18 R2
      133 LOADK                            R19 K28 ["::UIListLayout"]
      134 DUPTABLE                         R20 K54 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      135 GETIMPORT                        R21 K56 [Enum.FillDirection.Horizontal]
      137 SETTABLEKS                       R21 R20 K29 ["FillDirection"]
      139 GETIMPORT                        R21 K58 [Enum.HorizontalAlignment.Left]
      141 SETTABLEKS                       R21 R20 K30 ["HorizontalAlignment"]
      143 GETIMPORT                        R21 K59 [Enum.VerticalAlignment.Center]
      145 SETTABLEKS                       R21 R20 K53 ["VerticalAlignment"]
      147 GETIMPORT                        R21 K39 [Enum.SortOrder.LayoutOrder]
      149 SETTABLEKS                       R21 R20 K31 ["SortOrder"]
      151 GETIMPORT                        R21 K27 [UDim.new]
      153 LOADN                            R22 0
      154 LOADN                            R23 8
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K32 ["Padding"]
      158 CALL                             R18 2 1
      159 MOVE                             R19 R2
      160 LOADK                            R20 K60 ["> ImageLabel"]
      161 DUPTABLE                         R21 K41 [{["BackgroundTransparency"] = 1, ["Size"]}]
      162 GETIMPORT                        R22 K62 [UDim2.fromOffset]
      164 LOADN                            R23 16
      165 LOADN                            R24 16
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K12 ["Size"]
      169 CALL                             R19 2 1
      170 MOVE                             R20 R2
      171 LOADK                            R21 K63 ["> TextLabel"]
      172 DUPTABLE                         R22 K76 [{["TextColor3"] = "$TextPrimary", ["TextTransparency"] = 0.2, ["Font"] = "$FontBold", ["BackgroundTransparency"] = 1, ["TextSize"] = 16, ["TextXAlignment"], ["TextTruncate"], ["TextWrapped"] = False}]
      173 GETIMPORT                        R23 K77 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R23 R22 K72 ["TextXAlignment"]
      177 GETIMPORT                        R23 K79 [Enum.TextTruncate.AtEnd]
      179 SETTABLEKS                       R23 R22 K73 ["TextTruncate"]
      181 CALL                             R20 2 1
      182 MOVE                             R21 R2
      183 LOADK                            R22 K80 [">> ImageButton"]
      184 DUPTABLE                         R23 K83 [{["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      185 GETIMPORT                        R24 K47 [Vector2.new]
      187 LOADN                            R25 0
      188 LOADK                            R26 K48 [0.5]
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K43 ["AnchorPoint"]
      192 GETIMPORT                        R24 K17 [UDim2.fromScale]
      194 LOADN                            R25 16
      195 LOADN                            R26 16
      196 CALL                             R24 2 1
      197 SETTABLEKS                       R24 R23 K12 ["Size"]
      199 CALL                             R21 2 -1
      200 SETLIST                          R17 R18 -1 [1]
      202 CALL                             R14 3 1
      203 MOVE                             R15 R2
      204 LOADK                            R16 K84 ["> #RightAligned"]
      205 DUPTABLE                         R17 K85 [{["BackgroundTransparency"] = 1, ["AutomaticSize"], ["AnchorPoint"], ["Position"]}]
      206 GETIMPORT                        R18 K52 [Enum.AutomaticSize.XY]
      208 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
      210 GETIMPORT                        R18 K47 [Vector2.new]
      212 LOADN                            R19 1
      213 LOADK                            R20 K48 [0.5]
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K43 ["AnchorPoint"]
      217 GETIMPORT                        R18 K17 [UDim2.fromScale]
      219 LOADN                            R19 1
      220 LOADK                            R20 K48 [0.5]
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K44 ["Position"]
      224 NEWTABLE                         R18 0 2
      226 MOVE                             R19 R2
      227 LOADK                            R20 K28 ["::UIListLayout"]
      228 DUPTABLE                         R21 K54 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      229 GETIMPORT                        R22 K56 [Enum.FillDirection.Horizontal]
      231 SETTABLEKS                       R22 R21 K29 ["FillDirection"]
      233 GETIMPORT                        R22 K87 [Enum.HorizontalAlignment.Right]
      235 SETTABLEKS                       R22 R21 K30 ["HorizontalAlignment"]
      237 GETIMPORT                        R22 K59 [Enum.VerticalAlignment.Center]
      239 SETTABLEKS                       R22 R21 K53 ["VerticalAlignment"]
      241 GETIMPORT                        R22 K39 [Enum.SortOrder.LayoutOrder]
      243 SETTABLEKS                       R22 R21 K31 ["SortOrder"]
      245 GETIMPORT                        R22 K27 [UDim.new]
      247 LOADN                            R23 0
      248 LOADN                            R24 6
      249 CALL                             R22 2 1
      250 SETTABLEKS                       R22 R21 K32 ["Padding"]
      252 CALL                             R19 2 1
      253 MOVE                             R20 R2
      254 LOADK                            R21 K88 ["> .CloseButton"]
      255 DUPTABLE                         R22 K91 [{["Text"] = "", ["Size"], ["BackgroundTransparency"] = 1}]
      256 GETIMPORT                        R23 K62 [UDim2.fromOffset]
      258 LOADN                            R24 20
      259 LOADN                            R25 20
      260 CALL                             R23 2 1
      261 SETTABLEKS                       R23 R22 K12 ["Size"]
      263 NEWTABLE                         R23 0 4
      265 MOVE                             R24 R2
      266 LOADK                            R25 K21 ["::UIPadding"]
      267 DUPTABLE                         R26 K94 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      268 GETIMPORT                        R27 K27 [UDim.new]
      270 LOADN                            R28 0
      271 LOADN                            R29 2
      272 CALL                             R27 2 1
      273 SETTABLEKS                       R27 R26 K22 ["PaddingTop"]
      275 GETIMPORT                        R27 K27 [UDim.new]
      277 LOADN                            R28 0
      278 LOADN                            R29 2
      279 CALL                             R27 2 1
      280 SETTABLEKS                       R27 R26 K92 ["PaddingLeft"]
      282 GETIMPORT                        R27 K27 [UDim.new]
      284 LOADN                            R28 0
      285 LOADN                            R29 2
      286 CALL                             R27 2 1
      287 SETTABLEKS                       R27 R26 K93 ["PaddingRight"]
      289 GETIMPORT                        R27 K27 [UDim.new]
      291 LOADN                            R28 0
      292 LOADN                            R29 2
      293 CALL                             R27 2 1
      294 SETTABLEKS                       R27 R26 K23 ["PaddingBottom"]
      296 CALL                             R24 2 1
      297 MOVE                             R25 R2
      298 LOADK                            R26 K95 [":hover"]
      299 DUPTABLE                         R27 K99 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
      300 CALL                             R25 2 1
      301 MOVE                             R26 R2
      302 LOADK                            R27 K100 [":press"]
      303 DUPTABLE                         R28 K102 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift100Transparency"}]
      304 CALL                             R26 2 1
      305 MOVE                             R27 R2
      306 LOADK                            R28 K103 ["::UICorner"]
      307 DUPTABLE                         R29 K105 [{"CornerRadius"}]
      308 GETIMPORT                        R30 K27 [UDim.new]
      310 LOADN                            R31 0
      311 LOADN                            R32 4
      312 CALL                             R30 2 1
      313 SETTABLEKS                       R30 R29 K104 ["CornerRadius"]
      315 CALL                             R27 2 -1
      316 SETLIST                          R23 R24 -1 [1]
      318 CALL                             R20 3 -1
      319 SETLIST                          R18 R19 -1 [1]
      321 CALL                             R15 3 -1
      322 SETLIST                          R12 R13 -1 [1]
      324 CALL                             R9 3 -1
      325 SETLIST                          R6 R7 -1 [1]
      327 CALL                             R3 3 -1
      328 RETURN                           R3 -1
