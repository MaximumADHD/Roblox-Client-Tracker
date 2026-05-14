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
       41 DUPTABLE                         R20 K37 [{"LayoutOrder", "text", "textInputType", "focusBehavior", "variant", "hasError", "isDisabled", "isRequired", "onChanged", "onFocusGained", "onFocusLost", "onReturnPressed", "label", "size", "width", "hint", "placeholder", "leadingIcon", "iconTrailing", "textBoxRef"}]
       42 LOADN                            R21 1
       43 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       45 SETTABLEKS                       R2 R20 K18 ["text"]
       47 GETTABLEKS                       R22 R1 K19 ["textInputType"]
       49 GETUPVAL                         R23 0
       50 GETTABLEKS                       R23 R23 K38 ["None"]
       52 JUMPIFNOTEQ                      R22 R23 ; [+3]
       54 LOADNIL                          R21
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R21 R1 K19 ["textInputType"]
       58 SETTABLEKS                       R21 R20 K19 ["textInputType"]
       60 GETUPVAL                         R22 4
       61 GETTABLEKS                       R22 R22 K39 ["FoundationTextInputFocusBehavior"]
       63 JUMPIFNOT                        R22 ; [+10]
       64 GETTABLEKS                       R22 R1 K20 ["focusBehavior"]
       66 GETUPVAL                         R23 0
       67 GETTABLEKS                       R23 R23 K38 ["None"]
       69 JUMPIFEQ                         R22 R23 ; [+4]
       71 GETTABLEKS                       R21 R1 K20 ["focusBehavior"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R21
       75 SETTABLEKS                       R21 R20 K20 ["focusBehavior"]
       77 GETUPVAL                         R22 4
       78 GETTABLEKS                       R22 R22 K40 ["FoundationTextInputVariant"]
       80 JUMPIFNOT                        R22 ; [+3]
       81 GETTABLEKS                       R21 R1 K21 ["variant"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R21
       85 SETTABLEKS                       R21 R20 K21 ["variant"]
       87 GETTABLEKS                       R21 R1 K22 ["hasError"]
       89 SETTABLEKS                       R21 R20 K22 ["hasError"]
       91 GETTABLEKS                       R21 R1 K23 ["isDisabled"]
       93 SETTABLEKS                       R21 R20 K23 ["isDisabled"]
       95 GETTABLEKS                       R21 R1 K24 ["isRequired"]
       97 SETTABLEKS                       R21 R20 K24 ["isRequired"]
       99 SETTABLEKS                       R8 R20 K25 ["onChanged"]
      101 SETTABLEKS                       R11 R20 K26 ["onFocusGained"]
      103 SETTABLEKS                       R12 R20 K27 ["onFocusLost"]
      105 SETTABLEKS                       R13 R20 K28 ["onReturnPressed"]
      107 GETTABLEKS                       R21 R1 K29 ["label"]
      109 SETTABLEKS                       R21 R20 K29 ["label"]
      111 GETTABLEKS                       R21 R1 K30 ["size"]
      113 SETTABLEKS                       R21 R20 K30 ["size"]
      115 GETTABLEKS                       R22 R1 K31 ["width"]
      117 JUMPIFNOTEQKN                    R22 K41 [0] ; [+3]
      119 LOADNIL                          R21
      120 JUMP                             ; [+6]
      121 GETIMPORT                        R21 K44 [UDim.new]
      123 LOADN                            R22 0
      124 GETTABLEKS                       R23 R1 K31 ["width"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K31 ["width"]
      129 GETTABLEKS                       R22 R1 K32 ["hint"]
      131 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      133 LOADNIL                          R21
      134 JUMP                             ; [+2]
      135 GETTABLEKS                       R21 R1 K32 ["hint"]
      137 SETTABLEKS                       R21 R20 K32 ["hint"]
      139 GETTABLEKS                       R21 R1 K33 ["placeholder"]
      141 SETTABLEKS                       R21 R20 K33 ["placeholder"]
      143 GETTABLEKS                       R22 R1 K34 ["leadingIcon"]
      145 GETUPVAL                         R23 0
      146 GETTABLEKS                       R23 R23 K38 ["None"]
      148 JUMPIFNOTEQ                      R22 R23 ; [+3]
      150 LOADNIL                          R21
      151 JUMP                             ; [+2]
      152 GETTABLEKS                       R21 R1 K34 ["leadingIcon"]
      154 SETTABLEKS                       R21 R20 K34 ["leadingIcon"]
      156 GETTABLEKS                       R22 R1 K35 ["iconTrailing"]
      158 GETUPVAL                         R23 0
      159 GETTABLEKS                       R23 R23 K38 ["None"]
      161 JUMPIFNOTEQ                      R22 R23 ; [+3]
      163 LOADNIL                          R21
      164 JUMP                             ; [+13]
      165 GETTABLEKS                       R22 R1 K45 ["trailingButton"]
      167 JUMPIFNOT                        R22 ; [+8]
      168 DUPTABLE                         R21 K48 [{"name", "onActivated"}]
      169 GETTABLEKS                       R22 R1 K35 ["iconTrailing"]
      171 SETTABLEKS                       R22 R21 K46 ["name"]
      173 SETTABLEKS                       R9 R21 K47 ["onActivated"]
      175 JUMP                             ; [+2]
      176 GETTABLEKS                       R21 R1 K35 ["iconTrailing"]
      178 SETTABLEKS                       R21 R20 K35 ["iconTrailing"]
      180 SETTABLEKS                       R7 R20 K36 ["textBoxRef"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      185 GETUPVAL                         R18 0
      186 GETTABLEKS                       R18 R18 K8 ["createElement"]
      188 GETUPVAL                         R19 5
      189 DUPTABLE                         R20 K51 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      190 LOADN                            R21 2
      191 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      193 SETTABLEKS                       R2 R20 K49 ["Text"]
      195 GETTABLEKS                       R21 R6 K52 ["Color"]
      197 GETTABLEKS                       R21 R21 K53 ["System"]
      199 GETTABLEKS                       R21 R21 K54 ["Alert"]
      201 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      203 LOADK                            R21 K55 ["auto-xy"]
      204 SETTABLEKS                       R21 R20 K9 ["tag"]
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K13 ["Output"]
      209 GETUPVAL                         R18 0
      210 GETTABLEKS                       R18 R18 K8 ["createElement"]
      212 GETUPVAL                         R19 6
      213 DUPTABLE                         R20 K56 [{"LayoutOrder", "text", "onActivated", "variant"}]
      214 LOADN                            R21 3
      215 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      217 LOADK                            R21 K57 ["Focus TextInput"]
      218 SETTABLEKS                       R21 R20 K18 ["text"]
      220 SETTABLEKS                       R10 R20 K47 ["onActivated"]
      222 GETUPVAL                         R21 7
      223 GETTABLEKS                       R21 R21 K58 ["Standard"]
      225 SETTABLEKS                       R21 R20 K21 ["variant"]
      227 CALL                             R18 2 1
      228 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      230 GETUPVAL                         R18 0
      231 GETTABLEKS                       R18 R18 K8 ["createElement"]
      233 GETUPVAL                         R19 5
      234 DUPTABLE                         R20 K51 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      235 LOADN                            R21 4
      236 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      238 LOADK                            R22 K59 ["Num return pressed: "]
      239 FASTCALL1                        TOSTRING R4 ; [+3]
      240 MOVE                             R24 R4
      241 GETIMPORT                        R23 K61 [tostring]
      243 CALL                             R23 1 1
      244 CONCAT                           R21 R22 R23
      245 SETTABLEKS                       R21 R20 K49 ["Text"]
      247 GETTABLEKS                       R21 R6 K52 ["Color"]
      249 GETTABLEKS                       R21 R21 K62 ["Content"]
      251 GETTABLEKS                       R21 R21 K63 ["Emphasis"]
      253 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      255 LOADK                            R21 K55 ["auto-xy"]
      256 SETTABLEKS                       R21 R20 K9 ["tag"]
      258 CALL                             R18 2 1
      259 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      261 CALL                             R14 3 -1
      262 RETURN                           R14 -1

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
      106 DUPTABLE                         R16 K44 [{"hasError", "isDisabled", "isRequired", "focusBehavior", "textInputType", "variant", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
      107 LOADB                            R17 0
      108 SETTABLEKS                       R17 R16 K30 ["hasError"]
      110 LOADB                            R17 0
      111 SETTABLEKS                       R17 R16 K31 ["isDisabled"]
      113 NEWTABLE                         R17 0 3
      115 GETTABLEKS                       R18 R3 K45 ["None"]
      117 LOADB                            R19 0
      118 LOADB                            R20 1
      119 SETLIST                          R17 R18 3 [1]
      121 SETTABLEKS                       R17 R16 K32 ["isRequired"]
      123 GETTABLEKS                       R18 R4 K46 ["FoundationTextInputFocusBehavior"]
      125 JUMPIFNOT                        R18 ; [+15]
      126 NEWTABLE                         R17 0 2
      128 GETTABLEKS                       R18 R3 K45 ["None"]
      130 GETTABLEKS                       R20 R2 K47 ["values"]
      132 MOVE                             R21 R10
      133 CALL                             R20 1 -1
      134 FASTCALL                         TABLE_UNPACK ; [+2]
      135 GETIMPORT                        R19 K49 [unpack]
      137 CALL                             R19 -1 -1
      138 SETLIST                          R17 R18 -1 [1]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R17
      142 SETTABLEKS                       R17 R16 K33 ["focusBehavior"]
      144 NEWTABLE                         R17 0 4
      146 GETTABLEKS                       R18 R3 K45 ["None"]
      148 GETIMPORT                        R19 K53 [Enum.TextInputType.Default]
      150 GETIMPORT                        R20 K55 [Enum.TextInputType.Password]
      152 GETIMPORT                        R21 K57 [Enum.TextInputType.Number]
      154 SETLIST                          R17 R18 4 [1]
      156 SETTABLEKS                       R17 R16 K34 ["textInputType"]
      158 GETTABLEKS                       R18 R4 K58 ["FoundationTextInputVariant"]
      160 JUMPIFNOT                        R18 ; [+5]
      161 GETTABLEKS                       R17 R2 K47 ["values"]
      163 MOVE                             R18 R12
      164 CALL                             R17 1 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R17
      167 SETTABLEKS                       R17 R16 K35 ["variant"]
      169 GETTABLEKS                       R17 R2 K47 ["values"]
      171 MOVE                             R18 R11
      172 CALL                             R17 1 1
      173 SETTABLEKS                       R17 R16 K36 ["size"]
      175 LOADK                            R17 K59 ["Input Label"]
      176 SETTABLEKS                       R17 R16 K37 ["label"]
      178 LOADK                            R17 K60 ["Helper text goes here"]
      179 SETTABLEKS                       R17 R16 K38 ["hint"]
      181 LOADK                            R17 K61 ["Placeholder text"]
      182 SETTABLEKS                       R17 R16 K39 ["placeholder"]
      184 NEWTABLE                         R17 0 4
      186 LOADK                            R18 K62 ["icons/placeholder/placeholderOn_small"]
      187 LOADK                            R19 K63 ["icons/status/private_small"]
      188 LOADK                            R20 K64 ["icons/common/search_small"]
      189 GETTABLEKS                       R21 R3 K45 ["None"]
      191 SETLIST                          R17 R18 4 [1]
      193 SETTABLEKS                       R17 R16 K40 ["leadingIcon"]
      195 NEWTABLE                         R17 0 6
      197 LOADK                            R18 K65 ["icons/placeholder/placeholderOff"]
      198 LOADK                            R19 K66 ["icons/actions/edit/clear_small"]
      199 LOADK                            R20 K67 ["icons/actions/info_small"]
      200 LOADK                            R21 K68 ["icons/actions/viewOn"]
      201 LOADK                            R22 K69 ["icons/actions/viewOff"]
      202 GETTABLEKS                       R23 R3 K45 ["None"]
      204 SETLIST                          R17 R18 6 [1]
      206 SETTABLEKS                       R17 R16 K41 ["iconTrailing"]
      208 LOADB                            R17 0
      209 SETTABLEKS                       R17 R16 K42 ["trailingButton"]
      211 LOADN                            R17 0
      212 SETTABLEKS                       R17 R16 K43 ["width"]
      214 SETTABLEKS                       R16 R15 K27 ["controls"]
      216 RETURN                           R15 1
