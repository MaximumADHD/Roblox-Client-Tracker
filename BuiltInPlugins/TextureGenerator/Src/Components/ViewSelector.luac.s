PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MeshParts"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CFrame"]
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
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["setRotation"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rotation"]
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
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K1 ["CFrame"]
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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useRef"]
       12 GETIMPORT                        R4 K5 [Instance.new]
       14 LOADK                            R5 K6 ["Camera"]
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 1
       17 GETTABLEKS                       R4 R3 K7 ["current"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K8 ["useContext"]
       22 GETUPVAL                         R6 3
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K8 ["useContext"]
       27 GETUPVAL                         R7 4
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K8 ["useContext"]
       32 GETUPVAL                         R8 5
       33 CALL                             R7 1 1
       34 GETIMPORT                        R9 K10 [next]
       36 GETTABLEKS                       R10 R0 K11 ["MeshParts"]
       38 CALL                             R9 1 1
       39 JUMPIFNOTEQKNIL                  R9 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K12 ["useMemo"]
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
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K12 ["useMemo"]
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
       99 GETUPVAL                         R14 2
      100 GETTABLEKS                       R14 R14 K18 ["useEffect"]
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
      118 GETUPVAL                         R14 11
      119 GETTABLEKS                       R14 R14 K4 ["new"]
      121 CALL                             R14 0 1
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K20 ["createElement"]
      125 GETUPVAL                         R16 12
      126 DUPTABLE                         R17 K30 [{["AutomaticSize"], ["BackgroundColor"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      127 GETIMPORT                        R18 K33 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R18 R17 K21 ["AutomaticSize"]
      131 GETTABLEKS                       R18 R1 K22 ["BackgroundColor"]
      133 SETTABLEKS                       R18 R17 K22 ["BackgroundColor"]
      135 GETIMPORT                        R18 K35 [Enum.HorizontalAlignment.Left]
      137 SETTABLEKS                       R18 R17 K23 ["HorizontalAlignment"]
      139 GETIMPORT                        R18 K38 [Enum.FillDirection.Vertical]
      141 SETTABLEKS                       R18 R17 K24 ["Layout"]
      143 GETTABLEKS                       R18 R0 K25 ["LayoutOrder"]
      145 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      147 GETTABLEKS                       R18 R1 K26 ["Size"]
      149 SETTABLEKS                       R18 R17 K26 ["Size"]
      151 GETIMPORT                        R18 K40 [Enum.VerticalAlignment.Center]
      153 SETTABLEKS                       R18 R17 K29 ["VerticalAlignment"]
      155 DUPTABLE                         R18 K43 [{"GenerationAngleHelp", "Display"}]
      156 GETUPVAL                         R20 13
      157 CALL                             R20 0 1
      158 JUMPIF                           R20 ; [+12]
      159 GETUPVAL                         R19 2
      160 GETTABLEKS                       R19 R19 K20 ["createElement"]
      162 GETUPVAL                         R20 14
      163 DUPTABLE                         R21 K44 [{"LayoutOrder"}]
      164 NAMECALL                         R22 R14 K45 ["getNextOrder"]
      166 CALL                             R22 1 1
      167 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      169 CALL                             R19 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R19
      172 SETTABLEKS                       R19 R18 K41 ["GenerationAngleHelp"]
      174 GETUPVAL                         R19 2
      175 GETTABLEKS                       R19 R19 K20 ["createElement"]
      177 GETUPVAL                         R20 12
      178 DUPTABLE                         R21 K48 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
      179 GETIMPORT                        R22 K50 [Vector2.new]
      181 LOADK                            R23 K51 [0.5]
      182 LOADK                            R24 K51 [0.5]
      183 CALL                             R22 2 1
      184 SETTABLEKS                       R22 R21 K46 ["AnchorPoint"]
      186 NAMECALL                         R22 R14 K45 ["getNextOrder"]
      188 CALL                             R22 1 1
      189 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      191 GETIMPORT                        R22 K54 [UDim2.fromScale]
      193 LOADK                            R23 K51 [0.5]
      194 LOADK                            R24 K51 [0.5]
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K47 ["Position"]
      198 GETTABLEKS                       R22 R1 K26 ["Size"]
      200 SETTABLEKS                       R22 R21 K26 ["Size"]
      202 DUPTABLE                         R22 K57 [{"UIPadding", "ImageContainer"}]
      203 GETUPVAL                         R23 2
      204 GETTABLEKS                       R23 R23 K20 ["createElement"]
      206 LOADK                            R24 K55 ["UIPadding"]
      207 DUPTABLE                         R25 K60 [{"PaddingLeft", "PaddingRight"}]
      208 GETIMPORT                        R26 K62 [UDim.new]
      210 LOADN                            R27 0
      211 LOADN                            R28 8
      212 CALL                             R26 2 1
      213 SETTABLEKS                       R26 R25 K58 ["PaddingLeft"]
      215 GETIMPORT                        R26 K62 [UDim.new]
      217 LOADN                            R27 0
      218 LOADN                            R28 8
      219 CALL                             R26 2 1
      220 SETTABLEKS                       R26 R25 K59 ["PaddingRight"]
      222 CALL                             R23 2 1
      223 SETTABLEKS                       R23 R22 K55 ["UIPadding"]
      225 GETUPVAL                         R23 2
      226 GETTABLEKS                       R23 R23 K20 ["createElement"]
      228 GETUPVAL                         R24 12
      229 DUPTABLE                         R25 K65 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      230 GETIMPORT                        R26 K67 [Color3.new]
      232 LOADN                            R27 0
      233 LOADN                            R28 0
      234 LOADN                            R29 0
      235 CALL                             R26 3 1
      236 SETTABLEKS                       R26 R25 K63 ["BackgroundColor3"]
      238 GETIMPORT                        R26 K50 [Vector2.new]
      240 LOADK                            R27 K51 [0.5]
      241 LOADK                            R28 K51 [0.5]
      242 CALL                             R26 2 1
      243 SETTABLEKS                       R26 R25 K46 ["AnchorPoint"]
      245 GETIMPORT                        R26 K54 [UDim2.fromScale]
      247 LOADK                            R27 K51 [0.5]
      248 LOADK                            R28 K51 [0.5]
      249 CALL                             R26 2 1
      250 SETTABLEKS                       R26 R25 K47 ["Position"]
      252 NAMECALL                         R26 R14 K45 ["getNextOrder"]
      254 CALL                             R26 1 1
      255 SETTABLEKS                       R26 R25 K64 ["ZIndex"]
      257 DUPTABLE                         R26 K71 [{"Corner", "SelectText", "ModelView"}]
      258 GETUPVAL                         R27 2
      259 GETTABLEKS                       R27 R27 K20 ["createElement"]
      261 LOADK                            R28 K72 ["UICorner"]
      262 CALL                             R27 1 1
      263 SETTABLEKS                       R27 R26 K68 ["Corner"]
      265 GETUPVAL                         R28 13
      266 CALL                             R28 0 1
      267 JUMPIFNOT                        R28 ; [+52]
      268 JUMPIF                           R8 ; [+51]
      269 GETUPVAL                         R27 2
      270 GETTABLEKS                       R27 R27 K20 ["createElement"]
      272 GETUPVAL                         R28 15
      273 DUPTABLE                         R29 K80 [{["AutomaticSize"], ["AnchorPoint"], ["Size"], ["Position"], ["RichText"] = True, ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      274 GETIMPORT                        R30 K82 [Enum.AutomaticSize.XY]
      276 SETTABLEKS                       R30 R29 K21 ["AutomaticSize"]
      278 GETIMPORT                        R30 K50 [Vector2.new]
      280 LOADK                            R31 K51 [0.5]
      281 LOADK                            R32 K51 [0.5]
      282 CALL                             R30 2 1
      283 SETTABLEKS                       R30 R29 K46 ["AnchorPoint"]
      285 GETIMPORT                        R30 K84 [UDim2.fromOffset]
      287 LOADN                            R31 150
      288 LOADN                            R32 100
      289 CALL                             R30 2 1
      290 SETTABLEKS                       R30 R29 K26 ["Size"]
      292 GETIMPORT                        R30 K54 [UDim2.fromScale]
      294 LOADK                            R31 K51 [0.5]
      295 LOADK                            R32 K51 [0.5]
      296 CALL                             R30 2 1
      297 SETTABLEKS                       R30 R29 K47 ["Position"]
      299 LOADK                            R32 K85 ["EntryArea"]
      300 LOADK                            R33 K86 ["NoSelectionMessage"]
      301 NAMECALL                         R30 R2 K87 ["getText"]
      303 CALL                             R30 3 1
      304 SETTABLEKS                       R30 R29 K75 ["Text"]
      306 GETTABLEKS                       R30 R1 K76 ["TextColor"]
      308 SETTABLEKS                       R30 R29 K76 ["TextColor"]
      310 GETIMPORT                        R30 K88 [Enum.TextXAlignment.Center]
      312 SETTABLEKS                       R30 R29 K78 ["TextXAlignment"]
      314 GETIMPORT                        R30 K89 [Enum.TextYAlignment.Center]
      316 SETTABLEKS                       R30 R29 K79 ["TextYAlignment"]
      318 CALL                             R27 2 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R27
      321 SETTABLEKS                       R27 R26 K69 ["SelectText"]
      323 JUMPIFNOT                        R8 ; [+45]
      324 GETUPVAL                         R27 2
      325 GETTABLEKS                       R27 R27 K20 ["createElement"]
      327 GETUPVAL                         R28 16
      328 DUPTABLE                         R29 K100 [{["BackgroundColor3"], ["Camera"], ["DisablePan"], ["DisableZoom"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Size"], ["FocusDirection"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["ShowAxisIndicator"] = True, ["ShowResetCamera"] = True}]
      329 GETTABLEKS                       R30 R1 K22 ["BackgroundColor"]
      331 SETTABLEKS                       R30 R29 K63 ["BackgroundColor3"]
      333 SETTABLEKS                       R4 R29 K6 ["Camera"]
      335 GETTABLEKS                       R30 R1 K90 ["DisablePan"]
      337 SETTABLEKS                       R30 R29 K90 ["DisablePan"]
      339 GETTABLEKS                       R30 R1 K91 ["DisableZoom"]
      341 SETTABLEKS                       R30 R29 K91 ["DisableZoom"]
      343 SETTABLEKS                       R9 R29 K92 ["Model"]
      345 GETIMPORT                        R30 K101 [UDim2.new]
      347 LOADN                            R31 1
      348 LOADN                            R32 0
      349 LOADN                            R33 1
      350 LOADN                            R34 -32
      351 CALL                             R30 4 1
      352 SETTABLEKS                       R30 R29 K26 ["Size"]
      354 GETUPVAL                         R30 17
      355 GETTABLEKS                       R30 R30 K102 ["INITIAL_FOCUS_DIRECTION"]
      357 SETTABLEKS                       R30 R29 K94 ["FocusDirection"]
      359 GETIMPORT                        R30 K67 [Color3.new]
      361 LOADN                            R31 1
      362 LOADN                            R32 1
      363 LOADN                            R33 1
      364 CALL                             R30 3 1
      365 SETTABLEKS                       R30 R29 K95 ["LightColor"]
      367 CALL                             R27 2 1
      368 JUMP                             ; [+1]
      369 LOADNIL                          R27
      370 SETTABLEKS                       R27 R26 K70 ["ModelView"]
      372 CALL                             R23 3 1
      373 SETTABLEKS                       R23 R22 K56 ["ImageContainer"]
      375 CALL                             R19 3 1
      376 SETTABLEKS                       R19 R18 K42 ["Display"]
      378 CALL                             R15 3 -1
      379 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["TextureGenerationServiceContext"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETTABLEKS                       R7 R1 K15 ["Style"]
       43 GETTABLEKS                       R7 R7 K16 ["Stylizer"]
       45 GETTABLEKS                       R8 R3 K17 ["useEventConnection"]
       47 GETTABLEKS                       R9 R1 K18 ["UI"]
       49 GETTABLEKS                       R10 R9 K19 ["AssetRenderModel"]
       51 GETTABLEKS                       R11 R9 K20 ["Pane"]
       53 GETTABLEKS                       R12 R9 K21 ["TextLabel"]
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R0 K10 ["Src"]
       59 GETTABLEKS                       R14 R14 K11 ["Components"]
       61 GETTABLEKS                       R14 R14 K22 ["GenerationAngleHelp"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K10 ["Src"]
       68 GETTABLEKS                       R15 R15 K23 ["Resources"]
       70 GETTABLEKS                       R15 R15 K24 ["Theme"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R0 K10 ["Src"]
       75 GETTABLEKS                       R15 R15 K25 ["Util"]
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
       99 GETTABLEKS                       R21 R0 K10 ["Src"]
      101 GETTABLEKS                       R21 R21 K25 ["Util"]
      103 GETTABLEKS                       R21 R21 K30 ["createHashFromMeshParts"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R0 K10 ["Src"]
      110 GETTABLEKS                       R22 R22 K25 ["Util"]
      112 GETTABLEKS                       R22 R22 K31 ["GenerationAnglesContext"]
      114 CALL                             R21 1 1
      115 GETTABLEKS                       R22 R1 K25 ["Util"]
      117 GETTABLEKS                       R22 R22 K32 ["LayoutOrderIterator"]
      119 GETIMPORT                        R23 K5 [require]
      121 GETTABLEKS                       R24 R0 K10 ["Src"]
      123 GETTABLEKS                       R24 R24 K33 ["Flags"]
      125 GETTABLEKS                       R24 R24 K34 ["getFFlagTextureGeneratorMultiStagePreview"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R25 R0 K10 ["Src"]
      132 GETTABLEKS                       R25 R25 K33 ["Flags"]
      134 GETTABLEKS                       R25 R25 K35 ["getFFlagTextureGeneratorBugFixes"]
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
