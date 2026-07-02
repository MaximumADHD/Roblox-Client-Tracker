PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKN                       R0 K1 [0] ; [+10]
        5 GETIMPORT                        R0 K3 [pcall]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADN                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [-1] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADN                            R1 -1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialInfo"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useRef"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["useRef"]
       18 GETTABLEKS                       R6 R0 K3 ["onRate"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R6 R0 K3 ["onRate"]
       23 SETTABLEKS                       R6 R5 K4 ["current"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R8 0 1
       33 MOVE                             R9 R2
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 0
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 1
       47 NAMECALL                         R6 R6 K6 ["use"]
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K7 ["Hooks"]
       53 GETTABLEKS                       R7 R7 K8 ["useTokens"]
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K9 ["createElement"]
       59 GETUPVAL                         R9 3
       60 DUPTABLE                         R10 K14 [{["ZIndex"] = 0, ["tag"] = "col flex-evenly align-x-center align-y-center gap-small size-full padding-large bg-surface-200"}]
       61 DUPTABLE                         R11 K20 [{"Image", "Heading", "Subheading", "Divider", "ActionsRow"}]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K9 ["createElement"]
       65 GETUPVAL                         R13 4
       66 DUPTABLE                         R14 K24 [{["LayoutOrder"] = 0, ["Image"] = "icons/graphic/success_xlarge", ["tag"] = "size-2000"}]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K15 ["Image"]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K9 ["createElement"]
       73 GETUPVAL                         R13 5
       74 DUPTABLE                         R14 K28 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-heading-medium text-align-x-center"}]
       75 LOADK                            R17 K29 ["Plugin"]
       76 LOADK                            R18 K30 ["Congratulations"]
       77 DUPTABLE                         R19 K32 [{"tutorialTitle"}]
       78 GETTABLEKS                       R20 R1 K33 ["title"]
       80 SETTABLEKS                       R20 R19 K31 ["tutorialTitle"]
       82 NAMECALL                         R15 R6 K34 ["getText"]
       84 CALL                             R15 4 1
       85 SETTABLEKS                       R15 R14 K26 ["Text"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K16 ["Heading"]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K9 ["createElement"]
       93 GETUPVAL                         R13 5
       94 DUPTABLE                         R14 K37 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-large text-wrap text-align-x-center"}]
       95 LOADK                            R17 K29 ["Plugin"]
       96 LOADK                            R18 K38 ["YouveCompleted"]
       97 DUPTABLE                         R19 K32 [{"tutorialTitle"}]
       98 GETTABLEKS                       R20 R1 K33 ["title"]
      100 SETTABLEKS                       R20 R19 K31 ["tutorialTitle"]
      102 NAMECALL                         R15 R6 K34 ["getText"]
      104 CALL                             R15 4 1
      105 SETTABLEKS                       R15 R14 K26 ["Text"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K17 ["Subheading"]
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K9 ["createElement"]
      113 GETUPVAL                         R13 6
      114 DUPTABLE                         R14 K40 [{["LayoutOrder"] = 9}]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K18 ["Divider"]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K9 ["createElement"]
      121 GETUPVAL                         R13 3
      122 DUPTABLE                         R14 K43 [{["LayoutOrder"] = 10, ["tag"] = "row flex-between align-y-center gap-medium size-full-0 auto-y"}]
      123 DUPTABLE                         R15 K46 [{"Rating", "Buttons"}]
      124 GETUPVAL                         R16 0
      125 GETTABLEKS                       R16 R16 K9 ["createElement"]
      127 GETUPVAL                         R17 3
      128 DUPTABLE                         R18 K48 [{["LayoutOrder"] = 1, ["tag"] = "row align-x-left align-y-center gap-small size-0-1000 auto-x"}]
      129 DUPTABLE                         R19 K51 [{"RatingText", "VoteButtons"}]
      130 GETUPVAL                         R20 0
      131 GETTABLEKS                       R20 R20 K9 ["createElement"]
      133 GETUPVAL                         R21 5
      134 DUPTABLE                         R22 K53 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "auto-xy text-body-medium text-align-x-center content-muted"}]
      135 LOADK                            R25 K29 ["Plugin"]
      136 LOADK                            R26 K54 ["RatingPrompt"]
      137 NAMECALL                         R23 R6 K34 ["getText"]
      139 CALL                             R23 3 1
      140 SETTABLEKS                       R23 R22 K26 ["Text"]
      142 CALL                             R20 2 1
      143 SETTABLEKS                       R20 R19 K49 ["RatingText"]
      145 GETUPVAL                         R20 0
      146 GETTABLEKS                       R20 R20 K9 ["createElement"]
      148 GETUPVAL                         R21 3
      149 DUPTABLE                         R22 K56 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy"}]
      150 DUPTABLE                         R23 K59 [{"Upvote", "Downvote"}]
      151 GETUPVAL                         R24 0
      152 GETTABLEKS                       R24 R24 K9 ["createElement"]
      154 GETUPVAL                         R25 4
      155 DUPTABLE                         R26 K64 [{["Image"] = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png", ["tag"] = "size-400", ["imageStyle"], ["onActivated"]}]
      156 JUMPIFNOTEQKN                    R2 K25 [1] ; [+10]
      158 GETTABLEKS                       R27 R7 K65 ["Color"]
      160 GETTABLEKS                       R27 R27 K66 ["Extended"]
      162 GETTABLEKS                       R27 R27 K67 ["Green"]
      164 GETTABLEKS                       R27 R27 K68 ["Green_500"]
      166 JUMP                             ; [+6]
      167 GETTABLEKS                       R27 R7 K65 ["Color"]
      169 GETTABLEKS                       R27 R27 K69 ["Content"]
      171 GETTABLEKS                       R27 R27 K70 ["Muted"]
      173 SETTABLEKS                       R27 R26 K62 ["imageStyle"]
      175 NEWCLOSURE                       R27 P2
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R3
      178 SETTABLEKS                       R27 R26 K63 ["onActivated"]
      180 CALL                             R24 2 1
      181 SETTABLEKS                       R24 R23 K57 ["Upvote"]
      183 GETUPVAL                         R24 0
      184 GETTABLEKS                       R24 R24 K9 ["createElement"]
      186 GETUPVAL                         R25 4
      187 DUPTABLE                         R26 K74 [{["Image"] = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png", ["Rotation"] = 180, ["Position"], ["tag"] = "size-400", ["imageStyle"], ["onActivated"]}]
      188 GETIMPORT                        R27 K77 [UDim2.fromOffset]
      190 LOADN                            R28 20
      191 LOADN                            R29 0
      192 CALL                             R27 2 1
      193 SETTABLEKS                       R27 R26 K73 ["Position"]
      195 JUMPIFNOTEQKN                    R2 K78 [-1] ; [+10]
      197 GETTABLEKS                       R27 R7 K65 ["Color"]
      199 GETTABLEKS                       R27 R27 K66 ["Extended"]
      201 GETTABLEKS                       R27 R27 K79 ["Red"]
      203 GETTABLEKS                       R27 R27 K80 ["Red_600"]
      205 JUMP                             ; [+6]
      206 GETTABLEKS                       R27 R7 K65 ["Color"]
      208 GETTABLEKS                       R27 R27 K69 ["Content"]
      210 GETTABLEKS                       R27 R27 K70 ["Muted"]
      212 SETTABLEKS                       R27 R26 K62 ["imageStyle"]
      214 NEWCLOSURE                       R27 P3
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R3
      217 SETTABLEKS                       R27 R26 K63 ["onActivated"]
      219 CALL                             R24 2 1
      220 SETTABLEKS                       R24 R23 K58 ["Downvote"]
      222 CALL                             R20 3 1
      223 SETTABLEKS                       R20 R19 K50 ["VoteButtons"]
      225 CALL                             R16 3 1
      226 SETTABLEKS                       R16 R15 K44 ["Rating"]
      228 GETUPVAL                         R16 0
      229 GETTABLEKS                       R16 R16 K9 ["createElement"]
      231 GETUPVAL                         R17 3
      232 DUPTABLE                         R18 K82 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-right align-y-bottom gap-medium auto-xy"}]
      233 DUPTABLE                         R19 K85 [{"RestartButton", "CloseButton"}]
      234 GETUPVAL                         R20 0
      235 GETTABLEKS                       R20 R20 K9 ["createElement"]
      237 GETUPVAL                         R21 7
      238 DUPTABLE                         R22 K88 [{["LayoutOrder"] = 0, ["text"], ["variant"], ["onActivated"]}]
      239 LOADK                            R25 K29 ["Plugin"]
      240 LOADK                            R26 K89 ["Restart"]
      241 NAMECALL                         R23 R6 K34 ["getText"]
      243 CALL                             R23 3 1
      244 SETTABLEKS                       R23 R22 K86 ["text"]
      246 GETUPVAL                         R23 2
      247 GETTABLEKS                       R23 R23 K90 ["Enums"]
      249 GETTABLEKS                       R23 R23 K91 ["ButtonVariant"]
      251 GETTABLEKS                       R23 R23 K92 ["Standard"]
      253 SETTABLEKS                       R23 R22 K87 ["variant"]
      255 GETTABLEKS                       R23 R0 K93 ["onRestart"]
      257 SETTABLEKS                       R23 R22 K63 ["onActivated"]
      259 CALL                             R20 2 1
      260 SETTABLEKS                       R20 R19 K83 ["RestartButton"]
      262 GETUPVAL                         R20 0
      263 GETTABLEKS                       R20 R20 K9 ["createElement"]
      265 GETUPVAL                         R21 7
      266 DUPTABLE                         R22 K95 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"]}]
      267 LOADK                            R25 K29 ["Plugin"]
      268 LOADK                            R26 K96 ["Close"]
      269 NAMECALL                         R23 R6 K34 ["getText"]
      271 CALL                             R23 3 1
      272 SETTABLEKS                       R23 R22 K86 ["text"]
      274 GETUPVAL                         R23 2
      275 GETTABLEKS                       R23 R23 K90 ["Enums"]
      277 GETTABLEKS                       R23 R23 K91 ["ButtonVariant"]
      279 GETTABLEKS                       R23 R23 K97 ["Emphasis"]
      281 SETTABLEKS                       R23 R22 K87 ["variant"]
      283 GETUPVAL                         R23 2
      284 GETTABLEKS                       R23 R23 K90 ["Enums"]
      286 GETTABLEKS                       R23 R23 K98 ["InputSize"]
      288 GETTABLEKS                       R23 R23 K99 ["Medium"]
      290 SETTABLEKS                       R23 R22 K94 ["size"]
      292 GETTABLEKS                       R23 R0 K100 ["onClose"]
      294 SETTABLEKS                       R23 R22 K63 ["onActivated"]
      296 CALL                             R20 2 1
      297 SETTABLEKS                       R20 R19 K84 ["CloseButton"]
      299 CALL                             R16 3 1
      300 SETTABLEKS                       R16 R15 K45 ["Buttons"]
      302 CALL                             R12 3 1
      303 SETTABLEKS                       R12 R11 K19 ["ActionsRow"]
      305 CALL                             R8 3 -1
      306 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R4 K14 ["Text"]
       41 GETTABLEKS                       R8 R4 K15 ["Image"]
       43 GETTABLEKS                       R9 R4 K16 ["View"]
       45 GETTABLEKS                       R10 R4 K17 ["Button"]
       47 GETTABLEKS                       R11 R4 K18 ["Divider"]
       49 DUPCLOSURE                       R12 K19 [PROTO_5]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R10
       58 RETURN                           R12 1
