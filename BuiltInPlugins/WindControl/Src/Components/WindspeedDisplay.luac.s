PROTO_0:
  LOADN R0 0
  GETIMPORT R3 K1 [workspace]
  GETTABLEKS R2 R3 K2 ["GlobalWind"]
  GETTABLEKS R1 R2 K3 ["Magnitude"]
  LOADN R2 1
  JUMPIFNOTLE R1 R2 [+3]
  LOADK R0 K4 [-0.1]
  RETURN R0 1
  GETIMPORT R5 K1 [workspace]
  GETTABLEKS R4 R5 K2 ["GlobalWind"]
  GETTABLEKS R3 R4 K3 ["Magnitude"]
  FASTCALL1 MATH_LOG10 R3 [+2]
  GETIMPORT R2 K7 [math.log10]
  CALL R2 1 1
  FASTCALL2K MATH_MIN R2 K8 [+4]
  LOADK R3 K8 [3]
  GETIMPORT R1 K10 [math.min]
  CALL R1 2 1
  MOVE R0 R1
  RETURN R0 1

PROTO_1:
  LOADN R1 0
  JUMPIFNOTLT R0 R1 [+3]
  LOADN R1 0
  RETURN R1 1
  LOADN R2 232
  DIVK R3 R0 K0 [3]
  FASTCALL2 MATH_POW R2 R3 [+3]
  GETIMPORT R1 K3 [math.pow]
  CALL R1 2 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["yawStateRequested"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["pitchStateRequested"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["speedStateRequested"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  LOADN R2 0
  FASTCALL2 MATH_MAX R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [math.max]
  CALL R1 2 1
  MOVE R0 R1
  GETIMPORT R1 K4 [workspace]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["props"]
  GETTABLEKS R4 R5 K6 ["WindDirection"]
  GETTABLEKS R3 R4 K7 ["Unit"]
  MUL R2 R3 R0
  SETTABLEKS R2 R1 K8 ["GlobalWind"]
  RETURN R0 0

PROTO_6:
  LOADN R1 1
  LOADN R2 0
  DIVK R5 R0 K2 [180]
  SUBRK R4 R1 K5 ["GlobalWind"]
  MULK R3 R4 K0 [3.14159265358979]
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R4 R5 K5 ["GlobalWind"]
  GETIMPORT R7 K4 [workspace]
  GETTABLEKS R6 R7 K5 ["GlobalWind"]
  NAMECALL R4 R4 K6 ["Dot"]
  CALL R4 2 1
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+26]
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R4 R5 K5 ["GlobalWind"]
  GETTABLEKS R1 R4 K7 ["Magnitude"]
  GETIMPORT R9 K4 [workspace]
  GETTABLEKS R8 R9 K5 ["GlobalWind"]
  GETTABLEKS R7 R8 K8 ["Unit"]
  GETTABLEKS R6 R7 K9 ["y"]
  LOADN R7 255
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K12 [math.clamp]
  CALL R5 3 1
  FASTCALL1 MATH_ASIN R5 [+2]
  GETIMPORT R4 K14 [math.asin]
  CALL R4 1 1
  MOVE R2 R4
  GETIMPORT R5 K17 [CFrame.fromEulerAnglesYXZ]
  LOADN R6 0
  MOVE R7 R3
  LOADN R8 0
  CALL R5 3 1
  GETIMPORT R6 K17 [CFrame.fromEulerAnglesYXZ]
  MOVE R7 R2
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  MUL R4 R5 R6
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R7 R4 K18 ["LookVector"]
  MUL R6 R7 R1
  SETTABLEKS R6 R5 K5 ["GlobalWind"]
  RETURN R0 0

PROTO_7:
  LOADN R1 1
  LOADN R5 180
  ADD R4 R5 R0
  DIVK R3 R4 K1 [180]
  MULK R2 R3 K0 [3.14159265358979]
  LOADK R3 K2 [-1.5707963267949]
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R4 R5 K5 ["GlobalWind"]
  GETIMPORT R7 K4 [workspace]
  GETTABLEKS R6 R7 K5 ["GlobalWind"]
  NAMECALL R4 R4 K6 ["Dot"]
  CALL R4 2 1
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+44]
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R4 R5 K5 ["GlobalWind"]
  GETTABLEKS R1 R4 K7 ["Magnitude"]
  GETIMPORT R6 K4 [workspace]
  GETTABLEKS R5 R6 K5 ["GlobalWind"]
  GETTABLEKS R4 R5 K8 ["Unit"]
  GETTABLEKS R6 R4 K9 ["z"]
  LOADN R7 0
  JUMPIFNOTLT R6 R7 [+3]
  LOADK R5 K0 [3.14159265358979]
  JUMP [+1]
  LOADN R5 0
  GETTABLEKS R6 R4 K9 ["z"]
  JUMPIFEQKN R6 K10 [0] [+12]
  GETTABLEKS R8 R4 K11 ["x"]
  GETTABLEKS R9 R4 K9 ["z"]
  DIV R7 R8 R9
  FASTCALL1 MATH_ATAN R7 [+2]
  GETIMPORT R6 K14 [math.atan]
  CALL R6 1 1
  ADD R3 R5 R6
  JUMP [+8]
  GETTABLEKS R6 R4 K11 ["x"]
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+3]
  ADDK R3 R5 K15 [1.5707963267949]
  JUMP [+1]
  SUBK R3 R5 K15 [1.5707963267949]
  GETIMPORT R5 K18 [CFrame.fromEulerAnglesYXZ]
  LOADN R6 0
  MOVE R7 R3
  LOADN R8 0
  CALL R5 3 1
  GETIMPORT R6 K18 [CFrame.fromEulerAnglesYXZ]
  MOVE R7 R2
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  MUL R4 R5 R6
  GETIMPORT R5 K4 [workspace]
  GETTABLEKS R7 R4 K19 ["LookVector"]
  MUL R6 R7 R1
  SETTABLEKS R6 R5 K5 ["GlobalWind"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["WindDirection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["WindDirection"]
  NAMECALL R0 R0 K2 ["Dot"]
  CALL R0 2 1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+27]
  LOADN R2 166
  LOADN R5 180
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["WindDirection"]
  GETIMPORT R8 K6 [Vector3.yAxis]
  GETIMPORT R9 K6 [Vector3.yAxis]
  NAMECALL R6 R6 K7 ["Angle"]
  CALL R6 3 1
  MUL R4 R5 R6
  DIVK R3 R4 K3 [3.14159265358979]
  ADD R1 R2 R3
  FASTCALL1 MATH_ROUND R1 [+2]
  GETIMPORT R0 K10 [math.round]
  CALL R0 1 1
  JUMPIFNOTEQKNIL R0 [+3]
  LOADN R1 0
  RETURN R1 1
  RETURN R0 1
  LOADN R0 0
  RETURN R0 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["WindDirection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["WindDirection"]
  NAMECALL R0 R0 K2 ["Dot"]
  CALL R0 2 1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["WindDirection"]
  LOADK R2 K3 [{1, 0, 1}]
  MUL R0 R1 R2
  LOADN R4 180
  LOADN R7 180
  GETIMPORT R10 K8 [Vector3.xAxis]
  GETIMPORT R11 K10 [Vector3.yAxis]
  NAMECALL R8 R0 K11 ["Angle"]
  CALL R8 3 1
  MUL R6 R7 R8
  DIVK R5 R6 K5 [3.14159265358979]
  ADD R3 R4 R5
  FASTCALL1 MATH_ROUND R3 [+2]
  GETIMPORT R2 K14 [math.round]
  CALL R2 1 1
  MODK R1 R2 K4 [360]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADN R2 0
  RETURN R2 1
  RETURN R1 1
  LOADN R0 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isChangingYaw"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["setWindYaw"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["isChangingPitch"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["setWindPitch"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["setWindSpeed"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isChangingYaw"]
  JUMPIFNOT R0 [+9]
  GETIMPORT R0 K3 [string.format]
  LOADK R1 K4 ["%d°"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["getWindYaw"]
  CALL R2 0 -1
  CALL R0 -1 -1
  RETURN R0 -1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["isChangingPitch"]
  JUMPIFNOT R0 [+9]
  GETIMPORT R0 K3 [string.format]
  LOADK R1 K4 ["%d°"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["getWindPitch"]
  CALL R2 0 -1
  CALL R0 -1 -1
  RETURN R0 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["props"]
  GETTABLEKS R0 R1 K9 ["Localization"]
  LOADK R2 K10 ["WindspeedDisplay"]
  LOADK R3 K11 ["sps"]
  NEWTABLE R4 0 1
  GETIMPORT R5 K3 [string.format]
  LOADK R6 K12 ["%.1f"]
  GETIMPORT R9 K14 [workspace]
  GETTABLEKS R8 R9 K15 ["GlobalWind"]
  GETTABLEKS R7 R8 K16 ["Magnitude"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  NAMECALL R0 R0 K17 ["getText"]
  CALL R0 4 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isChangingYaw"]
  JUMPIFNOT R0 [+2]
  LOADN R0 0
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["isChangingPitch"]
  JUMPIFNOT R0 [+2]
  LOADN R0 166
  RETURN R0 1
  LOADK R0 K2 [-0.1]
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isChangingYaw"]
  JUMPIFNOT R0 [+2]
  LOADN R0 103
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["isChangingPitch"]
  JUMPIFNOT R0 [+2]
  LOADN R0 90
  RETURN R0 1
  LOADN R0 3
  RETURN R0 1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isChangingYaw"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["getWindYaw"]
  CALL R0 0 -1
  RETURN R0 -1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["isChangingPitch"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["getWindPitch"]
  CALL R0 0 -1
  RETURN R0 -1
  LOADN R1 0
  GETIMPORT R4 K5 [workspace]
  GETTABLEKS R3 R4 K6 ["GlobalWind"]
  GETTABLEKS R2 R3 K7 ["Magnitude"]
  LOADN R3 1
  JUMPIFNOTLE R2 R3 [+3]
  LOADK R1 K8 [-0.1]
  JUMP [+17]
  GETIMPORT R6 K5 [workspace]
  GETTABLEKS R5 R6 K6 ["GlobalWind"]
  GETTABLEKS R4 R5 K7 ["Magnitude"]
  FASTCALL1 MATH_LOG10 R4 [+2]
  GETIMPORT R3 K11 [math.log10]
  CALL R3 1 1
  FASTCALL2K MATH_MIN R3 K12 [+4]
  LOADK R4 K12 [3]
  GETIMPORT R2 K14 [math.min]
  CALL R2 2 1
  MOVE R1 R2
  MOVE R0 R1
  RETURN R0 1

PROTO_15:
  DUPTABLE R3 K3 [{"isEditingText", "isChangingPitch", "isChangingYaw"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["isEditingText"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["isChangingPitch"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["isChangingYaw"]
  NAMECALL R1 R0 K4 ["setState"]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["isHoldingSlider"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["setisChangingPitch"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["setisChangingYaw"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["setIsScaling"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["setWindSpeed"]
  DUPCLOSURE R1 K10 [PROTO_6]
  SETTABLEKS R1 R0 K11 ["setWindYaw"]
  DUPCLOSURE R1 K12 [PROTO_7]
  SETTABLEKS R1 R0 K13 ["setWindPitch"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["getWindPitch"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["getWindYaw"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["setCurrentValue"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["getCurrentValueText"]
  NEWCLOSURE R1 P10
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["getSliderMinValue"]
  NEWCLOSURE R1 P11
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["getSliderMaxValue"]
  NEWCLOSURE R1 P12
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["getSliderCurrentValue"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isChangingYaw"]
  JUMPIF R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["isChangingPitch"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["setCurrentValue"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["setWindSpeed"]
  LOADN R3 0
  JUMPIFNOTLT R0 R3 [+3]
  LOADN R2 0
  JUMP [+8]
  LOADN R3 232
  DIVK R4 R0 K4 [3]
  FASTCALL2 MATH_POW R3 R4 [+3]
  GETIMPORT R2 K7 [math.pow]
  CALL R2 2 1
  JUMP [0]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["sliderCount"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["sliderCount"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  JUMPIF R0 [+8]
  GETUPVAL R0 1
  DUPTABLE R2 K1 [{"isEditingText"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isEditingText"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isEditingText"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["isEditingText"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K4 [tonumber]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["setCurrentValue"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 1
  GETTABLEKS R3 R2 K6 ["textFieldCount"]
  ADDK R3 R3 K7 [1]
  SETTABLEKS R3 R2 K6 ["textFieldCount"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isEditingText"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isEditingText"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["WindspeedDisplay"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["isChangingPitch"]
  SETTABLEKS R4 R0 K4 ["isChangingPitch"]
  GETTABLEKS R4 R1 K5 ["isChangingYaw"]
  SETTABLEKS R4 R0 K5 ["isChangingYaw"]
  GETTABLEKS R5 R0 K6 ["state"]
  GETTABLEKS R4 R5 K7 ["isEditingText"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K11 [{"Size", "Position"}]
  GETTABLEKS R8 R2 K9 ["Size"]
  SETTABLEKS R8 R7 K9 ["Size"]
  GETTABLEKS R8 R2 K10 ["Position"]
  SETTABLEKS R8 R7 K10 ["Position"]
  DUPTABLE R8 K15 [{"ButtonPanel", "Slider", "Pane"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K17 [{"Layout", "Size", "Position"}]
  GETIMPORT R12 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K16 ["Layout"]
  GETIMPORT R12 K24 [UDim2.fromScale]
  LOADK R13 K25 [0.5]
  LOADK R14 K26 [0.9]
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETIMPORT R12 K24 [UDim2.fromScale]
  LOADN R13 0
  LOADK R14 K27 [-0.45]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Position"]
  DUPTABLE R12 K31 [{"Button1", "Button2", "Button3"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  GETTABLEKS R16 R2 K35 ["ButtonSize"]
  SETTABLEKS R16 R15 K9 ["Size"]
  GETTABLEKS R16 R0 K36 ["setIsScaling"]
  SETTABLEKS R16 R15 K33 ["OnClick"]
  DUPTABLE R16 K38 [{"TextLabel1"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
  GETIMPORT R20 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K39 ["TextXAlignment"]
  LOADK R22 K2 ["WindspeedDisplay"]
  LOADK R23 K46 ["Speed"]
  NAMECALL R20 R3 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K40 ["Text"]
  GETTABLEKS R20 R2 K48 ["ButtonTextSize"]
  SETTABLEKS R20 R19 K41 ["TextSize"]
  GETTABLEKS R21 R1 K5 ["isChangingYaw"]
  JUMPIF R21 [+6]
  GETTABLEKS R21 R1 K4 ["isChangingPitch"]
  JUMPIF R21 [+3]
  GETTABLEKS R20 R2 K49 ["activeLabelColor"]
  JUMP [+2]
  GETTABLEKS R20 R2 K50 ["inactiveLabelColor"]
  SETTABLEKS R20 R19 K42 ["TextColor"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["TextLabel1"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Button1"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  GETTABLEKS R16 R2 K35 ["ButtonSize"]
  SETTABLEKS R16 R15 K9 ["Size"]
  GETTABLEKS R16 R0 K51 ["setisChangingYaw"]
  SETTABLEKS R16 R15 K33 ["OnClick"]
  DUPTABLE R16 K53 [{"TextLabel2"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
  GETIMPORT R20 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K39 ["TextXAlignment"]
  LOADK R22 K2 ["WindspeedDisplay"]
  LOADK R23 K54 ["Yaw"]
  NAMECALL R20 R3 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K40 ["Text"]
  GETTABLEKS R20 R2 K48 ["ButtonTextSize"]
  SETTABLEKS R20 R19 K41 ["TextSize"]
  GETTABLEKS R21 R1 K5 ["isChangingYaw"]
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R2 K49 ["activeLabelColor"]
  JUMP [+2]
  GETTABLEKS R20 R2 K50 ["inactiveLabelColor"]
  SETTABLEKS R20 R19 K42 ["TextColor"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["TextLabel2"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K29 ["Button2"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K34 [{"LayoutOrder", "Size", "OnClick"}]
  LOADN R16 3
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  GETTABLEKS R16 R2 K35 ["ButtonSize"]
  SETTABLEKS R16 R15 K9 ["Size"]
  GETTABLEKS R16 R0 K55 ["setisChangingPitch"]
  SETTABLEKS R16 R15 K33 ["OnClick"]
  DUPTABLE R16 K57 [{"TextLabel3"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K43 [{"TextXAlignment", "Text", "TextSize", "TextColor"}]
  GETIMPORT R20 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K39 ["TextXAlignment"]
  LOADK R22 K2 ["WindspeedDisplay"]
  LOADK R23 K58 ["Pitch"]
  NAMECALL R20 R3 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K40 ["Text"]
  GETTABLEKS R20 R2 K48 ["ButtonTextSize"]
  SETTABLEKS R20 R19 K41 ["TextSize"]
  GETTABLEKS R21 R1 K4 ["isChangingPitch"]
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R2 K49 ["activeLabelColor"]
  JUMP [+2]
  GETTABLEKS R20 R2 K50 ["inactiveLabelColor"]
  SETTABLEKS R20 R19 K42 ["TextColor"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["TextLabel3"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K30 ["Button3"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["ButtonPanel"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K64 [{"Min", "Max", "Value", "Size", "Position", "OnValueChanged", "OnChangeBegan"}]
  GETTABLEKS R12 R0 K65 ["getSliderMinValue"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K59 ["Min"]
  GETTABLEKS R12 R0 K66 ["getSliderMaxValue"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K60 ["Max"]
  GETTABLEKS R12 R0 K67 ["getSliderCurrentValue"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K61 ["Value"]
  GETTABLEKS R13 R2 K13 ["Slider"]
  GETTABLEKS R12 R13 K9 ["Size"]
  SETTABLEKS R12 R11 K9 ["Size"]
  GETTABLEKS R13 R2 K13 ["Slider"]
  GETTABLEKS R12 R13 K10 ["Position"]
  SETTABLEKS R12 R11 K10 ["Position"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K62 ["OnValueChanged"]
  DUPCLOSURE R12 K68 [PROTO_17]
  CAPTURE UPVAL U4
  SETTABLEKS R12 R11 K63 ["OnChangeBegan"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Slider"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K69 [{"Size", "Position", "OnClick"}]
  GETTABLEKS R13 R2 K70 ["TextLabel"]
  GETTABLEKS R12 R13 K9 ["Size"]
  SETTABLEKS R12 R11 K9 ["Size"]
  GETTABLEKS R13 R2 K70 ["TextLabel"]
  GETTABLEKS R12 R13 K10 ["Position"]
  SETTABLEKS R12 R11 K10 ["Position"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K33 ["OnClick"]
  DUPTABLE R12 K72 [{"TextLabel", "ValueEditTextBox"}]
  NOT R13 R4
  JUMPIFNOT R13 [+21]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K75 [{"Text", "Style", "ref"}]
  GETTABLEKS R16 R0 K76 ["getCurrentValueText"]
  CALL R16 0 1
  SETTABLEKS R16 R15 K40 ["Text"]
  GETTABLEKS R17 R2 K70 ["TextLabel"]
  GETTABLEKS R16 R17 K73 ["Style"]
  SETTABLEKS R16 R15 K73 ["Style"]
  GETTABLEKS R16 R0 K77 ["textLabelRef"]
  SETTABLEKS R16 R15 K74 ["ref"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K70 ["TextLabel"]
  MOVE R13 R4
  JUMPIFNOT R13 [+27]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K80 [{"Text", "Size", "OnTextConfirmed", "OnEditCanceled"}]
  GETTABLEKS R16 R0 K76 ["getCurrentValueText"]
  CALL R16 0 1
  SETTABLEKS R16 R15 K40 ["Text"]
  GETIMPORT R16 K24 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K9 ["Size"]
  NEWCLOSURE R16 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R16 R15 K78 ["OnTextConfirmed"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K79 ["OnEditCanceled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K71 ["ValueEditTextBox"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Pane"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETTABLEKS R9 R7 K15 ["Slider"]
  GETTABLEKS R10 R7 K16 ["TextLabel"]
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K17 ["ValueEditTextBox"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Util"]
  GETTABLEKS R13 R14 K20 ["AnalyticsGlobals"]
  CALL R12 1 1
  DUPCLOSURE R13 K21 [PROTO_0]
  DUPCLOSURE R14 K22 [PROTO_1]
  GETTABLEKS R15 R1 K23 ["Component"]
  LOADK R17 K24 ["WindspeedDisplay"]
  NAMECALL R15 R15 K25 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K26 [PROTO_15]
  SETTABLEKS R16 R15 K27 ["init"]
  DUPCLOSURE R16 K28 [PROTO_21]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K29 ["render"]
  MOVE R16 R4
  DUPTABLE R17 K30 [{"Stylizer", "Localization"}]
  SETTABLEKS R6 R17 K12 ["Stylizer"]
  SETTABLEKS R5 R17 K10 ["Localization"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
