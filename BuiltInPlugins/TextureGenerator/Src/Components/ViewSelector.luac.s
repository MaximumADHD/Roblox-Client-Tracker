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
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K3 [CFrame.new]
        7 CALL                             R1 0 1
        8 JUMPIFNOTEQ                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K1 ["CFrame"]
       18 NAMECALL                         R2 R1 K4 ["FuzzyEq"]
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+3]
       22 GETUPVAL                         R2 4
       23 SETTABLEKS                       R1 R2 K1 ["CFrame"]
       25 DUPCLOSURE                       R2 K5 [PROTO_3]
       26 RETURN                           R2 1

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
      104 CAPTURE                          VAL R12
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R4
      108 NEWTABLE                         R16 0 3
      110 GETTABLEKS                       R17 R6 K19 ["rotation"]
      112 MOVE                             R18 R9
      113 MOVE                             R19 R12
      114 SETLIST                          R16 R17 3 [1]
      116 CALL                             R14 2 0
      117 GETUPVAL                         R14 10
      118 GETTABLEKS                       R14 R14 K4 ["new"]
      120 CALL                             R14 0 1
      121 GETUPVAL                         R15 2
      122 GETTABLEKS                       R15 R15 K20 ["createElement"]
      124 GETUPVAL                         R16 11
      125 DUPTABLE                         R17 K30 [{["AutomaticSize"], ["BackgroundColor"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      126 GETIMPORT                        R18 K33 [Enum.AutomaticSize.Y]
      128 SETTABLEKS                       R18 R17 K21 ["AutomaticSize"]
      130 GETTABLEKS                       R18 R1 K22 ["BackgroundColor"]
      132 SETTABLEKS                       R18 R17 K22 ["BackgroundColor"]
      134 GETIMPORT                        R18 K35 [Enum.HorizontalAlignment.Left]
      136 SETTABLEKS                       R18 R17 K23 ["HorizontalAlignment"]
      138 GETIMPORT                        R18 K38 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R18 R17 K24 ["Layout"]
      142 GETTABLEKS                       R18 R0 K25 ["LayoutOrder"]
      144 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      146 GETTABLEKS                       R18 R1 K26 ["Size"]
      148 SETTABLEKS                       R18 R17 K26 ["Size"]
      150 GETIMPORT                        R18 K40 [Enum.VerticalAlignment.Center]
      152 SETTABLEKS                       R18 R17 K29 ["VerticalAlignment"]
      154 DUPTABLE                         R18 K42 [{"Display"}]
      155 GETUPVAL                         R19 2
      156 GETTABLEKS                       R19 R19 K20 ["createElement"]
      158 GETUPVAL                         R20 11
      159 DUPTABLE                         R21 K45 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
      160 GETIMPORT                        R22 K47 [Vector2.new]
      162 LOADK                            R23 K48 [0.5]
      163 LOADK                            R24 K48 [0.5]
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K43 ["AnchorPoint"]
      167 NAMECALL                         R22 R14 K49 ["getNextOrder"]
      169 CALL                             R22 1 1
      170 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      172 GETIMPORT                        R22 K52 [UDim2.fromScale]
      174 LOADK                            R23 K48 [0.5]
      175 LOADK                            R24 K48 [0.5]
      176 CALL                             R22 2 1
      177 SETTABLEKS                       R22 R21 K44 ["Position"]
      179 GETTABLEKS                       R22 R1 K26 ["Size"]
      181 SETTABLEKS                       R22 R21 K26 ["Size"]
      183 DUPTABLE                         R22 K55 [{"UIPadding", "ImageContainer"}]
      184 GETUPVAL                         R23 2
      185 GETTABLEKS                       R23 R23 K20 ["createElement"]
      187 LOADK                            R24 K53 ["UIPadding"]
      188 DUPTABLE                         R25 K58 [{"PaddingLeft", "PaddingRight"}]
      189 GETIMPORT                        R26 K60 [UDim.new]
      191 LOADN                            R27 0
      192 LOADN                            R28 8
      193 CALL                             R26 2 1
      194 SETTABLEKS                       R26 R25 K56 ["PaddingLeft"]
      196 GETIMPORT                        R26 K60 [UDim.new]
      198 LOADN                            R27 0
      199 LOADN                            R28 8
      200 CALL                             R26 2 1
      201 SETTABLEKS                       R26 R25 K57 ["PaddingRight"]
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K53 ["UIPadding"]
      206 GETUPVAL                         R23 2
      207 GETTABLEKS                       R23 R23 K20 ["createElement"]
      209 GETUPVAL                         R24 11
      210 DUPTABLE                         R25 K63 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      211 GETIMPORT                        R26 K65 [Color3.new]
      213 LOADN                            R27 0
      214 LOADN                            R28 0
      215 LOADN                            R29 0
      216 CALL                             R26 3 1
      217 SETTABLEKS                       R26 R25 K61 ["BackgroundColor3"]
      219 GETIMPORT                        R26 K47 [Vector2.new]
      221 LOADK                            R27 K48 [0.5]
      222 LOADK                            R28 K48 [0.5]
      223 CALL                             R26 2 1
      224 SETTABLEKS                       R26 R25 K43 ["AnchorPoint"]
      226 GETIMPORT                        R26 K52 [UDim2.fromScale]
      228 LOADK                            R27 K48 [0.5]
      229 LOADK                            R28 K48 [0.5]
      230 CALL                             R26 2 1
      231 SETTABLEKS                       R26 R25 K44 ["Position"]
      233 NAMECALL                         R26 R14 K49 ["getNextOrder"]
      235 CALL                             R26 1 1
      236 SETTABLEKS                       R26 R25 K62 ["ZIndex"]
      238 DUPTABLE                         R26 K69 [{"Corner", "SelectText", "ModelView"}]
      239 GETUPVAL                         R27 2
      240 GETTABLEKS                       R27 R27 K20 ["createElement"]
      242 LOADK                            R28 K70 ["UICorner"]
      243 CALL                             R27 1 1
      244 SETTABLEKS                       R27 R26 K66 ["Corner"]
      246 JUMPIF                           R8 ; [+51]
      247 GETUPVAL                         R27 2
      248 GETTABLEKS                       R27 R27 K20 ["createElement"]
      250 GETUPVAL                         R28 12
      251 DUPTABLE                         R29 K78 [{["AutomaticSize"], ["AnchorPoint"], ["Size"], ["Position"], ["RichText"] = True, ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      252 GETIMPORT                        R30 K80 [Enum.AutomaticSize.XY]
      254 SETTABLEKS                       R30 R29 K21 ["AutomaticSize"]
      256 GETIMPORT                        R30 K47 [Vector2.new]
      258 LOADK                            R31 K48 [0.5]
      259 LOADK                            R32 K48 [0.5]
      260 CALL                             R30 2 1
      261 SETTABLEKS                       R30 R29 K43 ["AnchorPoint"]
      263 GETIMPORT                        R30 K82 [UDim2.fromOffset]
      265 LOADN                            R31 150
      266 LOADN                            R32 100
      267 CALL                             R30 2 1
      268 SETTABLEKS                       R30 R29 K26 ["Size"]
      270 GETIMPORT                        R30 K52 [UDim2.fromScale]
      272 LOADK                            R31 K48 [0.5]
      273 LOADK                            R32 K48 [0.5]
      274 CALL                             R30 2 1
      275 SETTABLEKS                       R30 R29 K44 ["Position"]
      277 LOADK                            R32 K83 ["EntryArea"]
      278 LOADK                            R33 K84 ["NoSelectionMessage"]
      279 NAMECALL                         R30 R2 K85 ["getText"]
      281 CALL                             R30 3 1
      282 SETTABLEKS                       R30 R29 K73 ["Text"]
      284 GETTABLEKS                       R30 R1 K74 ["TextColor"]
      286 SETTABLEKS                       R30 R29 K74 ["TextColor"]
      288 GETIMPORT                        R30 K86 [Enum.TextXAlignment.Center]
      290 SETTABLEKS                       R30 R29 K76 ["TextXAlignment"]
      292 GETIMPORT                        R30 K87 [Enum.TextYAlignment.Center]
      294 SETTABLEKS                       R30 R29 K77 ["TextYAlignment"]
      296 CALL                             R27 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R27
      299 SETTABLEKS                       R27 R26 K67 ["SelectText"]
      301 JUMPIFNOT                        R8 ; [+45]
      302 GETUPVAL                         R27 2
      303 GETTABLEKS                       R27 R27 K20 ["createElement"]
      305 GETUPVAL                         R28 13
      306 DUPTABLE                         R29 K98 [{["BackgroundColor3"], ["Camera"], ["DisablePan"], ["DisableZoom"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Size"], ["FocusDirection"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["ShowAxisIndicator"] = True, ["ShowResetCamera"] = True}]
      307 GETTABLEKS                       R30 R1 K22 ["BackgroundColor"]
      309 SETTABLEKS                       R30 R29 K61 ["BackgroundColor3"]
      311 SETTABLEKS                       R4 R29 K6 ["Camera"]
      313 GETTABLEKS                       R30 R1 K88 ["DisablePan"]
      315 SETTABLEKS                       R30 R29 K88 ["DisablePan"]
      317 GETTABLEKS                       R30 R1 K89 ["DisableZoom"]
      319 SETTABLEKS                       R30 R29 K89 ["DisableZoom"]
      321 SETTABLEKS                       R9 R29 K90 ["Model"]
      323 GETIMPORT                        R30 K99 [UDim2.new]
      325 LOADN                            R31 1
      326 LOADN                            R32 0
      327 LOADN                            R33 1
      328 LOADN                            R34 -32
      329 CALL                             R30 4 1
      330 SETTABLEKS                       R30 R29 K26 ["Size"]
      332 GETUPVAL                         R30 14
      333 GETTABLEKS                       R30 R30 K100 ["INITIAL_FOCUS_DIRECTION"]
      335 SETTABLEKS                       R30 R29 K92 ["FocusDirection"]
      337 GETIMPORT                        R30 K65 [Color3.new]
      339 LOADN                            R31 1
      340 LOADN                            R32 1
      341 LOADN                            R33 1
      342 CALL                             R30 3 1
      343 SETTABLEKS                       R30 R29 K93 ["LightColor"]
      345 CALL                             R27 2 1
      346 JUMP                             ; [+1]
      347 LOADNIL                          R27
      348 SETTABLEKS                       R27 R26 K68 ["ModelView"]
      350 CALL                             R23 3 1
      351 SETTABLEKS                       R23 R22 K54 ["ImageContainer"]
      353 CALL                             R19 3 1
      354 SETTABLEKS                       R19 R18 K41 ["Display"]
      356 CALL                             R15 3 -1
      357 RETURN                           R15 -1

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
      119 DUPCLOSURE                       R23 K33 [PROTO_5]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R21
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R22
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R17
      135 RETURN                           R23 1
