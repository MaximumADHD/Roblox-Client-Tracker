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
        0 DUPTABLE                         R1 K5 [{[1], ["treeViewExpansion"], ["treeViewVisible"] = False, ["isFontLoaded"] = False}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["treeViewSelection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["treeViewExpansion"]
        9 SETTABLEKS                       R1 R0 K6 ["state"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K7 ["memoizedTreeViewInstances"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K8 ["toggleTreeViewVisible"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R1 R0 K9 ["onTreeViewExpansionChange"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K10 ["onTreeViewSelectionChange"]
       28 RETURN                           R0 0

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
       31 DUPTABLE                         R4 K16 [{["isFontLoaded"] = True}]
       32 NAMECALL                         R2 R2 K17 ["setState"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

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
       23 JUMPIFNOT                        R5 ; [+21]
       24 GETTABLEKS                       R6 R3 K2 ["AssetData"]
       26 GETTABLEKS                       R6 R6 K3 ["Asset"]
       28 GETTABLEKS                       R6 R6 K10 ["Id"]
       30 GETTABLEKS                       R7 R1 K2 ["AssetData"]
       32 GETTABLEKS                       R7 R7 K3 ["Asset"]
       34 GETTABLEKS                       R7 R7 K10 ["Id"]
       36 JUMPIFEQ                         R6 R7 ; [+8]
       38 DUPTABLE                         R8 K13 [{["isFontLoaded"] = False}]
       39 NAMECALL                         R6 R0 K14 ["setState"]
       41 CALL                             R6 2 0
       42 NAMECALL                         R6 R0 K15 ["loadFontForTextLabelAndSetStateWhenDone"]
       44 CALL                             R6 1 0
       45 RETURN                           R0 0

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
      189 JUMPIFNOT                        R22 ; [+47]
      190 GETUPVAL                         R22 3
      191 GETTABLEKS                       R22 R22 K40 ["createElement"]
      193 GETUPVAL                         R23 4
      194 DUPTABLE                         R24 K51 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"], ["ImageStrings"], ["OnImageChange"], ["OnImageChangeTransparencyThreshold"], ["OnSetImages"], ["PaneStyle"], ["ShowNavigationOnHover"] = True, ["DisableAnimations"]}]
      195 GETTABLEKS                       R25 R1 K52 ["ImageCarouselAutoAdvanceTimer"]
      197 SETTABLEKS                       R25 R24 K43 ["AutoAdvanceTimer"]
      199 GETTABLEKS                       R27 R3 K53 ["Thumbnail"]
      201 GETTABLEKS                       R27 R27 K29 ["Size"]
      203 NAMECALL                         R25 R0 K54 ["getImagesForCarousel"]
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K44 ["ImageStrings"]
      208 GETTABLEKS                       R25 R1 K55 ["OnImageCarouselImageChanged"]
      210 SETTABLEKS                       R25 R24 K45 ["OnImageChange"]
      212 GETTABLEKS                       R25 R1 K56 ["ImageCarouselTransparencyThreshold"]
      214 SETTABLEKS                       R25 R24 K46 ["OnImageChangeTransparencyThreshold"]
      216 GETTABLEKS                       R25 R1 K57 ["OnSetImageCarouselImages"]
      218 SETTABLEKS                       R25 R24 K47 ["OnSetImages"]
      220 GETTABLEKS                       R25 R3 K58 ["ImageCarousel"]
      222 GETTABLEKS                       R25 R25 K48 ["PaneStyle"]
      224 SETTABLEKS                       R25 R24 K48 ["PaneStyle"]
      226 GETUPVAL                         R26 5
      227 CALL                             R26 0 1
      228 JUMPIFNOT                        R26 ; [+2]
      229 LOADB                            R25 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R25
      232 SETTABLEKS                       R25 R24 K50 ["DisableAnimations"]
      234 CALL                             R22 2 1
      235 MOVE                             R21 R22
      236 JUMP                             ; [+381]
      237 JUMPIF                           R10 ; [+8]
      238 JUMPIF                           R11 ; [+7]
      239 GETUPVAL                         R22 2
      240 CALL                             R22 0 1
      241 JUMPIFNOT                        R22 ; [+26]
      242 GETTABLEKS                       R22 R1 K59 ["Hide3DPreviewForAssetsWithMeshes"]
      244 JUMPIFNOT                        R22 ; [+23]
      245 JUMPIFNOT                        R13 ; [+22]
      246 GETUPVAL                         R22 3
      247 GETTABLEKS                       R22 R22 K40 ["createElement"]
      249 GETUPVAL                         R23 6
      250 DUPTABLE                         R24 K61 [{"Image"}]
      251 MOVE                             R27 R5
      252 GETTABLEKS                       R28 R3 K53 ["Thumbnail"]
      254 GETTABLEKS                       R28 R28 K29 ["Size"]
      256 GETTABLEKS                       R29 R3 K53 ["Thumbnail"]
      258 GETTABLEKS                       R29 R29 K29 ["Size"]
      260 NAMECALL                         R25 R0 K62 ["getAssetThumbnailUrl"]
      262 CALL                             R25 4 1
      263 SETTABLEKS                       R25 R24 K60 ["Image"]
      265 CALL                             R22 2 1
      266 MOVE                             R21 R22
      267 JUMP                             ; [+350]
      268 JUMPIFNOT                        R12 ; [+121]
      269 GETTABLEKS                       R22 R2 K63 ["isFontLoaded"]
      271 JUMPIFNOT                        R22 ; [+89]
      272 GETUPVAL                         R22 3
      273 GETTABLEKS                       R22 R22 K40 ["createElement"]
      275 GETUPVAL                         R23 7
      276 DUPTABLE                         R24 K68 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["Padding"], ["Size"]}]
      277 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      279 GETTABLEKS                       R25 R25 K69 ["FontRenderView"]
      281 GETTABLEKS                       R25 R25 K70 ["FontRenderViewBackgroundColor"]
      283 SETTABLEKS                       R25 R24 K66 ["BackgroundColor"]
      285 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      287 GETTABLEKS                       R25 R25 K69 ["FontRenderView"]
      289 GETTABLEKS                       R25 R25 K67 ["Padding"]
      291 SETTABLEKS                       R25 R24 K67 ["Padding"]
      293 GETIMPORT                        R25 K37 [UDim2.new]
      295 LOADN                            R26 1
      296 LOADN                            R27 0
      297 LOADN                            R28 1
      298 LOADN                            R29 0
      299 CALL                             R25 4 1
      300 SETTABLEKS                       R25 R24 K29 ["Size"]
      302 DUPTABLE                         R25 K72 [{"fontTextLabel"}]
      303 GETUPVAL                         R26 3
      304 GETTABLEKS                       R26 R26 K40 ["createElement"]
      306 GETUPVAL                         R27 8
      307 DUPTABLE                         R28 K84 [{["AnchorPoint"], ["AutomaticSize"], ["FontFace"], ["Position"], ["Size"], ["Text"], ["TextSelectable"] = False, ["TextSize"] = 40, ["TextWrapped"] = True, ["TextXAlignment"]}]
      308 GETIMPORT                        R29 K86 [Vector2.new]
      310 LOADK                            R30 K87 [0.5]
      311 LOADK                            R31 K87 [0.5]
      312 CALL                             R29 2 1
      313 SETTABLEKS                       R29 R28 K73 ["AnchorPoint"]
      315 GETIMPORT                        R29 K89 [Enum.AutomaticSize.XY]
      317 SETTABLEKS                       R29 R28 K74 ["AutomaticSize"]
      319 GETIMPORT                        R29 K92 [Font.fromId]
      321 MOVE                             R30 R5
      322 CALL                             R29 1 1
      323 SETTABLEKS                       R29 R28 K75 ["FontFace"]
      325 GETIMPORT                        R29 K37 [UDim2.new]
      327 LOADK                            R30 K87 [0.5]
      328 LOADN                            R31 0
      329 LOADK                            R32 K87 [0.5]
      330 LOADN                            R33 0
      331 CALL                             R29 4 1
      332 SETTABLEKS                       R29 R28 K76 ["Position"]
      334 GETIMPORT                        R29 K37 [UDim2.new]
      336 LOADN                            R30 1
      337 LOADN                            R31 0
      338 LOADN                            R32 1
      339 LOADN                            R33 0
      340 CALL                             R29 4 1
      341 SETTABLEKS                       R29 R28 K29 ["Size"]
      343 GETTABLEKS                       R29 R3 K28 ["RenderView"]
      345 GETTABLEKS                       R29 R29 K69 ["FontRenderView"]
      347 GETTABLEKS                       R29 R29 K77 ["Text"]
      349 SETTABLEKS                       R29 R28 K77 ["Text"]
      351 GETIMPORT                        R29 K94 [Enum.TextXAlignment.Left]
      353 SETTABLEKS                       R29 R28 K83 ["TextXAlignment"]
      355 CALL                             R26 2 1
      356 SETTABLEKS                       R26 R25 K71 ["fontTextLabel"]
      358 CALL                             R22 3 1
      359 MOVE                             R21 R22
      360 JUMP                             ; [+257]
      361 GETUPVAL                         R22 3
      362 GETTABLEKS                       R22 R22 K40 ["createElement"]
      364 GETUPVAL                         R23 9
      365 DUPTABLE                         R24 K95 [{"AnchorPoint", "Position", "Size"}]
      366 GETIMPORT                        R25 K86 [Vector2.new]
      368 LOADK                            R26 K87 [0.5]
      369 LOADK                            R27 K87 [0.5]
      370 CALL                             R25 2 1
      371 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      373 GETIMPORT                        R25 K97 [UDim2.fromScale]
      375 LOADK                            R26 K87 [0.5]
      376 LOADK                            R27 K87 [0.5]
      377 CALL                             R25 2 1
      378 SETTABLEKS                       R25 R24 K76 ["Position"]
      380 GETIMPORT                        R25 K97 [UDim2.fromScale]
      382 LOADK                            R26 K87 [0.5]
      383 LOADK                            R27 K87 [0.5]
      384 CALL                             R25 2 1
      385 SETTABLEKS                       R25 R24 K29 ["Size"]
      387 CALL                             R22 2 1
      388 MOVE                             R21 R22
      389 JUMP                             ; [+228]
      390 JUMPIFNOTEQKNIL                  R9 ; [+30]
      392 GETUPVAL                         R22 3
      393 GETTABLEKS                       R22 R22 K40 ["createElement"]
      395 GETUPVAL                         R23 9
      396 DUPTABLE                         R24 K95 [{"AnchorPoint", "Position", "Size"}]
      397 GETIMPORT                        R25 K86 [Vector2.new]
      399 LOADK                            R26 K87 [0.5]
      400 LOADK                            R27 K87 [0.5]
      401 CALL                             R25 2 1
      402 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      404 GETIMPORT                        R25 K97 [UDim2.fromScale]
      406 LOADK                            R26 K87 [0.5]
      407 LOADK                            R27 K87 [0.5]
      408 CALL                             R25 2 1
      409 SETTABLEKS                       R25 R24 K76 ["Position"]
      411 GETIMPORT                        R25 K97 [UDim2.fromScale]
      413 LOADK                            R26 K87 [0.5]
      414 LOADK                            R27 K87 [0.5]
      415 CALL                             R25 2 1
      416 SETTABLEKS                       R25 R24 K29 ["Size"]
      418 CALL                             R22 2 1
      419 MOVE                             R21 R22
      420 JUMP                             ; [+197]
      421 GETUPVAL                         R22 10
      422 GETTABLEKS                       R22 R22 K15 ["Model"]
      424 JUMPIFNOTEQ                      R9 R22 ; [+23]
      426 GETUPVAL                         R22 3
      427 GETTABLEKS                       R22 R22 K40 ["createElement"]
      429 GETUPVAL                         R23 11
      430 DUPTABLE                         R24 K101 [{"Model", "OnMouseEnter", "OnMouseLeave", "ShouldMuteModelSounds"}]
      431 SETTABLEKS                       R8 R24 K15 ["Model"]
      433 GETTABLEKS                       R25 R1 K98 ["OnMouseEnter"]
      435 SETTABLEKS                       R25 R24 K98 ["OnMouseEnter"]
      437 GETTABLEKS                       R25 R1 K99 ["OnMouseLeave"]
      439 SETTABLEKS                       R25 R24 K99 ["OnMouseLeave"]
      441 GETTABLEKS                       R25 R1 K100 ["ShouldMuteModelSounds"]
      443 SETTABLEKS                       R25 R24 K100 ["ShouldMuteModelSounds"]
      445 CALL                             R22 2 1
      446 MOVE                             R21 R22
      447 JUMP                             ; [+170]
      448 GETUPVAL                         R22 10
      449 GETTABLEKS                       R22 R22 K102 ["Sound"]
      451 JUMPIFNOTEQ                      R9 R22 ; [+40]
      453 GETUPVAL                         R22 3
      454 GETTABLEKS                       R22 R22 K40 ["createElement"]
      456 GETUPVAL                         R23 12
      457 DUPTABLE                         R24 K108 [{"OnPlay", "OnPause", "SoundId", "Style", "UsageContext"}]
      458 GETTABLEKS                       R25 R1 K109 ["OnPlaySound"]
      460 SETTABLEKS                       R25 R24 K103 ["OnPlay"]
      462 GETTABLEKS                       R25 R1 K110 ["OnPauseSound"]
      464 SETTABLEKS                       R25 R24 K104 ["OnPause"]
      466 JUMPIFNOT                        R7 ; [+3]
      467 GETTABLEKS                       R25 R7 K105 ["SoundId"]
      469 JUMPIF                           R25 ; [+5]
      470 GETIMPORT                        R25 K113 [string.format]
      472 LOADK                            R26 K114 ["rbxassetid://%d"]
      473 MOVE                             R27 R5
      474 CALL                             R25 2 1
      475 SETTABLEKS                       R25 R24 K105 ["SoundId"]
      477 JUMPIFNOT                        R15 ; [+3]
      478 GETTABLEKS                       R25 R3 K115 ["AudioPlayerWithTreeViewButton"]
      480 JUMPIF                           R25 ; [+2]
      481 GETTABLEKS                       R25 R3 K116 ["AudioPlayer"]
      483 SETTABLEKS                       R25 R24 K106 ["Style"]
      485 GETTABLEKS                       R25 R1 K107 ["UsageContext"]
      487 SETTABLEKS                       R25 R24 K107 ["UsageContext"]
      489 CALL                             R22 2 1
      490 MOVE                             R21 R22
      491 JUMP                             ; [+126]
      492 GETUPVAL                         R22 10
      493 GETTABLEKS                       R22 R22 K117 ["Video"]
      495 JUMPIFNOTEQ                      R9 R22 ; [+36]
      497 GETUPVAL                         R22 3
      498 GETTABLEKS                       R22 R22 K40 ["createElement"]
      500 GETUPVAL                         R23 13
      501 DUPTABLE                         R24 K119 [{"OnPlay", "OnPause", "VideoId", "Style"}]
      502 GETTABLEKS                       R25 R1 K120 ["OnPlayVideo"]
      504 SETTABLEKS                       R25 R24 K103 ["OnPlay"]
      506 GETTABLEKS                       R25 R1 K121 ["OnPauseVideo"]
      508 SETTABLEKS                       R25 R24 K104 ["OnPause"]
      510 JUMPIFNOT                        R7 ; [+3]
      511 GETTABLEKS                       R25 R7 K117 ["Video"]
      513 JUMPIF                           R25 ; [+5]
      514 GETIMPORT                        R25 K113 [string.format]
      516 LOADK                            R26 K114 ["rbxassetid://%d"]
      517 MOVE                             R27 R5
      518 CALL                             R25 2 1
      519 SETTABLEKS                       R25 R24 K118 ["VideoId"]
      521 JUMPIFNOT                        R15 ; [+3]
      522 GETTABLEKS                       R25 R3 K122 ["VideoPlayerWithTreeViewButton"]
      524 JUMPIF                           R25 ; [+2]
      525 GETTABLEKS                       R25 R3 K123 ["VideoPlayer"]
      527 SETTABLEKS                       R25 R24 K106 ["Style"]
      529 CALL                             R22 2 1
      530 MOVE                             R21 R22
      531 JUMP                             ; [+86]
      532 GETUPVAL                         R22 10
      533 GETTABLEKS                       R22 R22 K60 ["Image"]
      535 JUMPIFNOTEQ                      R9 R22 ; [+29]
      537 GETUPVAL                         R22 3
      538 GETTABLEKS                       R22 R22 K40 ["createElement"]
      540 GETUPVAL                         R23 6
      541 DUPTABLE                         R24 K61 [{"Image"}]
      542 GETUPVAL                         R26 2
      543 CALL                             R26 0 1
      544 JUMPIFNOT                        R26 ; [+14]
      545 JUMPIFNOT                        R14 ; [+13]
      546 MOVE                             R27 R5
      547 GETTABLEKS                       R28 R3 K53 ["Thumbnail"]
      549 GETTABLEKS                       R28 R28 K29 ["Size"]
      551 GETTABLEKS                       R29 R3 K53 ["Thumbnail"]
      553 GETTABLEKS                       R29 R29 K29 ["Size"]
      555 NAMECALL                         R25 R0 K62 ["getAssetThumbnailUrl"]
      557 CALL                             R25 4 1
      558 JUMP                             ; [+1]
      559 MOVE                             R25 R8
      560 SETTABLEKS                       R25 R24 K60 ["Image"]
      562 CALL                             R22 2 1
      563 MOVE                             R21 R22
      564 JUMP                             ; [+53]
      565 GETUPVAL                         R22 10
      566 GETTABLEKS                       R22 R22 K124 ["Script"]
      568 JUMPIFEQ                         R9 R22 ; [+6]
      570 GETUPVAL                         R22 10
      571 GETTABLEKS                       R22 R22 K125 ["Other"]
      573 JUMPIFNOTEQ                      R9 R22 ; [+32]
      575 GETUPVAL                         R22 3
      576 GETTABLEKS                       R22 R22 K40 ["createElement"]
      578 GETUPVAL                         R23 14
      579 DUPTABLE                         R24 K127 [{"Instance", "AnchorPoint", "Position", "Size"}]
      580 SETTABLEKS                       R8 R24 K126 ["Instance"]
      582 GETIMPORT                        R25 K86 [Vector2.new]
      584 LOADK                            R26 K87 [0.5]
      585 LOADK                            R27 K87 [0.5]
      586 CALL                             R25 2 1
      587 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      589 GETIMPORT                        R25 K97 [UDim2.fromScale]
      591 LOADK                            R26 K87 [0.5]
      592 LOADK                            R27 K87 [0.5]
      593 CALL                             R25 2 1
      594 SETTABLEKS                       R25 R24 K76 ["Position"]
      596 GETIMPORT                        R25 K97 [UDim2.fromScale]
      598 LOADK                            R26 K87 [0.5]
      599 LOADK                            R27 K87 [0.5]
      600 CALL                             R25 2 1
      601 SETTABLEKS                       R25 R24 K29 ["Size"]
      603 CALL                             R22 2 1
      604 MOVE                             R21 R22
      605 JUMP                             ; [+12]
      606 GETIMPORT                        R22 K129 [error]
      608 GETIMPORT                        R23 K113 [string.format]
      610 LOADK                            R24 K130 ["Unhandled AssetRenderType: %s"]
      611 FASTCALL1                        TOSTRING R9 ; [+3]
      612 MOVE                             R26 R9
      613 GETIMPORT                        R25 K132 [tostring]
      615 CALL                             R25 1 1
      616 CALL                             R23 2 -1
      617 CALL                             R22 -1 0
      618 GETUPVAL                         R22 3
      619 GETTABLEKS                       R22 R22 K40 ["createElement"]
      621 GETUPVAL                         R23 15
      622 DUPTABLE                         R24 K137 [{"LayoutOrder", "Position", "Margin", "Padding", "Size", "Background", "BackgroundStyle"}]
      623 GETTABLEKS                       R25 R1 K133 ["LayoutOrder"]
      625 SETTABLEKS                       R25 R24 K133 ["LayoutOrder"]
      627 GETTABLEKS                       R25 R1 K76 ["Position"]
      629 SETTABLEKS                       R25 R24 K76 ["Position"]
      631 GETTABLEKS                       R25 R1 K134 ["Margin"]
      633 SETTABLEKS                       R25 R24 K134 ["Margin"]
      635 GETTABLEKS                       R25 R1 K67 ["Padding"]
      637 SETTABLEKS                       R25 R24 K67 ["Padding"]
      639 GETIMPORT                        R25 K37 [UDim2.new]
      641 GETIMPORT                        R26 K139 [UDim.new]
      643 LOADN                            R27 0
      644 MOVE                             R28 R4
      645 CALL                             R26 2 1
      646 MOVE                             R27 R20
      647 CALL                             R25 2 1
      648 SETTABLEKS                       R25 R24 K29 ["Size"]
      650 GETTABLEKS                       R25 R3 K135 ["Background"]
      652 SETTABLEKS                       R25 R24 K135 ["Background"]
      654 GETTABLEKS                       R25 R3 K136 ["BackgroundStyle"]
      656 SETTABLEKS                       R25 R24 K136 ["BackgroundStyle"]
      658 DUPTABLE                         R25 K141 [{"Layout", "RenderView", "TreeView"}]
      659 GETUPVAL                         R26 3
      660 GETTABLEKS                       R26 R26 K40 ["createElement"]
      662 LOADK                            R27 K142 ["UIListLayout"]
      663 DUPTABLE                         R28 K147 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      664 JUMPIFNOT                        R19 ; [+3]
      665 GETIMPORT                        R29 K149 [Enum.FillDirection.Horizontal]
      667 JUMPIF                           R29 ; [+2]
      668 GETIMPORT                        R29 K151 [Enum.FillDirection.Vertical]
      670 SETTABLEKS                       R29 R28 K143 ["FillDirection"]
      672 GETIMPORT                        R29 K152 [Enum.HorizontalAlignment.Left]
      674 SETTABLEKS                       R29 R28 K144 ["HorizontalAlignment"]
      676 GETIMPORT                        R29 K154 [Enum.VerticalAlignment.Center]
      678 SETTABLEKS                       R29 R28 K145 ["VerticalAlignment"]
      680 GETIMPORT                        R29 K155 [Enum.SortOrder.LayoutOrder]
      682 SETTABLEKS                       R29 R28 K146 ["SortOrder"]
      684 CALL                             R26 2 1
      685 SETTABLEKS                       R26 R25 K140 ["Layout"]
      687 GETUPVAL                         R26 3
      688 GETTABLEKS                       R26 R26 K40 ["createElement"]
      690 GETUPVAL                         R27 15
      691 DUPTABLE                         R28 K157 [{["LayoutOrder"] = 1, ["Size"]}]
      692 SETTABLEKS                       R17 R28 K29 ["Size"]
      694 DUPTABLE                         R29 K160 [{"AssetRenderView", "TreeViewButton"}]
      695 SETTABLEKS                       R21 R29 K158 ["AssetRenderView"]
      697 MOVE                             R30 R15
      698 JUMPIFNOT                        R30 ; [+51]
      699 GETUPVAL                         R30 3
      700 GETTABLEKS                       R30 R30 K40 ["createElement"]
      702 GETUPVAL                         R31 16
      703 DUPTABLE                         R32 K163 [{["Style"], ["OnClick"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      704 GETTABLEKS                       R33 R3 K28 ["RenderView"]
      706 GETTABLEKS                       R33 R33 K159 ["TreeViewButton"]
      708 SETTABLEKS                       R33 R32 K106 ["Style"]
      710 GETTABLEKS                       R33 R0 K164 ["toggleTreeViewVisible"]
      712 SETTABLEKS                       R33 R32 K161 ["OnClick"]
      714 GETIMPORT                        R33 K86 [Vector2.new]
      716 LOADN                            R34 1
      717 LOADN                            R35 1
      718 CALL                             R33 2 1
      719 SETTABLEKS                       R33 R32 K73 ["AnchorPoint"]
      721 GETIMPORT                        R33 K37 [UDim2.new]
      723 LOADN                            R34 1
      724 LOADN                            R35 -7
      725 LOADN                            R36 1
      726 LOADN                            R37 -7
      727 CALL                             R33 4 1
      728 SETTABLEKS                       R33 R32 K76 ["Position"]
      730 GETUPVAL                         R34 17
      731 JUMPIFNOT                        R34 ; [+7]
      732 GETUPVAL                         R33 3
      733 GETTABLEKS                       R33 R33 K40 ["createElement"]
      735 GETUPVAL                         R34 18
      736 DUPTABLE                         R35 K167 [{["Cursor"] = "PointingHand"}]
      737 CALL                             R33 2 1
      738 JUMP                             ; [+10]
      739 NEWTABLE                         R33 0 1
      741 GETUPVAL                         R34 3
      742 GETTABLEKS                       R34 R34 K40 ["createElement"]
      744 GETUPVAL                         R35 18
      745 DUPTABLE                         R36 K167 [{["Cursor"] = "PointingHand"}]
      746 CALL                             R34 2 -1
      747 SETLIST                          R33 R34 -1 [1]
      749 CALL                             R30 3 1
      750 SETTABLEKS                       R30 R29 K159 ["TreeViewButton"]
      752 CALL                             R26 3 1
      753 SETTABLEKS                       R26 R25 K28 ["RenderView"]
      755 MOVE                             R26 R16
      756 JUMPIFNOT                        R26 ; [+30]
      757 GETUPVAL                         R26 3
      758 GETTABLEKS                       R26 R26 K40 ["createElement"]
      760 GETUPVAL                         R27 19
      761 DUPTABLE                         R28 K174 [{["LayoutOrder"] = 2, ["Size"], ["Instances"], ["Expansion"], ["Selection"], ["OnExpansionChange"], ["OnSelectionChange"], ["Style"] = "BorderBox"}]
      762 SETTABLEKS                       R18 R28 K29 ["Size"]
      764 MOVE                             R31 R6
      765 NAMECALL                         R29 R0 K175 ["getMemoizedTreeViewInstances"]
      767 CALL                             R29 2 1
      768 SETTABLEKS                       R29 R28 K168 ["Instances"]
      770 GETTABLEKS                       R29 R2 K176 ["treeViewExpansion"]
      772 SETTABLEKS                       R29 R28 K169 ["Expansion"]
      774 GETTABLEKS                       R29 R2 K10 ["treeViewSelection"]
      776 SETTABLEKS                       R29 R28 K170 ["Selection"]
      778 GETTABLEKS                       R29 R0 K177 ["onTreeViewExpansionChange"]
      780 SETTABLEKS                       R29 R28 K171 ["OnExpansionChange"]
      782 GETTABLEKS                       R29 R0 K178 ["onTreeViewSelectionChange"]
      784 SETTABLEKS                       R29 R28 K172 ["OnSelectionChange"]
      786 CALL                             R26 2 1
      787 SETTABLEKS                       R26 R25 K30 ["TreeView"]
      789 CALL                             R22 3 -1
      790 RETURN                           R22 -1

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
