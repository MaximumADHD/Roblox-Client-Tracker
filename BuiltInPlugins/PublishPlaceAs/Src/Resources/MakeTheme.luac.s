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
  MOVE R15 R8
  LOADK R16 K47 ["Button"]
  CALL R15 1 1
  MOVE R16 R11
  MOVE R17 R15
  NEWTABLE R18 1 0
  MOVE R19 R11
  GETTABLEKS R20 R15 K48 ["&Round"]
  DUPTABLE R21 K49 [{"TextSize"}]
  GETTABLEKS R23 R13 K25 ["Normal"]
  GETTABLEKS R22 R23 K30 ["TextSize"]
  SETTABLEKS R22 R21 K30 ["TextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["&ManageButton"]
  CALL R16 2 1
  NEWTABLE R17 64 0
  GETIMPORT R18 K35 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K51 ["font"]
  SETTABLEKS R13 R17 K52 ["fontStyle"]
  GETTABLEKS R18 R5 K53 ["MainBackground"]
  SETTABLEKS R18 R17 K54 ["backgroundColor"]
  GETTABLEKS R18 R5 K55 ["ForegroundContrast"]
  SETTABLEKS R18 R17 K56 ["foregroundColorContrast"]
  GETTABLEKS R18 R5 K37 ["MainText"]
  SETTABLEKS R18 R17 K57 ["textColor"]
  GETTABLEKS R18 R5 K41 ["SubText"]
  SETTABLEKS R18 R17 K58 ["subTextColor"]
  GETTABLEKS R18 R5 K38 ["DimmedText"]
  SETTABLEKS R18 R17 K59 ["dimmerTextColor"]
  GETTABLEKS R18 R5 K60 ["WarningText"]
  SETTABLEKS R18 R17 K61 ["warningTextColor"]
  GETTABLEKS R18 R5 K62 ["Tab"]
  SETTABLEKS R18 R17 K63 ["disabledColor"]
  GETTABLEKS R18 R5 K64 ["Border"]
  SETTABLEKS R18 R17 K65 ["borderColor"]
  GETTABLEKS R18 R7 K66 ["Blue"]
  SETTABLEKS R18 R17 K67 ["hoverColor"]
  GETTABLEKS R18 R5 K68 ["ErrorText"]
  SETTABLEKS R18 R17 K69 ["errorColor"]
  DUPTABLE R18 K76 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
  LOADK R19 K77 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
  SETTABLEKS R19 R18 K70 ["newPlace"]
  LOADK R19 K78 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
  SETTABLEKS R19 R18 K71 ["backArrow"]
  LOADK R19 K79 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
  SETTABLEKS R19 R18 K72 ["checkmark"]
  LOADK R19 K80 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R19 R18 K73 ["thumbnailPlaceHolder"]
  LOADK R19 K81 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R19 R18 K74 ["warning"]
  GETTABLEKS R19 R5 K82 ["IconBackgroundColor"]
  SETTABLEKS R19 R18 K54 ["backgroundColor"]
  GETTABLEKS R19 R5 K83 ["IconImageColor"]
  SETTABLEKS R19 R18 K75 ["imageColor"]
  SETTABLEKS R18 R17 K84 ["icons"]
  DUPTABLE R18 K87 [{"maxHeight", "textBoxHeight"}]
  LOADN R19 120
  SETTABLEKS R19 R18 K85 ["maxHeight"]
  LOADN R19 72
  SETTABLEKS R19 R18 K86 ["textBoxHeight"]
  SETTABLEKS R18 R17 K88 ["descriptionBox"]
  DUPTABLE R18 K91 [{"width", "height"}]
  LOADN R19 40
  SETTABLEKS R19 R18 K89 ["width"]
  LOADN R19 24
  SETTABLEKS R19 R18 K90 ["height"]
  SETTABLEKS R18 R17 K92 ["toggleButton"]
  DUPTABLE R18 K95 [{"minSize", "spacing"}]
  DUPTABLE R19 K91 [{"width", "height"}]
  LOADN R20 144
  SETTABLEKS R20 R19 K89 ["width"]
  LOADN R20 204
  SETTABLEKS R20 R19 K90 ["height"]
  SETTABLEKS R19 R18 K93 ["minSize"]
  LOADN R19 20
  SETTABLEKS R19 R18 K94 ["spacing"]
  SETTABLEKS R18 R17 K96 ["dialog"]
  DUPTABLE R18 K99 [{"paddingY", "size"}]
  LOADN R19 30
  SETTABLEKS R19 R18 K97 ["paddingY"]
  LOADN R19 14
  SETTABLEKS R19 R18 K98 ["size"]
  SETTABLEKS R18 R17 K100 ["tooltipIcon"]
  DUPTABLE R18 K101 [{"height"}]
  LOADN R19 52
  SETTABLEKS R19 R18 K90 ["height"]
  SETTABLEKS R18 R17 K102 ["optInLocations"]
  DUPTABLE R18 K104 [{"height", "length", "paddingY"}]
  LOADN R19 22
  SETTABLEKS R19 R18 K90 ["height"]
  LOADN R19 250
  SETTABLEKS R19 R18 K103 ["length"]
  LOADN R19 25
  SETTABLEKS R19 R18 K97 ["paddingY"]
  SETTABLEKS R18 R17 K105 ["requirementsLink"]
  DUPTABLE R18 K107 [{"Size"}]
  DUPTABLE R19 K110 [{"X", "Y"}]
  LOADN R20 244
  SETTABLEKS R20 R19 K108 ["X"]
  LOADN R20 94
  SETTABLEKS R20 R19 K109 ["Y"]
  SETTABLEKS R19 R18 K106 ["Size"]
  SETTABLEKS R18 R17 K111 ["emailDialog"]
  DUPTABLE R18 K114 [{"button", "fontStyle", "padding", "width"}]
  DUPTABLE R19 K101 [{"height"}]
  LOADN R20 38
  SETTABLEKS R20 R19 K90 ["height"]
  SETTABLEKS R19 R18 K112 ["button"]
  DUPTABLE R19 K115 [{"Normal"}]
  DUPTABLE R20 K49 [{"TextSize"}]
  LOADN R21 22
  SETTABLEKS R21 R20 K30 ["TextSize"]
  SETTABLEKS R20 R19 K25 ["Normal"]
  SETTABLEKS R19 R18 K52 ["fontStyle"]
  LOADN R19 10
  SETTABLEKS R19 R18 K113 ["padding"]
  DUPTABLE R19 K118 [{"creator", "genre"}]
  LOADN R20 74
  SETTABLEKS R20 R19 K116 ["creator"]
  LOADN R20 210
  SETTABLEKS R20 R19 K117 ["genre"]
  SETTABLEKS R19 R18 K89 ["width"]
  SETTABLEKS R18 R17 K119 ["selectInput"]
  DUPTABLE R18 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R19 R5 K127 ["DialogMainButton"]
  SETTABLEKS R19 R18 K120 ["ButtonColor"]
  GETTABLEKS R19 R5 K128 ["LinkText"]
  SETTABLEKS R19 R18 K121 ["ButtonColor_Hover"]
  GETTABLEKS R19 R5 K129 ["DialogMainButtonDisabled"]
  SETTABLEKS R19 R18 K122 ["ButtonColor_Disabled"]
  GETTABLEKS R19 R5 K130 ["DialogMainButtonText"]
  SETTABLEKS R19 R18 K123 ["TextColor"]
  GETTABLEKS R19 R5 K131 ["DialogMainButtonTextDisabled"]
  SETTABLEKS R19 R18 K124 ["TextColor_Disabled"]
  GETTABLEKS R19 R5 K132 ["Light"]
  SETTABLEKS R19 R18 K125 ["BorderColor"]
  SETTABLEKS R18 R17 K133 ["defaultButton"]
  DUPTABLE R18 K126 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R19 R5 K47 ["Button"]
  SETTABLEKS R19 R18 K120 ["ButtonColor"]
  GETTABLEKS R19 R5 K134 ["ButtonHover"]
  SETTABLEKS R19 R18 K121 ["ButtonColor_Hover"]
  GETTABLEKS R19 R5 K135 ["ButtonDisabled"]
  SETTABLEKS R19 R18 K122 ["ButtonColor_Disabled"]
  GETTABLEKS R19 R5 K136 ["ButtonText"]
  SETTABLEKS R19 R18 K123 ["TextColor"]
  GETTABLEKS R19 R5 K38 ["DimmedText"]
  SETTABLEKS R19 R18 K124 ["TextColor_Disabled"]
  GETTABLEKS R19 R5 K64 ["Border"]
  SETTABLEKS R19 R18 K125 ["BorderColor"]
  SETTABLEKS R18 R17 K137 ["cancelButton"]
  DUPTABLE R18 K141 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
  GETTABLEKS R19 R5 K47 ["Button"]
  SETTABLEKS R19 R18 K120 ["ButtonColor"]
  GETTABLEKS R19 R5 K37 ["MainText"]
  SETTABLEKS R19 R18 K138 ["ImageColor"]
  GETTABLEKS R19 R5 K64 ["Border"]
  SETTABLEKS R19 R18 K125 ["BorderColor"]
  DUPTABLE R19 K142 [{"ButtonColor"}]
  GETTABLEKS R20 R5 K134 ["ButtonHover"]
  SETTABLEKS R20 R19 K120 ["ButtonColor"]
  SETTABLEKS R19 R18 K139 ["hovered"]
  DUPTABLE R19 K143 [{"ButtonColor", "ImageColor"}]
  GETTABLEKS R20 R5 K135 ["ButtonDisabled"]
  SETTABLEKS R20 R19 K120 ["ButtonColor"]
  GETTABLEKS R20 R5 K38 ["DimmedText"]
  SETTABLEKS R20 R19 K138 ["ImageColor"]
  SETTABLEKS R19 R18 K140 ["disabled"]
  SETTABLEKS R18 R17 K144 ["pageButton"]
  DUPTABLE R18 K145 [{"backgroundColor"}]
  GETTABLEKS R19 R5 K146 ["MenuBarBackground"]
  SETTABLEKS R19 R18 K54 ["backgroundColor"]
  SETTABLEKS R18 R17 K147 ["menuBar"]
  DUPTABLE R18 K151 [{"hover", "highlight", "text", "font"}]
  GETTABLEKS R19 R5 K152 ["MenuEntryHover"]
  SETTABLEKS R19 R18 K148 ["hover"]
  GETTABLEKS R19 R5 K153 ["MenuEntryHighlight"]
  SETTABLEKS R19 R18 K149 ["highlight"]
  GETTABLEKS R19 R5 K154 ["MainTextSelected"]
  SETTABLEKS R19 R18 K150 ["text"]
  DUPTABLE R19 K157 [{"selected", "unselected"}]
  GETIMPORT R20 K159 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R20 R19 K155 ["selected"]
  GETIMPORT R20 K35 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K156 ["unselected"]
  SETTABLEKS R19 R18 K51 ["font"]
  SETTABLEKS R18 R17 K160 ["menuEntry"]
  DUPTABLE R18 K163 [{"gradient", "textbutton"}]
  GETTABLEKS R19 R5 K37 ["MainText"]
  SETTABLEKS R19 R18 K161 ["gradient"]
  DUPTABLE R19 K164 [{"font"}]
  GETIMPORT R20 K35 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K51 ["font"]
  SETTABLEKS R19 R18 K162 ["textbutton"]
  SETTABLEKS R18 R17 K165 ["footer"]
  DUPTABLE R18 K166 [{"font", "text"}]
  GETIMPORT R19 K35 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K51 ["font"]
  GETTABLEKS R19 R5 K167 ["BrightText"]
  SETTABLEKS R19 R18 K150 ["text"]
  SETTABLEKS R18 R17 K168 ["header"]
  DUPTABLE R18 K170 [{"font", "error", "maxHeight"}]
  GETIMPORT R19 K35 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K51 ["font"]
  GETTABLEKS R19 R5 K68 ["ErrorText"]
  SETTABLEKS R19 R18 K169 ["error"]
  LOADN R19 65
  SETTABLEKS R19 R18 K85 ["maxHeight"]
  SETTABLEKS R18 R17 K171 ["checkboxset"]
  DUPTABLE R18 K172 [{"font", "textColor"}]
  GETIMPORT R19 K159 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R19 R18 K51 ["font"]
  GETTABLEKS R19 R5 K37 ["MainText"]
  SETTABLEKS R19 R18 K57 ["textColor"]
  SETTABLEKS R18 R17 K173 ["listDialog"]
  DUPTABLE R18 K166 [{"font", "text"}]
  GETIMPORT R19 K35 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K51 ["font"]
  GETIMPORT R19 K176 [Color3.fromRGB]
  LOADN R20 2
  LOADN R21 183
  LOADN R22 87
  CALL R19 3 1
  SETTABLEKS R19 R18 K150 ["text"]
  SETTABLEKS R18 R17 K177 ["successText"]
  DUPTABLE R18 K179 [{"maxWidth"}]
  LOADN R19 124
  SETTABLEKS R19 R18 K178 ["maxWidth"]
  SETTABLEKS R18 R17 K180 ["textWithInlineLink"]
  DUPTABLE R18 K166 [{"font", "text"}]
  GETIMPORT R19 K35 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K51 ["font"]
  GETTABLEKS R19 R5 K68 ["ErrorText"]
  SETTABLEKS R19 R18 K150 ["text"]
  SETTABLEKS R18 R17 K181 ["failText"]
  DUPTABLE R18 K164 [{"font"}]
  GETIMPORT R19 K183 [Enum.Font.SourceSansLight]
  SETTABLEKS R19 R18 K51 ["font"]
  SETTABLEKS R18 R17 K184 ["pageText"]
  DUPTABLE R18 K186 [{"backgroundColor", "size", "image"}]
  GETTABLEKS R19 R5 K187 ["InputFieldBackground"]
  SETTABLEKS R19 R18 K54 ["backgroundColor"]
  LOADN R19 20
  SETTABLEKS R19 R18 K98 ["size"]
  DUPTABLE R19 K189 [{"background", "selected"}]
  LOADK R20 K190 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R20 R19 K188 ["background"]
  GETTABLEKS R20 R5 K191 ["RadioButtonImage"]
  SETTABLEKS R20 R19 K155 ["selected"]
  SETTABLEKS R19 R18 K185 ["image"]
  SETTABLEKS R18 R17 K192 ["radioButton"]
  DUPTABLE R18 K200 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R19 R5 K201 ["InformationImage"]
  SETTABLEKS R19 R18 K185 ["image"]
  LOADN R19 20
  SETTABLEKS R19 R18 K193 ["imageSize"]
  LOADN R19 2
  SETTABLEKS R19 R18 K194 ["imageTextGap"]
  DUPTABLE R19 K202 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R20 K35 [Enum.Font.SourceSans]
  SETTABLEKS R20 R19 K29 ["Font"]
  LOADN R20 18
  SETTABLEKS R20 R19 K30 ["TextSize"]
  GETTABLEKS R20 R5 K37 ["MainText"]
  SETTABLEKS R20 R19 K123 ["TextColor"]
  SETTABLEKS R19 R18 K195 ["BodyBodyDefault"]
  GETTABLEKS R19 R5 K55 ["ForegroundContrast"]
  SETTABLEKS R19 R18 K196 ["paneBackgroundColor"]
  GETTABLEKS R19 R5 K203 ["OtherDivider"]
  SETTABLEKS R19 R18 K197 ["paneBorderColor"]
  LOADN R19 8
  SETTABLEKS R19 R18 K198 ["panePadding"]
  LOADN R19 1
  SETTABLEKS R19 R18 K199 ["paneBorderSize"]
  SETTABLEKS R18 R17 K204 ["genreInfo"]
  DUPTABLE R18 K205 [{"backgroundColor", "textColor"}]
  GETTABLEKS R19 R5 K55 ["ForegroundContrast"]
  SETTABLEKS R19 R18 K54 ["backgroundColor"]
  GETTABLEKS R19 R5 K167 ["BrightText"]
  SETTABLEKS R19 R18 K57 ["textColor"]
  SETTABLEKS R18 R17 K206 ["eligibilityBanner"]
  LOADN R18 74
  SETTABLEKS R18 R17 K207 ["DROPDOWN_WIDTH"]
  LOADN R18 38
  SETTABLEKS R18 R17 K208 ["DROPDOWN_HEIGHT"]
  LOADN R18 192
  SETTABLEKS R18 R17 K209 ["MENU_BAR_WIDTH"]
  LOADN R18 65
  SETTABLEKS R18 R17 K210 ["FOOTER_HEIGHT"]
  DUPTABLE R18 K223 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
  LOADN R19 12
  SETTABLEKS R19 R18 K211 ["ARROW_SIZE"]
  LOADN R19 115
  SETTABLEKS R19 R18 K212 ["PAGE_PADDING"]
  LOADN R19 232
  SETTABLEKS R19 R18 K213 ["TILE_HEIGHT"]
  LOADN R19 150
  SETTABLEKS R19 R18 K214 ["ICON_SIZE"]
  LOADN R19 45
  SETTABLEKS R19 R18 K215 ["NAME_SIZE"]
  LOADN R19 8
  SETTABLEKS R19 R18 K216 ["NAME_PADDING"]
  LOADN R19 35
  SETTABLEKS R19 R18 K217 ["TILE_FOOTER_SIZE"]
  LOADN R19 4
  SETTABLEKS R19 R18 K218 ["FOOTER_SIDE_PADDING"]
  LOADN R19 4
  SETTABLEKS R19 R18 K219 ["GUIDELINE_LABEL_PADDING"]
  LOADN R19 32
  SETTABLEKS R19 R18 K220 ["FRAME_BUTTON_SIZE"]
  LOADN R19 30
  SETTABLEKS R19 R18 K221 ["CELL_PADDING_X"]
  LOADN R19 40
  SETTABLEKS R19 R18 K222 ["CELL_PADDING_Y"]
  SETTABLEKS R18 R17 K224 ["SCREEN_CHOOSE_GAME"]
  SETTABLEKS R12 R17 K225 ["isDarkerTheme"]
  GETTABLEKS R18 R9 K39 ["Image"]
  SETTABLE R14 R17 R18
  GETTABLEKS R18 R9 K47 ["Button"]
  SETTABLE R16 R17 R18
  NEWTABLE R18 2 0
  GETTABLEKS R19 R5 K191 ["RadioButtonImage"]
  LOADK R20 K226 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R5 K201 ["InformationImage"]
  LOADK R20 K227 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
  SETTABLE R20 R18 R19
  NEWTABLE R19 2 0
  GETTABLEKS R20 R5 K191 ["RadioButtonImage"]
  LOADK R21 K228 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R5 K201 ["InformationImage"]
  LOADK R21 K229 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Information.png"]
  SETTABLE R21 R19 R20
  DUPCLOSURE R20 K230 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  RETURN R20 1
