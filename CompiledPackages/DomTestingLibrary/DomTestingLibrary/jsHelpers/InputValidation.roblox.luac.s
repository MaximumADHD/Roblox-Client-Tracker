PROTO_0:
  LOADK R3 K0 ["GuiObject"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 1
  GETIMPORT R1 K3 [error]
  LOADK R2 K4 ["expected instance to be a GuiObject, but got `%s`"]
  GETTABLEKS R4 R0 K5 ["ClassName"]
  NAMECALL R2 R2 K6 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["AbsolutePosition"]
  GETTABLEKS R2 R0 K1 ["AbsoluteSize"]
  GETIMPORT R3 K4 [Vector2.new]
  GETTABLEKS R5 R1 K5 ["X"]
  GETTABLEKS R7 R2 K5 ["X"]
  DIVK R6 R7 K6 [2]
  ADD R4 R5 R6
  GETTABLEKS R6 R1 K7 ["Y"]
  GETTABLEKS R8 R2 K7 ["Y"]
  DIVK R7 R8 K6 [2]
  ADD R5 R6 R7
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%s (%s)"]
  NAMECALL R3 R0 K4 ["GetFullName"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K5 ["ClassName"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["AbsolutePosition"]
  GETTABLEKS R2 R0 K1 ["AbsoluteSize"]
  GETIMPORT R3 K4 [string.format]
  LOADK R4 K5 ["(%s) (%s)"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  ADD R7 R2 R1
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%s
	element bounds: %s"]
  GETIMPORT R3 K2 [string.format]
  LOADK R4 K4 ["%s (%s)"]
  NAMECALL R5 R0 K5 ["GetFullName"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K6 ["ClassName"]
  CALL R3 3 1
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K0 ["Y"]
  GETTABLEKS R5 R1 K1 ["AbsolutePosition"]
  GETTABLEKS R4 R5 K0 ["Y"]
  JUMPIFNOTLT R3 R4 [+8]
  FASTCALL2K TABLE_INSERT R2 K2 [+5]
  MOVE R4 R2
  LOADK R5 K2 ["top"]
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K0 ["Y"]
  GETTABLEKS R6 R1 K1 ["AbsolutePosition"]
  GETTABLEKS R5 R6 K0 ["Y"]
  GETTABLEKS R7 R1 K6 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K0 ["Y"]
  ADD R4 R5 R6
  JUMPIFNOTLT R4 R3 [+8]
  FASTCALL2K TABLE_INSERT R2 K7 [+5]
  MOVE R4 R2
  LOADK R5 K7 ["bottom"]
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K8 ["X"]
  GETTABLEKS R5 R1 K1 ["AbsolutePosition"]
  GETTABLEKS R4 R5 K8 ["X"]
  JUMPIFNOTLT R3 R4 [+8]
  FASTCALL2K TABLE_INSERT R2 K9 [+5]
  MOVE R4 R2
  LOADK R5 K9 ["left"]
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K8 ["X"]
  GETTABLEKS R6 R1 K1 ["AbsolutePosition"]
  GETTABLEKS R5 R6 K8 ["X"]
  GETTABLEKS R7 R1 K6 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K8 ["X"]
  ADD R4 R5 R6
  JUMPIFNOTLT R4 R3 [+8]
  FASTCALL2K TABLE_INSERT R2 K10 [+5]
  MOVE R4 R2
  LOADK R5 K10 ["right"]
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+8]
  LOADB R3 1
  GETIMPORT R4 K12 [table.concat]
  MOVE R5 R2
  LOADK R6 K13 ["-"]
  CALL R4 2 -1
  RETURN R3 -1
  LOADB R3 0
  RETURN R3 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFEQKNIL R2 [+28]
  LOADK R5 K1 ["GuiBase2d"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+19]
  LOADK R6 K3 ["GuiObject"]
  NAMECALL R4 R2 K2 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R2 K4 ["ClipsDescendants"]
  JUMP [+1]
  LOADB R3 1
  GETUPVAL R4 0
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 2
  JUMPIFNOT R3 [+5]
  JUMPIFNOT R4 [+4]
  LOADB R6 1
  MOVE R7 R2
  MOVE R8 R5
  RETURN R6 3
  GETTABLEKS R2 R2 K0 ["Parent"]
  JUMPBACK [-29]
  LOADB R3 0
  RETURN R3 1

PROTO_7:
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K0 ["Active"]
  JUMPIF R3 [+93]
  LOADK R5 K1 ["GuiButton"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+80]
  LOADK R5 K3 ["TextBox"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+75]
  NEWTABLE R3 0 0
  NAMECALL R4 R0 K4 ["GetFullName"]
  CALL R4 1 1
  NAMECALL R5 R0 K5 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  LOADK R12 K1 ["GuiButton"]
  NAMECALL R10 R9 K2 ["IsA"]
  CALL R10 2 1
  JUMPIF R10 [+5]
  LOADK R12 K3 ["TextBox"]
  NAMECALL R10 R9 K2 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+28]
  GETIMPORT R11 K8 [string.format]
  LOADK R12 K9 ["%s (%s)"]
  NAMECALL R13 R9 K4 ["GetFullName"]
  CALL R13 1 1
  GETTABLEKS R14 R9 K10 ["ClassName"]
  CALL R11 3 1
  LENGTH R13 R4
  ADDK R12 R13 K11 [1]
  FASTCALL2 STRING_SUB R11 R12 [+3]
  GETIMPORT R10 K13 [string.sub]
  CALL R10 2 1
  MOVE R12 R3
  GETIMPORT R13 K8 [string.format]
  LOADK R14 K14 ["%s%s"]
  GETTABLEKS R15 R0 K15 ["Name"]
  MOVE R16 R10
  CALL R13 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K18 [table.insert]
  CALL R11 -1 0
  FORGLOOP R5 2 [-39]
  MOVE R6 R2
  GETIMPORT R7 K8 [string.format]
  LOADK R9 K19 ["target is not a GuiButton or TextBox, so it will not sink inputs unless `Active` is true.
"]
  LOADK R10 K20 ["	The target instance has the following descendants that may be better click targets:%s

"]
  LOADK R11 K21 ["	If you are intentionally simulating clicks on a GUI element that is not typically interactive
"]
  LOADK R12 K22 ["	(like a Frame or an ImageLabel), consider using `element:clickWithoutValidation` instead."]
  CONCAT R8 R9 R12
  LENGTH R10 R3
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+9]
  LOADK R10 K23 ["
		* "]
  GETIMPORT R11 K25 [table.concat]
  MOVE R12 R3
  LOADK R13 K23 ["
		* "]
  CALL R11 2 1
  CONCAT R9 R10 R11
  JUMP [+1]
  LOADK R9 K26 [" <none>"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K18 [table.insert]
  CALL R5 -1 0
  JUMPIF R1 [+7]
  FASTCALL2K TABLE_INSERT R2 K27 [+5]
  MOVE R4 R2
  LOADK R5 K27 ["target is not Active"]
  GETIMPORT R3 K18 [table.insert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K28 ["Visible"]
  JUMPIF R3 [+7]
  FASTCALL2K TABLE_INSERT R2 K29 [+5]
  MOVE R4 R2
  LOADK R5 K29 ["target is not Visible"]
  GETIMPORT R3 K18 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K30 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K31 ["X"]
  LOADN R4 0
  JUMPIFNOTLE R3 R4 [+13]
  MOVE R4 R2
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K32 ["target has 0 width; element bounds: %s"]
  GETUPVAL R7 0
  MOVE R8 R0
  CALL R7 1 -1
  CALL R5 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K18 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K30 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K33 ["Y"]
  LOADN R4 0
  JUMPIFNOTLE R3 R4 [+13]
  MOVE R4 R2
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K34 ["target has 0 height; element bounds: %s"]
  GETUPVAL R7 0
  MOVE R8 R0
  CALL R7 1 -1
  CALL R5 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K18 [table.insert]
  CALL R3 -1 0
  LOADK R5 K35 ["LayerCollector"]
  NAMECALL R3 R0 K36 ["FindFirstAncestorWhichIsA"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  FASTCALL2K TABLE_INSERT R2 K37 [+5]
  MOVE R5 R2
  LOADK R6 K37 ["target is not a descendant of a LayerCollector, like a ScreenGui or a SurfaceGui"]
  GETIMPORT R4 K18 [table.insert]
  CALL R4 2 0
  LENGTH R5 R2
  JUMPIFEQKN R5 K38 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R2
  RETURN R4 2

PROTO_8:
  LOADK R3 K0 ["GuiObject"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETIMPORT R1 K3 [error]
  GETIMPORT R2 K6 [string.format]
  LOADK R3 K7 ["%s: %s is not a GuiObject"]
  LOADK R4 K8 ["[Testing Library] input validation"]
  GETUPVAL R5 0
  MOVE R6 R0
  CALL R5 1 -1
  CALL R2 -1 -1
  CALL R1 -1 0
  LOADK R3 K9 ["DataModel"]
  NAMECALL R1 R0 K10 ["FindFirstAncestorOfClass"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETIMPORT R1 K3 [error]
  GETIMPORT R2 K6 [string.format]
  LOADK R3 K11 ["%s: %s is not mounted into the DataModel"]
  LOADK R4 K8 ["[Testing Library] input validation"]
  GETUPVAL R5 0
  MOVE R6 R0
  CALL R5 1 -1
  CALL R2 -1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  LOADK R5 K0 ["GuiObject"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R0
  JUMP [+10]
  GETIMPORT R3 K3 [error]
  LOADK R4 K4 ["expected instance to be a GuiObject, but got `%s`"]
  GETTABLEKS R6 R0 K5 ["ClassName"]
  NAMECALL R4 R4 K6 ["format"]
  CALL R4 2 -1
  CALL R3 -1 0
  LOADNIL R2
  GETUPVAL R3 0
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 2
  JUMPIF R3 [+22]
  GETIMPORT R5 K3 [error]
  GETIMPORT R6 K8 [string.format]
  LOADK R7 K9 ["%s: %s was not clickable for the following reason(s):
* %s"]
  LOADK R8 K10 ["[Testing Library] input validation"]
  GETIMPORT R9 K8 [string.format]
  LOADK R10 K11 ["%s (%s)"]
  NAMECALL R11 R2 K12 ["GetFullName"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K5 ["ClassName"]
  CALL R9 3 1
  GETIMPORT R10 K15 [table.concat]
  MOVE R11 R4
  LOADK R12 K16 ["
* "]
  CALL R10 2 -1
  CALL R6 -1 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_10:
  LOADK R4 K0 ["GuiObject"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  MOVE R1 R0
  JUMP [+10]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["expected instance to be a GuiObject, but got `%s`"]
  GETTABLEKS R5 R0 K5 ["ClassName"]
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  LOADNIL R1
  GETTABLEKS R3 R1 K7 ["AbsolutePosition"]
  GETTABLEKS R4 R1 K8 ["AbsoluteSize"]
  GETIMPORT R5 K11 [Vector2.new]
  GETTABLEKS R7 R3 K12 ["X"]
  GETTABLEKS R9 R4 K12 ["X"]
  DIVK R8 R9 K13 [2]
  ADD R6 R7 R8
  GETTABLEKS R8 R3 K14 ["Y"]
  GETTABLEKS R10 R4 K14 ["Y"]
  DIVK R9 R10 K13 [2]
  ADD R7 R8 R9
  CALL R5 2 1
  MOVE R2 R5
  GETUPVAL R3 0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 3
  JUMPIFNOT R3 [+37]
  GETIMPORT R6 K3 [error]
  GETIMPORT R7 K16 [string.format]
  LOADK R8 K17 ["%s: %s is outside bounds of ancestor %s (%s)

click at: (%s)
target:   %s
ancestor: %s"]
  LOADK R9 K18 ["[Testing Library] input validation"]
  GETTABLEKS R10 R0 K19 ["Name"]
  GETTABLEKS R11 R4 K19 ["Name"]
  MOVE R12 R5
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R14 R2
  GETIMPORT R13 K21 [tostring]
  CALL R13 1 1
  GETIMPORT R14 K16 [string.format]
  LOADK R15 K22 ["%s
	element bounds: %s"]
  GETIMPORT R16 K16 [string.format]
  LOADK R17 K23 ["%s (%s)"]
  NAMECALL R18 R1 K24 ["GetFullName"]
  CALL R18 1 1
  GETTABLEKS R19 R1 K5 ["ClassName"]
  CALL R16 3 1
  GETUPVAL R17 1
  MOVE R18 R1
  CALL R17 1 -1
  CALL R14 -1 1
  GETUPVAL R15 2
  MOVE R16 R4
  CALL R15 1 -1
  CALL R7 -1 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_11:
  LOADK R4 K0 ["GuiObject"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  MOVE R1 R0
  JUMP [+10]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["expected instance to be a GuiObject, but got `%s`"]
  GETTABLEKS R5 R0 K5 ["ClassName"]
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  LOADNIL R1
  GETTABLEKS R3 R1 K7 ["AbsolutePosition"]
  GETTABLEKS R4 R1 K8 ["AbsoluteSize"]
  GETIMPORT R5 K11 [Vector2.new]
  GETTABLEKS R7 R3 K12 ["X"]
  GETTABLEKS R9 R4 K12 ["X"]
  DIVK R8 R9 K13 [2]
  ADD R6 R7 R8
  GETTABLEKS R8 R3 K14 ["Y"]
  GETTABLEKS R10 R4 K14 ["Y"]
  DIVK R9 R10 K13 [2]
  ADD R7 R8 R9
  CALL R5 2 1
  MOVE R2 R5
  LOADK R5 K15 ["BasePlayerGui"]
  NAMECALL R3 R0 K16 ["FindFirstAncestorWhichIsA"]
  CALL R3 2 1
  JUMPIF R3 [+11]
  GETIMPORT R4 K3 [error]
  GETIMPORT R5 K18 [string.format]
  LOADK R6 K19 ["%s: %s is not a descendant of a BasePlayerGui (like CoreGui or LocalPlayer.PlayerGui)"]
  LOADK R7 K20 ["[Testing Library] input validation"]
  GETUPVAL R8 0
  MOVE R9 R1
  CALL R8 1 -1
  CALL R5 -1 -1
  CALL R4 -1 0
  GETUPVAL R4 1
  GETTABLEKS R6 R2 K12 ["X"]
  GETTABLEKS R7 R2 K14 ["Y"]
  LOADNIL R8
  NAMECALL R4 R4 K21 ["SendMouseMoveEvent"]
  CALL R4 4 0
  GETUPVAL R4 1
  NAMECALL R4 R4 K22 ["WaitForInputEventsProcessed"]
  CALL R4 1 0
  GETTABLEKS R6 R2 K12 ["X"]
  GETTABLEKS R7 R2 K14 ["Y"]
  NAMECALL R4 R3 K23 ["GetGuiObjectsAtPosition"]
  CALL R4 3 1
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFEQ R9 R0 [+45]
  GETUPVAL R10 2
  MOVE R11 R9
  LOADB R12 1
  CALL R10 2 1
  JUMPIFNOT R10 [+37]
  GETUPVAL R11 3
  MOVE R12 R9
  MOVE R13 R2
  CALL R11 2 1
  JUMPIF R11 [+32]
  GETIMPORT R12 K3 [error]
  GETIMPORT R13 K18 [string.format]
  LOADK R14 K24 ["%s: element is obscured by another clickable GuiObject at the target click location

 click at: (%s)
   target: %s
obscuring: %s"]
  LOADK R15 K20 ["[Testing Library] input validation"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R17 R2
  GETIMPORT R16 K26 [tostring]
  CALL R16 1 1
  GETIMPORT R17 K18 [string.format]
  LOADK R18 K27 ["%s
	element bounds: %s"]
  GETIMPORT R19 K18 [string.format]
  LOADK R20 K28 ["%s (%s)"]
  NAMECALL R21 R0 K29 ["GetFullName"]
  CALL R21 1 1
  GETTABLEKS R22 R0 K5 ["ClassName"]
  CALL R19 3 1
  GETUPVAL R20 4
  MOVE R21 R0
  CALL R20 1 -1
  CALL R17 -1 1
  GETUPVAL R18 0
  MOVE R19 R9
  CALL R18 1 -1
  CALL R13 -1 -1
  CALL R12 -1 0
  FORGLOOP R5 2 [-45]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["UserInputState"]
  GETIMPORT R2 K3 [Enum.UserInputState.Cancel]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 1
  SETUPVAL R1 0
  RETURN R0 0

PROTO_13:
  LOADB R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_14:
  LOADB R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["UserInputState"]
  GETIMPORT R2 K3 [Enum.UserInputState.Cancel]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 1
  SETUPVAL R1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["UserInputState"]
  GETIMPORT R2 K3 [Enum.UserInputState.Cancel]
  JUMPIFEQ R1 R2 [+5]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  SETUPVAL R1 1
  RETURN R0 0

PROTO_17:
  NEWTABLE R2 0 0
  LOADB R3 0
  LOADK R6 K0 ["GuiButton"]
  NAMECALL R4 R0 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+25]
  MOVE R5 R2
  GETTABLEKS R6 R0 K2 ["Activated"]
  NEWCLOSURE R8 P0
  CAPTURE REF R3
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K6 [table.insert]
  CALL R4 -1 0
  MOVE R5 R2
  GETTABLEKS R6 R0 K7 ["MouseButton2Click"]
  NEWCLOSURE R8 P1
  CAPTURE REF R3
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K6 [table.insert]
  CALL R4 -1 0
  JUMP [+49]
  LOADK R6 K8 ["TextBox"]
  NAMECALL R4 R0 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+17]
  NAMECALL R4 R0 K9 ["IsFocused"]
  CALL R4 1 1
  JUMPIF R4 [+13]
  MOVE R5 R2
  GETTABLEKS R6 R0 K10 ["Focused"]
  NEWCLOSURE R8 P2
  CAPTURE REF R3
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K6 [table.insert]
  CALL R4 -1 0
  JUMP [+27]
  LOADB R4 0
  MOVE R6 R2
  GETTABLEKS R7 R0 K11 ["InputBegan"]
  NEWCLOSURE R9 P3
  CAPTURE REF R4
  NAMECALL R7 R7 K3 ["Connect"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K6 [table.insert]
  CALL R5 -1 0
  MOVE R6 R2
  GETTABLEKS R7 R0 K12 ["InputEnded"]
  NEWCLOSURE R9 P4
  CAPTURE REF R4
  CAPTURE REF R3
  NAMECALL R7 R7 K3 ["Connect"]
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K6 [table.insert]
  CALL R5 -1 0
  CLOSEUPVALS R4
  MOVE R4 R1
  CALL R4 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  NAMECALL R9 R8 K13 ["Disconnect"]
  CALL R9 1 0
  FORGLOOP R4 2 [-4]
  CLOSEUPVALS R3
  RETURN R3 1

PROTO_18:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["WaitForInputEventsProcessed"]
  CALL R2 1 0
  GETUPVAL R2 2
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIF R2 [+22]
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 5
  MOVE R4 R0
  CALL R3 1 0
  GETIMPORT R3 K2 [error]
  GETIMPORT R4 K5 [string.format]
  LOADK R5 K6 ["%s: failed to click %s - reason unknown
%s"]
  LOADK R6 K7 ["[Testing Library] input validation"]
  GETTABLEKS R7 R0 K8 ["Name"]
  GETUPVAL R8 6
  MOVE R9 R0
  CALL R8 1 -1
  CALL R4 -1 -1
  CALL R3 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VirtualInputManager"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  DUPCLOSURE R2 K5 [PROTO_1]
  DUPCLOSURE R3 K6 [PROTO_2]
  DUPCLOSURE R4 K7 [PROTO_3]
  DUPCLOSURE R5 K8 [PROTO_4]
  CAPTURE VAL R4
  DUPCLOSURE R6 K9 [PROTO_5]
  DUPCLOSURE R7 K10 [PROTO_6]
  CAPTURE VAL R6
  DUPCLOSURE R8 K11 [PROTO_7]
  CAPTURE VAL R4
  DUPCLOSURE R9 K12 [PROTO_8]
  CAPTURE VAL R3
  DUPCLOSURE R10 K13 [PROTO_9]
  CAPTURE VAL R8
  DUPCLOSURE R11 K14 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R12 K15 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R13 K16 [PROTO_17]
  DUPCLOSURE R14 K17 [PROTO_18]
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R5
  DUPTABLE R15 K25 [{"getGuiObject", "getCenter", "assertMounted", "assertCanActivate", "assertVisibleWithinAncestors", "assertFirstInputTarget", "validateInput"}]
  SETTABLEKS R1 R15 K18 ["getGuiObject"]
  SETTABLEKS R2 R15 K19 ["getCenter"]
  SETTABLEKS R9 R15 K20 ["assertMounted"]
  SETTABLEKS R10 R15 K21 ["assertCanActivate"]
  SETTABLEKS R11 R15 K22 ["assertVisibleWithinAncestors"]
  SETTABLEKS R12 R15 K23 ["assertFirstInputTarget"]
  SETTABLEKS R14 R15 K24 ["validateInput"]
  RETURN R15 1
