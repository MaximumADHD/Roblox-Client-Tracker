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
       33 DUPTABLE                         R16 K27 [{"LayoutOrder", "text", "placeholder", "hasError", "isDisabled", "shape", "variant", "onChanged", "onFocusGained", "onFocusLost", "size", "width", "ref"}]
       34 LOADN                            R17 1
       35 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       37 SETTABLEKS                       R2 R16 K15 ["text"]
       39 GETTABLEKS                       R18 R1 K16 ["placeholder"]
       41 JUMPIFNOTEQKS                    R18 K2 [""] ; [+3]
       43 LOADNIL                          R17
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R17 R1 K16 ["placeholder"]
       47 SETTABLEKS                       R17 R16 K16 ["placeholder"]
       49 GETTABLEKS                       R17 R1 K17 ["hasError"]
       51 SETTABLEKS                       R17 R16 K17 ["hasError"]
       53 GETTABLEKS                       R17 R1 K18 ["isDisabled"]
       55 SETTABLEKS                       R17 R16 K18 ["isDisabled"]
       57 GETTABLEKS                       R17 R1 K19 ["shape"]
       59 SETTABLEKS                       R17 R16 K19 ["shape"]
       61 GETTABLEKS                       R17 R1 K20 ["variant"]
       63 SETTABLEKS                       R17 R16 K20 ["variant"]
       65 SETTABLEKS                       R6 R16 K21 ["onChanged"]
       67 SETTABLEKS                       R8 R16 K22 ["onFocusGained"]
       69 SETTABLEKS                       R9 R16 K23 ["onFocusLost"]
       71 GETTABLEKS                       R17 R1 K24 ["size"]
       73 SETTABLEKS                       R17 R16 K24 ["size"]
       75 GETTABLEKS                       R18 R1 K25 ["width"]
       77 JUMPIFNOTEQKN                    R18 K28 [0] ; [+3]
       79 LOADNIL                          R17
       80 JUMP                             ; [+6]
       81 GETIMPORT                        R17 K31 [UDim.new]
       83 LOADN                            R18 0
       84 GETTABLEKS                       R19 R1 K25 ["width"]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K25 ["width"]
       89 SETTABLEKS                       R5 R16 K26 ["ref"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K10 ["SearchInput"]
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R14 R15 K6 ["createElement"]
       97 GETUPVAL                         R15 4
       98 DUPTABLE                         R16 K34 [{"LayoutOrder", "Text", "textStyle", "tag"}]
       99 LOADN                            R17 2
      100 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      102 SETTABLEKS                       R2 R16 K32 ["Text"]
      104 GETTABLEKS                       R19 R4 K35 ["Color"]
      106 GETTABLEKS                       R18 R19 K36 ["System"]
      108 GETTABLEKS                       R17 R18 K37 ["Alert"]
      110 SETTABLEKS                       R17 R16 K33 ["textStyle"]
      112 LOADK                            R17 K38 ["auto-xy"]
      113 SETTABLEKS                       R17 R16 K7 ["tag"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K11 ["Output"]
      118 GETUPVAL                         R15 0
      119 GETTABLEKS                       R14 R15 K6 ["createElement"]
      121 GETUPVAL                         R15 5
      122 DUPTABLE                         R16 K40 [{"LayoutOrder", "text", "onActivated", "variant"}]
      123 LOADN                            R17 3
      124 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      126 LOADK                            R17 K41 ["Focus SearchInput"]
      127 SETTABLEKS                       R17 R16 K15 ["text"]
      129 SETTABLEKS                       R7 R16 K39 ["onActivated"]
      131 GETUPVAL                         R18 6
      132 GETTABLEKS                       R17 R18 K42 ["Standard"]
      134 SETTABLEKS                       R17 R16 K20 ["variant"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K12 ["FocusButton"]
      139 CALL                             R10 3 -1
      140 RETURN                           R10 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Providers"]
       37 GETTABLEKS                       R8 R9 K13 ["Style"]
       39 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R9 K15 ["Button"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R10 K17 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R12 K19 ["InputVariant"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K16 ["Enums"]
       74 GETTABLEKS                       R12 R13 K20 ["SearchInputShape"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K9 ["Components"]
       81 GETTABLEKS                       R13 R14 K21 ["SearchInput"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K22 [PROTO_4]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 DUPTABLE                         R14 K26 [{"summary", "stories", "controls"}]
       93 LOADK                            R15 K27 ["Search input field with leading search icon"]
       94 SETTABLEKS                       R15 R14 K23 ["summary"]
       96 GETTABLEKS                       R15 R2 K28 ["map"]
       98 NEWTABLE                         R16 0 3
      100 GETTABLEKS                       R17 R10 K29 ["Standard"]
      102 GETTABLEKS                       R18 R10 K30 ["Contrast"]
      104 GETTABLEKS                       R19 R10 K31 ["Utility"]
      106 SETLIST                          R16 R17 3 [1]
      108 DUPCLOSURE                       R17 K32 [PROTO_6]
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R2
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K24 ["stories"]
      115 DUPTABLE                         R15 K39 [{"hasError", "isDisabled", "size", "shape", "width", "placeholder"}]
      116 LOADB                            R16 0
      117 SETTABLEKS                       R16 R15 K33 ["hasError"]
      119 LOADB                            R16 0
      120 SETTABLEKS                       R16 R15 K34 ["isDisabled"]
      122 GETTABLEKS                       R16 R2 K40 ["values"]
      124 MOVE                             R17 R9
      125 CALL                             R16 1 1
      126 SETTABLEKS                       R16 R15 K35 ["size"]
      128 GETTABLEKS                       R16 R2 K40 ["values"]
      130 MOVE                             R17 R11
      131 CALL                             R16 1 1
      132 SETTABLEKS                       R16 R15 K36 ["shape"]
      134 LOADN                            R16 0
      135 SETTABLEKS                       R16 R15 K37 ["width"]
      137 LOADK                            R16 K41 [""]
      138 SETTABLEKS                       R16 R15 K38 ["placeholder"]
      140 SETTABLEKS                       R15 R14 K25 ["controls"]
      142 RETURN                           R14 1
