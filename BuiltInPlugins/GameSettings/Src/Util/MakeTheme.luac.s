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
  GETIMPORT R13 K18 [game]
  LOADK R15 K24 ["GameSettingsExpandToggleButtonTitleWidth"]
  NAMECALL R13 R13 K20 ["GetFastFlag"]
  CALL R13 2 1
  DUPTABLE R14 K37 [{"Title", "Header", "Subtitle", "Normal", "SemiBold", "Smaller", "Warning", "Error", "HeaderLink", "Small", "Subtext", "SmallError"}]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K45 ["TitlebarText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K25 ["Title"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 22
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K46 ["BrightText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K26 ["Header"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K47 ["SubText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K27 ["Subtitle"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["MainText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K28 ["Normal"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K50 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 20
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["MainText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K29 ["SemiBold"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["MainText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K30 ["Smaller"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K51 ["WarningText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K31 ["Warning"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 18
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K52 ["ErrorText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K32 ["Error"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 16
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["MainText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K33 ["HeaderLink"]
  JUMPIFNOT R11 [+13]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K48 ["MainText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K34 ["Small"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K53 ["DimmedText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K35 ["Subtext"]
  DUPTABLE R15 K41 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R16 K44 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K38 ["Font"]
  LOADN R16 14
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETTABLEKS R16 R5 K52 ["ErrorText"]
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  SETTABLEKS R15 R14 K36 ["SmallError"]
  MOVE R15 R6
  LOADK R16 K54 ["Button"]
  CALL R15 1 1
  MOVE R16 R10
  MOVE R17 R15
  NEWTABLE R18 2 0
  MOVE R19 R10
  GETTABLEKS R20 R15 K55 ["&RoundPrimary"]
  DUPTABLE R21 K56 [{"TextSize"}]
  GETTABLEKS R23 R14 K28 ["Normal"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["&GameSettingsPrimaryButton"]
  MOVE R19 R10
  GETTABLEKS R20 R15 K58 ["&Round"]
  DUPTABLE R21 K56 [{"TextSize"}]
  GETTABLEKS R23 R14 K28 ["Normal"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K59 ["&GameSettingsButton"]
  CALL R16 2 1
  MOVE R17 R10
  MOVE R18 R6
  LOADK R19 K60 ["Image"]
  CALL R18 1 1
  NEWTABLE R19 2 0
  NEWTABLE R20 4 0
  LOADK R21 K61 ["rbxasset://textures/GameSettings/MoreDetails.png"]
  SETTABLEKS R21 R20 K60 ["Image"]
  GETTABLEKS R21 R5 K47 ["SubText"]
  SETTABLEKS R21 R20 K62 ["Color"]
  GETTABLEKS R21 R4 K63 ["Hover"]
  DUPTABLE R22 K64 [{"Color"}]
  GETTABLEKS R23 R5 K65 ["MainTextHover"]
  SETTABLEKS R23 R22 K62 ["Color"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K66 ["&TooltipStyle"]
  DUPTABLE R20 K67 [{"Image"}]
  LOADK R21 K68 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R21 R20 K60 ["Image"]
  SETTABLEKS R20 R19 K69 ["&WarningStyle"]
  CALL R17 2 1
  DUPTABLE R18 K77 [{"icon", "priceField", "subText", "height", "spacing", "transparency", "pricePadding"}]
  DUPTABLE R19 K81 [{"imageColor", "image", "size"}]
  GETTABLEKS R20 R5 K48 ["MainText"]
  SETTABLEKS R20 R19 K78 ["imageColor"]
  LOADK R20 K82 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R20 R19 K79 ["image"]
  LOADN R20 16
  SETTABLEKS R20 R19 K80 ["size"]
  SETTABLEKS R19 R18 K70 ["icon"]
  DUPTABLE R19 K84 [{"width"}]
  LOADN R20 150
  SETTABLEKS R20 R19 K83 ["width"]
  SETTABLEKS R19 R18 K71 ["priceField"]
  JUMPIFNOT R12 [+2]
  LOADNIL R19
  JUMP [+4]
  DUPTABLE R19 K84 [{"width"}]
  LOADN R20 244
  SETTABLEKS R20 R19 K83 ["width"]
  SETTABLEKS R19 R18 K72 ["subText"]
  JUMPIFNOT R12 [+2]
  LOADNIL R19
  JUMP [+7]
  DUPTABLE R19 K87 [{"withSubText", "withoutSubText"}]
  LOADN R20 137
  SETTABLEKS R20 R19 K85 ["withSubText"]
  LOADN R20 121
  SETTABLEKS R20 R19 K86 ["withoutSubText"]
  SETTABLEKS R19 R18 K73 ["height"]
  JUMPIFNOT R12 [+2]
  LOADN R19 5
  JUMP [+1]
  LOADN R19 10
  SETTABLEKS R19 R18 K74 ["spacing"]
  DUPTABLE R19 K90 [{"enabled", "disabled"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K88 ["enabled"]
  LOADK R20 K91 [0.5]
  SETTABLEKS R20 R19 K89 ["disabled"]
  SETTABLEKS R19 R18 K75 ["transparency"]
  JUMPIFNOT R12 [+2]
  LOADN R19 10
  JUMP [+1]
  LOADN R19 25
  SETTABLEKS R19 R18 K76 ["pricePadding"]
  DUPTABLE R19 K99 [{"border", "borderHover", "borderSelected", "placeholderText", "searchIcon", "clearButton", "dropDown"}]
  GETTABLEKS R20 R5 K100 ["Border"]
  SETTABLEKS R20 R19 K92 ["border"]
  GETTABLEKS R20 R5 K101 ["DialogMainButton"]
  SETTABLEKS R20 R19 K93 ["borderHover"]
  GETTABLEKS R20 R5 K101 ["DialogMainButton"]
  SETTABLEKS R20 R19 K94 ["borderSelected"]
  GETTABLEKS R20 R5 K53 ["DimmedText"]
  SETTABLEKS R20 R19 K95 ["placeholderText"]
  GETTABLEKS R20 R5 K47 ["SubText"]
  SETTABLEKS R20 R19 K96 ["searchIcon"]
  DUPTABLE R20 K103 [{"imageSelected", "image"}]
  GETTABLEKS R21 R5 K47 ["SubText"]
  SETTABLEKS R21 R20 K102 ["imageSelected"]
  GETTABLEKS R21 R5 K47 ["SubText"]
  SETTABLEKS R21 R20 K79 ["image"]
  SETTABLEKS R20 R19 K97 ["clearButton"]
  DUPTABLE R20 K110 [{"backgroundColor", "itemText", "headerText", "hovered", "item", "selected"}]
  GETTABLEKS R21 R5 K111 ["InputFieldBackground"]
  SETTABLEKS R21 R20 K104 ["backgroundColor"]
  GETTABLEKS R21 R5 K48 ["MainText"]
  SETTABLEKS R21 R20 K105 ["itemText"]
  GETTABLEKS R21 R5 K47 ["SubText"]
  SETTABLEKS R21 R20 K106 ["headerText"]
  DUPTABLE R21 K112 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K113 ["ButtonHover"]
  SETTABLEKS R22 R21 K104 ["backgroundColor"]
  SETTABLEKS R21 R20 K107 ["hovered"]
  DUPTABLE R21 K115 [{"offset"}]
  LOADN R22 2
  SETTABLEKS R22 R21 K114 ["offset"]
  SETTABLEKS R21 R20 K108 ["item"]
  DUPTABLE R21 K112 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K116 ["ButtonSelected"]
  SETTABLEKS R22 R21 K104 ["backgroundColor"]
  SETTABLEKS R21 R20 K109 ["selected"]
  SETTABLEKS R20 R19 K98 ["dropDown"]
  NEWTABLE R20 128 0
  SETTABLEKS R14 R20 K117 ["fontStyle"]
  GETTABLEKS R21 R5 K118 ["MainBackground"]
  SETTABLEKS R21 R20 K104 ["backgroundColor"]
  GETTABLEKS R21 R5 K119 ["LinkText"]
  SETTABLEKS R21 R20 K120 ["hyperlink"]
  GETTABLEKS R21 R5 K51 ["WarningText"]
  SETTABLEKS R21 R20 K121 ["warningColor"]
  LOADK R21 K68 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R21 R20 K122 ["warningIcon"]
  GETTABLEKS R21 R5 K123 ["SubBackground2"]
  SETTABLEKS R21 R20 K124 ["separator"]
  GETTABLEKS R21 R5 K125 ["ScrollBar"]
  SETTABLEKS R21 R20 K126 ["scrollBar"]
  GETTABLEKS R21 R5 K127 ["ScrollBarBackground"]
  SETTABLEKS R21 R20 K128 ["scrollBarBackground"]
  DUPTABLE R21 K129 [{"width", "height"}]
  LOADN R22 125
  SETTABLEKS R22 R21 K83 ["width"]
  LOADN R22 35
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K130 ["button"]
  DUPTABLE R21 K115 [{"offset"}]
  LOADN R22 227
  SETTABLEKS R22 R21 K114 ["offset"]
  SETTABLEKS R21 R20 K131 ["buttonBar"]
  DUPTABLE R21 K132 [{"height"}]
  LOADN R22 45
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K133 ["header"]
  DUPTABLE R21 K112 [{"backgroundColor"}]
  GETTABLEKS R22 R5 K134 ["MenuBarBackground"]
  SETTABLEKS R22 R21 K104 ["backgroundColor"]
  SETTABLEKS R21 R20 K135 ["menuBar"]
  LOADN R21 35
  SETTABLEKS R21 R20 K136 ["rowHeight"]
  SETTABLEKS R18 R20 K137 ["robuxFeeBase"]
  SETTABLEKS R19 R20 K138 ["searchBar"]
  DUPTABLE R21 K142 [{"hover", "highlight", "text"}]
  GETTABLEKS R22 R5 K143 ["MenuEntryHover"]
  SETTABLEKS R22 R21 K139 ["hover"]
  GETTABLEKS R22 R5 K144 ["MenuEntryHighlight"]
  SETTABLEKS R22 R21 K140 ["highlight"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R22 R5 K145 ["TextContrast"]
  JUMP [+2]
  GETTABLEKS R22 R5 K46 ["BrightText"]
  SETTABLEKS R22 R21 K141 ["text"]
  SETTABLEKS R21 R20 K146 ["menuEntry"]
  DUPTABLE R21 K148 [{"gradient", "height"}]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K147 ["gradient"]
  LOADN R22 65
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K149 ["footer"]
  JUMPIFNOT R12 [+2]
  LOADN R21 20
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K150 ["titleSpacing"]
  DUPTABLE R21 K154 [{"background", "disabled", "borderDefault", "borderHover", "tooltip", "text", "height"}]
  GETTABLEKS R22 R5 K111 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K155 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R22 R21 K89 ["disabled"]
  GETTABLEKS R22 R5 K100 ["Border"]
  SETTABLEKS R22 R21 K152 ["borderDefault"]
  GETTABLEKS R22 R5 K101 ["DialogMainButton"]
  SETTABLEKS R22 R21 K93 ["borderHover"]
  GETTABLEKS R22 R5 K53 ["DimmedText"]
  SETTABLEKS R22 R21 K153 ["tooltip"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K141 ["text"]
  LOADN R22 42
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K156 ["textBox"]
  DUPTABLE R21 K158 [{"maxWidth"}]
  LOADN R22 124
  SETTABLEKS R22 R21 K157 ["maxWidth"]
  SETTABLEKS R21 R20 K159 ["textWithInlineLink"]
  DUPTABLE R21 K165 [{"background", "title", "description", "size", "padding", "descriptionWidth", "sapcing", "image"}]
  GETTABLEKS R22 R5 K111 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K46 ["BrightText"]
  SETTABLEKS R22 R21 K160 ["title"]
  GETTABLEKS R22 R5 K53 ["DimmedText"]
  SETTABLEKS R22 R21 K161 ["description"]
  LOADN R22 20
  SETTABLEKS R22 R21 K80 ["size"]
  JUMPIFNOT R12 [+2]
  LOADN R22 10
  JUMP [+1]
  LOADN R22 5
  SETTABLEKS R22 R21 K162 ["padding"]
  LOADN R22 244
  SETTABLEKS R22 R21 K163 ["descriptionWidth"]
  LOADN R22 10
  SETTABLEKS R22 R21 K164 ["sapcing"]
  DUPTABLE R22 K167 [{"background", "selected", "selectedDisabled"}]
  LOADK R23 K168 ["rbxasset://textures/GameSettings/RadioButton.png"]
  SETTABLEKS R23 R22 K151 ["background"]
  GETTABLEKS R23 R5 K169 ["RadioButtonImage"]
  SETTABLEKS R23 R22 K109 ["selected"]
  GETTABLEKS R23 R5 K170 ["RadioButtonDisabledImage"]
  SETTABLEKS R23 R22 K166 ["selectedDisabled"]
  SETTABLEKS R22 R21 K79 ["image"]
  SETTABLEKS R21 R20 K171 ["radioButton"]
  DUPTABLE R21 K179 [{"image", "imageSize", "imageTextGap", "BodyBodyDefault", "paneBackgroundColor", "paneBorderColor", "panePadding", "paneBorderSize"}]
  GETTABLEKS R22 R5 K180 ["InformationImage"]
  SETTABLEKS R22 R21 K79 ["image"]
  LOADN R22 20
  SETTABLEKS R22 R21 K172 ["imageSize"]
  LOADN R22 2
  SETTABLEKS R22 R21 K173 ["imageTextGap"]
  DUPTABLE R22 K182 [{"Font", "TextSize", "TextColor"}]
  GETIMPORT R23 K44 [Enum.Font.SourceSans]
  SETTABLEKS R23 R22 K38 ["Font"]
  LOADN R23 18
  SETTABLEKS R23 R22 K39 ["TextSize"]
  GETTABLEKS R23 R5 K48 ["MainText"]
  SETTABLEKS R23 R22 K181 ["TextColor"]
  SETTABLEKS R22 R21 K174 ["BodyBodyDefault"]
  GETTABLEKS R22 R5 K183 ["ForegroundContrast"]
  SETTABLEKS R22 R21 K175 ["paneBackgroundColor"]
  GETTABLEKS R22 R5 K184 ["OtherDivider"]
  SETTABLEKS R22 R21 K176 ["paneBorderColor"]
  LOADN R22 8
  SETTABLEKS R22 R21 K177 ["panePadding"]
  LOADN R22 1
  SETTABLEKS R22 R21 K178 ["paneBorderSize"]
  SETTABLEKS R21 R20 K185 ["genreInfo"]
  DUPTABLE R21 K187 [{"warningLabel", "description", "padding"}]
  DUPTABLE R22 K189 [{"color", "height"}]
  GETTABLEKS R23 R5 K51 ["WarningText"]
  SETTABLEKS R23 R22 K188 ["color"]
  LOADN R23 30
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K186 ["warningLabel"]
  DUPTABLE R22 K132 [{"height"}]
  LOADN R23 25
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K161 ["description"]
  LOADN R22 5
  SETTABLEKS R22 R21 K162 ["padding"]
  SETTABLEKS R21 R20 K190 ["radioButtonSet"]
  DUPTABLE R21 K191 [{"background", "title"}]
  GETTABLEKS R22 R5 K111 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K46 ["BrightText"]
  SETTABLEKS R22 R21 K160 ["title"]
  SETTABLEKS R21 R20 K192 ["checkBox"]
  DUPTABLE R21 K195 [{"headerPadding", "titlePadding"}]
  LOADN R22 20
  SETTABLEKS R22 R21 K193 ["headerPadding"]
  LOADN R22 12
  SETTABLEKS R22 R21 K194 ["titlePadding"]
  SETTABLEKS R21 R20 K196 ["devProducts"]
  DUPTABLE R21 K198 [{"headerPadding", "titlePadding", "refreshButton"}]
  LOADN R22 20
  SETTABLEKS R22 R21 K193 ["headerPadding"]
  LOADN R22 12
  SETTABLEKS R22 R21 K194 ["titlePadding"]
  DUPTABLE R22 K199 [{"icon", "offset", "size"}]
  GETTABLEKS R23 R5 K200 ["RefreshImage"]
  SETTABLEKS R23 R22 K70 ["icon"]
  DUPTABLE R23 K202 [{"x"}]
  LOADN R24 246
  SETTABLEKS R24 R23 K201 ["x"]
  SETTABLEKS R23 R22 K114 ["offset"]
  LOADN R23 18
  SETTABLEKS R23 R22 K80 ["size"]
  SETTABLEKS R22 R21 K197 ["refreshButton"]
  SETTABLEKS R21 R20 K203 ["badges"]
  DUPTABLE R21 K205 [{"background", "hover", "text", "disabled", "handle", "border", "gradient"}]
  GETTABLEKS R22 R5 K54 ["Button"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K113 ["ButtonHover"]
  SETTABLEKS R22 R21 K139 ["hover"]
  GETTABLEKS R22 R5 K46 ["BrightText"]
  SETTABLEKS R22 R21 K141 ["text"]
  GETTABLEKS R22 R5 K155 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R22 R21 K89 ["disabled"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K204 ["handle"]
  GETTABLEKS R22 R5 K100 ["Border"]
  SETTABLEKS R22 R21 K92 ["border"]
  GETTABLEKS R22 R5 K123 ["SubBackground2"]
  SETTABLEKS R22 R21 K147 ["gradient"]
  SETTABLEKS R21 R20 K98 ["dropDown"]
  DUPTABLE R21 K206 [{"background", "hover", "highlight", "text"}]
  GETTABLEKS R22 R5 K134 ["MenuBarBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K143 ["MenuEntryHover"]
  SETTABLEKS R22 R21 K139 ["hover"]
  GETTABLEKS R22 R5 K144 ["MenuEntryHighlight"]
  SETTABLEKS R22 R21 K140 ["highlight"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K141 ["text"]
  SETTABLEKS R21 R20 K207 ["dropDownEntry"]
  DUPTABLE R21 K208 [{"background", "text", "size", "spacing"}]
  GETTABLEKS R22 R5 K118 ["MainBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K141 ["text"]
  DUPTABLE R22 K129 [{"width", "height"}]
  LOADN R23 224
  SETTABLEKS R23 R22 K83 ["width"]
  LOADN R23 52
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K80 ["size"]
  LOADN R22 20
  SETTABLEKS R22 R21 K74 ["spacing"]
  SETTABLEKS R21 R20 K209 ["dialog"]
  DUPTABLE R21 K213 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R22 R5 K214 ["TableItem"]
  SETTABLEKS R22 R21 K151 ["background"]
  LOADK R22 K215 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R22 R21 K210 ["maskImage"]
  LOADK R22 K216 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R22 R21 K211 ["loadingImage"]
  LOADK R22 K217 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K212 ["loadFailureImage"]
  SETTABLEKS R21 R20 K218 ["subjectThumbnail"]
  DUPTABLE R21 K219 [{"loadingImage", "loadFailureImage"}]
  LOADK R22 K220 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R22 R21 K211 ["loadingImage"]
  LOADK R22 K217 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K212 ["loadFailureImage"]
  SETTABLEKS R21 R20 K221 ["groupThumbnail"]
  DUPTABLE R21 K219 [{"loadingImage", "loadFailureImage"}]
  LOADK R22 K222 ["rbxasset://textures/StudioSharedUI/default_badge.png"]
  SETTABLEKS R22 R21 K211 ["loadingImage"]
  LOADK R22 K217 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R22 R21 K212 ["loadFailureImage"]
  SETTABLEKS R21 R20 K223 ["badgeIconThumbnail"]
  DUPTABLE R21 K226 [{"image", "sliceCenter", "square"}]
  LOADK R22 K227 ["rbxasset://textures/GameSettings/DottedBorder.png"]
  SETTABLEKS R22 R21 K79 ["image"]
  GETIMPORT R22 K230 [Rect.new]
  LOADN R23 2
  LOADN R24 2
  LOADN R25 9
  LOADN R26 148
  CALL R22 4 1
  SETTABLEKS R22 R21 K224 ["sliceCenter"]
  DUPTABLE R22 K231 [{"image", "sliceCenter"}]
  LOADK R23 K232 ["rbxasset://textures/GameSettings/DottedBorder_Square.png"]
  SETTABLEKS R23 R22 K79 ["image"]
  GETIMPORT R23 K230 [Rect.new]
  LOADN R24 2
  LOADN R25 2
  LOADN R26 148
  LOADN R27 148
  CALL R23 4 1
  SETTABLEKS R23 R22 K224 ["sliceCenter"]
  SETTABLEKS R22 R21 K225 ["square"]
  SETTABLEKS R21 R20 K233 ["dottedBorder"]
  DUPTABLE R21 K236 [{"image", "rectOffset", "rectSize"}]
  LOADK R22 K237 ["rbxasset://textures/GameSettings/CenterPlus.png"]
  SETTABLEKS R22 R21 K79 ["image"]
  GETIMPORT R22 K239 [Vector2.new]
  LOADN R23 121
  LOADN R24 63
  CALL R22 2 1
  SETTABLEKS R22 R21 K234 ["rectOffset"]
  GETIMPORT R22 K239 [Vector2.new]
  LOADN R23 24
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K235 ["rectSize"]
  SETTABLEKS R21 R20 K240 ["plus"]
  DUPTABLE R21 K242 [{"background", "count"}]
  GETTABLEKS R22 R5 K123 ["SubBackground2"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K53 ["DimmedText"]
  SETTABLEKS R22 R21 K241 ["count"]
  SETTABLEKS R21 R20 K243 ["thumbnail"]
  DUPTABLE R21 K244 [{"background", "border", "plus"}]
  GETTABLEKS R22 R5 K245 ["SubBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K123 ["SubBackground2"]
  SETTABLEKS R22 R21 K92 ["border"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K240 ["plus"]
  SETTABLEKS R21 R20 K246 ["newThumbnail"]
  DUPTABLE R21 K247 [{"background", "border"}]
  GETTABLEKS R22 R5 K245 ["SubBackground"]
  SETTABLEKS R22 R21 K151 ["background"]
  GETTABLEKS R22 R5 K248 ["CurrentMarkerSelected"]
  SETTABLEKS R22 R21 K92 ["border"]
  SETTABLEKS R21 R20 K249 ["thumbnailDrag"]
  DUPTABLE R21 K252 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R22 R5 K54 ["Button"]
  SETTABLEKS R22 R21 K250 ["ButtonColor"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K181 ["TextColor"]
  GETTABLEKS R22 R5 K100 ["Border"]
  SETTABLEKS R22 R21 K251 ["BorderColor"]
  SETTABLEKS R21 R20 K253 ["cancelButton"]
  DUPTABLE R21 K252 [{"ButtonColor", "TextColor", "BorderColor"}]
  GETTABLEKS R22 R5 K101 ["DialogMainButton"]
  SETTABLEKS R22 R21 K250 ["ButtonColor"]
  GETIMPORT R22 K255 [Color3.new]
  LOADN R23 1
  LOADN R24 1
  LOADN R25 1
  CALL R22 3 1
  SETTABLEKS R22 R21 K181 ["TextColor"]
  GETTABLEKS R22 R5 K123 ["SubBackground2"]
  SETTABLEKS R22 R21 K251 ["BorderColor"]
  SETTABLEKS R21 R20 K256 ["defaultButton"]
  DUPTABLE R21 K259 [{"collapseStateArrow", "deleteButton"}]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K257 ["collapseStateArrow"]
  GETTABLEKS R22 R5 K245 ["SubBackground"]
  SETTABLEKS R22 R21 K258 ["deleteButton"]
  SETTABLEKS R21 R20 K260 ["collaboratorItem"]
  DUPTABLE R21 K263 [{"height", "header", "item", "icon", "menu", "textPadding"}]
  LOADN R22 94
  SETTABLEKS R22 R21 K73 ["height"]
  DUPTABLE R22 K132 [{"height"}]
  LOADN R23 32
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K133 ["header"]
  DUPTABLE R22 K264 [{"background", "height", "padding"}]
  GETTABLEKS R23 R5 K214 ["TableItem"]
  SETTABLEKS R23 R22 K151 ["background"]
  LOADN R23 32
  SETTABLEKS R23 R22 K73 ["height"]
  LOADN R23 5
  SETTABLEKS R23 R22 K162 ["padding"]
  SETTABLEKS R22 R21 K108 ["item"]
  DUPTABLE R22 K132 [{"height"}]
  LOADN R23 40
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K70 ["icon"]
  DUPTABLE R22 K268 [{"itemPadding", "buttonSize", "buttonPaddingY"}]
  LOADN R23 30
  SETTABLEKS R23 R22 K265 ["itemPadding"]
  LOADN R23 32
  SETTABLEKS R23 R22 K266 ["buttonSize"]
  LOADN R23 10
  SETTABLEKS R23 R22 K267 ["buttonPaddingY"]
  SETTABLEKS R22 R21 K261 ["menu"]
  LOADN R22 6
  SETTABLEKS R22 R21 K262 ["textPadding"]
  SETTABLEKS R21 R20 K269 ["table"]
  DUPTABLE R21 K132 [{"height"}]
  LOADN R22 24
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K270 ["toggleButton"]
  DUPTABLE R21 K271 [{"image", "imageColor"}]
  LOADK R22 K16 ["join"]
  SETTABLEKS R22 R21 K79 ["image"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K78 ["imageColor"]
  SETTABLEKS R21 R20 K273 ["editButton"]
  DUPTABLE R21 K271 [{"image", "imageColor"}]
  LOADK R22 K18 [game]
  SETTABLEKS R22 R21 K79 ["image"]
  GETTABLEKS R22 R5 K48 ["MainText"]
  SETTABLEKS R22 R21 K78 ["imageColor"]
  SETTABLEKS R21 R20 K275 ["copyButton"]
  DUPTABLE R21 K276 [{"padding"}]
  LOADN R22 10
  SETTABLEKS R22 R21 K162 ["padding"]
  SETTABLEKS R21 R20 K277 ["uiListLayout"]
  DUPTABLE R21 K280 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K278 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K279 ["PaddingY"]
  SETTABLEKS R21 R20 K281 ["createButton"]
  DUPTABLE R21 K280 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K278 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K279 ["PaddingY"]
  SETTABLEKS R21 R20 K282 ["viewButton"]
  DUPTABLE R21 K285 [{"publishText", "publishButton"}]
  DUPTABLE R22 K286 [{"offset", "width"}]
  LOADN R23 70
  SETTABLEKS R23 R22 K114 ["offset"]
  LOADN R23 250
  SETTABLEKS R23 R22 K83 ["width"]
  SETTABLEKS R22 R21 K283 ["publishText"]
  DUPTABLE R22 K289 [{"offset", "paddingX", "paddingY"}]
  LOADN R23 125
  SETTABLEKS R23 R22 K114 ["offset"]
  LOADN R23 75
  SETTABLEKS R23 R22 K287 ["paddingX"]
  LOADN R23 15
  SETTABLEKS R23 R22 K288 ["paddingY"]
  SETTABLEKS R22 R21 K284 ["publishButton"]
  SETTABLEKS R21 R20 K290 ["mainView"]
  DUPTABLE R21 K280 [{"PaddingX", "PaddingY"}]
  LOADN R22 75
  SETTABLEKS R22 R21 K278 ["PaddingX"]
  LOADN R22 10
  SETTABLEKS R22 R21 K279 ["PaddingY"]
  SETTABLEKS R21 R20 K291 ["shutdownButton"]
  DUPTABLE R21 K300 [{"settingPadding", "marginX", "marginY", "headerPadding", "reloadButton", "failLabelPaddingX", "failPageListPaddingY", "toggleButtonSize", "toggleButtonTitleWidth"}]
  LOADN R22 32
  SETTABLEKS R22 R21 K292 ["settingPadding"]
  LOADN R22 25
  SETTABLEKS R22 R21 K293 ["marginX"]
  JUMPIFNOT R12 [+2]
  LOADN R22 20
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K294 ["marginY"]
  LOADN R22 6
  SETTABLEKS R22 R21 K193 ["headerPadding"]
  DUPTABLE R22 K301 [{"paddingX", "paddingY"}]
  LOADN R23 75
  SETTABLEKS R23 R22 K287 ["paddingX"]
  LOADN R23 15
  SETTABLEKS R23 R22 K288 ["paddingY"]
  SETTABLEKS R22 R21 K295 ["reloadButton"]
  LOADN R22 144
  SETTABLEKS R22 R21 K296 ["failLabelPaddingX"]
  LOADN R22 16
  SETTABLEKS R22 R21 K297 ["failPageListPaddingY"]
  GETIMPORT R22 K304 [UDim2.fromOffset]
  LOADN R23 40
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K298 ["toggleButtonSize"]
  JUMPIFNOT R13 [+2]
  LOADN R22 200
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K299 ["toggleButtonTitleWidth"]
  SETTABLEKS R21 R20 K305 ["settingsPage"]
  DUPTABLE R21 K306 [{"image", "size"}]
  LOADK R22 K51 ["WarningText"]
  SETTABLEKS R22 R21 K79 ["image"]
  LOADN R22 32
  SETTABLEKS R22 R21 K80 ["size"]
  SETTABLEKS R21 R20 K308 ["backButton"]
  DUPTABLE R21 K309 [{"textBox"}]
  DUPTABLE R22 K311 [{"length"}]
  LOADN R23 100
  SETTABLEKS R23 R22 K310 ["length"]
  SETTABLEKS R22 R21 K156 ["textBox"]
  SETTABLEKS R21 R20 K312 ["placePage"]
  DUPTABLE R21 K313 [{"height", "length", "paddingY", "paddingX"}]
  LOADN R22 22
  SETTABLEKS R22 R21 K73 ["height"]
  LOADN R22 250
  SETTABLEKS R22 R21 K310 ["length"]
  LOADN R22 25
  SETTABLEKS R22 R21 K288 ["paddingY"]
  LOADN R22 5
  SETTABLEKS R22 R21 K287 ["paddingX"]
  SETTABLEKS R21 R20 K314 ["requirementsLink"]
  DUPTABLE R21 K315 [{"paddingX", "paddingY", "size"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K287 ["paddingX"]
  LOADN R22 30
  SETTABLEKS R22 R21 K288 ["paddingY"]
  LOADN R22 14
  SETTABLEKS R22 R21 K80 ["size"]
  SETTABLEKS R21 R20 K316 ["tooltipIcon"]
  DUPTABLE R21 K318 [{"Size"}]
  DUPTABLE R22 K321 [{"X", "Y"}]
  LOADN R23 244
  SETTABLEKS R23 R22 K319 ["X"]
  LOADN R23 94
  SETTABLEKS R23 R22 K320 ["Y"]
  SETTABLEKS R22 R21 K317 ["Size"]
  SETTABLEKS R21 R20 K322 ["emailDialog"]
  DUPTABLE R21 K323 [{"padding", "size", "transparency"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K162 ["padding"]
  LOADN R22 20
  SETTABLEKS R22 R21 K80 ["size"]
  LOADK R22 K91 [0.5]
  SETTABLEKS R22 R21 K75 ["transparency"]
  SETTABLEKS R21 R20 K324 ["optInWarning"]
  DUPTABLE R21 K325 [{"padding", "length", "height"}]
  LOADN R22 30
  SETTABLEKS R22 R21 K162 ["padding"]
  LOADN R22 250
  SETTABLEKS R22 R21 K310 ["length"]
  LOADN R22 150
  SETTABLEKS R22 R21 K73 ["height"]
  SETTABLEKS R21 R20 K326 ["extraOptInInfo"]
  DUPTABLE R21 K328 [{"headerOffset", "description", "icon"}]
  LOADN R22 196
  SETTABLEKS R22 R21 K327 ["headerOffset"]
  DUPTABLE R22 K311 [{"length"}]
  LOADN R23 131
  SETTABLEKS R23 R22 K310 ["length"]
  SETTABLEKS R22 R21 K161 ["description"]
  DUPTABLE R22 K329 [{"size"}]
  LOADN R23 16
  SETTABLEKS R23 R22 K80 ["size"]
  SETTABLEKS R22 R21 K70 ["icon"]
  SETTABLEKS R21 R20 K330 ["warningDialog"]
  DUPTABLE R21 K331 [{"button", "padding", "width"}]
  DUPTABLE R22 K132 [{"height"}]
  LOADN R23 50
  SETTABLEKS R23 R22 K73 ["height"]
  SETTABLEKS R22 R21 K130 ["button"]
  LOADN R22 10
  SETTABLEKS R22 R21 K162 ["padding"]
  LOADN R22 195
  SETTABLEKS R22 R21 K83 ["width"]
  SETTABLEKS R21 R20 K332 ["selectInput"]
  DUPTABLE R21 K335 [{"buttonPane", "spacing", "titlePane"}]
  DUPTABLE R22 K336 [{"padding", "spacing"}]
  LOADN R23 165
  SETTABLEKS R23 R22 K162 ["padding"]
  LOADN R23 20
  SETTABLEKS R23 R22 K74 ["spacing"]
  SETTABLEKS R22 R21 K333 ["buttonPane"]
  LOADN R22 45
  SETTABLEKS R22 R21 K74 ["spacing"]
  DUPTABLE R22 K337 [{"spacing"}]
  LOADN R23 15
  SETTABLEKS R23 R22 K74 ["spacing"]
  SETTABLEKS R22 R21 K334 ["titlePane"]
  SETTABLEKS R21 R20 K338 ["playabilityWidget"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R21 K341 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K339 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K340 ["BorderSizePixel"]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 130
  CALL R22 4 1
  SETTABLEKS R22 R21 K317 ["Size"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K343 ["guidelinesFrame"]
  JUMPIFNOT R11 [+43]
  DUPTABLE R21 K346 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "TextSize"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K339 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K340 ["BorderSizePixel"]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 0
  LOADN R24 180
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K317 ["Size"]
  GETIMPORT R22 K348 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K344 ["TextXAlignment"]
  GETIMPORT R22 K350 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K345 ["TextYAlignment"]
  GETTABLEKS R23 R14 K25 ["Title"]
  GETTABLEKS R22 R23 K38 ["Font"]
  SETTABLEKS R22 R21 K38 ["Font"]
  GETTABLEKS R23 R14 K25 ["Title"]
  GETTABLEKS R22 R23 K40 ["TextColor3"]
  SETTABLEKS R22 R21 K40 ["TextColor3"]
  GETTABLEKS R23 R14 K25 ["Title"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K351 ["guidelinesTitle"]
  JUMPIFNOT R11 [+33]
  DUPTABLE R21 K355 [{"BackgroundTransparency", "LayoutOrder", "Size", "AnchorPoint", "Position"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K339 ["BackgroundTransparency"]
  LOADN R22 1
  SETTABLEKS R22 R21 K352 ["LayoutOrder"]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 1
  LOADN R24 76
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K317 ["Size"]
  GETIMPORT R22 K239 [Vector2.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K353 ["AnchorPoint"]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 1
  LOADN R24 10
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K354 ["Position"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K356 ["guidelinesDescriptionFrame"]
  JUMPIFNOT R11 [+31]
  DUPTABLE R21 K357 [{"Size", "Font", "TextYAlignment", "TextSize", "TextXAlignment"}]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 19
  CALL R22 4 1
  SETTABLEKS R22 R21 K317 ["Size"]
  GETTABLEKS R23 R14 K28 ["Normal"]
  GETTABLEKS R22 R23 K38 ["Font"]
  SETTABLEKS R22 R21 K38 ["Font"]
  GETIMPORT R22 K350 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K345 ["TextYAlignment"]
  GETTABLEKS R23 R14 K28 ["Normal"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  GETIMPORT R22 K348 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K344 ["TextXAlignment"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K358 ["chosenGuidelineText"]
  DUPTABLE R21 K359 [{"Style", "PaddingX", "PaddingY"}]
  LOADK R22 K104 ["backgroundColor"]
  SETTABLEKS R22 R21 K8 ["Style"]
  LOADN R22 40
  SETTABLEKS R22 R21 K278 ["PaddingX"]
  LOADN R22 15
  SETTABLEKS R22 R21 K279 ["PaddingY"]
  SETTABLEKS R21 R20 K361 ["openQuestionnaireButton"]
  JUMPIFNOT R11 [+17]
  DUPTABLE R21 K362 [{"Position", "TextSize"}]
  GETIMPORT R22 K342 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADK R25 K107 ["hovered"]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K354 ["Position"]
  GETTABLEKS R23 R14 K33 ["HeaderLink"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K364 ["titleLink"]
  JUMPIFNOT R11 [+21]
  DUPTABLE R21 K369 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
  GETIMPORT R22 K370 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K365 ["SortOrder"]
  GETIMPORT R22 K372 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K366 ["FillDirection"]
  GETIMPORT R22 K374 [UDim.new]
  LOADN R23 0
  LOADN R24 16
  CALL R22 2 1
  SETTABLEKS R22 R21 K367 ["Padding"]
  GETIMPORT R22 K375 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K368 ["HorizontalAlignment"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K376 ["guidelinesDescriptionListLayout"]
  JUMPIFNOT R11 [+40]
  DUPTABLE R21 K380 [{"TextColor3", "BackgroundTransparency", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTransparency", "ClipsDescendants"}]
  GETTABLEKS R23 R14 K34 ["Small"]
  GETTABLEKS R22 R23 K40 ["TextColor3"]
  SETTABLEKS R22 R21 K40 ["TextColor3"]
  LOADN R22 1
  SETTABLEKS R22 R21 K339 ["BackgroundTransparency"]
  GETTABLEKS R23 R14 K34 ["Small"]
  GETTABLEKS R22 R23 K38 ["Font"]
  SETTABLEKS R22 R21 K38 ["Font"]
  GETTABLEKS R23 R14 K34 ["Small"]
  GETTABLEKS R22 R23 K39 ["TextSize"]
  SETTABLEKS R22 R21 K39 ["TextSize"]
  GETIMPORT R22 K348 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K344 ["TextXAlignment"]
  GETIMPORT R22 K350 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K345 ["TextYAlignment"]
  LOADB R22 1
  SETTABLEKS R22 R21 K377 ["TextWrapped"]
  LOADK R22 K125 ["ScrollBar"]
  SETTABLEKS R22 R21 K378 ["TextTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K379 ["ClipsDescendants"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K382 ["guidelinesDescriptionText"]
  GETTABLEKS R21 R7 K54 ["Button"]
  SETTABLE R16 R20 R21
  GETTABLEKS R21 R7 K60 ["Image"]
  SETTABLE R17 R20 R21
  NEWTABLE R21 4 0
  GETTABLEKS R22 R5 K169 ["RadioButtonImage"]
  LOADK R23 K127 ["ScrollBarBackground"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K170 ["RadioButtonDisabledImage"]
  LOADK R23 K128 ["scrollBarBackground"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K200 ["RefreshImage"]
  LOADK R23 K129 [{"width", "height"}]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R5 K180 ["InformationImage"]
  LOADK R23 K130 ["button"]
  SETTABLE R23 R21 R22
  NEWTABLE R22 4 0
  GETTABLEKS R23 R5 K169 ["RadioButtonImage"]
  LOADK R24 K131 ["buttonBar"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K170 ["RadioButtonDisabledImage"]
  LOADK R24 K132 [{"height"}]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K200 ["RefreshImage"]
  LOADK R24 K133 ["header"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R5 K180 ["InformationImage"]
  LOADK R24 K134 ["MenuBarBackground"]
  SETTABLE R24 R22 R23
  DUPCLOSURE R23 K391 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R20
  RETURN R23 1
