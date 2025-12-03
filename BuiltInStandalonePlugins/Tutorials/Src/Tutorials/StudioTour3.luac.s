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
  GETTABLEKS R3 R4 K8 ["getFFlagEnableRibbonTour"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K11 ["Workspace"]
  NAMECALL R3 R3 K12 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K10 [game]
  LOADK R6 K13 ["Selection"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K17 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R6 0 1
  LOADK R7 K18 [17274156146]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K14 ["assetIds"]
  LOADK R6 K19 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R6 R5 K15 ["positionOverride"]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["scriptWarningOverride"]
  DUPCLOSURE R6 K20 [PROTO_0]
  DUPCLOSURE R7 K21 [PROTO_1]
  DUPTABLE R8 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R9 K28 ["Standalone"]
  SETTABLEKS R9 R8 K22 ["DataModel"]
  LOADK R9 K28 ["Standalone"]
  SETTABLEKS R9 R8 K23 ["PluginType"]
  LOADK R9 K29 ["ExplorerPlugin"]
  SETTABLEKS R9 R8 K24 ["PluginId"]
  LOADK R9 K30 ["Widgets"]
  SETTABLEKS R9 R8 K25 ["Category"]
  LOADK R9 K29 ["ExplorerPlugin"]
  SETTABLEKS R9 R8 K26 ["ItemId"]
  DUPTABLE R9 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R10 K32 ["Properties"]
  SETTABLEKS R10 R9 K24 ["PluginId"]
  LOADK R10 K30 ["Widgets"]
  SETTABLEKS R10 R9 K25 ["Category"]
  LOADK R10 K33 ["Main"]
  SETTABLEKS R10 R9 K26 ["ItemId"]
  DUPTABLE R10 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R11 K34 ["Edit"]
  SETTABLEKS R11 R10 K22 ["DataModel"]
  LOADK R11 K35 ["Asset"]
  SETTABLEKS R11 R10 K23 ["PluginType"]
  LOADK R11 K36 ["Toolbox"]
  SETTABLEKS R11 R10 K24 ["PluginId"]
  LOADK R11 K30 ["Widgets"]
  SETTABLEKS R11 R10 K25 ["Category"]
  LOADK R11 K36 ["Toolbox"]
  SETTABLEKS R11 R10 K26 ["ItemId"]
  DUPCLOSURE R11 K37 [PROTO_3]
  CAPTURE VAL R3
  DUPCLOSURE R12 K38 [PROTO_4]
  CAPTURE VAL R3
  NEWTABLE R13 0 26
  DUPTABLE R14 K45 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R15 K46 ["intro1"]
  SETTABLEKS R15 R14 K39 ["id"]
  LOADK R15 K47 ["introduction"]
  SETTABLEKS R15 R14 K40 ["topic"]
  LOADB R15 1
  SETTABLEKS R15 R14 K41 ["showNext"]
  LOADK R15 K19 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R15 R14 K42 ["cameraFocus"]
  LOADK R15 K48 [{80, 30, -20}]
  SETTABLEKS R15 R14 K43 ["cameraOffset"]
  LOADN R15 0
  SETTABLEKS R15 R14 K44 ["cameraMoveDuration"]
  DUPTABLE R15 K49 [{"id", "topic", "showNext"}]
  LOADK R16 K50 ["intro2"]
  SETTABLEKS R16 R15 K39 ["id"]
  LOADK R16 K47 ["introduction"]
  SETTABLEKS R16 R15 K40 ["topic"]
  LOADB R16 1
  SETTABLEKS R16 R15 K41 ["showNext"]
  DUPTABLE R16 K53 [{"id", "kind", "topic", "instanceId"}]
  LOADK R17 K54 ["rotateCamera"]
  SETTABLEKS R17 R16 K39 ["id"]
  LOADK R17 K55 ["Rotate"]
  SETTABLEKS R17 R16 K51 ["kind"]
  LOADK R17 K56 ["navigation"]
  SETTABLEKS R17 R16 K40 ["topic"]
  LOADK R17 K57 ["camera"]
  SETTABLEKS R17 R16 K52 ["instanceId"]
  DUPTABLE R17 K59 [{"id", "kind", "keys", "topic"}]
  LOADK R18 K60 ["moveCamera"]
  SETTABLEKS R18 R17 K39 ["id"]
  LOADK R18 K61 ["Input"]
  SETTABLEKS R18 R17 K51 ["kind"]
  NEWTABLE R18 0 4
  GETIMPORT R19 K65 [Enum.KeyCode.W]
  GETIMPORT R20 K67 [Enum.KeyCode.A]
  GETIMPORT R21 K69 [Enum.KeyCode.S]
  GETIMPORT R22 K71 [Enum.KeyCode.D]
  SETLIST R18 R19 4 [1]
  SETTABLEKS R18 R17 K58 ["keys"]
  LOADK R18 K56 ["navigation"]
  SETTABLEKS R18 R17 K40 ["topic"]
  DUPTABLE R18 K59 [{"id", "kind", "keys", "topic"}]
  LOADK R19 K72 ["panCamera"]
  SETTABLEKS R19 R18 K39 ["id"]
  LOADK R19 K61 ["Input"]
  SETTABLEKS R19 R18 K51 ["kind"]
  NEWTABLE R19 0 2
  GETIMPORT R20 K74 [Enum.KeyCode.E]
  GETIMPORT R21 K76 [Enum.KeyCode.Q]
  SETLIST R19 R20 2 [1]
  SETTABLEKS R19 R18 K58 ["keys"]
  LOADK R19 K56 ["navigation"]
  SETTABLEKS R19 R18 K40 ["topic"]
  DUPTABLE R19 K78 [{"id", "kind", "inputs", "topic"}]
  LOADK R20 K79 ["zoomCamera"]
  SETTABLEKS R20 R19 K39 ["id"]
  LOADK R20 K61 ["Input"]
  SETTABLEKS R20 R19 K51 ["kind"]
  NEWTABLE R20 0 1
  GETIMPORT R21 K82 [Enum.UserInputType.MouseWheel]
  SETLIST R20 R21 1 [1]
  SETTABLEKS R20 R19 K77 ["inputs"]
  LOADK R20 K56 ["navigation"]
  SETTABLEKS R20 R19 K40 ["topic"]
  DUPTABLE R20 K86 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R21 K87 ["marketplace"]
  SETTABLEKS R21 R20 K39 ["id"]
  LOADK R21 K87 ["marketplace"]
  SETTABLEKS R21 R20 K40 ["topic"]
  LOADK R21 K36 ["Toolbox"]
  SETTABLEKS R21 R20 K83 ["widgets"]
  LOADB R21 1
  SETTABLEKS R21 R20 K41 ["showNext"]
  DUPTABLE R21 K92 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R10 R21 K88 ["TargetWidgetUri"]
  LOADB R22 1
  SETTABLEKS R22 R21 K89 ["ShowBox"]
  LOADB R22 1
  SETTABLEKS R22 R21 K90 ["ShowHighlight"]
  LOADB R22 1
  SETTABLEKS R22 R21 K91 ["ShowShadows"]
  SETTABLEKS R21 R20 K84 ["spotlight"]
  SETTABLEKS R5 R20 K85 ["toolboxLimits"]
  DUPTABLE R21 K94 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R22 K95 ["searchMarketplace"]
  SETTABLEKS R22 R21 K39 ["id"]
  LOADK R22 K96 ["ToolboxSearch"]
  SETTABLEKS R22 R21 K51 ["kind"]
  LOADK R22 K97 ["ball"]
  SETTABLEKS R22 R21 K93 ["search"]
  SETTABLEKS R5 R21 K85 ["toolboxLimits"]
  LOADK R22 K87 ["marketplace"]
  SETTABLEKS R22 R21 K40 ["topic"]
  LOADK R22 K36 ["Toolbox"]
  SETTABLEKS R22 R21 K83 ["widgets"]
  DUPTABLE R22 K99 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R23 K100 ["insertMarketplace"]
  SETTABLEKS R23 R22 K39 ["id"]
  LOADK R23 K101 ["ToolboxInsert"]
  SETTABLEKS R23 R22 K51 ["kind"]
  SETTABLEKS R5 R22 K85 ["toolboxLimits"]
  LOADK R23 K87 ["marketplace"]
  SETTABLEKS R23 R22 K40 ["topic"]
  DUPCLOSURE R23 K102 [PROTO_5]
  CAPTURE VAL R11
  SETTABLEKS R23 R22 K98 ["onSkip"]
  LOADK R23 K36 ["Toolbox"]
  SETTABLEKS R23 R22 K83 ["widgets"]
  DUPTABLE R23 K104 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R24 K105 ["playtest"]
  SETTABLEKS R24 R23 K39 ["id"]
  LOADK R24 K105 ["playtest"]
  SETTABLEKS R24 R23 K40 ["topic"]
  LOADK R24 K106 ["StartPlaytest"]
  SETTABLEKS R24 R23 K51 ["kind"]
  LOADK R24 K107 ["Ribbon-Home"]
  SETTABLEKS R24 R23 K83 ["widgets"]
  LOADK R24 K36 ["Toolbox"]
  SETTABLEKS R24 R23 K103 ["hideWidgets"]
  DUPTABLE R24 K109 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R25 K110 ["avatar"]
  SETTABLEKS R25 R24 K39 ["id"]
  LOADK R25 K105 ["playtest"]
  SETTABLEKS R25 R24 K40 ["topic"]
  LOADK R25 K111 ["Avatar"]
  SETTABLEKS R25 R24 K51 ["kind"]
  GETIMPORT R25 K114 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R25 R24 K108 ["state"]
  LOADK R25 K107 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K83 ["widgets"]
  DUPTABLE R25 K115 [{"id", "topic", "kind", "widgets"}]
  LOADK R26 K116 ["stopPlaytest"]
  SETTABLEKS R26 R25 K39 ["id"]
  LOADK R26 K105 ["playtest"]
  SETTABLEKS R26 R25 K40 ["topic"]
  LOADK R26 K117 ["StopPlaytest"]
  SETTABLEKS R26 R25 K51 ["kind"]
  LOADK R26 K107 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K83 ["widgets"]
  DUPTABLE R26 K123 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R27 K124 ["wedge"]
  SETTABLEKS R27 R26 K39 ["id"]
  LOADK R27 K125 ["Insert"]
  SETTABLEKS R27 R26 K51 ["kind"]
  LOADK R27 K126 ["parts"]
  SETTABLEKS R27 R26 K40 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R27 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R28 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K28 ["Standalone"]
  SETTABLEKS R29 R28 K22 ["DataModel"]
  LOADK R29 K28 ["Standalone"]
  SETTABLEKS R29 R28 K23 ["PluginType"]
  LOADK R29 K129 ["Ribbon"]
  SETTABLEKS R29 R28 K24 ["PluginId"]
  LOADK R29 K30 ["Widgets"]
  SETTABLEKS R29 R28 K25 ["Category"]
  LOADK R29 K130 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R29 R28 K26 ["ItemId"]
  SETTABLEKS R28 R27 K88 ["TargetWidgetUri"]
  GETIMPORT R28 K133 [Vector2.new]
  LOADN R29 5
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K127 ["Offset"]
  JUMP [+20]
  DUPTABLE R27 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R28 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R29 K134 ["QtRibbon"]
  SETTABLEKS R29 R28 K24 ["PluginId"]
  LOADK R29 K30 ["Widgets"]
  SETTABLEKS R29 R28 K25 ["Category"]
  LOADK R29 K135 ["Part"]
  SETTABLEKS R29 R28 K26 ["ItemId"]
  SETTABLEKS R28 R27 K88 ["TargetWidgetUri"]
  GETIMPORT R28 K133 [Vector2.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K127 ["Offset"]
  SETTABLEKS R27 R26 K118 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R27 K136 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R28 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K28 ["Standalone"]
  SETTABLEKS R29 R28 K22 ["DataModel"]
  LOADK R29 K28 ["Standalone"]
  SETTABLEKS R29 R28 K23 ["PluginType"]
  LOADK R29 K129 ["Ribbon"]
  SETTABLEKS R29 R28 K24 ["PluginId"]
  LOADK R29 K30 ["Widgets"]
  SETTABLEKS R29 R28 K25 ["Category"]
  LOADK R29 K130 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R29 R28 K26 ["ItemId"]
  SETTABLEKS R28 R27 K88 ["TargetWidgetUri"]
  LOADB R28 1
  SETTABLEKS R28 R27 K90 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R27 K139 [{"target", "showHighlight"}]
  LOADK R28 K140 ["placePartActionRibbonControl"]
  SETTABLEKS R28 R27 K137 ["target"]
  LOADB R28 1
  SETTABLEKS R28 R27 K138 ["showHighlight"]
  SETTABLEKS R27 R26 K84 ["spotlight"]
  LOADK R27 K141 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R27 R26 K42 ["cameraFocus"]
  LOADK R27 K142 [{20, 20, 5}]
  SETTABLEKS R27 R26 K43 ["cameraOffset"]
  LOADK R27 K124 ["wedge"]
  SETTABLEKS R27 R26 K52 ["instanceId"]
  LOADK R27 K135 ["Part"]
  SETTABLEKS R27 R26 K119 ["className"]
  DUPTABLE R27 K144 [{"Shape"}]
  GETIMPORT R28 K147 [Enum.PartType.Wedge]
  SETTABLEKS R28 R27 K143 ["Shape"]
  SETTABLEKS R27 R26 K120 ["properties"]
  DUPCLOSURE R27 K148 [PROTO_6]
  SETTABLEKS R27 R26 K121 ["onBind"]
  DUPCLOSURE R27 K149 [PROTO_7]
  CAPTURE VAL R12
  SETTABLEKS R27 R26 K98 ["onSkip"]
  DUPCLOSURE R27 K150 [PROTO_8]
  CAPTURE VAL R12
  SETTABLEKS R27 R26 K122 ["onUnbind"]
  LOADK R27 K107 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K83 ["widgets"]
  DUPTABLE R27 K153 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R28 K154 ["move"]
  SETTABLEKS R28 R27 K39 ["id"]
  LOADK R28 K155 ["Move"]
  SETTABLEKS R28 R27 K51 ["kind"]
  LOADK R28 K126 ["parts"]
  SETTABLEKS R28 R27 K40 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R28 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R29 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K28 ["Standalone"]
  SETTABLEKS R30 R29 K22 ["DataModel"]
  LOADK R30 K28 ["Standalone"]
  SETTABLEKS R30 R29 K23 ["PluginType"]
  LOADK R30 K129 ["Ribbon"]
  SETTABLEKS R30 R29 K24 ["PluginId"]
  LOADK R30 K30 ["Widgets"]
  SETTABLEKS R30 R29 K25 ["Category"]
  LOADK R30 K159 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R30 R29 K26 ["ItemId"]
  SETTABLEKS R29 R28 K88 ["TargetWidgetUri"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K156 ["TargetAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K157 ["SubjectAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K127 ["Offset"]
  JUMP [+34]
  DUPTABLE R28 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R29 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R30 K134 ["QtRibbon"]
  SETTABLEKS R30 R29 K24 ["PluginId"]
  LOADK R30 K30 ["Widgets"]
  SETTABLEKS R30 R29 K25 ["Category"]
  LOADK R30 K155 ["Move"]
  SETTABLEKS R30 R29 K26 ["ItemId"]
  SETTABLEKS R29 R28 K88 ["TargetWidgetUri"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K156 ["TargetAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K157 ["SubjectAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K127 ["Offset"]
  SETTABLEKS R28 R27 K118 ["callout"]
  JUMPIFNOT R1 [+37]
  DUPTABLE R28 K160 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R29 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K28 ["Standalone"]
  SETTABLEKS R30 R29 K22 ["DataModel"]
  LOADK R30 K28 ["Standalone"]
  SETTABLEKS R30 R29 K23 ["PluginType"]
  LOADK R30 K129 ["Ribbon"]
  SETTABLEKS R30 R29 K24 ["PluginId"]
  LOADK R30 K30 ["Widgets"]
  SETTABLEKS R30 R29 K25 ["Category"]
  LOADK R30 K159 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R30 R29 K26 ["ItemId"]
  SETTABLEKS R29 R28 K88 ["TargetWidgetUri"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K156 ["TargetAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K157 ["SubjectAnchorPoint"]
  LOADB R29 1
  SETTABLEKS R29 R28 K90 ["ShowHighlight"]
  JUMP [+21]
  DUPTABLE R28 K163 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "showHighlight"}]
  LOADK R29 K164 ["advTranslateAction"]
  SETTABLEKS R29 R28 K137 ["target"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K161 ["targetAnchorPoint"]
  GETIMPORT R29 K133 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K162 ["subjectAnchorPoint"]
  LOADB R29 1
  SETTABLEKS R29 R28 K138 ["showHighlight"]
  SETTABLEKS R28 R27 K84 ["spotlight"]
  LOADK R28 K165 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R28 R27 K151 ["position"]
  LOADN R28 80
  SETTABLEKS R28 R27 K152 ["distance"]
  LOADK R28 K124 ["wedge"]
  SETTABLEKS R28 R27 K52 ["instanceId"]
  DUPCLOSURE R28 K166 [PROTO_9]
  CAPTURE VAL R12
  SETTABLEKS R28 R27 K98 ["onSkip"]
  LOADK R28 K107 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K83 ["widgets"]
  DUPTABLE R28 K168 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R29 K169 ["rotate"]
  SETTABLEKS R29 R28 K39 ["id"]
  LOADK R29 K55 ["Rotate"]
  SETTABLEKS R29 R28 K51 ["kind"]
  LOADK R29 K126 ["parts"]
  SETTABLEKS R29 R28 K40 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R29 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R30 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K28 ["Standalone"]
  SETTABLEKS R31 R30 K22 ["DataModel"]
  LOADK R31 K28 ["Standalone"]
  SETTABLEKS R31 R30 K23 ["PluginType"]
  LOADK R31 K129 ["Ribbon"]
  SETTABLEKS R31 R30 K24 ["PluginId"]
  LOADK R31 K30 ["Widgets"]
  SETTABLEKS R31 R30 K25 ["Category"]
  LOADK R31 K170 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R31 R30 K26 ["ItemId"]
  SETTABLEKS R30 R29 K88 ["TargetWidgetUri"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K156 ["TargetAnchorPoint"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K157 ["SubjectAnchorPoint"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K127 ["Offset"]
  JUMP [+34]
  DUPTABLE R29 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R30 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K134 ["QtRibbon"]
  SETTABLEKS R31 R30 K24 ["PluginId"]
  LOADK R31 K30 ["Widgets"]
  SETTABLEKS R31 R30 K25 ["Category"]
  LOADK R31 K55 ["Rotate"]
  SETTABLEKS R31 R30 K26 ["ItemId"]
  SETTABLEKS R30 R29 K88 ["TargetWidgetUri"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K156 ["TargetAnchorPoint"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K157 ["SubjectAnchorPoint"]
  GETIMPORT R30 K133 [Vector2.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K127 ["Offset"]
  SETTABLEKS R29 R28 K118 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R29 K136 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R30 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R31 K28 ["Standalone"]
  SETTABLEKS R31 R30 K22 ["DataModel"]
  LOADK R31 K28 ["Standalone"]
  SETTABLEKS R31 R30 K23 ["PluginType"]
  LOADK R31 K129 ["Ribbon"]
  SETTABLEKS R31 R30 K24 ["PluginId"]
  LOADK R31 K30 ["Widgets"]
  SETTABLEKS R31 R30 K25 ["Category"]
  LOADK R31 K170 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R31 R30 K26 ["ItemId"]
  SETTABLEKS R30 R29 K88 ["TargetWidgetUri"]
  LOADB R30 1
  SETTABLEKS R30 R29 K90 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R29 K139 [{"target", "showHighlight"}]
  LOADK R30 K171 ["advRotateAction"]
  SETTABLEKS R30 R29 K137 ["target"]
  LOADB R30 1
  SETTABLEKS R30 R29 K138 ["showHighlight"]
  SETTABLEKS R29 R28 K84 ["spotlight"]
  LOADK R29 K172 [{0, -90, 0}]
  SETTABLEKS R29 R28 K167 ["rotation"]
  LOADN R29 30
  SETTABLEKS R29 R28 K152 ["distance"]
  LOADK R29 K124 ["wedge"]
  SETTABLEKS R29 R28 K52 ["instanceId"]
  DUPCLOSURE R29 K173 [PROTO_10]
  CAPTURE VAL R12
  SETTABLEKS R29 R28 K98 ["onSkip"]
  LOADK R29 K107 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K83 ["widgets"]
  DUPTABLE R29 K175 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R30 K176 ["scale"]
  SETTABLEKS R30 R29 K39 ["id"]
  LOADK R30 K177 ["Scale"]
  SETTABLEKS R30 R29 K51 ["kind"]
  LOADK R30 K126 ["parts"]
  SETTABLEKS R30 R29 K40 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R30 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K28 ["Standalone"]
  SETTABLEKS R32 R31 K22 ["DataModel"]
  LOADK R32 K28 ["Standalone"]
  SETTABLEKS R32 R31 K23 ["PluginType"]
  LOADK R32 K129 ["Ribbon"]
  SETTABLEKS R32 R31 K24 ["PluginId"]
  LOADK R32 K30 ["Widgets"]
  SETTABLEKS R32 R31 K25 ["Category"]
  LOADK R32 K178 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R32 R31 K26 ["ItemId"]
  SETTABLEKS R31 R30 K88 ["TargetWidgetUri"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K156 ["TargetAnchorPoint"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K157 ["SubjectAnchorPoint"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K127 ["Offset"]
  JUMP [+34]
  DUPTABLE R30 K158 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R31 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K134 ["QtRibbon"]
  SETTABLEKS R32 R31 K24 ["PluginId"]
  LOADK R32 K30 ["Widgets"]
  SETTABLEKS R32 R31 K25 ["Category"]
  LOADK R32 K177 ["Scale"]
  SETTABLEKS R32 R31 K26 ["ItemId"]
  SETTABLEKS R31 R30 K88 ["TargetWidgetUri"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K156 ["TargetAnchorPoint"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K157 ["SubjectAnchorPoint"]
  GETIMPORT R31 K133 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K127 ["Offset"]
  SETTABLEKS R30 R29 K118 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R30 K136 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R31 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K28 ["Standalone"]
  SETTABLEKS R32 R31 K22 ["DataModel"]
  LOADK R32 K28 ["Standalone"]
  SETTABLEKS R32 R31 K23 ["PluginType"]
  LOADK R32 K129 ["Ribbon"]
  SETTABLEKS R32 R31 K24 ["PluginId"]
  LOADK R32 K30 ["Widgets"]
  SETTABLEKS R32 R31 K25 ["Category"]
  LOADK R32 K178 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R32 R31 K26 ["ItemId"]
  SETTABLEKS R31 R30 K88 ["TargetWidgetUri"]
  LOADB R31 1
  SETTABLEKS R31 R30 K90 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R30 K139 [{"target", "showHighlight"}]
  LOADK R31 K179 ["resizeAction"]
  SETTABLEKS R31 R30 K137 ["target"]
  LOADB R31 1
  SETTABLEKS R31 R30 K138 ["showHighlight"]
  SETTABLEKS R30 R29 K84 ["spotlight"]
  LOADK R30 K180 [{15, 5, 10}]
  SETTABLEKS R30 R29 K174 ["minSize"]
  LOADK R30 K124 ["wedge"]
  SETTABLEKS R30 R29 K52 ["instanceId"]
  DUPCLOSURE R30 K181 [PROTO_11]
  CAPTURE VAL R12
  SETTABLEKS R30 R29 K98 ["onSkip"]
  LOADK R30 K107 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K83 ["widgets"]
  SETLIST R13 R14 16 [1]
  DUPTABLE R14 K183 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R15 K184 ["color"]
  SETTABLEKS R15 R14 K39 ["id"]
  LOADK R15 K34 ["Edit"]
  SETTABLEKS R15 R14 K51 ["kind"]
  LOADK R15 K120 ["properties"]
  SETTABLEKS R15 R14 K40 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R15 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R16 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R17 K28 ["Standalone"]
  SETTABLEKS R17 R16 K22 ["DataModel"]
  LOADK R17 K28 ["Standalone"]
  SETTABLEKS R17 R16 K23 ["PluginType"]
  LOADK R17 K129 ["Ribbon"]
  SETTABLEKS R17 R16 K24 ["PluginId"]
  LOADK R17 K30 ["Widgets"]
  SETTABLEKS R17 R16 K25 ["Category"]
  LOADK R17 K185 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R17 R16 K26 ["ItemId"]
  SETTABLEKS R16 R15 K88 ["TargetWidgetUri"]
  GETIMPORT R16 K133 [Vector2.new]
  LOADN R17 5
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K127 ["Offset"]
  JUMP [+20]
  DUPTABLE R15 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R16 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R17 K134 ["QtRibbon"]
  SETTABLEKS R17 R16 K24 ["PluginId"]
  LOADK R17 K30 ["Widgets"]
  SETTABLEKS R17 R16 K25 ["Category"]
  LOADK R17 K186 ["Color"]
  SETTABLEKS R17 R16 K26 ["ItemId"]
  SETTABLEKS R16 R15 K88 ["TargetWidgetUri"]
  GETIMPORT R16 K133 [Vector2.new]
  LOADN R17 0
  LOADN R18 5
  CALL R16 2 1
  SETTABLEKS R16 R15 K127 ["Offset"]
  SETTABLEKS R15 R14 K118 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R15 K136 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R16 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R17 K28 ["Standalone"]
  SETTABLEKS R17 R16 K22 ["DataModel"]
  LOADK R17 K28 ["Standalone"]
  SETTABLEKS R17 R16 K23 ["PluginType"]
  LOADK R17 K129 ["Ribbon"]
  SETTABLEKS R17 R16 K24 ["PluginId"]
  LOADK R17 K30 ["Widgets"]
  SETTABLEKS R17 R16 K25 ["Category"]
  LOADK R17 K185 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R17 R16 K26 ["ItemId"]
  SETTABLEKS R16 R15 K88 ["TargetWidgetUri"]
  LOADB R16 1
  SETTABLEKS R16 R15 K90 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R15 K139 [{"target", "showHighlight"}]
  LOADK R16 K187 ["actionColorSelector"]
  SETTABLEKS R16 R15 K137 ["target"]
  LOADB R16 1
  SETTABLEKS R16 R15 K138 ["showHighlight"]
  SETTABLEKS R15 R14 K84 ["spotlight"]
  LOADK R15 K135 ["Part"]
  SETTABLEKS R15 R14 K119 ["className"]
  DUPTABLE R15 K188 [{"Color"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K186 ["Color"]
  SETTABLEKS R15 R14 K182 ["changes"]
  DUPCLOSURE R15 K189 [PROTO_12]
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K98 ["onSkip"]
  LOADK R15 K107 ["Ribbon-Home"]
  SETTABLEKS R15 R14 K83 ["widgets"]
  DUPTABLE R15 K183 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R16 K190 ["anchor"]
  SETTABLEKS R16 R15 K39 ["id"]
  LOADK R16 K34 ["Edit"]
  SETTABLEKS R16 R15 K51 ["kind"]
  LOADK R16 K120 ["properties"]
  SETTABLEKS R16 R15 K40 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R16 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R17 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R18 K28 ["Standalone"]
  SETTABLEKS R18 R17 K22 ["DataModel"]
  LOADK R18 K28 ["Standalone"]
  SETTABLEKS R18 R17 K23 ["PluginType"]
  LOADK R18 K129 ["Ribbon"]
  SETTABLEKS R18 R17 K24 ["PluginId"]
  LOADK R18 K30 ["Widgets"]
  SETTABLEKS R18 R17 K25 ["Category"]
  LOADK R18 K191 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R18 R17 K26 ["ItemId"]
  SETTABLEKS R17 R16 K88 ["TargetWidgetUri"]
  GETIMPORT R17 K133 [Vector2.new]
  LOADN R18 0
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K127 ["Offset"]
  JUMP [+20]
  DUPTABLE R16 K128 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R17 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R18 K134 ["QtRibbon"]
  SETTABLEKS R18 R17 K24 ["PluginId"]
  LOADK R18 K30 ["Widgets"]
  SETTABLEKS R18 R17 K25 ["Category"]
  LOADK R18 K192 ["Anchor"]
  SETTABLEKS R18 R17 K26 ["ItemId"]
  SETTABLEKS R17 R16 K88 ["TargetWidgetUri"]
  GETIMPORT R17 K133 [Vector2.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K127 ["Offset"]
  SETTABLEKS R16 R15 K118 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R16 K136 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R17 K27 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R18 K28 ["Standalone"]
  SETTABLEKS R18 R17 K22 ["DataModel"]
  LOADK R18 K28 ["Standalone"]
  SETTABLEKS R18 R17 K23 ["PluginType"]
  LOADK R18 K129 ["Ribbon"]
  SETTABLEKS R18 R17 K24 ["PluginId"]
  LOADK R18 K30 ["Widgets"]
  SETTABLEKS R18 R17 K25 ["Category"]
  LOADK R18 K191 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R18 R17 K26 ["ItemId"]
  SETTABLEKS R17 R16 K88 ["TargetWidgetUri"]
  LOADB R17 1
  SETTABLEKS R17 R16 K90 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R16 K139 [{"target", "showHighlight"}]
  LOADK R17 K193 ["anchorAction"]
  SETTABLEKS R17 R16 K137 ["target"]
  LOADB R17 1
  SETTABLEKS R17 R16 K138 ["showHighlight"]
  SETTABLEKS R16 R15 K84 ["spotlight"]
  LOADK R16 K135 ["Part"]
  SETTABLEKS R16 R15 K119 ["className"]
  DUPTABLE R16 K195 [{"Anchored"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K194 ["Anchored"]
  SETTABLEKS R16 R15 K182 ["changes"]
  DUPCLOSURE R16 K196 [PROTO_13]
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K98 ["onSkip"]
  LOADK R16 K107 ["Ribbon-Home"]
  SETTABLEKS R16 R15 K83 ["widgets"]
  DUPTABLE R16 K197 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R17 K198 ["explorer"]
  SETTABLEKS R17 R16 K39 ["id"]
  DUPTABLE R17 K199 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R8 R17 K88 ["TargetWidgetUri"]
  GETIMPORT R18 K133 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K157 ["SubjectAnchorPoint"]
  GETIMPORT R18 K133 [Vector2.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K156 ["TargetAnchorPoint"]
  GETIMPORT R18 K133 [Vector2.new]
  LOADN R19 246
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K127 ["Offset"]
  SETTABLEKS R17 R16 K118 ["callout"]
  DUPTABLE R17 K92 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R8 R17 K88 ["TargetWidgetUri"]
  LOADB R18 1
  SETTABLEKS R18 R17 K89 ["ShowBox"]
  LOADB R18 1
  SETTABLEKS R18 R17 K90 ["ShowHighlight"]
  LOADB R18 1
  SETTABLEKS R18 R17 K91 ["ShowShadows"]
  SETTABLEKS R17 R16 K84 ["spotlight"]
  LOADK R17 K120 ["properties"]
  SETTABLEKS R17 R16 K40 ["topic"]
  LOADB R17 1
  SETTABLEKS R17 R16 K41 ["showNext"]
  LOADK R17 K200 ["Ribbon-Home,Explorer"]
  SETTABLEKS R17 R16 K83 ["widgets"]
  DUPTABLE R17 K202 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R18 K203 ["select"]
  SETTABLEKS R18 R17 K39 ["id"]
  LOADK R18 K204 ["Select"]
  SETTABLEKS R18 R17 K51 ["kind"]
  LOADK R18 K205 ["Ball"]
  SETTABLEKS R18 R17 K201 ["path"]
  LOADK R18 K120 ["properties"]
  SETTABLEKS R18 R17 K40 ["topic"]
  DUPTABLE R18 K199 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R8 R18 K88 ["TargetWidgetUri"]
  GETIMPORT R19 K133 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K157 ["SubjectAnchorPoint"]
  GETIMPORT R19 K133 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K156 ["TargetAnchorPoint"]
  GETIMPORT R19 K133 [Vector2.new]
  LOADN R20 246
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K127 ["Offset"]
  SETTABLEKS R18 R17 K118 ["callout"]
  DUPCLOSURE R18 K206 [PROTO_14]
  CAPTURE VAL R11
  CAPTURE VAL R4
  SETTABLEKS R18 R17 K98 ["onSkip"]
  LOADK R18 K200 ["Ribbon-Home,Explorer"]
  SETTABLEKS R18 R17 K83 ["widgets"]
  DUPTABLE R18 K207 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R19 K208 ["focus"]
  SETTABLEKS R19 R18 K39 ["id"]
  LOADK R19 K120 ["properties"]
  SETTABLEKS R19 R18 K40 ["topic"]
  LOADK R19 K209 ["Focus"]
  SETTABLEKS R19 R18 K51 ["kind"]
  DUPCLOSURE R19 K210 [PROTO_15]
  CAPTURE VAL R11
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K98 ["onSkip"]
  LOADK R19 K107 ["Ribbon-Home"]
  SETTABLEKS R19 R18 K83 ["widgets"]
  DUPTABLE R19 K211 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R20 K120 ["properties"]
  SETTABLEKS R20 R19 K39 ["id"]
  LOADK R20 K120 ["properties"]
  SETTABLEKS R20 R19 K40 ["topic"]
  DUPTABLE R20 K199 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R20 K88 ["TargetWidgetUri"]
  GETIMPORT R21 K133 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K157 ["SubjectAnchorPoint"]
  GETIMPORT R21 K133 [Vector2.new]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K156 ["TargetAnchorPoint"]
  GETIMPORT R21 K133 [Vector2.new]
  LOADN R22 246
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K127 ["Offset"]
  SETTABLEKS R20 R19 K118 ["callout"]
  DUPTABLE R20 K92 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R9 R20 K88 ["TargetWidgetUri"]
  LOADB R21 1
  SETTABLEKS R21 R20 K89 ["ShowBox"]
  LOADB R21 1
  SETTABLEKS R21 R20 K90 ["ShowHighlight"]
  LOADB R21 1
  SETTABLEKS R21 R20 K91 ["ShowShadows"]
  SETTABLEKS R20 R19 K84 ["spotlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K41 ["showNext"]
  LOADK R20 K212 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K83 ["widgets"]
  DUPTABLE R20 K213 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R21 K214 ["speed"]
  SETTABLEKS R21 R20 K39 ["id"]
  LOADK R21 K120 ["properties"]
  SETTABLEKS R21 R20 K40 ["topic"]
  LOADK R21 K34 ["Edit"]
  SETTABLEKS R21 R20 K51 ["kind"]
  DUPTABLE R21 K199 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R9 R21 K88 ["TargetWidgetUri"]
  GETIMPORT R22 K133 [Vector2.new]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K157 ["SubjectAnchorPoint"]
  GETIMPORT R22 K133 [Vector2.new]
  LOADN R23 0
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K156 ["TargetAnchorPoint"]
  GETIMPORT R22 K133 [Vector2.new]
  LOADN R23 246
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K127 ["Offset"]
  SETTABLEKS R21 R20 K118 ["callout"]
  LOADK R21 K215 ["Model"]
  SETTABLEKS R21 R20 K119 ["className"]
  DUPTABLE R21 K217 [{"Attributes"}]
  DUPTABLE R22 K219 [{"Speed"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K218 ["Speed"]
  SETTABLEKS R22 R21 K216 ["Attributes"]
  SETTABLEKS R21 R20 K182 ["changes"]
  DUPCLOSURE R21 K220 [PROTO_16]
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K98 ["onSkip"]
  LOADK R21 K212 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R21 R20 K83 ["widgets"]
  DUPTABLE R21 K115 [{"id", "topic", "kind", "widgets"}]
  LOADK R22 K221 ["playtest2"]
  SETTABLEKS R22 R21 K39 ["id"]
  LOADK R22 K222 ["summary"]
  SETTABLEKS R22 R21 K40 ["topic"]
  LOADK R22 K106 ["StartPlaytest"]
  SETTABLEKS R22 R21 K51 ["kind"]
  LOADK R22 K212 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R22 R21 K83 ["widgets"]
  DUPTABLE R22 K115 [{"id", "topic", "kind", "widgets"}]
  LOADK R23 K223 ["stopPlaytest2"]
  SETTABLEKS R23 R22 K39 ["id"]
  LOADK R23 K222 ["summary"]
  SETTABLEKS R23 R22 K40 ["topic"]
  LOADK R23 K117 ["StopPlaytest"]
  SETTABLEKS R23 R22 K51 ["kind"]
  LOADK R23 K212 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R23 R22 K83 ["widgets"]
  DUPTABLE R23 K224 [{"id", "topic", "widgets"}]
  LOADK R30 K225 ["complete"]
  SETTABLEKS R30 R23 K39 ["id"]
  LOADK R30 K222 ["summary"]
  SETTABLEKS R30 R23 K40 ["topic"]
  LOADK R30 K212 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R30 R23 K83 ["widgets"]
  SETLIST R13 R14 10 [17]
  DUPTABLE R14 K231 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
  LOADK R15 K232 ["StudioTour3"]
  SETTABLEKS R15 R14 K39 ["id"]
  NEWTABLE R15 0 2
  LOADK R16 K233 [81362103443151]
  LOADK R17 K234 [88926143951080]
  SETLIST R15 R16 2 [1]
  SETTABLEKS R15 R14 K226 ["allowedPlaceIds"]
  DUPCLOSURE R15 K235 [PROTO_17]
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K227 ["onStart"]
  DUPCLOSURE R15 K236 [PROTO_18]
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K228 ["onComplete"]
  SETTABLEKS R13 R14 K229 ["steps"]
  JUMPIFNOT R2 [+2]
  LOADB R15 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K230 ["shouldShowCompletedDialog"]
  RETURN R14 1
