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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 NEWTABLE                         R6 0 0
       16 CALL                             R4 2 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 0
       24 CALL                             R5 2 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K2 ["useImperativeHandle"]
       28 GETTABLEKS                       R7 R2 K3 ["textBoxRef"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 0
       34 CALL                             R6 3 0
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K4 ["createElement"]
       38 GETUPVAL                         R7 3
       39 GETUPVAL                         R8 4
       40 MOVE                             R9 R2
       41 DUPTABLE                         R10 K8 [{"Size", "tag", "ref"}]
       42 GETIMPORT                        R11 K11 [UDim2.new]
       44 GETTABLEKS                       R12 R2 K12 ["width"]
       46 GETIMPORT                        R13 K14 [UDim.new]
       48 LOADN                            R14 0
       49 LOADN                            R15 0
       50 CALL                             R13 2 -1
       51 CALL                             R11 -1 1
       52 SETTABLEKS                       R11 R10 K5 ["Size"]
       54 LOADK                            R11 K15 ["col gap-small auto-y"]
       55 SETTABLEKS                       R11 R10 K6 ["tag"]
       57 SETTABLEKS                       R1 R10 K7 ["ref"]
       59 CALL                             R8 2 1
       60 DUPTABLE                         R9 K19 [{"Label", "InputWrapper", "Hint"}]
       61 GETTABLEKS                       R12 R2 K20 ["label"]
       63 LENGTH                           R11 R12
       64 LOADN                            R12 0
       65 JUMPIFNOTLT                      R12 R11 ; [+36]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R10 R11 K4 ["createElement"]
       70 GETUPVAL                         R11 5
       71 DUPTABLE                         R12 K28 [{"Text", "size", "isRequired", "onActivated", "onHover", "LayoutOrder", "testId"}]
       72 GETTABLEKS                       R13 R2 K20 ["label"]
       74 SETTABLEKS                       R13 R12 K21 ["Text"]
       76 GETTABLEKS                       R13 R2 K22 ["size"]
       78 SETTABLEKS                       R13 R12 K22 ["size"]
       80 GETTABLEKS                       R13 R2 K23 ["isRequired"]
       82 SETTABLEKS                       R13 R12 K23 ["isRequired"]
       84 SETTABLEKS                       R4 R12 K24 ["onActivated"]
       86 SETTABLEKS                       R5 R12 K25 ["onHover"]
       88 LOADN                            R13 1
       89 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       91 LOADK                            R14 K29 ["%*--label"]
       92 GETTABLEKS                       R16 R2 K27 ["testId"]
       94 NAMECALL                         R14 R14 K30 ["format"]
       96 CALL                             R14 2 1
       97 MOVE                             R13 R14
       98 SETTABLEKS                       R13 R12 K27 ["testId"]
      100 CALL                             R10 2 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R10
      103 SETTABLEKS                       R10 R9 K16 ["Label"]
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R10 R11 K4 ["createElement"]
      108 GETUPVAL                         R11 3
      109 DUPTABLE                         R12 K31 [{"tag", "LayoutOrder", "testId"}]
      110 LOADK                            R13 K32 ["size-full-0 auto-y"]
      111 SETTABLEKS                       R13 R12 K6 ["tag"]
      113 LOADN                            R13 2
      114 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      116 LOADK                            R14 K33 ["%*--input-wrapper"]
      117 GETTABLEKS                       R16 R2 K27 ["testId"]
      119 NAMECALL                         R14 R14 K30 ["format"]
      121 CALL                             R14 2 1
      122 MOVE                             R13 R14
      123 SETTABLEKS                       R13 R12 K27 ["testId"]
      125 DUPTABLE                         R13 K35 [{"Input"}]
      126 GETTABLEKS                       R14 R2 K36 ["input"]
      128 MOVE                             R15 R3
      129 CALL                             R14 1 1
      130 SETTABLEKS                       R14 R13 K34 ["Input"]
      132 CALL                             R10 3 1
      133 SETTABLEKS                       R10 R9 K17 ["InputWrapper"]
      135 GETTABLEKS                       R11 R2 K37 ["hint"]
      137 JUMPIFNOT                        R11 ; [+27]
      138 GETUPVAL                         R11 2
      139 GETTABLEKS                       R10 R11 K4 ["createElement"]
      141 GETUPVAL                         R11 6
      142 DUPTABLE                         R12 K40 [{"text", "hasError", "LayoutOrder", "testId"}]
      143 GETTABLEKS                       R13 R2 K37 ["hint"]
      145 SETTABLEKS                       R13 R12 K38 ["text"]
      147 GETTABLEKS                       R13 R2 K39 ["hasError"]
      149 SETTABLEKS                       R13 R12 K39 ["hasError"]
      151 LOADN                            R13 3
      152 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      154 LOADK                            R14 K41 ["%*--hint"]
      155 GETTABLEKS                       R16 R2 K27 ["testId"]
      157 NAMECALL                         R14 R14 K30 ["format"]
      159 CALL                             R14 2 1
      160 MOVE                             R13 R14
      161 SETTABLEKS                       R13 R12 K27 ["testId"]
      163 CALL                             R10 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R10
      166 SETTABLEKS                       R10 R9 K18 ["Hint"]
      168 CALL                             R6 3 -1
      169 RETURN                           R6 -1

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
       40 GETTABLEKS                       R9 R10 K14 ["withCommonProps"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R11 R0 K13 ["Utility"]
       47 GETTABLEKS                       R10 R11 K15 ["withDefaults"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R12 R0 K16 ["Enums"]
       54 GETTABLEKS                       R11 R12 K17 ["InputLabelSize"]
       56 CALL                             R10 1 1
       57 DUPTABLE                         R11 K21 [{"width", "size", "testId"}]
       58 GETIMPORT                        R12 K24 [UDim.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 144
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K18 ["width"]
       65 GETTABLEKS                       R12 R10 K25 ["Small"]
       67 SETTABLEKS                       R12 R11 K19 ["size"]
       69 LOADK                            R12 K26 ["--foundation-input-field"]
       70 SETTABLEKS                       R12 R11 K20 ["testId"]
       72 DUPCLOSURE                       R12 K27 [PROTO_3]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 GETTABLEKS                       R13 R2 K28 ["memo"]
       82 GETTABLEKS                       R14 R2 K29 ["forwardRef"]
       84 MOVE                             R15 R12
       85 CALL                             R14 1 -1
       86 CALL                             R13 -1 -1
       87 RETURN                           R13 -1
