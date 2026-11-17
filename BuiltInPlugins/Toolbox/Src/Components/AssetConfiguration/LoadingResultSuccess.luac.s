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
       13 GETTABLEKS                       R6 R0 K7 ["resultYPos"]
       15 ORK                              R5 R6 K6 [279]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K8 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K9 ["View"]
       22 DUPTABLE                         R8 K14 [{["tag"] = "col align-x-center align-y-top gap-small", ["Position"], ["Size"]}]
       23 GETIMPORT                        R9 K16 [UDim2.new]
       25 LOADN                            R10 0
       26 LOADN                            R11 0
       27 LOADN                            R12 0
       28 MOVE                             R13 R5
       29 CALL                             R9 4 1
       30 SETTABLEKS                       R9 R8 K12 ["Position"]
       32 GETIMPORT                        R9 K16 [UDim2.new]
       34 LOADN                            R10 1
       35 LOADN                            R11 0
       36 LOADN                            R12 1
       37 MINUS                            R13 R5
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K13 ["Size"]
       41 DUPTABLE                         R9 K19 [{"Title", "Rows"}]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K8 ["createElement"]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K20 ["Text"]
       48 DUPTABLE                         R12 K24 [{["tag"] = "auto-xy text-title-medium text-align-x-center", ["Text"], ["textStyle"], ["LayoutOrder"]}]
       49 SETTABLEKS                       R4 R12 K20 ["Text"]
       51 DUPTABLE                         R13 K26 [{"Color3"}]
       52 GETTABLEKS                       R14 R2 K27 ["uploadResult"]
       54 GETTABLEKS                       R14 R14 K28 ["greenText"]
       56 SETTABLEKS                       R14 R13 K25 ["Color3"]
       58 SETTABLEKS                       R13 R12 K22 ["textStyle"]
       60 NAMECALL                         R13 R3 K29 ["getNextOrder"]
       62 CALL                             R13 1 1
       63 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K17 ["Title"]
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R10 R10 K8 ["createElement"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K9 ["View"]
       74 DUPTABLE                         R12 K32 [{["tag"] = "col align-x-center gap-small", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
       75 GETIMPORT                        R13 K16 [UDim2.new]
       77 LOADN                            R14 1
       78 LOADN                            R15 0
       79 LOADN                            R16 0
       80 LOADN                            R17 0
       81 CALL                             R13 4 1
       82 SETTABLEKS                       R13 R12 K13 ["Size"]
       84 GETIMPORT                        R13 K35 [Enum.AutomaticSize.Y]
       86 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
       88 NAMECALL                         R13 R3 K29 ["getNextOrder"]
       90 CALL                             R13 1 1
       91 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
       93 DUPTABLE                         R13 K42 [{"ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
       94 GETTABLEKS                       R15 R0 K43 ["showModeration"]
       96 JUMPIFNOT                        R15 ; [+39]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K8 ["createElement"]
      100 GETUPVAL                         R15 2
      101 GETTABLEKS                       R15 R15 K20 ["Text"]
      103 DUPTABLE                         R16 K45 [{["tag"], ["Size"], ["Text"], ["LayoutOrder"] = 0}]
      104 GETTABLEKS                       R18 R0 K46 ["moderationMessageOverride"]
      106 JUMPIFNOT                        R18 ; [+2]
      107 LOADK                            R17 K47 ["auto-y text-wrap text-body-large text-align-x-center"]
      108 JUMP                             ; [+1]
      109 LOADK                            R17 K48 ["auto-y text-body-medium text-align-x-center"]
      110 SETTABLEKS                       R17 R16 K10 ["tag"]
      112 GETTABLEKS                       R18 R0 K46 ["moderationMessageOverride"]
      114 JUMPIFNOT                        R18 ; [+6]
      115 GETIMPORT                        R17 K50 [UDim2.fromOffset]
      117 LOADN                            R18 400
      118 LOADN                            R19 0
      119 CALL                             R17 2 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R17
      122 SETTABLEKS                       R17 R16 K13 ["Size"]
      124 GETTABLEKS                       R17 R0 K46 ["moderationMessageOverride"]
      126 JUMPIF                           R17 ; [+5]
      127 LOADK                            R19 K3 ["AssetUploadResult"]
      128 LOADK                            R20 K51 ["AddedToModerationQueueMessage"]
      129 NAMECALL                         R17 R1 K5 ["getText"]
      131 CALL                             R17 3 1
      132 SETTABLEKS                       R17 R16 K20 ["Text"]
      134 CALL                             R14 2 1
      135 JUMPIF                           R14 ; [+1]
      136 LOADNIL                          R14
      137 SETTABLEKS                       R14 R13 K36 ["ModerationMessage"]
      139 GETTABLEKS                       R15 R0 K52 ["showCreatorStoreConfigurationLink"]
      141 JUMPIFNOT                        R15 ; [+16]
      142 GETUPVAL                         R14 1
      143 GETTABLEKS                       R14 R14 K8 ["createElement"]
      145 GETUPVAL                         R15 2
      146 GETTABLEKS                       R15 R15 K20 ["Text"]
      148 DUPTABLE                         R16 K54 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
      149 LOADK                            R19 K3 ["AssetUploadResult"]
      150 LOADK                            R20 K55 ["CreatorStoreConfigurationMessage"]
      151 NAMECALL                         R17 R1 K5 ["getText"]
      153 CALL                             R17 3 1
      154 SETTABLEKS                       R17 R16 K20 ["Text"]
      156 CALL                             R14 2 1
      157 JUMPIF                           R14 ; [+1]
      158 LOADNIL                          R14
      159 SETTABLEKS                       R14 R13 K37 ["CreatorStoreConfigurationText"]
      161 GETTABLEKS                       R15 R0 K52 ["showCreatorStoreConfigurationLink"]
      163 JUMPIFNOT                        R15 ; [+32]
      164 GETUPVAL                         R14 1
      165 GETTABLEKS                       R14 R14 K8 ["createElement"]
      167 GETUPVAL                         R15 2
      168 GETTABLEKS                       R15 R15 K56 ["Button"]
      170 DUPTABLE                         R16 K62 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 2}]
      171 GETTABLEKS                       R17 R0 K63 ["creatorStoreConfigurationUrl"]
      173 SETTABLEKS                       R17 R16 K57 ["text"]
      175 GETUPVAL                         R17 3
      176 GETTABLEKS                       R17 R17 K64 ["ButtonVariant"]
      178 GETTABLEKS                       R17 R17 K65 ["Link"]
      180 SETTABLEKS                       R17 R16 K58 ["variant"]
      182 NEWCLOSURE                       R17 P0
      183 CAPTURE                          UPVAL U4
      184 CAPTURE                          VAL R0
      185 SETTABLEKS                       R17 R16 K59 ["onActivated"]
      187 GETUPVAL                         R17 3
      188 GETTABLEKS                       R17 R17 K66 ["InputSize"]
      190 GETTABLEKS                       R17 R17 K67 ["Small"]
      192 SETTABLEKS                       R17 R16 K60 ["size"]
      194 CALL                             R14 2 1
      195 JUMPIF                           R14 ; [+1]
      196 LOADNIL                          R14
      197 SETTABLEKS                       R14 R13 K38 ["CreatorStoreConfigurationLink"]
      199 GETTABLEKS                       R15 R0 K68 ["displayCreatorDashboardMessage"]
      201 JUMPIF                           R15 ; [+16]
      202 GETUPVAL                         R14 1
      203 GETTABLEKS                       R14 R14 K8 ["createElement"]
      205 GETUPVAL                         R15 2
      206 GETTABLEKS                       R15 R15 K20 ["Text"]
      208 DUPTABLE                         R16 K70 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 3}]
      209 LOADK                            R19 K3 ["AssetUploadResult"]
      210 LOADK                            R20 K71 ["WebsiteUrlNoticeMessage"]
      211 NAMECALL                         R17 R1 K5 ["getText"]
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K20 ["Text"]
      216 CALL                             R14 2 1
      217 JUMPIF                           R14 ; [+1]
      218 LOADNIL                          R14
      219 SETTABLEKS                       R14 R13 K39 ["ToolboxText"]
      221 GETTABLEKS                       R15 R0 K68 ["displayCreatorDashboardMessage"]
      223 JUMPIF                           R15 ; [+32]
      224 GETUPVAL                         R14 1
      225 GETTABLEKS                       R14 R14 K8 ["createElement"]
      227 GETUPVAL                         R15 2
      228 GETTABLEKS                       R15 R15 K56 ["Button"]
      230 DUPTABLE                         R16 K73 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 4}]
      231 GETTABLEKS                       R17 R0 K74 ["url"]
      233 SETTABLEKS                       R17 R16 K57 ["text"]
      235 GETUPVAL                         R17 3
      236 GETTABLEKS                       R17 R17 K64 ["ButtonVariant"]
      238 GETTABLEKS                       R17 R17 K65 ["Link"]
      240 SETTABLEKS                       R17 R16 K58 ["variant"]
      242 NEWCLOSURE                       R17 P1
      243 CAPTURE                          UPVAL U4
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R17 R16 K59 ["onActivated"]
      247 GETUPVAL                         R17 3
      248 GETTABLEKS                       R17 R17 K66 ["InputSize"]
      250 GETTABLEKS                       R17 R17 K67 ["Small"]
      252 SETTABLEKS                       R17 R16 K60 ["size"]
      254 CALL                             R14 2 1
      255 JUMPIF                           R14 ; [+1]
      256 LOADNIL                          R14
      257 SETTABLEKS                       R14 R13 K40 ["ToolboxLink"]
      259 GETTABLEKS                       R15 R0 K68 ["displayCreatorDashboardMessage"]
      261 JUMPIFNOT                        R15 ; [+61]
      262 GETUPVAL                         R14 1
      263 GETTABLEKS                       R14 R14 K8 ["createElement"]
      265 GETUPVAL                         R15 5
      266 DUPTABLE                         R16 K84 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 400, ["TextProps"], ["LayoutOrder"] = 5}]
      267 GETTABLEKS                       R17 R0 K85 ["onDashboardLinkClicked"]
      269 SETTABLEKS                       R17 R16 K75 ["OnLinkClicked"]
      271 LOADK                            R19 K3 ["AssetUploadResult"]
      272 LOADK                            R20 K86 ["CreatorDashboardMessage"]
      273 DUPTABLE                         R21 K88 [{"creatorDashboardLink"}]
      274 GETUPVAL                         R22 6
      275 GETTABLEKS                       R22 R22 K89 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      277 SETTABLEKS                       R22 R21 K87 ["creatorDashboardLink"]
      279 NAMECALL                         R17 R1 K5 ["getText"]
      281 CALL                             R17 4 1
      282 SETTABLEKS                       R17 R16 K20 ["Text"]
      284 LOADK                            R19 K90 ["General"]
      285 LOADK                            R20 K91 ["CreatorDashboard"]
      286 NAMECALL                         R17 R1 K5 ["getText"]
      288 CALL                             R17 3 1
      289 SETTABLEKS                       R17 R16 K76 ["LinkText"]
      291 GETUPVAL                         R17 6
      292 GETTABLEKS                       R17 R17 K89 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      294 SETTABLEKS                       R17 R16 K77 ["LinkPlaceholder"]
      296 GETIMPORT                        R17 K35 [Enum.AutomaticSize.Y]
      298 SETTABLEKS                       R17 R16 K31 ["AutomaticSize"]
      300 GETIMPORT                        R17 K93 [Enum.TextXAlignment.Center]
      302 SETTABLEKS                       R17 R16 K78 ["TextXAlignment"]
      304 GETIMPORT                        R17 K94 [Enum.HorizontalAlignment.Center]
      306 SETTABLEKS                       R17 R16 K79 ["HorizontalAlignment"]
      308 DUPTABLE                         R17 K97 [{"Font", "TextSize"}]
      309 GETUPVAL                         R18 6
      310 GETTABLEKS                       R18 R18 K98 ["FONT"]
      312 SETTABLEKS                       R18 R17 K95 ["Font"]
      314 GETUPVAL                         R18 6
      315 GETTABLEKS                       R18 R18 K99 ["FONT_SIZE_TITLE"]
      317 SETTABLEKS                       R18 R17 K96 ["TextSize"]
      319 SETTABLEKS                       R17 R16 K82 ["TextProps"]
      321 CALL                             R14 2 1
      322 JUMPIF                           R14 ; [+1]
      323 LOADNIL                          R14
      324 SETTABLEKS                       R14 R13 K41 ["CreatorDashboardMsg"]
      326 CALL                             R10 3 1
      327 SETTABLEKS                       R10 R9 K18 ["Rows"]
      329 CALL                             R6 3 -1
      330 RETURN                           R6 -1

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
