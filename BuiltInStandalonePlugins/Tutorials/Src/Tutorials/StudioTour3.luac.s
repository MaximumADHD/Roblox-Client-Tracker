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
  LOADK R6 K12 ["Workspace"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K11 [game]
  LOADK R7 K14 ["Selection"]
  NAMECALL R5 R5 K13 ["GetService"]
  CALL R5 2 1
  DUPTABLE R6 K18 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R7 0 1
  LOADK R8 K19 [17274156146]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K15 ["assetIds"]
  LOADK R7 K20 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R7 R6 K16 ["positionOverride"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["scriptWarningOverride"]
  DUPCLOSURE R7 K21 [PROTO_0]
  DUPCLOSURE R8 K22 [PROTO_1]
  JUMPIFNOT R2 [+17]
  DUPTABLE R9 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R10 K29 ["Standalone"]
  SETTABLEKS R10 R9 K23 ["DataModel"]
  LOADK R10 K29 ["Standalone"]
  SETTABLEKS R10 R9 K24 ["PluginType"]
  LOADK R10 K30 ["ExplorerPlugin"]
  SETTABLEKS R10 R9 K25 ["PluginId"]
  LOADK R10 K31 ["Widgets"]
  SETTABLEKS R10 R9 K26 ["Category"]
  LOADK R10 K30 ["ExplorerPlugin"]
  SETTABLEKS R10 R9 K27 ["ItemId"]
  JUMP [+10]
  DUPTABLE R9 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R10 K33 ["Explorer"]
  SETTABLEKS R10 R9 K25 ["PluginId"]
  LOADK R10 K31 ["Widgets"]
  SETTABLEKS R10 R9 K26 ["Category"]
  LOADK R10 K34 ["Main"]
  SETTABLEKS R10 R9 K27 ["ItemId"]
  DUPTABLE R10 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R11 K35 ["Properties"]
  SETTABLEKS R11 R10 K25 ["PluginId"]
  LOADK R11 K31 ["Widgets"]
  SETTABLEKS R11 R10 K26 ["Category"]
  LOADK R11 K34 ["Main"]
  SETTABLEKS R11 R10 K27 ["ItemId"]
  DUPTABLE R11 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R12 K36 ["Edit"]
  SETTABLEKS R12 R11 K23 ["DataModel"]
  LOADK R12 K37 ["Asset"]
  SETTABLEKS R12 R11 K24 ["PluginType"]
  LOADK R12 K38 ["Toolbox"]
  SETTABLEKS R12 R11 K25 ["PluginId"]
  LOADK R12 K31 ["Widgets"]
  SETTABLEKS R12 R11 K26 ["Category"]
  LOADK R12 K38 ["Toolbox"]
  SETTABLEKS R12 R11 K27 ["ItemId"]
  DUPCLOSURE R12 K39 [PROTO_3]
  CAPTURE VAL R4
  DUPCLOSURE R13 K40 [PROTO_4]
  CAPTURE VAL R4
  NEWTABLE R14 0 26
  DUPTABLE R15 K47 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R16 K48 ["intro1"]
  SETTABLEKS R16 R15 K41 ["id"]
  LOADK R16 K49 ["introduction"]
  SETTABLEKS R16 R15 K42 ["topic"]
  LOADB R16 1
  SETTABLEKS R16 R15 K43 ["showNext"]
  LOADK R16 K20 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R16 R15 K44 ["cameraFocus"]
  LOADK R16 K50 [{80, 30, -20}]
  SETTABLEKS R16 R15 K45 ["cameraOffset"]
  LOADN R16 0
  SETTABLEKS R16 R15 K46 ["cameraMoveDuration"]
  DUPTABLE R16 K51 [{"id", "topic", "showNext"}]
  LOADK R17 K52 ["intro2"]
  SETTABLEKS R17 R16 K41 ["id"]
  LOADK R17 K49 ["introduction"]
  SETTABLEKS R17 R16 K42 ["topic"]
  LOADB R17 1
  SETTABLEKS R17 R16 K43 ["showNext"]
  DUPTABLE R17 K55 [{"id", "kind", "topic", "instanceId"}]
  LOADK R18 K56 ["rotateCamera"]
  SETTABLEKS R18 R17 K41 ["id"]
  LOADK R18 K57 ["Rotate"]
  SETTABLEKS R18 R17 K53 ["kind"]
  LOADK R18 K58 ["navigation"]
  SETTABLEKS R18 R17 K42 ["topic"]
  LOADK R18 K59 ["camera"]
  SETTABLEKS R18 R17 K54 ["instanceId"]
  DUPTABLE R18 K61 [{"id", "kind", "keys", "topic"}]
  LOADK R19 K62 ["moveCamera"]
  SETTABLEKS R19 R18 K41 ["id"]
  LOADK R19 K63 ["Input"]
  SETTABLEKS R19 R18 K53 ["kind"]
  NEWTABLE R19 0 4
  GETIMPORT R20 K67 [Enum.KeyCode.W]
  GETIMPORT R21 K69 [Enum.KeyCode.A]
  GETIMPORT R22 K71 [Enum.KeyCode.S]
  GETIMPORT R23 K73 [Enum.KeyCode.D]
  SETLIST R19 R20 4 [1]
  SETTABLEKS R19 R18 K60 ["keys"]
  LOADK R19 K58 ["navigation"]
  SETTABLEKS R19 R18 K42 ["topic"]
  DUPTABLE R19 K61 [{"id", "kind", "keys", "topic"}]
  LOADK R20 K74 ["panCamera"]
  SETTABLEKS R20 R19 K41 ["id"]
  LOADK R20 K63 ["Input"]
  SETTABLEKS R20 R19 K53 ["kind"]
  NEWTABLE R20 0 2
  GETIMPORT R21 K76 [Enum.KeyCode.E]
  GETIMPORT R22 K78 [Enum.KeyCode.Q]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K60 ["keys"]
  LOADK R20 K58 ["navigation"]
  SETTABLEKS R20 R19 K42 ["topic"]
  DUPTABLE R20 K80 [{"id", "kind", "inputs", "topic"}]
  LOADK R21 K81 ["zoomCamera"]
  SETTABLEKS R21 R20 K41 ["id"]
  LOADK R21 K63 ["Input"]
  SETTABLEKS R21 R20 K53 ["kind"]
  NEWTABLE R21 0 1
  GETIMPORT R22 K84 [Enum.UserInputType.MouseWheel]
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K79 ["inputs"]
  LOADK R21 K58 ["navigation"]
  SETTABLEKS R21 R20 K42 ["topic"]
  DUPTABLE R21 K88 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R22 K89 ["marketplace"]
  SETTABLEKS R22 R21 K41 ["id"]
  LOADK R22 K89 ["marketplace"]
  SETTABLEKS R22 R21 K42 ["topic"]
  LOADK R22 K38 ["Toolbox"]
  SETTABLEKS R22 R21 K85 ["widgets"]
  LOADB R22 1
  SETTABLEKS R22 R21 K43 ["showNext"]
  DUPTABLE R22 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R11 R22 K90 ["TargetWidgetUri"]
  LOADB R23 1
  SETTABLEKS R23 R22 K91 ["ShowBox"]
  LOADB R23 1
  SETTABLEKS R23 R22 K92 ["ShowHighlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K93 ["ShowShadows"]
  SETTABLEKS R22 R21 K86 ["spotlight"]
  SETTABLEKS R6 R21 K87 ["toolboxLimits"]
  DUPTABLE R22 K96 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R23 K97 ["searchMarketplace"]
  SETTABLEKS R23 R22 K41 ["id"]
  LOADK R23 K98 ["ToolboxSearch"]
  SETTABLEKS R23 R22 K53 ["kind"]
  LOADK R23 K99 ["ball"]
  SETTABLEKS R23 R22 K95 ["search"]
  SETTABLEKS R6 R22 K87 ["toolboxLimits"]
  LOADK R23 K89 ["marketplace"]
  SETTABLEKS R23 R22 K42 ["topic"]
  LOADK R23 K38 ["Toolbox"]
  SETTABLEKS R23 R22 K85 ["widgets"]
  DUPTABLE R23 K101 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R24 K102 ["insertMarketplace"]
  SETTABLEKS R24 R23 K41 ["id"]
  LOADK R24 K103 ["ToolboxInsert"]
  SETTABLEKS R24 R23 K53 ["kind"]
  SETTABLEKS R6 R23 K87 ["toolboxLimits"]
  LOADK R24 K89 ["marketplace"]
  SETTABLEKS R24 R23 K42 ["topic"]
  DUPCLOSURE R24 K104 [PROTO_5]
  CAPTURE VAL R12
  SETTABLEKS R24 R23 K100 ["onSkip"]
  LOADK R24 K38 ["Toolbox"]
  SETTABLEKS R24 R23 K85 ["widgets"]
  DUPTABLE R24 K106 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R25 K107 ["playtest"]
  SETTABLEKS R25 R24 K41 ["id"]
  LOADK R25 K107 ["playtest"]
  SETTABLEKS R25 R24 K42 ["topic"]
  LOADK R25 K108 ["StartPlaytest"]
  SETTABLEKS R25 R24 K53 ["kind"]
  LOADK R25 K109 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K85 ["widgets"]
  LOADK R25 K38 ["Toolbox"]
  SETTABLEKS R25 R24 K105 ["hideWidgets"]
  DUPTABLE R25 K111 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R26 K112 ["avatar"]
  SETTABLEKS R26 R25 K41 ["id"]
  LOADK R26 K107 ["playtest"]
  SETTABLEKS R26 R25 K42 ["topic"]
  LOADK R26 K113 ["Avatar"]
  SETTABLEKS R26 R25 K53 ["kind"]
  GETIMPORT R26 K116 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R26 R25 K110 ["state"]
  LOADK R26 K109 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K85 ["widgets"]
  DUPTABLE R26 K117 [{"id", "topic", "kind", "widgets"}]
  LOADK R27 K118 ["stopPlaytest"]
  SETTABLEKS R27 R26 K41 ["id"]
  LOADK R27 K107 ["playtest"]
  SETTABLEKS R27 R26 K42 ["topic"]
  LOADK R27 K119 ["StopPlaytest"]
  SETTABLEKS R27 R26 K53 ["kind"]
  LOADK R27 K109 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K85 ["widgets"]
  DUPTABLE R27 K125 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R28 K126 ["wedge"]
  SETTABLEKS R28 R27 K41 ["id"]
  LOADK R28 K127 ["Insert"]
  SETTABLEKS R28 R27 K53 ["kind"]
  LOADK R28 K128 ["parts"]
  SETTABLEKS R28 R27 K42 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R28 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R29 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K29 ["Standalone"]
  SETTABLEKS R30 R29 K23 ["DataModel"]
  LOADK R30 K29 ["Standalone"]
  SETTABLEKS R30 R29 K24 ["PluginType"]
  LOADK R30 K131 ["Ribbon"]
  SETTABLEKS R30 R29 K25 ["PluginId"]
  LOADK R30 K31 ["Widgets"]
  SETTABLEKS R30 R29 K26 ["Category"]
  LOADK R30 K132 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R30 R29 K27 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  GETIMPORT R29 K135 [Vector2.new]
  LOADN R30 5
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K129 ["Offset"]
  JUMP [+20]
  DUPTABLE R28 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R29 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R30 K136 ["QtRibbon"]
  SETTABLEKS R30 R29 K25 ["PluginId"]
  LOADK R30 K31 ["Widgets"]
  SETTABLEKS R30 R29 K26 ["Category"]
  LOADK R30 K137 ["Part"]
  SETTABLEKS R30 R29 K27 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  GETIMPORT R29 K135 [Vector2.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K129 ["Offset"]
  SETTABLEKS R28 R27 K120 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R28 K138 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R29 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K29 ["Standalone"]
  SETTABLEKS R30 R29 K23 ["DataModel"]
  LOADK R30 K29 ["Standalone"]
  SETTABLEKS R30 R29 K24 ["PluginType"]
  LOADK R30 K131 ["Ribbon"]
  SETTABLEKS R30 R29 K25 ["PluginId"]
  LOADK R30 K31 ["Widgets"]
  SETTABLEKS R30 R29 K26 ["Category"]
  LOADK R30 K132 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R30 R29 K27 ["ItemId"]
  SETTABLEKS R29 R28 K90 ["TargetWidgetUri"]
  LOADB R29 1
  SETTABLEKS R29 R28 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R28 K141 [{"target", "showHighlight"}]
  LOADK R29 K142 ["placePartActionRibbonControl"]
  SETTABLEKS R29 R28 K139 ["target"]
  LOADB R29 1
  SETTABLEKS R29 R28 K140 ["showHighlight"]
  SETTABLEKS R28 R27 K86 ["spotlight"]
  LOADK R28 K143 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R28 R27 K44 ["cameraFocus"]
  LOADK R28 K144 [{20, 20, 5}]
  SETTABLEKS R28 R27 K45 ["cameraOffset"]
  LOADK R28 K126 ["wedge"]
  SETTABLEKS R28 R27 K54 ["instanceId"]
  LOADK R28 K137 ["Part"]
  SETTABLEKS R28 R27 K121 ["className"]
  DUPTABLE R28 K146 [{"Shape"}]
  GETIMPORT R29 K149 [Enum.PartType.Wedge]
  SETTABLEKS R29 R28 K145 ["Shape"]
  SETTABLEKS R28 R27 K122 ["properties"]
  DUPCLOSURE R28 K150 [PROTO_6]
  SETTABLEKS R28 R27 K123 ["onBind"]
  DUPCLOSURE R28 K151 [PROTO_7]
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K100 ["onSkip"]
  DUPCLOSURE R28 K152 [PROTO_8]
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K124 ["onUnbind"]
  LOADK R28 K109 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K85 ["widgets"]
  DUPTABLE R28 K155 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R29 K156 ["move"]
  SETTABLEKS R29 R28 K41 ["id"]
  LOADK R29 K157 ["Move"]
  SETTABLEKS R29 R28 K53 ["kind"]
  LOADK R29 K128 ["parts"]
  SETTABLEKS R29 R28 K42 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R29 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R30 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K29 ["Standalone"]
  SETTABLEKS R31 R30 K23 ["DataModel"]
  LOADK R31 K29 ["Standalone"]
  SETTABLEKS R31 R30 K24 ["PluginType"]
  LOADK R31 K131 ["Ribbon"]
  SETTABLEKS R31 R30 K25 ["PluginId"]
  LOADK R31 K31 ["Widgets"]
  SETTABLEKS R31 R30 K26 ["Category"]
  LOADK R31 K161 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R31 R30 K27 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K158 ["TargetAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K159 ["SubjectAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K129 ["Offset"]
  JUMP [+34]
  DUPTABLE R29 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R30 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K136 ["QtRibbon"]
  SETTABLEKS R31 R30 K25 ["PluginId"]
  LOADK R31 K31 ["Widgets"]
  SETTABLEKS R31 R30 K26 ["Category"]
  LOADK R31 K157 ["Move"]
  SETTABLEKS R31 R30 K27 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K158 ["TargetAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K159 ["SubjectAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K129 ["Offset"]
  SETTABLEKS R29 R28 K120 ["callout"]
  JUMPIFNOT R1 [+37]
  DUPTABLE R29 K162 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R30 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K29 ["Standalone"]
  SETTABLEKS R31 R30 K23 ["DataModel"]
  LOADK R31 K29 ["Standalone"]
  SETTABLEKS R31 R30 K24 ["PluginType"]
  LOADK R31 K131 ["Ribbon"]
  SETTABLEKS R31 R30 K25 ["PluginId"]
  LOADK R31 K31 ["Widgets"]
  SETTABLEKS R31 R30 K26 ["Category"]
  LOADK R31 K161 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R31 R30 K27 ["ItemId"]
  SETTABLEKS R30 R29 K90 ["TargetWidgetUri"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K158 ["TargetAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K159 ["SubjectAnchorPoint"]
  LOADB R30 1
  SETTABLEKS R30 R29 K92 ["ShowHighlight"]
  JUMP [+21]
  DUPTABLE R29 K165 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "showHighlight"}]
  LOADK R30 K166 ["advTranslateAction"]
  SETTABLEKS R30 R29 K139 ["target"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K163 ["targetAnchorPoint"]
  GETIMPORT R30 K135 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K164 ["subjectAnchorPoint"]
  LOADB R30 1
  SETTABLEKS R30 R29 K140 ["showHighlight"]
  SETTABLEKS R29 R28 K86 ["spotlight"]
  LOADK R29 K167 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R29 R28 K153 ["position"]
  LOADN R29 80
  SETTABLEKS R29 R28 K154 ["distance"]
  LOADK R29 K126 ["wedge"]
  SETTABLEKS R29 R28 K54 ["instanceId"]
  DUPCLOSURE R29 K168 [PROTO_9]
  CAPTURE VAL R13
  SETTABLEKS R29 R28 K100 ["onSkip"]
  LOADK R29 K109 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K85 ["widgets"]
  DUPTABLE R29 K170 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R30 K171 ["rotate"]
  SETTABLEKS R30 R29 K41 ["id"]
  LOADK R30 K57 ["Rotate"]
  SETTABLEKS R30 R29 K53 ["kind"]
  LOADK R30 K128 ["parts"]
  SETTABLEKS R30 R29 K42 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R30 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K29 ["Standalone"]
  SETTABLEKS R32 R31 K23 ["DataModel"]
  LOADK R32 K29 ["Standalone"]
  SETTABLEKS R32 R31 K24 ["PluginType"]
  LOADK R32 K131 ["Ribbon"]
  SETTABLEKS R32 R31 K25 ["PluginId"]
  LOADK R32 K31 ["Widgets"]
  SETTABLEKS R32 R31 K26 ["Category"]
  LOADK R32 K172 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R32 R31 K27 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K158 ["TargetAnchorPoint"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K159 ["SubjectAnchorPoint"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K129 ["Offset"]
  JUMP [+34]
  DUPTABLE R30 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K136 ["QtRibbon"]
  SETTABLEKS R32 R31 K25 ["PluginId"]
  LOADK R32 K31 ["Widgets"]
  SETTABLEKS R32 R31 K26 ["Category"]
  LOADK R32 K57 ["Rotate"]
  SETTABLEKS R32 R31 K27 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K158 ["TargetAnchorPoint"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K159 ["SubjectAnchorPoint"]
  GETIMPORT R31 K135 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K129 ["Offset"]
  SETTABLEKS R30 R29 K120 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R30 K138 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R31 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K29 ["Standalone"]
  SETTABLEKS R32 R31 K23 ["DataModel"]
  LOADK R32 K29 ["Standalone"]
  SETTABLEKS R32 R31 K24 ["PluginType"]
  LOADK R32 K131 ["Ribbon"]
  SETTABLEKS R32 R31 K25 ["PluginId"]
  LOADK R32 K31 ["Widgets"]
  SETTABLEKS R32 R31 K26 ["Category"]
  LOADK R32 K172 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R32 R31 K27 ["ItemId"]
  SETTABLEKS R31 R30 K90 ["TargetWidgetUri"]
  LOADB R31 1
  SETTABLEKS R31 R30 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R30 K141 [{"target", "showHighlight"}]
  LOADK R31 K173 ["advRotateAction"]
  SETTABLEKS R31 R30 K139 ["target"]
  LOADB R31 1
  SETTABLEKS R31 R30 K140 ["showHighlight"]
  SETTABLEKS R30 R29 K86 ["spotlight"]
  LOADK R30 K174 [{0, -90, 0}]
  SETTABLEKS R30 R29 K169 ["rotation"]
  LOADN R30 30
  SETTABLEKS R30 R29 K154 ["distance"]
  LOADK R30 K126 ["wedge"]
  SETTABLEKS R30 R29 K54 ["instanceId"]
  DUPCLOSURE R30 K175 [PROTO_10]
  CAPTURE VAL R13
  SETTABLEKS R30 R29 K100 ["onSkip"]
  LOADK R30 K109 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K85 ["widgets"]
  DUPTABLE R30 K177 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R31 K178 ["scale"]
  SETTABLEKS R31 R30 K41 ["id"]
  LOADK R31 K179 ["Scale"]
  SETTABLEKS R31 R30 K53 ["kind"]
  LOADK R31 K128 ["parts"]
  SETTABLEKS R31 R30 K42 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R31 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K29 ["Standalone"]
  SETTABLEKS R33 R32 K23 ["DataModel"]
  LOADK R33 K29 ["Standalone"]
  SETTABLEKS R33 R32 K24 ["PluginType"]
  LOADK R33 K131 ["Ribbon"]
  SETTABLEKS R33 R32 K25 ["PluginId"]
  LOADK R33 K31 ["Widgets"]
  SETTABLEKS R33 R32 K26 ["Category"]
  LOADK R33 K180 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R33 R32 K27 ["ItemId"]
  SETTABLEKS R32 R31 K90 ["TargetWidgetUri"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K158 ["TargetAnchorPoint"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K159 ["SubjectAnchorPoint"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K129 ["Offset"]
  JUMP [+34]
  DUPTABLE R31 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R33 K136 ["QtRibbon"]
  SETTABLEKS R33 R32 K25 ["PluginId"]
  LOADK R33 K31 ["Widgets"]
  SETTABLEKS R33 R32 K26 ["Category"]
  LOADK R33 K179 ["Scale"]
  SETTABLEKS R33 R32 K27 ["ItemId"]
  SETTABLEKS R32 R31 K90 ["TargetWidgetUri"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K158 ["TargetAnchorPoint"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K159 ["SubjectAnchorPoint"]
  GETIMPORT R32 K135 [Vector2.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K129 ["Offset"]
  SETTABLEKS R31 R30 K120 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R31 K138 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R32 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K29 ["Standalone"]
  SETTABLEKS R33 R32 K23 ["DataModel"]
  LOADK R33 K29 ["Standalone"]
  SETTABLEKS R33 R32 K24 ["PluginType"]
  LOADK R33 K131 ["Ribbon"]
  SETTABLEKS R33 R32 K25 ["PluginId"]
  LOADK R33 K31 ["Widgets"]
  SETTABLEKS R33 R32 K26 ["Category"]
  LOADK R33 K180 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R33 R32 K27 ["ItemId"]
  SETTABLEKS R32 R31 K90 ["TargetWidgetUri"]
  LOADB R32 1
  SETTABLEKS R32 R31 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R31 K141 [{"target", "showHighlight"}]
  LOADK R32 K181 ["resizeAction"]
  SETTABLEKS R32 R31 K139 ["target"]
  LOADB R32 1
  SETTABLEKS R32 R31 K140 ["showHighlight"]
  SETTABLEKS R31 R30 K86 ["spotlight"]
  LOADK R31 K182 [{15, 5, 10}]
  SETTABLEKS R31 R30 K176 ["minSize"]
  LOADK R31 K126 ["wedge"]
  SETTABLEKS R31 R30 K54 ["instanceId"]
  DUPCLOSURE R31 K183 [PROTO_11]
  CAPTURE VAL R13
  SETTABLEKS R31 R30 K100 ["onSkip"]
  LOADK R31 K109 ["Ribbon-Home"]
  SETTABLEKS R31 R30 K85 ["widgets"]
  SETLIST R14 R15 16 [1]
  DUPTABLE R15 K185 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R16 K186 ["color"]
  SETTABLEKS R16 R15 K41 ["id"]
  LOADK R16 K36 ["Edit"]
  SETTABLEKS R16 R15 K53 ["kind"]
  LOADK R16 K122 ["properties"]
  SETTABLEKS R16 R15 K42 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R16 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R17 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R18 K29 ["Standalone"]
  SETTABLEKS R18 R17 K23 ["DataModel"]
  LOADK R18 K29 ["Standalone"]
  SETTABLEKS R18 R17 K24 ["PluginType"]
  LOADK R18 K131 ["Ribbon"]
  SETTABLEKS R18 R17 K25 ["PluginId"]
  LOADK R18 K31 ["Widgets"]
  SETTABLEKS R18 R17 K26 ["Category"]
  LOADK R18 K187 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R18 R17 K27 ["ItemId"]
  SETTABLEKS R17 R16 K90 ["TargetWidgetUri"]
  GETIMPORT R17 K135 [Vector2.new]
  LOADN R18 5
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K129 ["Offset"]
  JUMP [+20]
  DUPTABLE R16 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R17 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R18 K136 ["QtRibbon"]
  SETTABLEKS R18 R17 K25 ["PluginId"]
  LOADK R18 K31 ["Widgets"]
  SETTABLEKS R18 R17 K26 ["Category"]
  LOADK R18 K188 ["Color"]
  SETTABLEKS R18 R17 K27 ["ItemId"]
  SETTABLEKS R17 R16 K90 ["TargetWidgetUri"]
  GETIMPORT R17 K135 [Vector2.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K129 ["Offset"]
  SETTABLEKS R16 R15 K120 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R16 K138 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R17 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R18 K29 ["Standalone"]
  SETTABLEKS R18 R17 K23 ["DataModel"]
  LOADK R18 K29 ["Standalone"]
  SETTABLEKS R18 R17 K24 ["PluginType"]
  LOADK R18 K131 ["Ribbon"]
  SETTABLEKS R18 R17 K25 ["PluginId"]
  LOADK R18 K31 ["Widgets"]
  SETTABLEKS R18 R17 K26 ["Category"]
  LOADK R18 K187 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R18 R17 K27 ["ItemId"]
  SETTABLEKS R17 R16 K90 ["TargetWidgetUri"]
  LOADB R17 1
  SETTABLEKS R17 R16 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R16 K141 [{"target", "showHighlight"}]
  LOADK R17 K189 ["actionColorSelector"]
  SETTABLEKS R17 R16 K139 ["target"]
  LOADB R17 1
  SETTABLEKS R17 R16 K140 ["showHighlight"]
  SETTABLEKS R16 R15 K86 ["spotlight"]
  LOADK R16 K137 ["Part"]
  SETTABLEKS R16 R15 K121 ["className"]
  DUPTABLE R16 K190 [{"Color"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K188 ["Color"]
  SETTABLEKS R16 R15 K184 ["changes"]
  DUPCLOSURE R16 K191 [PROTO_12]
  CAPTURE VAL R13
  SETTABLEKS R16 R15 K100 ["onSkip"]
  LOADK R16 K109 ["Ribbon-Home"]
  SETTABLEKS R16 R15 K85 ["widgets"]
  DUPTABLE R16 K185 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R17 K192 ["anchor"]
  SETTABLEKS R17 R16 K41 ["id"]
  LOADK R17 K36 ["Edit"]
  SETTABLEKS R17 R16 K53 ["kind"]
  LOADK R17 K122 ["properties"]
  SETTABLEKS R17 R16 K42 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R17 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K29 ["Standalone"]
  SETTABLEKS R19 R18 K23 ["DataModel"]
  LOADK R19 K29 ["Standalone"]
  SETTABLEKS R19 R18 K24 ["PluginType"]
  LOADK R19 K131 ["Ribbon"]
  SETTABLEKS R19 R18 K25 ["PluginId"]
  LOADK R19 K31 ["Widgets"]
  SETTABLEKS R19 R18 K26 ["Category"]
  LOADK R19 K193 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R19 R18 K27 ["ItemId"]
  SETTABLEKS R18 R17 K90 ["TargetWidgetUri"]
  GETIMPORT R18 K135 [Vector2.new]
  LOADN R19 0
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K129 ["Offset"]
  JUMP [+20]
  DUPTABLE R17 K130 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K32 [{"PluginId", "Category", "ItemId"}]
  LOADK R19 K136 ["QtRibbon"]
  SETTABLEKS R19 R18 K25 ["PluginId"]
  LOADK R19 K31 ["Widgets"]
  SETTABLEKS R19 R18 K26 ["Category"]
  LOADK R19 K194 ["Anchor"]
  SETTABLEKS R19 R18 K27 ["ItemId"]
  SETTABLEKS R18 R17 K90 ["TargetWidgetUri"]
  GETIMPORT R18 K135 [Vector2.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K129 ["Offset"]
  SETTABLEKS R17 R16 K120 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R17 K138 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R18 K28 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K29 ["Standalone"]
  SETTABLEKS R19 R18 K23 ["DataModel"]
  LOADK R19 K29 ["Standalone"]
  SETTABLEKS R19 R18 K24 ["PluginType"]
  LOADK R19 K131 ["Ribbon"]
  SETTABLEKS R19 R18 K25 ["PluginId"]
  LOADK R19 K31 ["Widgets"]
  SETTABLEKS R19 R18 K26 ["Category"]
  LOADK R19 K193 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R19 R18 K27 ["ItemId"]
  SETTABLEKS R18 R17 K90 ["TargetWidgetUri"]
  LOADB R18 1
  SETTABLEKS R18 R17 K92 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R17 K141 [{"target", "showHighlight"}]
  LOADK R18 K195 ["anchorAction"]
  SETTABLEKS R18 R17 K139 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K140 ["showHighlight"]
  SETTABLEKS R17 R16 K86 ["spotlight"]
  LOADK R17 K137 ["Part"]
  SETTABLEKS R17 R16 K121 ["className"]
  DUPTABLE R17 K197 [{"Anchored"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K196 ["Anchored"]
  SETTABLEKS R17 R16 K184 ["changes"]
  DUPCLOSURE R17 K198 [PROTO_13]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K100 ["onSkip"]
  LOADK R17 K109 ["Ribbon-Home"]
  SETTABLEKS R17 R16 K85 ["widgets"]
  DUPTABLE R17 K199 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R18 K200 ["explorer"]
  SETTABLEKS R18 R17 K41 ["id"]
  DUPTABLE R18 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R18 K90 ["TargetWidgetUri"]
  GETIMPORT R19 K135 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K159 ["SubjectAnchorPoint"]
  GETIMPORT R19 K135 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K158 ["TargetAnchorPoint"]
  GETIMPORT R19 K135 [Vector2.new]
  LOADN R20 246
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K129 ["Offset"]
  SETTABLEKS R18 R17 K120 ["callout"]
  DUPTABLE R18 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R9 R18 K90 ["TargetWidgetUri"]
  LOADB R19 1
  SETTABLEKS R19 R18 K91 ["ShowBox"]
  LOADB R19 1
  SETTABLEKS R19 R18 K92 ["ShowHighlight"]
  LOADB R19 1
  SETTABLEKS R19 R18 K93 ["ShowShadows"]
  SETTABLEKS R18 R17 K86 ["spotlight"]
  LOADK R18 K122 ["properties"]
  SETTABLEKS R18 R17 K42 ["topic"]
  LOADB R18 1
  SETTABLEKS R18 R17 K43 ["showNext"]
  LOADK R18 K202 ["Ribbon-Home,Explorer"]
  SETTABLEKS R18 R17 K85 ["widgets"]
  DUPTABLE R18 K204 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R19 K205 ["select"]
  SETTABLEKS R19 R18 K41 ["id"]
  LOADK R19 K206 ["Select"]
  SETTABLEKS R19 R18 K53 ["kind"]
  LOADK R19 K207 ["Ball"]
  SETTABLEKS R19 R18 K203 ["path"]
  LOADK R19 K122 ["properties"]
  SETTABLEKS R19 R18 K42 ["topic"]
  DUPTABLE R19 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R19 K90 ["TargetWidgetUri"]
  GETIMPORT R20 K135 [Vector2.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K159 ["SubjectAnchorPoint"]
  GETIMPORT R20 K135 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K158 ["TargetAnchorPoint"]
  GETIMPORT R20 K135 [Vector2.new]
  LOADN R21 246
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K129 ["Offset"]
  SETTABLEKS R19 R18 K120 ["callout"]
  DUPCLOSURE R19 K208 [PROTO_14]
  CAPTURE VAL R12
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K100 ["onSkip"]
  LOADK R19 K202 ["Ribbon-Home,Explorer"]
  SETTABLEKS R19 R18 K85 ["widgets"]
  DUPTABLE R19 K209 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R20 K210 ["focus"]
  SETTABLEKS R20 R19 K41 ["id"]
  LOADK R20 K122 ["properties"]
  SETTABLEKS R20 R19 K42 ["topic"]
  LOADK R20 K211 ["Focus"]
  SETTABLEKS R20 R19 K53 ["kind"]
  DUPCLOSURE R20 K212 [PROTO_15]
  CAPTURE VAL R12
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K100 ["onSkip"]
  LOADK R20 K109 ["Ribbon-Home"]
  SETTABLEKS R20 R19 K85 ["widgets"]
  DUPTABLE R20 K213 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R21 K122 ["properties"]
  SETTABLEKS R21 R20 K41 ["id"]
  LOADK R21 K122 ["properties"]
  SETTABLEKS R21 R20 K42 ["topic"]
  DUPTABLE R21 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R21 K90 ["TargetWidgetUri"]
  GETIMPORT R22 K135 [Vector2.new]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K159 ["SubjectAnchorPoint"]
  GETIMPORT R22 K135 [Vector2.new]
  LOADN R23 0
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K158 ["TargetAnchorPoint"]
  GETIMPORT R22 K135 [Vector2.new]
  LOADN R23 246
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K129 ["Offset"]
  SETTABLEKS R21 R20 K120 ["callout"]
  DUPTABLE R21 K94 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R10 R21 K90 ["TargetWidgetUri"]
  LOADB R22 1
  SETTABLEKS R22 R21 K91 ["ShowBox"]
  LOADB R22 1
  SETTABLEKS R22 R21 K92 ["ShowHighlight"]
  LOADB R22 1
  SETTABLEKS R22 R21 K93 ["ShowShadows"]
  SETTABLEKS R21 R20 K86 ["spotlight"]
  LOADB R21 1
  SETTABLEKS R21 R20 K43 ["showNext"]
  LOADK R21 K214 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R21 R20 K85 ["widgets"]
  DUPTABLE R21 K215 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R22 K216 ["speed"]
  SETTABLEKS R22 R21 K41 ["id"]
  LOADK R22 K122 ["properties"]
  SETTABLEKS R22 R21 K42 ["topic"]
  LOADK R22 K36 ["Edit"]
  SETTABLEKS R22 R21 K53 ["kind"]
  DUPTABLE R22 K201 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R10 R22 K90 ["TargetWidgetUri"]
  GETIMPORT R23 K135 [Vector2.new]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K159 ["SubjectAnchorPoint"]
  GETIMPORT R23 K135 [Vector2.new]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K158 ["TargetAnchorPoint"]
  GETIMPORT R23 K135 [Vector2.new]
  LOADN R24 246
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K129 ["Offset"]
  SETTABLEKS R22 R21 K120 ["callout"]
  LOADK R22 K217 ["Model"]
  SETTABLEKS R22 R21 K121 ["className"]
  DUPTABLE R22 K219 [{"Attributes"}]
  DUPTABLE R23 K221 [{"Speed"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K220 ["Speed"]
  SETTABLEKS R23 R22 K218 ["Attributes"]
  SETTABLEKS R22 R21 K184 ["changes"]
  DUPCLOSURE R22 K222 [PROTO_16]
  CAPTURE VAL R12
  SETTABLEKS R22 R21 K100 ["onSkip"]
  LOADK R22 K214 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R22 R21 K85 ["widgets"]
  DUPTABLE R22 K117 [{"id", "topic", "kind", "widgets"}]
  LOADK R23 K223 ["playtest2"]
  SETTABLEKS R23 R22 K41 ["id"]
  LOADK R23 K224 ["summary"]
  SETTABLEKS R23 R22 K42 ["topic"]
  LOADK R23 K108 ["StartPlaytest"]
  SETTABLEKS R23 R22 K53 ["kind"]
  LOADK R23 K214 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R23 R22 K85 ["widgets"]
  DUPTABLE R23 K117 [{"id", "topic", "kind", "widgets"}]
  LOADK R24 K225 ["stopPlaytest2"]
  SETTABLEKS R24 R23 K41 ["id"]
  LOADK R24 K224 ["summary"]
  SETTABLEKS R24 R23 K42 ["topic"]
  LOADK R24 K119 ["StopPlaytest"]
  SETTABLEKS R24 R23 K53 ["kind"]
  LOADK R24 K214 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R24 R23 K85 ["widgets"]
  DUPTABLE R24 K226 [{"id", "topic", "widgets"}]
  LOADK R31 K227 ["complete"]
  SETTABLEKS R31 R24 K41 ["id"]
  LOADK R31 K224 ["summary"]
  SETTABLEKS R31 R24 K42 ["topic"]
  LOADK R31 K214 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R31 R24 K85 ["widgets"]
  SETLIST R14 R15 10 [17]
  DUPTABLE R15 K233 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
  LOADK R16 K234 ["StudioTour3"]
  SETTABLEKS R16 R15 K41 ["id"]
  NEWTABLE R16 0 2
  LOADK R17 K235 [81362103443151]
  LOADK R18 K236 [88926143951080]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K228 ["allowedPlaceIds"]
  DUPCLOSURE R16 K237 [PROTO_17]
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K229 ["onStart"]
  DUPCLOSURE R16 K238 [PROTO_18]
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K230 ["onComplete"]
  SETTABLEKS R14 R15 K231 ["steps"]
  JUMPIFNOT R3 [+2]
  LOADB R16 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K232 ["shouldShowCompletedDialog"]
  RETURN R15 1
