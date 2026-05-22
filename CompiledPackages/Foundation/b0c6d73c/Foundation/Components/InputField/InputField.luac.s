PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["getIsFocused"]
        9 CALL                             R0 0 1
       10 JUMPIF                           R0 ; [+6]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["current"]
       14 GETTABLEKS                       R0 R0 K2 ["focus"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETTABLEKS                       R1 R1 K1 ["setHover"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 DUPTABLE                         R0 K8 [{"focus", "releaseFocus", "getIsFocused", "getCursorPosition", "getSelectionStart", "setCursorPosition", "setSelectionStart"}]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETTABLEKS                       R1 R1 K1 ["focus"]
       12 SETTABLEKS                       R1 R0 K1 ["focus"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 GETTABLEKS                       R1 R1 K2 ["releaseFocus"]
       19 SETTABLEKS                       R1 R0 K2 ["releaseFocus"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 GETTABLEKS                       R1 R1 K3 ["getIsFocused"]
       26 SETTABLEKS                       R1 R0 K3 ["getIsFocused"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["current"]
       31 GETTABLEKS                       R1 R1 K4 ["getCursorPosition"]
       33 SETTABLEKS                       R1 R0 K4 ["getCursorPosition"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K0 ["current"]
       38 GETTABLEKS                       R1 R1 K5 ["getSelectionStart"]
       40 SETTABLEKS                       R1 R0 K5 ["getSelectionStart"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K0 ["current"]
       45 GETTABLEKS                       R1 R1 K6 ["setCursorPosition"]
       47 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K0 ["current"]
       52 GETTABLEKS                       R1 R1 K7 ["setSelectionStart"]
       54 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       56 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R4 R4 K0 ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K1 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R8 0 0
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K3 ["useImperativeHandle"]
       33 GETTABLEKS                       R8 R2 K4 ["textBoxRef"]
       35 NEWCLOSURE                       R9 P2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R10 0 0
       39 CALL                             R7 3 0
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K5 ["createElement"]
       43 GETUPVAL                         R8 5
       44 GETUPVAL                         R9 6
       45 MOVE                             R10 R2
       46 DUPTABLE                         R11 K9 [{"Size", "tag", "ref"}]
       47 GETTABLEKS                       R13 R2 K10 ["width"]
       49 JUMPIF                           R13 ; [+6]
       50 GETIMPORT                        R12 K13 [UDim2.fromOffset]
       52 MOVE                             R13 R3
       53 LOADN                            R14 0
       54 CALL                             R12 2 1
       55 JUMP                             ; [+10]
       56 GETIMPORT                        R12 K15 [UDim2.new]
       58 GETTABLEKS                       R13 R2 K10 ["width"]
       60 GETIMPORT                        R14 K17 [UDim.new]
       62 LOADN                            R15 0
       63 LOADN                            R16 0
       64 CALL                             R14 2 -1
       65 CALL                             R12 -1 1
       66 SETTABLEKS                       R12 R11 K6 ["Size"]
       68 LOADK                            R12 K18 ["col gap-small auto-y"]
       69 SETTABLEKS                       R12 R11 K7 ["tag"]
       71 SETTABLEKS                       R1 R11 K8 ["ref"]
       73 CALL                             R9 2 1
       74 DUPTABLE                         R10 K22 [{"Label", "InputWrapper", "Hint"}]
       75 GETTABLEKS                       R13 R2 K23 ["label"]
       77 LENGTH                           R12 R13
       78 LOADN                            R13 0
       79 JUMPIFNOTLT                      R13 R12 ; [+46]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R11 R11 K5 ["createElement"]
       84 GETUPVAL                         R12 7
       85 DUPTABLE                         R13 K32 [{"Text", "size", "isRequired", "isDisabled", "onActivated", "onHover", "LayoutOrder", "testId"}]
       86 GETTABLEKS                       R14 R2 K23 ["label"]
       88 SETTABLEKS                       R14 R13 K24 ["Text"]
       90 GETTABLEKS                       R14 R2 K25 ["size"]
       92 SETTABLEKS                       R14 R13 K25 ["size"]
       94 GETTABLEKS                       R14 R2 K26 ["isRequired"]
       96 SETTABLEKS                       R14 R13 K26 ["isRequired"]
       98 GETUPVAL                         R15 8
       99 GETTABLEKS                       R15 R15 K33 ["FoundationInputFieldFixDisabled"]
      101 JUMPIFNOT                        R15 ; [+3]
      102 GETTABLEKS                       R14 R2 K27 ["isDisabled"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R14
      106 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
      108 SETTABLEKS                       R5 R13 K28 ["onActivated"]
      110 SETTABLEKS                       R6 R13 K29 ["onHover"]
      112 LOADN                            R14 1
      113 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      115 LOADK                            R15 K34 ["%*--label"]
      116 GETTABLEKS                       R17 R2 K31 ["testId"]
      118 NAMECALL                         R15 R15 K35 ["format"]
      120 CALL                             R15 2 1
      121 MOVE                             R14 R15
      122 SETTABLEKS                       R14 R13 K31 ["testId"]
      124 CALL                             R11 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R11
      127 SETTABLEKS                       R11 R10 K19 ["Label"]
      129 GETUPVAL                         R11 4
      130 GETTABLEKS                       R11 R11 K5 ["createElement"]
      132 GETUPVAL                         R12 5
      133 DUPTABLE                         R13 K36 [{"tag", "LayoutOrder", "testId"}]
      134 LOADK                            R14 K37 ["size-full-0 auto-y"]
      135 SETTABLEKS                       R14 R13 K7 ["tag"]
      137 LOADN                            R14 2
      138 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      140 LOADK                            R15 K38 ["%*--input-wrapper"]
      141 GETTABLEKS                       R17 R2 K31 ["testId"]
      143 NAMECALL                         R15 R15 K35 ["format"]
      145 CALL                             R15 2 1
      146 MOVE                             R14 R15
      147 SETTABLEKS                       R14 R13 K31 ["testId"]
      149 DUPTABLE                         R14 K40 [{"Input"}]
      150 GETTABLEKS                       R15 R2 K41 ["input"]
      152 MOVE                             R16 R4
      153 CALL                             R15 1 1
      154 SETTABLEKS                       R15 R14 K39 ["Input"]
      156 CALL                             R11 3 1
      157 SETTABLEKS                       R11 R10 K20 ["InputWrapper"]
      159 GETTABLEKS                       R12 R2 K42 ["hint"]
      161 JUMPIFNOT                        R12 ; [+37]
      162 GETUPVAL                         R11 4
      163 GETTABLEKS                       R11 R11 K5 ["createElement"]
      165 GETUPVAL                         R12 9
      166 DUPTABLE                         R13 K45 [{"text", "hasError", "isDisabled", "LayoutOrder", "testId"}]
      167 GETTABLEKS                       R14 R2 K42 ["hint"]
      169 SETTABLEKS                       R14 R13 K43 ["text"]
      171 GETTABLEKS                       R14 R2 K44 ["hasError"]
      173 SETTABLEKS                       R14 R13 K44 ["hasError"]
      175 GETUPVAL                         R15 8
      176 GETTABLEKS                       R15 R15 K33 ["FoundationInputFieldFixDisabled"]
      178 JUMPIFNOT                        R15 ; [+3]
      179 GETTABLEKS                       R14 R2 K27 ["isDisabled"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R14
      183 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
      185 LOADN                            R14 3
      186 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      188 LOADK                            R15 K46 ["%*--hint"]
      189 GETTABLEKS                       R17 R2 K31 ["testId"]
      191 NAMECALL                         R15 R15 K35 ["format"]
      193 CALL                             R15 2 1
      194 MOVE                             R14 R15
      195 SETTABLEKS                       R14 R13 K31 ["testId"]
      197 CALL                             R11 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R11
      200 SETTABLEKS                       R11 R10 K21 ["Hint"]
      202 CALL                             R7 3 -1
      203 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["HintText"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["InputLabel"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R3 K11 ["Types"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["View"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Utility"]
       40 GETTABLEKS                       R9 R9 K14 ["Flags"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K13 ["Utility"]
       47 GETTABLEKS                       R10 R10 K15 ["useScaledValue"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K13 ["Utility"]
       54 GETTABLEKS                       R11 R11 K16 ["withCommonProps"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K13 ["Utility"]
       61 GETTABLEKS                       R12 R12 K17 ["withDefaults"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Constants"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K19 ["Enums"]
       73 GETTABLEKS                       R14 R14 K20 ["InputLabelSize"]
       75 CALL                             R13 1 1
       76 DUPTABLE                         R14 K23 [{"size", "testId"}]
       77 GETTABLEKS                       R15 R13 K24 ["Small"]
       79 SETTABLEKS                       R15 R14 K21 ["size"]
       81 LOADK                            R15 K25 ["--foundation-input-field"]
       82 SETTABLEKS                       R15 R14 K22 ["testId"]
       84 DUPCLOSURE                       R15 K26 [PROTO_3]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R4
       95 GETTABLEKS                       R16 R2 K27 ["memo"]
       97 GETTABLEKS                       R17 R2 K28 ["forwardRef"]
       99 MOVE                             R18 R15
      100 CALL                             R17 1 -1
      101 CALL                             R16 -1 -1
      102 RETURN                           R16 -1
