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
       32 DUPTABLE                         R10 K7 [{"tag"}]
       33 LOADK                            R11 K8 ["col gap-large auto-xy padding-xlarge"]
       34 SETTABLEKS                       R11 R10 K6 ["tag"]
       36 DUPTABLE                         R11 K12 [{"TextArea", "Output", "FocusButton"}]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K5 ["createElement"]
       40 GETUPVAL                         R13 3
       41 DUPTABLE                         R14 K30 [{"LayoutOrder", "hasError", "isDisabled", "isRequired", "resizable", "variant", "focusBehavior", "onChanged", "label", "hint", "size", "width", "hasClearButton", "numLines", "placeholder", "text", "textBoxRef"}]
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
       61 GETTABLEKS                       R15 R1 K18 ["variant"]
       63 SETTABLEKS                       R15 R14 K18 ["variant"]
       65 GETTABLEKS                       R16 R1 K19 ["focusBehavior"]
       67 GETUPVAL                         R17 1
       68 GETTABLEKS                       R17 R17 K31 ["None"]
       70 JUMPIFEQ                         R16 R17 ; [+4]
       72 GETTABLEKS                       R15 R1 K19 ["focusBehavior"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R15
       76 SETTABLEKS                       R15 R14 K19 ["focusBehavior"]
       78 SETTABLEKS                       R6 R14 K20 ["onChanged"]
       80 GETTABLEKS                       R15 R1 K21 ["label"]
       82 SETTABLEKS                       R15 R14 K21 ["label"]
       84 GETTABLEKS                       R15 R1 K22 ["hint"]
       86 SETTABLEKS                       R15 R14 K22 ["hint"]
       88 GETTABLEKS                       R15 R1 K23 ["size"]
       90 SETTABLEKS                       R15 R14 K23 ["size"]
       92 GETTABLEKS                       R16 R1 K24 ["width"]
       94 JUMPIFNOTEQKN                    R16 K32 [0] ; [+3]
       96 LOADNIL                          R15
       97 JUMP                             ; [+6]
       98 GETIMPORT                        R15 K35 [UDim.new]
      100 LOADN                            R16 0
      101 GETTABLEKS                       R17 R1 K24 ["width"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K24 ["width"]
      106 GETTABLEKS                       R16 R1 K25 ["hasClearButton"]
      108 GETUPVAL                         R17 1
      109 GETTABLEKS                       R17 R17 K31 ["None"]
      111 JUMPIFNOTEQ                      R16 R17 ; [+3]
      113 LOADNIL                          R15
      114 JUMP                             ; [+2]
      115 GETTABLEKS                       R15 R1 K25 ["hasClearButton"]
      117 SETTABLEKS                       R15 R14 K25 ["hasClearButton"]
      119 GETTABLEKS                       R15 R1 K26 ["numLines"]
      121 SETTABLEKS                       R15 R14 K26 ["numLines"]
      123 GETTABLEKS                       R15 R1 K27 ["placeholder"]
      125 SETTABLEKS                       R15 R14 K27 ["placeholder"]
      127 SETTABLEKS                       R3 R14 K28 ["text"]
      129 SETTABLEKS                       R5 R14 K29 ["textBoxRef"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      134 GETUPVAL                         R12 1
      135 GETTABLEKS                       R12 R12 K5 ["createElement"]
      137 GETUPVAL                         R13 4
      138 DUPTABLE                         R14 K38 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      139 LOADN                            R15 2
      140 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      142 SETTABLEKS                       R3 R14 K36 ["Text"]
      144 GETTABLEKS                       R15 R2 K39 ["Color"]
      146 GETTABLEKS                       R15 R15 K40 ["System"]
      148 GETTABLEKS                       R15 R15 K41 ["Alert"]
      150 SETTABLEKS                       R15 R14 K37 ["textStyle"]
      152 LOADK                            R15 K42 ["size-full-0 auto-y text-wrap text-align-x-left"]
      153 SETTABLEKS                       R15 R14 K6 ["tag"]
      155 CALL                             R12 2 1
      156 SETTABLEKS                       R12 R11 K10 ["Output"]
      158 GETUPVAL                         R12 1
      159 GETTABLEKS                       R12 R12 K5 ["createElement"]
      161 GETUPVAL                         R13 5
      162 DUPTABLE                         R14 K44 [{"LayoutOrder", "text", "onActivated", "variant"}]
      163 LOADN                            R15 3
      164 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      166 LOADK                            R15 K45 ["Focus TextArea"]
      167 SETTABLEKS                       R15 R14 K28 ["text"]
      169 SETTABLEKS                       R7 R14 K43 ["onActivated"]
      171 GETUPVAL                         R15 6
      172 GETTABLEKS                       R15 R15 K46 ["Standard"]
      174 SETTABLEKS                       R15 R14 K18 ["variant"]
      176 CALL                             R12 2 1
      177 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      179 CALL                             R8 3 -1
      180 RETURN                           R8 -1

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
       92 DUPTABLE                         R14 K26 [{"summary", "story", "controls"}]
       93 LOADK                            R15 K21 ["TextArea"]
       94 SETTABLEKS                       R15 R14 K23 ["summary"]
       96 SETTABLEKS                       R13 R14 K24 ["story"]
       98 DUPTABLE                         R15 K39 [{"hasError", "isDisabled", "numLines", "variant", "focusBehavior", "hasClearButton", "width", "size", "label", "hint", "placeholder", "isRequired"}]
       99 LOADB                            R16 0
      100 SETTABLEKS                       R16 R15 K27 ["hasError"]
      102 LOADB                            R16 0
      103 SETTABLEKS                       R16 R15 K28 ["isDisabled"]
      105 LOADN                            R16 4
      106 SETTABLEKS                       R16 R15 K29 ["numLines"]
      108 GETTABLEKS                       R16 R2 K40 ["values"]
      110 MOVE                             R17 R11
      111 CALL                             R16 1 1
      112 SETTABLEKS                       R16 R15 K30 ["variant"]
      114 NEWTABLE                         R16 0 2
      116 GETTABLEKS                       R17 R3 K41 ["None"]
      118 GETTABLEKS                       R19 R2 K40 ["values"]
      120 MOVE                             R20 R9
      121 CALL                             R19 1 -1
      122 FASTCALL                         TABLE_UNPACK ; [+2]
      123 GETIMPORT                        R18 K43 [unpack]
      125 CALL                             R18 -1 -1
      126 SETLIST                          R16 R17 -1 [1]
      128 SETTABLEKS                       R16 R15 K31 ["focusBehavior"]
      130 NEWTABLE                         R16 0 3
      132 GETTABLEKS                       R17 R3 K41 ["None"]
      134 LOADB                            R18 0
      135 LOADB                            R19 1
      136 SETLIST                          R16 R17 3 [1]
      138 SETTABLEKS                       R16 R15 K32 ["hasClearButton"]
      140 LOADN                            R16 0
      141 SETTABLEKS                       R16 R15 K33 ["width"]
      143 GETTABLEKS                       R16 R2 K40 ["values"]
      145 MOVE                             R17 R10
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K34 ["size"]
      149 LOADK                            R16 K44 ["Biography"]
      150 SETTABLEKS                       R16 R15 K35 ["label"]
      152 LOADK                            R16 K45 ["1000 characters maximum"]
      153 SETTABLEKS                       R16 R15 K36 ["hint"]
      155 LOADK                            R16 K46 ["Tell us your life story!"]
      156 SETTABLEKS                       R16 R15 K37 ["placeholder"]
      158 NEWTABLE                         R16 0 3
      160 GETTABLEKS                       R17 R3 K41 ["None"]
      162 LOADB                            R18 0
      163 LOADB                            R19 1
      164 SETLIST                          R16 R17 3 [1]
      166 SETTABLEKS                       R16 R15 K38 ["isRequired"]
      168 SETTABLEKS                       R15 R14 K25 ["controls"]
      170 RETURN                           R14 1
