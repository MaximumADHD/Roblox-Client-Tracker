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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagGameSettingsUseDFRadioButton"]
  CALL R2 1 1
  CALL R2 0 1
  GETTABLEKS R3 R1 K10 ["Util"]
  GETTABLEKS R4 R1 K11 ["Style"]
  GETTABLEKS R5 R3 K12 ["StyleModifier"]
  GETTABLEKS R6 R4 K13 ["StyleKey"]
  GETTABLEKS R7 R4 K14 ["getRawComponentStyle"]
  GETTABLEKS R8 R4 K15 ["ComponentSymbols"]
  GETTABLEKS R10 R4 K16 ["Themes"]
  GETTABLEKS R9 R10 K17 ["StudioTheme"]
  GETTABLEKS R10 R1 K18 ["Dash"]
  GETTABLEKS R11 R10 K19 ["join"]
  GETIMPORT R12 K21 [game]
  LOADK R14 K22 ["GameSettingsExperienceGuidelines"]
  NAMECALL R12 R12 K23 ["GetFastFlag"]
  CALL R12 2 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K7 ["Src"]
  GETTABLEKS R15 R16 K8 ["Flags"]
  GETTABLEKS R14 R15 K24 ["getFFlagGameSettingsFixMoreLayoutIssues"]
  CALL R13 1 1
  CALL R13 0 1
  GETTABLEKS R15 R1 K25 ["SharedFlags"]
  GETTABLEKS R14 R15 K26 ["getFFlagDevFrameworkEnableFoundationColors"]
  CALL R14 0 1
  DUPTABLE R15 K39 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 22
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K47 ["TitlebarText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K27 ["Title"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 22
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K48 ["BrightText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K28 ["Header"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 20
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K49 ["SubText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K29 ["Subtitle"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 20
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K50 ["MainText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K30 ["Normal"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K52 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 20
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K50 ["MainText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K31 ["SemiBold"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 18
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K50 ["MainText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K32 ["Smaller"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 18
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K53 ["WarningText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K33 ["Warning"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 18
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K54 ["ErrorText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K34 ["Error"]
  JUMPIFNOT R12 [+13]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 16
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K50 ["MainText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K35 ["HeaderLink"]
  JUMPIFNOT R12 [+13]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 14
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K50 ["MainText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K36 ["Small"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 14
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K55 ["DimmedText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K37 ["Subtext"]
  DUPTABLE R16 K43 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R17 K46 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K40 ["Font"]
  LOADN R17 14
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R6 K54 ["ErrorText"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  SETTABLEKS R16 R15 K38 ["SmallError"]
  MOVE R16 R7
  LOADK R17 K56 ["Button"]
  CALL R16 1 1
  MOVE R17 R11
  MOVE R18 R16
  NEWTABLE R19 2 0
  MOVE R20 R11
  GETTABLEKS R21 R16 K57 ["&RoundPrimary"]
  DUPTABLE R22 K58 [{"TextSize"}]
  GETTABLEKS R24 R15 K30 ["Normal"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["&GameSettingsPrimaryButton"]
  MOVE R20 R11
  GETTABLEKS R21 R16 K60 ["&Round"]
  DUPTABLE R22 K58 [{"TextSize"}]
  GETTABLEKS R24 R15 K30 ["Normal"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["&GameSettingsButton"]
  CALL R17 2 1
  MOVE R18 R11
  MOVE R19 R7
  LOADK R20 K62 ["Image"]
  CALL R19 1 1
  NEWTABLE R20 2 0
  NEWTABLE R21 4 0
  LOADK R22 K63 ["rbxasset://textures/GameSettings/MoreDetails.png"]
  SETTABLEKS R22 R21 K62 ["Image"]
  GETTABLEKS R22 R6 K49 ["SubText"]
  SETTABLEKS R22 R21 K64 ["Color"]
  GETTABLEKS R22 R5 K65 ["Hover"]
  DUPTABLE R23 K66 [{"Color"}]
  GETTABLEKS R24 R6 K67 ["MainTextHover"]
  SETTABLEKS R24 R23 K64 ["Color"]
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K68 ["&TooltipStyle"]
  DUPTABLE R21 K69 [{"Image"}]
  LOADK R22 K70 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R22 R21 K62 ["Image"]
  SETTABLEKS R21 R20 K71 ["&WarningStyle"]
  CALL R18 2 1
  DUPTABLE R19 K79 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
  DUPTABLE R20 K83 [{"imageColor", "image", "size"}]
  GETTABLEKS R21 R6 K50 ["MainText"]
  SETTABLEKS R21 R20 K80 ["imageColor"]
  LOADK R21 K84 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R21 R20 K81 ["image"]
  LOADN R21 16
  SETTABLEKS R21 R20 K82 ["size"]
  SETTABLEKS R20 R19 K72 ["icon"]
  DUPTABLE R20 K86 [{"width"}]
  LOADN R21 150
  SETTABLEKS R21 R20 K85 ["width"]
  SETTABLEKS R20 R19 K73 ["priceField"]
  JUMPIFNOT R13 [+2]
  LOADNIL R20
  JUMP [+4]
  DUPTABLE R20 K86 [{"width"}]
  LOADN R21 244
  SETTABLEKS R21 R20 K85 ["width"]
  SETTABLEKS R20 R19 K74 ["subText"]
  JUMPIFNOT R13 [+2]
  LOADNIL R20
  JUMP [+7]
  DUPTABLE R20 K89 [{"withSubText", "withoutSubText"}]
  LOADN R21 137
  SETTABLEKS R21 R20 K87 ["withSubText"]
  LOADN R21 121
  SETTABLEKS R21 R20 K88 ["withoutSubText"]
  SETTABLEKS R20 R19 K75 ["height"]
  JUMPIFNOT R13 [+2]
  LOADN R20 5
  JUMP [+1]
  LOADN R20 10
  SETTABLEKS R20 R19 K76 ["spacing"]
  DUPTABLE R20 K92 [{"enabled", "disabled"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K90 ["enabled"]
  LOADK R21 K93 [0.5]
  SETTABLEKS R21 R20 K91 ["disabled"]
  SETTABLEKS R20 R19 K77 ["transparency"]
  JUMPIFNOT R13 [+2]
  LOADN R20 10
  JUMP [+1]
  LOADN R20 25
  SETTABLEKS R20 R19 K78 ["pricePadding"]
  DUPTABLE R20 K101 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
  GETTABLEKS R21 R6 K102 ["Border"]
  SETTABLEKS R21 R20 K94 ["border"]
  GETTABLEKS R21 R6 K103 ["DialogMainButton"]
  SETTABLEKS R21 R20 K95 ["borderHover"]
  GETTABLEKS R21 R6 K103 ["DialogMainButton"]
  SETTABLEKS R21 R20 K96 ["borderSelected"]
  GETTABLEKS R21 R6 K55 ["DimmedText"]
  SETTABLEKS R21 R20 K97 ["placeholderText"]
  GETTABLEKS R21 R6 K49 ["SubText"]
  SETTABLEKS R21 R20 K98 ["searchIcon"]
  DUPTABLE R21 K105 [{"imageSelected", "image"}]
  GETTABLEKS R22 R6 K49 ["SubText"]
  SETTABLEKS R22 R21 K104 ["imageSelected"]
  GETTABLEKS R22 R6 K49 ["SubText"]
  SETTABLEKS R22 R21 K81 ["image"]
  SETTABLEKS R21 R20 K99 ["clearButton"]
  DUPTABLE R21 K112 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
  GETTABLEKS R22 R6 K113 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K106 ["backgroundColor"]
  GETTABLEKS R22 R6 K50 ["MainText"]
  SETTABLEKS R22 R21 K107 ["itemText"]
  GETTABLEKS R22 R6 K49 ["SubText"]
  SETTABLEKS R22 R21 K108 ["headerText"]
  DUPTABLE R22 K114 [{"backgroundColor"}]
  GETTABLEKS R23 R6 K115 ["ButtonHover"]
  SETTABLEKS R23 R22 K106 ["backgroundColor"]
  SETTABLEKS R22 R21 K109 ["hovered"]
  DUPTABLE R22 K117 [{"offset"}]
  LOADN R23 2
  SETTABLEKS R23 R22 K116 ["offset"]
  SETTABLEKS R22 R21 K110 ["item"]
  DUPTABLE R22 K114 [{"backgroundColor"}]
  GETTABLEKS R23 R6 K118 ["ButtonSelected"]
  SETTABLEKS R23 R22 K106 ["backgroundColor"]
  SETTABLEKS R22 R21 K111 ["selected"]
  SETTABLEKS R21 R20 K100 ["dropDown"]
  NEWTABLE R21 128 0
  SETTABLEKS R15 R21 K119 ["fontStyle"]
  GETTABLEKS R22 R6 K120 ["MainBackground"]
  SETTABLEKS R22 R21 K106 ["backgroundColor"]
  GETTABLEKS R22 R6 K121 ["LinkText"]
  SETTABLEKS R22 R21 K122 ["hyperlink"]
  GETTABLEKS R22 R6 K53 ["WarningText"]
  SETTABLEKS R22 R21 K123 ["warningColor"]
  LOADK R22 K70 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R22 R21 K124 ["warningIcon"]
  GETTABLEKS R22 R6 K125 ["SubBackground2"]
  SETTABLEKS R22 R21 K126 ["separator"]
  GETTABLEKS R22 R6 K127 ["ScrollBar"]
  SETTABLEKS R22 R21 K128 ["scrollBar"]
  GETTABLEKS R22 R6 K129 ["ScrollBarBackground"]
  SETTABLEKS R22 R21 K130 ["scrollBarBackground"]
  DUPTABLE R22 K131 [{"width", "height"}]
  LOADN R23 125
  SETTABLEKS R23 R22 K85 ["width"]
  LOADN R23 35
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K132 ["button"]
  DUPTABLE R22 K117 [{"offset"}]
  LOADN R23 227
  SETTABLEKS R23 R22 K116 ["offset"]
  SETTABLEKS R22 R21 K133 ["buttonBar"]
  DUPTABLE R22 K134 [{"height"}]
  LOADN R23 45
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K135 ["header"]
  DUPTABLE R22 K114 [{"backgroundColor"}]
  GETTABLEKS R23 R6 K136 ["MenuBarBackground"]
  SETTABLEKS R23 R22 K106 ["backgroundColor"]
  SETTABLEKS R22 R21 K137 ["menuBar"]
  LOADN R22 35
  SETTABLEKS R22 R21 K138 ["rowHeight"]
  SETTABLEKS R19 R21 K139 ["robuxFeeBase"]
  SETTABLEKS R20 R21 K140 ["searchBar"]
  DUPTABLE R22 K144 [{"hover", "highlight", "text"}]
  GETTABLEKS R23 R6 K145 ["MenuEntryHover"]
  SETTABLEKS R23 R22 K141 ["hover"]
  GETTABLEKS R23 R6 K146 ["MenuEntryHighlight"]
  SETTABLEKS R23 R22 K142 ["highlight"]
  JUMPIFNOT R14 [+3]
  GETTABLEKS R23 R6 K147 ["MainTextSelected"]
  JUMP [+6]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R23 R6 K148 ["TextContrast"]
  JUMP [+2]
  GETTABLEKS R23 R6 K48 ["BrightText"]
  SETTABLEKS R23 R22 K143 ["text"]
  SETTABLEKS R22 R21 K149 ["menuEntry"]
  DUPTABLE R22 K151 [{"gradient", "height"}]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K150 ["gradient"]
  LOADN R23 65
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K152 ["footer"]
  JUMPIFNOT R13 [+2]
  LOADN R22 20
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K153 ["titleSpacing"]
  DUPTABLE R22 K157 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
  GETTABLEKS R23 R6 K113 ["InputFieldBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K158 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R23 R22 K91 ["disabled"]
  GETTABLEKS R23 R6 K102 ["Border"]
  SETTABLEKS R23 R22 K155 ["borderDefault"]
  GETTABLEKS R23 R6 K103 ["DialogMainButton"]
  SETTABLEKS R23 R22 K95 ["borderHover"]
  GETTABLEKS R23 R6 K55 ["DimmedText"]
  SETTABLEKS R23 R22 K156 ["tooltip"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K143 ["text"]
  LOADN R23 42
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K159 ["textBox"]
  DUPTABLE R22 K161 [{"maxWidth"}]
  LOADN R23 124
  SETTABLEKS R23 R22 K160 ["maxWidth"]
  SETTABLEKS R22 R21 K162 ["textWithInlineLink"]
  DUPTABLE R22 K170 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image", "offImage", "onImage"}]
  GETTABLEKS R23 R6 K113 ["InputFieldBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K48 ["BrightText"]
  SETTABLEKS R23 R22 K163 ["title"]
  GETTABLEKS R23 R6 K55 ["DimmedText"]
  SETTABLEKS R23 R22 K164 ["description"]
  JUMPIFNOT R2 [+2]
  LOADN R23 16
  JUMP [+1]
  LOADN R23 20
  SETTABLEKS R23 R22 K82 ["size"]
  JUMPIFNOT R13 [+2]
  LOADN R23 10
  JUMP [+1]
  LOADN R23 5
  SETTABLEKS R23 R22 K165 ["padding"]
  LOADN R23 244
  SETTABLEKS R23 R22 K166 ["descriptionWidth"]
  LOADN R23 10
  SETTABLEKS R23 R22 K167 ["sapcing"]
  DUPTABLE R23 K172 [{"background", "selected", "selectedDisabled"}]
  LOADK R24 K173 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R24 R23 K154 ["background"]
  GETTABLEKS R24 R6 K174 ["RadioButtonImage"]
  SETTABLEKS R24 R23 K111 ["selected"]
  GETTABLEKS R24 R6 K175 ["RadioButtonDisabledImage"]
  SETTABLEKS R24 R23 K171 ["selectedDisabled"]
  SETTABLEKS R23 R22 K81 ["image"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R23 R6 K176 ["RadioOffImage"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K168 ["offImage"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R23 R6 K177 ["RadioOnImage"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K169 ["onImage"]
  SETTABLEKS R22 R21 K178 ["radioButton"]
  DUPTABLE R22 K186 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R23 R6 K187 ["InformationImage"]
  SETTABLEKS R23 R22 K81 ["image"]
  LOADN R23 20
  SETTABLEKS R23 R22 K179 ["imageSize"]
  LOADN R23 2
  SETTABLEKS R23 R22 K180 ["imageTextGap"]
  DUPTABLE R23 K189 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R24 K46 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K40 ["Font"]
  LOADN R24 18
  SETTABLEKS R24 R23 K41 ["TextSize"]
  GETTABLEKS R24 R6 K50 ["MainText"]
  SETTABLEKS R24 R23 K188 ["TextColor"]
  SETTABLEKS R23 R22 K181 ["BodyBodyDefault"]
  GETTABLEKS R23 R6 K190 ["ForegroundContrast"]
  SETTABLEKS R23 R22 K182 ["paneBackgroundColor"]
  GETTABLEKS R23 R6 K191 ["OtherDivider"]
  SETTABLEKS R23 R22 K183 ["paneBorderColor"]
  LOADN R23 8
  SETTABLEKS R23 R22 K184 ["panePadding"]
  LOADN R23 1
  SETTABLEKS R23 R22 K185 ["paneBorderSize"]
  SETTABLEKS R22 R21 K192 ["genreInfo"]
  DUPTABLE R22 K194 [{"warningLabel", "description", "padding"}]
  DUPTABLE R23 K196 [{"color", "height"}]
  GETTABLEKS R24 R6 K53 ["WarningText"]
  SETTABLEKS R24 R23 K195 ["color"]
  LOADN R24 30
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K193 ["warningLabel"]
  DUPTABLE R23 K134 [{"height"}]
  LOADN R24 25
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K164 ["description"]
  LOADN R23 5
  SETTABLEKS R23 R22 K165 ["padding"]
  SETTABLEKS R22 R21 K197 ["radioButtonSet"]
  DUPTABLE R22 K198 [{"background", "title"}]
  GETTABLEKS R23 R6 K113 ["InputFieldBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K48 ["BrightText"]
  SETTABLEKS R23 R22 K163 ["title"]
  SETTABLEKS R22 R21 K199 ["checkBox"]
  DUPTABLE R22 K202 [{"headerPadding", "titlePadding"}]
  LOADN R23 20
  SETTABLEKS R23 R22 K200 ["headerPadding"]
  LOADN R23 12
  SETTABLEKS R23 R22 K201 ["titlePadding"]
  SETTABLEKS R22 R21 K203 ["devProducts"]
  DUPTABLE R22 K205 [{"headerPadding", "titlePadding", "refreshButton"}]
  LOADN R23 20
  SETTABLEKS R23 R22 K200 ["headerPadding"]
  LOADN R23 12
  SETTABLEKS R23 R22 K201 ["titlePadding"]
  DUPTABLE R23 K206 [{"icon", "offset", "size"}]
  GETTABLEKS R24 R6 K207 ["RefreshImage"]
  SETTABLEKS R24 R23 K72 ["icon"]
  DUPTABLE R24 K209 [{"x"}]
  LOADN R25 246
  SETTABLEKS R25 R24 K208 ["x"]
  SETTABLEKS R24 R23 K116 ["offset"]
  LOADN R24 18
  SETTABLEKS R24 R23 K82 ["size"]
  SETTABLEKS R23 R22 K204 ["refreshButton"]
  SETTABLEKS R22 R21 K210 ["badges"]
  DUPTABLE R22 K212 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
  GETTABLEKS R23 R6 K56 ["Button"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K115 ["ButtonHover"]
  SETTABLEKS R23 R22 K141 ["hover"]
  GETTABLEKS R23 R6 K48 ["BrightText"]
  SETTABLEKS R23 R22 K143 ["text"]
  GETTABLEKS R23 R6 K158 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R23 R22 K91 ["disabled"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K211 ["handle"]
  GETTABLEKS R23 R6 K102 ["Border"]
  SETTABLEKS R23 R22 K94 ["border"]
  GETTABLEKS R23 R6 K125 ["SubBackground2"]
  SETTABLEKS R23 R22 K150 ["gradient"]
  SETTABLEKS R22 R21 K100 ["dropDown"]
  DUPTABLE R22 K213 [{"background", "hover", "highlight", "text"}]
  GETTABLEKS R23 R6 K136 ["MenuBarBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K145 ["MenuEntryHover"]
  SETTABLEKS R23 R22 K141 ["hover"]
  GETTABLEKS R23 R6 K146 ["MenuEntryHighlight"]
  SETTABLEKS R23 R22 K142 ["highlight"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K143 ["text"]
  SETTABLEKS R22 R21 K214 ["dropDownEntry"]
  DUPTABLE R22 K215 [{"background", "text", "size", "spacing"}]
  GETTABLEKS R23 R6 K120 ["MainBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K143 ["text"]
  DUPTABLE R23 K131 [{"width", "height"}]
  LOADN R24 224
  SETTABLEKS R24 R23 K85 ["width"]
  LOADN R24 52
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K82 ["size"]
  LOADN R23 20
  SETTABLEKS R23 R22 K76 ["spacing"]
  SETTABLEKS R22 R21 K216 ["dialog"]
  DUPTABLE R22 K220 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R23 R6 K221 ["TableItem"]
  SETTABLEKS R23 R22 K154 ["background"]
  LOADK R23 K222 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R23 R22 K217 ["maskImage"]
  LOADK R23 K223 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R23 R22 K218 ["loadingImage"]
  LOADK R23 K224 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R23 R22 K219 ["loadFailureImage"]
  SETTABLEKS R22 R21 K225 ["subjectThumbnail"]
  DUPTABLE R22 K226 [{"loadingImage", "loadFailureImage"}]
  LOADK R23 K227 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R23 R22 K218 ["loadingImage"]
  LOADK R23 K224 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R23 R22 K219 ["loadFailureImage"]
  SETTABLEKS R22 R21 K228 ["groupThumbnail"]
  DUPTABLE R22 K226 [{"loadingImage", "loadFailureImage"}]
  LOADK R23 K229 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
  SETTABLEKS R23 R22 K218 ["loadingImage"]
  LOADK R23 K224 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R23 R22 K219 ["loadFailureImage"]
  SETTABLEKS R22 R21 K230 ["badgeIconThumbnail"]
  DUPTABLE R22 K233 [{"image", "sliceCenter", "square"}]
  LOADK R23 K234 ["rbxasset://textures/GameSettings/DottedBorder.png"]
  SETTABLEKS R23 R22 K81 ["image"]
  GETIMPORT R23 K237 [Rect.new]
  LOADN R24 2
  LOADN R25 2
  LOADN R26 9
  LOADN R27 148
  CALL R23 4 1
  SETTABLEKS R23 R22 K231 ["sliceCenter"]
  DUPTABLE R23 K238 [{"image", "sliceCenter"}]
  LOADK R24 K239 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
  SETTABLEKS R24 R23 K81 ["image"]
  GETIMPORT R24 K237 [Rect.new]
  LOADN R25 2
  LOADN R26 2
  LOADN R27 148
  LOADN R28 148
  CALL R24 4 1
  SETTABLEKS R24 R23 K231 ["sliceCenter"]
  SETTABLEKS R23 R22 K232 ["square"]
  SETTABLEKS R22 R21 K240 ["dottedBorder"]
  DUPTABLE R22 K243 [{"image", "rectOffset", "rectSize"}]
  LOADK R23 K244 ["rbxasset://textures/GameSettings/CenterPlus.png"]
  SETTABLEKS R23 R22 K81 ["image"]
  GETIMPORT R23 K246 [Vector2.new]
  LOADN R24 121
  LOADN R25 63
  CALL R23 2 1
  SETTABLEKS R23 R22 K241 ["rectOffset"]
  GETIMPORT R23 K246 [Vector2.new]
  LOADN R24 24
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K242 ["rectSize"]
  SETTABLEKS R22 R21 K247 ["plus"]
  DUPTABLE R22 K249 [{"background", "count"}]
  GETTABLEKS R23 R6 K125 ["SubBackground2"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K55 ["DimmedText"]
  SETTABLEKS R23 R22 K248 ["count"]
  SETTABLEKS R22 R21 K250 ["thumbnail"]
  DUPTABLE R22 K251 [{"background", "border", "plus"}]
  GETTABLEKS R23 R6 K252 ["SubBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K125 ["SubBackground2"]
  SETTABLEKS R23 R22 K94 ["border"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K247 ["plus"]
  SETTABLEKS R22 R21 K253 ["newThumbnail"]
  DUPTABLE R22 K254 [{"background", "border"}]
  GETTABLEKS R23 R6 K252 ["SubBackground"]
  SETTABLEKS R23 R22 K154 ["background"]
  GETTABLEKS R23 R6 K255 ["CurrentMarkerSelected"]
  SETTABLEKS R23 R22 K94 ["border"]
  SETTABLEKS R22 R21 K256 ["thumbnailDrag"]
  DUPTABLE R22 K259 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R23 R6 K56 ["Button"]
  SETTABLEKS R23 R22 K257 ["ButtonColor"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K188 ["TextColor"]
  GETTABLEKS R23 R6 K102 ["Border"]
  SETTABLEKS R23 R22 K258 ["BorderColor"]
  SETTABLEKS R22 R21 K260 ["cancelButton"]
  DUPTABLE R22 K259 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R23 R6 K103 ["DialogMainButton"]
  SETTABLEKS R23 R22 K257 ["ButtonColor"]
  GETIMPORT R23 K262 [Color3.new]
  LOADN R24 1
  LOADN R25 1
  LOADN R26 1
  CALL R23 3 1
  SETTABLEKS R23 R22 K188 ["TextColor"]
  GETTABLEKS R23 R6 K125 ["SubBackground2"]
  SETTABLEKS R23 R22 K258 ["BorderColor"]
  SETTABLEKS R22 R21 K263 ["defaultButton"]
  DUPTABLE R22 K266 [{"collapseStateArrow", "deleteButton"}]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K264 ["collapseStateArrow"]
  GETTABLEKS R23 R6 K252 ["SubBackground"]
  SETTABLEKS R23 R22 K265 ["deleteButton"]
  SETTABLEKS R22 R21 K267 ["collaboratorItem"]
  DUPTABLE R22 K270 [{"height", "header", "item", "icon", "menu", "textPadding"}]
  LOADN R23 94
  SETTABLEKS R23 R22 K75 ["height"]
  DUPTABLE R23 K134 [{"height"}]
  LOADN R24 32
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K135 ["header"]
  DUPTABLE R23 K271 [{"background", "height", "padding"}]
  GETTABLEKS R24 R6 K221 ["TableItem"]
  SETTABLEKS R24 R23 K154 ["background"]
  LOADN R24 32
  SETTABLEKS R24 R23 K75 ["height"]
  LOADN R24 5
  SETTABLEKS R24 R23 K165 ["padding"]
  SETTABLEKS R23 R22 K110 ["item"]
  DUPTABLE R23 K134 [{"height"}]
  LOADN R24 40
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K72 ["icon"]
  DUPTABLE R23 K275 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
  LOADN R24 30
  SETTABLEKS R24 R23 K272 ["itemPadding"]
  LOADN R24 32
  SETTABLEKS R24 R23 K273 ["buttonSize"]
  LOADN R24 10
  SETTABLEKS R24 R23 K274 ["buttonPaddingY"]
  SETTABLEKS R23 R22 K268 ["menu"]
  LOADN R23 6
  SETTABLEKS R23 R22 K269 ["textPadding"]
  SETTABLEKS R22 R21 K276 ["table"]
  DUPTABLE R22 K134 [{"height"}]
  LOADN R23 24
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K277 ["toggleButton"]
  DUPTABLE R22 K278 [{"image", "imageColor"}]
  LOADK R23 K23 ["GetFastFlag"]
  SETTABLEKS R23 R22 K81 ["image"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K80 ["imageColor"]
  SETTABLEKS R22 R21 K280 ["editButton"]
  DUPTABLE R22 K278 [{"image", "imageColor"}]
  LOADK R23 K25 ["SharedFlags"]
  SETTABLEKS R23 R22 K81 ["image"]
  GETTABLEKS R23 R6 K50 ["MainText"]
  SETTABLEKS R23 R22 K80 ["imageColor"]
  SETTABLEKS R22 R21 K282 ["copyButton"]
  DUPTABLE R22 K283 [{"padding"}]
  LOADN R23 10
  SETTABLEKS R23 R22 K165 ["padding"]
  SETTABLEKS R22 R21 K284 ["uiListLayout"]
  DUPTABLE R22 K287 [{"PaddingX", "PaddingY"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K285 ["PaddingX"]
  LOADN R23 10
  SETTABLEKS R23 R22 K286 ["PaddingY"]
  SETTABLEKS R22 R21 K288 ["createButton"]
  DUPTABLE R22 K287 [{"PaddingX", "PaddingY"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K285 ["PaddingX"]
  LOADN R23 10
  SETTABLEKS R23 R22 K286 ["PaddingY"]
  SETTABLEKS R22 R21 K289 ["viewButton"]
  DUPTABLE R22 K292 [{"publishText", "publishButton"}]
  DUPTABLE R23 K293 [{"offset", "width"}]
  LOADN R24 70
  SETTABLEKS R24 R23 K116 ["offset"]
  LOADN R24 250
  SETTABLEKS R24 R23 K85 ["width"]
  SETTABLEKS R23 R22 K290 ["publishText"]
  DUPTABLE R23 K296 [{"offset", "paddingX", "paddingY"}]
  LOADN R24 125
  SETTABLEKS R24 R23 K116 ["offset"]
  LOADN R24 75
  SETTABLEKS R24 R23 K294 ["paddingX"]
  LOADN R24 15
  SETTABLEKS R24 R23 K295 ["paddingY"]
  SETTABLEKS R23 R22 K291 ["publishButton"]
  SETTABLEKS R22 R21 K297 ["mainView"]
  DUPTABLE R22 K287 [{"PaddingX", "PaddingY"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K285 ["PaddingX"]
  LOADN R23 10
  SETTABLEKS R23 R22 K286 ["PaddingY"]
  SETTABLEKS R22 R21 K298 ["shutdownButton"]
  DUPTABLE R22 K307 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
  LOADN R23 32
  SETTABLEKS R23 R22 K299 ["settingPadding"]
  LOADN R23 25
  SETTABLEKS R23 R22 K300 ["marginX"]
  JUMPIFNOT R13 [+2]
  LOADN R23 20
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K301 ["marginY"]
  LOADN R23 6
  SETTABLEKS R23 R22 K200 ["headerPadding"]
  DUPTABLE R23 K308 [{"paddingX", "paddingY"}]
  LOADN R24 75
  SETTABLEKS R24 R23 K294 ["paddingX"]
  LOADN R24 15
  SETTABLEKS R24 R23 K295 ["paddingY"]
  SETTABLEKS R23 R22 K302 ["reloadButton"]
  LOADN R23 144
  SETTABLEKS R23 R22 K303 ["failLabelPaddingX"]
  LOADN R23 16
  SETTABLEKS R23 R22 K304 ["failPageListPaddingY"]
  GETIMPORT R23 K311 [UDim2.fromOffset]
  LOADN R24 40
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K305 ["toggleButtonSize"]
  LOADN R23 200
  SETTABLEKS R23 R22 K306 ["toggleButtonTitleWidth"]
  SETTABLEKS R22 R21 K312 ["settingsPage"]
  DUPTABLE R22 K313 [{"image", "size"}]
  LOADK R23 K58 [{"TextSize"}]
  SETTABLEKS R23 R22 K81 ["image"]
  LOADN R23 32
  SETTABLEKS R23 R22 K82 ["size"]
  SETTABLEKS R22 R21 K315 ["backButton"]
  DUPTABLE R22 K316 [{"textBox"}]
  DUPTABLE R23 K318 [{"length"}]
  LOADN R24 100
  SETTABLEKS R24 R23 K317 ["length"]
  SETTABLEKS R23 R22 K159 ["textBox"]
  SETTABLEKS R22 R21 K319 ["placePage"]
  DUPTABLE R22 K320 [{"height", "length", "paddingY", "paddingX"}]
  LOADN R23 22
  SETTABLEKS R23 R22 K75 ["height"]
  LOADN R23 250
  SETTABLEKS R23 R22 K317 ["length"]
  LOADN R23 25
  SETTABLEKS R23 R22 K295 ["paddingY"]
  LOADN R23 5
  SETTABLEKS R23 R22 K294 ["paddingX"]
  SETTABLEKS R22 R21 K321 ["requirementsLink"]
  DUPTABLE R22 K322 [{"paddingX", "paddingY", "size"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K294 ["paddingX"]
  LOADN R23 30
  SETTABLEKS R23 R22 K295 ["paddingY"]
  LOADN R23 14
  SETTABLEKS R23 R22 K82 ["size"]
  SETTABLEKS R22 R21 K323 ["tooltipIcon"]
  DUPTABLE R22 K325 [{"Size"}]
  DUPTABLE R23 K328 [{"X", "Y"}]
  LOADN R24 244
  SETTABLEKS R24 R23 K326 ["X"]
  LOADN R24 94
  SETTABLEKS R24 R23 K327 ["Y"]
  SETTABLEKS R23 R22 K324 ["Size"]
  SETTABLEKS R22 R21 K329 ["emailDialog"]
  DUPTABLE R22 K330 [{"padding", "size", "transparency"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K165 ["padding"]
  LOADN R23 20
  SETTABLEKS R23 R22 K82 ["size"]
  LOADK R23 K93 [0.5]
  SETTABLEKS R23 R22 K77 ["transparency"]
  SETTABLEKS R22 R21 K331 ["optInWarning"]
  DUPTABLE R22 K332 [{"padding", "length", "height"}]
  LOADN R23 30
  SETTABLEKS R23 R22 K165 ["padding"]
  LOADN R23 250
  SETTABLEKS R23 R22 K317 ["length"]
  LOADN R23 150
  SETTABLEKS R23 R22 K75 ["height"]
  SETTABLEKS R22 R21 K333 ["extraOptInInfo"]
  DUPTABLE R22 K335 [{"headerOffset", "description", "icon"}]
  LOADN R23 196
  SETTABLEKS R23 R22 K334 ["headerOffset"]
  DUPTABLE R23 K318 [{"length"}]
  LOADN R24 131
  SETTABLEKS R24 R23 K317 ["length"]
  SETTABLEKS R23 R22 K164 ["description"]
  DUPTABLE R23 K336 [{"size"}]
  LOADN R24 16
  SETTABLEKS R24 R23 K82 ["size"]
  SETTABLEKS R23 R22 K72 ["icon"]
  SETTABLEKS R22 R21 K337 ["warningDialog"]
  DUPTABLE R22 K338 [{"button", "padding", "width"}]
  DUPTABLE R23 K134 [{"height"}]
  LOADN R24 50
  SETTABLEKS R24 R23 K75 ["height"]
  SETTABLEKS R23 R22 K132 ["button"]
  LOADN R23 10
  SETTABLEKS R23 R22 K165 ["padding"]
  LOADN R23 195
  SETTABLEKS R23 R22 K85 ["width"]
  SETTABLEKS R22 R21 K339 ["selectInput"]
  DUPTABLE R22 K342 [{"buttonPane", "spacing", "titlePane"}]
  DUPTABLE R23 K343 [{"padding", "spacing"}]
  LOADN R24 165
  SETTABLEKS R24 R23 K165 ["padding"]
  LOADN R24 20
  SETTABLEKS R24 R23 K76 ["spacing"]
  SETTABLEKS R23 R22 K340 ["buttonPane"]
  LOADN R23 45
  SETTABLEKS R23 R22 K76 ["spacing"]
  DUPTABLE R23 K344 [{"spacing"}]
  LOADN R24 15
  SETTABLEKS R24 R23 K76 ["spacing"]
  SETTABLEKS R23 R22 K341 ["titlePane"]
  SETTABLEKS R22 R21 K345 ["playabilityWidget"]
  JUMPIFNOT R12 [+17]
  DUPTABLE R22 K348 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K346 ["BackgroundTransparency"]
  LOADN R23 0
  SETTABLEKS R23 R22 K347 ["BorderSizePixel"]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 130
  CALL R23 4 1
  SETTABLEKS R23 R22 K324 ["Size"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K350 ["guidelinesFrame"]
  JUMPIFNOT R12 [+43]
  DUPTABLE R22 K353 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K346 ["BackgroundTransparency"]
  LOADN R23 0
  SETTABLEKS R23 R22 K347 ["BorderSizePixel"]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 0
  LOADN R25 180
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K324 ["Size"]
  GETIMPORT R23 K355 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K351 ["TextXAlignment"]
  GETIMPORT R23 K357 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K352 ["TextYAlignment"]
  GETTABLEKS R24 R15 K27 ["Title"]
  GETTABLEKS R23 R24 K40 ["Font"]
  SETTABLEKS R23 R22 K40 ["Font"]
  GETTABLEKS R24 R15 K27 ["Title"]
  GETTABLEKS R23 R24 K42 ["TextColor3"]
  SETTABLEKS R23 R22 K42 ["TextColor3"]
  GETTABLEKS R24 R15 K27 ["Title"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K358 ["guidelinesTitle"]
  JUMPIFNOT R12 [+33]
  DUPTABLE R22 K362 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K346 ["BackgroundTransparency"]
  LOADN R23 1
  SETTABLEKS R23 R22 K359 ["LayoutOrder"]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 1
  LOADN R25 76
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K324 ["Size"]
  GETIMPORT R23 K246 [Vector2.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K360 ["AnchorPoint"]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 1
  LOADN R25 10
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K361 ["Position"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K363 ["guidelinesDescriptionFrame"]
  JUMPIFNOT R12 [+31]
  DUPTABLE R22 K364 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 19
  CALL R23 4 1
  SETTABLEKS R23 R22 K324 ["Size"]
  GETTABLEKS R24 R15 K30 ["Normal"]
  GETTABLEKS R23 R24 K40 ["Font"]
  SETTABLEKS R23 R22 K40 ["Font"]
  GETIMPORT R23 K357 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K352 ["TextYAlignment"]
  GETTABLEKS R24 R15 K30 ["Normal"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  GETIMPORT R23 K355 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K351 ["TextXAlignment"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K365 ["chosenGuidelineText"]
  DUPTABLE R22 K366 [{"Style", "PaddingX", "PaddingY"}]
  LOADK R23 K111 ["selected"]
  SETTABLEKS R23 R22 K11 ["Style"]
  LOADN R23 40
  SETTABLEKS R23 R22 K285 ["PaddingX"]
  LOADN R23 15
  SETTABLEKS R23 R22 K286 ["PaddingY"]
  SETTABLEKS R22 R21 K368 ["openQuestionnaireButton"]
  JUMPIFNOT R12 [+17]
  DUPTABLE R22 K369 [{"Position", "TextSize"}]
  GETIMPORT R23 K349 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADK R26 K114 [{"backgroundColor"}]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K361 ["Position"]
  GETTABLEKS R24 R15 K35 ["HeaderLink"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K371 ["titleLink"]
  JUMPIFNOT R12 [+21]
  DUPTABLE R22 K376 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
  GETIMPORT R23 K377 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K372 ["SortOrder"]
  GETIMPORT R23 K379 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K373 ["FillDirection"]
  GETIMPORT R23 K381 [UDim.new]
  LOADN R24 0
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K374 ["Padding"]
  GETIMPORT R23 K382 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K375 ["HorizontalAlignment"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K383 ["guidelinesDescriptionListLayout"]
  JUMPIFNOT R12 [+40]
  DUPTABLE R22 K387 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
  GETTABLEKS R24 R15 K36 ["Small"]
  GETTABLEKS R23 R24 K42 ["TextColor3"]
  SETTABLEKS R23 R22 K42 ["TextColor3"]
  LOADN R23 1
  SETTABLEKS R23 R22 K346 ["BackgroundTransparency"]
  GETTABLEKS R24 R15 K36 ["Small"]
  GETTABLEKS R23 R24 K40 ["Font"]
  SETTABLEKS R23 R22 K40 ["Font"]
  GETTABLEKS R24 R15 K36 ["Small"]
  GETTABLEKS R23 R24 K41 ["TextSize"]
  SETTABLEKS R23 R22 K41 ["TextSize"]
  GETIMPORT R23 K355 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K351 ["TextXAlignment"]
  GETIMPORT R23 K357 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K352 ["TextYAlignment"]
  LOADB R23 1
  SETTABLEKS R23 R22 K384 ["TextWrapped"]
  LOADK R23 K132 ["button"]
  SETTABLEKS R23 R22 K385 ["TextTransparency"]
  LOADB R23 1
  SETTABLEKS R23 R22 K386 ["ClipsDescendants"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K389 ["guidelinesDescriptionText"]
  DUPTABLE R22 K391 [{"PaddingBottom"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K390 ["PaddingBottom"]
  SETTABLEKS R22 R21 K392 ["atcFrame"]
  GETTABLEKS R22 R8 K56 ["Button"]
  SETTABLE R17 R21 R22
  GETTABLEKS R22 R8 K62 ["Image"]
  SETTABLE R18 R21 R22
  NEWTABLE R22 4 0
  GETTABLEKS R23 R6 K174 ["RadioButtonImage"]
  LOADK R24 K137 ["menuBar"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K175 ["RadioButtonDisabledImage"]
  LOADK R24 K138 ["rowHeight"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K207 ["RefreshImage"]
  LOADK R24 K139 ["robuxFeeBase"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K187 ["InformationImage"]
  LOADK R24 K140 ["searchBar"]
  SETTABLE R24 R22 R23
  NEWTABLE R23 4 0
  GETTABLEKS R24 R6 K174 ["RadioButtonImage"]
  LOADK R25 K141 ["hover"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R6 K175 ["RadioButtonDisabledImage"]
  LOADK R25 K142 ["highlight"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R6 K207 ["RefreshImage"]
  LOADK R25 K143 ["text"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R6 K187 ["InformationImage"]
  LOADK R25 K144 [{"hover", "highlight", "text"}]
  SETTABLE R25 R23 R24
  DUPCLOSURE R24 K401 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R21
  RETURN R24 1
