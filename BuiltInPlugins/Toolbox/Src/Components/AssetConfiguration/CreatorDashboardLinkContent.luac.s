PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructCreatorDashboardAssetConfigUrl"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["assetId"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 JUMPIFEQKS                       R0 K3 [""] ; [+6]
       12 GETUPVAL                         R1 2
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K4 ["OpenBrowserWindow"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R1 R0 K2 ["openCreatorDashboardConfigureLink"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["layoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["size"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 NEWTABLE                         R6 4 0
       12 SETTABLEKS                       R3 R6 K4 ["Size"]
       14 LOADN                            R7 1
       15 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       17 SETTABLEKS                       R2 R6 K6 ["LayoutOrder"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["Ref"]
       22 GETTABLEKS                       R8 R0 K8 ["frameRef"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K11 [{"Padding", "Body"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K3 ["createElement"]
       29 LOADK                            R9 K12 ["UIPadding"]
       30 DUPTABLE                         R10 K17 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       31 GETIMPORT                        R11 K20 [UDim.new]
       33 LOADN                            R12 0
       34 LOADN                            R13 30
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K13 ["PaddingTop"]
       38 GETIMPORT                        R11 K20 [UDim.new]
       40 LOADN                            R12 0
       41 LOADN                            R13 30
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K14 ["PaddingBottom"]
       45 GETIMPORT                        R11 K20 [UDim.new]
       47 LOADN                            R12 0
       48 LOADN                            R13 30
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K15 ["PaddingLeft"]
       52 GETIMPORT                        R11 K20 [UDim.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 30
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K16 ["PaddingRight"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K9 ["Padding"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K3 ["createElement"]
       65 GETUPVAL                         R9 2
       66 DUPTABLE                         R10 K32 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "{creatorDashboardLink}", ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 500, ["TextProps"]}]
       67 GETTABLEKS                       R11 R0 K33 ["openCreatorDashboardConfigureLink"]
       69 SETTABLEKS                       R11 R10 K21 ["OnLinkClicked"]
       71 GETTABLEKS                       R11 R0 K0 ["props"]
       73 GETTABLEKS                       R11 R11 K34 ["Localization"]
       75 LOADK                            R13 K35 ["General"]
       76 LOADK                            R14 K36 ["CreatorDashboardLinkMessage"]
       77 DUPTABLE                         R15 K38 [{["creatorDashboardLink"] = "{creatorDashboardLink}"}]
       78 NAMECALL                         R11 R11 K39 ["getText"]
       80 CALL                             R11 4 1
       81 SETTABLEKS                       R11 R10 K22 ["Text"]
       83 GETTABLEKS                       R11 R0 K0 ["props"]
       85 GETTABLEKS                       R11 R11 K34 ["Localization"]
       87 LOADK                            R13 K35 ["General"]
       88 LOADK                            R14 K40 ["CreatorDashboard"]
       89 DUPTABLE                         R15 K38 [{["creatorDashboardLink"] = "{creatorDashboardLink}"}]
       90 NAMECALL                         R11 R11 K39 ["getText"]
       92 CALL                             R11 4 1
       93 SETTABLEKS                       R11 R10 K23 ["LinkText"]
       95 GETIMPORT                        R11 K43 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
       99 GETIMPORT                        R11 K45 [Enum.TextXAlignment.Center]
      101 SETTABLEKS                       R11 R10 K27 ["TextXAlignment"]
      103 GETIMPORT                        R11 K46 [Enum.HorizontalAlignment.Center]
      105 SETTABLEKS                       R11 R10 K28 ["HorizontalAlignment"]
      107 DUPTABLE                         R11 K50 [{["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextXAlignment"]}]
      108 GETUPVAL                         R12 3
      109 GETTABLEKS                       R12 R12 K51 ["FONT"]
      111 SETTABLEKS                       R12 R11 K48 ["Font"]
      113 GETUPVAL                         R12 3
      114 GETTABLEKS                       R12 R12 K52 ["FONT_SIZE_TITLE"]
      116 SETTABLEKS                       R12 R11 K49 ["TextSize"]
      118 GETIMPORT                        R12 K45 [Enum.TextXAlignment.Center]
      120 SETTABLEKS                       R12 R11 K27 ["TextXAlignment"]
      122 SETTABLEKS                       R11 R10 K31 ["TextProps"]
      124 CALL                             R8 2 1
      125 SETTABLEKS                       R8 R7 K10 ["Body"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K2 [{"assetId", "assetTypeEnum"}]
        6 GETTABLEKS                       R3 R0 K0 ["assetId"]
        8 SETTABLEKS                       R3 R2 K0 ["assetId"]
       10 GETTABLEKS                       R3 R0 K1 ["assetTypeEnum"]
       12 SETTABLEKS                       R3 R2 K1 ["assetTypeEnum"]
       14 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["SIDE_TABS"]
        5 GETTABLEKS                       R4 R4 K1 ["Sales"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"setFieldError"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["setFieldError"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["GuiService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K14 ["withContext"]
       38 GETIMPORT                        R8 K9 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Actions"]
       44 GETTABLEKS                       R9 R9 K17 ["SetFieldError"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K9 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Util"]
       53 GETTABLEKS                       R10 R10 K19 ["Urls"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R5 K20 ["UI"]
       58 GETTABLEKS                       R10 R10 K21 ["ScrollingFrame"]
       60 GETTABLEKS                       R11 R5 K20 ["UI"]
       62 GETTABLEKS                       R11 R11 K22 ["TextWithInlineLink"]
       64 GETTABLEKS                       R12 R0 K15 ["Src"]
       66 GETTABLEKS                       R12 R12 K18 ["Util"]
       68 GETIMPORT                        R13 K9 [require]
       70 GETTABLEKS                       R14 R12 K23 ["Constants"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K9 [require]
       75 GETTABLEKS                       R15 R12 K24 ["AssetConfigConstants"]
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R15 R3 K25 ["PureComponent"]
       80 LOADK                            R17 K26 ["CreatorDashboardLinkContent"]
       81 NAMECALL                         R15 R15 K27 ["extend"]
       83 CALL                             R15 2 1
       84 DUPCLOSURE                       R16 K28 [PROTO_1]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R16 R15 K29 ["init"]
       90 DUPCLOSURE                       R16 K30 [PROTO_2]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R13
       95 SETTABLEKS                       R16 R15 K31 ["render"]
       97 DUPCLOSURE                       R16 K32 [PROTO_3]
       98 DUPCLOSURE                       R17 K33 [PROTO_5]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R14
      101 MOVE                             R18 R7
      102 DUPTABLE                         R19 K36 [{"Stylizer", "Localization"}]
      103 GETTABLEKS                       R20 R6 K34 ["Stylizer"]
      105 SETTABLEKS                       R20 R19 K34 ["Stylizer"]
      107 GETTABLEKS                       R20 R6 K35 ["Localization"]
      109 SETTABLEKS                       R20 R19 K35 ["Localization"]
      111 CALL                             R18 1 1
      112 MOVE                             R19 R15
      113 CALL                             R18 1 1
      114 MOVE                             R15 R18
      115 GETTABLEKS                       R18 R4 K37 ["connect"]
      117 MOVE                             R19 R16
      118 MOVE                             R20 R17
      119 CALL                             R18 2 1
      120 MOVE                             R19 R15
      121 CALL                             R18 1 -1
      122 RETURN                           R18 -1
