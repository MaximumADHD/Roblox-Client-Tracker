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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["focus"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 GETTABLEKS                       R0 R0 K1 ["focus"]
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
        5 GETTABLEKS                       R6 R0 K4 ["UserInputType"]
        7 GETTABLEKS                       R6 R6 K5 ["Name"]
        9 NAMECALL                         R4 R4 K6 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K7 ["no input object"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useBinding"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 NEWCLOSURE                       R7 P1
       17 CAPTURE                          VAL R5
       18 DUPCLOSURE                       R8 K4 [PROTO_2]
       19 DUPCLOSURE                       R9 K5 [PROTO_3]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K6 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K9 [{["tag"] = "col gap-large auto-xy padding-xlarge"}]
       25 DUPTABLE                         R13 K13 [{"SearchInput", "Output", "FocusButton"}]
       26 GETUPVAL                         R14 0
       27 GETTABLEKS                       R14 R14 K6 ["createElement"]
       29 GETUPVAL                         R15 3
       30 DUPTABLE                         R16 K29 [{["LayoutOrder"] = 1, ["text"], ["placeholder"], ["hasClearButton"], ["hasError"], ["isDisabled"], ["shape"], ["variant"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["size"], ["width"], ["ref"]}]
       31 SETTABLEKS                       R2 R16 K16 ["text"]
       33 GETTABLEKS                       R18 R1 K17 ["placeholder"]
       35 JUMPIFNOTEQKS                    R18 K2 [""] ; [+3]
       37 LOADNIL                          R17
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R17 R1 K17 ["placeholder"]
       41 SETTABLEKS                       R17 R16 K17 ["placeholder"]
       43 GETTABLEKS                       R18 R1 K18 ["hasClearButton"]
       45 GETUPVAL                         R19 0
       46 GETTABLEKS                       R19 R19 K30 ["None"]
       48 JUMPIFEQ                         R18 R19 ; [+4]
       50 GETTABLEKS                       R17 R1 K18 ["hasClearButton"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R17
       54 SETTABLEKS                       R17 R16 K18 ["hasClearButton"]
       56 GETTABLEKS                       R17 R1 K19 ["hasError"]
       58 SETTABLEKS                       R17 R16 K19 ["hasError"]
       60 GETTABLEKS                       R17 R1 K20 ["isDisabled"]
       62 SETTABLEKS                       R17 R16 K20 ["isDisabled"]
       64 GETTABLEKS                       R17 R1 K21 ["shape"]
       66 SETTABLEKS                       R17 R16 K21 ["shape"]
       68 GETTABLEKS                       R17 R1 K22 ["variant"]
       70 SETTABLEKS                       R17 R16 K22 ["variant"]
       72 SETTABLEKS                       R6 R16 K23 ["onChanged"]
       74 SETTABLEKS                       R8 R16 K24 ["onFocusGained"]
       76 SETTABLEKS                       R9 R16 K25 ["onFocusLost"]
       78 GETTABLEKS                       R17 R1 K26 ["size"]
       80 SETTABLEKS                       R17 R16 K26 ["size"]
       82 GETTABLEKS                       R18 R1 K27 ["width"]
       84 JUMPIFNOTEQKN                    R18 K31 [0] ; [+3]
       86 LOADNIL                          R17
       87 JUMP                             ; [+6]
       88 GETIMPORT                        R17 K34 [UDim.new]
       90 LOADN                            R18 0
       91 GETTABLEKS                       R19 R1 K27 ["width"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K27 ["width"]
       96 SETTABLEKS                       R5 R16 K28 ["ref"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K10 ["SearchInput"]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K6 ["createElement"]
      104 GETUPVAL                         R15 4
      105 DUPTABLE                         R16 K39 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      106 SETTABLEKS                       R2 R16 K36 ["Text"]
      108 GETTABLEKS                       R17 R4 K40 ["Color"]
      110 GETTABLEKS                       R17 R17 K41 ["System"]
      112 GETTABLEKS                       R17 R17 K42 ["Alert"]
      114 SETTABLEKS                       R17 R16 K37 ["textStyle"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K11 ["Output"]
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K6 ["createElement"]
      122 GETUPVAL                         R15 5
      123 DUPTABLE                         R16 K46 [{["LayoutOrder"] = 3, ["text"] = "Focus SearchInput", ["onActivated"], ["variant"]}]
      124 SETTABLEKS                       R7 R16 K45 ["onActivated"]
      126 GETUPVAL                         R17 6
      127 GETTABLEKS                       R17 R17 K47 ["Standard"]
      129 SETTABLEKS                       R17 R16 K22 ["variant"]
      131 CALL                             R14 2 1
      132 SETTABLEKS                       R14 R13 K12 ["FocusButton"]
      134 CALL                             R10 3 -1
      135 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controls"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["join"]
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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Providers"]
       37 GETTABLEKS                       R7 R7 K13 ["Style"]
       39 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R8 K15 ["Button"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R11 K19 ["InputVariant"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["SearchInputShape"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Components"]
       81 GETTABLEKS                       R13 R13 K21 ["SearchInput"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K22 [PROTO_4]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 DUPTABLE                         R14 K27 [{["summary"] = "Search input field with leading search icon", ["stories"], ["controls"]}]
       93 GETTABLEKS                       R15 R2 K28 ["map"]
       95 NEWTABLE                         R16 0 3
       97 GETTABLEKS                       R17 R10 K29 ["Standard"]
       99 GETTABLEKS                       R18 R10 K30 ["Contrast"]
      101 GETTABLEKS                       R19 R10 K31 ["Utility"]
      103 SETLIST                          R16 R17 3 [1]
      105 DUPCLOSURE                       R17 K32 [PROTO_6]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R2
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K25 ["stories"]
      112 DUPTABLE                         R15 K43 [{["hasError"] = False, ["isDisabled"] = False, ["hasClearButton"], ["size"], ["shape"], ["width"] = 0, ["placeholder"] = ""}]
      113 NEWTABLE                         R16 0 3
      115 GETTABLEKS                       R17 R3 K44 ["None"]
      117 LOADB                            R18 0
      118 LOADB                            R19 1
      119 SETLIST                          R16 R17 3 [1]
      121 SETTABLEKS                       R16 R15 K36 ["hasClearButton"]
      123 GETTABLEKS                       R16 R2 K45 ["values"]
      125 MOVE                             R17 R9
      126 CALL                             R16 1 1
      127 SETTABLEKS                       R16 R15 K37 ["size"]
      129 GETTABLEKS                       R16 R2 K45 ["values"]
      131 MOVE                             R17 R11
      132 CALL                             R16 1 1
      133 SETTABLEKS                       R16 R15 K38 ["shape"]
      135 SETTABLEKS                       R15 R14 K26 ["controls"]
      137 RETURN                           R14 1
