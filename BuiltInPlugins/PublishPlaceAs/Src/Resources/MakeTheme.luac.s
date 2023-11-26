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
  DUPTABLE R13 K27 [{"Title", "Normal", "Subtext"}]
  DUPTABLE R14 K31 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K34 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K28 ["Font"]
  LOADN R15 24
  SETTABLEKS R15 R14 K29 ["TextSize"]
  GETTABLEKS R15 R5 K35 ["TitlebarText"]
  SETTABLEKS R15 R14 K30 ["TextColor3"]
  SETTABLEKS R14 R13 K24 ["Title"]
  DUPTABLE R14 K31 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K34 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K28 ["Font"]
  LOADN R15 22
  SETTABLEKS R15 R14 K29 ["TextSize"]
  GETTABLEKS R15 R5 K36 ["MainText"]
  SETTABLEKS R15 R14 K30 ["TextColor3"]
  SETTABLEKS R14 R13 K25 ["Normal"]
  DUPTABLE R14 K31 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K34 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K28 ["Font"]
  LOADN R15 16
  SETTABLEKS R15 R14 K29 ["TextSize"]
  GETTABLEKS R15 R5 K37 ["DimmedText"]
  SETTABLEKS R15 R14 K30 ["TextColor3"]
  SETTABLEKS R14 R13 K26 ["Subtext"]
  MOVE R14 R11
  MOVE R15 R8
  LOADK R16 K38 ["Image"]
  CALL R15 1 1
  NEWTABLE R16 1 0
  NEWTABLE R17 4 0
  LOADK R18 K39 ["rbxasset://textures/PublishPlaceAs/MoreDetails.png"]
  SETTABLEKS R18 R17 K38 ["Image"]
  GETTABLEKS R18 R5 K40 ["SubText"]
  SETTABLEKS R18 R17 K41 ["Color"]
  GETTABLEKS R18 R3 K42 ["Hover"]
  DUPTABLE R19 K43 [{"Color"}]
  GETTABLEKS R20 R5 K44 ["MainTextHover"]
  SETTABLEKS R20 R19 K41 ["Color"]
  SETTABLE R19 R17 R18
  SETTABLEKS R17 R16 K45 ["&TooltipStyle"]
  CALL R14 2 1
  NEWTABLE R15 64 0
  GETIMPORT R16 K34 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K46 ["font"]
  SETTABLEKS R13 R15 K47 ["fontStyle"]
  GETTABLEKS R16 R5 K48 ["MainBackground"]
  SETTABLEKS R16 R15 K49 ["backgroundColor"]
  GETTABLEKS R16 R5 K50 ["ForegroundContrast"]
  SETTABLEKS R16 R15 K51 ["foregroundColorContrast"]
  GETTABLEKS R16 R5 K36 ["MainText"]
  SETTABLEKS R16 R15 K52 ["textColor"]
  GETTABLEKS R16 R5 K40 ["SubText"]
  SETTABLEKS R16 R15 K53 ["subTextColor"]
  GETTABLEKS R16 R5 K37 ["DimmedText"]
  SETTABLEKS R16 R15 K54 ["dimmerTextColor"]
  GETTABLEKS R16 R5 K55 ["WarningText"]
  SETTABLEKS R16 R15 K56 ["warningTextColor"]
  GETTABLEKS R16 R5 K57 ["Tab"]
  SETTABLEKS R16 R15 K58 ["disabledColor"]
  GETTABLEKS R16 R5 K59 ["Border"]
  SETTABLEKS R16 R15 K60 ["borderColor"]
  GETTABLEKS R16 R7 K61 ["Blue"]
  SETTABLEKS R16 R15 K62 ["hoverColor"]
  GETTABLEKS R16 R5 K63 ["ErrorText"]
  SETTABLEKS R16 R15 K64 ["errorColor"]
  DUPTABLE R16 K71 [{"newPlace", "backArrow", "checkmark", "thumbnailPlaceHolder", "warning", "backgroundColor", "imageColor"}]
  LOADK R17 K72 ["rbxasset://textures/PublishPlaceAs/WhiteNew.png"]
  SETTABLEKS R17 R16 K65 ["newPlace"]
  LOADK R17 K73 ["rbxasset://textures/PublishPlaceAs/navigation_pushBack.png"]
  SETTABLEKS R17 R16 K66 ["backArrow"]
  LOADK R17 K74 ["rbxasset://textures/PublishPlaceAs/common_checkmarkCircle.png"]
  SETTABLEKS R17 R16 K67 ["checkmark"]
  LOADK R17 K75 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R17 R16 K68 ["thumbnailPlaceHolder"]
  LOADK R17 K76 ["rbxasset://textures/StudioSharedUI/statusWarning.png"]
  SETTABLEKS R17 R16 K69 ["warning"]
  GETTABLEKS R17 R5 K77 ["IconBackgroundColor"]
  SETTABLEKS R17 R16 K49 ["backgroundColor"]
  GETTABLEKS R17 R5 K78 ["IconImageColor"]
  SETTABLEKS R17 R16 K70 ["imageColor"]
  SETTABLEKS R16 R15 K79 ["icons"]
  DUPTABLE R16 K82 [{"maxHeight", "textBoxHeight"}]
  LOADN R17 120
  SETTABLEKS R17 R16 K80 ["maxHeight"]
  LOADN R17 90
  SETTABLEKS R17 R16 K81 ["textBoxHeight"]
  SETTABLEKS R16 R15 K83 ["descriptionBox"]
  DUPTABLE R16 K86 [{"width", "height"}]
  LOADN R17 40
  SETTABLEKS R17 R16 K84 ["width"]
  LOADN R17 24
  SETTABLEKS R17 R16 K85 ["height"]
  SETTABLEKS R16 R15 K87 ["toggleButton"]
  DUPTABLE R16 K90 [{"minSize", "spacing"}]
  DUPTABLE R17 K86 [{"width", "height"}]
  LOADN R18 144
  SETTABLEKS R18 R17 K84 ["width"]
  LOADN R18 204
  SETTABLEKS R18 R17 K85 ["height"]
  SETTABLEKS R17 R16 K88 ["minSize"]
  LOADN R17 20
  SETTABLEKS R17 R16 K89 ["spacing"]
  SETTABLEKS R16 R15 K91 ["dialog"]
  DUPTABLE R16 K94 [{"paddingY", "size"}]
  LOADN R17 30
  SETTABLEKS R17 R16 K92 ["paddingY"]
  LOADN R17 14
  SETTABLEKS R17 R16 K93 ["size"]
  SETTABLEKS R16 R15 K95 ["tooltipIcon"]
  DUPTABLE R16 K96 [{"height"}]
  LOADN R17 52
  SETTABLEKS R17 R16 K85 ["height"]
  SETTABLEKS R16 R15 K97 ["optInLocations"]
  DUPTABLE R16 K99 [{"height", "length", "paddingY"}]
  LOADN R17 22
  SETTABLEKS R17 R16 K85 ["height"]
  LOADN R17 250
  SETTABLEKS R17 R16 K98 ["length"]
  LOADN R17 25
  SETTABLEKS R17 R16 K92 ["paddingY"]
  SETTABLEKS R16 R15 K100 ["requirementsLink"]
  DUPTABLE R16 K102 [{"Size"}]
  DUPTABLE R17 K105 [{"X", "Y"}]
  LOADN R18 244
  SETTABLEKS R18 R17 K103 ["X"]
  LOADN R18 94
  SETTABLEKS R18 R17 K104 ["Y"]
  SETTABLEKS R17 R16 K101 ["Size"]
  SETTABLEKS R16 R15 K106 ["emailDialog"]
  DUPTABLE R16 K109 [{"button", "fontStyle", "padding", "width"}]
  DUPTABLE R17 K96 [{"height"}]
  LOADN R18 38
  SETTABLEKS R18 R17 K85 ["height"]
  SETTABLEKS R17 R16 K107 ["button"]
  DUPTABLE R17 K110 [{"Normal"}]
  DUPTABLE R18 K111 [{"TextSize"}]
  LOADN R19 22
  SETTABLEKS R19 R18 K29 ["TextSize"]
  SETTABLEKS R18 R17 K25 ["Normal"]
  SETTABLEKS R17 R16 K47 ["fontStyle"]
  LOADN R17 10
  SETTABLEKS R17 R16 K108 ["padding"]
  DUPTABLE R17 K114 [{"creator", "genre"}]
  LOADN R18 74
  SETTABLEKS R18 R17 K112 ["creator"]
  LOADN R18 210
  SETTABLEKS R18 R17 K113 ["genre"]
  SETTABLEKS R17 R16 K84 ["width"]
  SETTABLEKS R16 R15 K115 ["selectInput"]
  DUPTABLE R16 K122 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R17 R5 K123 ["DialogMainButton"]
  SETTABLEKS R17 R16 K116 ["ButtonColor"]
  GETTABLEKS R17 R5 K124 ["LinkText"]
  SETTABLEKS R17 R16 K117 ["ButtonColor_Hover"]
  GETTABLEKS R17 R5 K125 ["DialogMainButtonDisabled"]
  SETTABLEKS R17 R16 K118 ["ButtonColor_Disabled"]
  GETTABLEKS R17 R5 K126 ["DialogMainButtonText"]
  SETTABLEKS R17 R16 K119 ["TextColor"]
  GETTABLEKS R17 R5 K127 ["DialogMainButtonTextDisabled"]
  SETTABLEKS R17 R16 K120 ["TextColor_Disabled"]
  GETTABLEKS R17 R5 K128 ["Light"]
  SETTABLEKS R17 R16 K121 ["BorderColor"]
  SETTABLEKS R16 R15 K129 ["defaultButton"]
  DUPTABLE R16 K122 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
  GETTABLEKS R17 R5 K130 ["Button"]
  SETTABLEKS R17 R16 K116 ["ButtonColor"]
  GETTABLEKS R17 R5 K131 ["ButtonHover"]
  SETTABLEKS R17 R16 K117 ["ButtonColor_Hover"]
  GETTABLEKS R17 R5 K132 ["ButtonDisabled"]
  SETTABLEKS R17 R16 K118 ["ButtonColor_Disabled"]
  GETTABLEKS R17 R5 K133 ["ButtonText"]
  SETTABLEKS R17 R16 K119 ["TextColor"]
  GETTABLEKS R17 R5 K37 ["DimmedText"]
  SETTABLEKS R17 R16 K120 ["TextColor_Disabled"]
  GETTABLEKS R17 R5 K59 ["Border"]
  SETTABLEKS R17 R16 K121 ["BorderColor"]
  SETTABLEKS R16 R15 K134 ["cancelButton"]
  DUPTABLE R16 K138 [{"ButtonColor", "ImageColor", "BorderColor", "hovered", "disabled"}]
  GETTABLEKS R17 R5 K130 ["Button"]
  SETTABLEKS R17 R16 K116 ["ButtonColor"]
  GETTABLEKS R17 R5 K36 ["MainText"]
  SETTABLEKS R17 R16 K135 ["ImageColor"]
  GETTABLEKS R17 R5 K59 ["Border"]
  SETTABLEKS R17 R16 K121 ["BorderColor"]
  DUPTABLE R17 K139 [{"ButtonColor"}]
  GETTABLEKS R18 R5 K131 ["ButtonHover"]
  SETTABLEKS R18 R17 K116 ["ButtonColor"]
  SETTABLEKS R17 R16 K136 ["hovered"]
  DUPTABLE R17 K140 [{"ButtonColor", "ImageColor"}]
  GETTABLEKS R18 R5 K132 ["ButtonDisabled"]
  SETTABLEKS R18 R17 K116 ["ButtonColor"]
  GETTABLEKS R18 R5 K37 ["DimmedText"]
  SETTABLEKS R18 R17 K135 ["ImageColor"]
  SETTABLEKS R17 R16 K137 ["disabled"]
  SETTABLEKS R16 R15 K141 ["pageButton"]
  DUPTABLE R16 K142 [{"backgroundColor"}]
  GETTABLEKS R17 R5 K143 ["MenuBarBackground"]
  SETTABLEKS R17 R16 K49 ["backgroundColor"]
  SETTABLEKS R16 R15 K144 ["menuBar"]
  DUPTABLE R16 K148 [{"hover", "highlight", "text", "font"}]
  GETTABLEKS R17 R5 K149 ["MenuEntryHover"]
  SETTABLEKS R17 R16 K145 ["hover"]
  GETTABLEKS R17 R5 K150 ["MenuEntryHighlight"]
  SETTABLEKS R17 R16 K146 ["highlight"]
  GETTABLEKS R17 R5 K151 ["BrightText"]
  SETTABLEKS R17 R16 K147 ["text"]
  DUPTABLE R17 K154 [{"selected", "unselected"}]
  GETIMPORT R18 K156 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R18 R17 K152 ["selected"]
  GETIMPORT R18 K34 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K153 ["unselected"]
  SETTABLEKS R17 R16 K46 ["font"]
  SETTABLEKS R16 R15 K157 ["menuEntry"]
  DUPTABLE R16 K160 [{"gradient", "textbutton"}]
  GETTABLEKS R17 R5 K36 ["MainText"]
  SETTABLEKS R17 R16 K158 ["gradient"]
  DUPTABLE R17 K161 [{"font"}]
  GETIMPORT R18 K34 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K46 ["font"]
  SETTABLEKS R17 R16 K159 ["textbutton"]
  SETTABLEKS R16 R15 K162 ["footer"]
  DUPTABLE R16 K163 [{"font", "text"}]
  GETIMPORT R17 K34 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K46 ["font"]
  GETTABLEKS R17 R5 K151 ["BrightText"]
  SETTABLEKS R17 R16 K147 ["text"]
  SETTABLEKS R16 R15 K164 ["header"]
  DUPTABLE R16 K166 [{"font", "error", "maxHeight"}]
  GETIMPORT R17 K34 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K46 ["font"]
  GETTABLEKS R17 R5 K63 ["ErrorText"]
  SETTABLEKS R17 R16 K165 ["error"]
  LOADN R17 65
  SETTABLEKS R17 R16 K80 ["maxHeight"]
  SETTABLEKS R16 R15 K167 ["checkboxset"]
  DUPTABLE R16 K168 [{"font", "textColor"}]
  GETIMPORT R17 K156 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R17 R16 K46 ["font"]
  GETTABLEKS R17 R5 K36 ["MainText"]
  SETTABLEKS R17 R16 K52 ["textColor"]
  SETTABLEKS R16 R15 K169 ["listDialog"]
  DUPTABLE R16 K163 [{"font", "text"}]
  GETIMPORT R17 K34 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K46 ["font"]
  GETIMPORT R17 K172 [Color3.fromRGB]
  LOADN R18 2
  LOADN R19 183
  LOADN R20 87
  CALL R17 3 1
  SETTABLEKS R17 R16 K147 ["text"]
  SETTABLEKS R16 R15 K173 ["successText"]
  DUPTABLE R16 K175 [{"maxWidth"}]
  LOADN R17 124
  SETTABLEKS R17 R16 K174 ["maxWidth"]
  SETTABLEKS R16 R15 K176 ["textWithInlineLink"]
  DUPTABLE R16 K163 [{"font", "text"}]
  GETIMPORT R17 K34 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K46 ["font"]
  GETTABLEKS R17 R5 K63 ["ErrorText"]
  SETTABLEKS R17 R16 K147 ["text"]
  SETTABLEKS R16 R15 K177 ["failText"]
  DUPTABLE R16 K161 [{"font"}]
  GETIMPORT R17 K179 [Enum.Font.SourceSansLight]
  SETTABLEKS R17 R16 K46 ["font"]
  SETTABLEKS R16 R15 K180 ["pageText"]
  DUPTABLE R16 K182 [{"backgroundColor", "size", "image"}]
  GETTABLEKS R17 R5 K183 ["InputFieldBackground"]
  SETTABLEKS R17 R16 K49 ["backgroundColor"]
  LOADN R17 20
  SETTABLEKS R17 R16 K93 ["size"]
  DUPTABLE R17 K185 [{"background", "selected"}]
  LOADK R18 K186 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R18 R17 K184 ["background"]
  GETTABLEKS R18 R5 K187 ["RadioButtonImage"]
  SETTABLEKS R18 R17 K152 ["selected"]
  SETTABLEKS R17 R16 K181 ["image"]
  SETTABLEKS R16 R15 K188 ["radioButton"]
  LOADN R16 74
  SETTABLEKS R16 R15 K189 ["DROPDOWN_WIDTH"]
  LOADN R16 38
  SETTABLEKS R16 R15 K190 ["DROPDOWN_HEIGHT"]
  LOADN R16 192
  SETTABLEKS R16 R15 K191 ["MENU_BAR_WIDTH"]
  LOADN R16 65
  SETTABLEKS R16 R15 K192 ["FOOTER_HEIGHT"]
  DUPTABLE R16 K205 [{"ARROW_SIZE", "PAGE_PADDING", "TILE_HEIGHT", "ICON_SIZE", "NAME_SIZE", "NAME_PADDING", "TILE_FOOTER_SIZE", "FOOTER_SIDE_PADDING", "GUIDELINE_LABEL_PADDING", "FRAME_BUTTON_SIZE", "CELL_PADDING_X", "CELL_PADDING_Y"}]
  LOADN R17 12
  SETTABLEKS R17 R16 K193 ["ARROW_SIZE"]
  LOADN R17 115
  SETTABLEKS R17 R16 K194 ["PAGE_PADDING"]
  LOADN R17 232
  SETTABLEKS R17 R16 K195 ["TILE_HEIGHT"]
  LOADN R17 150
  SETTABLEKS R17 R16 K196 ["ICON_SIZE"]
  LOADN R17 45
  SETTABLEKS R17 R16 K197 ["NAME_SIZE"]
  LOADN R17 8
  SETTABLEKS R17 R16 K198 ["NAME_PADDING"]
  LOADN R17 35
  SETTABLEKS R17 R16 K199 ["TILE_FOOTER_SIZE"]
  LOADN R17 4
  SETTABLEKS R17 R16 K200 ["FOOTER_SIDE_PADDING"]
  LOADN R17 4
  SETTABLEKS R17 R16 K201 ["GUIDELINE_LABEL_PADDING"]
  LOADN R17 32
  SETTABLEKS R17 R16 K202 ["FRAME_BUTTON_SIZE"]
  LOADN R17 30
  SETTABLEKS R17 R16 K203 ["CELL_PADDING_X"]
  LOADN R17 40
  SETTABLEKS R17 R16 K204 ["CELL_PADDING_Y"]
  SETTABLEKS R16 R15 K206 ["SCREEN_CHOOSE_GAME"]
  SETTABLEKS R12 R15 K207 ["isDarkerTheme"]
  GETTABLEKS R16 R9 K38 ["Image"]
  SETTABLE R14 R15 R16
  NEWTABLE R16 1 0
  GETTABLEKS R17 R5 K187 ["RadioButtonImage"]
  LOADK R18 K208 ["rbxasset://textures/StudioSharedUI/radio_selected_enabled_dark.png"]
  SETTABLE R18 R16 R17
  NEWTABLE R17 1 0
  GETTABLEKS R18 R5 K187 ["RadioButtonImage"]
  LOADK R19 K209 ["rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"]
  SETTABLE R19 R17 R18
  DUPCLOSURE R18 K210 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
