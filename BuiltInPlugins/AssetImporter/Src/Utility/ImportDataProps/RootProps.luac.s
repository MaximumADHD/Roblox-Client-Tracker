PROTO_0:
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  NAMECALL R3 R1 K1 ["HasAnimation"]
  CALL R3 1 1
  NOT R2 R3
  RETURN R2 1

PROTO_1:
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
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
  GETUPVAL R2 0
  CALL R2 0 1
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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunningUnderCLI"]
  CALL R1 0 1
  NOT R0 R1
  RETURN R0 1

PROTO_8:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["RunningUnderCLI"]
  CALL R2 0 1
  NOT R1 R2
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["IsR15"]
  CALL R1 1 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["AddModelToInventory"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["ImportAsPackage"]
  RETURN R1 1

PROTO_10:
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
  GETTABLEKS R6 R7 K16 ["getFFlagUnlinkImporterAndAvatarPreview"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["getFFlagKeepZeroInfluenceBones"]
  CALL R6 1 1
  DUPCLOSURE R7 K18 [PROTO_0]
  DUPCLOSURE R8 K19 [PROTO_1]
  DUPCLOSURE R9 K20 [PROTO_2]
  DUPCLOSURE R10 K21 [PROTO_3]
  CAPTURE VAL R5
  DUPCLOSURE R11 K22 [PROTO_4]
  DUPCLOSURE R12 K23 [PROTO_5]
  DUPCLOSURE R13 K24 [PROTO_6]
  DUPCLOSURE R14 K25 [PROTO_7]
  CAPTURE VAL R1
  DUPCLOSURE R15 K26 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPCLOSURE R16 K27 [PROTO_9]
  DUPCLOSURE R17 K28 [PROTO_10]
  CAPTURE VAL R6
  NEWTABLE R18 0 5
  DUPTABLE R19 K30 [{"Section", "Properties"}]
  LOADK R20 K31 ["FileGeneral"]
  SETTABLEKS R20 R19 K29 ["Section"]
  NEWTABLE R20 0 12
  DUPTABLE R21 K34 [{"Name", "Editable"}]
  LOADK R22 K35 ["ImportName"]
  SETTABLEKS R22 R21 K32 ["Name"]
  LOADB R22 1
  SETTABLEKS R22 R21 K33 ["Editable"]
  DUPTABLE R22 K34 [{"Name", "Editable"}]
  LOADK R23 K36 ["ImportAsModelAsset"]
  SETTABLEKS R23 R22 K32 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K33 ["Editable"]
  DUPTABLE R23 K34 [{"Name", "Editable"}]
  LOADK R24 K37 ["AddModelToInventory"]
  SETTABLEKS R24 R23 K32 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K33 ["Editable"]
  DUPTABLE R24 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R25 K40 ["ImportAsPackage"]
  SETTABLEKS R25 R24 K32 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K33 ["Editable"]
  SETTABLEKS R13 R24 K38 ["ShouldHide"]
  DUPTABLE R25 K42 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R26 K43 ["ExistingPackageId"]
  SETTABLEKS R26 R25 K32 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K33 ["Editable"]
  SETTABLEKS R2 R25 K41 ["ComponentFactory"]
  SETTABLEKS R12 R25 K38 ["ShouldHide"]
  DUPTABLE R26 K44 [{"Name", "Editable", "ComponentFactory"}]
  LOADK R27 K45 ["PreferredUploadId"]
  SETTABLEKS R27 R26 K32 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K33 ["Editable"]
  SETTABLEKS R4 R26 K41 ["ComponentFactory"]
  DUPTABLE R27 K34 [{"Name", "Editable"}]
  LOADK R28 K46 ["InsertInWorkspace"]
  SETTABLEKS R28 R27 K32 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K33 ["Editable"]
  DUPTABLE R28 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R29 K47 ["InsertWithScenePosition"]
  SETTABLEKS R29 R28 K32 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K33 ["Editable"]
  SETTABLEKS R11 R28 K38 ["ShouldHide"]
  DUPTABLE R29 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R30 K48 ["KeepZeroInfluenceBones"]
  SETTABLEKS R30 R29 K32 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K33 ["Editable"]
  SETTABLEKS R17 R29 K38 ["ShouldHide"]
  DUPTABLE R30 K34 [{"Name", "Editable"}]
  LOADK R31 K49 ["UseSceneOriginAsPivot"]
  SETTABLEKS R31 R30 K32 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K33 ["Editable"]
  DUPTABLE R31 K34 [{"Name", "Editable"}]
  LOADK R32 K50 ["Anchored"]
  SETTABLEKS R32 R31 K32 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K33 ["Editable"]
  DUPTABLE R32 K34 [{"Name", "Editable"}]
  LOADK R33 K51 ["UsesCages"]
  SETTABLEKS R33 R32 K32 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K33 ["Editable"]
  SETLIST R20 R21 12 [1]
  SETTABLEKS R20 R19 K10 ["Properties"]
  DUPTABLE R20 K53 [{"Section", "Properties", "Callouts"}]
  LOADK R21 K54 ["RigGeneral"]
  SETTABLEKS R21 R20 K29 ["Section"]
  NEWTABLE R21 0 3
  DUPTABLE R22 K34 [{"Name", "Editable"}]
  LOADK R23 K55 ["RigType"]
  SETTABLEKS R23 R22 K32 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K33 ["Editable"]
  DUPTABLE R23 K56 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R24 K57 ["ValidateUgcBody"]
  SETTABLEKS R24 R23 K32 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K33 ["Editable"]
  SETTABLEKS R10 R23 K38 ["ShouldHide"]
  NEWTABLE R24 0 1
  DUPTABLE R25 K59 [{"Name", "ShouldShow"}]
  LOADK R26 K60 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R26 R25 K32 ["Name"]
  SETTABLEKS R15 R25 K58 ["ShouldShow"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K52 ["Callouts"]
  DUPTABLE R24 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R25 K61 ["RigScale"]
  SETTABLEKS R25 R24 K32 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K33 ["Editable"]
  SETTABLEKS R9 R24 K38 ["ShouldHide"]
  SETLIST R21 R22 3 [1]
  SETTABLEKS R21 R20 K10 ["Properties"]
  NEWTABLE R21 0 1
  DUPTABLE R22 K59 [{"Name", "ShouldShow"}]
  LOADK R23 K60 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R23 R22 K32 ["Name"]
  SETTABLEKS R15 R22 K58 ["ShouldShow"]
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K52 ["Callouts"]
  DUPTABLE R21 K30 [{"Section", "Properties"}]
  LOADK R22 K62 ["AnimationGeneral"]
  SETTABLEKS R22 R21 K29 ["Section"]
  NEWTABLE R22 0 2
  DUPTABLE R23 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R24 K63 ["RestPose"]
  SETTABLEKS R24 R23 K32 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K33 ["Editable"]
  SETTABLEKS R7 R23 K38 ["ShouldHide"]
  DUPTABLE R24 K42 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R25 K64 ["AnimationIdForRestPose"]
  SETTABLEKS R25 R24 K32 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K33 ["Editable"]
  SETTABLEKS R3 R24 K41 ["ComponentFactory"]
  SETTABLEKS R8 R24 K38 ["ShouldHide"]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K10 ["Properties"]
  DUPTABLE R22 K30 [{"Section", "Properties"}]
  LOADK R23 K65 ["FileTransform"]
  SETTABLEKS R23 R22 K29 ["Section"]
  NEWTABLE R23 0 2
  DUPTABLE R24 K67 [{"Name", "Editable", "Dependencies"}]
  LOADK R25 K68 ["WorldForward"]
  SETTABLEKS R25 R24 K32 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K33 ["Editable"]
  NEWTABLE R25 0 1
  LOADK R26 K69 ["WorldUp"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K66 ["Dependencies"]
  DUPTABLE R25 K67 [{"Name", "Editable", "Dependencies"}]
  LOADK R26 K69 ["WorldUp"]
  SETTABLEKS R26 R25 K32 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K33 ["Editable"]
  NEWTABLE R26 0 1
  LOADK R27 K68 ["WorldForward"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K66 ["Dependencies"]
  SETLIST R23 R24 2 [1]
  SETTABLEKS R23 R22 K10 ["Properties"]
  DUPTABLE R23 K30 [{"Section", "Properties"}]
  LOADK R24 K70 ["FileGeometry"]
  SETTABLEKS R24 R23 K29 ["Section"]
  NEWTABLE R24 0 5
  DUPTABLE R25 K34 [{"Name", "Editable"}]
  LOADK R26 K71 ["ScaleUnit"]
  SETTABLEKS R26 R25 K32 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K33 ["Editable"]
  DUPTABLE R26 K67 [{"Name", "Editable", "Dependencies"}]
  LOADK R27 K72 ["FileDimensions"]
  SETTABLEKS R27 R26 K32 ["Name"]
  LOADB R27 0
  SETTABLEKS R27 R26 K33 ["Editable"]
  NEWTABLE R27 0 1
  LOADK R28 K71 ["ScaleUnit"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K66 ["Dependencies"]
  DUPTABLE R27 K34 [{"Name", "Editable"}]
  LOADK R28 K73 ["PolygonCount"]
  SETTABLEKS R28 R27 K32 ["Name"]
  LOADB R28 0
  SETTABLEKS R28 R27 K33 ["Editable"]
  DUPTABLE R28 K39 [{"Name", "Editable", "ShouldHide"}]
  LOADK R29 K74 ["MergeMeshes"]
  SETTABLEKS R29 R28 K32 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K33 ["Editable"]
  SETTABLEKS R16 R28 K38 ["ShouldHide"]
  DUPTABLE R29 K34 [{"Name", "Editable"}]
  LOADK R30 K75 ["InvertNegativeFaces"]
  SETTABLEKS R30 R29 K32 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K33 ["Editable"]
  SETLIST R24 R25 5 [1]
  SETTABLEKS R24 R23 K10 ["Properties"]
  SETLIST R18 R19 5 [1]
  RETURN R18 1
