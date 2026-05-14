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
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R16 R16 K31 ["FoundationTextAreaVariant"]
       64 JUMPIFNOT                        R16 ; [+3]
       65 GETTABLEKS                       R15 R1 K18 ["variant"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R15
       69 SETTABLEKS                       R15 R14 K18 ["variant"]
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R16 R16 K32 ["FoundationTextInputFocusBehavior"]
       74 JUMPIFNOT                        R16 ; [+10]
       75 GETTABLEKS                       R16 R1 K19 ["focusBehavior"]
       77 GETUPVAL                         R17 1
       78 GETTABLEKS                       R17 R17 K33 ["None"]
       80 JUMPIFEQ                         R16 R17 ; [+4]
       82 GETTABLEKS                       R15 R1 K19 ["focusBehavior"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R15
       86 SETTABLEKS                       R15 R14 K19 ["focusBehavior"]
       88 SETTABLEKS                       R6 R14 K20 ["onChanged"]
       90 GETTABLEKS                       R15 R1 K21 ["label"]
       92 SETTABLEKS                       R15 R14 K21 ["label"]
       94 GETTABLEKS                       R15 R1 K22 ["hint"]
       96 SETTABLEKS                       R15 R14 K22 ["hint"]
       98 GETTABLEKS                       R15 R1 K23 ["size"]
      100 SETTABLEKS                       R15 R14 K23 ["size"]
      102 GETTABLEKS                       R16 R1 K24 ["width"]
      104 JUMPIFNOTEQKN                    R16 K34 [0] ; [+3]
      106 LOADNIL                          R15
      107 JUMP                             ; [+6]
      108 GETIMPORT                        R15 K37 [UDim.new]
      110 LOADN                            R16 0
      111 GETTABLEKS                       R17 R1 K24 ["width"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K24 ["width"]
      116 GETUPVAL                         R16 4
      117 GETTABLEKS                       R16 R16 K38 ["FoundationInternalTextInputClearButton"]
      119 JUMPIFNOT                        R16 ; [+7]
      120 GETTABLEKS                       R16 R1 K25 ["hasClearButton"]
      122 GETUPVAL                         R17 1
      123 GETTABLEKS                       R17 R17 K33 ["None"]
      125 JUMPIFNOTEQ                      R16 R17 ; [+3]
      127 LOADNIL                          R15
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R15 R1 K25 ["hasClearButton"]
      131 SETTABLEKS                       R15 R14 K25 ["hasClearButton"]
      133 GETTABLEKS                       R15 R1 K26 ["numLines"]
      135 SETTABLEKS                       R15 R14 K26 ["numLines"]
      137 GETTABLEKS                       R15 R1 K27 ["placeholder"]
      139 SETTABLEKS                       R15 R14 K27 ["placeholder"]
      141 SETTABLEKS                       R3 R14 K28 ["text"]
      143 SETTABLEKS                       R5 R14 K29 ["textBoxRef"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K9 ["TextArea"]
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R12 R12 K5 ["createElement"]
      151 GETUPVAL                         R13 5
      152 DUPTABLE                         R14 K41 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      153 LOADN                            R15 2
      154 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      156 SETTABLEKS                       R3 R14 K39 ["Text"]
      158 GETTABLEKS                       R15 R2 K42 ["Color"]
      160 GETTABLEKS                       R15 R15 K43 ["System"]
      162 GETTABLEKS                       R15 R15 K44 ["Alert"]
      164 SETTABLEKS                       R15 R14 K40 ["textStyle"]
      166 LOADK                            R15 K45 ["size-full-0 auto-y text-wrap text-align-x-left"]
      167 SETTABLEKS                       R15 R14 K6 ["tag"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K10 ["Output"]
      172 GETUPVAL                         R12 1
      173 GETTABLEKS                       R12 R12 K5 ["createElement"]
      175 GETUPVAL                         R13 6
      176 DUPTABLE                         R14 K47 [{"LayoutOrder", "text", "onActivated", "variant"}]
      177 LOADN                            R15 3
      178 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      180 LOADK                            R15 K48 ["Focus TextArea"]
      181 SETTABLEKS                       R15 R14 K28 ["text"]
      183 SETTABLEKS                       R7 R14 K46 ["onActivated"]
      185 GETUPVAL                         R15 7
      186 GETTABLEKS                       R15 R15 K49 ["Standard"]
      188 SETTABLEKS                       R15 R14 K18 ["variant"]
      190 CALL                             R12 2 1
      191 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      193 CALL                             R8 3 -1
      194 RETURN                           R8 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Providers"]
       44 GETTABLEKS                       R8 R8 K15 ["Style"]
       46 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Components"]
       53 GETTABLEKS                       R9 R9 K17 ["Button"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Enums"]
       60 GETTABLEKS                       R10 R10 K19 ["ButtonVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["InputFocusBehavior"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Enums"]
       74 GETTABLEKS                       R12 R12 K21 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K18 ["Enums"]
       81 GETTABLEKS                       R13 R13 K22 ["InputVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K11 ["Components"]
       88 GETTABLEKS                       R14 R14 K23 ["TextArea"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_2]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 DUPTABLE                         R15 K28 [{"summary", "story", "controls"}]
      101 LOADK                            R16 K23 ["TextArea"]
      102 SETTABLEKS                       R16 R15 K25 ["summary"]
      104 SETTABLEKS                       R14 R15 K26 ["story"]
      106 DUPTABLE                         R16 K41 [{"hasError", "isDisabled", "numLines", "variant", "focusBehavior", "hasClearButton", "width", "size", "label", "hint", "placeholder", "isRequired"}]
      107 LOADB                            R17 0
      108 SETTABLEKS                       R17 R16 K29 ["hasError"]
      110 LOADB                            R17 0
      111 SETTABLEKS                       R17 R16 K30 ["isDisabled"]
      113 LOADN                            R17 4
      114 SETTABLEKS                       R17 R16 K31 ["numLines"]
      116 GETTABLEKS                       R18 R4 K42 ["FoundationTextAreaVariant"]
      118 JUMPIFNOT                        R18 ; [+5]
      119 GETTABLEKS                       R17 R2 K43 ["values"]
      121 MOVE                             R18 R12
      122 CALL                             R17 1 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R17
      125 SETTABLEKS                       R17 R16 K32 ["variant"]
      127 GETTABLEKS                       R18 R4 K44 ["FoundationTextInputFocusBehavior"]
      129 JUMPIFNOT                        R18 ; [+15]
      130 NEWTABLE                         R17 0 2
      132 GETTABLEKS                       R18 R3 K45 ["None"]
      134 GETTABLEKS                       R20 R2 K43 ["values"]
      136 MOVE                             R21 R10
      137 CALL                             R20 1 -1
      138 FASTCALL                         TABLE_UNPACK ; [+2]
      139 GETIMPORT                        R19 K47 [unpack]
      141 CALL                             R19 -1 -1
      142 SETLIST                          R17 R18 -1 [1]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R17
      146 SETTABLEKS                       R17 R16 K33 ["focusBehavior"]
      148 GETTABLEKS                       R18 R4 K48 ["FoundationInternalTextInputClearButton"]
      150 JUMPIFNOT                        R18 ; [+9]
      151 NEWTABLE                         R17 0 3
      153 GETTABLEKS                       R18 R3 K45 ["None"]
      155 LOADB                            R19 0
      156 LOADB                            R20 1
      157 SETLIST                          R17 R18 3 [1]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R17
      161 SETTABLEKS                       R17 R16 K34 ["hasClearButton"]
      163 LOADN                            R17 0
      164 SETTABLEKS                       R17 R16 K35 ["width"]
      166 GETTABLEKS                       R17 R2 K43 ["values"]
      168 MOVE                             R18 R11
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K36 ["size"]
      172 LOADK                            R17 K49 ["Biography"]
      173 SETTABLEKS                       R17 R16 K37 ["label"]
      175 LOADK                            R17 K50 ["1000 characters maximum"]
      176 SETTABLEKS                       R17 R16 K38 ["hint"]
      178 LOADK                            R17 K51 ["Tell us your life story!"]
      179 SETTABLEKS                       R17 R16 K39 ["placeholder"]
      181 NEWTABLE                         R17 0 3
      183 GETTABLEKS                       R18 R3 K45 ["None"]
      185 LOADB                            R19 0
      186 LOADB                            R20 1
      187 SETLIST                          R17 R18 3 [1]
      189 SETTABLEKS                       R17 R16 K40 ["isRequired"]
      191 SETTABLEKS                       R16 R15 K27 ["controls"]
      193 RETURN                           R15 1
