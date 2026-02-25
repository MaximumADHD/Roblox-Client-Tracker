PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MeshParts"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["Model"]
        7 CALL                             R1 1 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R6
       14 CALL                             R7 1 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 SETTABLEKS                       R1 R7 K5 ["Parent"]
       18 FORGLOOP                         R2 2 ; [-7]
       20 RETURN                           R1 1
       21 LOADNIL                          R1
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETIMPORT                        R2 K2 [CFrame.new]
        4 CALL                             R2 0 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CFrame"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["Inverse"]
        6 CALL                             R2 1 1
        7 MUL                              R0 R1 R2
        8 NAMECALL                         R1 R0 K2 ["ToEulerAnglesYXZ"]
       10 CALL                             R1 1 3
       11 GETIMPORT                        R4 K4 [CFrame.fromEulerAnglesYXZ]
       13 MINUS                            R5 R1
       14 MINUS                            R6 R2
       15 MINUS                            R7 R3
       16 CALL                             R4 3 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K5 ["setRotation"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["rotation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETIMPORT                        R1 K3 [CFrame.new]
       10 CALL                             R1 0 1
       11 JUMPIFNOTEQ                      R0 R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 4
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R4 R5 K1 ["CFrame"]
       21 NAMECALL                         R2 R1 K4 ["FuzzyEq"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+3]
       25 GETUPVAL                         R2 5
       26 SETTABLEKS                       R1 R2 K1 ["CFrame"]
       28 DUPCLOSURE                       R2 K5 [PROTO_3]
       29 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ViewSelector"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useRef"]
       12 GETIMPORT                        R4 K5 [Instance.new]
       14 LOADK                            R5 K6 ["Camera"]
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 1
       17 GETTABLEKS                       R4 R3 K7 ["current"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K8 ["useContext"]
       22 GETUPVAL                         R6 3
       23 CALL                             R5 1 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K8 ["useContext"]
       27 GETUPVAL                         R7 4
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K8 ["useContext"]
       32 GETUPVAL                         R8 5
       33 CALL                             R7 1 1
       34 GETIMPORT                        R9 K10 [next]
       36 GETTABLEKS                       R10 R0 K11 ["MeshParts"]
       38 CALL                             R9 1 1
       39 JUMPIFNOTEQKNIL                  R9 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R9 R10 K12 ["useMemo"]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U6
       49 NEWTABLE                         R11 0 1
       51 GETTABLEKS                       R12 R0 K11 ["MeshParts"]
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 1
       56 JUMPIF                           R9 ; [+2]
       57 LOADNIL                          R10
       58 RETURN                           R10 1
       59 GETUPVAL                         R10 7
       60 GETTABLEKS                       R11 R0 K11 ["MeshParts"]
       62 MOVE                             R12 R7
       63 CALL                             R10 2 1
       64 GETTABLEKS                       R11 R5 K13 ["generationAngles"]
       66 GETTABLE                         R12 R11 R10
       67 JUMPIF                           R12 ; [+2]
       68 GETTABLEKS                       R12 R0 K14 ["GenerationAngle"]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R13 R14 K12 ["useMemo"]
       73 NEWCLOSURE                       R14 P1
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          VAL R9
       76 NEWTABLE                         R15 0 1
       78 MOVE                             R16 R9
       79 SETLIST                          R15 R16 1 [1]
       81 CALL                             R13 2 1
       82 GETUPVAL                         R14 9
       83 LOADK                            R17 K15 ["CFrame"]
       84 NAMECALL                         R15 R4 K16 ["GetPropertyChangedSignal"]
       86 CALL                             R15 2 1
       87 NEWCLOSURE                       R16 P2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R6
       91 NEWTABLE                         R17 0 2
       93 MOVE                             R18 R13
       94 GETTABLEKS                       R19 R6 K17 ["setRotation"]
       96 SETLIST                          R17 R18 2 [1]
       98 CALL                             R14 3 0
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R14 R15 K18 ["useEffect"]
      102 NEWCLOSURE                       R15 P3
      103 CAPTURE                          VAL R6
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R4
      109 NEWTABLE                         R16 0 3
      111 GETTABLEKS                       R17 R6 K19 ["rotation"]
      113 MOVE                             R18 R9
      114 MOVE                             R19 R12
      115 SETLIST                          R16 R17 3 [1]
      117 CALL                             R14 2 0
      118 GETUPVAL                         R15 11
      119 GETTABLEKS                       R14 R15 K4 ["new"]
      121 CALL                             R14 0 1
      122 GETUPVAL                         R16 2
      123 GETTABLEKS                       R15 R16 K20 ["createElement"]
      125 GETUPVAL                         R16 12
      126 DUPTABLE                         R17 K29 [{"AutomaticSize", "BackgroundColor", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      127 GETIMPORT                        R18 K32 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R18 R17 K21 ["AutomaticSize"]
      131 GETTABLEKS                       R18 R1 K22 ["BackgroundColor"]
      133 SETTABLEKS                       R18 R17 K22 ["BackgroundColor"]
      135 GETIMPORT                        R18 K34 [Enum.HorizontalAlignment.Left]
      137 SETTABLEKS                       R18 R17 K23 ["HorizontalAlignment"]
      139 GETIMPORT                        R18 K37 [Enum.FillDirection.Vertical]
      141 SETTABLEKS                       R18 R17 K24 ["Layout"]
      143 GETTABLEKS                       R18 R0 K25 ["LayoutOrder"]
      145 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      147 GETTABLEKS                       R18 R1 K26 ["Size"]
      149 SETTABLEKS                       R18 R17 K26 ["Size"]
      151 LOADN                            R18 10
      152 SETTABLEKS                       R18 R17 K27 ["Spacing"]
      154 GETIMPORT                        R18 K39 [Enum.VerticalAlignment.Center]
      156 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      158 DUPTABLE                         R18 K42 [{"GenerationAngleHelp", "Display"}]
      159 GETUPVAL                         R20 13
      160 CALL                             R20 0 1
      161 JUMPIF                           R20 ; [+12]
      162 GETUPVAL                         R20 2
      163 GETTABLEKS                       R19 R20 K20 ["createElement"]
      165 GETUPVAL                         R20 14
      166 DUPTABLE                         R21 K43 [{"LayoutOrder"}]
      167 NAMECALL                         R22 R14 K44 ["getNextOrder"]
      169 CALL                             R22 1 1
      170 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      172 CALL                             R19 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R19
      175 SETTABLEKS                       R19 R18 K40 ["GenerationAngleHelp"]
      177 GETUPVAL                         R20 2
      178 GETTABLEKS                       R19 R20 K20 ["createElement"]
      180 GETUPVAL                         R20 12
      181 DUPTABLE                         R21 K47 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
      182 GETIMPORT                        R22 K49 [Vector2.new]
      184 LOADK                            R23 K50 [0.5]
      185 LOADK                            R24 K50 [0.5]
      186 CALL                             R22 2 1
      187 SETTABLEKS                       R22 R21 K45 ["AnchorPoint"]
      189 NAMECALL                         R22 R14 K44 ["getNextOrder"]
      191 CALL                             R22 1 1
      192 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      194 GETIMPORT                        R22 K53 [UDim2.fromScale]
      196 LOADK                            R23 K50 [0.5]
      197 LOADK                            R24 K50 [0.5]
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K46 ["Position"]
      201 GETTABLEKS                       R22 R1 K26 ["Size"]
      203 SETTABLEKS                       R22 R21 K26 ["Size"]
      205 DUPTABLE                         R22 K56 [{"UIPadding", "ImageContainer"}]
      206 GETUPVAL                         R24 2
      207 GETTABLEKS                       R23 R24 K20 ["createElement"]
      209 LOADK                            R24 K54 ["UIPadding"]
      210 DUPTABLE                         R25 K59 [{"PaddingLeft", "PaddingRight"}]
      211 GETIMPORT                        R26 K61 [UDim.new]
      213 LOADN                            R27 0
      214 LOADN                            R28 8
      215 CALL                             R26 2 1
      216 SETTABLEKS                       R26 R25 K57 ["PaddingLeft"]
      218 GETIMPORT                        R26 K61 [UDim.new]
      220 LOADN                            R27 0
      221 LOADN                            R28 8
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K58 ["PaddingRight"]
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K54 ["UIPadding"]
      228 GETUPVAL                         R24 2
      229 GETTABLEKS                       R23 R24 K20 ["createElement"]
      231 GETUPVAL                         R24 12
      232 DUPTABLE                         R25 K64 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      233 GETIMPORT                        R26 K66 [Color3.new]
      235 LOADN                            R27 0
      236 LOADN                            R28 0
      237 LOADN                            R29 0
      238 CALL                             R26 3 1
      239 SETTABLEKS                       R26 R25 K62 ["BackgroundColor3"]
      241 GETIMPORT                        R26 K49 [Vector2.new]
      243 LOADK                            R27 K50 [0.5]
      244 LOADK                            R28 K50 [0.5]
      245 CALL                             R26 2 1
      246 SETTABLEKS                       R26 R25 K45 ["AnchorPoint"]
      248 GETIMPORT                        R26 K53 [UDim2.fromScale]
      250 LOADK                            R27 K50 [0.5]
      251 LOADK                            R28 K50 [0.5]
      252 CALL                             R26 2 1
      253 SETTABLEKS                       R26 R25 K46 ["Position"]
      255 NAMECALL                         R26 R14 K44 ["getNextOrder"]
      257 CALL                             R26 1 1
      258 SETTABLEKS                       R26 R25 K63 ["ZIndex"]
      260 DUPTABLE                         R26 K70 [{"Corner", "SelectText", "ModelView"}]
      261 GETUPVAL                         R28 2
      262 GETTABLEKS                       R27 R28 K20 ["createElement"]
      264 LOADK                            R28 K71 ["UICorner"]
      265 CALL                             R27 1 1
      266 SETTABLEKS                       R27 R26 K67 ["Corner"]
      268 GETUPVAL                         R28 13
      269 CALL                             R28 0 1
      270 JUMPIFNOT                        R28 ; [+58]
      271 JUMPIF                           R8 ; [+57]
      272 GETUPVAL                         R28 2
      273 GETTABLEKS                       R27 R28 K20 ["createElement"]
      275 GETUPVAL                         R28 15
      276 DUPTABLE                         R29 K78 [{"AutomaticSize", "AnchorPoint", "Size", "Position", "RichText", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      277 GETIMPORT                        R30 K80 [Enum.AutomaticSize.XY]
      279 SETTABLEKS                       R30 R29 K21 ["AutomaticSize"]
      281 GETIMPORT                        R30 K49 [Vector2.new]
      283 LOADK                            R31 K50 [0.5]
      284 LOADK                            R32 K50 [0.5]
      285 CALL                             R30 2 1
      286 SETTABLEKS                       R30 R29 K45 ["AnchorPoint"]
      288 GETIMPORT                        R30 K82 [UDim2.fromOffset]
      290 LOADN                            R31 150
      291 LOADN                            R32 100
      292 CALL                             R30 2 1
      293 SETTABLEKS                       R30 R29 K26 ["Size"]
      295 GETIMPORT                        R30 K53 [UDim2.fromScale]
      297 LOADK                            R31 K50 [0.5]
      298 LOADK                            R32 K50 [0.5]
      299 CALL                             R30 2 1
      300 SETTABLEKS                       R30 R29 K46 ["Position"]
      302 LOADB                            R30 1
      303 SETTABLEKS                       R30 R29 K72 ["RichText"]
      305 LOADK                            R32 K83 ["EntryArea"]
      306 LOADK                            R33 K84 ["NoSelectionMessage"]
      307 NAMECALL                         R30 R2 K85 ["getText"]
      309 CALL                             R30 3 1
      310 SETTABLEKS                       R30 R29 K73 ["Text"]
      312 GETTABLEKS                       R30 R1 K74 ["TextColor"]
      314 SETTABLEKS                       R30 R29 K74 ["TextColor"]
      316 LOADB                            R30 1
      317 SETTABLEKS                       R30 R29 K75 ["TextWrapped"]
      319 GETIMPORT                        R30 K86 [Enum.TextXAlignment.Center]
      321 SETTABLEKS                       R30 R29 K76 ["TextXAlignment"]
      323 GETIMPORT                        R30 K87 [Enum.TextYAlignment.Center]
      325 SETTABLEKS                       R30 R29 K77 ["TextYAlignment"]
      327 CALL                             R27 2 1
      328 JUMP                             ; [+1]
      329 LOADNIL                          R27
      330 SETTABLEKS                       R27 R26 K68 ["SelectText"]
      332 JUMPIFNOT                        R8 ; [+57]
      333 GETUPVAL                         R28 2
      334 GETTABLEKS                       R27 R28 K20 ["createElement"]
      336 GETUPVAL                         R28 16
      337 DUPTABLE                         R29 K97 [{"BackgroundColor3", "Camera", "DisablePan", "DisableZoom", "Model", "ShouldMuteModelSounds", "Size", "FocusDirection", "LightColor", "LightDirection", "ShowAxisIndicator", "ShowResetCamera"}]
      338 GETTABLEKS                       R30 R1 K22 ["BackgroundColor"]
      340 SETTABLEKS                       R30 R29 K62 ["BackgroundColor3"]
      342 SETTABLEKS                       R4 R29 K6 ["Camera"]
      344 GETTABLEKS                       R30 R1 K88 ["DisablePan"]
      346 SETTABLEKS                       R30 R29 K88 ["DisablePan"]
      348 GETTABLEKS                       R30 R1 K89 ["DisableZoom"]
      350 SETTABLEKS                       R30 R29 K89 ["DisableZoom"]
      352 SETTABLEKS                       R9 R29 K90 ["Model"]
      354 LOADB                            R30 1
      355 SETTABLEKS                       R30 R29 K91 ["ShouldMuteModelSounds"]
      357 GETIMPORT                        R30 K98 [UDim2.new]
      359 LOADN                            R31 1
      360 LOADN                            R32 0
      361 LOADN                            R33 1
      362 LOADN                            R34 224
      363 CALL                             R30 4 1
      364 SETTABLEKS                       R30 R29 K26 ["Size"]
      366 GETUPVAL                         R31 17
      367 GETTABLEKS                       R30 R31 K99 ["INITIAL_FOCUS_DIRECTION"]
      369 SETTABLEKS                       R30 R29 K92 ["FocusDirection"]
      371 GETIMPORT                        R30 K66 [Color3.new]
      373 LOADN                            R31 1
      374 LOADN                            R32 1
      375 LOADN                            R33 1
      376 CALL                             R30 3 1
      377 SETTABLEKS                       R30 R29 K93 ["LightColor"]
      379 LOADK                            R30 K100 [{1, 1, 1}]
      380 SETTABLEKS                       R30 R29 K94 ["LightDirection"]
      382 LOADB                            R30 1
      383 SETTABLEKS                       R30 R29 K95 ["ShowAxisIndicator"]
      385 LOADB                            R30 1
      386 SETTABLEKS                       R30 R29 K96 ["ShowResetCamera"]
      388 CALL                             R27 2 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R27
      391 SETTABLEKS                       R27 R26 K69 ["ModelView"]
      393 CALL                             R23 3 1
      394 SETTABLEKS                       R23 R22 K55 ["ImageContainer"]
      396 CALL                             R19 3 1
      397 SETTABLEKS                       R19 R18 K41 ["Display"]
      399 CALL                             R15 3 -1
      400 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["TextureGenerationServiceContext"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETTABLEKS                       R8 R1 K15 ["Style"]
       43 GETTABLEKS                       R7 R8 K16 ["Stylizer"]
       45 GETTABLEKS                       R8 R3 K17 ["useEventConnection"]
       47 GETTABLEKS                       R9 R1 K18 ["UI"]
       49 GETTABLEKS                       R10 R9 K19 ["AssetRenderModel"]
       51 GETTABLEKS                       R11 R9 K20 ["Pane"]
       53 GETTABLEKS                       R12 R9 K21 ["TextLabel"]
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R16 R0 K10 ["Src"]
       59 GETTABLEKS                       R15 R16 K11 ["Components"]
       61 GETTABLEKS                       R14 R15 K22 ["GenerationAngleHelp"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R17 R0 K10 ["Src"]
       68 GETTABLEKS                       R16 R17 K23 ["Resources"]
       70 GETTABLEKS                       R15 R16 K24 ["Theme"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R16 R0 K10 ["Src"]
       75 GETTABLEKS                       R15 R16 K25 ["Util"]
       77 GETIMPORT                        R16 K5 [require]
       79 GETTABLEKS                       R17 R15 K26 ["cloneIgnoreArchivable"]
       81 CALL                             R16 1 1
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R15 K27 ["Constants"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R15 K28 ["OptionsContext"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R15 K29 ["centerCameraOnModelForRotation"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K5 [require]
       99 GETTABLEKS                       R23 R0 K10 ["Src"]
      101 GETTABLEKS                       R22 R23 K25 ["Util"]
      103 GETTABLEKS                       R21 R22 K30 ["createHashFromMeshParts"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R24 R0 K10 ["Src"]
      110 GETTABLEKS                       R23 R24 K25 ["Util"]
      112 GETTABLEKS                       R22 R23 K31 ["GenerationAnglesContext"]
      114 CALL                             R21 1 1
      115 GETTABLEKS                       R23 R1 K25 ["Util"]
      117 GETTABLEKS                       R22 R23 K32 ["LayoutOrderIterator"]
      119 GETIMPORT                        R23 K5 [require]
      121 GETTABLEKS                       R26 R0 K10 ["Src"]
      123 GETTABLEKS                       R25 R26 K33 ["Flags"]
      125 GETTABLEKS                       R24 R25 K34 ["getFFlagTextureGeneratorMultiStagePreview"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R27 R0 K10 ["Src"]
      132 GETTABLEKS                       R26 R27 K33 ["Flags"]
      134 GETTABLEKS                       R25 R26 K35 ["getFFlagTextureGeneratorBugFixes"]
      136 CALL                             R24 1 1
      137 DUPCLOSURE                       R25 K36 [PROTO_5]
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R24
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R17
      156 RETURN                           R25 1
