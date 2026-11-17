PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["Modal"]
       10 GETTABLEKS                       R1 R0 K6 ["onTooltipTriggered"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K7 ["assetId"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K8 ["TOOLTIP_TYPE"]
       18 GETTABLEKS                       R3 R3 K9 ["HIGH_QUALITY_BADGE"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onIdVerificationIconClicked"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["assetId"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["getVerificationDocumentationUrl"]
       13 CALL                             R2 0 -1
       14 NAMECALL                         R0 R0 K4 ["OpenBrowserWindow"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R0 K6 ["onActivated"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["assetId"]
        4 GETTABLEKS                       R3 R0 K2 ["onMouseEnter"]
        6 GETTABLEKS                       R4 R0 K3 ["onMouseLeave"]
        8 GETTABLEKS                       R5 R0 K4 ["state"]
       10 GETTABLEKS                       R5 R5 K5 ["isHovered"]
       12 GETTABLEKS                       R6 R1 K6 ["Modal"]
       14 GETTABLEKS                       R6 R6 K7 ["modalStatus"]
       16 MOVE                             R9 R2
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K8 ["TOOLTIP_TYPE"]
       20 GETTABLEKS                       R10 R10 K9 ["HIGH_QUALITY_BADGE"]
       22 NAMECALL                         R7 R6 K10 ["canShowCurrentTooltip"]
       24 CALL                             R7 3 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K11 ["WARNING_ICON_SMALL"]
       28 GETTABLEKS                       R9 R1 K12 ["Localization"]
       30 LOADK                            R11 K13 ["General"]
       31 LOADK                            R12 K14 ["UnverifiedCreatorBadgeTooltipText"]
       32 NAMECALL                         R9 R9 K15 ["getText"]
       34 CALL                             R9 3 1
       35 GETTABLEKS                       R10 R1 K16 ["Stylizer"]
       37 GETTABLEKS                       R11 R10 K17 ["asset"]
       39 GETTABLEKS                       R11 R11 K18 ["icon"]
       41 GETTABLEKS                       R11 R11 K19 ["warningColor"]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K20 ["createElement"]
       46 LOADK                            R13 K21 ["ImageButton"]
       47 NEWTABLE                         R14 16 0
       49 GETTABLEKS                       R15 R1 K22 ["AnchorPoint"]
       51 SETTABLEKS                       R15 R14 K22 ["AnchorPoint"]
       53 GETTABLEKS                       R15 R1 K23 ["Position"]
       55 SETTABLEKS                       R15 R14 K23 ["Position"]
       57 GETTABLEKS                       R15 R1 K24 ["LayoutOrder"]
       59 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
       61 LOADN                            R15 1
       62 SETTABLEKS                       R15 R14 K25 ["BackgroundTransparency"]
       64 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       66 LOADN                            R16 13
       67 LOADN                            R17 13
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K29 ["Size"]
       71 SETTABLEKS                       R8 R14 K30 ["Image"]
       73 SETTABLEKS                       R11 R14 K31 ["ImageColor3"]
       75 LOADN                            R15 2
       76 SETTABLEKS                       R15 R14 K32 ["ZIndex"]
       78 GETUPVAL                         R15 2
       79 GETTABLEKS                       R15 R15 K33 ["Event"]
       81 GETTABLEKS                       R15 R15 K34 ["Activated"]
       83 GETTABLEKS                       R16 R0 K35 ["onActivated"]
       85 SETTABLE                         R16 R14 R15
       86 GETUPVAL                         R15 2
       87 GETTABLEKS                       R15 R15 K33 ["Event"]
       89 GETTABLEKS                       R15 R15 K36 ["MouseEnter"]
       91 SETTABLE                         R3 R14 R15
       92 GETUPVAL                         R15 2
       93 GETTABLEKS                       R15 R15 K33 ["Event"]
       95 GETTABLEKS                       R15 R15 K37 ["MouseLeave"]
       97 SETTABLE                         R4 R14 R15
       98 DUPTABLE                         R15 K39 [{"TooltipWrapper"}]
       99 MOVE                             R16 R5
      100 JUMPIFNOT                        R16 ; [+12]
      101 GETUPVAL                         R16 2
      102 GETTABLEKS                       R16 R16 K20 ["createElement"]
      104 GETUPVAL                         R17 3
      105 DUPTABLE                         R18 K41 [{"Text", "canShowCurrentTooltip", "isHovered"}]
      106 SETTABLEKS                       R9 R18 K40 ["Text"]
      108 SETTABLEKS                       R7 R18 K10 ["canShowCurrentTooltip"]
      110 SETTABLEKS                       R5 R18 K5 ["isHovered"]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K38 ["TooltipWrapper"]
      115 CALL                             R12 3 -1
      116 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Framework"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       31 GETTABLEKS                       R6 R5 K13 ["withContext"]
       33 GETIMPORT                        R7 K9 [require]
       35 GETTABLEKS                       R8 R1 K14 ["Src"]
       37 GETTABLEKS                       R8 R8 K15 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["Analytics"]
       41 GETTABLEKS                       R8 R8 K16 ["Analytics"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R1 K14 ["Src"]
       48 GETTABLEKS                       R9 R9 K15 ["Util"]
       50 GETTABLEKS                       R9 R9 K17 ["Constants"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K9 [require]
       55 GETTABLEKS                       R10 R1 K14 ["Src"]
       57 GETTABLEKS                       R10 R10 K15 ["Util"]
       59 GETTABLEKS                       R10 R10 K18 ["Images"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K9 [require]
       64 GETTABLEKS                       R11 R1 K14 ["Src"]
       66 GETTABLEKS                       R11 R11 K15 ["Util"]
       68 GETTABLEKS                       R11 R11 K19 ["ToolboxUtilities"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K9 [require]
       73 GETTABLEKS                       R12 R1 K14 ["Src"]
       75 GETTABLEKS                       R12 R12 K12 ["ContextServices"]
       77 GETTABLEKS                       R12 R12 K20 ["ModalContext"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K9 [require]
       82 GETTABLEKS                       R13 R1 K14 ["Src"]
       84 GETTABLEKS                       R13 R13 K21 ["Components"]
       86 GETTABLEKS                       R13 R13 K22 ["TooltipWrapper"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R13 R3 K23 ["PureComponent"]
       91 LOADK                            R15 K24 ["VerifiedCreatorBadge"]
       92 NAMECALL                         R13 R13 K25 ["extend"]
       94 CALL                             R13 2 1
       95 DUPCLOSURE                       R14 K26 [PROTO_3]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R14 R13 K27 ["init"]
      102 DUPCLOSURE                       R14 K28 [PROTO_4]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R14 R13 K29 ["render"]
      109 MOVE                             R14 R6
      110 DUPTABLE                         R15 K33 [{"Localization", "Stylizer", "Modal"}]
      111 GETTABLEKS                       R16 R5 K30 ["Localization"]
      113 SETTABLEKS                       R16 R15 K30 ["Localization"]
      115 GETTABLEKS                       R16 R5 K31 ["Stylizer"]
      117 SETTABLEKS                       R16 R15 K31 ["Stylizer"]
      119 SETTABLEKS                       R11 R15 K32 ["Modal"]
      121 CALL                             R14 1 1
      122 MOVE                             R15 R13
      123 CALL                             R14 1 1
      124 MOVE                             R13 R14
      125 RETURN                           R13 1
