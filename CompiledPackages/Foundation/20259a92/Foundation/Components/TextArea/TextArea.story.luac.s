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
       41 DUPTABLE                         R14 K28 [{"LayoutOrder", "hasError", "isDisabled", "isRequired", "resizable", "focusBehavior", "onChanged", "label", "hint", "size", "width", "numLines", "placeholder", "text", "textBoxRef"}]
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
       61 GETUPVAL                         R17 4
       62 GETTABLEKS                       R16 R17 K29 ["FoundationTextInputFocusBehavior"]
       64 JUMPIFNOT                        R16 ; [+10]
       65 GETTABLEKS                       R16 R1 K18 ["focusBehavior"]
       67 GETUPVAL                         R18 1
       68 GETTABLEKS                       R17 R18 K30 ["None"]
       70 JUMPIFEQ                         R16 R17 ; [+4]
       72 GETTABLEKS                       R15 R1 K18 ["focusBehavior"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R15
       76 SETTABLEKS                       R15 R14 K18 ["focusBehavior"]
       78 SETTABLEKS                       R6 R14 K19 ["onChanged"]
       80 GETTABLEKS                       R15 R1 K20 ["label"]
       82 SETTABLEKS                       R15 R14 K20 ["label"]
       84 GETTABLEKS                       R15 R1 K21 ["hint"]
       86 SETTABLEKS                       R15 R14 K21 ["hint"]
       88 GETTABLEKS                       R15 R1 K22 ["size"]
       90 SETTABLEKS                       R15 R14 K22 ["size"]
       92 GETTABLEKS                       R16 R1 K23 ["width"]
       94 JUMPIFNOTEQKN                    R16 K31 [0] ; [+3]
       96 LOADNIL                          R15
       97 JUMP                             ; [+6]
       98 GETIMPORT                        R15 K34 [UDim.new]
      100 LOADN                            R16 0
      101 GETTABLEKS                       R17 R1 K23 ["width"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K23 ["width"]
      106 GETTABLEKS                       R15 R1 K24 ["numLines"]
      108 SETTABLEKS                       R15 R14 K24 ["numLines"]
      110 GETTABLEKS                       R15 R1 K25 ["placeholder"]
      112 SETTABLEKS                       R15 R14 K25 ["placeholder"]
      114 SETTABLEKS                       R3 R14 K26 ["text"]
      116 SETTABLEKS                       R5 R14 K27 ["textBoxRef"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R12 R13 K5 ["createElement"]
      124 GETUPVAL                         R13 5
      125 DUPTABLE                         R14 K37 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      126 LOADN                            R15 2
      127 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      129 SETTABLEKS                       R3 R14 K35 ["Text"]
      131 GETTABLEKS                       R17 R2 K38 ["Color"]
      133 GETTABLEKS                       R16 R17 K39 ["System"]
      135 GETTABLEKS                       R15 R16 K40 ["Alert"]
      137 SETTABLEKS                       R15 R14 K36 ["textStyle"]
      139 LOADK                            R15 K41 ["size-full-0 auto-y text-wrap text-align-x-left"]
      140 SETTABLEKS                       R15 R14 K6 ["tag"]
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K10 ["Output"]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R12 R13 K5 ["createElement"]
      148 GETUPVAL                         R13 6
      149 DUPTABLE                         R14 K44 [{"LayoutOrder", "text", "onActivated", "variant"}]
      150 LOADN                            R15 3
      151 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      153 LOADK                            R15 K45 ["Focus TextArea"]
      154 SETTABLEKS                       R15 R14 K26 ["text"]
      156 SETTABLEKS                       R7 R14 K42 ["onActivated"]
      158 GETUPVAL                         R16 7
      159 GETTABLEKS                       R15 R16 K46 ["Standard"]
      161 SETTABLEKS                       R15 R14 K43 ["variant"]
      163 CALL                             R12 2 1
      164 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      166 CALL                             R8 3 -1
      167 RETURN                           R8 -1

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
       67 GETTABLEKS                       R11 R12 K20 ["InputFocusBehavior"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K18 ["Enums"]
       74 GETTABLEKS                       R12 R13 K21 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K11 ["Components"]
       81 GETTABLEKS                       R13 R14 K22 ["TextArea"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K23 [PROTO_2]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 DUPTABLE                         R14 K27 [{"summary", "story", "controls"}]
       94 LOADK                            R15 K22 ["TextArea"]
       95 SETTABLEKS                       R15 R14 K24 ["summary"]
       97 SETTABLEKS                       R13 R14 K25 ["story"]
       99 DUPTABLE                         R15 K38 [{"hasError", "isDisabled", "numLines", "focusBehavior", "width", "size", "label", "hint", "placeholder", "isRequired"}]
      100 LOADB                            R16 0
      101 SETTABLEKS                       R16 R15 K28 ["hasError"]
      103 LOADB                            R16 0
      104 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
      106 LOADN                            R16 4
      107 SETTABLEKS                       R16 R15 K30 ["numLines"]
      109 GETTABLEKS                       R17 R4 K39 ["FoundationTextInputFocusBehavior"]
      111 JUMPIFNOT                        R17 ; [+15]
      112 NEWTABLE                         R16 0 2
      114 GETTABLEKS                       R17 R3 K40 ["None"]
      116 GETTABLEKS                       R19 R2 K41 ["values"]
      118 MOVE                             R20 R10
      119 CALL                             R19 1 -1
      120 FASTCALL                         TABLE_UNPACK ; [+2]
      121 GETIMPORT                        R18 K43 [unpack]
      123 CALL                             R18 -1 -1
      124 SETLIST                          R16 R17 -1 [1]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R16
      128 SETTABLEKS                       R16 R15 K31 ["focusBehavior"]
      130 LOADN                            R16 0
      131 SETTABLEKS                       R16 R15 K32 ["width"]
      133 GETTABLEKS                       R16 R2 K41 ["values"]
      135 MOVE                             R17 R11
      136 CALL                             R16 1 1
      137 SETTABLEKS                       R16 R15 K33 ["size"]
      139 LOADK                            R16 K44 ["Biography"]
      140 SETTABLEKS                       R16 R15 K34 ["label"]
      142 LOADK                            R16 K45 ["1000 characters maximum"]
      143 SETTABLEKS                       R16 R15 K35 ["hint"]
      145 LOADK                            R16 K46 ["Tell us your life story!"]
      146 SETTABLEKS                       R16 R15 K36 ["placeholder"]
      148 NEWTABLE                         R16 0 3
      150 GETTABLEKS                       R17 R3 K40 ["None"]
      152 LOADB                            R18 0
      153 LOADB                            R19 1
      154 SETLIST                          R16 R17 3 [1]
      156 SETTABLEKS                       R16 R15 K37 ["isRequired"]
      158 SETTABLEKS                       R15 R14 K26 ["controls"]
      160 RETURN                           R14 1
