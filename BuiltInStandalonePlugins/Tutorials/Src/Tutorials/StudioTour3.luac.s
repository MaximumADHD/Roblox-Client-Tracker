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
  GETUPVAL R1 0
  JUMPIFNOT R1 [+63]
  LOADNIL R1
  GETUPVAL R2 1
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
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K19 ["Parent"]
  GETTABLEKS R3 R0 K8 ["instances"]
  SETTABLEKS R2 R3 K9 ["wedge"]
  RETURN R2 1
  GETUPVAL R1 1
  LOADK R3 K1 ["Part"]
  NAMECALL R1 R1 K20 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+12]
  LOADK R4 K21 ["BasePart"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R1 K3 ["Shape"]
  GETIMPORT R3 K7 [Enum.PartType.Wedge]
  JUMPIFEQ R2 R3 [+22]
  GETIMPORT R2 K12 [Instance.new]
  LOADK R3 K1 ["Part"]
  CALL R2 1 1
  MOVE R1 R2
  GETIMPORT R2 K7 [Enum.PartType.Wedge]
  SETTABLEKS R2 R1 K3 ["Shape"]
  LOADK R2 K13 [{0, -90, 0}]
  SETTABLEKS R2 R1 K14 ["Rotation"]
  LOADK R2 K15 [{40, 15, 25}]
  SETTABLEKS R2 R1 K16 ["Size"]
  LOADK R2 K17 [{-846.491, -185.828, 67.012}]
  SETTABLEKS R2 R1 K18 ["Position"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K19 ["Parent"]
  GETTABLEKS R2 R0 K8 ["instances"]
  SETTABLEKS R1 R2 K9 ["wedge"]
  RETURN R1 1

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
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["instances"]
  GETUPVAL R2 2
  LOADK R4 K1 ["Part"]
  NAMECALL R2 R2 K2 ["FindFirstChild"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["wedge"]
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
  GETTABLEKS R3 R4 K8 ["getFFlagTutorialsFixTour3WedgeStep"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagStudioTourNewExplorer"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K6 ["Flags"]
  GETTABLEKS R5 R6 K10 ["getFFlagEnableRibbonTour"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["StudioTourSaveStep"]
  LOADB R8 0
  NAMECALL R5 R5 K14 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K12 [game]
  LOADK R8 K15 ["Workspace"]
  NAMECALL R6 R6 K16 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K12 [game]
  LOADK R9 K17 ["Selection"]
  NAMECALL R7 R7 K16 ["GetService"]
  CALL R7 2 1
  DUPTABLE R8 K21 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R9 0 1
  LOADK R10 K22 [17274156146]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K18 ["assetIds"]
  LOADK R9 K23 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R9 R8 K19 ["positionOverride"]
  LOADB R9 1
  SETTABLEKS R9 R8 K20 ["scriptWarningOverride"]
  DUPCLOSURE R9 K24 [PROTO_0]
  DUPCLOSURE R10 K25 [PROTO_1]
  JUMPIFNOT R3 [+17]
  DUPTABLE R11 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R12 K32 ["Standalone"]
  SETTABLEKS R12 R11 K26 ["DataModel"]
  LOADK R12 K32 ["Standalone"]
  SETTABLEKS R12 R11 K27 ["PluginType"]
  LOADK R12 K33 ["ExplorerPlugin"]
  SETTABLEKS R12 R11 K28 ["PluginId"]
  LOADK R12 K34 ["Widgets"]
  SETTABLEKS R12 R11 K29 ["Category"]
  LOADK R12 K33 ["ExplorerPlugin"]
  SETTABLEKS R12 R11 K30 ["ItemId"]
  JUMP [+10]
  DUPTABLE R11 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R12 K36 ["Explorer"]
  SETTABLEKS R12 R11 K28 ["PluginId"]
  LOADK R12 K34 ["Widgets"]
  SETTABLEKS R12 R11 K29 ["Category"]
  LOADK R12 K37 ["Main"]
  SETTABLEKS R12 R11 K30 ["ItemId"]
  DUPTABLE R12 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R13 K38 ["Properties"]
  SETTABLEKS R13 R12 K28 ["PluginId"]
  LOADK R13 K34 ["Widgets"]
  SETTABLEKS R13 R12 K29 ["Category"]
  LOADK R13 K37 ["Main"]
  SETTABLEKS R13 R12 K30 ["ItemId"]
  DUPTABLE R13 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R14 K39 ["Edit"]
  SETTABLEKS R14 R13 K26 ["DataModel"]
  LOADK R14 K40 ["Asset"]
  SETTABLEKS R14 R13 K27 ["PluginType"]
  LOADK R14 K41 ["Toolbox"]
  SETTABLEKS R14 R13 K28 ["PluginId"]
  LOADK R14 K34 ["Widgets"]
  SETTABLEKS R14 R13 K29 ["Category"]
  LOADK R14 K41 ["Toolbox"]
  SETTABLEKS R14 R13 K30 ["ItemId"]
  DUPCLOSURE R14 K42 [PROTO_3]
  CAPTURE VAL R6
  DUPCLOSURE R15 K43 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R6
  NEWTABLE R16 0 23
  DUPTABLE R17 K50 [{"id", "topic", "showNext", "cameraFocus", "cameraOffset", "cameraMoveDuration"}]
  LOADK R18 K51 ["intro1"]
  SETTABLEKS R18 R17 K44 ["id"]
  LOADK R18 K52 ["introduction"]
  SETTABLEKS R18 R17 K45 ["topic"]
  LOADB R18 1
  SETTABLEKS R18 R17 K46 ["showNext"]
  LOADK R18 K23 [{-363.583, 18.009, 74.073}]
  SETTABLEKS R18 R17 K47 ["cameraFocus"]
  LOADK R18 K53 [{80, 30, -20}]
  SETTABLEKS R18 R17 K48 ["cameraOffset"]
  LOADN R18 0
  SETTABLEKS R18 R17 K49 ["cameraMoveDuration"]
  DUPTABLE R18 K54 [{"id", "topic", "showNext"}]
  LOADK R19 K55 ["intro2"]
  SETTABLEKS R19 R18 K44 ["id"]
  LOADK R19 K52 ["introduction"]
  SETTABLEKS R19 R18 K45 ["topic"]
  LOADB R19 1
  SETTABLEKS R19 R18 K46 ["showNext"]
  DUPTABLE R19 K58 [{"id", "kind", "topic", "instanceId"}]
  LOADK R20 K59 ["rotateCamera"]
  SETTABLEKS R20 R19 K44 ["id"]
  LOADK R20 K60 ["Rotate"]
  SETTABLEKS R20 R19 K56 ["kind"]
  LOADK R20 K61 ["navigation"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADK R20 K62 ["camera"]
  SETTABLEKS R20 R19 K57 ["instanceId"]
  DUPTABLE R20 K64 [{"id", "kind", "keys", "topic"}]
  LOADK R21 K65 ["moveCamera"]
  SETTABLEKS R21 R20 K44 ["id"]
  LOADK R21 K66 ["Input"]
  SETTABLEKS R21 R20 K56 ["kind"]
  NEWTABLE R21 0 4
  GETIMPORT R22 K70 [Enum.KeyCode.W]
  GETIMPORT R23 K72 [Enum.KeyCode.A]
  GETIMPORT R24 K74 [Enum.KeyCode.S]
  GETIMPORT R25 K76 [Enum.KeyCode.D]
  SETLIST R21 R22 4 [1]
  SETTABLEKS R21 R20 K63 ["keys"]
  LOADK R21 K61 ["navigation"]
  SETTABLEKS R21 R20 K45 ["topic"]
  DUPTABLE R21 K64 [{"id", "kind", "keys", "topic"}]
  LOADK R22 K77 ["panCamera"]
  SETTABLEKS R22 R21 K44 ["id"]
  LOADK R22 K66 ["Input"]
  SETTABLEKS R22 R21 K56 ["kind"]
  NEWTABLE R22 0 2
  GETIMPORT R23 K79 [Enum.KeyCode.E]
  GETIMPORT R24 K81 [Enum.KeyCode.Q]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K63 ["keys"]
  LOADK R22 K61 ["navigation"]
  SETTABLEKS R22 R21 K45 ["topic"]
  DUPTABLE R22 K83 [{"id", "kind", "inputs", "topic"}]
  LOADK R23 K84 ["zoomCamera"]
  SETTABLEKS R23 R22 K44 ["id"]
  LOADK R23 K66 ["Input"]
  SETTABLEKS R23 R22 K56 ["kind"]
  NEWTABLE R23 0 1
  GETIMPORT R24 K87 [Enum.UserInputType.MouseWheel]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K82 ["inputs"]
  LOADK R23 K61 ["navigation"]
  SETTABLEKS R23 R22 K45 ["topic"]
  DUPTABLE R23 K91 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R24 K92 ["marketplace"]
  SETTABLEKS R24 R23 K44 ["id"]
  LOADK R24 K92 ["marketplace"]
  SETTABLEKS R24 R23 K45 ["topic"]
  LOADK R24 K41 ["Toolbox"]
  SETTABLEKS R24 R23 K88 ["widgets"]
  LOADB R24 1
  SETTABLEKS R24 R23 K46 ["showNext"]
  DUPTABLE R24 K97 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R13 R24 K93 ["TargetWidgetUri"]
  LOADB R25 1
  SETTABLEKS R25 R24 K94 ["ShowBox"]
  LOADB R25 1
  SETTABLEKS R25 R24 K95 ["ShowHighlight"]
  LOADB R25 1
  SETTABLEKS R25 R24 K96 ["ShowShadows"]
  SETTABLEKS R24 R23 K89 ["spotlight"]
  SETTABLEKS R8 R23 K90 ["toolboxLimits"]
  DUPTABLE R24 K99 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R25 K100 ["searchMarketplace"]
  SETTABLEKS R25 R24 K44 ["id"]
  LOADK R25 K101 ["ToolboxSearch"]
  SETTABLEKS R25 R24 K56 ["kind"]
  LOADK R25 K102 ["ball"]
  SETTABLEKS R25 R24 K98 ["search"]
  SETTABLEKS R8 R24 K90 ["toolboxLimits"]
  LOADK R25 K92 ["marketplace"]
  SETTABLEKS R25 R24 K45 ["topic"]
  LOADK R25 K41 ["Toolbox"]
  SETTABLEKS R25 R24 K88 ["widgets"]
  DUPTABLE R25 K104 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R26 K105 ["insertMarketplace"]
  SETTABLEKS R26 R25 K44 ["id"]
  LOADK R26 K106 ["ToolboxInsert"]
  SETTABLEKS R26 R25 K56 ["kind"]
  SETTABLEKS R8 R25 K90 ["toolboxLimits"]
  LOADK R26 K92 ["marketplace"]
  SETTABLEKS R26 R25 K45 ["topic"]
  DUPCLOSURE R26 K107 [PROTO_5]
  CAPTURE VAL R14
  SETTABLEKS R26 R25 K103 ["onSkip"]
  LOADK R26 K41 ["Toolbox"]
  SETTABLEKS R26 R25 K88 ["widgets"]
  DUPTABLE R26 K109 [{"id", "topic", "kind", "widgets", "hideWidgets"}]
  LOADK R27 K110 ["playtest"]
  SETTABLEKS R27 R26 K44 ["id"]
  LOADK R27 K110 ["playtest"]
  SETTABLEKS R27 R26 K45 ["topic"]
  LOADK R27 K111 ["StartPlaytest"]
  SETTABLEKS R27 R26 K56 ["kind"]
  LOADK R27 K112 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K88 ["widgets"]
  LOADK R27 K41 ["Toolbox"]
  SETTABLEKS R27 R26 K108 ["hideWidgets"]
  DUPTABLE R27 K114 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R28 K115 ["avatar"]
  SETTABLEKS R28 R27 K44 ["id"]
  LOADK R28 K110 ["playtest"]
  SETTABLEKS R28 R27 K45 ["topic"]
  LOADK R28 K116 ["Avatar"]
  SETTABLEKS R28 R27 K56 ["kind"]
  GETIMPORT R28 K119 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R28 R27 K113 ["state"]
  LOADK R28 K112 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K88 ["widgets"]
  DUPTABLE R28 K120 [{"id", "topic", "kind", "widgets"}]
  LOADK R29 K121 ["stopPlaytest"]
  SETTABLEKS R29 R28 K44 ["id"]
  LOADK R29 K110 ["playtest"]
  SETTABLEKS R29 R28 K45 ["topic"]
  LOADK R29 K122 ["StopPlaytest"]
  SETTABLEKS R29 R28 K56 ["kind"]
  LOADK R29 K112 ["Ribbon-Home"]
  SETTABLEKS R29 R28 K88 ["widgets"]
  DUPTABLE R29 K128 [{"id", "kind", "topic", "callout", "spotlight", "cameraFocus", "cameraOffset", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "widgets"}]
  LOADK R30 K129 ["wedge"]
  SETTABLEKS R30 R29 K44 ["id"]
  LOADK R30 K130 ["Insert"]
  SETTABLEKS R30 R29 K56 ["kind"]
  LOADK R30 K131 ["parts"]
  SETTABLEKS R30 R29 K45 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R30 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R31 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K32 ["Standalone"]
  SETTABLEKS R32 R31 K26 ["DataModel"]
  LOADK R32 K32 ["Standalone"]
  SETTABLEKS R32 R31 K27 ["PluginType"]
  LOADK R32 K134 ["Ribbon"]
  SETTABLEKS R32 R31 K28 ["PluginId"]
  LOADK R32 K34 ["Widgets"]
  SETTABLEKS R32 R31 K29 ["Category"]
  LOADK R32 K135 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R32 R31 K30 ["ItemId"]
  SETTABLEKS R31 R30 K93 ["TargetWidgetUri"]
  GETIMPORT R31 K138 [Vector2.new]
  LOADN R32 5
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K132 ["Offset"]
  JUMP [+20]
  DUPTABLE R30 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R31 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K139 ["QtRibbon"]
  SETTABLEKS R32 R31 K28 ["PluginId"]
  LOADK R32 K34 ["Widgets"]
  SETTABLEKS R32 R31 K29 ["Category"]
  LOADK R32 K140 ["Part"]
  SETTABLEKS R32 R31 K30 ["ItemId"]
  SETTABLEKS R31 R30 K93 ["TargetWidgetUri"]
  GETIMPORT R31 K138 [Vector2.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K132 ["Offset"]
  SETTABLEKS R30 R29 K123 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R30 K141 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R31 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R32 K32 ["Standalone"]
  SETTABLEKS R32 R31 K26 ["DataModel"]
  LOADK R32 K32 ["Standalone"]
  SETTABLEKS R32 R31 K27 ["PluginType"]
  LOADK R32 K134 ["Ribbon"]
  SETTABLEKS R32 R31 K28 ["PluginId"]
  LOADK R32 K34 ["Widgets"]
  SETTABLEKS R32 R31 K29 ["Category"]
  LOADK R32 K135 ["Tabs/BuiltIn_HomeTab/Part"]
  SETTABLEKS R32 R31 K30 ["ItemId"]
  SETTABLEKS R31 R30 K93 ["TargetWidgetUri"]
  LOADB R31 1
  SETTABLEKS R31 R30 K95 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R30 K144 [{"target", "showHighlight"}]
  LOADK R31 K145 ["placePartActionRibbonControl"]
  SETTABLEKS R31 R30 K142 ["target"]
  LOADB R31 1
  SETTABLEKS R31 R30 K143 ["showHighlight"]
  SETTABLEKS R30 R29 K89 ["spotlight"]
  LOADK R30 K146 [{-843.991, -192.828, 68.512}]
  SETTABLEKS R30 R29 K47 ["cameraFocus"]
  LOADK R30 K147 [{20, 20, 5}]
  SETTABLEKS R30 R29 K48 ["cameraOffset"]
  LOADK R30 K129 ["wedge"]
  SETTABLEKS R30 R29 K57 ["instanceId"]
  LOADK R30 K140 ["Part"]
  SETTABLEKS R30 R29 K124 ["className"]
  DUPTABLE R30 K149 [{"Shape"}]
  GETIMPORT R31 K152 [Enum.PartType.Wedge]
  SETTABLEKS R31 R30 K148 ["Shape"]
  SETTABLEKS R30 R29 K125 ["properties"]
  DUPCLOSURE R30 K153 [PROTO_6]
  SETTABLEKS R30 R29 K126 ["onBind"]
  DUPCLOSURE R30 K154 [PROTO_7]
  CAPTURE VAL R15
  SETTABLEKS R30 R29 K103 ["onSkip"]
  DUPCLOSURE R30 K155 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R6
  SETTABLEKS R30 R29 K127 ["onUnbind"]
  LOADK R30 K112 ["Ribbon-Home"]
  SETTABLEKS R30 R29 K88 ["widgets"]
  DUPTABLE R30 K158 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R31 K159 ["move"]
  SETTABLEKS R31 R30 K44 ["id"]
  LOADK R31 K160 ["Move"]
  SETTABLEKS R31 R30 K56 ["kind"]
  LOADK R31 K131 ["parts"]
  SETTABLEKS R31 R30 K45 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R31 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K32 ["Standalone"]
  SETTABLEKS R33 R32 K26 ["DataModel"]
  LOADK R33 K32 ["Standalone"]
  SETTABLEKS R33 R32 K27 ["PluginType"]
  LOADK R33 K134 ["Ribbon"]
  SETTABLEKS R33 R32 K28 ["PluginId"]
  LOADK R33 K34 ["Widgets"]
  SETTABLEKS R33 R32 K29 ["Category"]
  LOADK R33 K164 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R33 R32 K30 ["ItemId"]
  SETTABLEKS R32 R31 K93 ["TargetWidgetUri"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K161 ["TargetAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K162 ["SubjectAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 20
  CALL R32 2 1
  SETTABLEKS R32 R31 K132 ["Offset"]
  JUMP [+34]
  DUPTABLE R31 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R32 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R33 K139 ["QtRibbon"]
  SETTABLEKS R33 R32 K28 ["PluginId"]
  LOADK R33 K34 ["Widgets"]
  SETTABLEKS R33 R32 K29 ["Category"]
  LOADK R33 K160 ["Move"]
  SETTABLEKS R33 R32 K30 ["ItemId"]
  SETTABLEKS R32 R31 K93 ["TargetWidgetUri"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K161 ["TargetAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K162 ["SubjectAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 5
  CALL R32 2 1
  SETTABLEKS R32 R31 K132 ["Offset"]
  SETTABLEKS R31 R30 K123 ["callout"]
  JUMPIFNOT R1 [+37]
  DUPTABLE R31 K165 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "ShowHighlight"}]
  DUPTABLE R32 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R33 K32 ["Standalone"]
  SETTABLEKS R33 R32 K26 ["DataModel"]
  LOADK R33 K32 ["Standalone"]
  SETTABLEKS R33 R32 K27 ["PluginType"]
  LOADK R33 K134 ["Ribbon"]
  SETTABLEKS R33 R32 K28 ["PluginId"]
  LOADK R33 K34 ["Widgets"]
  SETTABLEKS R33 R32 K29 ["Category"]
  LOADK R33 K164 ["Tabs/BuiltIn_HomeTab/Move"]
  SETTABLEKS R33 R32 K30 ["ItemId"]
  SETTABLEKS R32 R31 K93 ["TargetWidgetUri"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K161 ["TargetAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K162 ["SubjectAnchorPoint"]
  LOADB R32 1
  SETTABLEKS R32 R31 K95 ["ShowHighlight"]
  JUMP [+21]
  DUPTABLE R31 K168 [{"target", "targetAnchorPoint", "subjectAnchorPoint", "showHighlight"}]
  LOADK R32 K169 ["advTranslateAction"]
  SETTABLEKS R32 R31 K142 ["target"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K166 ["targetAnchorPoint"]
  GETIMPORT R32 K138 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K167 ["subjectAnchorPoint"]
  LOADB R32 1
  SETTABLEKS R32 R31 K143 ["showHighlight"]
  SETTABLEKS R31 R30 K89 ["spotlight"]
  LOADK R31 K170 [{-851.33, -193.045, 60.764}]
  SETTABLEKS R31 R30 K156 ["position"]
  LOADN R31 80
  SETTABLEKS R31 R30 K157 ["distance"]
  LOADK R31 K129 ["wedge"]
  SETTABLEKS R31 R30 K57 ["instanceId"]
  DUPCLOSURE R31 K171 [PROTO_9]
  CAPTURE VAL R15
  SETTABLEKS R31 R30 K103 ["onSkip"]
  LOADK R31 K112 ["Ribbon-Home"]
  SETTABLEKS R31 R30 K88 ["widgets"]
  DUPTABLE R31 K173 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R32 K174 ["rotate"]
  SETTABLEKS R32 R31 K44 ["id"]
  LOADK R32 K60 ["Rotate"]
  SETTABLEKS R32 R31 K56 ["kind"]
  LOADK R32 K131 ["parts"]
  SETTABLEKS R32 R31 K45 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R32 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K32 ["Standalone"]
  SETTABLEKS R34 R33 K26 ["DataModel"]
  LOADK R34 K32 ["Standalone"]
  SETTABLEKS R34 R33 K27 ["PluginType"]
  LOADK R34 K134 ["Ribbon"]
  SETTABLEKS R34 R33 K28 ["PluginId"]
  LOADK R34 K34 ["Widgets"]
  SETTABLEKS R34 R33 K29 ["Category"]
  LOADK R34 K175 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R34 R33 K30 ["ItemId"]
  SETTABLEKS R33 R32 K93 ["TargetWidgetUri"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K161 ["TargetAnchorPoint"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K162 ["SubjectAnchorPoint"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 20
  CALL R33 2 1
  SETTABLEKS R33 R32 K132 ["Offset"]
  JUMP [+34]
  DUPTABLE R32 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R33 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R34 K139 ["QtRibbon"]
  SETTABLEKS R34 R33 K28 ["PluginId"]
  LOADK R34 K34 ["Widgets"]
  SETTABLEKS R34 R33 K29 ["Category"]
  LOADK R34 K60 ["Rotate"]
  SETTABLEKS R34 R33 K30 ["ItemId"]
  SETTABLEKS R33 R32 K93 ["TargetWidgetUri"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 1
  CALL R33 2 1
  SETTABLEKS R33 R32 K161 ["TargetAnchorPoint"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K162 ["SubjectAnchorPoint"]
  GETIMPORT R33 K138 [Vector2.new]
  LOADN R34 0
  LOADN R35 5
  CALL R33 2 1
  SETTABLEKS R33 R32 K132 ["Offset"]
  SETTABLEKS R32 R31 K123 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R32 K141 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R33 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R34 K32 ["Standalone"]
  SETTABLEKS R34 R33 K26 ["DataModel"]
  LOADK R34 K32 ["Standalone"]
  SETTABLEKS R34 R33 K27 ["PluginType"]
  LOADK R34 K134 ["Ribbon"]
  SETTABLEKS R34 R33 K28 ["PluginId"]
  LOADK R34 K34 ["Widgets"]
  SETTABLEKS R34 R33 K29 ["Category"]
  LOADK R34 K175 ["Tabs/BuiltIn_HomeTab/Rotate"]
  SETTABLEKS R34 R33 K30 ["ItemId"]
  SETTABLEKS R33 R32 K93 ["TargetWidgetUri"]
  LOADB R33 1
  SETTABLEKS R33 R32 K95 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R32 K144 [{"target", "showHighlight"}]
  LOADK R33 K176 ["advRotateAction"]
  SETTABLEKS R33 R32 K142 ["target"]
  LOADB R33 1
  SETTABLEKS R33 R32 K143 ["showHighlight"]
  SETTABLEKS R32 R31 K89 ["spotlight"]
  LOADK R32 K177 [{0, -90, 0}]
  SETTABLEKS R32 R31 K172 ["rotation"]
  LOADN R32 30
  SETTABLEKS R32 R31 K157 ["distance"]
  LOADK R32 K129 ["wedge"]
  SETTABLEKS R32 R31 K57 ["instanceId"]
  DUPCLOSURE R32 K178 [PROTO_10]
  CAPTURE VAL R15
  SETTABLEKS R32 R31 K103 ["onSkip"]
  LOADK R32 K112 ["Ribbon-Home"]
  SETTABLEKS R32 R31 K88 ["widgets"]
  DUPTABLE R32 K180 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R33 K181 ["scale"]
  SETTABLEKS R33 R32 K44 ["id"]
  LOADK R33 K182 ["Scale"]
  SETTABLEKS R33 R32 K56 ["kind"]
  LOADK R33 K131 ["parts"]
  SETTABLEKS R33 R32 K45 ["topic"]
  JUMPIFNOT R1 [+41]
  DUPTABLE R33 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R34 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R35 K32 ["Standalone"]
  SETTABLEKS R35 R34 K26 ["DataModel"]
  LOADK R35 K32 ["Standalone"]
  SETTABLEKS R35 R34 K27 ["PluginType"]
  LOADK R35 K134 ["Ribbon"]
  SETTABLEKS R35 R34 K28 ["PluginId"]
  LOADK R35 K34 ["Widgets"]
  SETTABLEKS R35 R34 K29 ["Category"]
  LOADK R35 K183 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R35 R34 K30 ["ItemId"]
  SETTABLEKS R34 R33 K93 ["TargetWidgetUri"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K161 ["TargetAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K162 ["SubjectAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 20
  CALL R34 2 1
  SETTABLEKS R34 R33 K132 ["Offset"]
  JUMP [+34]
  DUPTABLE R33 K163 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  DUPTABLE R34 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R35 K139 ["QtRibbon"]
  SETTABLEKS R35 R34 K28 ["PluginId"]
  LOADK R35 K34 ["Widgets"]
  SETTABLEKS R35 R34 K29 ["Category"]
  LOADK R35 K182 ["Scale"]
  SETTABLEKS R35 R34 K30 ["ItemId"]
  SETTABLEKS R34 R33 K93 ["TargetWidgetUri"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K161 ["TargetAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K162 ["SubjectAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 5
  CALL R34 2 1
  SETTABLEKS R34 R33 K132 ["Offset"]
  SETTABLEKS R33 R32 K123 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R33 K141 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R34 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R35 K32 ["Standalone"]
  SETTABLEKS R35 R34 K26 ["DataModel"]
  LOADK R35 K32 ["Standalone"]
  SETTABLEKS R35 R34 K27 ["PluginType"]
  LOADK R35 K134 ["Ribbon"]
  SETTABLEKS R35 R34 K28 ["PluginId"]
  LOADK R35 K34 ["Widgets"]
  SETTABLEKS R35 R34 K29 ["Category"]
  LOADK R35 K183 ["Tabs/BuiltIn_HomeTab/Scale"]
  SETTABLEKS R35 R34 K30 ["ItemId"]
  SETTABLEKS R34 R33 K93 ["TargetWidgetUri"]
  LOADB R34 1
  SETTABLEKS R34 R33 K95 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R33 K144 [{"target", "showHighlight"}]
  LOADK R34 K184 ["resizeAction"]
  SETTABLEKS R34 R33 K142 ["target"]
  LOADB R34 1
  SETTABLEKS R34 R33 K143 ["showHighlight"]
  SETTABLEKS R33 R32 K89 ["spotlight"]
  LOADK R33 K185 [{15, 5, 10}]
  SETTABLEKS R33 R32 K179 ["minSize"]
  LOADK R33 K129 ["wedge"]
  SETTABLEKS R33 R32 K57 ["instanceId"]
  DUPCLOSURE R33 K186 [PROTO_11]
  CAPTURE VAL R15
  SETTABLEKS R33 R32 K103 ["onSkip"]
  LOADK R33 K112 ["Ribbon-Home"]
  SETTABLEKS R33 R32 K88 ["widgets"]
  SETLIST R16 R17 16 [1]
  DUPTABLE R17 K188 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R18 K189 ["color"]
  SETTABLEKS R18 R17 K44 ["id"]
  LOADK R18 K39 ["Edit"]
  SETTABLEKS R18 R17 K56 ["kind"]
  LOADK R18 K125 ["properties"]
  SETTABLEKS R18 R17 K45 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R18 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K32 ["Standalone"]
  SETTABLEKS R20 R19 K26 ["DataModel"]
  LOADK R20 K32 ["Standalone"]
  SETTABLEKS R20 R19 K27 ["PluginType"]
  LOADK R20 K134 ["Ribbon"]
  SETTABLEKS R20 R19 K28 ["PluginId"]
  LOADK R20 K34 ["Widgets"]
  SETTABLEKS R20 R19 K29 ["Category"]
  LOADK R20 K190 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R20 R19 K30 ["ItemId"]
  SETTABLEKS R19 R18 K93 ["TargetWidgetUri"]
  GETIMPORT R19 K138 [Vector2.new]
  LOADN R20 5
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K132 ["Offset"]
  JUMP [+20]
  DUPTABLE R18 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R20 K139 ["QtRibbon"]
  SETTABLEKS R20 R19 K28 ["PluginId"]
  LOADK R20 K34 ["Widgets"]
  SETTABLEKS R20 R19 K29 ["Category"]
  LOADK R20 K191 ["Color"]
  SETTABLEKS R20 R19 K30 ["ItemId"]
  SETTABLEKS R19 R18 K93 ["TargetWidgetUri"]
  GETIMPORT R19 K138 [Vector2.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K132 ["Offset"]
  SETTABLEKS R18 R17 K123 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R18 K141 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R19 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K32 ["Standalone"]
  SETTABLEKS R20 R19 K26 ["DataModel"]
  LOADK R20 K32 ["Standalone"]
  SETTABLEKS R20 R19 K27 ["PluginType"]
  LOADK R20 K134 ["Ribbon"]
  SETTABLEKS R20 R19 K28 ["PluginId"]
  LOADK R20 K34 ["Widgets"]
  SETTABLEKS R20 R19 K29 ["Category"]
  LOADK R20 K190 ["Tabs/BuiltIn_HomeTab/Color"]
  SETTABLEKS R20 R19 K30 ["ItemId"]
  SETTABLEKS R19 R18 K93 ["TargetWidgetUri"]
  LOADB R19 1
  SETTABLEKS R19 R18 K95 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R18 K144 [{"target", "showHighlight"}]
  LOADK R19 K192 ["actionColorSelector"]
  SETTABLEKS R19 R18 K142 ["target"]
  LOADB R19 1
  SETTABLEKS R19 R18 K143 ["showHighlight"]
  SETTABLEKS R18 R17 K89 ["spotlight"]
  LOADK R18 K140 ["Part"]
  SETTABLEKS R18 R17 K124 ["className"]
  DUPTABLE R18 K193 [{"Color"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K191 ["Color"]
  SETTABLEKS R18 R17 K187 ["changes"]
  DUPCLOSURE R18 K194 [PROTO_12]
  CAPTURE VAL R15
  SETTABLEKS R18 R17 K103 ["onSkip"]
  LOADK R18 K112 ["Ribbon-Home"]
  SETTABLEKS R18 R17 K88 ["widgets"]
  DUPTABLE R18 K188 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R19 K195 ["anchor"]
  SETTABLEKS R19 R18 K44 ["id"]
  LOADK R19 K39 ["Edit"]
  SETTABLEKS R19 R18 K56 ["kind"]
  LOADK R19 K125 ["properties"]
  SETTABLEKS R19 R18 K45 ["topic"]
  JUMPIFNOT R1 [+27]
  DUPTABLE R19 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R20 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R21 K32 ["Standalone"]
  SETTABLEKS R21 R20 K26 ["DataModel"]
  LOADK R21 K32 ["Standalone"]
  SETTABLEKS R21 R20 K27 ["PluginType"]
  LOADK R21 K134 ["Ribbon"]
  SETTABLEKS R21 R20 K28 ["PluginId"]
  LOADK R21 K34 ["Widgets"]
  SETTABLEKS R21 R20 K29 ["Category"]
  LOADK R21 K196 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R21 R20 K30 ["ItemId"]
  SETTABLEKS R20 R19 K93 ["TargetWidgetUri"]
  GETIMPORT R20 K138 [Vector2.new]
  LOADN R21 0
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K132 ["Offset"]
  JUMP [+20]
  DUPTABLE R19 K133 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R20 K35 [{"PluginId", "Category", "ItemId"}]
  LOADK R21 K139 ["QtRibbon"]
  SETTABLEKS R21 R20 K28 ["PluginId"]
  LOADK R21 K34 ["Widgets"]
  SETTABLEKS R21 R20 K29 ["Category"]
  LOADK R21 K197 ["Anchor"]
  SETTABLEKS R21 R20 K30 ["ItemId"]
  SETTABLEKS R20 R19 K93 ["TargetWidgetUri"]
  GETIMPORT R20 K138 [Vector2.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K132 ["Offset"]
  SETTABLEKS R19 R18 K123 ["callout"]
  JUMPIFNOT R1 [+23]
  DUPTABLE R19 K141 [{"TargetWidgetUri", "ShowHighlight"}]
  DUPTABLE R20 K31 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R21 K32 ["Standalone"]
  SETTABLEKS R21 R20 K26 ["DataModel"]
  LOADK R21 K32 ["Standalone"]
  SETTABLEKS R21 R20 K27 ["PluginType"]
  LOADK R21 K134 ["Ribbon"]
  SETTABLEKS R21 R20 K28 ["PluginId"]
  LOADK R21 K34 ["Widgets"]
  SETTABLEKS R21 R20 K29 ["Category"]
  LOADK R21 K196 ["Tabs/BuiltIn_HomeTab/Anchor"]
  SETTABLEKS R21 R20 K30 ["ItemId"]
  SETTABLEKS R20 R19 K93 ["TargetWidgetUri"]
  LOADB R20 1
  SETTABLEKS R20 R19 K95 ["ShowHighlight"]
  JUMP [+7]
  DUPTABLE R19 K144 [{"target", "showHighlight"}]
  LOADK R20 K198 ["anchorAction"]
  SETTABLEKS R20 R19 K142 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K143 ["showHighlight"]
  SETTABLEKS R19 R18 K89 ["spotlight"]
  LOADK R19 K140 ["Part"]
  SETTABLEKS R19 R18 K124 ["className"]
  DUPTABLE R19 K200 [{"Anchored"}]
  LOADB R20 1
  SETTABLEKS R20 R19 K199 ["Anchored"]
  SETTABLEKS R19 R18 K187 ["changes"]
  DUPCLOSURE R19 K201 [PROTO_13]
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K103 ["onSkip"]
  LOADK R19 K112 ["Ribbon-Home"]
  SETTABLEKS R19 R18 K88 ["widgets"]
  DUPTABLE R19 K202 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R20 K203 ["explorer"]
  SETTABLEKS R20 R19 K44 ["id"]
  DUPTABLE R20 K204 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R11 R20 K93 ["TargetWidgetUri"]
  GETIMPORT R21 K138 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K162 ["SubjectAnchorPoint"]
  GETIMPORT R21 K138 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K161 ["TargetAnchorPoint"]
  GETIMPORT R21 K138 [Vector2.new]
  LOADN R22 246
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K132 ["Offset"]
  SETTABLEKS R20 R19 K123 ["callout"]
  DUPTABLE R20 K97 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R11 R20 K93 ["TargetWidgetUri"]
  LOADB R21 1
  SETTABLEKS R21 R20 K94 ["ShowBox"]
  LOADB R21 1
  SETTABLEKS R21 R20 K95 ["ShowHighlight"]
  LOADB R21 1
  SETTABLEKS R21 R20 K96 ["ShowShadows"]
  SETTABLEKS R20 R19 K89 ["spotlight"]
  LOADK R20 K125 ["properties"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADB R20 1
  SETTABLEKS R20 R19 K46 ["showNext"]
  LOADK R20 K205 ["Ribbon-Home,Explorer"]
  SETTABLEKS R20 R19 K88 ["widgets"]
  DUPTABLE R20 K207 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R21 K208 ["select"]
  SETTABLEKS R21 R20 K44 ["id"]
  LOADK R21 K209 ["Select"]
  SETTABLEKS R21 R20 K56 ["kind"]
  LOADK R21 K210 ["Ball"]
  SETTABLEKS R21 R20 K206 ["path"]
  LOADK R21 K125 ["properties"]
  SETTABLEKS R21 R20 K45 ["topic"]
  DUPTABLE R21 K204 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R11 R21 K93 ["TargetWidgetUri"]
  GETIMPORT R22 K138 [Vector2.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K162 ["SubjectAnchorPoint"]
  GETIMPORT R22 K138 [Vector2.new]
  LOADN R23 0
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K161 ["TargetAnchorPoint"]
  GETIMPORT R22 K138 [Vector2.new]
  LOADN R23 246
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K132 ["Offset"]
  SETTABLEKS R21 R20 K123 ["callout"]
  DUPCLOSURE R21 K211 [PROTO_14]
  CAPTURE VAL R14
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K103 ["onSkip"]
  LOADK R21 K205 ["Ribbon-Home,Explorer"]
  SETTABLEKS R21 R20 K88 ["widgets"]
  DUPTABLE R21 K212 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R22 K213 ["focus"]
  SETTABLEKS R22 R21 K44 ["id"]
  LOADK R22 K125 ["properties"]
  SETTABLEKS R22 R21 K45 ["topic"]
  LOADK R22 K214 ["Focus"]
  SETTABLEKS R22 R21 K56 ["kind"]
  DUPCLOSURE R22 K215 [PROTO_15]
  CAPTURE VAL R14
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K103 ["onSkip"]
  LOADK R22 K112 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K88 ["widgets"]
  DUPTABLE R22 K216 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R23 K125 ["properties"]
  SETTABLEKS R23 R22 K44 ["id"]
  LOADK R23 K125 ["properties"]
  SETTABLEKS R23 R22 K45 ["topic"]
  DUPTABLE R23 K204 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R23 K93 ["TargetWidgetUri"]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K162 ["SubjectAnchorPoint"]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 0
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K161 ["TargetAnchorPoint"]
  GETIMPORT R24 K138 [Vector2.new]
  LOADN R25 246
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K132 ["Offset"]
  SETTABLEKS R23 R22 K123 ["callout"]
  DUPTABLE R23 K97 [{"TargetWidgetUri", "ShowBox", "ShowHighlight", "ShowShadows"}]
  SETTABLEKS R12 R23 K93 ["TargetWidgetUri"]
  LOADB R24 1
  SETTABLEKS R24 R23 K94 ["ShowBox"]
  LOADB R24 1
  SETTABLEKS R24 R23 K95 ["ShowHighlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K96 ["ShowShadows"]
  SETTABLEKS R23 R22 K89 ["spotlight"]
  LOADB R23 1
  SETTABLEKS R23 R22 K46 ["showNext"]
  LOADK R23 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R23 R22 K88 ["widgets"]
  DUPTABLE R23 K218 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R33 K219 ["speed"]
  SETTABLEKS R33 R23 K44 ["id"]
  LOADK R33 K125 ["properties"]
  SETTABLEKS R33 R23 K45 ["topic"]
  LOADK R33 K39 ["Edit"]
  SETTABLEKS R33 R23 K56 ["kind"]
  DUPTABLE R33 K204 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  SETTABLEKS R12 R33 K93 ["TargetWidgetUri"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 1
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K162 ["SubjectAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 0
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K161 ["TargetAnchorPoint"]
  GETIMPORT R34 K138 [Vector2.new]
  LOADN R35 246
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K132 ["Offset"]
  SETTABLEKS R33 R23 K123 ["callout"]
  LOADK R33 K220 ["Model"]
  SETTABLEKS R33 R23 K124 ["className"]
  DUPTABLE R33 K222 [{"Attributes"}]
  DUPTABLE R34 K224 [{"Speed"}]
  LOADB R35 1
  SETTABLEKS R35 R34 K223 ["Speed"]
  SETTABLEKS R34 R33 K221 ["Attributes"]
  SETTABLEKS R33 R23 K187 ["changes"]
  DUPCLOSURE R33 K225 [PROTO_16]
  CAPTURE VAL R14
  SETTABLEKS R33 R23 K103 ["onSkip"]
  LOADK R33 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R33 R23 K88 ["widgets"]
  SETLIST R16 R17 7 [17]
  JUMPIF R5 [+19]
  DUPTABLE R19 K226 [{"id", "topic", "showNext", "widgets"}]
  LOADK R20 K227 ["save"]
  SETTABLEKS R20 R19 K44 ["id"]
  LOADK R20 K228 ["summary"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADB R20 1
  SETTABLEKS R20 R19 K46 ["showNext"]
  LOADK R20 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K88 ["widgets"]
  FASTCALL2 TABLE_INSERT R16 R19 [+4]
  MOVE R18 R16
  GETIMPORT R17 K231 [table.insert]
  CALL R17 2 0
  DUPTABLE R19 K120 [{"id", "topic", "kind", "widgets"}]
  LOADK R20 K232 ["playtest2"]
  SETTABLEKS R20 R19 K44 ["id"]
  LOADK R20 K228 ["summary"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADK R20 K111 ["StartPlaytest"]
  SETTABLEKS R20 R19 K56 ["kind"]
  LOADK R20 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K88 ["widgets"]
  FASTCALL2 TABLE_INSERT R16 R19 [+4]
  MOVE R18 R16
  GETIMPORT R17 K231 [table.insert]
  CALL R17 2 0
  DUPTABLE R19 K120 [{"id", "topic", "kind", "widgets"}]
  LOADK R20 K233 ["stopPlaytest2"]
  SETTABLEKS R20 R19 K44 ["id"]
  LOADK R20 K228 ["summary"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADK R20 K122 ["StopPlaytest"]
  SETTABLEKS R20 R19 K56 ["kind"]
  LOADK R20 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K88 ["widgets"]
  FASTCALL2 TABLE_INSERT R16 R19 [+4]
  MOVE R18 R16
  GETIMPORT R17 K231 [table.insert]
  CALL R17 2 0
  DUPTABLE R19 K234 [{"id", "topic", "widgets"}]
  LOADK R20 K235 ["complete"]
  SETTABLEKS R20 R19 K44 ["id"]
  LOADK R20 K228 ["summary"]
  SETTABLEKS R20 R19 K45 ["topic"]
  LOADK R20 K217 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K88 ["widgets"]
  FASTCALL2 TABLE_INSERT R16 R19 [+4]
  MOVE R18 R16
  GETIMPORT R17 K231 [table.insert]
  CALL R17 2 0
  DUPTABLE R17 K241 [{"id", "allowedPlaceIds", "onStart", "onComplete", "steps", "shouldShowCompletedDialog"}]
  LOADK R18 K242 ["StudioTour3"]
  SETTABLEKS R18 R17 K44 ["id"]
  NEWTABLE R18 0 2
  LOADK R19 K243 [81362103443151]
  LOADK R20 K244 [88926143951080]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K236 ["allowedPlaceIds"]
  DUPCLOSURE R18 K245 [PROTO_17]
  CAPTURE VAL R6
  SETTABLEKS R18 R17 K237 ["onStart"]
  DUPCLOSURE R18 K246 [PROTO_18]
  CAPTURE VAL R6
  SETTABLEKS R18 R17 K238 ["onComplete"]
  SETTABLEKS R16 R17 K239 ["steps"]
  JUMPIFNOT R4 [+2]
  LOADB R18 1
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K240 ["shouldShowCompletedDialog"]
  RETURN R17 1
