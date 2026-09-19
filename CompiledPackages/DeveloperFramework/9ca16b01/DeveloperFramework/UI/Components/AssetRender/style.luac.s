PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["MediaPlayerControls"]
        5 GETTABLEKS                       R2 R2 K1 ["Controls"]
        7 GETTABLEKS                       R4 R1 K0 ["MediaPlayerControls"]
        9 GETTABLEKS                       R4 R4 K1 ["Controls"]
       11 GETTABLEKS                       R4 R4 K2 ["Size"]
       13 GETIMPORT                        R5 K5 [UDim2.new]
       15 LOADN                            R6 0
       16 LOADN                            R7 32
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 CALL                             R5 4 1
       20 SUB                              R3 R4 R5
       21 SETTABLEKS                       R3 R2 K2 ["Size"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["StyleModifier"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K6 [require]
       30 GETTABLEKS                       R5 R0 K4 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["deepCopy"]
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["Box"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K13 ["Components"]
       52 GETTABLEKS                       R8 R8 K15 ["RoundBox"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K13 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["Image"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K2 ["UI"]
       68 GETTABLEKS                       R10 R10 K13 ["Components"]
       70 GETTABLEKS                       R10 R10 K17 ["UIFolderData"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R9 K14 ["Box"]
       77 GETTABLEKS                       R11 R11 K18 ["style"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R9 K15 ["RoundBox"]
       84 GETTABLEKS                       R12 R12 K18 ["style"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R9 K19 ["StatelessAudioPlayer"]
       91 GETTABLEKS                       R13 R13 K18 ["style"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R9 K20 ["StatelessVideoPlayer"]
       98 GETTABLEKS                       R14 R14 K18 ["style"]
      100 CALL                             R13 1 1
      101 DUPCLOSURE                       R14 K21 [PROTO_0]
      102 CAPTURE                          VAL R5
      103 MOVE                             R15 R5
      104 MOVE                             R16 R10
      105 CALL                             R15 1 1
      106 MOVE                             R16 R5
      107 MOVE                             R17 R11
      108 CALL                             R16 1 1
      109 MOVE                             R17 R5
      110 MOVE                             R18 R12
      111 CALL                             R17 1 1
      112 MOVE                             R18 R5
      113 MOVE                             R19 R13
      114 CALL                             R18 1 1
      115 GETTABLEKS                       R19 R4 K22 ["Dictionary"]
      117 GETTABLEKS                       R19 R19 K23 ["join"]
      119 MOVE                             R20 R16
      120 DUPTABLE                         R21 K27 [{["Color"], ["Transparency"] = 0}]
      121 GETTABLEKS                       R22 R1 K28 ["ImageButtonBackground"]
      123 SETTABLEKS                       R22 R21 K24 ["Color"]
      125 CALL                             R19 2 1
      126 DUPTABLE                         R20 K39 [{"Background", "BackgroundStyle", "RenderView", "ImageCarousel", "Thumbnail", "TreeView", "AudioPlayer", "AudioPlayerWithTreeViewButton", "VideoPlayer", "VideoPlayerWithTreeViewButton"}]
      127 SETTABLEKS                       R6 R20 K29 ["Background"]
      129 GETTABLEKS                       R21 R4 K22 ["Dictionary"]
      131 GETTABLEKS                       R21 R21 K23 ["join"]
      133 MOVE                             R22 R15
      134 DUPTABLE                         R23 K40 [{"Color"}]
      135 GETTABLEKS                       R24 R1 K41 ["SubBackground"]
      137 SETTABLEKS                       R24 R23 K24 ["Color"]
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K30 ["BackgroundStyle"]
      142 DUPTABLE                         R21 K45 [{"FontRenderView", "Size", "TreeViewButton"}]
      143 DUPTABLE                         R22 K50 [{["Padding"], ["FontRenderViewBackgroundColor"], ["Text"] = "The quick brown fox jumps over the lazy dog"}]
      144 DUPTABLE                         R23 K56 [{["Bottom"] = 32, ["Left"] = 32, ["Right"] = 32, ["Top"] = 32}]
      145 SETTABLEKS                       R23 R22 K46 ["Padding"]
      147 GETTABLEKS                       R23 R1 K57 ["MainBackground"]
      149 SETTABLEKS                       R23 R22 K47 ["FontRenderViewBackgroundColor"]
      151 SETTABLEKS                       R22 R21 K42 ["FontRenderView"]
      153 GETIMPORT                        R22 K60 [UDim2.new]
      155 LOADN                            R23 1
      156 LOADN                            R24 0
      157 LOADN                            R25 0
      158 LOADN                            R26 242
      159 CALL                             R22 4 1
      160 SETTABLEKS                       R22 R21 K43 ["Size"]
      162 NEWTABLE                         R22 8 0
      164 GETIMPORT                        R23 K62 [UDim2.fromOffset]
      166 LOADN                            R24 28
      167 LOADN                            R25 28
      168 CALL                             R23 2 1
      169 SETTABLEKS                       R23 R22 K43 ["Size"]
      171 SETTABLEKS                       R7 R22 K29 ["Background"]
      173 SETTABLEKS                       R19 R22 K30 ["BackgroundStyle"]
      175 GETTABLEKS                       R23 R3 K63 ["Hover"]
      177 DUPTABLE                         R24 K64 [{"BackgroundStyle"}]
      178 GETTABLEKS                       R25 R4 K22 ["Dictionary"]
      180 GETTABLEKS                       R25 R25 K23 ["join"]
      182 MOVE                             R26 R19
      183 DUPTABLE                         R27 K66 [{["Transparency"] = 0.3}]
      184 CALL                             R25 2 1
      185 SETTABLEKS                       R25 R24 K30 ["BackgroundStyle"]
      187 SETTABLE                         R24 R22 R23
      188 SETTABLEKS                       R8 R22 K67 ["Foreground"]
      190 DUPTABLE                         R23 K72 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperFramework/AssetRender/hierarchy.png", ["Position"], ["Size"], ["ScaleType"]}]
      191 GETIMPORT                        R24 K74 [Vector2.new]
      193 LOADK                            R25 K75 [0.5]
      194 LOADK                            R26 K75 [0.5]
      195 CALL                             R24 2 1
      196 SETTABLEKS                       R24 R23 K68 ["AnchorPoint"]
      198 GETIMPORT                        R24 K60 [UDim2.new]
      200 LOADK                            R25 K75 [0.5]
      201 LOADN                            R26 0
      202 LOADK                            R27 K75 [0.5]
      203 LOADN                            R28 0
      204 CALL                             R24 4 1
      205 SETTABLEKS                       R24 R23 K70 ["Position"]
      207 GETIMPORT                        R24 K62 [UDim2.fromOffset]
      209 LOADN                            R25 16
      210 LOADN                            R26 16
      211 CALL                             R24 2 1
      212 SETTABLEKS                       R24 R23 K43 ["Size"]
      214 GETIMPORT                        R24 K78 [Enum.ScaleType.Stretch]
      216 SETTABLEKS                       R24 R23 K71 ["ScaleType"]
      218 SETTABLEKS                       R23 R22 K79 ["ForegroundStyle"]
      220 SETTABLEKS                       R22 R21 K44 ["TreeViewButton"]
      222 SETTABLEKS                       R21 R20 K31 ["RenderView"]
      224 DUPTABLE                         R21 K81 [{["PaneStyle"] = "Box"}]
      225 SETTABLEKS                       R21 R20 K32 ["ImageCarousel"]
      227 DUPTABLE                         R21 K83 [{["Size"] = 420}]
      228 SETTABLEKS                       R21 R20 K33 ["Thumbnail"]
      230 DUPTABLE                         R21 K85 [{"Size", "HorizontalSize"}]
      231 GETIMPORT                        R22 K60 [UDim2.new]
      233 LOADN                            R23 1
      234 LOADN                            R24 0
      235 LOADN                            R25 0
      236 LOADN                            R26 120
      237 CALL                             R22 4 1
      238 SETTABLEKS                       R22 R21 K43 ["Size"]
      240 GETIMPORT                        R22 K60 [UDim2.new]
      242 LOADK                            R23 K86 [0.4]
      243 LOADN                            R24 0
      244 LOADN                            R25 0
      245 LOADN                            R26 242
      246 CALL                             R22 4 1
      247 SETTABLEKS                       R22 R21 K84 ["HorizontalSize"]
      249 SETTABLEKS                       R21 R20 K34 ["TreeView"]
      251 SETTABLEKS                       R17 R20 K35 ["AudioPlayer"]
      253 MOVE                             R22 R5
      254 MOVE                             R23 R17
      255 CALL                             R22 1 1
      256 GETTABLEKS                       R23 R22 K87 ["MediaPlayerControls"]
      258 GETTABLEKS                       R23 R23 K88 ["Controls"]
      260 GETTABLEKS                       R25 R22 K87 ["MediaPlayerControls"]
      262 GETTABLEKS                       R25 R25 K88 ["Controls"]
      264 GETTABLEKS                       R25 R25 K43 ["Size"]
      266 GETIMPORT                        R26 K60 [UDim2.new]
      268 LOADN                            R27 0
      269 LOADN                            R28 32
      270 LOADN                            R29 0
      271 LOADN                            R30 0
      272 CALL                             R26 4 1
      273 SUB                              R24 R25 R26
      274 SETTABLEKS                       R24 R23 K43 ["Size"]
      276 MOVE                             R21 R22
      277 SETTABLEKS                       R21 R20 K36 ["AudioPlayerWithTreeViewButton"]
      279 SETTABLEKS                       R18 R20 K37 ["VideoPlayer"]
      281 MOVE                             R22 R5
      282 MOVE                             R23 R18
      283 CALL                             R22 1 1
      284 GETTABLEKS                       R23 R22 K87 ["MediaPlayerControls"]
      286 GETTABLEKS                       R23 R23 K88 ["Controls"]
      288 GETTABLEKS                       R25 R22 K87 ["MediaPlayerControls"]
      290 GETTABLEKS                       R25 R25 K88 ["Controls"]
      292 GETTABLEKS                       R25 R25 K43 ["Size"]
      294 GETIMPORT                        R26 K60 [UDim2.new]
      296 LOADN                            R27 0
      297 LOADN                            R28 32
      298 LOADN                            R29 0
      299 LOADN                            R30 0
      300 CALL                             R26 4 1
      301 SUB                              R24 R25 R26
      302 SETTABLEKS                       R24 R23 K43 ["Size"]
      304 MOVE                             R21 R22
      305 SETTABLEKS                       R21 R20 K38 ["VideoPlayerWithTreeViewButton"]
      307 RETURN                           R20 1
