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
  GETIMPORT R4 K12 [Vector2.new]
  LOADK R5 K13 [0.5]
  LOADK R6 K13 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["AnchorCenter"]
  LOADN R4 0
  SETTABLEKS R4 R3 K15 ["BorderNone"]
  LOADN R4 1
  SETTABLEKS R4 R3 K16 ["BorderMedium"]
  GETIMPORT R4 K19 [UDim2.fromOffset]
  LOADN R5 24
  LOADN R6 24
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["AvatarXS"]
  GETIMPORT R4 K19 [UDim2.fromOffset]
  LOADN R5 16
  LOADN R6 16
  CALL R4 2 1
  SETTABLEKS R4 R3 K21 ["IconSmall"]
  GETIMPORT R4 K19 [UDim2.fromOffset]
  LOADN R5 24
  LOADN R6 24
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["IconLarge"]
  GETIMPORT R4 K24 [UDim2.fromScale]
  LOADK R5 K13 [0.5]
  LOADK R6 K13 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K25 ["PositionCenter"]
  LOADN R4 1
  SETTABLEKS R4 R3 K26 ["BackgroundTransparent"]
  LOADN R4 0
  SETTABLEKS R4 R3 K27 ["BackgroundNonTransparent"]
  LOADK R4 K13 [0.5]
  SETTABLEKS R4 R3 K28 ["HalfTransparent"]
  LOADK R4 K29 [0.62]
  SETTABLEKS R4 R3 K30 ["IconDisabled"]
  LOADK R4 K31 [0.4]
  SETTABLEKS R4 R3 K32 ["IconMuted"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K35 ["GlobalRadiusXSmall"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 6
  CALL R4 2 1
  SETTABLEKS R4 R3 K36 ["GlobalRadiusSmall"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 8
  CALL R4 2 1
  SETTABLEKS R4 R3 K37 ["GlobalRadiusMedium"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 100
  CALL R4 2 1
  SETTABLEKS R4 R3 K38 ["GlobalRadiusCircle"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 2
  CALL R4 2 1
  SETTABLEKS R4 R3 K39 ["GlobalSpace25"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K40 ["GlobalSpace50"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 6
  CALL R4 2 1
  SETTABLEKS R4 R3 K41 ["GlobalSpace75"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 8
  CALL R4 2 1
  SETTABLEKS R4 R3 K42 ["GlobalSpace100"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 12
  CALL R4 2 1
  SETTABLEKS R4 R3 K43 ["GlobalSpace150"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 16
  CALL R4 2 1
  SETTABLEKS R4 R3 K44 ["GlobalSpace200"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K45 ["GlobalSpace250"]
  GETIMPORT R4 K34 [UDim.new]
  LOADN R5 0
  LOADN R6 28
  CALL R4 2 1
  SETTABLEKS R4 R3 K46 ["GlobalSpace350"]
  LOADN R4 10
  SETTABLEKS R4 R3 K47 ["FontSize25"]
  LOADN R4 12
  SETTABLEKS R4 R3 K48 ["FontSize50"]
  LOADN R4 14
  SETTABLEKS R4 R3 K49 ["FontSize75"]
  LOADN R4 16
  SETTABLEKS R4 R3 K50 ["FontSize100"]
  LOADN R4 18
  SETTABLEKS R4 R3 K51 ["FontSize150"]
  LOADN R4 20
  SETTABLEKS R4 R3 K52 ["FontSize200"]
  LOADN R4 24
  SETTABLEKS R4 R3 K53 ["FontSize300"]
  GETIMPORT R4 K57 [Enum.Font.SourceSans]
  SETTABLEKS R4 R3 K58 ["FontWeight400"]
  GETIMPORT R4 K60 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R4 R3 K61 ["FontWeight600"]
  GETIMPORT R4 K63 [Enum.Font.SourceSansBold]
  SETTABLEKS R4 R3 K64 ["FontWeight700"]
  GETIMPORT R4 K66 [ColorSequence.new]
  GETIMPORT R5 K69 [Color3.fromHex]
  LOADK R6 K70 ["#1F2024"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K71 ["SemanticColorSurface100Gradient"]
  GETIMPORT R4 K66 [ColorSequence.new]
  GETIMPORT R5 K69 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K73 ["SemanticColorStateLayerPressGradient"]
  LOADN R4 45
  SETTABLEKS R4 R3 K74 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R4 K76 [NumberSequence.new]
  NEWTABLE R5 0 3
  GETIMPORT R6 K78 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K78 [NumberSequenceKeypoint.new]
  LOADK R8 K13 [0.5]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K78 [NumberSequenceKeypoint.new]
  LOADN R9 1
  LOADK R10 K79 [0.84]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K80 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R4 K66 [ColorSequence.new]
  GETIMPORT R5 K69 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K81 ["SemanticColorStateLayerHoverGradient"]
  LOADN R4 45
  SETTABLEKS R4 R3 K82 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R4 K76 [NumberSequence.new]
  NEWTABLE R5 0 3
  GETIMPORT R6 K78 [NumberSequenceKeypoint.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  GETIMPORT R7 K78 [NumberSequenceKeypoint.new]
  LOADK R8 K13 [0.5]
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K78 [NumberSequenceKeypoint.new]
  LOADN R9 1
  LOADK R10 K83 [0.92]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R4 1 1
  SETTABLEKS R4 R3 K84 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K85 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K86 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K87 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K88 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K89 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K90 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K91 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K92 ["SemanticColorContentMuted"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K85 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K93 ["SemanticColorContentStandard"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K94 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K95 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K96 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K98 ["SemanticColorComponentInputFill"]
  LOADK R4 K99 [0.88]
  SETTABLEKS R4 R3 K100 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K101 ["SemanticColorComponentInputHover"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K102 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K103 ["SemanticColorDivider"]
  LOADK R4 K99 [0.88]
  SETTABLEKS R4 R3 K104 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K105 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K106 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K107 ["SemanticColorStatesHover"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K108 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K109 ["SemanticColorStateLayerHover"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K110 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K111 ["SemanticColorStateLayerPress"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K112 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K113 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K114 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K115 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K113 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K116 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K117 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#1F2024"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K118 ["SemanticColorSurface100"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K119 ["#25262C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K120 ["SemanticColorSurface200"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K87 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K121 ["SemanticColorSurface300"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K122 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K123 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K124 ["#474747"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K125 ["SemanticColorPanelBorder"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#BBC2D1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K126 ["SemanticColorStatesSelected"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K127 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K128 ["#2E2E2E"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K129 ["DEPRECATED_MainBackground"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K130 ["White"]
  LOADK R4 K131 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonAddClientSmall.png"]
  SETTABLEKS R4 R3 K132 ["AddClient"]
  LOADK R4 K133 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R4 R3 K134 ["ArrowDownAngleSmall"]
  LOADK R4 K135 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R4 R3 K136 ["ArrowRightSmall"]
  LOADK R4 K137 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K138 ["ArrowDown"]
  LOADK R4 K139 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
  SETTABLEKS R4 R3 K140 ["ArrowUp"]
  LOADK R4 K141 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K142 ["CheckboxCheckedDefault"]
  LOADK R4 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K144 ["CheckboxCheckedDisabled"]
  LOADK R4 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R4 R3 K146 ["CheckboxMixDefault"]
  LOADK R4 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R4 R3 K148 ["CheckboxMixDisabled"]
  LOADK R4 K149 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R4 R3 K150 ["CheckboxOffDefault"]
  LOADK R4 K151 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R4 R3 K152 ["CheckboxOffDisabled"]
  LOADK R4 K153 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R4 R3 K154 ["CheckboxOffHover"]
  LOADK R4 K155 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowDownSmall.png"]
  SETTABLEKS R4 R3 K156 ["DropDownArrowDown"]
  LOADK R4 K157 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowUpSmall.png"]
  SETTABLEKS R4 R3 K158 ["DropDownArrowUp"]
  LOADK R4 K159 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonPlayerSmall.png"]
  SETTABLEKS R4 R3 K160 ["Player"]
  LOADK R4 K161 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K162 ["RadioButtonCheckedDefault"]
  LOADK R4 K163 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K164 ["RadioButtonCheckedDisabled"]
  LOADK R4 K165 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K166 ["RadioButtonUncheckedDefault"]
  LOADK R4 K167 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K168 ["RadioButtonUncheckedDisabled"]
  LOADK R4 K169 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R4 R3 K170 ["RadioButtonUncheckedHover"]
  LOADK R4 K171 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R4 R3 K172 ["SpinboxControllerUpDefault"]
  LOADK R4 K173 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R4 R3 K174 ["SpinboxControllerUpDisabled"]
  LOADK R4 K175 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R4 R3 K176 ["SpinboxControllerUpHover"]
  LOADK R4 K177 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R4 R3 K178 ["SpinboxControllerDownDefault"]
  LOADK R4 K179 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R4 R3 K180 ["SpinboxControllerDownDisabled"]
  LOADK R4 K181 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R4 R3 K182 ["SpinboxControllerDownHover"]
  LOADK R4 K183 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R4 R3 K184 ["AddCollaborator"]
  LOADK R4 K185 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R4 R3 K186 ["AddCollaboratorInverse"]
  MOVE R4 R2
  LOADK R5 K187 ["RibbonDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
