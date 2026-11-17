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
        9 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R5
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K4 ["createElement"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K5 ["View"]
       29 DUPTABLE                         R9 K8 [{["tag"] = "col gap-medium size-full padding-medium"}]
       30 DUPTABLE                         R10 K11 [{"Content", "Footer"}]
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K4 ["createElement"]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K5 ["View"]
       37 DUPTABLE                         R13 K15 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill gap-medium size-full-0"}]
       38 DUPTABLE                         R14 K18 [{"Icon", "Text"}]
       39 GETUPVAL                         R15 3
       40 GETTABLEKS                       R15 R15 K4 ["createElement"]
       42 GETUPVAL                         R16 2
       43 GETTABLEKS                       R16 R16 K16 ["Icon"]
       45 DUPTABLE                         R17 K23 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       46 GETUPVAL                         R18 2
       47 GETTABLEKS                       R18 R18 K24 ["Enums"]
       49 GETTABLEKS                       R18 R18 K25 ["IconName"]
       51 GETTABLEKS                       R18 R18 K26 ["TriangleExclamation"]
       53 SETTABLEKS                       R18 R17 K19 ["name"]
       55 GETUPVAL                         R18 2
       56 GETTABLEKS                       R18 R18 K24 ["Enums"]
       58 GETTABLEKS                       R18 R18 K27 ["IconSize"]
       60 GETTABLEKS                       R18 R18 K28 ["Large"]
       62 SETTABLEKS                       R18 R17 K20 ["size"]
       64 GETTABLEKS                       R18 R3 K29 ["Color"]
       66 GETTABLEKS                       R18 R18 K30 ["System"]
       68 GETTABLEKS                       R18 R18 K31 ["Warning"]
       70 SETTABLEKS                       R18 R17 K21 ["style"]
       72 GETUPVAL                         R18 2
       73 GETTABLEKS                       R18 R18 K24 ["Enums"]
       75 GETTABLEKS                       R18 R18 K32 ["IconVariant"]
       77 GETTABLEKS                       R18 R18 K33 ["Filled"]
       79 SETTABLEKS                       R18 R17 K22 ["variant"]
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K16 ["Icon"]
       84 GETUPVAL                         R15 3
       85 GETTABLEKS                       R15 R15 K4 ["createElement"]
       87 GETUPVAL                         R16 2
       88 GETTABLEKS                       R16 R16 K17 ["Text"]
       90 DUPTABLE                         R17 K36 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-body-small text-wrap text-align-x-left"}]
       91 GETTABLEKS                       R18 R0 K17 ["Text"]
       93 SETTABLEKS                       R18 R17 K17 ["Text"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K17 ["Text"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R10 K9 ["Content"]
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R11 R11 K4 ["createElement"]
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K5 ["View"]
      107 DUPTABLE                         R13 K38 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center size-full-0 auto-y"}]
      108 DUPTABLE                         R14 K41 [{"Link", "Buttons"}]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K4 ["createElement"]
      112 GETUPVAL                         R16 2
      113 GETTABLEKS                       R16 R16 K5 ["View"]
      115 DUPTABLE                         R17 K43 [{["LayoutOrder"] = 1, ["tag"] = "align-y-center fill auto-y"}]
      116 GETTABLEKS                       R19 R0 K44 ["LinkText"]
      118 JUMPIFEQKNIL                     R19 ; [+23]
      120 GETTABLEKS                       R19 R0 K45 ["LinkUrl"]
      122 JUMPIFEQKNIL                     R19 ; [+19]
      124 GETUPVAL                         R18 3
      125 GETTABLEKS                       R18 R18 K4 ["createElement"]
      127 GETUPVAL                         R19 2
      128 GETTABLEKS                       R19 R19 K17 ["Text"]
      130 DUPTABLE                         R20 K48 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      131 GETTABLEKS                       R21 R0 K44 ["LinkText"]
      133 SETTABLEKS                       R21 R20 K17 ["Text"]
      135 NEWCLOSURE                       R21 P1
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R21 R20 K47 ["onActivated"]
      140 CALL                             R18 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R18
      143 CALL                             R15 3 1
      144 SETTABLEKS                       R15 R14 K39 ["Link"]
      146 GETUPVAL                         R15 3
      147 GETTABLEKS                       R15 R15 K4 ["createElement"]
      149 GETUPVAL                         R16 2
      150 GETTABLEKS                       R16 R16 K5 ["View"]
      152 DUPTABLE                         R17 K50 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-right align-y-center gap-xsmall auto-xy"}]
      153 DUPTABLE                         R18 K53 [{"Cancel", "Confirm"}]
      154 GETUPVAL                         R19 3
      155 GETTABLEKS                       R19 R19 K4 ["createElement"]
      157 GETUPVAL                         R20 2
      158 GETTABLEKS                       R20 R20 K54 ["Button"]
      160 DUPTABLE                         R21 K58 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "dialog-cancel-button"}]
      161 LOADK                            R24 K59 ["MainView"]
      162 LOADK                            R25 K60 ["CancelText"]
      163 NAMECALL                         R22 R2 K61 ["getText"]
      165 CALL                             R22 3 1
      166 SETTABLEKS                       R22 R21 K55 ["text"]
      168 GETUPVAL                         R22 2
      169 GETTABLEKS                       R22 R22 K24 ["Enums"]
      171 GETTABLEKS                       R22 R22 K62 ["ButtonVariant"]
      173 GETTABLEKS                       R22 R22 K63 ["Standard"]
      175 SETTABLEKS                       R22 R21 K22 ["variant"]
      177 GETUPVAL                         R22 2
      178 GETTABLEKS                       R22 R22 K24 ["Enums"]
      180 GETTABLEKS                       R22 R22 K64 ["InputSize"]
      182 GETTABLEKS                       R22 R22 K65 ["Small"]
      184 SETTABLEKS                       R22 R21 K20 ["size"]
      186 NEWCLOSURE                       R22 P2
      187 CAPTURE                          VAL R1
      188 SETTABLEKS                       R22 R21 K47 ["onActivated"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K51 ["Cancel"]
      193 GETUPVAL                         R19 3
      194 GETTABLEKS                       R19 R19 K4 ["createElement"]
      196 GETUPVAL                         R20 2
      197 GETTABLEKS                       R20 R20 K54 ["Button"]
      199 DUPTABLE                         R21 K68 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["isLoading"], ["onActivated"], ["testId"] = "dialog-confirm-button"}]
      200 LOADK                            R24 K59 ["MainView"]
      201 LOADK                            R25 K69 ["ConfirmText"]
      202 NAMECALL                         R22 R2 K61 ["getText"]
      204 CALL                             R22 3 1
      205 SETTABLEKS                       R22 R21 K55 ["text"]
      207 GETUPVAL                         R22 2
      208 GETTABLEKS                       R22 R22 K24 ["Enums"]
      210 GETTABLEKS                       R22 R22 K62 ["ButtonVariant"]
      212 GETTABLEKS                       R22 R22 K70 ["Emphasis"]
      214 SETTABLEKS                       R22 R21 K22 ["variant"]
      216 GETUPVAL                         R22 2
      217 GETTABLEKS                       R22 R22 K24 ["Enums"]
      219 GETTABLEKS                       R22 R22 K64 ["InputSize"]
      221 GETTABLEKS                       R22 R22 K65 ["Small"]
      223 SETTABLEKS                       R22 R21 K20 ["size"]
      225 SETTABLEKS                       R4 R21 K66 ["isLoading"]
      227 SETTABLEKS                       R6 R21 K47 ["onActivated"]
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K52 ["Confirm"]
      232 CALL                             R15 3 1
      233 SETTABLEKS                       R15 R14 K40 ["Buttons"]
      235 CALL                             R11 3 1
      236 SETTABLEKS                       R11 R10 K10 ["Footer"]
      238 CALL                             R7 3 -1
      239 RETURN                           R7 -1

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
       41 GETTABLEKS                       R6 R3 K16 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K17 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Src"]
       49 GETTABLEKS                       R9 R9 K18 ["Controllers"]
       51 GETTABLEKS                       R9 R9 K19 ["PluginController"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K20 [PROTO_3]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 RETURN                           R9 1
