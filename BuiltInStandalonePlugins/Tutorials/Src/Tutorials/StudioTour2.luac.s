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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioTourCarSpeed"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["LabelRibbonControlGroups"]
  NAMECALL R1 R1 K5 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["Workspace"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  LOADK R4 K8 [362.373]
  LOADK R5 K9 [4.115]
  LOADK R6 K10 [247.495]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K13 [Vector3.new]
  CALL R3 3 1
  DUPTABLE R4 K17 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R5 0 1
  LOADK R6 K18 [14215126016]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K14 ["assetIds"]
  SETTABLEKS R3 R4 K15 ["positionOverride"]
  LOADB R5 1
  SETTABLEKS R5 R4 K16 ["scriptWarningOverride"]
  LOADN R6 104
  LOADK R7 K19 [1.5]
  LOADN R8 216
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K13 [Vector3.new]
  CALL R5 3 1
  LOADN R7 108
  LOADK R8 K20 [3.6]
  LOADN R9 216
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K13 [Vector3.new]
  CALL R6 3 1
  LOADN R8 87
  LOADK R9 K19 [1.5]
  LOADN R10 250
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K13 [Vector3.new]
  CALL R7 3 1
  DUPCLOSURE R8 K21 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R10 K27 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R11 K28 ["StudioTour2"]
  SETTABLEKS R11 R10 K23 ["id"]
  DUPCLOSURE R11 K29 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K24 ["onStart"]
  DUPCLOSURE R11 K30 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K25 ["onComplete"]
  NEWTABLE R11 0 22
  DUPTABLE R12 K35 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R13 K36 ["moveCamera"]
  SETTABLEKS R13 R12 K23 ["id"]
  LOADK R13 K37 ["Input"]
  SETTABLEKS R13 R12 K31 ["kind"]
  NEWTABLE R13 0 4
  GETIMPORT R14 K41 [Enum.KeyCode.W]
  GETIMPORT R15 K43 [Enum.KeyCode.A]
  GETIMPORT R16 K45 [Enum.KeyCode.S]
  GETIMPORT R17 K47 [Enum.KeyCode.D]
  SETLIST R13 R14 4 [1]
  SETTABLEKS R13 R12 K32 ["keys"]
  LOADK R13 K48 ["navigation"]
  SETTABLEKS R13 R12 K33 ["topic"]
  LOADK R13 K49 [""]
  SETTABLEKS R13 R12 K34 ["widgets"]
  DUPTABLE R13 K50 [{"id", "kind", "keys", "topic"}]
  LOADK R14 K51 ["panCamera"]
  SETTABLEKS R14 R13 K23 ["id"]
  LOADK R14 K37 ["Input"]
  SETTABLEKS R14 R13 K31 ["kind"]
  NEWTABLE R14 0 2
  GETIMPORT R15 K53 [Enum.KeyCode.E]
  GETIMPORT R16 K55 [Enum.KeyCode.Q]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K32 ["keys"]
  LOADK R14 K48 ["navigation"]
  SETTABLEKS R14 R13 K33 ["topic"]
  DUPTABLE R14 K57 [{"id", "kind", "inputs", "topic"}]
  LOADK R15 K58 ["zoomCamera"]
  SETTABLEKS R15 R14 K23 ["id"]
  LOADK R15 K37 ["Input"]
  SETTABLEKS R15 R14 K31 ["kind"]
  NEWTABLE R15 0 1
  GETIMPORT R16 K61 [Enum.UserInputType.MouseWheel]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K56 ["inputs"]
  LOADK R15 K48 ["navigation"]
  SETTABLEKS R15 R14 K33 ["topic"]
  DUPTABLE R15 K63 [{"id", "kind", "topic", "instanceId"}]
  LOADK R16 K64 ["rotateCamera"]
  SETTABLEKS R16 R15 K23 ["id"]
  LOADK R16 K65 ["Rotate"]
  SETTABLEKS R16 R15 K31 ["kind"]
  LOADK R16 K48 ["navigation"]
  SETTABLEKS R16 R15 K33 ["topic"]
  LOADK R16 K66 ["camera"]
  SETTABLEKS R16 R15 K62 ["instanceId"]
  DUPTABLE R16 K70 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R17 K71 ["marketplace"]
  SETTABLEKS R17 R16 K23 ["id"]
  LOADK R17 K71 ["marketplace"]
  SETTABLEKS R17 R16 K33 ["topic"]
  LOADK R17 K72 ["Toolbox"]
  SETTABLEKS R17 R16 K34 ["widgets"]
  LOADB R17 1
  SETTABLEKS R17 R16 K67 ["showNext"]
  DUPTABLE R17 K77 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R18 K78 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R18 R17 K73 ["target"]
  LOADB R18 1
  SETTABLEKS R18 R17 K74 ["showBox"]
  LOADB R18 1
  SETTABLEKS R18 R17 K75 ["showHighlight"]
  LOADB R18 1
  SETTABLEKS R18 R17 K76 ["showShadows"]
  SETTABLEKS R17 R16 K68 ["spotlight"]
  SETTABLEKS R4 R16 K69 ["toolboxLimits"]
  DUPTABLE R17 K80 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R18 K81 ["searchMarketplace"]
  SETTABLEKS R18 R17 K23 ["id"]
  LOADK R18 K82 ["ToolboxSearch"]
  SETTABLEKS R18 R17 K31 ["kind"]
  LOADK R18 K83 ["car"]
  SETTABLEKS R18 R17 K79 ["search"]
  SETTABLEKS R4 R17 K69 ["toolboxLimits"]
  LOADK R18 K71 ["marketplace"]
  SETTABLEKS R18 R17 K33 ["topic"]
  LOADK R18 K72 ["Toolbox"]
  SETTABLEKS R18 R17 K34 ["widgets"]
  DUPTABLE R18 K85 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R19 K86 ["insertMarketplace"]
  SETTABLEKS R19 R18 K23 ["id"]
  LOADK R19 K87 ["ToolboxInsert"]
  SETTABLEKS R19 R18 K31 ["kind"]
  SETTABLEKS R4 R18 K69 ["toolboxLimits"]
  LOADK R19 K71 ["marketplace"]
  SETTABLEKS R19 R18 K33 ["topic"]
  DUPCLOSURE R19 K88 [PROTO_5]
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K84 ["onSkip"]
  LOADK R19 K72 ["Toolbox"]
  SETTABLEKS R19 R18 K34 ["widgets"]
  DUPTABLE R19 K95 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R20 K96 ["wedge"]
  SETTABLEKS R20 R19 K23 ["id"]
  LOADK R20 K97 ["Insert"]
  SETTABLEKS R20 R19 K31 ["kind"]
  LOADK R20 K98 ["parts"]
  SETTABLEKS R20 R19 K33 ["topic"]
  DUPTABLE R20 K100 [{"target", "offset"}]
  JUMPIFNOT R1 [+2]
  LOADK R21 K101 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R21 K97 ["Insert"]
  SETTABLEKS R21 R20 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R21 K103 [Vector2.new]
  LOADN R22 0
  LOADN R23 5
  CALL R21 2 1
  JUMP [+5]
  GETIMPORT R21 K103 [Vector2.new]
  LOADN R22 5
  LOADN R23 236
  CALL R21 2 1
  SETTABLEKS R21 R20 K99 ["offset"]
  SETTABLEKS R20 R19 K89 ["callout"]
  DUPTABLE R20 K104 [{"target", "showHighlight"}]
  JUMPIFNOT R1 [+2]
  LOADK R21 K101 ["placePartActionRibbonControl"]
  JUMP [+1]
  LOADK R21 K97 ["Insert"]
  SETTABLEKS R21 R20 K73 ["target"]
  LOADB R21 1
  SETTABLEKS R21 R20 K75 ["showHighlight"]
  SETTABLEKS R20 R19 K68 ["spotlight"]
  LOADK R20 K96 ["wedge"]
  SETTABLEKS R20 R19 K62 ["instanceId"]
  LOADK R20 K105 ["Part"]
  SETTABLEKS R20 R19 K90 ["className"]
  DUPTABLE R20 K107 [{"Shape"}]
  GETIMPORT R21 K110 [Enum.PartType.Wedge]
  SETTABLEKS R21 R20 K106 ["Shape"]
  SETTABLEKS R20 R19 K91 ["properties"]
  DUPCLOSURE R20 K111 [PROTO_6]
  SETTABLEKS R20 R19 K92 ["onBind"]
  DUPCLOSURE R20 K112 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K84 ["onSkip"]
  DUPCLOSURE R20 K113 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K93 ["onUnbind"]
  LOADK R20 K72 ["Toolbox"]
  SETTABLEKS R20 R19 K94 ["hideWidgets"]
  LOADK R20 K114 ["Ribbon-Home"]
  SETTABLEKS R20 R19 K34 ["widgets"]
  DUPTABLE R20 K117 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R21 K118 ["move"]
  SETTABLEKS R21 R20 K23 ["id"]
  LOADK R21 K119 ["Move"]
  SETTABLEKS R21 R20 K31 ["kind"]
  LOADK R21 K98 ["parts"]
  SETTABLEKS R21 R20 K33 ["topic"]
  DUPTABLE R21 K100 [{"target", "offset"}]
  LOADK R22 K120 ["advTranslateAction"]
  SETTABLEKS R22 R21 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R22 K103 [Vector2.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  JUMP [+5]
  GETIMPORT R22 K103 [Vector2.new]
  LOADN R23 0
  LOADN R24 251
  CALL R22 2 1
  SETTABLEKS R22 R21 K99 ["offset"]
  SETTABLEKS R21 R20 K89 ["callout"]
  DUPTABLE R21 K104 [{"target", "showHighlight"}]
  LOADK R22 K120 ["advTranslateAction"]
  SETTABLEKS R22 R21 K73 ["target"]
  LOADB R22 1
  SETTABLEKS R22 R21 K75 ["showHighlight"]
  SETTABLEKS R21 R20 K68 ["spotlight"]
  LOADN R22 104
  LOADN R23 1
  LOADN R24 200
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K13 [Vector3.new]
  CALL R21 3 1
  SETTABLEKS R21 R20 K115 ["position"]
  LOADN R21 20
  SETTABLEKS R21 R20 K116 ["distance"]
  LOADK R21 K96 ["wedge"]
  SETTABLEKS R21 R20 K62 ["instanceId"]
  DUPCLOSURE R21 K121 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K84 ["onSkip"]
  LOADK R21 K114 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K34 ["widgets"]
  DUPTABLE R21 K123 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R22 K124 ["rotate"]
  SETTABLEKS R22 R21 K23 ["id"]
  LOADK R22 K65 ["Rotate"]
  SETTABLEKS R22 R21 K31 ["kind"]
  LOADK R22 K98 ["parts"]
  SETTABLEKS R22 R21 K33 ["topic"]
  DUPTABLE R22 K100 [{"target", "offset"}]
  LOADK R23 K125 ["advRotateAction"]
  SETTABLEKS R23 R22 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R23 K103 [Vector2.new]
  LOADN R24 0
  LOADN R25 5
  CALL R23 2 1
  JUMP [+5]
  GETIMPORT R23 K103 [Vector2.new]
  LOADN R24 0
  LOADN R25 251
  CALL R23 2 1
  SETTABLEKS R23 R22 K99 ["offset"]
  SETTABLEKS R22 R21 K89 ["callout"]
  DUPTABLE R22 K104 [{"target", "showHighlight"}]
  LOADK R23 K125 ["advRotateAction"]
  SETTABLEKS R23 R22 K73 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K75 ["showHighlight"]
  SETTABLEKS R22 R21 K68 ["spotlight"]
  LOADN R23 180
  LOADN R24 0
  LOADN R25 180
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K13 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K122 ["rotation"]
  LOADN R22 30
  SETTABLEKS R22 R21 K116 ["distance"]
  LOADK R22 K96 ["wedge"]
  SETTABLEKS R22 R21 K62 ["instanceId"]
  DUPCLOSURE R22 K126 [PROTO_11]
  CAPTURE VAL R9
  SETTABLEKS R22 R21 K84 ["onSkip"]
  LOADK R22 K114 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K34 ["widgets"]
  DUPTABLE R22 K128 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R23 K129 ["scale"]
  SETTABLEKS R23 R22 K23 ["id"]
  LOADK R23 K130 ["Scale"]
  SETTABLEKS R23 R22 K31 ["kind"]
  LOADK R23 K98 ["parts"]
  SETTABLEKS R23 R22 K33 ["topic"]
  DUPTABLE R23 K100 [{"target", "offset"}]
  LOADK R24 K131 ["resizeAction"]
  SETTABLEKS R24 R23 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R24 K103 [Vector2.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  JUMP [+5]
  GETIMPORT R24 K103 [Vector2.new]
  LOADN R25 0
  LOADN R26 251
  CALL R24 2 1
  SETTABLEKS R24 R23 K99 ["offset"]
  SETTABLEKS R23 R22 K89 ["callout"]
  DUPTABLE R23 K104 [{"target", "showHighlight"}]
  LOADK R24 K131 ["resizeAction"]
  SETTABLEKS R24 R23 K73 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K75 ["showHighlight"]
  SETTABLEKS R23 R22 K68 ["spotlight"]
  LOADN R24 5
  LOADN R25 3
  LOADN R26 5
  FASTCALL VECTOR [+2]
  GETIMPORT R23 K13 [Vector3.new]
  CALL R23 3 1
  SETTABLEKS R23 R22 K127 ["minSize"]
  LOADK R23 K96 ["wedge"]
  SETTABLEKS R23 R22 K62 ["instanceId"]
  DUPCLOSURE R23 K132 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R23 R22 K84 ["onSkip"]
  LOADK R23 K114 ["Ribbon-Home"]
  SETTABLEKS R23 R22 K34 ["widgets"]
  DUPTABLE R23 K134 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R24 K135 ["color"]
  SETTABLEKS R24 R23 K23 ["id"]
  LOADK R24 K136 ["Edit"]
  SETTABLEKS R24 R23 K31 ["kind"]
  LOADK R24 K91 ["properties"]
  SETTABLEKS R24 R23 K33 ["topic"]
  DUPTABLE R24 K100 [{"target", "offset"}]
  LOADK R25 K137 ["actionColorSelector"]
  SETTABLEKS R25 R24 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R25 K103 [Vector2.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  JUMP [+5]
  GETIMPORT R25 K103 [Vector2.new]
  LOADN R26 0
  LOADN R27 251
  CALL R25 2 1
  SETTABLEKS R25 R24 K99 ["offset"]
  SETTABLEKS R24 R23 K89 ["callout"]
  DUPTABLE R24 K104 [{"target", "showHighlight"}]
  LOADK R25 K137 ["actionColorSelector"]
  SETTABLEKS R25 R24 K73 ["target"]
  LOADB R25 1
  SETTABLEKS R25 R24 K75 ["showHighlight"]
  SETTABLEKS R24 R23 K68 ["spotlight"]
  LOADK R24 K105 ["Part"]
  SETTABLEKS R24 R23 K90 ["className"]
  DUPTABLE R24 K139 [{"Color"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K138 ["Color"]
  SETTABLEKS R24 R23 K133 ["changes"]
  DUPCLOSURE R24 K140 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R24 R23 K84 ["onSkip"]
  LOADK R24 K114 ["Ribbon-Home"]
  SETTABLEKS R24 R23 K34 ["widgets"]
  DUPTABLE R24 K134 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R25 K141 ["anchor"]
  SETTABLEKS R25 R24 K23 ["id"]
  LOADK R25 K136 ["Edit"]
  SETTABLEKS R25 R24 K31 ["kind"]
  LOADK R25 K91 ["properties"]
  SETTABLEKS R25 R24 K33 ["topic"]
  DUPTABLE R25 K100 [{"target", "offset"}]
  LOADK R26 K142 ["anchorAction"]
  SETTABLEKS R26 R25 K73 ["target"]
  JUMPIFNOT R1 [+6]
  GETIMPORT R26 K103 [Vector2.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  JUMP [+5]
  GETIMPORT R26 K103 [Vector2.new]
  LOADN R27 0
  LOADN R28 251
  CALL R26 2 1
  SETTABLEKS R26 R25 K99 ["offset"]
  SETTABLEKS R25 R24 K89 ["callout"]
  DUPTABLE R25 K104 [{"target", "showHighlight"}]
  LOADK R26 K142 ["anchorAction"]
  SETTABLEKS R26 R25 K73 ["target"]
  LOADB R26 1
  SETTABLEKS R26 R25 K75 ["showHighlight"]
  SETTABLEKS R25 R24 K68 ["spotlight"]
  LOADK R25 K105 ["Part"]
  SETTABLEKS R25 R24 K90 ["className"]
  DUPTABLE R25 K144 [{"Anchored"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K143 ["Anchored"]
  SETTABLEKS R25 R24 K133 ["changes"]
  DUPCLOSURE R25 K145 [PROTO_14]
  CAPTURE VAL R9
  SETTABLEKS R25 R24 K84 ["onSkip"]
  LOADK R25 K114 ["Ribbon-Home"]
  SETTABLEKS R25 R24 K34 ["widgets"]
  DUPTABLE R25 K146 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R26 K147 ["explorer"]
  SETTABLEKS R26 R25 K23 ["id"]
  DUPTABLE R26 K151 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R27 K152 ["explorerWidgetPanel"]
  SETTABLEKS R27 R26 K73 ["target"]
  GETIMPORT R27 K103 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["sourceAnchorPoint"]
  GETIMPORT R27 K103 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K149 ["targetAnchorPoint"]
  GETIMPORT R27 K103 [Vector2.new]
  LOADN R28 246
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K99 ["offset"]
  LOADB R27 1
  SETTABLEKS R27 R26 K150 ["hideArrow"]
  SETTABLEKS R26 R25 K89 ["callout"]
  DUPTABLE R26 K77 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R27 K152 ["explorerWidgetPanel"]
  SETTABLEKS R27 R26 K73 ["target"]
  LOADB R27 1
  SETTABLEKS R27 R26 K74 ["showBox"]
  LOADB R27 1
  SETTABLEKS R27 R26 K75 ["showHighlight"]
  LOADB R27 1
  SETTABLEKS R27 R26 K76 ["showShadows"]
  SETTABLEKS R26 R25 K68 ["spotlight"]
  LOADK R26 K147 ["explorer"]
  SETTABLEKS R26 R25 K33 ["topic"]
  LOADB R26 1
  SETTABLEKS R26 R25 K67 ["showNext"]
  LOADK R26 K153 ["Ribbon-Home,Explorer"]
  SETTABLEKS R26 R25 K34 ["widgets"]
  DUPTABLE R26 K155 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R27 K156 ["workspace"]
  SETTABLEKS R27 R26 K23 ["id"]
  LOADK R27 K6 ["Workspace"]
  SETTABLEKS R27 R26 K154 ["path"]
  LOADK R27 K147 ["explorer"]
  SETTABLEKS R27 R26 K33 ["topic"]
  DUPTABLE R27 K158 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R28 K152 ["explorerWidgetPanel"]
  SETTABLEKS R28 R27 K73 ["target"]
  LOADK R28 K6 ["Workspace"]
  SETTABLEKS R28 R27 K157 ["rowName"]
  GETIMPORT R28 K103 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K148 ["sourceAnchorPoint"]
  GETIMPORT R28 K103 [Vector2.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K149 ["targetAnchorPoint"]
  GETIMPORT R28 K103 [Vector2.new]
  LOADN R29 246
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K99 ["offset"]
  LOADB R28 1
  SETTABLEKS R28 R27 K150 ["hideArrow"]
  SETTABLEKS R27 R26 K89 ["callout"]
  DUPTABLE R27 K159 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R28 K152 ["explorerWidgetPanel"]
  SETTABLEKS R28 R27 K73 ["target"]
  LOADK R28 K6 ["Workspace"]
  SETTABLEKS R28 R27 K157 ["rowName"]
  LOADB R28 1
  SETTABLEKS R28 R27 K74 ["showBox"]
  LOADB R28 1
  SETTABLEKS R28 R27 K75 ["showHighlight"]
  LOADB R28 1
  SETTABLEKS R28 R27 K76 ["showShadows"]
  SETTABLEKS R27 R26 K68 ["spotlight"]
  LOADB R27 1
  SETTABLEKS R27 R26 K67 ["showNext"]
  DUPCLOSURE R27 K160 [PROTO_15]
  SETTABLEKS R27 R26 K92 ["onBind"]
  LOADK R27 K153 ["Ribbon-Home,Explorer"]
  SETTABLEKS R27 R26 K34 ["widgets"]
  DUPTABLE R27 K161 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R28 K162 ["select"]
  SETTABLEKS R28 R27 K23 ["id"]
  LOADK R28 K163 ["Select"]
  SETTABLEKS R28 R27 K31 ["kind"]
  LOADK R28 K164 ["Car"]
  SETTABLEKS R28 R27 K154 ["path"]
  LOADK R28 K165 ["selection"]
  SETTABLEKS R28 R27 K33 ["topic"]
  DUPTABLE R28 K151 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R29 K152 ["explorerWidgetPanel"]
  SETTABLEKS R29 R28 K73 ["target"]
  GETIMPORT R29 K103 [Vector2.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K148 ["sourceAnchorPoint"]
  GETIMPORT R29 K103 [Vector2.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K149 ["targetAnchorPoint"]
  GETIMPORT R29 K103 [Vector2.new]
  LOADN R30 246
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K99 ["offset"]
  LOADB R29 1
  SETTABLEKS R29 R28 K150 ["hideArrow"]
  SETTABLEKS R28 R27 K89 ["callout"]
  DUPCLOSURE R28 K166 [PROTO_16]
  CAPTURE VAL R8
  SETTABLEKS R28 R27 K84 ["onSkip"]
  LOADK R28 K153 ["Ribbon-Home,Explorer"]
  SETTABLEKS R28 R27 K34 ["widgets"]
  SETLIST R11 R12 16 [1]
  DUPTABLE R12 K167 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R13 K168 ["focus"]
  SETTABLEKS R13 R12 K23 ["id"]
  LOADK R13 K165 ["selection"]
  SETTABLEKS R13 R12 K33 ["topic"]
  LOADK R13 K169 ["Focus"]
  SETTABLEKS R13 R12 K31 ["kind"]
  DUPCLOSURE R13 K170 [PROTO_17]
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K84 ["onSkip"]
  LOADK R13 K153 ["Ribbon-Home,Explorer"]
  SETTABLEKS R13 R12 K34 ["widgets"]
  DUPTABLE R13 K171 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R14 K91 ["properties"]
  SETTABLEKS R14 R13 K23 ["id"]
  LOADK R14 K172 ["attributes"]
  SETTABLEKS R14 R13 K33 ["topic"]
  DUPTABLE R14 K151 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R15 K173 ["propertiesWidgetPanel"]
  SETTABLEKS R15 R14 K73 ["target"]
  GETIMPORT R15 K103 [Vector2.new]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K148 ["sourceAnchorPoint"]
  GETIMPORT R15 K103 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K149 ["targetAnchorPoint"]
  GETIMPORT R15 K103 [Vector2.new]
  LOADN R16 246
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K99 ["offset"]
  LOADB R15 1
  SETTABLEKS R15 R14 K150 ["hideArrow"]
  SETTABLEKS R14 R13 K89 ["callout"]
  DUPTABLE R14 K77 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R15 K173 ["propertiesWidgetPanel"]
  SETTABLEKS R15 R14 K73 ["target"]
  LOADB R15 1
  SETTABLEKS R15 R14 K74 ["showBox"]
  LOADB R15 1
  SETTABLEKS R15 R14 K75 ["showHighlight"]
  LOADB R15 1
  SETTABLEKS R15 R14 K76 ["showShadows"]
  SETTABLEKS R14 R13 K68 ["spotlight"]
  LOADB R14 1
  SETTABLEKS R14 R13 K67 ["showNext"]
  LOADK R14 K174 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R14 R13 K34 ["widgets"]
  DUPTABLE R14 K175 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R15 K176 ["maxSpeed"]
  SETTABLEKS R15 R14 K23 ["id"]
  LOADK R15 K172 ["attributes"]
  SETTABLEKS R15 R14 K33 ["topic"]
  LOADK R15 K136 ["Edit"]
  SETTABLEKS R15 R14 K31 ["kind"]
  DUPTABLE R15 K151 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R16 K173 ["propertiesWidgetPanel"]
  SETTABLEKS R16 R15 K73 ["target"]
  GETIMPORT R16 K103 [Vector2.new]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K148 ["sourceAnchorPoint"]
  GETIMPORT R16 K103 [Vector2.new]
  LOADN R17 0
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K149 ["targetAnchorPoint"]
  GETIMPORT R16 K103 [Vector2.new]
  LOADN R17 246
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K99 ["offset"]
  LOADB R16 1
  SETTABLEKS R16 R15 K150 ["hideArrow"]
  SETTABLEKS R15 R14 K89 ["callout"]
  LOADK R15 K177 ["Model"]
  SETTABLEKS R15 R14 K90 ["className"]
  DUPTABLE R15 K179 [{"Attributes"}]
  DUPTABLE R16 K181 [{"MaxSpeed"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K180 ["MaxSpeed"]
  SETTABLEKS R16 R15 K178 ["Attributes"]
  SETTABLEKS R15 R14 K133 ["changes"]
  DUPCLOSURE R15 K182 [PROTO_18]
  CAPTURE VAL R8
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K84 ["onSkip"]
  LOADK R15 K174 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R15 R14 K34 ["widgets"]
  DUPTABLE R15 K183 [{"id", "topic", "kind", "widgets", "spotlight"}]
  LOADK R16 K184 ["playtest"]
  SETTABLEKS R16 R15 K23 ["id"]
  LOADK R16 K184 ["playtest"]
  SETTABLEKS R16 R15 K33 ["topic"]
  LOADK R16 K185 ["StartPlaytest"]
  SETTABLEKS R16 R15 K31 ["kind"]
  LOADK R16 K174 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R16 R15 K34 ["widgets"]
  JUMPIFNOT R1 [+8]
  DUPTABLE R16 K104 [{"target", "showHighlight"}]
  LOADK R17 K186 ["playGameActionGroupRibbonControl"]
  SETTABLEKS R17 R16 K73 ["target"]
  LOADB R17 1
  SETTABLEKS R17 R16 K75 ["showHighlight"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K68 ["spotlight"]
  DUPTABLE R16 K188 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R17 K189 ["avatar"]
  SETTABLEKS R17 R16 K23 ["id"]
  LOADK R17 K184 ["playtest"]
  SETTABLEKS R17 R16 K33 ["topic"]
  LOADK R17 K190 ["Avatar"]
  SETTABLEKS R17 R16 K31 ["kind"]
  GETIMPORT R17 K193 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R17 R16 K187 ["state"]
  LOADK R17 K174 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R17 R16 K34 ["widgets"]
  DUPTABLE R17 K194 [{"id", "topic", "kind", "widgets"}]
  LOADK R28 K195 ["stopPlaytest"]
  SETTABLEKS R28 R17 K23 ["id"]
  LOADK R28 K184 ["playtest"]
  SETTABLEKS R28 R17 K33 ["topic"]
  LOADK R28 K196 ["StopPlaytest"]
  SETTABLEKS R28 R17 K31 ["kind"]
  LOADK R28 K174 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R28 R17 K34 ["widgets"]
  SETLIST R11 R12 6 [17]
  SETTABLEKS R11 R10 K26 ["steps"]
  RETURN R10 1
