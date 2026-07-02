PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDismiss"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setDontShowAgain"]
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 1
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetService"]
        3 LOADK                            R1 K1 ["GuiService"]
        4 CALL                             R0 1 1
        5 LOADK                            R3 K2 ["https://create.roblox.com/docs/art/modeling/reimport"]
        6 NAMECALL                         R1 R0 K3 ["OpenBrowserWindow"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextServices"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["ContextServices"]
       14 GETTABLEKS                       R2 R2 K4 ["Plugin"]
       16 GETTABLEKS                       R2 R2 K5 ["use"]
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
       30 GETUPVAL                         R6 5
       31 GETTABLEKS                       R6 R6 K8 ["new"]
       33 CALL                             R6 0 1
       34 LOADK                            R9 K9 ["ReimportCallout"]
       35 LOADK                            R10 K10 ["Header"]
       36 NAMECALL                         R7 R1 K11 ["getText"]
       38 CALL                             R7 3 1
       39 LOADK                            R10 K12 ["Buttons"]
       40 LOADK                            R11 K13 ["LearnMore"]
       41 NAMECALL                         R8 R1 K11 ["getText"]
       43 CALL                             R8 3 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K14 ["createElement"]
       47 GETUPVAL                         R10 6
       48 GETTABLEKS                       R10 R10 K15 ["View"]
       50 DUPTABLE                         R11 K20 [{["tag"] = "size-full-0 auto-y padding-medium", ["testId"] = "ReimportCallout_MainView"}]
       51 NEWTABLE                         R12 0 1
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K14 ["createElement"]
       56 GETUPVAL                         R14 6
       57 GETTABLEKS                       R14 R14 K15 ["View"]
       59 DUPTABLE                         R15 K24 [{["backgroundStyle"], ["stroke"], ["tag"] = "row size-full-0 auto-y padding-small radius-medium"}]
       60 DUPTABLE                         R16 K28 [{["Color3"], ["Transparency"] = 0.95}]
       61 GETTABLEKS                       R17 R5 K29 ["Color"]
       63 GETTABLEKS                       R17 R17 K30 ["System"]
       65 GETTABLEKS                       R17 R17 K31 ["Emphasis"]
       67 GETTABLEKS                       R17 R17 K25 ["Color3"]
       69 SETTABLEKS                       R17 R16 K25 ["Color3"]
       71 SETTABLEKS                       R16 R15 K21 ["backgroundStyle"]
       73 DUPTABLE                         R16 K33 [{["Color"], ["Transparency"] = 0.5}]
       74 GETTABLEKS                       R17 R5 K29 ["Color"]
       76 GETTABLEKS                       R17 R17 K30 ["System"]
       78 GETTABLEKS                       R17 R17 K31 ["Emphasis"]
       80 GETTABLEKS                       R17 R17 K25 ["Color3"]
       82 SETTABLEKS                       R17 R16 K29 ["Color"]
       84 SETTABLEKS                       R16 R15 K22 ["stroke"]
       86 NEWTABLE                         R16 0 2
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R17 R17 K14 ["createElement"]
       91 GETUPVAL                         R18 6
       92 GETTABLEKS                       R18 R18 K15 ["View"]
       94 DUPTABLE                         R19 K35 [{["tag"] = "col fill gap-xsmall size-0 auto-xy padding-small"}]
       95 NEWTABLE                         R20 0 2
       97 GETUPVAL                         R21 0
       98 GETTABLEKS                       R21 R21 K14 ["createElement"]
      100 GETUPVAL                         R22 6
      101 GETTABLEKS                       R22 R22 K36 ["Text"]
      103 DUPTABLE                         R23 K43 [{["Text"], ["TextWrapped"] = True, ["RichText"] = True, ["LayoutOrder"], ["onActivated"], ["tag"] = "align-x-left align-y-center auto-xy text-body-medium text-align-x-left"}]
      104 LOADK                            R25 K44 ["<b>%*</b> <u>%*</u>"]
      105 MOVE                             R27 R7
      106 MOVE                             R28 R8
      107 NAMECALL                         R25 R25 K45 ["format"]
      109 CALL                             R25 3 1
      110 MOVE                             R24 R25
      111 SETTABLEKS                       R24 R23 K36 ["Text"]
      113 NAMECALL                         R24 R6 K46 ["getNextOrder"]
      115 CALL                             R24 1 1
      116 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      118 SETTABLEKS                       R4 R23 K41 ["onActivated"]
      120 CALL                             R21 2 1
      121 GETUPVAL                         R22 0
      122 GETTABLEKS                       R22 R22 K14 ["createElement"]
      124 GETUPVAL                         R23 6
      125 GETTABLEKS                       R23 R23 K36 ["Text"]
      127 DUPTABLE                         R24 K47 [{["Text"], ["TextWrapped"] = True, ["LayoutOrder"], ["tag"] = "align-x-left align-y-center auto-xy text-body-medium text-align-x-left"}]
      128 LOADK                            R27 K9 ["ReimportCallout"]
      129 LOADK                            R28 K48 ["Body"]
      130 NAMECALL                         R25 R1 K11 ["getText"]
      132 CALL                             R25 3 1
      133 SETTABLEKS                       R25 R24 K36 ["Text"]
      135 NAMECALL                         R25 R6 K46 ["getNextOrder"]
      137 CALL                             R25 1 1
      138 SETTABLEKS                       R25 R24 K40 ["LayoutOrder"]
      140 CALL                             R22 2 -1
      141 SETLIST                          R20 R21 -1 [1]
      143 CALL                             R17 3 1
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K14 ["createElement"]
      147 GETUPVAL                         R19 6
      148 GETTABLEKS                       R19 R19 K15 ["View"]
      150 DUPTABLE                         R20 K51 [{["onActivated"], ["tag"] = "align-x-right align-y-top auto-xy", ["testId"] = "ReimportCallout_DismissButton"}]
      151 SETTABLEKS                       R3 R20 K41 ["onActivated"]
      153 NEWTABLE                         R21 0 1
      155 GETUPVAL                         R22 0
      156 GETTABLEKS                       R22 R22 K14 ["createElement"]
      158 GETUPVAL                         R23 6
      159 GETTABLEKS                       R23 R23 K52 ["Icon"]
      161 DUPTABLE                         R24 K56 [{["name"], ["size"], ["tag"] = "align-x-right align-y-top"}]
      162 GETUPVAL                         R25 6
      163 GETTABLEKS                       R25 R25 K57 ["Enums"]
      165 GETTABLEKS                       R25 R25 K58 ["IconName"]
      167 GETTABLEKS                       R25 R25 K59 ["XSmall"]
      169 SETTABLEKS                       R25 R24 K53 ["name"]
      171 GETUPVAL                         R25 6
      172 GETTABLEKS                       R25 R25 K57 ["Enums"]
      174 GETTABLEKS                       R25 R25 K60 ["IconSize"]
      176 GETTABLEKS                       R25 R25 K61 ["Medium"]
      178 SETTABLEKS                       R25 R24 K54 ["size"]
      180 CALL                             R22 2 -1
      181 SETLIST                          R21 R22 -1 [1]
      183 CALL                             R18 3 -1
      184 SETLIST                          R16 R17 -1 [1]
      186 CALL                             R13 3 -1
      187 SETLIST                          R12 R13 -1 [1]
      189 CALL                             R9 3 -1
      190 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       34 GETTABLEKS                       R5 R5 K12 ["ReimportCalloutController"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Utility"]
       43 GETTABLEKS                       R6 R6 K14 ["Services"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K15 ["Util"]
       48 GETTABLEKS                       R6 R6 K16 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R7 R1 K17 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K18 ["useTokens"]
       54 DUPCLOSURE                       R8 K19 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1
