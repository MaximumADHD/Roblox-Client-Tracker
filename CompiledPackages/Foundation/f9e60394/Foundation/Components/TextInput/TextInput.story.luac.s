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
       60 GETUPVAL                         R22 4
       61 GETTABLEKS                       R22 R22 K40 ["FoundationTextInputFocusBehavior"]
       63 JUMPIFNOT                        R22 ; [+10]
       64 GETTABLEKS                       R22 R1 K20 ["focusBehavior"]
       66 GETUPVAL                         R23 0
       67 GETTABLEKS                       R23 R23 K39 ["None"]
       69 JUMPIFEQ                         R22 R23 ; [+4]
       71 GETTABLEKS                       R21 R1 K20 ["focusBehavior"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R21
       75 SETTABLEKS                       R21 R20 K20 ["focusBehavior"]
       77 GETUPVAL                         R22 4
       78 GETTABLEKS                       R22 R22 K41 ["FoundationInternalTextInputClearButton"]
       80 JUMPIFNOT                        R22 ; [+7]
       81 GETTABLEKS                       R22 R1 K21 ["hasClearButton"]
       83 GETUPVAL                         R23 0
       84 GETTABLEKS                       R23 R23 K39 ["None"]
       86 JUMPIFNOTEQ                      R22 R23 ; [+3]
       88 LOADNIL                          R21
       89 JUMP                             ; [+2]
       90 GETTABLEKS                       R21 R1 K21 ["hasClearButton"]
       92 SETTABLEKS                       R21 R20 K21 ["hasClearButton"]
       94 GETUPVAL                         R22 4
       95 GETTABLEKS                       R22 R22 K42 ["FoundationTextInputVariant"]
       97 JUMPIFNOT                        R22 ; [+3]
       98 GETTABLEKS                       R21 R1 K22 ["variant"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R21
      102 SETTABLEKS                       R21 R20 K22 ["variant"]
      104 GETTABLEKS                       R21 R1 K23 ["hasError"]
      106 SETTABLEKS                       R21 R20 K23 ["hasError"]
      108 GETTABLEKS                       R21 R1 K24 ["isDisabled"]
      110 SETTABLEKS                       R21 R20 K24 ["isDisabled"]
      112 GETTABLEKS                       R21 R1 K25 ["isRequired"]
      114 SETTABLEKS                       R21 R20 K25 ["isRequired"]
      116 SETTABLEKS                       R8 R20 K26 ["onChanged"]
      118 SETTABLEKS                       R11 R20 K27 ["onFocusGained"]
      120 SETTABLEKS                       R12 R20 K28 ["onFocusLost"]
      122 SETTABLEKS                       R13 R20 K29 ["onReturnPressed"]
      124 GETTABLEKS                       R21 R1 K30 ["label"]
      126 SETTABLEKS                       R21 R20 K30 ["label"]
      128 GETTABLEKS                       R21 R1 K31 ["size"]
      130 SETTABLEKS                       R21 R20 K31 ["size"]
      132 GETTABLEKS                       R22 R1 K32 ["width"]
      134 JUMPIFNOTEQKN                    R22 K43 [0] ; [+3]
      136 LOADNIL                          R21
      137 JUMP                             ; [+6]
      138 GETIMPORT                        R21 K46 [UDim.new]
      140 LOADN                            R22 0
      141 GETTABLEKS                       R23 R1 K32 ["width"]
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K32 ["width"]
      146 GETTABLEKS                       R22 R1 K33 ["hint"]
      148 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      150 LOADNIL                          R21
      151 JUMP                             ; [+2]
      152 GETTABLEKS                       R21 R1 K33 ["hint"]
      154 SETTABLEKS                       R21 R20 K33 ["hint"]
      156 GETTABLEKS                       R21 R1 K34 ["placeholder"]
      158 SETTABLEKS                       R21 R20 K34 ["placeholder"]
      160 GETTABLEKS                       R22 R1 K35 ["leadingIcon"]
      162 GETUPVAL                         R23 0
      163 GETTABLEKS                       R23 R23 K39 ["None"]
      165 JUMPIFNOTEQ                      R22 R23 ; [+3]
      167 LOADNIL                          R21
      168 JUMP                             ; [+2]
      169 GETTABLEKS                       R21 R1 K35 ["leadingIcon"]
      171 SETTABLEKS                       R21 R20 K35 ["leadingIcon"]
      173 GETTABLEKS                       R22 R1 K36 ["iconTrailing"]
      175 GETUPVAL                         R23 0
      176 GETTABLEKS                       R23 R23 K39 ["None"]
      178 JUMPIFNOTEQ                      R22 R23 ; [+3]
      180 LOADNIL                          R21
      181 JUMP                             ; [+13]
      182 GETTABLEKS                       R22 R1 K47 ["trailingButton"]
      184 JUMPIFNOT                        R22 ; [+8]
      185 DUPTABLE                         R21 K50 [{"name", "onActivated"}]
      186 GETTABLEKS                       R22 R1 K36 ["iconTrailing"]
      188 SETTABLEKS                       R22 R21 K48 ["name"]
      190 SETTABLEKS                       R9 R21 K49 ["onActivated"]
      192 JUMP                             ; [+2]
      193 GETTABLEKS                       R21 R1 K36 ["iconTrailing"]
      195 SETTABLEKS                       R21 R20 K36 ["iconTrailing"]
      197 SETTABLEKS                       R7 R20 K37 ["textBoxRef"]
      199 CALL                             R18 2 1
      200 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      202 GETUPVAL                         R18 0
      203 GETTABLEKS                       R18 R18 K8 ["createElement"]
      205 GETUPVAL                         R19 5
      206 DUPTABLE                         R20 K53 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      207 LOADN                            R21 2
      208 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      210 SETTABLEKS                       R2 R20 K51 ["Text"]
      212 GETTABLEKS                       R21 R6 K54 ["Color"]
      214 GETTABLEKS                       R21 R21 K55 ["System"]
      216 GETTABLEKS                       R21 R21 K56 ["Alert"]
      218 SETTABLEKS                       R21 R20 K52 ["textStyle"]
      220 LOADK                            R21 K57 ["auto-xy"]
      221 SETTABLEKS                       R21 R20 K9 ["tag"]
      223 CALL                             R18 2 1
      224 SETTABLEKS                       R18 R17 K13 ["Output"]
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R18 R18 K8 ["createElement"]
      229 GETUPVAL                         R19 6
      230 DUPTABLE                         R20 K58 [{"LayoutOrder", "text", "onActivated", "variant"}]
      231 LOADN                            R21 3
      232 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      234 LOADK                            R21 K59 ["Focus TextInput"]
      235 SETTABLEKS                       R21 R20 K18 ["text"]
      237 SETTABLEKS                       R10 R20 K49 ["onActivated"]
      239 GETUPVAL                         R21 7
      240 GETTABLEKS                       R21 R21 K60 ["Standard"]
      242 SETTABLEKS                       R21 R20 K22 ["variant"]
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      247 GETUPVAL                         R18 0
      248 GETTABLEKS                       R18 R18 K8 ["createElement"]
      250 GETUPVAL                         R19 5
      251 DUPTABLE                         R20 K53 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      252 LOADN                            R21 4
      253 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      255 LOADK                            R22 K61 ["Num return pressed: "]
      256 FASTCALL1                        TOSTRING R4 ; [+3]
      257 MOVE                             R24 R4
      258 GETIMPORT                        R23 K63 [tostring]
      260 CALL                             R23 1 1
      261 CONCAT                           R21 R22 R23
      262 SETTABLEKS                       R21 R20 K51 ["Text"]
      264 GETTABLEKS                       R21 R6 K54 ["Color"]
      266 GETTABLEKS                       R21 R21 K64 ["Content"]
      268 GETTABLEKS                       R21 R21 K65 ["Emphasis"]
      270 SETTABLEKS                       R21 R20 K52 ["textStyle"]
      272 LOADK                            R21 K57 ["auto-xy"]
      273 SETTABLEKS                       R21 R20 K9 ["tag"]
      275 CALL                             R18 2 1
      276 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      278 CALL                             R14 3 -1
      279 RETURN                           R14 -1

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
       88 GETTABLEKS                       R14 R14 K23 ["TextInput"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_7]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 DUPTABLE                         R15 K28 [{"summary", "story", "controls"}]
      101 LOADK                            R16 K29 ["Text field"]
      102 SETTABLEKS                       R16 R15 K25 ["summary"]
      104 SETTABLEKS                       R14 R15 K26 ["story"]
      106 DUPTABLE                         R16 K45 [{"hasError", "isDisabled", "isRequired", "focusBehavior", "hasClearButton", "textInputType", "variant", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
      107 LOADB                            R17 0
      108 SETTABLEKS                       R17 R16 K30 ["hasError"]
      110 LOADB                            R17 0
      111 SETTABLEKS                       R17 R16 K31 ["isDisabled"]
      113 NEWTABLE                         R17 0 3
      115 GETTABLEKS                       R18 R3 K46 ["None"]
      117 LOADB                            R19 0
      118 LOADB                            R20 1
      119 SETLIST                          R17 R18 3 [1]
      121 SETTABLEKS                       R17 R16 K32 ["isRequired"]
      123 GETTABLEKS                       R18 R4 K47 ["FoundationTextInputFocusBehavior"]
      125 JUMPIFNOT                        R18 ; [+15]
      126 NEWTABLE                         R17 0 2
      128 GETTABLEKS                       R18 R3 K46 ["None"]
      130 GETTABLEKS                       R20 R2 K48 ["values"]
      132 MOVE                             R21 R10
      133 CALL                             R20 1 -1
      134 FASTCALL                         TABLE_UNPACK ; [+2]
      135 GETIMPORT                        R19 K50 [unpack]
      137 CALL                             R19 -1 -1
      138 SETLIST                          R17 R18 -1 [1]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R17
      142 SETTABLEKS                       R17 R16 K33 ["focusBehavior"]
      144 GETTABLEKS                       R18 R4 K51 ["FoundationInternalTextInputClearButton"]
      146 JUMPIFNOT                        R18 ; [+9]
      147 NEWTABLE                         R17 0 3
      149 GETTABLEKS                       R18 R3 K46 ["None"]
      151 LOADB                            R19 0
      152 LOADB                            R20 1
      153 SETLIST                          R17 R18 3 [1]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R17
      157 SETTABLEKS                       R17 R16 K34 ["hasClearButton"]
      159 NEWTABLE                         R17 0 4
      161 GETTABLEKS                       R18 R3 K46 ["None"]
      163 GETIMPORT                        R19 K55 [Enum.TextInputType.Default]
      165 GETIMPORT                        R20 K57 [Enum.TextInputType.Password]
      167 GETIMPORT                        R21 K59 [Enum.TextInputType.Number]
      169 SETLIST                          R17 R18 4 [1]
      171 SETTABLEKS                       R17 R16 K35 ["textInputType"]
      173 GETTABLEKS                       R18 R4 K60 ["FoundationTextInputVariant"]
      175 JUMPIFNOT                        R18 ; [+5]
      176 GETTABLEKS                       R17 R2 K48 ["values"]
      178 MOVE                             R18 R12
      179 CALL                             R17 1 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 SETTABLEKS                       R17 R16 K36 ["variant"]
      184 GETTABLEKS                       R17 R2 K48 ["values"]
      186 MOVE                             R18 R11
      187 CALL                             R17 1 1
      188 SETTABLEKS                       R17 R16 K37 ["size"]
      190 LOADK                            R17 K61 ["Input Label"]
      191 SETTABLEKS                       R17 R16 K38 ["label"]
      193 LOADK                            R17 K62 ["Helper text goes here"]
      194 SETTABLEKS                       R17 R16 K39 ["hint"]
      196 LOADK                            R17 K63 ["Placeholder text"]
      197 SETTABLEKS                       R17 R16 K40 ["placeholder"]
      199 NEWTABLE                         R17 0 4
      201 LOADK                            R18 K64 ["icons/placeholder/placeholderOn_small"]
      202 LOADK                            R19 K65 ["icons/status/private_small"]
      203 LOADK                            R20 K66 ["icons/common/search_small"]
      204 GETTABLEKS                       R21 R3 K46 ["None"]
      206 SETLIST                          R17 R18 4 [1]
      208 SETTABLEKS                       R17 R16 K41 ["leadingIcon"]
      210 NEWTABLE                         R17 0 6
      212 LOADK                            R18 K67 ["icons/placeholder/placeholderOff"]
      213 LOADK                            R19 K68 ["icons/actions/edit/clear_small"]
      214 LOADK                            R20 K69 ["icons/actions/info_small"]
      215 LOADK                            R21 K70 ["icons/actions/viewOn"]
      216 LOADK                            R22 K71 ["icons/actions/viewOff"]
      217 GETTABLEKS                       R23 R3 K46 ["None"]
      219 SETLIST                          R17 R18 6 [1]
      221 SETTABLEKS                       R17 R16 K42 ["iconTrailing"]
      223 LOADB                            R17 0
      224 SETTABLEKS                       R17 R16 K43 ["trailingButton"]
      226 LOADN                            R17 0
      227 SETTABLEKS                       R17 R16 K44 ["width"]
      229 SETTABLEKS                       R16 R15 K27 ["controls"]
      231 RETURN                           R15 1
