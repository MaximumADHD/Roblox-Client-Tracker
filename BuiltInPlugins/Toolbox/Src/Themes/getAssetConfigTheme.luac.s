PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["RoundBox"]
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 0
        4 LOADK                            R2 K1 ["Button"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K2 ["RadioButton"]
        8 CALL                             R2 1 1
        9 NEWTABLE                         R3 32 0
       11 DUPTABLE                         R4 K12 [{"backgroundColor", "brightText", "errorColor", "warningColor", "labelTextColor", "textColor", "inputBottomText", "publishAsset", "packagePermissions"}]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
       15 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K14 ["BrightText"]
       20 SETTABLEKS                       R5 R4 K4 ["brightText"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K15 ["ErrorText"]
       25 SETTABLEKS                       R5 R4 K5 ["errorColor"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K16 ["WarningText"]
       30 SETTABLEKS                       R5 R4 K6 ["warningColor"]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
       35 SETTABLEKS                       R5 R4 K7 ["labelTextColor"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K18 ["MainText"]
       40 SETTABLEKS                       R5 R4 K8 ["textColor"]
       42 DUPTABLE                         R5 K24 [{["textColor"], ["textErrorColor"], ["textSize"] = 18, ["bottomTextSpacing"] = 6}]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K17 ["DimmedText"]
       46 SETTABLEKS                       R6 R5 K8 ["textColor"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K15 ["ErrorText"]
       51 SETTABLEKS                       R6 R5 K19 ["textErrorColor"]
       53 SETTABLEKS                       R5 R4 K9 ["inputBottomText"]
       55 DUPTABLE                         R5 K26 [{"warningIconColor"}]
       56 GETIMPORT                        R6 K29 [Color3.fromHex]
       58 LOADK                            R7 K30 ["#FFAA21"]
       59 CALL                             R6 1 1
       60 SETTABLEKS                       R6 R5 K25 ["warningIconColor"]
       62 SETTABLEKS                       R5 R4 K10 ["publishAsset"]
       64 DUPTABLE                         R5 K35 [{"backgroundColor", "subTextColor", "collaboratorItem", "searchBar", "subjectThumbnail"}]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K13 ["MainBackground"]
       68 SETTABLEKS                       R6 R5 K3 ["backgroundColor"]
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K36 ["SubText"]
       73 SETTABLEKS                       R6 R5 K31 ["subTextColor"]
       75 DUPTABLE                         R6 K38 [{"deleteButton"}]
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K39 ["Toolbox_DeleteIconColor"]
       79 SETTABLEKS                       R7 R6 K37 ["deleteButton"]
       81 SETTABLEKS                       R6 R5 K32 ["collaboratorItem"]
       83 DUPTABLE                         R6 K47 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "searchIcon", "clearButton", "dropDown"}]
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R7 R7 K48 ["InputFieldBorder"]
       87 SETTABLEKS                       R7 R6 K40 ["border"]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K49 ["Blue"]
       92 SETTABLEKS                       R7 R6 K41 ["borderHover"]
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R7 R7 K49 ["Blue"]
       97 SETTABLEKS                       R7 R6 K42 ["borderSelected"]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      102 SETTABLEKS                       R7 R6 K43 ["placeholderText"]
      104 GETUPVAL                         R7 1
      105 GETTABLEKS                       R7 R7 K50 ["InputFieldBackground"]
      107 SETTABLEKS                       R7 R6 K3 ["backgroundColor"]
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R7 R7 K36 ["SubText"]
      112 SETTABLEKS                       R7 R6 K44 ["searchIcon"]
      114 DUPTABLE                         R7 K52 [{"image"}]
      115 GETUPVAL                         R8 1
      116 GETTABLEKS                       R8 R8 K36 ["SubText"]
      118 SETTABLEKS                       R8 R7 K51 ["image"]
      120 SETTABLEKS                       R7 R6 K45 ["clearButton"]
      122 DUPTABLE                         R7 K57 [{"backgroundColor", "itemText", "headerText", "hovered", "selected"}]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R8 R8 K50 ["InputFieldBackground"]
      126 SETTABLEKS                       R8 R7 K3 ["backgroundColor"]
      128 GETUPVAL                         R8 1
      129 GETTABLEKS                       R8 R8 K18 ["MainText"]
      131 SETTABLEKS                       R8 R7 K53 ["itemText"]
      133 GETUPVAL                         R8 1
      134 GETTABLEKS                       R8 R8 K36 ["SubText"]
      136 SETTABLEKS                       R8 R7 K54 ["headerText"]
      138 DUPTABLE                         R8 K58 [{"backgroundColor", "itemText"}]
      139 GETUPVAL                         R9 1
      140 GETTABLEKS                       R9 R9 K59 ["ItemHovered"]
      142 SETTABLEKS                       R9 R8 K3 ["backgroundColor"]
      144 GETUPVAL                         R9 1
      145 GETTABLEKS                       R9 R9 K60 ["ButtonText"]
      147 SETTABLEKS                       R9 R8 K53 ["itemText"]
      149 SETTABLEKS                       R8 R7 K55 ["hovered"]
      151 DUPTABLE                         R8 K61 [{"backgroundColor"}]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R9 R9 K62 ["ButtonSelected"]
      155 SETTABLEKS                       R9 R8 K3 ["backgroundColor"]
      157 SETTABLEKS                       R8 R7 K56 ["selected"]
      159 SETTABLEKS                       R7 R6 K46 ["dropDown"]
      161 SETTABLEKS                       R6 R5 K33 ["searchBar"]
      163 DUPTABLE                         R6 K64 [{"backgroundColor", "defaultImageColor"}]
      164 GETUPVAL                         R7 1
      165 GETTABLEKS                       R7 R7 K65 ["TableItem"]
      167 SETTABLEKS                       R7 R6 K3 ["backgroundColor"]
      169 GETUPVAL                         R7 1
      170 GETTABLEKS                       R7 R7 K66 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
      172 SETTABLEKS                       R7 R6 K63 ["defaultImageColor"]
      174 SETTABLEKS                       R6 R5 K34 ["subjectThumbnail"]
      176 SETTABLEKS                       R5 R4 K11 ["packagePermissions"]
      178 SETTABLEKS                       R4 R3 K67 ["assetConfig"]
      180 DUPTABLE                         R4 K71 [{"displayText", "descriptionText", "backgroundColor", "borderColor", "hovered"}]
      181 GETUPVAL                         R5 1
      182 GETTABLEKS                       R5 R5 K18 ["MainText"]
      184 SETTABLEKS                       R5 R4 K68 ["displayText"]
      186 GETUPVAL                         R5 1
      187 GETTABLEKS                       R5 R5 K36 ["SubText"]
      189 SETTABLEKS                       R5 R4 K69 ["descriptionText"]
      191 GETUPVAL                         R5 1
      192 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      194 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      196 GETUPVAL                         R5 1
      197 GETTABLEKS                       R5 R5 K72 ["DialogButtonBorder"]
      199 SETTABLEKS                       R5 R4 K70 ["borderColor"]
      201 DUPTABLE                         R5 K73 [{"displayText"}]
      202 GETUPVAL                         R6 1
      203 GETTABLEKS                       R6 R6 K74 ["MainTextHover"]
      205 SETTABLEKS                       R6 R5 K68 ["displayText"]
      207 SETTABLEKS                       R5 R4 K55 ["hovered"]
      209 SETTABLEKS                       R4 R3 K75 ["detailedDropdown"]
      211 DUPTABLE                         R4 K76 [{"backgroundColor", "borderColor"}]
      212 GETUPVAL                         R5 1
      213 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      215 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      217 GETUPVAL                         R5 1
      218 GETTABLEKS                       R5 R5 K77 ["Border"]
      220 SETTABLEKS                       R5 R4 K70 ["borderColor"]
      222 SETTABLEKS                       R4 R3 K78 ["configFooter"]
      224 DUPTABLE                         R4 K81 [{"horizontalLineColor", "verticalLineColor"}]
      225 GETUPVAL                         R5 1
      226 GETTABLEKS                       R5 R5 K82 ["Toolbox_HorizontalLineColor"]
      228 SETTABLEKS                       R5 R4 K79 ["horizontalLineColor"]
      230 GETUPVAL                         R5 1
      231 GETTABLEKS                       R5 R5 K83 ["AssetConfig_DividerHorizontalLineColor"]
      233 SETTABLEKS                       R5 R4 K80 ["verticalLineColor"]
      235 SETTABLEKS                       R4 R3 K84 ["divider"]
      237 DUPTABLE                         R4 K87 [{"backgroundColor", "toolTip", "error"}]
      238 GETUPVAL                         R5 1
      239 GETTABLEKS                       R5 R5 K50 ["InputFieldBackground"]
      241 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      243 GETUPVAL                         R5 1
      244 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      246 SETTABLEKS                       R5 R4 K85 ["toolTip"]
      248 GETUPVAL                         R5 1
      249 GETTABLEKS                       R5 R5 K15 ["ErrorText"]
      251 SETTABLEKS                       R5 R4 K86 ["error"]
      253 SETTABLEKS                       R4 R3 K88 ["inputFields"]
      255 DUPTABLE                         R4 K89 [{"textColor"}]
      256 GETUPVAL                         R5 2
      257 GETTABLEKS                       R5 R5 K49 ["Blue"]
      259 SETTABLEKS                       R5 R4 K8 ["textColor"]
      261 SETTABLEKS                       R4 R3 K90 ["linkButton"]
      263 DUPTABLE                         R4 K92 [{"text"}]
      264 GETUPVAL                         R5 1
      265 GETTABLEKS                       R5 R5 K18 ["MainText"]
      267 SETTABLEKS                       R5 R4 K91 ["text"]
      269 SETTABLEKS                       R4 R3 K93 ["loading"]
      271 DUPTABLE                         R4 K96 [{"mainButton", "button"}]
      272 DUPTABLE                         R5 K100 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
      273 GETUPVAL                         R6 1
      274 GETTABLEKS                       R6 R6 K101 ["DialogMainButton"]
      276 SETTABLEKS                       R6 R5 K97 ["background"]
      278 GETUPVAL                         R6 1
      279 GETTABLEKS                       R6 R6 K102 ["DialogMainButtonHover"]
      281 SETTABLEKS                       R6 R5 K98 ["hoverBackground"]
      283 GETUPVAL                         R6 1
      284 GETTABLEKS                       R6 R6 K103 ["DialogMainButtonPressed"]
      286 SETTABLEKS                       R6 R5 K99 ["pressBackground"]
      288 GETUPVAL                         R6 1
      289 GETTABLEKS                       R6 R6 K77 ["Border"]
      291 SETTABLEKS                       R6 R5 K70 ["borderColor"]
      293 GETUPVAL                         R6 1
      294 GETTABLEKS                       R6 R6 K104 ["DialogMainButtonText"]
      296 SETTABLEKS                       R6 R5 K8 ["textColor"]
      298 SETTABLEKS                       R5 R4 K94 ["mainButton"]
      300 DUPTABLE                         R5 K100 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
      301 GETUPVAL                         R6 1
      302 GETTABLEKS                       R6 R6 K105 ["DialogButton"]
      304 SETTABLEKS                       R6 R5 K97 ["background"]
      306 GETUPVAL                         R6 1
      307 GETTABLEKS                       R6 R6 K106 ["DialogButtonHover"]
      309 SETTABLEKS                       R6 R5 K98 ["hoverBackground"]
      311 GETUPVAL                         R6 1
      312 GETTABLEKS                       R6 R6 K107 ["DialogButtonPressed"]
      314 SETTABLEKS                       R6 R5 K99 ["pressBackground"]
      316 GETUPVAL                         R6 1
      317 GETTABLEKS                       R6 R6 K77 ["Border"]
      319 SETTABLEKS                       R6 R5 K70 ["borderColor"]
      321 GETUPVAL                         R6 1
      322 GETTABLEKS                       R6 R6 K108 ["DialogButtonText"]
      324 SETTABLEKS                       R6 R5 K8 ["textColor"]
      326 SETTABLEKS                       R5 R4 K95 ["button"]
      328 SETTABLEKS                       R4 R3 K109 ["nav"]
      330 DUPTABLE                         R4 K111 [{"backgroundColor", "textColor", "selectedColor"}]
      331 GETUPVAL                         R5 1
      332 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      334 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      336 GETUPVAL                         R5 1
      337 GETTABLEKS                       R5 R5 K18 ["MainText"]
      339 SETTABLEKS                       R5 R4 K8 ["textColor"]
      341 GETUPVAL                         R5 1
      342 GETTABLEKS                       R5 R5 K112 ["AssetConfig_PreviewSelectedColor"]
      344 SETTABLEKS                       R5 R4 K110 ["selectedColor"]
      346 SETTABLEKS                       R4 R3 K113 ["previewArea"]
      348 DUPTABLE                         R4 K120 [{"contentColor", "backgroundColor", "selecteBarColor", "selecteBarTrans", "selecteBarZindex", "selecteIndicatorColor", "selecteIndicatorTrans", "textColor"}]
      349 GETUPVAL                         R5 1
      350 GETTABLEKS                       R5 R5 K121 ["TitlebarText"]
      352 SETTABLEKS                       R5 R4 K114 ["contentColor"]
      354 GETUPVAL                         R5 1
      355 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      357 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      359 GETUPVAL                         R5 1
      360 GETTABLEKS                       R5 R5 K122 ["AssetConfig_SidetabSelectedBarColor"]
      362 SETTABLEKS                       R5 R4 K115 ["selecteBarColor"]
      364 GETUPVAL                         R5 1
      365 GETTABLEKS                       R5 R5 K123 ["AssetConfig_SidetabSelectedBarTransparency"]
      367 SETTABLEKS                       R5 R4 K116 ["selecteBarTrans"]
      369 GETUPVAL                         R5 1
      370 GETTABLEKS                       R5 R5 K124 ["AssetConfig_SidetabSelectedBarZIndex"]
      372 SETTABLEKS                       R5 R4 K117 ["selecteBarZindex"]
      374 GETUPVAL                         R5 2
      375 GETTABLEKS                       R5 R5 K125 ["BLUE_PRIMARY"]
      377 SETTABLEKS                       R5 R4 K118 ["selecteIndicatorColor"]
      379 GETUPVAL                         R5 1
      380 GETTABLEKS                       R5 R5 K126 ["AssetConfig_SidetabSelectedIndicatorZindex"]
      382 SETTABLEKS                       R5 R4 K119 ["selecteIndicatorTrans"]
      384 GETUPVAL                         R5 1
      385 GETTABLEKS                       R5 R5 K18 ["MainText"]
      387 SETTABLEKS                       R5 R4 K8 ["textColor"]
      389 SETTABLEKS                       R4 R3 K127 ["sideTab"]
      391 DUPTABLE                         R4 K89 [{"textColor"}]
      392 GETUPVAL                         R5 1
      393 GETTABLEKS                       R5 R5 K18 ["MainText"]
      395 SETTABLEKS                       R5 R4 K8 ["textColor"]
      397 SETTABLEKS                       R4 R3 K128 ["tags"]
      399 DUPTABLE                         R4 K130 [{"background", "border", "text", "warningIconSize"}]
      400 GETUPVAL                         R5 1
      401 GETTABLEKS                       R5 R5 K131 ["Item"]
      403 SETTABLEKS                       R5 R4 K97 ["background"]
      405 GETUPVAL                         R5 1
      406 GETTABLEKS                       R5 R5 K77 ["Border"]
      408 SETTABLEKS                       R5 R4 K40 ["border"]
      410 GETUPVAL                         R5 1
      411 GETTABLEKS                       R5 R5 K18 ["MainText"]
      413 SETTABLEKS                       R5 R4 K91 ["text"]
      415 GETIMPORT                        R5 K134 [UDim2.fromOffset]
      417 LOADN                            R6 64
      418 LOADN                            R7 64
      419 CALL                             R5 2 1
      420 SETTABLEKS                       R5 R4 K129 ["warningIconSize"]
      422 SETTABLEKS                       R4 R3 K135 ["thumbnailPreview"]
      424 DUPTABLE                         R4 K138 [{"background", "selector", "footer"}]
      425 GETUPVAL                         R5 1
      426 GETTABLEKS                       R5 R5 K65 ["TableItem"]
      428 SETTABLEKS                       R5 R4 K97 ["background"]
      430 DUPTABLE                         R5 K141 [{"title", "description"}]
      431 GETUPVAL                         R6 1
      432 GETTABLEKS                       R6 R6 K18 ["MainText"]
      434 SETTABLEKS                       R6 R5 K139 ["title"]
      436 GETUPVAL                         R6 1
      437 GETTABLEKS                       R6 R6 K142 ["MainTextDisabled"]
      439 SETTABLEKS                       R6 R5 K140 ["description"]
      441 SETTABLEKS                       R5 R4 K136 ["selector"]
      443 DUPTABLE                         R5 K143 [{"background", "border"}]
      444 GETUPVAL                         R6 1
      445 GETTABLEKS                       R6 R6 K13 ["MainBackground"]
      447 SETTABLEKS                       R6 R5 K97 ["background"]
      449 GETUPVAL                         R6 1
      450 GETTABLEKS                       R6 R6 K77 ["Border"]
      452 SETTABLEKS                       R6 R5 K40 ["border"]
      454 SETTABLEKS                       R5 R4 K137 ["footer"]
      456 SETTABLEKS                       R4 R3 K144 ["typeSelection"]
      458 DUPTABLE                         R4 K147 [{"background", "successResultColor", "failureResultColor"}]
      459 GETUPVAL                         R5 1
      460 GETTABLEKS                       R5 R5 K65 ["TableItem"]
      462 SETTABLEKS                       R5 R4 K97 ["background"]
      464 GETUPVAL                         R5 1
      465 GETTABLEKS                       R5 R5 K148 ["TextSuccess"]
      467 SETTABLEKS                       R5 R4 K145 ["successResultColor"]
      469 GETUPVAL                         R5 1
      470 GETTABLEKS                       R5 R5 K149 ["TextError"]
      472 SETTABLEKS                       R5 R4 K146 ["failureResultColor"]
      474 SETTABLEKS                       R4 R3 K150 ["typeValidation"]
      476 DUPTABLE                         R4 K156 [{"greenText", "redText", "text", "buttonColor", "idText", "background", "link"}]
      477 GETIMPORT                        R5 K158 [Color3.fromRGB]
      479 LOADN                            R6 2
      480 LOADN                            R7 183
      481 LOADN                            R8 87
      482 CALL                             R5 3 1
      483 SETTABLEKS                       R5 R4 K151 ["greenText"]
      485 GETIMPORT                        R5 K158 [Color3.fromRGB]
      487 LOADN                            R6 255
      488 LOADN                            R7 68
      489 LOADN                            R8 68
      490 CALL                             R5 3 1
      491 SETTABLEKS                       R5 R4 K152 ["redText"]
      493 GETUPVAL                         R5 1
      494 GETTABLEKS                       R5 R5 K18 ["MainText"]
      496 SETTABLEKS                       R5 R4 K91 ["text"]
      498 GETUPVAL                         R5 1
      499 GETTABLEKS                       R5 R5 K159 ["AssetConfig_UploadResultButtonColor"]
      501 SETTABLEKS                       R5 R4 K153 ["buttonColor"]
      503 GETUPVAL                         R5 1
      504 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      506 SETTABLEKS                       R5 R4 K154 ["idText"]
      508 GETUPVAL                         R5 1
      509 GETTABLEKS                       R5 R5 K65 ["TableItem"]
      511 SETTABLEKS                       R5 R4 K97 ["background"]
      513 GETUPVAL                         R5 1
      514 GETTABLEKS                       R5 R5 K160 ["LinkText"]
      516 SETTABLEKS                       R5 R4 K155 ["link"]
      518 SETTABLEKS                       R4 R3 K161 ["uploadResult"]
      520 DUPTABLE                         R4 K166 [{"thumbnailBorderColor", "buttonSelectedColor", "buttonDefaultColor", "textColor", "dimmedTextColor", "errorColor"}]
      521 GETIMPORT                        R5 K158 [Color3.fromRGB]
      523 LOADN                            R6 117
      524 LOADN                            R7 117
      525 LOADN                            R8 117
      526 CALL                             R5 3 1
      527 SETTABLEKS                       R5 R4 K162 ["thumbnailBorderColor"]
      529 GETIMPORT                        R5 K158 [Color3.fromRGB]
      531 LOADN                            R6 0
      532 LOADN                            R7 162
      533 LOADN                            R8 255
      534 CALL                             R5 3 1
      535 SETTABLEKS                       R5 R4 K163 ["buttonSelectedColor"]
      537 GETIMPORT                        R5 K158 [Color3.fromRGB]
      539 LOADN                            R6 117
      540 LOADN                            R7 117
      541 LOADN                            R8 117
      542 CALL                             R5 3 1
      543 SETTABLEKS                       R5 R4 K164 ["buttonDefaultColor"]
      545 GETUPVAL                         R5 1
      546 GETTABLEKS                       R5 R5 K18 ["MainText"]
      548 SETTABLEKS                       R5 R4 K8 ["textColor"]
      550 GETUPVAL                         R5 1
      551 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      553 SETTABLEKS                       R5 R4 K165 ["dimmedTextColor"]
      555 GETUPVAL                         R5 1
      556 GETTABLEKS                       R5 R5 K15 ["ErrorText"]
      558 SETTABLEKS                       R5 R4 K5 ["errorColor"]
      560 SETTABLEKS                       R4 R3 K167 ["versions"]
      562 DUPTABLE                         R4 K179 [{["nameMinWidth"] = 200, ["nameTextSize"] = 20, ["placeholderIconColor"], ["previewBackgroundColor"], ["previewSize"] = 60, ["warningColor"], ["validationIconSize"] = 14, ["validationStyles"]}]
      563 GETUPVAL                         R5 1
      564 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      566 SETTABLEKS                       R5 R4 K172 ["placeholderIconColor"]
      568 GETUPVAL                         R5 1
      569 GETTABLEKS                       R5 R5 K180 ["SubBackground"]
      571 SETTABLEKS                       R5 R4 K173 ["previewBackgroundColor"]
      573 GETUPVAL                         R5 1
      574 GETTABLEKS                       R5 R5 K16 ["WarningText"]
      576 SETTABLEKS                       R5 R4 K6 ["warningColor"]
      578 DUPTABLE                         R5 K183 [{"error", "pending", "success"}]
      579 DUPTABLE                         R6 K185 [{"iconColor", "textColor"}]
      580 GETUPVAL                         R7 1
      581 GETTABLEKS                       R7 R7 K149 ["TextError"]
      583 SETTABLEKS                       R7 R6 K184 ["iconColor"]
      585 GETUPVAL                         R7 1
      586 GETTABLEKS                       R7 R7 K149 ["TextError"]
      588 SETTABLEKS                       R7 R6 K8 ["textColor"]
      590 SETTABLEKS                       R6 R5 K86 ["error"]
      592 DUPTABLE                         R6 K185 [{"iconColor", "textColor"}]
      593 GETUPVAL                         R7 1
      594 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      596 SETTABLEKS                       R7 R6 K184 ["iconColor"]
      598 GETUPVAL                         R7 1
      599 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      601 SETTABLEKS                       R7 R6 K8 ["textColor"]
      603 SETTABLEKS                       R6 R5 K181 ["pending"]
      605 DUPTABLE                         R6 K185 [{"iconColor", "textColor"}]
      606 GETUPVAL                         R7 1
      607 GETTABLEKS                       R7 R7 K148 ["TextSuccess"]
      609 SETTABLEKS                       R7 R6 K184 ["iconColor"]
      611 GETUPVAL                         R7 1
      612 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      614 SETTABLEKS                       R7 R6 K8 ["textColor"]
      616 SETTABLEKS                       R6 R5 K182 ["success"]
      618 SETTABLEKS                       R5 R4 K178 ["validationStyles"]
      620 SETTABLEKS                       R4 R3 K186 ["ugcBundleValidation"]
      622 GETUPVAL                         R4 3
      623 GETTABLEKS                       R4 R4 K1 ["Button"]
      625 GETUPVAL                         R5 4
      626 GETTABLEKS                       R5 R5 K187 ["Dictionary"]
      628 GETTABLEKS                       R5 R5 K188 ["join"]
      630 MOVE                             R6 R1
      631 NEWTABLE                         R7 1 0
      633 DUPTABLE                         R8 K190 [{"BackgroundStyle"}]
      634 GETUPVAL                         R9 4
      635 GETTABLEKS                       R9 R9 K187 ["Dictionary"]
      637 GETTABLEKS                       R9 R9 K188 ["join"]
      639 MOVE                             R10 R0
      640 DUPTABLE                         R11 K193 [{"Color", "TextColor"}]
      641 GETUPVAL                         R12 1
      642 GETTABLEKS                       R12 R12 K194 ["ItemSelected"]
      644 SETTABLEKS                       R12 R11 K191 ["Color"]
      646 GETUPVAL                         R12 1
      647 GETTABLEKS                       R12 R12 K195 ["MainTextSelected"]
      649 SETTABLEKS                       R12 R11 K192 ["TextColor"]
      651 CALL                             R9 2 1
      652 SETTABLEKS                       R9 R8 K189 ["BackgroundStyle"]
      654 SETTABLEKS                       R8 R7 K196 ["&SelectedDetailedDropdownItem"]
      656 CALL                             R5 2 1
      657 SETTABLE                         R5 R3 R4
      658 GETUPVAL                         R4 3
      659 GETTABLEKS                       R4 R4 K0 ["RoundBox"]
      661 SETTABLE                         R0 R3 R4
      662 GETUPVAL                         R4 3
      663 GETTABLEKS                       R4 R4 K197 ["StyledDialog"]
      665 GETUPVAL                         R5 4
      666 GETTABLEKS                       R5 R5 K187 ["Dictionary"]
      668 GETTABLEKS                       R5 R5 K188 ["join"]
      670 GETUPVAL                         R6 0
      671 LOADK                            R7 K197 ["StyledDialog"]
      672 CALL                             R6 1 1
      673 NEWTABLE                         R7 1 0
      675 DUPTABLE                         R8 K200 [{["ButtonSpacing"] = 8}]
      676 SETTABLEKS                       R8 R7 K201 ["&AssetConfigWarningDialog"]
      678 CALL                             R5 2 1
      679 SETTABLE                         R5 R3 R4
      680 GETUPVAL                         R4 3
      681 GETTABLEKS                       R4 R4 K2 ["RadioButton"]
      683 GETUPVAL                         R5 4
      684 GETTABLEKS                       R5 R5 K187 ["Dictionary"]
      686 GETTABLEKS                       R5 R5 K188 ["join"]
      688 MOVE                             R6 R2
      689 NEWTABLE                         R7 1 0
      691 DUPTABLE                         R8 K203 [{"TextSize", "BackgroundStyle"}]
      692 GETUPVAL                         R9 5
      693 GETTABLEKS                       R9 R9 K204 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
      695 SETTABLEKS                       R9 R8 K202 ["TextSize"]
      697 GETUPVAL                         R9 4
      698 GETTABLEKS                       R9 R9 K187 ["Dictionary"]
      700 GETTABLEKS                       R9 R9 K188 ["join"]
      702 GETTABLEKS                       R10 R2 K189 ["BackgroundStyle"]
      704 NEWTABLE                         R11 2 0
      706 GETUPVAL                         R12 4
      707 GETTABLEKS                       R12 R12 K187 ["Dictionary"]
      709 GETTABLEKS                       R12 R12 K188 ["join"]
      711 GETTABLEKS                       R13 R2 K189 ["BackgroundStyle"]
      713 GETTABLEKS                       R13 R13 K189 ["BackgroundStyle"]
      715 DUPTABLE                         R14 K205 [{"Color"}]
      716 GETUPVAL                         R15 1
      717 GETTABLEKS                       R15 R15 K50 ["InputFieldBackground"]
      719 SETTABLEKS                       R15 R14 K191 ["Color"]
      721 CALL                             R12 2 1
      722 SETTABLEKS                       R12 R11 K189 ["BackgroundStyle"]
      724 GETUPVAL                         R12 6
      725 GETTABLEKS                       R12 R12 K206 ["Selected"]
      727 GETUPVAL                         R13 4
      728 GETTABLEKS                       R13 R13 K187 ["Dictionary"]
      730 GETTABLEKS                       R13 R13 K188 ["join"]
      732 GETTABLEKS                       R15 R2 K189 ["BackgroundStyle"]
      734 GETUPVAL                         R16 6
      735 GETTABLEKS                       R16 R16 K206 ["Selected"]
      737 GETTABLE                         R14 R15 R16
      738 DUPTABLE                         R15 K190 [{"BackgroundStyle"}]
      739 GETUPVAL                         R16 4
      740 GETTABLEKS                       R16 R16 K187 ["Dictionary"]
      742 GETTABLEKS                       R16 R16 K188 ["join"]
      744 GETTABLEKS                       R18 R2 K189 ["BackgroundStyle"]
      746 GETUPVAL                         R19 6
      747 GETTABLEKS                       R19 R19 K206 ["Selected"]
      749 GETTABLE                         R17 R18 R19
      750 GETTABLEKS                       R17 R17 K189 ["BackgroundStyle"]
      752 DUPTABLE                         R18 K205 [{"Color"}]
      753 GETUPVAL                         R19 1
      754 GETTABLEKS                       R19 R19 K50 ["InputFieldBackground"]
      756 SETTABLEKS                       R19 R18 K191 ["Color"]
      758 CALL                             R16 2 1
      759 SETTABLEKS                       R16 R15 K189 ["BackgroundStyle"]
      761 CALL                             R13 2 1
      762 SETTABLE                         R13 R11 R12
      763 CALL                             R9 2 1
      764 SETTABLEKS                       R9 R8 K189 ["BackgroundStyle"]
      766 SETTABLEKS                       R8 R7 K207 ["&AssetConfigRadioButton"]
      768 CALL                             R5 2 1
      769 SETTABLE                         R5 R3 R4
      770 GETUPVAL                         R4 3
      771 GETTABLEKS                       R4 R4 K208 ["RadioButtonList"]
      773 GETUPVAL                         R5 4
      774 GETTABLEKS                       R5 R5 K187 ["Dictionary"]
      776 GETTABLEKS                       R5 R5 K188 ["join"]
      778 GETUPVAL                         R6 0
      779 LOADK                            R7 K208 ["RadioButtonList"]
      780 CALL                             R6 1 1
      781 NEWTABLE                         R7 1 0
      783 DUPTABLE                         R8 K213 [{["Padding"] = 17, ["RadioButtonStyle"] = "AssetConfigRadioButton"}]
      784 SETTABLEKS                       R8 R7 K214 ["&AssetConfigRadioButtonList"]
      786 CALL                             R5 2 1
      787 SETTABLE                         R5 R3 R4
      788 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["Style"]
       18 GETTABLEKS                       R4 R3 K8 ["StyleKey"]
       20 GETTABLEKS                       R5 R3 K9 ["ComponentSymbols"]
       22 GETTABLEKS                       R6 R3 K10 ["getRawComponentStyle"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R1 K6 ["Framework"]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R7 R7 K11 ["Util"]
       31 GETTABLEKS                       R7 R7 K12 ["StyleModifier"]
       33 GETTABLEKS                       R8 R3 K13 ["Colors"]
       35 GETTABLEKS                       R9 R0 K14 ["Src"]
       37 GETTABLEKS                       R9 R9 K11 ["Util"]
       39 GETIMPORT                        R10 K5 [require]
       41 GETTABLEKS                       R11 R9 K15 ["Constants"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R12 R1 K16 ["Cryo"]
       48 CALL                             R11 1 1
       49 DUPCLOSURE                       R12 K17 [PROTO_0]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R11
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R7
       57 RETURN                           R12 1
