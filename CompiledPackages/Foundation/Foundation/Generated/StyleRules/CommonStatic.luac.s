MAIN:
  PREPVARARGS 0
  NEWTABLE R0 128 0
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 3
  SETTABLEKS R3 R2 K2 ["ShrinkRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K9 ["shrink-3"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 1
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K15 ["anchor-bottom-center"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K17 [1.333]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K19 ["aspect-4-3"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K22 [Enum.AutomaticSize.X]
  SETTABLEKS R3 R2 K20 ["AutomaticSize"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K23 ["auto-x"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K24 [0.8]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K25 ["aspect-4-5"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K29 ["position-top-center"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  LOADB R3 1
  SETTABLEKS R3 R2 K30 ["ClipsDescendants"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K31 ["clip"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  LOADB R3 0
  SETTABLEKS R3 R2 K32 ["TextWrapped"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K33 ["text-no-wrap"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 3
  SETTABLEKS R3 R2 K34 ["GrowRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K35 ["grow-3"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K38 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R3 R2 K36 ["TextTruncate"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K39 ["text-truncate-split"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K42 [Enum.TextYAlignment.Center]
  SETTABLEKS R3 R2 K40 ["TextYAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K43 ["text-align-y-center"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K44 [0.75]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K45 ["aspect-3-4"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K46 ["position-bottom-center"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K48 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K49 ["shrink"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K51 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R3 R2 K40 ["TextYAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K52 ["text-align-y-bottom"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K54 [Enum.TextXAlignment.Center]
  SETTABLEKS R3 R2 K53 ["TextXAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K55 ["text-align-x-center"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K56 [1.778]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K57 ["aspect-16-9"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADN R3 1
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K58 ["aspect-1-1"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 5
  SETTABLEKS R3 R2 K2 ["ShrinkRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K59 ["shrink-5"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K60 ["position-bottom-left"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K62 [Enum.TextXAlignment.Right]
  SETTABLEKS R3 R2 K53 ["TextXAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K63 ["text-align-x-right"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K64 [0.667]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K65 ["aspect-2-3"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K68 [Enum.ItemLineAlignment.End]
  SETTABLEKS R3 R2 K66 ["ItemLineAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K69 ["self-end"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 1
  LOADN R5 1
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K70 ["anchor-bottom-right"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["ShrinkRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K71 ["shrink-2"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  LOADB R3 0
  SETTABLEKS R3 R2 K30 ["ClipsDescendants"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K72 ["no-clip"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADK R6 K13 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K73 ["position-center-left"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 0
  LOADN R5 1
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K74 ["anchor-bottom-left"]
  NEWTABLE R1 2 0
  LOADN R2 255
  SETTABLEKS R2 R1 K75 ["priority"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K78 [Enum.Font.BuilderSans]
  SETTABLEKS R3 R2 K76 ["Font"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K79 ["text-defaults"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  LOADB R3 1
  SETTABLEKS R3 R2 K32 ["TextWrapped"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K80 ["text-wrap"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 0
  LOADK R6 K13 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K81 ["position-center-center"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 1
  LOADK R5 K13 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K82 ["anchor-center-right"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 4
  SETTABLEKS R3 R2 K2 ["ShrinkRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K83 ["shrink-4"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K84 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R3 R2 K66 ["ItemLineAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K85 ["self-center"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K86 ["position-top-left"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K88 [Enum.TextYAlignment.Top]
  SETTABLEKS R3 R2 K40 ["TextYAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K89 ["text-align-y-top"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K90 ["position-top-right"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K13 [0.5]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K91 ["aspect-1-2"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K92 ["position-bottom-right"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K93 [0.563]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K94 ["aspect-9-16"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  LOADN R3 0
  SETTABLEKS R3 R2 K95 ["BackgroundTransparency"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K96 ["x-default-transparency"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K98 [Enum.AutomaticSize.None]
  SETTABLEKS R3 R2 K20 ["AutomaticSize"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K99 ["auto-none"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 0
  LOADK R5 K13 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K100 ["anchor-center-left"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADK R4 K13 [0.5]
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K101 ["anchor-top-center"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 5
  SETTABLEKS R3 R2 K34 ["GrowRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K102 ["grow-5"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K104 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R3 R2 K66 ["ItemLineAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K105 ["self-start"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 4
  SETTABLEKS R3 R2 K34 ["GrowRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K106 ["grow-4"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K27 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADK R6 K13 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["Position"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K107 ["position-center-right"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K109 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R3 R2 K36 ["TextTruncate"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K110 ["text-truncate-end"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K112 [Enum.UIFlexMode.Grow]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K113 ["grow"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADK R4 K13 [0.5]
  LOADK R5 K13 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K114 ["anchor-center-center"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K115 [1.25]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K116 ["aspect-5-4"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K117 [Enum.TextTruncate.None]
  SETTABLEKS R3 R2 K36 ["TextTruncate"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K118 ["text-truncate-none"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 2
  SETTABLEKS R3 R2 K34 ["GrowRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K119 ["grow-2"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K121 [Enum.ItemLineAlignment.Stretch]
  SETTABLEKS R3 R2 K66 ["ItemLineAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K122 ["self-stretch"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K124 [Enum.UIFlexMode.Fill]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K125 ["fill"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 1
  SETTABLEKS R3 R2 K34 ["GrowRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K126 ["grow-1"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 2 0
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["ShrinkRatio"]
  GETIMPORT R3 K6 [Enum.UIFlexMode.Custom]
  SETTABLEKS R3 R2 K7 ["FlexMode"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K127 ["shrink-1"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADK R3 K128 [1.5]
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K129 ["aspect-3-2"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K130 ["anchor-top-left"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K132 [Enum.AutomaticSize.XY]
  SETTABLEKS R3 R2 K20 ["AutomaticSize"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K133 ["auto-xy"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R3 R2 K53 ["TextXAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K136 ["text-align-x-left"]
  NEWTABLE R1 2 0
  LOADK R2 K0 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  GETIMPORT R3 K138 [Enum.ItemLineAlignment.Automatic]
  SETTABLEKS R3 R2 K66 ["ItemLineAlignment"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K139 ["self-auto"]
  NEWTABLE R1 2 0
  LOADK R2 K16 ["UIAspectRatioConstraint"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  NEWTABLE R2 1 0
  LOADN R3 2
  SETTABLEKS R3 R2 K18 ["AspectRatio"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K140 ["aspect-2-1"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K12 [Vector2.new]
  LOADN R4 1
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["AnchorPoint"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K141 ["anchor-top-right"]
  NEWTABLE R1 2 0
  LOADN R2 255
  SETTABLEKS R2 R1 K75 ["priority"]
  NEWTABLE R2 1 0
  LOADN R3 1
  SETTABLEKS R3 R2 K95 ["BackgroundTransparency"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K142 ["gui-object-defaults"]
  NEWTABLE R1 1 0
  NEWTABLE R2 1 0
  GETIMPORT R3 K144 [Enum.AutomaticSize.Y]
  SETTABLEKS R3 R2 K20 ["AutomaticSize"]
  SETTABLEKS R2 R1 K8 ["properties"]
  SETTABLEKS R1 R0 K145 ["auto-y"]
  RETURN R0 1
