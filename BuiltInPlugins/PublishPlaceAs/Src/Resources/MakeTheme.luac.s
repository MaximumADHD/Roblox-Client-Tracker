PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagDevFrameworkEnableFoundationColors"]
  CALL R2 0 1
  GETTABLEKS R3 R1 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["StyleModifier"]
  GETTABLEKS R5 R1 K11 ["Style"]
  GETTABLEKS R6 R5 K12 ["StyleKey"]
  GETTABLEKS R8 R5 K13 ["Themes"]
  GETTABLEKS R7 R8 K14 ["StudioTheme"]
  GETTABLEKS R8 R5 K15 ["Colors"]
  GETTABLEKS R9 R5 K16 ["getRawComponentStyle"]
  GETTABLEKS R10 R5 K17 ["ComponentSymbols"]
  GETTABLEKS R11 R1 K18 ["Dash"]
  GETTABLEKS R12 R11 K19 ["join"]
  GETIMPORT R17 K21 [settings]
  CALL R17 0 1
  GETTABLEKS R16 R17 K22 ["Studio"]
  GETTABLEKS R15 R16 K23 ["Theme"]
  GETTABLEKS R14 R15 K24 ["Name"]
  JUMPIFEQKS R14 K25 ["Dark"] [+2]
  LOADB R13 0 +1
  LOADB R13 1
  DUPTABLE R14 K30 [{"Title", "Normal", "Smaller", "Subtext"}]
  DUPTABLE R15 K34 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K37 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K31 ["Font"]
  LOADN R16 24
  SETTABLEKS R16 R15 K32 ["TextSize"]
  GETTABLEKS R16 R6 K38 ["TitlebarText"]
  SETTABLEKS R16 R15 K33 ["TextColor3"]
  SETTABLEKS R15 R14 K26 ["Title"]
  DUPTABLE R15 K34 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K37 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K31 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K32 ["TextSize"]
  GETTABLEKS R16 R6 K39 ["MainText"]
  SETTABLEKS R16 R15 K33 ["TextColor3"]
  SETTABLEKS R15 R14 K27 ["Normal"]
  DUPTABLE R15 K34 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K37 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K31 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K32 ["TextSize"]
  GETTABLEKS R16 R6 K39 ["MainText"]
  SETTABLEKS R16 R15 K33 ["TextColor3"]
  SETTABLEKS R15 R14 K28 ["Smaller"]
  DUPTABLE R15 K34 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K37 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K31 ["Font"]
  LOADN R16 16
  SETTABLEKS R16 R15 K32 ["TextSize"]
  GETTABLEKS R16 R6 K40 ["DimmedText"]
  SETTABLEKS R16 R15 K33 ["TextColor3"]
  SETTABLEKS R15 R14 K29 ["Subtext"]
  MOVE R15 R12
  MOVE R16 R9
  LOADK R17 K41 ["Image"]
  CALL R16 1 1
  NEWTABLE R17 1 0
  NEWTABLE R18 4 0
  LOADK R19 K42 ["rbxasset://textures/PublishPlaceAs/MoreDetails.png"]
  SETTABLEKS R19 R18 K41 ["Image"]
  GETTABLEKS R19 R6 K43 ["SubText"]
  SETTABLEKS R19 R18 K44 ["Color"]
  GETTABLEKS R19 R4 K45 ["Hover"]
  DUPTABLE R20 K46 [{"Color"}]
  GETTABLEKS R21 R6 K47 ["MainTextHover"]
  SETTABLEKS R21 R20 K44 ["Color"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K48 ["&TooltipStyle"]
  CALL R15 2 1
  MOVE R16 R9
  LOADK R17 K49 ["Button"]
  CALL R16 1 1
  MOVE R17 R12
  MOVE R18 R16
  NEWTABLE R19 1 0
  MOVE R20 R12
  GETTABLEKS R21 R16 K50 ["&Round"]
  DUPTABLE R22 K51 [{"TextSize"}]
  GETTABLEKS R24 R14 K27 ["Normal"]
  GETTABLEKS R23 R24 K32 ["TextSize"]
  SETTABLEKS R23 R22 K32 ["TextSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K52 ["&ManageButton"]
  CALL R17 2 1
  NEWTABLE R18 64 0
  GETIMPORT R19 K37 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K53 ["font"]
  SETTABLEKS R14 R18 K54 ["fontStyle"]
  GETTABLEKS R19 R6 K55 ["MainBackground"]
  SETTABLEKS R19 R18 K56 ["backgroundColor"]
  GETTABLEKS R19 R6 K57 ["ForegroundContrast"]
  SETTABLEKS R19 R18 K58 ["foregroundColorContrast"]
  GETTABLEKS R19 R6 K39 ["MainText"]
  SETTABLEKS R19 R18 K59 ["textColor"]
  GETTABLEKS R19 R6 K43 ["SubText"]
  SETTABLEKS R19 R18 K60 ["subTextColor"]
  GETTABLEKS R19 R6 K40 ["DimmedText"]
  SETTABLEKS R19 R18 K61 ["dimmerTextColor"]
  GETTABLEKS R19 R6 K62 ["WarningText"]
  SETTABLEKS R19 R18 K63 ["warningTextColor"]
  GETTABLEKS R19 R6 K64 ["Tab"]
  SETTABLEKS R19 R18 K65 ["disabledColor"]
  GETTABLEKS R19 R6 K66 ["Border"]
  SETTABLEKS R19 R18 K67 ["borderColor"]
  GETTABLEKS R19 R8 K68 ["Blue"]
  SETTABLEKS R19 R18 K69 ["hoverColor"]
  GETTABLEKS R19 R6 K70 ["ErrorText"]
  SETTABLEKS R19 R18 K71 ["errorColor"]
  DUPTABLE R19 K78 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
  LOADK R20 K79 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
  SETTABLEKS R20 R19 K72 ["newPlace"]
  LOADK R20 K80 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
  SETTABLEKS R20 R19 K73 ["backArrow"]
  LOADK R20 K81 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
  SETTABLEKS R20 R19 K74 ["checkmark"]
  LOADK R20 K82 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R20 R19 K75 ["thumbnailPlaceHolder"]
  LOADK R20 K83 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R20 R19 K76 ["warning"]
  GETTABLEKS R20 R6 K84 ["IconBackgroundColor"]
  SETTABLEKS R20 R19 K56 ["backgroundColor"]
  GETTABLEKS R20 R6 K85 ["IconImageColor"]
  SETTABLEKS R20 R19 K77 ["imageColor"]
  SETTABLEKS R19 R18 K86 ["icons"]
  DUPTABLE R19 K89 [{"maxHeight", "textBoxHeight"}]
  LOADN R20 120
  SETTABLEKS R20 R19 K87 ["maxHeight"]
  LOADN R20 72
  SETTABLEKS R20 R19 K88 ["textBoxHeight"]
  SETTABLEKS R19 R18 K90 ["descriptionBox"]
  DUPTABLE R19 K93 [{"width", "height"}]
  LOADN R20 40
  SETTABLEKS R20 R19 K91 ["width"]
  LOADN R20 24
  SETTABLEKS R20 R19 K92 ["height"]
  SETTABLEKS R19 R18 K94 ["toggleButton"]
  DUPTABLE R19 K97 [{"minSize", "spacing"}]
  DUPTABLE R20 K93 [{"width", "height"}]
  LOADN R21 144
  SETTABLEKS R21 R20 K91 ["width"]
  LOADN R21 204
  SETTABLEKS R21 R20 K92 ["height"]
  SETTABLEKS R20 R19 K95 ["minSize"]
  LOADN R20 20
  SETTABLEKS R20 R19 K96 ["spacing"]
  SETTABLEKS R19 R18 K98 ["dialog"]
  DUPTABLE R19 K101 [{"paddingY", "size"}]
  LOADN R20 30
  SETTABLEKS R20 R19 K99 ["paddingY"]
  LOADN R20 14
  SETTABLEKS R20 R19 K100 ["size"]
  SETTABLEKS R19 R18 K102 ["tooltipIcon"]
  DUPTABLE R19 K103 [{"height"}]
  LOADN R20 52
  SETTABLEKS R20 R19 K92 ["height"]
  SETTABLEKS R19 R18 K104 ["optInLocations"]
  DUPTABLE R19 K106 [{"height", "length", "paddingY"}]
  LOADN R20 22
  SETTABLEKS R20 R19 K92 ["height"]
  LOADN R20 250
  SETTABLEKS R20 R19 K105 ["length"]
  LOADN R20 25
  SETTABLEKS R20 R19 K99 ["paddingY"]
  SETTABLEKS R19 R18 K107 ["requirementsLink"]
  DUPTABLE R19 K109 [{"Size"}]
  DUPTABLE R20 K112 [{"X", "Y"}]
  LOADN R21 244
  SETTABLEKS R21 R20 K110 ["X"]
  LOADN R21 94
  SETTABLEKS R21 R20 K111 ["Y"]
  SETTABLEKS R20 R19 K108 ["Size"]
  SETTABLEKS R19 R18 K113 ["emailDialog"]
  DUPTABLE R19 K116 [{"button", "fontStyle", "padding", "width"}]
  DUPTABLE R20 K103 [{"height"}]
  LOADN R21 38
  SETTABLEKS R21 R20 K92 ["height"]
  SETTABLEKS R20 R19 K114 ["button"]
  DUPTABLE R20 K117 [{"Normal"}]
  DUPTABLE R21 K51 [{"TextSize"}]
  LOADN R22 22
  SETTABLEKS R22 R21 K32 ["TextSize"]
  SETTABLEKS R21 R20 K27 ["Normal"]
  SETTABLEKS R20 R19 K54 ["fontStyle"]
  LOADN R20 10
  SETTABLEKS R20 R19 K115 ["padding"]
  DUPTABLE R20 K120 [{"creator", "genre"}]
  LOADN R21 74
  SETTABLEKS R21 R20 K118 ["creator"]
  LOADN R21 210
  SETTABLEKS R21 R20 K119 ["genre"]
  SETTABLEKS R20 R19 K91 ["width"]
  SETTABLEKS R19 R18 K121 ["selectInput"]
  DUPTABLE R19 K128 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R20 R6 K129 ["DialogMainButton"]
  SETTABLEKS R20 R19 K122 ["ButtonColor"]
  GETTABLEKS R20 R6 K130 ["LinkText"]
  SETTABLEKS R20 R19 K123 ["ButtonColor_Hover"]
  GETTABLEKS R20 R6 K131 ["DialogMainButtonDisabled"]
  SETTABLEKS R20 R19 K124 ["ButtonColor_Disabled"]
  GETTABLEKS R20 R6 K132 ["DialogMainButtonText"]
  SETTABLEKS R20 R19 K125 ["TextColor"]
  GETTABLEKS R20 R6 K133 ["DialogMainButtonTextDisabled"]
  SETTABLEKS R20 R19 K126 ["TextColor_Disabled"]
  GETTABLEKS R20 R6 K134 ["Light"]
  SETTABLEKS R20 R19 K127 ["BorderColor"]
  SETTABLEKS R19 R18 K135 ["defaultButton"]
  DUPTABLE R19 K128 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R20 R6 K49 ["Button"]
  SETTABLEKS R20 R19 K122 ["ButtonColor"]
  GETTABLEKS R20 R6 K136 ["ButtonHover"]
  SETTABLEKS R20 R19 K123 ["ButtonColor_Hover"]
  GETTABLEKS R20 R6 K137 ["ButtonDisabled"]
  SETTABLEKS R20 R19 K124 ["ButtonColor_Disabled"]
  GETTABLEKS R20 R6 K138 ["ButtonText"]
  SETTABLEKS R20 R19 K125 ["TextColor"]
  GETTABLEKS R20 R6 K40 ["DimmedText"]
  SETTABLEKS R20 R19 K126 ["TextColor_Disabled"]
  GETTABLEKS R20 R6 K66 ["Border"]
  SETTABLEKS R20 R19 K127 ["BorderColor"]
  SETTABLEKS R19 R18 K139 ["cancelButton"]
  DUPTABLE R19 K143 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
  GETTABLEKS R20 R6 K49 ["Button"]
  SETTABLEKS R20 R19 K122 ["ButtonColor"]
  GETTABLEKS R20 R6 K39 ["MainText"]
  SETTABLEKS R20 R19 K140 ["ImageColor"]
  GETTABLEKS R20 R6 K66 ["Border"]
  SETTABLEKS R20 R19 K127 ["BorderColor"]
  DUPTABLE R20 K144 [{"ButtonColor"}]
  GETTABLEKS R21 R6 K136 ["ButtonHover"]
  SETTABLEKS R21 R20 K122 ["ButtonColor"]
  SETTABLEKS R20 R19 K141 ["hovered"]
  DUPTABLE R20 K145 [{"ButtonColor", "ImageColor"}]
  GETTABLEKS R21 R6 K137 ["ButtonDisabled"]
  SETTABLEKS R21 R20 K122 ["ButtonColor"]
  GETTABLEKS R21 R6 K40 ["DimmedText"]
  SETTABLEKS R21 R20 K140 ["ImageColor"]
  SETTABLEKS R20 R19 K142 ["disabled"]
  SETTABLEKS R19 R18 K146 ["pageButton"]
  DUPTABLE R19 K147 [{"backgroundColor"}]
  GETTABLEKS R20 R6 K148 ["MenuBarBackground"]
  SETTABLEKS R20 R19 K56 ["backgroundColor"]
  SETTABLEKS R19 R18 K149 ["menuBar"]
  DUPTABLE R19 K153 [{"hover", "highlight", "text", "font"}]
  GETTABLEKS R20 R6 K154 ["MenuEntryHover"]
  SETTABLEKS R20 R19 K150 ["hover"]
  GETTABLEKS R20 R6 K155 ["MenuEntryHighlight"]
  SETTABLEKS R20 R19 K151 ["highlight"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R20 R6 K156 ["MainTextSelected"]
  JUMP [+2]
  GETTABLEKS R20 R6 K157 ["BrightText"]
  SETTABLEKS R20 R19 K152 ["text"]
  DUPTABLE R20 K160 [{"selected", "unselected"}]
  GETIMPORT R21 K162 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R21 R20 K158 ["selected"]
  GETIMPORT R21 K37 [Enum.Font.SourceSans]
  SETTABLEKS R21 R20 K159 ["unselected"]
  SETTABLEKS R20 R19 K53 ["font"]
  SETTABLEKS R19 R18 K163 ["menuEntry"]
  DUPTABLE R19 K166 [{"gradient", "textbutton"}]
  GETTABLEKS R20 R6 K39 ["MainText"]
  SETTABLEKS R20 R19 K164 ["gradient"]
  DUPTABLE R20 K167 [{"font"}]
  GETIMPORT R21 K37 [Enum.Font.SourceSans]
  SETTABLEKS R21 R20 K53 ["font"]
  SETTABLEKS R20 R19 K165 ["textbutton"]
  SETTABLEKS R19 R18 K168 ["footer"]
  DUPTABLE R19 K169 [{"font", "text"}]
  GETIMPORT R20 K37 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K53 ["font"]
  GETTABLEKS R20 R6 K157 ["BrightText"]
  SETTABLEKS R20 R19 K152 ["text"]
  SETTABLEKS R19 R18 K170 ["header"]
  DUPTABLE R19 K172 [{"font", "error", "maxHeight"}]
  GETIMPORT R20 K37 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K53 ["font"]
  GETTABLEKS R20 R6 K70 ["ErrorText"]
  SETTABLEKS R20 R19 K171 ["error"]
  LOADN R20 65
  SETTABLEKS R20 R19 K87 ["maxHeight"]
  SETTABLEKS R19 R18 K173 ["checkboxset"]
  DUPTABLE R19 K174 [{"font", "textColor"}]
  GETIMPORT R20 K162 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R20 R19 K53 ["font"]
  GETTABLEKS R20 R6 K39 ["MainText"]
  SETTABLEKS R20 R19 K59 ["textColor"]
  SETTABLEKS R19 R18 K175 ["listDialog"]
  DUPTABLE R19 K169 [{"font", "text"}]
  GETIMPORT R20 K37 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K53 ["font"]
  GETIMPORT R20 K178 [Color3.fromRGB]
  LOADN R21 2
  LOADN R22 183
  LOADN R23 87
  CALL R20 3 1
  SETTABLEKS R20 R19 K152 ["text"]
  SETTABLEKS R19 R18 K179 ["successText"]
  DUPTABLE R19 K181 [{"maxWidth"}]
  LOADN R20 124
  SETTABLEKS R20 R19 K180 ["maxWidth"]
  SETTABLEKS R19 R18 K182 ["textWithInlineLink"]
  DUPTABLE R19 K169 [{"font", "text"}]
  GETIMPORT R20 K37 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K53 ["font"]
  GETTABLEKS R20 R6 K70 ["ErrorText"]
  SETTABLEKS R20 R19 K152 ["text"]
  SETTABLEKS R19 R18 K183 ["failText"]
  DUPTABLE R19 K167 [{"font"}]
  GETIMPORT R20 K185 [Enum.Font.SourceSansLight]
  SETTABLEKS R20 R19 K53 ["font"]
  SETTABLEKS R19 R18 K186 ["pageText"]
  DUPTABLE R19 K188 [{"backgroundColor", "size", "image"}]
  GETTABLEKS R20 R6 K189 ["InputFieldBackground"]
  SETTABLEKS R20 R19 K56 ["backgroundColor"]
  LOADN R20 20
  SETTABLEKS R20 R19 K100 ["size"]
  DUPTABLE R20 K191 [{"background", "selected"}]
  LOADK R21 K192 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R21 R20 K190 ["background"]
  GETTABLEKS R21 R6 K193 ["RadioButtonImage"]
  SETTABLEKS R21 R20 K158 ["selected"]
  SETTABLEKS R20 R19 K187 ["image"]
  SETTABLEKS R19 R18 K194 ["radioButton"]
  DUPTABLE R19 K202 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R20 R6 K203 ["InformationImage"]
  SETTABLEKS R20 R19 K187 ["image"]
  LOADN R20 20
  SETTABLEKS R20 R19 K195 ["imageSize"]
  LOADN R20 2
  SETTABLEKS R20 R19 K196 ["imageTextGap"]
  DUPTABLE R20 K204 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R21 K37 [Enum.Font.SourceSans]
  SETTABLEKS R21 R20 K31 ["Font"]
  LOADN R21 18
  SETTABLEKS R21 R20 K32 ["TextSize"]
  GETTABLEKS R21 R6 K39 ["MainText"]
  SETTABLEKS R21 R20 K125 ["TextColor"]
  SETTABLEKS R20 R19 K197 ["BodyBodyDefault"]
  GETTABLEKS R20 R6 K57 ["ForegroundContrast"]
  SETTABLEKS R20 R19 K198 ["paneBackgroundColor"]
  GETTABLEKS R20 R6 K205 ["OtherDivider"]
  SETTABLEKS R20 R19 K199 ["paneBorderColor"]
  LOADN R20 8
  SETTABLEKS R20 R19 K200 ["panePadding"]
  LOADN R20 1
  SETTABLEKS R20 R19 K201 ["paneBorderSize"]
  SETTABLEKS R19 R18 K206 ["genreInfo"]
  DUPTABLE R19 K207 [{"backgroundColor", "textColor"}]
  GETTABLEKS R20 R6 K57 ["ForegroundContrast"]
  SETTABLEKS R20 R19 K56 ["backgroundColor"]
  GETTABLEKS R20 R6 K157 ["BrightText"]
  SETTABLEKS R20 R19 K59 ["textColor"]
  SETTABLEKS R19 R18 K208 ["eligibilityBanner"]
  LOADN R19 74
  SETTABLEKS R19 R18 K209 ["DROPDOWN_WIDTH"]
  LOADN R19 38
  SETTABLEKS R19 R18 K210 ["DROPDOWN_HEIGHT"]
  LOADN R19 192
  SETTABLEKS R19 R18 K211 ["MENU_BAR_WIDTH"]
  LOADN R19 65
  SETTABLEKS R19 R18 K212 ["FOOTER_HEIGHT"]
  DUPTABLE R19 K225 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
  LOADN R20 12
  SETTABLEKS R20 R19 K213 ["ARROW_SIZE"]
  LOADN R20 115
  SETTABLEKS R20 R19 K214 ["PAGE_PADDING"]
  LOADN R20 232
  SETTABLEKS R20 R19 K215 ["TILE_HEIGHT"]
  LOADN R20 150
  SETTABLEKS R20 R19 K216 ["ICON_SIZE"]
  LOADN R20 45
  SETTABLEKS R20 R19 K217 ["NAME_SIZE"]
  LOADN R20 8
  SETTABLEKS R20 R19 K218 ["NAME_PADDING"]
  LOADN R20 35
  SETTABLEKS R20 R19 K219 ["TILE_FOOTER_SIZE"]
  LOADN R20 4
  SETTABLEKS R20 R19 K220 ["FOOTER_SIDE_PADDING"]
  LOADN R20 4
  SETTABLEKS R20 R19 K221 ["GUIDELINE_LABEL_PADDING"]
  LOADN R20 32
  SETTABLEKS R20 R19 K222 ["FRAME_BUTTON_SIZE"]
  LOADN R20 30
  SETTABLEKS R20 R19 K223 ["CELL_PADDING_X"]
  LOADN R20 40
  SETTABLEKS R20 R19 K224 ["CELL_PADDING_Y"]
  SETTABLEKS R19 R18 K226 ["SCREEN_CHOOSE_GAME"]
  SETTABLEKS R13 R18 K227 ["isDarkerTheme"]
  GETTABLEKS R19 R10 K41 ["Image"]
  SETTABLE R15 R18 R19
  GETTABLEKS R19 R10 K49 ["Button"]
  SETTABLE R17 R18 R19
  NEWTABLE R19 2 0
  GETTABLEKS R20 R6 K193 ["RadioButtonImage"]
  LOADK R21 K228 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R6 K203 ["InformationImage"]
  LOADK R21 K229 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
  SETTABLE R21 R19 R20
  NEWTABLE R20 2 0
  GETTABLEKS R21 R6 K193 ["RadioButtonImage"]
  LOADK R22 K230 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R6 K203 ["InformationImage"]
  LOADK R22 K231 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png"]
  SETTABLE R22 R20 R21
  DUPCLOSURE R21 K232 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R18
  RETURN R21 1
