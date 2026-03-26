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
       22 GETUPVAL                         R9 4
       23 CALL                             R9 0 1
       24 JUMPIFNOT                        R9 ; [+3]
       25 NEWTABLE                         R8 0 0
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 CALL                             R6 2 1
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R7 R8 K3 ["createElement"]
       33 GETUPVAL                         R8 5
       34 DUPTABLE                         R9 K5 [{"tag"}]
       35 LOADK                            R10 K6 ["col size-full padding-medium gap-medium"]
       36 SETTABLEKS                       R10 R9 K4 ["tag"]
       38 DUPTABLE                         R10 K9 [{"Content", "Footer"}]
       39 GETUPVAL                         R12 3
       40 GETTABLEKS                       R11 R12 K3 ["createElement"]
       42 GETUPVAL                         R12 5
       43 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
       44 LOADN                            R14 1
       45 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       47 LOADK                            R14 K12 ["row size-full-0 auto-y gap-medium align-y-center"]
       48 SETTABLEKS                       R14 R13 K4 ["tag"]
       50 DUPTABLE                         R14 K15 [{"Icon", "Text"}]
       51 GETUPVAL                         R16 3
       52 GETTABLEKS                       R15 R16 K3 ["createElement"]
       54 GETUPVAL                         R16 6
       55 DUPTABLE                         R17 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       56 LOADN                            R18 1
       57 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       59 GETUPVAL                         R21 7
       60 GETTABLEKS                       R20 R21 K21 ["Enums"]
       62 GETTABLEKS                       R19 R20 K22 ["IconName"]
       64 GETTABLEKS                       R18 R19 K23 ["TriangleExclamation"]
       66 SETTABLEKS                       R18 R17 K16 ["name"]
       68 GETUPVAL                         R21 7
       69 GETTABLEKS                       R20 R21 K21 ["Enums"]
       71 GETTABLEKS                       R19 R20 K24 ["IconSize"]
       73 GETTABLEKS                       R18 R19 K25 ["Large"]
       75 SETTABLEKS                       R18 R17 K17 ["size"]
       77 GETTABLEKS                       R20 R3 K26 ["Color"]
       79 GETTABLEKS                       R19 R20 K27 ["System"]
       81 GETTABLEKS                       R18 R19 K28 ["Warning"]
       83 SETTABLEKS                       R18 R17 K18 ["style"]
       85 GETUPVAL                         R21 7
       86 GETTABLEKS                       R20 R21 K21 ["Enums"]
       88 GETTABLEKS                       R19 R20 K29 ["IconVariant"]
       90 GETTABLEKS                       R18 R19 K30 ["Filled"]
       92 SETTABLEKS                       R18 R17 K19 ["variant"]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K13 ["Icon"]
       97 GETUPVAL                         R16 3
       98 GETTABLEKS                       R15 R16 K3 ["createElement"]
      100 GETUPVAL                         R16 8
      101 DUPTABLE                         R17 K31 [{"LayoutOrder", "Text", "tag"}]
      102 LOADN                            R18 2
      103 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      105 GETTABLEKS                       R18 R0 K14 ["Text"]
      107 SETTABLEKS                       R18 R17 K14 ["Text"]
      109 LOADK                            R18 K32 ["text-body-small text-align-x-left text-wrap fill auto-y"]
      110 SETTABLEKS                       R18 R17 K4 ["tag"]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K14 ["Text"]
      115 CALL                             R11 3 1
      116 SETTABLEKS                       R11 R10 K7 ["Content"]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R11 R12 K3 ["createElement"]
      121 GETUPVAL                         R12 5
      122 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
      123 LOADN                            R14 2
      124 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      126 LOADK                            R14 K33 ["row size-full-0 auto-y align-y-center"]
      127 SETTABLEKS                       R14 R13 K4 ["tag"]
      129 DUPTABLE                         R14 K36 [{"Link", "Buttons"}]
      130 GETUPVAL                         R16 3
      131 GETTABLEKS                       R15 R16 K3 ["createElement"]
      133 GETUPVAL                         R16 5
      134 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      135 LOADN                            R18 1
      136 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      138 LOADK                            R18 K37 ["fill auto-y align-y-center"]
      139 SETTABLEKS                       R18 R17 K4 ["tag"]
      141 GETTABLEKS                       R19 R0 K38 ["LinkText"]
      143 JUMPIFEQKNIL                     R19 ; [+24]
      145 GETTABLEKS                       R19 R0 K39 ["LinkUrl"]
      147 JUMPIFEQKNIL                     R19 ; [+20]
      149 GETUPVAL                         R19 3
      150 GETTABLEKS                       R18 R19 K3 ["createElement"]
      152 GETUPVAL                         R19 8
      153 DUPTABLE                         R20 K41 [{"tag", "Text", "onActivated"}]
      154 LOADK                            R21 K42 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      155 SETTABLEKS                       R21 R20 K4 ["tag"]
      157 GETTABLEKS                       R21 R0 K38 ["LinkText"]
      159 SETTABLEKS                       R21 R20 K14 ["Text"]
      161 NEWCLOSURE                       R21 P1
      162 CAPTURE                          UPVAL U9
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R21 R20 K40 ["onActivated"]
      166 CALL                             R18 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R18
      169 CALL                             R15 3 1
      170 SETTABLEKS                       R15 R14 K34 ["Link"]
      172 GETUPVAL                         R16 3
      173 GETTABLEKS                       R15 R16 K3 ["createElement"]
      175 GETUPVAL                         R16 5
      176 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      177 LOADN                            R18 2
      178 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      180 LOADK                            R18 K43 ["row auto-xy align-x-right align-y-center gap-xsmall"]
      181 SETTABLEKS                       R18 R17 K4 ["tag"]
      183 DUPTABLE                         R18 K46 [{"Cancel", "Confirm"}]
      184 GETUPVAL                         R20 3
      185 GETTABLEKS                       R19 R20 K3 ["createElement"]
      187 GETUPVAL                         R20 10
      188 DUPTABLE                         R21 K49 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      189 LOADN                            R22 1
      190 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      192 LOADK                            R24 K50 ["MainView"]
      193 LOADK                            R25 K51 ["CancelText"]
      194 NAMECALL                         R22 R2 K52 ["getText"]
      196 CALL                             R22 3 1
      197 SETTABLEKS                       R22 R21 K47 ["text"]
      199 GETUPVAL                         R25 7
      200 GETTABLEKS                       R24 R25 K21 ["Enums"]
      202 GETTABLEKS                       R23 R24 K53 ["ButtonVariant"]
      204 GETTABLEKS                       R22 R23 K54 ["Standard"]
      206 SETTABLEKS                       R22 R21 K19 ["variant"]
      208 GETUPVAL                         R25 7
      209 GETTABLEKS                       R24 R25 K21 ["Enums"]
      211 GETTABLEKS                       R23 R24 K55 ["InputSize"]
      213 GETTABLEKS                       R22 R23 K56 ["Small"]
      215 SETTABLEKS                       R22 R21 K17 ["size"]
      217 NEWCLOSURE                       R22 P2
      218 CAPTURE                          VAL R1
      219 SETTABLEKS                       R22 R21 K40 ["onActivated"]
      221 LOADK                            R22 K57 ["dialog-cancel-button"]
      222 SETTABLEKS                       R22 R21 K48 ["testId"]
      224 CALL                             R19 2 1
      225 SETTABLEKS                       R19 R18 K44 ["Cancel"]
      227 GETUPVAL                         R20 3
      228 GETTABLEKS                       R19 R20 K3 ["createElement"]
      230 GETUPVAL                         R20 10
      231 DUPTABLE                         R21 K59 [{"LayoutOrder", "text", "variant", "size", "isLoading", "onActivated", "testId"}]
      232 LOADN                            R22 2
      233 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      235 LOADK                            R24 K50 ["MainView"]
      236 LOADK                            R25 K60 ["ConfirmText"]
      237 NAMECALL                         R22 R2 K52 ["getText"]
      239 CALL                             R22 3 1
      240 SETTABLEKS                       R22 R21 K47 ["text"]
      242 GETUPVAL                         R25 7
      243 GETTABLEKS                       R24 R25 K21 ["Enums"]
      245 GETTABLEKS                       R23 R24 K53 ["ButtonVariant"]
      247 GETTABLEKS                       R22 R23 K61 ["Emphasis"]
      249 SETTABLEKS                       R22 R21 K19 ["variant"]
      251 GETUPVAL                         R25 7
      252 GETTABLEKS                       R24 R25 K21 ["Enums"]
      254 GETTABLEKS                       R23 R24 K55 ["InputSize"]
      256 GETTABLEKS                       R22 R23 K56 ["Small"]
      258 SETTABLEKS                       R22 R21 K17 ["size"]
      260 SETTABLEKS                       R4 R21 K58 ["isLoading"]
      262 SETTABLEKS                       R6 R21 K40 ["onActivated"]
      264 LOADK                            R22 K62 ["dialog-confirm-button"]
      265 SETTABLEKS                       R22 R21 K48 ["testId"]
      267 CALL                             R19 2 1
      268 SETTABLEKS                       R19 R18 K45 ["Confirm"]
      270 CALL                             R15 3 1
      271 SETTABLEKS                       R15 R14 K35 ["Buttons"]
      273 CALL                             R11 3 1
      274 SETTABLEKS                       R11 R10 K8 ["Footer"]
      276 CALL                             R7 3 -1
      277 RETURN                           R7 -1

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
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R16 R0 K22 ["Src"]
       63 GETTABLEKS                       R15 R16 K25 ["Flags"]
       65 GETTABLEKS                       R14 R15 K26 ["getFFlagAmrMiscCallbackFixes"]
       67 CALL                             R13 1 1
       68 DUPCLOSURE                       R14 K27 [PROTO_3]
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 RETURN                           R14 1
