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
  JUMPIFNOT R3 [+6]
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
  JUMPIFNOT R3 [+6]
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
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K41 ["GlobalRadiusXSmall"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K42 ["GlobalRadiusSmall"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K43 ["GlobalRadiusMedium"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K44 ["GlobalRadiusCircle"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 2
  CALL R7 2 1
  SETTABLEKS R7 R6 K45 ["GlobalSpace25"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K46 ["GlobalSpace50"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K47 ["GlobalSpace75"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K48 ["GlobalSpace100"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K49 ["GlobalSpace150"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K50 ["GlobalSpace200"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 20
  CALL R7 2 1
  SETTABLEKS R7 R6 K51 ["GlobalSpace250"]
  GETIMPORT R7 K40 [UDim.new]
  LOADN R8 0
  LOADN R9 28
  CALL R7 2 1
  SETTABLEKS R7 R6 K52 ["GlobalSpace350"]
  LOADN R7 10
  SETTABLEKS R7 R6 K53 ["FontSize25"]
  LOADN R7 12
  SETTABLEKS R7 R6 K54 ["FontSize50"]
  LOADN R7 14
  SETTABLEKS R7 R6 K55 ["FontSize75"]
  LOADN R7 16
  SETTABLEKS R7 R6 K56 ["FontSize100"]
  LOADN R7 18
  SETTABLEKS R7 R6 K57 ["FontSize150"]
  LOADN R7 20
  SETTABLEKS R7 R6 K58 ["FontSize200"]
  LOADN R7 24
  SETTABLEKS R7 R6 K59 ["FontSize300"]
  GETIMPORT R7 K63 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K64 ["FontWeight400"]
  GETIMPORT R7 K66 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K67 ["FontWeight700"]
  GETIMPORT R7 K69 [ColorSequence.new]
  GETIMPORT R8 K72 [Color3.fromHex]
  LOADK R9 K73 ["#FFFFFF"]
  CALL R8 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K74 ["SemanticColorStateLayerPressGradient"]
  LOADN R7 45
  SETTABLEKS R7 R6 K75 ["SemanticColorStateLayerPressGradientRotation"]
  GETIMPORT R7 K77 [NumberSequence.new]
  NEWTABLE R8 0 3
  GETIMPORT R9 K79 [NumberSequenceKeypoint.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K79 [NumberSequenceKeypoint.new]
  LOADK R11 K21 [0.5]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K79 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADK R13 K80 [0.84]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K81 ["SemanticColorStateLayerPressGradientTransparency"]
  GETIMPORT R7 K69 [ColorSequence.new]
  GETIMPORT R8 K72 [Color3.fromHex]
  LOADK R9 K73 ["#FFFFFF"]
  CALL R8 1 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K82 ["SemanticColorStateLayerHoverGradient"]
  LOADN R7 45
  SETTABLEKS R7 R6 K83 ["SemanticColorStateLayerHoverGradientRotation"]
  GETIMPORT R7 K77 [NumberSequence.new]
  NEWTABLE R8 0 3
  GETIMPORT R9 K79 [NumberSequenceKeypoint.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  GETIMPORT R10 K79 [NumberSequenceKeypoint.new]
  LOADK R11 K21 [0.5]
  LOADN R12 1
  CALL R10 2 1
  GETIMPORT R11 K79 [NumberSequenceKeypoint.new]
  LOADN R12 1
  LOADK R13 K84 [0.92]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  SETTABLEKS R7 R6 K85 ["SemanticColorStateLayerHoverGradientTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K86 ["#F9F9F9"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K87 ["SemanticColorActionPrimaryFill"]
  JUMPIF R4 [+1]
  JUMPIFNOT R5 [+5]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K88 ["#2B2D33"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K89 ["SemanticColorComponentMediaFill"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K90 ["#696A6D"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K91 ["SemanticColorContentDisabled"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K92 ["#BBBCBE"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K93 ["SemanticColorContentMuted"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K86 ["#F9F9F9"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K94 ["SemanticColorContentStandard"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K95 ["#111216"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K96 ["SemanticColorContentStandardInverse"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K73 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K97 ["SemanticColorContentStaticLight"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K98 ["#BBC2D1"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K99 ["SemanticColorComponentInputFill"]
  LOADK R7 K100 [0.88]
  SETTABLEKS R7 R6 K101 ["SemanticColorComponentInputFillTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K98 ["#BBC2D1"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K102 ["SemanticColorComponentInputHover"]
  LOADK R7 K80 [0.84]
  SETTABLEKS R7 R6 K103 ["SemanticColorComponentInputHoverTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K73 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K104 ["SemanticColorDivider"]
  LOADK R7 K100 [0.88]
  SETTABLEKS R7 R6 K105 ["SemanticColorDividerTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K106 ["#3C64FA"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K107 ["SemanticColorFocusBorderPrimaryBrand"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K98 ["#BBC2D1"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K108 ["SemanticColorStatesHover"]
  LOADK R7 K84 [0.92]
  SETTABLEKS R7 R6 K109 ["SemanticColorStatesHoverTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K73 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K110 ["SemanticColorStateLayerHover"]
  LOADK R7 K84 [0.92]
  SETTABLEKS R7 R6 K111 ["SemanticColorStateLayerHoverTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K73 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K112 ["SemanticColorStateLayerPress"]
  LOADK R7 K80 [0.84]
  SETTABLEKS R7 R6 K113 ["SemanticColorStateLayerPressTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K114 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K115 ["SemanticColorStateLayerHoverInverse"]
  LOADK R7 K84 [0.92]
  SETTABLEKS R7 R6 K116 ["SemanticColorStateLayerHoverTransparencyInverse"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K114 ["#000000"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K117 ["SemanticColorStateLayerPressInverse"]
  LOADK R7 K80 [0.84]
  SETTABLEKS R7 R6 K118 ["SemanticColorStateLayerPressTransparencyInverse"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K119 ["#1F2024"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K120 ["SemanticColorSurface100"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K121 ["#25262C"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K122 ["SemanticColorSurface200"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K88 ["#2B2D33"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K123 ["SemanticColorSurface300"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K124 ["#F2F2F3"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K125 ["SemanticColorSurface300Inverse"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K98 ["#BBC2D1"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K126 ["SemanticColorStatesSelected"]
  LOADK R7 K80 [0.84]
  SETTABLEKS R7 R6 K127 ["SemanticColorStatesSelectedTransparency"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K128 ["#2E2E2E"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K129 ["DEPRECATED_MainBackground"]
  GETIMPORT R7 K72 [Color3.fromHex]
  LOADK R8 K73 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K130 ["White"]
  LOADK R7 K131 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowDownAngleSmall.png"]
  SETTABLEKS R7 R6 K132 ["ArrowDownAngleSmall"]
  LOADK R7 K133 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonArrowRightSmall.png"]
  SETTABLEKS R7 R6 K134 ["ArrowRightSmall"]
  LOADK R7 K135 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K136 ["CheckboxCheckedDefault"]
  LOADK R7 K137 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxCheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K138 ["CheckboxCheckedDisabled"]
  LOADK R7 K139 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDefaultSmall.png"]
  SETTABLEKS R7 R6 K140 ["CheckboxMixDefault"]
  LOADK R7 K141 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxMixDisabledSmall.png"]
  SETTABLEKS R7 R6 K142 ["CheckboxMixDisabled"]
  LOADK R7 K143 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDefaultSmall.png"]
  SETTABLEKS R7 R6 K144 ["CheckboxOffDefault"]
  LOADK R7 K145 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffDisabledSmall.png"]
  SETTABLEKS R7 R6 K146 ["CheckboxOffDisabled"]
  LOADK R7 K147 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonCheckboxOffHoverSmall.png"]
  SETTABLEKS R7 R6 K148 ["CheckboxOffHover"]
  LOADK R7 K149 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K150 ["RadioButtonCheckedDefault"]
  LOADK R7 K151 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonCheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K152 ["RadioButtonCheckedDisabled"]
  LOADK R7 K153 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDefaultSmall.png"]
  SETTABLEKS R7 R6 K154 ["RadioButtonUncheckedDefault"]
  LOADK R7 K155 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedDisabledSmall.png"]
  SETTABLEKS R7 R6 K156 ["RadioButtonUncheckedDisabled"]
  LOADK R7 K157 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonRadioButtonUncheckedHoverSmall.png"]
  SETTABLEKS R7 R6 K158 ["RadioButtonUncheckedHover"]
  LOADK R7 K159 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDefaultSmall.png"]
  SETTABLEKS R7 R6 K160 ["SpinboxControllerUpDefault"]
  LOADK R7 K161 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpDisabledSmall.png"]
  SETTABLEKS R7 R6 K162 ["SpinboxControllerUpDisabled"]
  LOADK R7 K163 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerUpHoverSmall.png"]
  SETTABLEKS R7 R6 K164 ["SpinboxControllerUpHover"]
  LOADK R7 K165 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDefaultSmall.png"]
  SETTABLEKS R7 R6 K166 ["SpinboxControllerDownDefault"]
  LOADK R7 K167 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownDisabledSmall.png"]
  SETTABLEKS R7 R6 K168 ["SpinboxControllerDownDisabled"]
  LOADK R7 K169 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonSpinboxControllerDownHoverSmall.png"]
  SETTABLEKS R7 R6 K170 ["SpinboxControllerDownHover"]
  LOADK R7 K171 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
  SETTABLEKS R7 R6 K172 ["AddCollaborator"]
  LOADK R7 K173 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaboratorInverse.png"]
  SETTABLEKS R7 R6 K174 ["AddCollaboratorInverse"]
  MOVE R7 R2
  LOADK R8 K175 ["RibbonDarkTheme"]
  NEWTABLE R9 0 0
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
