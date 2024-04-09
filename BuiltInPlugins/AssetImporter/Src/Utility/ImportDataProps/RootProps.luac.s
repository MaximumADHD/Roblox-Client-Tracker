PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K2 ["usesCustomRestPoseLua"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_2:
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_3:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  JUMPIF R2 [+4]
  NAMECALL R3 R1 K0 ["IsR15"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["InsertInWorkspace"]
  NOT R1 R2
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K1 ["ImportAsPackage"]
  NOT R1 R2
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["AddModelToInventory"]
  NOT R1 R2
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["RunningUnderCLI"]
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["RunningUnderCLI"]
  CALL R2 0 1
  NOT R1 R2
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["IsR15"]
  CALL R1 1 1
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  RETURN R1 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["ImportAsPackage"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utility"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Properties"]
  GETTABLEKS R4 R5 K11 ["Types"]
  GETTABLEKS R3 R4 K12 ["AssetIdProperty"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["Properties"]
  GETTABLEKS R5 R6 K11 ["Types"]
  GETTABLEKS R4 R5 K13 ["AnimationListProperty"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["Properties"]
  GETTABLEKS R6 R7 K11 ["Types"]
  GETTABLEKS R5 R6 K14 ["UploadDestinationProperty"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K15 ["Flags"]
  GETTABLEKS R6 R7 K16 ["getFFlagShowOffCenterOriginImporter"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["getFFlagChooseAnimationForRestPose"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K18 ["getFFlagHideAnimationSettingForGltf"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K15 ["Flags"]
  GETTABLEKS R9 R10 K19 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K15 ["Flags"]
  GETTABLEKS R10 R11 K20 ["getFFlagAssetImportUseUploadId"]
  CALL R9 1 1
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R12 K23 [PROTO_2]
  DUPCLOSURE R13 K24 [PROTO_3]
  CAPTURE VAL R8
  DUPCLOSURE R14 K25 [PROTO_4]
  DUPCLOSURE R15 K26 [PROTO_5]
  DUPCLOSURE R16 K27 [PROTO_6]
  DUPCLOSURE R17 K28 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R18 K29 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R19 K30 [PROTO_9]
  CAPTURE VAL R5
  DUPCLOSURE R20 K31 [PROTO_10]
  DUPCLOSURE R21 K32 [PROTO_11]
  CAPTURE VAL R9
  NEWTABLE R22 0 5
  DUPTABLE R23 K34 [{"Section", "Properties"}]
  LOADK R24 K35 ["FileGeneral"]
  SETTABLEKS R24 R23 K33 ["Section"]
  NEWTABLE R24 0 12
  DUPTABLE R25 K38 [{"Name", "Editable"}]
  LOADK R26 K39 ["ImportName"]
  SETTABLEKS R26 R25 K36 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K37 ["Editable"]
  DUPTABLE R26 K38 [{"Name", "Editable"}]
  LOADK R27 K40 ["ImportAsModelAsset"]
  SETTABLEKS R27 R26 K36 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K37 ["Editable"]
  DUPTABLE R27 K38 [{"Name", "Editable"}]
  LOADK R28 K41 ["AddModelToInventory"]
  SETTABLEKS R28 R27 K36 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  DUPTABLE R28 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R29 K44 ["ImportAsPackage"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  SETTABLEKS R16 R28 K42 ["ShouldHide"]
  DUPTABLE R29 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R30 K47 ["ExistingPackageId"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  SETTABLEKS R2 R29 K45 ["ComponentFactory"]
  SETTABLEKS R15 R29 K42 ["ShouldHide"]
  DUPTABLE R30 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R31 K48 ["PreferredUploadId"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K37 ["Editable"]
  SETTABLEKS R4 R30 K45 ["ComponentFactory"]
  SETTABLEKS R21 R30 K42 ["ShouldHide"]
  DUPTABLE R31 K38 [{"Name", "Editable"}]
  LOADK R32 K49 ["InsertInWorkspace"]
  SETTABLEKS R32 R31 K36 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K37 ["Editable"]
  DUPTABLE R32 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R33 K50 ["InsertWithScenePosition"]
  SETTABLEKS R33 R32 K36 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K37 ["Editable"]
  SETTABLEKS R14 R32 K42 ["ShouldHide"]
  DUPTABLE R33 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R34 K51 ["UseSceneOriginAsCFrame"]
  SETTABLEKS R34 R33 K36 ["Name"]
  LOADB R34 1
  SETTABLEKS R34 R33 K37 ["Editable"]
  SETTABLEKS R19 R33 K42 ["ShouldHide"]
  DUPTABLE R34 K38 [{"Name", "Editable"}]
  LOADK R35 K52 ["UseSceneOriginAsPivot"]
  SETTABLEKS R35 R34 K36 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K37 ["Editable"]
  DUPTABLE R35 K38 [{"Name", "Editable"}]
  LOADK R36 K53 ["Anchored"]
  SETTABLEKS R36 R35 K36 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K37 ["Editable"]
  DUPTABLE R36 K38 [{"Name", "Editable"}]
  LOADK R37 K54 ["UsesCages"]
  SETTABLEKS R37 R36 K36 ["Name"]
  LOADB R37 1
  SETTABLEKS R37 R36 K37 ["Editable"]
  SETLIST R24 R25 12 [1]
  SETTABLEKS R24 R23 K10 ["Properties"]
  DUPTABLE R24 K56 [{"Section", "Properties", "Callouts"}]
  LOADK R25 K57 ["RigGeneral"]
  SETTABLEKS R25 R24 K33 ["Section"]
  NEWTABLE R25 0 3
  DUPTABLE R26 K38 [{"Name", "Editable"}]
  LOADK R27 K58 ["RigType"]
  SETTABLEKS R27 R26 K36 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K37 ["Editable"]
  DUPTABLE R27 K59 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R28 K60 ["ValidateUgcBody"]
  SETTABLEKS R28 R27 K36 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  SETTABLEKS R13 R27 K42 ["ShouldHide"]
  NEWTABLE R28 0 1
  DUPTABLE R29 K62 [{"Name", "ShouldShow"}]
  LOADK R30 K63 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R30 R29 K36 ["Name"]
  SETTABLEKS R18 R29 K61 ["ShouldShow"]
  SETLIST R28 R29 1 [1]
  SETTABLEKS R28 R27 K55 ["Callouts"]
  DUPTABLE R28 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R29 K64 ["RigScale"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  SETTABLEKS R12 R28 K42 ["ShouldHide"]
  SETLIST R25 R26 3 [1]
  SETTABLEKS R25 R24 K10 ["Properties"]
  NEWTABLE R25 0 1
  DUPTABLE R26 K62 [{"Name", "ShouldShow"}]
  LOADK R27 K63 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R27 R26 K36 ["Name"]
  SETTABLEKS R18 R26 K61 ["ShouldShow"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K55 ["Callouts"]
  DUPTABLE R25 K34 [{"Section", "Properties"}]
  LOADK R26 K65 ["AnimationGeneral"]
  SETTABLEKS R26 R25 K33 ["Section"]
  NEWTABLE R26 0 2
  DUPTABLE R27 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R28 K66 ["RestPose"]
  SETTABLEKS R28 R27 K36 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  SETTABLEKS R10 R27 K42 ["ShouldHide"]
  DUPTABLE R28 K46 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R29 K67 ["AnimationIdForRestPose"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  SETTABLEKS R3 R28 K45 ["ComponentFactory"]
  SETTABLEKS R11 R28 K42 ["ShouldHide"]
  SETLIST R26 R27 2 [1]
  SETTABLEKS R26 R25 K10 ["Properties"]
  DUPTABLE R26 K34 [{"Section", "Properties"}]
  LOADK R27 K68 ["FileTransform"]
  SETTABLEKS R27 R26 K33 ["Section"]
  NEWTABLE R27 0 2
  DUPTABLE R28 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R29 K71 ["WorldForward"]
  SETTABLEKS R29 R28 K36 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K37 ["Editable"]
  NEWTABLE R29 0 1
  LOADK R30 K72 ["WorldUp"]
  SETLIST R29 R30 1 [1]
  SETTABLEKS R29 R28 K69 ["Dependencies"]
  DUPTABLE R29 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R30 K72 ["WorldUp"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  NEWTABLE R30 0 1
  LOADK R31 K71 ["WorldForward"]
  SETLIST R30 R31 1 [1]
  SETTABLEKS R30 R29 K69 ["Dependencies"]
  SETLIST R27 R28 2 [1]
  SETTABLEKS R27 R26 K10 ["Properties"]
  DUPTABLE R27 K34 [{"Section", "Properties"}]
  LOADK R28 K73 ["FileGeometry"]
  SETTABLEKS R28 R27 K33 ["Section"]
  NEWTABLE R28 0 5
  DUPTABLE R29 K38 [{"Name", "Editable"}]
  LOADK R30 K74 ["ScaleUnit"]
  SETTABLEKS R30 R29 K36 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K37 ["Editable"]
  DUPTABLE R30 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R31 K75 ["FileDimensions"]
  SETTABLEKS R31 R30 K36 ["Name"]
  LOADB R31 0
  SETTABLEKS R31 R30 K37 ["Editable"]
  NEWTABLE R31 0 1
  LOADK R32 K74 ["ScaleUnit"]
  SETLIST R31 R32 1 [1]
  SETTABLEKS R31 R30 K69 ["Dependencies"]
  DUPTABLE R31 K38 [{"Name", "Editable"}]
  LOADK R32 K76 ["PolygonCount"]
  SETTABLEKS R32 R31 K36 ["Name"]
  LOADB R32 0
  SETTABLEKS R32 R31 K37 ["Editable"]
  DUPTABLE R32 K43 [{"Name", "Editable", "ShouldHide"}]
  LOADK R33 K77 ["MergeMeshes"]
  SETTABLEKS R33 R32 K36 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K37 ["Editable"]
  SETTABLEKS R20 R32 K42 ["ShouldHide"]
  DUPTABLE R33 K38 [{"Name", "Editable"}]
  LOADK R34 K78 ["InvertNegativeFaces"]
  SETTABLEKS R34 R33 K36 ["Name"]
  LOADB R34 1
  SETTABLEKS R34 R33 K37 ["Editable"]
  SETLIST R28 R29 5 [1]
  SETTABLEKS R28 R27 K10 ["Properties"]
  SETLIST R22 R23 5 [1]
  RETURN R22 1
