PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Value"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChanged"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R2 0
  CALL R1 1 1
  SETTABLEKS R0 R1 K3 ["MaterialIndex"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["OnChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R2 0
  CALL R1 1 1
  GETIMPORT R2 K2 [table.clone]
  GETUPVAL R3 1
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["MaterialList"]
  GETTABLEKS R2 R1 K3 ["MaterialList"]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["join"]
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  MOVE R6 R0
  CALL R4 2 1
  SETTABLE R4 R2 R3
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K2 [table.clone]
  GETUPVAL R3 0
  CALL R2 1 1
  JUMPIFNOT R0 [+2]
  SETTABLEKS R0 R2 K3 ["Min"]
  JUMPIFNOT R1 [+2]
  SETTABLEKS R1 R2 K4 ["Max"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["OnChanged"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 1
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R2 1
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["MaterialList"]
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  GETUPVAL R4 2
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+8]
  GETIMPORT R1 K2 [table.clone]
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  GETUPVAL R4 2
  GETTABLE R2 R3 R4
  CALL R1 1 1
  JUMP [+22]
  DUPTABLE R1 K10 [{"Priority", "Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  LENGTH R2 R3
  SETTABLEKS R2 R1 K4 ["Priority"]
  GETIMPORT R2 K13 [Enum.Material.Grass]
  SETTABLEKS R2 R1 K5 ["Material"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["MinHeight"]
  LOADN R2 1
  SETTABLEKS R2 R1 K7 ["MaxHeight"]
  LOADN R2 0
  SETTABLEKS R2 R1 K8 ["MinSlope"]
  LOADN R2 20
  SETTABLEKS R2 R1 K9 ["MaxSlope"]
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K15 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["MaterialList"]
  LENGTH R2 R3
  SETTABLEKS R2 R0 K16 ["MaterialIndex"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K17 ["OnChanged"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 1
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R2 1
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["MaterialList"]
  GETIMPORT R1 K5 [table.remove]
  GETTABLEKS R2 R0 K3 ["MaterialList"]
  GETUPVAL R3 2
  CALL R1 2 0
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K3 ["MaterialList"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K3 ["MaterialList"]
  GETTABLE R4 R5 R3
  SUBK R5 R3 K6 [1]
  SETTABLEKS R5 R4 K7 ["Priority"]
  FORNLOOP R1
  GETUPVAL R2 2
  JUMPIFNOTEQKN R2 K6 [1] [+3]
  GETUPVAL R1 2
  JUMP [+2]
  GETUPVAL R2 2
  SUBK R1 R2 K6 [1]
  SETTABLEKS R1 R0 K8 ["MaterialIndex"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K9 ["OnChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["Min"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K1 ["Max"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Min"]
  GETTABLEKS R3 R0 K1 ["Max"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADK R3 K0 ["ElevationRenderer"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K2 ["Value"]
  CALL R2 1 2
  GETTABLEKS R4 R2 K3 ["Min"]
  GETTABLEKS R5 R2 K4 ["Max"]
  GETTABLEKS R6 R2 K5 ["Unit"]
  GETTABLEKS R7 R2 K6 ["MaterialIndex"]
  GETTABLEKS R8 R0 K7 ["Schema"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["new"]
  CALL R9 0 1
  GETUPVAL R10 3
  CALL R10 0 1
  NEWTABLE R11 2 0
  GETIMPORT R12 K11 [table.clone]
  GETTABLEKS R13 R2 K12 ["MaterialList"]
  CALL R12 1 1
  GETUPVAL R13 4
  NEWCLOSURE R14 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R15 0 1
  GETTABLEKS R16 R0 K2 ["Value"]
  SETLIST R15 R16 1 [1]
  CALL R13 2 0
  GETUPVAL R13 5
  NEWCLOSURE R14 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R15 0 2
  MOVE R16 R2
  GETTABLEKS R17 R0 K13 ["OnChanged"]
  SETLIST R15 R16 2 [1]
  CALL R13 2 1
  GETUPVAL R14 5
  NEWCLOSURE R15 P2
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R16 0 3
  MOVE R17 R2
  MOVE R18 R12
  MOVE R19 R7
  SETLIST R16 R17 3 [1]
  CALL R14 2 1
  GETUPVAL R15 5
  NEWCLOSURE R16 P3
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  NEWTABLE R17 0 3
  MOVE R18 R2
  MOVE R19 R12
  MOVE R20 R7
  SETLIST R17 R18 3 [1]
  CALL R15 2 1
  GETUPVAL R16 5
  NEWCLOSURE R17 P4
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R18 0 2
  MOVE R19 R2
  GETTABLEKS R20 R0 K13 ["OnChanged"]
  SETLIST R18 R19 2 [1]
  CALL R16 2 1
  GETUPVAL R17 5
  NEWCLOSURE R18 P5
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R0
  NEWTABLE R19 0 4
  MOVE R20 R2
  MOVE R21 R12
  MOVE R22 R7
  GETTABLEKS R23 R0 K13 ["OnChanged"]
  SETLIST R19 R20 4 [1]
  CALL R17 2 1
  GETUPVAL R18 5
  NEWCLOSURE R19 P6
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R0
  NEWTABLE R20 0 4
  MOVE R21 R2
  MOVE R22 R12
  MOVE R23 R7
  GETTABLEKS R24 R0 K13 ["OnChanged"]
  SETLIST R20 R21 4 [1]
  CALL R18 2 1
  GETTABLE R19 R12 R7
  GETUPVAL R21 7
  GETTABLEKS R20 R21 K14 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K18 [{"LayoutOrder", "Max", "MaxHeight", "Min", "MinHeight", "OnChanged", "Unit"}]
  NAMECALL R23 R9 K19 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K15 ["LayoutOrder"]
  SETTABLEKS R5 R22 K4 ["Max"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R23 R19 K16 ["MaxHeight"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K16 ["MaxHeight"]
  SETTABLEKS R4 R22 K3 ["Min"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R23 R19 K17 ["MinHeight"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K17 ["MinHeight"]
  NEWCLOSURE R23 P7
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R23 R22 K13 ["OnChanged"]
  SETTABLEKS R6 R22 K5 ["Unit"]
  CALL R20 2 1
  SETTABLEKS R20 R11 K20 ["RangeInputs"]
  MOVE R20 R12
  LOADNIL R21
  LOADNIL R22
  FORGPREP R20
  MOVE R25 R10
  GETTABLEKS R27 R24 K21 ["Material"]
  GETTABLEKS R26 R27 K22 ["Name"]
  CALL R25 1 1
  GETUPVAL R27 7
  GETTABLEKS R26 R27 K14 ["createElement"]
  GETUPVAL R27 9
  DUPTABLE R28 K28 [{"CanDelete", "LayoutOrder", "Material", "Max", "MaxHeight", "Min", "MinHeight", "OnChanged", "OnCommit", "OnRemove", "OnSelect", "Selected"}]
  LENGTH R30 R12
  LOADN R31 1
  JUMPIFLT R31 R30 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  SETTABLEKS R29 R28 K23 ["CanDelete"]
  NAMECALL R29 R9 K19 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K15 ["LayoutOrder"]
  GETTABLEKS R29 R24 K21 ["Material"]
  SETTABLEKS R29 R28 K21 ["Material"]
  SETTABLEKS R5 R28 K4 ["Max"]
  GETTABLEKS R29 R24 K16 ["MaxHeight"]
  SETTABLEKS R29 R28 K16 ["MaxHeight"]
  SETTABLEKS R4 R28 K3 ["Min"]
  GETTABLEKS R29 R24 K17 ["MinHeight"]
  SETTABLEKS R29 R28 K17 ["MinHeight"]
  SETTABLEKS R15 R28 K13 ["OnChanged"]
  SETTABLEKS R13 R28 K24 ["OnCommit"]
  SETTABLEKS R18 R28 K25 ["OnRemove"]
  NEWCLOSURE R29 P8
  CAPTURE VAL R14
  CAPTURE VAL R23
  SETTABLEKS R29 R28 K26 ["OnSelect"]
  JUMPIFEQ R7 R23 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  SETTABLEKS R29 R28 K27 ["Selected"]
  CALL R26 2 1
  SETTABLE R26 R11 R25
  FORGLOOP R20 2 [-60]
  LENGTH R20 R12
  GETUPVAL R22 10
  GETTABLEKS R21 R22 K29 ["MaxMaterialListSize"]
  JUMPIFNOTLT R20 R21 [+106]
  GETUPVAL R21 7
  GETTABLEKS R20 R21 K14 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K34 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
  GETIMPORT R23 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K30 ["AutomaticSize"]
  GETIMPORT R23 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K31 ["Layout"]
  NAMECALL R23 R9 K19 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K15 ["LayoutOrder"]
  GETTABLEKS R24 R1 K32 ["Spacing"]
  SUBK R23 R24 K41 [2]
  SETTABLEKS R23 R22 K32 ["Spacing"]
  GETIMPORT R23 K44 [UDim2.fromScale]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K33 ["Size"]
  DUPTABLE R23 K47 [{"MaterialSliderPlaceHolder", "Add"}]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K14 ["createElement"]
  GETUPVAL R25 11
  DUPTABLE R26 K48 [{"LayoutOrder", "Size"}]
  NAMECALL R27 R9 K19 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K15 ["LayoutOrder"]
  GETTABLEKS R27 R1 K49 ["SliderSize"]
  SETTABLEKS R27 R26 K33 ["Size"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K45 ["MaterialSliderPlaceHolder"]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K14 ["createElement"]
  GETUPVAL R25 12
  DUPTABLE R26 K52 [{"OnClick", "LayoutOrder", "Size", "Style"}]
  SETTABLEKS R17 R26 K50 ["OnClick"]
  NAMECALL R27 R9 K19 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K15 ["LayoutOrder"]
  GETTABLEKS R27 R1 K53 ["MaterialPreviewSize"]
  SETTABLEKS R27 R26 K33 ["Size"]
  LOADK R27 K54 ["RoundSubtle"]
  SETTABLEKS R27 R26 K51 ["Style"]
  NEWTABLE R27 0 1
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K14 ["createElement"]
  GETUPVAL R29 13
  DUPTABLE R30 K57 [{"AnchorPoint", "Position", "Size", "Style"}]
  GETIMPORT R31 K59 [Vector2.new]
  LOADK R32 K60 [0.5]
  LOADK R33 K60 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K55 ["AnchorPoint"]
  GETIMPORT R31 K44 [UDim2.fromScale]
  LOADK R32 K60 [0.5]
  LOADK R33 K60 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K56 ["Position"]
  GETTABLEKS R31 R1 K61 ["ButtonSize"]
  SETTABLEKS R31 R30 K33 ["Size"]
  GETTABLEKS R31 R1 K62 ["AddStyle"]
  SETTABLEKS R31 R30 K51 ["Style"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETTABLEKS R24 R23 K46 ["Add"]
  CALL R20 3 1
  SETTABLEKS R20 R11 K63 ["AddMaterial"]
  LOADN R21 30
  LENGTH R24 R12
  ADDK R23 R24 K64 [1]
  LOADN R24 1
  LOADN R25 5
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R22 K67 [math.clamp]
  CALL R22 3 1
  MUL R20 R21 R22
  GETUPVAL R22 7
  GETTABLEKS R21 R22 K14 ["createElement"]
  LOADK R22 K68 ["Frame"]
  DUPTABLE R23 K70 [{"AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R24 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K30 ["AutomaticSize"]
  LOADN R24 1
  SETTABLEKS R24 R23 K69 ["BackgroundTransparency"]
  DUPTABLE R24 K74 [{"XAxis", "YAxis", "Sliders"}]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K14 ["createElement"]
  LOADK R26 K68 ["Frame"]
  DUPTABLE R27 K75 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K69 ["BackgroundTransparency"]
  GETIMPORT R28 K77 [UDim2.fromOffset]
  MOVE R29 R20
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K33 ["Size"]
  GETIMPORT R28 K77 [UDim2.fromOffset]
  LOADN R29 50
  LOADN R30 200
  CALL R28 2 1
  SETTABLEKS R28 R27 K56 ["Position"]
  DUPTABLE R28 K79 [{"Separator"}]
  GETUPVAL R30 7
  GETTABLEKS R29 R30 K14 ["createElement"]
  GETUPVAL R30 14
  DUPTABLE R31 K81 [{"DominantAxis", "Position"}]
  GETIMPORT R32 K83 [Enum.DominantAxis.Width]
  SETTABLEKS R32 R31 K80 ["DominantAxis"]
  GETIMPORT R32 K77 [UDim2.fromOffset]
  DIVK R33 R20 K41 [2]
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K56 ["Position"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K78 ["Separator"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K71 ["XAxis"]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K14 ["createElement"]
  LOADK R26 K68 ["Frame"]
  DUPTABLE R27 K75 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K69 ["BackgroundTransparency"]
  GETIMPORT R28 K77 [UDim2.fromOffset]
  LOADN R29 5
  LOADN R30 200
  CALL R28 2 1
  SETTABLEKS R28 R27 K33 ["Size"]
  GETIMPORT R28 K77 [UDim2.fromOffset]
  LOADN R29 50
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K56 ["Position"]
  DUPTABLE R28 K79 [{"Separator"}]
  GETUPVAL R30 7
  GETTABLEKS R29 R30 K14 ["createElement"]
  GETUPVAL R30 14
  DUPTABLE R31 K81 [{"DominantAxis", "Position"}]
  GETIMPORT R32 K85 [Enum.DominantAxis.Height]
  SETTABLEKS R32 R31 K80 ["DominantAxis"]
  GETIMPORT R32 K77 [UDim2.fromOffset]
  LOADN R33 0
  LOADN R34 100
  CALL R32 2 1
  SETTABLEKS R32 R31 K56 ["Position"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K78 ["Separator"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K72 ["YAxis"]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K14 ["createElement"]
  GETUPVAL R26 11
  DUPTABLE R27 K89 [{"Layout", "VerticalAlignment", "HorizontalAlignment", "Padding", "Spacing"}]
  GETIMPORT R28 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K31 ["Layout"]
  GETIMPORT R28 K93 [Enum.VerticalAlignment.Top]
  SETTABLEKS R28 R27 K86 ["VerticalAlignment"]
  GETIMPORT R28 K95 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R28 R27 K87 ["HorizontalAlignment"]
  DUPTABLE R28 K97 [{"Top", "Bottom"}]
  GETTABLEKS R32 R1 K98 ["TextBoxSize"]
  GETTABLEKS R31 R32 K99 ["Y"]
  GETTABLEKS R30 R31 K100 ["Offset"]
  DIVK R29 R30 K41 [2]
  SETTABLEKS R29 R28 K92 ["Top"]
  GETTABLEKS R32 R1 K98 ["TextBoxSize"]
  GETTABLEKS R31 R32 K99 ["Y"]
  GETTABLEKS R30 R31 K100 ["Offset"]
  DIVK R29 R30 K41 [2]
  SETTABLEKS R29 R28 K96 ["Bottom"]
  SETTABLEKS R28 R27 K88 ["Padding"]
  GETTABLEKS R28 R1 K32 ["Spacing"]
  SETTABLEKS R28 R27 K32 ["Spacing"]
  MOVE R28 R11
  CALL R25 3 1
  SETTABLEKS R25 R24 K73 ["Sliders"]
  CALL R21 3 -1
  RETURN R21 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["useCallback"]
  GETTABLEKS R5 R3 K11 ["useEffect"]
  GETTABLEKS R6 R3 K12 ["useState"]
  GETTABLEKS R8 R2 K13 ["UI"]
  GETTABLEKS R7 R8 K14 ["Button"]
  GETTABLEKS R9 R2 K13 ["UI"]
  GETTABLEKS R8 R9 K15 ["Image"]
  GETTABLEKS R10 R2 K13 ["UI"]
  GETTABLEKS R9 R10 K16 ["Pane"]
  GETTABLEKS R11 R2 K13 ["UI"]
  GETTABLEKS R10 R11 K17 ["Separator"]
  GETTABLEKS R12 R2 K18 ["ContextServices"]
  GETTABLEKS R11 R12 K19 ["Stylizer"]
  GETTABLEKS R13 R2 K20 ["Util"]
  GETTABLEKS R12 R13 K21 ["LayoutOrderIterator"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K22 ["RangeInputs"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K23 ["MaterialSlider"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K24 ["Src"]
  GETTABLEKS R17 R18 K25 ["Resources"]
  GETTABLEKS R16 R17 K26 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K24 ["Src"]
  GETTABLEKS R18 R19 K25 ["Resources"]
  GETTABLEKS R17 R18 K27 ["Theme"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R0 K24 ["Src"]
  GETTABLEKS R18 R19 K28 ["Types"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K20 ["Util"]
  GETTABLEKS R19 R20 K29 ["CreateUniqueKey"]
  CALL R18 1 1
  DUPCLOSURE R19 K30 [PROTO_9]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  RETURN R19 1
