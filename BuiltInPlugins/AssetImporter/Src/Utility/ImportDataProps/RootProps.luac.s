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
       64 DUPCLOSURE                       R6 K17 [PROTO_0]
       65 DUPCLOSURE                       R7 K18 [PROTO_1]
       66 DUPCLOSURE                       R8 K19 [PROTO_2]
       67 DUPCLOSURE                       R9 K20 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 DUPCLOSURE                       R10 K21 [PROTO_4]
       70 DUPCLOSURE                       R11 K22 [PROTO_5]
       71 DUPCLOSURE                       R12 K23 [PROTO_6]
       72 DUPCLOSURE                       R13 K24 [PROTO_7]
       73 CAPTURE                          VAL R1
       74 DUPCLOSURE                       R14 K25 [PROTO_8]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R15 K26 [PROTO_9]
       78 NEWTABLE                         R16 0 5
       80 DUPTABLE                         R17 K28 [{"Section", "Properties"}]
       81 LOADK                            R18 K29 ["FileGeneral"]
       82 SETTABLEKS                       R18 R17 K27 ["Section"]
       84 NEWTABLE                         R18 0 12
       86 DUPTABLE                         R19 K32 [{"Name", "Editable"}]
       87 LOADK                            R20 K33 ["ImportName"]
       88 SETTABLEKS                       R20 R19 K30 ["Name"]
       90 LOADB                            R20 1
       91 SETTABLEKS                       R20 R19 K31 ["Editable"]
       93 DUPTABLE                         R20 K32 [{"Name", "Editable"}]
       94 LOADK                            R21 K34 ["ImportAsModelAsset"]
       95 SETTABLEKS                       R21 R20 K30 ["Name"]
       97 LOADB                            R21 1
       98 SETTABLEKS                       R21 R20 K31 ["Editable"]
      100 DUPTABLE                         R21 K32 [{"Name", "Editable"}]
      101 LOADK                            R22 K35 ["AddModelToInventory"]
      102 SETTABLEKS                       R22 R21 K30 ["Name"]
      104 LOADB                            R22 1
      105 SETTABLEKS                       R22 R21 K31 ["Editable"]
      107 DUPTABLE                         R22 K37 [{"Name", "Editable", "ShouldHide"}]
      108 LOADK                            R23 K38 ["ImportAsPackage"]
      109 SETTABLEKS                       R23 R22 K30 ["Name"]
      111 LOADB                            R23 1
      112 SETTABLEKS                       R23 R22 K31 ["Editable"]
      114 SETTABLEKS                       R12 R22 K36 ["ShouldHide"]
      116 DUPTABLE                         R23 K40 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      117 LOADK                            R24 K41 ["ExistingPackageId"]
      118 SETTABLEKS                       R24 R23 K30 ["Name"]
      120 LOADB                            R24 1
      121 SETTABLEKS                       R24 R23 K31 ["Editable"]
      123 SETTABLEKS                       R2 R23 K39 ["ComponentFactory"]
      125 SETTABLEKS                       R11 R23 K36 ["ShouldHide"]
      127 DUPTABLE                         R24 K42 [{"Name", "Editable", "ComponentFactory"}]
      128 LOADK                            R25 K43 ["PreferredUploadId"]
      129 SETTABLEKS                       R25 R24 K30 ["Name"]
      131 LOADB                            R25 1
      132 SETTABLEKS                       R25 R24 K31 ["Editable"]
      134 SETTABLEKS                       R4 R24 K39 ["ComponentFactory"]
      136 DUPTABLE                         R25 K32 [{"Name", "Editable"}]
      137 LOADK                            R26 K44 ["InsertInWorkspace"]
      138 SETTABLEKS                       R26 R25 K30 ["Name"]
      140 LOADB                            R26 1
      141 SETTABLEKS                       R26 R25 K31 ["Editable"]
      143 DUPTABLE                         R26 K37 [{"Name", "Editable", "ShouldHide"}]
      144 LOADK                            R27 K45 ["InsertWithScenePosition"]
      145 SETTABLEKS                       R27 R26 K30 ["Name"]
      147 LOADB                            R27 1
      148 SETTABLEKS                       R27 R26 K31 ["Editable"]
      150 SETTABLEKS                       R10 R26 K36 ["ShouldHide"]
      152 DUPTABLE                         R27 K32 [{"Name", "Editable"}]
      153 LOADK                            R28 K46 ["KeepZeroInfluenceBones"]
      154 SETTABLEKS                       R28 R27 K30 ["Name"]
      156 LOADB                            R28 1
      157 SETTABLEKS                       R28 R27 K31 ["Editable"]
      159 DUPTABLE                         R28 K32 [{"Name", "Editable"}]
      160 LOADK                            R29 K47 ["UseSceneOriginAsPivot"]
      161 SETTABLEKS                       R29 R28 K30 ["Name"]
      163 LOADB                            R29 1
      164 SETTABLEKS                       R29 R28 K31 ["Editable"]
      166 DUPTABLE                         R29 K32 [{"Name", "Editable"}]
      167 LOADK                            R30 K48 ["Anchored"]
      168 SETTABLEKS                       R30 R29 K30 ["Name"]
      170 LOADB                            R30 1
      171 SETTABLEKS                       R30 R29 K31 ["Editable"]
      173 DUPTABLE                         R30 K32 [{"Name", "Editable"}]
      174 LOADK                            R31 K49 ["UsesCages"]
      175 SETTABLEKS                       R31 R30 K30 ["Name"]
      177 LOADB                            R31 1
      178 SETTABLEKS                       R31 R30 K31 ["Editable"]
      180 SETLIST                          R18 R19 12 [1]
      182 SETTABLEKS                       R18 R17 K10 ["Properties"]
      184 DUPTABLE                         R18 K51 [{"Section", "Properties", "Callouts"}]
      185 LOADK                            R19 K52 ["RigGeneral"]
      186 SETTABLEKS                       R19 R18 K27 ["Section"]
      188 NEWTABLE                         R19 0 3
      190 DUPTABLE                         R20 K32 [{"Name", "Editable"}]
      191 LOADK                            R21 K53 ["RigType"]
      192 SETTABLEKS                       R21 R20 K30 ["Name"]
      194 LOADB                            R21 1
      195 SETTABLEKS                       R21 R20 K31 ["Editable"]
      197 DUPTABLE                         R21 K54 [{"Name", "Editable", "ShouldHide", "Callouts"}]
      198 LOADK                            R22 K55 ["ValidateUgcBody"]
      199 SETTABLEKS                       R22 R21 K30 ["Name"]
      201 LOADB                            R22 1
      202 SETTABLEKS                       R22 R21 K31 ["Editable"]
      204 SETTABLEKS                       R9 R21 K36 ["ShouldHide"]
      206 NEWTABLE                         R22 0 1
      208 DUPTABLE                         R23 K57 [{"Name", "ShouldShow"}]
      209 LOADK                            R24 K58 ["OpenAvatarPreviewCallout"]
      210 SETTABLEKS                       R24 R23 K30 ["Name"]
      212 SETTABLEKS                       R14 R23 K56 ["ShouldShow"]
      214 SETLIST                          R22 R23 1 [1]
      216 SETTABLEKS                       R22 R21 K50 ["Callouts"]
      218 DUPTABLE                         R22 K37 [{"Name", "Editable", "ShouldHide"}]
      219 LOADK                            R23 K59 ["RigScale"]
      220 SETTABLEKS                       R23 R22 K30 ["Name"]
      222 LOADB                            R23 1
      223 SETTABLEKS                       R23 R22 K31 ["Editable"]
      225 SETTABLEKS                       R8 R22 K36 ["ShouldHide"]
      227 SETLIST                          R19 R20 3 [1]
      229 SETTABLEKS                       R19 R18 K10 ["Properties"]
      231 NEWTABLE                         R19 0 1
      233 DUPTABLE                         R20 K57 [{"Name", "ShouldShow"}]
      234 LOADK                            R21 K58 ["OpenAvatarPreviewCallout"]
      235 SETTABLEKS                       R21 R20 K30 ["Name"]
      237 SETTABLEKS                       R14 R20 K56 ["ShouldShow"]
      239 SETLIST                          R19 R20 1 [1]
      241 SETTABLEKS                       R19 R18 K50 ["Callouts"]
      243 DUPTABLE                         R19 K28 [{"Section", "Properties"}]
      244 LOADK                            R20 K60 ["AnimationGeneral"]
      245 SETTABLEKS                       R20 R19 K27 ["Section"]
      247 NEWTABLE                         R20 0 2
      249 DUPTABLE                         R21 K37 [{"Name", "Editable", "ShouldHide"}]
      250 LOADK                            R22 K61 ["RestPose"]
      251 SETTABLEKS                       R22 R21 K30 ["Name"]
      253 LOADB                            R22 1
      254 SETTABLEKS                       R22 R21 K31 ["Editable"]
      256 SETTABLEKS                       R6 R21 K36 ["ShouldHide"]
      258 DUPTABLE                         R22 K40 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      259 LOADK                            R23 K62 ["AnimationIdForRestPose"]
      260 SETTABLEKS                       R23 R22 K30 ["Name"]
      262 LOADB                            R23 1
      263 SETTABLEKS                       R23 R22 K31 ["Editable"]
      265 SETTABLEKS                       R3 R22 K39 ["ComponentFactory"]
      267 SETTABLEKS                       R7 R22 K36 ["ShouldHide"]
      269 SETLIST                          R20 R21 2 [1]
      271 SETTABLEKS                       R20 R19 K10 ["Properties"]
      273 DUPTABLE                         R20 K28 [{"Section", "Properties"}]
      274 LOADK                            R21 K63 ["FileTransform"]
      275 SETTABLEKS                       R21 R20 K27 ["Section"]
      277 NEWTABLE                         R21 0 2
      279 DUPTABLE                         R22 K65 [{"Name", "Editable", "Dependencies"}]
      280 LOADK                            R23 K66 ["WorldForward"]
      281 SETTABLEKS                       R23 R22 K30 ["Name"]
      283 LOADB                            R23 1
      284 SETTABLEKS                       R23 R22 K31 ["Editable"]
      286 NEWTABLE                         R23 0 1
      288 LOADK                            R24 K67 ["WorldUp"]
      289 SETLIST                          R23 R24 1 [1]
      291 SETTABLEKS                       R23 R22 K64 ["Dependencies"]
      293 DUPTABLE                         R23 K65 [{"Name", "Editable", "Dependencies"}]
      294 LOADK                            R24 K67 ["WorldUp"]
      295 SETTABLEKS                       R24 R23 K30 ["Name"]
      297 LOADB                            R24 1
      298 SETTABLEKS                       R24 R23 K31 ["Editable"]
      300 NEWTABLE                         R24 0 1
      302 LOADK                            R25 K66 ["WorldForward"]
      303 SETLIST                          R24 R25 1 [1]
      305 SETTABLEKS                       R24 R23 K64 ["Dependencies"]
      307 SETLIST                          R21 R22 2 [1]
      309 SETTABLEKS                       R21 R20 K10 ["Properties"]
      311 DUPTABLE                         R21 K28 [{"Section", "Properties"}]
      312 LOADK                            R22 K68 ["FileGeometry"]
      313 SETTABLEKS                       R22 R21 K27 ["Section"]
      315 NEWTABLE                         R22 0 5
      317 DUPTABLE                         R23 K32 [{"Name", "Editable"}]
      318 LOADK                            R24 K69 ["ScaleUnit"]
      319 SETTABLEKS                       R24 R23 K30 ["Name"]
      321 LOADB                            R24 1
      322 SETTABLEKS                       R24 R23 K31 ["Editable"]
      324 DUPTABLE                         R24 K65 [{"Name", "Editable", "Dependencies"}]
      325 LOADK                            R25 K70 ["FileDimensions"]
      326 SETTABLEKS                       R25 R24 K30 ["Name"]
      328 LOADB                            R25 0
      329 SETTABLEKS                       R25 R24 K31 ["Editable"]
      331 NEWTABLE                         R25 0 1
      333 LOADK                            R26 K69 ["ScaleUnit"]
      334 SETLIST                          R25 R26 1 [1]
      336 SETTABLEKS                       R25 R24 K64 ["Dependencies"]
      338 DUPTABLE                         R25 K32 [{"Name", "Editable"}]
      339 LOADK                            R26 K71 ["PolygonCount"]
      340 SETTABLEKS                       R26 R25 K30 ["Name"]
      342 LOADB                            R26 0
      343 SETTABLEKS                       R26 R25 K31 ["Editable"]
      345 DUPTABLE                         R26 K37 [{"Name", "Editable", "ShouldHide"}]
      346 LOADK                            R27 K72 ["MergeMeshes"]
      347 SETTABLEKS                       R27 R26 K30 ["Name"]
      349 LOADB                            R27 1
      350 SETTABLEKS                       R27 R26 K31 ["Editable"]
      352 SETTABLEKS                       R15 R26 K36 ["ShouldHide"]
      354 DUPTABLE                         R27 K32 [{"Name", "Editable"}]
      355 LOADK                            R28 K73 ["InvertNegativeFaces"]
      356 SETTABLEKS                       R28 R27 K30 ["Name"]
      358 LOADB                            R28 1
      359 SETTABLEKS                       R28 R27 K31 ["Editable"]
      361 SETLIST                          R22 R23 5 [1]
      363 SETTABLEKS                       R22 R21 K10 ["Properties"]
      365 SETLIST                          R16 R17 5 [1]
      367 RETURN                           R16 1
