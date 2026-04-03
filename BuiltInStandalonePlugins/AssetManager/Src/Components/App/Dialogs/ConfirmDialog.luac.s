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
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R8 R9 K4 ["View"]
       36 DUPTABLE                         R9 K6 [{"tag"}]
       37 LOADK                            R10 K7 ["col size-full padding-medium gap-medium"]
       38 SETTABLEKS                       R10 R9 K5 ["tag"]
       40 DUPTABLE                         R10 K10 [{"Content", "Footer"}]
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K3 ["createElement"]
       44 GETUPVAL                         R13 5
       45 GETTABLEKS                       R12 R13 K4 ["View"]
       47 DUPTABLE                         R13 K12 [{"LayoutOrder", "tag"}]
       48 LOADN                            R14 1
       49 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       51 LOADK                            R14 K13 ["row size-full-0 auto-y gap-medium align-y-center"]
       52 SETTABLEKS                       R14 R13 K5 ["tag"]
       54 DUPTABLE                         R14 K16 [{"Icon", "Text"}]
       55 GETUPVAL                         R16 3
       56 GETTABLEKS                       R15 R16 K3 ["createElement"]
       58 GETUPVAL                         R17 5
       59 GETTABLEKS                       R16 R17 K14 ["Icon"]
       61 DUPTABLE                         R17 K21 [{"LayoutOrder", "name", "size", "style", "variant"}]
       62 LOADN                            R18 1
       63 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
       65 GETUPVAL                         R21 5
       66 GETTABLEKS                       R20 R21 K22 ["Enums"]
       68 GETTABLEKS                       R19 R20 K23 ["IconName"]
       70 GETTABLEKS                       R18 R19 K24 ["TriangleExclamation"]
       72 SETTABLEKS                       R18 R17 K17 ["name"]
       74 GETUPVAL                         R21 5
       75 GETTABLEKS                       R20 R21 K22 ["Enums"]
       77 GETTABLEKS                       R19 R20 K25 ["IconSize"]
       79 GETTABLEKS                       R18 R19 K26 ["Large"]
       81 SETTABLEKS                       R18 R17 K18 ["size"]
       83 GETTABLEKS                       R20 R3 K27 ["Color"]
       85 GETTABLEKS                       R19 R20 K28 ["System"]
       87 GETTABLEKS                       R18 R19 K29 ["Warning"]
       89 SETTABLEKS                       R18 R17 K19 ["style"]
       91 GETUPVAL                         R21 5
       92 GETTABLEKS                       R20 R21 K22 ["Enums"]
       94 GETTABLEKS                       R19 R20 K30 ["IconVariant"]
       96 GETTABLEKS                       R18 R19 K31 ["Filled"]
       98 SETTABLEKS                       R18 R17 K20 ["variant"]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K14 ["Icon"]
      103 GETUPVAL                         R16 3
      104 GETTABLEKS                       R15 R16 K3 ["createElement"]
      106 GETUPVAL                         R17 5
      107 GETTABLEKS                       R16 R17 K15 ["Text"]
      109 DUPTABLE                         R17 K32 [{"LayoutOrder", "Text", "tag"}]
      110 LOADN                            R18 2
      111 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      113 GETTABLEKS                       R18 R0 K15 ["Text"]
      115 SETTABLEKS                       R18 R17 K15 ["Text"]
      117 LOADK                            R18 K33 ["text-body-small text-align-x-left text-wrap fill auto-y"]
      118 SETTABLEKS                       R18 R17 K5 ["tag"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K15 ["Text"]
      123 CALL                             R11 3 1
      124 SETTABLEKS                       R11 R10 K8 ["Content"]
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R11 R12 K3 ["createElement"]
      129 GETUPVAL                         R13 5
      130 GETTABLEKS                       R12 R13 K4 ["View"]
      132 DUPTABLE                         R13 K12 [{"LayoutOrder", "tag"}]
      133 LOADN                            R14 2
      134 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      136 LOADK                            R14 K34 ["row size-full-0 auto-y align-y-center"]
      137 SETTABLEKS                       R14 R13 K5 ["tag"]
      139 DUPTABLE                         R14 K37 [{"Link", "Buttons"}]
      140 GETUPVAL                         R16 3
      141 GETTABLEKS                       R15 R16 K3 ["createElement"]
      143 GETUPVAL                         R17 5
      144 GETTABLEKS                       R16 R17 K4 ["View"]
      146 DUPTABLE                         R17 K12 [{"LayoutOrder", "tag"}]
      147 LOADN                            R18 1
      148 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      150 LOADK                            R18 K38 ["fill auto-y align-y-center"]
      151 SETTABLEKS                       R18 R17 K5 ["tag"]
      153 GETTABLEKS                       R19 R0 K39 ["LinkText"]
      155 JUMPIFEQKNIL                     R19 ; [+26]
      157 GETTABLEKS                       R19 R0 K40 ["LinkUrl"]
      159 JUMPIFEQKNIL                     R19 ; [+22]
      161 GETUPVAL                         R19 3
      162 GETTABLEKS                       R18 R19 K3 ["createElement"]
      164 GETUPVAL                         R20 5
      165 GETTABLEKS                       R19 R20 K15 ["Text"]
      167 DUPTABLE                         R20 K42 [{"tag", "Text", "onActivated"}]
      168 LOADK                            R21 K43 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      169 SETTABLEKS                       R21 R20 K5 ["tag"]
      171 GETTABLEKS                       R21 R0 K39 ["LinkText"]
      173 SETTABLEKS                       R21 R20 K15 ["Text"]
      175 NEWCLOSURE                       R21 P1
      176 CAPTURE                          UPVAL U6
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R21 R20 K41 ["onActivated"]
      180 CALL                             R18 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R18
      183 CALL                             R15 3 1
      184 SETTABLEKS                       R15 R14 K35 ["Link"]
      186 GETUPVAL                         R16 3
      187 GETTABLEKS                       R15 R16 K3 ["createElement"]
      189 GETUPVAL                         R17 5
      190 GETTABLEKS                       R16 R17 K4 ["View"]
      192 DUPTABLE                         R17 K12 [{"LayoutOrder", "tag"}]
      193 LOADN                            R18 2
      194 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
      196 LOADK                            R18 K44 ["row auto-xy align-x-right align-y-center gap-xsmall"]
      197 SETTABLEKS                       R18 R17 K5 ["tag"]
      199 DUPTABLE                         R18 K47 [{"Cancel", "Confirm"}]
      200 GETUPVAL                         R20 3
      201 GETTABLEKS                       R19 R20 K3 ["createElement"]
      203 GETUPVAL                         R21 5
      204 GETTABLEKS                       R20 R21 K48 ["Button"]
      206 DUPTABLE                         R21 K51 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      207 LOADN                            R22 1
      208 SETTABLEKS                       R22 R21 K11 ["LayoutOrder"]
      210 LOADK                            R24 K52 ["MainView"]
      211 LOADK                            R25 K53 ["CancelText"]
      212 NAMECALL                         R22 R2 K54 ["getText"]
      214 CALL                             R22 3 1
      215 SETTABLEKS                       R22 R21 K49 ["text"]
      217 GETUPVAL                         R25 5
      218 GETTABLEKS                       R24 R25 K22 ["Enums"]
      220 GETTABLEKS                       R23 R24 K55 ["ButtonVariant"]
      222 GETTABLEKS                       R22 R23 K56 ["Standard"]
      224 SETTABLEKS                       R22 R21 K20 ["variant"]
      226 GETUPVAL                         R25 5
      227 GETTABLEKS                       R24 R25 K22 ["Enums"]
      229 GETTABLEKS                       R23 R24 K57 ["InputSize"]
      231 GETTABLEKS                       R22 R23 K58 ["Small"]
      233 SETTABLEKS                       R22 R21 K18 ["size"]
      235 NEWCLOSURE                       R22 P2
      236 CAPTURE                          VAL R1
      237 SETTABLEKS                       R22 R21 K41 ["onActivated"]
      239 LOADK                            R22 K59 ["dialog-cancel-button"]
      240 SETTABLEKS                       R22 R21 K50 ["testId"]
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K45 ["Cancel"]
      245 GETUPVAL                         R20 3
      246 GETTABLEKS                       R19 R20 K3 ["createElement"]
      248 GETUPVAL                         R21 5
      249 GETTABLEKS                       R20 R21 K48 ["Button"]
      251 DUPTABLE                         R21 K61 [{"LayoutOrder", "text", "variant", "size", "isLoading", "onActivated", "testId"}]
      252 LOADN                            R22 2
      253 SETTABLEKS                       R22 R21 K11 ["LayoutOrder"]
      255 LOADK                            R24 K52 ["MainView"]
      256 LOADK                            R25 K62 ["ConfirmText"]
      257 NAMECALL                         R22 R2 K54 ["getText"]
      259 CALL                             R22 3 1
      260 SETTABLEKS                       R22 R21 K49 ["text"]
      262 GETUPVAL                         R25 5
      263 GETTABLEKS                       R24 R25 K22 ["Enums"]
      265 GETTABLEKS                       R23 R24 K55 ["ButtonVariant"]
      267 GETTABLEKS                       R22 R23 K63 ["Emphasis"]
      269 SETTABLEKS                       R22 R21 K20 ["variant"]
      271 GETUPVAL                         R25 5
      272 GETTABLEKS                       R24 R25 K22 ["Enums"]
      274 GETTABLEKS                       R23 R24 K57 ["InputSize"]
      276 GETTABLEKS                       R22 R23 K58 ["Small"]
      278 SETTABLEKS                       R22 R21 K18 ["size"]
      280 SETTABLEKS                       R4 R21 K60 ["isLoading"]
      282 SETTABLEKS                       R6 R21 K41 ["onActivated"]
      284 LOADK                            R22 K64 ["dialog-confirm-button"]
      285 SETTABLEKS                       R22 R21 K50 ["testId"]
      287 CALL                             R19 2 1
      288 SETTABLEKS                       R19 R18 K46 ["Confirm"]
      290 CALL                             R15 3 1
      291 SETTABLEKS                       R15 R14 K36 ["Buttons"]
      293 CALL                             R11 3 1
      294 SETTABLEKS                       R11 R10 K9 ["Footer"]
      296 CALL                             R7 3 -1
      297 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["BrowserService"]
       31 NAMECALL                         R4 R4 K14 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Packages"]
       38 GETTABLEKS                       R6 R7 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R5 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K17 ["useTokens"]
       45 GETTABLEKS                       R7 R3 K18 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K19 ["Localization"]
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R12 R0 K6 ["Src"]
       53 GETTABLEKS                       R11 R12 K20 ["Controllers"]
       55 GETTABLEKS                       R10 R11 K21 ["PluginController"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K6 ["Src"]
       62 GETTABLEKS                       R12 R13 K22 ["Flags"]
       64 GETTABLEKS                       R11 R12 K23 ["getFFlagAmrMiscCallbackFixes"]
       66 CALL                             R10 1 1
       67 DUPCLOSURE                       R11 K24 [PROTO_3]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 RETURN                           R11 1
