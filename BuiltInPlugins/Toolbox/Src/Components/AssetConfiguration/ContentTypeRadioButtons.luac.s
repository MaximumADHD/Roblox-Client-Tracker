PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["layoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["contentTypeTitle"]
        6 GETTABLEKS                       R4 R1 K3 ["currentSelectedRadioButtonKey"]
        8 GETTABLEKS                       R5 R1 K4 ["onRadioButtonClicked"]
       10 GETTABLEKS                       R6 R1 K5 ["warningMessageText"]
       12 GETTABLEKS                       R7 R1 K6 ["warningMessageLinkMap"]
       14 JUMPIF                           R7 ; [+2]
       15 NEWTABLE                         R7 0 0
       17 GETTABLEKS                       R8 R1 K7 ["insufficientRobuxWarningText"]
       19 MOVE                             R9 R8
       20 JUMPIFNOT                        R9 ; [+6]
       21 LENGTH                           R10 R8
       22 LOADN                            R11 0
       23 JUMPIFLT                         R11 R10 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 GETTABLEKS                       R10 R1 K8 ["Localization"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K9 ["new"]
       32 CALL                             R11 0 1
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K10 ["createElement"]
       36 GETUPVAL                         R13 2
       37 DUPTABLE                         R14 K13 [{"LayoutOrder", "Title"}]
       38 SETTABLEKS                       R2 R14 K11 ["LayoutOrder"]
       40 SETTABLEKS                       R3 R14 K12 ["Title"]
       42 DUPTABLE                         R15 K15 [{"Contents"}]
       43 GETUPVAL                         R16 1
       44 GETTABLEKS                       R16 R16 K10 ["createElement"]
       46 GETUPVAL                         R17 3
       47 GETTABLEKS                       R17 R17 K16 ["View"]
       49 DUPTABLE                         R18 K19 [{["tag"] = "col align-x-left gap-medium auto-x auto-y"}]
       50 DUPTABLE                         R19 K22 [{"RadioRow", "WarningFrame"}]
       51 GETUPVAL                         R20 1
       52 GETTABLEKS                       R20 R20 K10 ["createElement"]
       54 GETUPVAL                         R21 3
       55 GETTABLEKS                       R21 R21 K23 ["RadioGroup"]
       57 GETTABLEKS                       R21 R21 K24 ["Root"]
       59 DUPTABLE                         R22 K27 [{"value", "onValueChanged", "LayoutOrder"}]
       60 SETTABLEKS                       R4 R22 K25 ["value"]
       62 SETTABLEKS                       R5 R22 K26 ["onValueChanged"]
       64 NAMECALL                         R23 R11 K28 ["getNextOrder"]
       66 CALL                             R23 1 1
       67 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
       69 DUPTABLE                         R23 K30 [{"Row"}]
       70 GETUPVAL                         R24 1
       71 GETTABLEKS                       R24 R24 K10 ["createElement"]
       73 GETUPVAL                         R25 3
       74 GETTABLEKS                       R25 R25 K16 ["View"]
       76 DUPTABLE                         R26 K33 [{["tag"] = "row gap-small", ["Size"]}]
       77 GETIMPORT                        R27 K36 [UDim2.fromOffset]
       79 LOADN                            R28 420
       80 LOADN                            R29 0
       81 CALL                             R27 2 1
       82 SETTABLEKS                       R27 R26 K32 ["Size"]
       84 DUPTABLE                         R27 K39 [{"DevelopmentItem", "AvatarItem"}]
       85 GETUPVAL                         R28 1
       86 GETTABLEKS                       R28 R28 K10 ["createElement"]
       88 GETUPVAL                         R29 3
       89 GETTABLEKS                       R29 R29 K23 ["RadioGroup"]
       91 GETTABLEKS                       R29 R29 K40 ["Item"]
       93 DUPTABLE                         R30 K43 [{["value"] = "DevelopmentItem", ["label"], ["size"], ["LayoutOrder"]}]
       94 LOADK                            R33 K44 ["AssetConfig"]
       95 LOADK                            R34 K37 ["DevelopmentItem"]
       96 NAMECALL                         R31 R10 K45 ["getText"]
       98 CALL                             R31 3 1
       99 SETTABLEKS                       R31 R30 K41 ["label"]
      101 GETUPVAL                         R31 3
      102 GETTABLEKS                       R31 R31 K46 ["Enums"]
      104 GETTABLEKS                       R31 R31 K47 ["InputSize"]
      106 GETTABLEKS                       R31 R31 K48 ["Small"]
      108 SETTABLEKS                       R31 R30 K42 ["size"]
      110 NAMECALL                         R31 R11 K28 ["getNextOrder"]
      112 CALL                             R31 1 1
      113 SETTABLEKS                       R31 R30 K11 ["LayoutOrder"]
      115 CALL                             R28 2 1
      116 SETTABLEKS                       R28 R27 K37 ["DevelopmentItem"]
      118 GETUPVAL                         R28 1
      119 GETTABLEKS                       R28 R28 K10 ["createElement"]
      121 GETUPVAL                         R29 3
      122 GETTABLEKS                       R29 R29 K23 ["RadioGroup"]
      124 GETTABLEKS                       R29 R29 K40 ["Item"]
      126 DUPTABLE                         R30 K49 [{["value"] = "AvatarItem", ["label"], ["size"], ["LayoutOrder"]}]
      127 LOADK                            R33 K44 ["AssetConfig"]
      128 LOADK                            R34 K38 ["AvatarItem"]
      129 NAMECALL                         R31 R10 K45 ["getText"]
      131 CALL                             R31 3 1
      132 SETTABLEKS                       R31 R30 K41 ["label"]
      134 GETUPVAL                         R31 3
      135 GETTABLEKS                       R31 R31 K46 ["Enums"]
      137 GETTABLEKS                       R31 R31 K47 ["InputSize"]
      139 GETTABLEKS                       R31 R31 K48 ["Small"]
      141 SETTABLEKS                       R31 R30 K42 ["size"]
      143 NAMECALL                         R31 R11 K28 ["getNextOrder"]
      145 CALL                             R31 1 1
      146 SETTABLEKS                       R31 R30 K11 ["LayoutOrder"]
      148 CALL                             R28 2 1
      149 SETTABLEKS                       R28 R27 K38 ["AvatarItem"]
      151 CALL                             R24 3 1
      152 SETTABLEKS                       R24 R23 K29 ["Row"]
      154 CALL                             R20 3 1
      155 SETTABLEKS                       R20 R19 K20 ["RadioRow"]
      157 JUMPIFNOT                        R9 ; [+49]
      158 GETUPVAL                         R20 1
      159 GETTABLEKS                       R20 R20 K10 ["createElement"]
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R21 R21 K16 ["View"]
      164 DUPTABLE                         R22 K51 [{["tag"] = "row align-x-left align-y-center gap-small auto-y padding-top-large", ["LayoutOrder"]}]
      165 NAMECALL                         R23 R11 K28 ["getNextOrder"]
      167 CALL                             R23 1 1
      168 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      170 DUPTABLE                         R23 K54 [{"Icon", "Text"}]
      171 GETUPVAL                         R24 1
      172 GETTABLEKS                       R24 R24 K10 ["createElement"]
      174 GETUPVAL                         R25 3
      175 GETTABLEKS                       R25 R25 K55 ["Image"]
      177 DUPTABLE                         R26 K58 [{["tag"] = "content-system-warning", ["Image"], ["LayoutOrder"] = 1, ["Size"]}]
      178 GETUPVAL                         R27 4
      179 GETTABLEKS                       R27 R27 K59 ["WARNING_ICON"]
      181 SETTABLEKS                       R27 R26 K55 ["Image"]
      183 GETIMPORT                        R27 K36 [UDim2.fromOffset]
      185 LOADN                            R28 24
      186 LOADN                            R29 24
      187 CALL                             R27 2 1
      188 SETTABLEKS                       R27 R26 K32 ["Size"]
      190 CALL                             R24 2 1
      191 SETTABLEKS                       R24 R23 K52 ["Icon"]
      193 GETUPVAL                         R24 1
      194 GETTABLEKS                       R24 R24 K10 ["createElement"]
      196 GETUPVAL                         R25 3
      197 GETTABLEKS                       R25 R25 K53 ["Text"]
      199 DUPTABLE                         R26 K62 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left text-align-y-center content-system-warning", ["LayoutOrder"] = 2, ["Text"]}]
      200 SETTABLEKS                       R8 R26 K53 ["Text"]
      202 CALL                             R24 2 1
      203 SETTABLEKS                       R24 R23 K53 ["Text"]
      205 CALL                             R20 3 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R20
      208 SETTABLEKS                       R20 R19 K21 ["WarningFrame"]
      210 CALL                             R16 3 1
      211 SETTABLEKS                       R16 R15 K14 ["Contents"]
      213 CALL                             R12 3 -1
      214 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Foundation"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["withContext"]
       33 GETTABLEKS                       R8 R4 K13 ["UI"]
       35 GETTABLEKS                       R9 R8 K14 ["TextWithLinks"]
       37 GETTABLEKS                       R10 R4 K15 ["Util"]
       39 GETTABLEKS                       R10 R10 K16 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R11 R0 K17 ["Src"]
       43 GETTABLEKS                       R11 R11 K18 ["Components"]
       45 GETTABLEKS                       R11 R11 K19 ["AssetConfiguration"]
       47 GETIMPORT                        R12 K6 [require]
       49 GETTABLEKS                       R13 R11 K20 ["ConfigSectionWrapper"]
       51 CALL                             R12 1 1
       52 GETTABLEKS                       R13 R3 K21 ["PureComponent"]
       54 LOADK                            R15 K22 ["ContentTypeRadioButtons"]
       55 NAMECALL                         R13 R13 K23 ["extend"]
       57 CALL                             R13 2 1
       58 GETTABLEKS                       R14 R0 K17 ["Src"]
       60 GETTABLEKS                       R14 R14 K15 ["Util"]
       62 GETIMPORT                        R15 K6 [require]
       64 GETTABLEKS                       R16 R14 K24 ["Images"]
       66 CALL                             R15 1 1
       67 DUPCLOSURE                       R16 K25 [PROTO_0]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R15
       73 SETTABLEKS                       R16 R13 K26 ["render"]
       75 MOVE                             R16 R7
       76 DUPTABLE                         R17 K28 [{"Localization"}]
       77 GETTABLEKS                       R18 R6 K27 ["Localization"]
       79 SETTABLEKS                       R18 R17 K27 ["Localization"]
       81 CALL                             R16 1 1
       82 MOVE                             R17 R13
       83 CALL                             R16 1 1
       84 MOVE                             R13 R16
       85 RETURN                           R13 1
