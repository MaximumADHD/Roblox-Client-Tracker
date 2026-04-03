PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["focus"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useState"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R4
       19 CALL                             R6 1 1
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          VAL R5
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K5 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K7 [{"tag"}]
       33 LOADK                            R11 K8 ["col gap-large auto-xy padding-xlarge"]
       34 SETTABLEKS                       R11 R10 K6 ["tag"]
       36 DUPTABLE                         R11 K12 [{"TextArea", "Output", "FocusButton"}]
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R12 R13 K5 ["createElement"]
       40 GETUPVAL                         R13 3
       41 DUPTABLE                         R14 K27 [{"LayoutOrder", "hasError", "isDisabled", "isRequired", "resizable", "onChanged", "label", "hint", "size", "width", "numLines", "placeholder", "text", "textBoxRef"}]
       42 LOADN                            R15 1
       43 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       45 GETTABLEKS                       R15 R1 K14 ["hasError"]
       47 SETTABLEKS                       R15 R14 K14 ["hasError"]
       49 GETTABLEKS                       R15 R1 K15 ["isDisabled"]
       51 SETTABLEKS                       R15 R14 K15 ["isDisabled"]
       53 GETTABLEKS                       R15 R1 K16 ["isRequired"]
       55 SETTABLEKS                       R15 R14 K16 ["isRequired"]
       57 GETTABLEKS                       R15 R1 K17 ["resizable"]
       59 SETTABLEKS                       R15 R14 K17 ["resizable"]
       61 SETTABLEKS                       R6 R14 K18 ["onChanged"]
       63 GETTABLEKS                       R15 R1 K19 ["label"]
       65 SETTABLEKS                       R15 R14 K19 ["label"]
       67 GETTABLEKS                       R15 R1 K20 ["hint"]
       69 SETTABLEKS                       R15 R14 K20 ["hint"]
       71 GETTABLEKS                       R15 R1 K21 ["size"]
       73 SETTABLEKS                       R15 R14 K21 ["size"]
       75 GETUPVAL                         R17 4
       76 GETTABLEKS                       R16 R17 K28 ["FoundationTextAreaTokenBasedWidth"]
       78 JUMPIFNOT                        R16 ; [+6]
       79 GETTABLEKS                       R16 R1 K22 ["width"]
       81 JUMPIFNOTEQKN                    R16 K29 [0] ; [+3]
       83 LOADNIL                          R15
       84 JUMP                             ; [+6]
       85 GETIMPORT                        R15 K32 [UDim.new]
       87 LOADN                            R16 0
       88 GETTABLEKS                       R17 R1 K22 ["width"]
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K22 ["width"]
       93 GETTABLEKS                       R15 R1 K23 ["numLines"]
       95 SETTABLEKS                       R15 R14 K23 ["numLines"]
       97 GETTABLEKS                       R15 R1 K24 ["placeholder"]
       99 SETTABLEKS                       R15 R14 K24 ["placeholder"]
      101 SETTABLEKS                       R3 R14 K25 ["text"]
      103 SETTABLEKS                       R5 R14 K26 ["textBoxRef"]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R12 R13 K5 ["createElement"]
      111 GETUPVAL                         R13 5
      112 DUPTABLE                         R14 K35 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      113 LOADN                            R15 2
      114 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      116 SETTABLEKS                       R3 R14 K33 ["Text"]
      118 GETTABLEKS                       R17 R2 K36 ["Color"]
      120 GETTABLEKS                       R16 R17 K37 ["System"]
      122 GETTABLEKS                       R15 R16 K38 ["Alert"]
      124 SETTABLEKS                       R15 R14 K34 ["textStyle"]
      126 LOADK                            R15 K39 ["auto-y size-full-0 text-wrap text-align-x-left"]
      127 SETTABLEKS                       R15 R14 K6 ["tag"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K10 ["Output"]
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R12 R13 K5 ["createElement"]
      135 GETUPVAL                         R13 6
      136 DUPTABLE                         R14 K42 [{"LayoutOrder", "text", "onActivated", "variant"}]
      137 LOADN                            R15 3
      138 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      140 LOADK                            R15 K43 ["Focus TextArea"]
      141 SETTABLEKS                       R15 R14 K25 ["text"]
      143 SETTABLEKS                       R7 R14 K40 ["onActivated"]
      145 GETUPVAL                         R16 7
      146 GETTABLEKS                       R15 R16 K44 ["Standard"]
      148 SETTABLEKS                       R15 R14 K41 ["variant"]
      150 CALL                             R12 2 1
      151 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1

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
       65 GETTABLEKS                       R12 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R12 K19 ["TextArea"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Utility"]
       74 GETTABLEKS                       R12 R13 K21 ["Flags"]
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
       86 DUPTABLE                         R13 K26 [{"summary", "story", "controls"}]
       87 LOADK                            R14 K19 ["TextArea"]
       88 SETTABLEKS                       R14 R13 K23 ["summary"]
       90 SETTABLEKS                       R12 R13 K24 ["story"]
       92 DUPTABLE                         R14 K36 [{"hasError", "isDisabled", "numLines", "width", "size", "label", "hint", "placeholder", "isRequired"}]
       93 LOADB                            R15 0
       94 SETTABLEKS                       R15 R14 K27 ["hasError"]
       96 LOADB                            R15 0
       97 SETTABLEKS                       R15 R14 K28 ["isDisabled"]
       99 LOADN                            R15 4
      100 SETTABLEKS                       R15 R14 K29 ["numLines"]
      102 GETTABLEKS                       R16 R11 K37 ["FoundationTextAreaTokenBasedWidth"]
      104 JUMPIFNOT                        R16 ; [+2]
      105 LOADN                            R15 0
      106 JUMP                             ; [+1]
      107 LOADN                            R15 144
      108 SETTABLEKS                       R15 R14 K30 ["width"]
      110 GETTABLEKS                       R15 R2 K38 ["values"]
      112 MOVE                             R16 R9
      113 CALL                             R15 1 1
      114 SETTABLEKS                       R15 R14 K31 ["size"]
      116 LOADK                            R15 K39 ["Biography"]
      117 SETTABLEKS                       R15 R14 K32 ["label"]
      119 LOADK                            R15 K40 ["1000 characters maximum"]
      120 SETTABLEKS                       R15 R14 K33 ["hint"]
      122 LOADK                            R15 K41 ["Tell us your life story!"]
      123 SETTABLEKS                       R15 R14 K34 ["placeholder"]
      125 NEWTABLE                         R15 0 3
      127 GETTABLEKS                       R16 R3 K42 ["None"]
      129 LOADB                            R17 0
      130 LOADB                            R18 1
      131 SETLIST                          R15 R16 3 [1]
      133 SETTABLEKS                       R15 R14 K35 ["isRequired"]
      135 SETTABLEKS                       R14 R13 K25 ["controls"]
      137 RETURN                           R13 1
