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
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["StyleModifier"]
  GETTABLEKS R4 R1 K9 ["Style"]
  GETTABLEKS R5 R4 K10 ["StyleKey"]
  GETTABLEKS R7 R4 K11 ["Themes"]
  GETTABLEKS R6 R7 K12 ["StudioTheme"]
  GETTABLEKS R7 R4 K13 ["Colors"]
  GETTABLEKS R8 R4 K14 ["getRawComponentStyle"]
  GETTABLEKS R9 R4 K15 ["ComponentSymbols"]
  GETTABLEKS R10 R1 K16 ["Dash"]
  GETTABLEKS R11 R10 K17 ["join"]
  GETIMPORT R16 K19 [settings]
  CALL R16 0 1
  GETTABLEKS R15 R16 K20 ["Studio"]
  GETTABLEKS R14 R15 K21 ["Theme"]
  GETTABLEKS R13 R14 K22 ["Name"]
  JUMPIFEQKS R13 K23 ["Dark"] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  DUPTABLE R13 K28 [{"Title", "Normal", "Smaller", "Subtext"}]
  DUPTABLE R14 K32 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K35 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K29 ["Font"]
  LOADN R15 24
  SETTABLEKS R15 R14 K30 ["TextSize"]
  GETTABLEKS R15 R5 K36 ["TitlebarText"]
  SETTABLEKS R15 R14 K31 ["TextColor3"]
  SETTABLEKS R14 R13 K24 ["Title"]
  DUPTABLE R14 K32 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K35 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K29 ["Font"]
  LOADN R15 22
  SETTABLEKS R15 R14 K30 ["TextSize"]
  GETTABLEKS R15 R5 K37 ["MainText"]
  SETTABLEKS R15 R14 K31 ["TextColor3"]
  SETTABLEKS R14 R13 K25 ["Normal"]
  DUPTABLE R14 K32 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K35 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K29 ["Font"]
  LOADN R15 20
  SETTABLEKS R15 R14 K30 ["TextSize"]
  GETTABLEKS R15 R5 K37 ["MainText"]
  SETTABLEKS R15 R14 K31 ["TextColor3"]
  SETTABLEKS R14 R13 K26 ["Smaller"]
  DUPTABLE R14 K32 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K35 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K29 ["Font"]
  LOADN R15 16
  SETTABLEKS R15 R14 K30 ["TextSize"]
  GETTABLEKS R15 R5 K38 ["DimmedText"]
  SETTABLEKS R15 R14 K31 ["TextColor3"]
  SETTABLEKS R14 R13 K27 ["Subtext"]
  MOVE R14 R11
  MOVE R15 R8
  LOADK R16 K39 ["Image"]
  CALL R15 1 1
  NEWTABLE R16 1 0
  NEWTABLE R17 4 0
  LOADK R18 K40 ["rbxasset://textures/PublishPlaceAs/MoreDetails.png"]
  SETTABLEKS R18 R17 K39 ["Image"]
  GETTABLEKS R18 R5 K41 ["SubText"]
  SETTABLEKS R18 R17 K42 ["Color"]
  GETTABLEKS R18 R3 K43 ["Hover"]
  DUPTABLE R19 K44 [{"Color"}]
  GETTABLEKS R20 R5 K45 ["MainTextHover"]
  SETTABLEKS R20 R19 K42 ["Color"]
  SETTABLE R19 R17 R18
  SETTABLEKS R17 R16 K46 ["&TooltipStyle"]
  CALL R14 2 1
  NEWTABLE R15 64 0
  GETIMPORT R16 K35 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K47 ["font"]
  SETTABLEKS R13 R15 K48 ["fontStyle"]
  GETTABLEKS R16 R5 K49 ["MainBackground"]
  SETTABLEKS R16 R15 K50 ["backgroundColor"]
  GETTABLEKS R16 R5 K51 ["ForegroundContrast"]
  SETTABLEKS R16 R15 K52 ["foregroundColorContrast"]
  GETTABLEKS R16 R5 K37 ["MainText"]
  SETTABLEKS R16 R15 K53 ["textColor"]
  GETTABLEKS R16 R5 K41 ["SubText"]
  SETTABLEKS R16 R15 K54 ["subTextColor"]
  GETTABLEKS R16 R5 K38 ["DimmedText"]
  SETTABLEKS R16 R15 K55 ["dimmerTextColor"]
  GETTABLEKS R16 R5 K56 ["WarningText"]
  SETTABLEKS R16 R15 K57 ["warningTextColor"]
  GETTABLEKS R16 R5 K58 ["Tab"]
  SETTABLEKS R16 R15 K59 ["disabledColor"]
  GETTABLEKS R16 R5 K60 ["Border"]
  SETTABLEKS R16 R15 K61 ["borderColor"]
  GETTABLEKS R16 R7 K62 ["Blue"]
  SETTABLEKS R16 R15 K63 ["hoverColor"]
  GETTABLEKS R16 R5 K64 ["ErrorText"]
  SETTABLEKS R16 R15 K65 ["errorColor"]
  DUPTABLE R16 K72 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
  LOADK R17 K73 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
  SETTABLEKS R17 R16 K66 ["newPlace"]
  LOADK R17 K74 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
  SETTABLEKS R17 R16 K67 ["backArrow"]
  LOADK R17 K75 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
  SETTABLEKS R17 R16 K68 ["checkmark"]
  LOADK R17 K76 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R17 R16 K69 ["thumbnailPlaceHolder"]
  LOADK R17 K77 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R17 R16 K70 ["warning"]
  GETTABLEKS R17 R5 K78 ["IconBackgroundColor"]
  SETTABLEKS R17 R16 K50 ["backgroundColor"]
  GETTABLEKS R17 R5 K79 ["IconImageColor"]
  SETTABLEKS R17 R16 K71 ["imageColor"]
  SETTABLEKS R16 R15 K80 ["icons"]
  DUPTABLE R16 K83 [{"maxHeight", "textBoxHeight"}]
  LOADN R17 120
  SETTABLEKS R17 R16 K81 ["maxHeight"]
  LOADN R17 72
  SETTABLEKS R17 R16 K82 ["textBoxHeight"]
  SETTABLEKS R16 R15 K84 ["descriptionBox"]
  DUPTABLE R16 K87 [{"width", "height"}]
  LOADN R17 40
  SETTABLEKS R17 R16 K85 ["width"]
  LOADN R17 24
  SETTABLEKS R17 R16 K86 ["height"]
  SETTABLEKS R16 R15 K88 ["toggleButton"]
  DUPTABLE R16 K91 [{"minSize", "spacing"}]
  DUPTABLE R17 K87 [{"width", "height"}]
  LOADN R18 144
  SETTABLEKS R18 R17 K85 ["width"]
  LOADN R18 204
  SETTABLEKS R18 R17 K86 ["height"]
  SETTABLEKS R17 R16 K89 ["minSize"]
  LOADN R17 20
  SETTABLEKS R17 R16 K90 ["spacing"]
  SETTABLEKS R16 R15 K92 ["dialog"]
  DUPTABLE R16 K95 [{"paddingY", "size"}]
  LOADN R17 30
  SETTABLEKS R17 R16 K93 ["paddingY"]
  LOADN R17 14
  SETTABLEKS R17 R16 K94 ["size"]
  SETTABLEKS R16 R15 K96 ["tooltipIcon"]
  DUPTABLE R16 K97 [{"height"}]
  LOADN R17 52
  SETTABLEKS R17 R16 K86 ["height"]
  SETTABLEKS R16 R15 K98 ["optInLocations"]
  DUPTABLE R16 K100 [{"height", "length", "paddingY"}]
  LOADN R17 22
  SETTABLEKS R17 R16 K86 ["height"]
  LOADN R17 250
  SETTABLEKS R17 R16 K99 ["length"]
  LOADN R17 25
  SETTABLEKS R17 R16 K93 ["paddingY"]
  SETTABLEKS R16 R15 K101 ["requirementsLink"]
  DUPTABLE R16 K103 [{"Size"}]
  DUPTABLE R17 K106 [{"X", "Y"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K104 ["X"]
  LOADN R18 94
  SETTABLEKS R18 R17 K105 ["Y"]
  SETTABLEKS R17 R16 K102 ["Size"]
  SETTABLEKS R16 R15 K107 ["emailDialog"]
  DUPTABLE R16 K110 [{"button", "fontStyle", "padding", "width"}]
  DUPTABLE R17 K97 [{"height"}]
  LOADN R18 38
  SETTABLEKS R18 R17 K86 ["height"]
  SETTABLEKS R17 R16 K108 ["button"]
  DUPTABLE R17 K111 [{"Normal"}]
  DUPTABLE R18 K112 [{"TextSize"}]
  LOADN R19 22
  SETTABLEKS R19 R18 K30 ["TextSize"]
  SETTABLEKS R18 R17 K25 ["Normal"]
  SETTABLEKS R17 R16 K48 ["fontStyle"]
  LOADN R17 10
  SETTABLEKS R17 R16 K109 ["padding"]
  DUPTABLE R17 K115 [{"creator", "genre"}]
  LOADN R18 74
  SETTABLEKS R18 R17 K113 ["creator"]
  LOADN R18 210
  SETTABLEKS R18 R17 K114 ["genre"]
  SETTABLEKS R17 R16 K85 ["width"]
  SETTABLEKS R16 R15 K116 ["selectInput"]
  DUPTABLE R16 K123 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R17 R5 K124 ["DialogMainButton"]
  SETTABLEKS R17 R16 K117 ["ButtonColor"]
  GETTABLEKS R17 R5 K125 ["LinkText"]
  SETTABLEKS R17 R16 K118 ["ButtonColor_Hover"]
  GETTABLEKS R17 R5 K126 ["DialogMainButtonDisabled"]
  SETTABLEKS R17 R16 K119 ["ButtonColor_Disabled"]
  GETTABLEKS R17 R5 K127 ["DialogMainButtonText"]
  SETTABLEKS R17 R16 K120 ["TextColor"]
  GETTABLEKS R17 R5 K128 ["DialogMainButtonTextDisabled"]
  SETTABLEKS R17 R16 K121 ["TextColor_Disabled"]
  GETTABLEKS R17 R5 K129 ["Light"]
  SETTABLEKS R17 R16 K122 ["BorderColor"]
  SETTABLEKS R16 R15 K130 ["defaultButton"]
  DUPTABLE R16 K123 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R17 R5 K131 ["Button"]
  SETTABLEKS R17 R16 K117 ["ButtonColor"]
  GETTABLEKS R17 R5 K132 ["ButtonHover"]
  SETTABLEKS R17 R16 K118 ["ButtonColor_Hover"]
  GETTABLEKS R17 R5 K133 ["ButtonDisabled"]
  SETTABLEKS R17 R16 K119 ["ButtonColor_Disabled"]
  GETTABLEKS R17 R5 K134 ["ButtonText"]
  SETTABLEKS R17 R16 K120 ["TextColor"]
  GETTABLEKS R17 R5 K38 ["DimmedText"]
  SETTABLEKS R17 R16 K121 ["TextColor_Disabled"]
  GETTABLEKS R17 R5 K60 ["Border"]
  SETTABLEKS R17 R16 K122 ["BorderColor"]
  SETTABLEKS R16 R15 K135 ["cancelButton"]
  DUPTABLE R16 K139 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
  GETTABLEKS R17 R5 K131 ["Button"]
  SETTABLEKS R17 R16 K117 ["ButtonColor"]
  GETTABLEKS R17 R5 K37 ["MainText"]
  SETTABLEKS R17 R16 K136 ["ImageColor"]
  GETTABLEKS R17 R5 K60 ["Border"]
  SETTABLEKS R17 R16 K122 ["BorderColor"]
  DUPTABLE R17 K140 [{"ButtonColor"}]
  GETTABLEKS R18 R5 K132 ["ButtonHover"]
  SETTABLEKS R18 R17 K117 ["ButtonColor"]
  SETTABLEKS R17 R16 K137 ["hovered"]
  DUPTABLE R17 K141 [{"ButtonColor", "ImageColor"}]
  GETTABLEKS R18 R5 K133 ["ButtonDisabled"]
  SETTABLEKS R18 R17 K117 ["ButtonColor"]
  GETTABLEKS R18 R5 K38 ["DimmedText"]
  SETTABLEKS R18 R17 K136 ["ImageColor"]
  SETTABLEKS R17 R16 K138 ["disabled"]
  SETTABLEKS R16 R15 K142 ["pageButton"]
  DUPTABLE R16 K143 [{"backgroundColor"}]
  GETTABLEKS R17 R5 K144 ["MenuBarBackground"]
  SETTABLEKS R17 R16 K50 ["backgroundColor"]
  SETTABLEKS R16 R15 K145 ["menuBar"]
  DUPTABLE R16 K149 [{"hover", "highlight", "text", "font"}]
  GETTABLEKS R17 R5 K150 ["MenuEntryHover"]
  SETTABLEKS R17 R16 K146 ["hover"]
  GETTABLEKS R17 R5 K151 ["MenuEntryHighlight"]
  SETTABLEKS R17 R16 K147 ["highlight"]
  GETTABLEKS R17 R5 K152 ["BrightText"]
  SETTABLEKS R17 R16 K148 ["text"]
  DUPTABLE R17 K155 [{"selected", "unselected"}]
  GETIMPORT R18 K157 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R18 R17 K153 ["selected"]
  GETIMPORT R18 K35 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K154 ["unselected"]
  SETTABLEKS R17 R16 K47 ["font"]
  SETTABLEKS R16 R15 K158 ["menuEntry"]
  DUPTABLE R16 K161 [{"gradient", "textbutton"}]
  GETTABLEKS R17 R5 K37 ["MainText"]
  SETTABLEKS R17 R16 K159 ["gradient"]
  DUPTABLE R17 K162 [{"font"}]
  GETIMPORT R18 K35 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K47 ["font"]
  SETTABLEKS R17 R16 K160 ["textbutton"]
  SETTABLEKS R16 R15 K163 ["footer"]
  DUPTABLE R16 K164 [{"font", "text"}]
  GETIMPORT R17 K35 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K47 ["font"]
  GETTABLEKS R17 R5 K152 ["BrightText"]
  SETTABLEKS R17 R16 K148 ["text"]
  SETTABLEKS R16 R15 K165 ["header"]
  DUPTABLE R16 K167 [{"font", "error", "maxHeight"}]
  GETIMPORT R17 K35 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K47 ["font"]
  GETTABLEKS R17 R5 K64 ["ErrorText"]
  SETTABLEKS R17 R16 K166 ["error"]
  LOADN R17 65
  SETTABLEKS R17 R16 K81 ["maxHeight"]
  SETTABLEKS R16 R15 K168 ["checkboxset"]
  DUPTABLE R16 K169 [{"font", "textColor"}]
  GETIMPORT R17 K157 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R17 R16 K47 ["font"]
  GETTABLEKS R17 R5 K37 ["MainText"]
  SETTABLEKS R17 R16 K53 ["textColor"]
  SETTABLEKS R16 R15 K170 ["listDialog"]
  DUPTABLE R16 K164 [{"font", "text"}]
  GETIMPORT R17 K35 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K47 ["font"]
  GETIMPORT R17 K173 [Color3.fromRGB]
  LOADN R18 2
  LOADN R19 183
  LOADN R20 87
  CALL R17 3 1
  SETTABLEKS R17 R16 K148 ["text"]
  SETTABLEKS R16 R15 K174 ["successText"]
  DUPTABLE R16 K176 [{"maxWidth"}]
  LOADN R17 124
  SETTABLEKS R17 R16 K175 ["maxWidth"]
  SETTABLEKS R16 R15 K177 ["textWithInlineLink"]
  DUPTABLE R16 K164 [{"font", "text"}]
  GETIMPORT R17 K35 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K47 ["font"]
  GETTABLEKS R17 R5 K64 ["ErrorText"]
  SETTABLEKS R17 R16 K148 ["text"]
  SETTABLEKS R16 R15 K178 ["failText"]
  DUPTABLE R16 K162 [{"font"}]
  GETIMPORT R17 K180 [Enum.Font.SourceSansLight]
  SETTABLEKS R17 R16 K47 ["font"]
  SETTABLEKS R16 R15 K181 ["pageText"]
  DUPTABLE R16 K183 [{"backgroundColor", "size", "image"}]
  GETTABLEKS R17 R5 K184 ["InputFieldBackground"]
  SETTABLEKS R17 R16 K50 ["backgroundColor"]
  LOADN R17 20
  SETTABLEKS R17 R16 K94 ["size"]
  DUPTABLE R17 K186 [{"background", "selected"}]
  LOADK R18 K187 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R18 R17 K185 ["background"]
  GETTABLEKS R18 R5 K188 ["RadioButtonImage"]
  SETTABLEKS R18 R17 K153 ["selected"]
  SETTABLEKS R17 R16 K182 ["image"]
  SETTABLEKS R16 R15 K189 ["radioButton"]
  DUPTABLE R16 K197 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R17 R5 K198 ["InformationImage"]
  SETTABLEKS R17 R16 K182 ["image"]
  LOADN R17 20
  SETTABLEKS R17 R16 K190 ["imageSize"]
  LOADN R17 2
  SETTABLEKS R17 R16 K191 ["imageTextGap"]
  DUPTABLE R17 K199 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R18 K35 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K29 ["Font"]
  LOADN R18 18
  SETTABLEKS R18 R17 K30 ["TextSize"]
  GETTABLEKS R18 R5 K37 ["MainText"]
  SETTABLEKS R18 R17 K120 ["TextColor"]
  SETTABLEKS R17 R16 K192 ["BodyBodyDefault"]
  GETTABLEKS R17 R5 K51 ["ForegroundContrast"]
  SETTABLEKS R17 R16 K193 ["paneBackgroundColor"]
  GETTABLEKS R17 R5 K200 ["OtherDivider"]
  SETTABLEKS R17 R16 K194 ["paneBorderColor"]
  LOADN R17 8
  SETTABLEKS R17 R16 K195 ["panePadding"]
  LOADN R17 1
  SETTABLEKS R17 R16 K196 ["paneBorderSize"]
  SETTABLEKS R16 R15 K201 ["genreInfo"]
  LOADN R16 74
  SETTABLEKS R16 R15 K202 ["DROPDOWN_WIDTH"]
  LOADN R16 38
  SETTABLEKS R16 R15 K203 ["DROPDOWN_HEIGHT"]
  LOADN R16 192
  SETTABLEKS R16 R15 K204 ["MENU_BAR_WIDTH"]
  LOADN R16 65
  SETTABLEKS R16 R15 K205 ["FOOTER_HEIGHT"]
  DUPTABLE R16 K218 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
  LOADN R17 12
  SETTABLEKS R17 R16 K206 ["ARROW_SIZE"]
  LOADN R17 115
  SETTABLEKS R17 R16 K207 ["PAGE_PADDING"]
  LOADN R17 232
  SETTABLEKS R17 R16 K208 ["TILE_HEIGHT"]
  LOADN R17 150
  SETTABLEKS R17 R16 K209 ["ICON_SIZE"]
  LOADN R17 45
  SETTABLEKS R17 R16 K210 ["NAME_SIZE"]
  LOADN R17 8
  SETTABLEKS R17 R16 K211 ["NAME_PADDING"]
  LOADN R17 35
  SETTABLEKS R17 R16 K212 ["TILE_FOOTER_SIZE"]
  LOADN R17 4
  SETTABLEKS R17 R16 K213 ["FOOTER_SIDE_PADDING"]
  LOADN R17 4
  SETTABLEKS R17 R16 K214 ["GUIDELINE_LABEL_PADDING"]
  LOADN R17 32
  SETTABLEKS R17 R16 K215 ["FRAME_BUTTON_SIZE"]
  LOADN R17 30
  SETTABLEKS R17 R16 K216 ["CELL_PADDING_X"]
  LOADN R17 40
  SETTABLEKS R17 R16 K217 ["CELL_PADDING_Y"]
  SETTABLEKS R16 R15 K219 ["SCREEN_CHOOSE_GAME"]
  SETTABLEKS R12 R15 K220 ["isDarkerTheme"]
  GETTABLEKS R16 R9 K39 ["Image"]
  SETTABLE R14 R15 R16
  NEWTABLE R16 2 0
  GETTABLEKS R17 R5 K188 ["RadioButtonImage"]
  LOADK R18 K221 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K198 ["InformationImage"]
  LOADK R18 K222 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 2 0
  GETTABLEKS R18 R5 K188 ["RadioButtonImage"]
  LOADK R19 K223 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K198 ["InformationImage"]
  LOADK R19 K224 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png"]
  SETTABLE R19 R17 R18
  DUPCLOSURE R18 K225 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
