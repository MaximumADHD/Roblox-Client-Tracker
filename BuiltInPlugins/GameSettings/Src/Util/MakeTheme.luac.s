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
  GETTABLEKS R14 R1 K24 ["SharedFlags"]
  GETTABLEKS R13 R14 K25 ["getFFlagDevFrameworkEnableFoundationColors"]
  CALL R13 0 1
  DUPTABLE R14 K38 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K46 ["TitlebarText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K26 ["Title"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K47 ["BrightText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K27 ["Header"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["SubText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K28 ["Subtitle"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K49 ["MainText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K29 ["Normal"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K51 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K49 ["MainText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K30 ["SemiBold"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K49 ["MainText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K31 ["Smaller"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K52 ["WarningText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K32 ["Warning"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K53 ["ErrorText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K33 ["Error"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 16
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K49 ["MainText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["HeaderLink"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K49 ["MainText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["Small"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K54 ["DimmedText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K36 ["Subtext"]
  DUPTABLE R15 K42 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K45 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K39 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K40 ["TextSize"]
  GETTABLEKS R16 R5 K53 ["ErrorText"]
  SETTABLEKS R16 R15 K41 ["TextColor3"]
  SETTABLEKS R15 R14 K37 ["SmallError"]
  MOVE R15 R6
  LOADK R16 K55 ["Button"]
  CALL R15 1 1
  MOVE R16 R10
  MOVE R17 R15
  NEWTABLE R18 2 0
  MOVE R19 R10
  GETTABLEKS R20 R15 K56 ["&RoundPrimary"]
  DUPTABLE R21 K57 [{"TextSize"}]
  GETTABLEKS R23 R14 K29 ["Normal"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K58 ["&GameSettingsPrimaryButton"]
  MOVE R19 R10
  GETTABLEKS R20 R15 K59 ["&Round"]
  DUPTABLE R21 K57 [{"TextSize"}]
  GETTABLEKS R23 R14 K29 ["Normal"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K60 ["&GameSettingsButton"]
  CALL R16 2 1
  MOVE R17 R10
  MOVE R18 R6
  LOADK R19 K61 ["Image"]
  CALL R18 1 1
  NEWTABLE R19 2 0
  NEWTABLE R20 4 0
  LOADK R21 K62 ["rbxasset://textures/GameSettings/MoreDetails.png"]
  SETTABLEKS R21 R20 K61 ["Image"]
  GETTABLEKS R21 R5 K48 ["SubText"]
  SETTABLEKS R21 R20 K63 ["Color"]
  GETTABLEKS R21 R4 K64 ["Hover"]
  DUPTABLE R22 K65 [{"Color"}]
  GETTABLEKS R23 R5 K66 ["MainTextHover"]
  SETTABLEKS R23 R22 K63 ["Color"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K67 ["&TooltipStyle"]
  DUPTABLE R20 K68 [{"Image"}]
  LOADK R21 K69 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R21 R20 K61 ["Image"]
  SETTABLEKS R20 R19 K70 ["&WarningStyle"]
  CALL R17 2 1
  DUPTABLE R18 K78 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
  DUPTABLE R19 K82 [{"imageColor", "image", "size"}]
  GETTABLEKS R20 R5 K49 ["MainText"]
  SETTABLEKS R20 R19 K79 ["imageColor"]
  LOADK R20 K83 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R20 R19 K80 ["image"]
  LOADN R20 16
  SETTABLEKS R20 R19 K81 ["size"]
  SETTABLEKS R19 R18 K71 ["icon"]
  DUPTABLE R19 K85 [{"width"}]
  LOADN R20 150
  SETTABLEKS R20 R19 K84 ["width"]
  SETTABLEKS R19 R18 K72 ["priceField"]
  JUMPIFNOT R12 [+2]
  LOADNIL R19
  JUMP [+4]
  DUPTABLE R19 K85 [{"width"}]
  LOADN R20 244
  SETTABLEKS R20 R19 K84 ["width"]
  SETTABLEKS R19 R18 K73 ["subText"]
  JUMPIFNOT R12 [+2]
  LOADNIL R19
  JUMP [+7]
  DUPTABLE R19 K88 [{"withSubText", "withoutSubText"}]
  LOADN R20 137
  SETTABLEKS R20 R19 K86 ["withSubText"]
  LOADN R20 121
  SETTABLEKS R20 R19 K87 ["withoutSubText"]
  SETTABLEKS R19 R18 K74 ["height"]
  JUMPIFNOT R12 [+2]
  LOADN R19 5
  JUMP [+1]
  LOADN R19 10
  SETTABLEKS R19 R18 K75 ["spacing"]
  DUPTABLE R19 K91 [{"enabled", "disabled"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K89 ["enabled"]
  LOADK R20 K92 [0.5]
  SETTABLEKS R20 R19 K90 ["disabled"]
  SETTABLEKS R19 R18 K76 ["transparency"]
  JUMPIFNOT R12 [+2]
  LOADN R19 10
  JUMP [+1]
  LOADN R19 25
  SETTABLEKS R19 R18 K77 ["pricePadding"]
  DUPTABLE R19 K100 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
  GETTABLEKS R20 R5 K101 ["Border"]
  SETTABLEKS R20 R19 K93 ["border"]
  GETTABLEKS R20 R5 K102 ["DialogMainButton"]
  SETTABLEKS R20 R19 K94 ["borderHover"]
  GETTABLEKS R20 R5 K102 ["DialogMainButton"]
  SETTABLEKS R20 R19 K95 ["borderSelected"]
  GETTABLEKS R20 R5 K54 ["DimmedText"]
  SETTABLEKS R20 R19 K96 ["placeholderText"]
  GETTABLEKS R20 R5 K48 ["SubText"]
  SETTABLEKS R20 R19 K97 ["searchIcon"]
  DUPTABLE R20 K104 [{"imageSelected", "image"}]
  GETTABLEKS R21 R5 K48 ["SubText"]
  SETTABLEKS R21 R20 K103 ["imageSelected"]
  GETTABLEKS R21 R5 K48 ["SubText"]
  SETTABLEKS R21 R20 K80 ["image"]
  SETTABLEKS R20 R19 K98 ["clearButton"]
  DUPTABLE R20 K111 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
  GETTABLEKS R21 R5 K112 ["InputFieldBackground"]
  SETTABLEKS R21 R20 K105 ["backgroundColor"]
  GETTABLEKS R21 R5 K49 ["MainText"]
  SETTABLEKS R21 R20 K106 ["itemText"]
  GETTABLEKS R21 R5 K48 ["SubText"]
  SETTABLEKS R21 R20 K107 ["headerText"]
  DUPTABLE R21 K113 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K114 ["ButtonHover"]
  SETTABLEKS R22 R21 K105 ["backgroundColor"]
  SETTABLEKS R21 R20 K108 ["hovered"]
  DUPTABLE R21 K116 [{"offset"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K115 ["offset"]
  SETTABLEKS R21 R20 K109 ["item"]
  DUPTABLE R21 K113 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K117 ["ButtonSelected"]
  SETTABLEKS R22 R21 K105 ["backgroundColor"]
  SETTABLEKS R21 R20 K110 ["selected"]
  SETTABLEKS R20 R19 K99 ["dropDown"]
  NEWTABLE R20 128 0
  SETTABLEKS R14 R20 K118 ["fontStyle"]
  GETTABLEKS R21 R5 K119 ["MainBackground"]
  SETTABLEKS R21 R20 K105 ["backgroundColor"]
  GETTABLEKS R21 R5 K120 ["LinkText"]
  SETTABLEKS R21 R20 K121 ["hyperlink"]
  GETTABLEKS R21 R5 K52 ["WarningText"]
  SETTABLEKS R21 R20 K122 ["warningColor"]
  LOADK R21 K69 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R21 R20 K123 ["warningIcon"]
  GETTABLEKS R21 R5 K124 ["SubBackground2"]
  SETTABLEKS R21 R20 K125 ["separator"]
  GETTABLEKS R21 R5 K126 ["ScrollBar"]
  SETTABLEKS R21 R20 K127 ["scrollBar"]
  GETTABLEKS R21 R5 K128 ["ScrollBarBackground"]
  SETTABLEKS R21 R20 K129 ["scrollBarBackground"]
  DUPTABLE R21 K130 [{"width", "height"}]
  LOADN R22 125
  SETTABLEKS R22 R21 K84 ["width"]
  LOADN R22 35
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K131 ["button"]
  DUPTABLE R21 K116 [{"offset"}]
  LOADN R22 227
  SETTABLEKS R22 R21 K115 ["offset"]
  SETTABLEKS R21 R20 K132 ["buttonBar"]
  DUPTABLE R21 K133 [{"height"}]
  LOADN R22 45
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K134 ["header"]
  DUPTABLE R21 K113 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K135 ["MenuBarBackground"]
  SETTABLEKS R22 R21 K105 ["backgroundColor"]
  SETTABLEKS R21 R20 K136 ["menuBar"]
  LOADN R21 35
  SETTABLEKS R21 R20 K137 ["rowHeight"]
  SETTABLEKS R18 R20 K138 ["robuxFeeBase"]
  SETTABLEKS R19 R20 K139 ["searchBar"]
  DUPTABLE R21 K143 [{"hover", "highlight", "text"}]
  GETTABLEKS R22 R5 K144 ["MenuEntryHover"]
  SETTABLEKS R22 R21 K140 ["hover"]
  GETTABLEKS R22 R5 K145 ["MenuEntryHighlight"]
  SETTABLEKS R22 R21 K141 ["highlight"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R22 R5 K146 ["MainTextSelected"]
  JUMP [+6]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R22 R5 K147 ["TextContrast"]
  JUMP [+2]
  GETTABLEKS R22 R5 K47 ["BrightText"]
  SETTABLEKS R22 R21 K142 ["text"]
  SETTABLEKS R21 R20 K148 ["menuEntry"]
  DUPTABLE R21 K150 [{"gradient", "height"}]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K149 ["gradient"]
  LOADN R22 65
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K151 ["footer"]
  JUMPIFNOT R12 [+2]
  LOADN R21 20
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K152 ["titleSpacing"]
  DUPTABLE R21 K156 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
  GETTABLEKS R22 R5 K112 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K157 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R22 R21 K90 ["disabled"]
  GETTABLEKS R22 R5 K101 ["Border"]
  SETTABLEKS R22 R21 K154 ["borderDefault"]
  GETTABLEKS R22 R5 K102 ["DialogMainButton"]
  SETTABLEKS R22 R21 K94 ["borderHover"]
  GETTABLEKS R22 R5 K54 ["DimmedText"]
  SETTABLEKS R22 R21 K155 ["tooltip"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K142 ["text"]
  LOADN R22 42
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K158 ["textBox"]
  DUPTABLE R21 K160 [{"maxWidth"}]
  LOADN R22 124
  SETTABLEKS R22 R21 K159 ["maxWidth"]
  SETTABLEKS R21 R20 K161 ["textWithInlineLink"]
  DUPTABLE R21 K169 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image", "offImage", "onImage"}]
  GETTABLEKS R22 R5 K112 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K47 ["BrightText"]
  SETTABLEKS R22 R21 K162 ["title"]
  GETTABLEKS R22 R5 K54 ["DimmedText"]
  SETTABLEKS R22 R21 K163 ["description"]
  LOADN R22 16
  SETTABLEKS R22 R21 K81 ["size"]
  JUMPIFNOT R12 [+2]
  LOADN R22 10
  JUMP [+1]
  LOADN R22 5
  SETTABLEKS R22 R21 K164 ["padding"]
  LOADN R22 244
  SETTABLEKS R22 R21 K165 ["descriptionWidth"]
  LOADN R22 10
  SETTABLEKS R22 R21 K166 ["sapcing"]
  DUPTABLE R22 K171 [{"background", "selected", "selectedDisabled"}]
  LOADK R23 K172 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R23 R22 K153 ["background"]
  GETTABLEKS R23 R5 K173 ["RadioButtonImage"]
  SETTABLEKS R23 R22 K110 ["selected"]
  GETTABLEKS R23 R5 K174 ["RadioButtonDisabledImage"]
  SETTABLEKS R23 R22 K170 ["selectedDisabled"]
  SETTABLEKS R22 R21 K80 ["image"]
  GETTABLEKS R22 R5 K175 ["RadioOffImage"]
  SETTABLEKS R22 R21 K167 ["offImage"]
  GETTABLEKS R22 R5 K176 ["RadioOnImage"]
  SETTABLEKS R22 R21 K168 ["onImage"]
  SETTABLEKS R21 R20 K177 ["radioButton"]
  DUPTABLE R21 K185 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R22 R5 K186 ["InformationImage"]
  SETTABLEKS R22 R21 K80 ["image"]
  LOADN R22 20
  SETTABLEKS R22 R21 K178 ["imageSize"]
  LOADN R22 2
  SETTABLEKS R22 R21 K179 ["imageTextGap"]
  DUPTABLE R22 K188 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R23 K45 [Enum.Font.SourceSans]
  SETTABLEKS R23 R22 K39 ["Font"]
  LOADN R23 18
  SETTABLEKS R23 R22 K40 ["TextSize"]
  GETTABLEKS R23 R5 K49 ["MainText"]
  SETTABLEKS R23 R22 K187 ["TextColor"]
  SETTABLEKS R22 R21 K180 ["BodyBodyDefault"]
  GETTABLEKS R22 R5 K189 ["ForegroundContrast"]
  SETTABLEKS R22 R21 K181 ["paneBackgroundColor"]
  GETTABLEKS R22 R5 K190 ["OtherDivider"]
  SETTABLEKS R22 R21 K182 ["paneBorderColor"]
  LOADN R22 8
  SETTABLEKS R22 R21 K183 ["panePadding"]
  LOADN R22 1
  SETTABLEKS R22 R21 K184 ["paneBorderSize"]
  SETTABLEKS R21 R20 K191 ["genreInfo"]
  DUPTABLE R21 K193 [{"warningLabel", "description", "padding"}]
  DUPTABLE R22 K195 [{"color", "height"}]
  GETTABLEKS R23 R5 K52 ["WarningText"]
  SETTABLEKS R23 R22 K194 ["color"]
  LOADN R23 30
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K192 ["warningLabel"]
  DUPTABLE R22 K133 [{"height"}]
  LOADN R23 25
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K163 ["description"]
  LOADN R22 5
  SETTABLEKS R22 R21 K164 ["padding"]
  SETTABLEKS R21 R20 K196 ["radioButtonSet"]
  DUPTABLE R21 K197 [{"background", "title"}]
  GETTABLEKS R22 R5 K112 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K47 ["BrightText"]
  SETTABLEKS R22 R21 K162 ["title"]
  SETTABLEKS R21 R20 K198 ["checkBox"]
  DUPTABLE R21 K201 [{"headerPadding", "titlePadding"}]
  LOADN R22 20
  SETTABLEKS R22 R21 K199 ["headerPadding"]
  LOADN R22 12
  SETTABLEKS R22 R21 K200 ["titlePadding"]
  SETTABLEKS R21 R20 K202 ["devProducts"]
  DUPTABLE R21 K204 [{"headerPadding", "titlePadding", "refreshButton"}]
  LOADN R22 20
  SETTABLEKS R22 R21 K199 ["headerPadding"]
  LOADN R22 12
  SETTABLEKS R22 R21 K200 ["titlePadding"]
  DUPTABLE R22 K205 [{"icon", "offset", "size"}]
  GETTABLEKS R23 R5 K206 ["RefreshImage"]
  SETTABLEKS R23 R22 K71 ["icon"]
  DUPTABLE R23 K208 [{"x"}]
  LOADN R24 246
  SETTABLEKS R24 R23 K207 ["x"]
  SETTABLEKS R23 R22 K115 ["offset"]
  LOADN R23 18
  SETTABLEKS R23 R22 K81 ["size"]
  SETTABLEKS R22 R21 K203 ["refreshButton"]
  SETTABLEKS R21 R20 K209 ["badges"]
  DUPTABLE R21 K211 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
  GETTABLEKS R22 R5 K55 ["Button"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K114 ["ButtonHover"]
  SETTABLEKS R22 R21 K140 ["hover"]
  GETTABLEKS R22 R5 K47 ["BrightText"]
  SETTABLEKS R22 R21 K142 ["text"]
  GETTABLEKS R22 R5 K157 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R22 R21 K90 ["disabled"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K210 ["handle"]
  GETTABLEKS R22 R5 K101 ["Border"]
  SETTABLEKS R22 R21 K93 ["border"]
  GETTABLEKS R22 R5 K124 ["SubBackground2"]
  SETTABLEKS R22 R21 K149 ["gradient"]
  SETTABLEKS R21 R20 K99 ["dropDown"]
  DUPTABLE R21 K212 [{"background", "hover", "highlight", "text"}]
  GETTABLEKS R22 R5 K135 ["MenuBarBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K144 ["MenuEntryHover"]
  SETTABLEKS R22 R21 K140 ["hover"]
  GETTABLEKS R22 R5 K145 ["MenuEntryHighlight"]
  SETTABLEKS R22 R21 K141 ["highlight"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K142 ["text"]
  SETTABLEKS R21 R20 K213 ["dropDownEntry"]
  DUPTABLE R21 K214 [{"background", "text", "size", "spacing"}]
  GETTABLEKS R22 R5 K119 ["MainBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K142 ["text"]
  DUPTABLE R22 K130 [{"width", "height"}]
  LOADN R23 224
  SETTABLEKS R23 R22 K84 ["width"]
  LOADN R23 52
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K81 ["size"]
  LOADN R22 20
  SETTABLEKS R22 R21 K75 ["spacing"]
  SETTABLEKS R21 R20 K215 ["dialog"]
  DUPTABLE R21 K219 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R22 R5 K220 ["TableItem"]
  SETTABLEKS R22 R21 K153 ["background"]
  LOADK R22 K221 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R22 R21 K216 ["maskImage"]
  LOADK R22 K222 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R22 R21 K217 ["loadingImage"]
  LOADK R22 K223 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K218 ["loadFailureImage"]
  SETTABLEKS R21 R20 K224 ["subjectThumbnail"]
  DUPTABLE R21 K225 [{"loadingImage", "loadFailureImage"}]
  LOADK R22 K226 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R22 R21 K217 ["loadingImage"]
  LOADK R22 K223 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K218 ["loadFailureImage"]
  SETTABLEKS R21 R20 K227 ["groupThumbnail"]
  DUPTABLE R21 K225 [{"loadingImage", "loadFailureImage"}]
  LOADK R22 K228 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
  SETTABLEKS R22 R21 K217 ["loadingImage"]
  LOADK R22 K223 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K218 ["loadFailureImage"]
  SETTABLEKS R21 R20 K229 ["badgeIconThumbnail"]
  DUPTABLE R21 K232 [{"image", "sliceCenter", "square"}]
  LOADK R22 K233 ["rbxasset://textures/GameSettings/DottedBorder.png"]
  SETTABLEKS R22 R21 K80 ["image"]
  GETIMPORT R22 K236 [Rect.new]
  LOADN R23 2
  LOADN R24 2
  LOADN R25 9
  LOADN R26 148
  CALL R22 4 1
  SETTABLEKS R22 R21 K230 ["sliceCenter"]
  DUPTABLE R22 K237 [{"image", "sliceCenter"}]
  LOADK R23 K238 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
  SETTABLEKS R23 R22 K80 ["image"]
  GETIMPORT R23 K236 [Rect.new]
  LOADN R24 2
  LOADN R25 2
  LOADN R26 148
  LOADN R27 148
  CALL R23 4 1
  SETTABLEKS R23 R22 K230 ["sliceCenter"]
  SETTABLEKS R22 R21 K231 ["square"]
  SETTABLEKS R21 R20 K239 ["dottedBorder"]
  DUPTABLE R21 K242 [{"image", "rectOffset", "rectSize"}]
  LOADK R22 K243 ["rbxasset://textures/GameSettings/CenterPlus.png"]
  SETTABLEKS R22 R21 K80 ["image"]
  GETIMPORT R22 K245 [Vector2.new]
  LOADN R23 121
  LOADN R24 63
  CALL R22 2 1
  SETTABLEKS R22 R21 K240 ["rectOffset"]
  GETIMPORT R22 K245 [Vector2.new]
  LOADN R23 24
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K241 ["rectSize"]
  SETTABLEKS R21 R20 K246 ["plus"]
  DUPTABLE R21 K248 [{"background", "count"}]
  GETTABLEKS R22 R5 K124 ["SubBackground2"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K54 ["DimmedText"]
  SETTABLEKS R22 R21 K247 ["count"]
  SETTABLEKS R21 R20 K249 ["thumbnail"]
  DUPTABLE R21 K250 [{"background", "border", "plus"}]
  GETTABLEKS R22 R5 K251 ["SubBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K124 ["SubBackground2"]
  SETTABLEKS R22 R21 K93 ["border"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K246 ["plus"]
  SETTABLEKS R21 R20 K252 ["newThumbnail"]
  DUPTABLE R21 K253 [{"background", "border"}]
  GETTABLEKS R22 R5 K251 ["SubBackground"]
  SETTABLEKS R22 R21 K153 ["background"]
  GETTABLEKS R22 R5 K254 ["CurrentMarkerSelected"]
  SETTABLEKS R22 R21 K93 ["border"]
  SETTABLEKS R21 R20 K255 ["thumbnailDrag"]
  DUPTABLE R21 K258 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R22 R5 K55 ["Button"]
  SETTABLEKS R22 R21 K256 ["ButtonColor"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K187 ["TextColor"]
  GETTABLEKS R22 R5 K101 ["Border"]
  SETTABLEKS R22 R21 K257 ["BorderColor"]
  SETTABLEKS R21 R20 K259 ["cancelButton"]
  DUPTABLE R21 K258 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R22 R5 K102 ["DialogMainButton"]
  SETTABLEKS R22 R21 K256 ["ButtonColor"]
  GETIMPORT R22 K261 [Color3.new]
  LOADN R23 1
  LOADN R24 1
  LOADN R25 1
  CALL R22 3 1
  SETTABLEKS R22 R21 K187 ["TextColor"]
  GETTABLEKS R22 R5 K124 ["SubBackground2"]
  SETTABLEKS R22 R21 K257 ["BorderColor"]
  SETTABLEKS R21 R20 K262 ["defaultButton"]
  DUPTABLE R21 K265 [{"collapseStateArrow", "deleteButton"}]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K263 ["collapseStateArrow"]
  GETTABLEKS R22 R5 K251 ["SubBackground"]
  SETTABLEKS R22 R21 K264 ["deleteButton"]
  SETTABLEKS R21 R20 K266 ["collaboratorItem"]
  DUPTABLE R21 K269 [{"height", "header", "item", "icon", "menu", "textPadding"}]
  LOADN R22 94
  SETTABLEKS R22 R21 K74 ["height"]
  DUPTABLE R22 K133 [{"height"}]
  LOADN R23 32
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K134 ["header"]
  DUPTABLE R22 K270 [{"background", "height", "padding"}]
  GETTABLEKS R23 R5 K220 ["TableItem"]
  SETTABLEKS R23 R22 K153 ["background"]
  LOADN R23 32
  SETTABLEKS R23 R22 K74 ["height"]
  LOADN R23 5
  SETTABLEKS R23 R22 K164 ["padding"]
  SETTABLEKS R22 R21 K109 ["item"]
  DUPTABLE R22 K133 [{"height"}]
  LOADN R23 40
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K71 ["icon"]
  DUPTABLE R22 K274 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
  LOADN R23 30
  SETTABLEKS R23 R22 K271 ["itemPadding"]
  LOADN R23 32
  SETTABLEKS R23 R22 K272 ["buttonSize"]
  LOADN R23 10
  SETTABLEKS R23 R22 K273 ["buttonPaddingY"]
  SETTABLEKS R22 R21 K267 ["menu"]
  LOADN R22 6
  SETTABLEKS R22 R21 K268 ["textPadding"]
  SETTABLEKS R21 R20 K275 ["table"]
  DUPTABLE R21 K133 [{"height"}]
  LOADN R22 24
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K276 ["toggleButton"]
  DUPTABLE R21 K277 [{"image", "imageColor"}]
  LOADK R22 K22 ["Flags"]
  SETTABLEKS R22 R21 K80 ["image"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K79 ["imageColor"]
  SETTABLEKS R21 R20 K279 ["editButton"]
  DUPTABLE R21 K277 [{"image", "imageColor"}]
  LOADK R22 K24 ["SharedFlags"]
  SETTABLEKS R22 R21 K80 ["image"]
  GETTABLEKS R22 R5 K49 ["MainText"]
  SETTABLEKS R22 R21 K79 ["imageColor"]
  SETTABLEKS R21 R20 K281 ["copyButton"]
  DUPTABLE R21 K282 [{"padding"}]
  LOADN R22 10
  SETTABLEKS R22 R21 K164 ["padding"]
  SETTABLEKS R21 R20 K283 ["uiListLayout"]
  DUPTABLE R21 K286 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K284 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K285 ["PaddingY"]
  SETTABLEKS R21 R20 K287 ["createButton"]
  DUPTABLE R21 K286 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K284 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K285 ["PaddingY"]
  SETTABLEKS R21 R20 K288 ["viewButton"]
  DUPTABLE R21 K291 [{"publishText", "publishButton"}]
  DUPTABLE R22 K292 [{"offset", "width"}]
  LOADN R23 70
  SETTABLEKS R23 R22 K115 ["offset"]
  LOADN R23 250
  SETTABLEKS R23 R22 K84 ["width"]
  SETTABLEKS R22 R21 K289 ["publishText"]
  DUPTABLE R22 K295 [{"offset", "paddingX", "paddingY"}]
  LOADN R23 125
  SETTABLEKS R23 R22 K115 ["offset"]
  LOADN R23 75
  SETTABLEKS R23 R22 K293 ["paddingX"]
  LOADN R23 15
  SETTABLEKS R23 R22 K294 ["paddingY"]
  SETTABLEKS R22 R21 K290 ["publishButton"]
  SETTABLEKS R21 R20 K296 ["mainView"]
  DUPTABLE R21 K286 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K284 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K285 ["PaddingY"]
  SETTABLEKS R21 R20 K297 ["shutdownButton"]
  DUPTABLE R21 K306 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
  LOADN R22 32
  SETTABLEKS R22 R21 K298 ["settingPadding"]
  LOADN R22 25
  SETTABLEKS R22 R21 K299 ["marginX"]
  JUMPIFNOT R12 [+2]
  LOADN R22 20
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K300 ["marginY"]
  LOADN R22 6
  SETTABLEKS R22 R21 K199 ["headerPadding"]
  DUPTABLE R22 K307 [{"paddingX", "paddingY"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K293 ["paddingX"]
  LOADN R23 15
  SETTABLEKS R23 R22 K294 ["paddingY"]
  SETTABLEKS R22 R21 K301 ["reloadButton"]
  LOADN R22 144
  SETTABLEKS R22 R21 K302 ["failLabelPaddingX"]
  LOADN R22 16
  SETTABLEKS R22 R21 K303 ["failPageListPaddingY"]
  GETIMPORT R22 K310 [UDim2.fromOffset]
  LOADN R23 40
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K304 ["toggleButtonSize"]
  LOADN R22 200
  SETTABLEKS R22 R21 K305 ["toggleButtonTitleWidth"]
  SETTABLEKS R21 R20 K311 ["settingsPage"]
  DUPTABLE R21 K312 [{"image", "size"}]
  LOADK R22 K57 [{"TextSize"}]
  SETTABLEKS R22 R21 K80 ["image"]
  LOADN R22 32
  SETTABLEKS R22 R21 K81 ["size"]
  SETTABLEKS R21 R20 K314 ["backButton"]
  DUPTABLE R21 K315 [{"textBox"}]
  DUPTABLE R22 K317 [{"length"}]
  LOADN R23 100
  SETTABLEKS R23 R22 K316 ["length"]
  SETTABLEKS R22 R21 K158 ["textBox"]
  SETTABLEKS R21 R20 K318 ["placePage"]
  DUPTABLE R21 K319 [{"height", "length", "paddingY", "paddingX"}]
  LOADN R22 22
  SETTABLEKS R22 R21 K74 ["height"]
  LOADN R22 250
  SETTABLEKS R22 R21 K316 ["length"]
  LOADN R22 25
  SETTABLEKS R22 R21 K294 ["paddingY"]
  LOADN R22 5
  SETTABLEKS R22 R21 K293 ["paddingX"]
  SETTABLEKS R21 R20 K320 ["requirementsLink"]
  DUPTABLE R21 K321 [{"paddingX", "paddingY", "size"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K293 ["paddingX"]
  LOADN R22 30
  SETTABLEKS R22 R21 K294 ["paddingY"]
  LOADN R22 14
  SETTABLEKS R22 R21 K81 ["size"]
  SETTABLEKS R21 R20 K322 ["tooltipIcon"]
  DUPTABLE R21 K324 [{"Size"}]
  DUPTABLE R22 K327 [{"X", "Y"}]
  LOADN R23 244
  SETTABLEKS R23 R22 K325 ["X"]
  LOADN R23 94
  SETTABLEKS R23 R22 K326 ["Y"]
  SETTABLEKS R22 R21 K323 ["Size"]
  SETTABLEKS R21 R20 K328 ["emailDialog"]
  DUPTABLE R21 K329 [{"padding", "size", "transparency"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K164 ["padding"]
  LOADN R22 20
  SETTABLEKS R22 R21 K81 ["size"]
  LOADK R22 K92 [0.5]
  SETTABLEKS R22 R21 K76 ["transparency"]
  SETTABLEKS R21 R20 K330 ["optInWarning"]
  DUPTABLE R21 K331 [{"padding", "length", "height"}]
  LOADN R22 30
  SETTABLEKS R22 R21 K164 ["padding"]
  LOADN R22 250
  SETTABLEKS R22 R21 K316 ["length"]
  LOADN R22 150
  SETTABLEKS R22 R21 K74 ["height"]
  SETTABLEKS R21 R20 K332 ["extraOptInInfo"]
  DUPTABLE R21 K334 [{"headerOffset", "description", "icon"}]
  LOADN R22 196
  SETTABLEKS R22 R21 K333 ["headerOffset"]
  DUPTABLE R22 K317 [{"length"}]
  LOADN R23 131
  SETTABLEKS R23 R22 K316 ["length"]
  SETTABLEKS R22 R21 K163 ["description"]
  DUPTABLE R22 K335 [{"size"}]
  LOADN R23 16
  SETTABLEKS R23 R22 K81 ["size"]
  SETTABLEKS R22 R21 K71 ["icon"]
  SETTABLEKS R21 R20 K336 ["warningDialog"]
  DUPTABLE R21 K337 [{"button", "padding", "width"}]
  DUPTABLE R22 K133 [{"height"}]
  LOADN R23 50
  SETTABLEKS R23 R22 K74 ["height"]
  SETTABLEKS R22 R21 K131 ["button"]
  LOADN R22 10
  SETTABLEKS R22 R21 K164 ["padding"]
  LOADN R22 195
  SETTABLEKS R22 R21 K84 ["width"]
  SETTABLEKS R21 R20 K338 ["selectInput"]
  DUPTABLE R21 K341 [{"buttonPane", "spacing", "titlePane"}]
  DUPTABLE R22 K342 [{"padding", "spacing"}]
  LOADN R23 165
  SETTABLEKS R23 R22 K164 ["padding"]
  LOADN R23 20
  SETTABLEKS R23 R22 K75 ["spacing"]
  SETTABLEKS R22 R21 K339 ["buttonPane"]
  LOADN R22 45
  SETTABLEKS R22 R21 K75 ["spacing"]
  DUPTABLE R22 K343 [{"spacing"}]
  LOADN R23 15
  SETTABLEKS R23 R22 K75 ["spacing"]
  SETTABLEKS R22 R21 K340 ["titlePane"]
  SETTABLEKS R21 R20 K344 ["playabilityWidget"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R21 K347 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K345 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K346 ["BorderSizePixel"]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 130
  CALL R22 4 1
  SETTABLEKS R22 R21 K323 ["Size"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K349 ["guidelinesFrame"]
  JUMPIFNOT R11 [+43]
  DUPTABLE R21 K352 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K345 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K346 ["BorderSizePixel"]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 0
  LOADN R24 180
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K323 ["Size"]
  GETIMPORT R22 K354 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K350 ["TextXAlignment"]
  GETIMPORT R22 K356 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K351 ["TextYAlignment"]
  GETTABLEKS R23 R14 K26 ["Title"]
  GETTABLEKS R22 R23 K39 ["Font"]
  SETTABLEKS R22 R21 K39 ["Font"]
  GETTABLEKS R23 R14 K26 ["Title"]
  GETTABLEKS R22 R23 K41 ["TextColor3"]
  SETTABLEKS R22 R21 K41 ["TextColor3"]
  GETTABLEKS R23 R14 K26 ["Title"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K357 ["guidelinesTitle"]
  JUMPIFNOT R11 [+33]
  DUPTABLE R21 K361 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K345 ["BackgroundTransparency"]
  LOADN R22 1
  SETTABLEKS R22 R21 K358 ["LayoutOrder"]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 1
  LOADN R24 76
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K323 ["Size"]
  GETIMPORT R22 K245 [Vector2.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K359 ["AnchorPoint"]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 1
  LOADN R24 10
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K360 ["Position"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K362 ["guidelinesDescriptionFrame"]
  JUMPIFNOT R11 [+31]
  DUPTABLE R21 K363 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 19
  CALL R22 4 1
  SETTABLEKS R22 R21 K323 ["Size"]
  GETTABLEKS R23 R14 K29 ["Normal"]
  GETTABLEKS R22 R23 K39 ["Font"]
  SETTABLEKS R22 R21 K39 ["Font"]
  GETIMPORT R22 K356 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K351 ["TextYAlignment"]
  GETTABLEKS R23 R14 K29 ["Normal"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  GETIMPORT R22 K354 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K350 ["TextXAlignment"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K364 ["chosenGuidelineText"]
  DUPTABLE R21 K365 [{"Style", "PaddingX", "PaddingY"}]
  LOADK R22 K110 ["selected"]
  SETTABLEKS R22 R21 K8 ["Style"]
  LOADN R22 40
  SETTABLEKS R22 R21 K284 ["PaddingX"]
  LOADN R22 15
  SETTABLEKS R22 R21 K285 ["PaddingY"]
  SETTABLEKS R21 R20 K367 ["openQuestionnaireButton"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R21 K368 [{"Position", "TextSize"}]
  GETIMPORT R22 K348 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADK R25 K113 [{"backgroundColor"}]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K360 ["Position"]
  GETTABLEKS R23 R14 K34 ["HeaderLink"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K370 ["titleLink"]
  JUMPIFNOT R11 [+21]
  DUPTABLE R21 K375 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
  GETIMPORT R22 K376 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K371 ["SortOrder"]
  GETIMPORT R22 K378 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K372 ["FillDirection"]
  GETIMPORT R22 K380 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K373 ["Padding"]
  GETIMPORT R22 K381 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K374 ["HorizontalAlignment"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K382 ["guidelinesDescriptionListLayout"]
  JUMPIFNOT R11 [+40]
  DUPTABLE R21 K386 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
  GETTABLEKS R23 R14 K35 ["Small"]
  GETTABLEKS R22 R23 K41 ["TextColor3"]
  SETTABLEKS R22 R21 K41 ["TextColor3"]
  LOADN R22 1
  SETTABLEKS R22 R21 K345 ["BackgroundTransparency"]
  GETTABLEKS R23 R14 K35 ["Small"]
  GETTABLEKS R22 R23 K39 ["Font"]
  SETTABLEKS R22 R21 K39 ["Font"]
  GETTABLEKS R23 R14 K35 ["Small"]
  GETTABLEKS R22 R23 K40 ["TextSize"]
  SETTABLEKS R22 R21 K40 ["TextSize"]
  GETIMPORT R22 K354 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K350 ["TextXAlignment"]
  GETIMPORT R22 K356 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K351 ["TextYAlignment"]
  LOADB R22 1
  SETTABLEKS R22 R21 K383 ["TextWrapped"]
  LOADK R22 K131 ["button"]
  SETTABLEKS R22 R21 K384 ["TextTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K385 ["ClipsDescendants"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K388 ["guidelinesDescriptionText"]
  DUPTABLE R21 K390 [{"PaddingBottom"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K389 ["PaddingBottom"]
  SETTABLEKS R21 R20 K391 ["atcFrame"]
  GETTABLEKS R21 R7 K55 ["Button"]
  SETTABLE R16 R20 R21
  GETTABLEKS R21 R7 K61 ["Image"]
  SETTABLE R17 R20 R21
  NEWTABLE R21 4 0
  GETTABLEKS R22 R5 K173 ["RadioButtonImage"]
  LOADK R23 K136 ["menuBar"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K174 ["RadioButtonDisabledImage"]
  LOADK R23 K137 ["rowHeight"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K206 ["RefreshImage"]
  LOADK R23 K138 ["robuxFeeBase"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K186 ["InformationImage"]
  LOADK R23 K139 ["searchBar"]
  SETTABLE R23 R21 R22
  NEWTABLE R22 4 0
  GETTABLEKS R23 R5 K173 ["RadioButtonImage"]
  LOADK R24 K140 ["hover"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K174 ["RadioButtonDisabledImage"]
  LOADK R24 K141 ["highlight"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K206 ["RefreshImage"]
  LOADK R24 K142 ["text"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K186 ["InformationImage"]
  LOADK R24 K143 [{"hover", "highlight", "text"}]
  SETTABLE R24 R22 R23
  DUPCLOSURE R23 K400 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R20
  RETURN R23 1
