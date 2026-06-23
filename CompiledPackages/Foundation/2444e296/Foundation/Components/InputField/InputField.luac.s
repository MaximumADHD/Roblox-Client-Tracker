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
       22 GETUPVAL                         R7 5
       23 GETTABLEKS                       R7 R7 K3 ["FoundationTextInputsBetaUpdate"]
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADNIL                          R6
       27 JUMP                             ; [+8]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K4 ["useImperativeHandle"]
       39 GETTABLEKS                       R8 R2 K5 ["textBoxRef"]
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R10 0 0
       45 CALL                             R7 3 0
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K6 ["createElement"]
       49 GETUPVAL                         R8 6
       50 GETUPVAL                         R9 7
       51 MOVE                             R10 R2
       52 DUPTABLE                         R11 K10 [{"Size", "tag", "ref"}]
       53 GETTABLEKS                       R13 R2 K11 ["width"]
       55 JUMPIF                           R13 ; [+6]
       56 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       58 MOVE                             R13 R3
       59 LOADN                            R14 0
       60 CALL                             R12 2 1
       61 JUMP                             ; [+10]
       62 GETIMPORT                        R12 K16 [UDim2.new]
       64 GETTABLEKS                       R13 R2 K11 ["width"]
       66 GETIMPORT                        R14 K18 [UDim.new]
       68 LOADN                            R15 0
       69 LOADN                            R16 0
       70 CALL                             R14 2 -1
       71 CALL                             R12 -1 1
       72 SETTABLEKS                       R12 R11 K7 ["Size"]
       74 LOADK                            R12 K19 ["col gap-small auto-y"]
       75 SETTABLEKS                       R12 R11 K8 ["tag"]
       77 SETTABLEKS                       R1 R11 K9 ["ref"]
       79 CALL                             R9 2 1
       80 DUPTABLE                         R10 K23 [{"Label", "InputWrapper", "Hint"}]
       81 GETTABLEKS                       R13 R2 K24 ["label"]
       83 LENGTH                           R12 R13
       84 LOADN                            R13 0
       85 JUMPIFNOTLT                      R13 R12 ; [+47]
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R11 R11 K6 ["createElement"]
       90 GETUPVAL                         R12 8
       91 DUPTABLE                         R13 K33 [{"Text", "size", "isRequired", "isDisabled", "onActivated", "onHover", "LayoutOrder", "testId"}]
       92 GETTABLEKS                       R14 R2 K24 ["label"]
       94 SETTABLEKS                       R14 R13 K25 ["Text"]
       96 GETTABLEKS                       R14 R2 K26 ["size"]
       98 SETTABLEKS                       R14 R13 K26 ["size"]
      100 GETTABLEKS                       R14 R2 K27 ["isRequired"]
      102 SETTABLEKS                       R14 R13 K27 ["isRequired"]
      104 GETTABLEKS                       R14 R2 K28 ["isDisabled"]
      106 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      108 SETTABLEKS                       R5 R13 K29 ["onActivated"]
      110 GETUPVAL                         R15 5
      111 GETTABLEKS                       R15 R15 K3 ["FoundationTextInputsBetaUpdate"]
      113 JUMPIFNOT                        R15 ; [+2]
      114 LOADNIL                          R14
      115 JUMP                             ; [+1]
      116 MOVE                             R14 R6
      117 SETTABLEKS                       R14 R13 K30 ["onHover"]
      119 LOADN                            R14 1
      120 SETTABLEKS                       R14 R13 K31 ["LayoutOrder"]
      122 LOADK                            R15 K34 ["%*--label"]
      123 GETTABLEKS                       R17 R2 K32 ["testId"]
      125 NAMECALL                         R15 R15 K35 ["format"]
      127 CALL                             R15 2 1
      128 MOVE                             R14 R15
      129 SETTABLEKS                       R14 R13 K32 ["testId"]
      131 CALL                             R11 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R11
      134 SETTABLEKS                       R11 R10 K20 ["Label"]
      136 GETUPVAL                         R11 4
      137 GETTABLEKS                       R11 R11 K6 ["createElement"]
      139 GETUPVAL                         R12 6
      140 DUPTABLE                         R13 K36 [{"tag", "LayoutOrder", "testId"}]
      141 LOADK                            R14 K37 ["size-full-0 auto-y"]
      142 SETTABLEKS                       R14 R13 K8 ["tag"]
      144 LOADN                            R14 2
      145 SETTABLEKS                       R14 R13 K31 ["LayoutOrder"]
      147 LOADK                            R15 K38 ["%*--input-wrapper"]
      148 GETTABLEKS                       R17 R2 K32 ["testId"]
      150 NAMECALL                         R15 R15 K35 ["format"]
      152 CALL                             R15 2 1
      153 MOVE                             R14 R15
      154 SETTABLEKS                       R14 R13 K32 ["testId"]
      156 DUPTABLE                         R14 K40 [{"Input"}]
      157 GETTABLEKS                       R15 R2 K41 ["input"]
      159 MOVE                             R16 R4
      160 CALL                             R15 1 1
      161 SETTABLEKS                       R15 R14 K39 ["Input"]
      163 CALL                             R11 3 1
      164 SETTABLEKS                       R11 R10 K21 ["InputWrapper"]
      166 GETTABLEKS                       R12 R2 K42 ["hint"]
      168 JUMPIFNOT                        R12 ; [+31]
      169 GETUPVAL                         R11 4
      170 GETTABLEKS                       R11 R11 K6 ["createElement"]
      172 GETUPVAL                         R12 9
      173 DUPTABLE                         R13 K45 [{"text", "hasError", "isDisabled", "LayoutOrder", "testId"}]
      174 GETTABLEKS                       R14 R2 K42 ["hint"]
      176 SETTABLEKS                       R14 R13 K43 ["text"]
      178 GETTABLEKS                       R14 R2 K44 ["hasError"]
      180 SETTABLEKS                       R14 R13 K44 ["hasError"]
      182 GETTABLEKS                       R14 R2 K28 ["isDisabled"]
      184 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      186 LOADN                            R14 3
      187 SETTABLEKS                       R14 R13 K31 ["LayoutOrder"]
      189 LOADK                            R15 K46 ["%*--hint"]
      190 GETTABLEKS                       R17 R2 K32 ["testId"]
      192 NAMECALL                         R15 R15 K35 ["format"]
      194 CALL                             R15 2 1
      195 MOVE                             R14 R15
      196 SETTABLEKS                       R14 R13 K32 ["testId"]
      198 CALL                             R11 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R11
      201 SETTABLEKS                       R11 R10 K22 ["Hint"]
      203 CALL                             R7 3 -1
      204 RETURN                           R7 -1

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
       64 GETTABLEKS                       R13 R0 K13 ["Utility"]
       66 GETTABLEKS                       R13 R13 K18 ["Flags"]
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
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 GETTABLEKS                       R16 R2 K27 ["memo"]
       97 GETTABLEKS                       R17 R2 K28 ["forwardRef"]
       99 MOVE                             R18 R15
      100 CALL                             R17 1 -1
      101 CALL                             R16 -1 -1
      102 RETURN                           R16 -1
