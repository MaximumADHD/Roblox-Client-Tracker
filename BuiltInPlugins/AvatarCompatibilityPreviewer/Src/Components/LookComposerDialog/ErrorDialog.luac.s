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
       19 DUPTABLE                         R12 K9 [{["Text"], ["tag"] = "text-body-small text-wrap text-align-x-left content-default", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
       20 SETTABLEKS                       R8 R12 K3 ["Text"]
       22 GETIMPORT                        R13 K12 [UDim2.fromScale]
       24 LOADN                            R14 1
       25 LOADN                            R15 0
       26 CALL                             R13 2 1
       27 SETTABLEKS                       R13 R12 K6 ["Size"]
       29 GETIMPORT                        R13 K15 [Enum.AutomaticSize.Y]
       31 SETTABLEKS                       R13 R12 K7 ["AutomaticSize"]
       33 NAMECALL                         R13 R2 K16 ["getNextOrder"]
       35 CALL                             R13 1 1
       36 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       38 CALL                             R10 2 1
       39 SETTABLE                         R10 R3 R9
       40 FORGLOOP                         R4 2 ; [-29]
       42 RETURN                           R3 1

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
       29 LOADN                            R8 350
       30 LOADN                            R9 210
       31 CALL                             R7 2 -1
       32 CALL                             R6 -1 2
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R8 R8 K7 ["createElement"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K8 ["Dialog"]
       39 DUPTABLE                         R10 K18 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["PluginDesign"]}]
       40 GETUPVAL                         R11 7
       41 SETTABLEKS                       R11 R10 K11 ["MinContentSize"]
       43 SETTABLEKS                       R6 R10 K12 ["Size"]
       45 GETTABLEKS                       R11 R0 K19 ["onClose"]
       47 SETTABLEKS                       R11 R10 K15 ["OnClose"]
       49 GETUPVAL                         R12 8
       50 JUMPIFNOT                        R12 ; [+2]
       51 MOVE                             R11 R3
       52 JUMP                             ; [+1]
       53 LOADNIL                          R11
       54 SETTABLEKS                       R11 R10 K17 ["PluginDesign"]
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R11 R11 K7 ["createElement"]
       59 GETUPVAL                         R12 9
       60 DUPTABLE                         R13 K25 [{["onAbsoluteSizeChanged"], ["Size"], ["AutomaticSize"], ["tag"] = "col align-x-left gap-small size-full padding-x-large padding-bottom-large", ["LayoutOrder"]}]
       61 NEWCLOSURE                       R14 P0
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R14 R13 K20 ["onAbsoluteSizeChanged"]
       65 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       67 LOADN                            R15 350
       68 LOADN                            R16 1
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K12 ["Size"]
       72 GETIMPORT                        R14 K31 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R14 R13 K21 ["AutomaticSize"]
       76 NAMECALL                         R14 R1 K32 ["getNextOrder"]
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K24 ["LayoutOrder"]
       81 DUPTABLE                         R14 K36 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       82 GETUPVAL                         R16 8
       83 JUMPIF                           R16 ; [+9]
       84 GETUPVAL                         R15 5
       85 GETTABLEKS                       R15 R15 K7 ["createElement"]
       87 LOADK                            R16 K33 ["StyleLink"]
       88 DUPTABLE                         R17 K38 [{"StyleSheet"}]
       89 SETTABLEKS                       R3 R17 K37 ["StyleSheet"]
       91 CALL                             R15 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R15
       94 SETTABLEKS                       R15 R14 K33 ["StyleLink"]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R15 R15 K7 ["createElement"]
       99 GETUPVAL                         R16 9
      100 DUPTABLE                         R17 K40 [{["tag"] = "row gap-medium size-full-0 auto-y padding-y-medium padding-right-large", ["LayoutOrder"]}]
      101 NAMECALL                         R18 R1 K32 ["getNextOrder"]
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      106 DUPTABLE                         R18 K43 [{"Icon", "ErrorTextView"}]
      107 GETUPVAL                         R19 5
      108 GETTABLEKS                       R19 R19 K7 ["createElement"]
      110 GETUPVAL                         R20 10
      111 DUPTABLE                         R21 K48 [{"name", "size", "variant", "style", "LayoutOrder"}]
      112 GETUPVAL                         R22 11
      113 GETTABLEKS                       R22 R22 K49 ["TriangleExclamation"]
      115 SETTABLEKS                       R22 R21 K44 ["name"]
      117 GETUPVAL                         R22 12
      118 GETTABLEKS                       R22 R22 K50 ["Large"]
      120 SETTABLEKS                       R22 R21 K45 ["size"]
      122 GETUPVAL                         R22 13
      123 GETTABLEKS                       R22 R22 K51 ["Filled"]
      125 SETTABLEKS                       R22 R21 K46 ["variant"]
      127 GETTABLEKS                       R22 R2 K52 ["Color"]
      129 GETTABLEKS                       R22 R22 K53 ["Extended"]
      131 GETTABLEKS                       R22 R22 K54 ["Yellow"]
      133 GETTABLEKS                       R22 R22 K55 ["Yellow_800"]
      135 SETTABLEKS                       R22 R21 K47 ["style"]
      137 NAMECALL                         R22 R1 K32 ["getNextOrder"]
      139 CALL                             R22 1 1
      140 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K41 ["Icon"]
      145 GETUPVAL                         R19 5
      146 GETTABLEKS                       R19 R19 K7 ["createElement"]
      148 GETUPVAL                         R20 9
      149 DUPTABLE                         R21 K57 [{["tag"] = "col grow gap-medium", ["AutomaticSize"], ["LayoutOrder"]}]
      150 GETIMPORT                        R22 K31 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      154 NAMECALL                         R22 R1 K32 ["getNextOrder"]
      156 CALL                             R22 1 1
      157 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      159 DUPTABLE                         R22 K59 [{"Title", "Description"}]
      160 GETUPVAL                         R23 5
      161 GETTABLEKS                       R23 R23 K7 ["createElement"]
      163 GETUPVAL                         R24 14
      164 DUPTABLE                         R25 K62 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis", ["LayoutOrder"]}]
      165 LOADK                            R28 K63 ["LookComposerDialog"]
      166 LOADK                            R29 K64 ["Warnings"]
      167 DUPTABLE                         R30 K66 [{"count"}]
      168 LENGTH                           R32 R5
      169 FASTCALL1                        TOSTRING R32 ; [+2]
      170 GETIMPORT                        R31 K68 [tostring]
      172 CALL                             R31 1 1
      173 SETTABLEKS                       R31 R30 K65 ["count"]
      175 NAMECALL                         R26 R4 K69 ["getText"]
      177 CALL                             R26 4 1
      178 SETTABLEKS                       R26 R25 K60 ["Text"]
      180 NAMECALL                         R26 R1 K32 ["getNextOrder"]
      182 CALL                             R26 1 1
      183 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R22 K9 ["Title"]
      188 GETUPVAL                         R23 5
      189 GETTABLEKS                       R23 R23 K7 ["createElement"]
      191 GETUPVAL                         R24 5
      192 GETTABLEKS                       R24 R24 K70 ["Fragment"]
      194 DUPTABLE                         R25 K71 [{"LayoutOrder"}]
      195 NAMECALL                         R26 R1 K32 ["getNextOrder"]
      197 CALL                             R26 1 1
      198 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      200 GETUPVAL                         R26 15
      201 MOVE                             R27 R5
      202 MOVE                             R28 R4
      203 MOVE                             R29 R1
      204 CALL                             R26 3 1
      205 CALL                             R23 3 1
      206 SETTABLEKS                       R23 R22 K58 ["Description"]
      208 CALL                             R19 3 1
      209 SETTABLEKS                       R19 R18 K42 ["ErrorTextView"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R14 K34 ["Content"]
      214 GETUPVAL                         R15 5
      215 GETTABLEKS                       R15 R15 K7 ["createElement"]
      217 GETUPVAL                         R16 9
      218 DUPTABLE                         R17 K73 [{["tag"] = "row align-x-right size-full-0 auto-y", ["LayoutOrder"]}]
      219 NAMECALL                         R18 R1 K32 ["getNextOrder"]
      221 CALL                             R18 1 1
      222 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      224 DUPTABLE                         R18 K75 [{"CloseButton"}]
      225 GETUPVAL                         R19 5
      226 GETTABLEKS                       R19 R19 K7 ["createElement"]
      228 GETUPVAL                         R20 16
      229 DUPTABLE                         R21 K80 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"]}]
      230 LOADK                            R24 K63 ["LookComposerDialog"]
      231 LOADK                            R25 K81 ["Close"]
      232 NAMECALL                         R22 R4 K69 ["getText"]
      234 CALL                             R22 3 1
      235 SETTABLEKS                       R22 R21 K76 ["text"]
      237 GETUPVAL                         R22 17
      238 GETTABLEKS                       R22 R22 K82 ["Standard"]
      240 SETTABLEKS                       R22 R21 K46 ["variant"]
      242 GETTABLEKS                       R22 R0 K19 ["onClose"]
      244 SETTABLEKS                       R22 R21 K77 ["onActivated"]
      246 GETUPVAL                         R22 18
      247 GETTABLEKS                       R22 R22 K83 ["Small"]
      249 SETTABLEKS                       R22 R21 K45 ["size"]
      251 NAMECALL                         R22 R1 K32 ["getNextOrder"]
      253 CALL                             R22 1 1
      254 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      256 CALL                             R19 2 1
      257 SETTABLEKS                       R19 R18 K74 ["CloseButton"]
      259 CALL                             R15 3 1
      260 SETTABLEKS                       R15 R14 K35 ["ErrorDialogFooter"]
      262 CALL                             R11 3 -1
      263 CALL                             R8 -1 -1
      264 RETURN                           R8 -1

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
       91 LOADN                            R22 210
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
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R20
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
