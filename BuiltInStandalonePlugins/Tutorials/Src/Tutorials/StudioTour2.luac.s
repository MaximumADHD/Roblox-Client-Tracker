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
  SETLIST R5 R6 4294967295 [1]
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
  LOADN R5 250
  NAMECALL R2 R1 K1 ["SetAttribute"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R2 K4 [362.373]
  LOADK R3 K5 [4.115]
  LOADK R4 K6 [247.495]
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K9 [Vector3.new]
  CALL R1 3 1
  DUPTABLE R2 K13 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  NEWTABLE R3 0 1
  LOADK R4 K14 [14215126016]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K10 ["assetIds"]
  SETTABLEKS R1 R2 K11 ["positionOverride"]
  LOADB R3 1
  SETTABLEKS R3 R2 K12 ["scriptWarningOverride"]
  LOADN R4 104
  LOADK R5 K15 [1.5]
  LOADN R6 216
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K9 [Vector3.new]
  CALL R3 3 1
  LOADN R5 108
  LOADK R6 K16 [3.6]
  LOADN R7 216
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K9 [Vector3.new]
  CALL R4 3 1
  LOADN R6 87
  LOADK R7 K15 [1.5]
  LOADN R8 250
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K9 [Vector3.new]
  CALL R5 3 1
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R1
  DUPCLOSURE R7 K18 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R3
  DUPTABLE R8 K23 [{"id", "onStart", "onComplete", "steps"}]
  LOADK R9 K24 ["StudioTour2"]
  SETTABLEKS R9 R8 K19 ["id"]
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K20 ["onStart"]
  DUPCLOSURE R9 K26 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K21 ["onComplete"]
  NEWTABLE R9 0 22
  DUPTABLE R10 K31 [{"id", "kind", "keys", "topic", "widgets"}]
  LOADK R11 K32 ["moveCamera"]
  SETTABLEKS R11 R10 K19 ["id"]
  LOADK R11 K33 ["Input"]
  SETTABLEKS R11 R10 K27 ["kind"]
  NEWTABLE R11 0 4
  GETIMPORT R12 K37 [Enum.KeyCode.W]
  GETIMPORT R13 K39 [Enum.KeyCode.A]
  GETIMPORT R14 K41 [Enum.KeyCode.S]
  GETIMPORT R15 K43 [Enum.KeyCode.D]
  SETLIST R11 R12 4 [1]
  SETTABLEKS R11 R10 K28 ["keys"]
  LOADK R11 K44 ["navigation"]
  SETTABLEKS R11 R10 K29 ["topic"]
  LOADK R11 K45 [""]
  SETTABLEKS R11 R10 K30 ["widgets"]
  DUPTABLE R11 K46 [{"id", "kind", "keys", "topic"}]
  LOADK R12 K47 ["panCamera"]
  SETTABLEKS R12 R11 K19 ["id"]
  LOADK R12 K33 ["Input"]
  SETTABLEKS R12 R11 K27 ["kind"]
  NEWTABLE R12 0 2
  GETIMPORT R13 K49 [Enum.KeyCode.E]
  GETIMPORT R14 K51 [Enum.KeyCode.Q]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K28 ["keys"]
  LOADK R12 K44 ["navigation"]
  SETTABLEKS R12 R11 K29 ["topic"]
  DUPTABLE R12 K53 [{"id", "kind", "inputs", "topic"}]
  LOADK R13 K54 ["zoomCamera"]
  SETTABLEKS R13 R12 K19 ["id"]
  LOADK R13 K33 ["Input"]
  SETTABLEKS R13 R12 K27 ["kind"]
  NEWTABLE R13 0 1
  GETIMPORT R14 K57 [Enum.UserInputType.MouseWheel]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K52 ["inputs"]
  LOADK R13 K44 ["navigation"]
  SETTABLEKS R13 R12 K29 ["topic"]
  DUPTABLE R13 K59 [{"id", "kind", "topic", "instanceId"}]
  LOADK R14 K60 ["rotateCamera"]
  SETTABLEKS R14 R13 K19 ["id"]
  LOADK R14 K61 ["Rotate"]
  SETTABLEKS R14 R13 K27 ["kind"]
  LOADK R14 K44 ["navigation"]
  SETTABLEKS R14 R13 K29 ["topic"]
  LOADK R14 K62 ["camera"]
  SETTABLEKS R14 R13 K58 ["instanceId"]
  DUPTABLE R14 K66 [{"id", "topic", "widgets", "showNext", "spotlight", "toolboxLimits"}]
  LOADK R15 K67 ["marketplace"]
  SETTABLEKS R15 R14 K19 ["id"]
  LOADK R15 K67 ["marketplace"]
  SETTABLEKS R15 R14 K29 ["topic"]
  LOADK R15 K68 ["Toolbox"]
  SETTABLEKS R15 R14 K30 ["widgets"]
  LOADB R15 1
  SETTABLEKS R15 R14 K63 ["showNext"]
  DUPTABLE R15 K73 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R16 K74 ["edit_builtin_Toolbox.rbxm_Toolbox"]
  SETTABLEKS R16 R15 K69 ["target"]
  LOADB R16 1
  SETTABLEKS R16 R15 K70 ["showBox"]
  LOADB R16 1
  SETTABLEKS R16 R15 K71 ["showHighlight"]
  LOADB R16 1
  SETTABLEKS R16 R15 K72 ["showShadows"]
  SETTABLEKS R15 R14 K64 ["spotlight"]
  SETTABLEKS R2 R14 K65 ["toolboxLimits"]
  DUPTABLE R15 K76 [{"id", "kind", "search", "toolboxLimits", "topic", "widgets"}]
  LOADK R16 K77 ["searchMarketplace"]
  SETTABLEKS R16 R15 K19 ["id"]
  LOADK R16 K78 ["ToolboxSearch"]
  SETTABLEKS R16 R15 K27 ["kind"]
  LOADK R16 K79 ["car"]
  SETTABLEKS R16 R15 K75 ["search"]
  SETTABLEKS R2 R15 K65 ["toolboxLimits"]
  LOADK R16 K67 ["marketplace"]
  SETTABLEKS R16 R15 K29 ["topic"]
  LOADK R16 K68 ["Toolbox"]
  SETTABLEKS R16 R15 K30 ["widgets"]
  DUPTABLE R16 K81 [{"id", "kind", "toolboxLimits", "topic", "onSkip", "widgets"}]
  LOADK R17 K82 ["insertMarketplace"]
  SETTABLEKS R17 R16 K19 ["id"]
  LOADK R17 K83 ["ToolboxInsert"]
  SETTABLEKS R17 R16 K27 ["kind"]
  SETTABLEKS R2 R16 K65 ["toolboxLimits"]
  LOADK R17 K67 ["marketplace"]
  SETTABLEKS R17 R16 K29 ["topic"]
  DUPCLOSURE R17 K84 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R17 R16 K80 ["onSkip"]
  LOADK R17 K68 ["Toolbox"]
  SETTABLEKS R17 R16 K30 ["widgets"]
  DUPTABLE R17 K91 [{"id", "kind", "topic", "callout", "spotlight", "instanceId", "className", "properties", "onBind", "onSkip", "onUnbind", "hideWidgets", "widgets"}]
  LOADK R18 K92 ["wedge"]
  SETTABLEKS R18 R17 K19 ["id"]
  LOADK R18 K93 ["Insert"]
  SETTABLEKS R18 R17 K27 ["kind"]
  LOADK R18 K94 ["parts"]
  SETTABLEKS R18 R17 K29 ["topic"]
  DUPTABLE R18 K96 [{"target", "offset"}]
  LOADK R19 K93 ["Insert"]
  SETTABLEKS R19 R18 K69 ["target"]
  GETIMPORT R19 K98 [Vector2.new]
  LOADN R20 5
  LOADN R21 236
  CALL R19 2 1
  SETTABLEKS R19 R18 K95 ["offset"]
  SETTABLEKS R18 R17 K85 ["callout"]
  DUPTABLE R18 K99 [{"target", "showHighlight"}]
  LOADK R19 K93 ["Insert"]
  SETTABLEKS R19 R18 K69 ["target"]
  LOADB R19 1
  SETTABLEKS R19 R18 K71 ["showHighlight"]
  SETTABLEKS R18 R17 K64 ["spotlight"]
  LOADK R18 K92 ["wedge"]
  SETTABLEKS R18 R17 K58 ["instanceId"]
  LOADK R18 K100 ["Part"]
  SETTABLEKS R18 R17 K86 ["className"]
  DUPTABLE R18 K102 [{"Shape"}]
  GETIMPORT R19 K105 [Enum.PartType.Wedge]
  SETTABLEKS R19 R18 K101 ["Shape"]
  SETTABLEKS R18 R17 K87 ["properties"]
  DUPCLOSURE R18 K106 [PROTO_6]
  SETTABLEKS R18 R17 K88 ["onBind"]
  DUPCLOSURE R18 K107 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R18 R17 K80 ["onSkip"]
  DUPCLOSURE R18 K108 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R18 R17 K89 ["onUnbind"]
  LOADK R18 K68 ["Toolbox"]
  SETTABLEKS R18 R17 K90 ["hideWidgets"]
  LOADK R18 K109 ["Ribbon-Home"]
  SETTABLEKS R18 R17 K30 ["widgets"]
  DUPTABLE R18 K112 [{"id", "kind", "topic", "callout", "spotlight", "position", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R19 K113 ["move"]
  SETTABLEKS R19 R18 K19 ["id"]
  LOADK R19 K114 ["Move"]
  SETTABLEKS R19 R18 K27 ["kind"]
  LOADK R19 K94 ["parts"]
  SETTABLEKS R19 R18 K29 ["topic"]
  DUPTABLE R19 K96 [{"target", "offset"}]
  LOADK R20 K115 ["advTranslateAction"]
  SETTABLEKS R20 R19 K69 ["target"]
  GETIMPORT R20 K98 [Vector2.new]
  LOADN R21 0
  LOADN R22 251
  CALL R20 2 1
  SETTABLEKS R20 R19 K95 ["offset"]
  SETTABLEKS R19 R18 K85 ["callout"]
  DUPTABLE R19 K99 [{"target", "showHighlight"}]
  LOADK R20 K115 ["advTranslateAction"]
  SETTABLEKS R20 R19 K69 ["target"]
  LOADB R20 1
  SETTABLEKS R20 R19 K71 ["showHighlight"]
  SETTABLEKS R19 R18 K64 ["spotlight"]
  LOADN R20 104
  LOADN R21 1
  LOADN R22 200
  FASTCALL VECTOR [+2]
  GETIMPORT R19 K9 [Vector3.new]
  CALL R19 3 1
  SETTABLEKS R19 R18 K110 ["position"]
  LOADN R19 20
  SETTABLEKS R19 R18 K111 ["distance"]
  LOADK R19 K92 ["wedge"]
  SETTABLEKS R19 R18 K58 ["instanceId"]
  DUPCLOSURE R19 K116 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R19 R18 K80 ["onSkip"]
  LOADK R19 K109 ["Ribbon-Home"]
  SETTABLEKS R19 R18 K30 ["widgets"]
  DUPTABLE R19 K118 [{"id", "kind", "topic", "callout", "spotlight", "rotation", "distance", "instanceId", "onSkip", "widgets"}]
  LOADK R20 K119 ["rotate"]
  SETTABLEKS R20 R19 K19 ["id"]
  LOADK R20 K61 ["Rotate"]
  SETTABLEKS R20 R19 K27 ["kind"]
  LOADK R20 K94 ["parts"]
  SETTABLEKS R20 R19 K29 ["topic"]
  DUPTABLE R20 K96 [{"target", "offset"}]
  LOADK R21 K120 ["advRotateAction"]
  SETTABLEKS R21 R20 K69 ["target"]
  GETIMPORT R21 K98 [Vector2.new]
  LOADN R22 0
  LOADN R23 251
  CALL R21 2 1
  SETTABLEKS R21 R20 K95 ["offset"]
  SETTABLEKS R20 R19 K85 ["callout"]
  DUPTABLE R20 K99 [{"target", "showHighlight"}]
  LOADK R21 K120 ["advRotateAction"]
  SETTABLEKS R21 R20 K69 ["target"]
  LOADB R21 1
  SETTABLEKS R21 R20 K71 ["showHighlight"]
  SETTABLEKS R20 R19 K64 ["spotlight"]
  LOADN R21 180
  LOADN R22 0
  LOADN R23 180
  FASTCALL VECTOR [+2]
  GETIMPORT R20 K9 [Vector3.new]
  CALL R20 3 1
  SETTABLEKS R20 R19 K117 ["rotation"]
  LOADN R20 30
  SETTABLEKS R20 R19 K111 ["distance"]
  LOADK R20 K92 ["wedge"]
  SETTABLEKS R20 R19 K58 ["instanceId"]
  DUPCLOSURE R20 K121 [PROTO_11]
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K80 ["onSkip"]
  LOADK R20 K109 ["Ribbon-Home"]
  SETTABLEKS R20 R19 K30 ["widgets"]
  DUPTABLE R20 K123 [{"id", "kind", "topic", "callout", "spotlight", "minSize", "instanceId", "onSkip", "widgets"}]
  LOADK R21 K124 ["scale"]
  SETTABLEKS R21 R20 K19 ["id"]
  LOADK R21 K125 ["Scale"]
  SETTABLEKS R21 R20 K27 ["kind"]
  LOADK R21 K94 ["parts"]
  SETTABLEKS R21 R20 K29 ["topic"]
  DUPTABLE R21 K96 [{"target", "offset"}]
  LOADK R22 K126 ["resizeAction"]
  SETTABLEKS R22 R21 K69 ["target"]
  GETIMPORT R22 K98 [Vector2.new]
  LOADN R23 0
  LOADN R24 251
  CALL R22 2 1
  SETTABLEKS R22 R21 K95 ["offset"]
  SETTABLEKS R21 R20 K85 ["callout"]
  DUPTABLE R21 K99 [{"target", "showHighlight"}]
  LOADK R22 K126 ["resizeAction"]
  SETTABLEKS R22 R21 K69 ["target"]
  LOADB R22 1
  SETTABLEKS R22 R21 K71 ["showHighlight"]
  SETTABLEKS R21 R20 K64 ["spotlight"]
  LOADN R22 5
  LOADN R23 3
  LOADN R24 5
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K9 [Vector3.new]
  CALL R21 3 1
  SETTABLEKS R21 R20 K122 ["minSize"]
  LOADK R21 K92 ["wedge"]
  SETTABLEKS R21 R20 K58 ["instanceId"]
  DUPCLOSURE R21 K127 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R21 R20 K80 ["onSkip"]
  LOADK R21 K109 ["Ribbon-Home"]
  SETTABLEKS R21 R20 K30 ["widgets"]
  DUPTABLE R21 K129 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R22 K130 ["color"]
  SETTABLEKS R22 R21 K19 ["id"]
  LOADK R22 K131 ["Edit"]
  SETTABLEKS R22 R21 K27 ["kind"]
  LOADK R22 K87 ["properties"]
  SETTABLEKS R22 R21 K29 ["topic"]
  DUPTABLE R22 K96 [{"target", "offset"}]
  LOADK R23 K132 ["actionColorSelector"]
  SETTABLEKS R23 R22 K69 ["target"]
  GETIMPORT R23 K98 [Vector2.new]
  LOADN R24 0
  LOADN R25 251
  CALL R23 2 1
  SETTABLEKS R23 R22 K95 ["offset"]
  SETTABLEKS R22 R21 K85 ["callout"]
  DUPTABLE R22 K99 [{"target", "showHighlight"}]
  LOADK R23 K132 ["actionColorSelector"]
  SETTABLEKS R23 R22 K69 ["target"]
  LOADB R23 1
  SETTABLEKS R23 R22 K71 ["showHighlight"]
  SETTABLEKS R22 R21 K64 ["spotlight"]
  LOADK R22 K100 ["Part"]
  SETTABLEKS R22 R21 K86 ["className"]
  DUPTABLE R22 K134 [{"Color"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K133 ["Color"]
  SETTABLEKS R22 R21 K128 ["changes"]
  DUPCLOSURE R22 K135 [PROTO_13]
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K80 ["onSkip"]
  LOADK R22 K109 ["Ribbon-Home"]
  SETTABLEKS R22 R21 K30 ["widgets"]
  DUPTABLE R22 K129 [{"id", "kind", "topic", "callout", "spotlight", "className", "changes", "onSkip", "widgets"}]
  LOADK R23 K136 ["anchor"]
  SETTABLEKS R23 R22 K19 ["id"]
  LOADK R23 K131 ["Edit"]
  SETTABLEKS R23 R22 K27 ["kind"]
  LOADK R23 K87 ["properties"]
  SETTABLEKS R23 R22 K29 ["topic"]
  DUPTABLE R23 K96 [{"target", "offset"}]
  LOADK R24 K137 ["anchorAction"]
  SETTABLEKS R24 R23 K69 ["target"]
  GETIMPORT R24 K98 [Vector2.new]
  LOADN R25 0
  LOADN R26 251
  CALL R24 2 1
  SETTABLEKS R24 R23 K95 ["offset"]
  SETTABLEKS R23 R22 K85 ["callout"]
  DUPTABLE R23 K99 [{"target", "showHighlight"}]
  LOADK R24 K137 ["anchorAction"]
  SETTABLEKS R24 R23 K69 ["target"]
  LOADB R24 1
  SETTABLEKS R24 R23 K71 ["showHighlight"]
  SETTABLEKS R23 R22 K64 ["spotlight"]
  LOADK R23 K100 ["Part"]
  SETTABLEKS R23 R22 K86 ["className"]
  DUPTABLE R23 K139 [{"Anchored"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K138 ["Anchored"]
  SETTABLEKS R23 R22 K128 ["changes"]
  DUPCLOSURE R23 K140 [PROTO_14]
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K80 ["onSkip"]
  LOADK R23 K109 ["Ribbon-Home"]
  SETTABLEKS R23 R22 K30 ["widgets"]
  DUPTABLE R23 K141 [{"id", "callout", "spotlight", "topic", "showNext", "widgets"}]
  LOADK R24 K142 ["explorer"]
  SETTABLEKS R24 R23 K19 ["id"]
  DUPTABLE R24 K146 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R25 K147 ["explorerWidgetPanel"]
  SETTABLEKS R25 R24 K69 ["target"]
  GETIMPORT R25 K98 [Vector2.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K143 ["sourceAnchorPoint"]
  GETIMPORT R25 K98 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K144 ["targetAnchorPoint"]
  GETIMPORT R25 K98 [Vector2.new]
  LOADN R26 246
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K95 ["offset"]
  LOADB R25 1
  SETTABLEKS R25 R24 K145 ["hideArrow"]
  SETTABLEKS R24 R23 K85 ["callout"]
  DUPTABLE R24 K73 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R25 K147 ["explorerWidgetPanel"]
  SETTABLEKS R25 R24 K69 ["target"]
  LOADB R25 1
  SETTABLEKS R25 R24 K70 ["showBox"]
  LOADB R25 1
  SETTABLEKS R25 R24 K71 ["showHighlight"]
  LOADB R25 1
  SETTABLEKS R25 R24 K72 ["showShadows"]
  SETTABLEKS R24 R23 K64 ["spotlight"]
  LOADK R24 K142 ["explorer"]
  SETTABLEKS R24 R23 K29 ["topic"]
  LOADB R24 1
  SETTABLEKS R24 R23 K63 ["showNext"]
  LOADK R24 K148 ["Ribbon-Home,Explorer"]
  SETTABLEKS R24 R23 K30 ["widgets"]
  DUPTABLE R24 K150 [{"id", "path", "topic", "callout", "spotlight", "showNext", "onBind", "widgets"}]
  LOADK R25 K151 ["workspace"]
  SETTABLEKS R25 R24 K19 ["id"]
  LOADK R25 K2 ["Workspace"]
  SETTABLEKS R25 R24 K149 ["path"]
  LOADK R25 K142 ["explorer"]
  SETTABLEKS R25 R24 K29 ["topic"]
  DUPTABLE R25 K153 [{"target", "rowName", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R26 K147 ["explorerWidgetPanel"]
  SETTABLEKS R26 R25 K69 ["target"]
  LOADK R26 K2 ["Workspace"]
  SETTABLEKS R26 R25 K152 ["rowName"]
  GETIMPORT R26 K98 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K143 ["sourceAnchorPoint"]
  GETIMPORT R26 K98 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K144 ["targetAnchorPoint"]
  GETIMPORT R26 K98 [Vector2.new]
  LOADN R27 246
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K95 ["offset"]
  LOADB R26 1
  SETTABLEKS R26 R25 K145 ["hideArrow"]
  SETTABLEKS R25 R24 K85 ["callout"]
  DUPTABLE R25 K154 [{"target", "rowName", "showBox", "showHighlight", "showShadows"}]
  LOADK R26 K147 ["explorerWidgetPanel"]
  SETTABLEKS R26 R25 K69 ["target"]
  LOADK R26 K2 ["Workspace"]
  SETTABLEKS R26 R25 K152 ["rowName"]
  LOADB R26 1
  SETTABLEKS R26 R25 K70 ["showBox"]
  LOADB R26 1
  SETTABLEKS R26 R25 K71 ["showHighlight"]
  LOADB R26 1
  SETTABLEKS R26 R25 K72 ["showShadows"]
  SETTABLEKS R25 R24 K64 ["spotlight"]
  LOADB R25 1
  SETTABLEKS R25 R24 K63 ["showNext"]
  DUPCLOSURE R25 K155 [PROTO_15]
  SETTABLEKS R25 R24 K88 ["onBind"]
  LOADK R25 K148 ["Ribbon-Home,Explorer"]
  SETTABLEKS R25 R24 K30 ["widgets"]
  DUPTABLE R25 K156 [{"id", "kind", "path", "topic", "callout", "onSkip", "widgets"}]
  LOADK R26 K157 ["select"]
  SETTABLEKS R26 R25 K19 ["id"]
  LOADK R26 K158 ["Select"]
  SETTABLEKS R26 R25 K27 ["kind"]
  LOADK R26 K159 ["Car"]
  SETTABLEKS R26 R25 K149 ["path"]
  LOADK R26 K160 ["selection"]
  SETTABLEKS R26 R25 K29 ["topic"]
  DUPTABLE R26 K146 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R27 K147 ["explorerWidgetPanel"]
  SETTABLEKS R27 R26 K69 ["target"]
  GETIMPORT R27 K98 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K143 ["sourceAnchorPoint"]
  GETIMPORT R27 K98 [Vector2.new]
  LOADN R28 0
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K144 ["targetAnchorPoint"]
  GETIMPORT R27 K98 [Vector2.new]
  LOADN R28 246
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K95 ["offset"]
  LOADB R27 1
  SETTABLEKS R27 R26 K145 ["hideArrow"]
  SETTABLEKS R26 R25 K85 ["callout"]
  DUPCLOSURE R26 K161 [PROTO_16]
  CAPTURE VAL R6
  SETTABLEKS R26 R25 K80 ["onSkip"]
  LOADK R26 K148 ["Ribbon-Home,Explorer"]
  SETTABLEKS R26 R25 K30 ["widgets"]
  SETLIST R9 R10 16 [1]
  DUPTABLE R10 K162 [{"id", "topic", "kind", "onSkip", "widgets"}]
  LOADK R11 K163 ["focus"]
  SETTABLEKS R11 R10 K19 ["id"]
  LOADK R11 K160 ["selection"]
  SETTABLEKS R11 R10 K29 ["topic"]
  LOADK R11 K164 ["Focus"]
  SETTABLEKS R11 R10 K27 ["kind"]
  DUPCLOSURE R11 K165 [PROTO_17]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K80 ["onSkip"]
  LOADK R11 K148 ["Ribbon-Home,Explorer"]
  SETTABLEKS R11 R10 K30 ["widgets"]
  DUPTABLE R11 K166 [{"id", "topic", "callout", "spotlight", "showNext", "widgets"}]
  LOADK R12 K87 ["properties"]
  SETTABLEKS R12 R11 K19 ["id"]
  LOADK R12 K167 ["attributes"]
  SETTABLEKS R12 R11 K29 ["topic"]
  DUPTABLE R12 K146 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R13 K168 ["propertiesWidgetPanel"]
  SETTABLEKS R13 R12 K69 ["target"]
  GETIMPORT R13 K98 [Vector2.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K143 ["sourceAnchorPoint"]
  GETIMPORT R13 K98 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K144 ["targetAnchorPoint"]
  GETIMPORT R13 K98 [Vector2.new]
  LOADN R14 246
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K95 ["offset"]
  LOADB R13 1
  SETTABLEKS R13 R12 K145 ["hideArrow"]
  SETTABLEKS R12 R11 K85 ["callout"]
  DUPTABLE R12 K73 [{"target", "showBox", "showHighlight", "showShadows"}]
  LOADK R13 K168 ["propertiesWidgetPanel"]
  SETTABLEKS R13 R12 K69 ["target"]
  LOADB R13 1
  SETTABLEKS R13 R12 K70 ["showBox"]
  LOADB R13 1
  SETTABLEKS R13 R12 K71 ["showHighlight"]
  LOADB R13 1
  SETTABLEKS R13 R12 K72 ["showShadows"]
  SETTABLEKS R12 R11 K64 ["spotlight"]
  LOADB R12 1
  SETTABLEKS R12 R11 K63 ["showNext"]
  LOADK R12 K169 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R12 R11 K30 ["widgets"]
  DUPTABLE R12 K170 [{"id", "topic", "kind", "callout", "className", "changes", "onSkip", "widgets"}]
  LOADK R13 K171 ["maxSpeed"]
  SETTABLEKS R13 R12 K19 ["id"]
  LOADK R13 K167 ["attributes"]
  SETTABLEKS R13 R12 K29 ["topic"]
  LOADK R13 K131 ["Edit"]
  SETTABLEKS R13 R12 K27 ["kind"]
  DUPTABLE R13 K146 [{"target", "sourceAnchorPoint", "targetAnchorPoint", "offset", "hideArrow"}]
  LOADK R14 K168 ["propertiesWidgetPanel"]
  SETTABLEKS R14 R13 K69 ["target"]
  GETIMPORT R14 K98 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K143 ["sourceAnchorPoint"]
  GETIMPORT R14 K98 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K144 ["targetAnchorPoint"]
  GETIMPORT R14 K98 [Vector2.new]
  LOADN R15 246
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K95 ["offset"]
  LOADB R14 1
  SETTABLEKS R14 R13 K145 ["hideArrow"]
  SETTABLEKS R13 R12 K85 ["callout"]
  LOADK R13 K172 ["Model"]
  SETTABLEKS R13 R12 K86 ["className"]
  DUPTABLE R13 K174 [{"Attributes"}]
  DUPTABLE R14 K176 [{"MaxSpeed"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K175 ["MaxSpeed"]
  SETTABLEKS R14 R13 K173 ["Attributes"]
  SETTABLEKS R13 R12 K128 ["changes"]
  DUPCLOSURE R13 K177 [PROTO_18]
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K80 ["onSkip"]
  LOADK R13 K169 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R13 R12 K30 ["widgets"]
  DUPTABLE R13 K178 [{"id", "topic", "kind", "widgets"}]
  LOADK R14 K179 ["playtest"]
  SETTABLEKS R14 R13 K19 ["id"]
  LOADK R14 K179 ["playtest"]
  SETTABLEKS R14 R13 K29 ["topic"]
  LOADK R14 K180 ["StartPlaytest"]
  SETTABLEKS R14 R13 K27 ["kind"]
  LOADK R14 K169 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R14 R13 K30 ["widgets"]
  DUPTABLE R14 K182 [{"id", "topic", "kind", "state", "widgets"}]
  LOADK R15 K183 ["avatar"]
  SETTABLEKS R15 R14 K19 ["id"]
  LOADK R15 K179 ["playtest"]
  SETTABLEKS R15 R14 K29 ["topic"]
  LOADK R15 K184 ["Avatar"]
  SETTABLEKS R15 R14 K27 ["kind"]
  GETIMPORT R15 K187 [Enum.HumanoidStateType.Seated]
  SETTABLEKS R15 R14 K181 ["state"]
  LOADK R15 K169 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R15 R14 K30 ["widgets"]
  DUPTABLE R15 K178 [{"id", "topic", "kind", "widgets"}]
  LOADK R26 K188 ["stopPlaytest"]
  SETTABLEKS R26 R15 K19 ["id"]
  LOADK R26 K179 ["playtest"]
  SETTABLEKS R26 R15 K29 ["topic"]
  LOADK R26 K189 ["StopPlaytest"]
  SETTABLEKS R26 R15 K27 ["kind"]
  LOADK R26 K169 ["Ribbon-Home,Explorer,Properties"]
  SETTABLEKS R26 R15 K30 ["widgets"]
  SETLIST R9 R10 6 [17]
  SETTABLEKS R9 R8 K22 ["steps"]
  RETURN R8 1
