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
       18 DUPTABLE                         R5 K10 [{"tag", "Position", "Size"}]
       19 LOADK                            R6 K11 ["col align-x-center align-y-top gap-small"]
       20 SETTABLEKS                       R6 R5 K7 ["tag"]
       22 GETIMPORT                        R6 K14 [UDim2.new]
       24 LOADN                            R7 0
       25 LOADN                            R8 0
       26 LOADN                            R9 0
       27 LOADN                            R10 23
       28 CALL                             R6 4 1
       29 SETTABLEKS                       R6 R5 K8 ["Position"]
       31 GETIMPORT                        R6 K14 [UDim2.new]
       33 LOADN                            R7 1
       34 LOADN                            R8 0
       35 LOADN                            R9 1
       36 LOADN                            R10 233
       37 CALL                             R6 4 1
       38 SETTABLEKS                       R6 R5 K9 ["Size"]
       40 DUPTABLE                         R6 K17 [{"Title", "ReasonWithDashboardLink"}]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["createElement"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K18 ["Text"]
       47 DUPTABLE                         R9 K19 [{"tag", "Text"}]
       48 LOADK                            R10 K20 ["auto-xy text-title-large text-align-x-center content-system-alert"]
       49 SETTABLEKS                       R10 R9 K7 ["tag"]
       51 LOADK                            R12 K21 ["AssetUploadResult"]
       52 LOADK                            R13 K22 ["SubmissionFailed"]
       53 NAMECALL                         R10 R1 K23 ["getText"]
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K18 ["Text"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K15 ["Title"]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K5 ["createElement"]
       64 GETUPVAL                         R8 3
       65 DUPTABLE                         R9 K31 [{"AutomaticSize", "HorizontalAlignment", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
       66 GETIMPORT                        R10 K34 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       70 GETIMPORT                        R10 K36 [Enum.HorizontalAlignment.Center]
       72 SETTABLEKS                       R10 R9 K25 ["HorizontalAlignment"]
       74 GETUPVAL                         R10 4
       75 GETTABLEKS                       R10 R10 K37 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       77 SETTABLEKS                       R10 R9 K26 ["LinkPlaceholder"]
       79 LOADK                            R12 K38 ["General"]
       80 LOADK                            R13 K39 ["CreatorDashboard"]
       81 NAMECALL                         R10 R1 K23 ["getText"]
       83 CALL                             R10 3 1
       84 SETTABLEKS                       R10 R9 K27 ["LinkText"]
       86 LOADN                            R10 144
       87 SETTABLEKS                       R10 R9 K28 ["MaxWidth"]
       89 GETTABLEKS                       R10 R0 K40 ["onDashboardLinkClicked"]
       91 SETTABLEKS                       R10 R9 K29 ["OnLinkClicked"]
       93 GETTABLEKS                       R11 R0 K41 ["networkError"]
       95 JUMPIFNOT                        R11 ; [+5]
       96 GETTABLEKS                       R10 R0 K41 ["networkError"]
       98 GETTABLEKS                       R10 R10 K42 ["responseBody"]
      100 JUMPIF                           R10 ; [+1]
      101 LOADK                            R10 K43 [""]
      102 SETTABLEKS                       R10 R9 K18 ["Text"]
      104 DUPTABLE                         R10 K50 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
      105 GETUPVAL                         R11 4
      106 GETTABLEKS                       R11 R11 K51 ["FONT"]
      108 SETTABLEKS                       R11 R10 K44 ["Font"]
      110 GETTABLEKS                       R11 R2 K52 ["uploadResult"]
      112 GETTABLEKS                       R11 R11 K53 ["text"]
      114 SETTABLEKS                       R11 R10 K45 ["TextColor"]
      116 LOADB                            R11 1
      117 SETTABLEKS                       R11 R10 K46 ["TextSelectable"]
      119 GETUPVAL                         R11 4
      120 GETTABLEKS                       R11 R11 K54 ["FONT_SIZE_MEDIUM"]
      122 SETTABLEKS                       R11 R10 K47 ["TextSize"]
      124 GETIMPORT                        R11 K55 [Enum.TextXAlignment.Center]
      126 SETTABLEKS                       R11 R10 K48 ["TextXAlignment"]
      128 GETIMPORT                        R11 K57 [Enum.TextYAlignment.Top]
      130 SETTABLEKS                       R11 R10 K49 ["TextYAlignment"]
      132 SETTABLEKS                       R10 R9 K30 ["TextProps"]
      134 CALL                             R7 2 1
      135 SETTABLEKS                       R7 R6 K16 ["ReasonWithDashboardLink"]
      137 CALL                             R3 3 -1
      138 RETURN                           R3 -1

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
