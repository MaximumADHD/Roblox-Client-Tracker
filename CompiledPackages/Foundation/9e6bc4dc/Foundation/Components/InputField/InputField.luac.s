PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["getIsFocused"]
        9 CALL                             R0 0 1
       10 JUMPIF                           R0 ; [+6]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["current"]
       14 GETTABLEKS                       R0 R1 K2 ["focus"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 GETTABLEKS                       R1 R2 K1 ["setHover"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 DUPTABLE                         R0 K8 [{"focus", "releaseFocus", "getIsFocused", "getCursorPosition", "getSelectionStart", "setCursorPosition", "setSelectionStart"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["current"]
       10 GETTABLEKS                       R1 R2 K1 ["focus"]
       12 SETTABLEKS                       R1 R0 K1 ["focus"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 GETTABLEKS                       R1 R2 K2 ["releaseFocus"]
       19 SETTABLEKS                       R1 R0 K2 ["releaseFocus"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["current"]
       24 GETTABLEKS                       R1 R2 K3 ["getIsFocused"]
       26 SETTABLEKS                       R1 R0 K3 ["getIsFocused"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K0 ["current"]
       31 GETTABLEKS                       R1 R2 K4 ["getCursorPosition"]
       33 SETTABLEKS                       R1 R0 K4 ["getCursorPosition"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K0 ["current"]
       38 GETTABLEKS                       R1 R2 K5 ["getSelectionStart"]
       40 SETTABLEKS                       R1 R0 K5 ["getSelectionStart"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R2 R3 K0 ["current"]
       45 GETTABLEKS                       R1 R2 K6 ["setCursorPosition"]
       47 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K0 ["current"]
       52 GETTABLEKS                       R1 R2 K7 ["setSelectionStart"]
       54 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       56 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationInputFieldTokenBasedWidth"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["width"]
        8 JUMP                             ; [+8]
        9 GETUPVAL                         R2 1
       10 GETIMPORT                        R3 K4 [UDim.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 144
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["width"]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 GETUPVAL                         R4 1
       20 CALL                             R2 2 1
       21 LOADNIL                          R3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["FoundationInputFieldTokenBasedWidth"]
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R4 3
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R5 R6 K5 ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"]
       30 CALL                             R4 1 1
       31 MOVE                             R3 R4
       32 JUMP                             ; [+1]
       33 LOADN                            R3 144
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R4 R5 K6 ["useRef"]
       37 LOADNIL                          R5
       38 CALL                             R4 1 1
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R5 R6 K7 ["useCallback"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R7 0 0
       46 CALL                             R5 2 1
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 0
       54 CALL                             R6 2 1
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R7 R8 K8 ["useImperativeHandle"]
       58 GETTABLEKS                       R8 R2 K9 ["textBoxRef"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          VAL R4
       62 NEWTABLE                         R10 0 0
       64 CALL                             R7 3 0
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R7 R8 K10 ["createElement"]
       68 GETUPVAL                         R8 6
       69 GETUPVAL                         R9 7
       70 MOVE                             R10 R2
       71 DUPTABLE                         R11 K14 [{"Size", "tag", "ref"}]
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R13 R14 K0 ["FoundationInputFieldTokenBasedWidth"]
       75 JUMPIFNOT                        R13 ; [+9]
       76 GETTABLEKS                       R13 R2 K1 ["width"]
       78 JUMPIF                           R13 ; [+6]
       79 GETIMPORT                        R12 K17 [UDim2.fromOffset]
       81 MOVE                             R13 R3
       82 LOADN                            R14 0
       83 CALL                             R12 2 1
       84 JUMP                             ; [+10]
       85 GETIMPORT                        R12 K18 [UDim2.new]
       87 GETTABLEKS                       R13 R2 K1 ["width"]
       89 GETIMPORT                        R14 K4 [UDim.new]
       91 LOADN                            R15 0
       92 LOADN                            R16 0
       93 CALL                             R14 2 -1
       94 CALL                             R12 -1 1
       95 SETTABLEKS                       R12 R11 K11 ["Size"]
       97 LOADK                            R12 K19 ["col gap-small auto-y"]
       98 SETTABLEKS                       R12 R11 K12 ["tag"]
      100 SETTABLEKS                       R1 R11 K13 ["ref"]
      102 CALL                             R9 2 1
      103 DUPTABLE                         R10 K23 [{"Label", "InputWrapper", "Hint"}]
      104 GETTABLEKS                       R13 R2 K24 ["label"]
      106 LENGTH                           R12 R13
      107 LOADN                            R13 0
      108 JUMPIFNOTLT                      R13 R12 ; [+36]
      110 GETUPVAL                         R12 5
      111 GETTABLEKS                       R11 R12 K10 ["createElement"]
      113 GETUPVAL                         R12 8
      114 DUPTABLE                         R13 K32 [{"Text", "size", "isRequired", "onActivated", "onHover", "LayoutOrder", "testId"}]
      115 GETTABLEKS                       R14 R2 K24 ["label"]
      117 SETTABLEKS                       R14 R13 K25 ["Text"]
      119 GETTABLEKS                       R14 R2 K26 ["size"]
      121 SETTABLEKS                       R14 R13 K26 ["size"]
      123 GETTABLEKS                       R14 R2 K27 ["isRequired"]
      125 SETTABLEKS                       R14 R13 K27 ["isRequired"]
      127 SETTABLEKS                       R5 R13 K28 ["onActivated"]
      129 SETTABLEKS                       R6 R13 K29 ["onHover"]
      131 LOADN                            R14 1
      132 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      134 LOADK                            R15 K33 ["%*--label"]
      135 GETTABLEKS                       R17 R2 K31 ["testId"]
      137 NAMECALL                         R15 R15 K34 ["format"]
      139 CALL                             R15 2 1
      140 MOVE                             R14 R15
      141 SETTABLEKS                       R14 R13 K31 ["testId"]
      143 CALL                             R11 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R11
      146 SETTABLEKS                       R11 R10 K20 ["Label"]
      148 GETUPVAL                         R12 5
      149 GETTABLEKS                       R11 R12 K10 ["createElement"]
      151 GETUPVAL                         R12 6
      152 DUPTABLE                         R13 K35 [{"tag", "LayoutOrder", "testId"}]
      153 LOADK                            R14 K36 ["size-full-0 auto-y"]
      154 SETTABLEKS                       R14 R13 K12 ["tag"]
      156 LOADN                            R14 2
      157 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      159 LOADK                            R15 K37 ["%*--input-wrapper"]
      160 GETTABLEKS                       R17 R2 K31 ["testId"]
      162 NAMECALL                         R15 R15 K34 ["format"]
      164 CALL                             R15 2 1
      165 MOVE                             R14 R15
      166 SETTABLEKS                       R14 R13 K31 ["testId"]
      168 DUPTABLE                         R14 K39 [{"Input"}]
      169 GETTABLEKS                       R15 R2 K40 ["input"]
      171 MOVE                             R16 R4
      172 CALL                             R15 1 1
      173 SETTABLEKS                       R15 R14 K38 ["Input"]
      175 CALL                             R11 3 1
      176 SETTABLEKS                       R11 R10 K21 ["InputWrapper"]
      178 GETTABLEKS                       R12 R2 K41 ["hint"]
      180 JUMPIFNOT                        R12 ; [+27]
      181 GETUPVAL                         R12 5
      182 GETTABLEKS                       R11 R12 K10 ["createElement"]
      184 GETUPVAL                         R12 9
      185 DUPTABLE                         R13 K44 [{"text", "hasError", "LayoutOrder", "testId"}]
      186 GETTABLEKS                       R14 R2 K41 ["hint"]
      188 SETTABLEKS                       R14 R13 K42 ["text"]
      190 GETTABLEKS                       R14 R2 K43 ["hasError"]
      192 SETTABLEKS                       R14 R13 K43 ["hasError"]
      194 LOADN                            R14 3
      195 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      197 LOADK                            R15 K45 ["%*--hint"]
      198 GETTABLEKS                       R17 R2 K31 ["testId"]
      200 NAMECALL                         R15 R15 K34 ["format"]
      202 CALL                             R15 2 1
      203 MOVE                             R14 R15
      204 SETTABLEKS                       R14 R13 K31 ["testId"]
      206 CALL                             R11 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R11
      209 SETTABLEKS                       R11 R10 K22 ["Hint"]
      211 CALL                             R7 3 -1
      212 RETURN                           R7 -1

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
       38 GETTABLEKS                       R10 R0 K13 ["Utility"]
       40 GETTABLEKS                       R9 R10 K14 ["Flags"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R11 R0 K13 ["Utility"]
       47 GETTABLEKS                       R10 R11 K15 ["useScaledValue"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R12 R0 K13 ["Utility"]
       54 GETTABLEKS                       R11 R12 K16 ["withCommonProps"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R13 R0 K13 ["Utility"]
       61 GETTABLEKS                       R12 R13 K17 ["withDefaults"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Constants"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R15 R0 K19 ["Enums"]
       73 GETTABLEKS                       R14 R15 K20 ["InputLabelSize"]
       75 CALL                             R13 1 1
       76 DUPTABLE                         R14 K24 [{"width", "size", "testId"}]
       77 GETTABLEKS                       R16 R8 K25 ["FoundationInputFieldTokenBasedWidth"]
       79 JUMPIFNOT                        R16 ; [+2]
       80 LOADNIL                          R15
       81 JUMP                             ; [+5]
       82 GETIMPORT                        R15 K28 [UDim.new]
       84 LOADN                            R16 0
       85 LOADN                            R17 144
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K21 ["width"]
       89 GETTABLEKS                       R15 R13 K29 ["Small"]
       91 SETTABLEKS                       R15 R14 K22 ["size"]
       93 LOADK                            R15 K30 ["--foundation-input-field"]
       94 SETTABLEKS                       R15 R14 K23 ["testId"]
       96 DUPCLOSURE                       R15 K31 [PROTO_3]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R4
      107 GETTABLEKS                       R16 R2 K32 ["memo"]
      109 GETTABLEKS                       R17 R2 K33 ["forwardRef"]
      111 MOVE                             R18 R15
      112 CALL                             R17 1 -1
      113 CALL                             R16 -1 -1
      114 RETURN                           R16 -1
