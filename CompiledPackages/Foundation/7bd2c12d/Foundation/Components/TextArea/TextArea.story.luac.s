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
       38 DUPTABLE                         R14 K28 [{["LayoutOrder"] = 1, ["hasError"], ["isDisabled"], ["isRequired"], ["resizable"], ["onChanged"], ["label"], ["hint"], ["size"], ["width"], ["numLines"], ["placeholder"], ["text"], ["textBoxRef"]}]
       39 GETTABLEKS                       R15 R1 K15 ["hasError"]
       41 SETTABLEKS                       R15 R14 K15 ["hasError"]
       43 GETTABLEKS                       R15 R1 K16 ["isDisabled"]
       45 SETTABLEKS                       R15 R14 K16 ["isDisabled"]
       47 GETTABLEKS                       R15 R1 K17 ["isRequired"]
       49 SETTABLEKS                       R15 R14 K17 ["isRequired"]
       51 GETTABLEKS                       R15 R1 K18 ["resizable"]
       53 SETTABLEKS                       R15 R14 K18 ["resizable"]
       55 SETTABLEKS                       R6 R14 K19 ["onChanged"]
       57 GETTABLEKS                       R15 R1 K20 ["label"]
       59 SETTABLEKS                       R15 R14 K20 ["label"]
       61 GETTABLEKS                       R15 R1 K21 ["hint"]
       63 SETTABLEKS                       R15 R14 K21 ["hint"]
       65 GETTABLEKS                       R15 R1 K22 ["size"]
       67 SETTABLEKS                       R15 R14 K22 ["size"]
       69 GETUPVAL                         R16 4
       70 GETTABLEKS                       R16 R16 K29 ["FoundationTextAreaTokenBasedWidth"]
       72 JUMPIFNOT                        R16 ; [+6]
       73 GETTABLEKS                       R16 R1 K23 ["width"]
       75 JUMPIFNOTEQKN                    R16 K30 [0] ; [+3]
       77 LOADNIL                          R15
       78 JUMP                             ; [+6]
       79 GETIMPORT                        R15 K33 [UDim.new]
       81 LOADN                            R16 0
       82 GETTABLEKS                       R17 R1 K23 ["width"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K23 ["width"]
       87 GETTABLEKS                       R15 R1 K24 ["numLines"]
       89 SETTABLEKS                       R15 R14 K24 ["numLines"]
       91 GETTABLEKS                       R15 R1 K25 ["placeholder"]
       93 SETTABLEKS                       R15 R14 K25 ["placeholder"]
       95 SETTABLEKS                       R3 R14 K26 ["text"]
       97 SETTABLEKS                       R5 R14 K27 ["textBoxRef"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R12 R12 K5 ["createElement"]
      105 GETUPVAL                         R13 5
      106 DUPTABLE                         R14 K38 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "auto-y size-full-0 text-wrap text-align-x-left"}]
      107 SETTABLEKS                       R3 R14 K35 ["Text"]
      109 GETTABLEKS                       R15 R2 K39 ["Color"]
      111 GETTABLEKS                       R15 R15 K40 ["System"]
      113 GETTABLEKS                       R15 R15 K41 ["Alert"]
      115 SETTABLEKS                       R15 R14 K36 ["textStyle"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K10 ["Output"]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R12 R12 K5 ["createElement"]
      123 GETUPVAL                         R13 6
      124 DUPTABLE                         R14 K46 [{["LayoutOrder"] = 3, ["text"] = "Focus TextArea", ["onActivated"], ["variant"]}]
      125 SETTABLEKS                       R7 R14 K44 ["onActivated"]
      127 GETUPVAL                         R15 7
      128 GETTABLEKS                       R15 R15 K47 ["Standard"]
      130 SETTABLEKS                       R15 R14 K45 ["variant"]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      135 CALL                             R8 3 -1
      136 RETURN                           R8 -1

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
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R11 K19 ["TextArea"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Utility"]
       74 GETTABLEKS                       R12 R12 K21 ["Flags"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K22 [PROTO_2]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 DUPTABLE                         R13 K26 [{["summary"] = "TextArea", ["story"], ["controls"]}]
       87 SETTABLEKS                       R12 R13 K24 ["story"]
       89 DUPTABLE                         R14 K41 [{["hasError"] = False, ["isDisabled"] = False, ["numLines"] = 4, ["width"], ["size"], ["label"] = "Biography", ["hint"] = "1000 characters maximum", ["placeholder"] = "Tell us your life story!", ["isRequired"]}]
       90 GETTABLEKS                       R16 R11 K42 ["FoundationTextAreaTokenBasedWidth"]
       92 JUMPIFNOT                        R16 ; [+2]
       93 LOADN                            R15 0
       94 JUMP                             ; [+1]
       95 LOADN                            R15 400
       96 SETTABLEKS                       R15 R14 K32 ["width"]
       98 GETTABLEKS                       R15 R2 K43 ["values"]
      100 MOVE                             R16 R9
      101 CALL                             R15 1 1
      102 SETTABLEKS                       R15 R14 K33 ["size"]
      104 NEWTABLE                         R15 0 3
      106 GETTABLEKS                       R16 R3 K44 ["None"]
      108 LOADB                            R17 0
      109 LOADB                            R18 1
      110 SETLIST                          R15 R16 3 [1]
      112 SETTABLEKS                       R15 R14 K40 ["isRequired"]
      114 SETTABLEKS                       R14 R13 K25 ["controls"]
      116 RETURN                           R13 1
