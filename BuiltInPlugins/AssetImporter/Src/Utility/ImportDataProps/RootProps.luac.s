PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["IsGltf"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 NAMECALL                         R3 R1 K1 ["HasAnimation"]
        8 CALL                             R3 1 1
        9 NOT                              R2 R3
       10 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R1 K0 ["IsGltf"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 NAMECALL                         R3 R1 K1 ["HasAnimation"]
        8 CALL                             R3 1 1
        9 NOT                              R2 R3
       10 JUMPIF                           R2 ; [+4]
       11 NAMECALL                         R3 R1 K2 ["usesCustomRestPoseLua"]
       13 CALL                             R3 1 1
       14 NOT                              R2 R3
       15 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R3 R1 K0 ["IsR15"]
        2 CALL                             R3 1 1
        3 NOT                              R2 R3
        4 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+4]
        3 NAMECALL                         R3 R1 K0 ["IsR15"]
        5 CALL                             R3 1 1
        6 NOT                              R2 R3
        7 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["InsertInWorkspace"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["AddModelToInventory"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["ImportAsPackage"]
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["AddModelToInventory"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RunningUnderCLI"]
        3 CALL                             R1 0 1
        4 NOT                              R0 R1
        5 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["RunningUnderCLI"]
        7 CALL                             R2 0 1
        8 NOT                              R1 R2
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R1 R0 K1 ["IsR15"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["AddModelToInventory"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["ImportAsPackage"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R7 R0 K6 ["Src"]
       20 GETTABLEKS                       R6 R7 K9 ["Components"]
       22 GETTABLEKS                       R5 R6 K10 ["Properties"]
       24 GETTABLEKS                       R4 R5 K11 ["Types"]
       26 GETTABLEKS                       R3 R4 K12 ["AssetIdProperty"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R8 R0 K6 ["Src"]
       33 GETTABLEKS                       R7 R8 K9 ["Components"]
       35 GETTABLEKS                       R6 R7 K10 ["Properties"]
       37 GETTABLEKS                       R5 R6 K11 ["Types"]
       39 GETTABLEKS                       R4 R5 K13 ["AnimationListProperty"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K5 [require]
       44 GETTABLEKS                       R9 R0 K6 ["Src"]
       46 GETTABLEKS                       R8 R9 K9 ["Components"]
       48 GETTABLEKS                       R7 R8 K10 ["Properties"]
       50 GETTABLEKS                       R6 R7 K11 ["Types"]
       52 GETTABLEKS                       R5 R6 K14 ["UploadDestinationProperty"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R7 R8 K15 ["Flags"]
       61 GETTABLEKS                       R6 R7 K16 ["getFFlagUnlinkImporterAndAvatarPreview"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R8 R9 K15 ["Flags"]
       70 GETTABLEKS                       R7 R8 K17 ["getFFlagAllowUserToSelectPhysicalConstraintTypeForR15"]
       72 CALL                             R6 1 1
       73 DUPCLOSURE                       R7 K18 [PROTO_0]
       74 DUPCLOSURE                       R8 K19 [PROTO_1]
       75 DUPCLOSURE                       R9 K20 [PROTO_2]
       76 DUPCLOSURE                       R10 K21 [PROTO_3]
       77 CAPTURE                          VAL R5
       78 DUPCLOSURE                       R11 K22 [PROTO_4]
       79 DUPCLOSURE                       R12 K23 [PROTO_5]
       80 DUPCLOSURE                       R13 K24 [PROTO_6]
       81 DUPCLOSURE                       R14 K25 [PROTO_7]
       82 CAPTURE                          VAL R1
       83 DUPCLOSURE                       R15 K26 [PROTO_8]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 DUPCLOSURE                       R16 K27 [PROTO_9]
       87 NEWTABLE                         R17 0 5
       89 DUPTABLE                         R18 K29 [{"Section", "Properties"}]
       90 LOADK                            R19 K30 ["FileGeneral"]
       91 SETTABLEKS                       R19 R18 K28 ["Section"]
       93 NEWTABLE                         R19 0 12
       95 DUPTABLE                         R20 K33 [{"Name", "Editable"}]
       96 LOADK                            R21 K34 ["ImportName"]
       97 SETTABLEKS                       R21 R20 K31 ["Name"]
       99 LOADB                            R21 1
      100 SETTABLEKS                       R21 R20 K32 ["Editable"]
      102 DUPTABLE                         R21 K33 [{"Name", "Editable"}]
      103 LOADK                            R22 K35 ["ImportAsModelAsset"]
      104 SETTABLEKS                       R22 R21 K31 ["Name"]
      106 LOADB                            R22 1
      107 SETTABLEKS                       R22 R21 K32 ["Editable"]
      109 DUPTABLE                         R22 K33 [{"Name", "Editable"}]
      110 LOADK                            R23 K36 ["AddModelToInventory"]
      111 SETTABLEKS                       R23 R22 K31 ["Name"]
      113 LOADB                            R23 1
      114 SETTABLEKS                       R23 R22 K32 ["Editable"]
      116 DUPTABLE                         R23 K38 [{"Name", "Editable", "ShouldHide"}]
      117 LOADK                            R24 K39 ["ImportAsPackage"]
      118 SETTABLEKS                       R24 R23 K31 ["Name"]
      120 LOADB                            R24 1
      121 SETTABLEKS                       R24 R23 K32 ["Editable"]
      123 SETTABLEKS                       R13 R23 K37 ["ShouldHide"]
      125 DUPTABLE                         R24 K41 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      126 LOADK                            R25 K42 ["ExistingPackageId"]
      127 SETTABLEKS                       R25 R24 K31 ["Name"]
      129 LOADB                            R25 1
      130 SETTABLEKS                       R25 R24 K32 ["Editable"]
      132 SETTABLEKS                       R2 R24 K40 ["ComponentFactory"]
      134 SETTABLEKS                       R12 R24 K37 ["ShouldHide"]
      136 DUPTABLE                         R25 K43 [{"Name", "Editable", "ComponentFactory"}]
      137 LOADK                            R26 K44 ["PreferredUploadId"]
      138 SETTABLEKS                       R26 R25 K31 ["Name"]
      140 LOADB                            R26 1
      141 SETTABLEKS                       R26 R25 K32 ["Editable"]
      143 SETTABLEKS                       R4 R25 K40 ["ComponentFactory"]
      145 DUPTABLE                         R26 K33 [{"Name", "Editable"}]
      146 LOADK                            R27 K45 ["InsertInWorkspace"]
      147 SETTABLEKS                       R27 R26 K31 ["Name"]
      149 LOADB                            R27 1
      150 SETTABLEKS                       R27 R26 K32 ["Editable"]
      152 DUPTABLE                         R27 K38 [{"Name", "Editable", "ShouldHide"}]
      153 LOADK                            R28 K46 ["InsertWithScenePosition"]
      154 SETTABLEKS                       R28 R27 K31 ["Name"]
      156 LOADB                            R28 1
      157 SETTABLEKS                       R28 R27 K32 ["Editable"]
      159 SETTABLEKS                       R11 R27 K37 ["ShouldHide"]
      161 DUPTABLE                         R28 K33 [{"Name", "Editable"}]
      162 LOADK                            R29 K47 ["KeepZeroInfluenceBones"]
      163 SETTABLEKS                       R29 R28 K31 ["Name"]
      165 LOADB                            R29 1
      166 SETTABLEKS                       R29 R28 K32 ["Editable"]
      168 DUPTABLE                         R29 K33 [{"Name", "Editable"}]
      169 LOADK                            R30 K48 ["UseSceneOriginAsPivot"]
      170 SETTABLEKS                       R30 R29 K31 ["Name"]
      172 LOADB                            R30 1
      173 SETTABLEKS                       R30 R29 K32 ["Editable"]
      175 DUPTABLE                         R30 K33 [{"Name", "Editable"}]
      176 LOADK                            R31 K49 ["Anchored"]
      177 SETTABLEKS                       R31 R30 K31 ["Name"]
      179 LOADB                            R31 1
      180 SETTABLEKS                       R31 R30 K32 ["Editable"]
      182 DUPTABLE                         R31 K33 [{"Name", "Editable"}]
      183 LOADK                            R32 K50 ["UsesCages"]
      184 SETTABLEKS                       R32 R31 K31 ["Name"]
      186 LOADB                            R32 1
      187 SETTABLEKS                       R32 R31 K32 ["Editable"]
      189 SETLIST                          R19 R20 12 [1]
      191 SETTABLEKS                       R19 R18 K10 ["Properties"]
      193 DUPTABLE                         R19 K52 [{"Section", "Properties", "Callouts"}]
      194 LOADK                            R20 K53 ["RigGeneral"]
      195 SETTABLEKS                       R20 R19 K28 ["Section"]
      197 NEWTABLE                         R20 0 4
      199 DUPTABLE                         R21 K33 [{"Name", "Editable"}]
      200 LOADK                            R22 K54 ["RigType"]
      201 SETTABLEKS                       R22 R21 K31 ["Name"]
      203 LOADB                            R22 1
      204 SETTABLEKS                       R22 R21 K32 ["Editable"]
      206 DUPTABLE                         R22 K55 [{"Name", "Editable", "ShouldHide", "Callouts"}]
      207 LOADK                            R23 K56 ["ValidateUgcBody"]
      208 SETTABLEKS                       R23 R22 K31 ["Name"]
      210 LOADB                            R23 1
      211 SETTABLEKS                       R23 R22 K32 ["Editable"]
      213 SETTABLEKS                       R10 R22 K37 ["ShouldHide"]
      215 NEWTABLE                         R23 0 1
      217 DUPTABLE                         R24 K58 [{"Name", "ShouldShow"}]
      218 LOADK                            R25 K59 ["OpenAvatarPreviewCallout"]
      219 SETTABLEKS                       R25 R24 K31 ["Name"]
      221 SETTABLEKS                       R15 R24 K57 ["ShouldShow"]
      223 SETLIST                          R23 R24 1 [1]
      225 SETTABLEKS                       R23 R22 K51 ["Callouts"]
      227 DUPTABLE                         R23 K38 [{"Name", "Editable", "ShouldHide"}]
      228 LOADK                            R24 K60 ["RigScale"]
      229 SETTABLEKS                       R24 R23 K31 ["Name"]
      231 LOADB                            R24 1
      232 SETTABLEKS                       R24 R23 K32 ["Editable"]
      234 SETTABLEKS                       R9 R23 K37 ["ShouldHide"]
      236 MOVE                             R25 R6
      237 CALL                             R25 0 1
      238 JUMPIFNOT                        R25 ; [+10]
      239 DUPTABLE                         R24 K38 [{"Name", "Editable", "ShouldHide"}]
      240 LOADK                            R25 K61 ["PhysicalConstraintType"]
      241 SETTABLEKS                       R25 R24 K31 ["Name"]
      243 LOADB                            R25 1
      244 SETTABLEKS                       R25 R24 K32 ["Editable"]
      246 SETTABLEKS                       R9 R24 K37 ["ShouldHide"]
      248 JUMPIF                           R24 ; [+1]
      249 LOADNIL                          R24
      250 SETLIST                          R20 R21 4 [1]
      252 SETTABLEKS                       R20 R19 K10 ["Properties"]
      254 NEWTABLE                         R20 0 1
      256 DUPTABLE                         R21 K58 [{"Name", "ShouldShow"}]
      257 LOADK                            R22 K59 ["OpenAvatarPreviewCallout"]
      258 SETTABLEKS                       R22 R21 K31 ["Name"]
      260 SETTABLEKS                       R15 R21 K57 ["ShouldShow"]
      262 SETLIST                          R20 R21 1 [1]
      264 SETTABLEKS                       R20 R19 K51 ["Callouts"]
      266 DUPTABLE                         R20 K29 [{"Section", "Properties"}]
      267 LOADK                            R21 K62 ["AnimationGeneral"]
      268 SETTABLEKS                       R21 R20 K28 ["Section"]
      270 NEWTABLE                         R21 0 2
      272 DUPTABLE                         R22 K38 [{"Name", "Editable", "ShouldHide"}]
      273 LOADK                            R23 K63 ["RestPose"]
      274 SETTABLEKS                       R23 R22 K31 ["Name"]
      276 LOADB                            R23 1
      277 SETTABLEKS                       R23 R22 K32 ["Editable"]
      279 SETTABLEKS                       R7 R22 K37 ["ShouldHide"]
      281 DUPTABLE                         R23 K41 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      282 LOADK                            R24 K64 ["AnimationIdForRestPose"]
      283 SETTABLEKS                       R24 R23 K31 ["Name"]
      285 LOADB                            R24 1
      286 SETTABLEKS                       R24 R23 K32 ["Editable"]
      288 SETTABLEKS                       R3 R23 K40 ["ComponentFactory"]
      290 SETTABLEKS                       R8 R23 K37 ["ShouldHide"]
      292 SETLIST                          R21 R22 2 [1]
      294 SETTABLEKS                       R21 R20 K10 ["Properties"]
      296 DUPTABLE                         R21 K29 [{"Section", "Properties"}]
      297 LOADK                            R22 K65 ["FileTransform"]
      298 SETTABLEKS                       R22 R21 K28 ["Section"]
      300 NEWTABLE                         R22 0 2
      302 DUPTABLE                         R23 K67 [{"Name", "Editable", "Dependencies"}]
      303 LOADK                            R24 K68 ["WorldForward"]
      304 SETTABLEKS                       R24 R23 K31 ["Name"]
      306 LOADB                            R24 1
      307 SETTABLEKS                       R24 R23 K32 ["Editable"]
      309 NEWTABLE                         R24 0 1
      311 LOADK                            R25 K69 ["WorldUp"]
      312 SETLIST                          R24 R25 1 [1]
      314 SETTABLEKS                       R24 R23 K66 ["Dependencies"]
      316 DUPTABLE                         R24 K67 [{"Name", "Editable", "Dependencies"}]
      317 LOADK                            R25 K69 ["WorldUp"]
      318 SETTABLEKS                       R25 R24 K31 ["Name"]
      320 LOADB                            R25 1
      321 SETTABLEKS                       R25 R24 K32 ["Editable"]
      323 NEWTABLE                         R25 0 1
      325 LOADK                            R26 K68 ["WorldForward"]
      326 SETLIST                          R25 R26 1 [1]
      328 SETTABLEKS                       R25 R24 K66 ["Dependencies"]
      330 SETLIST                          R22 R23 2 [1]
      332 SETTABLEKS                       R22 R21 K10 ["Properties"]
      334 DUPTABLE                         R22 K29 [{"Section", "Properties"}]
      335 LOADK                            R23 K70 ["FileGeometry"]
      336 SETTABLEKS                       R23 R22 K28 ["Section"]
      338 NEWTABLE                         R23 0 5
      340 DUPTABLE                         R24 K33 [{"Name", "Editable"}]
      341 LOADK                            R25 K71 ["ScaleUnit"]
      342 SETTABLEKS                       R25 R24 K31 ["Name"]
      344 LOADB                            R25 1
      345 SETTABLEKS                       R25 R24 K32 ["Editable"]
      347 DUPTABLE                         R25 K67 [{"Name", "Editable", "Dependencies"}]
      348 LOADK                            R26 K72 ["FileDimensions"]
      349 SETTABLEKS                       R26 R25 K31 ["Name"]
      351 LOADB                            R26 0
      352 SETTABLEKS                       R26 R25 K32 ["Editable"]
      354 NEWTABLE                         R26 0 1
      356 LOADK                            R27 K71 ["ScaleUnit"]
      357 SETLIST                          R26 R27 1 [1]
      359 SETTABLEKS                       R26 R25 K66 ["Dependencies"]
      361 DUPTABLE                         R26 K33 [{"Name", "Editable"}]
      362 LOADK                            R27 K73 ["PolygonCount"]
      363 SETTABLEKS                       R27 R26 K31 ["Name"]
      365 LOADB                            R27 0
      366 SETTABLEKS                       R27 R26 K32 ["Editable"]
      368 DUPTABLE                         R27 K38 [{"Name", "Editable", "ShouldHide"}]
      369 LOADK                            R28 K74 ["MergeMeshes"]
      370 SETTABLEKS                       R28 R27 K31 ["Name"]
      372 LOADB                            R28 1
      373 SETTABLEKS                       R28 R27 K32 ["Editable"]
      375 SETTABLEKS                       R16 R27 K37 ["ShouldHide"]
      377 DUPTABLE                         R28 K33 [{"Name", "Editable"}]
      378 LOADK                            R29 K75 ["InvertNegativeFaces"]
      379 SETTABLEKS                       R29 R28 K31 ["Name"]
      381 LOADB                            R29 1
      382 SETTABLEKS                       R29 R28 K32 ["Editable"]
      384 SETLIST                          R23 R24 5 [1]
      386 SETTABLEKS                       R23 R22 K10 ["Properties"]
      388 SETLIST                          R17 R18 5 [1]
      390 RETURN                           R17 1
