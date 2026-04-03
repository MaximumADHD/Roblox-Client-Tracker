PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["addUniverseIds"]
        5 CALL                             R0 3 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 4
       12 LOADB                            R3 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["removeUniverse"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Item", "Index", "onItemRemoved"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 SETTABLEKS                       R1 R4 K2 ["Index"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["onItemRemoved"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["DialogType"]
        7 GETTABLEKS                       R4 R5 K2 ["QuickShare"]
        9 NAMECALL                         R2 R1 K3 ["getDialogController"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 2
       18 GETTABLEKS                       R6 R5 K4 ["Selection"]
       20 GETTABLEKS                       R7 R0 K5 ["MaxCount"]
       22 GETUPVAL                         R9 4
       23 GETTABLEKS                       R8 R9 K6 ["useState"]
       25 LOADK                            R9 K7 [""]
       26 CALL                             R8 1 2
       27 GETUPVAL                         R11 4
       28 GETTABLEKS                       R10 R11 K6 ["useState"]
       30 LOADB                            R11 0
       31 CALL                             R10 1 2
       32 GETUPVAL                         R13 4
       33 GETTABLEKS                       R12 R13 K8 ["useCallback"]
       35 NEWCLOSURE                       R13 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R11
       41 NEWTABLE                         R14 0 2
       43 MOVE                             R15 R8
       44 MOVE                             R16 R7
       45 SETLIST                          R14 R15 2 [1]
       47 CALL                             R12 2 1
       48 GETUPVAL                         R14 4
       49 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 1
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       59 NEWCLOSURE                       R15 P2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R11
       62 NEWTABLE                         R16 0 0
       64 CALL                             R14 2 1
       65 GETUPVAL                         R16 4
       66 GETTABLEKS                       R15 R16 K9 ["createElement"]
       68 GETUPVAL                         R17 5
       69 GETTABLEKS                       R16 R17 K10 ["View"]
       71 DUPTABLE                         R17 K12 [{"tag"}]
       72 LOADK                            R18 K13 ["col size-full gap-medium data-testid=experiencestab-view"]
       73 SETTABLEKS                       R18 R17 K11 ["tag"]
       75 DUPTABLE                         R18 K16 [{"AddView", "SelectionView"}]
       76 GETUPVAL                         R20 4
       77 GETTABLEKS                       R19 R20 K9 ["createElement"]
       79 GETUPVAL                         R21 5
       80 GETTABLEKS                       R20 R21 K10 ["View"]
       82 DUPTABLE                         R21 K18 [{"LayoutOrder", "tag"}]
       83 LOADN                            R22 1
       84 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
       86 LOADK                            R22 K19 ["row size-full-0 auto-y gap-small"]
       87 SETTABLEKS                       R22 R21 K11 ["tag"]
       89 NEWTABLE                         R22 0 2
       91 GETUPVAL                         R24 4
       92 GETTABLEKS                       R23 R24 K9 ["createElement"]
       94 GETUPVAL                         R25 5
       95 GETTABLEKS                       R24 R25 K10 ["View"]
       97 DUPTABLE                         R25 K12 [{"tag"}]
       98 LOADK                            R26 K20 ["fill auto-y"]
       99 SETTABLEKS                       R26 R25 K11 ["tag"]
      101 NEWTABLE                         R26 0 1
      103 GETUPVAL                         R28 4
      104 GETTABLEKS                       R27 R28 K9 ["createElement"]
      106 GETUPVAL                         R29 5
      107 GETTABLEKS                       R28 R29 K21 ["TextInput"]
      109 DUPTABLE                         R29 K30 [{"label", "placeholder", "text", "iconTrailing", "onChanged", "hasError", "width", "size"}]
      110 LOADK                            R30 K7 [""]
      111 SETTABLEKS                       R30 R29 K22 ["label"]
      113 LOADK                            R32 K2 ["QuickShare"]
      114 LOADK                            R33 K31 ["ExperienceIdPlaceholder"]
      115 NAMECALL                         R30 R3 K32 ["getText"]
      117 CALL                             R30 3 1
      118 SETTABLEKS                       R30 R29 K23 ["placeholder"]
      120 SETTABLEKS                       R8 R29 K24 ["text"]
      122 LENGTH                           R31 R8
      123 LOADN                            R32 0
      124 JUMPIFNOTLT                      R32 R31 ; [+16]
      126 DUPTABLE                         R30 K35 [{"name", "onActivated"}]
      127 GETUPVAL                         R34 5
      128 GETTABLEKS                       R33 R34 K36 ["Enums"]
      130 GETTABLEKS                       R32 R33 K37 ["IconName"]
      132 GETTABLEKS                       R31 R32 K38 ["CircleX"]
      134 SETTABLEKS                       R31 R30 K33 ["name"]
      136 NEWCLOSURE                       R31 P3
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R31 R30 K34 ["onActivated"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R30
      142 SETTABLEKS                       R30 R29 K25 ["iconTrailing"]
      144 SETTABLEKS                       R14 R29 K26 ["onChanged"]
      146 SETTABLEKS                       R10 R29 K27 ["hasError"]
      148 GETIMPORT                        R30 K41 [UDim.new]
      150 LOADN                            R31 1
      151 LOADN                            R32 0
      152 CALL                             R30 2 1
      153 SETTABLEKS                       R30 R29 K28 ["width"]
      155 GETUPVAL                         R33 5
      156 GETTABLEKS                       R32 R33 K36 ["Enums"]
      158 GETTABLEKS                       R31 R32 K42 ["InputSize"]
      160 GETTABLEKS                       R30 R31 K43 ["Small"]
      162 SETTABLEKS                       R30 R29 K29 ["size"]
      164 CALL                             R27 2 -1
      165 SETLIST                          R26 R27 -1 [1]
      167 CALL                             R23 3 1
      168 GETUPVAL                         R25 4
      169 GETTABLEKS                       R24 R25 K9 ["createElement"]
      171 GETUPVAL                         R26 5
      172 GETTABLEKS                       R25 R26 K10 ["View"]
      174 DUPTABLE                         R26 K12 [{"tag"}]
      175 LOADK                            R27 K44 ["size-1500-0 auto-y"]
      176 SETTABLEKS                       R27 R26 K11 ["tag"]
      178 GETUPVAL                         R28 4
      179 GETTABLEKS                       R27 R28 K9 ["createElement"]
      181 GETUPVAL                         R29 5
      182 GETTABLEKS                       R28 R29 K45 ["Button"]
      184 DUPTABLE                         R29 K49 [{"text", "onActivated", "variant", "size", "width", "isDisabled", "testId"}]
      185 LOADK                            R32 K2 ["QuickShare"]
      186 LOADK                            R33 K50 ["AddButton"]
      187 NAMECALL                         R30 R3 K32 ["getText"]
      189 CALL                             R30 3 1
      190 SETTABLEKS                       R30 R29 K24 ["text"]
      192 SETTABLEKS                       R12 R29 K34 ["onActivated"]
      194 GETUPVAL                         R33 5
      195 GETTABLEKS                       R32 R33 K36 ["Enums"]
      197 GETTABLEKS                       R31 R32 K51 ["ButtonVariant"]
      199 GETTABLEKS                       R30 R31 K52 ["Standard"]
      201 SETTABLEKS                       R30 R29 K46 ["variant"]
      203 GETUPVAL                         R33 5
      204 GETTABLEKS                       R32 R33 K36 ["Enums"]
      206 GETTABLEKS                       R31 R32 K42 ["InputSize"]
      208 GETTABLEKS                       R30 R31 K43 ["Small"]
      210 SETTABLEKS                       R30 R29 K29 ["size"]
      212 GETIMPORT                        R30 K41 [UDim.new]
      214 LOADN                            R31 1
      215 LOADN                            R32 0
      216 CALL                             R30 2 1
      217 SETTABLEKS                       R30 R29 K28 ["width"]
      219 JUMPIFEQKN                       R7 K53 [0] ; [+2]
      221 LOADB                            R30 0 +1
      222 LOADB                            R30 1
      223 SETTABLEKS                       R30 R29 K47 ["isDisabled"]
      225 LOADK                            R30 K54 ["experience-add-button"]
      226 SETTABLEKS                       R30 R29 K48 ["testId"]
      228 CALL                             R27 2 -1
      229 CALL                             R24 -1 -1
      230 SETLIST                          R22 R23 -1 [1]
      232 CALL                             R19 3 1
      233 SETTABLEKS                       R19 R18 K14 ["AddView"]
      235 GETUPVAL                         R20 4
      236 GETTABLEKS                       R19 R20 K9 ["createElement"]
      238 GETUPVAL                         R20 6
      239 DUPTABLE                         R21 K57 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
      240 LOADN                            R22 2
      241 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      243 LOADK                            R24 K2 ["QuickShare"]
      244 LOADK                            R25 K58 ["ExperiencesHintTitle"]
      245 NAMECALL                         R22 R3 K32 ["getText"]
      247 CALL                             R22 3 1
      248 SETTABLEKS                       R22 R21 K55 ["PlaceholderText"]
      250 LOADK                            R24 K2 ["QuickShare"]
      251 LOADK                            R25 K59 ["ExperiencesHintDescription"]
      252 NAMECALL                         R22 R3 K32 ["getText"]
      254 CALL                             R22 3 1
      255 SETTABLEKS                       R22 R21 K56 ["PlaceholderSubtext"]
      257 GETUPVAL                         R23 7
      258 GETTABLEKS                       R22 R23 K60 ["map"]
      260 MOVE                             R23 R6
      261 NEWCLOSURE                       R24 P4
      262 CAPTURE                          UPVAL U4
      263 CAPTURE                          UPVAL U8
      264 CAPTURE                          VAL R13
      265 CALL                             R22 2 -1
      266 CALL                             R19 -1 1
      267 SETTABLEKS                       R19 R18 K15 ["SelectionView"]
      269 CALL                             R15 3 -1
      270 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R9 K15 ["PluginController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R12 R0 K13 ["Src"]
       52 GETTABLEKS                       R11 R12 K16 ["Util"]
       54 GETTABLEKS                       R10 R11 K17 ["Dialogs"]
       56 GETTABLEKS                       R9 R10 K18 ["useQuickShareState"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K13 ["Src"]
       63 GETTABLEKS                       R10 R11 K19 ["Types"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R17 R0 K13 ["Src"]
       70 GETTABLEKS                       R16 R17 K20 ["Components"]
       72 GETTABLEKS                       R15 R16 K21 ["App"]
       74 GETTABLEKS                       R14 R15 K17 ["Dialogs"]
       76 GETTABLEKS                       R13 R14 K22 ["QuickShareDialog"]
       78 GETTABLEKS                       R12 R13 K23 ["ShareView"]
       80 GETTABLEKS                       R11 R12 K24 ["SelectedView"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R18 R0 K13 ["Src"]
       87 GETTABLEKS                       R17 R18 K20 ["Components"]
       89 GETTABLEKS                       R16 R17 K21 ["App"]
       91 GETTABLEKS                       R15 R16 K17 ["Dialogs"]
       93 GETTABLEKS                       R14 R15 K22 ["QuickShareDialog"]
       95 GETTABLEKS                       R13 R14 K23 ["ShareView"]
       97 GETTABLEKS                       R12 R13 K25 ["SelectedEntry"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K26 [PROTO_5]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 RETURN                           R12 1
