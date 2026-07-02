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
       52 DUPTABLE                         R11 K11 [{["Size"], ["tag"] = "col gap-small auto-y", ["ref"]}]
       53 GETTABLEKS                       R13 R2 K12 ["width"]
       55 JUMPIF                           R13 ; [+6]
       56 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       58 MOVE                             R13 R3
       59 LOADN                            R14 0
       60 CALL                             R12 2 1
       61 JUMP                             ; [+10]
       62 GETIMPORT                        R12 K17 [UDim2.new]
       64 GETTABLEKS                       R13 R2 K12 ["width"]
       66 GETIMPORT                        R14 K19 [UDim.new]
       68 LOADN                            R15 0
       69 LOADN                            R16 0
       70 CALL                             R14 2 -1
       71 CALL                             R12 -1 1
       72 SETTABLEKS                       R12 R11 K7 ["Size"]
       74 SETTABLEKS                       R1 R11 K10 ["ref"]
       76 CALL                             R9 2 1
       77 DUPTABLE                         R10 K23 [{"Label", "InputWrapper", "Hint"}]
       78 GETTABLEKS                       R13 R2 K24 ["label"]
       80 LENGTH                           R12 R13
       81 LOADN                            R13 0
       82 JUMPIFNOTLT                      R13 R12 ; [+44]
       84 GETUPVAL                         R11 4
       85 GETTABLEKS                       R11 R11 K6 ["createElement"]
       87 GETUPVAL                         R12 8
       88 DUPTABLE                         R13 K34 [{["Text"], ["size"], ["isRequired"], ["isDisabled"], ["onActivated"], ["onHover"], ["LayoutOrder"] = 1, ["testId"]}]
       89 GETTABLEKS                       R14 R2 K24 ["label"]
       91 SETTABLEKS                       R14 R13 K25 ["Text"]
       93 GETTABLEKS                       R14 R2 K26 ["size"]
       95 SETTABLEKS                       R14 R13 K26 ["size"]
       97 GETTABLEKS                       R14 R2 K27 ["isRequired"]
       99 SETTABLEKS                       R14 R13 K27 ["isRequired"]
      101 GETTABLEKS                       R14 R2 K28 ["isDisabled"]
      103 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      105 SETTABLEKS                       R5 R13 K29 ["onActivated"]
      107 GETUPVAL                         R15 5
      108 GETTABLEKS                       R15 R15 K3 ["FoundationTextInputsBetaUpdate"]
      110 JUMPIFNOT                        R15 ; [+2]
      111 LOADNIL                          R14
      112 JUMP                             ; [+1]
      113 MOVE                             R14 R6
      114 SETTABLEKS                       R14 R13 K30 ["onHover"]
      116 LOADK                            R15 K35 ["%*--label"]
      117 GETTABLEKS                       R17 R2 K33 ["testId"]
      119 NAMECALL                         R15 R15 K36 ["format"]
      121 CALL                             R15 2 1
      122 MOVE                             R14 R15
      123 SETTABLEKS                       R14 R13 K33 ["testId"]
      125 CALL                             R11 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R11
      128 SETTABLEKS                       R11 R10 K20 ["Label"]
      130 GETUPVAL                         R11 4
      131 GETTABLEKS                       R11 R11 K6 ["createElement"]
      133 GETUPVAL                         R12 6
      134 DUPTABLE                         R13 K39 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 2, ["testId"]}]
      135 LOADK                            R15 K40 ["%*--input-wrapper"]
      136 GETTABLEKS                       R17 R2 K33 ["testId"]
      138 NAMECALL                         R15 R15 K36 ["format"]
      140 CALL                             R15 2 1
      141 MOVE                             R14 R15
      142 SETTABLEKS                       R14 R13 K33 ["testId"]
      144 DUPTABLE                         R14 K42 [{"Input"}]
      145 GETTABLEKS                       R15 R2 K43 ["input"]
      147 MOVE                             R16 R4
      148 CALL                             R15 1 1
      149 SETTABLEKS                       R15 R14 K41 ["Input"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K21 ["InputWrapper"]
      154 GETTABLEKS                       R12 R2 K44 ["hint"]
      156 JUMPIFNOT                        R12 ; [+28]
      157 GETUPVAL                         R11 4
      158 GETTABLEKS                       R11 R11 K6 ["createElement"]
      160 GETUPVAL                         R12 9
      161 DUPTABLE                         R13 K48 [{["text"], ["hasError"], ["isDisabled"], ["LayoutOrder"] = 3, ["testId"]}]
      162 GETTABLEKS                       R14 R2 K44 ["hint"]
      164 SETTABLEKS                       R14 R13 K45 ["text"]
      166 GETTABLEKS                       R14 R2 K46 ["hasError"]
      168 SETTABLEKS                       R14 R13 K46 ["hasError"]
      170 GETTABLEKS                       R14 R2 K28 ["isDisabled"]
      172 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      174 LOADK                            R15 K49 ["%*--hint"]
      175 GETTABLEKS                       R17 R2 K33 ["testId"]
      177 NAMECALL                         R15 R15 K36 ["format"]
      179 CALL                             R15 2 1
      180 MOVE                             R14 R15
      181 SETTABLEKS                       R14 R13 K33 ["testId"]
      183 CALL                             R11 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R11
      186 SETTABLEKS                       R11 R10 K22 ["Hint"]
      188 CALL                             R7 3 -1
      189 RETURN                           R7 -1

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
       76 DUPTABLE                         R14 K24 [{["size"], ["testId"] = "--foundation-input-field"}]
       77 GETTABLEKS                       R15 R13 K25 ["Small"]
       79 SETTABLEKS                       R15 R14 K21 ["size"]
       81 DUPCLOSURE                       R15 K26 [PROTO_3]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R4
       92 GETTABLEKS                       R16 R2 K27 ["memo"]
       94 GETTABLEKS                       R17 R2 K28 ["forwardRef"]
       96 MOVE                             R18 R15
       97 CALL                             R17 1 -1
       98 CALL                             R16 -1 -1
       99 RETURN                           R16 -1
