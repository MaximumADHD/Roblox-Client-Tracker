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
       39 DUPTABLE                         R10 K17 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True}]
       40 GETUPVAL                         R11 7
       41 SETTABLEKS                       R11 R10 K11 ["MinContentSize"]
       43 SETTABLEKS                       R6 R10 K12 ["Size"]
       45 GETTABLEKS                       R11 R0 K18 ["onClose"]
       47 SETTABLEKS                       R11 R10 K15 ["OnClose"]
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R11 R11 K7 ["createElement"]
       52 GETUPVAL                         R12 8
       53 DUPTABLE                         R13 K24 [{["onAbsoluteSizeChanged"], ["Size"], ["AutomaticSize"], ["tag"] = "col align-x-left gap-small size-full padding-x-large padding-bottom-large", ["LayoutOrder"]}]
       54 NEWCLOSURE                       R14 P0
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R14 R13 K19 ["onAbsoluteSizeChanged"]
       58 GETIMPORT                        R14 K27 [UDim2.fromOffset]
       60 LOADN                            R15 350
       61 LOADN                            R16 1
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K12 ["Size"]
       65 GETIMPORT                        R14 K30 [Enum.AutomaticSize.Y]
       67 SETTABLEKS                       R14 R13 K20 ["AutomaticSize"]
       69 NAMECALL                         R14 R1 K31 ["getNextOrder"]
       71 CALL                             R14 1 1
       72 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
       74 DUPTABLE                         R14 K35 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       75 GETUPVAL                         R15 5
       76 GETTABLEKS                       R15 R15 K7 ["createElement"]
       78 LOADK                            R16 K32 ["StyleLink"]
       79 DUPTABLE                         R17 K37 [{"StyleSheet"}]
       80 SETTABLEKS                       R3 R17 K36 ["StyleSheet"]
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K32 ["StyleLink"]
       85 GETUPVAL                         R15 5
       86 GETTABLEKS                       R15 R15 K7 ["createElement"]
       88 GETUPVAL                         R16 8
       89 DUPTABLE                         R17 K39 [{["tag"] = "row gap-medium size-full-0 auto-y padding-y-medium padding-right-large", ["LayoutOrder"]}]
       90 NAMECALL                         R18 R1 K31 ["getNextOrder"]
       92 CALL                             R18 1 1
       93 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
       95 DUPTABLE                         R18 K42 [{"Icon", "ErrorTextView"}]
       96 GETUPVAL                         R19 5
       97 GETTABLEKS                       R19 R19 K7 ["createElement"]
       99 GETUPVAL                         R20 9
      100 DUPTABLE                         R21 K47 [{"name", "size", "variant", "style", "LayoutOrder"}]
      101 GETUPVAL                         R22 10
      102 GETTABLEKS                       R22 R22 K48 ["TriangleExclamation"]
      104 SETTABLEKS                       R22 R21 K43 ["name"]
      106 GETUPVAL                         R22 11
      107 GETTABLEKS                       R22 R22 K49 ["Large"]
      109 SETTABLEKS                       R22 R21 K44 ["size"]
      111 GETUPVAL                         R22 12
      112 GETTABLEKS                       R22 R22 K50 ["Filled"]
      114 SETTABLEKS                       R22 R21 K45 ["variant"]
      116 GETTABLEKS                       R22 R2 K51 ["Color"]
      118 GETTABLEKS                       R22 R22 K52 ["Extended"]
      120 GETTABLEKS                       R22 R22 K53 ["Yellow"]
      122 GETTABLEKS                       R22 R22 K54 ["Yellow_800"]
      124 SETTABLEKS                       R22 R21 K46 ["style"]
      126 NAMECALL                         R22 R1 K31 ["getNextOrder"]
      128 CALL                             R22 1 1
      129 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K40 ["Icon"]
      134 GETUPVAL                         R19 5
      135 GETTABLEKS                       R19 R19 K7 ["createElement"]
      137 GETUPVAL                         R20 8
      138 DUPTABLE                         R21 K56 [{["tag"] = "col grow gap-medium", ["AutomaticSize"], ["LayoutOrder"]}]
      139 GETIMPORT                        R22 K30 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R22 R21 K20 ["AutomaticSize"]
      143 NAMECALL                         R22 R1 K31 ["getNextOrder"]
      145 CALL                             R22 1 1
      146 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      148 DUPTABLE                         R22 K58 [{"Title", "Description"}]
      149 GETUPVAL                         R23 5
      150 GETTABLEKS                       R23 R23 K7 ["createElement"]
      152 GETUPVAL                         R24 13
      153 DUPTABLE                         R25 K61 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis", ["LayoutOrder"]}]
      154 LOADK                            R28 K62 ["LookComposerDialog"]
      155 LOADK                            R29 K63 ["Warnings"]
      156 DUPTABLE                         R30 K65 [{"count"}]
      157 LENGTH                           R32 R5
      158 FASTCALL1                        TOSTRING R32 ; [+2]
      159 GETIMPORT                        R31 K67 [tostring]
      161 CALL                             R31 1 1
      162 SETTABLEKS                       R31 R30 K64 ["count"]
      164 NAMECALL                         R26 R4 K68 ["getText"]
      166 CALL                             R26 4 1
      167 SETTABLEKS                       R26 R25 K59 ["Text"]
      169 NAMECALL                         R26 R1 K31 ["getNextOrder"]
      171 CALL                             R26 1 1
      172 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      174 CALL                             R23 2 1
      175 SETTABLEKS                       R23 R22 K9 ["Title"]
      177 GETUPVAL                         R23 5
      178 GETTABLEKS                       R23 R23 K7 ["createElement"]
      180 GETUPVAL                         R24 5
      181 GETTABLEKS                       R24 R24 K69 ["Fragment"]
      183 DUPTABLE                         R25 K70 [{"LayoutOrder"}]
      184 NAMECALL                         R26 R1 K31 ["getNextOrder"]
      186 CALL                             R26 1 1
      187 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      189 GETUPVAL                         R26 14
      190 MOVE                             R27 R5
      191 MOVE                             R28 R4
      192 MOVE                             R29 R1
      193 CALL                             R26 3 1
      194 CALL                             R23 3 1
      195 SETTABLEKS                       R23 R22 K57 ["Description"]
      197 CALL                             R19 3 1
      198 SETTABLEKS                       R19 R18 K41 ["ErrorTextView"]
      200 CALL                             R15 3 1
      201 SETTABLEKS                       R15 R14 K33 ["Content"]
      203 GETUPVAL                         R15 5
      204 GETTABLEKS                       R15 R15 K7 ["createElement"]
      206 GETUPVAL                         R16 8
      207 DUPTABLE                         R17 K72 [{["tag"] = "row align-x-right size-full-0 auto-y", ["LayoutOrder"]}]
      208 NAMECALL                         R18 R1 K31 ["getNextOrder"]
      210 CALL                             R18 1 1
      211 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      213 DUPTABLE                         R18 K74 [{"CloseButton"}]
      214 GETUPVAL                         R19 5
      215 GETTABLEKS                       R19 R19 K7 ["createElement"]
      217 GETUPVAL                         R20 15
      218 DUPTABLE                         R21 K79 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"]}]
      219 LOADK                            R24 K62 ["LookComposerDialog"]
      220 LOADK                            R25 K80 ["Close"]
      221 NAMECALL                         R22 R4 K68 ["getText"]
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K75 ["text"]
      226 GETUPVAL                         R22 16
      227 GETTABLEKS                       R22 R22 K81 ["Standard"]
      229 SETTABLEKS                       R22 R21 K45 ["variant"]
      231 GETTABLEKS                       R22 R0 K18 ["onClose"]
      233 SETTABLEKS                       R22 R21 K76 ["onActivated"]
      235 GETUPVAL                         R22 17
      236 GETTABLEKS                       R22 R22 K82 ["Small"]
      238 SETTABLEKS                       R22 R21 K44 ["size"]
      240 NAMECALL                         R22 R1 K31 ["getNextOrder"]
      242 CALL                             R22 1 1
      243 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R18 K73 ["CloseButton"]
      248 CALL                             R15 3 1
      249 SETTABLEKS                       R15 R14 K34 ["ErrorDialogFooter"]
      251 CALL                             R11 3 -1
      252 CALL                             R8 -1 -1
      253 RETURN                           R8 -1

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
       85 LOADN                            R20 350
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
