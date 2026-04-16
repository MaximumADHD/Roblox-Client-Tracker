PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\x<TB>\x"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 2
        7 JUMPIFNOT                        R1 ; [+1]
        8 JUMPIF                           R2 ; [+7]
        9 DUPTABLE                         R3 K6 [{"before", "after"}]
       10 SETTABLEKS                       R0 R3 K4 ["before"]
       12 LOADK                            R4 K7 [""]
       13 SETTABLEKS                       R4 R3 K5 ["after"]
       15 RETURN                           R3 1
       16 DUPTABLE                         R3 K6 [{"before", "after"}]
       17 LOADN                            R6 1
       18 SUBK                             R7 R1 K8 [1]
       19 FASTCALL3                        STRING_SUB R0 R6 R7
       21 MOVE                             R5 R0
       22 GETIMPORT                        R4 K10 [string.sub]
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K4 ["before"]
       27 ADDK                             R6 R2 K8 [1]
       28 FASTCALL2                        STRING_SUB R0 R6 ; [+4]
       30 MOVE                             R5 R0
       31 GETIMPORT                        R4 K10 [string.sub]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K5 ["after"]
       36 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["QuestionAnswer"]
        2 LOADK                            R4 K1 ["CustomOption"]
        3 DUPTABLE                         R5 K4 [{"index", "textBox"}]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K6 [tostring]
        8 CALL                             R6 1 1
        9 SETTABLEKS                       R6 R5 K2 ["index"]
       11 LOADK                            R6 K7 ["\x<TB>\x"]
       12 SETTABLEKS                       R6 R5 K3 ["textBox"]
       14 NAMECALL                         R1 R1 K8 ["getText"]
       16 CALL                             R1 4 1
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"TypeYourAnswer", "getCustomOptionTextParts"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["TypeYourAnswer"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["TypeYourAnswer"]
        9 DUPCLOSURE                       R1 K5 [PROTO_1]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K1 ["getCustomOptionTextParts"]
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onFocused"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["onReturnPressed"]
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["onReturnPressed"]
        8 CALL                             R3 0 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFEQKN                       R1 K1 [-1] ; [+4]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R1 R2 K2 ["current"]
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["customText"]
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["onTextChanged"]
       10 GETTABLEKS                       R2 R0 K0 ["Text"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R3 K3 ["BodySmall"]
       10 GETTABLEKS                       R5 R1 K4 ["Color"]
       12 GETTABLEKS                       R4 R5 K5 ["Content"]
       14 GETTABLEKS                       R3 R4 K6 ["Muted"]
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K7 ["useMemo"]
       21 DUPCLOSURE                       R6 K8 [PROTO_2]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K9 ["locale"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R7 R0 K10 ["index"]
       34 JUMPIFNOT                        R7 ; [+6]
       35 GETTABLEKS                       R6 R5 K11 ["getCustomOptionTextParts"]
       37 GETTABLEKS                       R7 R0 K10 ["index"]
       39 CALL                             R6 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K12 ["useRef"]
       45 LOADNIL                          R8
       46 CALL                             R7 1 1
       47 LOADNIL                          R8
       48 GETTABLEKS                       R9 R0 K13 ["onFocused"]
       50 JUMPIFNOT                        R9 ; [+2]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R0
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K14 ["useCallback"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R11 0 2
       60 GETTABLEKS                       R12 R0 K15 ["onTextChanged"]
       62 GETTABLEKS                       R13 R0 K16 ["onReturnPressed"]
       64 SETLIST                          R11 R12 2 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R10 R11 K14 ["useCallback"]
       70 NEWCLOSURE                       R11 P3
       71 CAPTURE                          VAL R7
       72 NEWTABLE                         R12 0 0
       74 CALL                             R10 2 1
       75 GETUPVAL                         R12 5
       76 GETTABLEKS                       R11 R12 K17 ["get"]
       78 CALL                             R11 0 1
       79 GETUPVAL                         R12 6
       80 GETUPVAL                         R13 7
       81 DUPTABLE                         R14 K20 [{"tag", "LayoutOrder"}]
       82 LOADK                            R15 K21 ["row size-full-0 auto-y padding-xxsmall align-y-center"]
       83 SETTABLEKS                       R15 R14 K18 ["tag"]
       85 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
       87 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       89 DUPTABLE                         R15 K25 [{"Prefix", "InputContainer", "Suffix"}]
       90 MOVE                             R16 R6
       91 JUMPIFNOT                        R16 ; [+22]
       92 LOADB                            R16 0
       93 GETTABLEKS                       R18 R6 K26 ["before"]
       95 LENGTH                           R17 R18
       96 LOADN                            R18 0
       97 JUMPIFNOTLT                      R18 R17 ; [+16]
       99 GETUPVAL                         R16 6
      100 GETUPVAL                         R17 8
      101 DUPTABLE                         R18 K28 [{"tag", "Text", "LayoutOrder"}]
      102 LOADK                            R19 K29 ["auto-xy text-body-small content-default text-align-x-left shrink-0"]
      103 SETTABLEKS                       R19 R18 K18 ["tag"]
      105 GETTABLEKS                       R19 R6 K26 ["before"]
      107 SETTABLEKS                       R19 R18 K27 ["Text"]
      109 MOVE                             R19 R4
      110 CALL                             R19 0 1
      111 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K22 ["Prefix"]
      116 GETUPVAL                         R16 6
      117 GETUPVAL                         R17 7
      118 DUPTABLE                         R18 K20 [{"tag", "LayoutOrder"}]
      119 LOADK                            R19 K30 ["fill align-y-center"]
      120 SETTABLEKS                       R19 R18 K18 ["tag"]
      122 MOVE                             R19 R4
      123 CALL                             R19 0 1
      124 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      126 DUPTABLE                         R19 K32 [{"Input"}]
      127 GETUPVAL                         R20 6
      128 LOADK                            R21 K33 ["TextBox"]
      129 NEWTABLE                         R22 32 0
      131 GETTABLEKS                       R23 R0 K34 ["customText"]
      133 SETTABLEKS                       R23 R22 K27 ["Text"]
      135 GETTABLEKS                       R23 R5 K35 ["TypeYourAnswer"]
      137 SETTABLEKS                       R23 R22 K36 ["PlaceholderText"]
      139 GETTABLEKS                       R23 R3 K37 ["Color3"]
      141 SETTABLEKS                       R23 R22 K38 ["PlaceholderColor3"]
      143 GETTABLEKS                       R23 R3 K37 ["Color3"]
      145 SETTABLEKS                       R23 R22 K39 ["TextColor3"]
      147 GETTABLEKS                       R23 R3 K40 ["Transparency"]
      149 SETTABLEKS                       R23 R22 K41 ["TextTransparency"]
      151 GETTABLEKS                       R23 R2 K42 ["Font"]
      153 SETTABLEKS                       R23 R22 K42 ["Font"]
      155 GETTABLEKS                       R23 R2 K43 ["FontSize"]
      157 SETTABLEKS                       R23 R22 K44 ["TextSize"]
      159 GETTABLEKS                       R23 R2 K45 ["LineHeight"]
      161 SETTABLEKS                       R23 R22 K45 ["LineHeight"]
      163 GETIMPORT                        R23 K49 [Enum.TextXAlignment.Left]
      165 SETTABLEKS                       R23 R22 K47 ["TextXAlignment"]
      167 LOADB                            R23 1
      168 SETTABLEKS                       R23 R22 K50 ["TextWrapped"]
      170 LOADB                            R23 0
      171 SETTABLEKS                       R23 R22 K51 ["ClearTextOnFocus"]
      173 LOADN                            R23 1
      174 SETTABLEKS                       R23 R22 K52 ["BackgroundTransparency"]
      176 GETIMPORT                        R23 K55 [UDim2.new]
      178 LOADN                            R24 1
      179 LOADN                            R25 0
      180 LOADN                            R26 0
      181 LOADN                            R27 16
      182 CALL                             R23 4 1
      183 SETTABLEKS                       R23 R22 K56 ["Size"]
      185 GETIMPORT                        R23 K59 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R23 R22 K57 ["AutomaticSize"]
      189 GETTABLEKS                       R24 R11 K60 ["isRobloxScriptSecurity"]
      191 CALL                             R24 0 1
      192 JUMPIFNOT                        R24 ; [+2]
      193 LOADB                            R23 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R23
      196 SETTABLEKS                       R23 R22 K61 ["ShouldEmitUpAndDownArrowEvents"]
      198 GETTABLEKS                       R23 R0 K62 ["textBoxRef"]
      200 SETTABLEKS                       R23 R22 K63 ["ref"]
      202 GETUPVAL                         R25 2
      203 GETTABLEKS                       R24 R25 K64 ["Event"]
      205 GETTABLEKS                       R23 R24 K65 ["Changed"]
      207 NEWCLOSURE                       R24 P4
      208 CAPTURE                          VAL R0
      209 SETTABLE                         R24 R22 R23
      210 GETUPVAL                         R25 2
      211 GETTABLEKS                       R24 R25 K64 ["Event"]
      213 GETTABLEKS                       R23 R24 K66 ["Focused"]
      215 SETTABLE                         R8 R22 R23
      216 GETUPVAL                         R25 2
      217 GETTABLEKS                       R24 R25 K64 ["Event"]
      219 GETTABLEKS                       R23 R24 K67 ["FocusLost"]
      221 SETTABLE                         R9 R22 R23
      222 GETUPVAL                         R25 2
      223 GETTABLEKS                       R24 R25 K68 ["Change"]
      225 GETTABLEKS                       R23 R24 K69 ["CursorPosition"]
      227 SETTABLE                         R10 R22 R23
      228 CALL                             R20 2 1
      229 SETTABLEKS                       R20 R19 K31 ["Input"]
      231 CALL                             R16 3 1
      232 SETTABLEKS                       R16 R15 K23 ["InputContainer"]
      234 MOVE                             R16 R6
      235 JUMPIFNOT                        R16 ; [+22]
      236 LOADB                            R16 0
      237 GETTABLEKS                       R18 R6 K70 ["after"]
      239 LENGTH                           R17 R18
      240 LOADN                            R18 0
      241 JUMPIFNOTLT                      R18 R17 ; [+16]
      243 GETUPVAL                         R16 6
      244 GETUPVAL                         R17 8
      245 DUPTABLE                         R18 K28 [{"tag", "Text", "LayoutOrder"}]
      246 LOADK                            R19 K71 ["auto-xy text-body-small content-muted text-align-x-left shrink-0"]
      247 SETTABLEKS                       R19 R18 K18 ["tag"]
      249 GETTABLEKS                       R19 R6 K70 ["after"]
      251 SETTABLEKS                       R19 R18 K27 ["Text"]
      253 MOVE                             R19 R4
      254 CALL                             R19 0 1
      255 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      257 CALL                             R16 2 1
      258 SETTABLEKS                       R16 R15 K24 ["Suffix"]
      260 CALL                             R12 3 -1
      261 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Resources"]
       39 GETTABLEKS                       R7 R8 K13 ["Localization"]
       41 GETTABLEKS                       R6 R7 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K15 ["Text"]
       46 GETTABLEKS                       R7 R2 K16 ["View"]
       48 GETTABLEKS                       R8 R4 K17 ["createNextOrder"]
       50 GETTABLEKS                       R9 R3 K18 ["createElement"]
       52 DUPCLOSURE                       R10 K19 [PROTO_0]
       53 DUPCLOSURE                       R11 K20 [PROTO_7]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 RETURN                           R11 1
