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
       42 DUPTABLE                         R5 K22 [{"textColor", "textErrorColor", "textSize", "bottomTextSpacing"}]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K17 ["DimmedText"]
       46 SETTABLEKS                       R6 R5 K8 ["textColor"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K15 ["ErrorText"]
       51 SETTABLEKS                       R6 R5 K19 ["textErrorColor"]
       53 LOADN                            R6 18
       54 SETTABLEKS                       R6 R5 K20 ["textSize"]
       56 LOADN                            R6 6
       57 SETTABLEKS                       R6 R5 K21 ["bottomTextSpacing"]
       59 SETTABLEKS                       R5 R4 K9 ["inputBottomText"]
       61 DUPTABLE                         R5 K24 [{"warningIconColor"}]
       62 GETIMPORT                        R6 K27 [Color3.fromHex]
       64 LOADK                            R7 K28 ["#FFAA21"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R6 R5 K23 ["warningIconColor"]
       68 SETTABLEKS                       R5 R4 K10 ["publishAsset"]
       70 DUPTABLE                         R5 K33 [{"backgroundColor", "subTextColor", "collaboratorItem", "searchBar", "subjectThumbnail"}]
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K13 ["MainBackground"]
       74 SETTABLEKS                       R6 R5 K3 ["backgroundColor"]
       76 GETUPVAL                         R6 1
       77 GETTABLEKS                       R6 R6 K34 ["SubText"]
       79 SETTABLEKS                       R6 R5 K29 ["subTextColor"]
       81 DUPTABLE                         R6 K36 [{"deleteButton"}]
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K37 ["Toolbox_DeleteIconColor"]
       85 SETTABLEKS                       R7 R6 K35 ["deleteButton"]
       87 SETTABLEKS                       R6 R5 K30 ["collaboratorItem"]
       89 DUPTABLE                         R6 K45 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "searchIcon", "clearButton", "dropDown"}]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K46 ["InputFieldBorder"]
       93 SETTABLEKS                       R7 R6 K38 ["border"]
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R7 R7 K47 ["Blue"]
       98 SETTABLEKS                       R7 R6 K39 ["borderHover"]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K47 ["Blue"]
      103 SETTABLEKS                       R7 R6 K40 ["borderSelected"]
      105 GETUPVAL                         R7 1
      106 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      108 SETTABLEKS                       R7 R6 K41 ["placeholderText"]
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R7 R7 K48 ["InputFieldBackground"]
      113 SETTABLEKS                       R7 R6 K3 ["backgroundColor"]
      115 GETUPVAL                         R7 1
      116 GETTABLEKS                       R7 R7 K34 ["SubText"]
      118 SETTABLEKS                       R7 R6 K42 ["searchIcon"]
      120 DUPTABLE                         R7 K50 [{"image"}]
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R8 R8 K34 ["SubText"]
      124 SETTABLEKS                       R8 R7 K49 ["image"]
      126 SETTABLEKS                       R7 R6 K43 ["clearButton"]
      128 DUPTABLE                         R7 K55 [{"backgroundColor", "itemText", "headerText", "hovered", "selected"}]
      129 GETUPVAL                         R8 1
      130 GETTABLEKS                       R8 R8 K48 ["InputFieldBackground"]
      132 SETTABLEKS                       R8 R7 K3 ["backgroundColor"]
      134 GETUPVAL                         R8 1
      135 GETTABLEKS                       R8 R8 K18 ["MainText"]
      137 SETTABLEKS                       R8 R7 K51 ["itemText"]
      139 GETUPVAL                         R8 1
      140 GETTABLEKS                       R8 R8 K34 ["SubText"]
      142 SETTABLEKS                       R8 R7 K52 ["headerText"]
      144 DUPTABLE                         R8 K56 [{"backgroundColor", "itemText"}]
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K57 ["ItemHovered"]
      148 SETTABLEKS                       R9 R8 K3 ["backgroundColor"]
      150 GETUPVAL                         R9 1
      151 GETTABLEKS                       R9 R9 K58 ["ButtonText"]
      153 SETTABLEKS                       R9 R8 K51 ["itemText"]
      155 SETTABLEKS                       R8 R7 K53 ["hovered"]
      157 DUPTABLE                         R8 K59 [{"backgroundColor"}]
      158 GETUPVAL                         R9 1
      159 GETTABLEKS                       R9 R9 K60 ["ButtonSelected"]
      161 SETTABLEKS                       R9 R8 K3 ["backgroundColor"]
      163 SETTABLEKS                       R8 R7 K54 ["selected"]
      165 SETTABLEKS                       R7 R6 K44 ["dropDown"]
      167 SETTABLEKS                       R6 R5 K31 ["searchBar"]
      169 DUPTABLE                         R6 K62 [{"backgroundColor", "defaultImageColor"}]
      170 GETUPVAL                         R7 1
      171 GETTABLEKS                       R7 R7 K63 ["TableItem"]
      173 SETTABLEKS                       R7 R6 K3 ["backgroundColor"]
      175 GETUPVAL                         R7 1
      176 GETTABLEKS                       R7 R7 K64 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
      178 SETTABLEKS                       R7 R6 K61 ["defaultImageColor"]
      180 SETTABLEKS                       R6 R5 K32 ["subjectThumbnail"]
      182 SETTABLEKS                       R5 R4 K11 ["packagePermissions"]
      184 SETTABLEKS                       R4 R3 K65 ["assetConfig"]
      186 DUPTABLE                         R4 K69 [{"displayText", "descriptionText", "backgroundColor", "borderColor", "hovered"}]
      187 GETUPVAL                         R5 1
      188 GETTABLEKS                       R5 R5 K18 ["MainText"]
      190 SETTABLEKS                       R5 R4 K66 ["displayText"]
      192 GETUPVAL                         R5 1
      193 GETTABLEKS                       R5 R5 K34 ["SubText"]
      195 SETTABLEKS                       R5 R4 K67 ["descriptionText"]
      197 GETUPVAL                         R5 1
      198 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      200 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      202 GETUPVAL                         R5 1
      203 GETTABLEKS                       R5 R5 K70 ["DialogButtonBorder"]
      205 SETTABLEKS                       R5 R4 K68 ["borderColor"]
      207 DUPTABLE                         R5 K71 [{"displayText"}]
      208 GETUPVAL                         R6 1
      209 GETTABLEKS                       R6 R6 K72 ["MainTextHover"]
      211 SETTABLEKS                       R6 R5 K66 ["displayText"]
      213 SETTABLEKS                       R5 R4 K53 ["hovered"]
      215 SETTABLEKS                       R4 R3 K73 ["detailedDropdown"]
      217 DUPTABLE                         R4 K74 [{"backgroundColor", "borderColor"}]
      218 GETUPVAL                         R5 1
      219 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      221 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      223 GETUPVAL                         R5 1
      224 GETTABLEKS                       R5 R5 K75 ["Border"]
      226 SETTABLEKS                       R5 R4 K68 ["borderColor"]
      228 SETTABLEKS                       R4 R3 K76 ["configFooter"]
      230 DUPTABLE                         R4 K79 [{"horizontalLineColor", "verticalLineColor"}]
      231 GETUPVAL                         R5 1
      232 GETTABLEKS                       R5 R5 K80 ["Toolbox_HorizontalLineColor"]
      234 SETTABLEKS                       R5 R4 K77 ["horizontalLineColor"]
      236 GETUPVAL                         R5 1
      237 GETTABLEKS                       R5 R5 K81 ["AssetConfig_DividerHorizontalLineColor"]
      239 SETTABLEKS                       R5 R4 K78 ["verticalLineColor"]
      241 SETTABLEKS                       R4 R3 K82 ["divider"]
      243 DUPTABLE                         R4 K85 [{"backgroundColor", "toolTip", "error"}]
      244 GETUPVAL                         R5 1
      245 GETTABLEKS                       R5 R5 K48 ["InputFieldBackground"]
      247 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      249 GETUPVAL                         R5 1
      250 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      252 SETTABLEKS                       R5 R4 K83 ["toolTip"]
      254 GETUPVAL                         R5 1
      255 GETTABLEKS                       R5 R5 K15 ["ErrorText"]
      257 SETTABLEKS                       R5 R4 K84 ["error"]
      259 SETTABLEKS                       R4 R3 K86 ["inputFields"]
      261 DUPTABLE                         R4 K87 [{"textColor"}]
      262 GETUPVAL                         R5 2
      263 GETTABLEKS                       R5 R5 K47 ["Blue"]
      265 SETTABLEKS                       R5 R4 K8 ["textColor"]
      267 SETTABLEKS                       R4 R3 K88 ["linkButton"]
      269 DUPTABLE                         R4 K90 [{"text"}]
      270 GETUPVAL                         R5 1
      271 GETTABLEKS                       R5 R5 K18 ["MainText"]
      273 SETTABLEKS                       R5 R4 K89 ["text"]
      275 SETTABLEKS                       R4 R3 K91 ["loading"]
      277 DUPTABLE                         R4 K94 [{"mainButton", "button"}]
      278 DUPTABLE                         R5 K98 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
      279 GETUPVAL                         R6 1
      280 GETTABLEKS                       R6 R6 K99 ["DialogMainButton"]
      282 SETTABLEKS                       R6 R5 K95 ["background"]
      284 GETUPVAL                         R6 1
      285 GETTABLEKS                       R6 R6 K100 ["DialogMainButtonHover"]
      287 SETTABLEKS                       R6 R5 K96 ["hoverBackground"]
      289 GETUPVAL                         R6 1
      290 GETTABLEKS                       R6 R6 K101 ["DialogMainButtonPressed"]
      292 SETTABLEKS                       R6 R5 K97 ["pressBackground"]
      294 GETUPVAL                         R6 1
      295 GETTABLEKS                       R6 R6 K75 ["Border"]
      297 SETTABLEKS                       R6 R5 K68 ["borderColor"]
      299 GETUPVAL                         R6 1
      300 GETTABLEKS                       R6 R6 K102 ["DialogMainButtonText"]
      302 SETTABLEKS                       R6 R5 K8 ["textColor"]
      304 SETTABLEKS                       R5 R4 K92 ["mainButton"]
      306 DUPTABLE                         R5 K98 [{"background", "hoverBackground", "pressBackground", "borderColor", "textColor"}]
      307 GETUPVAL                         R6 1
      308 GETTABLEKS                       R6 R6 K103 ["DialogButton"]
      310 SETTABLEKS                       R6 R5 K95 ["background"]
      312 GETUPVAL                         R6 1
      313 GETTABLEKS                       R6 R6 K104 ["DialogButtonHover"]
      315 SETTABLEKS                       R6 R5 K96 ["hoverBackground"]
      317 GETUPVAL                         R6 1
      318 GETTABLEKS                       R6 R6 K105 ["DialogButtonPressed"]
      320 SETTABLEKS                       R6 R5 K97 ["pressBackground"]
      322 GETUPVAL                         R6 1
      323 GETTABLEKS                       R6 R6 K75 ["Border"]
      325 SETTABLEKS                       R6 R5 K68 ["borderColor"]
      327 GETUPVAL                         R6 1
      328 GETTABLEKS                       R6 R6 K106 ["DialogButtonText"]
      330 SETTABLEKS                       R6 R5 K8 ["textColor"]
      332 SETTABLEKS                       R5 R4 K93 ["button"]
      334 SETTABLEKS                       R4 R3 K107 ["nav"]
      336 DUPTABLE                         R4 K109 [{"backgroundColor", "textColor", "selectedColor"}]
      337 GETUPVAL                         R5 1
      338 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      340 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      342 GETUPVAL                         R5 1
      343 GETTABLEKS                       R5 R5 K18 ["MainText"]
      345 SETTABLEKS                       R5 R4 K8 ["textColor"]
      347 GETUPVAL                         R5 1
      348 GETTABLEKS                       R5 R5 K110 ["AssetConfig_PreviewSelectedColor"]
      350 SETTABLEKS                       R5 R4 K108 ["selectedColor"]
      352 SETTABLEKS                       R4 R3 K111 ["previewArea"]
      354 DUPTABLE                         R4 K118 [{"contentColor", "backgroundColor", "selecteBarColor", "selecteBarTrans", "selecteBarZindex", "selecteIndicatorColor", "selecteIndicatorTrans", "textColor"}]
      355 GETUPVAL                         R5 1
      356 GETTABLEKS                       R5 R5 K119 ["TitlebarText"]
      358 SETTABLEKS                       R5 R4 K112 ["contentColor"]
      360 GETUPVAL                         R5 1
      361 GETTABLEKS                       R5 R5 K13 ["MainBackground"]
      363 SETTABLEKS                       R5 R4 K3 ["backgroundColor"]
      365 GETUPVAL                         R5 1
      366 GETTABLEKS                       R5 R5 K120 ["AssetConfig_SidetabSelectedBarColor"]
      368 SETTABLEKS                       R5 R4 K113 ["selecteBarColor"]
      370 GETUPVAL                         R5 1
      371 GETTABLEKS                       R5 R5 K121 ["AssetConfig_SidetabSelectedBarTransparency"]
      373 SETTABLEKS                       R5 R4 K114 ["selecteBarTrans"]
      375 GETUPVAL                         R5 1
      376 GETTABLEKS                       R5 R5 K122 ["AssetConfig_SidetabSelectedBarZIndex"]
      378 SETTABLEKS                       R5 R4 K115 ["selecteBarZindex"]
      380 GETUPVAL                         R5 2
      381 GETTABLEKS                       R5 R5 K123 ["BLUE_PRIMARY"]
      383 SETTABLEKS                       R5 R4 K116 ["selecteIndicatorColor"]
      385 GETUPVAL                         R5 1
      386 GETTABLEKS                       R5 R5 K124 ["AssetConfig_SidetabSelectedIndicatorZindex"]
      388 SETTABLEKS                       R5 R4 K117 ["selecteIndicatorTrans"]
      390 GETUPVAL                         R5 1
      391 GETTABLEKS                       R5 R5 K18 ["MainText"]
      393 SETTABLEKS                       R5 R4 K8 ["textColor"]
      395 SETTABLEKS                       R4 R3 K125 ["sideTab"]
      397 DUPTABLE                         R4 K87 [{"textColor"}]
      398 GETUPVAL                         R5 1
      399 GETTABLEKS                       R5 R5 K18 ["MainText"]
      401 SETTABLEKS                       R5 R4 K8 ["textColor"]
      403 SETTABLEKS                       R4 R3 K126 ["tags"]
      405 DUPTABLE                         R4 K128 [{"background", "border", "text", "warningIconSize"}]
      406 GETUPVAL                         R5 1
      407 GETTABLEKS                       R5 R5 K129 ["Item"]
      409 SETTABLEKS                       R5 R4 K95 ["background"]
      411 GETUPVAL                         R5 1
      412 GETTABLEKS                       R5 R5 K75 ["Border"]
      414 SETTABLEKS                       R5 R4 K38 ["border"]
      416 GETUPVAL                         R5 1
      417 GETTABLEKS                       R5 R5 K18 ["MainText"]
      419 SETTABLEKS                       R5 R4 K89 ["text"]
      421 GETIMPORT                        R5 K132 [UDim2.fromOffset]
      423 LOADN                            R6 64
      424 LOADN                            R7 64
      425 CALL                             R5 2 1
      426 SETTABLEKS                       R5 R4 K127 ["warningIconSize"]
      428 SETTABLEKS                       R4 R3 K133 ["thumbnailPreview"]
      430 DUPTABLE                         R4 K136 [{"background", "selector", "footer"}]
      431 GETUPVAL                         R5 1
      432 GETTABLEKS                       R5 R5 K63 ["TableItem"]
      434 SETTABLEKS                       R5 R4 K95 ["background"]
      436 DUPTABLE                         R5 K139 [{"title", "description"}]
      437 GETUPVAL                         R6 1
      438 GETTABLEKS                       R6 R6 K18 ["MainText"]
      440 SETTABLEKS                       R6 R5 K137 ["title"]
      442 GETUPVAL                         R6 1
      443 GETTABLEKS                       R6 R6 K140 ["MainTextDisabled"]
      445 SETTABLEKS                       R6 R5 K138 ["description"]
      447 SETTABLEKS                       R5 R4 K134 ["selector"]
      449 DUPTABLE                         R5 K141 [{"background", "border"}]
      450 GETUPVAL                         R6 1
      451 GETTABLEKS                       R6 R6 K13 ["MainBackground"]
      453 SETTABLEKS                       R6 R5 K95 ["background"]
      455 GETUPVAL                         R6 1
      456 GETTABLEKS                       R6 R6 K75 ["Border"]
      458 SETTABLEKS                       R6 R5 K38 ["border"]
      460 SETTABLEKS                       R5 R4 K135 ["footer"]
      462 SETTABLEKS                       R4 R3 K142 ["typeSelection"]
      464 DUPTABLE                         R4 K145 [{"background", "successResultColor", "failureResultColor"}]
      465 GETUPVAL                         R5 1
      466 GETTABLEKS                       R5 R5 K63 ["TableItem"]
      468 SETTABLEKS                       R5 R4 K95 ["background"]
      470 GETUPVAL                         R5 1
      471 GETTABLEKS                       R5 R5 K146 ["TextSuccess"]
      473 SETTABLEKS                       R5 R4 K143 ["successResultColor"]
      475 GETUPVAL                         R5 1
      476 GETTABLEKS                       R5 R5 K147 ["TextError"]
      478 SETTABLEKS                       R5 R4 K144 ["failureResultColor"]
      480 SETTABLEKS                       R4 R3 K148 ["typeValidation"]
      482 DUPTABLE                         R4 K154 [{"greenText", "redText", "text", "buttonColor", "idText", "background", "link"}]
      483 GETIMPORT                        R5 K156 [Color3.fromRGB]
      485 LOADN                            R6 2
      486 LOADN                            R7 183
      487 LOADN                            R8 87
      488 CALL                             R5 3 1
      489 SETTABLEKS                       R5 R4 K149 ["greenText"]
      491 GETIMPORT                        R5 K156 [Color3.fromRGB]
      493 LOADN                            R6 255
      494 LOADN                            R7 68
      495 LOADN                            R8 68
      496 CALL                             R5 3 1
      497 SETTABLEKS                       R5 R4 K150 ["redText"]
      499 GETUPVAL                         R5 1
      500 GETTABLEKS                       R5 R5 K18 ["MainText"]
      502 SETTABLEKS                       R5 R4 K89 ["text"]
      504 GETUPVAL                         R5 1
      505 GETTABLEKS                       R5 R5 K157 ["AssetConfig_UploadResultButtonColor"]
      507 SETTABLEKS                       R5 R4 K151 ["buttonColor"]
      509 GETUPVAL                         R5 1
      510 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      512 SETTABLEKS                       R5 R4 K152 ["idText"]
      514 GETUPVAL                         R5 1
      515 GETTABLEKS                       R5 R5 K63 ["TableItem"]
      517 SETTABLEKS                       R5 R4 K95 ["background"]
      519 GETUPVAL                         R5 1
      520 GETTABLEKS                       R5 R5 K158 ["LinkText"]
      522 SETTABLEKS                       R5 R4 K153 ["link"]
      524 SETTABLEKS                       R4 R3 K159 ["uploadResult"]
      526 DUPTABLE                         R4 K164 [{"thumbnailBorderColor", "buttonSelectedColor", "buttonDefaultColor", "textColor", "dimmedTextColor", "errorColor"}]
      527 GETIMPORT                        R5 K156 [Color3.fromRGB]
      529 LOADN                            R6 117
      530 LOADN                            R7 117
      531 LOADN                            R8 117
      532 CALL                             R5 3 1
      533 SETTABLEKS                       R5 R4 K160 ["thumbnailBorderColor"]
      535 GETIMPORT                        R5 K156 [Color3.fromRGB]
      537 LOADN                            R6 0
      538 LOADN                            R7 162
      539 LOADN                            R8 255
      540 CALL                             R5 3 1
      541 SETTABLEKS                       R5 R4 K161 ["buttonSelectedColor"]
      543 GETIMPORT                        R5 K156 [Color3.fromRGB]
      545 LOADN                            R6 117
      546 LOADN                            R7 117
      547 LOADN                            R8 117
      548 CALL                             R5 3 1
      549 SETTABLEKS                       R5 R4 K162 ["buttonDefaultColor"]
      551 GETUPVAL                         R5 1
      552 GETTABLEKS                       R5 R5 K18 ["MainText"]
      554 SETTABLEKS                       R5 R4 K8 ["textColor"]
      556 GETUPVAL                         R5 1
      557 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      559 SETTABLEKS                       R5 R4 K163 ["dimmedTextColor"]
      561 GETUPVAL                         R5 1
      562 GETTABLEKS                       R5 R5 K15 ["ErrorText"]
      564 SETTABLEKS                       R5 R4 K5 ["errorColor"]
      566 SETTABLEKS                       R4 R3 K165 ["versions"]
      568 DUPTABLE                         R4 K173 [{"nameMinWidth", "nameTextSize", "placeholderIconColor", "previewBackgroundColor", "previewSize", "warningColor", "validationIconSize", "validationStyles"}]
      569 LOADN                            R5 200
      570 SETTABLEKS                       R5 R4 K166 ["nameMinWidth"]
      572 LOADN                            R5 20
      573 SETTABLEKS                       R5 R4 K167 ["nameTextSize"]
      575 GETUPVAL                         R5 1
      576 GETTABLEKS                       R5 R5 K17 ["DimmedText"]
      578 SETTABLEKS                       R5 R4 K168 ["placeholderIconColor"]
      580 GETUPVAL                         R5 1
      581 GETTABLEKS                       R5 R5 K174 ["SubBackground"]
      583 SETTABLEKS                       R5 R4 K169 ["previewBackgroundColor"]
      585 LOADN                            R5 60
      586 SETTABLEKS                       R5 R4 K170 ["previewSize"]
      588 GETUPVAL                         R5 1
      589 GETTABLEKS                       R5 R5 K16 ["WarningText"]
      591 SETTABLEKS                       R5 R4 K6 ["warningColor"]
      593 LOADN                            R5 14
      594 SETTABLEKS                       R5 R4 K171 ["validationIconSize"]
      596 DUPTABLE                         R5 K177 [{"error", "pending", "success"}]
      597 DUPTABLE                         R6 K179 [{"iconColor", "textColor"}]
      598 GETUPVAL                         R7 1
      599 GETTABLEKS                       R7 R7 K147 ["TextError"]
      601 SETTABLEKS                       R7 R6 K178 ["iconColor"]
      603 GETUPVAL                         R7 1
      604 GETTABLEKS                       R7 R7 K147 ["TextError"]
      606 SETTABLEKS                       R7 R6 K8 ["textColor"]
      608 SETTABLEKS                       R6 R5 K84 ["error"]
      610 DUPTABLE                         R6 K179 [{"iconColor", "textColor"}]
      611 GETUPVAL                         R7 1
      612 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      614 SETTABLEKS                       R7 R6 K178 ["iconColor"]
      616 GETUPVAL                         R7 1
      617 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      619 SETTABLEKS                       R7 R6 K8 ["textColor"]
      621 SETTABLEKS                       R6 R5 K175 ["pending"]
      623 DUPTABLE                         R6 K179 [{"iconColor", "textColor"}]
      624 GETUPVAL                         R7 1
      625 GETTABLEKS                       R7 R7 K146 ["TextSuccess"]
      627 SETTABLEKS                       R7 R6 K178 ["iconColor"]
      629 GETUPVAL                         R7 1
      630 GETTABLEKS                       R7 R7 K17 ["DimmedText"]
      632 SETTABLEKS                       R7 R6 K8 ["textColor"]
      634 SETTABLEKS                       R6 R5 K176 ["success"]
      636 SETTABLEKS                       R5 R4 K172 ["validationStyles"]
      638 SETTABLEKS                       R4 R3 K180 ["ugcBundleValidation"]
      640 GETUPVAL                         R4 3
      641 GETTABLEKS                       R4 R4 K1 ["Button"]
      643 GETUPVAL                         R5 4
      644 GETTABLEKS                       R5 R5 K181 ["Dictionary"]
      646 GETTABLEKS                       R5 R5 K182 ["join"]
      648 MOVE                             R6 R1
      649 NEWTABLE                         R7 1 0
      651 DUPTABLE                         R8 K184 [{"BackgroundStyle"}]
      652 GETUPVAL                         R9 4
      653 GETTABLEKS                       R9 R9 K181 ["Dictionary"]
      655 GETTABLEKS                       R9 R9 K182 ["join"]
      657 MOVE                             R10 R0
      658 DUPTABLE                         R11 K187 [{"Color", "TextColor"}]
      659 GETUPVAL                         R12 1
      660 GETTABLEKS                       R12 R12 K188 ["ItemSelected"]
      662 SETTABLEKS                       R12 R11 K185 ["Color"]
      664 GETUPVAL                         R12 1
      665 GETTABLEKS                       R12 R12 K189 ["MainTextSelected"]
      667 SETTABLEKS                       R12 R11 K186 ["TextColor"]
      669 CALL                             R9 2 1
      670 SETTABLEKS                       R9 R8 K183 ["BackgroundStyle"]
      672 SETTABLEKS                       R8 R7 K190 ["&SelectedDetailedDropdownItem"]
      674 CALL                             R5 2 1
      675 SETTABLE                         R5 R3 R4
      676 GETUPVAL                         R4 3
      677 GETTABLEKS                       R4 R4 K0 ["RoundBox"]
      679 SETTABLE                         R0 R3 R4
      680 GETUPVAL                         R4 3
      681 GETTABLEKS                       R4 R4 K191 ["StyledDialog"]
      683 GETUPVAL                         R5 4
      684 GETTABLEKS                       R5 R5 K181 ["Dictionary"]
      686 GETTABLEKS                       R5 R5 K182 ["join"]
      688 GETUPVAL                         R6 0
      689 LOADK                            R7 K191 ["StyledDialog"]
      690 CALL                             R6 1 1
      691 NEWTABLE                         R7 1 0
      693 DUPTABLE                         R8 K193 [{"ButtonSpacing"}]
      694 LOADN                            R9 8
      695 SETTABLEKS                       R9 R8 K192 ["ButtonSpacing"]
      697 SETTABLEKS                       R8 R7 K194 ["&AssetConfigWarningDialog"]
      699 CALL                             R5 2 1
      700 SETTABLE                         R5 R3 R4
      701 GETUPVAL                         R4 3
      702 GETTABLEKS                       R4 R4 K2 ["RadioButton"]
      704 GETUPVAL                         R5 4
      705 GETTABLEKS                       R5 R5 K181 ["Dictionary"]
      707 GETTABLEKS                       R5 R5 K182 ["join"]
      709 MOVE                             R6 R2
      710 NEWTABLE                         R7 1 0
      712 DUPTABLE                         R8 K196 [{"TextSize", "BackgroundStyle"}]
      713 GETUPVAL                         R9 5
      714 GETTABLEKS                       R9 R9 K197 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
      716 SETTABLEKS                       R9 R8 K195 ["TextSize"]
      718 GETUPVAL                         R9 4
      719 GETTABLEKS                       R9 R9 K181 ["Dictionary"]
      721 GETTABLEKS                       R9 R9 K182 ["join"]
      723 GETTABLEKS                       R10 R2 K183 ["BackgroundStyle"]
      725 NEWTABLE                         R11 2 0
      727 GETUPVAL                         R12 4
      728 GETTABLEKS                       R12 R12 K181 ["Dictionary"]
      730 GETTABLEKS                       R12 R12 K182 ["join"]
      732 GETTABLEKS                       R13 R2 K183 ["BackgroundStyle"]
      734 GETTABLEKS                       R13 R13 K183 ["BackgroundStyle"]
      736 DUPTABLE                         R14 K198 [{"Color"}]
      737 GETUPVAL                         R15 1
      738 GETTABLEKS                       R15 R15 K48 ["InputFieldBackground"]
      740 SETTABLEKS                       R15 R14 K185 ["Color"]
      742 CALL                             R12 2 1
      743 SETTABLEKS                       R12 R11 K183 ["BackgroundStyle"]
      745 GETUPVAL                         R12 6
      746 GETTABLEKS                       R12 R12 K199 ["Selected"]
      748 GETUPVAL                         R13 4
      749 GETTABLEKS                       R13 R13 K181 ["Dictionary"]
      751 GETTABLEKS                       R13 R13 K182 ["join"]
      753 GETTABLEKS                       R15 R2 K183 ["BackgroundStyle"]
      755 GETUPVAL                         R16 6
      756 GETTABLEKS                       R16 R16 K199 ["Selected"]
      758 GETTABLE                         R14 R15 R16
      759 DUPTABLE                         R15 K184 [{"BackgroundStyle"}]
      760 GETUPVAL                         R16 4
      761 GETTABLEKS                       R16 R16 K181 ["Dictionary"]
      763 GETTABLEKS                       R16 R16 K182 ["join"]
      765 GETTABLEKS                       R18 R2 K183 ["BackgroundStyle"]
      767 GETUPVAL                         R19 6
      768 GETTABLEKS                       R19 R19 K199 ["Selected"]
      770 GETTABLE                         R17 R18 R19
      771 GETTABLEKS                       R17 R17 K183 ["BackgroundStyle"]
      773 DUPTABLE                         R18 K198 [{"Color"}]
      774 GETUPVAL                         R19 1
      775 GETTABLEKS                       R19 R19 K48 ["InputFieldBackground"]
      777 SETTABLEKS                       R19 R18 K185 ["Color"]
      779 CALL                             R16 2 1
      780 SETTABLEKS                       R16 R15 K183 ["BackgroundStyle"]
      782 CALL                             R13 2 1
      783 SETTABLE                         R13 R11 R12
      784 CALL                             R9 2 1
      785 SETTABLEKS                       R9 R8 K183 ["BackgroundStyle"]
      787 SETTABLEKS                       R8 R7 K200 ["&AssetConfigRadioButton"]
      789 CALL                             R5 2 1
      790 SETTABLE                         R5 R3 R4
      791 GETUPVAL                         R4 3
      792 GETTABLEKS                       R4 R4 K201 ["RadioButtonList"]
      794 GETUPVAL                         R5 4
      795 GETTABLEKS                       R5 R5 K181 ["Dictionary"]
      797 GETTABLEKS                       R5 R5 K182 ["join"]
      799 GETUPVAL                         R6 0
      800 LOADK                            R7 K201 ["RadioButtonList"]
      801 CALL                             R6 1 1
      802 NEWTABLE                         R7 1 0
      804 DUPTABLE                         R8 K204 [{"Padding", "RadioButtonStyle"}]
      805 LOADN                            R9 17
      806 SETTABLEKS                       R9 R8 K202 ["Padding"]
      808 LOADK                            R9 K205 ["AssetConfigRadioButton"]
      809 SETTABLEKS                       R9 R8 K203 ["RadioButtonStyle"]
      811 SETTABLEKS                       R8 R7 K206 ["&AssetConfigRadioButtonList"]
      813 CALL                             R5 2 1
      814 SETTABLE                         R5 R3 R4
      815 RETURN                           R3 1

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
