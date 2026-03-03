PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ConfirmCallback"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["LinkUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R5
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K3 ["createElement"]
       26 GETUPVAL                         R8 4
       27 DUPTABLE                         R9 K5 [{"tag"}]
       28 LOADK                            R10 K6 ["col size-full padding-medium gap-medium"]
       29 SETTABLEKS                       R10 R9 K4 ["tag"]
       31 DUPTABLE                         R10 K9 [{"Content", "Footer"}]
       32 GETUPVAL                         R12 3
       33 GETTABLEKS                       R11 R12 K3 ["createElement"]
       35 GETUPVAL                         R12 4
       36 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
       37 LOADN                            R14 1
       38 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       40 LOADK                            R14 K12 ["row size-full-0 auto-y gap-medium align-y-center"]
       41 SETTABLEKS                       R14 R13 K4 ["tag"]
       43 DUPTABLE                         R14 K15 [{"Icon", "Text"}]
       44 GETUPVAL                         R16 3
       45 GETTABLEKS                       R15 R16 K3 ["createElement"]
       47 GETUPVAL                         R16 5
       48 DUPTABLE                         R17 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       49 LOADN                            R18 1
       50 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       52 GETUPVAL                         R21 6
       53 GETTABLEKS                       R20 R21 K21 ["Enums"]
       55 GETTABLEKS                       R19 R20 K22 ["IconName"]
       57 GETTABLEKS                       R18 R19 K23 ["TriangleExclamation"]
       59 SETTABLEKS                       R18 R17 K16 ["name"]
       61 GETUPVAL                         R21 6
       62 GETTABLEKS                       R20 R21 K21 ["Enums"]
       64 GETTABLEKS                       R19 R20 K24 ["IconSize"]
       66 GETTABLEKS                       R18 R19 K25 ["Large"]
       68 SETTABLEKS                       R18 R17 K17 ["size"]
       70 GETTABLEKS                       R20 R3 K26 ["Color"]
       72 GETTABLEKS                       R19 R20 K27 ["System"]
       74 GETTABLEKS                       R18 R19 K28 ["Warning"]
       76 SETTABLEKS                       R18 R17 K18 ["style"]
       78 GETUPVAL                         R21 6
       79 GETTABLEKS                       R20 R21 K21 ["Enums"]
       81 GETTABLEKS                       R19 R20 K29 ["IconVariant"]
       83 GETTABLEKS                       R18 R19 K30 ["Filled"]
       85 SETTABLEKS                       R18 R17 K19 ["variant"]
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K13 ["Icon"]
       90 GETUPVAL                         R16 3
       91 GETTABLEKS                       R15 R16 K3 ["createElement"]
       93 GETUPVAL                         R16 7
       94 DUPTABLE                         R17 K31 [{"LayoutOrder", "Text", "tag"}]
       95 LOADN                            R18 2
       96 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       98 GETTABLEKS                       R18 R0 K14 ["Text"]
      100 SETTABLEKS                       R18 R17 K14 ["Text"]
      102 LOADK                            R18 K32 ["text-body-small text-align-x-left text-wrap fill auto-y"]
      103 SETTABLEKS                       R18 R17 K4 ["tag"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K14 ["Text"]
      108 CALL                             R11 3 1
      109 SETTABLEKS                       R11 R10 K7 ["Content"]
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R11 R12 K3 ["createElement"]
      114 GETUPVAL                         R12 4
      115 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
      116 LOADN                            R14 2
      117 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      119 LOADK                            R14 K33 ["row size-full-0 auto-y align-y-center"]
      120 SETTABLEKS                       R14 R13 K4 ["tag"]
      122 DUPTABLE                         R14 K36 [{"Link", "Buttons"}]
      123 GETUPVAL                         R16 3
      124 GETTABLEKS                       R15 R16 K3 ["createElement"]
      126 GETUPVAL                         R16 4
      127 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      128 LOADN                            R18 1
      129 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      131 LOADK                            R18 K37 ["fill auto-y align-y-center"]
      132 SETTABLEKS                       R18 R17 K4 ["tag"]
      134 GETTABLEKS                       R19 R0 K38 ["LinkText"]
      136 JUMPIFEQKNIL                     R19 ; [+24]
      138 GETTABLEKS                       R19 R0 K39 ["LinkUrl"]
      140 JUMPIFEQKNIL                     R19 ; [+20]
      142 GETUPVAL                         R19 3
      143 GETTABLEKS                       R18 R19 K3 ["createElement"]
      145 GETUPVAL                         R19 7
      146 DUPTABLE                         R20 K41 [{"tag", "Text", "onActivated"}]
      147 LOADK                            R21 K42 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      148 SETTABLEKS                       R21 R20 K4 ["tag"]
      150 GETTABLEKS                       R21 R0 K38 ["LinkText"]
      152 SETTABLEKS                       R21 R20 K14 ["Text"]
      154 NEWCLOSURE                       R21 P1
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R21 R20 K40 ["onActivated"]
      159 CALL                             R18 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R18
      162 CALL                             R15 3 1
      163 SETTABLEKS                       R15 R14 K34 ["Link"]
      165 GETUPVAL                         R16 3
      166 GETTABLEKS                       R15 R16 K3 ["createElement"]
      168 GETUPVAL                         R16 4
      169 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      170 LOADN                            R18 2
      171 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      173 LOADK                            R18 K43 ["row auto-xy align-x-right align-y-center gap-xsmall"]
      174 SETTABLEKS                       R18 R17 K4 ["tag"]
      176 DUPTABLE                         R18 K46 [{"Cancel", "Confirm"}]
      177 GETUPVAL                         R20 3
      178 GETTABLEKS                       R19 R20 K3 ["createElement"]
      180 GETUPVAL                         R20 9
      181 DUPTABLE                         R21 K49 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      182 LOADN                            R22 1
      183 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      185 LOADK                            R24 K50 ["MainView"]
      186 LOADK                            R25 K51 ["CancelText"]
      187 NAMECALL                         R22 R2 K52 ["getText"]
      189 CALL                             R22 3 1
      190 SETTABLEKS                       R22 R21 K47 ["text"]
      192 GETUPVAL                         R25 6
      193 GETTABLEKS                       R24 R25 K21 ["Enums"]
      195 GETTABLEKS                       R23 R24 K53 ["ButtonVariant"]
      197 GETTABLEKS                       R22 R23 K54 ["Standard"]
      199 SETTABLEKS                       R22 R21 K19 ["variant"]
      201 GETUPVAL                         R25 6
      202 GETTABLEKS                       R24 R25 K21 ["Enums"]
      204 GETTABLEKS                       R23 R24 K55 ["InputSize"]
      206 GETTABLEKS                       R22 R23 K56 ["Small"]
      208 SETTABLEKS                       R22 R21 K17 ["size"]
      210 NEWCLOSURE                       R22 P2
      211 CAPTURE                          VAL R1
      212 SETTABLEKS                       R22 R21 K40 ["onActivated"]
      214 LOADK                            R22 K57 ["dialog-cancel-button"]
      215 SETTABLEKS                       R22 R21 K48 ["testId"]
      217 CALL                             R19 2 1
      218 SETTABLEKS                       R19 R18 K44 ["Cancel"]
      220 GETUPVAL                         R20 3
      221 GETTABLEKS                       R19 R20 K3 ["createElement"]
      223 GETUPVAL                         R20 9
      224 DUPTABLE                         R21 K59 [{"LayoutOrder", "text", "variant", "size", "isLoading", "onActivated", "testId"}]
      225 LOADN                            R22 2
      226 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      228 LOADK                            R24 K50 ["MainView"]
      229 LOADK                            R25 K60 ["ConfirmText"]
      230 NAMECALL                         R22 R2 K52 ["getText"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K47 ["text"]
      235 GETUPVAL                         R25 6
      236 GETTABLEKS                       R24 R25 K21 ["Enums"]
      238 GETTABLEKS                       R23 R24 K53 ["ButtonVariant"]
      240 GETTABLEKS                       R22 R23 K61 ["Emphasis"]
      242 SETTABLEKS                       R22 R21 K19 ["variant"]
      244 GETUPVAL                         R25 6
      245 GETTABLEKS                       R24 R25 K21 ["Enums"]
      247 GETTABLEKS                       R23 R24 K55 ["InputSize"]
      249 GETTABLEKS                       R22 R23 K56 ["Small"]
      251 SETTABLEKS                       R22 R21 K17 ["size"]
      253 SETTABLEKS                       R4 R21 K58 ["isLoading"]
      255 SETTABLEKS                       R6 R21 K40 ["onActivated"]
      257 LOADK                            R22 K62 ["dialog-confirm-button"]
      258 SETTABLEKS                       R22 R21 K48 ["testId"]
      260 CALL                             R19 2 1
      261 SETTABLEKS                       R19 R18 K45 ["Confirm"]
      263 CALL                             R15 3 1
      264 SETTABLEKS                       R15 R14 K35 ["Buttons"]
      266 CALL                             R11 3 1
      267 SETTABLEKS                       R11 R10 K8 ["Footer"]
      269 CALL                             R7 3 -1
      270 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["BrowserService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["View"]
       36 GETTABLEKS                       R6 R4 K15 ["Icon"]
       38 GETTABLEKS                       R7 R4 K16 ["Text"]
       40 GETTABLEKS                       R8 R4 K17 ["Button"]
       42 GETTABLEKS                       R10 R4 K18 ["Hooks"]
       44 GETTABLEKS                       R9 R10 K19 ["useTokens"]
       46 GETTABLEKS                       R10 R2 K20 ["ContextServices"]
       48 GETTABLEKS                       R11 R10 K21 ["Localization"]
       50 GETIMPORT                        R12 K5 [require]
       52 GETTABLEKS                       R15 R0 K22 ["Src"]
       54 GETTABLEKS                       R14 R15 K23 ["Controllers"]
       56 GETTABLEKS                       R13 R14 K24 ["PluginController"]
       58 CALL                             R12 1 1
       59 DUPCLOSURE                       R13 K25 [PROTO_3]
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 RETURN                           R13 1
