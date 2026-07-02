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
       75 DUPTABLE                         R15 K26 [{["Section"] = "FileGeneral", ["Properties"]}]
       76 NEWTABLE                         R16 0 12
       78 DUPTABLE                         R17 K31 [{["Name"] = "ImportName", ["Editable"] = True}]
       79 DUPTABLE                         R18 K33 [{["Name"] = "ImportAsModelAsset", ["Editable"] = True}]
       80 DUPTABLE                         R19 K35 [{["Name"] = "AddModelToInventory", ["Editable"] = True}]
       81 DUPTABLE                         R20 K38 [{["Name"] = "ImportAsPackage", ["Editable"] = True, ["ShouldHide"]}]
       82 SETTABLEKS                       R11 R20 K37 ["ShouldHide"]
       84 DUPTABLE                         R21 K41 [{["Name"] = "ExistingPackageId", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       85 SETTABLEKS                       R1 R21 K40 ["ComponentFactory"]
       87 SETTABLEKS                       R10 R21 K37 ["ShouldHide"]
       89 DUPTABLE                         R22 K43 [{["Name"] = "PreferredUploadId", ["Editable"] = True, ["ComponentFactory"]}]
       90 SETTABLEKS                       R3 R22 K40 ["ComponentFactory"]
       92 DUPTABLE                         R23 K45 [{["Name"] = "InsertInWorkspace", ["Editable"] = True}]
       93 DUPTABLE                         R24 K47 [{["Name"] = "InsertWithScenePosition", ["Editable"] = True, ["ShouldHide"]}]
       94 SETTABLEKS                       R9 R24 K37 ["ShouldHide"]
       96 DUPTABLE                         R25 K49 [{["Name"] = "KeepZeroInfluenceBones", ["Editable"] = True}]
       97 DUPTABLE                         R26 K51 [{["Name"] = "UseSceneOriginAsPivot", ["Editable"] = True}]
       98 DUPTABLE                         R27 K53 [{["Name"] = "Anchored", ["Editable"] = True}]
       99 DUPTABLE                         R28 K55 [{["Name"] = "UsesCages", ["Editable"] = True}]
      100 SETLIST                          R16 R17 12 [1]
      102 SETTABLEKS                       R16 R15 K8 ["Properties"]
      104 DUPTABLE                         R16 K57 [{["Section"] = "RigGeneral", ["Properties"]}]
      105 NEWTABLE                         R17 0 3
      107 DUPTABLE                         R18 K59 [{["Name"] = "RigType", ["Editable"] = True}]
      108 DUPTABLE                         R19 K61 [{["Name"] = "RigScale", ["Editable"] = True, ["ShouldHide"]}]
      109 SETTABLEKS                       R8 R19 K37 ["ShouldHide"]
      111 MOVE                             R21 R4
      112 CALL                             R21 0 1
      113 JUMPIFNOT                        R21 ; [+4]
      114 DUPTABLE                         R20 K63 [{["Name"] = "PhysicalConstraintType", ["Editable"] = True, ["ShouldHide"]}]
      115 SETTABLEKS                       R8 R20 K37 ["ShouldHide"]
      117 JUMPIF                           R20 ; [+1]
      118 LOADNIL                          R20
      119 SETLIST                          R17 R18 3 [1]
      121 SETTABLEKS                       R17 R16 K8 ["Properties"]
      123 DUPTABLE                         R17 K65 [{["Section"] = "AnimationGeneral", ["Properties"]}]
      124 NEWTABLE                         R18 0 2
      126 DUPTABLE                         R19 K67 [{["Name"] = "RestPose", ["Editable"] = True, ["ShouldHide"]}]
      127 SETTABLEKS                       R6 R19 K37 ["ShouldHide"]
      129 DUPTABLE                         R20 K69 [{["Name"] = "AnimationIdForRestPose", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
      130 SETTABLEKS                       R2 R20 K40 ["ComponentFactory"]
      132 SETTABLEKS                       R7 R20 K37 ["ShouldHide"]
      134 SETLIST                          R18 R19 2 [1]
      136 SETTABLEKS                       R18 R17 K8 ["Properties"]
      138 DUPTABLE                         R18 K71 [{["Section"] = "FileTransform", ["Properties"]}]
      139 NEWTABLE                         R19 0 2
      141 DUPTABLE                         R20 K74 [{["Name"] = "WorldForward", ["Editable"] = True, ["Dependencies"]}]
      142 NEWTABLE                         R21 0 1
      144 LOADK                            R22 K75 ["WorldUp"]
      145 SETLIST                          R21 R22 1 [1]
      147 SETTABLEKS                       R21 R20 K73 ["Dependencies"]
      149 DUPTABLE                         R21 K76 [{["Name"] = "WorldUp", ["Editable"] = True, ["Dependencies"]}]
      150 NEWTABLE                         R22 0 1
      152 LOADK                            R23 K72 ["WorldForward"]
      153 SETLIST                          R22 R23 1 [1]
      155 SETTABLEKS                       R22 R21 K73 ["Dependencies"]
      157 SETLIST                          R19 R20 2 [1]
      159 SETTABLEKS                       R19 R18 K8 ["Properties"]
      161 DUPTABLE                         R19 K78 [{["Section"] = "FileGeometry", ["Properties"]}]
      162 NEWTABLE                         R20 0 6
      164 DUPTABLE                         R21 K80 [{["Name"] = "ScaleUnit", ["Editable"] = True}]
      165 DUPTABLE                         R22 K82 [{["Name"] = "ScaleFactor", ["Editable"] = True, ["ShouldHide"]}]
      166 SETTABLEKS                       R12 R22 K37 ["ShouldHide"]
      168 DUPTABLE                         R23 K85 [{["Name"] = "FileDimensions", ["Editable"] = False, ["Dependencies"]}]
      169 NEWTABLE                         R24 0 2
      171 LOADK                            R25 K79 ["ScaleUnit"]
      172 LOADK                            R26 K81 ["ScaleFactor"]
      173 SETLIST                          R24 R25 2 [1]
      175 SETTABLEKS                       R24 R23 K73 ["Dependencies"]
      177 DUPTABLE                         R24 K87 [{["Name"] = "PolygonCount", ["Editable"] = False}]
      178 DUPTABLE                         R25 K89 [{["Name"] = "MergeMeshes", ["Editable"] = True, ["ShouldHide"]}]
      179 SETTABLEKS                       R13 R25 K37 ["ShouldHide"]
      181 DUPTABLE                         R26 K91 [{["Name"] = "InvertNegativeFaces", ["Editable"] = True}]
      182 SETLIST                          R20 R21 6 [1]
      184 SETTABLEKS                       R20 R19 K8 ["Properties"]
      186 SETLIST                          R14 R15 5 [1]
      188 RETURN                           R14 1
