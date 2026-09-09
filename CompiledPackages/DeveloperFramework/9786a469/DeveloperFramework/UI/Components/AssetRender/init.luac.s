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
      222 JUMP                             ; [+375]
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
      250 JUMP                             ; [+347]
      251 JUMPIFNOT                        R12 ; [+121]
      252 GETTABLEKS                       R22 R2 K63 ["isFontLoaded"]
      254 JUMPIFNOT                        R22 ; [+89]
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
      302 GETIMPORT                        R29 K92 [Font.fromId]
      304 MOVE                             R30 R5
      305 CALL                             R29 1 1
      306 SETTABLEKS                       R29 R28 K75 ["FontFace"]
      308 GETIMPORT                        R29 K37 [UDim2.new]
      310 LOADK                            R30 K87 [0.5]
      311 LOADN                            R31 0
      312 LOADK                            R32 K87 [0.5]
      313 LOADN                            R33 0
      314 CALL                             R29 4 1
      315 SETTABLEKS                       R29 R28 K76 ["Position"]
      317 GETIMPORT                        R29 K37 [UDim2.new]
      319 LOADN                            R30 1
      320 LOADN                            R31 0
      321 LOADN                            R32 1
      322 LOADN                            R33 0
      323 CALL                             R29 4 1
      324 SETTABLEKS                       R29 R28 K29 ["Size"]
      326 GETTABLEKS                       R29 R3 K28 ["RenderView"]
      328 GETTABLEKS                       R29 R29 K69 ["FontRenderView"]
      330 GETTABLEKS                       R29 R29 K77 ["Text"]
      332 SETTABLEKS                       R29 R28 K77 ["Text"]
      334 GETIMPORT                        R29 K94 [Enum.TextXAlignment.Left]
      336 SETTABLEKS                       R29 R28 K83 ["TextXAlignment"]
      338 CALL                             R26 2 1
      339 SETTABLEKS                       R26 R25 K71 ["fontTextLabel"]
      341 CALL                             R22 3 1
      342 MOVE                             R21 R22
      343 JUMP                             ; [+254]
      344 GETUPVAL                         R22 2
      345 GETTABLEKS                       R22 R22 K40 ["createElement"]
      347 GETUPVAL                         R23 7
      348 DUPTABLE                         R24 K95 [{"AnchorPoint", "Position", "Size"}]
      349 GETIMPORT                        R25 K86 [Vector2.new]
      351 LOADK                            R26 K87 [0.5]
      352 LOADK                            R27 K87 [0.5]
      353 CALL                             R25 2 1
      354 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      356 GETIMPORT                        R25 K97 [UDim2.fromScale]
      358 LOADK                            R26 K87 [0.5]
      359 LOADK                            R27 K87 [0.5]
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K76 ["Position"]
      363 GETIMPORT                        R25 K97 [UDim2.fromScale]
      365 LOADK                            R26 K87 [0.5]
      366 LOADK                            R27 K87 [0.5]
      367 CALL                             R25 2 1
      368 SETTABLEKS                       R25 R24 K29 ["Size"]
      370 CALL                             R22 2 1
      371 MOVE                             R21 R22
      372 JUMP                             ; [+225]
      373 JUMPIFNOTEQKNIL                  R9 ; [+30]
      375 GETUPVAL                         R22 2
      376 GETTABLEKS                       R22 R22 K40 ["createElement"]
      378 GETUPVAL                         R23 7
      379 DUPTABLE                         R24 K95 [{"AnchorPoint", "Position", "Size"}]
      380 GETIMPORT                        R25 K86 [Vector2.new]
      382 LOADK                            R26 K87 [0.5]
      383 LOADK                            R27 K87 [0.5]
      384 CALL                             R25 2 1
      385 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      387 GETIMPORT                        R25 K97 [UDim2.fromScale]
      389 LOADK                            R26 K87 [0.5]
      390 LOADK                            R27 K87 [0.5]
      391 CALL                             R25 2 1
      392 SETTABLEKS                       R25 R24 K76 ["Position"]
      394 GETIMPORT                        R25 K97 [UDim2.fromScale]
      396 LOADK                            R26 K87 [0.5]
      397 LOADK                            R27 K87 [0.5]
      398 CALL                             R25 2 1
      399 SETTABLEKS                       R25 R24 K29 ["Size"]
      401 CALL                             R22 2 1
      402 MOVE                             R21 R22
      403 JUMP                             ; [+194]
      404 GETUPVAL                         R22 8
      405 GETTABLEKS                       R22 R22 K15 ["Model"]
      407 JUMPIFNOTEQ                      R9 R22 ; [+23]
      409 GETUPVAL                         R22 2
      410 GETTABLEKS                       R22 R22 K40 ["createElement"]
      412 GETUPVAL                         R23 9
      413 DUPTABLE                         R24 K101 [{"Model", "OnMouseEnter", "OnMouseLeave", "ShouldMuteModelSounds"}]
      414 SETTABLEKS                       R8 R24 K15 ["Model"]
      416 GETTABLEKS                       R25 R1 K98 ["OnMouseEnter"]
      418 SETTABLEKS                       R25 R24 K98 ["OnMouseEnter"]
      420 GETTABLEKS                       R25 R1 K99 ["OnMouseLeave"]
      422 SETTABLEKS                       R25 R24 K99 ["OnMouseLeave"]
      424 GETTABLEKS                       R25 R1 K100 ["ShouldMuteModelSounds"]
      426 SETTABLEKS                       R25 R24 K100 ["ShouldMuteModelSounds"]
      428 CALL                             R22 2 1
      429 MOVE                             R21 R22
      430 JUMP                             ; [+167]
      431 GETUPVAL                         R22 8
      432 GETTABLEKS                       R22 R22 K102 ["Sound"]
      434 JUMPIFNOTEQ                      R9 R22 ; [+40]
      436 GETUPVAL                         R22 2
      437 GETTABLEKS                       R22 R22 K40 ["createElement"]
      439 GETUPVAL                         R23 10
      440 DUPTABLE                         R24 K108 [{"OnPlay", "OnPause", "SoundId", "Style", "UsageContext"}]
      441 GETTABLEKS                       R25 R1 K109 ["OnPlaySound"]
      443 SETTABLEKS                       R25 R24 K103 ["OnPlay"]
      445 GETTABLEKS                       R25 R1 K110 ["OnPauseSound"]
      447 SETTABLEKS                       R25 R24 K104 ["OnPause"]
      449 JUMPIFNOT                        R7 ; [+3]
      450 GETTABLEKS                       R25 R7 K105 ["SoundId"]
      452 JUMPIF                           R25 ; [+5]
      453 GETIMPORT                        R25 K113 [string.format]
      455 LOADK                            R26 K114 ["rbxassetid://%d"]
      456 MOVE                             R27 R5
      457 CALL                             R25 2 1
      458 SETTABLEKS                       R25 R24 K105 ["SoundId"]
      460 JUMPIFNOT                        R15 ; [+3]
      461 GETTABLEKS                       R25 R3 K115 ["AudioPlayerWithTreeViewButton"]
      463 JUMPIF                           R25 ; [+2]
      464 GETTABLEKS                       R25 R3 K116 ["AudioPlayer"]
      466 SETTABLEKS                       R25 R24 K106 ["Style"]
      468 GETTABLEKS                       R25 R1 K107 ["UsageContext"]
      470 SETTABLEKS                       R25 R24 K107 ["UsageContext"]
      472 CALL                             R22 2 1
      473 MOVE                             R21 R22
      474 JUMP                             ; [+123]
      475 GETUPVAL                         R22 8
      476 GETTABLEKS                       R22 R22 K117 ["Video"]
      478 JUMPIFNOTEQ                      R9 R22 ; [+36]
      480 GETUPVAL                         R22 2
      481 GETTABLEKS                       R22 R22 K40 ["createElement"]
      483 GETUPVAL                         R23 11
      484 DUPTABLE                         R24 K119 [{"OnPlay", "OnPause", "VideoId", "Style"}]
      485 GETTABLEKS                       R25 R1 K120 ["OnPlayVideo"]
      487 SETTABLEKS                       R25 R24 K103 ["OnPlay"]
      489 GETTABLEKS                       R25 R1 K121 ["OnPauseVideo"]
      491 SETTABLEKS                       R25 R24 K104 ["OnPause"]
      493 JUMPIFNOT                        R7 ; [+3]
      494 GETTABLEKS                       R25 R7 K117 ["Video"]
      496 JUMPIF                           R25 ; [+5]
      497 GETIMPORT                        R25 K113 [string.format]
      499 LOADK                            R26 K114 ["rbxassetid://%d"]
      500 MOVE                             R27 R5
      501 CALL                             R25 2 1
      502 SETTABLEKS                       R25 R24 K118 ["VideoId"]
      504 JUMPIFNOT                        R15 ; [+3]
      505 GETTABLEKS                       R25 R3 K122 ["VideoPlayerWithTreeViewButton"]
      507 JUMPIF                           R25 ; [+2]
      508 GETTABLEKS                       R25 R3 K123 ["VideoPlayer"]
      510 SETTABLEKS                       R25 R24 K106 ["Style"]
      512 CALL                             R22 2 1
      513 MOVE                             R21 R22
      514 JUMP                             ; [+83]
      515 GETUPVAL                         R22 8
      516 GETTABLEKS                       R22 R22 K60 ["Image"]
      518 JUMPIFNOTEQ                      R9 R22 ; [+26]
      520 GETUPVAL                         R22 2
      521 GETTABLEKS                       R22 R22 K40 ["createElement"]
      523 GETUPVAL                         R23 4
      524 DUPTABLE                         R24 K61 [{"Image"}]
      525 JUMPIFNOT                        R14 ; [+13]
      526 MOVE                             R27 R5
      527 GETTABLEKS                       R28 R3 K53 ["Thumbnail"]
      529 GETTABLEKS                       R28 R28 K29 ["Size"]
      531 GETTABLEKS                       R29 R3 K53 ["Thumbnail"]
      533 GETTABLEKS                       R29 R29 K29 ["Size"]
      535 NAMECALL                         R25 R0 K62 ["getAssetThumbnailUrl"]
      537 CALL                             R25 4 1
      538 JUMP                             ; [+1]
      539 MOVE                             R25 R8
      540 SETTABLEKS                       R25 R24 K60 ["Image"]
      542 CALL                             R22 2 1
      543 MOVE                             R21 R22
      544 JUMP                             ; [+53]
      545 GETUPVAL                         R22 8
      546 GETTABLEKS                       R22 R22 K124 ["Script"]
      548 JUMPIFEQ                         R9 R22 ; [+6]
      550 GETUPVAL                         R22 8
      551 GETTABLEKS                       R22 R22 K125 ["Other"]
      553 JUMPIFNOTEQ                      R9 R22 ; [+32]
      555 GETUPVAL                         R22 2
      556 GETTABLEKS                       R22 R22 K40 ["createElement"]
      558 GETUPVAL                         R23 12
      559 DUPTABLE                         R24 K127 [{"Instance", "AnchorPoint", "Position", "Size"}]
      560 SETTABLEKS                       R8 R24 K126 ["Instance"]
      562 GETIMPORT                        R25 K86 [Vector2.new]
      564 LOADK                            R26 K87 [0.5]
      565 LOADK                            R27 K87 [0.5]
      566 CALL                             R25 2 1
      567 SETTABLEKS                       R25 R24 K73 ["AnchorPoint"]
      569 GETIMPORT                        R25 K97 [UDim2.fromScale]
      571 LOADK                            R26 K87 [0.5]
      572 LOADK                            R27 K87 [0.5]
      573 CALL                             R25 2 1
      574 SETTABLEKS                       R25 R24 K76 ["Position"]
      576 GETIMPORT                        R25 K97 [UDim2.fromScale]
      578 LOADK                            R26 K87 [0.5]
      579 LOADK                            R27 K87 [0.5]
      580 CALL                             R25 2 1
      581 SETTABLEKS                       R25 R24 K29 ["Size"]
      583 CALL                             R22 2 1
      584 MOVE                             R21 R22
      585 JUMP                             ; [+12]
      586 GETIMPORT                        R22 K129 [error]
      588 GETIMPORT                        R23 K113 [string.format]
      590 LOADK                            R24 K130 ["Unhandled AssetRenderType: %s"]
      591 FASTCALL1                        TOSTRING R9 ; [+3]
      592 MOVE                             R26 R9
      593 GETIMPORT                        R25 K132 [tostring]
      595 CALL                             R25 1 1
      596 CALL                             R23 2 -1
      597 CALL                             R22 -1 0
      598 GETUPVAL                         R22 2
      599 GETTABLEKS                       R22 R22 K40 ["createElement"]
      601 GETUPVAL                         R23 13
      602 DUPTABLE                         R24 K137 [{"LayoutOrder", "Position", "Margin", "Padding", "Size", "Background", "BackgroundStyle"}]
      603 GETTABLEKS                       R25 R1 K133 ["LayoutOrder"]
      605 SETTABLEKS                       R25 R24 K133 ["LayoutOrder"]
      607 GETTABLEKS                       R25 R1 K76 ["Position"]
      609 SETTABLEKS                       R25 R24 K76 ["Position"]
      611 GETTABLEKS                       R25 R1 K134 ["Margin"]
      613 SETTABLEKS                       R25 R24 K134 ["Margin"]
      615 GETTABLEKS                       R25 R1 K67 ["Padding"]
      617 SETTABLEKS                       R25 R24 K67 ["Padding"]
      619 GETIMPORT                        R25 K37 [UDim2.new]
      621 GETIMPORT                        R26 K139 [UDim.new]
      623 LOADN                            R27 0
      624 MOVE                             R28 R4
      625 CALL                             R26 2 1
      626 MOVE                             R27 R20
      627 CALL                             R25 2 1
      628 SETTABLEKS                       R25 R24 K29 ["Size"]
      630 GETTABLEKS                       R25 R3 K135 ["Background"]
      632 SETTABLEKS                       R25 R24 K135 ["Background"]
      634 GETTABLEKS                       R25 R3 K136 ["BackgroundStyle"]
      636 SETTABLEKS                       R25 R24 K136 ["BackgroundStyle"]
      638 DUPTABLE                         R25 K141 [{"Layout", "RenderView", "TreeView"}]
      639 GETUPVAL                         R26 2
      640 GETTABLEKS                       R26 R26 K40 ["createElement"]
      642 LOADK                            R27 K142 ["UIListLayout"]
      643 DUPTABLE                         R28 K147 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      644 JUMPIFNOT                        R19 ; [+3]
      645 GETIMPORT                        R29 K149 [Enum.FillDirection.Horizontal]
      647 JUMPIF                           R29 ; [+2]
      648 GETIMPORT                        R29 K151 [Enum.FillDirection.Vertical]
      650 SETTABLEKS                       R29 R28 K143 ["FillDirection"]
      652 GETIMPORT                        R29 K152 [Enum.HorizontalAlignment.Left]
      654 SETTABLEKS                       R29 R28 K144 ["HorizontalAlignment"]
      656 GETIMPORT                        R29 K154 [Enum.VerticalAlignment.Center]
      658 SETTABLEKS                       R29 R28 K145 ["VerticalAlignment"]
      660 GETIMPORT                        R29 K155 [Enum.SortOrder.LayoutOrder]
      662 SETTABLEKS                       R29 R28 K146 ["SortOrder"]
      664 CALL                             R26 2 1
      665 SETTABLEKS                       R26 R25 K140 ["Layout"]
      667 GETUPVAL                         R26 2
      668 GETTABLEKS                       R26 R26 K40 ["createElement"]
      670 GETUPVAL                         R27 13
      671 DUPTABLE                         R28 K157 [{["LayoutOrder"] = 1, ["Size"]}]
      672 SETTABLEKS                       R17 R28 K29 ["Size"]
      674 DUPTABLE                         R29 K160 [{"AssetRenderView", "TreeViewButton"}]
      675 SETTABLEKS                       R21 R29 K158 ["AssetRenderView"]
      677 MOVE                             R30 R15
      678 JUMPIFNOT                        R30 ; [+51]
      679 GETUPVAL                         R30 2
      680 GETTABLEKS                       R30 R30 K40 ["createElement"]
      682 GETUPVAL                         R31 14
      683 DUPTABLE                         R32 K163 [{["Style"], ["OnClick"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      684 GETTABLEKS                       R33 R3 K28 ["RenderView"]
      686 GETTABLEKS                       R33 R33 K159 ["TreeViewButton"]
      688 SETTABLEKS                       R33 R32 K106 ["Style"]
      690 GETTABLEKS                       R33 R0 K164 ["toggleTreeViewVisible"]
      692 SETTABLEKS                       R33 R32 K161 ["OnClick"]
      694 GETIMPORT                        R33 K86 [Vector2.new]
      696 LOADN                            R34 1
      697 LOADN                            R35 1
      698 CALL                             R33 2 1
      699 SETTABLEKS                       R33 R32 K73 ["AnchorPoint"]
      701 GETIMPORT                        R33 K37 [UDim2.new]
      703 LOADN                            R34 1
      704 LOADN                            R35 -7
      705 LOADN                            R36 1
      706 LOADN                            R37 -7
      707 CALL                             R33 4 1
      708 SETTABLEKS                       R33 R32 K76 ["Position"]
      710 GETUPVAL                         R34 15
      711 JUMPIFNOT                        R34 ; [+7]
      712 GETUPVAL                         R33 2
      713 GETTABLEKS                       R33 R33 K40 ["createElement"]
      715 GETUPVAL                         R34 16
      716 DUPTABLE                         R35 K167 [{["Cursor"] = "PointingHand"}]
      717 CALL                             R33 2 1
      718 JUMP                             ; [+10]
      719 NEWTABLE                         R33 0 1
      721 GETUPVAL                         R34 2
      722 GETTABLEKS                       R34 R34 K40 ["createElement"]
      724 GETUPVAL                         R35 16
      725 DUPTABLE                         R36 K167 [{["Cursor"] = "PointingHand"}]
      726 CALL                             R34 2 -1
      727 SETLIST                          R33 R34 -1 [1]
      729 CALL                             R30 3 1
      730 SETTABLEKS                       R30 R29 K159 ["TreeViewButton"]
      732 CALL                             R26 3 1
      733 SETTABLEKS                       R26 R25 K28 ["RenderView"]
      735 MOVE                             R26 R16
      736 JUMPIFNOT                        R26 ; [+30]
      737 GETUPVAL                         R26 2
      738 GETTABLEKS                       R26 R26 K40 ["createElement"]
      740 GETUPVAL                         R27 17
      741 DUPTABLE                         R28 K174 [{["LayoutOrder"] = 2, ["Size"], ["Instances"], ["Expansion"], ["Selection"], ["OnExpansionChange"], ["OnSelectionChange"], ["Style"] = "BorderBox"}]
      742 SETTABLEKS                       R18 R28 K29 ["Size"]
      744 MOVE                             R31 R6
      745 NAMECALL                         R29 R0 K175 ["getMemoizedTreeViewInstances"]
      747 CALL                             R29 2 1
      748 SETTABLEKS                       R29 R28 K168 ["Instances"]
      750 GETTABLEKS                       R29 R2 K176 ["treeViewExpansion"]
      752 SETTABLEKS                       R29 R28 K169 ["Expansion"]
      754 GETTABLEKS                       R29 R2 K10 ["treeViewSelection"]
      756 SETTABLEKS                       R29 R28 K170 ["Selection"]
      758 GETTABLEKS                       R29 R0 K177 ["onTreeViewExpansionChange"]
      760 SETTABLEKS                       R29 R28 K171 ["OnExpansionChange"]
      762 GETTABLEKS                       R29 R0 K178 ["onTreeViewSelectionChange"]
      764 SETTABLEKS                       R29 R28 K172 ["OnSelectionChange"]
      766 CALL                             R26 2 1
      767 SETTABLEKS                       R26 R25 K30 ["TreeView"]
      769 CALL                             R22 3 -1
      770 RETURN                           R22 -1

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
       48 GETTABLEKS                       R8 R1 K16 ["Util"]
       50 GETTABLEKS                       R8 R8 K18 ["AssetRenderUtil"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K19 ["AssetRenderType"]
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R1 K8 ["Parent"]
       59 GETTABLEKS                       R10 R10 K20 ["Cryo"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R1 K8 ["Parent"]
       66 GETTABLEKS                       R11 R11 K21 ["Dash"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R10 K22 ["join"]
       71 GETIMPORT                        R12 K10 [require]
       73 GETTABLEKS                       R13 R1 K6 ["UI"]
       75 GETTABLEKS                       R13 R13 K23 ["Components"]
       77 GETTABLEKS                       R13 R13 K24 ["DEPRECATED_Button"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K10 [require]
       82 GETTABLEKS                       R14 R1 K6 ["UI"]
       84 GETTABLEKS                       R14 R14 K23 ["Components"]
       86 GETTABLEKS                       R14 R14 K25 ["Container"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K10 [require]
       91 GETTABLEKS                       R15 R1 K6 ["UI"]
       93 GETTABLEKS                       R15 R15 K23 ["Components"]
       95 GETTABLEKS                       R15 R15 K26 ["HoverArea"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K10 [require]
      100 GETTABLEKS                       R16 R1 K6 ["UI"]
      102 GETTABLEKS                       R16 R16 K23 ["Components"]
      104 GETTABLEKS                       R16 R16 K27 ["LoadingIndicator"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K10 [require]
      109 GETTABLEKS                       R17 R1 K6 ["UI"]
      111 GETTABLEKS                       R17 R17 K23 ["Components"]
      113 GETTABLEKS                       R17 R17 K28 ["Pane"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K10 [require]
      118 GETTABLEKS                       R18 R1 K6 ["UI"]
      120 GETTABLEKS                       R18 R18 K23 ["Components"]
      122 GETTABLEKS                       R18 R18 K29 ["InstanceTreeView"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K10 [require]
      127 GETTABLEKS                       R19 R1 K6 ["UI"]
      129 GETTABLEKS                       R19 R19 K23 ["Components"]
      131 GETTABLEKS                       R19 R19 K30 ["TextLabel"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K10 [require]
      136 GETTABLEKS                       R20 R1 K6 ["UI"]
      138 GETTABLEKS                       R20 R20 K23 ["Components"]
      140 GETTABLEKS                       R20 R20 K31 ["AudioPlayer"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K10 [require]
      145 GETTABLEKS                       R21 R1 K6 ["UI"]
      147 GETTABLEKS                       R21 R21 K23 ["Components"]
      149 GETTABLEKS                       R21 R21 K32 ["VideoPlayer"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K10 [require]
      154 GETTABLEKS                       R22 R1 K6 ["UI"]
      156 GETTABLEKS                       R22 R22 K23 ["Components"]
      158 GETTABLEKS                       R22 R22 K33 ["AssetRenderImage"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K10 [require]
      163 GETTABLEKS                       R23 R1 K6 ["UI"]
      165 GETTABLEKS                       R23 R23 K23 ["Components"]
      167 GETTABLEKS                       R23 R23 K34 ["AssetRenderModel"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K10 [require]
      172 GETTABLEKS                       R24 R1 K6 ["UI"]
      174 GETTABLEKS                       R24 R24 K23 ["Components"]
      176 GETTABLEKS                       R24 R24 K35 ["AssetRenderThumbnail"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K10 [require]
      181 GETTABLEKS                       R25 R1 K6 ["UI"]
      183 GETTABLEKS                       R25 R25 K23 ["Components"]
      185 GETTABLEKS                       R25 R25 K36 ["ImageCarousel"]
      187 CALL                             R24 1 1
      188 GETTABLEKS                       R25 R2 K37 ["PureComponent"]
      190 LOADK                            R27 K38 ["AssetRender"]
      191 NAMECALL                         R25 R25 K39 ["extend"]
      193 CALL                             R25 2 1
      194 GETTABLEKS                       R26 R6 K40 ["wrap"]
      196 MOVE                             R27 R25
      197 GETIMPORT                        R28 K5 [script]
      199 CALL                             R26 2 0
      200 DUPCLOSURE                       R26 K41 [PROTO_4]
      201 CAPTURE                          VAL R11
      202 SETTABLEKS                       R26 R25 K42 ["init"]
      204 DUPCLOSURE                       R26 K43 [PROTO_6]
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R26 R25 K44 ["loadFontForTextLabelAndSetStateWhenDone"]
      208 DUPCLOSURE                       R26 K45 [PROTO_7]
      209 SETTABLEKS                       R26 R25 K46 ["didMount"]
      211 DUPCLOSURE                       R26 K47 [PROTO_8]
      212 SETTABLEKS                       R26 R25 K48 ["didUpdate"]
      214 DUPCLOSURE                       R26 K49 [PROTO_9]
      215 SETTABLEKS                       R26 R25 K50 ["getMemoizedTreeViewInstances"]
      217 DUPCLOSURE                       R26 K51 [PROTO_10]
      218 SETTABLEKS                       R26 R25 K52 ["getAssetThumbnailUrl"]
      220 DUPCLOSURE                       R26 K53 [PROTO_12]
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R10
      223 SETTABLEKS                       R26 R25 K54 ["getImagesForCarousel"]
      225 DUPCLOSURE                       R26 K55 [PROTO_13]
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R19
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R23
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R17
      244 SETTABLEKS                       R26 R25 K56 ["render"]
      246 MOVE                             R26 R4
      247 DUPTABLE                         R27 K58 [{"Stylizer"}]
      248 GETTABLEKS                       R28 R3 K57 ["Stylizer"]
      250 SETTABLEKS                       R28 R27 K57 ["Stylizer"]
      252 CALL                             R26 1 1
      253 MOVE                             R27 R25
      254 CALL                             R26 1 1
      255 MOVE                             R25 R26
      256 RETURN                           R25 1
