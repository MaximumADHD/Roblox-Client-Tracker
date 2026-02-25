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
       12 MOVE                             R10 R6
       13 CONCAT                           R8 R9 R10
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K2 ["createElement"]
       17 GETUPVAL                         R10 1
       18 DUPTABLE                         R11 K6 [{"Text", "tag", "LayoutOrder"}]
       19 SETTABLEKS                       R7 R11 K3 ["Text"]
       21 LOADK                            R12 K7 ["text-body-small auto-xy text-align-x-left text-wrap content-default"]
       22 SETTABLEKS                       R12 R11 K4 ["tag"]
       24 NAMECALL                         R12 R1 K8 ["getNextOrder"]
       26 CALL                             R12 1 1
       27 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       29 CALL                             R9 2 1
       30 SETTABLE                         R9 R2 R8
       31 FORGLOOP                         R3 2 ; [-21]
       33 RETURN                           R2 1

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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K1 ["use"]
       14 CALL                             R3 0 1
       15 NAMECALL                         R3 R3 K2 ["get"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 NAMECALL                         R4 R4 K1 ["use"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R0 K3 ["errors"]
       24 GETUPVAL                         R7 5
       25 GETTABLEKS                       R6 R7 K4 ["useState"]
       27 GETUPVAL                         R7 6
       28 CALL                             R6 1 2
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R8 R9 K5 ["createElement"]
       32 GETUPVAL                         R10 7
       33 GETTABLEKS                       R9 R10 K6 ["Dialog"]
       35 DUPTABLE                         R10 K13 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
       36 LOADK                            R11 K14 [""]
       37 SETTABLEKS                       R11 R10 K7 ["Title"]
       39 GETUPVAL                         R11 6
       40 SETTABLEKS                       R11 R10 K8 ["MinContentSize"]
       42 SETTABLEKS                       R6 R10 K9 ["Size"]
       44 LOADB                            R11 1
       45 SETTABLEKS                       R11 R10 K10 ["Modal"]
       47 GETTABLEKS                       R11 R0 K15 ["onClose"]
       49 SETTABLEKS                       R11 R10 K11 ["OnClose"]
       51 LOADB                            R11 1
       52 SETTABLEKS                       R11 R10 K12 ["Enabled"]
       54 GETUPVAL                         R12 5
       55 GETTABLEKS                       R11 R12 K5 ["createElement"]
       57 GETUPVAL                         R12 8
       58 DUPTABLE                         R13 K19 [{"onAbsoluteSizeChanged", "tag", "LayoutOrder"}]
       59 NEWCLOSURE                       R14 P0
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R14 R13 K16 ["onAbsoluteSizeChanged"]
       63 LOADK                            R14 K20 ["col size-full-0 auto-y align-x-left padding-x-large gap-small"]
       64 SETTABLEKS                       R14 R13 K17 ["tag"]
       66 NAMECALL                         R14 R1 K21 ["getNextOrder"]
       68 CALL                             R14 1 1
       69 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       71 DUPTABLE                         R14 K25 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       72 GETUPVAL                         R16 5
       73 GETTABLEKS                       R15 R16 K5 ["createElement"]
       75 LOADK                            R16 K22 ["StyleLink"]
       76 DUPTABLE                         R17 K27 [{"StyleSheet"}]
       77 SETTABLEKS                       R3 R17 K26 ["StyleSheet"]
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K22 ["StyleLink"]
       82 GETUPVAL                         R16 5
       83 GETTABLEKS                       R15 R16 K5 ["createElement"]
       85 GETUPVAL                         R16 8
       86 DUPTABLE                         R17 K28 [{"tag", "LayoutOrder"}]
       87 LOADK                            R18 K29 ["row size-full-0 auto-y padding-y-medium padding-right-large gap-medium"]
       88 SETTABLEKS                       R18 R17 K17 ["tag"]
       90 NAMECALL                         R18 R1 K21 ["getNextOrder"]
       92 CALL                             R18 1 1
       93 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
       95 DUPTABLE                         R18 K32 [{"Icon", "ErrorTextView"}]
       96 GETUPVAL                         R20 5
       97 GETTABLEKS                       R19 R20 K5 ["createElement"]
       99 GETUPVAL                         R20 9
      100 DUPTABLE                         R21 K37 [{"name", "size", "variant", "style", "LayoutOrder"}]
      101 GETUPVAL                         R23 10
      102 GETTABLEKS                       R22 R23 K38 ["CircleX"]
      104 SETTABLEKS                       R22 R21 K33 ["name"]
      106 GETUPVAL                         R23 11
      107 GETTABLEKS                       R22 R23 K39 ["Large"]
      109 SETTABLEKS                       R22 R21 K34 ["size"]
      111 GETUPVAL                         R23 12
      112 GETTABLEKS                       R22 R23 K40 ["Filled"]
      114 SETTABLEKS                       R22 R21 K35 ["variant"]
      116 GETTABLEKS                       R25 R2 K41 ["Color"]
      118 GETTABLEKS                       R24 R25 K42 ["Extended"]
      120 GETTABLEKS                       R23 R24 K43 ["Red"]
      122 GETTABLEKS                       R22 R23 K44 ["Red_800"]
      124 SETTABLEKS                       R22 R21 K36 ["style"]
      126 NAMECALL                         R22 R1 K21 ["getNextOrder"]
      128 CALL                             R22 1 1
      129 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K30 ["Icon"]
      134 GETUPVAL                         R20 5
      135 GETTABLEKS                       R19 R20 K5 ["createElement"]
      137 GETUPVAL                         R20 8
      138 DUPTABLE                         R21 K28 [{"tag", "LayoutOrder"}]
      139 LOADK                            R22 K45 ["col size-full-0 auto-y gap-medium"]
      140 SETTABLEKS                       R22 R21 K17 ["tag"]
      142 NAMECALL                         R22 R1 K21 ["getNextOrder"]
      144 CALL                             R22 1 1
      145 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      147 DUPTABLE                         R22 K47 [{"Title", "Description"}]
      148 GETUPVAL                         R24 5
      149 GETTABLEKS                       R23 R24 K5 ["createElement"]
      151 GETUPVAL                         R24 13
      152 DUPTABLE                         R25 K49 [{"Text", "tag", "LayoutOrder"}]
      153 LOADK                            R28 K50 ["MarketplaceImport"]
      154 LOADK                            R29 K51 ["ErrorDialogHeader"]
      155 DUPTABLE                         R30 K53 [{"numErrors"}]
      156 LENGTH                           R32 R5
      157 FASTCALL1                        TOSTRING R32 ; [+2]
      158 GETIMPORT                        R31 K55 [tostring]
      160 CALL                             R31 1 1
      161 SETTABLEKS                       R31 R30 K52 ["numErrors"]
      163 NAMECALL                         R26 R4 K56 ["getText"]
      165 CALL                             R26 4 1
      166 SETTABLEKS                       R26 R25 K48 ["Text"]
      168 LOADK                            R26 K57 ["text-title-medium text-align-y-center auto-xy content-emphasis"]
      169 SETTABLEKS                       R26 R25 K17 ["tag"]
      171 NAMECALL                         R26 R1 K21 ["getNextOrder"]
      173 CALL                             R26 1 1
      174 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K7 ["Title"]
      179 GETUPVAL                         R24 5
      180 GETTABLEKS                       R23 R24 K5 ["createElement"]
      182 GETUPVAL                         R25 5
      183 GETTABLEKS                       R24 R25 K58 ["Fragment"]
      185 DUPTABLE                         R25 K59 [{"LayoutOrder"}]
      186 NAMECALL                         R26 R1 K21 ["getNextOrder"]
      188 CALL                             R26 1 1
      189 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      191 GETUPVAL                         R26 14
      192 MOVE                             R27 R5
      193 MOVE                             R28 R1
      194 CALL                             R26 2 1
      195 CALL                             R23 3 1
      196 SETTABLEKS                       R23 R22 K46 ["Description"]
      198 CALL                             R19 3 1
      199 SETTABLEKS                       R19 R18 K31 ["ErrorTextView"]
      201 CALL                             R15 3 1
      202 SETTABLEKS                       R15 R14 K23 ["Content"]
      204 GETUPVAL                         R16 5
      205 GETTABLEKS                       R15 R16 K5 ["createElement"]
      207 GETUPVAL                         R16 8
      208 DUPTABLE                         R17 K28 [{"tag", "LayoutOrder"}]
      209 LOADK                            R18 K60 ["row align-x-right size-full-0 auto-y padding-bottom-medium"]
      210 SETTABLEKS                       R18 R17 K17 ["tag"]
      212 NAMECALL                         R18 R1 K21 ["getNextOrder"]
      214 CALL                             R18 1 1
      215 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      217 DUPTABLE                         R18 K62 [{"CloseButton"}]
      218 GETUPVAL                         R20 5
      219 GETTABLEKS                       R19 R20 K5 ["createElement"]
      221 GETUPVAL                         R20 15
      222 DUPTABLE                         R21 K66 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      223 LOADK                            R24 K50 ["MarketplaceImport"]
      224 LOADK                            R25 K67 ["CloseButtonLabel"]
      225 NAMECALL                         R22 R4 K56 ["getText"]
      227 CALL                             R22 3 1
      228 SETTABLEKS                       R22 R21 K63 ["text"]
      230 GETUPVAL                         R23 16
      231 GETTABLEKS                       R22 R23 K68 ["Standard"]
      233 SETTABLEKS                       R22 R21 K35 ["variant"]
      235 GETTABLEKS                       R22 R0 K15 ["onClose"]
      237 SETTABLEKS                       R22 R21 K64 ["onActivated"]
      239 LOADB                            R22 0
      240 SETTABLEKS                       R22 R21 K65 ["isDisabled"]
      242 GETUPVAL                         R23 17
      243 GETTABLEKS                       R22 R23 K69 ["XSmall"]
      245 SETTABLEKS                       R22 R21 K34 ["size"]
      247 NAMECALL                         R22 R1 K21 ["getNextOrder"]
      249 CALL                             R22 1 1
      250 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      252 CALL                             R19 2 1
      253 SETTABLEKS                       R19 R18 K61 ["CloseButton"]
      255 CALL                             R15 3 1
      256 SETTABLEKS                       R15 R14 K24 ["ErrorDialogFooter"]
      258 CALL                             R11 3 -1
      259 CALL                             R8 -1 -1
      260 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Button"]
       23 GETTABLEKS                       R5 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R5 K11 ["ButtonVariant"]
       27 GETTABLEKS                       R6 R2 K10 ["Enums"]
       29 GETTABLEKS                       R5 R6 K12 ["IconName"]
       31 GETTABLEKS                       R7 R2 K10 ["Enums"]
       33 GETTABLEKS                       R6 R7 K13 ["IconSize"]
       35 GETTABLEKS                       R8 R2 K10 ["Enums"]
       37 GETTABLEKS                       R7 R8 K14 ["IconVariant"]
       39 GETTABLEKS                       R9 R2 K10 ["Enums"]
       41 GETTABLEKS                       R8 R9 K15 ["InputSize"]
       43 GETTABLEKS                       R10 R2 K16 ["Hooks"]
       45 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       47 GETTABLEKS                       R10 R2 K18 ["Icon"]
       49 GETTABLEKS                       R11 R2 K19 ["Text"]
       51 GETTABLEKS                       R12 R2 K20 ["View"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R15 R0 K6 ["Packages"]
       57 GETTABLEKS                       R14 R15 K21 ["Framework"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R14 R13 K22 ["UI"]
       62 GETTABLEKS                       R16 R13 K23 ["Util"]
       64 GETTABLEKS                       R15 R16 K24 ["LayoutOrderIterator"]
       66 GETTABLEKS                       R17 R13 K25 ["ContextServices"]
       68 GETTABLEKS                       R16 R17 K26 ["Localization"]
       70 GETTABLEKS                       R18 R13 K25 ["ContextServices"]
       72 GETTABLEKS                       R17 R18 K27 ["Design"]
       74 GETIMPORT                        R18 K5 [require]
       76 GETTABLEKS                       R21 R0 K28 ["Src"]
       78 GETTABLEKS                       R20 R21 K29 ["Flags"]
       80 GETTABLEKS                       R19 R20 K30 ["getFFlagAvatarPreviewerLookComposer"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K33 [Vector2.new]
       85 LOADN                            R20 94
       86 LOADN                            R21 120
       87 CALL                             R19 2 1
       88 DUPCLOSURE                       R20 K34 [PROTO_0]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R11
       91 DUPCLOSURE                       R21 K35 [PROTO_2]
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R19
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 RETURN                           R21 1
