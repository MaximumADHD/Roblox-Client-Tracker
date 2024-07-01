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
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K9 ["Position"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K10 ["Parent"]
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
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K12 ["Position"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K13 ["Parent"]
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
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K0 ["Position"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["Position"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [task.delay]
  LOADK R3 K3 [0.1]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K0 ["Position"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  LOADN R3 180
  LOADN R4 0
  LOADN R5 180
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K2 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Rotation"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K0 ["Position"]
  LOADN R3 15
  LOADN R4 5
  LOADN R5 15
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K3 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K4 ["Size"]
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
  LOADK R7 K17 [362.373]
  LOADK R8 K18 [4.115]
  LOADK R9 K19 [247.495]
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K22 [Vector3.new]
  CALL R6 3 1
  DUPTABLE R7 K26 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R8 0 1
  LOADK R9 K27 [14215126016]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K23 ["assetIds"]
  SETTABLEKS R6 R7 K24 ["positionOverride"]
  LOADB R8 1
  SETTABLEKS R8 R7 K25 ["scriptWarningOverride"]
  LOADN R9 104
  LOADK R10 K28 [1.5]
  LOADN R11 216
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K22 [Vector3.new]
  CALL R8 3 1
  LOADN R10 108
  LOADK R11 K29 [3.6]
  LOADN R12 216
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K22 [Vector3.new]
  CALL R9 3 1
  LOADN R11 87
  LOADK R12 K28 [1.5]
  LOADN R13 250
  FASTCALL VECTOR [+2]
  GETIMPORT R10 K22 [Vector3.new]
  CALL R10 3 1
  DUPCLOSURE R11 K30 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R12 K31 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R8
  DUPTABLE R13 K36 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R14 K37 ["StudioTour2"]
  SETTABLEKS R14 R13 K32 ["id"]
  DUPCLOSURE R14 K38 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K33 ["onStart"]
  DUPCLOSURE R14 K39 [PROTO_4]
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K34 ["onComplete"]
  NEWTABLE R14 0 22
  DUPTABLE R15 K44 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R16 K45 ["moveCamera"]
  SETTABLEKS R16 R15 K32 ["id"]
  LOADK R16 K46 ["Input"]
  SETTABLEKS R16 R15 K40 ["kind"]
  NEWTABLE R16 0 4
  GETIMPORT R17 K50 [Enum.KeyCode.W]
  GETIMPORT R18 K52 [Enum.KeyCode.A]
  GETIMPORT R19 K54 [Enum.KeyCode.S]
  GETIMPORT R20 K56 [Enum.KeyCode.D]
  SETLIST R16 R17 4 [1]
  SETTABLEKS R16 R15 K41 ["keys"]
  LOADK R16 K57 ["navigation"]
  SETTABLEKS R16 R15 K42 ["topic"]
  LOADK R16 K58 [""]
  SETTABLEKS R16 R15 K43 ["widgets"]
  DUPTABLE R16 K59 [{"id", "kind", "keys", "topic"}]
  LOADK R17 K60 ["panCamera"]
  SETTABLEKS R17 R16 K32 ["id"]
  LOADK R17 K46 ["Input"]
  SETTABLEKS R17 R16 K40 ["kind"]
  NEWTABLE R17 0 2
  GETIMPORT R18 K62 [Enum.KeyCode.E]
  GETIMPORT R19 K64 [Enum.KeyCode.Q]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K41 ["keys"]
  LOADK R17 K57 ["navigation"]
  SETTABLEKS R17 R16 K42 ["topic"]
  DUPTABLE R17 K66 [{"id", "kind", "inputs", "topic"}]
  LOADK R18 K67 ["zoomCamera"]
  SETTABLEKS R18 R17 K32 ["id"]
  LOADK R18 K46 ["Input"]
  SETTABLEKS R18 R17 K40 ["kind"]
  NEWTABLE R18 0 1
  GETIMPORT R19 K70 [Enum.UserInputType.MouseWheel]
  SETLIST R18 R19 1 [1]
  SETTABLEKS R18 R17 K65 ["inputs"]
  LOADK R18 K57 ["navigation"]
  SETTABLEKS R18 R17 K42 ["topic"]
  DUPTABLE R18 K72 [{"id", "kind", "topic", "instanceId"}]
  LOADK R19 K73 ["rotateCamera"]
  SETTABLEKS R19 R18 K32 ["id"]
  LOADK R19 K74 ["Rotate"]
  SETTABLEKS R19 R18 K40 ["kind"]
  LOADK R19 K57 ["navigation"]
  SETTABLEKS R19 R18 K42 ["topic"]
  LOADK R19 K75 ["camera"]
  SETTABLEKS R19 R18 K71 ["instanceId"]
  DUPTABLE R19 K79 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R20 K80 ["marketplace"]
  SETTABLEKS R20 R19 K32 ["id"]
  LOADK R20 K80 ["marketplace"]
  SETTABLEKS R20 R19 K42 ["topic"]
  LOADK R20 K81 ["Toolbox"]
  SETTABLEKS R20 R19 K43 ["widgets"]
  LOADB R20 1
  SETTABLEKS R20 R19 K76 ["showNext"]
  DUPTABLE R20 K86 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R21 K87 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R21 R20 K82 ["target"]
  LOADB R21 1
  SETTABLEKS R21 R20 K83 ["showBox"]
  LOADB R21 1
  SETTABLEKS R21 R20 K84 ["showHighlight"]
  LOADB R21 1
  SETTABLEKS R21 R20 K85 ["showShadows"]
  SETTABLEKS R20 R19 K77 ["spotlight"]
  SETTABLEKS R7 R19 K78 ["toolboxLimits"]
  DUPTABLE R20 K89 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R21 K90 ["searchMarketplace"]
  SETTABLEKS R21 R20 K32 ["id"]
  LOADK R21 K91 ["ToolboxSearch"]
  SETTABLEKS R21 R20 K40 ["kind"]
  LOADK R21 K92 ["car"]
  SETTABLEKS R21 R20 K88 ["search"]
  SETTABLEKS R7 R20 K78 ["toolboxLimits"]
  LOADK R21 K80 ["marketplace"]
  SETTABLEKS R21 R20 K42 ["topic"]
  LOADK R21 K81 ["Toolbox"]
  SETTABLEKS R21 R20 K43 ["widgets"]
  DUPTABLE R21 K94 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R22 K95 ["insertMarketplace"]
  SETTABLEKS R22 R21 K32 ["id"]
  LOADK R22 K96 ["ToolboxInsert"]
  SETTABLEKS R22 R21 K40 ["kind"]
  SETTABLEKS R7 R21 K78 ["toolboxLimits"]
  LOADK R22 K80 ["marketplace"]
  SETTABLEKS R22 R21 K42 ["topic"]
  DUPCLOSURE R22 K97 [PROTO_5]
  CAPTURE VAL R11
  SETTABLEKS R22 R21 K93 ["onSkip"]
  LOADK R22 K81 ["Toolbox"]
  SETTABLEKS R22 R21 K43 ["widgets"]
  DUPTABLE R22 K104 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R23 K105 ["wedge"]
  SETTABLEKS R23 R22 K32 ["id"]
  LOADK R23 K106 ["Insert"]
  SETTABLEKS R23 R22 K40 ["kind"]
  LOADK R23 K107 ["parts"]
  SETTABLEKS R23 R22 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R23 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R24 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R25 K117 ["Standalone"]
  SETTABLEKS R25 R24 K111 ["DataModel"]
  LOADK R25 K117 ["Standalone"]
  SETTABLEKS R25 R24 K112 ["PluginType"]
  LOADK R25 K118 ["Ribbon"]
  SETTABLEKS R25 R24 K113 ["PluginId"]
  LOADK R25 K119 ["Widgets"]
  SETTABLEKS R25 R24 K114 ["Category"]
  LOADK R25 K120 ["Tabs/Home/Part"]
  SETTABLEKS R25 R24 K115 ["ItemId"]
  SETTABLEKS R24 R23 K108 ["TargetWidgetUri"]
  GETIMPORT R24 K122 [Vector2.new]
  LOADN R25 5
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K109 ["Offset"]
  JUMP [+21]
  DUPTABLE R23 K124 [{"target", "offset"}]
  JUMPIFNOT R2 [+2]
  LOADK R24 K125 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R24 K106 ["Insert"]
  SETTABLEKS R24 R23 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R24 K122 [Vector2.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  JUMP [+5]
  GETIMPORT R24 K122 [Vector2.new]
  LOADN R25 5
  LOADN R26 236
  CALL R24 2 1
  SETTABLEKS R24 R23 K123 ["offset"]
  SETTABLEKS R23 R22 K98 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R23
  JUMP [+10]
  DUPTABLE R23 K126 [{"target", "showHighlight"}]
  JUMPIFNOT R2 [+2]
  LOADK R24 K125 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R24 K106 ["Insert"]
  SETTABLEKS R24 R23 K82 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K84 ["showHighlight"]
  SETTABLEKS R23 R22 K77 ["spotlight"]
  LOADK R23 K105 ["wedge"]
  SETTABLEKS R23 R22 K71 ["instanceId"]
  LOADK R23 K127 ["Part"]
  SETTABLEKS R23 R22 K99 ["className"]
  DUPTABLE R23 K129 [{"Shape"}]
  GETIMPORT R24 K132 [Enum.PartType.Wedge]
  SETTABLEKS R24 R23 K128 ["Shape"]
  SETTABLEKS R23 R22 K100 ["properties"]
  DUPCLOSURE R23 K133 [PROTO_6]
  SETTABLEKS R23 R22 K101 ["onBind"]
  DUPCLOSURE R23 K134 [PROTO_7]
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R23 R22 K93 ["onSkip"]
  DUPCLOSURE R23 K135 [PROTO_9]
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R23 R22 K102 ["onUnbind"]
  LOADK R23 K81 ["Toolbox"]
  SETTABLEKS R23 R22 K103 ["hideWidgets"]
  LOADK R23 K136 ["Ribbon-Home"]
  SETTABLEKS R23 R22 K43 ["widgets"]
  DUPTABLE R23 K139 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R24 K140 ["move"]
  SETTABLEKS R24 R23 K32 ["id"]
  LOADK R24 K141 ["Move"]
  SETTABLEKS R24 R23 K40 ["kind"]
  LOADK R24 K107 ["parts"]
  SETTABLEKS R24 R23 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R24 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R25 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R26 K117 ["Standalone"]
  SETTABLEKS R26 R25 K111 ["DataModel"]
  LOADK R26 K117 ["Standalone"]
  SETTABLEKS R26 R25 K112 ["PluginType"]
  LOADK R26 K118 ["Ribbon"]
  SETTABLEKS R26 R25 K113 ["PluginId"]
  LOADK R26 K119 ["Widgets"]
  SETTABLEKS R26 R25 K114 ["Category"]
  LOADK R26 K142 ["Tabs/Home/Move"]
  SETTABLEKS R26 R25 K115 ["ItemId"]
  SETTABLEKS R25 R24 K108 ["TargetWidgetUri"]
  GETIMPORT R25 K122 [Vector2.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K109 ["Offset"]
  JUMP [+18]
  DUPTABLE R24 K124 [{"target", "offset"}]
  LOADK R25 K143 ["advTranslateAction"]
  SETTABLEKS R25 R24 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R25 K122 [Vector2.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  JUMP [+5]
  GETIMPORT R25 K122 [Vector2.new]
  LOADN R26 0
  LOADN R27 251
  CALL R25 2 1
  SETTABLEKS R25 R24 K123 ["offset"]
  SETTABLEKS R24 R23 K98 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R24
  JUMP [+7]
  DUPTABLE R24 K126 [{"target", "showHighlight"}]
  LOADK R25 K143 ["advTranslateAction"]
  SETTABLEKS R25 R24 K82 ["target"]
  LOADB R25 1
  SETTABLEKS R25 R24 K84 ["showHighlight"]
  SETTABLEKS R24 R23 K77 ["spotlight"]
  LOADN R25 104
  LOADN R26 1
  LOADN R27 200
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K22 [Vector3.new]
  CALL R24 3 1
  SETTABLEKS R24 R23 K137 ["position"]
  LOADN R24 20
  SETTABLEKS R24 R23 K138 ["distance"]
  LOADK R24 K105 ["wedge"]
  SETTABLEKS R24 R23 K71 ["instanceId"]
  DUPCLOSURE R24 K144 [PROTO_10]
  CAPTURE VAL R12
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K93 ["onSkip"]
  LOADK R24 K136 ["Ribbon-Home"]
  SETTABLEKS R24 R23 K43 ["widgets"]
  DUPTABLE R24 K146 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R25 K147 ["rotate"]
  SETTABLEKS R25 R24 K32 ["id"]
  LOADK R25 K74 ["Rotate"]
  SETTABLEKS R25 R24 K40 ["kind"]
  LOADK R25 K107 ["parts"]
  SETTABLEKS R25 R24 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R25 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R26 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R27 K117 ["Standalone"]
  SETTABLEKS R27 R26 K111 ["DataModel"]
  LOADK R27 K117 ["Standalone"]
  SETTABLEKS R27 R26 K112 ["PluginType"]
  LOADK R27 K118 ["Ribbon"]
  SETTABLEKS R27 R26 K113 ["PluginId"]
  LOADK R27 K119 ["Widgets"]
  SETTABLEKS R27 R26 K114 ["Category"]
  LOADK R27 K148 ["Tabs/Home/Rotate"]
  SETTABLEKS R27 R26 K115 ["ItemId"]
  SETTABLEKS R26 R25 K108 ["TargetWidgetUri"]
  GETIMPORT R26 K122 [Vector2.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K109 ["Offset"]
  JUMP [+18]
  DUPTABLE R25 K124 [{"target", "offset"}]
  LOADK R26 K149 ["advRotateAction"]
  SETTABLEKS R26 R25 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R26 K122 [Vector2.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  JUMP [+5]
  GETIMPORT R26 K122 [Vector2.new]
  LOADN R27 0
  LOADN R28 251
  CALL R26 2 1
  SETTABLEKS R26 R25 K123 ["offset"]
  SETTABLEKS R25 R24 K98 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R25
  JUMP [+7]
  DUPTABLE R25 K126 [{"target", "showHighlight"}]
  LOADK R26 K149 ["advRotateAction"]
  SETTABLEKS R26 R25 K82 ["target"]
  LOADB R26 1
  SETTABLEKS R26 R25 K84 ["showHighlight"]
  SETTABLEKS R25 R24 K77 ["spotlight"]
  LOADN R26 180
  LOADN R27 0
  LOADN R28 180
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K22 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K145 ["rotation"]
  LOADN R25 30
  SETTABLEKS R25 R24 K138 ["distance"]
  LOADK R25 K105 ["wedge"]
  SETTABLEKS R25 R24 K71 ["instanceId"]
  DUPCLOSURE R25 K150 [PROTO_11]
  CAPTURE VAL R12
  SETTABLEKS R25 R24 K93 ["onSkip"]
  LOADK R25 K136 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K43 ["widgets"]
  DUPTABLE R25 K152 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R26 K153 ["scale"]
  SETTABLEKS R26 R25 K32 ["id"]
  LOADK R26 K154 ["Scale"]
  SETTABLEKS R26 R25 K40 ["kind"]
  LOADK R26 K107 ["parts"]
  SETTABLEKS R26 R25 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R26 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R27 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R28 K117 ["Standalone"]
  SETTABLEKS R28 R27 K111 ["DataModel"]
  LOADK R28 K117 ["Standalone"]
  SETTABLEKS R28 R27 K112 ["PluginType"]
  LOADK R28 K118 ["Ribbon"]
  SETTABLEKS R28 R27 K113 ["PluginId"]
  LOADK R28 K119 ["Widgets"]
  SETTABLEKS R28 R27 K114 ["Category"]
  LOADK R28 K155 ["Tabs/Home/Scale"]
  SETTABLEKS R28 R27 K115 ["ItemId"]
  SETTABLEKS R27 R26 K108 ["TargetWidgetUri"]
  GETIMPORT R27 K122 [Vector2.new]
  LOADN R28 0
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K109 ["Offset"]
  JUMP [+18]
  DUPTABLE R26 K124 [{"target", "offset"}]
  LOADK R27 K156 ["resizeAction"]
  SETTABLEKS R27 R26 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R27 K122 [Vector2.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  JUMP [+5]
  GETIMPORT R27 K122 [Vector2.new]
  LOADN R28 0
  LOADN R29 251
  CALL R27 2 1
  SETTABLEKS R27 R26 K123 ["offset"]
  SETTABLEKS R26 R25 K98 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R26
  JUMP [+7]
  DUPTABLE R26 K126 [{"target", "showHighlight"}]
  LOADK R27 K156 ["resizeAction"]
  SETTABLEKS R27 R26 K82 ["target"]
  LOADB R27 1
  SETTABLEKS R27 R26 K84 ["showHighlight"]
  SETTABLEKS R26 R25 K77 ["spotlight"]
  LOADN R27 5
  LOADN R28 3
  LOADN R29 5
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K22 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K151 ["minSize"]
  LOADK R26 K105 ["wedge"]
  SETTABLEKS R26 R25 K71 ["instanceId"]
  DUPCLOSURE R26 K157 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R26 R25 K93 ["onSkip"]
  LOADK R26 K136 ["Ribbon-Home"]
  SETTABLEKS R26 R25 K43 ["widgets"]
  DUPTABLE R26 K159 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R27 K160 ["color"]
  SETTABLEKS R27 R26 K32 ["id"]
  LOADK R27 K161 ["Edit"]
  SETTABLEKS R27 R26 K40 ["kind"]
  LOADK R27 K100 ["properties"]
  SETTABLEKS R27 R26 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R27 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R28 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R29 K117 ["Standalone"]
  SETTABLEKS R29 R28 K111 ["DataModel"]
  LOADK R29 K117 ["Standalone"]
  SETTABLEKS R29 R28 K112 ["PluginType"]
  LOADK R29 K118 ["Ribbon"]
  SETTABLEKS R29 R28 K113 ["PluginId"]
  LOADK R29 K119 ["Widgets"]
  SETTABLEKS R29 R28 K114 ["Category"]
  LOADK R29 K162 ["Tabs/Home/Color"]
  SETTABLEKS R29 R28 K115 ["ItemId"]
  SETTABLEKS R28 R27 K108 ["TargetWidgetUri"]
  GETIMPORT R28 K122 [Vector2.new]
  LOADN R29 5
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K109 ["Offset"]
  JUMP [+18]
  DUPTABLE R27 K124 [{"target", "offset"}]
  LOADK R28 K163 ["actionColorSelector"]
  SETTABLEKS R28 R27 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R28 K122 [Vector2.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K122 [Vector2.new]
  LOADN R29 0
  LOADN R30 251
  CALL R28 2 1
  SETTABLEKS R28 R27 K123 ["offset"]
  SETTABLEKS R27 R26 K98 ["callout"]
  JUMPIFNOT R4 [+2]
  LOADNIL R27
  JUMP [+7]
  DUPTABLE R27 K126 [{"target", "showHighlight"}]
  LOADK R28 K163 ["actionColorSelector"]
  SETTABLEKS R28 R27 K82 ["target"]
  LOADB R28 1
  SETTABLEKS R28 R27 K84 ["showHighlight"]
  SETTABLEKS R27 R26 K77 ["spotlight"]
  LOADK R27 K127 ["Part"]
  SETTABLEKS R27 R26 K99 ["className"]
  DUPTABLE R27 K165 [{"Color"}]
  LOADB R28 1
  SETTABLEKS R28 R27 K164 ["Color"]
  SETTABLEKS R27 R26 K158 ["changes"]
  DUPCLOSURE R27 K166 [PROTO_13]
  CAPTURE VAL R12
  SETTABLEKS R27 R26 K93 ["onSkip"]
  LOADK R27 K136 ["Ribbon-Home"]
  SETTABLEKS R27 R26 K43 ["widgets"]
  DUPTABLE R27 K159 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R28 K167 ["anchor"]
  SETTABLEKS R28 R27 K32 ["id"]
  LOADK R28 K161 ["Edit"]
  SETTABLEKS R28 R27 K40 ["kind"]
  LOADK R28 K100 ["properties"]
  SETTABLEKS R28 R27 K42 ["topic"]
  JUMPIFNOT R4 [+27]
  DUPTABLE R28 K110 [{"TargetWidgetUri", "Offset"}]
  DUPTABLE R29 K116 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R30 K117 ["Standalone"]
  SETTABLEKS R30 R29 K111 ["DataModel"]
  LOADK R30 K117 ["Standalone"]
  SETTABLEKS R30 R29 K112 ["PluginType"]
  LOADK R30 K118 ["Ribbon"]
  SETTABLEKS R30 R29 K113 ["PluginId"]
  LOADK R30 K119 ["Widgets"]
  SETTABLEKS R30 R29 K114 ["Category"]
  LOADK R30 K168 ["Tabs/Home/Anchor"]
  SETTABLEKS R30 R29 K115 ["ItemId"]
  SETTABLEKS R29 R28 K108 ["TargetWidgetUri"]
  GETIMPORT R29 K122 [Vector2.new]
  LOADN R30 0
  LOADN R31 251
  CALL R29 2 1
  SETTABLEKS R29 R28 K109 ["Offset"]
  JUMP [+18]
  DUPTABLE R28 K124 [{"target", "offset"}]
  LOADK R29 K169 ["anchorAction"]
  SETTABLEKS R29 R28 K82 ["target"]
  JUMPIFNOT R2 [+6]
  GETIMPORT R29 K122 [Vector2.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  JUMP [+5]
  GETIMPORT R29 K122 [Vector2.new]
  LOADN R30 0
  LOADN R31 251
  CALL R29 2 1
  SETTABLEKS R29 R28 K123 ["offset"]
  SETTABLEKS R28 R27 K98 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R28
  JUMP [+7]
  DUPTABLE R28 K126 [{"target", "showHighlight"}]
  LOADK R29 K169 ["anchorAction"]
  SETTABLEKS R29 R28 K82 ["target"]
  LOADB R29 1
  SETTABLEKS R29 R28 K84 ["showHighlight"]
  SETTABLEKS R28 R27 K77 ["spotlight"]
  LOADK R28 K127 ["Part"]
  SETTABLEKS R28 R27 K99 ["className"]
  DUPTABLE R28 K171 [{"Anchored"}]
  LOADB R29 1
  SETTABLEKS R29 R28 K170 ["Anchored"]
  SETTABLEKS R28 R27 K158 ["changes"]
  DUPCLOSURE R28 K172 [PROTO_14]
  CAPTURE VAL R12
  SETTABLEKS R28 R27 K93 ["onSkip"]
  LOADK R28 K136 ["Ribbon-Home"]
  SETTABLEKS R28 R27 K43 ["widgets"]
  DUPTABLE R28 K173 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R29 K174 ["explorer"]
  SETTABLEKS R29 R28 K32 ["id"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R29 K177 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R30 K178 [{"PluginId", "Category", "ItemId"}]
  LOADK R31 K179 ["Explorer"]
  SETTABLEKS R31 R30 K113 ["PluginId"]
  LOADK R31 K119 ["Widgets"]
  SETTABLEKS R31 R30 K114 ["Category"]
  LOADK R31 K180 ["Main"]
  SETTABLEKS R31 R30 K115 ["ItemId"]
  SETTABLEKS R30 R29 K108 ["TargetWidgetUri"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K175 ["SubjectAnchorPoint"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K176 ["TargetAnchorPoint"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 246
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K109 ["Offset"]
  JUMP [+28]
  DUPTABLE R29 K184 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R30 K185 ["explorerWidgetPanel"]
  SETTABLEKS R30 R29 K82 ["target"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K181 ["sourceAnchorPoint"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K182 ["targetAnchorPoint"]
  GETIMPORT R30 K122 [Vector2.new]
  LOADN R31 246
  LOADN R32 20
  CALL R30 2 1
  SETTABLEKS R30 R29 K123 ["offset"]
  LOADB R30 1
  SETTABLEKS R30 R29 K183 ["hideArrow"]
  SETTABLEKS R29 R28 K98 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R29
  JUMP [+13]
  DUPTABLE R29 K86 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R30 K185 ["explorerWidgetPanel"]
  SETTABLEKS R30 R29 K82 ["target"]
  LOADB R30 1
  SETTABLEKS R30 R29 K83 ["showBox"]
  LOADB R30 1
  SETTABLEKS R30 R29 K84 ["showHighlight"]
  LOADB R30 1
  SETTABLEKS R30 R29 K85 ["showShadows"]
  SETTABLEKS R29 R28 K77 ["spotlight"]
  LOADK R29 K174 ["explorer"]
  SETTABLEKS R29 R28 K42 ["topic"]
  LOADB R29 1
  SETTABLEKS R29 R28 K76 ["showNext"]
  LOADK R29 K186 ["Ribbon-Home,Explorer"]
  SETTABLEKS R29 R28 K43 ["widgets"]
  DUPTABLE R29 K188 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R30 K189 ["workspace"]
  SETTABLEKS R30 R29 K32 ["id"]
  LOADK R30 K15 ["Workspace"]
  SETTABLEKS R30 R29 K187 ["path"]
  LOADK R30 K174 ["explorer"]
  SETTABLEKS R30 R29 K42 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R30 K177 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R31 K178 [{"PluginId", "Category", "ItemId"}]
  LOADK R32 K179 ["Explorer"]
  SETTABLEKS R32 R31 K113 ["PluginId"]
  LOADK R32 K119 ["Widgets"]
  SETTABLEKS R32 R31 K114 ["Category"]
  LOADK R32 K180 ["Main"]
  SETTABLEKS R32 R31 K115 ["ItemId"]
  SETTABLEKS R31 R30 K108 ["TargetWidgetUri"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 1
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K175 ["SubjectAnchorPoint"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K176 ["TargetAnchorPoint"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 246
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K109 ["Offset"]
  JUMP [+31]
  DUPTABLE R30 K191 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R31 K185 ["explorerWidgetPanel"]
  SETTABLEKS R31 R30 K82 ["target"]
  LOADK R31 K15 ["Workspace"]
  SETTABLEKS R31 R30 K190 ["rowName"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 1
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K181 ["sourceAnchorPoint"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K182 ["targetAnchorPoint"]
  GETIMPORT R31 K122 [Vector2.new]
  LOADN R32 246
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K123 ["offset"]
  LOADB R31 1
  SETTABLEKS R31 R30 K183 ["hideArrow"]
  SETTABLEKS R30 R29 K98 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R30
  JUMP [+16]
  DUPTABLE R30 K192 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R31 K185 ["explorerWidgetPanel"]
  SETTABLEKS R31 R30 K82 ["target"]
  LOADK R31 K15 ["Workspace"]
  SETTABLEKS R31 R30 K190 ["rowName"]
  LOADB R31 1
  SETTABLEKS R31 R30 K83 ["showBox"]
  LOADB R31 1
  SETTABLEKS R31 R30 K84 ["showHighlight"]
  LOADB R31 1
  SETTABLEKS R31 R30 K85 ["showShadows"]
  SETTABLEKS R30 R29 K77 ["spotlight"]
  LOADB R30 1
  SETTABLEKS R30 R29 K76 ["showNext"]
  DUPCLOSURE R30 K193 [PROTO_15]
  SETTABLEKS R30 R29 K101 ["onBind"]
  LOADK R30 K186 ["Ribbon-Home,Explorer"]
  SETTABLEKS R30 R29 K43 ["widgets"]
  DUPTABLE R30 K194 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R31 K195 ["select"]
  SETTABLEKS R31 R30 K32 ["id"]
  LOADK R31 K196 ["Select"]
  SETTABLEKS R31 R30 K40 ["kind"]
  LOADK R31 K197 ["Car"]
  SETTABLEKS R31 R30 K187 ["path"]
  LOADK R31 K198 ["selection"]
  SETTABLEKS R31 R30 K42 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R31 K177 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R32 K178 [{"PluginId", "Category", "ItemId"}]
  LOADK R33 K179 ["Explorer"]
  SETTABLEKS R33 R32 K113 ["PluginId"]
  LOADK R33 K119 ["Widgets"]
  SETTABLEKS R33 R32 K114 ["Category"]
  LOADK R33 K180 ["Main"]
  SETTABLEKS R33 R32 K115 ["ItemId"]
  SETTABLEKS R32 R31 K108 ["TargetWidgetUri"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K175 ["SubjectAnchorPoint"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K176 ["TargetAnchorPoint"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 246
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K109 ["Offset"]
  JUMP [+28]
  DUPTABLE R31 K184 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R32 K185 ["explorerWidgetPanel"]
  SETTABLEKS R32 R31 K82 ["target"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K181 ["sourceAnchorPoint"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K182 ["targetAnchorPoint"]
  GETIMPORT R32 K122 [Vector2.new]
  LOADN R33 246
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K123 ["offset"]
  LOADB R32 1
  SETTABLEKS R32 R31 K183 ["hideArrow"]
  SETTABLEKS R31 R30 K98 ["callout"]
  DUPCLOSURE R31 K199 [PROTO_16]
  CAPTURE VAL R11
  SETTABLEKS R31 R30 K93 ["onSkip"]
  LOADK R31 K186 ["Ribbon-Home,Explorer"]
  SETTABLEKS R31 R30 K43 ["widgets"]
  SETLIST R14 R15 16 [1]
  DUPTABLE R15 K200 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R16 K201 ["focus"]
  SETTABLEKS R16 R15 K32 ["id"]
  LOADK R16 K198 ["selection"]
  SETTABLEKS R16 R15 K42 ["topic"]
  LOADK R16 K202 ["Focus"]
  SETTABLEKS R16 R15 K40 ["kind"]
  DUPCLOSURE R16 K203 [PROTO_17]
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K93 ["onSkip"]
  LOADK R16 K186 ["Ribbon-Home,Explorer"]
  SETTABLEKS R16 R15 K43 ["widgets"]
  DUPTABLE R16 K204 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R17 K100 ["properties"]
  SETTABLEKS R17 R16 K32 ["id"]
  LOADK R17 K205 ["attributes"]
  SETTABLEKS R17 R16 K42 ["topic"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R17 K177 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R18 K178 [{"PluginId", "Category", "ItemId"}]
  LOADK R19 K206 ["Properties"]
  SETTABLEKS R19 R18 K113 ["PluginId"]
  LOADK R19 K119 ["Widgets"]
  SETTABLEKS R19 R18 K114 ["Category"]
  LOADK R19 K180 ["Main"]
  SETTABLEKS R19 R18 K115 ["ItemId"]
  SETTABLEKS R18 R17 K108 ["TargetWidgetUri"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K175 ["SubjectAnchorPoint"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K176 ["TargetAnchorPoint"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 246
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K109 ["Offset"]
  JUMP [+28]
  DUPTABLE R17 K184 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R18 K207 ["propertiesWidgetPanel"]
  SETTABLEKS R18 R17 K82 ["target"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K181 ["sourceAnchorPoint"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K182 ["targetAnchorPoint"]
  GETIMPORT R18 K122 [Vector2.new]
  LOADN R19 246
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K123 ["offset"]
  LOADB R18 1
  SETTABLEKS R18 R17 K183 ["hideArrow"]
  SETTABLEKS R17 R16 K98 ["callout"]
  JUMPIFNOT R3 [+2]
  LOADNIL R17
  JUMP [+13]
  DUPTABLE R17 K86 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R18 K207 ["propertiesWidgetPanel"]
  SETTABLEKS R18 R17 K82 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K83 ["showBox"]
  LOADB R18 1
  SETTABLEKS R18 R17 K84 ["showHighlight"]
  LOADB R18 1
  SETTABLEKS R18 R17 K85 ["showShadows"]
  SETTABLEKS R17 R16 K77 ["spotlight"]
  LOADB R17 1
  SETTABLEKS R17 R16 K76 ["showNext"]
  LOADK R17 K208 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R17 R16 K43 ["widgets"]
  DUPTABLE R17 K209 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R18 K210 ["maxSpeed"]
  SETTABLEKS R18 R17 K32 ["id"]
  LOADK R18 K205 ["attributes"]
  SETTABLEKS R18 R17 K42 ["topic"]
  LOADK R18 K161 ["Edit"]
  SETTABLEKS R18 R17 K40 ["kind"]
  JUMPIFNOT R3 [+35]
  DUPTABLE R18 K177 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  DUPTABLE R19 K178 [{"PluginId", "Category", "ItemId"}]
  LOADK R20 K206 ["Properties"]
  SETTABLEKS R20 R19 K113 ["PluginId"]
  LOADK R20 K119 ["Widgets"]
  SETTABLEKS R20 R19 K114 ["Category"]
  LOADK R20 K180 ["Main"]
  SETTABLEKS R20 R19 K115 ["ItemId"]
  SETTABLEKS R19 R18 K108 ["TargetWidgetUri"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K175 ["SubjectAnchorPoint"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K176 ["TargetAnchorPoint"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 246
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K109 ["Offset"]
  JUMP [+28]
  DUPTABLE R18 K184 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R19 K207 ["propertiesWidgetPanel"]
  SETTABLEKS R19 R18 K82 ["target"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K181 ["sourceAnchorPoint"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K182 ["targetAnchorPoint"]
  GETIMPORT R19 K122 [Vector2.new]
  LOADN R20 246
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K123 ["offset"]
  LOADB R19 1
  SETTABLEKS R19 R18 K183 ["hideArrow"]
  SETTABLEKS R18 R17 K98 ["callout"]
  LOADK R18 K211 ["Model"]
  SETTABLEKS R18 R17 K99 ["className"]
  DUPTABLE R18 K213 [{"Attributes"}]
  DUPTABLE R19 K215 [{"MaxSpeed"}]
  LOADB R20 1
  SETTABLEKS R20 R19 K214 ["MaxSpeed"]
  SETTABLEKS R19 R18 K212 ["Attributes"]
  SETTABLEKS R18 R17 K158 ["changes"]
  DUPCLOSURE R18 K216 [PROTO_18]
  CAPTURE VAL R11
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K93 ["onSkip"]
  LOADK R18 K208 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R18 R17 K43 ["widgets"]
  DUPTABLE R18 K217 [{"id", "topic", "kind", "widgets", "spotlight"}]
  LOADK R19 K218 ["playtest"]
  SETTABLEKS R19 R18 K32 ["id"]
  LOADK R19 K218 ["playtest"]
  SETTABLEKS R19 R18 K42 ["topic"]
  LOADK R19 K219 ["StartPlaytest"]
  SETTABLEKS R19 R18 K40 ["kind"]
  LOADK R19 K208 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R19 R18 K43 ["widgets"]
  JUMPIFNOT R3 [+2]
  LOADNIL R19
  JUMP [+10]
  JUMPIFNOT R2 [+8]
  DUPTABLE R19 K126 [{"target", "showHighlight"}]
  LOADK R20 K220 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R20 R19 K82 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K84 ["showHighlight"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K77 ["spotlight"]
  DUPTABLE R19 K222 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R20 K223 ["avatar"]
  SETTABLEKS R20 R19 K32 ["id"]
  LOADK R20 K218 ["playtest"]
  SETTABLEKS R20 R19 K42 ["topic"]
  LOADK R20 K224 ["Avatar"]
  SETTABLEKS R20 R19 K40 ["kind"]
  GETIMPORT R20 K227 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R20 R19 K221 ["state"]
  LOADK R20 K208 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R20 R19 K43 ["widgets"]
  DUPTABLE R20 K228 [{"id", "topic", "kind", "widgets"}]
  LOADK R31 K229 ["stopPlaytest"]
  SETTABLEKS R31 R20 K32 ["id"]
  LOADK R31 K218 ["playtest"]
  SETTABLEKS R31 R20 K42 ["topic"]
  LOADK R31 K230 ["StopPlaytest"]
  SETTABLEKS R31 R20 K40 ["kind"]
  LOADK R31 K208 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R31 R20 K43 ["widgets"]
  SETLIST R14 R15 6 [17]
  SETTABLEKS R14 R13 K35 ["steps"]
  RETURN R13 1
