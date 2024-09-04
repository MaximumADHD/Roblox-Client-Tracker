PROTO_0:
  NAMECALL R2 R1 K0 ["IsGltf"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+2]
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
  GETUPVAL R2 0
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
  GETUPVAL R3 0
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
  GETTABLEKS R8 R9 K18 ["getFFlagKeepZeroInfluenceBones"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R6
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R10 K21 [PROTO_2]
  DUPCLOSURE R11 K22 [PROTO_3]
  DUPCLOSURE R12 K23 [PROTO_4]
  DUPCLOSURE R13 K24 [PROTO_5]
  DUPCLOSURE R14 K25 [PROTO_6]
  DUPCLOSURE R15 K26 [PROTO_7]
  CAPTURE VAL R1
  DUPCLOSURE R16 K27 [PROTO_8]
  CAPTURE VAL R1
  DUPCLOSURE R17 K28 [PROTO_9]
  CAPTURE VAL R5
  DUPCLOSURE R18 K29 [PROTO_10]
  DUPCLOSURE R19 K30 [PROTO_11]
  CAPTURE VAL R7
  NEWTABLE R20 0 5
  DUPTABLE R21 K32 [{"Section", "Properties"}]
  LOADK R22 K33 ["FileGeneral"]
  SETTABLEKS R22 R21 K31 ["Section"]
  NEWTABLE R22 0 13
  DUPTABLE R23 K36 [{"Name", "Editable"}]
  LOADK R24 K37 ["ImportName"]
  SETTABLEKS R24 R23 K34 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K35 ["Editable"]
  DUPTABLE R24 K36 [{"Name", "Editable"}]
  LOADK R25 K38 ["ImportAsModelAsset"]
  SETTABLEKS R25 R24 K34 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K35 ["Editable"]
  DUPTABLE R25 K36 [{"Name", "Editable"}]
  LOADK R26 K39 ["AddModelToInventory"]
  SETTABLEKS R26 R25 K34 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K35 ["Editable"]
  DUPTABLE R26 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R27 K42 ["ImportAsPackage"]
  SETTABLEKS R27 R26 K34 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K35 ["Editable"]
  SETTABLEKS R14 R26 K40 ["ShouldHide"]
  DUPTABLE R27 K44 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R28 K45 ["ExistingPackageId"]
  SETTABLEKS R28 R27 K34 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K35 ["Editable"]
  SETTABLEKS R2 R27 K43 ["ComponentFactory"]
  SETTABLEKS R13 R27 K40 ["ShouldHide"]
  DUPTABLE R28 K46 [{"Name", "Editable", "ComponentFactory"}]
  LOADK R29 K47 ["PreferredUploadId"]
  SETTABLEKS R29 R28 K34 ["Name"]
  LOADB R29 1
  SETTABLEKS R29 R28 K35 ["Editable"]
  SETTABLEKS R4 R28 K43 ["ComponentFactory"]
  DUPTABLE R29 K36 [{"Name", "Editable"}]
  LOADK R30 K48 ["InsertInWorkspace"]
  SETTABLEKS R30 R29 K34 ["Name"]
  LOADB R30 1
  SETTABLEKS R30 R29 K35 ["Editable"]
  DUPTABLE R30 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R31 K49 ["InsertWithScenePosition"]
  SETTABLEKS R31 R30 K34 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K35 ["Editable"]
  SETTABLEKS R12 R30 K40 ["ShouldHide"]
  DUPTABLE R31 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R32 K50 ["UseSceneOriginAsCFrame"]
  SETTABLEKS R32 R31 K34 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K35 ["Editable"]
  SETTABLEKS R17 R31 K40 ["ShouldHide"]
  DUPTABLE R32 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R33 K51 ["KeepZeroInfluenceBones"]
  SETTABLEKS R33 R32 K34 ["Name"]
  LOADB R33 1
  SETTABLEKS R33 R32 K35 ["Editable"]
  SETTABLEKS R19 R32 K40 ["ShouldHide"]
  DUPTABLE R33 K36 [{"Name", "Editable"}]
  LOADK R34 K52 ["UseSceneOriginAsPivot"]
  SETTABLEKS R34 R33 K34 ["Name"]
  LOADB R34 1
  SETTABLEKS R34 R33 K35 ["Editable"]
  DUPTABLE R34 K36 [{"Name", "Editable"}]
  LOADK R35 K53 ["Anchored"]
  SETTABLEKS R35 R34 K34 ["Name"]
  LOADB R35 1
  SETTABLEKS R35 R34 K35 ["Editable"]
  DUPTABLE R35 K36 [{"Name", "Editable"}]
  LOADK R36 K54 ["UsesCages"]
  SETTABLEKS R36 R35 K34 ["Name"]
  LOADB R36 1
  SETTABLEKS R36 R35 K35 ["Editable"]
  SETLIST R22 R23 13 [1]
  SETTABLEKS R22 R21 K10 ["Properties"]
  DUPTABLE R22 K56 [{"Section", "Properties", "Callouts"}]
  LOADK R23 K57 ["RigGeneral"]
  SETTABLEKS R23 R22 K31 ["Section"]
  NEWTABLE R23 0 3
  DUPTABLE R24 K36 [{"Name", "Editable"}]
  LOADK R25 K58 ["RigType"]
  SETTABLEKS R25 R24 K34 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K35 ["Editable"]
  DUPTABLE R25 K59 [{"Name", "Editable", "ShouldHide", "Callouts"}]
  LOADK R26 K60 ["ValidateUgcBody"]
  SETTABLEKS R26 R25 K34 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K35 ["Editable"]
  SETTABLEKS R11 R25 K40 ["ShouldHide"]
  NEWTABLE R26 0 1
  DUPTABLE R27 K62 [{"Name", "ShouldShow"}]
  LOADK R28 K63 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R28 R27 K34 ["Name"]
  SETTABLEKS R16 R27 K61 ["ShouldShow"]
  SETLIST R26 R27 1 [1]
  SETTABLEKS R26 R25 K55 ["Callouts"]
  DUPTABLE R26 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R27 K64 ["RigScale"]
  SETTABLEKS R27 R26 K34 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K35 ["Editable"]
  SETTABLEKS R10 R26 K40 ["ShouldHide"]
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K10 ["Properties"]
  NEWTABLE R23 0 1
  DUPTABLE R24 K62 [{"Name", "ShouldShow"}]
  LOADK R25 K63 ["OpenAvatarPreviewCallout"]
  SETTABLEKS R25 R24 K34 ["Name"]
  SETTABLEKS R16 R24 K61 ["ShouldShow"]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K55 ["Callouts"]
  DUPTABLE R23 K32 [{"Section", "Properties"}]
  LOADK R24 K65 ["AnimationGeneral"]
  SETTABLEKS R24 R23 K31 ["Section"]
  NEWTABLE R24 0 2
  DUPTABLE R25 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R26 K66 ["RestPose"]
  SETTABLEKS R26 R25 K34 ["Name"]
  LOADB R26 1
  SETTABLEKS R26 R25 K35 ["Editable"]
  SETTABLEKS R8 R25 K40 ["ShouldHide"]
  DUPTABLE R26 K44 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R27 K67 ["AnimationIdForRestPose"]
  SETTABLEKS R27 R26 K34 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K35 ["Editable"]
  SETTABLEKS R3 R26 K43 ["ComponentFactory"]
  SETTABLEKS R9 R26 K40 ["ShouldHide"]
  SETLIST R24 R25 2 [1]
  SETTABLEKS R24 R23 K10 ["Properties"]
  DUPTABLE R24 K32 [{"Section", "Properties"}]
  LOADK R25 K68 ["FileTransform"]
  SETTABLEKS R25 R24 K31 ["Section"]
  NEWTABLE R25 0 2
  DUPTABLE R26 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R27 K71 ["WorldForward"]
  SETTABLEKS R27 R26 K34 ["Name"]
  LOADB R27 1
  SETTABLEKS R27 R26 K35 ["Editable"]
  NEWTABLE R27 0 1
  LOADK R28 K72 ["WorldUp"]
  SETLIST R27 R28 1 [1]
  SETTABLEKS R27 R26 K69 ["Dependencies"]
  DUPTABLE R27 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R28 K72 ["WorldUp"]
  SETTABLEKS R28 R27 K34 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K35 ["Editable"]
  NEWTABLE R28 0 1
  LOADK R29 K71 ["WorldForward"]
  SETLIST R28 R29 1 [1]
  SETTABLEKS R28 R27 K69 ["Dependencies"]
  SETLIST R25 R26 2 [1]
  SETTABLEKS R25 R24 K10 ["Properties"]
  DUPTABLE R25 K32 [{"Section", "Properties"}]
  LOADK R26 K73 ["FileGeometry"]
  SETTABLEKS R26 R25 K31 ["Section"]
  NEWTABLE R26 0 5
  DUPTABLE R27 K36 [{"Name", "Editable"}]
  LOADK R28 K74 ["ScaleUnit"]
  SETTABLEKS R28 R27 K34 ["Name"]
  LOADB R28 1
  SETTABLEKS R28 R27 K35 ["Editable"]
  DUPTABLE R28 K70 [{"Name", "Editable", "Dependencies"}]
  LOADK R29 K75 ["FileDimensions"]
  SETTABLEKS R29 R28 K34 ["Name"]
  LOADB R29 0
  SETTABLEKS R29 R28 K35 ["Editable"]
  NEWTABLE R29 0 1
  LOADK R30 K74 ["ScaleUnit"]
  SETLIST R29 R30 1 [1]
  SETTABLEKS R29 R28 K69 ["Dependencies"]
  DUPTABLE R29 K36 [{"Name", "Editable"}]
  LOADK R30 K76 ["PolygonCount"]
  SETTABLEKS R30 R29 K34 ["Name"]
  LOADB R30 0
  SETTABLEKS R30 R29 K35 ["Editable"]
  DUPTABLE R30 K41 [{"Name", "Editable", "ShouldHide"}]
  LOADK R31 K77 ["MergeMeshes"]
  SETTABLEKS R31 R30 K34 ["Name"]
  LOADB R31 1
  SETTABLEKS R31 R30 K35 ["Editable"]
  SETTABLEKS R18 R30 K40 ["ShouldHide"]
  DUPTABLE R31 K36 [{"Name", "Editable"}]
  LOADK R32 K78 ["InvertNegativeFaces"]
  SETTABLEKS R32 R31 K34 ["Name"]
  LOADB R32 1
  SETTABLEKS R32 R31 K35 ["Editable"]
  SETLIST R26 R27 5 [1]
  SETTABLEKS R26 R25 K10 ["Properties"]
  SETLIST R20 R21 5 [1]
  RETURN R20 1
