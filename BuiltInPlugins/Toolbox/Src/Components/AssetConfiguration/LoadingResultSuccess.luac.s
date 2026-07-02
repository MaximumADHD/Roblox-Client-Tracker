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
       93 JUMPIFNOT                        R14 ; [+16]
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R13 R13 K6 ["createElement"]
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K18 ["Text"]
      100 DUPTABLE                         R15 K44 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 0}]
      101 LOADK                            R18 K3 ["AssetUploadResult"]
      102 LOADK                            R19 K45 ["AddedToModerationQueueMessage"]
      103 NAMECALL                         R16 R1 K5 ["getText"]
      105 CALL                             R16 3 1
      106 SETTABLEKS                       R16 R15 K18 ["Text"]
      108 CALL                             R13 2 1
      109 JUMPIF                           R13 ; [+1]
      110 LOADNIL                          R13
      111 SETTABLEKS                       R13 R12 K34 ["ModerationMessage"]
      113 GETTABLEKS                       R14 R0 K46 ["showCreatorStoreConfigurationLink"]
      115 JUMPIFNOT                        R14 ; [+16]
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K6 ["createElement"]
      119 GETUPVAL                         R14 2
      120 GETTABLEKS                       R14 R14 K18 ["Text"]
      122 DUPTABLE                         R15 K48 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
      123 LOADK                            R18 K3 ["AssetUploadResult"]
      124 LOADK                            R19 K49 ["CreatorStoreConfigurationMessage"]
      125 NAMECALL                         R16 R1 K5 ["getText"]
      127 CALL                             R16 3 1
      128 SETTABLEKS                       R16 R15 K18 ["Text"]
      130 CALL                             R13 2 1
      131 JUMPIF                           R13 ; [+1]
      132 LOADNIL                          R13
      133 SETTABLEKS                       R13 R12 K35 ["CreatorStoreConfigurationText"]
      135 GETTABLEKS                       R14 R0 K46 ["showCreatorStoreConfigurationLink"]
      137 JUMPIFNOT                        R14 ; [+32]
      138 GETUPVAL                         R13 1
      139 GETTABLEKS                       R13 R13 K6 ["createElement"]
      141 GETUPVAL                         R14 2
      142 GETTABLEKS                       R14 R14 K50 ["Button"]
      144 DUPTABLE                         R15 K56 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 2}]
      145 GETTABLEKS                       R16 R0 K57 ["creatorStoreConfigurationUrl"]
      147 SETTABLEKS                       R16 R15 K51 ["text"]
      149 GETUPVAL                         R16 3
      150 GETTABLEKS                       R16 R16 K58 ["ButtonVariant"]
      152 GETTABLEKS                       R16 R16 K59 ["Link"]
      154 SETTABLEKS                       R16 R15 K52 ["variant"]
      156 NEWCLOSURE                       R16 P0
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R16 R15 K53 ["onActivated"]
      161 GETUPVAL                         R16 3
      162 GETTABLEKS                       R16 R16 K60 ["InputSize"]
      164 GETTABLEKS                       R16 R16 K61 ["Small"]
      166 SETTABLEKS                       R16 R15 K54 ["size"]
      168 CALL                             R13 2 1
      169 JUMPIF                           R13 ; [+1]
      170 LOADNIL                          R13
      171 SETTABLEKS                       R13 R12 K36 ["CreatorStoreConfigurationLink"]
      173 GETTABLEKS                       R14 R0 K62 ["displayCreatorDashboardMessage"]
      175 JUMPIF                           R14 ; [+16]
      176 GETUPVAL                         R13 1
      177 GETTABLEKS                       R13 R13 K6 ["createElement"]
      179 GETUPVAL                         R14 2
      180 GETTABLEKS                       R14 R14 K18 ["Text"]
      182 DUPTABLE                         R15 K64 [{["tag"] = "auto-y text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 3}]
      183 LOADK                            R18 K3 ["AssetUploadResult"]
      184 LOADK                            R19 K65 ["WebsiteUrlNoticeMessage"]
      185 NAMECALL                         R16 R1 K5 ["getText"]
      187 CALL                             R16 3 1
      188 SETTABLEKS                       R16 R15 K18 ["Text"]
      190 CALL                             R13 2 1
      191 JUMPIF                           R13 ; [+1]
      192 LOADNIL                          R13
      193 SETTABLEKS                       R13 R12 K37 ["ToolboxText"]
      195 GETTABLEKS                       R14 R0 K62 ["displayCreatorDashboardMessage"]
      197 JUMPIF                           R14 ; [+32]
      198 GETUPVAL                         R13 1
      199 GETTABLEKS                       R13 R13 K6 ["createElement"]
      201 GETUPVAL                         R14 2
      202 GETTABLEKS                       R14 R14 K50 ["Button"]
      204 DUPTABLE                         R15 K67 [{["text"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"] = 4}]
      205 GETTABLEKS                       R16 R0 K68 ["url"]
      207 SETTABLEKS                       R16 R15 K51 ["text"]
      209 GETUPVAL                         R16 3
      210 GETTABLEKS                       R16 R16 K58 ["ButtonVariant"]
      212 GETTABLEKS                       R16 R16 K59 ["Link"]
      214 SETTABLEKS                       R16 R15 K52 ["variant"]
      216 NEWCLOSURE                       R16 P1
      217 CAPTURE                          UPVAL U4
      218 CAPTURE                          VAL R0
      219 SETTABLEKS                       R16 R15 K53 ["onActivated"]
      221 GETUPVAL                         R16 3
      222 GETTABLEKS                       R16 R16 K60 ["InputSize"]
      224 GETTABLEKS                       R16 R16 K61 ["Small"]
      226 SETTABLEKS                       R16 R15 K54 ["size"]
      228 CALL                             R13 2 1
      229 JUMPIF                           R13 ; [+1]
      230 LOADNIL                          R13
      231 SETTABLEKS                       R13 R12 K38 ["ToolboxLink"]
      233 GETTABLEKS                       R14 R0 K62 ["displayCreatorDashboardMessage"]
      235 JUMPIFNOT                        R14 ; [+61]
      236 GETUPVAL                         R13 1
      237 GETTABLEKS                       R13 R13 K6 ["createElement"]
      239 GETUPVAL                         R14 5
      240 DUPTABLE                         R15 K78 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 400, ["TextProps"], ["LayoutOrder"] = 5}]
      241 GETTABLEKS                       R16 R0 K79 ["onDashboardLinkClicked"]
      243 SETTABLEKS                       R16 R15 K69 ["OnLinkClicked"]
      245 LOADK                            R18 K3 ["AssetUploadResult"]
      246 LOADK                            R19 K80 ["CreatorDashboardMessage"]
      247 DUPTABLE                         R20 K82 [{"creatorDashboardLink"}]
      248 GETUPVAL                         R21 6
      249 GETTABLEKS                       R21 R21 K83 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      251 SETTABLEKS                       R21 R20 K81 ["creatorDashboardLink"]
      253 NAMECALL                         R16 R1 K5 ["getText"]
      255 CALL                             R16 4 1
      256 SETTABLEKS                       R16 R15 K18 ["Text"]
      258 LOADK                            R18 K84 ["General"]
      259 LOADK                            R19 K85 ["CreatorDashboard"]
      260 NAMECALL                         R16 R1 K5 ["getText"]
      262 CALL                             R16 3 1
      263 SETTABLEKS                       R16 R15 K70 ["LinkText"]
      265 GETUPVAL                         R16 6
      266 GETTABLEKS                       R16 R16 K83 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      268 SETTABLEKS                       R16 R15 K71 ["LinkPlaceholder"]
      270 GETIMPORT                        R16 K33 [Enum.AutomaticSize.Y]
      272 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      274 GETIMPORT                        R16 K87 [Enum.TextXAlignment.Center]
      276 SETTABLEKS                       R16 R15 K72 ["TextXAlignment"]
      278 GETIMPORT                        R16 K88 [Enum.HorizontalAlignment.Center]
      280 SETTABLEKS                       R16 R15 K73 ["HorizontalAlignment"]
      282 DUPTABLE                         R16 K91 [{"Font", "TextSize"}]
      283 GETUPVAL                         R17 6
      284 GETTABLEKS                       R17 R17 K92 ["FONT"]
      286 SETTABLEKS                       R17 R16 K89 ["Font"]
      288 GETUPVAL                         R17 6
      289 GETTABLEKS                       R17 R17 K93 ["FONT_SIZE_TITLE"]
      291 SETTABLEKS                       R17 R16 K90 ["TextSize"]
      293 SETTABLEKS                       R16 R15 K76 ["TextProps"]
      295 CALL                             R13 2 1
      296 JUMPIF                           R13 ; [+1]
      297 LOADNIL                          R13
      298 SETTABLEKS                       R13 R12 K39 ["CreatorDashboardMsg"]
      300 CALL                             R9 3 1
      301 SETTABLEKS                       R9 R8 K16 ["Rows"]
      303 CALL                             R5 3 -1
      304 RETURN                           R5 -1

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
