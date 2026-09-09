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
       19 DUPTABLE                         R7 K12 [{["tag"] = "col align-x-center align-y-top gap-small", ["Position"], ["Size"]}]
       20 GETIMPORT                        R8 K14 [UDim2.new]
       22 LOADN                            R9 0
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 LOADN                            R12 279
       26 CALL                             R8 4 1
       27 SETTABLEKS                       R8 R7 K10 ["Position"]
       29 GETIMPORT                        R8 K14 [UDim2.new]
       31 LOADN                            R9 1
       32 LOADN                            R10 0
       33 LOADN                            R11 1
       34 LOADN                            R12 -279
       35 CALL                             R8 4 1
       36 SETTABLEKS                       R8 R7 K11 ["Size"]
       38 DUPTABLE                         R8 K17 [{"Title", "Rows"}]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K6 ["createElement"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K18 ["Text"]
       45 DUPTABLE                         R11 K22 [{["tag"] = "auto-xy text-title-medium text-align-x-center", ["Text"], ["textStyle"], ["LayoutOrder"]}]
       46 SETTABLEKS                       R4 R11 K18 ["Text"]
       48 DUPTABLE                         R12 K24 [{"Color3"}]
       49 GETTABLEKS                       R13 R2 K25 ["uploadResult"]
       51 GETTABLEKS                       R13 R13 K26 ["greenText"]
       53 SETTABLEKS                       R13 R12 K23 ["Color3"]
       55 SETTABLEKS                       R12 R11 K20 ["textStyle"]
       57 NAMECALL                         R12 R3 K27 ["getNextOrder"]
       59 CALL                             R12 1 1
       60 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K15 ["Title"]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K6 ["createElement"]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K7 ["View"]
       71 DUPTABLE                         R11 K30 [{["tag"] = "col align-x-center gap-small", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
       72 GETIMPORT                        R12 K14 [UDim2.new]
       74 LOADN                            R13 1
       75 LOADN                            R14 0
       76 LOADN                            R15 0
       77 LOADN                            R16 0
       78 CALL                             R12 4 1
       79 SETTABLEKS                       R12 R11 K11 ["Size"]
       81 GETIMPORT                        R12 K33 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
       85 NAMECALL                         R12 R3 K27 ["getNextOrder"]
       87 CALL                             R12 1 1
       88 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
       90 DUPTABLE                         R12 K40 [{"ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
       91 GETTABLEKS                       R14 R0 K41 ["showModeration"]
       93 JUMPIFNOT                        R14 ; [+39]
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R13 R13 K6 ["createElement"]
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K18 ["Text"]
      100 DUPTABLE                         R15 K43 [{["tag"], ["Size"], ["Text"], ["LayoutOrder"] = 0}]
      101 GETTABLEKS                       R17 R0 K44 ["moderationMessageOverride"]
      103 JUMPIFNOT                        R17 ; [+2]
      104 LOADK                            R16 K45 ["auto-y text-wrap text-body-large text-align-x-center"]
      105 JUMP                             ; [+1]
      106 LOADK                            R16 K46 ["auto-y text-body-medium text-align-x-center"]
      107 SETTABLEKS                       R16 R15 K8 ["tag"]
      109 GETTABLEKS                       R17 R0 K44 ["moderationMessageOverride"]
      111 JUMPIFNOT                        R17 ; [+6]
      112 GETIMPORT                        R16 K48 [UDim2.fromOffset]
      114 LOADN                            R17 400
      115 LOADN                            R18 0
      116 CALL                             R16 2 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R16
      119 SETTABLEKS                       R16 R15 K11 ["Size"]
      121 GETTABLEKS                       R16 R0 K44 ["moderationMessageOverride"]
      123 JUMPIF                           R16 ; [+5]
      124 LOADK                            R18 K3 ["AssetUploadResult"]
      125 LOADK                            R19 K49 ["AddedToModerationQueueMessage"]
      126 NAMECALL                         R16 R1 K5 ["getText"]
      128 CALL                             R16 3 1
      129 SETTABLEKS                       R16 R15 K18 ["Text"]
      131 CALL                             R13 2 1
      132 JUMPIF                           R13 ; [+1]
      133 LOADNIL                          R13
      134 SETTABLEKS                       R13 R12 K34 ["ModerationMessage"]
      136 GETTABLEKS                       R14 R0 K50 ["showCreatorStoreConfigurationLink"]
      138 JUMPIFNOT                        R14 ; [+16]
      139 GETUPVAL                         R13 1
      140 GETTABLEKS                       R13 R13 K6 ["createElement"]
      142 GETUPVAL                         R14 2
      143 GETTABLEKS                       R14 R14 K18 ["Text"]
      145 DUPTABLE                         R15 K52 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
      146 LOADK                            R18 K3 ["AssetUploadResult"]
      147 LOADK                            R19 K53 ["CreatorStoreConfigurationMessage"]
      148 NAMECALL                         R16 R1 K5 ["getText"]
      150 CALL                             R16 3 1
      151 SETTABLEKS                       R16 R15 K18 ["Text"]
      153 CALL                             R13 2 1
      154 JUMPIF                           R13 ; [+1]
      155 LOADNIL                          R13
      156 SETTABLEKS                       R13 R12 K35 ["CreatorStoreConfigurationText"]
      158 GETTABLEKS                       R14 R0 K50 ["showCreatorStoreConfigurationLink"]
      160 JUMPIFNOT                        R14 ; [+32]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R13 R13 K6 ["createElement"]
      164 GETUPVAL                         R14 2
      165 GETTABLEKS                       R14 R14 K54 ["Button"]
      167 DUPTABLE                         R15 K60 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 2}]
      168 GETTABLEKS                       R16 R0 K61 ["creatorStoreConfigurationUrl"]
      170 SETTABLEKS                       R16 R15 K55 ["text"]
      172 GETUPVAL                         R16 3
      173 GETTABLEKS                       R16 R16 K62 ["ButtonVariant"]
      175 GETTABLEKS                       R16 R16 K63 ["Link"]
      177 SETTABLEKS                       R16 R15 K56 ["variant"]
      179 NEWCLOSURE                       R16 P0
      180 CAPTURE                          UPVAL U4
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R16 R15 K57 ["onActivated"]
      184 GETUPVAL                         R16 3
      185 GETTABLEKS                       R16 R16 K64 ["InputSize"]
      187 GETTABLEKS                       R16 R16 K65 ["Small"]
      189 SETTABLEKS                       R16 R15 K58 ["size"]
      191 CALL                             R13 2 1
      192 JUMPIF                           R13 ; [+1]
      193 LOADNIL                          R13
      194 SETTABLEKS                       R13 R12 K36 ["CreatorStoreConfigurationLink"]
      196 GETTABLEKS                       R14 R0 K66 ["displayCreatorDashboardMessage"]
      198 JUMPIF                           R14 ; [+16]
      199 GETUPVAL                         R13 1
      200 GETTABLEKS                       R13 R13 K6 ["createElement"]
      202 GETUPVAL                         R14 2
      203 GETTABLEKS                       R14 R14 K18 ["Text"]
      205 DUPTABLE                         R15 K68 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 3}]
      206 LOADK                            R18 K3 ["AssetUploadResult"]
      207 LOADK                            R19 K69 ["WebsiteUrlNoticeMessage"]
      208 NAMECALL                         R16 R1 K5 ["getText"]
      210 CALL                             R16 3 1
      211 SETTABLEKS                       R16 R15 K18 ["Text"]
      213 CALL                             R13 2 1
      214 JUMPIF                           R13 ; [+1]
      215 LOADNIL                          R13
      216 SETTABLEKS                       R13 R12 K37 ["ToolboxText"]
      218 GETTABLEKS                       R14 R0 K66 ["displayCreatorDashboardMessage"]
      220 JUMPIF                           R14 ; [+32]
      221 GETUPVAL                         R13 1
      222 GETTABLEKS                       R13 R13 K6 ["createElement"]
      224 GETUPVAL                         R14 2
      225 GETTABLEKS                       R14 R14 K54 ["Button"]
      227 DUPTABLE                         R15 K71 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 4}]
      228 GETTABLEKS                       R16 R0 K72 ["url"]
      230 SETTABLEKS                       R16 R15 K55 ["text"]
      232 GETUPVAL                         R16 3
      233 GETTABLEKS                       R16 R16 K62 ["ButtonVariant"]
      235 GETTABLEKS                       R16 R16 K63 ["Link"]
      237 SETTABLEKS                       R16 R15 K56 ["variant"]
      239 NEWCLOSURE                       R16 P1
      240 CAPTURE                          UPVAL U4
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R16 R15 K57 ["onActivated"]
      244 GETUPVAL                         R16 3
      245 GETTABLEKS                       R16 R16 K64 ["InputSize"]
      247 GETTABLEKS                       R16 R16 K65 ["Small"]
      249 SETTABLEKS                       R16 R15 K58 ["size"]
      251 CALL                             R13 2 1
      252 JUMPIF                           R13 ; [+1]
      253 LOADNIL                          R13
      254 SETTABLEKS                       R13 R12 K38 ["ToolboxLink"]
      256 GETTABLEKS                       R14 R0 K66 ["displayCreatorDashboardMessage"]
      258 JUMPIFNOT                        R14 ; [+61]
      259 GETUPVAL                         R13 1
      260 GETTABLEKS                       R13 R13 K6 ["createElement"]
      262 GETUPVAL                         R14 5
      263 DUPTABLE                         R15 K82 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 400, ["TextProps"], ["LayoutOrder"] = 5}]
      264 GETTABLEKS                       R16 R0 K83 ["onDashboardLinkClicked"]
      266 SETTABLEKS                       R16 R15 K73 ["OnLinkClicked"]
      268 LOADK                            R18 K3 ["AssetUploadResult"]
      269 LOADK                            R19 K84 ["CreatorDashboardMessage"]
      270 DUPTABLE                         R20 K86 [{"creatorDashboardLink"}]
      271 GETUPVAL                         R21 6
      272 GETTABLEKS                       R21 R21 K87 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      274 SETTABLEKS                       R21 R20 K85 ["creatorDashboardLink"]
      276 NAMECALL                         R16 R1 K5 ["getText"]
      278 CALL                             R16 4 1
      279 SETTABLEKS                       R16 R15 K18 ["Text"]
      281 LOADK                            R18 K88 ["General"]
      282 LOADK                            R19 K89 ["CreatorDashboard"]
      283 NAMECALL                         R16 R1 K5 ["getText"]
      285 CALL                             R16 3 1
      286 SETTABLEKS                       R16 R15 K74 ["LinkText"]
      288 GETUPVAL                         R16 6
      289 GETTABLEKS                       R16 R16 K87 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      291 SETTABLEKS                       R16 R15 K75 ["LinkPlaceholder"]
      293 GETIMPORT                        R16 K33 [Enum.AutomaticSize.Y]
      295 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      297 GETIMPORT                        R16 K91 [Enum.TextXAlignment.Center]
      299 SETTABLEKS                       R16 R15 K76 ["TextXAlignment"]
      301 GETIMPORT                        R16 K92 [Enum.HorizontalAlignment.Center]
      303 SETTABLEKS                       R16 R15 K77 ["HorizontalAlignment"]
      305 DUPTABLE                         R16 K95 [{"Font", "TextSize"}]
      306 GETUPVAL                         R17 6
      307 GETTABLEKS                       R17 R17 K96 ["FONT"]
      309 SETTABLEKS                       R17 R16 K93 ["Font"]
      311 GETUPVAL                         R17 6
      312 GETTABLEKS                       R17 R17 K97 ["FONT_SIZE_TITLE"]
      314 SETTABLEKS                       R17 R16 K94 ["TextSize"]
      316 SETTABLEKS                       R16 R15 K80 ["TextProps"]
      318 CALL                             R13 2 1
      319 JUMPIF                           R13 ; [+1]
      320 LOADNIL                          R13
      321 SETTABLEKS                       R13 R12 K39 ["CreatorDashboardMsg"]
      323 CALL                             R9 3 1
      324 SETTABLEKS                       R9 R8 K16 ["Rows"]
      326 CALL                             R5 3 -1
      327 RETURN                           R5 -1

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
