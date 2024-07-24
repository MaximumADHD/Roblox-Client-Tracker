PROTO_0:
  GETUPVAL R0 0
  JUMPIF R0 [+4]
  GETUPVAL R0 1
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["EQUALIZER"]
  JUMPIFNOTEQ R0 R1 [+29]
  GETUPVAL R0 4
  DUPTABLE R1 K7 [{"InstanceType", "LowGain", "MidGain", "HighGain", "MidRange", "Bypass"}]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["EQUALIZER"]
  SETTABLEKS R2 R1 K1 ["InstanceType"]
  GETUPVAL R2 5
  SETTABLEKS R2 R1 K2 ["LowGain"]
  GETUPVAL R2 6
  SETTABLEKS R2 R1 K3 ["MidGain"]
  GETUPVAL R2 7
  SETTABLEKS R2 R1 K4 ["HighGain"]
  GETIMPORT R2 K10 [NumberRange.new]
  GETUPVAL R3 8
  GETUPVAL R4 9
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["MidRange"]
  GETUPVAL R2 10
  SETTABLEKS R2 R1 K6 ["Bypass"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K11 ["FILTER"]
  JUMPIFNOTEQ R0 R1 [+24]
  GETUPVAL R0 4
  DUPTABLE R1 K16 [{"InstanceType", "FilterType", "Frequency", "Gain", "Q", "Bypass"}]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K11 ["FILTER"]
  SETTABLEKS R2 R1 K1 ["InstanceType"]
  GETUPVAL R2 11
  SETTABLEKS R2 R1 K12 ["FilterType"]
  GETUPVAL R2 12
  SETTABLEKS R2 R1 K13 ["Frequency"]
  GETUPVAL R2 13
  SETTABLEKS R2 R1 K14 ["Gain"]
  GETUPVAL R2 14
  SETTABLEKS R2 R1 K15 ["Q"]
  GETUPVAL R2 15
  SETTABLEKS R2 R1 K6 ["Bypass"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getYMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getYMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getYMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getYMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getYMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getYMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getXMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 2
  JUMPIFNOTLT R2 R1 [+4]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getXMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 2
  JUMPIFNOTLT R1 R2 [+4]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["LowGain"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["MidGain"]
  CALL R1 1 0
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K2 ["HighGain"]
  CALL R1 1 0
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K3 ["MidRange"]
  GETTABLEKS R2 R3 K4 ["Min"]
  CALL R1 1 0
  GETUPVAL R1 4
  GETTABLEKS R3 R0 K3 ["MidRange"]
  GETTABLEKS R2 R3 K5 ["Max"]
  CALL R1 1 0
  GETUPVAL R1 5
  GETTABLEKS R2 R0 K6 ["Bypass"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getXMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getYMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getYMax"]
  CALL R4 0 -1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K4 [math.clamp]
  CALL R1 -1 1
  MOVE R0 R1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  MOVE R2 R0
  LOADK R3 K0 [0.1]
  LOADN R4 10
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K3 [math.clamp]
  CALL R1 3 1
  MOVE R0 R1
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["FilterType"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["Frequency"]
  CALL R1 1 0
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K2 ["Gain"]
  CALL R1 1 0
  GETUPVAL R1 3
  GETTABLEKS R2 R0 K3 ["Q"]
  CALL R1 1 0
  GETUPVAL R1 4
  GETTABLEKS R2 R0 K4 ["Bypass"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  RETURN R0 0

PROTO_15:
  RETURN R0 0

PROTO_16:
  GETTABLEKS R2 R0 K0 ["InstanceType"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["LowGain"]
  CALL R3 1 2
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K2 ["MidGain"]
  CALL R5 1 2
  GETUPVAL R7 0
  GETTABLEKS R8 R0 K3 ["HighGain"]
  CALL R7 1 2
  GETUPVAL R9 0
  GETTABLEKS R11 R0 K4 ["MidRange"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R0 K4 ["MidRange"]
  GETTABLEKS R10 R11 K5 ["Min"]
  JUMP [+1]
  LOADN R10 0
  CALL R9 1 2
  GETUPVAL R11 0
  GETTABLEKS R13 R0 K4 ["MidRange"]
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R0 K4 ["MidRange"]
  GETTABLEKS R12 R13 K6 ["Max"]
  JUMP [+1]
  LOADN R12 0
  CALL R11 1 2
  GETUPVAL R13 0
  GETTABLEKS R14 R0 K7 ["Bypass"]
  CALL R13 1 2
  GETUPVAL R15 0
  GETTABLEKS R16 R0 K8 ["FilterType"]
  CALL R15 1 2
  GETUPVAL R17 0
  GETTABLEKS R18 R0 K9 ["Frequency"]
  CALL R17 1 2
  GETUPVAL R19 0
  GETTABLEKS R20 R0 K10 ["Gain"]
  CALL R19 1 2
  GETUPVAL R21 0
  GETTABLEKS R22 R0 K11 ["Q"]
  CALL R21 1 2
  GETUPVAL R23 0
  GETTABLEKS R24 R0 K7 ["Bypass"]
  CALL R23 1 2
  GETUPVAL R25 0
  LOADB R26 0
  CALL R25 1 2
  GETUPVAL R27 1
  NEWCLOSURE R28 P0
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R23
  NEWTABLE R29 0 11
  MOVE R30 R3
  MOVE R31 R5
  MOVE R32 R7
  MOVE R33 R9
  MOVE R34 R11
  MOVE R35 R13
  MOVE R36 R15
  MOVE R37 R17
  MOVE R38 R19
  MOVE R39 R21
  MOVE R40 R23
  SETLIST R29 R30 11 [1]
  CALL R27 2 0
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K12 ["EQUALIZER"]
  JUMPIFNOTEQ R2 R27 [+113]
  DUPTABLE R27 K26 [{"lowGain", "midGain", "highGain", "lowThreshold", "highThreshold", "bypass", "setLowGain", "setMidGain", "setHighGain", "setLowThreshold", "setHighThreshold", "setBypass", "reset"}]
  SETTABLEKS R3 R27 K13 ["lowGain"]
  SETTABLEKS R5 R27 K14 ["midGain"]
  SETTABLEKS R7 R27 K15 ["highGain"]
  SETTABLEKS R9 R27 K16 ["lowThreshold"]
  SETTABLEKS R11 R27 K17 ["highThreshold"]
  SETTABLEKS R13 R27 K18 ["bypass"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  NEWTABLE R30 0 1
  MOVE R31 R4
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K19 ["setLowGain"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R6
  NEWTABLE R30 0 1
  MOVE R31 R6
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K20 ["setMidGain"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  NEWTABLE R30 0 1
  MOVE R31 R8
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K21 ["setHighGain"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P4
  CAPTURE UPVAL U4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  NEWTABLE R30 0 2
  MOVE R31 R10
  MOVE R32 R12
  SETLIST R30 R31 2 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K22 ["setLowThreshold"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P5
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  NEWTABLE R30 0 2
  MOVE R31 R10
  MOVE R32 R12
  SETLIST R30 R31 2 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K23 ["setHighThreshold"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P6
  CAPTURE VAL R14
  NEWTABLE R30 0 1
  MOVE R31 R14
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K24 ["setBypass"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R14
  NEWTABLE R30 0 6
  MOVE R31 R4
  MOVE R32 R6
  MOVE R33 R8
  MOVE R34 R10
  MOVE R35 R12
  MOVE R36 R14
  SETLIST R30 R31 6 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K25 ["reset"]
  RETURN R27 1
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K27 ["FILTER"]
  JUMPIFNOTEQ R2 R27 [+90]
  DUPTABLE R27 K36 [{"filterType", "frequency", "gain", "q", "bypass", "setFilterType", "setFrequency", "setGain", "setQ", "setBypass", "reset"}]
  SETTABLEKS R15 R27 K28 ["filterType"]
  SETTABLEKS R17 R27 K29 ["frequency"]
  SETTABLEKS R19 R27 K30 ["gain"]
  SETTABLEKS R21 R27 K31 ["q"]
  SETTABLEKS R23 R27 K18 ["bypass"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P8
  CAPTURE VAL R16
  NEWTABLE R30 0 1
  MOVE R31 R16
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K32 ["setFilterType"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P9
  CAPTURE UPVAL U4
  CAPTURE VAL R18
  NEWTABLE R30 0 1
  MOVE R31 R18
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K33 ["setFrequency"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P10
  CAPTURE UPVAL U4
  CAPTURE VAL R20
  NEWTABLE R30 0 1
  MOVE R31 R20
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K34 ["setGain"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P11
  CAPTURE VAL R22
  NEWTABLE R30 0 2
  MOVE R31 R21
  MOVE R32 R22
  SETLIST R30 R31 2 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K35 ["setQ"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P12
  CAPTURE VAL R24
  NEWTABLE R30 0 1
  MOVE R31 R24
  SETLIST R30 R31 1 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K24 ["setBypass"]
  GETUPVAL R28 3
  NEWCLOSURE R29 P13
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R24
  NEWTABLE R30 0 5
  MOVE R31 R16
  MOVE R32 R18
  MOVE R33 R20
  MOVE R34 R22
  MOVE R35 R24
  SETLIST R30 R31 5 [1]
  CALL R28 2 1
  SETTABLEKS R28 R27 K25 ["reset"]
  RETURN R27 1
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K37 ["NO_INSTANCE"]
  JUMPIFEQ R2 R29 [+2]
  LOADB R28 0 +1
  LOADB R28 1
  FASTCALL2K ASSERT R28 K38 [+4]
  LOADK R29 K38 ["unsupported instance type"]
  GETIMPORT R27 K40 [assert]
  CALL R27 2 0
  DUPTABLE R27 K41 [{"bypass", "setBypass", "reset"}]
  LOADB R28 0
  SETTABLEKS R28 R27 K18 ["bypass"]
  DUPCLOSURE R28 K42 [PROTO_14]
  SETTABLEKS R28 R27 K24 ["setBypass"]
  DUPCLOSURE R28 K43 [PROTO_15]
  SETTABLEKS R28 R27 K25 ["reset"]
  RETURN R27 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useCallback"]
  GETTABLEKS R3 R1 K9 ["useEffect"]
  GETTABLEKS R4 R1 K10 ["useState"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["PlotUtil"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_16]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
