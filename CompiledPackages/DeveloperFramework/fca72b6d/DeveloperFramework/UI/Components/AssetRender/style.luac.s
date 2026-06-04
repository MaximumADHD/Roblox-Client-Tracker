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
      120 DUPTABLE                         R21 K26 [{"Color", "Transparency"}]
      121 GETTABLEKS                       R22 R1 K27 ["ImageButtonBackground"]
      123 SETTABLEKS                       R22 R21 K24 ["Color"]
      125 LOADN                            R22 0
      126 SETTABLEKS                       R22 R21 K25 ["Transparency"]
      128 CALL                             R19 2 1
      129 DUPTABLE                         R20 K38 [{"Background", "BackgroundStyle", "RenderView", "ImageCarousel", "Thumbnail", "TreeView", "AudioPlayer", "AudioPlayerWithTreeViewButton", "VideoPlayer", "VideoPlayerWithTreeViewButton"}]
      130 SETTABLEKS                       R6 R20 K28 ["Background"]
      132 GETTABLEKS                       R21 R4 K22 ["Dictionary"]
      134 GETTABLEKS                       R21 R21 K23 ["join"]
      136 MOVE                             R22 R15
      137 DUPTABLE                         R23 K39 [{"Color"}]
      138 GETTABLEKS                       R24 R1 K40 ["SubBackground"]
      140 SETTABLEKS                       R24 R23 K24 ["Color"]
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K29 ["BackgroundStyle"]
      145 DUPTABLE                         R21 K44 [{"FontRenderView", "Size", "TreeViewButton"}]
      146 DUPTABLE                         R22 K48 [{"Padding", "FontRenderViewBackgroundColor", "Text"}]
      147 DUPTABLE                         R23 K53 [{"Bottom", "Left", "Right", "Top"}]
      148 LOADN                            R24 32
      149 SETTABLEKS                       R24 R23 K49 ["Bottom"]
      151 LOADN                            R24 32
      152 SETTABLEKS                       R24 R23 K50 ["Left"]
      154 LOADN                            R24 32
      155 SETTABLEKS                       R24 R23 K51 ["Right"]
      157 LOADN                            R24 32
      158 SETTABLEKS                       R24 R23 K52 ["Top"]
      160 SETTABLEKS                       R23 R22 K45 ["Padding"]
      162 GETTABLEKS                       R23 R1 K54 ["MainBackground"]
      164 SETTABLEKS                       R23 R22 K46 ["FontRenderViewBackgroundColor"]
      166 LOADK                            R23 K55 ["The quick brown fox jumps over the lazy dog"]
      167 SETTABLEKS                       R23 R22 K47 ["Text"]
      169 SETTABLEKS                       R22 R21 K41 ["FontRenderView"]
      171 GETIMPORT                        R22 K58 [UDim2.new]
      173 LOADN                            R23 1
      174 LOADN                            R24 0
      175 LOADN                            R25 0
      176 LOADN                            R26 242
      177 CALL                             R22 4 1
      178 SETTABLEKS                       R22 R21 K42 ["Size"]
      180 NEWTABLE                         R22 8 0
      182 GETIMPORT                        R23 K60 [UDim2.fromOffset]
      184 LOADN                            R24 28
      185 LOADN                            R25 28
      186 CALL                             R23 2 1
      187 SETTABLEKS                       R23 R22 K42 ["Size"]
      189 SETTABLEKS                       R7 R22 K28 ["Background"]
      191 SETTABLEKS                       R19 R22 K29 ["BackgroundStyle"]
      193 GETTABLEKS                       R23 R3 K61 ["Hover"]
      195 DUPTABLE                         R24 K62 [{"BackgroundStyle"}]
      196 GETTABLEKS                       R25 R4 K22 ["Dictionary"]
      198 GETTABLEKS                       R25 R25 K23 ["join"]
      200 MOVE                             R26 R19
      201 DUPTABLE                         R27 K63 [{"Transparency"}]
      202 LOADK                            R28 K64 [0.3]
      203 SETTABLEKS                       R28 R27 K25 ["Transparency"]
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K29 ["BackgroundStyle"]
      208 SETTABLE                         R24 R22 R23
      209 SETTABLEKS                       R8 R22 K65 ["Foreground"]
      211 DUPTABLE                         R23 K69 [{"AnchorPoint", "Image", "Position", "Size", "ScaleType"}]
      212 GETIMPORT                        R24 K71 [Vector2.new]
      214 LOADK                            R25 K72 [0.5]
      215 LOADK                            R26 K72 [0.5]
      216 CALL                             R24 2 1
      217 SETTABLEKS                       R24 R23 K66 ["AnchorPoint"]
      219 LOADK                            R24 K73 ["rbxasset://textures/DeveloperFramework/AssetRender/hierarchy.png"]
      220 SETTABLEKS                       R24 R23 K16 ["Image"]
      222 GETIMPORT                        R24 K58 [UDim2.new]
      224 LOADK                            R25 K72 [0.5]
      225 LOADN                            R26 0
      226 LOADK                            R27 K72 [0.5]
      227 LOADN                            R28 0
      228 CALL                             R24 4 1
      229 SETTABLEKS                       R24 R23 K67 ["Position"]
      231 GETIMPORT                        R24 K60 [UDim2.fromOffset]
      233 LOADN                            R25 16
      234 LOADN                            R26 16
      235 CALL                             R24 2 1
      236 SETTABLEKS                       R24 R23 K42 ["Size"]
      238 GETIMPORT                        R24 K76 [Enum.ScaleType.Stretch]
      240 SETTABLEKS                       R24 R23 K68 ["ScaleType"]
      242 SETTABLEKS                       R23 R22 K77 ["ForegroundStyle"]
      244 SETTABLEKS                       R22 R21 K43 ["TreeViewButton"]
      246 SETTABLEKS                       R21 R20 K30 ["RenderView"]
      248 DUPTABLE                         R21 K79 [{"PaneStyle"}]
      249 LOADK                            R22 K14 ["Box"]
      250 SETTABLEKS                       R22 R21 K78 ["PaneStyle"]
      252 SETTABLEKS                       R21 R20 K31 ["ImageCarousel"]
      254 DUPTABLE                         R21 K80 [{"Size"}]
      255 LOADN                            R22 164
      256 SETTABLEKS                       R22 R21 K42 ["Size"]
      258 SETTABLEKS                       R21 R20 K32 ["Thumbnail"]
      260 DUPTABLE                         R21 K82 [{"Size", "HorizontalSize"}]
      261 GETIMPORT                        R22 K58 [UDim2.new]
      263 LOADN                            R23 1
      264 LOADN                            R24 0
      265 LOADN                            R25 0
      266 LOADN                            R26 120
      267 CALL                             R22 4 1
      268 SETTABLEKS                       R22 R21 K42 ["Size"]
      270 GETIMPORT                        R22 K58 [UDim2.new]
      272 LOADK                            R23 K83 [0.4]
      273 LOADN                            R24 0
      274 LOADN                            R25 0
      275 LOADN                            R26 242
      276 CALL                             R22 4 1
      277 SETTABLEKS                       R22 R21 K81 ["HorizontalSize"]
      279 SETTABLEKS                       R21 R20 K33 ["TreeView"]
      281 SETTABLEKS                       R17 R20 K34 ["AudioPlayer"]
      283 MOVE                             R22 R5
      284 MOVE                             R23 R17
      285 CALL                             R22 1 1
      286 GETTABLEKS                       R23 R22 K84 ["MediaPlayerControls"]
      288 GETTABLEKS                       R23 R23 K85 ["Controls"]
      290 GETTABLEKS                       R25 R22 K84 ["MediaPlayerControls"]
      292 GETTABLEKS                       R25 R25 K85 ["Controls"]
      294 GETTABLEKS                       R25 R25 K42 ["Size"]
      296 GETIMPORT                        R26 K58 [UDim2.new]
      298 LOADN                            R27 0
      299 LOADN                            R28 32
      300 LOADN                            R29 0
      301 LOADN                            R30 0
      302 CALL                             R26 4 1
      303 SUB                              R24 R25 R26
      304 SETTABLEKS                       R24 R23 K42 ["Size"]
      306 MOVE                             R21 R22
      307 SETTABLEKS                       R21 R20 K35 ["AudioPlayerWithTreeViewButton"]
      309 SETTABLEKS                       R18 R20 K36 ["VideoPlayer"]
      311 MOVE                             R22 R5
      312 MOVE                             R23 R18
      313 CALL                             R22 1 1
      314 GETTABLEKS                       R23 R22 K84 ["MediaPlayerControls"]
      316 GETTABLEKS                       R23 R23 K85 ["Controls"]
      318 GETTABLEKS                       R25 R22 K84 ["MediaPlayerControls"]
      320 GETTABLEKS                       R25 R25 K85 ["Controls"]
      322 GETTABLEKS                       R25 R25 K42 ["Size"]
      324 GETIMPORT                        R26 K58 [UDim2.new]
      326 LOADN                            R27 0
      327 LOADN                            R28 32
      328 LOADN                            R29 0
      329 LOADN                            R30 0
      330 CALL                             R26 4 1
      331 SUB                              R24 R25 R26
      332 SETTABLEKS                       R24 R23 K42 ["Size"]
      334 MOVE                             R21 R22
      335 SETTABLEKS                       R21 R20 K37 ["VideoPlayerWithTreeViewButton"]
      337 RETURN                           R20 1
