PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+44]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["cursorPosition"]
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFNOT                        R2 ; [+34]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
       14 GETTABLEKS                       R2 R2 K2 ["current"]
       16 GETTABLEKS                       R2 R2 K3 ["CaptureFocus"]
       18 JUMPIFNOT                        R2 ; [+26]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K1 ["textInputRef"]
       22 GETTABLEKS                       R2 R2 K2 ["current"]
       24 GETTABLEKS                       R2 R2 K4 ["CursorPosition"]
       26 JUMPIFNOT                        R2 ; [+18]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["cursorPosition"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K1 ["textInputRef"]
       33 GETTABLEKS                       R3 R3 K2 ["current"]
       35 NAMECALL                         R3 R3 K3 ["CaptureFocus"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K1 ["textInputRef"]
       41 GETTABLEKS                       R3 R3 K2 ["current"]
       43 SETTABLEKS                       R2 R3 K4 ["CursorPosition"]
       45 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K1 ["hasError"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onTextChanged"]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["createRef"]
       16 CALL                             R2 0 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K4 ["textInputRef"]
       21 GETUPVAL                         R2 0
       22 JUMPIFNOT                        R2 ; [+4]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K5 ["onFocusLost"]
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textInputRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 GETTABLEKS                       R0 R0 K2 ["CursorPosition"]
       13 LOADN                            R1 0
       14 JUMPIFNOTLE                      R1 R0 ; [+11]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["textInputRef"]
       20 GETTABLEKS                       R1 R1 K1 ["current"]
       22 GETTABLEKS                       R1 R1 K2 ["CursorPosition"]
       24 SETTABLEKS                       R1 R0 K3 ["cursorPosition"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 JUMPIFNOT                        R1 ; [+22]
        7 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 GETTABLEKS                       R1 R1 K2 ["GetPropertyChangedSignal"]
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R1 R0 K0 ["textInputRef"]
       16 GETTABLEKS                       R1 R1 K1 ["current"]
       18 LOADK                            R3 K3 ["CursorPosition"]
       19 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R1 R1 K4 ["Connect"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K5 ["textInputRefCursorPositionChanged"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["TotalHeight"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["MaxCount"]
       12 GETTABLEKS                       R8 R1 K7 ["TextContent"]
       14 ORK                              R7 R8 K6 [""]
       15 GETTABLEKS                       R9 R2 K8 ["currentContent"]
       17 OR                               R8 R9 R7
       18 GETTABLEKS                       R9 R0 K0 ["props"]
       20 GETTABLEKS                       R9 R9 K9 ["ErrorCallback"]
       22 JUMPIFNOT                        R9 ; [+34]
       23 LENGTH                           R9 R8
       24 GETTABLEKS                       R10 R0 K0 ["props"]
       26 GETTABLEKS                       R10 R10 K5 ["MaxCount"]
       28 JUMPIFNOTLT                      R10 R9 ; [+15]
       30 GETTABLEKS                       R9 R0 K10 ["hasError"]
       32 JUMPIF                           R9 ; [+24]
       33 LOADB                            R9 1
       34 SETTABLEKS                       R9 R0 K10 ["hasError"]
       36 GETTABLEKS                       R9 R0 K0 ["props"]
       38 GETTABLEKS                       R9 R9 K9 ["ErrorCallback"]
       40 GETTABLEKS                       R10 R0 K10 ["hasError"]
       42 CALL                             R9 1 0
       43 JUMP                             ; [+13]
       44 GETTABLEKS                       R9 R0 K10 ["hasError"]
       46 JUMPIFNOT                        R9 ; [+10]
       47 LOADB                            R9 0
       48 SETTABLEKS                       R9 R0 K10 ["hasError"]
       50 GETTABLEKS                       R9 R0 K0 ["props"]
       52 GETTABLEKS                       R9 R9 K9 ["ErrorCallback"]
       54 GETTABLEKS                       R10 R0 K10 ["hasError"]
       56 CALL                             R9 1 0
       57 GETIMPORT                        R9 K13 [utf8.len]
       59 MOVE                             R10 R8
       60 CALL                             R9 1 1
       61 MOVE                             R10 R6
       62 JUMPIFNOT                        R10 ; [+4]
       63 JUMPIFLT                         R6 R9 ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 GETTABLEKS                       R12 R1 K14 ["showRequiredError"]
       69 JUMPIFEQKB                       R12 TRUE ; [+2]
       71 LOADB                            R11 0 +1
       72 LOADB                            R11 1
       73 OR                               R12 R10 R11
       74 JUMPIFNOT                        R6 ; [+5]
       75 MOVE                             R14 R9
       76 LOADK                            R15 K15 ["/"]
       77 MOVE                             R16 R6
       78 CONCAT                           R13 R14 R16
       79 JUMPIF                           R13 ; [+1]
       80 LOADK                            R13 K6 [""]
       81 MOVE                             R14 R6
       82 JUMPIFNOT                        R14 ; [+5]
       83 LOADN                            R15 50
       84 JUMPIFLT                         R15 R6 ; [+2]
       86 LOADB                            R14 0 +1
       87 LOADB                            R14 1
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R15 R15 K16 ["new"]
       91 CALL                             R15 0 1
       92 GETUPVAL                         R16 1
       93 GETTABLEKS                       R16 R16 K17 ["createElement"]
       95 GETUPVAL                         R17 2
       96 DUPTABLE                         R18 K18 [{"LayoutOrder", "Title"}]
       97 SETTABLEKS                       R5 R18 K4 ["LayoutOrder"]
       99 SETTABLEKS                       R3 R18 K2 ["Title"]
      101 DUPTABLE                         R19 K20 [{"TextFieldWrapper"}]
      102 GETUPVAL                         R20 1
      103 GETTABLEKS                       R20 R20 K17 ["createElement"]
      105 GETUPVAL                         R21 3
      106 GETTABLEKS                       R21 R21 K21 ["View"]
      108 DUPTABLE                         R22 K25 [{["tag"] = "col align-x-left gap-small auto-y", ["LayoutOrder"], ["Size"]}]
      109 NAMECALL                         R23 R15 K26 ["getNextOrder"]
      111 CALL                             R23 1 1
      112 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      114 GETIMPORT                        R23 K28 [UDim2.new]
      116 LOADN                            R24 1
      117 LOADN                            R25 0
      118 LOADN                            R26 0
      119 MOVE                             R27 R4
      120 CALL                             R23 4 1
      121 SETTABLEKS                       R23 R22 K24 ["Size"]
      123 DUPTABLE                         R23 K31 [{"TextField", "BottomTextWrapper"}]
      124 JUMPIFNOT                        R14 ; [+40]
      125 GETUPVAL                         R24 1
      126 GETTABLEKS                       R24 R24 K17 ["createElement"]
      128 GETUPVAL                         R25 3
      129 GETTABLEKS                       R25 R25 K32 ["TextArea"]
      131 DUPTABLE                         R26 K41 [{["LayoutOrder"], ["text"], ["onChanged"], ["label"] = "", ["hint"], ["hasError"], ["numLines"] = 6, ["size"], ["width"]}]
      132 NAMECALL                         R27 R15 K26 ["getNextOrder"]
      134 CALL                             R27 1 1
      135 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      137 SETTABLEKS                       R8 R26 K33 ["text"]
      139 GETTABLEKS                       R27 R0 K42 ["onTextChanged"]
      141 SETTABLEKS                       R27 R26 K34 ["onChanged"]
      143 SETTABLEKS                       R13 R26 K36 ["hint"]
      145 SETTABLEKS                       R12 R26 K10 ["hasError"]
      147 GETUPVAL                         R27 3
      148 GETTABLEKS                       R27 R27 K43 ["Enums"]
      150 GETTABLEKS                       R27 R27 K44 ["InputSize"]
      152 GETTABLEKS                       R27 R27 K45 ["Small"]
      154 SETTABLEKS                       R27 R26 K39 ["size"]
      156 GETIMPORT                        R27 K47 [UDim.new]
      158 LOADN                            R28 1
      159 LOADN                            R29 0
      160 CALL                             R27 2 1
      161 SETTABLEKS                       R27 R26 K40 ["width"]
      163 CALL                             R24 2 1
      164 JUMP                             ; [+39]
      165 GETUPVAL                         R24 1
      166 GETTABLEKS                       R24 R24 K17 ["createElement"]
      168 GETUPVAL                         R25 3
      169 GETTABLEKS                       R25 R25 K48 ["TextInput"]
      171 DUPTABLE                         R26 K50 [{["LayoutOrder"], ["text"], ["onChanged"], ["label"] = "", ["hint"], ["hasError"], ["numLines"] = 1, ["size"], ["width"]}]
      172 NAMECALL                         R27 R15 K26 ["getNextOrder"]
      174 CALL                             R27 1 1
      175 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      177 SETTABLEKS                       R8 R26 K33 ["text"]
      179 GETTABLEKS                       R27 R0 K42 ["onTextChanged"]
      181 SETTABLEKS                       R27 R26 K34 ["onChanged"]
      183 SETTABLEKS                       R13 R26 K36 ["hint"]
      185 SETTABLEKS                       R12 R26 K10 ["hasError"]
      187 GETUPVAL                         R27 3
      188 GETTABLEKS                       R27 R27 K43 ["Enums"]
      190 GETTABLEKS                       R27 R27 K44 ["InputSize"]
      192 GETTABLEKS                       R27 R27 K45 ["Small"]
      194 SETTABLEKS                       R27 R26 K39 ["size"]
      196 GETIMPORT                        R27 K47 [UDim.new]
      198 LOADN                            R28 1
      199 LOADN                            R29 0
      200 CALL                             R27 2 1
      201 SETTABLEKS                       R27 R26 K40 ["width"]
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K29 ["TextField"]
      206 GETTABLEKS                       R25 R1 K51 ["BottomRightText"]
      208 JUMPIFNOT                        R25 ; [+34]
      209 GETUPVAL                         R24 1
      210 GETTABLEKS                       R24 R24 K17 ["createElement"]
      212 GETUPVAL                         R25 3
      213 GETTABLEKS                       R25 R25 K21 ["View"]
      215 DUPTABLE                         R26 K53 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      216 NAMECALL                         R27 R15 K26 ["getNextOrder"]
      218 CALL                             R27 1 1
      219 SETTABLEKS                       R27 R26 K4 ["LayoutOrder"]
      221 DUPTABLE                         R27 K55 [{"BottomText"}]
      222 GETUPVAL                         R28 1
      223 GETTABLEKS                       R28 R28 K17 ["createElement"]
      225 GETUPVAL                         R29 3
      226 GETTABLEKS                       R29 R29 K56 ["Text"]
      228 DUPTABLE                         R30 K58 [{["tag"] = "size-full-0 auto-y text-caption-small text-align-x-right content-muted", ["Text"], ["LayoutOrder"]}]
      229 GETTABLEKS                       R31 R1 K51 ["BottomRightText"]
      231 SETTABLEKS                       R31 R30 K56 ["Text"]
      233 NAMECALL                         R31 R15 K26 ["getNextOrder"]
      235 CALL                             R31 1 1
      236 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      238 CALL                             R28 2 1
      239 SETTABLEKS                       R28 R27 K54 ["BottomText"]
      241 CALL                             R24 3 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R24
      244 SETTABLEKS                       R24 R23 K30 ["BottomTextWrapper"]
      246 CALL                             R20 3 1
      247 SETTABLEKS                       R20 R19 K19 ["TextFieldWrapper"]
      249 CALL                             R16 3 -1
      250 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R4 K10 ["ContextServices"]
       35 GETTABLEKS                       R7 R6 K11 ["withContext"]
       37 GETTABLEKS                       R8 R0 K12 ["Src"]
       39 GETTABLEKS                       R8 R8 K13 ["Util"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETTABLEKS                       R10 R8 K14 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R8 K15 ["AssetConfigConstants"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R4 K13 ["Util"]
       53 GETTABLEKS                       R11 R11 K16 ["LayoutOrderIterator"]
       55 GETTABLEKS                       R12 R0 K12 ["Src"]
       57 GETTABLEKS                       R12 R12 K17 ["Components"]
       59 GETTABLEKS                       R12 R12 K18 ["AssetConfiguration"]
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R12 K19 ["ConfigSectionWrapper"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K21 [game]
       68 LOADK                            R16 K22 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       69 LOADB                            R17 0
       70 NAMECALL                         R14 R14 K23 ["DefineFastFlag"]
       72 CALL                             R14 3 0
       73 GETIMPORT                        R14 K21 [game]
       75 LOADK                            R16 K22 ["AssetConfigurationFixConfigTextFieldEnterLosingFocus"]
       76 NAMECALL                         R14 R14 K24 ["GetFastFlag"]
       78 CALL                             R14 2 1
       79 GETTABLEKS                       R15 R3 K25 ["PureComponent"]
       81 LOADK                            R17 K26 ["ConfigTextField"]
       82 NAMECALL                         R15 R15 K27 ["extend"]
       84 CALL                             R15 2 1
       85 DUPCLOSURE                       R16 K28 [PROTO_2]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R16 R15 K29 ["init"]
       90 DUPCLOSURE                       R16 K30 [PROTO_4]
       91 CAPTURE                          VAL R14
       92 SETTABLEKS                       R16 R15 K31 ["didMount"]
       94 DUPCLOSURE                       R16 K32 [PROTO_5]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R16 R15 K33 ["render"]
      101 MOVE                             R16 R7
      102 DUPTABLE                         R17 K35 [{"Stylizer"}]
      103 GETTABLEKS                       R18 R6 K34 ["Stylizer"]
      105 SETTABLEKS                       R18 R17 K34 ["Stylizer"]
      107 CALL                             R16 1 1
      108 MOVE                             R17 R15
      109 CALL                             R16 1 1
      110 MOVE                             R15 R16
      111 RETURN                           R15 1
