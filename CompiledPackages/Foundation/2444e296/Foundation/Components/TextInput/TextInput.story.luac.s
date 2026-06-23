PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["press!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["focus gained!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["focus lost!"]
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

PROTO_5:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Return pressed!"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 DUPCLOSURE                       R1 K3 [PROTO_5]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useBinding"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["useState"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K4 ["useRef"]
       17 LOADNIL                          R8
       18 CALL                             R7 1 1
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R3
       21 DUPCLOSURE                       R9 K5 [PROTO_1]
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          VAL R7
       24 DUPCLOSURE                       R11 K6 [PROTO_3]
       25 DUPCLOSURE                       R12 K7 [PROTO_4]
       26 NEWCLOSURE                       R13 P5
       27 CAPTURE                          VAL R5
       28 GETUPVAL                         R14 0
       29 GETTABLEKS                       R14 R14 K8 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K10 [{"tag"}]
       33 LOADK                            R17 K11 ["col gap-large auto-xy padding-xlarge"]
       34 SETTABLEKS                       R17 R16 K9 ["tag"]
       36 DUPTABLE                         R17 K16 [{"TextInput", "Output", "FocusButton", "NumReturnPressed"}]
       37 GETUPVAL                         R18 0
       38 GETTABLEKS                       R18 R18 K8 ["createElement"]
       40 GETUPVAL                         R19 3
       41 DUPTABLE                         R20 K38 [{"LayoutOrder", "text", "textInputType", "focusBehavior", "hasClearButton", "variant", "hasError", "isDisabled", "isRequired", "onChanged", "onFocusGained", "onFocusLost", "onReturnPressed", "label", "size", "width", "hint", "placeholder", "leadingIcon", "iconTrailing", "textBoxRef"}]
       42 LOADN                            R21 1
       43 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       45 SETTABLEKS                       R2 R20 K18 ["text"]
       47 GETTABLEKS                       R22 R1 K19 ["textInputType"]
       49 GETUPVAL                         R23 0
       50 GETTABLEKS                       R23 R23 K39 ["None"]
       52 JUMPIFNOTEQ                      R22 R23 ; [+3]
       54 LOADNIL                          R21
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R21 R1 K19 ["textInputType"]
       58 SETTABLEKS                       R21 R20 K19 ["textInputType"]
       60 GETTABLEKS                       R22 R1 K20 ["focusBehavior"]
       62 GETUPVAL                         R23 0
       63 GETTABLEKS                       R23 R23 K39 ["None"]
       65 JUMPIFEQ                         R22 R23 ; [+4]
       67 GETTABLEKS                       R21 R1 K20 ["focusBehavior"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R21
       71 SETTABLEKS                       R21 R20 K20 ["focusBehavior"]
       73 GETTABLEKS                       R22 R1 K21 ["hasClearButton"]
       75 GETUPVAL                         R23 0
       76 GETTABLEKS                       R23 R23 K39 ["None"]
       78 JUMPIFNOTEQ                      R22 R23 ; [+3]
       80 LOADNIL                          R21
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R21 R1 K21 ["hasClearButton"]
       84 SETTABLEKS                       R21 R20 K21 ["hasClearButton"]
       86 GETTABLEKS                       R21 R1 K22 ["variant"]
       88 SETTABLEKS                       R21 R20 K22 ["variant"]
       90 GETTABLEKS                       R21 R1 K23 ["hasError"]
       92 SETTABLEKS                       R21 R20 K23 ["hasError"]
       94 GETTABLEKS                       R21 R1 K24 ["isDisabled"]
       96 SETTABLEKS                       R21 R20 K24 ["isDisabled"]
       98 GETTABLEKS                       R21 R1 K25 ["isRequired"]
      100 SETTABLEKS                       R21 R20 K25 ["isRequired"]
      102 SETTABLEKS                       R8 R20 K26 ["onChanged"]
      104 SETTABLEKS                       R11 R20 K27 ["onFocusGained"]
      106 SETTABLEKS                       R12 R20 K28 ["onFocusLost"]
      108 SETTABLEKS                       R13 R20 K29 ["onReturnPressed"]
      110 GETTABLEKS                       R21 R1 K30 ["label"]
      112 SETTABLEKS                       R21 R20 K30 ["label"]
      114 GETTABLEKS                       R21 R1 K31 ["size"]
      116 SETTABLEKS                       R21 R20 K31 ["size"]
      118 GETTABLEKS                       R22 R1 K32 ["width"]
      120 JUMPIFNOTEQKN                    R22 K40 [0] ; [+3]
      122 LOADNIL                          R21
      123 JUMP                             ; [+6]
      124 GETIMPORT                        R21 K43 [UDim.new]
      126 LOADN                            R22 0
      127 GETTABLEKS                       R23 R1 K32 ["width"]
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K32 ["width"]
      132 GETTABLEKS                       R22 R1 K33 ["hint"]
      134 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      136 LOADNIL                          R21
      137 JUMP                             ; [+2]
      138 GETTABLEKS                       R21 R1 K33 ["hint"]
      140 SETTABLEKS                       R21 R20 K33 ["hint"]
      142 GETTABLEKS                       R21 R1 K34 ["placeholder"]
      144 SETTABLEKS                       R21 R20 K34 ["placeholder"]
      146 GETTABLEKS                       R22 R1 K35 ["leadingIcon"]
      148 GETUPVAL                         R23 0
      149 GETTABLEKS                       R23 R23 K39 ["None"]
      151 JUMPIFNOTEQ                      R22 R23 ; [+3]
      153 LOADNIL                          R21
      154 JUMP                             ; [+2]
      155 GETTABLEKS                       R21 R1 K35 ["leadingIcon"]
      157 SETTABLEKS                       R21 R20 K35 ["leadingIcon"]
      159 GETTABLEKS                       R22 R1 K36 ["iconTrailing"]
      161 GETUPVAL                         R23 0
      162 GETTABLEKS                       R23 R23 K39 ["None"]
      164 JUMPIFNOTEQ                      R22 R23 ; [+3]
      166 LOADNIL                          R21
      167 JUMP                             ; [+13]
      168 GETTABLEKS                       R22 R1 K44 ["trailingButton"]
      170 JUMPIFNOT                        R22 ; [+8]
      171 DUPTABLE                         R21 K47 [{"name", "onActivated"}]
      172 GETTABLEKS                       R22 R1 K36 ["iconTrailing"]
      174 SETTABLEKS                       R22 R21 K45 ["name"]
      176 SETTABLEKS                       R9 R21 K46 ["onActivated"]
      178 JUMP                             ; [+2]
      179 GETTABLEKS                       R21 R1 K36 ["iconTrailing"]
      181 SETTABLEKS                       R21 R20 K36 ["iconTrailing"]
      183 SETTABLEKS                       R7 R20 K37 ["textBoxRef"]
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      188 GETUPVAL                         R18 0
      189 GETTABLEKS                       R18 R18 K8 ["createElement"]
      191 GETUPVAL                         R19 4
      192 DUPTABLE                         R20 K50 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      193 LOADN                            R21 2
      194 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      196 SETTABLEKS                       R2 R20 K48 ["Text"]
      198 GETTABLEKS                       R21 R6 K51 ["Color"]
      200 GETTABLEKS                       R21 R21 K52 ["System"]
      202 GETTABLEKS                       R21 R21 K53 ["Alert"]
      204 SETTABLEKS                       R21 R20 K49 ["textStyle"]
      206 LOADK                            R21 K54 ["auto-xy"]
      207 SETTABLEKS                       R21 R20 K9 ["tag"]
      209 CALL                             R18 2 1
      210 SETTABLEKS                       R18 R17 K13 ["Output"]
      212 GETUPVAL                         R18 0
      213 GETTABLEKS                       R18 R18 K8 ["createElement"]
      215 GETUPVAL                         R19 5
      216 DUPTABLE                         R20 K55 [{"LayoutOrder", "text", "onActivated", "variant"}]
      217 LOADN                            R21 3
      218 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      220 LOADK                            R21 K56 ["Focus TextInput"]
      221 SETTABLEKS                       R21 R20 K18 ["text"]
      223 SETTABLEKS                       R10 R20 K46 ["onActivated"]
      225 GETUPVAL                         R21 6
      226 GETTABLEKS                       R21 R21 K57 ["Standard"]
      228 SETTABLEKS                       R21 R20 K22 ["variant"]
      230 CALL                             R18 2 1
      231 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      233 GETUPVAL                         R18 0
      234 GETTABLEKS                       R18 R18 K8 ["createElement"]
      236 GETUPVAL                         R19 4
      237 DUPTABLE                         R20 K50 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      238 LOADN                            R21 4
      239 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      241 LOADK                            R22 K58 ["Num return pressed: "]
      242 FASTCALL1                        TOSTRING R4 ; [+3]
      243 MOVE                             R24 R4
      244 GETIMPORT                        R23 K60 [tostring]
      246 CALL                             R23 1 1
      247 CONCAT                           R21 R22 R23
      248 SETTABLEKS                       R21 R20 K48 ["Text"]
      250 GETTABLEKS                       R21 R6 K51 ["Color"]
      252 GETTABLEKS                       R21 R21 K61 ["Content"]
      254 GETTABLEKS                       R21 R21 K62 ["Emphasis"]
      256 SETTABLEKS                       R21 R20 K49 ["textStyle"]
      258 LOADK                            R21 K54 ["auto-xy"]
      259 SETTABLEKS                       R21 R20 K9 ["tag"]
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      264 CALL                             R14 3 -1
      265 RETURN                           R14 -1

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
       81 GETTABLEKS                       R13 R13 K21 ["TextInput"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K22 [PROTO_7]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 DUPTABLE                         R14 K26 [{"summary", "story", "controls"}]
       93 LOADK                            R15 K27 ["Text field"]
       94 SETTABLEKS                       R15 R14 K23 ["summary"]
       96 SETTABLEKS                       R13 R14 K24 ["story"]
       98 DUPTABLE                         R15 K43 [{"hasError", "isDisabled", "isRequired", "focusBehavior", "hasClearButton", "textInputType", "variant", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
       99 LOADB                            R16 0
      100 SETTABLEKS                       R16 R15 K28 ["hasError"]
      102 LOADB                            R16 0
      103 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
      105 NEWTABLE                         R16 0 3
      107 GETTABLEKS                       R17 R3 K44 ["None"]
      109 LOADB                            R18 0
      110 LOADB                            R19 1
      111 SETLIST                          R16 R17 3 [1]
      113 SETTABLEKS                       R16 R15 K30 ["isRequired"]
      115 NEWTABLE                         R16 0 2
      117 GETTABLEKS                       R17 R3 K44 ["None"]
      119 GETTABLEKS                       R19 R2 K45 ["values"]
      121 MOVE                             R20 R9
      122 CALL                             R19 1 -1
      123 FASTCALL                         TABLE_UNPACK ; [+2]
      124 GETIMPORT                        R18 K47 [unpack]
      126 CALL                             R18 -1 -1
      127 SETLIST                          R16 R17 -1 [1]
      129 SETTABLEKS                       R16 R15 K31 ["focusBehavior"]
      131 NEWTABLE                         R16 0 3
      133 GETTABLEKS                       R17 R3 K44 ["None"]
      135 LOADB                            R18 0
      136 LOADB                            R19 1
      137 SETLIST                          R16 R17 3 [1]
      139 SETTABLEKS                       R16 R15 K32 ["hasClearButton"]
      141 NEWTABLE                         R16 0 4
      143 GETTABLEKS                       R17 R3 K44 ["None"]
      145 GETIMPORT                        R18 K51 [Enum.TextInputType.Default]
      147 GETIMPORT                        R19 K53 [Enum.TextInputType.Password]
      149 GETIMPORT                        R20 K55 [Enum.TextInputType.Number]
      151 SETLIST                          R16 R17 4 [1]
      153 SETTABLEKS                       R16 R15 K33 ["textInputType"]
      155 GETTABLEKS                       R16 R2 K45 ["values"]
      157 MOVE                             R17 R11
      158 CALL                             R16 1 1
      159 SETTABLEKS                       R16 R15 K34 ["variant"]
      161 GETTABLEKS                       R16 R2 K45 ["values"]
      163 MOVE                             R17 R10
      164 CALL                             R16 1 1
      165 SETTABLEKS                       R16 R15 K35 ["size"]
      167 LOADK                            R16 K56 ["Input Label"]
      168 SETTABLEKS                       R16 R15 K36 ["label"]
      170 LOADK                            R16 K57 ["Helper text goes here"]
      171 SETTABLEKS                       R16 R15 K37 ["hint"]
      173 LOADK                            R16 K58 ["Placeholder text"]
      174 SETTABLEKS                       R16 R15 K38 ["placeholder"]
      176 NEWTABLE                         R16 0 4
      178 LOADK                            R17 K59 ["icons/placeholder/placeholderOn_small"]
      179 LOADK                            R18 K60 ["icons/status/private_small"]
      180 LOADK                            R19 K61 ["icons/common/search_small"]
      181 GETTABLEKS                       R20 R3 K44 ["None"]
      183 SETLIST                          R16 R17 4 [1]
      185 SETTABLEKS                       R16 R15 K39 ["leadingIcon"]
      187 NEWTABLE                         R16 0 6
      189 LOADK                            R17 K62 ["icons/placeholder/placeholderOff"]
      190 LOADK                            R18 K63 ["icons/actions/edit/clear_small"]
      191 LOADK                            R19 K64 ["icons/actions/info_small"]
      192 LOADK                            R20 K65 ["icons/actions/viewOn"]
      193 LOADK                            R21 K66 ["icons/actions/viewOff"]
      194 GETTABLEKS                       R22 R3 K44 ["None"]
      196 SETLIST                          R16 R17 6 [1]
      198 SETTABLEKS                       R16 R15 K40 ["iconTrailing"]
      200 LOADB                            R16 0
      201 SETTABLEKS                       R16 R15 K41 ["trailingButton"]
      203 LOADN                            R16 0
      204 SETTABLEKS                       R16 R15 K42 ["width"]
      206 SETTABLEKS                       R15 R14 K25 ["controls"]
      208 RETURN                           R14 1
