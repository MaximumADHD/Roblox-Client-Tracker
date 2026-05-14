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
        0 GETTABLEKS                       R2 R0 K0 ["InsertInWorkspace"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["AddModelToInventory"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["ImportAsPackage"]
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["AddModelToInventory"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NOT                              R0 R1
        3 RETURN                           R0 1

PROTO_7:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Properties"]
       15 GETTABLEKS                       R2 R2 K9 ["Types"]
       17 GETTABLEKS                       R2 R2 K10 ["AssetIdProperty"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Components"]
       26 GETTABLEKS                       R3 R3 K8 ["Properties"]
       28 GETTABLEKS                       R3 R3 K9 ["Types"]
       30 GETTABLEKS                       R3 R3 K11 ["AnimationListProperty"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K7 ["Components"]
       39 GETTABLEKS                       R4 R4 K8 ["Properties"]
       41 GETTABLEKS                       R4 R4 K9 ["Types"]
       43 GETTABLEKS                       R4 R4 K12 ["UploadDestinationProperty"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R5 R0 K6 ["Src"]
       50 GETTABLEKS                       R5 R5 K13 ["Flags"]
       52 GETTABLEKS                       R5 R5 K14 ["getFFlagAllowUserToSelectPhysicalConstraintTypeForR15"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K13 ["Flags"]
       61 GETTABLEKS                       R6 R6 K15 ["getDFFlagMeshImporterEnableCustomScaleFactor"]
       63 CALL                             R5 1 1
       64 DUPCLOSURE                       R6 K16 [PROTO_0]
       65 DUPCLOSURE                       R7 K17 [PROTO_1]
       66 DUPCLOSURE                       R8 K18 [PROTO_2]
       67 DUPCLOSURE                       R9 K19 [PROTO_3]
       68 DUPCLOSURE                       R10 K20 [PROTO_4]
       69 DUPCLOSURE                       R11 K21 [PROTO_5]
       70 DUPCLOSURE                       R12 K22 [PROTO_6]
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R13 K23 [PROTO_7]
       73 NEWTABLE                         R14 0 5
       75 DUPTABLE                         R15 K25 [{"Section", "Properties"}]
       76 LOADK                            R16 K26 ["FileGeneral"]
       77 SETTABLEKS                       R16 R15 K24 ["Section"]
       79 NEWTABLE                         R16 0 12
       81 DUPTABLE                         R17 K29 [{"Name", "Editable"}]
       82 LOADK                            R18 K30 ["ImportName"]
       83 SETTABLEKS                       R18 R17 K27 ["Name"]
       85 LOADB                            R18 1
       86 SETTABLEKS                       R18 R17 K28 ["Editable"]
       88 DUPTABLE                         R18 K29 [{"Name", "Editable"}]
       89 LOADK                            R19 K31 ["ImportAsModelAsset"]
       90 SETTABLEKS                       R19 R18 K27 ["Name"]
       92 LOADB                            R19 1
       93 SETTABLEKS                       R19 R18 K28 ["Editable"]
       95 DUPTABLE                         R19 K29 [{"Name", "Editable"}]
       96 LOADK                            R20 K32 ["AddModelToInventory"]
       97 SETTABLEKS                       R20 R19 K27 ["Name"]
       99 LOADB                            R20 1
      100 SETTABLEKS                       R20 R19 K28 ["Editable"]
      102 DUPTABLE                         R20 K34 [{"Name", "Editable", "ShouldHide"}]
      103 LOADK                            R21 K35 ["ImportAsPackage"]
      104 SETTABLEKS                       R21 R20 K27 ["Name"]
      106 LOADB                            R21 1
      107 SETTABLEKS                       R21 R20 K28 ["Editable"]
      109 SETTABLEKS                       R11 R20 K33 ["ShouldHide"]
      111 DUPTABLE                         R21 K37 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      112 LOADK                            R22 K38 ["ExistingPackageId"]
      113 SETTABLEKS                       R22 R21 K27 ["Name"]
      115 LOADB                            R22 1
      116 SETTABLEKS                       R22 R21 K28 ["Editable"]
      118 SETTABLEKS                       R1 R21 K36 ["ComponentFactory"]
      120 SETTABLEKS                       R10 R21 K33 ["ShouldHide"]
      122 DUPTABLE                         R22 K39 [{"Name", "Editable", "ComponentFactory"}]
      123 LOADK                            R23 K40 ["PreferredUploadId"]
      124 SETTABLEKS                       R23 R22 K27 ["Name"]
      126 LOADB                            R23 1
      127 SETTABLEKS                       R23 R22 K28 ["Editable"]
      129 SETTABLEKS                       R3 R22 K36 ["ComponentFactory"]
      131 DUPTABLE                         R23 K29 [{"Name", "Editable"}]
      132 LOADK                            R24 K41 ["InsertInWorkspace"]
      133 SETTABLEKS                       R24 R23 K27 ["Name"]
      135 LOADB                            R24 1
      136 SETTABLEKS                       R24 R23 K28 ["Editable"]
      138 DUPTABLE                         R24 K34 [{"Name", "Editable", "ShouldHide"}]
      139 LOADK                            R25 K42 ["InsertWithScenePosition"]
      140 SETTABLEKS                       R25 R24 K27 ["Name"]
      142 LOADB                            R25 1
      143 SETTABLEKS                       R25 R24 K28 ["Editable"]
      145 SETTABLEKS                       R9 R24 K33 ["ShouldHide"]
      147 DUPTABLE                         R25 K29 [{"Name", "Editable"}]
      148 LOADK                            R26 K43 ["KeepZeroInfluenceBones"]
      149 SETTABLEKS                       R26 R25 K27 ["Name"]
      151 LOADB                            R26 1
      152 SETTABLEKS                       R26 R25 K28 ["Editable"]
      154 DUPTABLE                         R26 K29 [{"Name", "Editable"}]
      155 LOADK                            R27 K44 ["UseSceneOriginAsPivot"]
      156 SETTABLEKS                       R27 R26 K27 ["Name"]
      158 LOADB                            R27 1
      159 SETTABLEKS                       R27 R26 K28 ["Editable"]
      161 DUPTABLE                         R27 K29 [{"Name", "Editable"}]
      162 LOADK                            R28 K45 ["Anchored"]
      163 SETTABLEKS                       R28 R27 K27 ["Name"]
      165 LOADB                            R28 1
      166 SETTABLEKS                       R28 R27 K28 ["Editable"]
      168 DUPTABLE                         R28 K29 [{"Name", "Editable"}]
      169 LOADK                            R29 K46 ["UsesCages"]
      170 SETTABLEKS                       R29 R28 K27 ["Name"]
      172 LOADB                            R29 1
      173 SETTABLEKS                       R29 R28 K28 ["Editable"]
      175 SETLIST                          R16 R17 12 [1]
      177 SETTABLEKS                       R16 R15 K8 ["Properties"]
      179 DUPTABLE                         R16 K25 [{"Section", "Properties"}]
      180 LOADK                            R17 K47 ["RigGeneral"]
      181 SETTABLEKS                       R17 R16 K24 ["Section"]
      183 NEWTABLE                         R17 0 3
      185 DUPTABLE                         R18 K29 [{"Name", "Editable"}]
      186 LOADK                            R19 K48 ["RigType"]
      187 SETTABLEKS                       R19 R18 K27 ["Name"]
      189 LOADB                            R19 1
      190 SETTABLEKS                       R19 R18 K28 ["Editable"]
      192 DUPTABLE                         R19 K34 [{"Name", "Editable", "ShouldHide"}]
      193 LOADK                            R20 K49 ["RigScale"]
      194 SETTABLEKS                       R20 R19 K27 ["Name"]
      196 LOADB                            R20 1
      197 SETTABLEKS                       R20 R19 K28 ["Editable"]
      199 SETTABLEKS                       R8 R19 K33 ["ShouldHide"]
      201 MOVE                             R21 R4
      202 CALL                             R21 0 1
      203 JUMPIFNOT                        R21 ; [+10]
      204 DUPTABLE                         R20 K34 [{"Name", "Editable", "ShouldHide"}]
      205 LOADK                            R21 K50 ["PhysicalConstraintType"]
      206 SETTABLEKS                       R21 R20 K27 ["Name"]
      208 LOADB                            R21 1
      209 SETTABLEKS                       R21 R20 K28 ["Editable"]
      211 SETTABLEKS                       R8 R20 K33 ["ShouldHide"]
      213 JUMPIF                           R20 ; [+1]
      214 LOADNIL                          R20
      215 SETLIST                          R17 R18 3 [1]
      217 SETTABLEKS                       R17 R16 K8 ["Properties"]
      219 DUPTABLE                         R17 K25 [{"Section", "Properties"}]
      220 LOADK                            R18 K51 ["AnimationGeneral"]
      221 SETTABLEKS                       R18 R17 K24 ["Section"]
      223 NEWTABLE                         R18 0 2
      225 DUPTABLE                         R19 K34 [{"Name", "Editable", "ShouldHide"}]
      226 LOADK                            R20 K52 ["RestPose"]
      227 SETTABLEKS                       R20 R19 K27 ["Name"]
      229 LOADB                            R20 1
      230 SETTABLEKS                       R20 R19 K28 ["Editable"]
      232 SETTABLEKS                       R6 R19 K33 ["ShouldHide"]
      234 DUPTABLE                         R20 K37 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      235 LOADK                            R21 K53 ["AnimationIdForRestPose"]
      236 SETTABLEKS                       R21 R20 K27 ["Name"]
      238 LOADB                            R21 1
      239 SETTABLEKS                       R21 R20 K28 ["Editable"]
      241 SETTABLEKS                       R2 R20 K36 ["ComponentFactory"]
      243 SETTABLEKS                       R7 R20 K33 ["ShouldHide"]
      245 SETLIST                          R18 R19 2 [1]
      247 SETTABLEKS                       R18 R17 K8 ["Properties"]
      249 DUPTABLE                         R18 K25 [{"Section", "Properties"}]
      250 LOADK                            R19 K54 ["FileTransform"]
      251 SETTABLEKS                       R19 R18 K24 ["Section"]
      253 NEWTABLE                         R19 0 2
      255 DUPTABLE                         R20 K56 [{"Name", "Editable", "Dependencies"}]
      256 LOADK                            R21 K57 ["WorldForward"]
      257 SETTABLEKS                       R21 R20 K27 ["Name"]
      259 LOADB                            R21 1
      260 SETTABLEKS                       R21 R20 K28 ["Editable"]
      262 NEWTABLE                         R21 0 1
      264 LOADK                            R22 K58 ["WorldUp"]
      265 SETLIST                          R21 R22 1 [1]
      267 SETTABLEKS                       R21 R20 K55 ["Dependencies"]
      269 DUPTABLE                         R21 K56 [{"Name", "Editable", "Dependencies"}]
      270 LOADK                            R22 K58 ["WorldUp"]
      271 SETTABLEKS                       R22 R21 K27 ["Name"]
      273 LOADB                            R22 1
      274 SETTABLEKS                       R22 R21 K28 ["Editable"]
      276 NEWTABLE                         R22 0 1
      278 LOADK                            R23 K57 ["WorldForward"]
      279 SETLIST                          R22 R23 1 [1]
      281 SETTABLEKS                       R22 R21 K55 ["Dependencies"]
      283 SETLIST                          R19 R20 2 [1]
      285 SETTABLEKS                       R19 R18 K8 ["Properties"]
      287 DUPTABLE                         R19 K25 [{"Section", "Properties"}]
      288 LOADK                            R20 K59 ["FileGeometry"]
      289 SETTABLEKS                       R20 R19 K24 ["Section"]
      291 NEWTABLE                         R20 0 6
      293 DUPTABLE                         R21 K29 [{"Name", "Editable"}]
      294 LOADK                            R22 K60 ["ScaleUnit"]
      295 SETTABLEKS                       R22 R21 K27 ["Name"]
      297 LOADB                            R22 1
      298 SETTABLEKS                       R22 R21 K28 ["Editable"]
      300 DUPTABLE                         R22 K34 [{"Name", "Editable", "ShouldHide"}]
      301 LOADK                            R23 K61 ["ScaleFactor"]
      302 SETTABLEKS                       R23 R22 K27 ["Name"]
      304 LOADB                            R23 1
      305 SETTABLEKS                       R23 R22 K28 ["Editable"]
      307 SETTABLEKS                       R12 R22 K33 ["ShouldHide"]
      309 DUPTABLE                         R23 K56 [{"Name", "Editable", "Dependencies"}]
      310 LOADK                            R24 K62 ["FileDimensions"]
      311 SETTABLEKS                       R24 R23 K27 ["Name"]
      313 LOADB                            R24 0
      314 SETTABLEKS                       R24 R23 K28 ["Editable"]
      316 NEWTABLE                         R24 0 2
      318 LOADK                            R25 K60 ["ScaleUnit"]
      319 LOADK                            R26 K61 ["ScaleFactor"]
      320 SETLIST                          R24 R25 2 [1]
      322 SETTABLEKS                       R24 R23 K55 ["Dependencies"]
      324 DUPTABLE                         R24 K29 [{"Name", "Editable"}]
      325 LOADK                            R25 K63 ["PolygonCount"]
      326 SETTABLEKS                       R25 R24 K27 ["Name"]
      328 LOADB                            R25 0
      329 SETTABLEKS                       R25 R24 K28 ["Editable"]
      331 DUPTABLE                         R25 K34 [{"Name", "Editable", "ShouldHide"}]
      332 LOADK                            R26 K64 ["MergeMeshes"]
      333 SETTABLEKS                       R26 R25 K27 ["Name"]
      335 LOADB                            R26 1
      336 SETTABLEKS                       R26 R25 K28 ["Editable"]
      338 SETTABLEKS                       R13 R25 K33 ["ShouldHide"]
      340 DUPTABLE                         R26 K29 [{"Name", "Editable"}]
      341 LOADK                            R27 K65 ["InvertNegativeFaces"]
      342 SETTABLEKS                       R27 R26 K27 ["Name"]
      344 LOADB                            R27 1
      345 SETTABLEKS                       R27 R26 K28 ["Editable"]
      347 SETLIST                          R20 R21 6 [1]
      349 SETTABLEKS                       R20 R19 K8 ["Properties"]
      351 SETLIST                          R14 R15 5 [1]
      353 RETURN                           R14 1
