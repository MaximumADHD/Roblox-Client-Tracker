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
  LOADK R8 K72 ["#000000"]
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
  LOADK R8 K72 ["#000000"]
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
  LOADK R7 K85 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K86 ["SemanticColorActionPrimaryFill"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K87 ["#E5E5E6"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K88 ["SemanticColorComponentMediaFill"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K89 ["#BBBCBE"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K90 ["SemanticColorContentDisabled"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K91 ["#696A6D"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K92 ["SemanticColorContentMuted"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K85 ["#111216"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K93 ["SemanticColorContentStandard"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K94 ["#F9F9F9"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K95 ["SemanticColorContentStandardInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K97 ["SemanticColorContentStaticLight"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K98 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K99 ["SemanticColorComponentInputFill"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K100 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K98 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K101 ["SemanticColorComponentInputHover"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K102 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K103 ["SemanticColorDivider"]
  LOADK R6 K104 [0.88]
  SETTABLEKS R6 R5 K105 ["SemanticColorDividerTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K106 ["#3C64FA"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K107 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K98 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K108 ["SemanticColorStatesHover"]
  LOADK R6 K109 [0.94]
  SETTABLEKS R6 R5 K110 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K111 ["SemanticColorStateLayerHover"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K112 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K72 ["#000000"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K113 ["SemanticColorStateLayerPress"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K114 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K115 ["SemanticColorStateLayerHoverInverse"]
  LOADK R6 K83 [0.92]
  SETTABLEKS R6 R5 K116 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K117 ["SemanticColorStateLayerPressInverse"]
  LOADK R6 K79 [0.84]
  SETTABLEKS R6 R5 K118 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K119 ["SemanticColorSurface100"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K120 ["SemanticColorSurface200"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K121 ["#F2F2F3"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K122 ["SemanticColorSurface300"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K123 ["#2B2D33"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K124 ["SemanticColorSurface300Inverse"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K98 ["#333B4C"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K125 ["SemanticColorStatesSelected"]
  LOADK R6 K104 [0.88]
  SETTABLEKS R6 R5 K126 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K127 ["DEPRECATED_MainBackground"]
  GETIMPORT R6 K71 [Color3.fromHex]
  LOADK R7 K96 ["#FFFFFF"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K128 ["White"]
  LOADK R6 K129 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R6 R5 K130 ["ArrowDownAngleSmall"]
  LOADK R6 K131 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R6 R5 K132 ["ArrowRightSmall"]
  LOADK R6 K133 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K134 ["CheckboxCheckedDefault"]
  LOADK R6 K135 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K136 ["CheckboxCheckedDisabled"]
  LOADK R6 K137 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R6 R5 K138 ["CheckboxMixDefault"]
  LOADK R6 K139 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R6 R5 K140 ["CheckboxMixDisabled"]
  LOADK R6 K141 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R6 R5 K142 ["CheckboxOffDefault"]
  LOADK R6 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R6 R5 K144 ["CheckboxOffDisabled"]
  LOADK R6 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R6 R5 K146 ["CheckboxOffHover"]
  LOADK R6 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K148 ["RadioButtonCheckedDefault"]
  LOADK R6 K149 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K150 ["RadioButtonCheckedDisabled"]
  LOADK R6 K151 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R6 R5 K152 ["RadioButtonUncheckedDefault"]
  LOADK R6 K153 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R6 R5 K154 ["RadioButtonUncheckedDisabled"]
  LOADK R6 K155 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R6 R5 K156 ["RadioButtonUncheckedHover"]
  LOADK R6 K157 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R6 R5 K158 ["SpinboxControllerUpDefault"]
  LOADK R6 K159 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R6 R5 K160 ["SpinboxControllerUpDisabled"]
  LOADK R6 K161 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R6 R5 K162 ["SpinboxControllerUpHover"]
  LOADK R6 K163 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R6 R5 K164 ["SpinboxControllerDownDefault"]
  LOADK R6 K165 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R6 R5 K166 ["SpinboxControllerDownDisabled"]
  LOADK R6 K167 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R6 R5 K168 ["SpinboxControllerDownHover"]
  LOADK R6 K169 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLEKS R6 R5 K170 ["AddCollaborator"]
  LOADK R6 K171 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R6 R5 K172 ["AddCollaboratorInverse"]
  MOVE R6 R2
  LOADK R7 K173 ["RibbonLightTheme"]
  NEWTABLE R8 0 0
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
