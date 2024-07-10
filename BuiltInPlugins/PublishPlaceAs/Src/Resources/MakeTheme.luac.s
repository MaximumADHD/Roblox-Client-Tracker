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
  GETTABLEKS R2 R3 K2 ["parent"]
  GETTABLEKS R1 R2 K2 ["parent"]
  GETTABLEKS R0 R1 K2 ["parent"]
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
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K24 ["Src"]
  GETTABLEKS R15 R16 K25 ["Flags"]
  GETTABLEKS R14 R15 K26 ["getFFlagCAP1107"]
  CALL R13 1 1
  DUPTABLE R14 K31 [{"Title", "Normal", "Smaller", "Subtext"}]
  DUPTABLE R15 K35 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K38 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K32 ["Font"]
  LOADN R16 24
  SETTABLEKS R16 R15 K33 ["TextSize"]
  GETTABLEKS R16 R5 K39 ["TitlebarText"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  SETTABLEKS R15 R14 K27 ["Title"]
  DUPTABLE R15 K35 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K38 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K32 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K33 ["TextSize"]
  GETTABLEKS R16 R5 K40 ["MainText"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  SETTABLEKS R15 R14 K28 ["Normal"]
  DUPTABLE R15 K35 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K38 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K32 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K33 ["TextSize"]
  GETTABLEKS R16 R5 K40 ["MainText"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  SETTABLEKS R15 R14 K29 ["Smaller"]
  DUPTABLE R15 K35 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K38 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K32 ["Font"]
  LOADN R16 16
  SETTABLEKS R16 R15 K33 ["TextSize"]
  GETTABLEKS R16 R5 K41 ["DimmedText"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  SETTABLEKS R15 R14 K30 ["Subtext"]
  MOVE R15 R11
  MOVE R16 R8
  LOADK R17 K42 ["Image"]
  CALL R16 1 1
  NEWTABLE R17 1 0
  NEWTABLE R18 4 0
  LOADK R19 K43 ["rbxasset://textures/PublishPlaceAs/MoreDetails.png"]
  SETTABLEKS R19 R18 K42 ["Image"]
  GETTABLEKS R19 R5 K44 ["SubText"]
  SETTABLEKS R19 R18 K45 ["Color"]
  GETTABLEKS R19 R3 K46 ["Hover"]
  DUPTABLE R20 K47 [{"Color"}]
  GETTABLEKS R21 R5 K48 ["MainTextHover"]
  SETTABLEKS R21 R20 K45 ["Color"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K49 ["&TooltipStyle"]
  CALL R15 2 1
  NEWTABLE R16 64 0
  GETIMPORT R17 K38 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K50 ["font"]
  SETTABLEKS R14 R16 K51 ["fontStyle"]
  GETTABLEKS R17 R5 K52 ["MainBackground"]
  SETTABLEKS R17 R16 K53 ["backgroundColor"]
  GETTABLEKS R17 R5 K54 ["ForegroundContrast"]
  SETTABLEKS R17 R16 K55 ["foregroundColorContrast"]
  GETTABLEKS R17 R5 K40 ["MainText"]
  SETTABLEKS R17 R16 K56 ["textColor"]
  GETTABLEKS R17 R5 K44 ["SubText"]
  SETTABLEKS R17 R16 K57 ["subTextColor"]
  GETTABLEKS R17 R5 K41 ["DimmedText"]
  SETTABLEKS R17 R16 K58 ["dimmerTextColor"]
  GETTABLEKS R17 R5 K59 ["WarningText"]
  SETTABLEKS R17 R16 K60 ["warningTextColor"]
  GETTABLEKS R17 R5 K61 ["Tab"]
  SETTABLEKS R17 R16 K62 ["disabledColor"]
  GETTABLEKS R17 R5 K63 ["Border"]
  SETTABLEKS R17 R16 K64 ["borderColor"]
  GETTABLEKS R17 R7 K65 ["Blue"]
  SETTABLEKS R17 R16 K66 ["hoverColor"]
  GETTABLEKS R17 R5 K67 ["ErrorText"]
  SETTABLEKS R17 R16 K68 ["errorColor"]
  DUPTABLE R17 K75 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
  LOADK R18 K76 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
  SETTABLEKS R18 R17 K69 ["newPlace"]
  LOADK R18 K77 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
  SETTABLEKS R18 R17 K70 ["backArrow"]
  LOADK R18 K78 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
  SETTABLEKS R18 R17 K71 ["checkmark"]
  LOADK R18 K79 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R18 R17 K72 ["thumbnailPlaceHolder"]
  LOADK R18 K80 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R18 R17 K73 ["warning"]
  GETTABLEKS R18 R5 K81 ["IconBackgroundColor"]
  SETTABLEKS R18 R17 K53 ["backgroundColor"]
  GETTABLEKS R18 R5 K82 ["IconImageColor"]
  SETTABLEKS R18 R17 K74 ["imageColor"]
  SETTABLEKS R17 R16 K83 ["icons"]
  DUPTABLE R17 K86 [{"maxHeight", "textBoxHeight"}]
  LOADN R18 120
  SETTABLEKS R18 R17 K84 ["maxHeight"]
  MOVE R19 R13
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADN R18 72
  JUMP [+1]
  LOADN R18 90
  SETTABLEKS R18 R17 K85 ["textBoxHeight"]
  SETTABLEKS R17 R16 K87 ["descriptionBox"]
  DUPTABLE R17 K90 [{"width", "height"}]
  LOADN R18 40
  SETTABLEKS R18 R17 K88 ["width"]
  LOADN R18 24
  SETTABLEKS R18 R17 K89 ["height"]
  SETTABLEKS R17 R16 K91 ["toggleButton"]
  DUPTABLE R17 K94 [{"minSize", "spacing"}]
  DUPTABLE R18 K90 [{"width", "height"}]
  LOADN R19 144
  SETTABLEKS R19 R18 K88 ["width"]
  LOADN R19 204
  SETTABLEKS R19 R18 K89 ["height"]
  SETTABLEKS R18 R17 K92 ["minSize"]
  LOADN R18 20
  SETTABLEKS R18 R17 K93 ["spacing"]
  SETTABLEKS R17 R16 K95 ["dialog"]
  DUPTABLE R17 K98 [{"paddingY", "size"}]
  LOADN R18 30
  SETTABLEKS R18 R17 K96 ["paddingY"]
  LOADN R18 14
  SETTABLEKS R18 R17 K97 ["size"]
  SETTABLEKS R17 R16 K99 ["tooltipIcon"]
  DUPTABLE R17 K100 [{"height"}]
  LOADN R18 52
  SETTABLEKS R18 R17 K89 ["height"]
  SETTABLEKS R17 R16 K101 ["optInLocations"]
  DUPTABLE R17 K103 [{"height", "length", "paddingY"}]
  LOADN R18 22
  SETTABLEKS R18 R17 K89 ["height"]
  LOADN R18 250
  SETTABLEKS R18 R17 K102 ["length"]
  LOADN R18 25
  SETTABLEKS R18 R17 K96 ["paddingY"]
  SETTABLEKS R17 R16 K104 ["requirementsLink"]
  DUPTABLE R17 K106 [{"Size"}]
  DUPTABLE R18 K109 [{"X", "Y"}]
  LOADN R19 244
  SETTABLEKS R19 R18 K107 ["X"]
  LOADN R19 94
  SETTABLEKS R19 R18 K108 ["Y"]
  SETTABLEKS R18 R17 K105 ["Size"]
  SETTABLEKS R17 R16 K110 ["emailDialog"]
  DUPTABLE R17 K113 [{"button", "fontStyle", "padding", "width"}]
  DUPTABLE R18 K100 [{"height"}]
  LOADN R19 38
  SETTABLEKS R19 R18 K89 ["height"]
  SETTABLEKS R18 R17 K111 ["button"]
  DUPTABLE R18 K114 [{"Normal"}]
  DUPTABLE R19 K115 [{"TextSize"}]
  LOADN R20 22
  SETTABLEKS R20 R19 K33 ["TextSize"]
  SETTABLEKS R19 R18 K28 ["Normal"]
  SETTABLEKS R18 R17 K51 ["fontStyle"]
  LOADN R18 10
  SETTABLEKS R18 R17 K112 ["padding"]
  DUPTABLE R18 K118 [{"creator", "genre"}]
  LOADN R19 74
  SETTABLEKS R19 R18 K116 ["creator"]
  LOADN R19 210
  SETTABLEKS R19 R18 K117 ["genre"]
  SETTABLEKS R18 R17 K88 ["width"]
  SETTABLEKS R17 R16 K119 ["selectInput"]
  DUPTABLE R17 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R18 R5 K127 ["DialogMainButton"]
  SETTABLEKS R18 R17 K120 ["ButtonColor"]
  GETTABLEKS R18 R5 K128 ["LinkText"]
  SETTABLEKS R18 R17 K121 ["ButtonColor_Hover"]
  GETTABLEKS R18 R5 K129 ["DialogMainButtonDisabled"]
  SETTABLEKS R18 R17 K122 ["ButtonColor_Disabled"]
  GETTABLEKS R18 R5 K130 ["DialogMainButtonText"]
  SETTABLEKS R18 R17 K123 ["TextColor"]
  GETTABLEKS R18 R5 K131 ["DialogMainButtonTextDisabled"]
  SETTABLEKS R18 R17 K124 ["TextColor_Disabled"]
  GETTABLEKS R18 R5 K132 ["Light"]
  SETTABLEKS R18 R17 K125 ["BorderColor"]
  SETTABLEKS R17 R16 K133 ["defaultButton"]
  DUPTABLE R17 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R18 R5 K134 ["Button"]
  SETTABLEKS R18 R17 K120 ["ButtonColor"]
  GETTABLEKS R18 R5 K135 ["ButtonHover"]
  SETTABLEKS R18 R17 K121 ["ButtonColor_Hover"]
  GETTABLEKS R18 R5 K136 ["ButtonDisabled"]
  SETTABLEKS R18 R17 K122 ["ButtonColor_Disabled"]
  GETTABLEKS R18 R5 K137 ["ButtonText"]
  SETTABLEKS R18 R17 K123 ["TextColor"]
  GETTABLEKS R18 R5 K41 ["DimmedText"]
  SETTABLEKS R18 R17 K124 ["TextColor_Disabled"]
  GETTABLEKS R18 R5 K63 ["Border"]
  SETTABLEKS R18 R17 K125 ["BorderColor"]
  SETTABLEKS R17 R16 K138 ["cancelButton"]
  DUPTABLE R17 K142 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
  GETTABLEKS R18 R5 K134 ["Button"]
  SETTABLEKS R18 R17 K120 ["ButtonColor"]
  GETTABLEKS R18 R5 K40 ["MainText"]
  SETTABLEKS R18 R17 K139 ["ImageColor"]
  GETTABLEKS R18 R5 K63 ["Border"]
  SETTABLEKS R18 R17 K125 ["BorderColor"]
  DUPTABLE R18 K143 [{"ButtonColor"}]
  GETTABLEKS R19 R5 K135 ["ButtonHover"]
  SETTABLEKS R19 R18 K120 ["ButtonColor"]
  SETTABLEKS R18 R17 K140 ["hovered"]
  DUPTABLE R18 K144 [{"ButtonColor", "ImageColor"}]
  GETTABLEKS R19 R5 K136 ["ButtonDisabled"]
  SETTABLEKS R19 R18 K120 ["ButtonColor"]
  GETTABLEKS R19 R5 K41 ["DimmedText"]
  SETTABLEKS R19 R18 K139 ["ImageColor"]
  SETTABLEKS R18 R17 K141 ["disabled"]
  SETTABLEKS R17 R16 K145 ["pageButton"]
  DUPTABLE R17 K146 [{"backgroundColor"}]
  GETTABLEKS R18 R5 K147 ["MenuBarBackground"]
  SETTABLEKS R18 R17 K53 ["backgroundColor"]
  SETTABLEKS R17 R16 K148 ["menuBar"]
  DUPTABLE R17 K152 [{"hover", "highlight", "text", "font"}]
  GETTABLEKS R18 R5 K153 ["MenuEntryHover"]
  SETTABLEKS R18 R17 K149 ["hover"]
  GETTABLEKS R18 R5 K154 ["MenuEntryHighlight"]
  SETTABLEKS R18 R17 K150 ["highlight"]
  GETTABLEKS R18 R5 K155 ["BrightText"]
  SETTABLEKS R18 R17 K151 ["text"]
  DUPTABLE R18 K158 [{"selected", "unselected"}]
  GETIMPORT R19 K160 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R19 R18 K156 ["selected"]
  GETIMPORT R19 K38 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K157 ["unselected"]
  SETTABLEKS R18 R17 K50 ["font"]
  SETTABLEKS R17 R16 K161 ["menuEntry"]
  DUPTABLE R17 K164 [{"gradient", "textbutton"}]
  GETTABLEKS R18 R5 K40 ["MainText"]
  SETTABLEKS R18 R17 K162 ["gradient"]
  DUPTABLE R18 K165 [{"font"}]
  GETIMPORT R19 K38 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K50 ["font"]
  SETTABLEKS R18 R17 K163 ["textbutton"]
  SETTABLEKS R17 R16 K166 ["footer"]
  DUPTABLE R17 K167 [{"font", "text"}]
  GETIMPORT R18 K38 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K50 ["font"]
  GETTABLEKS R18 R5 K155 ["BrightText"]
  SETTABLEKS R18 R17 K151 ["text"]
  SETTABLEKS R17 R16 K168 ["header"]
  DUPTABLE R17 K170 [{"font", "error", "maxHeight"}]
  GETIMPORT R18 K38 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K50 ["font"]
  GETTABLEKS R18 R5 K67 ["ErrorText"]
  SETTABLEKS R18 R17 K169 ["error"]
  LOADN R18 65
  SETTABLEKS R18 R17 K84 ["maxHeight"]
  SETTABLEKS R17 R16 K171 ["checkboxset"]
  DUPTABLE R17 K172 [{"font", "textColor"}]
  GETIMPORT R18 K160 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R18 R17 K50 ["font"]
  GETTABLEKS R18 R5 K40 ["MainText"]
  SETTABLEKS R18 R17 K56 ["textColor"]
  SETTABLEKS R17 R16 K173 ["listDialog"]
  DUPTABLE R17 K167 [{"font", "text"}]
  GETIMPORT R18 K38 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K50 ["font"]
  GETIMPORT R18 K176 [Color3.fromRGB]
  LOADN R19 2
  LOADN R20 183
  LOADN R21 87
  CALL R18 3 1
  SETTABLEKS R18 R17 K151 ["text"]
  SETTABLEKS R17 R16 K177 ["successText"]
  DUPTABLE R17 K179 [{"maxWidth"}]
  LOADN R18 124
  SETTABLEKS R18 R17 K178 ["maxWidth"]
  SETTABLEKS R17 R16 K180 ["textWithInlineLink"]
  DUPTABLE R17 K167 [{"font", "text"}]
  GETIMPORT R18 K38 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K50 ["font"]
  GETTABLEKS R18 R5 K67 ["ErrorText"]
  SETTABLEKS R18 R17 K151 ["text"]
  SETTABLEKS R17 R16 K181 ["failText"]
  DUPTABLE R17 K165 [{"font"}]
  GETIMPORT R18 K183 [Enum.Font.SourceSansLight]
  SETTABLEKS R18 R17 K50 ["font"]
  SETTABLEKS R17 R16 K184 ["pageText"]
  DUPTABLE R17 K186 [{"backgroundColor", "size", "image"}]
  GETTABLEKS R18 R5 K187 ["InputFieldBackground"]
  SETTABLEKS R18 R17 K53 ["backgroundColor"]
  LOADN R18 20
  SETTABLEKS R18 R17 K97 ["size"]
  DUPTABLE R18 K189 [{"background", "selected"}]
  LOADK R19 K190 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R19 R18 K188 ["background"]
  GETTABLEKS R19 R5 K191 ["RadioButtonImage"]
  SETTABLEKS R19 R18 K156 ["selected"]
  SETTABLEKS R18 R17 K185 ["image"]
  SETTABLEKS R17 R16 K192 ["radioButton"]
  DUPTABLE R17 K200 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R18 R5 K201 ["InformationImage"]
  SETTABLEKS R18 R17 K185 ["image"]
  LOADN R18 20
  SETTABLEKS R18 R17 K193 ["imageSize"]
  LOADN R18 2
  SETTABLEKS R18 R17 K194 ["imageTextGap"]
  DUPTABLE R18 K202 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R19 K38 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K32 ["Font"]
  LOADN R19 18
  SETTABLEKS R19 R18 K33 ["TextSize"]
  GETTABLEKS R19 R5 K40 ["MainText"]
  SETTABLEKS R19 R18 K123 ["TextColor"]
  SETTABLEKS R18 R17 K195 ["BodyBodyDefault"]
  GETTABLEKS R18 R5 K54 ["ForegroundContrast"]
  SETTABLEKS R18 R17 K196 ["paneBackgroundColor"]
  GETTABLEKS R18 R5 K203 ["OtherDivider"]
  SETTABLEKS R18 R17 K197 ["paneBorderColor"]
  LOADN R18 8
  SETTABLEKS R18 R17 K198 ["panePadding"]
  LOADN R18 1
  SETTABLEKS R18 R17 K199 ["paneBorderSize"]
  SETTABLEKS R17 R16 K204 ["genreInfo"]
  LOADN R17 74
  SETTABLEKS R17 R16 K205 ["DROPDOWN_WIDTH"]
  LOADN R17 38
  SETTABLEKS R17 R16 K206 ["DROPDOWN_HEIGHT"]
  LOADN R17 192
  SETTABLEKS R17 R16 K207 ["MENU_BAR_WIDTH"]
  LOADN R17 65
  SETTABLEKS R17 R16 K208 ["FOOTER_HEIGHT"]
  DUPTABLE R17 K221 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
  LOADN R18 12
  SETTABLEKS R18 R17 K209 ["ARROW_SIZE"]
  LOADN R18 115
  SETTABLEKS R18 R17 K210 ["PAGE_PADDING"]
  LOADN R18 232
  SETTABLEKS R18 R17 K211 ["TILE_HEIGHT"]
  LOADN R18 150
  SETTABLEKS R18 R17 K212 ["ICON_SIZE"]
  LOADN R18 45
  SETTABLEKS R18 R17 K213 ["NAME_SIZE"]
  LOADN R18 8
  SETTABLEKS R18 R17 K214 ["NAME_PADDING"]
  LOADN R18 35
  SETTABLEKS R18 R17 K215 ["TILE_FOOTER_SIZE"]
  LOADN R18 4
  SETTABLEKS R18 R17 K216 ["FOOTER_SIDE_PADDING"]
  LOADN R18 4
  SETTABLEKS R18 R17 K217 ["GUIDELINE_LABEL_PADDING"]
  LOADN R18 32
  SETTABLEKS R18 R17 K218 ["FRAME_BUTTON_SIZE"]
  LOADN R18 30
  SETTABLEKS R18 R17 K219 ["CELL_PADDING_X"]
  LOADN R18 40
  SETTABLEKS R18 R17 K220 ["CELL_PADDING_Y"]
  SETTABLEKS R17 R16 K222 ["SCREEN_CHOOSE_GAME"]
  SETTABLEKS R12 R16 K223 ["isDarkerTheme"]
  GETTABLEKS R17 R9 K42 ["Image"]
  SETTABLE R15 R16 R17
  NEWTABLE R17 2 0
  GETTABLEKS R18 R5 K191 ["RadioButtonImage"]
  LOADK R19 K224 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R5 K201 ["InformationImage"]
  LOADK R19 K225 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
  SETTABLE R19 R17 R18
  NEWTABLE R18 2 0
  GETTABLEKS R19 R5 K191 ["RadioButtonImage"]
  LOADK R20 K226 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K201 ["InformationImage"]
  LOADK R20 K227 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png"]
  SETTABLE R20 R18 R19
  DUPCLOSURE R19 K228 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R16
  RETURN R19 1
