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
       19 LOADK                            R4 K10 [".Toolbar"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 4
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIPadding"]
       26 DUPTABLE                         R9 K15 [{["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
       27 CALL                             R7 2 1
       28 MOVE                             R8 R2
       29 LOADK                            R9 K16 ["> .MediaButton"]
       30 DUPTABLE                         R10 K24 [{["BackgroundColor3"] = "$PrimaryMain", ["BackgroundTransparency"] = 0, ["Size"], ["TextColor3"] = "$TextPrimary"}]
       31 GETIMPORT                        R11 K27 [UDim2.fromOffset]
       33 LOADN                            R12 20
       34 LOADN                            R13 20
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K21 ["Size"]
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R2
       41 LOADK                            R13 K28 [":hover"]
       42 DUPTABLE                         R14 K30 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
       43 CALL                             R12 2 -1
       44 SETLIST                          R11 R12 -1 [1]
       46 CALL                             R8 3 1
       47 MOVE                             R9 R2
       48 LOADK                            R10 K31 [">> #Icon"]
       49 DUPTABLE                         R11 K35 [{["Size"], ["Position"], ["AnchorPoint"], ["ImageColor3"] = "$TextPrimary"}]
       50 GETIMPORT                        R12 K27 [UDim2.fromOffset]
       52 LOADN                            R13 20
       53 LOADN                            R14 20
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K21 ["Size"]
       57 GETIMPORT                        R12 K37 [UDim2.fromScale]
       59 LOADK                            R13 K38 [0.5]
       60 LOADK                            R14 K38 [0.5]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K32 ["Position"]
       64 GETIMPORT                        R12 K41 [Vector2.new]
       66 LOADK                            R13 K38 [0.5]
       67 LOADK                            R14 K38 [0.5]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K33 ["AnchorPoint"]
       71 CALL                             R9 2 1
       72 MOVE                             R10 R2
       73 LOADK                            R11 K42 ["> .Timeline"]
       74 DUPTABLE                         R12 K44 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
       75 NEWTABLE                         R13 0 7
       77 MOVE                             R14 R2
       78 LOADK                            R15 K45 ["> .LBorder"]
       79 NEWTABLE                         R16 0 0
       81 NEWTABLE                         R17 0 2
       83 MOVE                             R18 R2
       84 LOADK                            R19 K46 ["> .Tick"]
       85 DUPTABLE                         R20 K48 [{["Size"], ["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
       86 GETIMPORT                        R21 K49 [UDim2.new]
       88 LOADN                            R22 0
       89 LOADN                            R23 2
       90 LOADN                            R24 1
       91 LOADN                            R25 0
       92 CALL                             R21 4 1
       93 SETTABLEKS                       R21 R20 K21 ["Size"]
       95 CALL                             R18 2 1
       96 MOVE                             R19 R2
       97 LOADK                            R20 K50 ["> .Label"]
       98 DUPTABLE                         R21 K55 [{["AnchorPoint"], ["Position"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 14}]
       99 GETIMPORT                        R22 K41 [Vector2.new]
      101 LOADN                            R23 0
      102 LOADN                            R24 0
      103 CALL                             R22 2 1
      104 SETTABLEKS                       R22 R21 K33 ["AnchorPoint"]
      106 GETIMPORT                        R22 K49 [UDim2.new]
      108 LOADN                            R23 0
      109 LOADN                            R24 3
      110 LOADN                            R25 0
      111 LOADN                            R26 0
      112 CALL                             R22 4 1
      113 SETTABLEKS                       R22 R21 K32 ["Position"]
      115 GETIMPORT                        R22 K58 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R22 R21 K51 ["TextXAlignment"]
      119 GETIMPORT                        R22 K60 [Enum.TextYAlignment.Top]
      121 SETTABLEKS                       R22 R21 K52 ["TextYAlignment"]
      123 CALL                             R19 2 -1
      124 SETLIST                          R17 R18 -1 [1]
      126 CALL                             R14 3 1
      127 MOVE                             R15 R2
      128 LOADK                            R16 K61 ["> .RBorder"]
      129 NEWTABLE                         R17 0 0
      131 NEWTABLE                         R18 0 2
      133 MOVE                             R19 R2
      134 LOADK                            R20 K46 ["> .Tick"]
      135 DUPTABLE                         R21 K48 [{["Size"], ["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
      136 GETIMPORT                        R22 K49 [UDim2.new]
      138 LOADN                            R23 0
      139 LOADN                            R24 2
      140 LOADN                            R25 1
      141 LOADN                            R26 0
      142 CALL                             R22 4 1
      143 SETTABLEKS                       R22 R21 K21 ["Size"]
      145 CALL                             R19 2 1
      146 MOVE                             R20 R2
      147 LOADK                            R21 K50 ["> .Label"]
      148 DUPTABLE                         R22 K55 [{["AnchorPoint"], ["Position"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 14}]
      149 GETIMPORT                        R23 K41 [Vector2.new]
      151 LOADN                            R24 1
      152 LOADN                            R25 0
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K33 ["AnchorPoint"]
      156 GETIMPORT                        R23 K49 [UDim2.new]
      158 LOADN                            R24 0
      159 LOADN                            R25 -3
      160 LOADN                            R26 0
      161 LOADN                            R27 0
      162 CALL                             R23 4 1
      163 SETTABLEKS                       R23 R22 K32 ["Position"]
      165 GETIMPORT                        R23 K63 [Enum.TextXAlignment.Right]
      167 SETTABLEKS                       R23 R22 K51 ["TextXAlignment"]
      169 GETIMPORT                        R23 K60 [Enum.TextYAlignment.Top]
      171 SETTABLEKS                       R23 R22 K52 ["TextYAlignment"]
      173 CALL                             R20 2 -1
      174 SETLIST                          R18 R19 -1 [1]
      176 CALL                             R15 3 1
      177 MOVE                             R16 R2
      178 LOADK                            R17 K64 ["> .Major"]
      179 NEWTABLE                         R18 0 0
      181 NEWTABLE                         R19 0 2
      183 MOVE                             R20 R2
      184 LOADK                            R21 K46 ["> .Tick"]
      185 DUPTABLE                         R22 K48 [{["Size"], ["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
      186 GETIMPORT                        R23 K49 [UDim2.new]
      188 LOADN                            R24 0
      189 LOADN                            R25 1
      190 LOADK                            R26 K65 [0.6]
      191 LOADN                            R27 0
      192 CALL                             R23 4 1
      193 SETTABLEKS                       R23 R22 K21 ["Size"]
      195 CALL                             R20 2 1
      196 MOVE                             R21 R2
      197 LOADK                            R22 K50 ["> .Label"]
      198 DUPTABLE                         R23 K55 [{["AnchorPoint"], ["Position"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 14}]
      199 GETIMPORT                        R24 K41 [Vector2.new]
      201 LOADN                            R25 0
      202 LOADN                            R26 0
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K33 ["AnchorPoint"]
      206 GETIMPORT                        R24 K49 [UDim2.new]
      208 LOADN                            R25 0
      209 LOADN                            R26 3
      210 LOADN                            R27 0
      211 LOADN                            R28 0
      212 CALL                             R24 4 1
      213 SETTABLEKS                       R24 R23 K32 ["Position"]
      215 GETIMPORT                        R24 K58 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R24 R23 K51 ["TextXAlignment"]
      219 GETIMPORT                        R24 K60 [Enum.TextYAlignment.Top]
      221 SETTABLEKS                       R24 R23 K52 ["TextYAlignment"]
      223 CALL                             R21 2 -1
      224 SETLIST                          R19 R20 -1 [1]
      226 CALL                             R16 3 1
      227 MOVE                             R17 R2
      228 LOADK                            R18 K66 ["> .Medium"]
      229 NEWTABLE                         R19 0 0
      231 NEWTABLE                         R20 0 2
      233 MOVE                             R21 R2
      234 LOADK                            R22 K46 ["> .Tick"]
      235 DUPTABLE                         R23 K48 [{["Size"], ["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
      236 GETIMPORT                        R24 K49 [UDim2.new]
      238 LOADN                            R25 0
      239 LOADN                            R26 1
      240 LOADK                            R27 K67 [0.4]
      241 LOADN                            R28 0
      242 CALL                             R24 4 1
      243 SETTABLEKS                       R24 R23 K21 ["Size"]
      245 CALL                             R21 2 1
      246 MOVE                             R22 R2
      247 LOADK                            R23 K50 ["> .Label"]
      248 DUPTABLE                         R24 K70 [{["Visible"] = False}]
      249 CALL                             R22 2 -1
      250 SETLIST                          R20 R21 -1 [1]
      252 CALL                             R17 3 1
      253 MOVE                             R18 R2
      254 LOADK                            R19 K71 ["> .Minor"]
      255 NEWTABLE                         R20 0 0
      257 NEWTABLE                         R21 0 2
      259 MOVE                             R22 R2
      260 LOADK                            R23 K46 ["> .Tick"]
      261 DUPTABLE                         R24 K48 [{["Size"], ["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
      262 GETIMPORT                        R25 K49 [UDim2.new]
      264 LOADN                            R26 0
      265 LOADN                            R27 1
      266 LOADK                            R28 K72 [0.2]
      267 LOADN                            R29 0
      268 CALL                             R25 4 1
      269 SETTABLEKS                       R25 R24 K21 ["Size"]
      271 CALL                             R22 2 1
      272 MOVE                             R23 R2
      273 LOADK                            R24 K50 ["> .Label"]
      274 DUPTABLE                         R25 K70 [{["Visible"] = False}]
      275 CALL                             R23 2 -1
      276 SETLIST                          R21 R22 -1 [1]
      278 CALL                             R18 3 1
      279 MOVE                             R19 R2
      280 LOADK                            R20 K73 ["> #BufferBar"]
      281 DUPTABLE                         R21 K75 [{["BackgroundColor3"] = "$Blue60", ["BackgroundTransparency"] = 0.5, ["AnchorPoint"], ["Position"]}]
      282 GETIMPORT                        R22 K41 [Vector2.new]
      284 LOADN                            R23 1
      285 LOADN                            R24 1
      286 CALL                             R22 2 1
      287 SETTABLEKS                       R22 R21 K33 ["AnchorPoint"]
      289 GETIMPORT                        R22 K37 [UDim2.fromScale]
      291 LOADN                            R23 1
      292 LOADN                            R24 1
      293 CALL                             R22 2 1
      294 SETTABLEKS                       R22 R21 K32 ["Position"]
      296 CALL                             R19 2 1
      297 MOVE                             R20 R2
      298 LOADK                            R21 K76 [">> .Scrubber"]
      299 DUPTABLE                         R22 K77 [{["AnchorPoint"], ["BackgroundColor3"] = "$Blue60", ["BackgroundTransparency"] = 0}]
      300 GETIMPORT                        R23 K41 [Vector2.new]
      302 LOADK                            R24 K38 [0.5]
      303 LOADN                            R25 0
      304 CALL                             R23 2 1
      305 SETTABLEKS                       R23 R22 K33 ["AnchorPoint"]
      307 CALL                             R20 2 -1
      308 SETLIST                          R13 R14 -1 [1]
      310 CALL                             R10 3 -1
      311 SETLIST                          R6 R7 -1 [1]
      313 DUPTABLE                         R7 K83 [{["ScrubberLineSize"], ["ScrubberHeadSize"], ["BufferBarHeight"] = 3, ["Padding"]}]
      314 GETIMPORT                        R8 K49 [UDim2.new]
      316 LOADN                            R9 0
      317 LOADN                            R10 1
      318 LOADN                            R11 1
      319 LOADN                            R12 0
      320 CALL                             R8 4 1
      321 SETTABLEKS                       R8 R7 K78 ["ScrubberLineSize"]
      323 GETIMPORT                        R8 K27 [UDim2.fromOffset]
      325 LOADN                            R9 5
      326 LOADN                            R10 5
      327 CALL                             R8 2 1
      328 SETTABLEKS                       R8 R7 K79 ["ScrubberHeadSize"]
      330 GETIMPORT                        R8 K85 [UDim.new]
      332 LOADN                            R9 0
      333 LOADN                            R10 10
      334 CALL                             R8 2 1
      335 SETTABLEKS                       R8 R7 K82 ["Padding"]
      337 CALL                             R3 4 -1
      338 RETURN                           R3 -1
