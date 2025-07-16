PROTO_0:
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mock"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  JUMP [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
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
  GETTABLEKS R3 R1 K8 ["Style"]
  GETTABLEKS R4 R2 K9 ["StyleModifier"]
  GETTABLEKS R5 R3 K10 ["StyleKey"]
  GETTABLEKS R6 R3 K11 ["getRawComponentStyle"]
  GETTABLEKS R7 R3 K12 ["ComponentSymbols"]
  GETTABLEKS R9 R3 K13 ["Themes"]
  GETTABLEKS R8 R9 K14 ["StudioTheme"]
  GETTABLEKS R9 R1 K15 ["Dash"]
  GETTABLEKS R10 R9 K16 ["join"]
  GETIMPORT R11 K18 [game]
  LOADK R13 K19 ["GameSettingsExperienceGuidelines"]
  NAMECALL R11 R11 K20 ["GetFastFlag"]
  CALL R11 2 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Flags"]
  GETTABLEKS R13 R14 K23 ["getFFlagGameSettingsFixMoreLayoutIssues"]
  CALL R12 1 1
  CALL R12 0 1
  DUPTABLE R13 K36 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 22
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K44 ["TitlebarText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K24 ["Title"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 22
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K45 ["BrightText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K25 ["Header"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 20
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K46 ["SubText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K26 ["Subtitle"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 20
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K47 ["MainText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K27 ["Normal"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K49 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 20
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K47 ["MainText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K28 ["SemiBold"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 18
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K47 ["MainText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K29 ["Smaller"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 18
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K50 ["WarningText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K30 ["Warning"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 18
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K51 ["ErrorText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K31 ["Error"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 16
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K47 ["MainText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K32 ["HeaderLink"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 14
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K47 ["MainText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K33 ["Small"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 14
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K52 ["DimmedText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K34 ["Subtext"]
  DUPTABLE R14 K40 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R15 K43 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K37 ["Font"]
  LOADN R15 14
  SETTABLEKS R15 R14 K38 ["TextSize"]
  GETTABLEKS R15 R5 K51 ["ErrorText"]
  SETTABLEKS R15 R14 K39 ["TextColor3"]
  SETTABLEKS R14 R13 K35 ["SmallError"]
  MOVE R14 R6
  LOADK R15 K53 ["Button"]
  CALL R14 1 1
  MOVE R15 R10
  MOVE R16 R14
  NEWTABLE R17 2 0
  MOVE R18 R10
  GETTABLEKS R19 R14 K54 ["&RoundPrimary"]
  DUPTABLE R20 K55 [{"TextSize"}]
  GETTABLEKS R22 R13 K27 ["Normal"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["&GameSettingsPrimaryButton"]
  MOVE R18 R10
  GETTABLEKS R19 R14 K57 ["&Round"]
  DUPTABLE R20 K55 [{"TextSize"}]
  GETTABLEKS R22 R13 K27 ["Normal"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["&GameSettingsButton"]
  CALL R15 2 1
  MOVE R16 R10
  MOVE R17 R6
  LOADK R18 K59 ["Image"]
  CALL R17 1 1
  NEWTABLE R18 2 0
  NEWTABLE R19 4 0
  LOADK R20 K60 ["rbxasset://textures/GameSettings/MoreDetails.png"]
  SETTABLEKS R20 R19 K59 ["Image"]
  GETTABLEKS R20 R5 K46 ["SubText"]
  SETTABLEKS R20 R19 K61 ["Color"]
  GETTABLEKS R20 R4 K62 ["Hover"]
  DUPTABLE R21 K63 [{"Color"}]
  GETTABLEKS R22 R5 K64 ["MainTextHover"]
  SETTABLEKS R22 R21 K61 ["Color"]
  SETTABLE R21 R19 R20
  SETTABLEKS R19 R18 K65 ["&TooltipStyle"]
  DUPTABLE R19 K66 [{"Image"}]
  LOADK R20 K67 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R20 R19 K59 ["Image"]
  SETTABLEKS R19 R18 K68 ["&WarningStyle"]
  CALL R16 2 1
  DUPTABLE R17 K76 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
  DUPTABLE R18 K80 [{"imageColor", "image", "size"}]
  GETTABLEKS R19 R5 K47 ["MainText"]
  SETTABLEKS R19 R18 K77 ["imageColor"]
  LOADK R19 K81 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R19 R18 K78 ["image"]
  LOADN R19 16
  SETTABLEKS R19 R18 K79 ["size"]
  SETTABLEKS R18 R17 K69 ["icon"]
  DUPTABLE R18 K83 [{"width"}]
  LOADN R19 150
  SETTABLEKS R19 R18 K82 ["width"]
  SETTABLEKS R18 R17 K70 ["priceField"]
  JUMPIFNOT R12 [+2]
  LOADNIL R18
  JUMP [+4]
  DUPTABLE R18 K83 [{"width"}]
  LOADN R19 244
  SETTABLEKS R19 R18 K82 ["width"]
  SETTABLEKS R18 R17 K71 ["subText"]
  JUMPIFNOT R12 [+2]
  LOADNIL R18
  JUMP [+7]
  DUPTABLE R18 K86 [{"withSubText", "withoutSubText"}]
  LOADN R19 137
  SETTABLEKS R19 R18 K84 ["withSubText"]
  LOADN R19 121
  SETTABLEKS R19 R18 K85 ["withoutSubText"]
  SETTABLEKS R18 R17 K72 ["height"]
  JUMPIFNOT R12 [+2]
  LOADN R18 5
  JUMP [+1]
  LOADN R18 10
  SETTABLEKS R18 R17 K73 ["spacing"]
  DUPTABLE R18 K89 [{"enabled", "disabled"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K87 ["enabled"]
  LOADK R19 K90 [0.5]
  SETTABLEKS R19 R18 K88 ["disabled"]
  SETTABLEKS R18 R17 K74 ["transparency"]
  JUMPIFNOT R12 [+2]
  LOADN R18 10
  JUMP [+1]
  LOADN R18 25
  SETTABLEKS R18 R17 K75 ["pricePadding"]
  DUPTABLE R18 K98 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
  GETTABLEKS R19 R5 K99 ["Border"]
  SETTABLEKS R19 R18 K91 ["border"]
  GETTABLEKS R19 R5 K100 ["DialogMainButton"]
  SETTABLEKS R19 R18 K92 ["borderHover"]
  GETTABLEKS R19 R5 K100 ["DialogMainButton"]
  SETTABLEKS R19 R18 K93 ["borderSelected"]
  GETTABLEKS R19 R5 K52 ["DimmedText"]
  SETTABLEKS R19 R18 K94 ["placeholderText"]
  GETTABLEKS R19 R5 K46 ["SubText"]
  SETTABLEKS R19 R18 K95 ["searchIcon"]
  DUPTABLE R19 K102 [{"imageSelected", "image"}]
  GETTABLEKS R20 R5 K46 ["SubText"]
  SETTABLEKS R20 R19 K101 ["imageSelected"]
  GETTABLEKS R20 R5 K46 ["SubText"]
  SETTABLEKS R20 R19 K78 ["image"]
  SETTABLEKS R19 R18 K96 ["clearButton"]
  DUPTABLE R19 K109 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
  GETTABLEKS R20 R5 K110 ["InputFieldBackground"]
  SETTABLEKS R20 R19 K103 ["backgroundColor"]
  GETTABLEKS R20 R5 K47 ["MainText"]
  SETTABLEKS R20 R19 K104 ["itemText"]
  GETTABLEKS R20 R5 K46 ["SubText"]
  SETTABLEKS R20 R19 K105 ["headerText"]
  DUPTABLE R20 K111 [{"backgroundColor"}]
  GETTABLEKS R21 R5 K112 ["ButtonHover"]
  SETTABLEKS R21 R20 K103 ["backgroundColor"]
  SETTABLEKS R20 R19 K106 ["hovered"]
  DUPTABLE R20 K114 [{"offset"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K113 ["offset"]
  SETTABLEKS R20 R19 K107 ["item"]
  DUPTABLE R20 K111 [{"backgroundColor"}]
  GETTABLEKS R21 R5 K115 ["ButtonSelected"]
  SETTABLEKS R21 R20 K103 ["backgroundColor"]
  SETTABLEKS R20 R19 K108 ["selected"]
  SETTABLEKS R19 R18 K97 ["dropDown"]
  NEWTABLE R19 128 0
  SETTABLEKS R13 R19 K116 ["fontStyle"]
  GETTABLEKS R20 R5 K117 ["MainBackground"]
  SETTABLEKS R20 R19 K103 ["backgroundColor"]
  GETTABLEKS R20 R5 K118 ["LinkText"]
  SETTABLEKS R20 R19 K119 ["hyperlink"]
  GETTABLEKS R20 R5 K50 ["WarningText"]
  SETTABLEKS R20 R19 K120 ["warningColor"]
  LOADK R20 K67 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R20 R19 K121 ["warningIcon"]
  GETTABLEKS R20 R5 K122 ["SubBackground2"]
  SETTABLEKS R20 R19 K123 ["separator"]
  GETTABLEKS R20 R5 K124 ["ScrollBar"]
  SETTABLEKS R20 R19 K125 ["scrollBar"]
  GETTABLEKS R20 R5 K126 ["ScrollBarBackground"]
  SETTABLEKS R20 R19 K127 ["scrollBarBackground"]
  DUPTABLE R20 K128 [{"width", "height"}]
  LOADN R21 125
  SETTABLEKS R21 R20 K82 ["width"]
  LOADN R21 35
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K129 ["button"]
  DUPTABLE R20 K114 [{"offset"}]
  LOADN R21 227
  SETTABLEKS R21 R20 K113 ["offset"]
  SETTABLEKS R20 R19 K130 ["buttonBar"]
  DUPTABLE R20 K131 [{"height"}]
  LOADN R21 45
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K132 ["header"]
  DUPTABLE R20 K111 [{"backgroundColor"}]
  GETTABLEKS R21 R5 K133 ["MenuBarBackground"]
  SETTABLEKS R21 R20 K103 ["backgroundColor"]
  SETTABLEKS R20 R19 K134 ["menuBar"]
  LOADN R20 35
  SETTABLEKS R20 R19 K135 ["rowHeight"]
  SETTABLEKS R17 R19 K136 ["robuxFeeBase"]
  SETTABLEKS R18 R19 K137 ["searchBar"]
  DUPTABLE R20 K141 [{"hover", "highlight", "text"}]
  GETTABLEKS R21 R5 K142 ["MenuEntryHover"]
  SETTABLEKS R21 R20 K138 ["hover"]
  GETTABLEKS R21 R5 K143 ["MenuEntryHighlight"]
  SETTABLEKS R21 R20 K139 ["highlight"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R21 R5 K144 ["TextContrast"]
  JUMP [+2]
  GETTABLEKS R21 R5 K45 ["BrightText"]
  SETTABLEKS R21 R20 K140 ["text"]
  SETTABLEKS R20 R19 K145 ["menuEntry"]
  DUPTABLE R20 K147 [{"gradient", "height"}]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K146 ["gradient"]
  LOADN R21 65
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K148 ["footer"]
  JUMPIFNOT R12 [+2]
  LOADN R20 20
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K149 ["titleSpacing"]
  DUPTABLE R20 K153 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
  GETTABLEKS R21 R5 K110 ["InputFieldBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K154 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R21 R20 K88 ["disabled"]
  GETTABLEKS R21 R5 K99 ["Border"]
  SETTABLEKS R21 R20 K151 ["borderDefault"]
  GETTABLEKS R21 R5 K100 ["DialogMainButton"]
  SETTABLEKS R21 R20 K92 ["borderHover"]
  GETTABLEKS R21 R5 K52 ["DimmedText"]
  SETTABLEKS R21 R20 K152 ["tooltip"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K140 ["text"]
  LOADN R21 42
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K155 ["textBox"]
  DUPTABLE R20 K157 [{"maxWidth"}]
  LOADN R21 124
  SETTABLEKS R21 R20 K156 ["maxWidth"]
  SETTABLEKS R20 R19 K158 ["textWithInlineLink"]
  DUPTABLE R20 K164 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image"}]
  GETTABLEKS R21 R5 K110 ["InputFieldBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K45 ["BrightText"]
  SETTABLEKS R21 R20 K159 ["title"]
  GETTABLEKS R21 R5 K52 ["DimmedText"]
  SETTABLEKS R21 R20 K160 ["description"]
  LOADN R21 20
  SETTABLEKS R21 R20 K79 ["size"]
  JUMPIFNOT R12 [+2]
  LOADN R21 10
  JUMP [+1]
  LOADN R21 5
  SETTABLEKS R21 R20 K161 ["padding"]
  LOADN R21 244
  SETTABLEKS R21 R20 K162 ["descriptionWidth"]
  LOADN R21 10
  SETTABLEKS R21 R20 K163 ["sapcing"]
  DUPTABLE R21 K166 [{"background", "selected", "selectedDisabled"}]
  LOADK R22 K167 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R22 R21 K150 ["background"]
  GETTABLEKS R22 R5 K168 ["RadioButtonImage"]
  SETTABLEKS R22 R21 K108 ["selected"]
  GETTABLEKS R22 R5 K169 ["RadioButtonDisabledImage"]
  SETTABLEKS R22 R21 K165 ["selectedDisabled"]
  SETTABLEKS R21 R20 K78 ["image"]
  SETTABLEKS R20 R19 K170 ["radioButton"]
  DUPTABLE R20 K178 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R21 R5 K179 ["InformationImage"]
  SETTABLEKS R21 R20 K78 ["image"]
  LOADN R21 20
  SETTABLEKS R21 R20 K171 ["imageSize"]
  LOADN R21 2
  SETTABLEKS R21 R20 K172 ["imageTextGap"]
  DUPTABLE R21 K181 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R22 K43 [Enum.Font.SourceSans]
  SETTABLEKS R22 R21 K37 ["Font"]
  LOADN R22 18
  SETTABLEKS R22 R21 K38 ["TextSize"]
  GETTABLEKS R22 R5 K47 ["MainText"]
  SETTABLEKS R22 R21 K180 ["TextColor"]
  SETTABLEKS R21 R20 K173 ["BodyBodyDefault"]
  GETTABLEKS R21 R5 K182 ["ForegroundContrast"]
  SETTABLEKS R21 R20 K174 ["paneBackgroundColor"]
  GETTABLEKS R21 R5 K183 ["OtherDivider"]
  SETTABLEKS R21 R20 K175 ["paneBorderColor"]
  LOADN R21 8
  SETTABLEKS R21 R20 K176 ["panePadding"]
  LOADN R21 1
  SETTABLEKS R21 R20 K177 ["paneBorderSize"]
  SETTABLEKS R20 R19 K184 ["genreInfo"]
  DUPTABLE R20 K186 [{"warningLabel", "description", "padding"}]
  DUPTABLE R21 K188 [{"color", "height"}]
  GETTABLEKS R22 R5 K50 ["WarningText"]
  SETTABLEKS R22 R21 K187 ["color"]
  LOADN R22 30
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K185 ["warningLabel"]
  DUPTABLE R21 K131 [{"height"}]
  LOADN R22 25
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K160 ["description"]
  LOADN R21 5
  SETTABLEKS R21 R20 K161 ["padding"]
  SETTABLEKS R20 R19 K189 ["radioButtonSet"]
  DUPTABLE R20 K190 [{"background", "title"}]
  GETTABLEKS R21 R5 K110 ["InputFieldBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K45 ["BrightText"]
  SETTABLEKS R21 R20 K159 ["title"]
  SETTABLEKS R20 R19 K191 ["checkBox"]
  DUPTABLE R20 K194 [{"headerPadding", "titlePadding"}]
  LOADN R21 20
  SETTABLEKS R21 R20 K192 ["headerPadding"]
  LOADN R21 12
  SETTABLEKS R21 R20 K193 ["titlePadding"]
  SETTABLEKS R20 R19 K195 ["devProducts"]
  DUPTABLE R20 K197 [{"headerPadding", "titlePadding", "refreshButton"}]
  LOADN R21 20
  SETTABLEKS R21 R20 K192 ["headerPadding"]
  LOADN R21 12
  SETTABLEKS R21 R20 K193 ["titlePadding"]
  DUPTABLE R21 K198 [{"icon", "offset", "size"}]
  GETTABLEKS R22 R5 K199 ["RefreshImage"]
  SETTABLEKS R22 R21 K69 ["icon"]
  DUPTABLE R22 K201 [{"x"}]
  LOADN R23 246
  SETTABLEKS R23 R22 K200 ["x"]
  SETTABLEKS R22 R21 K113 ["offset"]
  LOADN R22 18
  SETTABLEKS R22 R21 K79 ["size"]
  SETTABLEKS R21 R20 K196 ["refreshButton"]
  SETTABLEKS R20 R19 K202 ["badges"]
  DUPTABLE R20 K204 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
  GETTABLEKS R21 R5 K53 ["Button"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K112 ["ButtonHover"]
  SETTABLEKS R21 R20 K138 ["hover"]
  GETTABLEKS R21 R5 K45 ["BrightText"]
  SETTABLEKS R21 R20 K140 ["text"]
  GETTABLEKS R21 R5 K154 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R21 R20 K88 ["disabled"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K203 ["handle"]
  GETTABLEKS R21 R5 K99 ["Border"]
  SETTABLEKS R21 R20 K91 ["border"]
  GETTABLEKS R21 R5 K122 ["SubBackground2"]
  SETTABLEKS R21 R20 K146 ["gradient"]
  SETTABLEKS R20 R19 K97 ["dropDown"]
  DUPTABLE R20 K205 [{"background", "hover", "highlight", "text"}]
  GETTABLEKS R21 R5 K133 ["MenuBarBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K142 ["MenuEntryHover"]
  SETTABLEKS R21 R20 K138 ["hover"]
  GETTABLEKS R21 R5 K143 ["MenuEntryHighlight"]
  SETTABLEKS R21 R20 K139 ["highlight"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K140 ["text"]
  SETTABLEKS R20 R19 K206 ["dropDownEntry"]
  DUPTABLE R20 K207 [{"background", "text", "size", "spacing"}]
  GETTABLEKS R21 R5 K117 ["MainBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K140 ["text"]
  DUPTABLE R21 K128 [{"width", "height"}]
  LOADN R22 224
  SETTABLEKS R22 R21 K82 ["width"]
  LOADN R22 52
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K79 ["size"]
  LOADN R21 20
  SETTABLEKS R21 R20 K73 ["spacing"]
  SETTABLEKS R20 R19 K208 ["dialog"]
  DUPTABLE R20 K212 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R21 R5 K213 ["TableItem"]
  SETTABLEKS R21 R20 K150 ["background"]
  LOADK R21 K214 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R21 R20 K209 ["maskImage"]
  LOADK R21 K215 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R21 R20 K210 ["loadingImage"]
  LOADK R21 K216 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R21 R20 K211 ["loadFailureImage"]
  SETTABLEKS R20 R19 K217 ["subjectThumbnail"]
  DUPTABLE R20 K218 [{"loadingImage", "loadFailureImage"}]
  LOADK R21 K219 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R21 R20 K210 ["loadingImage"]
  LOADK R21 K216 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R21 R20 K211 ["loadFailureImage"]
  SETTABLEKS R20 R19 K220 ["groupThumbnail"]
  DUPTABLE R20 K218 [{"loadingImage", "loadFailureImage"}]
  LOADK R21 K221 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
  SETTABLEKS R21 R20 K210 ["loadingImage"]
  LOADK R21 K216 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R21 R20 K211 ["loadFailureImage"]
  SETTABLEKS R20 R19 K222 ["badgeIconThumbnail"]
  DUPTABLE R20 K225 [{"image", "sliceCenter", "square"}]
  LOADK R21 K226 ["rbxasset://textures/GameSettings/DottedBorder.png"]
  SETTABLEKS R21 R20 K78 ["image"]
  GETIMPORT R21 K229 [Rect.new]
  LOADN R22 2
  LOADN R23 2
  LOADN R24 9
  LOADN R25 148
  CALL R21 4 1
  SETTABLEKS R21 R20 K223 ["sliceCenter"]
  DUPTABLE R21 K230 [{"image", "sliceCenter"}]
  LOADK R22 K231 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
  SETTABLEKS R22 R21 K78 ["image"]
  GETIMPORT R22 K229 [Rect.new]
  LOADN R23 2
  LOADN R24 2
  LOADN R25 148
  LOADN R26 148
  CALL R22 4 1
  SETTABLEKS R22 R21 K223 ["sliceCenter"]
  SETTABLEKS R21 R20 K224 ["square"]
  SETTABLEKS R20 R19 K232 ["dottedBorder"]
  DUPTABLE R20 K235 [{"image", "rectOffset", "rectSize"}]
  LOADK R21 K236 ["rbxasset://textures/GameSettings/CenterPlus.png"]
  SETTABLEKS R21 R20 K78 ["image"]
  GETIMPORT R21 K238 [Vector2.new]
  LOADN R22 121
  LOADN R23 63
  CALL R21 2 1
  SETTABLEKS R21 R20 K233 ["rectOffset"]
  GETIMPORT R21 K238 [Vector2.new]
  LOADN R22 24
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K234 ["rectSize"]
  SETTABLEKS R20 R19 K239 ["plus"]
  DUPTABLE R20 K241 [{"background", "count"}]
  GETTABLEKS R21 R5 K122 ["SubBackground2"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K52 ["DimmedText"]
  SETTABLEKS R21 R20 K240 ["count"]
  SETTABLEKS R20 R19 K242 ["thumbnail"]
  DUPTABLE R20 K243 [{"background", "border", "plus"}]
  GETTABLEKS R21 R5 K244 ["SubBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K122 ["SubBackground2"]
  SETTABLEKS R21 R20 K91 ["border"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K239 ["plus"]
  SETTABLEKS R20 R19 K245 ["newThumbnail"]
  DUPTABLE R20 K246 [{"background", "border"}]
  GETTABLEKS R21 R5 K244 ["SubBackground"]
  SETTABLEKS R21 R20 K150 ["background"]
  GETTABLEKS R21 R5 K247 ["CurrentMarkerSelected"]
  SETTABLEKS R21 R20 K91 ["border"]
  SETTABLEKS R20 R19 K248 ["thumbnailDrag"]
  DUPTABLE R20 K251 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R21 R5 K53 ["Button"]
  SETTABLEKS R21 R20 K249 ["ButtonColor"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K180 ["TextColor"]
  GETTABLEKS R21 R5 K99 ["Border"]
  SETTABLEKS R21 R20 K250 ["BorderColor"]
  SETTABLEKS R20 R19 K252 ["cancelButton"]
  DUPTABLE R20 K251 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R21 R5 K100 ["DialogMainButton"]
  SETTABLEKS R21 R20 K249 ["ButtonColor"]
  GETIMPORT R21 K254 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 1
  CALL R21 3 1
  SETTABLEKS R21 R20 K180 ["TextColor"]
  GETTABLEKS R21 R5 K122 ["SubBackground2"]
  SETTABLEKS R21 R20 K250 ["BorderColor"]
  SETTABLEKS R20 R19 K255 ["defaultButton"]
  DUPTABLE R20 K258 [{"collapseStateArrow", "deleteButton"}]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K256 ["collapseStateArrow"]
  GETTABLEKS R21 R5 K244 ["SubBackground"]
  SETTABLEKS R21 R20 K257 ["deleteButton"]
  SETTABLEKS R20 R19 K259 ["collaboratorItem"]
  DUPTABLE R20 K262 [{"height", "header", "item", "icon", "menu", "textPadding"}]
  LOADN R21 94
  SETTABLEKS R21 R20 K72 ["height"]
  DUPTABLE R21 K131 [{"height"}]
  LOADN R22 32
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K132 ["header"]
  DUPTABLE R21 K263 [{"background", "height", "padding"}]
  GETTABLEKS R22 R5 K213 ["TableItem"]
  SETTABLEKS R22 R21 K150 ["background"]
  LOADN R22 32
  SETTABLEKS R22 R21 K72 ["height"]
  LOADN R22 5
  SETTABLEKS R22 R21 K161 ["padding"]
  SETTABLEKS R21 R20 K107 ["item"]
  DUPTABLE R21 K131 [{"height"}]
  LOADN R22 40
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K69 ["icon"]
  DUPTABLE R21 K267 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
  LOADN R22 30
  SETTABLEKS R22 R21 K264 ["itemPadding"]
  LOADN R22 32
  SETTABLEKS R22 R21 K265 ["buttonSize"]
  LOADN R22 10
  SETTABLEKS R22 R21 K266 ["buttonPaddingY"]
  SETTABLEKS R21 R20 K260 ["menu"]
  LOADN R21 6
  SETTABLEKS R21 R20 K261 ["textPadding"]
  SETTABLEKS R20 R19 K268 ["table"]
  DUPTABLE R20 K131 [{"height"}]
  LOADN R21 24
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K269 ["toggleButton"]
  DUPTABLE R20 K270 [{"image", "imageColor"}]
  LOADK R21 K15 ["Dash"]
  SETTABLEKS R21 R20 K78 ["image"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K77 ["imageColor"]
  SETTABLEKS R20 R19 K272 ["editButton"]
  DUPTABLE R20 K270 [{"image", "imageColor"}]
  LOADK R21 K17 ["game"]
  SETTABLEKS R21 R20 K78 ["image"]
  GETTABLEKS R21 R5 K47 ["MainText"]
  SETTABLEKS R21 R20 K77 ["imageColor"]
  SETTABLEKS R20 R19 K274 ["copyButton"]
  DUPTABLE R20 K275 [{"padding"}]
  LOADN R21 10
  SETTABLEKS R21 R20 K161 ["padding"]
  SETTABLEKS R20 R19 K276 ["uiListLayout"]
  DUPTABLE R20 K279 [{"PaddingX", "PaddingY"}]
  LOADN R21 75
  SETTABLEKS R21 R20 K277 ["PaddingX"]
  LOADN R21 10
  SETTABLEKS R21 R20 K278 ["PaddingY"]
  SETTABLEKS R20 R19 K280 ["createButton"]
  DUPTABLE R20 K279 [{"PaddingX", "PaddingY"}]
  LOADN R21 75
  SETTABLEKS R21 R20 K277 ["PaddingX"]
  LOADN R21 10
  SETTABLEKS R21 R20 K278 ["PaddingY"]
  SETTABLEKS R20 R19 K281 ["viewButton"]
  DUPTABLE R20 K284 [{"publishText", "publishButton"}]
  DUPTABLE R21 K285 [{"offset", "width"}]
  LOADN R22 70
  SETTABLEKS R22 R21 K113 ["offset"]
  LOADN R22 250
  SETTABLEKS R22 R21 K82 ["width"]
  SETTABLEKS R21 R20 K282 ["publishText"]
  DUPTABLE R21 K288 [{"offset", "paddingX", "paddingY"}]
  LOADN R22 125
  SETTABLEKS R22 R21 K113 ["offset"]
  LOADN R22 75
  SETTABLEKS R22 R21 K286 ["paddingX"]
  LOADN R22 15
  SETTABLEKS R22 R21 K287 ["paddingY"]
  SETTABLEKS R21 R20 K283 ["publishButton"]
  SETTABLEKS R20 R19 K289 ["mainView"]
  DUPTABLE R20 K279 [{"PaddingX", "PaddingY"}]
  LOADN R21 75
  SETTABLEKS R21 R20 K277 ["PaddingX"]
  LOADN R21 10
  SETTABLEKS R21 R20 K278 ["PaddingY"]
  SETTABLEKS R20 R19 K290 ["shutdownButton"]
  DUPTABLE R20 K299 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
  LOADN R21 32
  SETTABLEKS R21 R20 K291 ["settingPadding"]
  LOADN R21 25
  SETTABLEKS R21 R20 K292 ["marginX"]
  JUMPIFNOT R12 [+2]
  LOADN R21 20
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K293 ["marginY"]
  LOADN R21 6
  SETTABLEKS R21 R20 K192 ["headerPadding"]
  DUPTABLE R21 K300 [{"paddingX", "paddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K286 ["paddingX"]
  LOADN R22 15
  SETTABLEKS R22 R21 K287 ["paddingY"]
  SETTABLEKS R21 R20 K294 ["reloadButton"]
  LOADN R21 144
  SETTABLEKS R21 R20 K295 ["failLabelPaddingX"]
  LOADN R21 16
  SETTABLEKS R21 R20 K296 ["failPageListPaddingY"]
  GETIMPORT R21 K303 [UDim2.fromOffset]
  LOADN R22 40
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K297 ["toggleButtonSize"]
  LOADN R21 200
  SETTABLEKS R21 R20 K298 ["toggleButtonTitleWidth"]
  SETTABLEKS R20 R19 K304 ["settingsPage"]
  DUPTABLE R20 K305 [{"image", "size"}]
  LOADK R21 K50 ["WarningText"]
  SETTABLEKS R21 R20 K78 ["image"]
  LOADN R21 32
  SETTABLEKS R21 R20 K79 ["size"]
  SETTABLEKS R20 R19 K307 ["backButton"]
  DUPTABLE R20 K308 [{"textBox"}]
  DUPTABLE R21 K310 [{"length"}]
  LOADN R22 100
  SETTABLEKS R22 R21 K309 ["length"]
  SETTABLEKS R21 R20 K155 ["textBox"]
  SETTABLEKS R20 R19 K311 ["placePage"]
  DUPTABLE R20 K312 [{"height", "length", "paddingY", "paddingX"}]
  LOADN R21 22
  SETTABLEKS R21 R20 K72 ["height"]
  LOADN R21 250
  SETTABLEKS R21 R20 K309 ["length"]
  LOADN R21 25
  SETTABLEKS R21 R20 K287 ["paddingY"]
  LOADN R21 5
  SETTABLEKS R21 R20 K286 ["paddingX"]
  SETTABLEKS R20 R19 K313 ["requirementsLink"]
  DUPTABLE R20 K314 [{"paddingX", "paddingY", "size"}]
  LOADN R21 5
  SETTABLEKS R21 R20 K286 ["paddingX"]
  LOADN R21 30
  SETTABLEKS R21 R20 K287 ["paddingY"]
  LOADN R21 14
  SETTABLEKS R21 R20 K79 ["size"]
  SETTABLEKS R20 R19 K315 ["tooltipIcon"]
  DUPTABLE R20 K317 [{"Size"}]
  DUPTABLE R21 K320 [{"X", "Y"}]
  LOADN R22 244
  SETTABLEKS R22 R21 K318 ["X"]
  LOADN R22 94
  SETTABLEKS R22 R21 K319 ["Y"]
  SETTABLEKS R21 R20 K316 ["Size"]
  SETTABLEKS R20 R19 K321 ["emailDialog"]
  DUPTABLE R20 K322 [{"padding", "size", "transparency"}]
  LOADN R21 5
  SETTABLEKS R21 R20 K161 ["padding"]
  LOADN R21 20
  SETTABLEKS R21 R20 K79 ["size"]
  LOADK R21 K90 [0.5]
  SETTABLEKS R21 R20 K74 ["transparency"]
  SETTABLEKS R20 R19 K323 ["optInWarning"]
  DUPTABLE R20 K324 [{"padding", "length", "height"}]
  LOADN R21 30
  SETTABLEKS R21 R20 K161 ["padding"]
  LOADN R21 250
  SETTABLEKS R21 R20 K309 ["length"]
  LOADN R21 150
  SETTABLEKS R21 R20 K72 ["height"]
  SETTABLEKS R20 R19 K325 ["extraOptInInfo"]
  DUPTABLE R20 K327 [{"headerOffset", "description", "icon"}]
  LOADN R21 196
  SETTABLEKS R21 R20 K326 ["headerOffset"]
  DUPTABLE R21 K310 [{"length"}]
  LOADN R22 131
  SETTABLEKS R22 R21 K309 ["length"]
  SETTABLEKS R21 R20 K160 ["description"]
  DUPTABLE R21 K328 [{"size"}]
  LOADN R22 16
  SETTABLEKS R22 R21 K79 ["size"]
  SETTABLEKS R21 R20 K69 ["icon"]
  SETTABLEKS R20 R19 K329 ["warningDialog"]
  DUPTABLE R20 K330 [{"button", "padding", "width"}]
  DUPTABLE R21 K131 [{"height"}]
  LOADN R22 50
  SETTABLEKS R22 R21 K72 ["height"]
  SETTABLEKS R21 R20 K129 ["button"]
  LOADN R21 10
  SETTABLEKS R21 R20 K161 ["padding"]
  LOADN R21 195
  SETTABLEKS R21 R20 K82 ["width"]
  SETTABLEKS R20 R19 K331 ["selectInput"]
  DUPTABLE R20 K334 [{"buttonPane", "spacing", "titlePane"}]
  DUPTABLE R21 K335 [{"padding", "spacing"}]
  LOADN R22 165
  SETTABLEKS R22 R21 K161 ["padding"]
  LOADN R22 20
  SETTABLEKS R22 R21 K73 ["spacing"]
  SETTABLEKS R21 R20 K332 ["buttonPane"]
  LOADN R21 45
  SETTABLEKS R21 R20 K73 ["spacing"]
  DUPTABLE R21 K336 [{"spacing"}]
  LOADN R22 15
  SETTABLEKS R22 R21 K73 ["spacing"]
  SETTABLEKS R21 R20 K333 ["titlePane"]
  SETTABLEKS R20 R19 K337 ["playabilityWidget"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R20 K340 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K338 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K339 ["BorderSizePixel"]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 130
  CALL R21 4 1
  SETTABLEKS R21 R20 K316 ["Size"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K342 ["guidelinesFrame"]
  JUMPIFNOT R11 [+43]
  DUPTABLE R20 K345 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K338 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K339 ["BorderSizePixel"]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 0
  LOADN R23 180
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K316 ["Size"]
  GETIMPORT R21 K347 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K343 ["TextXAlignment"]
  GETIMPORT R21 K349 [Enum.TextYAlignment.Top]
  SETTABLEKS R21 R20 K344 ["TextYAlignment"]
  GETTABLEKS R22 R13 K24 ["Title"]
  GETTABLEKS R21 R22 K37 ["Font"]
  SETTABLEKS R21 R20 K37 ["Font"]
  GETTABLEKS R22 R13 K24 ["Title"]
  GETTABLEKS R21 R22 K39 ["TextColor3"]
  SETTABLEKS R21 R20 K39 ["TextColor3"]
  GETTABLEKS R22 R13 K24 ["Title"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K350 ["guidelinesTitle"]
  JUMPIFNOT R11 [+33]
  DUPTABLE R20 K354 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K338 ["BackgroundTransparency"]
  LOADN R21 1
  SETTABLEKS R21 R20 K351 ["LayoutOrder"]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 1
  LOADN R23 76
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K316 ["Size"]
  GETIMPORT R21 K238 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K352 ["AnchorPoint"]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 1
  LOADN R23 10
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K353 ["Position"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K355 ["guidelinesDescriptionFrame"]
  JUMPIFNOT R11 [+31]
  DUPTABLE R20 K356 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 19
  CALL R21 4 1
  SETTABLEKS R21 R20 K316 ["Size"]
  GETTABLEKS R22 R13 K27 ["Normal"]
  GETTABLEKS R21 R22 K37 ["Font"]
  SETTABLEKS R21 R20 K37 ["Font"]
  GETIMPORT R21 K349 [Enum.TextYAlignment.Top]
  SETTABLEKS R21 R20 K344 ["TextYAlignment"]
  GETTABLEKS R22 R13 K27 ["Normal"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  GETIMPORT R21 K347 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K343 ["TextXAlignment"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K357 ["chosenGuidelineText"]
  DUPTABLE R20 K358 [{"Style", "PaddingX", "PaddingY"}]
  LOADK R21 K103 ["backgroundColor"]
  SETTABLEKS R21 R20 K8 ["Style"]
  LOADN R21 40
  SETTABLEKS R21 R20 K277 ["PaddingX"]
  LOADN R21 15
  SETTABLEKS R21 R20 K278 ["PaddingY"]
  SETTABLEKS R20 R19 K360 ["openQuestionnaireButton"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R20 K361 [{"Position", "TextSize"}]
  GETIMPORT R21 K341 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADK R24 K106 ["hovered"]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K353 ["Position"]
  GETTABLEKS R22 R13 K32 ["HeaderLink"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K363 ["titleLink"]
  JUMPIFNOT R11 [+21]
  DUPTABLE R20 K368 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
  GETIMPORT R21 K369 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K364 ["SortOrder"]
  GETIMPORT R21 K371 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K365 ["FillDirection"]
  GETIMPORT R21 K373 [UDim.new]
  LOADN R22 0
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K366 ["Padding"]
  GETIMPORT R21 K374 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K367 ["HorizontalAlignment"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K375 ["guidelinesDescriptionListLayout"]
  JUMPIFNOT R11 [+40]
  DUPTABLE R20 K379 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
  GETTABLEKS R22 R13 K33 ["Small"]
  GETTABLEKS R21 R22 K39 ["TextColor3"]
  SETTABLEKS R21 R20 K39 ["TextColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K338 ["BackgroundTransparency"]
  GETTABLEKS R22 R13 K33 ["Small"]
  GETTABLEKS R21 R22 K37 ["Font"]
  SETTABLEKS R21 R20 K37 ["Font"]
  GETTABLEKS R22 R13 K33 ["Small"]
  GETTABLEKS R21 R22 K38 ["TextSize"]
  SETTABLEKS R21 R20 K38 ["TextSize"]
  GETIMPORT R21 K347 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K343 ["TextXAlignment"]
  GETIMPORT R21 K349 [Enum.TextYAlignment.Top]
  SETTABLEKS R21 R20 K344 ["TextYAlignment"]
  LOADB R21 1
  SETTABLEKS R21 R20 K376 ["TextWrapped"]
  LOADK R21 K124 ["ScrollBar"]
  SETTABLEKS R21 R20 K377 ["TextTransparency"]
  LOADB R21 1
  SETTABLEKS R21 R20 K378 ["ClipsDescendants"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K381 ["guidelinesDescriptionText"]
  DUPTABLE R20 K383 [{"PaddingBottom"}]
  LOADN R21 5
  SETTABLEKS R21 R20 K382 ["PaddingBottom"]
  SETTABLEKS R20 R19 K384 ["atcFrame"]
  GETTABLEKS R20 R7 K53 ["Button"]
  SETTABLE R15 R19 R20
  GETTABLEKS R20 R7 K59 ["Image"]
  SETTABLE R16 R19 R20
  NEWTABLE R20 4 0
  GETTABLEKS R21 R5 K168 ["RadioButtonImage"]
  LOADK R22 K129 ["button"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K169 ["RadioButtonDisabledImage"]
  LOADK R22 K130 ["buttonBar"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K199 ["RefreshImage"]
  LOADK R22 K131 [{"height"}]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R5 K179 ["InformationImage"]
  LOADK R22 K132 ["header"]
  SETTABLE R22 R20 R21
  NEWTABLE R21 4 0
  GETTABLEKS R22 R5 K168 ["RadioButtonImage"]
  LOADK R23 K133 ["MenuBarBackground"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K169 ["RadioButtonDisabledImage"]
  LOADK R23 K134 ["menuBar"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K199 ["RefreshImage"]
  LOADK R23 K135 ["rowHeight"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K179 ["InformationImage"]
  LOADK R23 K136 ["robuxFeeBase"]
  SETTABLE R23 R21 R22
  DUPCLOSURE R22 K393 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R19
  RETURN R22 1
