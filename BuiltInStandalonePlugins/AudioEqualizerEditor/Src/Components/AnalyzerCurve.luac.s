PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["viewToAbs"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["makeControlPoint"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["stopAnalyzing"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["startAnalyzing"]
  GETUPVAL R1 2
  CALL R0 1 0
  DUPCLOSURE R0 K2 [PROTO_1]
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
  NEWTABLE R0 0 2
  GETIMPORT R2 K2 [Vector2.new]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getYMin"]
  CALL R4 0 -1
  CALL R2 -1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["PlotAbsoluteSize"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["viewToAbs"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["makeControlPoint"]
  MOVE R6 R4
  CALL R5 1 1
  MOVE R1 R5
  GETUPVAL R2 3
  GETIMPORT R3 K2 [Vector2.new]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getXMin"]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getYMin"]
  CALL R5 0 -1
  CALL R3 -1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["PlotAbsoluteSize"]
  CALL R2 2 -1
  SETLIST R0 R1 -1 [1]
  RETURN R0 1

PROTO_4:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K0 [0] [+3]
  GETUPVAL R2 1
  RETURN R2 1
  LOADN R4 0
  GETUPVAL R2 2
  LOADN R3 1
  FORNPREP R2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["viewToPlot"]
  GETIMPORT R7 K4 [Vector2.new]
  SUBK R9 R4 K5 [0.5]
  GETUPVAL R10 2
  DIV R8 R9 R10
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K6 ["X"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K1 ["viewToPlot"]
  GETIMPORT R8 K4 [Vector2.new]
  ADDK R10 R4 K5 [0.5]
  GETUPVAL R11 2
  DIV R9 R10 R11
  LOADN R10 0
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K6 ["X"]
  MUL R9 R1 R5
  DIVK R8 R9 K7 [24000]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K10 [math.floor]
  CALL R7 1 1
  MUL R10 R1 R6
  DIVK R9 R10 K7 [24000]
  FASTCALL1 MATH_CEIL R9 [+2]
  GETIMPORT R8 K12 [math.ceil]
  CALL R8 1 1
  LOADN R9 0
  MOVE R12 R7
  MOVE R10 R8
  LOADN R11 1
  FORNPREP R10
  JUMPIFLE R1 R12 [+55]
  LOADN R15 192
  MUL R14 R15 R12
  DIV R13 R14 R1
  LOADN R16 192
  ADDK R17 R12 K13 [1]
  MUL R15 R16 R17
  DIV R14 R15 R1
  FASTCALL2 MATH_MAX R5 R13 [+5]
  MOVE R16 R5
  MOVE R17 R13
  GETIMPORT R15 K15 [math.max]
  CALL R15 2 1
  FASTCALL2 MATH_MIN R6 R14 [+5]
  MOVE R17 R6
  MOVE R18 R14
  GETIMPORT R16 K17 [math.min]
  CALL R16 2 1
  JUMPIFLE R16 R15 [+32]
  SUB R18 R15 R13
  SUB R19 R14 R13
  DIV R17 R18 R19
  GETUPVAL R19 0
  ADDK R20 R12 K13 [1]
  GETTABLE R18 R19 R20
  GETUPVAL R20 0
  ADDK R21 R12 K18 [2]
  GETTABLE R19 R20 R21
  JUMPIFNOTEQKNIL R19 [+2]
  LOADN R19 0
  SUBRK R22 R13 K17 [math.min]
  MUL R21 R18 R22
  MUL R22 R19 R17
  ADD R20 R21 R22
  SUB R21 R6 R5
  SUB R22 R14 R13
  SUB R23 R16 R15
  DIV R24 R23 R21
  DIV R26 R21 R22
  FASTCALL2K MATH_MIN R26 K13 [+4]
  LOADK R27 K13 [1]
  GETIMPORT R25 K17 [math.min]
  CALL R25 2 1
  MUL R28 R20 R25
  MUL R27 R28 R24
  MULK R26 R27 K19 [5]
  ADD R9 R9 R26
  FORNLOOP R10
  LOADN R12 0
  LOADN R13 1
  FASTCALL3 MATH_CLAMP R9 R12 R13
  MOVE R11 R9
  GETIMPORT R10 K21 [math.clamp]
  CALL R10 3 1
  MOVE R9 R10
  MOVE R11 R0
  GETUPVAL R12 4
  GETIMPORT R13 K4 [Vector2.new]
  GETUPVAL R15 2
  DIV R14 R4 R15
  SUBRK R15 R13 K9 ["floor"]
  CALL R13 2 1
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K22 ["PlotAbsoluteSize"]
  CALL R12 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K25 [table.insert]
  CALL R10 -1 0
  FORNLOOP R2
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K0 ["Enabled"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETUPVAL R3 3
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETTABLEKS R5 R0 K0 ["Enabled"]
  JUMPIFNOT R5 [+17]
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 9
  DUPTABLE R7 K4 [{"ControlPoints", "Tag"}]
  GETTABLEKS R9 R0 K0 ["Enabled"]
  JUMPIFNOT R9 [+2]
  MOVE R8 R4
  JUMPIF R8 [+1]
  MOVE R8 R3
  SETTABLEKS R8 R7 K2 ["ControlPoints"]
  LOADK R8 K5 ["AnalyzerCurve"]
  SETTABLEKS R8 R7 K3 ["Tag"]
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AudioEqualizerEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useEffect"]
  GETTABLEKS R4 R2 K10 ["useMemo"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K12 ["Path2DWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R1 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["AnalyzerUtil"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R1 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K16 ["Path2DUtil"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R1 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K17 ["PlotUtil"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R1 K18 ["Bin"]
  GETTABLEKS R12 R13 K19 ["Common"]
  GETTABLEKS R11 R12 K20 ["defineLuaFlags"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K21 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
  CALL R11 0 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  DUPCLOSURE R13 K23 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R13 1
