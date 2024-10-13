PROTO_0:
  GETUPVAL R0 0
  LOADK R1 K0 ["RoundBox"]
  CALL R0 1 1
  GETUPVAL R1 0
  LOADK R2 K1 ["Button"]
  CALL R1 1 1
  GETUPVAL R2 0
  LOADK R3 K2 ["RadioButton"]
  CALL R2 1 1
  NEWTABLE R3 32 0
  DUPTABLE R4 K12 [{"backgroundColor", "brightText", "errorColor", "warningColor", "labelTextColor", "textColor", "inputBottomText", "publishAsset", "packagePermissions"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["MainBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K14 ["BrightText"]
  SETTABLEKS R5 R4 K4 ["brightText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["ErrorText"]
  SETTABLEKS R5 R4 K5 ["errorColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["WarningText"]
  SETTABLEKS R5 R4 K6 ["warningColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["DimmedText"]
  SETTABLEKS R5 R4 K7 ["labelTextColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  DUPTABLE R5 K22 [{"textColor", "textErrorColor", "textSize", "bottomTextSpacing"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K17 ["DimmedText"]
  SETTABLEKS R6 R5 K8 ["textColor"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["ErrorText"]
  SETTABLEKS R6 R5 K19 ["textErrorColor"]
  LOADN R6 18
  SETTABLEKS R6 R5 K20 ["textSize"]
  LOADN R6 6
  SETTABLEKS R6 R5 K21 ["bottomTextSpacing"]
  SETTABLEKS R5 R4 K9 ["inputBottomText"]
  DUPTABLE R5 K24 [{"warningIconColor"}]
  GETIMPORT R6 K27 [Color3.fromHex]
  LOADK R7 K28 ["#FFAA21"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K23 ["warningIconColor"]
  SETTABLEKS R5 R4 K10 ["publishAsset"]
  DUPTABLE R5 K33 [{"backgroundColor", "subTextColor", "collaboratorItem", "searchBar", "subjectThumbnail"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["MainBackground"]
  SETTABLEKS R6 R5 K3 ["backgroundColor"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K34 ["SubText"]
  SETTABLEKS R6 R5 K29 ["subTextColor"]
  DUPTABLE R6 K36 [{"deleteButton"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K37 ["Toolbox_DeleteIconColor"]
  SETTABLEKS R7 R6 K35 ["deleteButton"]
  SETTABLEKS R6 R5 K30 ["collaboratorItem"]
  DUPTABLE R6 K45 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "searchIcon", "clearButton", "dropDown"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K46 ["InputFieldBorder"]
  SETTABLEKS R7 R6 K38 ["border"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K47 ["Blue"]
  SETTABLEKS R7 R6 K39 ["borderHover"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K47 ["Blue"]
  SETTABLEKS R7 R6 K40 ["borderSelected"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["DimmedText"]
  SETTABLEKS R7 R6 K41 ["placeholderText"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K48 ["InputFieldBackground"]
  SETTABLEKS R7 R6 K3 ["backgroundColor"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K34 ["SubText"]
  SETTABLEKS R7 R6 K42 ["searchIcon"]
  DUPTABLE R7 K50 [{"image"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K34 ["SubText"]
  SETTABLEKS R8 R7 K49 ["image"]
  SETTABLEKS R7 R6 K43 ["clearButton"]
  DUPTABLE R7 K55 [{"backgroundColor", "itemText", "headerText", "hovered", "selected"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K48 ["InputFieldBackground"]
  SETTABLEKS R8 R7 K3 ["backgroundColor"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["MainText"]
  SETTABLEKS R8 R7 K51 ["itemText"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K34 ["SubText"]
  SETTABLEKS R8 R7 K52 ["headerText"]
  DUPTABLE R8 K56 [{"backgroundColor", "itemText"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K57 ["ItemHovered"]
  SETTABLEKS R9 R8 K3 ["backgroundColor"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K58 ["ButtonText"]
  SETTABLEKS R9 R8 K51 ["itemText"]
  SETTABLEKS R8 R7 K53 ["hovered"]
  DUPTABLE R8 K59 [{"backgroundColor"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K60 ["ButtonSelected"]
  SETTABLEKS R9 R8 K3 ["backgroundColor"]
  SETTABLEKS R8 R7 K54 ["selected"]
  SETTABLEKS R7 R6 K44 ["dropDown"]
  SETTABLEKS R6 R5 K31 ["searchBar"]
  DUPTABLE R6 K62 [{"backgroundColor", "defaultImageColor"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K63 ["TableItem"]
  SETTABLEKS R7 R6 K3 ["backgroundColor"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K64 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
  SETTABLEKS R7 R6 K61 ["defaultImageColor"]
  SETTABLEKS R6 R5 K32 ["subjectThumbnail"]
  SETTABLEKS R5 R4 K11 ["packagePermissions"]
  SETTABLEKS R4 R3 K65 ["assetConfig"]
  DUPTABLE R4 K69 [{"displayText", "descriptionText", "backgroundColor", "borderColor", "hovered"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K66 ["displayText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K34 ["SubText"]
  SETTABLEKS R5 R4 K67 ["descriptionText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["MainBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K70 ["DialogButtonBorder"]
  SETTABLEKS R5 R4 K68 ["borderColor"]
  DUPTABLE R5 K71 [{"displayText"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K72 ["MainTextHover"]
  SETTABLEKS R6 R5 K66 ["displayText"]
  SETTABLEKS R5 R4 K53 ["hovered"]
  SETTABLEKS R4 R3 K73 ["detailedDropdown"]
  DUPTABLE R4 K74 [{"backgroundColor", "borderColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["MainBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K75 ["Border"]
  SETTABLEKS R5 R4 K68 ["borderColor"]
  SETTABLEKS R4 R3 K76 ["configFooter"]
  DUPTABLE R4 K79 [{"horizontalLineColor", "verticalLineColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K80 ["Toolbox_HorizontalLineColor"]
  SETTABLEKS R5 R4 K77 ["horizontalLineColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K81 ["AssetConfig_DividerHorizontalLineColor"]
  SETTABLEKS R5 R4 K78 ["verticalLineColor"]
  SETTABLEKS R4 R3 K82 ["divider"]
  DUPTABLE R4 K85 [{"backgroundColor", "toolTip", "error"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K48 ["InputFieldBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["DimmedText"]
  SETTABLEKS R5 R4 K83 ["toolTip"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["ErrorText"]
  SETTABLEKS R5 R4 K84 ["error"]
  SETTABLEKS R4 R3 K86 ["inputFields"]
  DUPTABLE R4 K87 [{"textColor"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K47 ["Blue"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  SETTABLEKS R4 R3 K88 ["linkButton"]
  DUPTABLE R4 K90 [{"text"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K89 ["text"]
  SETTABLEKS R4 R3 K91 ["loading"]
  DUPTABLE R4 K94 [{"mainButton", "button"}]
  DUPTABLE R5 K98 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K99 ["DialogMainButton"]
  SETTABLEKS R6 R5 K95 ["background"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K100 ["DialogMainButtonHover"]
  SETTABLEKS R6 R5 K96 ["hoverBackground"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K101 ["DialogMainButtonPressed"]
  SETTABLEKS R6 R5 K97 ["pressBackground"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K75 ["Border"]
  SETTABLEKS R6 R5 K68 ["borderColor"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K102 ["DialogMainButtonText"]
  SETTABLEKS R6 R5 K8 ["textColor"]
  SETTABLEKS R5 R4 K92 ["mainButton"]
  DUPTABLE R5 K98 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K103 ["DialogButton"]
  SETTABLEKS R6 R5 K95 ["background"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K104 ["DialogButtonHover"]
  SETTABLEKS R6 R5 K96 ["hoverBackground"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K105 ["DialogButtonPressed"]
  SETTABLEKS R6 R5 K97 ["pressBackground"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K75 ["Border"]
  SETTABLEKS R6 R5 K68 ["borderColor"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K106 ["DialogButtonText"]
  SETTABLEKS R6 R5 K8 ["textColor"]
  SETTABLEKS R5 R4 K93 ["button"]
  SETTABLEKS R4 R3 K107 ["nav"]
  DUPTABLE R4 K109 [{"backgroundColor", "textColor", "selectedColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["MainBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K110 ["AssetConfig_PreviewSelectedColor"]
  SETTABLEKS R5 R4 K108 ["selectedColor"]
  SETTABLEKS R4 R3 K111 ["previewArea"]
  DUPTABLE R4 K118 [{"contentColor", "backgroundColor", "selecteBarColor", "selecteBarTrans", "selecteBarZindex", "selecteIndicatorColor", "selecteIndicatorTrans", "textColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K119 ["TitlebarText"]
  SETTABLEKS R5 R4 K112 ["contentColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["MainBackground"]
  SETTABLEKS R5 R4 K3 ["backgroundColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K120 ["AssetConfig_SidetabSelectedBarColor"]
  SETTABLEKS R5 R4 K113 ["selecteBarColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K121 ["AssetConfig_SidetabSelectedBarTransparency"]
  SETTABLEKS R5 R4 K114 ["selecteBarTrans"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K122 ["AssetConfig_SidetabSelectedBarZIndex"]
  SETTABLEKS R5 R4 K115 ["selecteBarZindex"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K123 ["BLUE_PRIMARY"]
  SETTABLEKS R5 R4 K116 ["selecteIndicatorColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K124 ["AssetConfig_SidetabSelectedIndicatorZindex"]
  SETTABLEKS R5 R4 K117 ["selecteIndicatorTrans"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  SETTABLEKS R4 R3 K125 ["sideTab"]
  DUPTABLE R4 K87 [{"textColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  SETTABLEKS R4 R3 K126 ["tags"]
  DUPTABLE R4 K128 [{"background", "border", "text", "warningIconSize"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K129 ["Item"]
  SETTABLEKS R5 R4 K95 ["background"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K75 ["Border"]
  SETTABLEKS R5 R4 K38 ["border"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K89 ["text"]
  GETIMPORT R5 K132 [UDim2.fromOffset]
  LOADN R6 64
  LOADN R7 64
  CALL R5 2 1
  SETTABLEKS R5 R4 K127 ["warningIconSize"]
  SETTABLEKS R4 R3 K133 ["thumbnailPreview"]
  DUPTABLE R4 K136 [{"background", "selector", "footer"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K63 ["TableItem"]
  SETTABLEKS R5 R4 K95 ["background"]
  DUPTABLE R5 K139 [{"title", "description"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K18 ["MainText"]
  SETTABLEKS R6 R5 K137 ["title"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K140 ["MainTextDisabled"]
  SETTABLEKS R6 R5 K138 ["description"]
  SETTABLEKS R5 R4 K134 ["selector"]
  DUPTABLE R5 K141 [{"background", "border"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["MainBackground"]
  SETTABLEKS R6 R5 K95 ["background"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K75 ["Border"]
  SETTABLEKS R6 R5 K38 ["border"]
  SETTABLEKS R5 R4 K135 ["footer"]
  SETTABLEKS R4 R3 K142 ["typeSelection"]
  DUPTABLE R4 K145 [{"background", "successResultColor", "failureResultColor"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K63 ["TableItem"]
  SETTABLEKS R5 R4 K95 ["background"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K146 ["TextSuccess"]
  SETTABLEKS R5 R4 K143 ["successResultColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K147 ["TextError"]
  SETTABLEKS R5 R4 K144 ["failureResultColor"]
  SETTABLEKS R4 R3 K148 ["typeValidation"]
  DUPTABLE R4 K154 [{"greenText", "redText", "text", "buttonColor", "idText", "background", "link"}]
  GETIMPORT R5 K156 [Color3.fromRGB]
  LOADN R6 2
  LOADN R7 183
  LOADN R8 87
  CALL R5 3 1
  SETTABLEKS R5 R4 K149 ["greenText"]
  GETIMPORT R5 K156 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 68
  LOADN R8 68
  CALL R5 3 1
  SETTABLEKS R5 R4 K150 ["redText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K89 ["text"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K157 ["AssetConfig_UploadResultButtonColor"]
  SETTABLEKS R5 R4 K151 ["buttonColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["DimmedText"]
  SETTABLEKS R5 R4 K152 ["idText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K63 ["TableItem"]
  SETTABLEKS R5 R4 K95 ["background"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K158 ["LinkText"]
  SETTABLEKS R5 R4 K153 ["link"]
  SETTABLEKS R4 R3 K159 ["uploadResult"]
  DUPTABLE R4 K164 [{"thumbnailBorderColor", "buttonSelectedColor", "buttonDefaultColor", "textColor", "dimmedTextColor", "errorColor"}]
  GETIMPORT R5 K156 [Color3.fromRGB]
  LOADN R6 117
  LOADN R7 117
  LOADN R8 117
  CALL R5 3 1
  SETTABLEKS R5 R4 K160 ["thumbnailBorderColor"]
  GETIMPORT R5 K156 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 162
  LOADN R8 255
  CALL R5 3 1
  SETTABLEKS R5 R4 K161 ["buttonSelectedColor"]
  GETIMPORT R5 K156 [Color3.fromRGB]
  LOADN R6 117
  LOADN R7 117
  LOADN R8 117
  CALL R5 3 1
  SETTABLEKS R5 R4 K162 ["buttonDefaultColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["MainText"]
  SETTABLEKS R5 R4 K8 ["textColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["DimmedText"]
  SETTABLEKS R5 R4 K163 ["dimmedTextColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["ErrorText"]
  SETTABLEKS R5 R4 K5 ["errorColor"]
  SETTABLEKS R4 R3 K165 ["versions"]
  DUPTABLE R4 K173 [{"nameMinWidth", "nameTextSize", "placeholderIconColor", "previewBackgroundColor", "previewSize", "warningColor", "validationIconSize", "validationStyles"}]
  LOADN R5 200
  SETTABLEKS R5 R4 K166 ["nameMinWidth"]
  LOADN R5 20
  SETTABLEKS R5 R4 K167 ["nameTextSize"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K17 ["DimmedText"]
  SETTABLEKS R5 R4 K168 ["placeholderIconColor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K174 ["SubBackground"]
  SETTABLEKS R5 R4 K169 ["previewBackgroundColor"]
  LOADN R5 60
  SETTABLEKS R5 R4 K170 ["previewSize"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["WarningText"]
  SETTABLEKS R5 R4 K6 ["warningColor"]
  LOADN R5 14
  SETTABLEKS R5 R4 K171 ["validationIconSize"]
  DUPTABLE R5 K177 [{"error", "pending", "success"}]
  DUPTABLE R6 K179 [{"iconColor", "textColor"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K147 ["TextError"]
  SETTABLEKS R7 R6 K178 ["iconColor"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K147 ["TextError"]
  SETTABLEKS R7 R6 K8 ["textColor"]
  SETTABLEKS R6 R5 K84 ["error"]
  DUPTABLE R6 K179 [{"iconColor", "textColor"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["DimmedText"]
  SETTABLEKS R7 R6 K178 ["iconColor"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["DimmedText"]
  SETTABLEKS R7 R6 K8 ["textColor"]
  SETTABLEKS R6 R5 K175 ["pending"]
  DUPTABLE R6 K179 [{"iconColor", "textColor"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K146 ["TextSuccess"]
  SETTABLEKS R7 R6 K178 ["iconColor"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["DimmedText"]
  SETTABLEKS R7 R6 K8 ["textColor"]
  SETTABLEKS R6 R5 K176 ["success"]
  SETTABLEKS R5 R4 K172 ["validationStyles"]
  SETTABLEKS R4 R3 K180 ["ugcBundleValidation"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["Button"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K181 ["Dictionary"]
  GETTABLEKS R5 R6 K182 ["join"]
  MOVE R6 R1
  NEWTABLE R7 1 0
  DUPTABLE R8 K184 [{"BackgroundStyle"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K181 ["Dictionary"]
  GETTABLEKS R9 R10 K182 ["join"]
  MOVE R10 R0
  DUPTABLE R11 K187 [{"Color", "TextColor"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K188 ["ItemSelected"]
  SETTABLEKS R12 R11 K185 ["Color"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K189 ["MainTextSelected"]
  SETTABLEKS R12 R11 K186 ["TextColor"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K183 ["BackgroundStyle"]
  SETTABLEKS R8 R7 K190 ["&SelectedDetailedDropdownItem"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["RoundBox"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K181 ["Dictionary"]
  GETTABLEKS R5 R6 K182 ["join"]
  MOVE R6 R0
  NEWTABLE R7 4 0
  DUPTABLE R8 K192 [{"Color", "BorderColor"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K13 ["MainBackground"]
  SETTABLEKS R9 R8 K185 ["Color"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K75 ["Border"]
  SETTABLEKS R9 R8 K191 ["BorderColor"]
  SETTABLEKS R8 R7 K193 ["&CatalogTag"]
  NEWTABLE R8 4 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K48 ["InputFieldBackground"]
  SETTABLEKS R9 R8 K185 ["Color"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K75 ["Border"]
  SETTABLEKS R9 R8 K191 ["BorderColor"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K194 ["Selected"]
  DUPTABLE R10 K195 [{"BorderColor"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K196 ["InputFieldBorderSelected"]
  SETTABLEKS R11 R10 K191 ["BorderColor"]
  SETTABLE R10 R8 R9
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K197 ["Disabled"]
  DUPTABLE R10 K198 [{"Color"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K199 ["InputFieldBackgroundDisabled"]
  SETTABLEKS R11 R10 K185 ["Color"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K200 ["&TagsComponent"]
  DUPTABLE R8 K195 [{"BorderColor"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K15 ["ErrorText"]
  SETTABLEKS R9 R8 K191 ["BorderColor"]
  SETTABLEKS R8 R7 K201 ["&TagsComponentError"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K202 ["StyledDialog"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K181 ["Dictionary"]
  GETTABLEKS R5 R6 K182 ["join"]
  GETUPVAL R6 0
  LOADK R7 K202 ["StyledDialog"]
  CALL R6 1 1
  NEWTABLE R7 1 0
  DUPTABLE R8 K204 [{"ButtonSpacing"}]
  LOADN R9 8
  SETTABLEKS R9 R8 K203 ["ButtonSpacing"]
  SETTABLEKS R8 R7 K205 ["&AssetConfigWarningDialog"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["RadioButton"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K181 ["Dictionary"]
  GETTABLEKS R5 R6 K182 ["join"]
  MOVE R6 R2
  NEWTABLE R7 1 0
  DUPTABLE R8 K207 [{"TextSize", "BackgroundStyle"}]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K208 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
  SETTABLEKS R9 R8 K206 ["TextSize"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K181 ["Dictionary"]
  GETTABLEKS R9 R10 K182 ["join"]
  GETTABLEKS R10 R2 K183 ["BackgroundStyle"]
  NEWTABLE R11 2 0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K181 ["Dictionary"]
  GETTABLEKS R12 R13 K182 ["join"]
  GETTABLEKS R14 R2 K183 ["BackgroundStyle"]
  GETTABLEKS R13 R14 K183 ["BackgroundStyle"]
  DUPTABLE R14 K198 [{"Color"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K48 ["InputFieldBackground"]
  SETTABLEKS R15 R14 K185 ["Color"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K183 ["BackgroundStyle"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K194 ["Selected"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K181 ["Dictionary"]
  GETTABLEKS R13 R14 K182 ["join"]
  GETTABLEKS R15 R2 K183 ["BackgroundStyle"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K194 ["Selected"]
  GETTABLE R14 R15 R16
  DUPTABLE R15 K184 [{"BackgroundStyle"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K181 ["Dictionary"]
  GETTABLEKS R16 R17 K182 ["join"]
  GETTABLEKS R19 R2 K183 ["BackgroundStyle"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K194 ["Selected"]
  GETTABLE R18 R19 R20
  GETTABLEKS R17 R18 K183 ["BackgroundStyle"]
  DUPTABLE R18 K198 [{"Color"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K48 ["InputFieldBackground"]
  SETTABLEKS R19 R18 K185 ["Color"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K183 ["BackgroundStyle"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K183 ["BackgroundStyle"]
  SETTABLEKS R8 R7 K209 ["&AssetConfigRadioButton"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K210 ["RadioButtonList"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K181 ["Dictionary"]
  GETTABLEKS R5 R6 K182 ["join"]
  GETUPVAL R6 0
  LOADK R7 K210 ["RadioButtonList"]
  CALL R6 1 1
  NEWTABLE R7 1 0
  DUPTABLE R8 K213 [{"Padding", "RadioButtonStyle"}]
  LOADN R9 17
  SETTABLEKS R9 R8 K211 ["Padding"]
  LOADK R9 K214 ["AssetConfigRadioButton"]
  SETTABLEKS R9 R8 K212 ["RadioButtonStyle"]
  SETTABLEKS R8 R7 K215 ["&AssetConfigRadioButtonList"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["Style"]
  GETTABLEKS R4 R3 K8 ["StyleKey"]
  GETTABLEKS R5 R3 K9 ["ComponentSymbols"]
  GETTABLEKS R6 R3 K10 ["getRawComponentStyle"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R1 K6 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K12 ["StyleModifier"]
  GETTABLEKS R8 R3 K13 ["Colors"]
  GETTABLEKS R10 R0 K14 ["Core"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K15 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R1 K16 ["Cryo"]
  CALL R11 1 1
  DUPCLOSURE R12 K17 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R10
  RETURN R12 1
