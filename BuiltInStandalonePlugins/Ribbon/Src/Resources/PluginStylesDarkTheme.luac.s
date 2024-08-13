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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K14 ["Src"]
  GETTABLEKS R6 R7 K15 ["SharedFlags"]
  GETTABLEKS R5 R6 K16 ["getFFlagLuaRibbonSocialPresenceBGColorUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 128 0
  JUMPIFNOT R3 [+6]
  GETIMPORT R6 K19 [Vector2.new]
  LOADK R7 K20 [0.5]
  LOADK R8 K20 [0.5]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["AnchorCenter"]
  LOADN R6 0
  SETTABLEKS R6 R5 K22 ["BorderNone"]
  LOADN R6 1
  SETTABLEKS R6 R5 K23 ["BorderMedium"]
  JUMPIFNOT R3 [+6]
  GETIMPORT R6 K26 [UDim2.fromOffset]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K27 ["AvatarXS"]
  GETIMPORT R6 K26 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K28 ["IconSmall"]
  GETIMPORT R6 K26 [UDim2.fromOffset]
  LOADN R7 24
  LOADN R8 24
  CALL R6 2 1
  SETTABLEKS R6 R5 K29 ["IconLarge"]
  JUMPIFNOT R3 [+6]
  GETIMPORT R6 K31 [UDim2.fromScale]
  LOADK R7 K20 [0.5]
  LOADK R8 K20 [0.5]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K32 ["PositionCenter"]
  LOADN R6 1
  SETTABLEKS R6 R5 K33 ["BackgroundTransparent"]
  LOADN R6 0
  SETTABLEKS R6 R5 K34 ["BackgroundNonTransparent"]
  LOADK R6 K20 [0.5]
  SETTABLEKS R6 R5 K35 ["HalfTransparent"]
  LOADK R6 K36 [0.62]
  SETTABLEKS R6 R5 K37 ["IconDisabled"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 4
  CALL R6 2 1
  SETTABLEKS R6 R5 K40 ["GlobalRadiusXSmall"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 6
  CALL R6 2 1
  SETTABLEKS R6 R5 K41 ["GlobalRadiusSmall"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K42 ["GlobalRadiusMedium"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 100
  CALL R6 2 1
  SETTABLEKS R6 R5 K43 ["GlobalRadiusCircle"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 2
  CALL R6 2 1
  SETTABLEKS R6 R5 K44 ["GlobalSpace25"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 4
  CALL R6 2 1
  SETTABLEKS R6 R5 K45 ["GlobalSpace50"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 6
  CALL R6 2 1
  SETTABLEKS R6 R5 K46 ["GlobalSpace75"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 8
  CALL R6 2 1
  SETTABLEKS R6 R5 K47 ["GlobalSpace100"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K48 ["GlobalSpace150"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K49 ["GlobalSpace200"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 20
  CALL R6 2 1
  SETTABLEKS R6 R5 K50 ["GlobalSpace250"]
  GETIMPORT R6 K39 [UDim.new]
  LOADN R7 0
  LOADN R8 28
  CALL R6 2 1
  SETTABLEKS R6 R5 K51 ["GlobalSpace350"]
  LOADN R6 10
  SETTABLEKS R6 R5 K52 ["FontSize25"]
  LOADN R6 12
  SETTABLEKS R6 R5 K53 ["FontSize50"]
  LOADN R6 14
  SETTABLEKS R6 R5 K54 ["FontSize75"]
  LOADN R6 16
  SETTABLEKS R6 R5 K55 ["FontSize100"]
  LOADN R6 18
  SETTABLEKS R6 R5 K56 ["FontSize150"]
  LOADN R6 20
  SETTABLEKS R6 R5 K57 ["FontSize200"]
  LOADN R6 24
  SETTABLEKS R6 R5 K58 ["FontSize300"]
  GETIMPORT R6 K62 [Enum.Font.SourceSans]
  SETTABLEKS R6 R5 K63 ["FontWeight400"]
  GETIMPORT R6 K65 [Enum.Font.SourceSansBold]
  SETTABLEKS R6 R5 K66 ["FontWeight700"]
  GETIMPORT R6 K68 [ColorSequence.new]
  GETIMPORT R7 K71 [Color3.fromHex]
  LOADK R8 K72 ["#FFFFFF"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K73 ["SemanticColorStateLayerPressGradient"]
  LOADN R6 45
  SETTABLEKS R6 R5 K74 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R6 K76 [NumberSequence.new]
  NEWTABLE R7 0 3
  GETIMPORT R8 K78 [NumberSequenceKeypoint.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K78 [NumberSequenceKeypoint.new]
  LOADK R10 K20 [0.5]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K78 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADK R12 K79 [0.84]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K80 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R6 K68 [ColorSequence.new]
  GETIMPORT R7 K71 [Color3.fromHex]
  LOADK R8 K72 ["#FFFFFF"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K81 ["SemanticColorStateLayerHoverGradient"]
  LOADN R6 45
  SETTABLEKS R6 R5 K82 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R6 K76 [NumberSequence.new]
  NEWTABLE R7 0 3
  GETIMPORT R8 K78 [NumberSequenceKeypoint.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  GETIMPORT R9 K78 [NumberSequenceKeypoint.new]
  LOADK R10 K20 [0.5]
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K78 [NumberSequenceKeypoint.new]
  LOADN R11 1
  LOADK R12 K83 [0.92]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K84 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K85 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K86 ["SemanticColorActionPrimaryFill"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K87 ["#2B2D33"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K88 ["SemanticColorComponentMediaFill"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K89 ["#696A6D"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K90 ["SemanticColorContentDisabled"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K91 ["#BBBCBE"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K92 ["SemanticColorContentMuted"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K85 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K93 ["SemanticColorContentStandard"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K94 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K95 ["SemanticColorContentStandardInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K96 ["SemanticColorContentStaticLight"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K97 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K98 ["SemanticColorComponentInputFill"]
  LOADK R6 K99 [0.88]
  SETTABLEKS R6 R5 K100 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K97 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K101 ["SemanticColorComponentInputHover"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K102 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K103 ["SemanticColorDivider"]
  LOADK R6 K99 [0.88]
  SETTABLEKS R6 R5 K104 ["SemanticColorDividerTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K105 ["#3C64FA"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K106 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K97 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K107 ["SemanticColorStatesHover"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K108 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K109 ["SemanticColorStateLayerHover"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K110 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K111 ["SemanticColorStateLayerPress"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K112 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K113 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K114 ["SemanticColorStateLayerHoverInverse"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K115 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K113 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K116 ["SemanticColorStateLayerPressInverse"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K117 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K118 ["#1F2024"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K119 ["SemanticColorSurface100"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K120 ["#25262C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K121 ["SemanticColorSurface200"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K87 ["#2B2D33"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K122 ["SemanticColorSurface300"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K123 ["#F2F2F3"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K124 ["SemanticColorSurface300Inverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K97 ["#BBC2D1"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K125 ["SemanticColorStatesSelected"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K126 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K127 ["#2E2E2E"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K128 ["DEPRECATED_MainBackground"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K129 ["White"]
  LOADK R6 K130 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R6 R5 K131 ["ArrowDownAngleSmall"]
  LOADK R6 K132 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R6 R5 K133 ["ArrowRightSmall"]
  LOADK R6 K134 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K135 ["CheckboxCheckedDefault"]
  LOADK R6 K136 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K137 ["CheckboxCheckedDisabled"]
  LOADK R6 K138 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R6 R5 K139 ["CheckboxMixDefault"]
  LOADK R6 K140 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R6 R5 K141 ["CheckboxMixDisabled"]
  LOADK R6 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R6 R5 K143 ["CheckboxOffDefault"]
  LOADK R6 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R6 R5 K145 ["CheckboxOffDisabled"]
  LOADK R6 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R6 R5 K147 ["CheckboxOffHover"]
  LOADK R6 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K149 ["RadioButtonCheckedDefault"]
  LOADK R6 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K151 ["RadioButtonCheckedDisabled"]
  LOADK R6 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K153 ["RadioButtonUncheckedDefault"]
  LOADK R6 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K155 ["RadioButtonUncheckedDisabled"]
  LOADK R6 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R6 R5 K157 ["RadioButtonUncheckedHover"]
  LOADK R6 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R6 R5 K159 ["SpinboxControllerUpDefault"]
  LOADK R6 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R6 R5 K161 ["SpinboxControllerUpDisabled"]
  LOADK R6 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R6 R5 K163 ["SpinboxControllerUpHover"]
  LOADK R6 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R6 R5 K165 ["SpinboxControllerDownDefault"]
  LOADK R6 K166 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R6 R5 K167 ["SpinboxControllerDownDisabled"]
  LOADK R6 K168 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R6 R5 K169 ["SpinboxControllerDownHover"]
  LOADK R6 K170 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R6 R5 K171 ["AddCollaborator"]
  LOADK R6 K172 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R6 R5 K173 ["AddCollaboratorInverse"]
  MOVE R6 R2
  LOADK R7 K174 ["RibbonDarkTheme"]
  NEWTABLE R8 0 0
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
