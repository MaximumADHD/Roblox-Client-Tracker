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
       35 DUPTABLE                         R10 K15 [{["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True}]
       36 GETUPVAL                         R11 6
       37 SETTABLEKS                       R11 R10 K9 ["MinContentSize"]
       39 SETTABLEKS                       R6 R10 K10 ["Size"]
       41 GETTABLEKS                       R11 R0 K16 ["onClose"]
       43 SETTABLEKS                       R11 R10 K13 ["OnClose"]
       45 GETUPVAL                         R11 5
       46 GETTABLEKS                       R11 R11 K5 ["createElement"]
       48 GETUPVAL                         R12 8
       49 DUPTABLE                         R13 K21 [{["onAbsoluteSizeChanged"], ["tag"] = "col align-x-left gap-small size-full-0 auto-y padding-x-large", ["LayoutOrder"]}]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R14 R13 K17 ["onAbsoluteSizeChanged"]
       54 NAMECALL                         R14 R1 K22 ["getNextOrder"]
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       59 DUPTABLE                         R14 K26 [{"StyleLink", "Content", "ErrorDialogFooter"}]
       60 GETUPVAL                         R15 5
       61 GETTABLEKS                       R15 R15 K5 ["createElement"]
       63 LOADK                            R16 K23 ["StyleLink"]
       64 DUPTABLE                         R17 K28 [{"StyleSheet"}]
       65 SETTABLEKS                       R3 R17 K27 ["StyleSheet"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K23 ["StyleLink"]
       70 GETUPVAL                         R15 5
       71 GETTABLEKS                       R15 R15 K5 ["createElement"]
       73 GETUPVAL                         R16 8
       74 DUPTABLE                         R17 K30 [{["tag"] = "row gap-medium size-full-0 auto-y padding-y-medium padding-right-large", ["LayoutOrder"]}]
       75 NAMECALL                         R18 R1 K22 ["getNextOrder"]
       77 CALL                             R18 1 1
       78 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
       80 DUPTABLE                         R18 K33 [{"Icon", "ErrorTextView"}]
       81 GETUPVAL                         R19 5
       82 GETTABLEKS                       R19 R19 K5 ["createElement"]
       84 GETUPVAL                         R20 9
       85 DUPTABLE                         R21 K38 [{"name", "size", "variant", "style", "LayoutOrder"}]
       86 GETUPVAL                         R22 10
       87 GETTABLEKS                       R22 R22 K39 ["CircleX"]
       89 SETTABLEKS                       R22 R21 K34 ["name"]
       91 GETUPVAL                         R22 11
       92 GETTABLEKS                       R22 R22 K40 ["Large"]
       94 SETTABLEKS                       R22 R21 K35 ["size"]
       96 GETUPVAL                         R22 12
       97 GETTABLEKS                       R22 R22 K41 ["Filled"]
       99 SETTABLEKS                       R22 R21 K36 ["variant"]
      101 GETTABLEKS                       R22 R2 K42 ["Color"]
      103 GETTABLEKS                       R22 R22 K43 ["Extended"]
      105 GETTABLEKS                       R22 R22 K44 ["Red"]
      107 GETTABLEKS                       R22 R22 K45 ["Red_800"]
      109 SETTABLEKS                       R22 R21 K37 ["style"]
      111 NAMECALL                         R22 R1 K22 ["getNextOrder"]
      113 CALL                             R22 1 1
      114 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K31 ["Icon"]
      119 GETUPVAL                         R19 5
      120 GETTABLEKS                       R19 R19 K5 ["createElement"]
      122 GETUPVAL                         R20 8
      123 DUPTABLE                         R21 K47 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      124 NAMECALL                         R22 R1 K22 ["getNextOrder"]
      126 CALL                             R22 1 1
      127 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      129 DUPTABLE                         R22 K49 [{"Title", "Description"}]
      130 GETUPVAL                         R23 5
      131 GETTABLEKS                       R23 R23 K5 ["createElement"]
      133 GETUPVAL                         R24 13
      134 DUPTABLE                         R25 K52 [{["Text"], ["tag"] = "auto-xy text-title-medium text-align-y-center content-emphasis", ["LayoutOrder"]}]
      135 LOADK                            R28 K53 ["MarketplaceImport"]
      136 LOADK                            R29 K54 ["ErrorDialogHeader"]
      137 DUPTABLE                         R30 K56 [{"numErrors"}]
      138 LENGTH                           R32 R5
      139 FASTCALL1                        TOSTRING R32 ; [+2]
      140 GETIMPORT                        R31 K58 [tostring]
      142 CALL                             R31 1 1
      143 SETTABLEKS                       R31 R30 K55 ["numErrors"]
      145 NAMECALL                         R26 R4 K59 ["getText"]
      147 CALL                             R26 4 1
      148 SETTABLEKS                       R26 R25 K50 ["Text"]
      150 NAMECALL                         R26 R1 K22 ["getNextOrder"]
      152 CALL                             R26 1 1
      153 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      155 CALL                             R23 2 1
      156 SETTABLEKS                       R23 R22 K7 ["Title"]
      158 GETUPVAL                         R23 5
      159 GETTABLEKS                       R23 R23 K5 ["createElement"]
      161 GETUPVAL                         R24 5
      162 GETTABLEKS                       R24 R24 K60 ["Fragment"]
      164 DUPTABLE                         R25 K61 [{"LayoutOrder"}]
      165 NAMECALL                         R26 R1 K22 ["getNextOrder"]
      167 CALL                             R26 1 1
      168 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      170 GETUPVAL                         R26 14
      171 MOVE                             R27 R5
      172 MOVE                             R28 R1
      173 CALL                             R26 2 1
      174 CALL                             R23 3 1
      175 SETTABLEKS                       R23 R22 K48 ["Description"]
      177 CALL                             R19 3 1
      178 SETTABLEKS                       R19 R18 K32 ["ErrorTextView"]
      180 CALL                             R15 3 1
      181 SETTABLEKS                       R15 R14 K24 ["Content"]
      183 GETUPVAL                         R15 5
      184 GETTABLEKS                       R15 R15 K5 ["createElement"]
      186 GETUPVAL                         R16 8
      187 DUPTABLE                         R17 K63 [{["tag"] = "row align-x-right size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      188 NAMECALL                         R18 R1 K22 ["getNextOrder"]
      190 CALL                             R18 1 1
      191 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      193 DUPTABLE                         R18 K65 [{"CloseButton"}]
      194 GETUPVAL                         R19 5
      195 GETTABLEKS                       R19 R19 K5 ["createElement"]
      197 GETUPVAL                         R20 15
      198 DUPTABLE                         R21 K70 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"]}]
      199 LOADK                            R24 K53 ["MarketplaceImport"]
      200 LOADK                            R25 K71 ["CloseButtonLabel"]
      201 NAMECALL                         R22 R4 K59 ["getText"]
      203 CALL                             R22 3 1
      204 SETTABLEKS                       R22 R21 K66 ["text"]
      206 GETUPVAL                         R22 16
      207 GETTABLEKS                       R22 R22 K72 ["Standard"]
      209 SETTABLEKS                       R22 R21 K36 ["variant"]
      211 GETTABLEKS                       R22 R0 K16 ["onClose"]
      213 SETTABLEKS                       R22 R21 K67 ["onActivated"]
      215 GETUPVAL                         R22 17
      216 GETTABLEKS                       R22 R22 K73 ["XSmall"]
      218 SETTABLEKS                       R22 R21 K35 ["size"]
      220 NAMECALL                         R22 R1 K22 ["getNextOrder"]
      222 CALL                             R22 1 1
      223 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      225 CALL                             R19 2 1
      226 SETTABLEKS                       R19 R18 K64 ["CloseButton"]
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K25 ["ErrorDialogFooter"]
      231 CALL                             R11 3 -1
      232 CALL                             R8 -1 -1
      233 RETURN                           R8 -1

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
