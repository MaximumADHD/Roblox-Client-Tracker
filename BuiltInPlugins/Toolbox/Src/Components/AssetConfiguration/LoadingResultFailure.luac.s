PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R2 R0 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["View"]
       10 DUPTABLE                         R5 K8 [{["tag"] = "col align-x-center align-y-top gap-small", ["Position"], ["Size"]}]
       11 GETIMPORT                        R6 K11 [UDim2.new]
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 LOADN                            R9 0
       16 LOADN                            R10 279
       17 CALL                             R6 4 1
       18 SETTABLEKS                       R6 R5 K6 ["Position"]
       20 GETIMPORT                        R6 K11 [UDim2.new]
       22 LOADN                            R7 1
       23 LOADN                            R8 0
       24 LOADN                            R9 1
       25 LOADN                            R10 -279
       26 CALL                             R6 4 1
       27 SETTABLEKS                       R6 R5 K7 ["Size"]
       29 DUPTABLE                         R6 K14 [{"Title", "ReasonWithDashboardLink"}]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K2 ["createElement"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K15 ["Text"]
       36 DUPTABLE                         R9 K17 [{["tag"] = "auto-xy text-title-large text-align-x-center content-system-alert", ["Text"]}]
       37 LOADK                            R12 K18 ["AssetUploadResult"]
       38 LOADK                            R13 K19 ["SubmissionFailed"]
       39 NAMECALL                         R10 R1 K20 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K15 ["Text"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K12 ["Title"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K2 ["createElement"]
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R9 K29 [{["AutomaticSize"], ["HorizontalAlignment"], ["LinkPlaceholder"], ["LinkText"], ["MaxWidth"] = 400, ["OnLinkClicked"], ["Text"], ["TextProps"]}]
       52 GETIMPORT                        R10 K32 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R10 R9 K21 ["AutomaticSize"]
       56 GETIMPORT                        R10 K34 [Enum.HorizontalAlignment.Center]
       58 SETTABLEKS                       R10 R9 K22 ["HorizontalAlignment"]
       60 GETUPVAL                         R10 3
       61 GETTABLEKS                       R10 R10 K35 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       63 SETTABLEKS                       R10 R9 K23 ["LinkPlaceholder"]
       65 LOADK                            R12 K36 ["General"]
       66 LOADK                            R13 K37 ["CreatorDashboard"]
       67 NAMECALL                         R10 R1 K20 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K24 ["LinkText"]
       72 GETTABLEKS                       R10 R0 K38 ["onDashboardLinkClicked"]
       74 SETTABLEKS                       R10 R9 K27 ["OnLinkClicked"]
       76 GETTABLEKS                       R11 R0 K39 ["networkError"]
       78 JUMPIFNOT                        R11 ; [+5]
       79 GETTABLEKS                       R10 R0 K39 ["networkError"]
       81 GETTABLEKS                       R10 R10 K40 ["responseBody"]
       83 JUMPIF                           R10 ; [+1]
       84 LOADK                            R10 K41 [""]
       85 SETTABLEKS                       R10 R9 K15 ["Text"]
       87 DUPTABLE                         R10 K49 [{["Font"], ["TextColor"], ["TextSelectable"] = True, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K50 ["FONT"]
       91 SETTABLEKS                       R11 R10 K42 ["Font"]
       93 GETTABLEKS                       R11 R2 K51 ["uploadResult"]
       95 GETTABLEKS                       R11 R11 K52 ["text"]
       97 SETTABLEKS                       R11 R10 K43 ["TextColor"]
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K53 ["FONT_SIZE_MEDIUM"]
      102 SETTABLEKS                       R11 R10 K46 ["TextSize"]
      104 GETIMPORT                        R11 K54 [Enum.TextXAlignment.Center]
      106 SETTABLEKS                       R11 R10 K47 ["TextXAlignment"]
      108 GETIMPORT                        R11 K56 [Enum.TextYAlignment.Top]
      110 SETTABLEKS                       R11 R10 K48 ["TextYAlignment"]
      112 SETTABLEKS                       R10 R9 K28 ["TextProps"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K13 ["ReasonWithDashboardLink"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["UI"]
       30 GETTABLEKS                       R5 R5 K10 ["TextWithInlineLink"]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K13 ["Constants"]
       40 CALL                             R7 1 1
       41 DUPCLOSURE                       R8 K14 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R7
       46 RETURN                           R8 1
