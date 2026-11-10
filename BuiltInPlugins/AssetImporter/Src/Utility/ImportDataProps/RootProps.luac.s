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
       55 DUPCLOSURE                       R5 K15 [PROTO_0]
       56 DUPCLOSURE                       R6 K16 [PROTO_1]
       57 DUPCLOSURE                       R7 K17 [PROTO_2]
       58 DUPCLOSURE                       R8 K18 [PROTO_3]
       59 DUPCLOSURE                       R9 K19 [PROTO_4]
       60 DUPCLOSURE                       R10 K20 [PROTO_5]
       61 DUPCLOSURE                       R11 K21 [PROTO_6]
       62 NEWTABLE                         R12 0 5
       64 DUPTABLE                         R13 K24 [{["Section"] = "FileGeneral", ["Properties"]}]
       65 NEWTABLE                         R14 0 12
       67 DUPTABLE                         R15 K29 [{["Name"] = "ImportName", ["Editable"] = True}]
       68 DUPTABLE                         R16 K31 [{["Name"] = "ImportAsModelAsset", ["Editable"] = True}]
       69 DUPTABLE                         R17 K33 [{["Name"] = "AddModelToInventory", ["Editable"] = True}]
       70 DUPTABLE                         R18 K36 [{["Name"] = "ImportAsPackage", ["Editable"] = True, ["ShouldHide"]}]
       71 SETTABLEKS                       R10 R18 K35 ["ShouldHide"]
       73 DUPTABLE                         R19 K39 [{["Name"] = "ExistingPackageId", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       74 SETTABLEKS                       R1 R19 K38 ["ComponentFactory"]
       76 SETTABLEKS                       R9 R19 K35 ["ShouldHide"]
       78 DUPTABLE                         R20 K41 [{["Name"] = "PreferredUploadId", ["Editable"] = True, ["ComponentFactory"]}]
       79 SETTABLEKS                       R3 R20 K38 ["ComponentFactory"]
       81 DUPTABLE                         R21 K43 [{["Name"] = "InsertInWorkspace", ["Editable"] = True}]
       82 DUPTABLE                         R22 K45 [{["Name"] = "InsertWithScenePosition", ["Editable"] = True, ["ShouldHide"]}]
       83 SETTABLEKS                       R8 R22 K35 ["ShouldHide"]
       85 DUPTABLE                         R23 K47 [{["Name"] = "KeepZeroInfluenceBones", ["Editable"] = True}]
       86 DUPTABLE                         R24 K49 [{["Name"] = "UseSceneOriginAsPivot", ["Editable"] = True}]
       87 DUPTABLE                         R25 K51 [{["Name"] = "Anchored", ["Editable"] = True}]
       88 DUPTABLE                         R26 K53 [{["Name"] = "UsesCages", ["Editable"] = True}]
       89 SETLIST                          R14 R15 12 [1]
       91 SETTABLEKS                       R14 R13 K8 ["Properties"]
       93 DUPTABLE                         R14 K55 [{["Section"] = "RigGeneral", ["Properties"]}]
       94 NEWTABLE                         R15 0 3
       96 DUPTABLE                         R16 K57 [{["Name"] = "RigType", ["Editable"] = True}]
       97 DUPTABLE                         R17 K59 [{["Name"] = "RigScale", ["Editable"] = True, ["ShouldHide"]}]
       98 SETTABLEKS                       R7 R17 K35 ["ShouldHide"]
      100 MOVE                             R19 R4
      101 CALL                             R19 0 1
      102 JUMPIFNOT                        R19 ; [+4]
      103 DUPTABLE                         R18 K61 [{["Name"] = "PhysicalConstraintType", ["Editable"] = True, ["ShouldHide"]}]
      104 SETTABLEKS                       R7 R18 K35 ["ShouldHide"]
      106 JUMPIF                           R18 ; [+1]
      107 LOADNIL                          R18
      108 SETLIST                          R15 R16 3 [1]
      110 SETTABLEKS                       R15 R14 K8 ["Properties"]
      112 DUPTABLE                         R15 K63 [{["Section"] = "AnimationGeneral", ["Properties"]}]
      113 NEWTABLE                         R16 0 2
      115 DUPTABLE                         R17 K65 [{["Name"] = "RestPose", ["Editable"] = True, ["ShouldHide"]}]
      116 SETTABLEKS                       R5 R17 K35 ["ShouldHide"]
      118 DUPTABLE                         R18 K67 [{["Name"] = "AnimationIdForRestPose", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
      119 SETTABLEKS                       R2 R18 K38 ["ComponentFactory"]
      121 SETTABLEKS                       R6 R18 K35 ["ShouldHide"]
      123 SETLIST                          R16 R17 2 [1]
      125 SETTABLEKS                       R16 R15 K8 ["Properties"]
      127 DUPTABLE                         R16 K69 [{["Section"] = "FileTransform", ["Properties"]}]
      128 NEWTABLE                         R17 0 2
      130 DUPTABLE                         R18 K72 [{["Name"] = "WorldForward", ["Editable"] = True, ["Dependencies"]}]
      131 NEWTABLE                         R19 0 1
      133 LOADK                            R20 K73 ["WorldUp"]
      134 SETLIST                          R19 R20 1 [1]
      136 SETTABLEKS                       R19 R18 K71 ["Dependencies"]
      138 DUPTABLE                         R19 K74 [{["Name"] = "WorldUp", ["Editable"] = True, ["Dependencies"]}]
      139 NEWTABLE                         R20 0 1
      141 LOADK                            R21 K70 ["WorldForward"]
      142 SETLIST                          R20 R21 1 [1]
      144 SETTABLEKS                       R20 R19 K71 ["Dependencies"]
      146 SETLIST                          R17 R18 2 [1]
      148 SETTABLEKS                       R17 R16 K8 ["Properties"]
      150 DUPTABLE                         R17 K76 [{["Section"] = "FileGeometry", ["Properties"]}]
      151 NEWTABLE                         R18 0 6
      153 DUPTABLE                         R19 K78 [{["Name"] = "ScaleUnit", ["Editable"] = True}]
      154 DUPTABLE                         R20 K80 [{["Name"] = "ScaleFactor", ["Editable"] = True}]
      155 DUPTABLE                         R21 K83 [{["Name"] = "FileDimensions", ["Editable"] = False, ["Dependencies"]}]
      156 NEWTABLE                         R22 0 2
      158 LOADK                            R23 K77 ["ScaleUnit"]
      159 LOADK                            R24 K79 ["ScaleFactor"]
      160 SETLIST                          R22 R23 2 [1]
      162 SETTABLEKS                       R22 R21 K71 ["Dependencies"]
      164 DUPTABLE                         R22 K85 [{["Name"] = "PolygonCount", ["Editable"] = False}]
      165 DUPTABLE                         R23 K87 [{["Name"] = "MergeMeshes", ["Editable"] = True, ["ShouldHide"]}]
      166 SETTABLEKS                       R11 R23 K35 ["ShouldHide"]
      168 DUPTABLE                         R24 K89 [{["Name"] = "InvertNegativeFaces", ["Editable"] = True}]
      169 SETLIST                          R18 R19 6 [1]
      171 SETTABLEKS                       R18 R17 K8 ["Properties"]
      173 SETLIST                          R12 R13 5 [1]
      175 RETURN                           R12 1
