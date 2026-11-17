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
       19 LOADK                            R4 K10 [".LayerTreeRow"]
       20 DUPTABLE                         R5 K17 [{["BorderSizePixel"] = 0, ["Size"], ["Padding"], ["Spacing"] = 5}]
       21 GETIMPORT                        R6 K20 [UDim2.new]
       23 LOADN                            R7 1
       24 LOADN                            R8 0
       25 LOADN                            R9 0
       26 LOADN                            R10 24
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K13 ["Size"]
       30 DUPTABLE                         R6 K26 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 0, ["Right"] = 0}]
       31 SETTABLEKS                       R6 R5 K14 ["Padding"]
       33 NEWTABLE                         R6 0 15
       35 MOVE                             R7 R2
       36 LOADK                            R8 K27 ["> .Client"]
       37 DUPTABLE                         R9 K31 [{["TextColor3"] = "$Client", ["ImageColor3"] = "$Client"}]
       38 CALL                             R7 2 1
       39 MOVE                             R8 R2
       40 LOADK                            R9 K32 ["> .Server"]
       41 DUPTABLE                         R10 K34 [{["TextColor3"] = "$Server", ["ImageColor3"] = "$Server"}]
       42 CALL                             R8 2 1
       43 MOVE                             R9 R2
       44 LOADK                            R10 K35 ["> #Toggle"]
       45 DUPTABLE                         R11 K37 [{["Size"] = "$IconSize"}]
       46 NEWTABLE                         R12 0 1
       48 MOVE                             R13 R2
       49 LOADK                            R14 K38 ["> #ToggleButton"]
       50 DUPTABLE                         R15 K46 [{["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["Size"] = "$IconSize", ["ImageRectSize"], ["ImageColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"]}]
       51 GETIMPORT                        R16 K48 [Vector2.new]
       53 LOADN                            R17 12
       54 LOADN                            R18 12
       55 CALL                             R16 2 1
       56 SETTABLEKS                       R16 R15 K41 ["ImageRectSize"]
       58 GETIMPORT                        R16 K50 [UDim2.fromScale]
       60 LOADK                            R17 K51 [0.5]
       61 LOADK                            R18 K51 [0.5]
       62 CALL                             R16 2 1
       63 SETTABLEKS                       R16 R15 K44 ["Position"]
       65 GETIMPORT                        R16 K48 [Vector2.new]
       67 LOADK                            R17 K51 [0.5]
       68 LOADK                            R18 K51 [0.5]
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R15 K45 ["AnchorPoint"]
       72 CALL                             R13 2 -1
       73 SETLIST                          R12 R13 -1 [1]
       75 CALL                             R9 3 1
       76 MOVE                             R10 R2
       77 LOADK                            R11 K52 ["> .LayerIcon"]
       78 DUPTABLE                         R12 K54 [{["Image"] = "rbxasset://textures/CompositorDebugger/default.png", ["Size"] = "$IconSize"}]
       79 CALL                             R10 2 1
       80 MOVE                             R11 R2
       81 LOADK                            R12 K55 ["> .Blend1D"]
       82 DUPTABLE                         R13 K57 [{["Image"] = "rbxasset://textures/CompositorDebugger/blend1d.png"}]
       83 CALL                             R11 2 1
       84 MOVE                             R12 R2
       85 LOADK                            R13 K58 ["> .Blend2D"]
       86 DUPTABLE                         R14 K60 [{["Image"] = "rbxasset://textures/CompositorDebugger/blend2d.png"}]
       87 CALL                             R12 2 1
       88 MOVE                             R13 R2
       89 LOADK                            R14 K61 ["> .BlendSpace"]
       90 DUPTABLE                         R15 K60 [{["Image"] = "rbxasset://textures/CompositorDebugger/blend2d.png"}]
       91 CALL                             R13 2 1
       92 MOVE                             R14 R2
       93 LOADK                            R15 K62 ["> .ClipLayer"]
       94 DUPTABLE                         R16 K64 [{["Image"] = "rbxasset://textures/CompositorDebugger/clip.png"}]
       95 CALL                             R14 2 1
       96 MOVE                             R15 R2
       97 LOADK                            R16 K65 ["> .SelectLayer"]
       98 DUPTABLE                         R17 K67 [{["Image"] = "rbxasset://textures/CompositorDebugger/select.png"}]
       99 CALL                             R15 2 1
      100 MOVE                             R16 R2
      101 LOADK                            R17 K68 ["> .SequenceLayer"]
      102 DUPTABLE                         R18 K70 [{["Image"] = "rbxasset://textures/CompositorDebugger/sequence.png"}]
      103 CALL                             R16 2 1
      104 MOVE                             R17 R2
      105 LOADK                            R18 K71 ["> .Name"]
      106 DUPTABLE                         R19 K74 [{"TextTruncate", "TextXAlignment"}]
      107 GETIMPORT                        R20 K77 [Enum.TextTruncate.AtEnd]
      109 SETTABLEKS                       R20 R19 K72 ["TextTruncate"]
      111 GETIMPORT                        R20 K78 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R20 R19 K73 ["TextXAlignment"]
      115 CALL                             R17 2 1
      116 MOVE                             R18 R2
      117 LOADK                            R19 K79 ["> .RigName"]
      118 DUPTABLE                         R20 K81 [{"Font"}]
      119 GETIMPORT                        R21 K83 [Enum.Font.SourceSansBold]
      121 SETTABLEKS                       R21 R20 K80 ["Font"]
      123 CALL                             R18 2 1
      124 MOVE                             R19 R2
      125 LOADK                            R20 K84 ["> #Timestamp"]
      126 NEWTABLE                         R21 0 0
      128 NEWTABLE                         R22 0 1
      130 MOVE                             R23 R2
      131 LOADK                            R24 K85 ["> #ProgressBar"]
      132 DUPTABLE                         R25 K90 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0, ["BorderColor3"] = "$TextSecondary", ["BorderSizePixel"] = 1, ["AnchorPoint"], ["Size"], ["Position"]}]
      133 GETIMPORT                        R26 K48 [Vector2.new]
      135 LOADK                            R27 K51 [0.5]
      136 LOADN                            R28 1
      137 CALL                             R26 2 1
      138 SETTABLEKS                       R26 R25 K45 ["AnchorPoint"]
      140 GETIMPORT                        R26 K20 [UDim2.new]
      142 LOADN                            R27 1
      143 LOADN                            R28 0
      144 LOADN                            R29 0
      145 LOADN                            R30 2
      146 CALL                             R26 4 1
      147 SETTABLEKS                       R26 R25 K13 ["Size"]
      149 GETIMPORT                        R26 K20 [UDim2.new]
      151 LOADK                            R27 K51 [0.5]
      152 LOADN                            R28 0
      153 LOADN                            R29 1
      154 LOADN                            R30 -1
      155 CALL                             R26 4 1
      156 SETTABLEKS                       R26 R25 K44 ["Position"]
      158 CALL                             R23 2 -1
      159 SETLIST                          R22 R23 -1 [1]
      161 CALL                             R19 3 1
      162 MOVE                             R20 R2
      163 LOADK                            R21 K91 ["> #Adornment"]
      164 DUPTABLE                         R22 K92 [{["Size"], ["BackgroundTransparency"] = 1}]
      165 GETIMPORT                        R23 K20 [UDim2.new]
      167 LOADN                            R24 0
      168 LOADN                            R25 12
      169 LOADN                            R26 1
      170 LOADN                            R27 0
      171 CALL                             R23 4 1
      172 SETTABLEKS                       R23 R22 K13 ["Size"]
      174 NEWTABLE                         R23 0 2
      176 MOVE                             R24 R2
      177 LOADK                            R25 K93 ["> #EyeIcon"]
      178 DUPTABLE                         R26 K96 [{["Size"] = "$IconSize", ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0, ["Image"] = "rbxasset://textures/CompositorDebugger/eye.png"}]
      179 GETIMPORT                        R27 K50 [UDim2.fromScale]
      181 LOADK                            R28 K51 [0.5]
      182 LOADK                            R29 K51 [0.5]
      183 CALL                             R27 2 1
      184 SETTABLEKS                       R27 R26 K44 ["Position"]
      186 GETIMPORT                        R27 K48 [Vector2.new]
      188 LOADK                            R28 K51 [0.5]
      189 LOADK                            R29 K51 [0.5]
      190 CALL                             R27 2 1
      191 SETTABLEKS                       R27 R26 K45 ["AnchorPoint"]
      193 NEWTABLE                         R27 0 2
      195 MOVE                             R28 R2
      196 LOADK                            R29 K97 [".AdornmentOff"]
      197 DUPTABLE                         R30 K98 [{["ImageColor3"] = "$BackgroundPaper"}]
      198 CALL                             R28 2 1
      199 MOVE                             R29 R2
      200 LOADK                            R30 K99 [".AdornmentOn"]
      201 DUPTABLE                         R31 K100 [{["ImageColor3"] = "$TextPrimary"}]
      202 CALL                             R29 2 -1
      203 SETLIST                          R27 R28 -1 [1]
      205 CALL                             R24 3 1
      206 MOVE                             R25 R2
      207 LOADK                            R26 K101 ["> #Dot"]
      208 DUPTABLE                         R27 K103 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0, ["Image"] = "rbxasset://textures/CompositorDebugger/adornmentDot.png"}]
      209 GETIMPORT                        R28 K105 [UDim2.fromOffset]
      211 LOADN                            R29 10
      212 LOADN                            R30 10
      213 CALL                             R28 2 1
      214 SETTABLEKS                       R28 R27 K13 ["Size"]
      216 GETIMPORT                        R28 K50 [UDim2.fromScale]
      218 LOADK                            R29 K51 [0.5]
      219 LOADK                            R30 K51 [0.5]
      220 CALL                             R28 2 1
      221 SETTABLEKS                       R28 R27 K44 ["Position"]
      223 GETIMPORT                        R28 K48 [Vector2.new]
      225 LOADK                            R29 K51 [0.5]
      226 LOADK                            R30 K51 [0.5]
      227 CALL                             R28 2 1
      228 SETTABLEKS                       R28 R27 K45 ["AnchorPoint"]
      230 NEWTABLE                         R28 0 12
      232 MOVE                             R29 R2
      233 LOADK                            R30 K106 [".AdornmentDotOff"]
      234 DUPTABLE                         R31 K107 [{["ImageTransparency"] = 1}]
      235 CALL                             R29 2 1
      236 MOVE                             R30 R2
      237 LOADK                            R31 K108 [".AdornmentDot1"]
      238 DUPTABLE                         R32 K110 [{["ImageColor3"] = "$AdornmentDot1"}]
      239 CALL                             R30 2 1
      240 MOVE                             R31 R2
      241 LOADK                            R32 K111 [".AdornmentDot2"]
      242 DUPTABLE                         R33 K113 [{["ImageColor3"] = "$AdornmentDot2"}]
      243 CALL                             R31 2 1
      244 MOVE                             R32 R2
      245 LOADK                            R33 K114 [".AdornmentDot3"]
      246 DUPTABLE                         R34 K116 [{["ImageColor3"] = "$AdornmentDot3"}]
      247 CALL                             R32 2 1
      248 MOVE                             R33 R2
      249 LOADK                            R34 K117 [".AdornmentDot4"]
      250 DUPTABLE                         R35 K119 [{["ImageColor3"] = "$AdornmentDot4"}]
      251 CALL                             R33 2 1
      252 MOVE                             R34 R2
      253 LOADK                            R35 K120 [".AdornmentDot5"]
      254 DUPTABLE                         R36 K122 [{["ImageColor3"] = "$AdornmentDot5"}]
      255 CALL                             R34 2 1
      256 MOVE                             R35 R2
      257 LOADK                            R36 K123 [".AdornmentDot6"]
      258 DUPTABLE                         R37 K125 [{["ImageColor3"] = "$AdornmentDot6"}]
      259 CALL                             R35 2 1
      260 MOVE                             R36 R2
      261 LOADK                            R37 K126 [".AdornmentDot7"]
      262 DUPTABLE                         R38 K128 [{["ImageColor3"] = "$AdornmentDot7"}]
      263 CALL                             R36 2 1
      264 MOVE                             R37 R2
      265 LOADK                            R38 K129 [".AdornmentDot8"]
      266 DUPTABLE                         R39 K131 [{["ImageColor3"] = "$AdornmentDot8"}]
      267 CALL                             R37 2 1
      268 MOVE                             R38 R2
      269 LOADK                            R39 K132 [".AdornmentDot9"]
      270 DUPTABLE                         R40 K134 [{["ImageColor3"] = "$AdornmentDot9"}]
      271 CALL                             R38 2 1
      272 MOVE                             R39 R2
      273 LOADK                            R40 K135 [".AdornmentDot10"]
      274 DUPTABLE                         R41 K137 [{["ImageColor3"] = "$AdornmentDot10"}]
      275 CALL                             R39 2 1
      276 MOVE                             R40 R2
      277 LOADK                            R41 K138 [".AdornmentDot11"]
      278 DUPTABLE                         R42 K140 [{["ImageColor3"] = "$AdornmentDot11"}]
      279 CALL                             R40 2 -1
      280 SETLIST                          R28 R29 -1 [1]
      282 CALL                             R25 3 -1
      283 SETLIST                          R23 R24 -1 [1]
      285 CALL                             R20 3 1
      286 MOVE                             R21 R2
      287 LOADK                            R22 K141 [":hover"]
      288 DUPTABLE                         R23 K143 [{["BackgroundColor3"] = "$LayerHover", ["BackgroundTransparency"] = 0}]
      289 CALL                             R21 2 -1
      290 SETLIST                          R6 R7 -1 [1]
      292 DUPTABLE                         R7 K151 [{["Indent"] = 17, ["Client"], ["Server"], ["IconSize"], ["ExpandedOffset"], ["CollapsedOffset"]}]
      293 GETIMPORT                        R8 K154 [Color3.fromHex]
      295 LOADK                            R9 K155 ["349AD5"]
      296 CALL                             R8 1 1
      297 SETTABLEKS                       R8 R7 K146 ["Client"]
      299 GETIMPORT                        R8 K154 [Color3.fromHex]
      301 LOADK                            R9 K156 ["00CC67"]
      302 CALL                             R8 1 1
      303 SETTABLEKS                       R8 R7 K147 ["Server"]
      305 GETIMPORT                        R8 K20 [UDim2.new]
      307 LOADN                            R9 0
      308 LOADN                            R10 12
      309 LOADN                            R11 0
      310 LOADN                            R12 12
      311 CALL                             R8 4 1
      312 SETTABLEKS                       R8 R7 K148 ["IconSize"]
      314 GETIMPORT                        R8 K48 [Vector2.new]
      316 LOADN                            R9 24
      317 LOADN                            R10 0
      318 CALL                             R8 2 1
      319 SETTABLEKS                       R8 R7 K149 ["ExpandedOffset"]
      321 GETIMPORT                        R8 K48 [Vector2.new]
      323 LOADN                            R9 12
      324 LOADN                            R10 0
      325 CALL                             R8 2 1
      326 SETTABLEKS                       R8 R7 K150 ["CollapsedOffset"]
      328 CALL                             R3 4 -1
      329 RETURN                           R3 -1
