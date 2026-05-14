PROTO_0:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+4]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R0
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADK                            R10 K1 ["ErrorRow_"]
       13 MOVE                             R11 R7
       14 CONCAT                           R9 R10 R11
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R10 R10 K2 ["createElement"]
       18 GETUPVAL                         R11 1
       19 DUPTABLE                         R12 K8 [{"Text", "tag", "Size", "AutomaticSize", "LayoutOrder"}]
       20 SETTABLEKS                       R8 R12 K3 ["Text"]
       22 LOADK                            R13 K9 ["text-body-small text-align-x-left text-wrap content-default"]
       23 SETTABLEKS                       R13 R12 K4 ["tag"]
       25 GETIMPORT                        R13 K12 [UDim2.fromScale]
       27 LOADN                            R14 1
       28 LOADN                            R15 0
       29 CALL                             R13 2 1
       30 SETTABLEKS                       R13 R12 K5 ["Size"]
       32 GETIMPORT                        R13 K15 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
       36 NAMECALL                         R13 R2 K16 ["getNextOrder"]
       38 CALL                             R13 1 1
       39 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       41 CALL                             R10 2 1
       42 SETTABLE                         R10 R3 R9
       43 FORGLOOP                         R4 2 ; [-32]
       45 RETURN                           R3 1

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
       27 GETIMPORT                        R7 K6 [Vector2.new]
       29 LOADN                            R8 94
       30 LOADN                            R9 210
       31 CALL                             R7 2 -1
       32 CALL                             R6 -1 2
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R8 R8 K7 ["createElement"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K8 ["Dialog"]
       39 DUPTABLE                         R10 K15 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
       40 LOADK                            R11 K16 [""]
       41 SETTABLEKS                       R11 R10 K9 ["Title"]
       43 GETUPVAL                         R11 7
       44 SETTABLEKS                       R11 R10 K10 ["MinContentSize"]
       46 SETTABLEKS                       R6 R10 K11 ["Size"]
       48 LOADB                            R11 1
       49 SETTABLEKS                       R11 R10 K12 ["Modal"]
       51 GETTABLEKS                       R11 R0 K17 ["onClose"]
       53 SETTABLEKS                       R11 R10 K13 ["OnClose"]
       55 LOADB                            R11 1
       56 SETTABLEKS                       R11 R10 K14 ["Enabled"]
       58 GETUPVAL                         R11 5
       59 GETTABLEKS                       R11 R11 K7 ["createElement"]
       61 GETUPVAL                         R12 8
       62 DUPTABLE                         R13 K22 [{"onAbsoluteSizeChanged", "Size", "AutomaticSize", "tag", "LayoutOrder"}]
       63 NEWCLOSURE                       R14 P0
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R14 R13 K18 ["onAbsoluteSizeChanged"]
       67 GETIMPORT                        R14 K25 [UDim2.fromOffset]
       69 LOADN                            R15 94
       70 LOADN                            R16 1
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K11 ["Size"]
       74 GETIMPORT                        R14 K28 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R14 R13 K19 ["AutomaticSize"]
       78 LOADK                            R14 K29 ["col size-full align-x-left padding-x-large padding-bottom-large gap-small"]
       79 SETTABLEKS                       R14 R13 K20 ["tag"]
       81 NAMECALL                         R14 R1 K30 ["getNextOrder"]
       83 CALL                             R14 1 1
       84 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       86 DUPTABLE                         R14 K34 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       87 GETUPVAL                         R15 5
       88 GETTABLEKS                       R15 R15 K7 ["createElement"]
       90 LOADK                            R16 K31 ["StyleLink"]
       91 DUPTABLE                         R17 K36 [{"StyleSheet"}]
       92 SETTABLEKS                       R3 R17 K35 ["StyleSheet"]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K31 ["StyleLink"]
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R15 R15 K7 ["createElement"]
      100 GETUPVAL                         R16 8
      101 DUPTABLE                         R17 K37 [{"tag", "LayoutOrder"}]
      102 LOADK                            R18 K38 ["row size-full-0 auto-y padding-y-medium padding-right-large gap-medium"]
      103 SETTABLEKS                       R18 R17 K20 ["tag"]
      105 NAMECALL                         R18 R1 K30 ["getNextOrder"]
      107 CALL                             R18 1 1
      108 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      110 DUPTABLE                         R18 K41 [{"Icon", "ErrorTextView"}]
      111 GETUPVAL                         R19 5
      112 GETTABLEKS                       R19 R19 K7 ["createElement"]
      114 GETUPVAL                         R20 9
      115 DUPTABLE                         R21 K46 [{"name", "size", "variant", "style", "LayoutOrder"}]
      116 GETUPVAL                         R22 10
      117 GETTABLEKS                       R22 R22 K47 ["TriangleExclamation"]
      119 SETTABLEKS                       R22 R21 K42 ["name"]
      121 GETUPVAL                         R22 11
      122 GETTABLEKS                       R22 R22 K48 ["Large"]
      124 SETTABLEKS                       R22 R21 K43 ["size"]
      126 GETUPVAL                         R22 12
      127 GETTABLEKS                       R22 R22 K49 ["Filled"]
      129 SETTABLEKS                       R22 R21 K44 ["variant"]
      131 GETTABLEKS                       R22 R2 K50 ["Color"]
      133 GETTABLEKS                       R22 R22 K51 ["Extended"]
      135 GETTABLEKS                       R22 R22 K52 ["Yellow"]
      137 GETTABLEKS                       R22 R22 K53 ["Yellow_800"]
      139 SETTABLEKS                       R22 R21 K45 ["style"]
      141 NAMECALL                         R22 R1 K30 ["getNextOrder"]
      143 CALL                             R22 1 1
      144 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K39 ["Icon"]
      149 GETUPVAL                         R19 5
      150 GETTABLEKS                       R19 R19 K7 ["createElement"]
      152 GETUPVAL                         R20 8
      153 DUPTABLE                         R21 K54 [{"tag", "AutomaticSize", "LayoutOrder"}]
      154 LOADK                            R22 K55 ["col gap-medium grow"]
      155 SETTABLEKS                       R22 R21 K20 ["tag"]
      157 GETIMPORT                        R22 K28 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R22 R21 K19 ["AutomaticSize"]
      161 NAMECALL                         R22 R1 K30 ["getNextOrder"]
      163 CALL                             R22 1 1
      164 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      166 DUPTABLE                         R22 K57 [{"Title", "Description"}]
      167 GETUPVAL                         R23 5
      168 GETTABLEKS                       R23 R23 K7 ["createElement"]
      170 GETUPVAL                         R24 13
      171 DUPTABLE                         R25 K59 [{"Text", "tag", "LayoutOrder"}]
      172 LOADK                            R28 K60 ["LookComposerDialog"]
      173 LOADK                            R29 K61 ["Warnings"]
      174 DUPTABLE                         R30 K63 [{"count"}]
      175 LENGTH                           R32 R5
      176 FASTCALL1                        TOSTRING R32 ; [+2]
      177 GETIMPORT                        R31 K65 [tostring]
      179 CALL                             R31 1 1
      180 SETTABLEKS                       R31 R30 K62 ["count"]
      182 NAMECALL                         R26 R4 K66 ["getText"]
      184 CALL                             R26 4 1
      185 SETTABLEKS                       R26 R25 K58 ["Text"]
      187 LOADK                            R26 K67 ["text-title-medium text-align-y-center auto-xy content-emphasis"]
      188 SETTABLEKS                       R26 R25 K20 ["tag"]
      190 NAMECALL                         R26 R1 K30 ["getNextOrder"]
      192 CALL                             R26 1 1
      193 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      195 CALL                             R23 2 1
      196 SETTABLEKS                       R23 R22 K9 ["Title"]
      198 GETUPVAL                         R23 5
      199 GETTABLEKS                       R23 R23 K7 ["createElement"]
      201 GETUPVAL                         R24 5
      202 GETTABLEKS                       R24 R24 K68 ["Fragment"]
      204 DUPTABLE                         R25 K69 [{"LayoutOrder"}]
      205 NAMECALL                         R26 R1 K30 ["getNextOrder"]
      207 CALL                             R26 1 1
      208 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      210 GETUPVAL                         R26 14
      211 MOVE                             R27 R5
      212 MOVE                             R28 R4
      213 MOVE                             R29 R1
      214 CALL                             R26 3 1
      215 CALL                             R23 3 1
      216 SETTABLEKS                       R23 R22 K56 ["Description"]
      218 CALL                             R19 3 1
      219 SETTABLEKS                       R19 R18 K40 ["ErrorTextView"]
      221 CALL                             R15 3 1
      222 SETTABLEKS                       R15 R14 K32 ["Content"]
      224 GETUPVAL                         R15 5
      225 GETTABLEKS                       R15 R15 K7 ["createElement"]
      227 GETUPVAL                         R16 8
      228 DUPTABLE                         R17 K37 [{"tag", "LayoutOrder"}]
      229 LOADK                            R18 K70 ["row align-x-right size-full-0 auto-y"]
      230 SETTABLEKS                       R18 R17 K20 ["tag"]
      232 NAMECALL                         R18 R1 K30 ["getNextOrder"]
      234 CALL                             R18 1 1
      235 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      237 DUPTABLE                         R18 K72 [{"CloseButton"}]
      238 GETUPVAL                         R19 5
      239 GETTABLEKS                       R19 R19 K7 ["createElement"]
      241 GETUPVAL                         R20 15
      242 DUPTABLE                         R21 K76 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      243 LOADK                            R24 K60 ["LookComposerDialog"]
      244 LOADK                            R25 K77 ["Close"]
      245 NAMECALL                         R22 R4 K66 ["getText"]
      247 CALL                             R22 3 1
      248 SETTABLEKS                       R22 R21 K73 ["text"]
      250 GETUPVAL                         R22 16
      251 GETTABLEKS                       R22 R22 K78 ["Standard"]
      253 SETTABLEKS                       R22 R21 K44 ["variant"]
      255 GETTABLEKS                       R22 R0 K17 ["onClose"]
      257 SETTABLEKS                       R22 R21 K74 ["onActivated"]
      259 LOADB                            R22 0
      260 SETTABLEKS                       R22 R21 K75 ["isDisabled"]
      262 GETUPVAL                         R22 17
      263 GETTABLEKS                       R22 R22 K79 ["Small"]
      265 SETTABLEKS                       R22 R21 K43 ["size"]
      267 NAMECALL                         R22 R1 K30 ["getNextOrder"]
      269 CALL                             R22 1 1
      270 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      272 CALL                             R19 2 1
      273 SETTABLEKS                       R19 R18 K71 ["CloseButton"]
      275 CALL                             R15 3 1
      276 SETTABLEKS                       R15 R14 K33 ["ErrorDialogFooter"]
      278 CALL                             R11 3 -1
      279 CALL                             R8 -1 -1
      280 RETURN                           R8 -1

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
       60 GETTABLEKS                       R14 R13 K22 ["UI"]
       62 GETTABLEKS                       R15 R13 K23 ["Util"]
       64 GETTABLEKS                       R15 R15 K24 ["LayoutOrderIterator"]
       66 GETTABLEKS                       R16 R13 K25 ["ContextServices"]
       68 GETTABLEKS                       R16 R16 K26 ["Localization"]
       70 GETTABLEKS                       R17 R13 K25 ["ContextServices"]
       72 GETTABLEKS                       R17 R17 K27 ["Design"]
       74 GETIMPORT                        R18 K5 [require]
       76 GETTABLEKS                       R19 R0 K28 ["Src"]
       78 GETTABLEKS                       R19 R19 K29 ["Flags"]
       80 GETTABLEKS                       R19 R19 K30 ["getFFlagAvatarPreviewerLookComposer"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K33 [Vector2.new]
       85 LOADN                            R20 94
       86 LOADN                            R21 210
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
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R19
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
