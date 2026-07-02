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
        5 GETTABLEKS                       R3 R3 K0 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 NEWTABLE                         R6 0 0
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 0
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K2 ["useImperativeHandle"]
       28 GETTABLEKS                       R7 R2 K3 ["textBoxRef"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 0
       34 CALL                             R6 3 0
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K4 ["createElement"]
       38 GETUPVAL                         R7 3
       39 GETUPVAL                         R8 4
       40 MOVE                             R9 R2
       41 DUPTABLE                         R10 K9 [{["Size"], ["tag"] = "col gap-small auto-y", ["ref"]}]
       42 GETIMPORT                        R11 K12 [UDim2.new]
       44 GETTABLEKS                       R12 R2 K13 ["width"]
       46 GETIMPORT                        R13 K15 [UDim.new]
       48 LOADN                            R14 0
       49 LOADN                            R15 0
       50 CALL                             R13 2 -1
       51 CALL                             R11 -1 1
       52 SETTABLEKS                       R11 R10 K5 ["Size"]
       54 SETTABLEKS                       R1 R10 K8 ["ref"]
       56 CALL                             R8 2 1
       57 DUPTABLE                         R9 K19 [{"Label", "InputWrapper", "Hint"}]
       58 GETTABLEKS                       R12 R2 K20 ["label"]
       60 LENGTH                           R11 R12
       61 LOADN                            R12 0
       62 JUMPIFNOTLT                      R12 R11 ; [+33]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K4 ["createElement"]
       67 GETUPVAL                         R11 5
       68 DUPTABLE                         R12 K29 [{["Text"], ["size"], ["isRequired"], ["onActivated"], ["onHover"], ["LayoutOrder"] = 1, ["testId"]}]
       69 GETTABLEKS                       R13 R2 K20 ["label"]
       71 SETTABLEKS                       R13 R12 K21 ["Text"]
       73 GETTABLEKS                       R13 R2 K22 ["size"]
       75 SETTABLEKS                       R13 R12 K22 ["size"]
       77 GETTABLEKS                       R13 R2 K23 ["isRequired"]
       79 SETTABLEKS                       R13 R12 K23 ["isRequired"]
       81 SETTABLEKS                       R4 R12 K24 ["onActivated"]
       83 SETTABLEKS                       R5 R12 K25 ["onHover"]
       85 LOADK                            R14 K30 ["%*--label"]
       86 GETTABLEKS                       R16 R2 K28 ["testId"]
       88 NAMECALL                         R14 R14 K31 ["format"]
       90 CALL                             R14 2 1
       91 MOVE                             R13 R14
       92 SETTABLEKS                       R13 R12 K28 ["testId"]
       94 CALL                             R10 2 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 SETTABLEKS                       R10 R9 K16 ["Label"]
       99 GETUPVAL                         R10 2
      100 GETTABLEKS                       R10 R10 K4 ["createElement"]
      102 GETUPVAL                         R11 3
      103 DUPTABLE                         R12 K34 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 2, ["testId"]}]
      104 LOADK                            R14 K35 ["%*--input-wrapper"]
      105 GETTABLEKS                       R16 R2 K28 ["testId"]
      107 NAMECALL                         R14 R14 K31 ["format"]
      109 CALL                             R14 2 1
      110 MOVE                             R13 R14
      111 SETTABLEKS                       R13 R12 K28 ["testId"]
      113 DUPTABLE                         R13 K37 [{"Input"}]
      114 GETTABLEKS                       R14 R2 K38 ["input"]
      116 MOVE                             R15 R3
      117 CALL                             R14 1 1
      118 SETTABLEKS                       R14 R13 K36 ["Input"]
      120 CALL                             R10 3 1
      121 SETTABLEKS                       R10 R9 K17 ["InputWrapper"]
      123 GETTABLEKS                       R11 R2 K39 ["hint"]
      125 JUMPIFNOT                        R11 ; [+24]
      126 GETUPVAL                         R10 2
      127 GETTABLEKS                       R10 R10 K4 ["createElement"]
      129 GETUPVAL                         R11 6
      130 DUPTABLE                         R12 K43 [{["text"], ["hasError"], ["LayoutOrder"] = 3, ["testId"]}]
      131 GETTABLEKS                       R13 R2 K39 ["hint"]
      133 SETTABLEKS                       R13 R12 K40 ["text"]
      135 GETTABLEKS                       R13 R2 K41 ["hasError"]
      137 SETTABLEKS                       R13 R12 K41 ["hasError"]
      139 LOADK                            R14 K44 ["%*--hint"]
      140 GETTABLEKS                       R16 R2 K28 ["testId"]
      142 NAMECALL                         R14 R14 K31 ["format"]
      144 CALL                             R14 2 1
      145 MOVE                             R13 R14
      146 SETTABLEKS                       R13 R12 K28 ["testId"]
      148 CALL                             R10 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R10
      151 SETTABLEKS                       R10 R9 K18 ["Hint"]
      153 CALL                             R6 3 -1
      154 RETURN                           R6 -1

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
       40 GETTABLEKS                       R9 R9 K14 ["withCommonProps"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K13 ["Utility"]
       47 GETTABLEKS                       R10 R10 K15 ["withDefaults"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K16 ["Enums"]
       54 GETTABLEKS                       R11 R11 K17 ["InputLabelSize"]
       56 CALL                             R10 1 1
       57 DUPTABLE                         R11 K22 [{["width"], ["size"], ["testId"] = "--foundation-input-field"}]
       58 GETIMPORT                        R12 K25 [UDim.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 400
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K18 ["width"]
       65 GETTABLEKS                       R12 R10 K26 ["Small"]
       67 SETTABLEKS                       R12 R11 K19 ["size"]
       69 DUPCLOSURE                       R12 K27 [PROTO_3]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 GETTABLEKS                       R13 R2 K28 ["memo"]
       79 GETTABLEKS                       R14 R2 K29 ["forwardRef"]
       81 MOVE                             R15 R12
       82 CALL                             R14 1 -1
       83 CALL                             R13 -1 -1
       84 RETURN                           R13 -1
