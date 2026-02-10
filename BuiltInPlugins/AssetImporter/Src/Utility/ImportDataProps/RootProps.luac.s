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
  DUPCLOSURE R6 K17 [PROTO_0]
  DUPCLOSURE R7 K18 [PROTO_1]
  DUPCLOSURE R8 K19 [PROTO_2]
  DUPCLOSURE R9 K20 [PROTO_3]
  CAPTURE VAL R5
  DUPCLOSURE R10 K21 [PROTO_4]
  DUPCLOSURE R11 K22 [PROTO_5]
  DUPCLOSURE R12 K23 [PROTO_6]
  DUPCLOSURE R13 K24 [PROTO_7]
  CAPTURE VAL R1
  DUPCLOSURE R14 K25 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPCLOSURE R15 K26 [PROTO_9]
  NEWTABLE R16 0 5
  DUPTABLE R17 K28 [{"Section", "Properties"}]
  LOADK R18 K29 ["FileGeneral"]
  SETTABLEKS R18 R17 K27 ["Section"]
  NEWTABLE R18 0 12
  DUPTABLE R19 K32 [{"Name", "Editable"}]
  LOADK R20 K33 ["ImportName"]
  SETTABLEKS R20 R19 K30 ["Name"]
  LOADB R20 1
  SETTABLEKS R20 R19 K31 ["Editable"]
  DUPTABLE R20 K32 [{"Name", "Editable"}]
  LOADK R21 K34 ["ImportAsModelAsset"]
  SETTABLEKS R21 R20 K30 ["Name"]
  LOADB R21 1
  SETTABLEKS R21 R20 K31 ["Editable"]
  DUPTABLE R21 K32 [{"Name", "Editable"}]
  LOADK R22 K35 ["AddModelToInventory"]
  SETTABLEKS R22 R21 K30 ["Name"]
  LOADB R22 1
  SETTABLEKS R22 R21 K31 ["Editable"]
  DUPTABLE R22 K37 [{"Name", "Editable", "ShouldHide"}]
  LOADK R23 K38 ["ImportAsPackage"]
  SETTABLEKS R23 R22 K30 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K31 ["Editable"]
  SETTABLEKS R12 R22 K36 ["ShouldHide"]
  DUPTABLE R23 K40 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R24 K41 ["ExistingPackageId"]
  SETTABLEKS R24 R23 K30 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K31 ["Editable"]
  SETTABLEKS R2 R23 K39 ["ComponentFactory"]
  SETTABLEKS R11 R23 K36 ["ShouldHide"]
  DUPTABLE R24 K42 [{"Name", "Editable", "ComponentFactory"}]
  LOADK R25 K43 ["PreferredUploadId"]
  SETTABLEKS R25 R24 K30 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K31 ["Editable"]
  SETTABLEKS R4 R24 K39 ["ComponentFactory"]
  DUPTABLE R25 K32 [{"Name", "Editable"}]
  LOADK R26 K44 ["InsertInWorkspace"]
  SETTABLEKS R26 R25 K30 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K31 ["Editable"]
  DUPTABLE R26 K37 [{"Name", "Editable", "ShouldHide"}]
  LOADK R27 K45 ["InsertWithScenePosition"]
  SETTABLEKS R27 R26 K30 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K31 ["Editable"]
  SETTABLEKS R10 R26 K36 ["ShouldHide"]
  DUPTABLE R27 K32 [{"Name", "Editable"}]
  LOADK R28 K46 ["KeepZeroInfluenceBones"]
  SETTABLEKS R28 R27 K30 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K31 ["Editable"]
  DUPTABLE R28 K32 [{"Name", "Editable"}]
  LOADK R29 K47 ["UseSceneOriginAsPivot"]
  SETTABLEKS R29 R28 K30 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K31 ["Editable"]
  DUPTABLE R29 K32 [{"Name", "Editable"}]
  LOADK R30 K48 ["Anchored"]
  SETTABLEKS R30 R29 K30 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K31 ["Editable"]
  DUPTABLE R30 K32 [{"Name", "Editable"}]
  LOADK R31 K49 ["UsesCages"]
  SETTABLEKS R31 R30 K30 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K31 ["Editable"]
  SETLIST R18 R19 12 [1]
  SETTABLEKS R18 R17 K10 ["Properties"]
  DUPTABLE R18 K51 [{"Section", "Properties", "Callouts"}]
  LOADK R19 K52 ["RigGeneral"]
  SETTABLEKS R19 R18 K27 ["Section"]
  NEWTABLE R19 0 3
  DUPTABLE R20 K32 [{"Name", "Editable"}]
  LOADK R21 K53 ["RigType"]
  SETTABLEKS R21 R20 K30 ["Name"]
  LOADB R21 1
  SETTABLEKS R21 R20 K31 ["Editable"]
  DUPTABLE R21 K54 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R22 K55 ["ValidateUgcBody"]
  SETTABLEKS R22 R21 K30 ["Name"]
  LOADB R22 1
  SETTABLEKS R22 R21 K31 ["Editable"]
  SETTABLEKS R9 R21 K36 ["ShouldHide"]
  NEWTABLE R22 0 1
  DUPTABLE R23 K57 [{"Name", "ShouldShow"}]
  LOADK R24 K58 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R24 R23 K30 ["Name"]
  SETTABLEKS R14 R23 K56 ["ShouldShow"]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K50 ["Callouts"]
  DUPTABLE R22 K37 [{"Name", "Editable", "ShouldHide"}]
  LOADK R23 K59 ["RigScale"]
  SETTABLEKS R23 R22 K30 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K31 ["Editable"]
  SETTABLEKS R8 R22 K36 ["ShouldHide"]
  SETLIST R19 R20 3 [1]
  SETTABLEKS R19 R18 K10 ["Properties"]
  NEWTABLE R19 0 1
  DUPTABLE R20 K57 [{"Name", "ShouldShow"}]
  LOADK R21 K58 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R21 R20 K30 ["Name"]
  SETTABLEKS R14 R20 K56 ["ShouldShow"]
  SETLIST R19 R20 1 [1]
  SETTABLEKS R19 R18 K50 ["Callouts"]
  DUPTABLE R19 K28 [{"Section", "Properties"}]
  LOADK R20 K60 ["AnimationGeneral"]
  SETTABLEKS R20 R19 K27 ["Section"]
  NEWTABLE R20 0 2
  DUPTABLE R21 K37 [{"Name", "Editable", "ShouldHide"}]
  LOADK R22 K61 ["RestPose"]
  SETTABLEKS R22 R21 K30 ["Name"]
  LOADB R22 1
  SETTABLEKS R22 R21 K31 ["Editable"]
  SETTABLEKS R6 R21 K36 ["ShouldHide"]
  DUPTABLE R22 K40 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R23 K62 ["AnimationIdForRestPose"]
  SETTABLEKS R23 R22 K30 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K31 ["Editable"]
  SETTABLEKS R3 R22 K39 ["ComponentFactory"]
  SETTABLEKS R7 R22 K36 ["ShouldHide"]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K10 ["Properties"]
  DUPTABLE R20 K28 [{"Section", "Properties"}]
  LOADK R21 K63 ["FileTransform"]
  SETTABLEKS R21 R20 K27 ["Section"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K65 [{"Name", "Editable", "Dependencies"}]
  LOADK R23 K66 ["WorldForward"]
  SETTABLEKS R23 R22 K30 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K31 ["Editable"]
  NEWTABLE R23 0 1
  LOADK R24 K67 ["WorldUp"]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K64 ["Dependencies"]
  DUPTABLE R23 K65 [{"Name", "Editable", "Dependencies"}]
  LOADK R24 K67 ["WorldUp"]
  SETTABLEKS R24 R23 K30 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K31 ["Editable"]
  NEWTABLE R24 0 1
  LOADK R25 K66 ["WorldForward"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K64 ["Dependencies"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K10 ["Properties"]
  DUPTABLE R21 K28 [{"Section", "Properties"}]
  LOADK R22 K68 ["FileGeometry"]
  SETTABLEKS R22 R21 K27 ["Section"]
  NEWTABLE R22 0 5
  DUPTABLE R23 K32 [{"Name", "Editable"}]
  LOADK R24 K69 ["ScaleUnit"]
  SETTABLEKS R24 R23 K30 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K31 ["Editable"]
  DUPTABLE R24 K65 [{"Name", "Editable", "Dependencies"}]
  LOADK R25 K70 ["FileDimensions"]
  SETTABLEKS R25 R24 K30 ["Name"]
  LOADB R25 0
  SETTABLEKS R25 R24 K31 ["Editable"]
  NEWTABLE R25 0 1
  LOADK R26 K69 ["ScaleUnit"]
  SETLIST R25 R26 1 [1]
  SETTABLEKS R25 R24 K64 ["Dependencies"]
  DUPTABLE R25 K32 [{"Name", "Editable"}]
  LOADK R26 K71 ["PolygonCount"]
  SETTABLEKS R26 R25 K30 ["Name"]
  LOADB R26 0
  SETTABLEKS R26 R25 K31 ["Editable"]
  DUPTABLE R26 K37 [{"Name", "Editable", "ShouldHide"}]
  LOADK R27 K72 ["MergeMeshes"]
  SETTABLEKS R27 R26 K30 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K31 ["Editable"]
  SETTABLEKS R15 R26 K36 ["ShouldHide"]
  DUPTABLE R27 K32 [{"Name", "Editable"}]
  LOADK R28 K73 ["InvertNegativeFaces"]
  SETTABLEKS R28 R27 K30 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K31 ["Editable"]
  SETLIST R22 R23 5 [1]
  SETTABLEKS R22 R21 K10 ["Properties"]
  SETLIST R16 R17 5 [1]
  RETURN R16 1
