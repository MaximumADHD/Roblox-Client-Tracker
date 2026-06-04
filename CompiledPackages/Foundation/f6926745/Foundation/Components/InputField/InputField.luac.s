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
       79 JUMPIFNOTLT                      R13 R12 ; [+40]
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
       98 GETTABLEKS                       R14 R2 K27 ["isDisabled"]
      100 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
      102 SETTABLEKS                       R5 R13 K28 ["onActivated"]
      104 SETTABLEKS                       R6 R13 K29 ["onHover"]
      106 LOADN                            R14 1
      107 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      109 LOADK                            R15 K33 ["%*--label"]
      110 GETTABLEKS                       R17 R2 K31 ["testId"]
      112 NAMECALL                         R15 R15 K34 ["format"]
      114 CALL                             R15 2 1
      115 MOVE                             R14 R15
      116 SETTABLEKS                       R14 R13 K31 ["testId"]
      118 CALL                             R11 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R11
      121 SETTABLEKS                       R11 R10 K19 ["Label"]
      123 GETUPVAL                         R11 4
      124 GETTABLEKS                       R11 R11 K5 ["createElement"]
      126 GETUPVAL                         R12 5
      127 DUPTABLE                         R13 K35 [{"tag", "LayoutOrder", "testId"}]
      128 LOADK                            R14 K36 ["size-full-0 auto-y"]
      129 SETTABLEKS                       R14 R13 K7 ["tag"]
      131 LOADN                            R14 2
      132 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      134 LOADK                            R15 K37 ["%*--input-wrapper"]
      135 GETTABLEKS                       R17 R2 K31 ["testId"]
      137 NAMECALL                         R15 R15 K34 ["format"]
      139 CALL                             R15 2 1
      140 MOVE                             R14 R15
      141 SETTABLEKS                       R14 R13 K31 ["testId"]
      143 DUPTABLE                         R14 K39 [{"Input"}]
      144 GETTABLEKS                       R15 R2 K40 ["input"]
      146 MOVE                             R16 R4
      147 CALL                             R15 1 1
      148 SETTABLEKS                       R15 R14 K38 ["Input"]
      150 CALL                             R11 3 1
      151 SETTABLEKS                       R11 R10 K20 ["InputWrapper"]
      153 GETTABLEKS                       R12 R2 K41 ["hint"]
      155 JUMPIFNOT                        R12 ; [+31]
      156 GETUPVAL                         R11 4
      157 GETTABLEKS                       R11 R11 K5 ["createElement"]
      159 GETUPVAL                         R12 8
      160 DUPTABLE                         R13 K44 [{"text", "hasError", "isDisabled", "LayoutOrder", "testId"}]
      161 GETTABLEKS                       R14 R2 K41 ["hint"]
      163 SETTABLEKS                       R14 R13 K42 ["text"]
      165 GETTABLEKS                       R14 R2 K43 ["hasError"]
      167 SETTABLEKS                       R14 R13 K43 ["hasError"]
      169 GETTABLEKS                       R14 R2 K27 ["isDisabled"]
      171 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
      173 LOADN                            R14 3
      174 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      176 LOADK                            R15 K45 ["%*--hint"]
      177 GETTABLEKS                       R17 R2 K31 ["testId"]
      179 NAMECALL                         R15 R15 K34 ["format"]
      181 CALL                             R15 2 1
      182 MOVE                             R14 R15
      183 SETTABLEKS                       R14 R13 K31 ["testId"]
      185 CALL                             R11 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R11
      188 SETTABLEKS                       R11 R10 K21 ["Hint"]
      190 CALL                             R7 3 -1
      191 RETURN                           R7 -1

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
       40 GETTABLEKS                       R9 R9 K14 ["useScaledValue"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K13 ["Utility"]
       47 GETTABLEKS                       R10 R10 K15 ["withCommonProps"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K13 ["Utility"]
       54 GETTABLEKS                       R11 R11 K16 ["withDefaults"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K17 ["Constants"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K18 ["Enums"]
       66 GETTABLEKS                       R13 R13 K19 ["InputLabelSize"]
       68 CALL                             R12 1 1
       69 DUPTABLE                         R13 K22 [{"size", "testId"}]
       70 GETTABLEKS                       R14 R12 K23 ["Small"]
       72 SETTABLEKS                       R14 R13 K20 ["size"]
       74 LOADK                            R14 K24 ["--foundation-input-field"]
       75 SETTABLEKS                       R14 R13 K21 ["testId"]
       77 DUPCLOSURE                       R14 K25 [PROTO_3]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 GETTABLEKS                       R15 R2 K26 ["memo"]
       89 GETTABLEKS                       R16 R2 K27 ["forwardRef"]
       91 MOVE                             R17 R14
       92 CALL                             R16 1 -1
       93 CALL                             R15 -1 -1
       94 RETURN                           R15 -1
