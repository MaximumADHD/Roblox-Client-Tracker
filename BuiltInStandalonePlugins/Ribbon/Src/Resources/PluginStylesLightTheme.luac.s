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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["SharedFlags"]
  GETTABLEKS R6 R7 K17 ["getFFlagLoginAvatarThumbnail"]
  CALL R5 1 1
  CALL R5 0 1
  NEWTABLE R6 128 0
  JUMPIF R3 [+1]
  JUMPIFNOT R5 [+6]
  GETIMPORT R7 K20 [Vector2.new]
  LOADK R8 K21 [0.5]
  LOADK R9 K21 [0.5]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K22 ["AnchorCenter"]
  LOADN R7 0
  SETTABLEKS R7 R6 K23 ["BorderNone"]
  LOADN R7 1
  SETTABLEKS R7 R6 K24 ["BorderMedium"]
  JUMPIF R3 [+1]
  JUMPIFNOT R5 [+6]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 24
  LOADN R9 24
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K28 ["AvatarXS"]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 16
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K29 ["IconSmall"]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 24
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K30 ["IconLarge"]
  JUMPIF R3 [+1]
  JUMPIFNOT R5 [+6]
  GETIMPORT R7 K32 [UDim2.fromScale]
  LOADK R8 K21 [0.5]
  LOADK R9 K21 [0.5]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K33 ["PositionCenter"]
  LOADN R7 1
  SETTABLEKS R7 R6 K34 ["BackgroundTransparent"]
  LOADN R7 0
  SETTABLEKS R7 R6 K35 ["BackgroundNonTransparent"]
  LOADK R7 K21 [0.5]
  SETTABLEKS R7 R6 K36 ["HalfTransparent"]
  LOADK R7 K37 [0.62]
  SETTABLEKS R7 R6 K38 ["IconDisabled"]
  LOADK R7 K39 [0.4]
  SETTABLEKS R7 R6 K40 ["IconMuted"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K43 ["GlobalRadiusXSmall"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K44 ["GlobalRadiusSmall"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K45 ["GlobalRadiusMedium"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K46 ["GlobalRadiusCircle"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 2
  CALL R7 2 1
  SETTABLEKS R7 R6 K47 ["GlobalSpace25"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K48 ["GlobalSpace50"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K49 ["GlobalSpace75"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K50 ["GlobalSpace100"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K51 ["GlobalSpace150"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K52 ["GlobalSpace200"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 20
  CALL R7 2 1
  SETTABLEKS R7 R6 K53 ["GlobalSpace250"]
  GETIMPORT R7 K42 [UDim.new]
  LOADN R8 0
  LOADN R9 28
  CALL R7 2 1
  SETTABLEKS R7 R6 K54 ["GlobalSpace350"]
  LOADN R7 10
  SETTABLEKS R7 R6 K55 ["FontSize25"]
  LOADN R7 12
  SETTABLEKS R7 R6 K56 ["FontSize50"]
  LOADN R7 14
  SETTABLEKS R7 R6 K57 ["FontSize75"]
  LOADN R7 16
  SETTABLEKS R7 R6 K58 ["FontSize100"]
  LOADN R7 18
  SETTABLEKS R7 R6 K59 ["FontSize150"]
  LOADN R7 20
  SETTABLEKS R7 R6 K60 ["FontSize200"]
  LOADN R7 24
  SETTABLEKS R7 R6 K61 ["FontSize300"]
  GETIMPORT R7 K65 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K66 ["FontWeight400"]
  GETIMPORT R7 K68 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K69 ["FontWeight700"]
  GETIMPORT R7 K71 [ColorSequence.new]
  GETIMPORT R8 K74 [Color3.fromHex]
  LOADK R9 K75 ["#000000"]
  CALL R8 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K76 ["SemanticColorStateLayerPressGradient"]
  LOADN R7 45
  SETTABLEKS R7 R6 K77 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R7 K79 [NumberSequence.new]
  NEWTABLE R8 0 3
  GETIMPORT R9 K81 [NumberSequenceKeypoint.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K81 [NumberSequenceKeypoint.new]
  LOADK R11 K21 [0.5]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K81 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADK R13 K82 [0.84]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K83 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R7 K71 [ColorSequence.new]
  GETIMPORT R8 K74 [Color3.fromHex]
  LOADK R9 K75 ["#000000"]
  CALL R8 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K84 ["SemanticColorStateLayerHoverGradient"]
  LOADN R7 45
  SETTABLEKS R7 R6 K85 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R7 K79 [NumberSequence.new]
  NEWTABLE R8 0 3
  GETIMPORT R9 K81 [NumberSequenceKeypoint.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K81 [NumberSequenceKeypoint.new]
  LOADK R11 K21 [0.5]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K81 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADK R13 K86 [0.92]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K87 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K88 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K89 ["SemanticColorActionPrimaryFill"]
  JUMPIF R4 [+1]
  JUMPIFNOT R5 [+5]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K90 ["#E5E5E6"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K91 ["SemanticColorComponentMediaFill"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K92 ["#BBBCBE"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K93 ["SemanticColorContentDisabled"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K94 ["#696A6D"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K95 ["SemanticColorContentMuted"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K88 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K96 ["SemanticColorContentStandard"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K97 ["#F9F9F9"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K98 ["SemanticColorContentStandardInverse"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K100 ["SemanticColorContentStaticLight"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K101 ["#333B4C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K102 ["SemanticColorComponentInputFill"]
  LOADK R7 K86 [0.92]
  SETTABLEKS R7 R6 K103 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K101 ["#333B4C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K104 ["SemanticColorComponentInputHover"]
  LOADK R7 K82 [0.84]
  SETTABLEKS R7 R6 K105 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K75 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K106 ["SemanticColorDivider"]
  LOADK R7 K107 [0.88]
  SETTABLEKS R7 R6 K108 ["SemanticColorDividerTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K109 ["#3C64FA"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K110 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K101 ["#333B4C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K111 ["SemanticColorStatesHover"]
  LOADK R7 K112 [0.94]
  SETTABLEKS R7 R6 K113 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K75 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K114 ["SemanticColorStateLayerHover"]
  LOADK R7 K86 [0.92]
  SETTABLEKS R7 R6 K115 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K75 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K116 ["SemanticColorStateLayerPress"]
  LOADK R7 K82 [0.84]
  SETTABLEKS R7 R6 K117 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K118 ["SemanticColorStateLayerHoverInverse"]
  LOADK R7 K86 [0.92]
  SETTABLEKS R7 R6 K119 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K120 ["SemanticColorStateLayerPressInverse"]
  LOADK R7 K82 [0.84]
  SETTABLEKS R7 R6 K121 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K122 ["SemanticColorSurface100"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K123 ["SemanticColorSurface200"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K124 ["#F2F2F3"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K125 ["SemanticColorSurface300"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K126 ["#2B2D33"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K127 ["SemanticColorSurface300Inverse"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K101 ["#333B4C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K128 ["SemanticColorStatesSelected"]
  LOADK R7 K107 [0.88]
  SETTABLEKS R7 R6 K129 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K130 ["DEPRECATED_MainBackground"]
  GETIMPORT R7 K74 [Color3.fromHex]
  LOADK R8 K99 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K131 ["White"]
  LOADK R7 K132 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R7 R6 K133 ["ArrowDownAngleSmall"]
  LOADK R7 K134 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R7 R6 K135 ["ArrowRightSmall"]
  LOADK R7 K136 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
  SETTABLEKS R7 R6 K137 ["ArrowDown"]
  LOADK R7 K138 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowUp.png"]
  SETTABLEKS R7 R6 K139 ["ArrowUp"]
  LOADK R7 K140 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K141 ["CheckboxCheckedDefault"]
  LOADK R7 K142 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K143 ["CheckboxCheckedDisabled"]
  LOADK R7 K144 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R7 R6 K145 ["CheckboxMixDefault"]
  LOADK R7 K146 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R7 R6 K147 ["CheckboxMixDisabled"]
  LOADK R7 K148 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R7 R6 K149 ["CheckboxOffDefault"]
  LOADK R7 K150 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R7 R6 K151 ["CheckboxOffDisabled"]
  LOADK R7 K152 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R7 R6 K153 ["CheckboxOffHover"]
  LOADK R7 K154 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K155 ["RadioButtonCheckedDefault"]
  LOADK R7 K156 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K157 ["RadioButtonCheckedDisabled"]
  LOADK R7 K158 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K159 ["RadioButtonUncheckedDefault"]
  LOADK R7 K160 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K161 ["RadioButtonUncheckedDisabled"]
  LOADK R7 K162 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R7 R6 K163 ["RadioButtonUncheckedHover"]
  LOADK R7 K164 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R7 R6 K165 ["SpinboxControllerUpDefault"]
  LOADK R7 K166 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R7 R6 K167 ["SpinboxControllerUpDisabled"]
  LOADK R7 K168 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R7 R6 K169 ["SpinboxControllerUpHover"]
  LOADK R7 K170 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R7 R6 K171 ["SpinboxControllerDownDefault"]
  LOADK R7 K172 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R7 R6 K173 ["SpinboxControllerDownDisabled"]
  LOADK R7 K174 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R7 R6 K175 ["SpinboxControllerDownHover"]
  LOADK R7 K176 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
  SETTABLEKS R7 R6 K177 ["AddCollaborator"]
  LOADK R7 K178 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R7 R6 K179 ["AddCollaboratorInverse"]
  MOVE R7 R2
  LOADK R8 K180 ["RibbonLightTheme"]
  NEWTABLE R9 0 0
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
