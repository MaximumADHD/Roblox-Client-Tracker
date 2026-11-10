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
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 DUPTABLE                         R5 K4 [{["isFontLoaded"] = True}]
        8 NAMECALL                         R3 R0 K5 ["setState"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R3 K8 [task.spawn]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

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
       80 LOADB                            R13 1
       81 GETTABLEKS                       R14 R1 K4 ["AssetData"]
       83 GETTABLEKS                       R14 R14 K5 ["Asset"]
       85 GETTABLEKS                       R14 R14 K12 ["TypeId"]
       87 GETIMPORT                        R15 K16 [Enum.AssetType.Model]
       89 GETTABLEKS                       R15 R15 K17 ["Value"]
       91 JUMPIFEQ                         R14 R15 ; [+15]
       93 GETTABLEKS                       R14 R1 K4 ["AssetData"]
       95 GETTABLEKS                       R14 R14 K5 ["Asset"]
       97 GETTABLEKS                       R14 R14 K12 ["TypeId"]
       99 GETIMPORT                        R15 K23 [Enum.AssetType.MeshPart]
      101 GETTABLEKS                       R15 R15 K17 ["Value"]
      103 JUMPIFEQ                         R14 R15 ; [+2]
      105 LOADB                            R13 0 +1
      106 LOADB                            R13 1
      107 GETTABLEKS                       R15 R1 K4 ["AssetData"]
      109 GETTABLEKS                       R15 R15 K5 ["Asset"]
      111 GETTABLEKS                       R15 R15 K12 ["TypeId"]
      113 GETIMPORT                        R16 K25 [Enum.AssetType.Decal]
      115 GETTABLEKS                       R16 R16 K17 ["Value"]
      117 JUMPIFEQ                         R15 R16 ; [+2]
      119 LOADB                            R14 0 +1
      120 LOADB                            R14 1
      121 GETTABLEKS                       R16 R1 K26 ["DisableTreeView"]
      123 NOT                              R15 R16
      124 JUMPIFNOT                        R15 ; [+7]
      125 MOVE                             R15 R6
      126 JUMPIFNOT                        R15 ; [+5]
      127 NOT                              R15 R11
      128 JUMPIFNOT                        R15 ; [+3]
      129 NOT                              R15 R12
      130 JUMPIFNOT                        R15 ; [+1]
      131 NOT                              R15 R10
      132 MOVE                             R16 R15
      133 JUMPIFNOT                        R16 ; [+2]
      134 GETTABLEKS                       R16 R2 K27 ["treeViewVisible"]
      136 GETTABLEKS                       R17 R3 K28 ["RenderView"]
      138 GETTABLEKS                       R17 R17 K29 ["Size"]
      140 GETTABLEKS                       R18 R3 K30 ["TreeView"]
      142 GETTABLEKS                       R18 R18 K29 ["Size"]
      144 GETTABLEKS                       R21 R17 K32 ["Y"]
      146 GETTABLEKS                       R21 R21 K33 ["Offset"]
      148 MULK                             R20 R21 K31 [2]
      149 JUMPIFLT                         R20 R4 ; [+2]
      151 LOADB                            R19 0 +1
      152 LOADB                            R19 1
      153 JUMPIFNOT                        R16 ; [+16]
      154 JUMPIFNOT                        R19 ; [+15]
      155 GETTABLEKS                       R20 R3 K30 ["TreeView"]
      157 GETTABLEKS                       R18 R20 K34 ["HorizontalSize"]
      159 GETIMPORT                        R20 K37 [UDim2.new]
      161 GETTABLEKS                       R22 R17 K38 ["X"]
      163 GETTABLEKS                       R23 R18 K38 ["X"]
      165 SUB                              R21 R22 R23
      166 GETTABLEKS                       R22 R17 K32 ["Y"]
      168 CALL                             R20 2 1
      169 MOVE                             R17 R20
      170 JUMPIFNOT                        R16 ; [+7]
      171 JUMPIF                           R19 ; [+6]
      172 GETTABLEKS                       R21 R17 K32 ["Y"]
      174 GETTABLEKS                       R22 R18 K32 ["Y"]
      176 ADD                              R20 R21 R22
      177 JUMPIF                           R20 ; [+2]
      178 GETTABLEKS                       R20 R17 K32 ["Y"]
      180 LOADNIL                          R21
      181 GETTABLEKS                       R22 R1 K39 ["UseImageCarousel"]
      183 JUMPIFNOT                        R22 ; [+39]
      184 GETUPVAL                         R22 2
      185 GETTABLEKS                       R22 R22 K40 ["createElement"]
      187 GETUPVAL                         R23 3
      188 DUPTABLE                         R24 K51 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"], ["ImageStrings"], ["OnImageChange"], ["OnImageChangeTransparencyThreshold"], ["OnSetImages"], ["PaneStyle"], ["ShowNavigationOnHover"] = True, ["DisableAnimations"] = True}]
      189 GETTABLEKS                       R25 R1 K52 ["ImageCarouselAutoAdvanceTimer"]
      191 SETTABLEKS                       R25 R24 K43 ["AutoAdvanceTimer"]
      193 GETTABLEKS                       R27 R3 K53 ["Thumbnail"]
      195 GETTABLEKS                       R27 R27 K29 ["Size"]
      197 NAMECALL                         R25 R0 K54 ["getImagesForCarousel"]
      199 CALL                             R25 2 1
      200 SETTABLEKS                       R25 R24 K44 ["ImageStrings"]
      202 GETTABLEKS                       R25 R1 K55 ["OnImageCarouselImageChanged"]
      204 SETTABLEKS                       R25 R24 K45 ["OnImageChange"]
      206 GETTABLEKS                       R25 R1 K56 ["ImageCarouselTransparencyThreshold"]
      208 SETTABLEKS                       R25 R24 K46 ["OnImageChangeTransparencyThreshold"]
      210 GETTABLEKS                       R25 R1 K57 ["OnSetImageCarouselImages"]
      212 SETTABLEKS                       R25 R24 K47 ["OnSetImages"]
      214 GETTABLEKS                       R25 R3 K58 ["ImageCarousel"]
      216 GETTABLEKS                       R25 R25 K48 ["PaneStyle"]
      218 SETTABLEKS                       R25 R24 K48 ["PaneStyle"]
      220 CALL                             R22 2 1
      221 MOVE                             R21 R22
      222 JUMP                             ; [+384]
      223 JUMPIF                           R10 ; [+5]
      224 JUMPIF                           R11 ; [+4]
      225 GETTABLEKS                       R22 R1 K59 ["Hide3DPreviewForAssetsWithMeshes"]
      227 JUMPIFNOT                        R22 ; [+23]
      228 JUMPIFNOT                        R13 ; [+22]
      229 GETUPVAL                         R22 2
      230 GETTABLEKS                       R22 R22 K40 ["createElement"]
      232 GETUPVAL                         R23 4
      233 DUPTABLE                         R24 K61 [{"Image"}]
      234 MOVE                             R27 R5
      235 GETTABLEKS                       R28 R3 K53 ["Thumbnail"]
      237 GETTABLEKS                       R28 R28 K29 ["Size"]
      239 GETTABLEKS                       R29 R3 K53 ["Thumbnail"]
      241 GETTABLEKS                       R29 R29 K29 ["Size"]
      243 NAMECALL                         R25 R0 K62 ["getAssetThumbnailUrl"]
      245 CALL                             R25 4 1
      246 SETTABLEKS                       R25 R24 K60 ["Image"]
      248 CALL                             R22 2 1
      249 MOVE                             R21 R22
      250 JUMP                             ; [+356]
      251 JUMPIFNOT                        R12 ; [+130]
      252 GETTABLEKS                       R22 R2 K63 ["isFontLoaded"]
      254 JUMPIFNOT                        R22 ; [+98]
      255 GETUPVAL                         R22 2
      256 GETTABLEKS                       R22 R22 K40 ["createElement"]
      258 GETUPVAL                         R23 5
      259 DUPTABLE                         R24 K68 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["Padding"], ["Size"]}]
      260 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      262 GETTABLEKS                       R25 R25 K69 ["FontRenderView"]
      264 GETTABLEKS                       R25 R25 K70 ["FontRenderViewBackgroundColor"]
      266 SETTABLEKS                       R25 R24 K66 ["BackgroundColor"]
      268 GETTABLEKS                       R25 R3 K28 ["RenderView"]
      270 GETTABLEKS                       R25 R25 K69 ["FontRenderView"]
      272 GETTABLEKS                       R25 R25 K67 ["Padding"]
      274 SETTABLEKS                       R25 R24 K67 ["Padding"]
      276 GETIMPORT                        R25 K37 [UDim2.new]
      278 LOADN                            R26 1
      279 LOADN                            R27 0
      280 LOADN                            R28 1
      281 LOADN                            R29 0
      282 CALL                             R25 4 1
      283 SETTABLEKS                       R25 R24 K29 ["Size"]
      285 DUPTABLE                         R25 K72 [{"fontTextLabel"}]
      286 GETUPVAL                         R26 2
      287 GETTABLEKS                       R26 R26 K40 ["createElement"]
      289 GETUPVAL                         R27 6
      290 DUPTABLE                         R28 K84 [{["AnchorPoint"], ["AutomaticSize"], ["FontFace"], ["Position"], ["Size"], ["Text"], ["TextSelectable"] = False, ["TextSize"] = 40, ["TextWrapped"] = True, ["TextXAlignment"]}]
      291 GETIMPORT                        R29 K86 [Vector2.new]
      293 LOADK                            R30 K87 [0.5]
      294 LOADK                            R31 K87 [0.5]
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K73 ["AnchorPoint"]
      298 GETIMPORT                        R29 K89 [Enum.AutomaticSize.XY]
      300 SETTABLEKS                       R29 R28 K74 ["AutomaticSize"]
      302 GETUPVAL                         R30 7
      303 CALL                             R30 0 1
      304 JUMPIFNOT                        R30 ; [+6]
      305 GETIMPORT                        R29 K92 [Font.fromEnum]
      307 GETIMPORT                        R30 K94 [Enum.Font.SourceSans]
      309 CALL                             R29 1 1
      310 JUMP                             ; [+4]
      311 GETIMPORT                        R29 K96 [Font.fromId]
      313 MOVE                             R30 R5
      314 CALL                             R29 1 1
      315 SETTABLEKS                       R29 R28 K75 ["FontFace"]
      317 GETIMPORT                        R29 K37 [UDim2.new]
      319 LOADK                            R30 K87 [0.5]
      320 LOADN                            R31 0
      321 LOADK                            R32 K87 [0.5]
      322 LOADN                            R33 0
      323 CALL                             R29 4 1
      324 SETTABLEKS                       R29 R28 K76 ["Position"]
      326 GETIMPORT                        R29 K37 [UDim2.new]
      328 LOADN                            R30 1
      329 LOADN                            R31 0
      330 LOADN                            R32 1
      331 LOADN                            R33 0
      332 CALL                             R29 4 1
      333 SETTABLEKS                       R29 R28 K29 ["Size"]
      335 GETTABLEKS                       R29 R3 K28 ["RenderView"]
      337 GETTABLEKS                       R29 R29 K69 ["FontRenderView"]
      339 GETTABLEKS                       R29 R29 K77 ["Text"]
      341 SETTABLEKS                       R29 R28 K77 ["Text"]
      343 GETIMPORT                        R29 K98 [Enum.TextXAlignment.Left]
      345 SETTABLEKS                       R29 R28 K83 ["TextXAlignment"]
      347 CALL                             R26 2 1
      348 SETTABLEKS                       R26 R25 K71 ["fontTextLabel"]
      350 CALL                             R22 3 1
      351 MOVE                             R21 R22
      352 JUMP                             ; [+254]
      353 GETUPVAL                         R22 2
      354 GETTABLEKS                       R22 R22 K40 ["createElement"]
      356 GETUPVAL                         R23 8
      357 DUPTABLE                         R24 K99 [{"AnchorPoint", "Position", "Size"}]
      358 GETIMPORT                        R25 K86 [Vector2.new]
      360 LOADK                            R26 K87 [0.5]
      361 LOADK                            R27 K87 [0.5]
      362 CALL                             R25 2 1
      363 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      365 GETIMPORT                        R25 K101 [UDim2.fromScale]
      367 LOADK                            R26 K87 [0.5]
      368 LOADK                            R27 K87 [0.5]
      369 CALL                             R25 2 1
      370 SETTABLEKS                       R25 R24 K76 ["Position"]
      372 GETIMPORT                        R25 K101 [UDim2.fromScale]
      374 LOADK                            R26 K87 [0.5]
      375 LOADK                            R27 K87 [0.5]
      376 CALL                             R25 2 1
      377 SETTABLEKS                       R25 R24 K29 ["Size"]
      379 CALL                             R22 2 1
      380 MOVE                             R21 R22
      381 JUMP                             ; [+225]
      382 JUMPIFNOTEQKNIL                  R9 ; [+30]
      384 GETUPVAL                         R22 2
      385 GETTABLEKS                       R22 R22 K40 ["createElement"]
      387 GETUPVAL                         R23 8
      388 DUPTABLE                         R24 K99 [{"AnchorPoint", "Position", "Size"}]
      389 GETIMPORT                        R25 K86 [Vector2.new]
      391 LOADK                            R26 K87 [0.5]
      392 LOADK                            R27 K87 [0.5]
      393 CALL                             R25 2 1
      394 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      396 GETIMPORT                        R25 K101 [UDim2.fromScale]
      398 LOADK                            R26 K87 [0.5]
      399 LOADK                            R27 K87 [0.5]
      400 CALL                             R25 2 1
      401 SETTABLEKS                       R25 R24 K76 ["Position"]
      403 GETIMPORT                        R25 K101 [UDim2.fromScale]
      405 LOADK                            R26 K87 [0.5]
      406 LOADK                            R27 K87 [0.5]
      407 CALL                             R25 2 1
      408 SETTABLEKS                       R25 R24 K29 ["Size"]
      410 CALL                             R22 2 1
      411 MOVE                             R21 R22
      412 JUMP                             ; [+194]
      413 GETUPVAL                         R22 9
      414 GETTABLEKS                       R22 R22 K15 ["Model"]
      416 JUMPIFNOTEQ                      R9 R22 ; [+23]
      418 GETUPVAL                         R22 2
      419 GETTABLEKS                       R22 R22 K40 ["createElement"]
      421 GETUPVAL                         R23 10
      422 DUPTABLE                         R24 K105 [{"Model", "OnMouseEnter", "OnMouseLeave", "ShouldMuteModelSounds"}]
      423 SETTABLEKS                       R8 R24 K15 ["Model"]
      425 GETTABLEKS                       R25 R1 K102 ["OnMouseEnter"]
      427 SETTABLEKS                       R25 R24 K102 ["OnMouseEnter"]
      429 GETTABLEKS                       R25 R1 K103 ["OnMouseLeave"]
      431 SETTABLEKS                       R25 R24 K103 ["OnMouseLeave"]
      433 GETTABLEKS                       R25 R1 K104 ["ShouldMuteModelSounds"]
      435 SETTABLEKS                       R25 R24 K104 ["ShouldMuteModelSounds"]
      437 CALL                             R22 2 1
      438 MOVE                             R21 R22
      439 JUMP                             ; [+167]
      440 GETUPVAL                         R22 9
      441 GETTABLEKS                       R22 R22 K106 ["Sound"]
      443 JUMPIFNOTEQ                      R9 R22 ; [+40]
      445 GETUPVAL                         R22 2
      446 GETTABLEKS                       R22 R22 K40 ["createElement"]
      448 GETUPVAL                         R23 11
      449 DUPTABLE                         R24 K112 [{"OnPlay", "OnPause", "SoundId", "Style", "UsageContext"}]
      450 GETTABLEKS                       R25 R1 K113 ["OnPlaySound"]
      452 SETTABLEKS                       R25 R24 K107 ["OnPlay"]
      454 GETTABLEKS                       R25 R1 K114 ["OnPauseSound"]
      456 SETTABLEKS                       R25 R24 K108 ["OnPause"]
      458 JUMPIFNOT                        R7 ; [+3]
      459 GETTABLEKS                       R25 R7 K109 ["SoundId"]
      461 JUMPIF                           R25 ; [+5]
      462 GETIMPORT                        R25 K117 [string.format]
      464 LOADK                            R26 K118 ["rbxassetid://%d"]
      465 MOVE                             R27 R5
      466 CALL                             R25 2 1
      467 SETTABLEKS                       R25 R24 K109 ["SoundId"]
      469 JUMPIFNOT                        R15 ; [+3]
      470 GETTABLEKS                       R25 R3 K119 ["AudioPlayerWithTreeViewButton"]
      472 JUMPIF                           R25 ; [+2]
      473 GETTABLEKS                       R25 R3 K120 ["AudioPlayer"]
      475 SETTABLEKS                       R25 R24 K110 ["Style"]
      477 GETTABLEKS                       R25 R1 K111 ["UsageContext"]
      479 SETTABLEKS                       R25 R24 K111 ["UsageContext"]
      481 CALL                             R22 2 1
      482 MOVE                             R21 R22
      483 JUMP                             ; [+123]
      484 GETUPVAL                         R22 9
      485 GETTABLEKS                       R22 R22 K121 ["Video"]
      487 JUMPIFNOTEQ                      R9 R22 ; [+36]
      489 GETUPVAL                         R22 2
      490 GETTABLEKS                       R22 R22 K40 ["createElement"]
      492 GETUPVAL                         R23 12
      493 DUPTABLE                         R24 K123 [{"OnPlay", "OnPause", "VideoId", "Style"}]
      494 GETTABLEKS                       R25 R1 K124 ["OnPlayVideo"]
      496 SETTABLEKS                       R25 R24 K107 ["OnPlay"]
      498 GETTABLEKS                       R25 R1 K125 ["OnPauseVideo"]
      500 SETTABLEKS                       R25 R24 K108 ["OnPause"]
      502 JUMPIFNOT                        R7 ; [+3]
      503 GETTABLEKS                       R25 R7 K121 ["Video"]
      505 JUMPIF                           R25 ; [+5]
      506 GETIMPORT                        R25 K117 [string.format]
      508 LOADK                            R26 K118 ["rbxassetid://%d"]
      509 MOVE                             R27 R5
      510 CALL                             R25 2 1
      511 SETTABLEKS                       R25 R24 K122 ["VideoId"]
      513 JUMPIFNOT                        R15 ; [+3]
      514 GETTABLEKS                       R25 R3 K126 ["VideoPlayerWithTreeViewButton"]
      516 JUMPIF                           R25 ; [+2]
      517 GETTABLEKS                       R25 R3 K127 ["VideoPlayer"]
      519 SETTABLEKS                       R25 R24 K110 ["Style"]
      521 CALL                             R22 2 1
      522 MOVE                             R21 R22
      523 JUMP                             ; [+83]
      524 GETUPVAL                         R22 9
      525 GETTABLEKS                       R22 R22 K60 ["Image"]
      527 JUMPIFNOTEQ                      R9 R22 ; [+26]
      529 GETUPVAL                         R22 2
      530 GETTABLEKS                       R22 R22 K40 ["createElement"]
      532 GETUPVAL                         R23 4
      533 DUPTABLE                         R24 K61 [{"Image"}]
      534 JUMPIFNOT                        R14 ; [+13]
      535 MOVE                             R27 R5
      536 GETTABLEKS                       R28 R3 K53 ["Thumbnail"]
      538 GETTABLEKS                       R28 R28 K29 ["Size"]
      540 GETTABLEKS                       R29 R3 K53 ["Thumbnail"]
      542 GETTABLEKS                       R29 R29 K29 ["Size"]
      544 NAMECALL                         R25 R0 K62 ["getAssetThumbnailUrl"]
      546 CALL                             R25 4 1
      547 JUMP                             ; [+1]
      548 MOVE                             R25 R8
      549 SETTABLEKS                       R25 R24 K60 ["Image"]
      551 CALL                             R22 2 1
      552 MOVE                             R21 R22
      553 JUMP                             ; [+53]
      554 GETUPVAL                         R22 9
      555 GETTABLEKS                       R22 R22 K128 ["Script"]
      557 JUMPIFEQ                         R9 R22 ; [+6]
      559 GETUPVAL                         R22 9
      560 GETTABLEKS                       R22 R22 K129 ["Other"]
      562 JUMPIFNOTEQ                      R9 R22 ; [+32]
      564 GETUPVAL                         R22 2
      565 GETTABLEKS                       R22 R22 K40 ["createElement"]
      567 GETUPVAL                         R23 13
      568 DUPTABLE                         R24 K131 [{"Instance", "AnchorPoint", "Position", "Size"}]
      569 SETTABLEKS                       R8 R24 K130 ["Instance"]
      571 GETIMPORT                        R25 K86 [Vector2.new]
      573 LOADK                            R26 K87 [0.5]
      574 LOADK                            R27 K87 [0.5]
      575 CALL                             R25 2 1
      576 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      578 GETIMPORT                        R25 K101 [UDim2.fromScale]
      580 LOADK                            R26 K87 [0.5]
      581 LOADK                            R27 K87 [0.5]
      582 CALL                             R25 2 1
      583 SETTABLEKS                       R25 R24 K76 ["Position"]
      585 GETIMPORT                        R25 K101 [UDim2.fromScale]
      587 LOADK                            R26 K87 [0.5]
      588 LOADK                            R27 K87 [0.5]
      589 CALL                             R25 2 1
      590 SETTABLEKS                       R25 R24 K29 ["Size"]
      592 CALL                             R22 2 1
      593 MOVE                             R21 R22
      594 JUMP                             ; [+12]
      595 GETIMPORT                        R22 K133 [error]
      597 GETIMPORT                        R23 K117 [string.format]
      599 LOADK                            R24 K134 ["Unhandled AssetRenderType: %s"]
      600 FASTCALL1                        TOSTRING R9 ; [+3]
      601 MOVE                             R26 R9
      602 GETIMPORT                        R25 K136 [tostring]
      604 CALL                             R25 1 1
      605 CALL                             R23 2 -1
      606 CALL                             R22 -1 0
      607 GETUPVAL                         R22 2
      608 GETTABLEKS                       R22 R22 K40 ["createElement"]
      610 GETUPVAL                         R23 14
      611 DUPTABLE                         R24 K141 [{"LayoutOrder", "Position", "Margin", "Padding", "Size", "Background", "BackgroundStyle"}]
      612 GETTABLEKS                       R25 R1 K137 ["LayoutOrder"]
      614 SETTABLEKS                       R25 R24 K137 ["LayoutOrder"]
      616 GETTABLEKS                       R25 R1 K76 ["Position"]
      618 SETTABLEKS                       R25 R24 K76 ["Position"]
      620 GETTABLEKS                       R25 R1 K138 ["Margin"]
      622 SETTABLEKS                       R25 R24 K138 ["Margin"]
      624 GETTABLEKS                       R25 R1 K67 ["Padding"]
      626 SETTABLEKS                       R25 R24 K67 ["Padding"]
      628 GETIMPORT                        R25 K37 [UDim2.new]
      630 GETIMPORT                        R26 K143 [UDim.new]
      632 LOADN                            R27 0
      633 MOVE                             R28 R4
      634 CALL                             R26 2 1
      635 MOVE                             R27 R20
      636 CALL                             R25 2 1
      637 SETTABLEKS                       R25 R24 K29 ["Size"]
      639 GETTABLEKS                       R25 R3 K139 ["Background"]
      641 SETTABLEKS                       R25 R24 K139 ["Background"]
      643 GETTABLEKS                       R25 R3 K140 ["BackgroundStyle"]
      645 SETTABLEKS                       R25 R24 K140 ["BackgroundStyle"]
      647 DUPTABLE                         R25 K145 [{"Layout", "RenderView", "TreeView"}]
      648 GETUPVAL                         R26 2
      649 GETTABLEKS                       R26 R26 K40 ["createElement"]
      651 LOADK                            R27 K146 ["UIListLayout"]
      652 DUPTABLE                         R28 K151 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      653 JUMPIFNOT                        R19 ; [+3]
      654 GETIMPORT                        R29 K153 [Enum.FillDirection.Horizontal]
      656 JUMPIF                           R29 ; [+2]
      657 GETIMPORT                        R29 K155 [Enum.FillDirection.Vertical]
      659 SETTABLEKS                       R29 R28 K147 ["FillDirection"]
      661 GETIMPORT                        R29 K156 [Enum.HorizontalAlignment.Left]
      663 SETTABLEKS                       R29 R28 K148 ["HorizontalAlignment"]
      665 GETIMPORT                        R29 K158 [Enum.VerticalAlignment.Center]
      667 SETTABLEKS                       R29 R28 K149 ["VerticalAlignment"]
      669 GETIMPORT                        R29 K159 [Enum.SortOrder.LayoutOrder]
      671 SETTABLEKS                       R29 R28 K150 ["SortOrder"]
      673 CALL                             R26 2 1
      674 SETTABLEKS                       R26 R25 K144 ["Layout"]
      676 GETUPVAL                         R26 2
      677 GETTABLEKS                       R26 R26 K40 ["createElement"]
      679 GETUPVAL                         R27 14
      680 DUPTABLE                         R28 K161 [{["LayoutOrder"] = 1, ["Size"]}]
      681 SETTABLEKS                       R17 R28 K29 ["Size"]
      683 DUPTABLE                         R29 K164 [{"AssetRenderView", "TreeViewButton"}]
      684 SETTABLEKS                       R21 R29 K162 ["AssetRenderView"]
      686 MOVE                             R30 R15
      687 JUMPIFNOT                        R30 ; [+51]
      688 GETUPVAL                         R30 2
      689 GETTABLEKS                       R30 R30 K40 ["createElement"]
      691 GETUPVAL                         R31 15
      692 DUPTABLE                         R32 K167 [{["Style"], ["OnClick"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      693 GETTABLEKS                       R33 R3 K28 ["RenderView"]
      695 GETTABLEKS                       R33 R33 K163 ["TreeViewButton"]
      697 SETTABLEKS                       R33 R32 K110 ["Style"]
      699 GETTABLEKS                       R33 R0 K168 ["toggleTreeViewVisible"]
      701 SETTABLEKS                       R33 R32 K165 ["OnClick"]
      703 GETIMPORT                        R33 K86 [Vector2.new]
      705 LOADN                            R34 1
      706 LOADN                            R35 1
      707 CALL                             R33 2 1
      708 SETTABLEKS                       R33 R32 K73 ["AnchorPoint"]
      710 GETIMPORT                        R33 K37 [UDim2.new]
      712 LOADN                            R34 1
      713 LOADN                            R35 -7
      714 LOADN                            R36 1
      715 LOADN                            R37 -7
      716 CALL                             R33 4 1
      717 SETTABLEKS                       R33 R32 K76 ["Position"]
      719 GETUPVAL                         R34 16
      720 JUMPIFNOT                        R34 ; [+7]
      721 GETUPVAL                         R33 2
      722 GETTABLEKS                       R33 R33 K40 ["createElement"]
      724 GETUPVAL                         R34 17
      725 DUPTABLE                         R35 K171 [{["Cursor"] = "PointingHand"}]
      726 CALL                             R33 2 1
      727 JUMP                             ; [+10]
      728 NEWTABLE                         R33 0 1
      730 GETUPVAL                         R34 2
      731 GETTABLEKS                       R34 R34 K40 ["createElement"]
      733 GETUPVAL                         R35 17
      734 DUPTABLE                         R36 K171 [{["Cursor"] = "PointingHand"}]
      735 CALL                             R34 2 -1
      736 SETLIST                          R33 R34 -1 [1]
      738 CALL                             R30 3 1
      739 SETTABLEKS                       R30 R29 K163 ["TreeViewButton"]
      741 CALL                             R26 3 1
      742 SETTABLEKS                       R26 R25 K28 ["RenderView"]
      744 MOVE                             R26 R16
      745 JUMPIFNOT                        R26 ; [+30]
      746 GETUPVAL                         R26 2
      747 GETTABLEKS                       R26 R26 K40 ["createElement"]
      749 GETUPVAL                         R27 18
      750 DUPTABLE                         R28 K178 [{["LayoutOrder"] = 2, ["Size"], ["Instances"], ["Expansion"], ["Selection"], ["OnExpansionChange"], ["OnSelectionChange"], ["Style"] = "BorderBox"}]
      751 SETTABLEKS                       R18 R28 K29 ["Size"]
      753 MOVE                             R31 R6
      754 NAMECALL                         R29 R0 K179 ["getMemoizedTreeViewInstances"]
      756 CALL                             R29 2 1
      757 SETTABLEKS                       R29 R28 K172 ["Instances"]
      759 GETTABLEKS                       R29 R2 K180 ["treeViewExpansion"]
      761 SETTABLEKS                       R29 R28 K173 ["Expansion"]
      763 GETTABLEKS                       R29 R2 K10 ["treeViewSelection"]
      765 SETTABLEKS                       R29 R28 K174 ["Selection"]
      767 GETTABLEKS                       R29 R0 K181 ["onTreeViewExpansionChange"]
      769 SETTABLEKS                       R29 R28 K175 ["OnExpansionChange"]
      771 GETTABLEKS                       R29 R0 K182 ["onTreeViewSelectionChange"]
      773 SETTABLEKS                       R29 R28 K176 ["OnSelectionChange"]
      775 CALL                             R26 2 1
      776 SETTABLEKS                       R26 R25 K30 ["TreeView"]
      778 CALL                             R22 3 -1
      779 RETURN                           R22 -1

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
       41 GETTABLEKS                       R7 R1 K16 ["Util"]
       43 GETTABLEKS                       R7 R7 K17 ["Typecheck"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K10 [require]
       48 GETTABLEKS                       R8 R1 K18 ["TestHelpers"]
       50 GETTABLEKS                       R8 R8 K19 ["isTestEnvironment"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K10 [require]
       55 GETTABLEKS                       R9 R1 K16 ["Util"]
       57 GETTABLEKS                       R9 R9 K20 ["AssetRenderUtil"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R8 K21 ["AssetRenderType"]
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R1 K8 ["Parent"]
       66 GETTABLEKS                       R11 R11 K22 ["Cryo"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R1 K8 ["Parent"]
       73 GETTABLEKS                       R12 R12 K23 ["Dash"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R11 K24 ["join"]
       78 GETIMPORT                        R13 K10 [require]
       80 GETTABLEKS                       R14 R1 K6 ["UI"]
       82 GETTABLEKS                       R14 R14 K25 ["Components"]
       84 GETTABLEKS                       R14 R14 K26 ["DEPRECATED_Button"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K10 [require]
       89 GETTABLEKS                       R15 R1 K6 ["UI"]
       91 GETTABLEKS                       R15 R15 K25 ["Components"]
       93 GETTABLEKS                       R15 R15 K27 ["Container"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K10 [require]
       98 GETTABLEKS                       R16 R1 K6 ["UI"]
      100 GETTABLEKS                       R16 R16 K25 ["Components"]
      102 GETTABLEKS                       R16 R16 K28 ["HoverArea"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K10 [require]
      107 GETTABLEKS                       R17 R1 K6 ["UI"]
      109 GETTABLEKS                       R17 R17 K25 ["Components"]
      111 GETTABLEKS                       R17 R17 K29 ["LoadingIndicator"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K10 [require]
      116 GETTABLEKS                       R18 R1 K6 ["UI"]
      118 GETTABLEKS                       R18 R18 K25 ["Components"]
      120 GETTABLEKS                       R18 R18 K30 ["Pane"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K10 [require]
      125 GETTABLEKS                       R19 R1 K6 ["UI"]
      127 GETTABLEKS                       R19 R19 K25 ["Components"]
      129 GETTABLEKS                       R19 R19 K31 ["InstanceTreeView"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K10 [require]
      134 GETTABLEKS                       R20 R1 K6 ["UI"]
      136 GETTABLEKS                       R20 R20 K25 ["Components"]
      138 GETTABLEKS                       R20 R20 K32 ["TextLabel"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K10 [require]
      143 GETTABLEKS                       R21 R1 K6 ["UI"]
      145 GETTABLEKS                       R21 R21 K25 ["Components"]
      147 GETTABLEKS                       R21 R21 K33 ["AudioPlayer"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K10 [require]
      152 GETTABLEKS                       R22 R1 K6 ["UI"]
      154 GETTABLEKS                       R22 R22 K25 ["Components"]
      156 GETTABLEKS                       R22 R22 K34 ["VideoPlayer"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K10 [require]
      161 GETTABLEKS                       R23 R1 K6 ["UI"]
      163 GETTABLEKS                       R23 R23 K25 ["Components"]
      165 GETTABLEKS                       R23 R23 K35 ["AssetRenderImage"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K10 [require]
      170 GETTABLEKS                       R24 R1 K6 ["UI"]
      172 GETTABLEKS                       R24 R24 K25 ["Components"]
      174 GETTABLEKS                       R24 R24 K36 ["AssetRenderModel"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K10 [require]
      179 GETTABLEKS                       R25 R1 K6 ["UI"]
      181 GETTABLEKS                       R25 R25 K25 ["Components"]
      183 GETTABLEKS                       R25 R25 K37 ["AssetRenderThumbnail"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K10 [require]
      188 GETTABLEKS                       R26 R1 K6 ["UI"]
      190 GETTABLEKS                       R26 R26 K25 ["Components"]
      192 GETTABLEKS                       R26 R26 K38 ["ImageCarousel"]
      194 CALL                             R25 1 1
      195 GETTABLEKS                       R26 R2 K39 ["PureComponent"]
      197 LOADK                            R28 K40 ["AssetRender"]
      198 NAMECALL                         R26 R26 K41 ["extend"]
      200 CALL                             R26 2 1
      201 GETTABLEKS                       R27 R6 K42 ["wrap"]
      203 MOVE                             R28 R26
      204 GETIMPORT                        R29 K5 [script]
      206 CALL                             R27 2 0
      207 DUPCLOSURE                       R27 K43 [PROTO_4]
      208 CAPTURE                          VAL R12
      209 SETTABLEKS                       R27 R26 K44 ["init"]
      211 DUPCLOSURE                       R27 K45 [PROTO_6]
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R0
      214 SETTABLEKS                       R27 R26 K46 ["loadFontForTextLabelAndSetStateWhenDone"]
      216 DUPCLOSURE                       R27 K47 [PROTO_7]
      217 SETTABLEKS                       R27 R26 K48 ["didMount"]
      219 DUPCLOSURE                       R27 K49 [PROTO_8]
      220 SETTABLEKS                       R27 R26 K50 ["didUpdate"]
      222 DUPCLOSURE                       R27 K51 [PROTO_9]
      223 SETTABLEKS                       R27 R26 K52 ["getMemoizedTreeViewInstances"]
      225 DUPCLOSURE                       R27 K53 [PROTO_10]
      226 SETTABLEKS                       R27 R26 K54 ["getAssetThumbnailUrl"]
      228 DUPCLOSURE                       R27 K55 [PROTO_12]
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R11
      231 SETTABLEKS                       R27 R26 K56 ["getImagesForCarousel"]
      233 DUPCLOSURE                       R27 K57 [PROTO_13]
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R24
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R18
      253 SETTABLEKS                       R27 R26 K58 ["render"]
      255 MOVE                             R27 R4
      256 DUPTABLE                         R28 K60 [{"Stylizer"}]
      257 GETTABLEKS                       R29 R3 K59 ["Stylizer"]
      259 SETTABLEKS                       R29 R28 K59 ["Stylizer"]
      261 CALL                             R27 1 1
      262 MOVE                             R28 R26
      263 CALL                             R27 1 1
      264 MOVE                             R26 R27
      265 RETURN                           R26 1
