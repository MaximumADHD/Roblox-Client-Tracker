PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADK                            R9 K1 ["ErrorRow_"]
       12 FASTCALL1                        TOSTRING R6 ; [+3]
       13 MOVE                             R11 R6
       14 GETIMPORT                        R10 K3 [tostring]
       16 CALL                             R10 1 1
       17 CONCAT                           R8 R9 R10
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K4 ["createElement"]
       21 GETUPVAL                         R10 1
       22 DUPTABLE                         R11 K9 [{["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["LayoutOrder"]}]
       23 SETTABLEKS                       R7 R11 K5 ["Text"]
       25 NAMECALL                         R12 R1 K10 ["getNextOrder"]
       27 CALL                             R12 1 1
       28 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       30 CALL                             R9 2 1
       31 SETTABLE                         R9 R2 R8
       32 FORGLOOP                         R3 2 ; [-22]
       34 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K1 ["use"]
       14 CALL                             R3 0 1
       15 NAMECALL                         R3 R3 K2 ["get"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 NAMECALL                         R4 R4 K1 ["use"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R0 K3 ["errors"]
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R6 R6 K4 ["useState"]
       27 GETUPVAL                         R7 6
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R8 R8 K5 ["createElement"]
       32 GETUPVAL                         R9 7
       33 GETTABLEKS                       R9 R9 K6 ["Dialog"]
       35 DUPTABLE                         R10 K16 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["PluginDesign"]}]
       36 GETUPVAL                         R11 6
       37 SETTABLEKS                       R11 R10 K9 ["MinContentSize"]
       39 SETTABLEKS                       R6 R10 K10 ["Size"]
       41 GETTABLEKS                       R11 R0 K17 ["onClose"]
       43 SETTABLEKS                       R11 R10 K13 ["OnClose"]
       45 GETUPVAL                         R12 8
       46 JUMPIFNOT                        R12 ; [+2]
       47 MOVE                             R11 R3
       48 JUMP                             ; [+1]
       49 LOADNIL                          R11
       50 SETTABLEKS                       R11 R10 K15 ["PluginDesign"]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K5 ["createElement"]
       55 GETUPVAL                         R12 9
       56 DUPTABLE                         R13 K22 [{["onAbsoluteSizeChanged"], ["tag"] = "col align-x-left gap-small size-full-0 auto-y padding-x-large", ["LayoutOrder"]}]
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R14 R13 K18 ["onAbsoluteSizeChanged"]
       61 NAMECALL                         R14 R1 K23 ["getNextOrder"]
       63 CALL                             R14 1 1
       64 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       66 DUPTABLE                         R14 K27 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       67 GETUPVAL                         R16 8
       68 JUMPIF                           R16 ; [+9]
       69 GETUPVAL                         R15 5
       70 GETTABLEKS                       R15 R15 K5 ["createElement"]
       72 LOADK                            R16 K24 ["StyleLink"]
       73 DUPTABLE                         R17 K29 [{"StyleSheet"}]
       74 SETTABLEKS                       R3 R17 K28 ["StyleSheet"]
       76 CALL                             R15 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R15
       79 SETTABLEKS                       R15 R14 K24 ["StyleLink"]
       81 GETUPVAL                         R15 5
       82 GETTABLEKS                       R15 R15 K5 ["createElement"]
       84 GETUPVAL                         R16 9
       85 DUPTABLE                         R17 K31 [{["tag"] = "row gap-medium size-full-0 auto-y padding-y-medium padding-right-large", ["LayoutOrder"]}]
       86 NAMECALL                         R18 R1 K23 ["getNextOrder"]
       88 CALL                             R18 1 1
       89 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
       91 DUPTABLE                         R18 K34 [{"Icon", "ErrorTextView"}]
       92 GETUPVAL                         R19 5
       93 GETTABLEKS                       R19 R19 K5 ["createElement"]
       95 GETUPVAL                         R20 10
       96 DUPTABLE                         R21 K39 [{"name", "size", "variant", "style", "LayoutOrder"}]
       97 GETUPVAL                         R22 11
       98 GETTABLEKS                       R22 R22 K40 ["CircleX"]
      100 SETTABLEKS                       R22 R21 K35 ["name"]
      102 GETUPVAL                         R22 12
      103 GETTABLEKS                       R22 R22 K41 ["Large"]
      105 SETTABLEKS                       R22 R21 K36 ["size"]
      107 GETUPVAL                         R22 13
      108 GETTABLEKS                       R22 R22 K42 ["Filled"]
      110 SETTABLEKS                       R22 R21 K37 ["variant"]
      112 GETTABLEKS                       R22 R2 K43 ["Color"]
      114 GETTABLEKS                       R22 R22 K44 ["Extended"]
      116 GETTABLEKS                       R22 R22 K45 ["Red"]
      118 GETTABLEKS                       R22 R22 K46 ["Red_800"]
      120 SETTABLEKS                       R22 R21 K38 ["style"]
      122 NAMECALL                         R22 R1 K23 ["getNextOrder"]
      124 CALL                             R22 1 1
      125 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K32 ["Icon"]
      130 GETUPVAL                         R19 5
      131 GETTABLEKS                       R19 R19 K5 ["createElement"]
      133 GETUPVAL                         R20 9
      134 DUPTABLE                         R21 K48 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      135 NAMECALL                         R22 R1 K23 ["getNextOrder"]
      137 CALL                             R22 1 1
      138 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      140 DUPTABLE                         R22 K50 [{"Title", "Description"}]
      141 GETUPVAL                         R23 5
      142 GETTABLEKS                       R23 R23 K5 ["createElement"]
      144 GETUPVAL                         R24 14
      145 DUPTABLE                         R25 K53 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis", ["LayoutOrder"]}]
      146 LOADK                            R28 K54 ["MarketplaceImport"]
      147 LOADK                            R29 K55 ["ErrorDialogHeader"]
      148 DUPTABLE                         R30 K57 [{"numErrors"}]
      149 LENGTH                           R32 R5
      150 FASTCALL1                        TOSTRING R32 ; [+2]
      151 GETIMPORT                        R31 K59 [tostring]
      153 CALL                             R31 1 1
      154 SETTABLEKS                       R31 R30 K56 ["numErrors"]
      156 NAMECALL                         R26 R4 K60 ["getText"]
      158 CALL                             R26 4 1
      159 SETTABLEKS                       R26 R25 K51 ["Text"]
      161 NAMECALL                         R26 R1 K23 ["getNextOrder"]
      163 CALL                             R26 1 1
      164 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      166 CALL                             R23 2 1
      167 SETTABLEKS                       R23 R22 K7 ["Title"]
      169 GETUPVAL                         R23 5
      170 GETTABLEKS                       R23 R23 K5 ["createElement"]
      172 GETUPVAL                         R24 5
      173 GETTABLEKS                       R24 R24 K61 ["Fragment"]
      175 DUPTABLE                         R25 K62 [{"LayoutOrder"}]
      176 NAMECALL                         R26 R1 K23 ["getNextOrder"]
      178 CALL                             R26 1 1
      179 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      181 GETUPVAL                         R26 15
      182 MOVE                             R27 R5
      183 MOVE                             R28 R1
      184 CALL                             R26 2 1
      185 CALL                             R23 3 1
      186 SETTABLEKS                       R23 R22 K49 ["Description"]
      188 CALL                             R19 3 1
      189 SETTABLEKS                       R19 R18 K33 ["ErrorTextView"]
      191 CALL                             R15 3 1
      192 SETTABLEKS                       R15 R14 K25 ["Content"]
      194 GETUPVAL                         R15 5
      195 GETTABLEKS                       R15 R15 K5 ["createElement"]
      197 GETUPVAL                         R16 9
      198 DUPTABLE                         R17 K64 [{["tag"] = "row align-x-right size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      199 NAMECALL                         R18 R1 K23 ["getNextOrder"]
      201 CALL                             R18 1 1
      202 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      204 DUPTABLE                         R18 K66 [{"CloseButton"}]
      205 GETUPVAL                         R19 5
      206 GETTABLEKS                       R19 R19 K5 ["createElement"]
      208 GETUPVAL                         R20 16
      209 DUPTABLE                         R21 K71 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"]}]
      210 LOADK                            R24 K54 ["MarketplaceImport"]
      211 LOADK                            R25 K72 ["CloseButtonLabel"]
      212 NAMECALL                         R22 R4 K60 ["getText"]
      214 CALL                             R22 3 1
      215 SETTABLEKS                       R22 R21 K67 ["text"]
      217 GETUPVAL                         R22 17
      218 GETTABLEKS                       R22 R22 K73 ["Standard"]
      220 SETTABLEKS                       R22 R21 K37 ["variant"]
      222 GETTABLEKS                       R22 R0 K17 ["onClose"]
      224 SETTABLEKS                       R22 R21 K68 ["onActivated"]
      226 GETUPVAL                         R22 18
      227 GETTABLEKS                       R22 R22 K74 ["XSmall"]
      229 SETTABLEKS                       R22 R21 K36 ["size"]
      231 NAMECALL                         R22 R1 K23 ["getNextOrder"]
      233 CALL                             R22 1 1
      234 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K65 ["CloseButton"]
      239 CALL                             R15 3 1
      240 SETTABLEKS                       R15 R14 K26 ["ErrorDialogFooter"]
      242 CALL                             R11 3 -1
      243 CALL                             R8 -1 -1
      244 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Button"]
       23 GETTABLEKS                       R4 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       27 GETTABLEKS                       R5 R2 K10 ["Enums"]
       29 GETTABLEKS                       R5 R5 K12 ["IconName"]
       31 GETTABLEKS                       R6 R2 K10 ["Enums"]
       33 GETTABLEKS                       R6 R6 K13 ["IconSize"]
       35 GETTABLEKS                       R7 R2 K10 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["IconVariant"]
       39 GETTABLEKS                       R8 R2 K10 ["Enums"]
       41 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       43 GETTABLEKS                       R9 R2 K16 ["Hooks"]
       45 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       47 GETTABLEKS                       R10 R2 K18 ["Icon"]
       49 GETTABLEKS                       R11 R2 K19 ["Text"]
       51 GETTABLEKS                       R12 R2 K20 ["View"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R0 K6 ["Packages"]
       57 GETTABLEKS                       R14 R14 K21 ["Framework"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R14 R13 K22 ["SharedFlags"]
       62 GETTABLEKS                       R14 R14 K23 ["getFFlagDevFrameworkUsePluginDesign"]
       64 CALL                             R14 0 1
       65 GETTABLEKS                       R15 R13 K24 ["UI"]
       67 GETTABLEKS                       R16 R13 K25 ["Util"]
       69 GETTABLEKS                       R16 R16 K26 ["LayoutOrderIterator"]
       71 GETTABLEKS                       R17 R13 K27 ["ContextServices"]
       73 GETTABLEKS                       R17 R17 K28 ["Localization"]
       75 GETTABLEKS                       R18 R13 K27 ["ContextServices"]
       77 GETTABLEKS                       R18 R18 K29 ["Design"]
       79 GETIMPORT                        R19 K5 [require]
       81 GETTABLEKS                       R20 R0 K30 ["Src"]
       83 GETTABLEKS                       R20 R20 K31 ["Flags"]
       85 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarPreviewerLookComposer"]
       87 CALL                             R19 1 1
       88 GETIMPORT                        R20 K35 [Vector2.new]
       90 LOADN                            R21 350
       91 LOADN                            R22 120
       92 CALL                             R20 2 1
       93 DUPCLOSURE                       R21 K36 [PROTO_0]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R11
       96 DUPCLOSURE                       R22 K37 [PROTO_2]
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R18
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R20
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R8
      116 RETURN                           R22 1
