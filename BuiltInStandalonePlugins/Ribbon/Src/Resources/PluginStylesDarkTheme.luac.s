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
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["LuaRibbonSocialPresence"]
  NAMECALL R3 R3 K13 ["GetFastFlag"]
  CALL R3 2 1
  NEWTABLE R4 128 0
  JUMPIFNOT R3 [+6]
  GETIMPORT R5 K16 [Vector2.new]
  LOADK R6 K17 [0.5]
  LOADK R7 K17 [0.5]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K18 ["AnchorCenter"]
  LOADN R5 0
  SETTABLEKS R5 R4 K19 ["BorderNone"]
  LOADN R5 1
  SETTABLEKS R5 R4 K20 ["BorderMedium"]
  JUMPIFNOT R3 [+6]
  GETIMPORT R5 K23 [UDim2.fromOffset]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K24 ["AvatarXS"]
  GETIMPORT R5 K23 [UDim2.fromOffset]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  SETTABLEKS R5 R4 K25 ["IconSmall"]
  GETIMPORT R5 K23 [UDim2.fromOffset]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["IconLarge"]
  JUMPIFNOT R3 [+6]
  GETIMPORT R5 K28 [UDim2.fromScale]
  LOADK R6 K17 [0.5]
  LOADK R7 K17 [0.5]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K29 ["PositionCenter"]
  LOADN R5 1
  SETTABLEKS R5 R4 K30 ["BackgroundTransparent"]
  LOADN R5 0
  SETTABLEKS R5 R4 K31 ["BackgroundNonTransparent"]
  LOADK R5 K17 [0.5]
  SETTABLEKS R5 R4 K32 ["HalfTransparent"]
  LOADK R5 K33 [0.62]
  SETTABLEKS R5 R4 K34 ["IconDisabled"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 4
  CALL R5 2 1
  SETTABLEKS R5 R4 K37 ["GlobalRadiusXSmall"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 6
  CALL R5 2 1
  SETTABLEKS R5 R4 K38 ["GlobalRadiusSmall"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 8
  CALL R5 2 1
  SETTABLEKS R5 R4 K39 ["GlobalRadiusMedium"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 100
  CALL R5 2 1
  SETTABLEKS R5 R4 K40 ["GlobalRadiusCircle"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 2
  CALL R5 2 1
  SETTABLEKS R5 R4 K41 ["GlobalSpace25"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 4
  CALL R5 2 1
  SETTABLEKS R5 R4 K42 ["GlobalSpace50"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 6
  CALL R5 2 1
  SETTABLEKS R5 R4 K43 ["GlobalSpace75"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 8
  CALL R5 2 1
  SETTABLEKS R5 R4 K44 ["GlobalSpace100"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 12
  CALL R5 2 1
  SETTABLEKS R5 R4 K45 ["GlobalSpace150"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 16
  CALL R5 2 1
  SETTABLEKS R5 R4 K46 ["GlobalSpace200"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 20
  CALL R5 2 1
  SETTABLEKS R5 R4 K47 ["GlobalSpace250"]
  GETIMPORT R5 K36 [UDim.new]
  LOADN R6 0
  LOADN R7 28
  CALL R5 2 1
  SETTABLEKS R5 R4 K48 ["GlobalSpace350"]
  LOADN R5 10
  SETTABLEKS R5 R4 K49 ["FontSize25"]
  LOADN R5 12
  SETTABLEKS R5 R4 K50 ["FontSize50"]
  LOADN R5 14
  SETTABLEKS R5 R4 K51 ["FontSize75"]
  LOADN R5 16
  SETTABLEKS R5 R4 K52 ["FontSize100"]
  LOADN R5 18
  SETTABLEKS R5 R4 K53 ["FontSize150"]
  LOADN R5 20
  SETTABLEKS R5 R4 K54 ["FontSize200"]
  LOADN R5 24
  SETTABLEKS R5 R4 K55 ["FontSize300"]
  GETIMPORT R5 K59 [Enum.Font.SourceSans]
  SETTABLEKS R5 R4 K60 ["FontWeight400"]
  GETIMPORT R5 K62 [Enum.Font.SourceSansBold]
  SETTABLEKS R5 R4 K63 ["FontWeight700"]
  GETIMPORT R5 K65 [ColorSequence.new]
  GETIMPORT R6 K68 [Color3.fromHex]
  LOADK R7 K69 ["#FFFFFF"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K70 ["SemanticColorStateLayerPressGradient"]
  LOADN R5 45
  SETTABLEKS R5 R4 K71 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R5 K73 [NumberSequence.new]
  NEWTABLE R6 0 3
  GETIMPORT R7 K75 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K75 [NumberSequenceKeypoint.new]
  LOADK R9 K17 [0.5]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K75 [NumberSequenceKeypoint.new]
  LOADN R10 1
  LOADK R11 K76 [0.84]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K77 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R5 K65 [ColorSequence.new]
  GETIMPORT R6 K68 [Color3.fromHex]
  LOADK R7 K69 ["#FFFFFF"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K78 ["SemanticColorStateLayerHoverGradient"]
  LOADN R5 45
  SETTABLEKS R5 R4 K79 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R5 K73 [NumberSequence.new]
  NEWTABLE R6 0 3
  GETIMPORT R7 K75 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K75 [NumberSequenceKeypoint.new]
  LOADK R9 K17 [0.5]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K75 [NumberSequenceKeypoint.new]
  LOADN R10 1
  LOADK R11 K80 [0.92]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K81 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K82 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K83 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K84 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K85 ["SemanticColorContentDisabled"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K86 ["#BBBCBE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K87 ["SemanticColorContentMuted"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K82 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K88 ["SemanticColorContentStandard"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K89 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K90 ["SemanticColorContentStandardInverse"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K69 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K91 ["SemanticColorContentStaticLight"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K92 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K93 ["SemanticColorComponentInputFill"]
  LOADK R5 K94 [0.88]
  SETTABLEKS R5 R4 K95 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K92 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K96 ["SemanticColorComponentInputHover"]
  LOADK R5 K76 [0.84]
  SETTABLEKS R5 R4 K97 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K69 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K98 ["SemanticColorDivider"]
  LOADK R5 K94 [0.88]
  SETTABLEKS R5 R4 K99 ["SemanticColorDividerTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K100 ["#3C64FA"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K101 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K92 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K102 ["SemanticColorStatesHover"]
  LOADK R5 K80 [0.92]
  SETTABLEKS R5 R4 K103 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K69 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K104 ["SemanticColorStateLayerHover"]
  LOADK R5 K80 [0.92]
  SETTABLEKS R5 R4 K105 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K69 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K106 ["SemanticColorStateLayerPress"]
  LOADK R5 K76 [0.84]
  SETTABLEKS R5 R4 K107 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K108 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K109 ["SemanticColorStateLayerHoverInverse"]
  LOADK R5 K80 [0.92]
  SETTABLEKS R5 R4 K110 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K108 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K111 ["SemanticColorStateLayerPressInverse"]
  LOADK R5 K76 [0.84]
  SETTABLEKS R5 R4 K112 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K113 ["#1F2024"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K114 ["SemanticColorSurface100"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K115 ["#25262C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K116 ["SemanticColorSurface200"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K117 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K118 ["SemanticColorSurface300"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K119 ["#F2F2F3"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K120 ["SemanticColorSurface300Inverse"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K92 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K121 ["SemanticColorStatesSelected"]
  LOADK R5 K76 [0.84]
  SETTABLEKS R5 R4 K122 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K123 ["#2E2E2E"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K124 ["DEPRECATED_MainBackground"]
  GETIMPORT R5 K68 [Color3.fromHex]
  LOADK R6 K69 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K125 ["White"]
  LOADK R5 K126 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R5 R4 K127 ["ArrowDownAngleSmall"]
  LOADK R5 K128 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R5 R4 K129 ["ArrowRightSmall"]
  LOADK R5 K130 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K131 ["CheckboxCheckedDefault"]
  LOADK R5 K132 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K133 ["CheckboxCheckedDisabled"]
  LOADK R5 K134 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R5 R4 K135 ["CheckboxMixDefault"]
  LOADK R5 K136 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R5 R4 K137 ["CheckboxMixDisabled"]
  LOADK R5 K138 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R5 R4 K139 ["CheckboxOffDefault"]
  LOADK R5 K140 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R5 R4 K141 ["CheckboxOffDisabled"]
  LOADK R5 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R5 R4 K143 ["CheckboxOffHover"]
  LOADK R5 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K145 ["RadioButtonCheckedDefault"]
  LOADK R5 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K147 ["RadioButtonCheckedDisabled"]
  LOADK R5 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K149 ["RadioButtonUncheckedDefault"]
  LOADK R5 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K151 ["RadioButtonUncheckedDisabled"]
  LOADK R5 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R5 R4 K153 ["RadioButtonUncheckedHover"]
  LOADK R5 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R5 R4 K155 ["SpinboxControllerUpDefault"]
  LOADK R5 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R5 R4 K157 ["SpinboxControllerUpDisabled"]
  LOADK R5 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R5 R4 K159 ["SpinboxControllerUpHover"]
  LOADK R5 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R5 R4 K161 ["SpinboxControllerDownDefault"]
  LOADK R5 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R5 R4 K163 ["SpinboxControllerDownDisabled"]
  LOADK R5 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R5 R4 K165 ["SpinboxControllerDownHover"]
  LOADK R5 K166 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R5 R4 K167 ["AddCollaborator"]
  LOADK R5 K168 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R5 R4 K169 ["AddCollaboratorInverse"]
  MOVE R5 R2
  LOADK R6 K170 ["RibbonDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
