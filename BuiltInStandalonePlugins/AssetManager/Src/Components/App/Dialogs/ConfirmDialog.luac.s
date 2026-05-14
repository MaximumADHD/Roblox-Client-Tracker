PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ConfirmCallback"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["closeDialog"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["LinkUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R5
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K2 ["createElement"]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R8 R8 K3 ["View"]
       25 DUPTABLE                         R9 K5 [{"tag"}]
       26 LOADK                            R10 K6 ["col size-full padding-medium gap-medium"]
       27 SETTABLEKS                       R10 R9 K4 ["tag"]
       29 DUPTABLE                         R10 K9 [{"Content", "Footer"}]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R11 R11 K2 ["createElement"]
       33 GETUPVAL                         R12 4
       34 GETTABLEKS                       R12 R12 K3 ["View"]
       36 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
       37 LOADN                            R14 1
       38 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       40 LOADK                            R14 K12 ["row size-full-0 auto-y gap-medium align-y-center"]
       41 SETTABLEKS                       R14 R13 K4 ["tag"]
       43 DUPTABLE                         R14 K15 [{"Icon", "Text"}]
       44 GETUPVAL                         R15 3
       45 GETTABLEKS                       R15 R15 K2 ["createElement"]
       47 GETUPVAL                         R16 4
       48 GETTABLEKS                       R16 R16 K13 ["Icon"]
       50 DUPTABLE                         R17 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       51 LOADN                            R18 1
       52 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       54 GETUPVAL                         R18 4
       55 GETTABLEKS                       R18 R18 K21 ["Enums"]
       57 GETTABLEKS                       R18 R18 K22 ["IconName"]
       59 GETTABLEKS                       R18 R18 K23 ["TriangleExclamation"]
       61 SETTABLEKS                       R18 R17 K16 ["name"]
       63 GETUPVAL                         R18 4
       64 GETTABLEKS                       R18 R18 K21 ["Enums"]
       66 GETTABLEKS                       R18 R18 K24 ["IconSize"]
       68 GETTABLEKS                       R18 R18 K25 ["Large"]
       70 SETTABLEKS                       R18 R17 K17 ["size"]
       72 GETTABLEKS                       R18 R3 K26 ["Color"]
       74 GETTABLEKS                       R18 R18 K27 ["System"]
       76 GETTABLEKS                       R18 R18 K28 ["Warning"]
       78 SETTABLEKS                       R18 R17 K18 ["style"]
       80 GETUPVAL                         R18 4
       81 GETTABLEKS                       R18 R18 K21 ["Enums"]
       83 GETTABLEKS                       R18 R18 K29 ["IconVariant"]
       85 GETTABLEKS                       R18 R18 K30 ["Filled"]
       87 SETTABLEKS                       R18 R17 K19 ["variant"]
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K13 ["Icon"]
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K2 ["createElement"]
       95 GETUPVAL                         R16 4
       96 GETTABLEKS                       R16 R16 K14 ["Text"]
       98 DUPTABLE                         R17 K31 [{"LayoutOrder", "Text", "tag"}]
       99 LOADN                            R18 2
      100 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      102 GETTABLEKS                       R18 R0 K14 ["Text"]
      104 SETTABLEKS                       R18 R17 K14 ["Text"]
      106 LOADK                            R18 K32 ["text-body-small text-align-x-left text-wrap fill auto-y"]
      107 SETTABLEKS                       R18 R17 K4 ["tag"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K14 ["Text"]
      112 CALL                             R11 3 1
      113 SETTABLEKS                       R11 R10 K7 ["Content"]
      115 GETUPVAL                         R11 3
      116 GETTABLEKS                       R11 R11 K2 ["createElement"]
      118 GETUPVAL                         R12 4
      119 GETTABLEKS                       R12 R12 K3 ["View"]
      121 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
      122 LOADN                            R14 2
      123 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      125 LOADK                            R14 K33 ["row size-full-0 auto-y align-y-center"]
      126 SETTABLEKS                       R14 R13 K4 ["tag"]
      128 DUPTABLE                         R14 K36 [{"Link", "Buttons"}]
      129 GETUPVAL                         R15 3
      130 GETTABLEKS                       R15 R15 K2 ["createElement"]
      132 GETUPVAL                         R16 4
      133 GETTABLEKS                       R16 R16 K3 ["View"]
      135 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      136 LOADN                            R18 1
      137 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      139 LOADK                            R18 K37 ["fill auto-y align-y-center"]
      140 SETTABLEKS                       R18 R17 K4 ["tag"]
      142 GETTABLEKS                       R19 R0 K38 ["LinkText"]
      144 JUMPIFEQKNIL                     R19 ; [+26]
      146 GETTABLEKS                       R19 R0 K39 ["LinkUrl"]
      148 JUMPIFEQKNIL                     R19 ; [+22]
      150 GETUPVAL                         R18 3
      151 GETTABLEKS                       R18 R18 K2 ["createElement"]
      153 GETUPVAL                         R19 4
      154 GETTABLEKS                       R19 R19 K14 ["Text"]
      156 DUPTABLE                         R20 K41 [{"tag", "Text", "onActivated"}]
      157 LOADK                            R21 K42 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      158 SETTABLEKS                       R21 R20 K4 ["tag"]
      160 GETTABLEKS                       R21 R0 K38 ["LinkText"]
      162 SETTABLEKS                       R21 R20 K14 ["Text"]
      164 NEWCLOSURE                       R21 P1
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R21 R20 K40 ["onActivated"]
      169 CALL                             R18 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R18
      172 CALL                             R15 3 1
      173 SETTABLEKS                       R15 R14 K34 ["Link"]
      175 GETUPVAL                         R15 3
      176 GETTABLEKS                       R15 R15 K2 ["createElement"]
      178 GETUPVAL                         R16 4
      179 GETTABLEKS                       R16 R16 K3 ["View"]
      181 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      182 LOADN                            R18 2
      183 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      185 LOADK                            R18 K43 ["row auto-xy align-x-right align-y-center gap-xsmall"]
      186 SETTABLEKS                       R18 R17 K4 ["tag"]
      188 DUPTABLE                         R18 K46 [{"Cancel", "Confirm"}]
      189 GETUPVAL                         R19 3
      190 GETTABLEKS                       R19 R19 K2 ["createElement"]
      192 GETUPVAL                         R20 4
      193 GETTABLEKS                       R20 R20 K47 ["Button"]
      195 DUPTABLE                         R21 K50 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      196 LOADN                            R22 1
      197 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      199 LOADK                            R24 K51 ["MainView"]
      200 LOADK                            R25 K52 ["CancelText"]
      201 NAMECALL                         R22 R2 K53 ["getText"]
      203 CALL                             R22 3 1
      204 SETTABLEKS                       R22 R21 K48 ["text"]
      206 GETUPVAL                         R22 4
      207 GETTABLEKS                       R22 R22 K21 ["Enums"]
      209 GETTABLEKS                       R22 R22 K54 ["ButtonVariant"]
      211 GETTABLEKS                       R22 R22 K55 ["Standard"]
      213 SETTABLEKS                       R22 R21 K19 ["variant"]
      215 GETUPVAL                         R22 4
      216 GETTABLEKS                       R22 R22 K21 ["Enums"]
      218 GETTABLEKS                       R22 R22 K56 ["InputSize"]
      220 GETTABLEKS                       R22 R22 K57 ["Small"]
      222 SETTABLEKS                       R22 R21 K17 ["size"]
      224 NEWCLOSURE                       R22 P2
      225 CAPTURE                          VAL R1
      226 SETTABLEKS                       R22 R21 K40 ["onActivated"]
      228 LOADK                            R22 K58 ["dialog-cancel-button"]
      229 SETTABLEKS                       R22 R21 K49 ["testId"]
      231 CALL                             R19 2 1
      232 SETTABLEKS                       R19 R18 K44 ["Cancel"]
      234 GETUPVAL                         R19 3
      235 GETTABLEKS                       R19 R19 K2 ["createElement"]
      237 GETUPVAL                         R20 4
      238 GETTABLEKS                       R20 R20 K47 ["Button"]
      240 DUPTABLE                         R21 K60 [{"LayoutOrder", "text", "variant", "size", "isLoading", "onActivated", "testId"}]
      241 LOADN                            R22 2
      242 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      244 LOADK                            R24 K51 ["MainView"]
      245 LOADK                            R25 K61 ["ConfirmText"]
      246 NAMECALL                         R22 R2 K53 ["getText"]
      248 CALL                             R22 3 1
      249 SETTABLEKS                       R22 R21 K48 ["text"]
      251 GETUPVAL                         R22 4
      252 GETTABLEKS                       R22 R22 K21 ["Enums"]
      254 GETTABLEKS                       R22 R22 K54 ["ButtonVariant"]
      256 GETTABLEKS                       R22 R22 K62 ["Emphasis"]
      258 SETTABLEKS                       R22 R21 K19 ["variant"]
      260 GETUPVAL                         R22 4
      261 GETTABLEKS                       R22 R22 K21 ["Enums"]
      263 GETTABLEKS                       R22 R22 K56 ["InputSize"]
      265 GETTABLEKS                       R22 R22 K57 ["Small"]
      267 SETTABLEKS                       R22 R21 K17 ["size"]
      269 SETTABLEKS                       R4 R21 K59 ["isLoading"]
      271 SETTABLEKS                       R6 R21 K40 ["onActivated"]
      273 LOADK                            R22 K63 ["dialog-confirm-button"]
      274 SETTABLEKS                       R22 R21 K49 ["testId"]
      276 CALL                             R19 2 1
      277 SETTABLEKS                       R19 R18 K45 ["Confirm"]
      279 CALL                             R15 3 1
      280 SETTABLEKS                       R15 R14 K35 ["Buttons"]
      282 CALL                             R11 3 1
      283 SETTABLEKS                       R11 R10 K8 ["Footer"]
      285 CALL                             R7 3 -1
      286 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["BrowserService"]
       31 NAMECALL                         R4 R4 K14 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K17 ["useTokens"]
       45 GETTABLEKS                       R7 R3 K18 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K19 ["Localization"]
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Src"]
       53 GETTABLEKS                       R10 R10 K20 ["Controllers"]
       55 GETTABLEKS                       R10 R10 K21 ["PluginController"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K22 [PROTO_3]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 RETURN                           R10 1
