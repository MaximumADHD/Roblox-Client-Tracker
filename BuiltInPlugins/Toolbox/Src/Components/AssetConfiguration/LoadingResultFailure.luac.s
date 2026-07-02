PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["LoadingResultFailure is only supported when FFlagToolboxAssetConfigFoundationMigration is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["Localization"]
       10 GETTABLEKS                       R2 R0 K4 ["Stylizer"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["createElement"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K6 ["View"]
       18 DUPTABLE                         R5 K11 [{["tag"] = "col align-x-center align-y-top gap-small", ["Position"], ["Size"]}]
       19 GETIMPORT                        R6 K14 [UDim2.new]
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 LOADN                            R9 0
       24 LOADN                            R10 279
       25 CALL                             R6 4 1
       26 SETTABLEKS                       R6 R5 K9 ["Position"]
       28 GETIMPORT                        R6 K14 [UDim2.new]
       30 LOADN                            R7 1
       31 LOADN                            R8 0
       32 LOADN                            R9 1
       33 LOADN                            R10 -279
       34 CALL                             R6 4 1
       35 SETTABLEKS                       R6 R5 K10 ["Size"]
       37 DUPTABLE                         R6 K17 [{"Title", "ReasonWithDashboardLink"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K5 ["createElement"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K18 ["Text"]
       44 DUPTABLE                         R9 K20 [{["tag"] = "auto-xy text-title-large text-align-x-center content-system-alert", ["Text"]}]
       45 LOADK                            R12 K21 ["AssetUploadResult"]
       46 LOADK                            R13 K22 ["SubmissionFailed"]
       47 NAMECALL                         R10 R1 K23 ["getText"]
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K18 ["Text"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K15 ["Title"]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K5 ["createElement"]
       58 GETUPVAL                         R8 3
       59 DUPTABLE                         R9 K32 [{["AutomaticSize"], ["HorizontalAlignment"], ["LinkPlaceholder"], ["LinkText"], ["MaxWidth"] = 400, ["OnLinkClicked"], ["Text"], ["TextProps"]}]
       60 GETIMPORT                        R10 K35 [Enum.AutomaticSize.Y]
       62 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       64 GETIMPORT                        R10 K37 [Enum.HorizontalAlignment.Center]
       66 SETTABLEKS                       R10 R9 K25 ["HorizontalAlignment"]
       68 GETUPVAL                         R10 4
       69 GETTABLEKS                       R10 R10 K38 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       71 SETTABLEKS                       R10 R9 K26 ["LinkPlaceholder"]
       73 LOADK                            R12 K39 ["General"]
       74 LOADK                            R13 K40 ["CreatorDashboard"]
       75 NAMECALL                         R10 R1 K23 ["getText"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K27 ["LinkText"]
       80 GETTABLEKS                       R10 R0 K41 ["onDashboardLinkClicked"]
       82 SETTABLEKS                       R10 R9 K30 ["OnLinkClicked"]
       84 GETTABLEKS                       R11 R0 K42 ["networkError"]
       86 JUMPIFNOT                        R11 ; [+5]
       87 GETTABLEKS                       R10 R0 K42 ["networkError"]
       89 GETTABLEKS                       R10 R10 K43 ["responseBody"]
       91 JUMPIF                           R10 ; [+1]
       92 LOADK                            R10 K44 [""]
       93 SETTABLEKS                       R10 R9 K18 ["Text"]
       95 DUPTABLE                         R10 K52 [{["Font"], ["TextColor"], ["TextSelectable"] = True, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
       96 GETUPVAL                         R11 4
       97 GETTABLEKS                       R11 R11 K53 ["FONT"]
       99 SETTABLEKS                       R11 R10 K45 ["Font"]
      101 GETTABLEKS                       R11 R2 K54 ["uploadResult"]
      103 GETTABLEKS                       R11 R11 K55 ["text"]
      105 SETTABLEKS                       R11 R10 K46 ["TextColor"]
      107 GETUPVAL                         R11 4
      108 GETTABLEKS                       R11 R11 K56 ["FONT_SIZE_MEDIUM"]
      110 SETTABLEKS                       R11 R10 K49 ["TextSize"]
      112 GETIMPORT                        R11 K57 [Enum.TextXAlignment.Center]
      114 SETTABLEKS                       R11 R10 K50 ["TextXAlignment"]
      116 GETIMPORT                        R11 K59 [Enum.TextYAlignment.Top]
      118 SETTABLEKS                       R11 R10 K51 ["TextYAlignment"]
      120 SETTABLEKS                       R10 R9 K31 ["TextProps"]
      122 CALL                             R7 2 1
      123 SETTABLEKS                       R7 R6 K16 ["ReasonWithDashboardLink"]
      125 CALL                             R3 3 -1
      126 RETURN                           R3 -1

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
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R9 R9 K14 ["Flags"]
       47 GETTABLEKS                       R9 R9 K15 ["getFFlagToolboxAssetConfigFoundationMigration"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K16 [PROTO_0]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 RETURN                           R9 1
