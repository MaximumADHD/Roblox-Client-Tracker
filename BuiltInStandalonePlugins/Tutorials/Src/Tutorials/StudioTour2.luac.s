PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 [14215126016]
  NAMECALL R0 R0 K1 ["LoadAsset"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["Car"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  GETIMPORT R2 K3 [game]
  LOADK R4 K4 ["InsertService"]
  NAMECALL R2 R2 K5 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+14]
  JUMPIFNOT R4 [+13]
  LOADK R7 K0 ["Car"]
  NAMECALL R5 R4 K1 ["FindFirstChild"]
  CALL R5 2 1
  GETTABLEKS R6 R5 K8 ["PrimaryPart"]
  LOADK R7 K9 [{362.373, 4.115, 247.495}]
  SETTABLEKS R7 R6 K10 ["Position"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K11 ["Parent"]
  RETURN R5 1
  LOADNIL R5
  RETURN R5 1

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["Part"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R1 K2 ["Shape"]
  GETIMPORT R3 K6 [Enum.PartType.Wedge]
  JUMPIFNOTEQ R2 R3 [+6]
  GETTABLEKS R2 R0 K7 ["instances"]
  SETTABLEKS R1 R2 K8 ["wedge"]
  RETURN R1 1
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K0 ["Part"]
  CALL R2 1 1
  GETIMPORT R3 K6 [Enum.PartType.Wedge]
  SETTABLEKS R3 R2 K2 ["Shape"]
  LOADK R3 K12 [{360, 1.5, 216}]
  SETTABLEKS R3 R2 K13 ["Position"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K14 ["Parent"]
  GETTABLEKS R3 R0 K7 ["instances"]
  SETTABLEKS R2 R3 K8 ["wedge"]
  RETURN R2 1

PROTO_3:
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

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["BasePart"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["Locked"]
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
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
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{343, 1.5, 250}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  LOADK R1 K0 [{343, 1.5, 250}]
  SETTABLEKS R1 R0 K1 ["Position"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [task.delay]
  LOADK R3 K3 [0.1]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{360, 1.5, 216}]
  SETTABLEKS R2 R1 K1 ["Position"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADK R2 K0 [{180, 0, 180}]
  SETTABLEKS R2 R1 K1 ["Rotation"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  LOADK R2 K0 [{364, 3.6, 216}]
  SETTABLEKS R2 R1 K1 ["Position"]
  LOADK R2 K2 [{15, 5, 15}]
  SETTABLEKS R2 R1 K3 ["Size"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+8]
  GETIMPORT R2 K2 [Color3.fromRGB]
  LOADN R3 129
  LOADN R4 246
  LOADN R5 136
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Color"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Anchored"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["dataModel"]
  LOADK R4 K1 ["Selection"]
  NAMECALL R2 R1 K2 ["GetService"]
  CALL R2 2 1
  NEWTABLE R5 0 1
  LOADK R8 K3 ["Workspace"]
  NAMECALL R6 R1 K2 ["GetService"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  NAMECALL R3 R2 K4 ["Set"]
  CALL R3 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+14]
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["Selection"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R2 K4 ["Set"]
  CALL R3 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+14]
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["Selection"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R2 K4 ["Set"]
  CALL R3 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  LOADK R4 K0 ["MaxSpeed"]
  LOADN R5 60
  NAMECALL R2 R1 K1 ["SetAttribute"]
  CALL R2 3 0
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
  GETTABLEKS R2 R3 K7 ["getFFlagTutorialsUseExtensibilityApi"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K11 ["Workspace"]
  NAMECALL R3 R3 K12 ["GetService"]
  CALL R3 2 1
  DUPTABLE R4 K16 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R5 0 1
  LOADK R6 K17 [14215126016]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K13 ["assetIds"]
  LOADK R5 K18 [{362.373, 4.115, 247.495}]
  SETTABLEKS R5 R4 K14 ["positionOverride"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["scriptWarningOverride"]
  DUPCLOSURE R5 K19 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R6 K20 [PROTO_2]
  CAPTURE VAL R3
  DUPTABLE R7 K25 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R8 K26 ["StudioTour2"]
  SETTABLEKS R8 R7 K21 ["id"]
  DUPCLOSURE R8 K27 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K22 ["onStart"]
  DUPCLOSURE R8 K28 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K23 ["onComplete"]
  NEWTABLE R8 0 22
  DUPTABLE R9 K33 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R10 K34 ["moveCamera"]
  SETTABLEKS R10 R9 K21 ["id"]
  LOADK R10 K35 ["Input"]
  SETTABLEKS R10 R9 K29 ["kind"]
  NEWTABLE R10 0 4
  GETIMPORT R11 K39 [Enum.KeyCode.W]
  GETIMPORT R12 K41 [Enum.KeyCode.A]
  GETIMPORT R13 K43 [Enum.KeyCode.S]
  GETIMPORT R14 K45 [Enum.KeyCode.D]
  SETLIST R10 R11 4 [1]
  SETTABLEKS R10 R9 K30 ["keys"]
  LOADK R10 K46 ["navigation"]
  SETTABLEKS R10 R9 K31 ["topic"]
  LOADK R10 K47 [""]
  SETTABLEKS R10 R9 K32 ["widgets"]
  DUPTABLE R10 K48 [{"id", "kind", "keys", "topic"}]
  LOADK R11 K49 ["panCamera"]
  SETTABLEKS R11 R10 K21 ["id"]
  LOADK R11 K35 ["Input"]
  SETTABLEKS R11 R10 K29 ["kind"]
  NEWTABLE R11 0 2
  GETIMPORT R12 K51 [Enum.KeyCode.E]
  GETIMPORT R13 K53 [Enum.KeyCode.Q]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K30 ["keys"]
  LOADK R11 K46 ["navigation"]
  SETTABLEKS R11 R10 K31 ["topic"]
  DUPTABLE R11 K55 [{"id", "kind", "inputs", "topic"}]
  LOADK R12 K56 ["zoomCamera"]
  SETTABLEKS R12 R11 K21 ["id"]
  LOADK R12 K35 ["Input"]
  SETTABLEKS R12 R11 K29 ["kind"]
  NEWTABLE R12 0 1
  GETIMPORT R13 K59 [Enum.UserInputType.MouseWheel]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K54 ["inputs"]
  LOADK R12 K46 ["navigation"]
  SETTABLEKS R12 R11 K31 ["topic"]
  DUPTABLE R12 K61 [{"id", "kind", "topic", "instanceId"}]
  LOADK R13 K62 ["rotateCamera"]
  SETTABLEKS R13 R12 K21 ["id"]
  LOADK R13 K63 ["Rotate"]
  SETTABLEKS R13 R12 K29 ["kind"]
  LOADK R13 K46 ["navigation"]
  SETTABLEKS R13 R12 K31 ["topic"]
  LOADK R13 K64 ["camera"]
  SETTABLEKS R13 R12 K60 ["instanceId"]
  DUPTABLE R13 K68 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R14 K69 ["marketplace"]
  SETTABLEKS R14 R13 K21 ["id"]
  LOADK R14 K69 ["marketplace"]
  SETTABLEKS R14 R13 K31 ["topic"]
  LOADK R14 K70 ["Toolbox"]
  SETTABLEKS R14 R13 K32 ["widgets"]
  LOADB R14 1
  SETTABLEKS R14 R13 K65 ["showNext"]
  DUPTABLE R14 K75 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R15 K76 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R15 R14 K71 ["target"]
  LOADB R15 1
  SETTABLEKS R15 R14 K72 ["showBox"]
  LOADB R15 1
  SETTABLEKS R15 R14 K73 ["showHighlight"]
  LOADB R15 1
  SETTABLEKS R15 R14 K74 ["showShadows"]
  SETTABLEKS R14 R13 K66 ["spotlight"]
  SETTABLEKS R4 R13 K67 ["toolboxLimits"]
  DUPTABLE R14 K78 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R15 K79 ["searchMarketplace"]
  SETTABLEKS R15 R14 K21 ["id"]
  LOADK R15 K80 ["ToolboxSearch"]
  SETTABLEKS R15 R14 K29 ["kind"]
  LOADK R15 K81 ["car"]
  SETTABLEKS R15 R14 K77 ["search"]
  SETTABLEKS R4 R14 K67 ["toolboxLimits"]
  LOADK R15 K69 ["marketplace"]
  SETTABLEKS R15 R14 K31 ["topic"]
  LOADK R15 K70 ["Toolbox"]
  SETTABLEKS R15 R14 K32 ["widgets"]
  DUPTABLE R15 K83 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R16 K84 ["insertMarketplace"]
  SETTABLEKS R16 R15 K21 ["id"]
  LOADK R16 K85 ["ToolboxInsert"]
  SETTABLEKS R16 R15 K29 ["kind"]
  SETTABLEKS R4 R15 K67 ["toolboxLimits"]
  LOADK R16 K69 ["marketplace"]
  SETTABLEKS R16 R15 K31 ["topic"]
  DUPCLOSURE R16 K86 [PROTO_5]
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K82 ["onSkip"]
  LOADK R16 K70 ["Toolbox"]
  SETTABLEKS R16 R15 K32 ["widgets"]
  DUPTABLE R16 K93 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R17 K94 ["wedge"]
  SETTABLEKS R17 R16 K21 ["id"]
  LOADK R17 K95 ["Insert"]
  SETTABLEKS R17 R16 K29 ["kind"]
  LOADK R17 K96 ["parts"]
  SETTABLEKS R17 R16 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R17 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R18 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R19 K106 ["Standalone"]
  SETTABLEKS R19 R18 K100 ["DataModel"]
  LOADK R19 K106 ["Standalone"]
  SETTABLEKS R19 R18 K101 ["PluginType"]
  LOADK R19 K107 ["Ribbon"]
  SETTABLEKS R19 R18 K102 ["PluginId"]
  LOADK R19 K108 ["Widgets"]
  SETTABLEKS R19 R18 K103 ["Category"]
  LOADK R19 K109 ["Tabs/Home/Part"]
  SETTABLEKS R19 R18 K104 ["ItemId"]
  SETTABLEKS R18 R17 K97 ["TargetWidgetUri"]
  GETIMPORT R18 K112 [Vector2.new]
  LOADN R19 5
  LOADN R20 20
  CALL R18 2 1
  SETTABLEKS R18 R17 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R17 K114 [{"target", "offset"}]
  LOADK R18 K115 ["placePartActionRibbonControl"]
  SETTABLEKS R18 R17 K71 ["target"]
  GETIMPORT R18 K112 [Vector2.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K113 ["offset"]
  SETTABLEKS R17 R16 K87 ["callout"]
  JUMPIFNOT R2 [+2]
  LOADNIL R17
  JUMP [+7]
  DUPTABLE R17 K116 [{"target", "showHighlight"}]
  LOADK R18 K115 ["placePartActionRibbonControl"]
  SETTABLEKS R18 R17 K71 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K73 ["showHighlight"]
  SETTABLEKS R17 R16 K66 ["spotlight"]
  LOADK R17 K94 ["wedge"]
  SETTABLEKS R17 R16 K60 ["instanceId"]
  LOADK R17 K117 ["Part"]
  SETTABLEKS R17 R16 K88 ["className"]
  DUPTABLE R17 K119 [{"Shape"}]
  GETIMPORT R18 K122 [Enum.PartType.Wedge]
  SETTABLEKS R18 R17 K118 ["Shape"]
  SETTABLEKS R17 R16 K89 ["properties"]
  DUPCLOSURE R17 K123 [PROTO_6]
  SETTABLEKS R17 R16 K90 ["onBind"]
  DUPCLOSURE R17 K124 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R17 R16 K82 ["onSkip"]
  DUPCLOSURE R17 K125 [PROTO_9]
  CAPTURE VAL R6
  SETTABLEKS R17 R16 K91 ["onUnbind"]
  LOADK R17 K70 ["Toolbox"]
  SETTABLEKS R17 R16 K92 ["hideWidgets"]
  LOADK R17 K126 ["Ribbon-Home"]
  SETTABLEKS R17 R16 K32 ["widgets"]
  DUPTABLE R17 K129 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R18 K130 ["move"]
  SETTABLEKS R18 R17 K21 ["id"]
  LOADK R18 K131 ["Move"]
  SETTABLEKS R18 R17 K29 ["kind"]
  LOADK R18 K96 ["parts"]
  SETTABLEKS R18 R17 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R18 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R19 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R20 K106 ["Standalone"]
  SETTABLEKS R20 R19 K100 ["DataModel"]
  LOADK R20 K106 ["Standalone"]
  SETTABLEKS R20 R19 K101 ["PluginType"]
  LOADK R20 K107 ["Ribbon"]
  SETTABLEKS R20 R19 K102 ["PluginId"]
  LOADK R20 K108 ["Widgets"]
  SETTABLEKS R20 R19 K103 ["Category"]
  LOADK R20 K132 ["Tabs/Home/Move"]
  SETTABLEKS R20 R19 K104 ["ItemId"]
  SETTABLEKS R19 R18 K97 ["TargetWidgetUri"]
  GETIMPORT R19 K112 [Vector2.new]
  LOADN R20 0
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R18 K114 [{"target", "offset"}]
  LOADK R19 K133 ["advTranslateAction"]
  SETTABLEKS R19 R18 K71 ["target"]
  GETIMPORT R19 K112 [Vector2.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K113 ["offset"]
  SETTABLEKS R18 R17 K87 ["callout"]
  JUMPIFNOT R2 [+2]
  LOADNIL R18
  JUMP [+7]
  DUPTABLE R18 K116 [{"target", "showHighlight"}]
  LOADK R19 K133 ["advTranslateAction"]
  SETTABLEKS R19 R18 K71 ["target"]
  LOADB R19 1
  SETTABLEKS R19 R18 K73 ["showHighlight"]
  SETTABLEKS R18 R17 K66 ["spotlight"]
  LOADK R18 K134 [{360, 1, 200}]
  SETTABLEKS R18 R17 K127 ["position"]
  LOADN R18 20
  SETTABLEKS R18 R17 K128 ["distance"]
  LOADK R18 K94 ["wedge"]
  SETTABLEKS R18 R17 K60 ["instanceId"]
  DUPCLOSURE R18 K135 [PROTO_10]
  CAPTURE VAL R6
  SETTABLEKS R18 R17 K82 ["onSkip"]
  LOADK R18 K126 ["Ribbon-Home"]
  SETTABLEKS R18 R17 K32 ["widgets"]
  DUPTABLE R18 K137 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R19 K138 ["rotate"]
  SETTABLEKS R19 R18 K21 ["id"]
  LOADK R19 K63 ["Rotate"]
  SETTABLEKS R19 R18 K29 ["kind"]
  LOADK R19 K96 ["parts"]
  SETTABLEKS R19 R18 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R19 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R20 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R21 K106 ["Standalone"]
  SETTABLEKS R21 R20 K100 ["DataModel"]
  LOADK R21 K106 ["Standalone"]
  SETTABLEKS R21 R20 K101 ["PluginType"]
  LOADK R21 K107 ["Ribbon"]
  SETTABLEKS R21 R20 K102 ["PluginId"]
  LOADK R21 K108 ["Widgets"]
  SETTABLEKS R21 R20 K103 ["Category"]
  LOADK R21 K139 ["Tabs/Home/Rotate"]
  SETTABLEKS R21 R20 K104 ["ItemId"]
  SETTABLEKS R20 R19 K97 ["TargetWidgetUri"]
  GETIMPORT R20 K112 [Vector2.new]
  LOADN R21 0
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R19 K114 [{"target", "offset"}]
  LOADK R20 K140 ["advRotateAction"]
  SETTABLEKS R20 R19 K71 ["target"]
  GETIMPORT R20 K112 [Vector2.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K113 ["offset"]
  SETTABLEKS R19 R18 K87 ["callout"]
  JUMPIFNOT R2 [+2]
  LOADNIL R19
  JUMP [+7]
  DUPTABLE R19 K116 [{"target", "showHighlight"}]
  LOADK R20 K140 ["advRotateAction"]
  SETTABLEKS R20 R19 K71 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K73 ["showHighlight"]
  SETTABLEKS R19 R18 K66 ["spotlight"]
  LOADK R19 K141 [{180, 0, 180}]
  SETTABLEKS R19 R18 K136 ["rotation"]
  LOADN R19 30
  SETTABLEKS R19 R18 K128 ["distance"]
  LOADK R19 K94 ["wedge"]
  SETTABLEKS R19 R18 K60 ["instanceId"]
  DUPCLOSURE R19 K142 [PROTO_11]
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K82 ["onSkip"]
  LOADK R19 K126 ["Ribbon-Home"]
  SETTABLEKS R19 R18 K32 ["widgets"]
  DUPTABLE R19 K144 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R20 K145 ["scale"]
  SETTABLEKS R20 R19 K21 ["id"]
  LOADK R20 K146 ["Scale"]
  SETTABLEKS R20 R19 K29 ["kind"]
  LOADK R20 K96 ["parts"]
  SETTABLEKS R20 R19 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R20 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R21 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R22 K106 ["Standalone"]
  SETTABLEKS R22 R21 K100 ["DataModel"]
  LOADK R22 K106 ["Standalone"]
  SETTABLEKS R22 R21 K101 ["PluginType"]
  LOADK R22 K107 ["Ribbon"]
  SETTABLEKS R22 R21 K102 ["PluginId"]
  LOADK R22 K108 ["Widgets"]
  SETTABLEKS R22 R21 K103 ["Category"]
  LOADK R22 K147 ["Tabs/Home/Scale"]
  SETTABLEKS R22 R21 K104 ["ItemId"]
  SETTABLEKS R21 R20 K97 ["TargetWidgetUri"]
  GETIMPORT R21 K112 [Vector2.new]
  LOADN R22 0
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R20 K114 [{"target", "offset"}]
  LOADK R21 K148 ["resizeAction"]
  SETTABLEKS R21 R20 K71 ["target"]
  GETIMPORT R21 K112 [Vector2.new]
  LOADN R22 0
  LOADN R23 5
  CALL R21 2 1
  SETTABLEKS R21 R20 K113 ["offset"]
  SETTABLEKS R20 R19 K87 ["callout"]
  JUMPIFNOT R2 [+2]
  LOADNIL R20
  JUMP [+7]
  DUPTABLE R20 K116 [{"target", "showHighlight"}]
  LOADK R21 K148 ["resizeAction"]
  SETTABLEKS R21 R20 K71 ["target"]
  LOADB R21 1
  SETTABLEKS R21 R20 K73 ["showHighlight"]
  SETTABLEKS R20 R19 K66 ["spotlight"]
  LOADK R20 K149 [{5, 3, 5}]
  SETTABLEKS R20 R19 K143 ["minSize"]
  LOADK R20 K94 ["wedge"]
  SETTABLEKS R20 R19 K60 ["instanceId"]
  DUPCLOSURE R20 K150 [PROTO_12]
  CAPTURE VAL R6
  SETTABLEKS R20 R19 K82 ["onSkip"]
  LOADK R20 K126 ["Ribbon-Home"]
  SETTABLEKS R20 R19 K32 ["widgets"]
  DUPTABLE R20 K152 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R21 K153 ["color"]
  SETTABLEKS R21 R20 K21 ["id"]
  LOADK R21 K154 ["Edit"]
  SETTABLEKS R21 R20 K29 ["kind"]
  LOADK R21 K89 ["properties"]
  SETTABLEKS R21 R20 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R21 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R22 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R23 K106 ["Standalone"]
  SETTABLEKS R23 R22 K100 ["DataModel"]
  LOADK R23 K106 ["Standalone"]
  SETTABLEKS R23 R22 K101 ["PluginType"]
  LOADK R23 K107 ["Ribbon"]
  SETTABLEKS R23 R22 K102 ["PluginId"]
  LOADK R23 K108 ["Widgets"]
  SETTABLEKS R23 R22 K103 ["Category"]
  LOADK R23 K155 ["Tabs/Home/Color"]
  SETTABLEKS R23 R22 K104 ["ItemId"]
  SETTABLEKS R22 R21 K97 ["TargetWidgetUri"]
  GETIMPORT R22 K112 [Vector2.new]
  LOADN R23 5
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R21 K114 [{"target", "offset"}]
  LOADK R22 K156 ["actionColorSelector"]
  SETTABLEKS R22 R21 K71 ["target"]
  GETIMPORT R22 K112 [Vector2.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K113 ["offset"]
  SETTABLEKS R21 R20 K87 ["callout"]
  JUMPIFNOT R2 [+2]
  LOADNIL R21
  JUMP [+7]
  DUPTABLE R21 K116 [{"target", "showHighlight"}]
  LOADK R22 K156 ["actionColorSelector"]
  SETTABLEKS R22 R21 K71 ["target"]
  LOADB R22 1
  SETTABLEKS R22 R21 K73 ["showHighlight"]
  SETTABLEKS R21 R20 K66 ["spotlight"]
  LOADK R21 K117 ["Part"]
  SETTABLEKS R21 R20 K88 ["className"]
  DUPTABLE R21 K158 [{"Color"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K157 ["Color"]
  SETTABLEKS R21 R20 K151 ["changes"]
  DUPCLOSURE R21 K159 [PROTO_13]
  CAPTURE VAL R6
  SETTABLEKS R21 R20 K82 ["onSkip"]
  LOADK R21 K126 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K32 ["widgets"]
  DUPTABLE R21 K152 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R22 K160 ["anchor"]
  SETTABLEKS R22 R21 K21 ["id"]
  LOADK R22 K154 ["Edit"]
  SETTABLEKS R22 R21 K29 ["kind"]
  LOADK R22 K89 ["properties"]
  SETTABLEKS R22 R21 K31 ["topic"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R22 K99 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R23 K105 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R24 K106 ["Standalone"]
  SETTABLEKS R24 R23 K100 ["DataModel"]
  LOADK R24 K106 ["Standalone"]
  SETTABLEKS R24 R23 K101 ["PluginType"]
  LOADK R24 K107 ["Ribbon"]
  SETTABLEKS R24 R23 K102 ["PluginId"]
  LOADK R24 K108 ["Widgets"]
  SETTABLEKS R24 R23 K103 ["Category"]
  LOADK R24 K161 ["Tabs/Home/Anchor"]
  SETTABLEKS R24 R23 K104 ["ItemId"]
  SETTABLEKS R23 R22 K97 ["TargetWidgetUri"]
  GETIMPORT R23 K112 [Vector2.new]
  LOADN R24 0
  LOADN R25 251
  CALL R23 2 1
  SETTABLEKS R23 R22 K98 ["Offset"]
  JUMP [+11]
  DUPTABLE R22 K114 [{"target", "offset"}]
  LOADK R23 K162 ["anchorAction"]
  SETTABLEKS R23 R22 K71 ["target"]
  GETIMPORT R23 K112 [Vector2.new]
  LOADN R24 0
  LOADN R25 5
  CALL R23 2 1
  SETTABLEKS R23 R22 K113 ["offset"]
  SETTABLEKS R22 R21 K87 ["callout"]
  JUMPIFNOT R1 [+2]
  LOADNIL R22
  JUMP [+7]
  DUPTABLE R22 K116 [{"target", "showHighlight"}]
  LOADK R23 K162 ["anchorAction"]
  SETTABLEKS R23 R22 K71 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["showHighlight"]
  SETTABLEKS R22 R21 K66 ["spotlight"]
  LOADK R22 K117 ["Part"]
  SETTABLEKS R22 R21 K88 ["className"]
  DUPTABLE R22 K164 [{"Anchored"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K163 ["Anchored"]
  SETTABLEKS R22 R21 K151 ["changes"]
  DUPCLOSURE R22 K165 [PROTO_14]
  CAPTURE VAL R6
  SETTABLEKS R22 R21 K82 ["onSkip"]
  LOADK R22 K126 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K32 ["widgets"]
  DUPTABLE R22 K166 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R23 K167 ["explorer"]
  SETTABLEKS R23 R22 K21 ["id"]
  JUMPIFNOT R1 [+35]
  DUPTABLE R23 K170 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R24 K171 [{"PluginId", "Category", "ItemId"}]
  LOADK R25 K172 ["Explorer"]
  SETTABLEKS R25 R24 K102 ["PluginId"]
  LOADK R25 K108 ["Widgets"]
  SETTABLEKS R25 R24 K103 ["Category"]
  LOADK R25 K173 ["Main"]
  SETTABLEKS R25 R24 K104 ["ItemId"]
  SETTABLEKS R24 R23 K97 ["TargetWidgetUri"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K168 ["SubjectAnchorPoint"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K169 ["TargetAnchorPoint"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 246
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K98 ["Offset"]
  JUMP [+28]
  DUPTABLE R23 K177 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R24 K178 ["explorerWidgetPanel"]
  SETTABLEKS R24 R23 K71 ["target"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K174 ["sourceAnchorPoint"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 0
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K175 ["targetAnchorPoint"]
  GETIMPORT R24 K112 [Vector2.new]
  LOADN R25 246
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K113 ["offset"]
  LOADB R24 1
  SETTABLEKS R24 R23 K176 ["hideArrow"]
  SETTABLEKS R23 R22 K87 ["callout"]
  JUMPIFNOT R1 [+2]
  LOADNIL R23
  JUMP [+13]
  DUPTABLE R23 K75 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R24 K178 ["explorerWidgetPanel"]
  SETTABLEKS R24 R23 K71 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K72 ["showBox"]
  LOADB R24 1
  SETTABLEKS R24 R23 K73 ["showHighlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K74 ["showShadows"]
  SETTABLEKS R23 R22 K66 ["spotlight"]
  LOADK R23 K167 ["explorer"]
  SETTABLEKS R23 R22 K31 ["topic"]
  LOADB R23 1
  SETTABLEKS R23 R22 K65 ["showNext"]
  LOADK R23 K179 ["Ribbon-Home,Explorer"]
  SETTABLEKS R23 R22 K32 ["widgets"]
  DUPTABLE R23 K181 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R24 K182 ["workspace"]
  SETTABLEKS R24 R23 K21 ["id"]
  LOADK R24 K11 ["Workspace"]
  SETTABLEKS R24 R23 K180 ["path"]
  LOADK R24 K167 ["explorer"]
  SETTABLEKS R24 R23 K31 ["topic"]
  JUMPIFNOT R1 [+35]
  DUPTABLE R24 K170 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R25 K171 [{"PluginId", "Category", "ItemId"}]
  LOADK R26 K172 ["Explorer"]
  SETTABLEKS R26 R25 K102 ["PluginId"]
  LOADK R26 K108 ["Widgets"]
  SETTABLEKS R26 R25 K103 ["Category"]
  LOADK R26 K173 ["Main"]
  SETTABLEKS R26 R25 K104 ["ItemId"]
  SETTABLEKS R25 R24 K97 ["TargetWidgetUri"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K168 ["SubjectAnchorPoint"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K169 ["TargetAnchorPoint"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 246
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K98 ["Offset"]
  JUMP [+31]
  DUPTABLE R24 K184 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R25 K178 ["explorerWidgetPanel"]
  SETTABLEKS R25 R24 K71 ["target"]
  LOADK R25 K11 ["Workspace"]
  SETTABLEKS R25 R24 K183 ["rowName"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K174 ["sourceAnchorPoint"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K175 ["targetAnchorPoint"]
  GETIMPORT R25 K112 [Vector2.new]
  LOADN R26 246
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K113 ["offset"]
  LOADB R25 1
  SETTABLEKS R25 R24 K176 ["hideArrow"]
  SETTABLEKS R24 R23 K87 ["callout"]
  JUMPIFNOT R1 [+2]
  LOADNIL R24
  JUMP [+16]
  DUPTABLE R24 K185 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R25 K178 ["explorerWidgetPanel"]
  SETTABLEKS R25 R24 K71 ["target"]
  LOADK R25 K11 ["Workspace"]
  SETTABLEKS R25 R24 K183 ["rowName"]
  LOADB R25 1
  SETTABLEKS R25 R24 K72 ["showBox"]
  LOADB R25 1
  SETTABLEKS R25 R24 K73 ["showHighlight"]
  LOADB R25 1
  SETTABLEKS R25 R24 K74 ["showShadows"]
  SETTABLEKS R24 R23 K66 ["spotlight"]
  LOADB R24 1
  SETTABLEKS R24 R23 K65 ["showNext"]
  DUPCLOSURE R24 K186 [PROTO_15]
  SETTABLEKS R24 R23 K90 ["onBind"]
  LOADK R24 K179 ["Ribbon-Home,Explorer"]
  SETTABLEKS R24 R23 K32 ["widgets"]
  DUPTABLE R24 K187 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R25 K188 ["select"]
  SETTABLEKS R25 R24 K21 ["id"]
  LOADK R25 K189 ["Select"]
  SETTABLEKS R25 R24 K29 ["kind"]
  LOADK R25 K190 ["Car"]
  SETTABLEKS R25 R24 K180 ["path"]
  LOADK R25 K191 ["selection"]
  SETTABLEKS R25 R24 K31 ["topic"]
  JUMPIFNOT R1 [+35]
  DUPTABLE R25 K170 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R26 K171 [{"PluginId", "Category", "ItemId"}]
  LOADK R27 K172 ["Explorer"]
  SETTABLEKS R27 R26 K102 ["PluginId"]
  LOADK R27 K108 ["Widgets"]
  SETTABLEKS R27 R26 K103 ["Category"]
  LOADK R27 K173 ["Main"]
  SETTABLEKS R27 R26 K104 ["ItemId"]
  SETTABLEKS R26 R25 K97 ["TargetWidgetUri"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K168 ["SubjectAnchorPoint"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K169 ["TargetAnchorPoint"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 246
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K98 ["Offset"]
  JUMP [+28]
  DUPTABLE R25 K177 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R26 K178 ["explorerWidgetPanel"]
  SETTABLEKS R26 R25 K71 ["target"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K174 ["sourceAnchorPoint"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K175 ["targetAnchorPoint"]
  GETIMPORT R26 K112 [Vector2.new]
  LOADN R27 246
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K113 ["offset"]
  LOADB R26 1
  SETTABLEKS R26 R25 K176 ["hideArrow"]
  SETTABLEKS R25 R24 K87 ["callout"]
  DUPCLOSURE R25 K192 [PROTO_16]
  CAPTURE VAL R5
  SETTABLEKS R25 R24 K82 ["onSkip"]
  LOADK R25 K179 ["Ribbon-Home,Explorer"]
  SETTABLEKS R25 R24 K32 ["widgets"]
  SETLIST R8 R9 16 [1]
  DUPTABLE R9 K193 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R10 K194 ["focus"]
  SETTABLEKS R10 R9 K21 ["id"]
  LOADK R10 K191 ["selection"]
  SETTABLEKS R10 R9 K31 ["topic"]
  LOADK R10 K195 ["Focus"]
  SETTABLEKS R10 R9 K29 ["kind"]
  DUPCLOSURE R10 K196 [PROTO_17]
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K82 ["onSkip"]
  LOADK R10 K179 ["Ribbon-Home,Explorer"]
  SETTABLEKS R10 R9 K32 ["widgets"]
  DUPTABLE R10 K197 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R11 K89 ["properties"]
  SETTABLEKS R11 R10 K21 ["id"]
  LOADK R11 K198 ["attributes"]
  SETTABLEKS R11 R10 K31 ["topic"]
  JUMPIFNOT R1 [+35]
  DUPTABLE R11 K170 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R12 K171 [{"PluginId", "Category", "ItemId"}]
  LOADK R13 K199 ["Properties"]
  SETTABLEKS R13 R12 K102 ["PluginId"]
  LOADK R13 K108 ["Widgets"]
  SETTABLEKS R13 R12 K103 ["Category"]
  LOADK R13 K173 ["Main"]
  SETTABLEKS R13 R12 K104 ["ItemId"]
  SETTABLEKS R12 R11 K97 ["TargetWidgetUri"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K168 ["SubjectAnchorPoint"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K169 ["TargetAnchorPoint"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 246
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K98 ["Offset"]
  JUMP [+28]
  DUPTABLE R11 K177 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R12 K200 ["propertiesWidgetPanel"]
  SETTABLEKS R12 R11 K71 ["target"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K174 ["sourceAnchorPoint"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K175 ["targetAnchorPoint"]
  GETIMPORT R12 K112 [Vector2.new]
  LOADN R13 246
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K113 ["offset"]
  LOADB R12 1
  SETTABLEKS R12 R11 K176 ["hideArrow"]
  SETTABLEKS R11 R10 K87 ["callout"]
  JUMPIFNOT R1 [+2]
  LOADNIL R11
  JUMP [+13]
  DUPTABLE R11 K75 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R12 K200 ["propertiesWidgetPanel"]
  SETTABLEKS R12 R11 K71 ["target"]
  LOADB R12 1
  SETTABLEKS R12 R11 K72 ["showBox"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["showHighlight"]
  LOADB R12 1
  SETTABLEKS R12 R11 K74 ["showShadows"]
  SETTABLEKS R11 R10 K66 ["spotlight"]
  LOADB R11 1
  SETTABLEKS R11 R10 K65 ["showNext"]
  LOADK R11 K201 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R11 R10 K32 ["widgets"]
  DUPTABLE R11 K202 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R12 K203 ["maxSpeed"]
  SETTABLEKS R12 R11 K21 ["id"]
  LOADK R12 K198 ["attributes"]
  SETTABLEKS R12 R11 K31 ["topic"]
  LOADK R12 K154 ["Edit"]
  SETTABLEKS R12 R11 K29 ["kind"]
  JUMPIFNOT R1 [+35]
  DUPTABLE R12 K170 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R13 K171 [{"PluginId", "Category", "ItemId"}]
  LOADK R14 K199 ["Properties"]
  SETTABLEKS R14 R13 K102 ["PluginId"]
  LOADK R14 K108 ["Widgets"]
  SETTABLEKS R14 R13 K103 ["Category"]
  LOADK R14 K173 ["Main"]
  SETTABLEKS R14 R13 K104 ["ItemId"]
  SETTABLEKS R13 R12 K97 ["TargetWidgetUri"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K168 ["SubjectAnchorPoint"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K169 ["TargetAnchorPoint"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 246
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K98 ["Offset"]
  JUMP [+28]
  DUPTABLE R12 K177 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R13 K200 ["propertiesWidgetPanel"]
  SETTABLEKS R13 R12 K71 ["target"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K174 ["sourceAnchorPoint"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K175 ["targetAnchorPoint"]
  GETIMPORT R13 K112 [Vector2.new]
  LOADN R14 246
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K113 ["offset"]
  LOADB R13 1
  SETTABLEKS R13 R12 K176 ["hideArrow"]
  SETTABLEKS R12 R11 K87 ["callout"]
  LOADK R12 K204 ["Model"]
  SETTABLEKS R12 R11 K88 ["className"]
  DUPTABLE R12 K206 [{"Attributes"}]
  DUPTABLE R13 K208 [{"MaxSpeed"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K207 ["MaxSpeed"]
  SETTABLEKS R13 R12 K205 ["Attributes"]
  SETTABLEKS R12 R11 K151 ["changes"]
  DUPCLOSURE R12 K209 [PROTO_18]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K82 ["onSkip"]
  LOADK R12 K201 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R12 R11 K32 ["widgets"]
  DUPTABLE R12 K210 [{"id", "topic", "kind", "widgets", "spotlight"}]
  LOADK R13 K211 ["playtest"]
  SETTABLEKS R13 R12 K21 ["id"]
  LOADK R13 K211 ["playtest"]
  SETTABLEKS R13 R12 K31 ["topic"]
  LOADK R13 K212 ["StartPlaytest"]
  SETTABLEKS R13 R12 K29 ["kind"]
  LOADK R13 K201 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R13 R12 K32 ["widgets"]
  JUMPIFNOT R1 [+2]
  LOADNIL R13
  JUMP [+7]
  DUPTABLE R13 K116 [{"target", "showHighlight"}]
  LOADK R14 K213 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R14 R13 K71 ["target"]
  LOADB R14 1
  SETTABLEKS R14 R13 K73 ["showHighlight"]
  SETTABLEKS R13 R12 K66 ["spotlight"]
  DUPTABLE R13 K215 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R14 K216 ["avatar"]
  SETTABLEKS R14 R13 K21 ["id"]
  LOADK R14 K211 ["playtest"]
  SETTABLEKS R14 R13 K31 ["topic"]
  LOADK R14 K217 ["Avatar"]
  SETTABLEKS R14 R13 K29 ["kind"]
  GETIMPORT R14 K220 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R14 R13 K214 ["state"]
  LOADK R14 K201 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R14 R13 K32 ["widgets"]
  DUPTABLE R14 K221 [{"id", "topic", "kind", "widgets"}]
  LOADK R25 K222 ["stopPlaytest"]
  SETTABLEKS R25 R14 K21 ["id"]
  LOADK R25 K211 ["playtest"]
  SETTABLEKS R25 R14 K31 ["topic"]
  LOADK R25 K223 ["StopPlaytest"]
  SETTABLEKS R25 R14 K29 ["kind"]
  LOADK R25 K201 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R25 R14 K32 ["widgets"]
  SETLIST R8 R9 6 [17]
  SETTABLEKS R8 R7 K24 ["steps"]
  RETURN R7 1
