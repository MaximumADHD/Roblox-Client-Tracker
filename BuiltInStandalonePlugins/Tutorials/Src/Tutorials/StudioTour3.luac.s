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

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["Ball"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETIMPORT R1 K3 [pcall]
  DUPCLOSURE R2 K4 [PROTO_1]
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

PROTO_3:
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

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADB R3 1
  NAMECALL R1 R0 K4 ["SetTutorialCompletionStatus"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{0, -90, 0}]
  SETTABLEKS R2 R1 K1 ["Rotation"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADK R2 K0 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R2 R1 K1 ["Position"]
  LOADK R2 K2 [{40, 15, 25}]
  SETTABLEKS R2 R1 K3 ["Size"]
  RETURN R0 0

PROTO_11:
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

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Anchored"]
  RETURN R0 0

PROTO_13:
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
  JUMPIFNOT R0 [+5]
  LOADK R3 K0 ["Speed"]
  LOADN R4 250
  NAMECALL R1 R0 K1 ["SetAttribute"]
  CALL R1 3 0
  RETURN R0 0

PROTO_16:
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

PROTO_17:
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
  GETTABLEKS R2 R3 K7 ["getFFlagEnableRibbonTour"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["Workspace"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [game]
  LOADK R5 K12 ["Selection"]
  NAMECALL R3 R3 K11 ["GetService"]
  CALL R3 2 1
  DUPTABLE R4 K16 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R5 0 1
  LOADK R6 K17 [17274156146]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K13 ["assetIds"]
  LOADK R5 K18 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R5 R4 K14 ["positionOverride"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["scriptWarningOverride"]
  DUPCLOSURE R5 K19 [PROTO_0]
  DUPTABLE R6 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R7 K26 ["Standalone"]
  SETTABLEKS R7 R6 K20 ["DataModel"]
  LOADK R7 K26 ["Standalone"]
  SETTABLEKS R7 R6 K21 ["PluginType"]
  LOADK R7 K27 ["ExplorerPlugin"]
  SETTABLEKS R7 R6 K22 ["PluginId"]
  LOADK R7 K28 ["Widgets"]
  SETTABLEKS R7 R6 K23 ["Category"]
  LOADK R7 K27 ["ExplorerPlugin"]
  SETTABLEKS R7 R6 K24 ["ItemId"]
  DUPTABLE R7 K29 [{"PluginId", "Category", "ItemId"}]
  LOADK R8 K30 ["Properties"]
  SETTABLEKS R8 R7 K22 ["PluginId"]
  LOADK R8 K28 ["Widgets"]
  SETTABLEKS R8 R7 K23 ["Category"]
  LOADK R8 K31 ["Main"]
  SETTABLEKS R8 R7 K24 ["ItemId"]
  DUPTABLE R8 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R9 K32 ["Edit"]
  SETTABLEKS R9 R8 K20 ["DataModel"]
  LOADK R9 K33 ["Asset"]
  SETTABLEKS R9 R8 K21 ["PluginType"]
  LOADK R9 K34 ["Toolbox"]
  SETTABLEKS R9 R8 K22 ["PluginId"]
  LOADK R9 K28 ["Widgets"]
  SETTABLEKS R9 R8 K23 ["Category"]
  LOADK R9 K34 ["Toolbox"]
  SETTABLEKS R9 R8 K24 ["ItemId"]
  DUPCLOSURE R9 K35 [PROTO_2]
  CAPTURE VAL R2
  DUPCLOSURE R10 K36 [PROTO_3]
  CAPTURE VAL R2
  NEWTABLE R11 0 26
  DUPTABLE R12 K43 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R13 K44 ["intro1"]
  SETTABLEKS R13 R12 K37 ["id"]
  LOADK R13 K45 ["introduction"]
  SETTABLEKS R13 R12 K38 ["topic"]
  LOADB R13 1
  SETTABLEKS R13 R12 K39 ["showNext"]
  LOADK R13 K18 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R13 R12 K40 ["cameraFocus"]
  LOADK R13 K46 [{80, 30, -20}]
  SETTABLEKS R13 R12 K41 ["cameraOffset"]
  LOADN R13 0
  SETTABLEKS R13 R12 K42 ["cameraMoveDuration"]
  DUPTABLE R13 K47 [{"id", "topic", "showNext"}]
  LOADK R14 K48 ["intro2"]
  SETTABLEKS R14 R13 K37 ["id"]
  LOADK R14 K45 ["introduction"]
  SETTABLEKS R14 R13 K38 ["topic"]
  LOADB R14 1
  SETTABLEKS R14 R13 K39 ["showNext"]
  DUPTABLE R14 K51 [{"id", "kind", "topic", "instanceId"}]
  LOADK R15 K52 ["rotateCamera"]
  SETTABLEKS R15 R14 K37 ["id"]
  LOADK R15 K53 ["Rotate"]
  SETTABLEKS R15 R14 K49 ["kind"]
  LOADK R15 K54 ["navigation"]
  SETTABLEKS R15 R14 K38 ["topic"]
  LOADK R15 K55 ["camera"]
  SETTABLEKS R15 R14 K50 ["instanceId"]
  DUPTABLE R15 K57 [{"id", "kind", "keys", "topic"}]
  LOADK R16 K58 ["moveCamera"]
  SETTABLEKS R16 R15 K37 ["id"]
  LOADK R16 K59 ["Input"]
  SETTABLEKS R16 R15 K49 ["kind"]
  NEWTABLE R16 0 4
  GETIMPORT R17 K63 [Enum.KeyCode.W]
  GETIMPORT R18 K65 [Enum.KeyCode.A]
  GETIMPORT R19 K67 [Enum.KeyCode.S]
  GETIMPORT R20 K69 [Enum.KeyCode.D]
  SETLIST R16 R17 4 [1]
  SETTABLEKS R16 R15 K56 ["keys"]
  LOADK R16 K54 ["navigation"]
  SETTABLEKS R16 R15 K38 ["topic"]
  DUPTABLE R16 K57 [{"id", "kind", "keys", "topic"}]
  LOADK R17 K70 ["panCamera"]
  SETTABLEKS R17 R16 K37 ["id"]
  LOADK R17 K59 ["Input"]
  SETTABLEKS R17 R16 K49 ["kind"]
  NEWTABLE R17 0 2
  GETIMPORT R18 K72 [Enum.KeyCode.E]
  GETIMPORT R19 K74 [Enum.KeyCode.Q]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K56 ["keys"]
  LOADK R17 K54 ["navigation"]
  SETTABLEKS R17 R16 K38 ["topic"]
  DUPTABLE R17 K76 [{"id", "kind", "inputs", "topic"}]
  LOADK R18 K77 ["zoomCamera"]
  SETTABLEKS R18 R17 K37 ["id"]
  LOADK R18 K59 ["Input"]
  SETTABLEKS R18 R17 K49 ["kind"]
  NEWTABLE R18 0 1
  GETIMPORT R19 K80 [Enum.UserInputType.MouseWheel]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K75 ["inputs"]
  LOADK R18 K54 ["navigation"]
  SETTABLEKS R18 R17 K38 ["topic"]
  DUPTABLE R18 K84 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R19 K85 ["marketplace"]
  SETTABLEKS R19 R18 K37 ["id"]
  LOADK R19 K85 ["marketplace"]
  SETTABLEKS R19 R18 K38 ["topic"]
  LOADK R19 K34 ["Toolbox"]
  SETTABLEKS R19 R18 K81 ["widgets"]
  LOADB R19 1
  SETTABLEKS R19 R18 K39 ["showNext"]
  DUPTABLE R19 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R8 R19 K86 ["TargetWidgetUri"]
  LOADB R20 1
  SETTABLEKS R20 R19 K87 ["ShowBox"]
  LOADB R20 1
  SETTABLEKS R20 R19 K88 ["ShowHighlight"]
  LOADB R20 1
  SETTABLEKS R20 R19 K89 ["ShowShadows"]
  SETTABLEKS R19 R18 K82 ["spotlight"]
  SETTABLEKS R4 R18 K83 ["toolboxLimits"]
  DUPTABLE R19 K92 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R20 K93 ["searchMarketplace"]
  SETTABLEKS R20 R19 K37 ["id"]
  LOADK R20 K94 ["ToolboxSearch"]
  SETTABLEKS R20 R19 K49 ["kind"]
  LOADK R20 K95 ["ball"]
  SETTABLEKS R20 R19 K91 ["search"]
  SETTABLEKS R4 R19 K83 ["toolboxLimits"]
  LOADK R20 K85 ["marketplace"]
  SETTABLEKS R20 R19 K38 ["topic"]
  LOADK R20 K34 ["Toolbox"]
  SETTABLEKS R20 R19 K81 ["widgets"]
  DUPTABLE R20 K97 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R21 K98 ["insertMarketplace"]
  SETTABLEKS R21 R20 K37 ["id"]
  LOADK R21 K99 ["ToolboxInsert"]
  SETTABLEKS R21 R20 K49 ["kind"]
  SETTABLEKS R4 R20 K83 ["toolboxLimits"]
  LOADK R21 K85 ["marketplace"]
  SETTABLEKS R21 R20 K38 ["topic"]
  DUPCLOSURE R21 K100 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R21 R20 K96 ["onSkip"]
  LOADK R21 K34 ["Toolbox"]
  SETTABLEKS R21 R20 K81 ["widgets"]
  DUPTABLE R21 K102 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R22 K103 ["playtest"]
  SETTABLEKS R22 R21 K37 ["id"]
  LOADK R22 K103 ["playtest"]
  SETTABLEKS R22 R21 K38 ["topic"]
  LOADK R22 K104 ["StartPlaytest"]
  SETTABLEKS R22 R21 K49 ["kind"]
  LOADK R22 K105 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K81 ["widgets"]
  LOADK R22 K34 ["Toolbox"]
  SETTABLEKS R22 R21 K101 ["hideWidgets"]
  DUPTABLE R22 K107 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R23 K108 ["avatar"]
  SETTABLEKS R23 R22 K37 ["id"]
  LOADK R23 K103 ["playtest"]
  SETTABLEKS R23 R22 K38 ["topic"]
  LOADK R23 K109 ["Avatar"]
  SETTABLEKS R23 R22 K49 ["kind"]
  GETIMPORT R23 K112 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R23 R22 K106 ["state"]
  LOADK R23 K105 ["Ribbon-Home"]
  SETTABLEKS R23 R22 K81 ["widgets"]
  DUPTABLE R23 K113 [{"id", "topic", "kind", "widgets"}]
  LOADK R24 K114 ["stopPlaytest"]
  SETTABLEKS R24 R23 K37 ["id"]
  LOADK R24 K103 ["playtest"]
  SETTABLEKS R24 R23 K38 ["topic"]
  LOADK R24 K115 ["StopPlaytest"]
  SETTABLEKS R24 R23 K49 ["kind"]
  LOADK R24 K105 ["Ribbon-Home"]
  SETTABLEKS R24 R23 K81 ["widgets"]
  DUPTABLE R24 K121 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R25 K122 ["wedge"]
  SETTABLEKS R25 R24 K37 ["id"]
  LOADK R25 K123 ["Insert"]
  SETTABLEKS R25 R24 K49 ["kind"]
  LOADK R25 K124 ["parts"]
  SETTABLEKS R25 R24 K38 ["topic"]
  DUPTABLE R25 K126 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R26 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R27 K26 ["Standalone"]
  SETTABLEKS R27 R26 K20 ["DataModel"]
  LOADK R27 K26 ["Standalone"]
  SETTABLEKS R27 R26 K21 ["PluginType"]
  LOADK R27 K127 ["Ribbon"]
  SETTABLEKS R27 R26 K22 ["PluginId"]
  LOADK R27 K28 ["Widgets"]
  SETTABLEKS R27 R26 K23 ["Category"]
  LOADK R27 K128 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R27 R26 K24 ["ItemId"]
  SETTABLEKS R26 R25 K86 ["TargetWidgetUri"]
  GETIMPORT R26 K131 [Vector2.new]
  LOADN R27 5
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K125 ["Offset"]
  SETTABLEKS R25 R24 K116 ["callout"]
  DUPTABLE R25 K132 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R26 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R27 K26 ["Standalone"]
  SETTABLEKS R27 R26 K20 ["DataModel"]
  LOADK R27 K26 ["Standalone"]
  SETTABLEKS R27 R26 K21 ["PluginType"]
  LOADK R27 K127 ["Ribbon"]
  SETTABLEKS R27 R26 K22 ["PluginId"]
  LOADK R27 K28 ["Widgets"]
  SETTABLEKS R27 R26 K23 ["Category"]
  LOADK R27 K128 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R27 R26 K24 ["ItemId"]
  SETTABLEKS R26 R25 K86 ["TargetWidgetUri"]
  LOADB R26 1
  SETTABLEKS R26 R25 K88 ["ShowHighlight"]
  SETTABLEKS R25 R24 K82 ["spotlight"]
  LOADK R25 K133 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R25 R24 K40 ["cameraFocus"]
  LOADK R25 K134 [{20, 20, 5}]
  SETTABLEKS R25 R24 K41 ["cameraOffset"]
  LOADK R25 K122 ["wedge"]
  SETTABLEKS R25 R24 K50 ["instanceId"]
  LOADK R25 K135 ["Part"]
  SETTABLEKS R25 R24 K117 ["className"]
  DUPTABLE R25 K137 [{"Shape"}]
  GETIMPORT R26 K140 [Enum.PartType.Wedge]
  SETTABLEKS R26 R25 K136 ["Shape"]
  SETTABLEKS R25 R24 K118 ["properties"]
  DUPCLOSURE R25 K141 [PROTO_5]
  SETTABLEKS R25 R24 K119 ["onBind"]
  DUPCLOSURE R25 K142 [PROTO_6]
  CAPTURE VAL R10
  SETTABLEKS R25 R24 K96 ["onSkip"]
  DUPCLOSURE R25 K143 [PROTO_7]
  CAPTURE VAL R10
  SETTABLEKS R25 R24 K120 ["onUnbind"]
  LOADK R25 K105 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K81 ["widgets"]
  DUPTABLE R25 K146 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R26 K147 ["move"]
  SETTABLEKS R26 R25 K37 ["id"]
  LOADK R26 K148 ["Move"]
  SETTABLEKS R26 R25 K49 ["kind"]
  LOADK R26 K124 ["parts"]
  SETTABLEKS R26 R25 K38 ["topic"]
  DUPTABLE R26 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R27 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R28 K26 ["Standalone"]
  SETTABLEKS R28 R27 K20 ["DataModel"]
  LOADK R28 K26 ["Standalone"]
  SETTABLEKS R28 R27 K21 ["PluginType"]
  LOADK R28 K127 ["Ribbon"]
  SETTABLEKS R28 R27 K22 ["PluginId"]
  LOADK R28 K28 ["Widgets"]
  SETTABLEKS R28 R27 K23 ["Category"]
  LOADK R28 K152 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R28 R27 K24 ["ItemId"]
  SETTABLEKS R27 R26 K86 ["TargetWidgetUri"]
  GETIMPORT R27 K131 [Vector2.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K149 ["TargetAnchorPoint"]
  GETIMPORT R27 K131 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K150 ["SubjectAnchorPoint"]
  GETIMPORT R27 K131 [Vector2.new]
  LOADN R28 0
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["Offset"]
  SETTABLEKS R26 R25 K116 ["callout"]
  DUPTABLE R26 K153 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R27 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R28 K26 ["Standalone"]
  SETTABLEKS R28 R27 K20 ["DataModel"]
  LOADK R28 K26 ["Standalone"]
  SETTABLEKS R28 R27 K21 ["PluginType"]
  LOADK R28 K127 ["Ribbon"]
  SETTABLEKS R28 R27 K22 ["PluginId"]
  LOADK R28 K28 ["Widgets"]
  SETTABLEKS R28 R27 K23 ["Category"]
  LOADK R28 K152 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R28 R27 K24 ["ItemId"]
  SETTABLEKS R27 R26 K86 ["TargetWidgetUri"]
  GETIMPORT R27 K131 [Vector2.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K149 ["TargetAnchorPoint"]
  GETIMPORT R27 K131 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K150 ["SubjectAnchorPoint"]
  LOADB R27 1
  SETTABLEKS R27 R26 K88 ["ShowHighlight"]
  SETTABLEKS R26 R25 K82 ["spotlight"]
  LOADK R26 K154 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R26 R25 K144 ["position"]
  LOADN R26 80
  SETTABLEKS R26 R25 K145 ["distance"]
  LOADK R26 K122 ["wedge"]
  SETTABLEKS R26 R25 K50 ["instanceId"]
  DUPCLOSURE R26 K155 [PROTO_8]
  CAPTURE VAL R10
  SETTABLEKS R26 R25 K96 ["onSkip"]
  LOADK R26 K105 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K81 ["widgets"]
  DUPTABLE R26 K157 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R27 K158 ["rotate"]
  SETTABLEKS R27 R26 K37 ["id"]
  LOADK R27 K53 ["Rotate"]
  SETTABLEKS R27 R26 K49 ["kind"]
  LOADK R27 K124 ["parts"]
  SETTABLEKS R27 R26 K38 ["topic"]
  DUPTABLE R27 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R28 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K26 ["Standalone"]
  SETTABLEKS R29 R28 K20 ["DataModel"]
  LOADK R29 K26 ["Standalone"]
  SETTABLEKS R29 R28 K21 ["PluginType"]
  LOADK R29 K127 ["Ribbon"]
  SETTABLEKS R29 R28 K22 ["PluginId"]
  LOADK R29 K28 ["Widgets"]
  SETTABLEKS R29 R28 K23 ["Category"]
  LOADK R29 K159 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R29 R28 K24 ["ItemId"]
  SETTABLEKS R28 R27 K86 ["TargetWidgetUri"]
  GETIMPORT R28 K131 [Vector2.new]
  LOADN R29 0
  LOADN R30 1
  CALL R28 2 1
  SETTABLEKS R28 R27 K149 ["TargetAnchorPoint"]
  GETIMPORT R28 K131 [Vector2.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K150 ["SubjectAnchorPoint"]
  GETIMPORT R28 K131 [Vector2.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K125 ["Offset"]
  SETTABLEKS R27 R26 K116 ["callout"]
  DUPTABLE R27 K132 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R28 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K26 ["Standalone"]
  SETTABLEKS R29 R28 K20 ["DataModel"]
  LOADK R29 K26 ["Standalone"]
  SETTABLEKS R29 R28 K21 ["PluginType"]
  LOADK R29 K127 ["Ribbon"]
  SETTABLEKS R29 R28 K22 ["PluginId"]
  LOADK R29 K28 ["Widgets"]
  SETTABLEKS R29 R28 K23 ["Category"]
  LOADK R29 K159 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R29 R28 K24 ["ItemId"]
  SETTABLEKS R28 R27 K86 ["TargetWidgetUri"]
  LOADB R28 1
  SETTABLEKS R28 R27 K88 ["ShowHighlight"]
  SETTABLEKS R27 R26 K82 ["spotlight"]
  LOADK R27 K160 [{0, -90, 0}]
  SETTABLEKS R27 R26 K156 ["rotation"]
  LOADN R27 30
  SETTABLEKS R27 R26 K145 ["distance"]
  LOADK R27 K122 ["wedge"]
  SETTABLEKS R27 R26 K50 ["instanceId"]
  DUPCLOSURE R27 K161 [PROTO_9]
  CAPTURE VAL R10
  SETTABLEKS R27 R26 K96 ["onSkip"]
  LOADK R27 K105 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K81 ["widgets"]
  DUPTABLE R27 K163 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R28 K164 ["scale"]
  SETTABLEKS R28 R27 K37 ["id"]
  LOADK R28 K165 ["Scale"]
  SETTABLEKS R28 R27 K49 ["kind"]
  LOADK R28 K124 ["parts"]
  SETTABLEKS R28 R27 K38 ["topic"]
  DUPTABLE R28 K151 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R29 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K26 ["Standalone"]
  SETTABLEKS R30 R29 K20 ["DataModel"]
  LOADK R30 K26 ["Standalone"]
  SETTABLEKS R30 R29 K21 ["PluginType"]
  LOADK R30 K127 ["Ribbon"]
  SETTABLEKS R30 R29 K22 ["PluginId"]
  LOADK R30 K28 ["Widgets"]
  SETTABLEKS R30 R29 K23 ["Category"]
  LOADK R30 K166 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R30 R29 K24 ["ItemId"]
  SETTABLEKS R29 R28 K86 ["TargetWidgetUri"]
  GETIMPORT R29 K131 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K149 ["TargetAnchorPoint"]
  GETIMPORT R29 K131 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K150 ["SubjectAnchorPoint"]
  GETIMPORT R29 K131 [Vector2.new]
  LOADN R30 0
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K125 ["Offset"]
  SETTABLEKS R28 R27 K116 ["callout"]
  DUPTABLE R28 K132 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R29 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K26 ["Standalone"]
  SETTABLEKS R30 R29 K20 ["DataModel"]
  LOADK R30 K26 ["Standalone"]
  SETTABLEKS R30 R29 K21 ["PluginType"]
  LOADK R30 K127 ["Ribbon"]
  SETTABLEKS R30 R29 K22 ["PluginId"]
  LOADK R30 K28 ["Widgets"]
  SETTABLEKS R30 R29 K23 ["Category"]
  LOADK R30 K166 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R30 R29 K24 ["ItemId"]
  SETTABLEKS R29 R28 K86 ["TargetWidgetUri"]
  LOADB R29 1
  SETTABLEKS R29 R28 K88 ["ShowHighlight"]
  SETTABLEKS R28 R27 K82 ["spotlight"]
  LOADK R28 K167 [{15, 5, 10}]
  SETTABLEKS R28 R27 K162 ["minSize"]
  LOADK R28 K122 ["wedge"]
  SETTABLEKS R28 R27 K50 ["instanceId"]
  DUPCLOSURE R28 K168 [PROTO_10]
  CAPTURE VAL R10
  SETTABLEKS R28 R27 K96 ["onSkip"]
  LOADK R28 K105 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K81 ["widgets"]
  SETLIST R11 R12 16 [1]
  DUPTABLE R12 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R13 K171 ["color"]
  SETTABLEKS R13 R12 K37 ["id"]
  LOADK R13 K32 ["Edit"]
  SETTABLEKS R13 R12 K49 ["kind"]
  LOADK R13 K118 ["properties"]
  SETTABLEKS R13 R12 K38 ["topic"]
  DUPTABLE R13 K126 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R15 K26 ["Standalone"]
  SETTABLEKS R15 R14 K20 ["DataModel"]
  LOADK R15 K26 ["Standalone"]
  SETTABLEKS R15 R14 K21 ["PluginType"]
  LOADK R15 K127 ["Ribbon"]
  SETTABLEKS R15 R14 K22 ["PluginId"]
  LOADK R15 K28 ["Widgets"]
  SETTABLEKS R15 R14 K23 ["Category"]
  LOADK R15 K172 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R15 R14 K24 ["ItemId"]
  SETTABLEKS R14 R13 K86 ["TargetWidgetUri"]
  GETIMPORT R14 K131 [Vector2.new]
  LOADN R15 5
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K125 ["Offset"]
  SETTABLEKS R13 R12 K116 ["callout"]
  DUPTABLE R13 K132 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R15 K26 ["Standalone"]
  SETTABLEKS R15 R14 K20 ["DataModel"]
  LOADK R15 K26 ["Standalone"]
  SETTABLEKS R15 R14 K21 ["PluginType"]
  LOADK R15 K127 ["Ribbon"]
  SETTABLEKS R15 R14 K22 ["PluginId"]
  LOADK R15 K28 ["Widgets"]
  SETTABLEKS R15 R14 K23 ["Category"]
  LOADK R15 K172 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R15 R14 K24 ["ItemId"]
  SETTABLEKS R14 R13 K86 ["TargetWidgetUri"]
  LOADB R14 1
  SETTABLEKS R14 R13 K88 ["ShowHighlight"]
  SETTABLEKS R13 R12 K82 ["spotlight"]
  LOADK R13 K135 ["Part"]
  SETTABLEKS R13 R12 K117 ["className"]
  DUPTABLE R13 K174 [{"Color"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K173 ["Color"]
  SETTABLEKS R13 R12 K169 ["changes"]
  DUPCLOSURE R13 K175 [PROTO_11]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K96 ["onSkip"]
  LOADK R13 K105 ["Ribbon-Home"]
  SETTABLEKS R13 R12 K81 ["widgets"]
  DUPTABLE R13 K170 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R14 K176 ["anchor"]
  SETTABLEKS R14 R13 K37 ["id"]
  LOADK R14 K32 ["Edit"]
  SETTABLEKS R14 R13 K49 ["kind"]
  LOADK R14 K118 ["properties"]
  SETTABLEKS R14 R13 K38 ["topic"]
  DUPTABLE R14 K126 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R15 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R16 K26 ["Standalone"]
  SETTABLEKS R16 R15 K20 ["DataModel"]
  LOADK R16 K26 ["Standalone"]
  SETTABLEKS R16 R15 K21 ["PluginType"]
  LOADK R16 K127 ["Ribbon"]
  SETTABLEKS R16 R15 K22 ["PluginId"]
  LOADK R16 K28 ["Widgets"]
  SETTABLEKS R16 R15 K23 ["Category"]
  LOADK R16 K177 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R16 R15 K24 ["ItemId"]
  SETTABLEKS R15 R14 K86 ["TargetWidgetUri"]
  GETIMPORT R15 K131 [Vector2.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K125 ["Offset"]
  SETTABLEKS R14 R13 K116 ["callout"]
  DUPTABLE R14 K132 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R15 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R16 K26 ["Standalone"]
  SETTABLEKS R16 R15 K20 ["DataModel"]
  LOADK R16 K26 ["Standalone"]
  SETTABLEKS R16 R15 K21 ["PluginType"]
  LOADK R16 K127 ["Ribbon"]
  SETTABLEKS R16 R15 K22 ["PluginId"]
  LOADK R16 K28 ["Widgets"]
  SETTABLEKS R16 R15 K23 ["Category"]
  LOADK R16 K177 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R16 R15 K24 ["ItemId"]
  SETTABLEKS R15 R14 K86 ["TargetWidgetUri"]
  LOADB R15 1
  SETTABLEKS R15 R14 K88 ["ShowHighlight"]
  SETTABLEKS R14 R13 K82 ["spotlight"]
  LOADK R14 K135 ["Part"]
  SETTABLEKS R14 R13 K117 ["className"]
  DUPTABLE R14 K179 [{"Anchored"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K178 ["Anchored"]
  SETTABLEKS R14 R13 K169 ["changes"]
  DUPCLOSURE R14 K180 [PROTO_12]
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K96 ["onSkip"]
  LOADK R14 K105 ["Ribbon-Home"]
  SETTABLEKS R14 R13 K81 ["widgets"]
  DUPTABLE R14 K181 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R15 K182 ["explorer"]
  SETTABLEKS R15 R14 K37 ["id"]
  DUPTABLE R15 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R6 R15 K86 ["TargetWidgetUri"]
  GETIMPORT R16 K131 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K150 ["SubjectAnchorPoint"]
  GETIMPORT R16 K131 [Vector2.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K149 ["TargetAnchorPoint"]
  GETIMPORT R16 K131 [Vector2.new]
  LOADN R17 246
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K125 ["Offset"]
  SETTABLEKS R15 R14 K116 ["callout"]
  DUPTABLE R15 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R6 R15 K86 ["TargetWidgetUri"]
  LOADB R16 1
  SETTABLEKS R16 R15 K87 ["ShowBox"]
  LOADB R16 1
  SETTABLEKS R16 R15 K88 ["ShowHighlight"]
  LOADB R16 1
  SETTABLEKS R16 R15 K89 ["ShowShadows"]
  SETTABLEKS R15 R14 K82 ["spotlight"]
  LOADK R15 K118 ["properties"]
  SETTABLEKS R15 R14 K38 ["topic"]
  LOADB R15 1
  SETTABLEKS R15 R14 K39 ["showNext"]
  LOADK R15 K184 ["Ribbon-Home,Explorer"]
  SETTABLEKS R15 R14 K81 ["widgets"]
  DUPTABLE R15 K186 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R16 K187 ["select"]
  SETTABLEKS R16 R15 K37 ["id"]
  LOADK R16 K188 ["Select"]
  SETTABLEKS R16 R15 K49 ["kind"]
  LOADK R16 K189 ["Ball"]
  SETTABLEKS R16 R15 K185 ["path"]
  LOADK R16 K118 ["properties"]
  SETTABLEKS R16 R15 K38 ["topic"]
  DUPTABLE R16 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R6 R16 K86 ["TargetWidgetUri"]
  GETIMPORT R17 K131 [Vector2.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K150 ["SubjectAnchorPoint"]
  GETIMPORT R17 K131 [Vector2.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K149 ["TargetAnchorPoint"]
  GETIMPORT R17 K131 [Vector2.new]
  LOADN R18 246
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K125 ["Offset"]
  SETTABLEKS R16 R15 K116 ["callout"]
  DUPCLOSURE R16 K190 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R3
  SETTABLEKS R16 R15 K96 ["onSkip"]
  LOADK R16 K184 ["Ribbon-Home,Explorer"]
  SETTABLEKS R16 R15 K81 ["widgets"]
  DUPTABLE R16 K191 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R17 K192 ["focus"]
  SETTABLEKS R17 R16 K37 ["id"]
  LOADK R17 K118 ["properties"]
  SETTABLEKS R17 R16 K38 ["topic"]
  LOADK R17 K193 ["Focus"]
  SETTABLEKS R17 R16 K49 ["kind"]
  DUPCLOSURE R17 K194 [PROTO_14]
  CAPTURE VAL R9
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K96 ["onSkip"]
  LOADK R17 K105 ["Ribbon-Home"]
  SETTABLEKS R17 R16 K81 ["widgets"]
  DUPTABLE R17 K195 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R18 K118 ["properties"]
  SETTABLEKS R18 R17 K37 ["id"]
  LOADK R18 K118 ["properties"]
  SETTABLEKS R18 R17 K38 ["topic"]
  DUPTABLE R18 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R7 R18 K86 ["TargetWidgetUri"]
  GETIMPORT R19 K131 [Vector2.new]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K150 ["SubjectAnchorPoint"]
  GETIMPORT R19 K131 [Vector2.new]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K149 ["TargetAnchorPoint"]
  GETIMPORT R19 K131 [Vector2.new]
  LOADN R20 246
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K125 ["Offset"]
  SETTABLEKS R18 R17 K116 ["callout"]
  DUPTABLE R18 K90 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R7 R18 K86 ["TargetWidgetUri"]
  LOADB R19 1
  SETTABLEKS R19 R18 K87 ["ShowBox"]
  LOADB R19 1
  SETTABLEKS R19 R18 K88 ["ShowHighlight"]
  LOADB R19 1
  SETTABLEKS R19 R18 K89 ["ShowShadows"]
  SETTABLEKS R18 R17 K82 ["spotlight"]
  LOADB R18 1
  SETTABLEKS R18 R17 K39 ["showNext"]
  LOADK R18 K196 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R18 R17 K81 ["widgets"]
  DUPTABLE R18 K197 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R19 K198 ["speed"]
  SETTABLEKS R19 R18 K37 ["id"]
  LOADK R19 K118 ["properties"]
  SETTABLEKS R19 R18 K38 ["topic"]
  LOADK R19 K32 ["Edit"]
  SETTABLEKS R19 R18 K49 ["kind"]
  DUPTABLE R19 K183 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R7 R19 K86 ["TargetWidgetUri"]
  GETIMPORT R20 K131 [Vector2.new]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K150 ["SubjectAnchorPoint"]
  GETIMPORT R20 K131 [Vector2.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K149 ["TargetAnchorPoint"]
  GETIMPORT R20 K131 [Vector2.new]
  LOADN R21 246
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K125 ["Offset"]
  SETTABLEKS R19 R18 K116 ["callout"]
  LOADK R19 K199 ["Model"]
  SETTABLEKS R19 R18 K117 ["className"]
  DUPTABLE R19 K201 [{"Attributes"}]
  DUPTABLE R20 K203 [{"Speed"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K202 ["Speed"]
  SETTABLEKS R20 R19 K200 ["Attributes"]
  SETTABLEKS R19 R18 K169 ["changes"]
  DUPCLOSURE R19 K204 [PROTO_15]
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K96 ["onSkip"]
  LOADK R19 K196 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K81 ["widgets"]
  DUPTABLE R19 K113 [{"id", "topic", "kind", "widgets"}]
  LOADK R20 K205 ["playtest2"]
  SETTABLEKS R20 R19 K37 ["id"]
  LOADK R20 K206 ["summary"]
  SETTABLEKS R20 R19 K38 ["topic"]
  LOADK R20 K104 ["StartPlaytest"]
  SETTABLEKS R20 R19 K49 ["kind"]
  LOADK R20 K196 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K81 ["widgets"]
  DUPTABLE R20 K113 [{"id", "topic", "kind", "widgets"}]
  LOADK R21 K207 ["stopPlaytest2"]
  SETTABLEKS R21 R20 K37 ["id"]
  LOADK R21 K206 ["summary"]
  SETTABLEKS R21 R20 K38 ["topic"]
  LOADK R21 K115 ["StopPlaytest"]
  SETTABLEKS R21 R20 K49 ["kind"]
  LOADK R21 K196 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R21 R20 K81 ["widgets"]
  DUPTABLE R21 K208 [{"id", "topic", "widgets"}]
  LOADK R28 K209 ["complete"]
  SETTABLEKS R28 R21 K37 ["id"]
  LOADK R28 K206 ["summary"]
  SETTABLEKS R28 R21 K38 ["topic"]
  LOADK R28 K196 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R28 R21 K81 ["widgets"]
  SETLIST R11 R12 10 [17]
  DUPTABLE R12 K215 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
  LOADK R13 K216 ["StudioTour3"]
  SETTABLEKS R13 R12 K37 ["id"]
  NEWTABLE R13 0 2
  LOADK R14 K217 [81362103443151]
  LOADK R15 K218 [88926143951080]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K210 ["allowedPlaceIds"]
  DUPCLOSURE R13 K219 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K211 ["onStart"]
  DUPCLOSURE R13 K220 [PROTO_17]
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K212 ["onComplete"]
  SETTABLEKS R11 R12 K213 ["steps"]
  JUMPIFNOT R1 [+2]
  LOADB R13 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K214 ["shouldShowCompletedDialog"]
  RETURN R12 1
