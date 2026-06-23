PROTO_0:
        0 DUPTABLE                         R1 K1 [{"treeViewVisible"}]
        1 GETTABLEKS                       R3 R0 K0 ["treeViewVisible"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["treeViewVisible"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"treeViewExpansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["treeViewExpansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["treeViewExpansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"treeViewSelection"}]
        2 SETTABLEKS                       R0 R3 K0 ["treeViewSelection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K4 [{"treeViewSelection", "treeViewExpansion", "treeViewVisible", "isFontLoaded"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["treeViewSelection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["treeViewExpansion"]
        9 LOADB                            R2 0
       10 SETTABLEKS                       R2 R1 K2 ["treeViewVisible"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K3 ["isFontLoaded"]
       15 SETTABLEKS                       R1 R0 K5 ["state"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K6 ["memoizedTreeViewInstances"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K7 ["toggleTreeViewVisible"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R1 R0 K8 ["onTreeViewExpansionChange"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K9 ["onTreeViewSelectionChange"]
       34 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["GetTextBoundsParams"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K6 [Font.fromId]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K7 ["AssetData"]
        9 GETTABLEKS                       R2 R2 K8 ["Asset"]
       11 GETTABLEKS                       R2 R2 K9 ["Id"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K4 ["Font"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K10 ["RenderView"]
       19 GETTABLEKS                       R1 R1 K11 ["FontRenderView"]
       21 GETTABLEKS                       R1 R1 K12 ["Text"]
       23 SETTABLEKS                       R1 R0 K12 ["Text"]
       25 GETUPVAL                         R1 2
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K13 ["GetTextBoundsAsync"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 3
       31 DUPTABLE                         R4 K15 [{"isFontLoaded"}]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K14 ["isFontLoaded"]
       35 NAMECALL                         R2 R2 K16 ["setState"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETIMPORT                        R3 K4 [task.spawn]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["AssetData"]
        4 GETTABLEKS                       R3 R3 K2 ["Asset"]
        6 GETTABLEKS                       R3 R3 K3 ["TypeId"]
        8 GETIMPORT                        R4 K7 [Enum.AssetType.FontFamily]
       10 GETTABLEKS                       R4 R4 K8 ["Value"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 NAMECALL                         R3 R0 K9 ["loadFontForTextLabelAndSetStateWhenDone"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 JUMPIFNOTEQ                      R1 R3 ; [+4]
        6 JUMPIFNOTEQ                      R2 R4 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R6 R3 K2 ["AssetData"]
       11 GETTABLEKS                       R6 R6 K3 ["Asset"]
       13 GETTABLEKS                       R6 R6 K4 ["TypeId"]
       15 GETIMPORT                        R7 K8 [Enum.AssetType.FontFamily]
       17 GETTABLEKS                       R7 R7 K9 ["Value"]
       19 JUMPIFEQ                         R6 R7 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+24]
       24 GETTABLEKS                       R6 R3 K2 ["AssetData"]
       26 GETTABLEKS                       R6 R6 K3 ["Asset"]
       28 GETTABLEKS                       R6 R6 K10 ["Id"]
       30 GETTABLEKS                       R7 R1 K2 ["AssetData"]
       32 GETTABLEKS                       R7 R7 K3 ["Asset"]
       34 GETTABLEKS                       R7 R7 K10 ["Id"]
       36 JUMPIFEQ                         R6 R7 ; [+11]
       38 DUPTABLE                         R8 K12 [{"isFontLoaded"}]
       39 LOADB                            R9 0
       40 SETTABLEKS                       R9 R8 K11 ["isFontLoaded"]
       42 NAMECALL                         R6 R0 K13 ["setState"]
       44 CALL                             R6 2 0
       45 NAMECALL                         R6 R0 K14 ["loadFontForTextLabelAndSetStateWhenDone"]
       47 CALL                             R6 1 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["memoizedTreeViewInstances"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+10]
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R1
        8 SETLIST                          R3 R4 1 [1]
       10 MOVE                             R2 R3
       11 GETTABLEKS                       R3 R0 K0 ["memoizedTreeViewInstances"]
       13 SETTABLE                         R2 R3 R1
       14 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R4 K2 [string.format]
        2 LOADK                            R5 K3 ["rbxthumb://type=CreatorContextAsset&id=%d&w=%d&h=%d"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 CALL                             R4 4 -1
        7 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R1 R1 K0 ["getAssetThumbnailUrl"]
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["List"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R2 K3 ["AssetData"]
       11 GETTABLEKS                       R5 R5 K4 ["Asset"]
       13 GETTABLEKS                       R5 R5 K5 ["Id"]
       15 SETLIST                          R4 R5 1 [1]
       17 GETTABLEKS                       R5 R2 K3 ["AssetData"]
       19 GETTABLEKS                       R5 R5 K4 ["Asset"]
       21 GETTABLEKS                       R5 R5 K6 ["AssetMediaIds"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["map"]
       27 MOVE                             R5 R3
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Width"]
       10 GETTABLEKS                       R5 R1 K4 ["AssetData"]
       12 GETTABLEKS                       R5 R5 K5 ["Asset"]
       14 GETTABLEKS                       R5 R5 K6 ["Id"]
       16 GETTABLEKS                       R6 R1 K7 ["AssetInstance"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K8 ["Dictionary"]
       21 GETTABLEKS                       R8 R8 K9 ["keys"]
       23 GETTABLEKS                       R9 R2 K10 ["treeViewSelection"]
       25 CALL                             R8 1 1
       26 GETTABLEN                        R7 R8 1
       27 MOVE                             R8 R7
       28 JUMPIF                           R8 ; [+2]
       29 GETTABLEKS                       R8 R1 K7 ["AssetInstance"]
       31 GETUPVAL                         R9 1
       32 MOVE                             R11 R8
       33 NAMECALL                         R9 R9 K11 ["getRenderType"]
       35 CALL                             R9 2 1
       36 LOADB                            R10 0
       37 GETTABLEKS                       R11 R1 K4 ["AssetData"]
       39 GETTABLEKS                       R11 R11 K5 ["Asset"]
       41 GETTABLEKS                       R11 R11 K12 ["TypeId"]
       43 GETIMPORT                        R12 K16 [Enum.AssetType.Model]
       45 GETTABLEKS                       R12 R12 K17 ["Value"]
       47 JUMPIFNOTEQ                      R11 R12 ; [+4]
       49 GETTABLEKS                       R11 R1 K7 ["AssetInstance"]
       51 NOT                              R10 R11
       52 GETTABLEKS                       R12 R1 K4 ["AssetData"]
       54 GETTABLEKS                       R12 R12 K5 ["Asset"]
       56 GETTABLEKS                       R12 R12 K12 ["TypeId"]
       58 GETIMPORT                        R13 K19 [Enum.AssetType.Plugin]
       60 GETTABLEKS                       R13 R13 K17 ["Value"]
       62 JUMPIFEQ                         R12 R13 ; [+2]
       64 LOADB                            R11 0 +1
       65 LOADB                            R11 1
       66 GETTABLEKS                       R13 R1 K4 ["AssetData"]
       68 GETTABLEKS                       R13 R13 K5 ["Asset"]
       70 GETTABLEKS                       R13 R13 K12 ["TypeId"]
       72 GETIMPORT                        R14 K21 [Enum.AssetType.FontFamily]
       74 GETTABLEKS                       R14 R14 K17 ["Value"]
       76 JUMPIFEQ                         R13 R14 ; [+2]
       78 LOADB                            R12 0 +1
       79 LOADB                            R12 1
       80 LOADNIL                          R13
       81 LOADNIL                          R14
       82 GETUPVAL                         R15 2
       83 CALL                             R15 0 1
       84 JUMPIFNOT                        R15 ; [+42]
       85 LOADB                            R15 1
       86 GETTABLEKS                       R16 R1 K4 ["AssetData"]
       88 GETTABLEKS                       R16 R16 K5 ["Asset"]
       90 GETTABLEKS                       R16 R16 K12 ["TypeId"]
       92 GETIMPORT                        R17 K16 [Enum.AssetType.Model]
       94 GETTABLEKS                       R17 R17 K17 ["Value"]
       96 JUMPIFEQ                         R16 R17 ; [+15]
       98 GETTABLEKS                       R16 R1 K4 ["AssetData"]
      100 GETTABLEKS                       R16 R16 K5 ["Asset"]
      102 GETTABLEKS                       R16 R16 K12 ["TypeId"]
      104 GETIMPORT                        R17 K23 [Enum.AssetType.MeshPart]
      106 GETTABLEKS                       R17 R17 K17 ["Value"]
      108 JUMPIFEQ                         R16 R17 ; [+2]
      110 LOADB                            R15 0 +1
      111 LOADB                            R15 1
      112 MOVE                             R13 R15
      113 GETTABLEKS                       R15 R1 K4 ["AssetData"]
      115 GETTABLEKS                       R15 R15 K5 ["Asset"]
      117 GETTABLEKS                       R15 R15 K12 ["TypeId"]
      119 GETIMPORT                        R16 K25 [Enum.AssetType.Decal]
      121 GETTABLEKS                       R16 R16 K17 ["Value"]
      123 JUMPIFEQ                         R15 R16 ; [+2]
      125 LOADB                            R14 0 +1
      126 LOADB                            R14 1
      127 GETTABLEKS                       R16 R1 K26 ["DisableTreeView"]
      129 NOT                              R15 R16
      130 JUMPIFNOT                        R15 ; [+7]
      131 MOVE                             R15 R6
      132 JUMPIFNOT                        R15 ; [+5]
      133 NOT                              R15 R11
      134 JUMPIFNOT                        R15 ; [+3]
      135 NOT                              R15 R12
      136 JUMPIFNOT                        R15 ; [+1]
      137 NOT                              R15 R10
      138 MOVE                             R16 R15
      139 JUMPIFNOT                        R16 ; [+2]
      140 GETTABLEKS                       R16 R2 K27 ["treeViewVisible"]
      142 GETTABLEKS                       R17 R3 K28 ["RenderView"]
      144 GETTABLEKS                       R17 R17 K29 ["Size"]
      146 GETTABLEKS                       R18 R3 K30 ["TreeView"]
      148 GETTABLEKS                       R18 R18 K29 ["Size"]
      150 GETTABLEKS                       R21 R17 K32 ["Y"]
      152 GETTABLEKS                       R21 R21 K33 ["Offset"]
      154 MULK                             R20 R21 K31 [2]
      155 JUMPIFLT                         R20 R4 ; [+2]
      157 LOADB                            R19 0 +1
      158 LOADB                            R19 1
      159 JUMPIFNOT                        R16 ; [+16]
      160 JUMPIFNOT                        R19 ; [+15]
      161 GETTABLEKS                       R20 R3 K30 ["TreeView"]
      163 GETTABLEKS                       R18 R20 K34 ["HorizontalSize"]
      165 GETIMPORT                        R20 K37 [UDim2.new]
      167 GETTABLEKS                       R22 R17 K38 ["X"]
      169 GETTABLEKS                       R23 R18 K38 ["X"]
      171 SUB                              R21 R22 R23
      172 GETTABLEKS                       R22 R17 K32 ["Y"]
      174 CALL                             R20 2 1
      175 MOVE                             R17 R20
      176 JUMPIFNOT                        R16 ; [+7]
      177 JUMPIF                           R19 ; [+6]
      178 GETTABLEKS                       R21 R17 K32 ["Y"]
      180 GETTABLEKS                       R22 R18 K32 ["Y"]
      182 ADD                              R20 R21 R22
      183 JUMPIF                           R20 ; [+2]
      184 GETTABLEKS                       R20 R17 K32 ["Y"]
      186 LOADNIL                          R21
      187 GETTABLEKS                       R22 R1 K39 ["UseImageCarousel"]
      189 JUMPIFNOT                        R22 ; [+53]
      190 GETUPVAL                         R22 3
      191 GETTABLEKS                       R22 R22 K40 ["createElement"]
      193 GETUPVAL                         R23 4
      194 DUPTABLE                         R24 K50 [{"AutoAdvance", "AutoAdvanceTimer", "ImageStrings", "OnImageChange", "OnImageChangeTransparencyThreshold", "OnSetImages", "PaneStyle", "ShowNavigationOnHover", "DisableAnimations"}]
      195 LOADB                            R25 1
      196 SETTABLEKS                       R25 R24 K41 ["AutoAdvance"]
      198 GETTABLEKS                       R25 R1 K51 ["ImageCarouselAutoAdvanceTimer"]
      200 SETTABLEKS                       R25 R24 K42 ["AutoAdvanceTimer"]
      202 GETTABLEKS                       R27 R3 K52 ["Thumbnail"]
      204 GETTABLEKS                       R27 R27 K29 ["Size"]
      206 NAMECALL                         R25 R0 K53 ["getImagesForCarousel"]
      208 CALL                             R25 2 1
      209 SETTABLEKS                       R25 R24 K43 ["ImageStrings"]
      211 GETTABLEKS                       R25 R1 K54 ["OnImageCarouselImageChanged"]
      213 SETTABLEKS                       R25 R24 K44 ["OnImageChange"]
      215 GETTABLEKS                       R25 R1 K55 ["ImageCarouselTransparencyThreshold"]
      217 SETTABLEKS                       R25 R24 K45 ["OnImageChangeTransparencyThreshold"]
      219 GETTABLEKS                       R25 R1 K56 ["OnSetImageCarouselImages"]
      221 SETTABLEKS                       R25 R24 K46 ["OnSetImages"]
      223 GETTABLEKS                       R25 R3 K57 ["ImageCarousel"]
      225 GETTABLEKS                       R25 R25 K47 ["PaneStyle"]
      227 SETTABLEKS                       R25 R24 K47 ["PaneStyle"]
      229 LOADB                            R25 1
      230 SETTABLEKS                       R25 R24 K48 ["ShowNavigationOnHover"]
      232 GETUPVAL                         R26 5
      233 CALL                             R26 0 1
      234 JUMPIFNOT                        R26 ; [+2]
      235 LOADB                            R25 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R25
      238 SETTABLEKS                       R25 R24 K49 ["DisableAnimations"]
      240 CALL                             R22 2 1
      241 MOVE                             R21 R22
      242 JUMP                             ; [+393]
      243 JUMPIF                           R10 ; [+8]
      244 JUMPIF                           R11 ; [+7]
      245 GETUPVAL                         R22 2
      246 CALL                             R22 0 1
      247 JUMPIFNOT                        R22 ; [+26]
      248 GETTABLEKS                       R22 R1 K58 ["Hide3DPreviewForAssetsWithMeshes"]
      250 JUMPIFNOT                        R22 ; [+23]
      251 JUMPIFNOT                        R13 ; [+22]
      252 GETUPVAL                         R22 3
      253 GETTABLEKS                       R22 R22 K40 ["createElement"]
      255 GETUPVAL                         R23 6
      256 DUPTABLE                         R24 K60 [{"Image"}]
      257 MOVE                             R27 R5
      258 GETTABLEKS                       R28 R3 K52 ["Thumbnail"]
      260 GETTABLEKS                       R28 R28 K29 ["Size"]
      262 GETTABLEKS                       R29 R3 K52 ["Thumbnail"]
      264 GETTABLEKS                       R29 R29 K29 ["Size"]
      266 NAMECALL                         R25 R0 K61 ["getAssetThumbnailUrl"]
      268 CALL                             R25 4 1
      269 SETTABLEKS                       R25 R24 K59 ["Image"]
      271 CALL                             R22 2 1
      272 MOVE                             R21 R22
      273 JUMP                             ; [+362]
      274 JUMPIFNOT                        R12 ; [+133]
      275 GETTABLEKS                       R22 R2 K62 ["isFontLoaded"]
      277 JUMPIFNOT                        R22 ; [+101]
      278 GETUPVAL                         R22 3
      279 GETTABLEKS                       R22 R22 K40 ["createElement"]
      281 GETUPVAL                         R23 7
      282 DUPTABLE                         R24 K66 [{"BackgroundTransparency", "BackgroundColor", "Padding", "Size"}]
      283 LOADN                            R25 0
      284 SETTABLEKS                       R25 R24 K63 ["BackgroundTransparency"]
      286 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      288 GETTABLEKS                       R25 R25 K67 ["FontRenderView"]
      290 GETTABLEKS                       R25 R25 K68 ["FontRenderViewBackgroundColor"]
      292 SETTABLEKS                       R25 R24 K64 ["BackgroundColor"]
      294 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      296 GETTABLEKS                       R25 R25 K67 ["FontRenderView"]
      298 GETTABLEKS                       R25 R25 K65 ["Padding"]
      300 SETTABLEKS                       R25 R24 K65 ["Padding"]
      302 GETIMPORT                        R25 K37 [UDim2.new]
      304 LOADN                            R26 1
      305 LOADN                            R27 0
      306 LOADN                            R28 1
      307 LOADN                            R29 0
      308 CALL                             R25 4 1
      309 SETTABLEKS                       R25 R24 K29 ["Size"]
      311 DUPTABLE                         R25 K70 [{"fontTextLabel"}]
      312 GETUPVAL                         R26 3
      313 GETTABLEKS                       R26 R26 K40 ["createElement"]
      315 GETUPVAL                         R27 8
      316 DUPTABLE                         R28 K80 [{"AnchorPoint", "AutomaticSize", "FontFace", "Position", "Size", "Text", "TextSelectable", "TextSize", "TextWrapped", "TextXAlignment"}]
      317 GETIMPORT                        R29 K82 [Vector2.new]
      319 LOADK                            R30 K83 [0.5]
      320 LOADK                            R31 K83 [0.5]
      321 CALL                             R29 2 1
      322 SETTABLEKS                       R29 R28 K71 ["AnchorPoint"]
      324 GETIMPORT                        R29 K85 [Enum.AutomaticSize.XY]
      326 SETTABLEKS                       R29 R28 K72 ["AutomaticSize"]
      328 GETIMPORT                        R29 K88 [Font.fromId]
      330 MOVE                             R30 R5
      331 CALL                             R29 1 1
      332 SETTABLEKS                       R29 R28 K73 ["FontFace"]
      334 GETIMPORT                        R29 K37 [UDim2.new]
      336 LOADK                            R30 K83 [0.5]
      337 LOADN                            R31 0
      338 LOADK                            R32 K83 [0.5]
      339 LOADN                            R33 0
      340 CALL                             R29 4 1
      341 SETTABLEKS                       R29 R28 K74 ["Position"]
      343 GETIMPORT                        R29 K37 [UDim2.new]
      345 LOADN                            R30 1
      346 LOADN                            R31 0
      347 LOADN                            R32 1
      348 LOADN                            R33 0
      349 CALL                             R29 4 1
      350 SETTABLEKS                       R29 R28 K29 ["Size"]
      352 GETTABLEKS                       R29 R3 K28 ["RenderView"]
      354 GETTABLEKS                       R29 R29 K67 ["FontRenderView"]
      356 GETTABLEKS                       R29 R29 K75 ["Text"]
      358 SETTABLEKS                       R29 R28 K75 ["Text"]
      360 LOADB                            R29 0
      361 SETTABLEKS                       R29 R28 K76 ["TextSelectable"]
      363 LOADN                            R29 40
      364 SETTABLEKS                       R29 R28 K77 ["TextSize"]
      366 LOADB                            R29 1
      367 SETTABLEKS                       R29 R28 K78 ["TextWrapped"]
      369 GETIMPORT                        R29 K90 [Enum.TextXAlignment.Left]
      371 SETTABLEKS                       R29 R28 K79 ["TextXAlignment"]
      373 CALL                             R26 2 1
      374 SETTABLEKS                       R26 R25 K69 ["fontTextLabel"]
      376 CALL                             R22 3 1
      377 MOVE                             R21 R22
      378 JUMP                             ; [+257]
      379 GETUPVAL                         R22 3
      380 GETTABLEKS                       R22 R22 K40 ["createElement"]
      382 GETUPVAL                         R23 9
      383 DUPTABLE                         R24 K91 [{"AnchorPoint", "Position", "Size"}]
      384 GETIMPORT                        R25 K82 [Vector2.new]
      386 LOADK                            R26 K83 [0.5]
      387 LOADK                            R27 K83 [0.5]
      388 CALL                             R25 2 1
      389 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      391 GETIMPORT                        R25 K93 [UDim2.fromScale]
      393 LOADK                            R26 K83 [0.5]
      394 LOADK                            R27 K83 [0.5]
      395 CALL                             R25 2 1
      396 SETTABLEKS                       R25 R24 K74 ["Position"]
      398 GETIMPORT                        R25 K93 [UDim2.fromScale]
      400 LOADK                            R26 K83 [0.5]
      401 LOADK                            R27 K83 [0.5]
      402 CALL                             R25 2 1
      403 SETTABLEKS                       R25 R24 K29 ["Size"]
      405 CALL                             R22 2 1
      406 MOVE                             R21 R22
      407 JUMP                             ; [+228]
      408 JUMPIFNOTEQKNIL                  R9 ; [+30]
      410 GETUPVAL                         R22 3
      411 GETTABLEKS                       R22 R22 K40 ["createElement"]
      413 GETUPVAL                         R23 9
      414 DUPTABLE                         R24 K91 [{"AnchorPoint", "Position", "Size"}]
      415 GETIMPORT                        R25 K82 [Vector2.new]
      417 LOADK                            R26 K83 [0.5]
      418 LOADK                            R27 K83 [0.5]
      419 CALL                             R25 2 1
      420 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      422 GETIMPORT                        R25 K93 [UDim2.fromScale]
      424 LOADK                            R26 K83 [0.5]
      425 LOADK                            R27 K83 [0.5]
      426 CALL                             R25 2 1
      427 SETTABLEKS                       R25 R24 K74 ["Position"]
      429 GETIMPORT                        R25 K93 [UDim2.fromScale]
      431 LOADK                            R26 K83 [0.5]
      432 LOADK                            R27 K83 [0.5]
      433 CALL                             R25 2 1
      434 SETTABLEKS                       R25 R24 K29 ["Size"]
      436 CALL                             R22 2 1
      437 MOVE                             R21 R22
      438 JUMP                             ; [+197]
      439 GETUPVAL                         R22 10
      440 GETTABLEKS                       R22 R22 K15 ["Model"]
      442 JUMPIFNOTEQ                      R9 R22 ; [+23]
      444 GETUPVAL                         R22 3
      445 GETTABLEKS                       R22 R22 K40 ["createElement"]
      447 GETUPVAL                         R23 11
      448 DUPTABLE                         R24 K97 [{"Model", "OnMouseEnter", "OnMouseLeave", "ShouldMuteModelSounds"}]
      449 SETTABLEKS                       R8 R24 K15 ["Model"]
      451 GETTABLEKS                       R25 R1 K94 ["OnMouseEnter"]
      453 SETTABLEKS                       R25 R24 K94 ["OnMouseEnter"]
      455 GETTABLEKS                       R25 R1 K95 ["OnMouseLeave"]
      457 SETTABLEKS                       R25 R24 K95 ["OnMouseLeave"]
      459 GETTABLEKS                       R25 R1 K96 ["ShouldMuteModelSounds"]
      461 SETTABLEKS                       R25 R24 K96 ["ShouldMuteModelSounds"]
      463 CALL                             R22 2 1
      464 MOVE                             R21 R22
      465 JUMP                             ; [+170]
      466 GETUPVAL                         R22 10
      467 GETTABLEKS                       R22 R22 K98 ["Sound"]
      469 JUMPIFNOTEQ                      R9 R22 ; [+40]
      471 GETUPVAL                         R22 3
      472 GETTABLEKS                       R22 R22 K40 ["createElement"]
      474 GETUPVAL                         R23 12
      475 DUPTABLE                         R24 K104 [{"OnPlay", "OnPause", "SoundId", "Style", "UsageContext"}]
      476 GETTABLEKS                       R25 R1 K105 ["OnPlaySound"]
      478 SETTABLEKS                       R25 R24 K99 ["OnPlay"]
      480 GETTABLEKS                       R25 R1 K106 ["OnPauseSound"]
      482 SETTABLEKS                       R25 R24 K100 ["OnPause"]
      484 JUMPIFNOT                        R7 ; [+3]
      485 GETTABLEKS                       R25 R7 K101 ["SoundId"]
      487 JUMPIF                           R25 ; [+5]
      488 GETIMPORT                        R25 K109 [string.format]
      490 LOADK                            R26 K110 ["rbxassetid://%d"]
      491 MOVE                             R27 R5
      492 CALL                             R25 2 1
      493 SETTABLEKS                       R25 R24 K101 ["SoundId"]
      495 JUMPIFNOT                        R15 ; [+3]
      496 GETTABLEKS                       R25 R3 K111 ["AudioPlayerWithTreeViewButton"]
      498 JUMPIF                           R25 ; [+2]
      499 GETTABLEKS                       R25 R3 K112 ["AudioPlayer"]
      501 SETTABLEKS                       R25 R24 K102 ["Style"]
      503 GETTABLEKS                       R25 R1 K103 ["UsageContext"]
      505 SETTABLEKS                       R25 R24 K103 ["UsageContext"]
      507 CALL                             R22 2 1
      508 MOVE                             R21 R22
      509 JUMP                             ; [+126]
      510 GETUPVAL                         R22 10
      511 GETTABLEKS                       R22 R22 K113 ["Video"]
      513 JUMPIFNOTEQ                      R9 R22 ; [+36]
      515 GETUPVAL                         R22 3
      516 GETTABLEKS                       R22 R22 K40 ["createElement"]
      518 GETUPVAL                         R23 13
      519 DUPTABLE                         R24 K115 [{"OnPlay", "OnPause", "VideoId", "Style"}]
      520 GETTABLEKS                       R25 R1 K116 ["OnPlayVideo"]
      522 SETTABLEKS                       R25 R24 K99 ["OnPlay"]
      524 GETTABLEKS                       R25 R1 K117 ["OnPauseVideo"]
      526 SETTABLEKS                       R25 R24 K100 ["OnPause"]
      528 JUMPIFNOT                        R7 ; [+3]
      529 GETTABLEKS                       R25 R7 K113 ["Video"]
      531 JUMPIF                           R25 ; [+5]
      532 GETIMPORT                        R25 K109 [string.format]
      534 LOADK                            R26 K110 ["rbxassetid://%d"]
      535 MOVE                             R27 R5
      536 CALL                             R25 2 1
      537 SETTABLEKS                       R25 R24 K114 ["VideoId"]
      539 JUMPIFNOT                        R15 ; [+3]
      540 GETTABLEKS                       R25 R3 K118 ["VideoPlayerWithTreeViewButton"]
      542 JUMPIF                           R25 ; [+2]
      543 GETTABLEKS                       R25 R3 K119 ["VideoPlayer"]
      545 SETTABLEKS                       R25 R24 K102 ["Style"]
      547 CALL                             R22 2 1
      548 MOVE                             R21 R22
      549 JUMP                             ; [+86]
      550 GETUPVAL                         R22 10
      551 GETTABLEKS                       R22 R22 K59 ["Image"]
      553 JUMPIFNOTEQ                      R9 R22 ; [+29]
      555 GETUPVAL                         R22 3
      556 GETTABLEKS                       R22 R22 K40 ["createElement"]
      558 GETUPVAL                         R23 6
      559 DUPTABLE                         R24 K60 [{"Image"}]
      560 GETUPVAL                         R26 2
      561 CALL                             R26 0 1
      562 JUMPIFNOT                        R26 ; [+14]
      563 JUMPIFNOT                        R14 ; [+13]
      564 MOVE                             R27 R5
      565 GETTABLEKS                       R28 R3 K52 ["Thumbnail"]
      567 GETTABLEKS                       R28 R28 K29 ["Size"]
      569 GETTABLEKS                       R29 R3 K52 ["Thumbnail"]
      571 GETTABLEKS                       R29 R29 K29 ["Size"]
      573 NAMECALL                         R25 R0 K61 ["getAssetThumbnailUrl"]
      575 CALL                             R25 4 1
      576 JUMP                             ; [+1]
      577 MOVE                             R25 R8
      578 SETTABLEKS                       R25 R24 K59 ["Image"]
      580 CALL                             R22 2 1
      581 MOVE                             R21 R22
      582 JUMP                             ; [+53]
      583 GETUPVAL                         R22 10
      584 GETTABLEKS                       R22 R22 K120 ["Script"]
      586 JUMPIFEQ                         R9 R22 ; [+6]
      588 GETUPVAL                         R22 10
      589 GETTABLEKS                       R22 R22 K121 ["Other"]
      591 JUMPIFNOTEQ                      R9 R22 ; [+32]
      593 GETUPVAL                         R22 3
      594 GETTABLEKS                       R22 R22 K40 ["createElement"]
      596 GETUPVAL                         R23 14
      597 DUPTABLE                         R24 K123 [{"Instance", "AnchorPoint", "Position", "Size"}]
      598 SETTABLEKS                       R8 R24 K122 ["Instance"]
      600 GETIMPORT                        R25 K82 [Vector2.new]
      602 LOADK                            R26 K83 [0.5]
      603 LOADK                            R27 K83 [0.5]
      604 CALL                             R25 2 1
      605 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      607 GETIMPORT                        R25 K93 [UDim2.fromScale]
      609 LOADK                            R26 K83 [0.5]
      610 LOADK                            R27 K83 [0.5]
      611 CALL                             R25 2 1
      612 SETTABLEKS                       R25 R24 K74 ["Position"]
      614 GETIMPORT                        R25 K93 [UDim2.fromScale]
      616 LOADK                            R26 K83 [0.5]
      617 LOADK                            R27 K83 [0.5]
      618 CALL                             R25 2 1
      619 SETTABLEKS                       R25 R24 K29 ["Size"]
      621 CALL                             R22 2 1
      622 MOVE                             R21 R22
      623 JUMP                             ; [+12]
      624 GETIMPORT                        R22 K125 [error]
      626 GETIMPORT                        R23 K109 [string.format]
      628 LOADK                            R24 K126 ["Unhandled AssetRenderType: %s"]
      629 FASTCALL1                        TOSTRING R9 ; [+3]
      630 MOVE                             R26 R9
      631 GETIMPORT                        R25 K128 [tostring]
      633 CALL                             R25 1 1
      634 CALL                             R23 2 -1
      635 CALL                             R22 -1 0
      636 GETUPVAL                         R22 3
      637 GETTABLEKS                       R22 R22 K40 ["createElement"]
      639 GETUPVAL                         R23 15
      640 DUPTABLE                         R24 K133 [{"LayoutOrder", "Position", "Margin", "Padding", "Size", "Background", "BackgroundStyle"}]
      641 GETTABLEKS                       R25 R1 K129 ["LayoutOrder"]
      643 SETTABLEKS                       R25 R24 K129 ["LayoutOrder"]
      645 GETTABLEKS                       R25 R1 K74 ["Position"]
      647 SETTABLEKS                       R25 R24 K74 ["Position"]
      649 GETTABLEKS                       R25 R1 K130 ["Margin"]
      651 SETTABLEKS                       R25 R24 K130 ["Margin"]
      653 GETTABLEKS                       R25 R1 K65 ["Padding"]
      655 SETTABLEKS                       R25 R24 K65 ["Padding"]
      657 GETIMPORT                        R25 K37 [UDim2.new]
      659 GETIMPORT                        R26 K135 [UDim.new]
      661 LOADN                            R27 0
      662 MOVE                             R28 R4
      663 CALL                             R26 2 1
      664 MOVE                             R27 R20
      665 CALL                             R25 2 1
      666 SETTABLEKS                       R25 R24 K29 ["Size"]
      668 GETTABLEKS                       R25 R3 K131 ["Background"]
      670 SETTABLEKS                       R25 R24 K131 ["Background"]
      672 GETTABLEKS                       R25 R3 K132 ["BackgroundStyle"]
      674 SETTABLEKS                       R25 R24 K132 ["BackgroundStyle"]
      676 DUPTABLE                         R25 K137 [{"Layout", "RenderView", "TreeView"}]
      677 GETUPVAL                         R26 3
      678 GETTABLEKS                       R26 R26 K40 ["createElement"]
      680 LOADK                            R27 K138 ["UIListLayout"]
      681 DUPTABLE                         R28 K143 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      682 JUMPIFNOT                        R19 ; [+3]
      683 GETIMPORT                        R29 K145 [Enum.FillDirection.Horizontal]
      685 JUMPIF                           R29 ; [+2]
      686 GETIMPORT                        R29 K147 [Enum.FillDirection.Vertical]
      688 SETTABLEKS                       R29 R28 K139 ["FillDirection"]
      690 GETIMPORT                        R29 K148 [Enum.HorizontalAlignment.Left]
      692 SETTABLEKS                       R29 R28 K140 ["HorizontalAlignment"]
      694 GETIMPORT                        R29 K150 [Enum.VerticalAlignment.Center]
      696 SETTABLEKS                       R29 R28 K141 ["VerticalAlignment"]
      698 GETIMPORT                        R29 K151 [Enum.SortOrder.LayoutOrder]
      700 SETTABLEKS                       R29 R28 K142 ["SortOrder"]
      702 CALL                             R26 2 1
      703 SETTABLEKS                       R26 R25 K136 ["Layout"]
      705 GETUPVAL                         R26 3
      706 GETTABLEKS                       R26 R26 K40 ["createElement"]
      708 GETUPVAL                         R27 15
      709 DUPTABLE                         R28 K152 [{"LayoutOrder", "Size"}]
      710 LOADN                            R29 1
      711 SETTABLEKS                       R29 R28 K129 ["LayoutOrder"]
      713 SETTABLEKS                       R17 R28 K29 ["Size"]
      715 DUPTABLE                         R29 K155 [{"AssetRenderView", "TreeViewButton"}]
      716 SETTABLEKS                       R21 R29 K153 ["AssetRenderView"]
      718 MOVE                             R30 R15
      719 JUMPIFNOT                        R30 ; [+60]
      720 GETUPVAL                         R30 3
      721 GETTABLEKS                       R30 R30 K40 ["createElement"]
      723 GETUPVAL                         R31 16
      724 DUPTABLE                         R32 K158 [{"Style", "OnClick", "AnchorPoint", "Position", "ZIndex"}]
      725 GETTABLEKS                       R33 R3 K28 ["RenderView"]
      727 GETTABLEKS                       R33 R33 K154 ["TreeViewButton"]
      729 SETTABLEKS                       R33 R32 K102 ["Style"]
      731 GETTABLEKS                       R33 R0 K159 ["toggleTreeViewVisible"]
      733 SETTABLEKS                       R33 R32 K156 ["OnClick"]
      735 GETIMPORT                        R33 K82 [Vector2.new]
      737 LOADN                            R34 1
      738 LOADN                            R35 1
      739 CALL                             R33 2 1
      740 SETTABLEKS                       R33 R32 K71 ["AnchorPoint"]
      742 GETIMPORT                        R33 K37 [UDim2.new]
      744 LOADN                            R34 1
      745 LOADN                            R35 249
      746 LOADN                            R36 1
      747 LOADN                            R37 249
      748 CALL                             R33 4 1
      749 SETTABLEKS                       R33 R32 K74 ["Position"]
      751 LOADN                            R33 2
      752 SETTABLEKS                       R33 R32 K157 ["ZIndex"]
      754 GETUPVAL                         R34 17
      755 JUMPIFNOT                        R34 ; [+10]
      756 GETUPVAL                         R33 3
      757 GETTABLEKS                       R33 R33 K40 ["createElement"]
      759 GETUPVAL                         R34 18
      760 DUPTABLE                         R35 K161 [{"Cursor"}]
      761 LOADK                            R36 K162 ["PointingHand"]
      762 SETTABLEKS                       R36 R35 K160 ["Cursor"]
      764 CALL                             R33 2 1
      765 JUMP                             ; [+13]
      766 NEWTABLE                         R33 0 1
      768 GETUPVAL                         R34 3
      769 GETTABLEKS                       R34 R34 K40 ["createElement"]
      771 GETUPVAL                         R35 18
      772 DUPTABLE                         R36 K161 [{"Cursor"}]
      773 LOADK                            R37 K162 ["PointingHand"]
      774 SETTABLEKS                       R37 R36 K160 ["Cursor"]
      776 CALL                             R34 2 -1
      777 SETLIST                          R33 R34 -1 [1]
      779 CALL                             R30 3 1
      780 SETTABLEKS                       R30 R29 K154 ["TreeViewButton"]
      782 CALL                             R26 3 1
      783 SETTABLEKS                       R26 R25 K28 ["RenderView"]
      785 MOVE                             R26 R16
      786 JUMPIFNOT                        R26 ; [+36]
      787 GETUPVAL                         R26 3
      788 GETTABLEKS                       R26 R26 K40 ["createElement"]
      790 GETUPVAL                         R27 19
      791 DUPTABLE                         R28 K168 [{"LayoutOrder", "Size", "Instances", "Expansion", "Selection", "OnExpansionChange", "OnSelectionChange", "Style"}]
      792 LOADN                            R29 2
      793 SETTABLEKS                       R29 R28 K129 ["LayoutOrder"]
      795 SETTABLEKS                       R18 R28 K29 ["Size"]
      797 MOVE                             R31 R6
      798 NAMECALL                         R29 R0 K169 ["getMemoizedTreeViewInstances"]
      800 CALL                             R29 2 1
      801 SETTABLEKS                       R29 R28 K163 ["Instances"]
      803 GETTABLEKS                       R29 R2 K170 ["treeViewExpansion"]
      805 SETTABLEKS                       R29 R28 K164 ["Expansion"]
      807 GETTABLEKS                       R29 R2 K10 ["treeViewSelection"]
      809 SETTABLEKS                       R29 R28 K165 ["Selection"]
      811 GETTABLEKS                       R29 R0 K171 ["onTreeViewExpansionChange"]
      813 SETTABLEKS                       R29 R28 K166 ["OnExpansionChange"]
      815 GETTABLEKS                       R29 R0 K172 ["onTreeViewSelectionChange"]
      817 SETTABLEKS                       R29 R28 K167 ["OnSelectionChange"]
      819 LOADK                            R29 K173 ["BorderBox"]
      820 SETTABLEKS                       R29 R28 K102 ["Style"]
      822 CALL                             R26 2 1
      823 SETTABLEKS                       R26 R25 K30 ["TreeView"]
      825 CALL                             R22 3 -1
      826 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K14 ["SharedFlags"]
       35 GETTABLEKS                       R6 R6 K15 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       37 CALL                             R5 1 1
       38 CALL                             R5 0 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R7 R1 K14 ["SharedFlags"]
       43 GETTABLEKS                       R7 R7 K16 ["getFFlagAssetPreviewHide3DPreview"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K10 [require]
       48 GETTABLEKS                       R8 R1 K14 ["SharedFlags"]
       50 GETTABLEKS                       R8 R8 K17 ["getFFlagDevFrameworkDisableAnimation"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K10 [require]
       55 GETTABLEKS                       R9 R1 K18 ["Util"]
       57 GETTABLEKS                       R9 R9 K19 ["Typecheck"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K10 [require]
       62 GETTABLEKS                       R10 R1 K18 ["Util"]
       64 GETTABLEKS                       R10 R10 K20 ["AssetRenderUtil"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R9 K21 ["AssetRenderType"]
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R1 K8 ["Parent"]
       73 GETTABLEKS                       R12 R12 K22 ["Cryo"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R1 K8 ["Parent"]
       80 GETTABLEKS                       R13 R13 K23 ["Dash"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R12 K24 ["join"]
       85 GETIMPORT                        R14 K10 [require]
       87 GETTABLEKS                       R15 R1 K6 ["UI"]
       89 GETTABLEKS                       R15 R15 K25 ["Components"]
       91 GETTABLEKS                       R15 R15 K26 ["DEPRECATED_Button"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K10 [require]
       96 GETTABLEKS                       R16 R1 K6 ["UI"]
       98 GETTABLEKS                       R16 R16 K25 ["Components"]
      100 GETTABLEKS                       R16 R16 K27 ["Container"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K10 [require]
      105 GETTABLEKS                       R17 R1 K6 ["UI"]
      107 GETTABLEKS                       R17 R17 K25 ["Components"]
      109 GETTABLEKS                       R17 R17 K28 ["HoverArea"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K10 [require]
      114 GETTABLEKS                       R18 R1 K6 ["UI"]
      116 GETTABLEKS                       R18 R18 K25 ["Components"]
      118 GETTABLEKS                       R18 R18 K29 ["LoadingIndicator"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K10 [require]
      123 GETTABLEKS                       R19 R1 K6 ["UI"]
      125 GETTABLEKS                       R19 R19 K25 ["Components"]
      127 GETTABLEKS                       R19 R19 K30 ["Pane"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K10 [require]
      132 GETTABLEKS                       R20 R1 K6 ["UI"]
      134 GETTABLEKS                       R20 R20 K25 ["Components"]
      136 GETTABLEKS                       R20 R20 K31 ["InstanceTreeView"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K10 [require]
      141 GETTABLEKS                       R21 R1 K6 ["UI"]
      143 GETTABLEKS                       R21 R21 K25 ["Components"]
      145 GETTABLEKS                       R21 R21 K32 ["TextLabel"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K10 [require]
      150 GETTABLEKS                       R22 R1 K6 ["UI"]
      152 GETTABLEKS                       R22 R22 K25 ["Components"]
      154 GETTABLEKS                       R22 R22 K33 ["AudioPlayer"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K10 [require]
      159 GETTABLEKS                       R23 R1 K6 ["UI"]
      161 GETTABLEKS                       R23 R23 K25 ["Components"]
      163 GETTABLEKS                       R23 R23 K34 ["VideoPlayer"]
      165 CALL                             R22 1 1
      166 GETIMPORT                        R23 K10 [require]
      168 GETTABLEKS                       R24 R1 K6 ["UI"]
      170 GETTABLEKS                       R24 R24 K25 ["Components"]
      172 GETTABLEKS                       R24 R24 K35 ["AssetRenderImage"]
      174 CALL                             R23 1 1
      175 GETIMPORT                        R24 K10 [require]
      177 GETTABLEKS                       R25 R1 K6 ["UI"]
      179 GETTABLEKS                       R25 R25 K25 ["Components"]
      181 GETTABLEKS                       R25 R25 K36 ["AssetRenderModel"]
      183 CALL                             R24 1 1
      184 GETIMPORT                        R25 K10 [require]
      186 GETTABLEKS                       R26 R1 K6 ["UI"]
      188 GETTABLEKS                       R26 R26 K25 ["Components"]
      190 GETTABLEKS                       R26 R26 K37 ["AssetRenderThumbnail"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K10 [require]
      195 GETTABLEKS                       R27 R1 K6 ["UI"]
      197 GETTABLEKS                       R27 R27 K25 ["Components"]
      199 GETTABLEKS                       R27 R27 K38 ["ImageCarousel"]
      201 CALL                             R26 1 1
      202 GETTABLEKS                       R27 R2 K39 ["PureComponent"]
      204 LOADK                            R29 K40 ["AssetRender"]
      205 NAMECALL                         R27 R27 K41 ["extend"]
      207 CALL                             R27 2 1
      208 GETTABLEKS                       R28 R8 K42 ["wrap"]
      210 MOVE                             R29 R27
      211 GETIMPORT                        R30 K5 [script]
      213 CALL                             R28 2 0
      214 DUPCLOSURE                       R28 K43 [PROTO_4]
      215 CAPTURE                          VAL R13
      216 SETTABLEKS                       R28 R27 K44 ["init"]
      218 DUPCLOSURE                       R28 K45 [PROTO_6]
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R28 R27 K46 ["loadFontForTextLabelAndSetStateWhenDone"]
      222 DUPCLOSURE                       R28 K47 [PROTO_7]
      223 SETTABLEKS                       R28 R27 K48 ["didMount"]
      225 DUPCLOSURE                       R28 K49 [PROTO_8]
      226 SETTABLEKS                       R28 R27 K50 ["didUpdate"]
      228 DUPCLOSURE                       R28 K51 [PROTO_9]
      229 SETTABLEKS                       R28 R27 K52 ["getMemoizedTreeViewInstances"]
      231 DUPCLOSURE                       R28 K53 [PROTO_10]
      232 SETTABLEKS                       R28 R27 K54 ["getAssetThumbnailUrl"]
      234 DUPCLOSURE                       R28 K55 [PROTO_12]
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R12
      237 SETTABLEKS                       R28 R27 K56 ["getImagesForCarousel"]
      239 DUPCLOSURE                       R28 K57 [PROTO_13]
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R23
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R25
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R5
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R19
      260 SETTABLEKS                       R28 R27 K58 ["render"]
      262 MOVE                             R28 R4
      263 DUPTABLE                         R29 K60 [{"Stylizer"}]
      264 GETTABLEKS                       R30 R3 K59 ["Stylizer"]
      266 SETTABLEKS                       R30 R29 K59 ["Stylizer"]
      268 CALL                             R28 1 1
      269 MOVE                             R29 R27
      270 CALL                             R28 1 1
      271 MOVE                             R27 R28
      272 RETURN                           R27 1
