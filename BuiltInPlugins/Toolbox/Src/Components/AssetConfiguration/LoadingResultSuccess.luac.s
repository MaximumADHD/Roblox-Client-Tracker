PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["creatorStoreConfigurationUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["url"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R2 R0 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 LOADK                            R6 K3 ["AssetUploadResult"]
        9 LOADK                            R7 K4 ["SubmissionSucceeded"]
       10 NAMECALL                         R4 R1 K5 ["getText"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K6 ["createElement"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K7 ["View"]
       19 DUPTABLE                         R7 K11 [{"tag", "Position", "Size"}]
       20 LOADK                            R8 K12 ["col align-x-center align-y-top gap-small"]
       21 SETTABLEKS                       R8 R7 K8 ["tag"]
       23 GETIMPORT                        R8 K14 [UDim2.new]
       25 LOADN                            R9 0
       26 LOADN                            R10 0
       27 LOADN                            R11 0
       28 LOADN                            R12 23
       29 CALL                             R8 4 1
       30 SETTABLEKS                       R8 R7 K9 ["Position"]
       32 GETIMPORT                        R8 K14 [UDim2.new]
       34 LOADN                            R9 1
       35 LOADN                            R10 0
       36 LOADN                            R11 1
       37 LOADN                            R12 233
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K10 ["Size"]
       41 DUPTABLE                         R8 K17 [{"Title", "Rows"}]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K6 ["createElement"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K18 ["Text"]
       48 DUPTABLE                         R11 K21 [{"tag", "Text", "textStyle", "LayoutOrder"}]
       49 LOADK                            R12 K22 ["auto-xy text-title-medium text-align-x-center"]
       50 SETTABLEKS                       R12 R11 K8 ["tag"]
       52 SETTABLEKS                       R4 R11 K18 ["Text"]
       54 DUPTABLE                         R12 K24 [{"Color3"}]
       55 GETTABLEKS                       R13 R2 K25 ["uploadResult"]
       57 GETTABLEKS                       R13 R13 K26 ["greenText"]
       59 SETTABLEKS                       R13 R12 K23 ["Color3"]
       61 SETTABLEKS                       R12 R11 K19 ["textStyle"]
       63 NAMECALL                         R12 R3 K27 ["getNextOrder"]
       65 CALL                             R12 1 1
       66 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       68 CALL                             R9 2 1
       69 SETTABLEKS                       R9 R8 K15 ["Title"]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K6 ["createElement"]
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R10 R10 K7 ["View"]
       77 DUPTABLE                         R11 K29 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
       78 LOADK                            R12 K30 ["col align-x-center gap-small"]
       79 SETTABLEKS                       R12 R11 K8 ["tag"]
       81 GETIMPORT                        R12 K14 [UDim2.new]
       83 LOADN                            R13 1
       84 LOADN                            R14 0
       85 LOADN                            R15 0
       86 LOADN                            R16 0
       87 CALL                             R12 4 1
       88 SETTABLEKS                       R12 R11 K10 ["Size"]
       90 GETIMPORT                        R12 K33 [Enum.AutomaticSize.Y]
       92 SETTABLEKS                       R12 R11 K28 ["AutomaticSize"]
       94 NAMECALL                         R12 R3 K27 ["getNextOrder"]
       96 CALL                             R12 1 1
       97 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       99 DUPTABLE                         R12 K40 [{"ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      100 GETTABLEKS                       R14 R0 K41 ["showModeration"]
      102 JUMPIFNOT                        R14 ; [+22]
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R13 R13 K6 ["createElement"]
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K18 ["Text"]
      109 DUPTABLE                         R15 K42 [{"tag", "Text", "LayoutOrder"}]
      110 LOADK                            R16 K43 ["auto-y text-body-medium text-align-x-center"]
      111 SETTABLEKS                       R16 R15 K8 ["tag"]
      113 LOADK                            R18 K3 ["AssetUploadResult"]
      114 LOADK                            R19 K44 ["AddedToModerationQueueMessage"]
      115 NAMECALL                         R16 R1 K5 ["getText"]
      117 CALL                             R16 3 1
      118 SETTABLEKS                       R16 R15 K18 ["Text"]
      120 LOADN                            R16 0
      121 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      123 CALL                             R13 2 1
      124 JUMPIF                           R13 ; [+1]
      125 LOADNIL                          R13
      126 SETTABLEKS                       R13 R12 K34 ["ModerationMessage"]
      128 GETTABLEKS                       R14 R0 K45 ["showCreatorStoreConfigurationLink"]
      130 JUMPIFNOT                        R14 ; [+22]
      131 GETUPVAL                         R13 1
      132 GETTABLEKS                       R13 R13 K6 ["createElement"]
      134 GETUPVAL                         R14 2
      135 GETTABLEKS                       R14 R14 K18 ["Text"]
      137 DUPTABLE                         R15 K42 [{"tag", "Text", "LayoutOrder"}]
      138 LOADK                            R16 K43 ["auto-y text-body-medium text-align-x-center"]
      139 SETTABLEKS                       R16 R15 K8 ["tag"]
      141 LOADK                            R18 K3 ["AssetUploadResult"]
      142 LOADK                            R19 K46 ["CreatorStoreConfigurationMessage"]
      143 NAMECALL                         R16 R1 K5 ["getText"]
      145 CALL                             R16 3 1
      146 SETTABLEKS                       R16 R15 K18 ["Text"]
      148 LOADN                            R16 1
      149 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      151 CALL                             R13 2 1
      152 JUMPIF                           R13 ; [+1]
      153 LOADNIL                          R13
      154 SETTABLEKS                       R13 R12 K35 ["CreatorStoreConfigurationText"]
      156 GETTABLEKS                       R14 R0 K45 ["showCreatorStoreConfigurationLink"]
      158 JUMPIFNOT                        R14 ; [+35]
      159 GETUPVAL                         R13 1
      160 GETTABLEKS                       R13 R13 K6 ["createElement"]
      162 GETUPVAL                         R14 2
      163 GETTABLEKS                       R14 R14 K47 ["Button"]
      165 DUPTABLE                         R15 K52 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      166 GETTABLEKS                       R16 R0 K53 ["creatorStoreConfigurationUrl"]
      168 SETTABLEKS                       R16 R15 K48 ["text"]
      170 GETUPVAL                         R16 3
      171 GETTABLEKS                       R16 R16 K54 ["ButtonVariant"]
      173 GETTABLEKS                       R16 R16 K55 ["Link"]
      175 SETTABLEKS                       R16 R15 K49 ["variant"]
      177 NEWCLOSURE                       R16 P0
      178 CAPTURE                          UPVAL U4
      179 CAPTURE                          VAL R0
      180 SETTABLEKS                       R16 R15 K50 ["onActivated"]
      182 GETUPVAL                         R16 3
      183 GETTABLEKS                       R16 R16 K56 ["InputSize"]
      185 GETTABLEKS                       R16 R16 K57 ["Small"]
      187 SETTABLEKS                       R16 R15 K51 ["size"]
      189 LOADN                            R16 2
      190 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      192 CALL                             R13 2 1
      193 JUMPIF                           R13 ; [+1]
      194 LOADNIL                          R13
      195 SETTABLEKS                       R13 R12 K36 ["CreatorStoreConfigurationLink"]
      197 GETTABLEKS                       R14 R0 K58 ["displayCreatorDashboardMessage"]
      199 JUMPIF                           R14 ; [+22]
      200 GETUPVAL                         R13 1
      201 GETTABLEKS                       R13 R13 K6 ["createElement"]
      203 GETUPVAL                         R14 2
      204 GETTABLEKS                       R14 R14 K18 ["Text"]
      206 DUPTABLE                         R15 K42 [{"tag", "Text", "LayoutOrder"}]
      207 LOADK                            R16 K43 ["auto-y text-body-medium text-align-x-center"]
      208 SETTABLEKS                       R16 R15 K8 ["tag"]
      210 LOADK                            R18 K3 ["AssetUploadResult"]
      211 LOADK                            R19 K59 ["WebsiteUrlNoticeMessage"]
      212 NAMECALL                         R16 R1 K5 ["getText"]
      214 CALL                             R16 3 1
      215 SETTABLEKS                       R16 R15 K18 ["Text"]
      217 LOADN                            R16 3
      218 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      220 CALL                             R13 2 1
      221 JUMPIF                           R13 ; [+1]
      222 LOADNIL                          R13
      223 SETTABLEKS                       R13 R12 K37 ["ToolboxText"]
      225 GETTABLEKS                       R14 R0 K58 ["displayCreatorDashboardMessage"]
      227 JUMPIF                           R14 ; [+35]
      228 GETUPVAL                         R13 1
      229 GETTABLEKS                       R13 R13 K6 ["createElement"]
      231 GETUPVAL                         R14 2
      232 GETTABLEKS                       R14 R14 K47 ["Button"]
      234 DUPTABLE                         R15 K52 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      235 GETTABLEKS                       R16 R0 K60 ["url"]
      237 SETTABLEKS                       R16 R15 K48 ["text"]
      239 GETUPVAL                         R16 3
      240 GETTABLEKS                       R16 R16 K54 ["ButtonVariant"]
      242 GETTABLEKS                       R16 R16 K55 ["Link"]
      244 SETTABLEKS                       R16 R15 K49 ["variant"]
      246 NEWCLOSURE                       R16 P1
      247 CAPTURE                          UPVAL U4
      248 CAPTURE                          VAL R0
      249 SETTABLEKS                       R16 R15 K50 ["onActivated"]
      251 GETUPVAL                         R16 3
      252 GETTABLEKS                       R16 R16 K56 ["InputSize"]
      254 GETTABLEKS                       R16 R16 K57 ["Small"]
      256 SETTABLEKS                       R16 R15 K51 ["size"]
      258 LOADN                            R16 4
      259 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      261 CALL                             R13 2 1
      262 JUMPIF                           R13 ; [+1]
      263 LOADNIL                          R13
      264 SETTABLEKS                       R13 R12 K38 ["ToolboxLink"]
      266 GETTABLEKS                       R14 R0 K58 ["displayCreatorDashboardMessage"]
      268 JUMPIFNOT                        R14 ; [+67]
      269 GETUPVAL                         R13 1
      270 GETTABLEKS                       R13 R13 K6 ["createElement"]
      272 GETUPVAL                         R14 5
      273 DUPTABLE                         R15 K68 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      274 GETTABLEKS                       R16 R0 K69 ["onDashboardLinkClicked"]
      276 SETTABLEKS                       R16 R15 K61 ["OnLinkClicked"]
      278 LOADK                            R18 K3 ["AssetUploadResult"]
      279 LOADK                            R19 K70 ["CreatorDashboardMessage"]
      280 DUPTABLE                         R20 K72 [{"creatorDashboardLink"}]
      281 GETUPVAL                         R21 6
      282 GETTABLEKS                       R21 R21 K73 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      284 SETTABLEKS                       R21 R20 K71 ["creatorDashboardLink"]
      286 NAMECALL                         R16 R1 K5 ["getText"]
      288 CALL                             R16 4 1
      289 SETTABLEKS                       R16 R15 K18 ["Text"]
      291 LOADK                            R18 K74 ["General"]
      292 LOADK                            R19 K75 ["CreatorDashboard"]
      293 NAMECALL                         R16 R1 K5 ["getText"]
      295 CALL                             R16 3 1
      296 SETTABLEKS                       R16 R15 K62 ["LinkText"]
      298 GETUPVAL                         R16 6
      299 GETTABLEKS                       R16 R16 K73 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      301 SETTABLEKS                       R16 R15 K63 ["LinkPlaceholder"]
      303 GETIMPORT                        R16 K33 [Enum.AutomaticSize.Y]
      305 SETTABLEKS                       R16 R15 K28 ["AutomaticSize"]
      307 GETIMPORT                        R16 K77 [Enum.TextXAlignment.Center]
      309 SETTABLEKS                       R16 R15 K64 ["TextXAlignment"]
      311 GETIMPORT                        R16 K78 [Enum.HorizontalAlignment.Center]
      313 SETTABLEKS                       R16 R15 K65 ["HorizontalAlignment"]
      315 LOADN                            R16 144
      316 SETTABLEKS                       R16 R15 K66 ["MaxWidth"]
      318 DUPTABLE                         R16 K81 [{"Font", "TextSize"}]
      319 GETUPVAL                         R17 6
      320 GETTABLEKS                       R17 R17 K82 ["FONT"]
      322 SETTABLEKS                       R17 R16 K79 ["Font"]
      324 GETUPVAL                         R17 6
      325 GETTABLEKS                       R17 R17 K83 ["FONT_SIZE_TITLE"]
      327 SETTABLEKS                       R17 R16 K80 ["TextSize"]
      329 SETTABLEKS                       R16 R15 K67 ["TextProps"]
      331 LOADN                            R16 5
      332 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      334 CALL                             R13 2 1
      335 JUMPIF                           R13 ; [+1]
      336 LOADNIL                          R13
      337 SETTABLEKS                       R13 R12 K39 ["CreatorDashboardMsg"]
      339 CALL                             R9 3 1
      340 SETTABLEKS                       R9 R8 K16 ["Rows"]
      342 CALL                             R5 3 -1
      343 RETURN                           R5 -1

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
       21 GETTABLEKS                       R4 R2 K10 ["React"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Foundation"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K12 ["Enums"]
       31 GETIMPORT                        R6 K9 [require]
       33 GETTABLEKS                       R7 R2 K13 ["Framework"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K14 ["UI"]
       38 GETTABLEKS                       R7 R7 K15 ["TextWithInlineLink"]
       40 GETTABLEKS                       R8 R6 K16 ["Util"]
       42 GETTABLEKS                       R8 R8 K17 ["LayoutOrderIterator"]
       44 GETTABLEKS                       R9 R1 K18 ["Src"]
       46 GETTABLEKS                       R9 R9 K16 ["Util"]
       48 GETIMPORT                        R10 K9 [require]
       50 GETTABLEKS                       R11 R9 K19 ["Constants"]
       52 CALL                             R10 1 1
       53 DUPCLOSURE                       R11 K20 [PROTO_2]
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R10
       61 RETURN                           R11 1
