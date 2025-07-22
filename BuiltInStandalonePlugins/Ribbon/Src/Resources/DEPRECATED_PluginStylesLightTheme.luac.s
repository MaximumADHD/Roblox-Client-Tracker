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
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K73 ["SemanticColorSurface100Gradient"]
  GETIMPORT R5 K68 [ColorSequence.new]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K74 ["#000000"]
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
  LOADK R7 K74 ["#000000"]
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
  LOADK R6 K87 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K88 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K89 ["#E5E5E6"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K90 ["SemanticColorComponentMediaFill"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K91 ["#BBBCBE"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K92 ["SemanticColorContentDisabled"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K93 ["#696A6D"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K94 ["SemanticColorContentMuted"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K87 ["#111216"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K95 ["SemanticColorContentStandard"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K96 ["#F9F9F9"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K97 ["SemanticColorContentStandardInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K98 ["SemanticColorContentStaticLight"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K100 ["SemanticColorComponentInputFill"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K101 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K102 ["SemanticColorComponentInputHover"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K103 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K104 ["SemanticColorDivider"]
  LOADK R5 K105 [0.88]
  SETTABLEKS R5 R4 K106 ["SemanticColorDividerTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K107 ["#3C64FA"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K108 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K109 ["SemanticColorStatesHover"]
  LOADK R5 K110 [0.94]
  SETTABLEKS R5 R4 K111 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K112 ["SemanticColorStateLayerHover"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K113 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K74 ["#000000"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K114 ["SemanticColorStateLayerPress"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K115 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K116 ["SemanticColorStateLayerHoverInverse"]
  LOADK R5 K85 [0.92]
  SETTABLEKS R5 R4 K117 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K118 ["SemanticColorStateLayerPressInverse"]
  LOADK R5 K81 [0.84]
  SETTABLEKS R5 R4 K119 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K120 ["SemanticColorSurface100"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K121 ["SemanticColorSurface200"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K122 ["#F2F2F3"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K123 ["SemanticColorSurface300"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K124 ["#2B2D33"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K125 ["SemanticColorSurface300Inverse"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K126 ["#E1E1E1"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K127 ["SemanticColorPanelBorder"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K99 ["#333B4C"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K128 ["SemanticColorStatesSelected"]
  LOADK R5 K105 [0.88]
  SETTABLEKS R5 R4 K129 ["SemanticColorStatesSelectedTransparency"]
  MOVE R6 R3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K130 ["DEPRECATED_MainBackground"]
  GETIMPORT R5 K71 [Color3.fromHex]
  LOADK R6 K72 ["#FFFFFF"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K131 ["White"]
  LOADK R5 K132 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonAddClientSmall.png"]
  SETTABLEKS R5 R4 K133 ["AddClient"]
  LOADK R5 K134 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R5 R4 K135 ["ArrowDownAngleSmall"]
  LOADK R5 K136 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R5 R4 K137 ["ArrowRightSmall"]
  LOADK R5 K138 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R5 R4 K139 ["ArrowDown"]
  LOADK R5 K140 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowUp.png"]
  SETTABLEKS R5 R4 K141 ["ArrowUp"]
  LOADK R5 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K143 ["CheckboxCheckedDefault"]
  LOADK R5 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K145 ["CheckboxCheckedDisabled"]
  LOADK R5 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R5 R4 K147 ["CheckboxMixDefault"]
  LOADK R5 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R5 R4 K149 ["CheckboxMixDisabled"]
  LOADK R5 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R5 R4 K151 ["CheckboxOffDefault"]
  LOADK R5 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R5 R4 K153 ["CheckboxOffDisabled"]
  LOADK R5 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R5 R4 K155 ["CheckboxOffHover"]
  LOADK R5 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowDownSmall.png"]
  SETTABLEKS R5 R4 K157 ["DropDownArrowDown"]
  LOADK R5 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowUpSmall.png"]
  SETTABLEKS R5 R4 K159 ["DropDownArrowUp"]
  LOADK R5 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonPlayerSmall.png"]
  SETTABLEKS R5 R4 K161 ["Player"]
  LOADK R5 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K163 ["RadioButtonCheckedDefault"]
  LOADK R5 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K165 ["RadioButtonCheckedDisabled"]
  LOADK R5 K166 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R5 R4 K167 ["RadioButtonUncheckedDefault"]
  LOADK R5 K168 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R5 R4 K169 ["RadioButtonUncheckedDisabled"]
  LOADK R5 K170 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R5 R4 K171 ["RadioButtonUncheckedHover"]
  LOADK R5 K172 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R5 R4 K173 ["SpinboxControllerUpDefault"]
  LOADK R5 K174 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R5 R4 K175 ["SpinboxControllerUpDisabled"]
  LOADK R5 K176 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R5 R4 K177 ["SpinboxControllerUpHover"]
  LOADK R5 K178 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R5 R4 K179 ["SpinboxControllerDownDefault"]
  LOADK R5 K180 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R5 R4 K181 ["SpinboxControllerDownDisabled"]
  LOADK R5 K182 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R5 R4 K183 ["SpinboxControllerDownHover"]
  LOADK R5 K184 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLEKS R5 R4 K185 ["AddCollaborator"]
  LOADK R5 K186 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R5 R4 K187 ["AddCollaboratorInverse"]
  MOVE R5 R2
  LOADK R6 K188 ["RibbonLightTheme"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1
