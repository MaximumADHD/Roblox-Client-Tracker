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
  GETTABLEKS R4 R1 K10 ["SharedFlags"]
  GETTABLEKS R3 R4 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  NEWTABLE R4 128 0
  GETIMPORT R5 K14 [Vector2.new]
  LOADK R6 K15 [0.5]
  LOADK R7 K15 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K16 ["AnchorCenter"]
  LOADN R5 0
  SETTABLEKS R5 R4 K17 ["BorderNone"]
  LOADN R5 1
  SETTABLEKS R5 R4 K18 ["BorderMedium"]
  GETIMPORT R5 K21 [UDim2.fromOffset]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K22 ["AvatarXS"]
  GETIMPORT R5 K21 [UDim2.fromOffset]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  SETTABLEKS R5 R4 K23 ["IconSmall"]
  GETIMPORT R5 K21 [UDim2.fromOffset]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K24 ["IconLarge"]
  GETIMPORT R5 K26 [UDim2.fromScale]
  LOADK R6 K15 [0.5]
  LOADK R7 K15 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["PositionCenter"]
  LOADN R5 1
  SETTABLEKS R5 R4 K28 ["BackgroundTransparent"]
  LOADN R5 0
  SETTABLEKS R5 R4 K29 ["BackgroundNonTransparent"]
  LOADK R5 K15 [0.5]
  SETTABLEKS R5 R4 K30 ["HalfTransparent"]
  LOADK R5 K31 [0.62]
  SETTABLEKS R5 R4 K32 ["IconDisabled"]
  LOADK R5 K33 [0.4]
  SETTABLEKS R5 R4 K34 ["IconMuted"]
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
  GETIMPORT R5 K62 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R5 R4 K63 ["FontWeight600"]
  GETIMPORT R5 K65 [Enum.Font.SourceSansBold]
  SETTABLEKS R5 R4 K66 ["FontWeight700"]
  GETIMPORT R5 K68 [ColorSequence.new]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#1F2024"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K73 ["SemanticColorSurface100Gradient"]
  GETIMPORT R5 K68 [ColorSequence.new]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K74 ["#FFFFFF"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K75 ["SemanticColorStateLayerPressGradient"]
  LOADN R5 45
  SETTABLEKS R5 R4 K76 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R5 K78 [NumberSequence.new]
  NEWTABLE R6 0 3
  GETIMPORT R7 K80 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K80 [NumberSequenceKeypoint.new]
  LOADK R9 K15 [0.5]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K80 [NumberSequenceKeypoint.new]
  LOADN R10 1
  LOADK R11 K81 [0.84]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K82 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R5 K68 [ColorSequence.new]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K74 ["#FFFFFF"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K83 ["SemanticColorStateLayerHoverGradient"]
  LOADN R5 45
  SETTABLEKS R5 R4 K84 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R5 K78 [NumberSequence.new]
  NEWTABLE R6 0 3
  GETIMPORT R7 K80 [NumberSequenceKeypoint.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  GETIMPORT R8 K80 [NumberSequenceKeypoint.new]
  LOADK R9 K15 [0.5]
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K80 [NumberSequenceKeypoint.new]
  LOADN R10 1
  LOADK R11 K85 [0.92]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R5 1 1
  SETTABLEKS R5 R4 K86 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K87 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K88 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K89 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K90 ["SemanticColorComponentMediaFill"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K91 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K92 ["SemanticColorContentDisabled"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K93 ["#BBBCBE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K94 ["SemanticColorContentMuted"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K87 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K95 ["SemanticColorContentStandard"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K96 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K97 ["SemanticColorContentStandardInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K98 ["SemanticColorContentStaticLight"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K100 ["SemanticColorComponentInputFill"]
  LOADK R5 K101 [0.88]
  SETTABLEKS R5 R4 K102 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K103 ["SemanticColorComponentInputHover"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K104 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K105 ["SemanticColorDivider"]
  LOADK R5 K101 [0.88]
  SETTABLEKS R5 R4 K106 ["SemanticColorDividerTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K107 ["#3C64FA"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K108 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K109 ["SemanticColorStatesHover"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K110 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K111 ["SemanticColorStateLayerHover"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K112 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K113 ["SemanticColorStateLayerPress"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K114 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K115 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K116 ["SemanticColorStateLayerHoverInverse"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K117 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K115 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K118 ["SemanticColorStateLayerPressInverse"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K119 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#1F2024"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K120 ["SemanticColorSurface100"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K121 ["#25262C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K122 ["SemanticColorSurface200"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K89 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K123 ["SemanticColorSurface300"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K124 ["#F2F2F3"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K125 ["SemanticColorSurface300Inverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K126 ["#474747"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K127 ["SemanticColorPanelBorder"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#BBC2D1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K128 ["SemanticColorStatesSelected"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K129 ["SemanticColorStatesSelectedTransparency"]
  MOVE R6 R3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K130 ["#2E2E2E"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K131 ["DEPRECATED_MainBackground"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K132 ["White"]
  LOADK R5 K133 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonAddClientSmall.png"]
  SETTABLEKS R5 R4 K134 ["AddClient"]
  LOADK R5 K135 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R5 R4 K136 ["ArrowDownAngleSmall"]
  LOADK R5 K137 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R5 R4 K138 ["ArrowRightSmall"]
  LOADK R5 K139 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
  SETTABLEKS R5 R4 K140 ["ArrowDown"]
  LOADK R5 K141 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
  SETTABLEKS R5 R4 K142 ["ArrowUp"]
  LOADK R5 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K144 ["CheckboxCheckedDefault"]
  LOADK R5 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K146 ["CheckboxCheckedDisabled"]
  LOADK R5 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R5 R4 K148 ["CheckboxMixDefault"]
  LOADK R5 K149 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R5 R4 K150 ["CheckboxMixDisabled"]
  LOADK R5 K151 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R5 R4 K152 ["CheckboxOffDefault"]
  LOADK R5 K153 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R5 R4 K154 ["CheckboxOffDisabled"]
  LOADK R5 K155 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R5 R4 K156 ["CheckboxOffHover"]
  LOADK R5 K157 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowDownSmall.png"]
  SETTABLEKS R5 R4 K158 ["DropDownArrowDown"]
  LOADK R5 K159 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowUpSmall.png"]
  SETTABLEKS R5 R4 K160 ["DropDownArrowUp"]
  LOADK R5 K161 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonPlayerSmall.png"]
  SETTABLEKS R5 R4 K162 ["Player"]
  LOADK R5 K163 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K164 ["RadioButtonCheckedDefault"]
  LOADK R5 K165 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K166 ["RadioButtonCheckedDisabled"]
  LOADK R5 K167 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K168 ["RadioButtonUncheckedDefault"]
  LOADK R5 K169 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K170 ["RadioButtonUncheckedDisabled"]
  LOADK R5 K171 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R5 R4 K172 ["RadioButtonUncheckedHover"]
  LOADK R5 K173 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R5 R4 K174 ["SpinboxControllerUpDefault"]
  LOADK R5 K175 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R5 R4 K176 ["SpinboxControllerUpDisabled"]
  LOADK R5 K177 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R5 R4 K178 ["SpinboxControllerUpHover"]
  LOADK R5 K179 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R5 R4 K180 ["SpinboxControllerDownDefault"]
  LOADK R5 K181 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R5 R4 K182 ["SpinboxControllerDownDisabled"]
  LOADK R5 K183 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R5 R4 K184 ["SpinboxControllerDownHover"]
  LOADK R5 K185 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R5 R4 K186 ["AddCollaborator"]
  LOADK R5 K187 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R5 R4 K188 ["AddCollaboratorInverse"]
  MOVE R5 R2
  LOADK R6 K189 ["RibbonDarkTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
