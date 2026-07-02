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
       25 DUPTABLE                         R9 K6 [{["tag"] = "col gap-medium size-full padding-medium"}]
       26 DUPTABLE                         R10 K9 [{"Content", "Footer"}]
       27 GETUPVAL                         R11 3
       28 GETTABLEKS                       R11 R11 K2 ["createElement"]
       30 GETUPVAL                         R12 4
       31 GETTABLEKS                       R12 R12 K3 ["View"]
       33 DUPTABLE                         R13 K13 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill gap-medium size-full-0"}]
       34 DUPTABLE                         R14 K16 [{"Icon", "Text"}]
       35 GETUPVAL                         R15 3
       36 GETTABLEKS                       R15 R15 K2 ["createElement"]
       38 GETUPVAL                         R16 4
       39 GETTABLEKS                       R16 R16 K14 ["Icon"]
       41 DUPTABLE                         R17 K21 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       42 GETUPVAL                         R18 4
       43 GETTABLEKS                       R18 R18 K22 ["Enums"]
       45 GETTABLEKS                       R18 R18 K23 ["IconName"]
       47 GETTABLEKS                       R18 R18 K24 ["TriangleExclamation"]
       49 SETTABLEKS                       R18 R17 K17 ["name"]
       51 GETUPVAL                         R18 4
       52 GETTABLEKS                       R18 R18 K22 ["Enums"]
       54 GETTABLEKS                       R18 R18 K25 ["IconSize"]
       56 GETTABLEKS                       R18 R18 K26 ["Large"]
       58 SETTABLEKS                       R18 R17 K18 ["size"]
       60 GETTABLEKS                       R18 R3 K27 ["Color"]
       62 GETTABLEKS                       R18 R18 K28 ["System"]
       64 GETTABLEKS                       R18 R18 K29 ["Warning"]
       66 SETTABLEKS                       R18 R17 K19 ["style"]
       68 GETUPVAL                         R18 4
       69 GETTABLEKS                       R18 R18 K22 ["Enums"]
       71 GETTABLEKS                       R18 R18 K30 ["IconVariant"]
       73 GETTABLEKS                       R18 R18 K31 ["Filled"]
       75 SETTABLEKS                       R18 R17 K20 ["variant"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K14 ["Icon"]
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K2 ["createElement"]
       83 GETUPVAL                         R16 4
       84 GETTABLEKS                       R16 R16 K15 ["Text"]
       86 DUPTABLE                         R17 K34 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-body-small text-wrap text-align-x-left"}]
       87 GETTABLEKS                       R18 R0 K15 ["Text"]
       89 SETTABLEKS                       R18 R17 K15 ["Text"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K15 ["Text"]
       94 CALL                             R11 3 1
       95 SETTABLEKS                       R11 R10 K7 ["Content"]
       97 GETUPVAL                         R11 3
       98 GETTABLEKS                       R11 R11 K2 ["createElement"]
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R12 R12 K3 ["View"]
      103 DUPTABLE                         R13 K36 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center size-full-0 auto-y"}]
      104 DUPTABLE                         R14 K39 [{"Link", "Buttons"}]
      105 GETUPVAL                         R15 3
      106 GETTABLEKS                       R15 R15 K2 ["createElement"]
      108 GETUPVAL                         R16 4
      109 GETTABLEKS                       R16 R16 K3 ["View"]
      111 DUPTABLE                         R17 K41 [{["LayoutOrder"] = 1, ["tag"] = "align-y-center fill auto-y"}]
      112 GETTABLEKS                       R19 R0 K42 ["LinkText"]
      114 JUMPIFEQKNIL                     R19 ; [+23]
      116 GETTABLEKS                       R19 R0 K43 ["LinkUrl"]
      118 JUMPIFEQKNIL                     R19 ; [+19]
      120 GETUPVAL                         R18 3
      121 GETTABLEKS                       R18 R18 K2 ["createElement"]
      123 GETUPVAL                         R19 4
      124 GETTABLEKS                       R19 R19 K15 ["Text"]
      126 DUPTABLE                         R20 K46 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      127 GETTABLEKS                       R21 R0 K42 ["LinkText"]
      129 SETTABLEKS                       R21 R20 K15 ["Text"]
      131 NEWCLOSURE                       R21 P1
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R21 R20 K45 ["onActivated"]
      136 CALL                             R18 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R18
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K37 ["Link"]
      142 GETUPVAL                         R15 3
      143 GETTABLEKS                       R15 R15 K2 ["createElement"]
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R16 R16 K3 ["View"]
      148 DUPTABLE                         R17 K48 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-right align-y-center gap-xsmall auto-xy"}]
      149 DUPTABLE                         R18 K51 [{"Cancel", "Confirm"}]
      150 GETUPVAL                         R19 3
      151 GETTABLEKS                       R19 R19 K2 ["createElement"]
      153 GETUPVAL                         R20 4
      154 GETTABLEKS                       R20 R20 K52 ["Button"]
      156 DUPTABLE                         R21 K56 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "dialog-cancel-button"}]
      157 LOADK                            R24 K57 ["MainView"]
      158 LOADK                            R25 K58 ["CancelText"]
      159 NAMECALL                         R22 R2 K59 ["getText"]
      161 CALL                             R22 3 1
      162 SETTABLEKS                       R22 R21 K53 ["text"]
      164 GETUPVAL                         R22 4
      165 GETTABLEKS                       R22 R22 K22 ["Enums"]
      167 GETTABLEKS                       R22 R22 K60 ["ButtonVariant"]
      169 GETTABLEKS                       R22 R22 K61 ["Standard"]
      171 SETTABLEKS                       R22 R21 K20 ["variant"]
      173 GETUPVAL                         R22 4
      174 GETTABLEKS                       R22 R22 K22 ["Enums"]
      176 GETTABLEKS                       R22 R22 K62 ["InputSize"]
      178 GETTABLEKS                       R22 R22 K63 ["Small"]
      180 SETTABLEKS                       R22 R21 K18 ["size"]
      182 NEWCLOSURE                       R22 P2
      183 CAPTURE                          VAL R1
      184 SETTABLEKS                       R22 R21 K45 ["onActivated"]
      186 CALL                             R19 2 1
      187 SETTABLEKS                       R19 R18 K49 ["Cancel"]
      189 GETUPVAL                         R19 3
      190 GETTABLEKS                       R19 R19 K2 ["createElement"]
      192 GETUPVAL                         R20 4
      193 GETTABLEKS                       R20 R20 K52 ["Button"]
      195 DUPTABLE                         R21 K66 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["isLoading"], ["onActivated"], ["testId"] = "dialog-confirm-button"}]
      196 LOADK                            R24 K57 ["MainView"]
      197 LOADK                            R25 K67 ["ConfirmText"]
      198 NAMECALL                         R22 R2 K59 ["getText"]
      200 CALL                             R22 3 1
      201 SETTABLEKS                       R22 R21 K53 ["text"]
      203 GETUPVAL                         R22 4
      204 GETTABLEKS                       R22 R22 K22 ["Enums"]
      206 GETTABLEKS                       R22 R22 K60 ["ButtonVariant"]
      208 GETTABLEKS                       R22 R22 K68 ["Emphasis"]
      210 SETTABLEKS                       R22 R21 K20 ["variant"]
      212 GETUPVAL                         R22 4
      213 GETTABLEKS                       R22 R22 K22 ["Enums"]
      215 GETTABLEKS                       R22 R22 K62 ["InputSize"]
      217 GETTABLEKS                       R22 R22 K63 ["Small"]
      219 SETTABLEKS                       R22 R21 K18 ["size"]
      221 SETTABLEKS                       R4 R21 K64 ["isLoading"]
      223 SETTABLEKS                       R6 R21 K45 ["onActivated"]
      225 CALL                             R19 2 1
      226 SETTABLEKS                       R19 R18 K50 ["Confirm"]
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K38 ["Buttons"]
      231 CALL                             R11 3 1
      232 SETTABLEKS                       R11 R10 K8 ["Footer"]
      234 CALL                             R7 3 -1
      235 RETURN                           R7 -1

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
