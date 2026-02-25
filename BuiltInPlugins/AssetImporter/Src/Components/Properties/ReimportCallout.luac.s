PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDismiss"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setDontShowAgain"]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 1
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GetService"]
        3 LOADK                            R1 K1 ["GuiService"]
        4 CALL                             R0 1 1
        5 LOADK                            R3 K2 ["https://create.roblox.com/docs/art/modeling/reimport"]
        6 NAMECALL                         R1 R0 K3 ["OpenBrowserWindow"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["ContextServices"]
        6 GETTABLEKS                       R3 R4 K2 ["Localization"]
        8 GETTABLEKS                       R2 R3 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K1 ["ContextServices"]
       14 GETTABLEKS                       R3 R4 K4 ["Plugin"]
       16 GETTABLEKS                       R2 R3 K5 ["use"]
       18 CALL                             R2 0 1
       19 NAMECALL                         R2 R2 K6 ["get"]
       21 CALL                             R2 1 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R4 K7 [PROTO_1]
       27 CAPTURE                          UPVAL U3
       28 GETUPVAL                         R5 4
       29 CALL                             R5 0 1
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R6 R7 K8 ["new"]
       33 CALL                             R6 0 1
       34 LOADK                            R9 K9 ["ReimportCallout"]
       35 LOADK                            R10 K10 ["Header"]
       36 NAMECALL                         R7 R1 K11 ["getText"]
       38 CALL                             R7 3 1
       39 LOADK                            R10 K12 ["Buttons"]
       40 LOADK                            R11 K13 ["LearnMore"]
       41 NAMECALL                         R8 R1 K11 ["getText"]
       43 CALL                             R8 3 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K14 ["createElement"]
       47 GETUPVAL                         R11 6
       48 GETTABLEKS                       R10 R11 K15 ["View"]
       50 DUPTABLE                         R11 K18 [{"tag", "testId"}]
       51 LOADK                            R12 K19 ["size-full-0 auto-y padding-medium"]
       52 SETTABLEKS                       R12 R11 K16 ["tag"]
       54 LOADK                            R12 K20 ["ReimportCallout_MainView"]
       55 SETTABLEKS                       R12 R11 K17 ["testId"]
       57 NEWTABLE                         R12 0 1
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R13 R14 K14 ["createElement"]
       62 GETUPVAL                         R15 6
       63 GETTABLEKS                       R14 R15 K15 ["View"]
       65 DUPTABLE                         R15 K23 [{"backgroundStyle", "stroke", "tag"}]
       66 DUPTABLE                         R16 K26 [{"Color3", "Transparency"}]
       67 GETTABLEKS                       R20 R5 K27 ["Color"]
       69 GETTABLEKS                       R19 R20 K28 ["System"]
       71 GETTABLEKS                       R18 R19 K29 ["Emphasis"]
       73 GETTABLEKS                       R17 R18 K24 ["Color3"]
       75 SETTABLEKS                       R17 R16 K24 ["Color3"]
       77 LOADK                            R17 K30 [0.95]
       78 SETTABLEKS                       R17 R16 K25 ["Transparency"]
       80 SETTABLEKS                       R16 R15 K21 ["backgroundStyle"]
       82 DUPTABLE                         R16 K31 [{"Color", "Transparency"}]
       83 GETTABLEKS                       R20 R5 K27 ["Color"]
       85 GETTABLEKS                       R19 R20 K28 ["System"]
       87 GETTABLEKS                       R18 R19 K29 ["Emphasis"]
       89 GETTABLEKS                       R17 R18 K24 ["Color3"]
       91 SETTABLEKS                       R17 R16 K27 ["Color"]
       93 LOADK                            R17 K32 [0.5]
       94 SETTABLEKS                       R17 R16 K25 ["Transparency"]
       96 SETTABLEKS                       R16 R15 K22 ["stroke"]
       98 LOADK                            R16 K33 ["row size-full-0 auto-y padding-small radius-medium"]
       99 SETTABLEKS                       R16 R15 K16 ["tag"]
      101 NEWTABLE                         R16 0 2
      103 GETUPVAL                         R18 0
      104 GETTABLEKS                       R17 R18 K14 ["createElement"]
      106 GETUPVAL                         R19 6
      107 GETTABLEKS                       R18 R19 K15 ["View"]
      109 DUPTABLE                         R19 K34 [{"tag"}]
      110 LOADK                            R20 K35 ["col size-0 auto-xy fill padding-small gap-xsmall"]
      111 SETTABLEKS                       R20 R19 K16 ["tag"]
      113 NEWTABLE                         R20 0 2
      115 GETUPVAL                         R22 0
      116 GETTABLEKS                       R21 R22 K14 ["createElement"]
      118 GETUPVAL                         R23 6
      119 GETTABLEKS                       R22 R23 K36 ["Text"]
      121 DUPTABLE                         R23 K41 [{"Text", "TextWrapped", "RichText", "LayoutOrder", "onActivated", "tag"}]
      122 LOADK                            R25 K42 ["<b>%*</b> <u>%*</u>"]
      123 MOVE                             R27 R7
      124 MOVE                             R28 R8
      125 NAMECALL                         R25 R25 K43 ["format"]
      127 CALL                             R25 3 1
      128 MOVE                             R24 R25
      129 SETTABLEKS                       R24 R23 K36 ["Text"]
      131 LOADB                            R24 1
      132 SETTABLEKS                       R24 R23 K37 ["TextWrapped"]
      134 LOADB                            R24 1
      135 SETTABLEKS                       R24 R23 K38 ["RichText"]
      137 NAMECALL                         R24 R6 K44 ["getNextOrder"]
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K39 ["LayoutOrder"]
      142 SETTABLEKS                       R4 R23 K40 ["onActivated"]
      144 LOADK                            R24 K45 ["auto-xy align-x-left align-y-center text-body-medium text-align-x-left"]
      145 SETTABLEKS                       R24 R23 K16 ["tag"]
      147 CALL                             R21 2 1
      148 GETUPVAL                         R23 0
      149 GETTABLEKS                       R22 R23 K14 ["createElement"]
      151 GETUPVAL                         R24 6
      152 GETTABLEKS                       R23 R24 K36 ["Text"]
      154 DUPTABLE                         R24 K46 [{"Text", "TextWrapped", "LayoutOrder", "tag"}]
      155 LOADK                            R27 K9 ["ReimportCallout"]
      156 LOADK                            R28 K47 ["Body"]
      157 NAMECALL                         R25 R1 K11 ["getText"]
      159 CALL                             R25 3 1
      160 SETTABLEKS                       R25 R24 K36 ["Text"]
      162 LOADB                            R25 1
      163 SETTABLEKS                       R25 R24 K37 ["TextWrapped"]
      165 NAMECALL                         R25 R6 K44 ["getNextOrder"]
      167 CALL                             R25 1 1
      168 SETTABLEKS                       R25 R24 K39 ["LayoutOrder"]
      170 LOADK                            R25 K45 ["auto-xy align-x-left align-y-center text-body-medium text-align-x-left"]
      171 SETTABLEKS                       R25 R24 K16 ["tag"]
      173 CALL                             R22 2 -1
      174 SETLIST                          R20 R21 -1 [1]
      176 CALL                             R17 3 1
      177 GETUPVAL                         R19 0
      178 GETTABLEKS                       R18 R19 K14 ["createElement"]
      180 GETUPVAL                         R20 6
      181 GETTABLEKS                       R19 R20 K15 ["View"]
      183 DUPTABLE                         R20 K48 [{"onActivated", "tag", "testId"}]
      184 SETTABLEKS                       R3 R20 K40 ["onActivated"]
      186 LOADK                            R21 K49 ["auto-xy align-x-right align-y-top"]
      187 SETTABLEKS                       R21 R20 K16 ["tag"]
      189 LOADK                            R21 K50 ["ReimportCallout_DismissButton"]
      190 SETTABLEKS                       R21 R20 K17 ["testId"]
      192 NEWTABLE                         R21 0 1
      194 GETUPVAL                         R23 0
      195 GETTABLEKS                       R22 R23 K14 ["createElement"]
      197 GETUPVAL                         R24 6
      198 GETTABLEKS                       R23 R24 K51 ["Icon"]
      200 DUPTABLE                         R24 K54 [{"name", "size", "tag"}]
      201 GETUPVAL                         R28 6
      202 GETTABLEKS                       R27 R28 K55 ["Enums"]
      204 GETTABLEKS                       R26 R27 K56 ["IconName"]
      206 GETTABLEKS                       R25 R26 K57 ["XSmall"]
      208 SETTABLEKS                       R25 R24 K52 ["name"]
      210 GETUPVAL                         R28 6
      211 GETTABLEKS                       R27 R28 K55 ["Enums"]
      213 GETTABLEKS                       R26 R27 K58 ["IconSize"]
      215 GETTABLEKS                       R25 R26 K59 ["Medium"]
      217 SETTABLEKS                       R25 R24 K53 ["size"]
      219 LOADK                            R25 K60 ["align-x-right align-y-top"]
      220 SETTABLEKS                       R25 R24 K16 ["tag"]
      222 CALL                             R22 2 -1
      223 SETLIST                          R21 R22 -1 [1]
      225 CALL                             R18 3 -1
      226 SETLIST                          R16 R17 -1 [1]
      228 CALL                             R13 3 -1
      229 SETLIST                          R12 R13 -1 [1]
      231 CALL                             R9 3 -1
      232 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Controllers"]
       34 GETTABLEKS                       R5 R6 K12 ["ReimportCalloutController"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Utility"]
       43 GETTABLEKS                       R6 R7 K14 ["Services"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R2 K15 ["Util"]
       48 GETTABLEKS                       R6 R7 K16 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R8 R1 K17 ["Hooks"]
       52 GETTABLEKS                       R7 R8 K18 ["useTokens"]
       54 DUPCLOSURE                       R8 K19 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1
