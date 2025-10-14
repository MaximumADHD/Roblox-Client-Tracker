PROTO_0:
  NOT R1 R0
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_0]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K2 [{"Color3", "Transparency"}]
  GETIMPORT R2 K4 [Color3.fromHSV]
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["Color3"]
  GETTABLEN R2 R0 1
  SETTABLEKS R2 R1 K1 ["Transparency"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R4 R1 K0 ["Color"]
  GETTABLEKS R3 R4 K1 ["Surface"]
  GETTABLEKS R2 R3 K2 ["Surface_100"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["joinBindings"]
  NEWTABLE R4 0 3
  GETTABLEKS R5 R0 K4 ["transparency"]
  GETTABLEKS R6 R0 K5 ["hue"]
  GETTABLEKS R7 R0 K6 ["saturation"]
  SETLIST R4 R5 3 [1]
  CALL R3 1 1
  DUPCLOSURE R5 K7 [PROTO_2]
  NAMECALL R3 R3 K8 ["map"]
  CALL R3 2 1
  GETUPVAL R4 2
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K13 [{"Size", "backgroundStyle", "tag"}]
  GETIMPORT R8 K16 [UDim2.fromOffset]
  LOADN R9 200
  LOADN R10 200
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Size"]
  SETTABLEKS R2 R7 K11 ["backgroundStyle"]
  LOADK R8 K17 ["padding-large col align-x-center align-y-center"]
  SETTABLEKS R8 R7 K12 ["tag"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K18 [{"backgroundStyle", "tag"}]
  SETTABLEKS R3 R10 K11 ["backgroundStyle"]
  LOADK R11 K19 ["size-2000 col align-x-center align-y-center"]
  SETTABLEKS R11 R10 K12 ["tag"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K18 [{"backgroundStyle", "tag"}]
  GETUPVAL R15 4
  JUMPIFNOT R15 [+2]
  MOVE R14 R4
  JUMP [+1]
  MOVE R14 R3
  SETTABLEKS R14 R13 K11 ["backgroundStyle"]
  LOADK R14 K20 ["size-1000"]
  SETTABLEKS R14 R13 K12 ["tag"]
  DUPTABLE R14 K24 [{"Top", "Right", "Bottom"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K26 [{"Size", "Position", "tag"}]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K10 ["Size"]
  GETIMPORT R18 K16 [UDim2.fromOffset]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K25 ["Position"]
  LOADK R18 K29 ["bg-system-emphasis"]
  SETTABLEKS R18 R17 K12 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Top"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K26 [{"Size", "Position", "tag"}]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 0
  LOADN R20 1
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K10 ["Size"]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 1
  LOADN R20 255
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K25 ["Position"]
  LOADK R18 K29 ["bg-system-emphasis"]
  SETTABLEKS R18 R17 K12 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Right"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K26 [{"Size", "Position", "tag"}]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K10 ["Size"]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  LOADN R22 255
  CALL R18 4 1
  SETTABLEKS R18 R17 K25 ["Position"]
  LOADK R18 K29 ["bg-system-emphasis"]
  SETTABLEKS R18 R17 K12 ["tag"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Bottom"]
  CALL R11 3 -1
  CALL R8 -1 -1
  CALL R5 -1 -1
  RETURN R5 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useBinding"]
  LOADK R2 K1 [0.5]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useBinding"]
  LOADN R4 0
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useBinding"]
  LOADN R6 0
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["useState"]
  LOADB R8 1
  CALL R7 1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K5 [{"tag"}]
  LOADK R12 K6 ["auto-xy col gap-large"]
  SETTABLEKS R12 R11 K4 ["tag"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K11 [{"label", "isChecked", "onActivated", "size"}]
  LOADK R15 K12 ["Use cumulative background"]
  SETTABLEKS R15 R14 K7 ["label"]
  SETTABLEKS R7 R14 K8 ["isChecked"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K9 ["onActivated"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K13 ["XSmall"]
  SETTABLEKS R15 R14 K10 ["size"]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K5 [{"tag"}]
  LOADK R16 K14 ["auto-xy col gap-medium"]
  SETTABLEKS R16 R15 K4 ["tag"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K17 [{"LayoutOrder", "Text", "tag"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K15 ["LayoutOrder"]
  LOADK R19 K18 ["Semi-transparent element background"]
  SETTABLEKS R19 R18 K16 ["Text"]
  LOADK R19 K19 ["auto-xy"]
  SETTABLEKS R19 R18 K4 ["tag"]
  CALL R16 2 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K3 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K20 [{"LayoutOrder", "tag"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  LOADK R20 K21 ["size-2600-0 auto-y row gap-large"]
  SETTABLEKS R20 R19 K4 ["tag"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K22 [{"Text", "size"}]
  LOADK R23 K23 ["Transparency"]
  SETTABLEKS R23 R22 K16 ["Text"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K24 ["Medium"]
  SETTABLEKS R23 R22 K10 ["size"]
  CALL R20 2 1
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K3 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
  SETTABLEKS R1 R23 K25 ["value"]
  SETTABLEKS R2 R23 K26 ["onValueChanged"]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K24 ["Medium"]
  SETTABLEKS R24 R23 K10 ["size"]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K29 ["Always"]
  SETTABLEKS R24 R23 K27 ["knobVisibility"]
  CALL R21 2 -1
  CALL R17 -1 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K3 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K20 [{"LayoutOrder", "tag"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K15 ["LayoutOrder"]
  LOADK R21 K21 ["size-2600-0 auto-y row gap-large"]
  SETTABLEKS R21 R20 K4 ["tag"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K3 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K22 [{"Text", "size"}]
  LOADK R24 K30 ["Hue"]
  SETTABLEKS R24 R23 K16 ["Text"]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K24 ["Medium"]
  SETTABLEKS R24 R23 K10 ["size"]
  CALL R21 2 1
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K3 ["createElement"]
  GETUPVAL R23 6
  DUPTABLE R24 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
  SETTABLEKS R3 R24 K25 ["value"]
  SETTABLEKS R4 R24 K26 ["onValueChanged"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K24 ["Medium"]
  SETTABLEKS R25 R24 K10 ["size"]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K29 ["Always"]
  SETTABLEKS R25 R24 K27 ["knobVisibility"]
  CALL R22 2 -1
  CALL R18 -1 1
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K20 [{"LayoutOrder", "tag"}]
  LOADN R22 4
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  LOADK R22 K21 ["size-2600-0 auto-y row gap-large"]
  SETTABLEKS R22 R21 K4 ["tag"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K3 ["createElement"]
  GETUPVAL R23 5
  DUPTABLE R24 K22 [{"Text", "size"}]
  LOADK R25 K31 ["Saturation"]
  SETTABLEKS R25 R24 K16 ["Text"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K24 ["Medium"]
  SETTABLEKS R25 R24 K10 ["size"]
  CALL R22 2 1
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K3 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K28 [{"value", "onValueChanged", "size", "knobVisibility"}]
  SETTABLEKS R5 R25 K25 ["value"]
  SETTABLEKS R6 R25 K26 ["onValueChanged"]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K24 ["Medium"]
  SETTABLEKS R26 R25 K10 ["size"]
  GETUPVAL R27 7
  GETTABLEKS R26 R27 K29 ["Always"]
  SETTABLEKS R26 R25 K27 ["knobVisibility"]
  CALL R23 2 -1
  CALL R19 -1 -1
  CALL R13 -1 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K3 ["createElement"]
  NEWCLOSURE R15 P1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U1
  CAPTURE VAL R7
  DUPTABLE R16 K36 [{"transparency", "hue", "saturation", "useCumulative"}]
  SETTABLEKS R1 R16 K32 ["transparency"]
  SETTABLEKS R3 R16 K33 ["hue"]
  SETTABLEKS R5 R16 K34 ["saturation"]
  SETTABLEKS R7 R16 K35 ["useCumulative"]
  CALL R14 2 -1
  CALL R9 -1 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Slider"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["Checkbox"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K8 ["Components"]
  GETTABLEKS R8 R9 K13 ["InputLabel"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Enums"]
  GETTABLEKS R9 R10 K15 ["InputSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K14 ["Enums"]
  GETTABLEKS R10 R11 K16 ["Visibility"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K17 ["Providers"]
  GETTABLEKS R12 R13 K18 ["Style"]
  GETTABLEKS R11 R12 K19 ["useTokens"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K20 ["useCumulativeBackground"]
  CALL R11 1 1
  DUPTABLE R12 K23 [{"summary", "stories"}]
  LOADK R13 K24 ["Sometimes we need to get a color matching that of the semi-transparent element on a solid background. useCumulativeBackground uses lerp magic to get it. Without cumulative background the element on top of the semi-transparent one has the same semi-transparent background, when you check the option the helper is used and the solid color is applied."]
  SETTABLEKS R13 R12 K21 ["summary"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K27 [{"name", "story"}]
  LOADK R15 K28 ["Base"]
  SETTABLEKS R15 R14 K25 ["name"]
  DUPCLOSURE R15 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R15 R14 K26 ["story"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K22 ["stories"]
  RETURN R12 1
