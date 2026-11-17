MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["getFFlagExplorerFixBlurryTextHopefully"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagExplorerUseBuilderSans"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["Styling"]
       37 GETTABLEKS                       R5 R5 K14 ["createStyleRule"]
       39 MOVE                             R6 R5
       40 LOADK                            R7 K15 [".Explorer-SearchBox"]
       41 DUPTABLE                         R8 K19 [{["BackgroundTransparency"] = 1, ["Size"]}]
       42 GETIMPORT                        R9 K22 [UDim2.fromScale]
       44 LOADN                            R10 1
       45 LOADN                            R11 1
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K18 ["Size"]
       49 NEWTABLE                         R9 0 8
       51 MOVE                             R10 R5
       52 LOADK                            R11 K23 [">> .Explorer-SearchBox-Corner ::UICorner"]
       53 DUPTABLE                         R12 K25 [{"CornerRadius"}]
       54 GETIMPORT                        R13 K28 [UDim.new]
       56 LOADN                            R14 0
       57 LOADN                            R15 6
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K24 ["CornerRadius"]
       61 CALL                             R10 2 1
       62 MOVE                             R11 R5
       63 LOADK                            R12 K29 [">> .Explorer-SearchBox-SearchBar"]
       64 NEWTABLE                         R13 0 0
       66 NEWTABLE                         R14 0 2
       68 MOVE                             R15 R5
       69 LOADK                            R16 K30 [">> UIStroke"]
       70 DUPTABLE                         R17 K35 [{["Color"] = "$RDLSemanticColorActionPrimaryBrandFill", ["Thickness"] = 1.5}]
       71 CALL                             R15 2 1
       72 MOVE                             R16 R5
       73 LOADK                            R17 K36 [">> TextBox"]
       74 DUPTABLE                         R18 K53 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["ClipsDescendants"] = True, ["Font"], ["PlaceholderColor3"] = "$RDLSemanticColorContentMuted", ["Position"], ["TextColor3"], ["Text"] = "", ["TextSize"], ["TextXAlignment"]}]
       75 GETIMPORT                        R19 K55 [Vector2.new]
       77 LOADK                            R20 K56 [0.5]
       78 LOADK                            R21 K56 [0.5]
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K37 ["AnchorPoint"]
       82 MOVE                             R20 R4
       83 CALL                             R20 0 1
       84 JUMPIFNOT                        R20 ; [+2]
       85 LOADNIL                          R19
       86 JUMP                             ; [+2]
       87 GETIMPORT                        R19 K59 [Enum.Font.SourceSans]
       89 SETTABLEKS                       R19 R18 K44 ["Font"]
       91 GETIMPORT                        R19 K22 [UDim2.fromScale]
       93 LOADK                            R20 K56 [0.5]
       94 LOADK                            R21 K56 [0.5]
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K47 ["Position"]
       98 MOVE                             R20 R3
       99 CALL                             R20 0 1
      100 JUMPIFNOT                        R20 ; [+2]
      101 LOADNIL                          R19
      102 JUMP                             ; [+1]
      103 LOADK                            R19 K46 ["$RDLSemanticColorContentMuted"]
      104 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      106 MOVE                             R20 R3
      107 CALL                             R20 0 1
      108 JUMPIFNOT                        R20 ; [+2]
      109 LOADNIL                          R19
      110 JUMP                             ; [+1]
      111 LOADK                            R19 K60 [17.598]
      112 SETTABLEKS                       R19 R18 K51 ["TextSize"]
      114 GETIMPORT                        R19 K62 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R19 R18 K52 ["TextXAlignment"]
      118 CALL                             R16 2 -1
      119 SETLIST                          R14 R15 -1 [1]
      121 CALL                             R11 3 1
      122 MOVE                             R12 R5
      123 LOADK                            R13 K63 [">> .Explorer-SearchBox-SearchBrowser"]
      124 DUPTABLE                         R14 K19 [{["BackgroundTransparency"] = 1, ["Size"]}]
      125 GETIMPORT                        R15 K64 [UDim2.new]
      127 LOADN                            R16 1
      128 LOADN                            R17 0
      129 LOADN                            R18 0
      130 LOADN                            R19 20
      131 CALL                             R15 4 1
      132 SETTABLEKS                       R15 R14 K18 ["Size"]
      134 NEWTABLE                         R15 0 1
      136 MOVE                             R16 R5
      137 LOADK                            R17 K65 [">> TextLabel"]
      138 DUPTABLE                         R18 K66 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Font"], ["Size"], ["TextColor3"], ["TextSize"], ["TextXAlignment"]}]
      139 MOVE                             R20 R4
      140 CALL                             R20 0 1
      141 JUMPIFNOT                        R20 ; [+2]
      142 LOADNIL                          R19
      143 JUMP                             ; [+2]
      144 GETIMPORT                        R19 K59 [Enum.Font.SourceSans]
      146 SETTABLEKS                       R19 R18 K44 ["Font"]
      148 GETIMPORT                        R19 K22 [UDim2.fromScale]
      150 LOADN                            R20 1
      151 LOADN                            R21 1
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K18 ["Size"]
      155 MOVE                             R20 R3
      156 CALL                             R20 0 1
      157 JUMPIFNOT                        R20 ; [+2]
      158 LOADNIL                          R19
      159 JUMP                             ; [+1]
      160 LOADK                            R19 K46 ["$RDLSemanticColorContentMuted"]
      161 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      163 MOVE                             R20 R3
      164 CALL                             R20 0 1
      165 JUMPIFNOT                        R20 ; [+2]
      166 LOADNIL                          R19
      167 JUMP                             ; [+1]
      168 LOADK                            R19 K60 [17.598]
      169 SETTABLEKS                       R19 R18 K51 ["TextSize"]
      171 GETIMPORT                        R19 K62 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R19 R18 K52 ["TextXAlignment"]
      175 CALL                             R16 2 -1
      176 SETLIST                          R15 R16 -1 [1]
      178 CALL                             R12 3 1
      179 MOVE                             R13 R5
      180 LOADK                            R14 K67 [">> .Explorer-SearchBox-BottomBorder"]
      181 DUPTABLE                         R15 K68 [{["AnchorPoint"], ["BorderSizePixel"] = 0, ["Size"]}]
      182 GETIMPORT                        R16 K55 [Vector2.new]
      184 LOADK                            R17 K56 [0.5]
      185 LOADN                            R18 0
      186 CALL                             R16 2 1
      187 SETTABLEKS                       R16 R15 K37 ["AnchorPoint"]
      189 GETIMPORT                        R16 K64 [UDim2.new]
      191 LOADN                            R17 1
      192 LOADN                            R18 10
      193 LOADN                            R19 0
      194 GETTABLEKS                       R20 R1 K69 ["searchHeaderBottomBorderWidth"]
      196 CALL                             R16 4 1
      197 SETTABLEKS                       R16 R15 K18 ["Size"]
      199 CALL                             R13 2 1
      200 MOVE                             R14 R5
      201 LOADK                            R15 K70 [">> .Explorer-SearchBox-Dropdown"]
      202 DUPTABLE                         R16 K72 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
      203 GETIMPORT                        R17 K55 [Vector2.new]
      205 LOADK                            R18 K56 [0.5]
      206 LOADN                            R19 0
      207 CALL                             R17 2 1
      208 SETTABLEKS                       R17 R16 K37 ["AnchorPoint"]
      210 GETIMPORT                        R17 K74 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R17 R16 K71 ["AutomaticSize"]
      214 GETIMPORT                        R17 K22 [UDim2.fromScale]
      216 LOADK                            R18 K56 [0.5]
      217 LOADN                            R19 0
      218 CALL                             R17 2 1
      219 SETTABLEKS                       R17 R16 K47 ["Position"]
      221 GETIMPORT                        R17 K64 [UDim2.new]
      223 LOADN                            R18 1
      224 LOADN                            R19 -10
      225 LOADN                            R20 0
      226 LOADN                            R21 0
      227 CALL                             R17 4 1
      228 SETTABLEKS                       R17 R16 K18 ["Size"]
      230 NEWTABLE                         R17 0 2
      232 MOVE                             R18 R5
      233 LOADK                            R19 K75 ["::UIStroke"]
      234 DUPTABLE                         R20 K79 [{["Color"] = "$RDLSemanticColorComponentInputFill", ["Transparency"] = "$RDLSemanticColorComponentInputFillTransparency", ["Thickness"] = 1.5}]
      235 CALL                             R18 2 1
      236 MOVE                             R19 R5
      237 LOADK                            R20 K80 [">> ScrollingFrame"]
      238 DUPTABLE                         R21 K84 [{["AnchorPoint"], ["AutomaticCanvasSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["CanvasSize"], ["Position"], ["ScrollingDirection"]}]
      239 GETIMPORT                        R22 K55 [Vector2.new]
      241 LOADK                            R23 K56 [0.5]
      242 LOADK                            R24 K56 [0.5]
      243 CALL                             R22 2 1
      244 SETTABLEKS                       R22 R21 K37 ["AnchorPoint"]
      246 GETIMPORT                        R22 K74 [Enum.AutomaticSize.Y]
      248 SETTABLEKS                       R22 R21 K81 ["AutomaticCanvasSize"]
      250 GETIMPORT                        R22 K22 [UDim2.fromScale]
      252 LOADN                            R23 1
      253 LOADN                            R24 0
      254 CALL                             R22 2 1
      255 SETTABLEKS                       R22 R21 K82 ["CanvasSize"]
      257 GETIMPORT                        R22 K22 [UDim2.fromScale]
      259 LOADK                            R23 K56 [0.5]
      260 LOADK                            R24 K56 [0.5]
      261 CALL                             R22 2 1
      262 SETTABLEKS                       R22 R21 K47 ["Position"]
      264 GETIMPORT                        R22 K85 [Enum.ScrollingDirection.Y]
      266 SETTABLEKS                       R22 R21 K83 ["ScrollingDirection"]
      268 CALL                             R19 2 -1
      269 SETLIST                          R17 R18 -1 [1]
      271 CALL                             R14 3 1
      272 MOVE                             R15 R5
      273 LOADK                            R16 K86 [">> .Explorer-SearchBox-DropdownHeader"]
      274 DUPTABLE                         R17 K19 [{["BackgroundTransparency"] = 1, ["Size"]}]
      275 GETIMPORT                        R18 K64 [UDim2.new]
      277 LOADN                            R19 1
      278 LOADN                            R20 0
      279 LOADN                            R21 0
      280 LOADN                            R22 25
      281 CALL                             R18 4 1
      282 SETTABLEKS                       R18 R17 K18 ["Size"]
      284 CALL                             R15 2 1
      285 MOVE                             R16 R5
      286 LOADK                            R17 K87 [">> .Explorer-SearchBox-DropdownTitle"]
      287 DUPTABLE                         R18 K89 [{["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      288 MOVE                             R20 R4
      289 CALL                             R20 0 1
      290 JUMPIFNOT                        R20 ; [+2]
      291 LOADNIL                          R19
      292 JUMP                             ; [+2]
      293 GETIMPORT                        R19 K59 [Enum.Font.SourceSans]
      295 SETTABLEKS                       R19 R18 K44 ["Font"]
      297 MOVE                             R20 R3
      298 CALL                             R20 0 1
      299 JUMPIFNOT                        R20 ; [+2]
      300 LOADNIL                          R19
      301 JUMP                             ; [+1]
      302 LOADK                            R19 K46 ["$RDLSemanticColorContentMuted"]
      303 SETTABLEKS                       R19 R18 K48 ["TextColor3"]
      305 MOVE                             R20 R3
      306 CALL                             R20 0 1
      307 JUMPIFNOT                        R20 ; [+2]
      308 LOADNIL                          R19
      309 JUMP                             ; [+1]
      310 LOADK                            R19 K60 [17.598]
      311 SETTABLEKS                       R19 R18 K51 ["TextSize"]
      313 GETIMPORT                        R19 K62 [Enum.TextXAlignment.Left]
      315 SETTABLEKS                       R19 R18 K52 ["TextXAlignment"]
      317 GETIMPORT                        R19 K91 [Enum.TextYAlignment.Top]
      319 SETTABLEKS                       R19 R18 K88 ["TextYAlignment"]
      321 CALL                             R16 2 1
      322 MOVE                             R17 R5
      323 LOADK                            R18 K92 [">> .Explorer-SearchBox-DropdownItem"]
      324 DUPTABLE                         R19 K95 [{["BackgroundColor3"] = "$RDLSemanticColorStatesHover", ["Text"] = ""}]
      325 NEWTABLE                         R20 0 1
      327 MOVE                             R21 R5
      328 LOADK                            R22 K65 [">> TextLabel"]
      329 DUPTABLE                         R23 K96 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      330 GETIMPORT                        R24 K62 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R24 R23 K52 ["TextXAlignment"]
      334 CALL                             R21 2 -1
      335 SETLIST                          R20 R21 -1 [1]
      337 CALL                             R17 3 -1
      338 SETLIST                          R9 R10 -1 [1]
      340 CALL                             R6 3 -1
      341 RETURN                           R6 -1
