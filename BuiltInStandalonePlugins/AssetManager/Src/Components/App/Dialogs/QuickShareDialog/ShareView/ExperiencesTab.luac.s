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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Item", "Index", "onItemRemoved"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 SETTABLEKS                       R1 R4 K2 ["Index"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["onItemRemoved"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["DialogType"]
        7 GETTABLEKS                       R4 R4 K2 ["QuickShare"]
        9 NAMECALL                         R2 R1 K3 ["getDialogController"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 2
       18 GETTABLEKS                       R6 R5 K4 ["Selection"]
       20 GETTABLEKS                       R7 R0 K5 ["MaxCount"]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R8 R8 K6 ["useState"]
       25 LOADK                            R9 K7 [""]
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K6 ["useState"]
       30 LOADB                            R11 0
       31 CALL                             R10 1 2
       32 GETUPVAL                         R12 4
       33 GETTABLEKS                       R12 R12 K8 ["useCallback"]
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
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 1
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       59 NEWCLOSURE                       R15 P2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R11
       62 NEWTABLE                         R16 0 0
       64 CALL                             R14 2 1
       65 GETUPVAL                         R15 4
       66 GETTABLEKS                       R15 R15 K9 ["createElement"]
       68 GETUPVAL                         R16 5
       69 GETTABLEKS                       R16 R16 K10 ["View"]
       71 DUPTABLE                         R17 K15 [{["tag"] = "col gap-medium size-full", ["testId"] = "experiencestab-view"}]
       72 DUPTABLE                         R18 K18 [{"AddView", "SelectionView"}]
       73 GETUPVAL                         R19 4
       74 GETTABLEKS                       R19 R19 K9 ["createElement"]
       76 GETUPVAL                         R20 5
       77 GETTABLEKS                       R20 R20 K10 ["View"]
       79 DUPTABLE                         R21 K22 [{["LayoutOrder"] = 1, ["tag"] = "row gap-small size-full-0 auto-y"}]
       80 NEWTABLE                         R22 0 2
       82 GETUPVAL                         R23 4
       83 GETTABLEKS                       R23 R23 K9 ["createElement"]
       85 GETUPVAL                         R24 5
       86 GETTABLEKS                       R24 R24 K10 ["View"]
       88 DUPTABLE                         R25 K24 [{["tag"] = "fill auto-y"}]
       89 NEWTABLE                         R26 0 1
       91 GETUPVAL                         R27 4
       92 GETTABLEKS                       R27 R27 K9 ["createElement"]
       94 GETUPVAL                         R28 5
       95 GETTABLEKS                       R28 R28 K25 ["TextInput"]
       97 DUPTABLE                         R29 K34 [{["label"] = "", ["placeholder"], ["text"], ["iconTrailing"], ["onChanged"], ["hasError"], ["width"], ["size"]}]
       98 LOADK                            R32 K2 ["QuickShare"]
       99 LOADK                            R33 K35 ["ExperienceIdPlaceholder"]
      100 NAMECALL                         R30 R3 K36 ["getText"]
      102 CALL                             R30 3 1
      103 SETTABLEKS                       R30 R29 K27 ["placeholder"]
      105 SETTABLEKS                       R8 R29 K28 ["text"]
      107 LENGTH                           R31 R8
      108 LOADN                            R32 0
      109 JUMPIFNOTLT                      R32 R31 ; [+16]
      111 DUPTABLE                         R30 K39 [{"name", "onActivated"}]
      112 GETUPVAL                         R31 5
      113 GETTABLEKS                       R31 R31 K40 ["Enums"]
      115 GETTABLEKS                       R31 R31 K41 ["IconName"]
      117 GETTABLEKS                       R31 R31 K42 ["CircleX"]
      119 SETTABLEKS                       R31 R30 K37 ["name"]
      121 NEWCLOSURE                       R31 P3
      122 CAPTURE                          VAL R9
      123 SETTABLEKS                       R31 R30 K38 ["onActivated"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R30
      127 SETTABLEKS                       R30 R29 K29 ["iconTrailing"]
      129 SETTABLEKS                       R14 R29 K30 ["onChanged"]
      131 SETTABLEKS                       R10 R29 K31 ["hasError"]
      133 GETIMPORT                        R30 K45 [UDim.new]
      135 LOADN                            R31 1
      136 LOADN                            R32 0
      137 CALL                             R30 2 1
      138 SETTABLEKS                       R30 R29 K32 ["width"]
      140 GETUPVAL                         R30 5
      141 GETTABLEKS                       R30 R30 K40 ["Enums"]
      143 GETTABLEKS                       R30 R30 K46 ["InputSize"]
      145 GETTABLEKS                       R30 R30 K47 ["Small"]
      147 SETTABLEKS                       R30 R29 K33 ["size"]
      149 CALL                             R27 2 -1
      150 SETLIST                          R26 R27 -1 [1]
      152 CALL                             R23 3 1
      153 GETUPVAL                         R24 4
      154 GETTABLEKS                       R24 R24 K9 ["createElement"]
      156 GETUPVAL                         R25 5
      157 GETTABLEKS                       R25 R25 K10 ["View"]
      159 DUPTABLE                         R26 K49 [{["tag"] = "size-1500-0 auto-y"}]
      160 GETUPVAL                         R27 4
      161 GETTABLEKS                       R27 R27 K9 ["createElement"]
      163 GETUPVAL                         R28 5
      164 GETTABLEKS                       R28 R28 K50 ["Button"]
      166 DUPTABLE                         R29 K54 [{["text"], ["onActivated"], ["variant"], ["size"], ["width"], ["isDisabled"], ["testId"] = "experience-add-button"}]
      167 LOADK                            R32 K2 ["QuickShare"]
      168 LOADK                            R33 K55 ["AddButton"]
      169 NAMECALL                         R30 R3 K36 ["getText"]
      171 CALL                             R30 3 1
      172 SETTABLEKS                       R30 R29 K28 ["text"]
      174 SETTABLEKS                       R12 R29 K38 ["onActivated"]
      176 GETUPVAL                         R30 5
      177 GETTABLEKS                       R30 R30 K40 ["Enums"]
      179 GETTABLEKS                       R30 R30 K56 ["ButtonVariant"]
      181 GETTABLEKS                       R30 R30 K57 ["Standard"]
      183 SETTABLEKS                       R30 R29 K51 ["variant"]
      185 GETUPVAL                         R30 5
      186 GETTABLEKS                       R30 R30 K40 ["Enums"]
      188 GETTABLEKS                       R30 R30 K46 ["InputSize"]
      190 GETTABLEKS                       R30 R30 K47 ["Small"]
      192 SETTABLEKS                       R30 R29 K33 ["size"]
      194 GETIMPORT                        R30 K45 [UDim.new]
      196 LOADN                            R31 1
      197 LOADN                            R32 0
      198 CALL                             R30 2 1
      199 SETTABLEKS                       R30 R29 K32 ["width"]
      201 JUMPIFEQKN                       R7 K58 [0] ; [+2]
      203 LOADB                            R30 0 +1
      204 LOADB                            R30 1
      205 SETTABLEKS                       R30 R29 K52 ["isDisabled"]
      207 CALL                             R27 2 -1
      208 CALL                             R24 -1 -1
      209 SETLIST                          R22 R23 -1 [1]
      211 CALL                             R19 3 1
      212 SETTABLEKS                       R19 R18 K16 ["AddView"]
      214 GETUPVAL                         R19 4
      215 GETTABLEKS                       R19 R19 K9 ["createElement"]
      217 GETUPVAL                         R20 6
      218 DUPTABLE                         R21 K62 [{["LayoutOrder"] = 2, ["PlaceholderText"], ["PlaceholderSubtext"]}]
      219 LOADK                            R24 K2 ["QuickShare"]
      220 LOADK                            R25 K63 ["ExperiencesHintTitle"]
      221 NAMECALL                         R22 R3 K36 ["getText"]
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K60 ["PlaceholderText"]
      226 LOADK                            R24 K2 ["QuickShare"]
      227 LOADK                            R25 K64 ["ExperiencesHintDescription"]
      228 NAMECALL                         R22 R3 K36 ["getText"]
      230 CALL                             R22 3 1
      231 SETTABLEKS                       R22 R21 K61 ["PlaceholderSubtext"]
      233 GETUPVAL                         R22 7
      234 GETTABLEKS                       R22 R22 K65 ["map"]
      236 MOVE                             R23 R6
      237 NEWCLOSURE                       R24 P4
      238 CAPTURE                          UPVAL U4
      239 CAPTURE                          UPVAL U8
      240 CAPTURE                          VAL R13
      241 CALL                             R22 2 -1
      242 CALL                             R19 -1 1
      243 SETTABLEKS                       R19 R18 K17 ["SelectionView"]
      245 CALL                             R15 3 -1
      246 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["PluginController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Util"]
       54 GETTABLEKS                       R9 R9 K17 ["Dialogs"]
       56 GETTABLEKS                       R9 R9 K18 ["useQuickShareState"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K13 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Types"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Components"]
       72 GETTABLEKS                       R11 R11 K21 ["App"]
       74 GETTABLEKS                       R11 R11 K17 ["Dialogs"]
       76 GETTABLEKS                       R11 R11 K22 ["QuickShareDialog"]
       78 GETTABLEKS                       R11 R11 K23 ["ShareView"]
       80 GETTABLEKS                       R11 R11 K24 ["SelectedView"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K13 ["Src"]
       87 GETTABLEKS                       R12 R12 K20 ["Components"]
       89 GETTABLEKS                       R12 R12 K21 ["App"]
       91 GETTABLEKS                       R12 R12 K17 ["Dialogs"]
       93 GETTABLEKS                       R12 R12 K22 ["QuickShareDialog"]
       95 GETTABLEKS                       R12 R12 K23 ["ShareView"]
       97 GETTABLEKS                       R12 R12 K25 ["SelectedEntry"]
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
