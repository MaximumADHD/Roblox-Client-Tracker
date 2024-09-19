PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["orientation"]
  GETTABLEKS R3 R1 K2 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+44]
  GETUPVAL R3 0
  DUPTABLE R5 K7 [{"dragging"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["dragging"]
  NAMECALL R3 R3 K8 ["setState"]
  CALL R3 2 0
  GETIMPORT R3 K11 [Vector2.new]
  GETTABLEKS R5 R1 K12 ["Position"]
  GETTABLEKS R4 R5 K13 ["X"]
  GETTABLEKS R6 R1 K12 ["Position"]
  GETTABLEKS R5 R6 K14 ["Y"]
  CALL R3 2 1
  GETIMPORT R4 K11 [Vector2.new]
  GETTABLEKS R7 R0 K12 ["Position"]
  GETTABLEKS R6 R7 K13 ["X"]
  GETTABLEKS R5 R6 K15 ["Scale"]
  GETTABLEKS R8 R0 K12 ["Position"]
  GETTABLEKS R7 R8 K14 ["Y"]
  GETTABLEKS R6 R7 K15 ["Scale"]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["onDragBegin"]
  MOVE R6 R0
  MOVE R7 R2
  MOVE R8 R3
  MOVE R9 R4
  CALL R5 4 0
  RETURN R0 0
  GETTABLEKS R3 R1 K2 ["UserInputType"]
  GETIMPORT R4 K18 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R3 R4 [+18]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K19 ["addPriorityDragCandidate"]
  MOVE R4 R2
  GETTABLEKS R5 R0 K20 ["ZIndex"]
  MOVE R6 R0
  CALL R3 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K21 ["setMostRecentMouseMoveInputObject"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  LOADNIL R2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["orientation"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["draggerInstanceRef"]
  NAMECALL R4 R4 K3 ["getValue"]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["DRAGGER_WIDTH"]
  LOADN R6 0
  GETUPVAL R7 1
  GETTABLEKS R5 R7 K5 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  GETUPVAL R8 2
  JUMPIFEQ R3 R8 [+4]
  GETUPVAL R8 3
  JUMPIFNOTEQ R3 R8 [+3]
  LOADK R7 K6 [0.01]
  JUMP [+1]
  LOADN R7 0
  MOVE R6 R7
  GETUPVAL R7 4
  JUMPIFEQ R3 R7 [+4]
  GETUPVAL R7 2
  JUMPIFNOTEQ R3 R7 [+19]
  GETTABLEKS R12 R4 K7 ["AbsolutePosition"]
  GETTABLEKS R11 R12 K8 ["X"]
  ADD R10 R11 R6
  DIVK R11 R5 K9 [2]
  ADD R9 R10 R11
  GETTABLEKS R11 R1 K10 ["Position"]
  GETTABLEKS R10 R11 K8 ["X"]
  SUB R8 R9 R10
  FASTCALL1 MATH_ABS R8 [+2]
  GETIMPORT R7 K13 [math.abs]
  CALL R7 1 1
  MOVE R2 R7
  JUMP [+23]
  GETUPVAL R7 5
  JUMPIFEQ R3 R7 [+4]
  GETUPVAL R7 3
  JUMPIFNOTEQ R3 R7 [+18]
  GETTABLEKS R12 R4 K7 ["AbsolutePosition"]
  GETTABLEKS R11 R12 K14 ["Y"]
  ADD R10 R11 R6
  DIVK R11 R5 K9 [2]
  ADD R9 R10 R11
  GETTABLEKS R11 R1 K10 ["Position"]
  GETTABLEKS R10 R11 K14 ["Y"]
  SUB R8 R9 R10
  FASTCALL1 MATH_ABS R8 [+2]
  GETIMPORT R7 K13 [math.abs]
  CALL R7 1 1
  MOVE R2 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K15 ["addDragCandidateWithId"]
  MOVE R8 R0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K1 ["orientation"]
  MOVE R10 R2
  MOVE R11 R4
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["selectionPriority"]
  CALL R7 5 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+20]
  GETIMPORT R2 K6 [Vector2.new]
  GETTABLEKS R4 R1 K7 ["Position"]
  GETTABLEKS R3 R4 K8 ["X"]
  GETTABLEKS R5 R1 K7 ["Position"]
  GETTABLEKS R4 R5 K9 ["Y"]
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["props"]
  GETTABLEKS R3 R4 K11 ["startUncertainDrag"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K13 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["onHandleInputChanged"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["props"]
  GETTABLEKS R2 R3 K15 ["setMostRecentMouseMoveInputObject"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["orientation"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["dragging"]
  JUMPIFNOT R3 [+23]
  GETTABLEKS R3 R1 K4 ["UserInputType"]
  GETIMPORT R4 K7 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R3 R4 [+18]
  GETIMPORT R3 K10 [Vector2.new]
  GETTABLEKS R5 R1 K11 ["Position"]
  GETTABLEKS R4 R5 K12 ["X"]
  GETTABLEKS R6 R1 K11 ["Position"]
  GETTABLEKS R5 R6 K13 ["Y"]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["onDragging"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["orientation"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["onDragEnd"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["UserInputType"]
  GETIMPORT R4 K6 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+10]
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"dragging"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["dragging"]
  NAMECALL R3 R3 K9 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R1 K3 ["UserInputType"]
  GETIMPORT R4 K11 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R3 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K12 ["removePriorityDragCandidate"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["orientation"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["onDragEnd"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  GETTABLEKS R3 R1 K3 ["UserInputType"]
  GETIMPORT R4 K6 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R3 R4 [+10]
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"dragging"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["dragging"]
  NAMECALL R3 R3 K9 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R1 K3 ["UserInputType"]
  GETIMPORT R4 K11 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R3 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K12 ["removeDragCandidateWithId"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["orientation"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["selectionPriority"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["selectionPriority"]
  RETURN R0 0

PROTO_8:
  DUPTABLE R4 K1 [{"dragging"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["dragging"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K4 ["draggerInstanceRef"]
  LOADN R2 0
  SETTABLEKS R2 R0 K5 ["selectionPriority"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K6 ["onInputBegan"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K7 ["onHandleInputChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onInputBeganOnLowPriorityHandles"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K9 ["onInputChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K10 ["onInputEnded"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K11 ["onHandleInputEnded"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R0 K12 ["onInputBeganOnPriorityHandles"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["onInputEndedOnPriorityHandles"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["sliceRect"]
  GETTABLEKS R3 R1 K2 ["pixelDimensions"]
  GETTABLEKS R4 R1 K3 ["orientation"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R6 R1 K5 ["isHovering"]
  MOVE R7 R6
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R1 K6 ["isDragging"]
  NOT R7 R8
  GETTABLE R9 R2 R4
  FASTCALL1 MATH_ROUND R9 [+2]
  GETIMPORT R8 K9 [math.round]
  CALL R8 1 1
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  LOADNIL R12
  LOADNIL R13
  LOADNIL R14
  LOADNIL R15
  LOADNIL R16
  LOADNIL R17
  GETUPVAL R18 0
  JUMPIFEQ R4 R18 [+4]
  GETUPVAL R18 1
  JUMPIFNOTEQ R4 R18 [+131]
  GETTABLEKS R19 R3 K10 ["X"]
  DIV R18 R8 R19
  LOADN R21 0
  LOADN R22 1
  FASTCALL3 MATH_CLAMP R18 R21 R22
  MOVE R20 R18
  GETIMPORT R19 K12 [math.clamp]
  CALL R19 3 1
  MOVE R18 R19
  GETIMPORT R19 K15 [UDim2.fromScale]
  MOVE R20 R18
  LOADK R21 K16 [0.5]
  CALL R19 2 1
  MOVE R10 R19
  GETTABLEKS R14 R5 K17 ["EdgeHandleSize"]
  LOADNIL R19
  GETUPVAL R20 0
  JUMPIFNOTEQ R4 R20 [+26]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K18 ["IMAGES"]
  GETTABLEKS R20 R21 K19 ["DRAGGER_V2"]
  GETTABLEKS R19 R20 K20 ["LEFT"]
  GETIMPORT R20 K22 [UDim2.fromOffset]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  DIVK R23 R24 K23 [2]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K25 ["DRAGGER_WIDTH_V2"]
  SUB R22 R23 R24
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["DRAGGER_CENTER_INSETPX"]
  ADD R21 R22 R23
  LOADN R22 0
  CALL R20 2 1
  MOVE R17 R20
  JUMP [+23]
  GETUPVAL R20 1
  JUMPIFNOTEQ R4 R20 [+21]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K18 ["IMAGES"]
  GETTABLEKS R20 R21 K19 ["DRAGGER_V2"]
  GETTABLEKS R19 R20 K27 ["RIGHT"]
  GETIMPORT R20 K22 [UDim2.fromOffset]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  DIVK R22 R23 K23 [2]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K26 ["DRAGGER_CENTER_INSETPX"]
  SUB R21 R22 R23
  LOADN R22 0
  CALL R20 2 1
  MOVE R17 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADK R21 K16 [0.5]
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R24 R5 K30 ["EdgeHandleInsetPx"]
  CALL R20 4 1
  MOVE R12 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADK R21 K16 [0.5]
  LOADN R22 0
  LOADN R23 1
  GETTABLEKS R25 R5 K30 ["EdgeHandleInsetPx"]
  MINUS R24 R25
  CALL R20 4 1
  MOVE R13 R20
  JUMPIFNOT R7 [+3]
  GETTABLEKS R20 R19 K31 ["OUTLINED"]
  JUMPIF R20 [+2]
  GETTABLEKS R20 R19 K32 ["NORMAL"]
  MOVE R9 R20
  GETIMPORT R20 K34 [Rect.new]
  LOADN R21 0
  LOADN R22 8
  LOADN R23 8
  LOADN R24 8
  CALL R20 4 1
  MOVE R16 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K25 ["DRAGGER_WIDTH_V2"]
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  MOVE R11 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  LOADN R23 1
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K35 ["DRAGGER_HANDLE_SIZE"]
  MULK R24 R25 K23 [2]
  CALL R20 4 1
  MOVE R15 R20
  JUMP [+150]
  GETUPVAL R18 3
  JUMPIFEQ R4 R18 [+4]
  GETUPVAL R18 4
  JUMPIFNOTEQ R4 R18 [+145]
  GETTABLEKS R19 R3 K36 ["Y"]
  DIV R18 R8 R19
  LOADN R21 0
  LOADN R22 1
  FASTCALL3 MATH_CLAMP R18 R21 R22
  MOVE R20 R18
  GETIMPORT R19 K12 [math.clamp]
  CALL R19 3 1
  MOVE R18 R19
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K18 ["IMAGES"]
  GETTABLEKS R9 R19 K37 ["HORIZONTAL_DRAGGER"]
  GETIMPORT R19 K15 [UDim2.fromScale]
  LOADK R20 K16 [0.5]
  MOVE R21 R18
  CALL R19 2 1
  MOVE R10 R19
  GETIMPORT R19 K29 [UDim2.new]
  GETTABLEKS R21 R5 K17 ["EdgeHandleSize"]
  GETTABLEKS R20 R21 K36 ["Y"]
  GETTABLEKS R22 R5 K17 ["EdgeHandleSize"]
  GETTABLEKS R21 R22 K10 ["X"]
  CALL R19 2 1
  MOVE R14 R19
  LOADNIL R19
  GETUPVAL R20 3
  JUMPIFNOTEQ R4 R20 [+26]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K18 ["IMAGES"]
  GETTABLEKS R20 R21 K19 ["DRAGGER_V2"]
  GETTABLEKS R19 R20 K38 ["TOP"]
  GETIMPORT R20 K22 [UDim2.fromOffset]
  LOADN R21 0
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  DIVK R24 R25 K23 [2]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K25 ["DRAGGER_WIDTH_V2"]
  SUB R23 R24 R25
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K26 ["DRAGGER_CENTER_INSETPX"]
  ADD R22 R23 R24
  CALL R20 2 1
  MOVE R17 R20
  JUMP [+23]
  GETUPVAL R20 4
  JUMPIFNOTEQ R4 R20 [+21]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K18 ["IMAGES"]
  GETTABLEKS R20 R21 K19 ["DRAGGER_V2"]
  GETTABLEKS R19 R20 K39 ["BOTTOM"]
  GETIMPORT R20 K22 [UDim2.fromOffset]
  LOADN R21 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  DIVK R23 R24 K23 [2]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K26 ["DRAGGER_CENTER_INSETPX"]
  SUB R22 R23 R24
  CALL R20 2 1
  MOVE R17 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 0
  GETTABLEKS R22 R5 K30 ["EdgeHandleInsetPx"]
  LOADK R23 K16 [0.5]
  LOADN R24 0
  CALL R20 4 1
  MOVE R12 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 1
  GETTABLEKS R23 R5 K30 ["EdgeHandleInsetPx"]
  MINUS R22 R23
  LOADK R23 K16 [0.5]
  LOADN R24 0
  CALL R20 4 1
  MOVE R13 R20
  JUMPIFNOT R7 [+3]
  GETTABLEKS R20 R19 K31 ["OUTLINED"]
  JUMPIF R20 [+2]
  GETTABLEKS R20 R19 K32 ["NORMAL"]
  MOVE R9 R20
  GETIMPORT R20 K34 [Rect.new]
  LOADN R21 8
  LOADN R22 0
  LOADN R23 8
  LOADN R24 8
  CALL R20 4 1
  MOVE R16 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K25 ["DRAGGER_WIDTH_V2"]
  CALL R20 4 1
  MOVE R11 R20
  GETIMPORT R20 K29 [UDim2.new]
  LOADN R21 1
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K35 ["DRAGGER_HANDLE_SIZE"]
  MULK R22 R23 K23 [2]
  LOADN R23 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K24 ["DRAGGER_CLICK_WINDOW_WIDTH"]
  CALL R20 4 1
  MOVE R15 R20
  GETIMPORT R18 K42 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 131
  LOADN R21 131
  CALL R18 3 1
  GETIMPORT R19 K42 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  GETIMPORT R20 K42 [Color3.fromRGB]
  LOADN R21 210
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  MOVE R21 R6
  JUMPIFNOT R21 [+2]
  GETTABLEKS R21 R1 K6 ["isDragging"]
  JUMPIFNOT R7 [+2]
  MOVE R22 R18
  JUMPIF R22 [+4]
  JUMPIFNOT R21 [+2]
  MOVE R22 R20
  JUMPIF R22 [+1]
  MOVE R22 R19
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K43 ["createElement"]
  LOADK R24 K44 ["Frame"]
  NEWTABLE R25 16 0
  GETIMPORT R26 K46 [Vector2.new]
  LOADK R27 K16 [0.5]
  LOADK R28 K16 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K47 ["AnchorPoint"]
  SETTABLEKS R10 R25 K48 ["Position"]
  SETTABLEKS R15 R25 K49 ["Size"]
  LOADN R26 0
  SETTABLEKS R26 R25 K50 ["BorderSizePixel"]
  LOADN R26 1
  SETTABLEKS R26 R25 K51 ["BackgroundTransparency"]
  GETIMPORT R26 K52 [Color3.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  CALL R26 3 1
  SETTABLEKS R26 R25 K53 ["BackgroundColor3"]
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K54 ["Event"]
  GETTABLEKS R26 R27 K55 ["InputBegan"]
  GETTABLEKS R27 R0 K56 ["onInputBeganOnLowPriorityHandles"]
  SETTABLE R27 R25 R26
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K54 ["Event"]
  GETTABLEKS R26 R27 K57 ["InputChanged"]
  GETTABLEKS R27 R0 K58 ["onHandleInputChanged"]
  SETTABLE R27 R25 R26
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K54 ["Event"]
  GETTABLEKS R26 R27 K59 ["InputEnded"]
  GETTABLEKS R27 R0 K60 ["onHandleInputEnded"]
  SETTABLE R27 R25 R26
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K61 ["Ref"]
  GETTABLEKS R27 R0 K62 ["draggerInstanceRef"]
  SETTABLE R27 R25 R26
  DUPTABLE R26 K64 [{"Image"}]
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K43 ["createElement"]
  LOADK R28 K65 ["ImageLabel"]
  NEWTABLE R29 16 0
  SETTABLEKS R17 R29 K48 ["Position"]
  LOADN R30 1
  SETTABLEKS R30 R29 K51 ["BackgroundTransparency"]
  SETTABLEKS R9 R29 K63 ["Image"]
  SETTABLEKS R11 R29 K49 ["Size"]
  GETIMPORT R30 K69 [Enum.ScaleType.Slice]
  SETTABLEKS R30 R29 K67 ["ScaleType"]
  SETTABLEKS R16 R29 K70 ["SliceCenter"]
  LOADN R30 0
  SETTABLEKS R30 R29 K50 ["BorderSizePixel"]
  SETTABLEKS R22 R29 K71 ["ImageColor3"]
  LOADN R32 5
  GETUPVAL R34 6
  GETTABLE R33 R34 R4
  ADD R31 R32 R33
  JUMPIFNOT R6 [+2]
  LOADN R32 100
  JUMP [+1]
  LOADN R32 0
  ADD R30 R31 R32
  SETTABLEKS R30 R29 K72 ["ZIndex"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K54 ["Event"]
  GETTABLEKS R30 R31 K55 ["InputBegan"]
  GETTABLEKS R31 R0 K73 ["onInputBeganOnPriorityHandles"]
  SETTABLE R31 R29 R30
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K54 ["Event"]
  GETTABLEKS R30 R31 K59 ["InputEnded"]
  GETTABLEKS R31 R0 K74 ["onInputEndedOnPriorityHandles"]
  SETTABLE R31 R29 R30
  DUPTABLE R30 K77 [{"Handle1", "Handle2"}]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K43 ["createElement"]
  LOADK R32 K44 ["Frame"]
  NEWTABLE R33 16 0
  GETIMPORT R34 K46 [Vector2.new]
  LOADK R35 K16 [0.5]
  LOADK R36 K16 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K47 ["AnchorPoint"]
  SETTABLEKS R12 R33 K48 ["Position"]
  SETTABLEKS R14 R33 K49 ["Size"]
  LOADN R34 0
  SETTABLEKS R34 R33 K50 ["BorderSizePixel"]
  LOADN R35 1
  GETUPVAL R37 6
  GETTABLE R36 R37 R4
  ADD R34 R35 R36
  SETTABLEKS R34 R33 K72 ["ZIndex"]
  GETIMPORT R34 K52 [Color3.new]
  LOADN R35 0
  LOADN R36 1
  LOADN R37 0
  CALL R34 3 1
  SETTABLEKS R34 R33 K53 ["BackgroundColor3"]
  LOADN R34 1
  SETTABLEKS R34 R33 K51 ["BackgroundTransparency"]
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K55 ["InputBegan"]
  GETTABLEKS R35 R0 K56 ["onInputBeganOnLowPriorityHandles"]
  SETTABLE R35 R33 R34
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K57 ["InputChanged"]
  GETTABLEKS R35 R0 K58 ["onHandleInputChanged"]
  SETTABLE R35 R33 R34
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K59 ["InputEnded"]
  GETTABLEKS R35 R0 K60 ["onHandleInputEnded"]
  SETTABLE R35 R33 R34
  CALL R31 2 1
  SETTABLEKS R31 R30 K75 ["Handle1"]
  GETUPVAL R32 5
  GETTABLEKS R31 R32 K43 ["createElement"]
  LOADK R32 K44 ["Frame"]
  NEWTABLE R33 16 0
  GETIMPORT R34 K46 [Vector2.new]
  LOADK R35 K16 [0.5]
  LOADK R36 K16 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K47 ["AnchorPoint"]
  SETTABLEKS R13 R33 K48 ["Position"]
  SETTABLEKS R14 R33 K49 ["Size"]
  LOADN R34 0
  SETTABLEKS R34 R33 K50 ["BorderSizePixel"]
  LOADN R35 1
  GETUPVAL R37 6
  GETTABLE R36 R37 R4
  ADD R34 R35 R36
  SETTABLEKS R34 R33 K72 ["ZIndex"]
  GETIMPORT R34 K52 [Color3.new]
  LOADN R35 0
  LOADN R36 1
  LOADN R37 0
  CALL R34 3 1
  SETTABLEKS R34 R33 K53 ["BackgroundColor3"]
  LOADN R34 1
  SETTABLEKS R34 R33 K51 ["BackgroundTransparency"]
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K55 ["InputBegan"]
  GETTABLEKS R35 R0 K56 ["onInputBeganOnLowPriorityHandles"]
  SETTABLE R35 R33 R34
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K57 ["InputChanged"]
  GETTABLEKS R35 R0 K58 ["onHandleInputChanged"]
  SETTABLE R35 R33 R34
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K54 ["Event"]
  GETTABLEKS R34 R35 K59 ["InputEnded"]
  GETTABLEKS R35 R0 K60 ["onHandleInputEnded"]
  SETTABLE R35 R33 R34
  CALL R31 2 1
  SETTABLEKS R31 R30 K76 ["Handle2"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K63 ["Image"]
  CALL R23 3 -1
  RETURN R23 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K11 ["Orientation"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R7 R5 K14 ["Analytics"]
  GETTABLEKS R8 R5 K15 ["Localization"]
  GETTABLEKS R9 R1 K16 ["PureComponent"]
  LOADK R11 K17 ["ImageDragger"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  GETTABLEKS R11 R4 K19 ["Left"]
  GETTABLEKS R10 R11 K20 ["rawValue"]
  CALL R10 0 1
  GETTABLEKS R12 R4 K21 ["Right"]
  GETTABLEKS R11 R12 K20 ["rawValue"]
  CALL R11 0 1
  GETTABLEKS R13 R4 K22 ["Top"]
  GETTABLEKS R12 R13 K20 ["rawValue"]
  CALL R12 0 1
  GETTABLEKS R14 R4 K23 ["Bottom"]
  GETTABLEKS R13 R14 K20 ["rawValue"]
  CALL R13 0 1
  NEWTABLE R14 4 0
  LOADN R15 1
  SETTABLE R15 R14 R10
  LOADN R15 2
  SETTABLE R15 R14 R11
  LOADN R15 3
  SETTABLE R15 R14 R12
  LOADN R15 4
  SETTABLE R15 R14 R13
  DUPCLOSURE R15 K24 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R15 R9 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_9]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R14
  SETTABLEKS R15 R9 K27 ["render"]
  MOVE R15 R6
  DUPTABLE R16 K30 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
  SETTABLEKS R7 R16 K14 ["Analytics"]
  SETTABLEKS R8 R16 K15 ["Localization"]
  GETTABLEKS R17 R5 K28 ["Stylizer"]
  SETTABLEKS R17 R16 K28 ["Stylizer"]
  GETTABLEKS R17 R5 K29 ["Mouse"]
  SETTABLEKS R17 R16 K29 ["Mouse"]
  CALL R15 1 1
  MOVE R16 R9
  CALL R15 1 1
  MOVE R9 R15
  RETURN R9 1
