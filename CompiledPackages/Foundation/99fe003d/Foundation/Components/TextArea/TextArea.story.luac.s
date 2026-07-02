PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["focus"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R4
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          VAL R5
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K5 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K8 [{["tag"] = "col gap-large auto-xy padding-xlarge"}]
       33 DUPTABLE                         R11 K12 [{"TextArea", "Output", "FocusButton"}]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K5 ["createElement"]
       37 GETUPVAL                         R13 3
       38 DUPTABLE                         R14 K31 [{["LayoutOrder"] = 1, ["hasError"], ["isDisabled"], ["isRequired"], ["resizable"], ["variant"], ["focusBehavior"], ["onChanged"], ["label"], ["hint"], ["size"], ["width"], ["hasClearButton"], ["numLines"], ["placeholder"], ["text"], ["textBoxRef"]}]
       39 GETTABLEKS                       R15 R1 K15 ["hasError"]
       41 SETTABLEKS                       R15 R14 K15 ["hasError"]
       43 GETTABLEKS                       R15 R1 K16 ["isDisabled"]
       45 SETTABLEKS                       R15 R14 K16 ["isDisabled"]
       47 GETTABLEKS                       R15 R1 K17 ["isRequired"]
       49 SETTABLEKS                       R15 R14 K17 ["isRequired"]
       51 GETTABLEKS                       R15 R1 K18 ["resizable"]
       53 SETTABLEKS                       R15 R14 K18 ["resizable"]
       55 GETTABLEKS                       R15 R1 K19 ["variant"]
       57 SETTABLEKS                       R15 R14 K19 ["variant"]
       59 GETTABLEKS                       R16 R1 K20 ["focusBehavior"]
       61 GETUPVAL                         R17 1
       62 GETTABLEKS                       R17 R17 K32 ["None"]
       64 JUMPIFEQ                         R16 R17 ; [+4]
       66 GETTABLEKS                       R15 R1 K20 ["focusBehavior"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R15
       70 SETTABLEKS                       R15 R14 K20 ["focusBehavior"]
       72 SETTABLEKS                       R6 R14 K21 ["onChanged"]
       74 GETTABLEKS                       R15 R1 K22 ["label"]
       76 SETTABLEKS                       R15 R14 K22 ["label"]
       78 GETTABLEKS                       R15 R1 K23 ["hint"]
       80 SETTABLEKS                       R15 R14 K23 ["hint"]
       82 GETTABLEKS                       R15 R1 K24 ["size"]
       84 SETTABLEKS                       R15 R14 K24 ["size"]
       86 GETTABLEKS                       R16 R1 K25 ["width"]
       88 JUMPIFNOTEQKN                    R16 K33 [0] ; [+3]
       90 LOADNIL                          R15
       91 JUMP                             ; [+6]
       92 GETIMPORT                        R15 K36 [UDim.new]
       94 LOADN                            R16 0
       95 GETTABLEKS                       R17 R1 K25 ["width"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K25 ["width"]
      100 GETTABLEKS                       R16 R1 K26 ["hasClearButton"]
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K32 ["None"]
      105 JUMPIFNOTEQ                      R16 R17 ; [+3]
      107 LOADNIL                          R15
      108 JUMP                             ; [+2]
      109 GETTABLEKS                       R15 R1 K26 ["hasClearButton"]
      111 SETTABLEKS                       R15 R14 K26 ["hasClearButton"]
      113 GETTABLEKS                       R15 R1 K27 ["numLines"]
      115 SETTABLEKS                       R15 R14 K27 ["numLines"]
      117 GETTABLEKS                       R15 R1 K28 ["placeholder"]
      119 SETTABLEKS                       R15 R14 K28 ["placeholder"]
      121 SETTABLEKS                       R3 R14 K29 ["text"]
      123 SETTABLEKS                       R5 R14 K30 ["textBoxRef"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      128 GETUPVAL                         R12 1
      129 GETTABLEKS                       R12 R12 K5 ["createElement"]
      131 GETUPVAL                         R13 4
      132 DUPTABLE                         R14 K41 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left"}]
      133 SETTABLEKS                       R3 R14 K38 ["Text"]
      135 GETTABLEKS                       R15 R2 K42 ["Color"]
      137 GETTABLEKS                       R15 R15 K43 ["System"]
      139 GETTABLEKS                       R15 R15 K44 ["Alert"]
      141 SETTABLEKS                       R15 R14 K39 ["textStyle"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K10 ["Output"]
      146 GETUPVAL                         R12 1
      147 GETTABLEKS                       R12 R12 K5 ["createElement"]
      149 GETUPVAL                         R13 5
      150 DUPTABLE                         R14 K48 [{["LayoutOrder"] = 3, ["text"] = "Focus TextArea", ["onActivated"], ["variant"]}]
      151 SETTABLEKS                       R7 R14 K47 ["onActivated"]
      153 GETUPVAL                         R15 6
      154 GETTABLEKS                       R15 R15 K49 ["Standard"]
      156 SETTABLEKS                       R15 R14 K19 ["variant"]
      158 CALL                             R12 2 1
      159 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      161 CALL                             R8 3 -1
      162 RETURN                           R8 -1

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
       60 GETTABLEKS                       R10 R10 K18 ["InputFocusBehavior"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["InputVariant"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Components"]
       81 GETTABLEKS                       R13 R13 K21 ["TextArea"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K22 [PROTO_2]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 DUPTABLE                         R14 K26 [{["summary"] = "TextArea", ["story"], ["controls"]}]
       93 SETTABLEKS                       R13 R14 K24 ["story"]
       95 DUPTABLE                         R15 K45 [{["hasError"] = False, ["isDisabled"] = False, ["numLines"] = 4, ["variant"], ["focusBehavior"], ["hasClearButton"], ["width"] = 0, ["size"], ["label"] = "Biography", ["hint"] = "1000 characters maximum", ["placeholder"] = "Tell us your life story!", ["isRequired"]}]
       96 GETTABLEKS                       R16 R2 K46 ["values"]
       98 MOVE                             R17 R11
       99 CALL                             R16 1 1
      100 SETTABLEKS                       R16 R15 K32 ["variant"]
      102 NEWTABLE                         R16 0 2
      104 GETTABLEKS                       R17 R3 K47 ["None"]
      106 GETTABLEKS                       R19 R2 K46 ["values"]
      108 MOVE                             R20 R9
      109 CALL                             R19 1 -1
      110 FASTCALL                         TABLE_UNPACK ; [+2]
      111 GETIMPORT                        R18 K49 [unpack]
      113 CALL                             R18 -1 -1
      114 SETLIST                          R16 R17 -1 [1]
      116 SETTABLEKS                       R16 R15 K33 ["focusBehavior"]
      118 NEWTABLE                         R16 0 3
      120 GETTABLEKS                       R17 R3 K47 ["None"]
      122 LOADB                            R18 0
      123 LOADB                            R19 1
      124 SETLIST                          R16 R17 3 [1]
      126 SETTABLEKS                       R16 R15 K34 ["hasClearButton"]
      128 GETTABLEKS                       R16 R2 K46 ["values"]
      130 MOVE                             R17 R10
      131 CALL                             R16 1 1
      132 SETTABLEKS                       R16 R15 K37 ["size"]
      134 NEWTABLE                         R16 0 3
      136 GETTABLEKS                       R17 R3 K47 ["None"]
      138 LOADB                            R18 0
      139 LOADB                            R19 1
      140 SETLIST                          R16 R17 3 [1]
      142 SETTABLEKS                       R16 R15 K44 ["isRequired"]
      144 SETTABLEKS                       R15 R14 K25 ["controls"]
      146 RETURN                           R14 1
