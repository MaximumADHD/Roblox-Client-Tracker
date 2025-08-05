PROTO_0:
  DUPTABLE R1 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K0 ["DataModel"]
  LOADK R2 K6 ["Standalone"]
  SETTABLEKS R2 R1 K1 ["PluginType"]
  LOADK R2 K7 ["Ribbon"]
  SETTABLEKS R2 R1 K2 ["PluginId"]
  LOADK R2 K8 ["Widgets"]
  SETTABLEKS R2 R1 K3 ["Category"]
  SETTABLEKS R0 R1 K4 ["ItemId"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K3 [{"PluginId", "Category", "ItemId"}]
  LOADK R2 K4 ["QtRibbon"]
  SETTABLEKS R2 R1 K0 ["PluginId"]
  LOADK R2 K5 ["Widgets"]
  SETTABLEKS R2 R1 K1 ["Category"]
  SETTABLEKS R0 R1 K2 ["ItemId"]
  RETURN R1 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R3 K2 ["rbxassetid://%*"]
  LOADK R5 K3 [17274156146]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  NAMECALL R0 R0 K5 ["GetObjects"]
  CALL R0 2 1
  GETTABLEN R1 R0 1
  GETIMPORT R4 K8 [CFrame.new]
  LOADK R5 K9 [{-363.583, 18.009, 74.073}]
  CALL R4 1 -1
  NAMECALL R2 R1 K10 ["SetPrimaryPartCFrame"]
  CALL R2 -1 0
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K11 ["Parent"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["Ball"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETIMPORT R1 K3 [pcall]
  DUPCLOSURE R2 K4 [PROTO_2]
  CAPTURE UPVAL U0
  CALL R1 1 2
  JUMPIFNOT R1 [+2]
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K6 [warn]
  LOADK R4 K7 ["Could not insert ball:"]
  MOVE R5 R2
  CALL R3 2 0
  LOADNIL R3
  RETURN R3 1

PROTO_4:
  LOADNIL R1
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["Part"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R6 K3 ["Shape"]
  GETIMPORT R8 K7 [Enum.PartType.Wedge]
  JUMPIFNOTEQ R7 R8 [+3]
  MOVE R1 R6
  JUMP [+2]
  FORGLOOP R2 2 [-14]
  JUMPIFNOT R1 [+16]
  LOADK R4 K1 ["Part"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R1 K3 ["Shape"]
  GETIMPORT R3 K7 [Enum.PartType.Wedge]
  JUMPIFNOTEQ R2 R3 [+6]
  GETTABLEKS R2 R0 K8 ["instances"]
  SETTABLEKS R1 R2 K9 ["wedge"]
  RETURN R1 1
  GETIMPORT R2 K12 [Instance.new]
  LOADK R3 K1 ["Part"]
  CALL R2 1 1
  GETIMPORT R3 K7 [Enum.PartType.Wedge]
  SETTABLEKS R3 R2 K3 ["Shape"]
  LOADK R3 K13 [{0, -90, 0}]
  SETTABLEKS R3 R2 K14 ["Rotation"]
  LOADK R3 K15 [{40, 15, 25}]
  SETTABLEKS R3 R2 K16 ["Size"]
  LOADK R3 K17 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R3 R2 K18 ["Position"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K19 ["Parent"]
  GETTABLEKS R3 R0 K8 ["instances"]
  SETTABLEKS R2 R3 K9 ["wedge"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADB R3 1
  NAMECALL R1 R0 K4 ["SetTutorialCompletionStatus"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{0, -90, 0}]
  SETTABLEKS R2 R1 K1 ["Rotation"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R2 R1 K1 ["Position"]
  LOADK R2 K2 [{40, 15, 25}]
  SETTABLEKS R2 R1 K3 ["Size"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [Color3.fromRGB]
  LOADN R3 129
  LOADN R4 246
  LOADN R5 136
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Color"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Anchored"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K0 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K0 ["Set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  LOADK R3 K0 ["Speed"]
  LOADN R4 250
  NAMECALL R1 R0 K1 ["SetAttribute"]
  CALL R1 3 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["instances"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["CurrentCamera"]
  SETTABLEKS R2 R1 K2 ["camera"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K4 ["BasePart"]
  NAMECALL R6 R5 K5 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["Locked"]
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetDescendants"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K1 ["BasePart"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["Locked"]
  FORGLOOP R0 2 [-9]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagEnableRibbonPlugin"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagKillOldExplorer"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagEnableRibbonTour"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["StudioTourSaveStep"]
  LOADB R7 0
  NAMECALL R4 R4 K13 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K11 [game]
  LOADK R7 K14 ["Workspace"]
  NAMECALL R5 R5 K15 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K11 [game]
  LOADK R8 K16 ["Selection"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  DUPTABLE R7 K20 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R8 0 1
  LOADK R9 K21 [17274156146]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K17 ["assetIds"]
  LOADK R8 K22 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R8 R7 K18 ["positionOverride"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["scriptWarningOverride"]
  DUPCLOSURE R8 K23 [PROTO_0]
  DUPCLOSURE R9 K24 [PROTO_1]
  JUMPIFNOT R2 [+17]
  DUPTABLE R10 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R11 K31 ["Standalone"]
  SETTABLEKS R11 R10 K25 ["DataModel"]
  LOADK R11 K31 ["Standalone"]
  SETTABLEKS R11 R10 K26 ["PluginType"]
  LOADK R11 K32 ["ExplorerPlugin"]
  SETTABLEKS R11 R10 K27 ["PluginId"]
  LOADK R11 K33 ["Widgets"]
  SETTABLEKS R11 R10 K28 ["Category"]
  LOADK R11 K32 ["ExplorerPlugin"]
  SETTABLEKS R11 R10 K29 ["ItemId"]
  JUMP [+10]
  DUPTABLE R10 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R11 K35 ["Explorer"]
  SETTABLEKS R11 R10 K27 ["PluginId"]
  LOADK R11 K33 ["Widgets"]
  SETTABLEKS R11 R10 K28 ["Category"]
  LOADK R11 K36 ["Main"]
  SETTABLEKS R11 R10 K29 ["ItemId"]
  DUPTABLE R11 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R12 K37 ["Properties"]
  SETTABLEKS R12 R11 K27 ["PluginId"]
  LOADK R12 K33 ["Widgets"]
  SETTABLEKS R12 R11 K28 ["Category"]
  LOADK R12 K36 ["Main"]
  SETTABLEKS R12 R11 K29 ["ItemId"]
  DUPTABLE R12 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R13 K38 ["Edit"]
  SETTABLEKS R13 R12 K25 ["DataModel"]
  LOADK R13 K39 ["Asset"]
  SETTABLEKS R13 R12 K26 ["PluginType"]
  LOADK R13 K40 ["Toolbox"]
  SETTABLEKS R13 R12 K27 ["PluginId"]
  LOADK R13 K33 ["Widgets"]
  SETTABLEKS R13 R12 K28 ["Category"]
  LOADK R13 K40 ["Toolbox"]
  SETTABLEKS R13 R12 K29 ["ItemId"]
  DUPCLOSURE R13 K41 [PROTO_3]
  CAPTURE VAL R5
  DUPCLOSURE R14 K42 [PROTO_4]
  CAPTURE VAL R5
  NEWTABLE R15 0 23
  DUPTABLE R16 K49 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R17 K50 ["intro1"]
  SETTABLEKS R17 R16 K43 ["id"]
  LOADK R17 K51 ["introduction"]
  SETTABLEKS R17 R16 K44 ["topic"]
  LOADB R17 1
  SETTABLEKS R17 R16 K45 ["showNext"]
  LOADK R17 K22 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R17 R16 K46 ["cameraFocus"]
  LOADK R17 K52 [{80, 30, -20}]
  SETTABLEKS R17 R16 K47 ["cameraOffset"]
  LOADN R17 0
  SETTABLEKS R17 R16 K48 ["cameraMoveDuration"]
  DUPTABLE R17 K53 [{"id", "topic", "showNext"}]
  LOADK R18 K54 ["intro2"]
  SETTABLEKS R18 R17 K43 ["id"]
  LOADK R18 K51 ["introduction"]
  SETTABLEKS R18 R17 K44 ["topic"]
  LOADB R18 1
  SETTABLEKS R18 R17 K45 ["showNext"]
  DUPTABLE R18 K57 [{"id", "kind", "topic", "instanceId"}]
  LOADK R19 K58 ["rotateCamera"]
  SETTABLEKS R19 R18 K43 ["id"]
  LOADK R19 K59 ["Rotate"]
  SETTABLEKS R19 R18 K55 ["kind"]
  LOADK R19 K60 ["navigation"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADK R19 K61 ["camera"]
  SETTABLEKS R19 R18 K56 ["instanceId"]
  DUPTABLE R19 K63 [{"id", "kind", "keys", "topic"}]
  LOADK R20 K64 ["moveCamera"]
  SETTABLEKS R20 R19 K43 ["id"]
  LOADK R20 K65 ["Input"]
  SETTABLEKS R20 R19 K55 ["kind"]
  NEWTABLE R20 0 4
  GETIMPORT R21 K69 [Enum.KeyCode.W]
  GETIMPORT R22 K71 [Enum.KeyCode.A]
  GETIMPORT R23 K73 [Enum.KeyCode.S]
  GETIMPORT R24 K75 [Enum.KeyCode.D]
  SETLIST R20 R21 4 [1]
  SETTABLEKS R20 R19 K62 ["keys"]
  LOADK R20 K60 ["navigation"]
  SETTABLEKS R20 R19 K44 ["topic"]
  DUPTABLE R20 K63 [{"id", "kind", "keys", "topic"}]
  LOADK R21 K76 ["panCamera"]
  SETTABLEKS R21 R20 K43 ["id"]
  LOADK R21 K65 ["Input"]
  SETTABLEKS R21 R20 K55 ["kind"]
  NEWTABLE R21 0 2
  GETIMPORT R22 K78 [Enum.KeyCode.E]
  GETIMPORT R23 K80 [Enum.KeyCode.Q]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K62 ["keys"]
  LOADK R21 K60 ["navigation"]
  SETTABLEKS R21 R20 K44 ["topic"]
  DUPTABLE R21 K82 [{"id", "kind", "inputs", "topic"}]
  LOADK R22 K83 ["zoomCamera"]
  SETTABLEKS R22 R21 K43 ["id"]
  LOADK R22 K65 ["Input"]
  SETTABLEKS R22 R21 K55 ["kind"]
  NEWTABLE R22 0 1
  GETIMPORT R23 K86 [Enum.UserInputType.MouseWheel]
  SETLIST R22 R23 1 [1]
  SETTABLEKS R22 R21 K81 ["inputs"]
  LOADK R22 K60 ["navigation"]
  SETTABLEKS R22 R21 K44 ["topic"]
  DUPTABLE R22 K90 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R23 K91 ["marketplace"]
  SETTABLEKS R23 R22 K43 ["id"]
  LOADK R23 K91 ["marketplace"]
  SETTABLEKS R23 R22 K44 ["topic"]
  LOADK R23 K40 ["Toolbox"]
  SETTABLEKS R23 R22 K87 ["widgets"]
  LOADB R23 1
  SETTABLEKS R23 R22 K45 ["showNext"]
  DUPTABLE R23 K96 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R12 R23 K92 ["TargetWidgetUri"]
  LOADB R24 1
  SETTABLEKS R24 R23 K93 ["ShowBox"]
  LOADB R24 1
  SETTABLEKS R24 R23 K94 ["ShowHighlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K95 ["ShowShadows"]
  SETTABLEKS R23 R22 K88 ["spotlight"]
  SETTABLEKS R7 R22 K89 ["toolboxLimits"]
  DUPTABLE R23 K98 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R24 K99 ["searchMarketplace"]
  SETTABLEKS R24 R23 K43 ["id"]
  LOADK R24 K100 ["ToolboxSearch"]
  SETTABLEKS R24 R23 K55 ["kind"]
  LOADK R24 K101 ["ball"]
  SETTABLEKS R24 R23 K97 ["search"]
  SETTABLEKS R7 R23 K89 ["toolboxLimits"]
  LOADK R24 K91 ["marketplace"]
  SETTABLEKS R24 R23 K44 ["topic"]
  LOADK R24 K40 ["Toolbox"]
  SETTABLEKS R24 R23 K87 ["widgets"]
  DUPTABLE R24 K103 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R25 K104 ["insertMarketplace"]
  SETTABLEKS R25 R24 K43 ["id"]
  LOADK R25 K105 ["ToolboxInsert"]
  SETTABLEKS R25 R24 K55 ["kind"]
  SETTABLEKS R7 R24 K89 ["toolboxLimits"]
  LOADK R25 K91 ["marketplace"]
  SETTABLEKS R25 R24 K44 ["topic"]
  DUPCLOSURE R25 K106 [PROTO_5]
  CAPTURE VAL R13
  SETTABLEKS R25 R24 K102 ["onSkip"]
  LOADK R25 K40 ["Toolbox"]
  SETTABLEKS R25 R24 K87 ["widgets"]
  DUPTABLE R25 K108 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R26 K109 ["playtest"]
  SETTABLEKS R26 R25 K43 ["id"]
  LOADK R26 K109 ["playtest"]
  SETTABLEKS R26 R25 K44 ["topic"]
  LOADK R26 K110 ["StartPlaytest"]
  SETTABLEKS R26 R25 K55 ["kind"]
  LOADK R26 K111 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K87 ["widgets"]
  LOADK R26 K40 ["Toolbox"]
  SETTABLEKS R26 R25 K107 ["hideWidgets"]
  DUPTABLE R26 K113 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R27 K114 ["avatar"]
  SETTABLEKS R27 R26 K43 ["id"]
  LOADK R27 K109 ["playtest"]
  SETTABLEKS R27 R26 K44 ["topic"]
  LOADK R27 K115 ["Avatar"]
  SETTABLEKS R27 R26 K55 ["kind"]
  GETIMPORT R27 K118 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R27 R26 K112 ["state"]
  LOADK R27 K111 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K87 ["widgets"]
  DUPTABLE R27 K119 [{"id", "topic", "kind", "widgets"}]
  LOADK R28 K120 ["stopPlaytest"]
  SETTABLEKS R28 R27 K43 ["id"]
  LOADK R28 K109 ["playtest"]
  SETTABLEKS R28 R27 K44 ["topic"]
  LOADK R28 K121 ["StopPlaytest"]
  SETTABLEKS R28 R27 K55 ["kind"]
  LOADK R28 K111 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K87 ["widgets"]
  DUPTABLE R28 K127 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R29 K128 ["wedge"]
  SETTABLEKS R29 R28 K43 ["id"]
  LOADK R29 K129 ["Insert"]
  SETTABLEKS R29 R28 K55 ["kind"]
  LOADK R29 K130 ["parts"]
  SETTABLEKS R29 R28 K44 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R29 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K31 ["Standalone"]
  SETTABLEKS R31 R30 K25 ["DataModel"]
  LOADK R31 K31 ["Standalone"]
  SETTABLEKS R31 R30 K26 ["PluginType"]
  LOADK R31 K133 ["Ribbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K33 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K134 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K92 ["TargetWidgetUri"]
  GETIMPORT R30 K137 [Vector2.new]
  LOADN R31 5
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K131 ["Offset"]
  JUMP [+20]
  DUPTABLE R29 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R30 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K138 ["QtRibbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K33 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K139 ["Part"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K92 ["TargetWidgetUri"]
  GETIMPORT R30 K137 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K131 ["Offset"]
  SETTABLEKS R29 R28 K122 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R29 K140 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R30 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K31 ["Standalone"]
  SETTABLEKS R31 R30 K25 ["DataModel"]
  LOADK R31 K31 ["Standalone"]
  SETTABLEKS R31 R30 K26 ["PluginType"]
  LOADK R31 K133 ["Ribbon"]
  SETTABLEKS R31 R30 K27 ["PluginId"]
  LOADK R31 K33 ["Widgets"]
  SETTABLEKS R31 R30 K28 ["Category"]
  LOADK R31 K134 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R31 R30 K29 ["ItemId"]
  SETTABLEKS R30 R29 K92 ["TargetWidgetUri"]
  LOADB R30 1
  SETTABLEKS R30 R29 K94 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R29 K143 [{"target", "showHighlight"}]
  LOADK R30 K144 ["placePartActionRibbonControl"]
  SETTABLEKS R30 R29 K141 ["target"]
  LOADB R30 1
  SETTABLEKS R30 R29 K142 ["showHighlight"]
  SETTABLEKS R29 R28 K88 ["spotlight"]
  LOADK R29 K145 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R29 R28 K46 ["cameraFocus"]
  LOADK R29 K146 [{20, 20, 5}]
  SETTABLEKS R29 R28 K47 ["cameraOffset"]
  LOADK R29 K128 ["wedge"]
  SETTABLEKS R29 R28 K56 ["instanceId"]
  LOADK R29 K139 ["Part"]
  SETTABLEKS R29 R28 K123 ["className"]
  DUPTABLE R29 K148 [{"Shape"}]
  GETIMPORT R30 K151 [Enum.PartType.Wedge]
  SETTABLEKS R30 R29 K147 ["Shape"]
  SETTABLEKS R29 R28 K124 ["properties"]
  DUPCLOSURE R29 K152 [PROTO_6]
  SETTABLEKS R29 R28 K125 ["onBind"]
  DUPCLOSURE R29 K153 [PROTO_7]
  CAPTURE VAL R14
  SETTABLEKS R29 R28 K102 ["onSkip"]
  DUPCLOSURE R29 K154 [PROTO_8]
  CAPTURE VAL R14
  SETTABLEKS R29 R28 K126 ["onUnbind"]
  LOADK R29 K111 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K87 ["widgets"]
  DUPTABLE R29 K157 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R30 K158 ["move"]
  SETTABLEKS R30 R29 K43 ["id"]
  LOADK R30 K159 ["Move"]
  SETTABLEKS R30 R29 K55 ["kind"]
  LOADK R30 K130 ["parts"]
  SETTABLEKS R30 R29 K44 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R30 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K31 ["Standalone"]
  SETTABLEKS R32 R31 K25 ["DataModel"]
  LOADK R32 K31 ["Standalone"]
  SETTABLEKS R32 R31 K26 ["PluginType"]
  LOADK R32 K133 ["Ribbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K33 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K163 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K92 ["TargetWidgetUri"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K160 ["TargetAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K161 ["SubjectAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K131 ["Offset"]
  JUMP [+34]
  DUPTABLE R30 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K138 ["QtRibbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K33 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K159 ["Move"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K92 ["TargetWidgetUri"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K160 ["TargetAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K161 ["SubjectAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K131 ["Offset"]
  SETTABLEKS R30 R29 K122 ["callout"]
  JUMPIFNOT R1 [+37]
  DUPTABLE R30 K164 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R31 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K31 ["Standalone"]
  SETTABLEKS R32 R31 K25 ["DataModel"]
  LOADK R32 K31 ["Standalone"]
  SETTABLEKS R32 R31 K26 ["PluginType"]
  LOADK R32 K133 ["Ribbon"]
  SETTABLEKS R32 R31 K27 ["PluginId"]
  LOADK R32 K33 ["Widgets"]
  SETTABLEKS R32 R31 K28 ["Category"]
  LOADK R32 K163 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R32 R31 K29 ["ItemId"]
  SETTABLEKS R31 R30 K92 ["TargetWidgetUri"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K160 ["TargetAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K161 ["SubjectAnchorPoint"]
  LOADB R31 1
  SETTABLEKS R31 R30 K94 ["ShowHighlight"]
  JUMP [+21]
  DUPTABLE R30 K167 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "showHighlight"}]
  LOADK R31 K168 ["advTranslateAction"]
  SETTABLEKS R31 R30 K141 ["target"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K165 ["targetAnchorPoint"]
  GETIMPORT R31 K137 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K166 ["subjectAnchorPoint"]
  LOADB R31 1
  SETTABLEKS R31 R30 K142 ["showHighlight"]
  SETTABLEKS R30 R29 K88 ["spotlight"]
  LOADK R30 K169 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R30 R29 K155 ["position"]
  LOADN R30 80
  SETTABLEKS R30 R29 K156 ["distance"]
  LOADK R30 K128 ["wedge"]
  SETTABLEKS R30 R29 K56 ["instanceId"]
  DUPCLOSURE R30 K170 [PROTO_9]
  CAPTURE VAL R14
  SETTABLEKS R30 R29 K102 ["onSkip"]
  LOADK R30 K111 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K87 ["widgets"]
  DUPTABLE R30 K172 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R31 K173 ["rotate"]
  SETTABLEKS R31 R30 K43 ["id"]
  LOADK R31 K59 ["Rotate"]
  SETTABLEKS R31 R30 K55 ["kind"]
  LOADK R31 K130 ["parts"]
  SETTABLEKS R31 R30 K44 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R31 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K31 ["Standalone"]
  SETTABLEKS R33 R32 K25 ["DataModel"]
  LOADK R33 K31 ["Standalone"]
  SETTABLEKS R33 R32 K26 ["PluginType"]
  LOADK R33 K133 ["Ribbon"]
  SETTABLEKS R33 R32 K27 ["PluginId"]
  LOADK R33 K33 ["Widgets"]
  SETTABLEKS R33 R32 K28 ["Category"]
  LOADK R33 K174 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R33 R32 K29 ["ItemId"]
  SETTABLEKS R32 R31 K92 ["TargetWidgetUri"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["TargetAnchorPoint"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K161 ["SubjectAnchorPoint"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K131 ["Offset"]
  JUMP [+34]
  DUPTABLE R31 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R33 K138 ["QtRibbon"]
  SETTABLEKS R33 R32 K27 ["PluginId"]
  LOADK R33 K33 ["Widgets"]
  SETTABLEKS R33 R32 K28 ["Category"]
  LOADK R33 K59 ["Rotate"]
  SETTABLEKS R33 R32 K29 ["ItemId"]
  SETTABLEKS R32 R31 K92 ["TargetWidgetUri"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K160 ["TargetAnchorPoint"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K161 ["SubjectAnchorPoint"]
  GETIMPORT R32 K137 [Vector2.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K131 ["Offset"]
  SETTABLEKS R31 R30 K122 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R31 K140 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R32 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K31 ["Standalone"]
  SETTABLEKS R33 R32 K25 ["DataModel"]
  LOADK R33 K31 ["Standalone"]
  SETTABLEKS R33 R32 K26 ["PluginType"]
  LOADK R33 K133 ["Ribbon"]
  SETTABLEKS R33 R32 K27 ["PluginId"]
  LOADK R33 K33 ["Widgets"]
  SETTABLEKS R33 R32 K28 ["Category"]
  LOADK R33 K174 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R33 R32 K29 ["ItemId"]
  SETTABLEKS R32 R31 K92 ["TargetWidgetUri"]
  LOADB R32 1
  SETTABLEKS R32 R31 K94 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R31 K143 [{"target", "showHighlight"}]
  LOADK R32 K175 ["advRotateAction"]
  SETTABLEKS R32 R31 K141 ["target"]
  LOADB R32 1
  SETTABLEKS R32 R31 K142 ["showHighlight"]
  SETTABLEKS R31 R30 K88 ["spotlight"]
  LOADK R31 K176 [{0, -90, 0}]
  SETTABLEKS R31 R30 K171 ["rotation"]
  LOADN R31 30
  SETTABLEKS R31 R30 K156 ["distance"]
  LOADK R31 K128 ["wedge"]
  SETTABLEKS R31 R30 K56 ["instanceId"]
  DUPCLOSURE R31 K177 [PROTO_10]
  CAPTURE VAL R14
  SETTABLEKS R31 R30 K102 ["onSkip"]
  LOADK R31 K111 ["Ribbon-Home"]
  SETTABLEKS R31 R30 K87 ["widgets"]
  DUPTABLE R31 K179 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R32 K180 ["scale"]
  SETTABLEKS R32 R31 K43 ["id"]
  LOADK R32 K181 ["Scale"]
  SETTABLEKS R32 R31 K55 ["kind"]
  LOADK R32 K130 ["parts"]
  SETTABLEKS R32 R31 K44 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R32 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K31 ["Standalone"]
  SETTABLEKS R34 R33 K25 ["DataModel"]
  LOADK R34 K31 ["Standalone"]
  SETTABLEKS R34 R33 K26 ["PluginType"]
  LOADK R34 K133 ["Ribbon"]
  SETTABLEKS R34 R33 K27 ["PluginId"]
  LOADK R34 K33 ["Widgets"]
  SETTABLEKS R34 R33 K28 ["Category"]
  LOADK R34 K182 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R34 R33 K29 ["ItemId"]
  SETTABLEKS R33 R32 K92 ["TargetWidgetUri"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K160 ["TargetAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K161 ["SubjectAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K131 ["Offset"]
  JUMP [+34]
  DUPTABLE R32 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R34 K138 ["QtRibbon"]
  SETTABLEKS R34 R33 K27 ["PluginId"]
  LOADK R34 K33 ["Widgets"]
  SETTABLEKS R34 R33 K28 ["Category"]
  LOADK R34 K181 ["Scale"]
  SETTABLEKS R34 R33 K29 ["ItemId"]
  SETTABLEKS R33 R32 K92 ["TargetWidgetUri"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K160 ["TargetAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K161 ["SubjectAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 5
  CALL R33 2 1
  SETTABLEKS R33 R32 K131 ["Offset"]
  SETTABLEKS R32 R31 K122 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R32 K140 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R33 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K31 ["Standalone"]
  SETTABLEKS R34 R33 K25 ["DataModel"]
  LOADK R34 K31 ["Standalone"]
  SETTABLEKS R34 R33 K26 ["PluginType"]
  LOADK R34 K133 ["Ribbon"]
  SETTABLEKS R34 R33 K27 ["PluginId"]
  LOADK R34 K33 ["Widgets"]
  SETTABLEKS R34 R33 K28 ["Category"]
  LOADK R34 K182 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R34 R33 K29 ["ItemId"]
  SETTABLEKS R33 R32 K92 ["TargetWidgetUri"]
  LOADB R33 1
  SETTABLEKS R33 R32 K94 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R32 K143 [{"target", "showHighlight"}]
  LOADK R33 K183 ["resizeAction"]
  SETTABLEKS R33 R32 K141 ["target"]
  LOADB R33 1
  SETTABLEKS R33 R32 K142 ["showHighlight"]
  SETTABLEKS R32 R31 K88 ["spotlight"]
  LOADK R32 K184 [{15, 5, 10}]
  SETTABLEKS R32 R31 K178 ["minSize"]
  LOADK R32 K128 ["wedge"]
  SETTABLEKS R32 R31 K56 ["instanceId"]
  DUPCLOSURE R32 K185 [PROTO_11]
  CAPTURE VAL R14
  SETTABLEKS R32 R31 K102 ["onSkip"]
  LOADK R32 K111 ["Ribbon-Home"]
  SETTABLEKS R32 R31 K87 ["widgets"]
  SETLIST R15 R16 16 [1]
  DUPTABLE R16 K187 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R17 K188 ["color"]
  SETTABLEKS R17 R16 K43 ["id"]
  LOADK R17 K38 ["Edit"]
  SETTABLEKS R17 R16 K55 ["kind"]
  LOADK R17 K124 ["properties"]
  SETTABLEKS R17 R16 K44 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R17 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K31 ["Standalone"]
  SETTABLEKS R19 R18 K25 ["DataModel"]
  LOADK R19 K31 ["Standalone"]
  SETTABLEKS R19 R18 K26 ["PluginType"]
  LOADK R19 K133 ["Ribbon"]
  SETTABLEKS R19 R18 K27 ["PluginId"]
  LOADK R19 K33 ["Widgets"]
  SETTABLEKS R19 R18 K28 ["Category"]
  LOADK R19 K189 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R19 R18 K29 ["ItemId"]
  SETTABLEKS R18 R17 K92 ["TargetWidgetUri"]
  GETIMPORT R18 K137 [Vector2.new]
  LOADN R19 5
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K131 ["Offset"]
  JUMP [+20]
  DUPTABLE R17 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R19 K138 ["QtRibbon"]
  SETTABLEKS R19 R18 K27 ["PluginId"]
  LOADK R19 K33 ["Widgets"]
  SETTABLEKS R19 R18 K28 ["Category"]
  LOADK R19 K190 ["Color"]
  SETTABLEKS R19 R18 K29 ["ItemId"]
  SETTABLEKS R18 R17 K92 ["TargetWidgetUri"]
  GETIMPORT R18 K137 [Vector2.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K131 ["Offset"]
  SETTABLEKS R17 R16 K122 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R17 K140 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R18 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K31 ["Standalone"]
  SETTABLEKS R19 R18 K25 ["DataModel"]
  LOADK R19 K31 ["Standalone"]
  SETTABLEKS R19 R18 K26 ["PluginType"]
  LOADK R19 K133 ["Ribbon"]
  SETTABLEKS R19 R18 K27 ["PluginId"]
  LOADK R19 K33 ["Widgets"]
  SETTABLEKS R19 R18 K28 ["Category"]
  LOADK R19 K189 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R19 R18 K29 ["ItemId"]
  SETTABLEKS R18 R17 K92 ["TargetWidgetUri"]
  LOADB R18 1
  SETTABLEKS R18 R17 K94 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R17 K143 [{"target", "showHighlight"}]
  LOADK R18 K191 ["actionColorSelector"]
  SETTABLEKS R18 R17 K141 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K142 ["showHighlight"]
  SETTABLEKS R17 R16 K88 ["spotlight"]
  LOADK R17 K139 ["Part"]
  SETTABLEKS R17 R16 K123 ["className"]
  DUPTABLE R17 K192 [{"Color"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K190 ["Color"]
  SETTABLEKS R17 R16 K186 ["changes"]
  DUPCLOSURE R17 K193 [PROTO_12]
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K102 ["onSkip"]
  LOADK R17 K111 ["Ribbon-Home"]
  SETTABLEKS R17 R16 K87 ["widgets"]
  DUPTABLE R17 K187 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R18 K194 ["anchor"]
  SETTABLEKS R18 R17 K43 ["id"]
  LOADK R18 K38 ["Edit"]
  SETTABLEKS R18 R17 K55 ["kind"]
  LOADK R18 K124 ["properties"]
  SETTABLEKS R18 R17 K44 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R18 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K31 ["Standalone"]
  SETTABLEKS R20 R19 K25 ["DataModel"]
  LOADK R20 K31 ["Standalone"]
  SETTABLEKS R20 R19 K26 ["PluginType"]
  LOADK R20 K133 ["Ribbon"]
  SETTABLEKS R20 R19 K27 ["PluginId"]
  LOADK R20 K33 ["Widgets"]
  SETTABLEKS R20 R19 K28 ["Category"]
  LOADK R20 K195 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R20 R19 K29 ["ItemId"]
  SETTABLEKS R19 R18 K92 ["TargetWidgetUri"]
  GETIMPORT R19 K137 [Vector2.new]
  LOADN R20 0
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K131 ["Offset"]
  JUMP [+20]
  DUPTABLE R18 K132 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K34 [{"PluginId", "Category", "ItemId"}]
  LOADK R20 K138 ["QtRibbon"]
  SETTABLEKS R20 R19 K27 ["PluginId"]
  LOADK R20 K33 ["Widgets"]
  SETTABLEKS R20 R19 K28 ["Category"]
  LOADK R20 K196 ["Anchor"]
  SETTABLEKS R20 R19 K29 ["ItemId"]
  SETTABLEKS R19 R18 K92 ["TargetWidgetUri"]
  GETIMPORT R19 K137 [Vector2.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K131 ["Offset"]
  SETTABLEKS R18 R17 K122 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R18 K140 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R19 K30 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K31 ["Standalone"]
  SETTABLEKS R20 R19 K25 ["DataModel"]
  LOADK R20 K31 ["Standalone"]
  SETTABLEKS R20 R19 K26 ["PluginType"]
  LOADK R20 K133 ["Ribbon"]
  SETTABLEKS R20 R19 K27 ["PluginId"]
  LOADK R20 K33 ["Widgets"]
  SETTABLEKS R20 R19 K28 ["Category"]
  LOADK R20 K195 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R20 R19 K29 ["ItemId"]
  SETTABLEKS R19 R18 K92 ["TargetWidgetUri"]
  LOADB R19 1
  SETTABLEKS R19 R18 K94 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R18 K143 [{"target", "showHighlight"}]
  LOADK R19 K197 ["anchorAction"]
  SETTABLEKS R19 R18 K141 ["target"]
  LOADB R19 1
  SETTABLEKS R19 R18 K142 ["showHighlight"]
  SETTABLEKS R18 R17 K88 ["spotlight"]
  LOADK R18 K139 ["Part"]
  SETTABLEKS R18 R17 K123 ["className"]
  DUPTABLE R18 K199 [{"Anchored"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K198 ["Anchored"]
  SETTABLEKS R18 R17 K186 ["changes"]
  DUPCLOSURE R18 K200 [PROTO_13]
  CAPTURE VAL R14
  SETTABLEKS R18 R17 K102 ["onSkip"]
  LOADK R18 K111 ["Ribbon-Home"]
  SETTABLEKS R18 R17 K87 ["widgets"]
  DUPTABLE R18 K201 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R19 K202 ["explorer"]
  SETTABLEKS R19 R18 K43 ["id"]
  DUPTABLE R19 K203 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R19 K92 ["TargetWidgetUri"]
  GETIMPORT R20 K137 [Vector2.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K161 ["SubjectAnchorPoint"]
  GETIMPORT R20 K137 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K160 ["TargetAnchorPoint"]
  GETIMPORT R20 K137 [Vector2.new]
  LOADN R21 246
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K131 ["Offset"]
  SETTABLEKS R19 R18 K122 ["callout"]
  DUPTABLE R19 K96 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R10 R19 K92 ["TargetWidgetUri"]
  LOADB R20 1
  SETTABLEKS R20 R19 K93 ["ShowBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K94 ["ShowHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K95 ["ShowShadows"]
  SETTABLEKS R19 R18 K88 ["spotlight"]
  LOADK R19 K124 ["properties"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADB R19 1
  SETTABLEKS R19 R18 K45 ["showNext"]
  LOADK R19 K204 ["Ribbon-Home,Explorer"]
  SETTABLEKS R19 R18 K87 ["widgets"]
  DUPTABLE R19 K206 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R20 K207 ["select"]
  SETTABLEKS R20 R19 K43 ["id"]
  LOADK R20 K208 ["Select"]
  SETTABLEKS R20 R19 K55 ["kind"]
  LOADK R20 K209 ["Ball"]
  SETTABLEKS R20 R19 K205 ["path"]
  LOADK R20 K124 ["properties"]
  SETTABLEKS R20 R19 K44 ["topic"]
  DUPTABLE R20 K203 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R20 K92 ["TargetWidgetUri"]
  GETIMPORT R21 K137 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K161 ["SubjectAnchorPoint"]
  GETIMPORT R21 K137 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K160 ["TargetAnchorPoint"]
  GETIMPORT R21 K137 [Vector2.new]
  LOADN R22 246
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K131 ["Offset"]
  SETTABLEKS R20 R19 K122 ["callout"]
  DUPCLOSURE R20 K210 [PROTO_14]
  CAPTURE VAL R13
  CAPTURE VAL R6
  SETTABLEKS R20 R19 K102 ["onSkip"]
  LOADK R20 K204 ["Ribbon-Home,Explorer"]
  SETTABLEKS R20 R19 K87 ["widgets"]
  DUPTABLE R20 K211 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R21 K212 ["focus"]
  SETTABLEKS R21 R20 K43 ["id"]
  LOADK R21 K124 ["properties"]
  SETTABLEKS R21 R20 K44 ["topic"]
  LOADK R21 K213 ["Focus"]
  SETTABLEKS R21 R20 K55 ["kind"]
  DUPCLOSURE R21 K214 [PROTO_15]
  CAPTURE VAL R13
  CAPTURE VAL R6
  SETTABLEKS R21 R20 K102 ["onSkip"]
  LOADK R21 K111 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K87 ["widgets"]
  DUPTABLE R21 K215 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R22 K124 ["properties"]
  SETTABLEKS R22 R21 K43 ["id"]
  LOADK R22 K124 ["properties"]
  SETTABLEKS R22 R21 K44 ["topic"]
  DUPTABLE R22 K203 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R11 R22 K92 ["TargetWidgetUri"]
  GETIMPORT R23 K137 [Vector2.new]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K161 ["SubjectAnchorPoint"]
  GETIMPORT R23 K137 [Vector2.new]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K160 ["TargetAnchorPoint"]
  GETIMPORT R23 K137 [Vector2.new]
  LOADN R24 246
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K131 ["Offset"]
  SETTABLEKS R22 R21 K122 ["callout"]
  DUPTABLE R22 K96 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R11 R22 K92 ["TargetWidgetUri"]
  LOADB R23 1
  SETTABLEKS R23 R22 K93 ["ShowBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K94 ["ShowHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K95 ["ShowShadows"]
  SETTABLEKS R22 R21 K88 ["spotlight"]
  LOADB R22 1
  SETTABLEKS R22 R21 K45 ["showNext"]
  LOADK R22 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R22 R21 K87 ["widgets"]
  DUPTABLE R22 K217 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R32 K218 ["speed"]
  SETTABLEKS R32 R22 K43 ["id"]
  LOADK R32 K124 ["properties"]
  SETTABLEKS R32 R22 K44 ["topic"]
  LOADK R32 K38 ["Edit"]
  SETTABLEKS R32 R22 K55 ["kind"]
  DUPTABLE R32 K203 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R11 R32 K92 ["TargetWidgetUri"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 1
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K161 ["SubjectAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K160 ["TargetAnchorPoint"]
  GETIMPORT R33 K137 [Vector2.new]
  LOADN R34 246
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K131 ["Offset"]
  SETTABLEKS R32 R22 K122 ["callout"]
  LOADK R32 K219 ["Model"]
  SETTABLEKS R32 R22 K123 ["className"]
  DUPTABLE R32 K221 [{"Attributes"}]
  DUPTABLE R33 K223 [{"Speed"}]
  LOADB R34 1
  SETTABLEKS R34 R33 K222 ["Speed"]
  SETTABLEKS R33 R32 K220 ["Attributes"]
  SETTABLEKS R32 R22 K186 ["changes"]
  DUPCLOSURE R32 K224 [PROTO_16]
  CAPTURE VAL R13
  SETTABLEKS R32 R22 K102 ["onSkip"]
  LOADK R32 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R32 R22 K87 ["widgets"]
  SETLIST R15 R16 7 [17]
  JUMPIF R4 [+19]
  DUPTABLE R18 K225 [{"id", "topic", "showNext", "widgets"}]
  LOADK R19 K226 ["save"]
  SETTABLEKS R19 R18 K43 ["id"]
  LOADK R19 K227 ["summary"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADB R19 1
  SETTABLEKS R19 R18 K45 ["showNext"]
  LOADK R19 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K87 ["widgets"]
  FASTCALL2 TABLE_INSERT R15 R18 [+4]
  MOVE R17 R15
  GETIMPORT R16 K230 [table.insert]
  CALL R16 2 0
  DUPTABLE R18 K119 [{"id", "topic", "kind", "widgets"}]
  LOADK R19 K231 ["playtest2"]
  SETTABLEKS R19 R18 K43 ["id"]
  LOADK R19 K227 ["summary"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADK R19 K110 ["StartPlaytest"]
  SETTABLEKS R19 R18 K55 ["kind"]
  LOADK R19 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K87 ["widgets"]
  FASTCALL2 TABLE_INSERT R15 R18 [+4]
  MOVE R17 R15
  GETIMPORT R16 K230 [table.insert]
  CALL R16 2 0
  DUPTABLE R18 K119 [{"id", "topic", "kind", "widgets"}]
  LOADK R19 K232 ["stopPlaytest2"]
  SETTABLEKS R19 R18 K43 ["id"]
  LOADK R19 K227 ["summary"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADK R19 K121 ["StopPlaytest"]
  SETTABLEKS R19 R18 K55 ["kind"]
  LOADK R19 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K87 ["widgets"]
  FASTCALL2 TABLE_INSERT R15 R18 [+4]
  MOVE R17 R15
  GETIMPORT R16 K230 [table.insert]
  CALL R16 2 0
  DUPTABLE R18 K233 [{"id", "topic", "widgets"}]
  LOADK R19 K234 ["complete"]
  SETTABLEKS R19 R18 K43 ["id"]
  LOADK R19 K227 ["summary"]
  SETTABLEKS R19 R18 K44 ["topic"]
  LOADK R19 K216 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K87 ["widgets"]
  FASTCALL2 TABLE_INSERT R15 R18 [+4]
  MOVE R17 R15
  GETIMPORT R16 K230 [table.insert]
  CALL R16 2 0
  DUPTABLE R16 K240 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
  LOADK R17 K241 ["StudioTour3"]
  SETTABLEKS R17 R16 K43 ["id"]
  NEWTABLE R17 0 2
  LOADK R18 K242 [81362103443151]
  LOADK R19 K243 [88926143951080]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K235 ["allowedPlaceIds"]
  DUPCLOSURE R17 K244 [PROTO_17]
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K236 ["onStart"]
  DUPCLOSURE R17 K245 [PROTO_18]
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K237 ["onComplete"]
  SETTABLEKS R15 R16 K238 ["steps"]
  JUMPIFNOT R3 [+2]
  LOADB R17 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K239 ["shouldShowCompletedDialog"]
  RETURN R16 1
