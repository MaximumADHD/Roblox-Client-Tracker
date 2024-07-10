MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  NEWTABLE R3 128 0
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["BorderNone"]
  LOADN R4 1
  SETTABLEKS R4 R3 K11 ["BorderMedium"]
  GETIMPORT R4 K14 [UDim2.fromOffset]
  LOADN R5 16
  LOADN R6 16
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["IconSmall"]
  GETIMPORT R4 K14 [UDim2.fromOffset]
  LOADN R5 24
  LOADN R6 24
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["IconLarge"]
  LOADN R4 1
  SETTABLEKS R4 R3 K17 ["BackgroundTransparent"]
  LOADN R4 0
  SETTABLEKS R4 R3 K18 ["BackgroundNonTransparent"]
  LOADK R4 K19 [0.5]
  SETTABLEKS R4 R3 K20 ["HalfTransparent"]
  LOADK R4 K21 [0.62]
  SETTABLEKS R4 R3 K22 ["IconDisabled"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K26 ["GlobalRadiusXSmall"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 6
  CALL R4 2 1
  SETTABLEKS R4 R3 K27 ["GlobalRadiusSmall"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 8
  CALL R4 2 1
  SETTABLEKS R4 R3 K28 ["GlobalRadiusMedium"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 100
  CALL R4 2 1
  SETTABLEKS R4 R3 K29 ["GlobalRadiusCircle"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 2
  CALL R4 2 1
  SETTABLEKS R4 R3 K30 ["GlobalSpace25"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K31 ["GlobalSpace50"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 6
  CALL R4 2 1
  SETTABLEKS R4 R3 K32 ["GlobalSpace75"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 8
  CALL R4 2 1
  SETTABLEKS R4 R3 K33 ["GlobalSpace100"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 12
  CALL R4 2 1
  SETTABLEKS R4 R3 K34 ["GlobalSpace150"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 16
  CALL R4 2 1
  SETTABLEKS R4 R3 K35 ["GlobalSpace200"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K36 ["GlobalSpace250"]
  GETIMPORT R4 K25 [UDim.new]
  LOADN R5 0
  LOADN R6 28
  CALL R4 2 1
  SETTABLEKS R4 R3 K37 ["GlobalSpace350"]
  LOADN R4 10
  SETTABLEKS R4 R3 K38 ["FontSize25"]
  LOADN R4 12
  SETTABLEKS R4 R3 K39 ["FontSize50"]
  LOADN R4 14
  SETTABLEKS R4 R3 K40 ["FontSize75"]
  LOADN R4 16
  SETTABLEKS R4 R3 K41 ["FontSize100"]
  LOADN R4 18
  SETTABLEKS R4 R3 K42 ["FontSize150"]
  LOADN R4 20
  SETTABLEKS R4 R3 K43 ["FontSize200"]
  LOADN R4 24
  SETTABLEKS R4 R3 K44 ["FontSize300"]
  GETIMPORT R4 K48 [Enum.Font.SourceSans]
  SETTABLEKS R4 R3 K49 ["FontWeight400"]
  GETIMPORT R4 K51 [Enum.Font.SourceSansBold]
  SETTABLEKS R4 R3 K52 ["FontWeight700"]
  GETIMPORT R4 K54 [ColorSequence.new]
  GETIMPORT R5 K57 [Color3.fromHex]
  LOADK R6 K58 ["#FFFFFF"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K59 ["SemanticColorStateLayerPressGradient"]
  LOADN R4 45
  SETTABLEKS R4 R3 K60 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R4 K62 [NumberSequence.new]
  NEWTABLE R5 0 3
  GETIMPORT R6 K64 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K64 [NumberSequenceKeypoint.new]
  LOADK R8 K19 [0.5]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K64 [NumberSequenceKeypoint.new]
  LOADN R9 1
  LOADK R10 K65 [0.84]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K66 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R4 K54 [ColorSequence.new]
  GETIMPORT R5 K57 [Color3.fromHex]
  LOADK R6 K58 ["#FFFFFF"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K67 ["SemanticColorStateLayerHoverGradient"]
  LOADN R4 45
  SETTABLEKS R4 R3 K68 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R4 K62 [NumberSequence.new]
  NEWTABLE R5 0 3
  GETIMPORT R6 K64 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K64 [NumberSequenceKeypoint.new]
  LOADK R8 K19 [0.5]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K64 [NumberSequenceKeypoint.new]
  LOADN R9 1
  LOADK R10 K69 [0.92]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K70 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K71 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K72 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K73 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K74 ["SemanticColorContentMuted"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K75 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K76 ["SemanticColorContentStandard"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K77 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K78 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K79 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K80 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K81 ["SemanticColorComponentInputFill"]
  LOADK R4 K82 [0.88]
  SETTABLEKS R4 R3 K83 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K80 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K84 ["SemanticColorComponentInputHover"]
  LOADK R4 K65 [0.84]
  SETTABLEKS R4 R3 K85 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K86 ["SemanticColorDivider"]
  LOADK R4 K82 [0.88]
  SETTABLEKS R4 R3 K87 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K88 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K89 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K80 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K90 ["SemanticColorStatesHover"]
  LOADK R4 K69 [0.92]
  SETTABLEKS R4 R3 K91 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K92 ["SemanticColorStateLayerHover"]
  LOADK R4 K69 [0.92]
  SETTABLEKS R4 R3 K93 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K94 ["SemanticColorStateLayerPress"]
  LOADK R4 K65 [0.84]
  SETTABLEKS R4 R3 K95 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K96 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K97 ["SemanticColorSurface100"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K98 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K99 ["SemanticColorSurface200"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K100 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K101 ["SemanticColorSurface300"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K102 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K103 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K80 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K104 ["SemanticColorStatesSelected"]
  LOADK R4 K65 [0.84]
  SETTABLEKS R4 R3 K105 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K106 ["#2E2E2E"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K107 ["DEPRECATED_MainBackground"]
  GETIMPORT R4 K57 [Color3.fromHex]
  LOADK R5 K58 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K108 ["White"]
  LOADK R4 K109 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R4 R3 K110 ["ArrowDownAngleSmall"]
  LOADK R4 K111 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R4 R3 K112 ["ArrowRightSmall"]
  LOADK R4 K113 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K114 ["CheckboxCheckedDefault"]
  LOADK R4 K115 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K116 ["CheckboxCheckedDisabled"]
  LOADK R4 K117 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R4 R3 K118 ["CheckboxMixDefault"]
  LOADK R4 K119 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R4 R3 K120 ["CheckboxMixDisabled"]
  LOADK R4 K121 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R4 R3 K122 ["CheckboxOffDefault"]
  LOADK R4 K123 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R4 R3 K124 ["CheckboxOffDisabled"]
  LOADK R4 K125 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R4 R3 K126 ["CheckboxOffHover"]
  LOADK R4 K127 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K128 ["RadioButtonCheckedDefault"]
  LOADK R4 K129 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K130 ["RadioButtonCheckedDisabled"]
  LOADK R4 K131 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K132 ["RadioButtonUncheckedDefault"]
  LOADK R4 K133 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K134 ["RadioButtonUncheckedDisabled"]
  LOADK R4 K135 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R4 R3 K136 ["RadioButtonUncheckedHover"]
  LOADK R4 K137 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R4 R3 K138 ["SpinboxControllerUpDefault"]
  LOADK R4 K139 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R4 R3 K140 ["SpinboxControllerUpDisabled"]
  LOADK R4 K141 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R4 R3 K142 ["SpinboxControllerUpHover"]
  LOADK R4 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R4 R3 K144 ["SpinboxControllerDownDefault"]
  LOADK R4 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R4 R3 K146 ["SpinboxControllerDownDisabled"]
  LOADK R4 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R4 R3 K148 ["SpinboxControllerDownHover"]
  MOVE R4 R2
  LOADK R5 K149 ["RibbonDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
