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
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K9 ["FoundationNumberInputRefAndCallbacks"]
       31 JUMPIFNOT                        R2 ; [+6]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K0 ["current"]
       35 GETTABLEKS                       R1 R1 K4 ["getCursorPosition"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K4 ["getCursorPosition"]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K9 ["FoundationNumberInputRefAndCallbacks"]
       44 JUMPIFNOT                        R2 ; [+6]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K0 ["current"]
       48 GETTABLEKS                       R1 R1 K5 ["getSelectionStart"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R1
       52 SETTABLEKS                       R1 R0 K5 ["getSelectionStart"]
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K9 ["FoundationNumberInputRefAndCallbacks"]
       57 JUMPIFNOT                        R2 ; [+6]
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K0 ["current"]
       61 GETTABLEKS                       R1 R1 K6 ["setCursorPosition"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R1
       65 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K9 ["FoundationNumberInputRefAndCallbacks"]
       70 JUMPIFNOT                        R2 ; [+6]
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K0 ["current"]
       74 GETTABLEKS                       R1 R1 K7 ["setSelectionStart"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R1
       78 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       80 RETURN                           R0 1

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
       32 CAPTURE                          UPVAL U3
       33 NEWTABLE                         R9 0 0
       35 CALL                             R6 3 0
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K4 ["createElement"]
       39 GETUPVAL                         R7 4
       40 GETUPVAL                         R8 5
       41 MOVE                             R9 R2
       42 DUPTABLE                         R10 K9 [{["Size"], ["tag"] = "col gap-small auto-y", ["ref"]}]
       43 GETIMPORT                        R11 K12 [UDim2.new]
       45 GETTABLEKS                       R12 R2 K13 ["width"]
       47 GETIMPORT                        R13 K15 [UDim.new]
       49 LOADN                            R14 0
       50 LOADN                            R15 0
       51 CALL                             R13 2 -1
       52 CALL                             R11 -1 1
       53 SETTABLEKS                       R11 R10 K5 ["Size"]
       55 SETTABLEKS                       R1 R10 K8 ["ref"]
       57 CALL                             R8 2 1
       58 DUPTABLE                         R9 K19 [{"Label", "InputWrapper", "Hint"}]
       59 GETTABLEKS                       R12 R2 K20 ["label"]
       61 LENGTH                           R11 R12
       62 LOADN                            R12 0
       63 JUMPIFNOTLT                      R12 R11 ; [+33]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R10 R10 K4 ["createElement"]
       68 GETUPVAL                         R11 6
       69 DUPTABLE                         R12 K29 [{["Text"], ["size"], ["isRequired"], ["onActivated"], ["onHover"], ["LayoutOrder"] = 1, ["testId"]}]
       70 GETTABLEKS                       R13 R2 K20 ["label"]
       72 SETTABLEKS                       R13 R12 K21 ["Text"]
       74 GETTABLEKS                       R13 R2 K22 ["size"]
       76 SETTABLEKS                       R13 R12 K22 ["size"]
       78 GETTABLEKS                       R13 R2 K23 ["isRequired"]
       80 SETTABLEKS                       R13 R12 K23 ["isRequired"]
       82 SETTABLEKS                       R4 R12 K24 ["onActivated"]
       84 SETTABLEKS                       R5 R12 K25 ["onHover"]
       86 LOADK                            R14 K30 ["%*--label"]
       87 GETTABLEKS                       R16 R2 K28 ["testId"]
       89 NAMECALL                         R14 R14 K31 ["format"]
       91 CALL                             R14 2 1
       92 MOVE                             R13 R14
       93 SETTABLEKS                       R13 R12 K28 ["testId"]
       95 CALL                             R10 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R10
       98 SETTABLEKS                       R10 R9 K16 ["Label"]
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K4 ["createElement"]
      103 GETUPVAL                         R11 4
      104 DUPTABLE                         R12 K34 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 2, ["testId"]}]
      105 LOADK                            R14 K35 ["%*--input-wrapper"]
      106 GETTABLEKS                       R16 R2 K28 ["testId"]
      108 NAMECALL                         R14 R14 K31 ["format"]
      110 CALL                             R14 2 1
      111 MOVE                             R13 R14
      112 SETTABLEKS                       R13 R12 K28 ["testId"]
      114 DUPTABLE                         R13 K37 [{"Input"}]
      115 GETTABLEKS                       R14 R2 K38 ["input"]
      117 MOVE                             R15 R3
      118 CALL                             R14 1 1
      119 SETTABLEKS                       R14 R13 K36 ["Input"]
      121 CALL                             R10 3 1
      122 SETTABLEKS                       R10 R9 K17 ["InputWrapper"]
      124 GETTABLEKS                       R11 R2 K39 ["hint"]
      126 JUMPIFNOT                        R11 ; [+24]
      127 GETUPVAL                         R10 2
      128 GETTABLEKS                       R10 R10 K4 ["createElement"]
      130 GETUPVAL                         R11 7
      131 DUPTABLE                         R12 K43 [{["text"], ["hasError"], ["LayoutOrder"] = 3, ["testId"]}]
      132 GETTABLEKS                       R13 R2 K39 ["hint"]
      134 SETTABLEKS                       R13 R12 K40 ["text"]
      136 GETTABLEKS                       R13 R2 K41 ["hasError"]
      138 SETTABLEKS                       R13 R12 K41 ["hasError"]
      140 LOADK                            R14 K44 ["%*--hint"]
      141 GETTABLEKS                       R16 R2 K28 ["testId"]
      143 NAMECALL                         R14 R14 K31 ["format"]
      145 CALL                             R14 2 1
      146 MOVE                             R13 R14
      147 SETTABLEKS                       R13 R12 K28 ["testId"]
      149 CALL                             R10 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R10
      152 SETTABLEKS                       R10 R9 K18 ["Hint"]
      154 CALL                             R6 3 -1
      155 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K10 ["Components"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["InputLabel"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["HintText"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R4 K13 ["View"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R4 K14 ["Types"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K7 ["Utility"]
       47 GETTABLEKS                       R10 R10 K15 ["withDefaults"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K7 ["Utility"]
       54 GETTABLEKS                       R11 R11 K16 ["withCommonProps"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K17 ["Enums"]
       61 GETTABLEKS                       R12 R12 K18 ["InputLabelSize"]
       63 CALL                             R11 1 1
       64 DUPTABLE                         R12 K23 [{["width"], ["size"], ["testId"] = "--foundation-input-field"}]
       65 GETIMPORT                        R13 K26 [UDim.new]
       67 LOADN                            R14 0
       68 LOADN                            R15 400
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K19 ["width"]
       72 GETTABLEKS                       R13 R11 K27 ["Small"]
       74 SETTABLEKS                       R13 R12 K20 ["size"]
       76 DUPCLOSURE                       R13 K28 [PROTO_3]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 GETTABLEKS                       R14 R3 K29 ["memo"]
       87 GETTABLEKS                       R15 R3 K30 ["forwardRef"]
       89 MOVE                             R16 R13
       90 CALL                             R15 1 -1
       91 CALL                             R14 -1 -1
       92 RETURN                           R14 -1
