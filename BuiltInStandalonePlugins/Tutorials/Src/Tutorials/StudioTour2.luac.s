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
  JUMPIFNOT R1 [+9]
  LOADK R4 K0 ["MaxSpeed"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADN R5 60
  JUMP [+1]
  LOADN R5 250
  NAMECALL R2 R1 K1 ["SetAttribute"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioTourCarSpeed"]
  LOADB R4 0
  NAMECALL R1 R1 K6 ["DefineFastFlag"]
  CALL R1 3 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["LabelRibbonControlGroups"]
  NAMECALL R2 R2 K8 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Flags"]
  GETTABLEKS R4 R5 K13 ["getFFlagTutorialsUseExtensibilityApi"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K14 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K15 ["Workspace"]
  NAMECALL R5 R5 K16 ["GetService"]
  CALL R5 2 1
  DUPTABLE R6 K20 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R7 0 1
  LOADK R8 K21 [14215126016]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K17 ["assetIds"]
  LOADK R7 K22 [{362.373, 4.115, 247.495}]
  SETTABLEKS R7 R6 K18 ["positionOverride"]
  LOADB R7 1
  SETTABLEKS R7 R6 K19 ["scriptWarningOverride"]
  DUPCLOSURE R7 K23 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R8 K24 [PROTO_2]
  CAPTURE VAL R5
  DUPTABLE R9 K29 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R10 K30 ["StudioTour2"]
  SETTABLEKS R10 R9 K25 ["id"]
  DUPCLOSURE R10 K31 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K26 ["onStart"]
  DUPCLOSURE R10 K32 [PROTO_4]
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K27 ["onComplete"]
  NEWTABLE R10 0 22
  DUPTABLE R11 K37 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R12 K38 ["moveCamera"]
  SETTABLEKS R12 R11 K25 ["id"]
  LOADK R12 K39 ["Input"]
  SETTABLEKS R12 R11 K33 ["kind"]
  NEWTABLE R12 0 4
  GETIMPORT R13 K43 [Enum.KeyCode.W]
  GETIMPORT R14 K45 [Enum.KeyCode.A]
  GETIMPORT R15 K47 [Enum.KeyCode.S]
  GETIMPORT R16 K49 [Enum.KeyCode.D]
  SETLIST R12 R13 4 [1]
  SETTABLEKS R12 R11 K34 ["keys"]
  LOADK R12 K50 ["navigation"]
  SETTABLEKS R12 R11 K35 ["topic"]
  LOADK R12 K51 [""]
  SETTABLEKS R12 R11 K36 ["widgets"]
  DUPTABLE R12 K52 [{"id", "kind", "keys", "topic"}]
  LOADK R13 K53 ["panCamera"]
  SETTABLEKS R13 R12 K25 ["id"]
  LOADK R13 K39 ["Input"]
  SETTABLEKS R13 R12 K33 ["kind"]
  NEWTABLE R13 0 2
  GETIMPORT R14 K55 [Enum.KeyCode.E]
  GETIMPORT R15 K57 [Enum.KeyCode.Q]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K34 ["keys"]
  LOADK R13 K50 ["navigation"]
  SETTABLEKS R13 R12 K35 ["topic"]
  DUPTABLE R13 K59 [{"id", "kind", "inputs", "topic"}]
  LOADK R14 K60 ["zoomCamera"]
  SETTABLEKS R14 R13 K25 ["id"]
  LOADK R14 K39 ["Input"]
  SETTABLEKS R14 R13 K33 ["kind"]
  NEWTABLE R14 0 1
  GETIMPORT R15 K63 [Enum.UserInputType.MouseWheel]
  SETLIST R14 R15 1 [1]
  SETTABLEKS R14 R13 K58 ["inputs"]
  LOADK R14 K50 ["navigation"]
  SETTABLEKS R14 R13 K35 ["topic"]
  DUPTABLE R14 K65 [{"id", "kind", "topic", "instanceId"}]
  LOADK R15 K66 ["rotateCamera"]
  SETTABLEKS R15 R14 K25 ["id"]
  LOADK R15 K67 ["Rotate"]
  SETTABLEKS R15 R14 K33 ["kind"]
  LOADK R15 K50 ["navigation"]
  SETTABLEKS R15 R14 K35 ["topic"]
  LOADK R15 K68 ["camera"]
  SETTABLEKS R15 R14 K64 ["instanceId"]
  DUPTABLE R15 K72 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R16 K73 ["marketplace"]
  SETTABLEKS R16 R15 K25 ["id"]
  LOADK R16 K73 ["marketplace"]
  SETTABLEKS R16 R15 K35 ["topic"]
  LOADK R16 K74 ["Toolbox"]
  SETTABLEKS R16 R15 K36 ["widgets"]
  LOADB R16 1
  SETTABLEKS R16 R15 K69 ["showNext"]
  DUPTABLE R16 K79 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R17 K80 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R17 R16 K75 ["target"]
  LOADB R17 1
  SETTABLEKS R17 R16 K76 ["showBox"]
  LOADB R17 1
  SETTABLEKS R17 R16 K77 ["showHighlight"]
  LOADB R17 1
  SETTABLEKS R17 R16 K78 ["showShadows"]
  SETTABLEKS R16 R15 K70 ["spotlight"]
  SETTABLEKS R6 R15 K71 ["toolboxLimits"]
  DUPTABLE R16 K82 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R17 K83 ["searchMarketplace"]
  SETTABLEKS R17 R16 K25 ["id"]
  LOADK R17 K84 ["ToolboxSearch"]
  SETTABLEKS R17 R16 K33 ["kind"]
  LOADK R17 K85 ["car"]
  SETTABLEKS R17 R16 K81 ["search"]
  SETTABLEKS R6 R16 K71 ["toolboxLimits"]
  LOADK R17 K73 ["marketplace"]
  SETTABLEKS R17 R16 K35 ["topic"]
  LOADK R17 K74 ["Toolbox"]
  SETTABLEKS R17 R16 K36 ["widgets"]
  DUPTABLE R17 K87 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R18 K88 ["insertMarketplace"]
  SETTABLEKS R18 R17 K25 ["id"]
  LOADK R18 K89 ["ToolboxInsert"]
  SETTABLEKS R18 R17 K33 ["kind"]
  SETTABLEKS R6 R17 K71 ["toolboxLimits"]
  LOADK R18 K73 ["marketplace"]
  SETTABLEKS R18 R17 K35 ["topic"]
  DUPCLOSURE R18 K90 [PROTO_5]
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K86 ["onSkip"]
  LOADK R18 K74 ["Toolbox"]
  SETTABLEKS R18 R17 K36 ["widgets"]
  DUPTABLE R18 K97 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R19 K98 ["wedge"]
  SETTABLEKS R19 R18 K25 ["id"]
  LOADK R19 K99 ["Insert"]
  SETTABLEKS R19 R18 K33 ["kind"]
  LOADK R19 K100 ["parts"]
  SETTABLEKS R19 R18 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R19 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R20 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R21 K110 ["Standalone"]
  SETTABLEKS R21 R20 K104 ["DataModel"]
  LOADK R21 K110 ["Standalone"]
  SETTABLEKS R21 R20 K105 ["PluginType"]
  LOADK R21 K111 ["Ribbon"]
  SETTABLEKS R21 R20 K106 ["PluginId"]
  LOADK R21 K112 ["Widgets"]
  SETTABLEKS R21 R20 K107 ["Category"]
  LOADK R21 K113 ["Tabs/Home/Part"]
  SETTABLEKS R21 R20 K108 ["ItemId"]
  SETTABLEKS R20 R19 K101 ["TargetWidgetUri"]
  GETIMPORT R20 K116 [Vector2.new]
  LOADN R21 5
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K102 ["Offset"]
  JUMP [+21]
  DUPTABLE R19 K118 [{"target", "offset"}]
  JUMPIFNOT R2 [+2]
  LOADK R20 K119 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R20 K99 ["Insert"]
  SETTABLEKS R20 R19 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R20 K116 [Vector2.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  JUMP [+5]
  GETIMPORT R20 K116 [Vector2.new]
  LOADN R21 5
  LOADN R22 236
  CALL R20 2 1
  SETTABLEKS R20 R19 K117 ["offset"]
  SETTABLEKS R19 R18 K91 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R19
  JUMP [+10]
  DUPTABLE R19 K120 [{"target", "showHighlight"}]
  JUMPIFNOT R2 [+2]
  LOADK R20 K119 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R20 K99 ["Insert"]
  SETTABLEKS R20 R19 K75 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K77 ["showHighlight"]
  SETTABLEKS R19 R18 K70 ["spotlight"]
  LOADK R19 K98 ["wedge"]
  SETTABLEKS R19 R18 K64 ["instanceId"]
  LOADK R19 K121 ["Part"]
  SETTABLEKS R19 R18 K92 ["className"]
  DUPTABLE R19 K123 [{"Shape"}]
  GETIMPORT R20 K126 [Enum.PartType.Wedge]
  SETTABLEKS R20 R19 K122 ["Shape"]
  SETTABLEKS R19 R18 K93 ["properties"]
  DUPCLOSURE R19 K127 [PROTO_6]
  SETTABLEKS R19 R18 K94 ["onBind"]
  DUPCLOSURE R19 K128 [PROTO_7]
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K86 ["onSkip"]
  DUPCLOSURE R19 K129 [PROTO_9]
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K95 ["onUnbind"]
  LOADK R19 K74 ["Toolbox"]
  SETTABLEKS R19 R18 K96 ["hideWidgets"]
  LOADK R19 K130 ["Ribbon-Home"]
  SETTABLEKS R19 R18 K36 ["widgets"]
  DUPTABLE R19 K133 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R20 K134 ["move"]
  SETTABLEKS R20 R19 K25 ["id"]
  LOADK R20 K135 ["Move"]
  SETTABLEKS R20 R19 K33 ["kind"]
  LOADK R20 K100 ["parts"]
  SETTABLEKS R20 R19 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R20 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R21 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R22 K110 ["Standalone"]
  SETTABLEKS R22 R21 K104 ["DataModel"]
  LOADK R22 K110 ["Standalone"]
  SETTABLEKS R22 R21 K105 ["PluginType"]
  LOADK R22 K111 ["Ribbon"]
  SETTABLEKS R22 R21 K106 ["PluginId"]
  LOADK R22 K112 ["Widgets"]
  SETTABLEKS R22 R21 K107 ["Category"]
  LOADK R22 K136 ["Tabs/Home/Move"]
  SETTABLEKS R22 R21 K108 ["ItemId"]
  SETTABLEKS R21 R20 K101 ["TargetWidgetUri"]
  GETIMPORT R21 K116 [Vector2.new]
  LOADN R22 0
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K102 ["Offset"]
  JUMP [+18]
  DUPTABLE R20 K118 [{"target", "offset"}]
  LOADK R21 K137 ["advTranslateAction"]
  SETTABLEKS R21 R20 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R21 K116 [Vector2.new]
  LOADN R22 0
  LOADN R23 5
  CALL R21 2 1
  JUMP [+5]
  GETIMPORT R21 K116 [Vector2.new]
  LOADN R22 0
  LOADN R23 251
  CALL R21 2 1
  SETTABLEKS R21 R20 K117 ["offset"]
  SETTABLEKS R20 R19 K91 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R20
  JUMP [+7]
  DUPTABLE R20 K120 [{"target", "showHighlight"}]
  LOADK R21 K137 ["advTranslateAction"]
  SETTABLEKS R21 R20 K75 ["target"]
  LOADB R21 1
  SETTABLEKS R21 R20 K77 ["showHighlight"]
  SETTABLEKS R20 R19 K70 ["spotlight"]
  LOADK R20 K138 [{360, 1, 200}]
  SETTABLEKS R20 R19 K131 ["position"]
  LOADN R20 20
  SETTABLEKS R20 R19 K132 ["distance"]
  LOADK R20 K98 ["wedge"]
  SETTABLEKS R20 R19 K64 ["instanceId"]
  DUPCLOSURE R20 K139 [PROTO_10]
  CAPTURE VAL R8
  SETTABLEKS R20 R19 K86 ["onSkip"]
  LOADK R20 K130 ["Ribbon-Home"]
  SETTABLEKS R20 R19 K36 ["widgets"]
  DUPTABLE R20 K141 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R21 K142 ["rotate"]
  SETTABLEKS R21 R20 K25 ["id"]
  LOADK R21 K67 ["Rotate"]
  SETTABLEKS R21 R20 K33 ["kind"]
  LOADK R21 K100 ["parts"]
  SETTABLEKS R21 R20 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R21 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R22 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R23 K110 ["Standalone"]
  SETTABLEKS R23 R22 K104 ["DataModel"]
  LOADK R23 K110 ["Standalone"]
  SETTABLEKS R23 R22 K105 ["PluginType"]
  LOADK R23 K111 ["Ribbon"]
  SETTABLEKS R23 R22 K106 ["PluginId"]
  LOADK R23 K112 ["Widgets"]
  SETTABLEKS R23 R22 K107 ["Category"]
  LOADK R23 K143 ["Tabs/Home/Rotate"]
  SETTABLEKS R23 R22 K108 ["ItemId"]
  SETTABLEKS R22 R21 K101 ["TargetWidgetUri"]
  GETIMPORT R22 K116 [Vector2.new]
  LOADN R23 0
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K102 ["Offset"]
  JUMP [+18]
  DUPTABLE R21 K118 [{"target", "offset"}]
  LOADK R22 K144 ["advRotateAction"]
  SETTABLEKS R22 R21 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R22 K116 [Vector2.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  JUMP [+5]
  GETIMPORT R22 K116 [Vector2.new]
  LOADN R23 0
  LOADN R24 251
  CALL R22 2 1
  SETTABLEKS R22 R21 K117 ["offset"]
  SETTABLEKS R21 R20 K91 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R21
  JUMP [+7]
  DUPTABLE R21 K120 [{"target", "showHighlight"}]
  LOADK R22 K144 ["advRotateAction"]
  SETTABLEKS R22 R21 K75 ["target"]
  LOADB R22 1
  SETTABLEKS R22 R21 K77 ["showHighlight"]
  SETTABLEKS R21 R20 K70 ["spotlight"]
  LOADK R21 K145 [{180, 0, 180}]
  SETTABLEKS R21 R20 K140 ["rotation"]
  LOADN R21 30
  SETTABLEKS R21 R20 K132 ["distance"]
  LOADK R21 K98 ["wedge"]
  SETTABLEKS R21 R20 K64 ["instanceId"]
  DUPCLOSURE R21 K146 [PROTO_11]
  CAPTURE VAL R8
  SETTABLEKS R21 R20 K86 ["onSkip"]
  LOADK R21 K130 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K36 ["widgets"]
  DUPTABLE R21 K148 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R22 K149 ["scale"]
  SETTABLEKS R22 R21 K25 ["id"]
  LOADK R22 K150 ["Scale"]
  SETTABLEKS R22 R21 K33 ["kind"]
  LOADK R22 K100 ["parts"]
  SETTABLEKS R22 R21 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R22 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R23 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R24 K110 ["Standalone"]
  SETTABLEKS R24 R23 K104 ["DataModel"]
  LOADK R24 K110 ["Standalone"]
  SETTABLEKS R24 R23 K105 ["PluginType"]
  LOADK R24 K111 ["Ribbon"]
  SETTABLEKS R24 R23 K106 ["PluginId"]
  LOADK R24 K112 ["Widgets"]
  SETTABLEKS R24 R23 K107 ["Category"]
  LOADK R24 K151 ["Tabs/Home/Scale"]
  SETTABLEKS R24 R23 K108 ["ItemId"]
  SETTABLEKS R23 R22 K101 ["TargetWidgetUri"]
  GETIMPORT R23 K116 [Vector2.new]
  LOADN R24 0
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K102 ["Offset"]
  JUMP [+18]
  DUPTABLE R22 K118 [{"target", "offset"}]
  LOADK R23 K152 ["resizeAction"]
  SETTABLEKS R23 R22 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R23 K116 [Vector2.new]
  LOADN R24 0
  LOADN R25 5
  CALL R23 2 1
  JUMP [+5]
  GETIMPORT R23 K116 [Vector2.new]
  LOADN R24 0
  LOADN R25 251
  CALL R23 2 1
  SETTABLEKS R23 R22 K117 ["offset"]
  SETTABLEKS R22 R21 K91 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R22
  JUMP [+7]
  DUPTABLE R22 K120 [{"target", "showHighlight"}]
  LOADK R23 K152 ["resizeAction"]
  SETTABLEKS R23 R22 K75 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K77 ["showHighlight"]
  SETTABLEKS R22 R21 K70 ["spotlight"]
  LOADK R22 K153 [{5, 3, 5}]
  SETTABLEKS R22 R21 K147 ["minSize"]
  LOADK R22 K98 ["wedge"]
  SETTABLEKS R22 R21 K64 ["instanceId"]
  DUPCLOSURE R22 K154 [PROTO_12]
  CAPTURE VAL R8
  SETTABLEKS R22 R21 K86 ["onSkip"]
  LOADK R22 K130 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K36 ["widgets"]
  DUPTABLE R22 K156 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R23 K157 ["color"]
  SETTABLEKS R23 R22 K25 ["id"]
  LOADK R23 K158 ["Edit"]
  SETTABLEKS R23 R22 K33 ["kind"]
  LOADK R23 K93 ["properties"]
  SETTABLEKS R23 R22 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R23 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R24 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R25 K110 ["Standalone"]
  SETTABLEKS R25 R24 K104 ["DataModel"]
  LOADK R25 K110 ["Standalone"]
  SETTABLEKS R25 R24 K105 ["PluginType"]
  LOADK R25 K111 ["Ribbon"]
  SETTABLEKS R25 R24 K106 ["PluginId"]
  LOADK R25 K112 ["Widgets"]
  SETTABLEKS R25 R24 K107 ["Category"]
  LOADK R25 K159 ["Tabs/Home/Color"]
  SETTABLEKS R25 R24 K108 ["ItemId"]
  SETTABLEKS R24 R23 K101 ["TargetWidgetUri"]
  GETIMPORT R24 K116 [Vector2.new]
  LOADN R25 5
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K102 ["Offset"]
  JUMP [+18]
  DUPTABLE R23 K118 [{"target", "offset"}]
  LOADK R24 K160 ["actionColorSelector"]
  SETTABLEKS R24 R23 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R24 K116 [Vector2.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  JUMP [+5]
  GETIMPORT R24 K116 [Vector2.new]
  LOADN R25 0
  LOADN R26 251
  CALL R24 2 1
  SETTABLEKS R24 R23 K117 ["offset"]
  SETTABLEKS R23 R22 K91 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R23
  JUMP [+7]
  DUPTABLE R23 K120 [{"target", "showHighlight"}]
  LOADK R24 K160 ["actionColorSelector"]
  SETTABLEKS R24 R23 K75 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K77 ["showHighlight"]
  SETTABLEKS R23 R22 K70 ["spotlight"]
  LOADK R23 K121 ["Part"]
  SETTABLEKS R23 R22 K92 ["className"]
  DUPTABLE R23 K162 [{"Color"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K161 ["Color"]
  SETTABLEKS R23 R22 K155 ["changes"]
  DUPCLOSURE R23 K163 [PROTO_13]
  CAPTURE VAL R8
  SETTABLEKS R23 R22 K86 ["onSkip"]
  LOADK R23 K130 ["Ribbon-Home"]
  SETTABLEKS R23 R22 K36 ["widgets"]
  DUPTABLE R23 K156 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R24 K164 ["anchor"]
  SETTABLEKS R24 R23 K25 ["id"]
  LOADK R24 K158 ["Edit"]
  SETTABLEKS R24 R23 K33 ["kind"]
  LOADK R24 K93 ["properties"]
  SETTABLEKS R24 R23 K35 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R24 K103 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R25 K109 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R26 K110 ["Standalone"]
  SETTABLEKS R26 R25 K104 ["DataModel"]
  LOADK R26 K110 ["Standalone"]
  SETTABLEKS R26 R25 K105 ["PluginType"]
  LOADK R26 K111 ["Ribbon"]
  SETTABLEKS R26 R25 K106 ["PluginId"]
  LOADK R26 K112 ["Widgets"]
  SETTABLEKS R26 R25 K107 ["Category"]
  LOADK R26 K165 ["Tabs/Home/Anchor"]
  SETTABLEKS R26 R25 K108 ["ItemId"]
  SETTABLEKS R25 R24 K101 ["TargetWidgetUri"]
  GETIMPORT R25 K116 [Vector2.new]
  LOADN R26 0
  LOADN R27 251
  CALL R25 2 1
  SETTABLEKS R25 R24 K102 ["Offset"]
  JUMP [+18]
  DUPTABLE R24 K118 [{"target", "offset"}]
  LOADK R25 K166 ["anchorAction"]
  SETTABLEKS R25 R24 K75 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R25 K116 [Vector2.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  JUMP [+5]
  GETIMPORT R25 K116 [Vector2.new]
  LOADN R26 0
  LOADN R27 251
  CALL R25 2 1
  SETTABLEKS R25 R24 K117 ["offset"]
  SETTABLEKS R24 R23 K91 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R24
  JUMP [+7]
  DUPTABLE R24 K120 [{"target", "showHighlight"}]
  LOADK R25 K166 ["anchorAction"]
  SETTABLEKS R25 R24 K75 ["target"]
  LOADB R25 1
  SETTABLEKS R25 R24 K77 ["showHighlight"]
  SETTABLEKS R24 R23 K70 ["spotlight"]
  LOADK R24 K121 ["Part"]
  SETTABLEKS R24 R23 K92 ["className"]
  DUPTABLE R24 K168 [{"Anchored"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K167 ["Anchored"]
  SETTABLEKS R24 R23 K155 ["changes"]
  DUPCLOSURE R24 K169 [PROTO_14]
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K86 ["onSkip"]
  LOADK R24 K130 ["Ribbon-Home"]
  SETTABLEKS R24 R23 K36 ["widgets"]
  DUPTABLE R24 K170 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R25 K171 ["explorer"]
  SETTABLEKS R25 R24 K25 ["id"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R25 K174 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R26 K175 [{"PluginId", "Category", "ItemId"}]
  LOADK R27 K176 ["Explorer"]
  SETTABLEKS R27 R26 K106 ["PluginId"]
  LOADK R27 K112 ["Widgets"]
  SETTABLEKS R27 R26 K107 ["Category"]
  LOADK R27 K177 ["Main"]
  SETTABLEKS R27 R26 K108 ["ItemId"]
  SETTABLEKS R26 R25 K101 ["TargetWidgetUri"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K172 ["SubjectAnchorPoint"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K173 ["TargetAnchorPoint"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 246
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K102 ["Offset"]
  JUMP [+28]
  DUPTABLE R25 K181 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R26 K182 ["explorerWidgetPanel"]
  SETTABLEKS R26 R25 K75 ["target"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K178 ["sourceAnchorPoint"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K179 ["targetAnchorPoint"]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 246
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K117 ["offset"]
  LOADB R26 1
  SETTABLEKS R26 R25 K180 ["hideArrow"]
  SETTABLEKS R25 R24 K91 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R25
  JUMP [+13]
  DUPTABLE R25 K79 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R26 K182 ["explorerWidgetPanel"]
  SETTABLEKS R26 R25 K75 ["target"]
  LOADB R26 1
  SETTABLEKS R26 R25 K76 ["showBox"]
  LOADB R26 1
  SETTABLEKS R26 R25 K77 ["showHighlight"]
  LOADB R26 1
  SETTABLEKS R26 R25 K78 ["showShadows"]
  SETTABLEKS R25 R24 K70 ["spotlight"]
  LOADK R25 K171 ["explorer"]
  SETTABLEKS R25 R24 K35 ["topic"]
  LOADB R25 1
  SETTABLEKS R25 R24 K69 ["showNext"]
  LOADK R25 K183 ["Ribbon-Home,Explorer"]
  SETTABLEKS R25 R24 K36 ["widgets"]
  DUPTABLE R25 K185 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R26 K186 ["workspace"]
  SETTABLEKS R26 R25 K25 ["id"]
  LOADK R26 K15 ["Workspace"]
  SETTABLEKS R26 R25 K184 ["path"]
  LOADK R26 K171 ["explorer"]
  SETTABLEKS R26 R25 K35 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R26 K174 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R27 K175 [{"PluginId", "Category", "ItemId"}]
  LOADK R28 K176 ["Explorer"]
  SETTABLEKS R28 R27 K106 ["PluginId"]
  LOADK R28 K112 ["Widgets"]
  SETTABLEKS R28 R27 K107 ["Category"]
  LOADK R28 K177 ["Main"]
  SETTABLEKS R28 R27 K108 ["ItemId"]
  SETTABLEKS R27 R26 K101 ["TargetWidgetUri"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K172 ["SubjectAnchorPoint"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K173 ["TargetAnchorPoint"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 246
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K102 ["Offset"]
  JUMP [+31]
  DUPTABLE R26 K188 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R27 K182 ["explorerWidgetPanel"]
  SETTABLEKS R27 R26 K75 ["target"]
  LOADK R27 K15 ["Workspace"]
  SETTABLEKS R27 R26 K187 ["rowName"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K178 ["sourceAnchorPoint"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K179 ["targetAnchorPoint"]
  GETIMPORT R27 K116 [Vector2.new]
  LOADN R28 246
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K117 ["offset"]
  LOADB R27 1
  SETTABLEKS R27 R26 K180 ["hideArrow"]
  SETTABLEKS R26 R25 K91 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R26
  JUMP [+16]
  DUPTABLE R26 K189 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R27 K182 ["explorerWidgetPanel"]
  SETTABLEKS R27 R26 K75 ["target"]
  LOADK R27 K15 ["Workspace"]
  SETTABLEKS R27 R26 K187 ["rowName"]
  LOADB R27 1
  SETTABLEKS R27 R26 K76 ["showBox"]
  LOADB R27 1
  SETTABLEKS R27 R26 K77 ["showHighlight"]
  LOADB R27 1
  SETTABLEKS R27 R26 K78 ["showShadows"]
  SETTABLEKS R26 R25 K70 ["spotlight"]
  LOADB R26 1
  SETTABLEKS R26 R25 K69 ["showNext"]
  DUPCLOSURE R26 K190 [PROTO_15]
  SETTABLEKS R26 R25 K94 ["onBind"]
  LOADK R26 K183 ["Ribbon-Home,Explorer"]
  SETTABLEKS R26 R25 K36 ["widgets"]
  DUPTABLE R26 K191 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R27 K192 ["select"]
  SETTABLEKS R27 R26 K25 ["id"]
  LOADK R27 K193 ["Select"]
  SETTABLEKS R27 R26 K33 ["kind"]
  LOADK R27 K194 ["Car"]
  SETTABLEKS R27 R26 K184 ["path"]
  LOADK R27 K195 ["selection"]
  SETTABLEKS R27 R26 K35 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R27 K174 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R28 K175 [{"PluginId", "Category", "ItemId"}]
  LOADK R29 K176 ["Explorer"]
  SETTABLEKS R29 R28 K106 ["PluginId"]
  LOADK R29 K112 ["Widgets"]
  SETTABLEKS R29 R28 K107 ["Category"]
  LOADK R29 K177 ["Main"]
  SETTABLEKS R29 R28 K108 ["ItemId"]
  SETTABLEKS R28 R27 K101 ["TargetWidgetUri"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K172 ["SubjectAnchorPoint"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K173 ["TargetAnchorPoint"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 246
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K102 ["Offset"]
  JUMP [+28]
  DUPTABLE R27 K181 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R28 K182 ["explorerWidgetPanel"]
  SETTABLEKS R28 R27 K75 ["target"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K178 ["sourceAnchorPoint"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K179 ["targetAnchorPoint"]
  GETIMPORT R28 K116 [Vector2.new]
  LOADN R29 246
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K117 ["offset"]
  LOADB R28 1
  SETTABLEKS R28 R27 K180 ["hideArrow"]
  SETTABLEKS R27 R26 K91 ["callout"]
  DUPCLOSURE R27 K196 [PROTO_16]
  CAPTURE VAL R7
  SETTABLEKS R27 R26 K86 ["onSkip"]
  LOADK R27 K183 ["Ribbon-Home,Explorer"]
  SETTABLEKS R27 R26 K36 ["widgets"]
  SETLIST R10 R11 16 [1]
  DUPTABLE R11 K197 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R12 K198 ["focus"]
  SETTABLEKS R12 R11 K25 ["id"]
  LOADK R12 K195 ["selection"]
  SETTABLEKS R12 R11 K35 ["topic"]
  LOADK R12 K199 ["Focus"]
  SETTABLEKS R12 R11 K33 ["kind"]
  DUPCLOSURE R12 K200 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K86 ["onSkip"]
  LOADK R12 K183 ["Ribbon-Home,Explorer"]
  SETTABLEKS R12 R11 K36 ["widgets"]
  DUPTABLE R12 K201 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R13 K93 ["properties"]
  SETTABLEKS R13 R12 K25 ["id"]
  LOADK R13 K202 ["attributes"]
  SETTABLEKS R13 R12 K35 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R13 K174 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R14 K175 [{"PluginId", "Category", "ItemId"}]
  LOADK R15 K203 ["Properties"]
  SETTABLEKS R15 R14 K106 ["PluginId"]
  LOADK R15 K112 ["Widgets"]
  SETTABLEKS R15 R14 K107 ["Category"]
  LOADK R15 K177 ["Main"]
  SETTABLEKS R15 R14 K108 ["ItemId"]
  SETTABLEKS R14 R13 K101 ["TargetWidgetUri"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K172 ["SubjectAnchorPoint"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K173 ["TargetAnchorPoint"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 246
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K102 ["Offset"]
  JUMP [+28]
  DUPTABLE R13 K181 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R14 K204 ["propertiesWidgetPanel"]
  SETTABLEKS R14 R13 K75 ["target"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K178 ["sourceAnchorPoint"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K179 ["targetAnchorPoint"]
  GETIMPORT R14 K116 [Vector2.new]
  LOADN R15 246
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K117 ["offset"]
  LOADB R14 1
  SETTABLEKS R14 R13 K180 ["hideArrow"]
  SETTABLEKS R13 R12 K91 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R13
  JUMP [+13]
  DUPTABLE R13 K79 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R14 K204 ["propertiesWidgetPanel"]
  SETTABLEKS R14 R13 K75 ["target"]
  LOADB R14 1
  SETTABLEKS R14 R13 K76 ["showBox"]
  LOADB R14 1
  SETTABLEKS R14 R13 K77 ["showHighlight"]
  LOADB R14 1
  SETTABLEKS R14 R13 K78 ["showShadows"]
  SETTABLEKS R13 R12 K70 ["spotlight"]
  LOADB R13 1
  SETTABLEKS R13 R12 K69 ["showNext"]
  LOADK R13 K205 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R13 R12 K36 ["widgets"]
  DUPTABLE R13 K206 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R14 K207 ["maxSpeed"]
  SETTABLEKS R14 R13 K25 ["id"]
  LOADK R14 K202 ["attributes"]
  SETTABLEKS R14 R13 K35 ["topic"]
  LOADK R14 K158 ["Edit"]
  SETTABLEKS R14 R13 K33 ["kind"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R14 K174 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R15 K175 [{"PluginId", "Category", "ItemId"}]
  LOADK R16 K203 ["Properties"]
  SETTABLEKS R16 R15 K106 ["PluginId"]
  LOADK R16 K112 ["Widgets"]
  SETTABLEKS R16 R15 K107 ["Category"]
  LOADK R16 K177 ["Main"]
  SETTABLEKS R16 R15 K108 ["ItemId"]
  SETTABLEKS R15 R14 K101 ["TargetWidgetUri"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K172 ["SubjectAnchorPoint"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K173 ["TargetAnchorPoint"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 246
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K102 ["Offset"]
  JUMP [+28]
  DUPTABLE R14 K181 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R15 K204 ["propertiesWidgetPanel"]
  SETTABLEKS R15 R14 K75 ["target"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K178 ["sourceAnchorPoint"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K179 ["targetAnchorPoint"]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 246
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K117 ["offset"]
  LOADB R15 1
  SETTABLEKS R15 R14 K180 ["hideArrow"]
  SETTABLEKS R14 R13 K91 ["callout"]
  LOADK R14 K208 ["Model"]
  SETTABLEKS R14 R13 K92 ["className"]
  DUPTABLE R14 K210 [{"Attributes"}]
  DUPTABLE R15 K212 [{"MaxSpeed"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K211 ["MaxSpeed"]
  SETTABLEKS R15 R14 K209 ["Attributes"]
  SETTABLEKS R14 R13 K155 ["changes"]
  DUPCLOSURE R14 K213 [PROTO_18]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K86 ["onSkip"]
  LOADK R14 K205 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R14 R13 K36 ["widgets"]
  DUPTABLE R14 K214 [{"id", "topic", "kind", "widgets", "spotlight"}]
  LOADK R15 K215 ["playtest"]
  SETTABLEKS R15 R14 K25 ["id"]
  LOADK R15 K215 ["playtest"]
  SETTABLEKS R15 R14 K35 ["topic"]
  LOADK R15 K216 ["StartPlaytest"]
  SETTABLEKS R15 R14 K33 ["kind"]
  LOADK R15 K205 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R15 R14 K36 ["widgets"]
  JUMPIFNOT R3 [+2]
  LOADNIL R15
  JUMP [+10]
  JUMPIFNOT R2 [+8]
  DUPTABLE R15 K120 [{"target", "showHighlight"}]
  LOADK R16 K217 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R16 R15 K75 ["target"]
  LOADB R16 1
  SETTABLEKS R16 R15 K77 ["showHighlight"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K70 ["spotlight"]
  DUPTABLE R15 K219 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R16 K220 ["avatar"]
  SETTABLEKS R16 R15 K25 ["id"]
  LOADK R16 K215 ["playtest"]
  SETTABLEKS R16 R15 K35 ["topic"]
  LOADK R16 K221 ["Avatar"]
  SETTABLEKS R16 R15 K33 ["kind"]
  GETIMPORT R16 K224 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R16 R15 K218 ["state"]
  LOADK R16 K205 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R16 R15 K36 ["widgets"]
  DUPTABLE R16 K225 [{"id", "topic", "kind", "widgets"}]
  LOADK R27 K226 ["stopPlaytest"]
  SETTABLEKS R27 R16 K25 ["id"]
  LOADK R27 K215 ["playtest"]
  SETTABLEKS R27 R16 K35 ["topic"]
  LOADK R27 K227 ["StopPlaytest"]
  SETTABLEKS R27 R16 K33 ["kind"]
  LOADK R27 K205 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R27 R16 K36 ["widgets"]
  SETLIST R10 R11 6 [17]
  SETTABLEKS R10 R9 K28 ["steps"]
  RETURN R9 1
