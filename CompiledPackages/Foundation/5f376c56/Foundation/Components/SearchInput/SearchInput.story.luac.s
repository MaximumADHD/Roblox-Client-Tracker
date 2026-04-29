PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["[SearchInput] query changed: \"%*\""]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["focus"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 GETTABLEKS                       R0 R1 K1 ["focus"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["[SearchInput] focus gained!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["[SearchInput] focus lost!"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 LOADK                            R4 K3 ["InputObject: %*"]
        5 GETTABLEKS                       R7 R0 K4 ["UserInputType"]
        7 GETTABLEKS                       R6 R7 K5 ["Name"]
        9 NAMECALL                         R4 R4 K6 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K7 ["no input object"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useBinding"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 NEWCLOSURE                       R7 P1
       17 CAPTURE                          VAL R5
       18 DUPCLOSURE                       R8 K4 [PROTO_2]
       19 DUPCLOSURE                       R9 K5 [PROTO_3]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K6 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K8 [{"tag"}]
       25 LOADK                            R13 K9 ["col gap-large auto-xy padding-xlarge"]
       26 SETTABLEKS                       R13 R12 K7 ["tag"]
       28 DUPTABLE                         R13 K13 [{"SearchInput", "Output", "FocusButton"}]
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R14 R15 K6 ["createElement"]
       32 GETUPVAL                         R15 3
       33 DUPTABLE                         R16 K28 [{"LayoutOrder", "text", "placeholder", "hasClearButton", "hasError", "isDisabled", "shape", "variant", "onChanged", "onFocusGained", "onFocusLost", "size", "width", "ref"}]
       34 LOADN                            R17 1
       35 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       37 SETTABLEKS                       R2 R16 K15 ["text"]
       39 GETTABLEKS                       R18 R1 K16 ["placeholder"]
       41 JUMPIFNOTEQKS                    R18 K2 [""] ; [+3]
       43 LOADNIL                          R17
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R17 R1 K16 ["placeholder"]
       47 SETTABLEKS                       R17 R16 K16 ["placeholder"]
       49 GETUPVAL                         R19 4
       50 GETTABLEKS                       R18 R19 K29 ["FoundationInternalTextInputClearButton"]
       52 JUMPIFNOT                        R18 ; [+12]
       53 GETTABLEKS                       R18 R1 K17 ["hasClearButton"]
       55 GETUPVAL                         R20 0
       56 GETTABLEKS                       R19 R20 K30 ["None"]
       58 JUMPIFEQ                         R18 R19 ; [+4]
       60 GETTABLEKS                       R17 R1 K17 ["hasClearButton"]
       62 JUMP                             ; [+3]
       63 LOADNIL                          R17
       64 JUMP                             ; [+1]
       65 LOADNIL                          R17
       66 SETTABLEKS                       R17 R16 K17 ["hasClearButton"]
       68 GETTABLEKS                       R17 R1 K18 ["hasError"]
       70 SETTABLEKS                       R17 R16 K18 ["hasError"]
       72 GETTABLEKS                       R17 R1 K19 ["isDisabled"]
       74 SETTABLEKS                       R17 R16 K19 ["isDisabled"]
       76 GETTABLEKS                       R17 R1 K20 ["shape"]
       78 SETTABLEKS                       R17 R16 K20 ["shape"]
       80 GETTABLEKS                       R17 R1 K21 ["variant"]
       82 SETTABLEKS                       R17 R16 K21 ["variant"]
       84 SETTABLEKS                       R6 R16 K22 ["onChanged"]
       86 SETTABLEKS                       R8 R16 K23 ["onFocusGained"]
       88 SETTABLEKS                       R9 R16 K24 ["onFocusLost"]
       90 GETTABLEKS                       R17 R1 K25 ["size"]
       92 SETTABLEKS                       R17 R16 K25 ["size"]
       94 GETTABLEKS                       R18 R1 K26 ["width"]
       96 JUMPIFNOTEQKN                    R18 K31 [0] ; [+3]
       98 LOADNIL                          R17
       99 JUMP                             ; [+6]
      100 GETIMPORT                        R17 K34 [UDim.new]
      102 LOADN                            R18 0
      103 GETTABLEKS                       R19 R1 K26 ["width"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K26 ["width"]
      108 SETTABLEKS                       R5 R16 K27 ["ref"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K10 ["SearchInput"]
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R14 R15 K6 ["createElement"]
      116 GETUPVAL                         R15 5
      117 DUPTABLE                         R16 K37 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      118 LOADN                            R17 2
      119 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      121 SETTABLEKS                       R2 R16 K35 ["Text"]
      123 GETTABLEKS                       R19 R4 K38 ["Color"]
      125 GETTABLEKS                       R18 R19 K39 ["System"]
      127 GETTABLEKS                       R17 R18 K40 ["Alert"]
      129 SETTABLEKS                       R17 R16 K36 ["textStyle"]
      131 LOADK                            R17 K41 ["auto-xy"]
      132 SETTABLEKS                       R17 R16 K7 ["tag"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K11 ["Output"]
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R14 R15 K6 ["createElement"]
      140 GETUPVAL                         R15 6
      141 DUPTABLE                         R16 K43 [{"LayoutOrder", "text", "onActivated", "variant"}]
      142 LOADN                            R17 3
      143 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      145 LOADK                            R17 K44 ["Focus SearchInput"]
      146 SETTABLEKS                       R17 R16 K15 ["text"]
      148 SETTABLEKS                       R7 R16 K42 ["onActivated"]
      150 GETUPVAL                         R18 7
      151 GETTABLEKS                       R17 R18 K45 ["Standard"]
      153 SETTABLEKS                       R17 R16 K21 ["variant"]
      155 CALL                             R14 2 1
      156 SETTABLEKS                       R14 R13 K12 ["FocusButton"]
      158 CALL                             R10 3 -1
      159 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controls"}]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K1 ["join"]
       12 GETTABLEKS                       R7 R0 K2 ["controls"]
       14 DUPTABLE                         R8 K5 [{"variant"}]
       15 GETUPVAL                         R9 3
       16 SETTABLEKS                       R9 R8 K4 ["variant"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K2 ["controls"]
       21 CALL                             R3 2 -1
       22 CALL                             R1 -1 -1
       23 RETURN                           R1 -1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Providers"]
       44 GETTABLEKS                       R9 R10 K15 ["Style"]
       46 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Components"]
       53 GETTABLEKS                       R9 R10 K17 ["Button"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Enums"]
       60 GETTABLEKS                       R10 R11 K19 ["ButtonVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Enums"]
       67 GETTABLEKS                       R11 R12 K20 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K18 ["Enums"]
       74 GETTABLEKS                       R12 R13 K21 ["InputVariant"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K18 ["Enums"]
       81 GETTABLEKS                       R13 R14 K22 ["SearchInputShape"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K11 ["Components"]
       88 GETTABLEKS                       R14 R15 K23 ["SearchInput"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_4]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 DUPTABLE                         R15 K28 [{"summary", "stories", "controls"}]
      101 LOADK                            R16 K29 ["Search input field with leading search icon"]
      102 SETTABLEKS                       R16 R15 K25 ["summary"]
      104 GETTABLEKS                       R16 R2 K30 ["map"]
      106 NEWTABLE                         R17 0 3
      108 GETTABLEKS                       R18 R11 K31 ["Standard"]
      110 GETTABLEKS                       R19 R11 K32 ["Contrast"]
      112 GETTABLEKS                       R20 R11 K9 ["Utility"]
      114 SETLIST                          R17 R18 3 [1]
      116 DUPCLOSURE                       R18 K33 [PROTO_6]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R2
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K26 ["stories"]
      123 DUPTABLE                         R16 K41 [{"hasError", "isDisabled", "hasClearButton", "size", "shape", "width", "placeholder"}]
      124 LOADB                            R17 0
      125 SETTABLEKS                       R17 R16 K34 ["hasError"]
      127 LOADB                            R17 0
      128 SETTABLEKS                       R17 R16 K35 ["isDisabled"]
      130 GETTABLEKS                       R18 R4 K42 ["FoundationInternalTextInputClearButton"]
      132 JUMPIFNOT                        R18 ; [+9]
      133 NEWTABLE                         R17 0 3
      135 GETTABLEKS                       R18 R3 K43 ["None"]
      137 LOADB                            R19 0
      138 LOADB                            R20 1
      139 SETLIST                          R17 R18 3 [1]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R17
      143 SETTABLEKS                       R17 R16 K36 ["hasClearButton"]
      145 GETTABLEKS                       R17 R2 K44 ["values"]
      147 MOVE                             R18 R10
      148 CALL                             R17 1 1
      149 SETTABLEKS                       R17 R16 K37 ["size"]
      151 GETTABLEKS                       R17 R2 K44 ["values"]
      153 MOVE                             R18 R12
      154 CALL                             R17 1 1
      155 SETTABLEKS                       R17 R16 K38 ["shape"]
      157 LOADN                            R17 0
      158 SETTABLEKS                       R17 R16 K39 ["width"]
      160 LOADK                            R17 K45 [""]
      161 SETTABLEKS                       R17 R16 K40 ["placeholder"]
      163 SETTABLEKS                       R16 R15 K27 ["controls"]
      165 RETURN                           R15 1
