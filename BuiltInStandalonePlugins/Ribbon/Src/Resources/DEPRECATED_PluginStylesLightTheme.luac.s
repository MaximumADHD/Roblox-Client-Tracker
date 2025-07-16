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
  LOADK R6 K70 ["#FFFFFF"]
  CALL R5 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K71 ["SemanticColorSurface100Gradient"]
  GETIMPORT R4 K66 [ColorSequence.new]
  GETIMPORT R5 K69 [Color3.fromHex]
  LOADK R6 K72 ["#000000"]
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
  LOADK R6 K72 ["#000000"]
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
  LOADK R5 K85 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K86 ["SemanticColorActionPrimaryFill"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K87 ["#E5E5E6"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K88 ["SemanticColorComponentMediaFill"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K89 ["#BBBCBE"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K90 ["SemanticColorContentDisabled"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K91 ["#696A6D"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K92 ["SemanticColorContentMuted"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K85 ["#111216"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K93 ["SemanticColorContentStandard"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K94 ["#F9F9F9"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K95 ["SemanticColorContentStandardInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K96 ["SemanticColorContentStaticLight"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K98 ["SemanticColorComponentInputFill"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K99 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K100 ["SemanticColorComponentInputHover"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K101 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K102 ["SemanticColorDivider"]
  LOADK R4 K103 [0.88]
  SETTABLEKS R4 R3 K104 ["SemanticColorDividerTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K105 ["#3C64FA"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K106 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K107 ["SemanticColorStatesHover"]
  LOADK R4 K108 [0.94]
  SETTABLEKS R4 R3 K109 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K110 ["SemanticColorStateLayerHover"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K111 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K72 ["#000000"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K112 ["SemanticColorStateLayerPress"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K113 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K114 ["SemanticColorStateLayerHoverInverse"]
  LOADK R4 K83 [0.92]
  SETTABLEKS R4 R3 K115 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K116 ["SemanticColorStateLayerPressInverse"]
  LOADK R4 K79 [0.84]
  SETTABLEKS R4 R3 K117 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K118 ["SemanticColorSurface100"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K119 ["SemanticColorSurface200"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K120 ["#F2F2F3"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K121 ["SemanticColorSurface300"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K122 ["#2B2D33"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K123 ["SemanticColorSurface300Inverse"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K124 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K125 ["SemanticColorPanelBorder"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K97 ["#333B4C"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K126 ["SemanticColorStatesSelected"]
  LOADK R4 K103 [0.88]
  SETTABLEKS R4 R3 K127 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K128 ["DEPRECATED_MainBackground"]
  GETIMPORT R4 K69 [Color3.fromHex]
  LOADK R5 K70 ["#FFFFFF"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K129 ["White"]
  LOADK R4 K130 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonAddClientSmall.png"]
  SETTABLEKS R4 R3 K131 ["AddClient"]
  LOADK R4 K132 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R4 R3 K133 ["ArrowDownAngleSmall"]
  LOADK R4 K134 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R4 R3 K135 ["ArrowRightSmall"]
  LOADK R4 K136 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R4 R3 K137 ["ArrowDown"]
  LOADK R4 K138 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowUp.png"]
  SETTABLEKS R4 R3 K139 ["ArrowUp"]
  LOADK R4 K140 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K141 ["CheckboxCheckedDefault"]
  LOADK R4 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K143 ["CheckboxCheckedDisabled"]
  LOADK R4 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R4 R3 K145 ["CheckboxMixDefault"]
  LOADK R4 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R4 R3 K147 ["CheckboxMixDisabled"]
  LOADK R4 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R4 R3 K149 ["CheckboxOffDefault"]
  LOADK R4 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R4 R3 K151 ["CheckboxOffDisabled"]
  LOADK R4 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R4 R3 K153 ["CheckboxOffHover"]
  LOADK R4 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowDownSmall.png"]
  SETTABLEKS R4 R3 K155 ["DropDownArrowDown"]
  LOADK R4 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonDropDownArrowUpSmall.png"]
  SETTABLEKS R4 R3 K157 ["DropDownArrowUp"]
  LOADK R4 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonPlayerSmall.png"]
  SETTABLEKS R4 R3 K159 ["Player"]
  LOADK R4 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K161 ["RadioButtonCheckedDefault"]
  LOADK R4 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K163 ["RadioButtonCheckedDisabled"]
  LOADK R4 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R4 R3 K165 ["RadioButtonUncheckedDefault"]
  LOADK R4 K166 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R4 R3 K167 ["RadioButtonUncheckedDisabled"]
  LOADK R4 K168 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R4 R3 K169 ["RadioButtonUncheckedHover"]
  LOADK R4 K170 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R4 R3 K171 ["SpinboxControllerUpDefault"]
  LOADK R4 K172 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R4 R3 K173 ["SpinboxControllerUpDisabled"]
  LOADK R4 K174 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R4 R3 K175 ["SpinboxControllerUpHover"]
  LOADK R4 K176 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R4 R3 K177 ["SpinboxControllerDownDefault"]
  LOADK R4 K178 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R4 R3 K179 ["SpinboxControllerDownDisabled"]
  LOADK R4 K180 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R4 R3 K181 ["SpinboxControllerDownHover"]
  LOADK R4 K182 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLEKS R4 R3 K183 ["AddCollaborator"]
  LOADK R4 K184 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R4 R3 K185 ["AddCollaboratorInverse"]
  MOVE R4 R2
  LOADK R5 K186 ["RibbonLightTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
