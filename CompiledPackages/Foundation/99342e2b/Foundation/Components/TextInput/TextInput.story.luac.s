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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["focus"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 GETTABLEKS                       R0 R1 K1 ["focus"]
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
        5 GETTABLEKS                       R7 R0 K4 ["UserInputType"]
        7 GETTABLEKS                       R6 R7 K5 ["Name"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useBinding"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["useState"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 1
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K4 ["useRef"]
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
       28 GETUPVAL                         R15 0
       29 GETTABLEKS                       R14 R15 K8 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K10 [{"tag"}]
       33 LOADK                            R17 K11 ["col gap-large auto-xy padding-xlarge"]
       34 SETTABLEKS                       R17 R16 K9 ["tag"]
       36 DUPTABLE                         R17 K16 [{"TextInput", "Output", "FocusButton", "NumReturnPressed"}]
       37 GETUPVAL                         R19 0
       38 GETTABLEKS                       R18 R19 K8 ["createElement"]
       40 GETUPVAL                         R19 3
       41 DUPTABLE                         R20 K36 [{"LayoutOrder", "text", "textInputType", "focusBehavior", "hasError", "isDisabled", "isRequired", "onChanged", "onFocusGained", "onFocusLost", "onReturnPressed", "label", "size", "width", "hint", "placeholder", "leadingIcon", "iconTrailing", "textBoxRef"}]
       42 LOADN                            R21 1
       43 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       45 SETTABLEKS                       R2 R20 K18 ["text"]
       47 GETTABLEKS                       R22 R1 K19 ["textInputType"]
       49 GETUPVAL                         R24 0
       50 GETTABLEKS                       R23 R24 K37 ["None"]
       52 JUMPIFNOTEQ                      R22 R23 ; [+3]
       54 LOADNIL                          R21
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R21 R1 K19 ["textInputType"]
       58 SETTABLEKS                       R21 R20 K19 ["textInputType"]
       60 GETUPVAL                         R23 4
       61 GETTABLEKS                       R22 R23 K38 ["FoundationTextInputFocusBehavior"]
       63 JUMPIFNOT                        R22 ; [+10]
       64 GETTABLEKS                       R22 R1 K20 ["focusBehavior"]
       66 GETUPVAL                         R24 0
       67 GETTABLEKS                       R23 R24 K37 ["None"]
       69 JUMPIFEQ                         R22 R23 ; [+4]
       71 GETTABLEKS                       R21 R1 K20 ["focusBehavior"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R21
       75 SETTABLEKS                       R21 R20 K20 ["focusBehavior"]
       77 GETTABLEKS                       R21 R1 K21 ["hasError"]
       79 SETTABLEKS                       R21 R20 K21 ["hasError"]
       81 GETTABLEKS                       R21 R1 K22 ["isDisabled"]
       83 SETTABLEKS                       R21 R20 K22 ["isDisabled"]
       85 GETTABLEKS                       R21 R1 K23 ["isRequired"]
       87 SETTABLEKS                       R21 R20 K23 ["isRequired"]
       89 SETTABLEKS                       R8 R20 K24 ["onChanged"]
       91 SETTABLEKS                       R11 R20 K25 ["onFocusGained"]
       93 SETTABLEKS                       R12 R20 K26 ["onFocusLost"]
       95 SETTABLEKS                       R13 R20 K27 ["onReturnPressed"]
       97 GETTABLEKS                       R21 R1 K28 ["label"]
       99 SETTABLEKS                       R21 R20 K28 ["label"]
      101 GETTABLEKS                       R21 R1 K29 ["size"]
      103 SETTABLEKS                       R21 R20 K29 ["size"]
      105 GETTABLEKS                       R22 R1 K30 ["width"]
      107 JUMPIFNOTEQKN                    R22 K39 [0] ; [+3]
      109 LOADNIL                          R21
      110 JUMP                             ; [+6]
      111 GETIMPORT                        R21 K42 [UDim.new]
      113 LOADN                            R22 0
      114 GETTABLEKS                       R23 R1 K30 ["width"]
      116 CALL                             R21 2 1
      117 SETTABLEKS                       R21 R20 K30 ["width"]
      119 GETTABLEKS                       R22 R1 K31 ["hint"]
      121 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      123 LOADNIL                          R21
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R21 R1 K31 ["hint"]
      127 SETTABLEKS                       R21 R20 K31 ["hint"]
      129 GETTABLEKS                       R21 R1 K32 ["placeholder"]
      131 SETTABLEKS                       R21 R20 K32 ["placeholder"]
      133 GETTABLEKS                       R22 R1 K33 ["leadingIcon"]
      135 GETUPVAL                         R24 0
      136 GETTABLEKS                       R23 R24 K37 ["None"]
      138 JUMPIFNOTEQ                      R22 R23 ; [+3]
      140 LOADNIL                          R21
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R21 R1 K33 ["leadingIcon"]
      144 SETTABLEKS                       R21 R20 K33 ["leadingIcon"]
      146 GETTABLEKS                       R22 R1 K34 ["iconTrailing"]
      148 GETUPVAL                         R24 0
      149 GETTABLEKS                       R23 R24 K37 ["None"]
      151 JUMPIFNOTEQ                      R22 R23 ; [+3]
      153 LOADNIL                          R21
      154 JUMP                             ; [+13]
      155 GETTABLEKS                       R22 R1 K43 ["trailingButton"]
      157 JUMPIFNOT                        R22 ; [+8]
      158 DUPTABLE                         R21 K46 [{"name", "onActivated"}]
      159 GETTABLEKS                       R22 R1 K34 ["iconTrailing"]
      161 SETTABLEKS                       R22 R21 K44 ["name"]
      163 SETTABLEKS                       R9 R21 K45 ["onActivated"]
      165 JUMP                             ; [+2]
      166 GETTABLEKS                       R21 R1 K34 ["iconTrailing"]
      168 SETTABLEKS                       R21 R20 K34 ["iconTrailing"]
      170 SETTABLEKS                       R7 R20 K35 ["textBoxRef"]
      172 CALL                             R18 2 1
      173 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      175 GETUPVAL                         R19 0
      176 GETTABLEKS                       R18 R19 K8 ["createElement"]
      178 GETUPVAL                         R19 5
      179 DUPTABLE                         R20 K49 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      180 LOADN                            R21 2
      181 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      183 SETTABLEKS                       R2 R20 K47 ["Text"]
      185 GETTABLEKS                       R23 R6 K50 ["Color"]
      187 GETTABLEKS                       R22 R23 K51 ["System"]
      189 GETTABLEKS                       R21 R22 K52 ["Alert"]
      191 SETTABLEKS                       R21 R20 K48 ["textStyle"]
      193 LOADK                            R21 K53 ["auto-xy"]
      194 SETTABLEKS                       R21 R20 K9 ["tag"]
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K13 ["Output"]
      199 GETUPVAL                         R19 0
      200 GETTABLEKS                       R18 R19 K8 ["createElement"]
      202 GETUPVAL                         R19 6
      203 DUPTABLE                         R20 K55 [{"LayoutOrder", "text", "onActivated", "variant"}]
      204 LOADN                            R21 3
      205 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      207 LOADK                            R21 K56 ["Focus TextInput"]
      208 SETTABLEKS                       R21 R20 K18 ["text"]
      210 SETTABLEKS                       R10 R20 K45 ["onActivated"]
      212 GETUPVAL                         R22 7
      213 GETTABLEKS                       R21 R22 K57 ["Standard"]
      215 SETTABLEKS                       R21 R20 K54 ["variant"]
      217 CALL                             R18 2 1
      218 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      220 GETUPVAL                         R19 0
      221 GETTABLEKS                       R18 R19 K8 ["createElement"]
      223 GETUPVAL                         R19 5
      224 DUPTABLE                         R20 K49 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      225 LOADN                            R21 4
      226 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      228 LOADK                            R22 K58 ["Num return pressed: "]
      229 FASTCALL1                        TOSTRING R4 ; [+3]
      230 MOVE                             R24 R4
      231 GETIMPORT                        R23 K60 [tostring]
      233 CALL                             R23 1 1
      234 CONCAT                           R21 R22 R23
      235 SETTABLEKS                       R21 R20 K47 ["Text"]
      237 GETTABLEKS                       R23 R6 K50 ["Color"]
      239 GETTABLEKS                       R22 R23 K61 ["Content"]
      241 GETTABLEKS                       R21 R22 K62 ["Emphasis"]
      243 SETTABLEKS                       R21 R20 K48 ["textStyle"]
      245 LOADK                            R21 K53 ["auto-xy"]
      246 SETTABLEKS                       R21 R20 K9 ["tag"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      251 CALL                             R14 3 -1
      252 RETURN                           R14 -1

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
       81 GETTABLEKS                       R13 R14 K22 ["TextInput"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K23 [PROTO_7]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 DUPTABLE                         R14 K27 [{"summary", "story", "controls"}]
       94 LOADK                            R15 K28 ["Text field"]
       95 SETTABLEKS                       R15 R14 K24 ["summary"]
       97 SETTABLEKS                       R13 R14 K25 ["story"]
       99 DUPTABLE                         R15 K42 [{"hasError", "isDisabled", "isRequired", "focusBehavior", "textInputType", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
      100 LOADB                            R16 0
      101 SETTABLEKS                       R16 R15 K29 ["hasError"]
      103 LOADB                            R16 0
      104 SETTABLEKS                       R16 R15 K30 ["isDisabled"]
      106 NEWTABLE                         R16 0 3
      108 GETTABLEKS                       R17 R3 K43 ["None"]
      110 LOADB                            R18 0
      111 LOADB                            R19 1
      112 SETLIST                          R16 R17 3 [1]
      114 SETTABLEKS                       R16 R15 K31 ["isRequired"]
      116 GETTABLEKS                       R17 R4 K44 ["FoundationTextInputFocusBehavior"]
      118 JUMPIFNOT                        R17 ; [+15]
      119 NEWTABLE                         R16 0 2
      121 GETTABLEKS                       R17 R3 K43 ["None"]
      123 GETTABLEKS                       R19 R2 K45 ["values"]
      125 MOVE                             R20 R10
      126 CALL                             R19 1 -1
      127 FASTCALL                         TABLE_UNPACK ; [+2]
      128 GETIMPORT                        R18 K47 [unpack]
      130 CALL                             R18 -1 -1
      131 SETLIST                          R16 R17 -1 [1]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R16
      135 SETTABLEKS                       R16 R15 K32 ["focusBehavior"]
      137 NEWTABLE                         R16 0 4
      139 GETTABLEKS                       R17 R3 K43 ["None"]
      141 GETIMPORT                        R18 K51 [Enum.TextInputType.Default]
      143 GETIMPORT                        R19 K53 [Enum.TextInputType.Password]
      145 GETIMPORT                        R20 K55 [Enum.TextInputType.Number]
      147 SETLIST                          R16 R17 4 [1]
      149 SETTABLEKS                       R16 R15 K33 ["textInputType"]
      151 GETTABLEKS                       R16 R2 K45 ["values"]
      153 MOVE                             R17 R11
      154 CALL                             R16 1 1
      155 SETTABLEKS                       R16 R15 K34 ["size"]
      157 LOADK                            R16 K56 ["Input Label"]
      158 SETTABLEKS                       R16 R15 K35 ["label"]
      160 LOADK                            R16 K57 ["Helper text goes here"]
      161 SETTABLEKS                       R16 R15 K36 ["hint"]
      163 LOADK                            R16 K58 ["Placeholder text"]
      164 SETTABLEKS                       R16 R15 K37 ["placeholder"]
      166 NEWTABLE                         R16 0 4
      168 LOADK                            R17 K59 ["icons/placeholder/placeholderOn_small"]
      169 LOADK                            R18 K60 ["icons/status/private_small"]
      170 LOADK                            R19 K61 ["icons/common/search_small"]
      171 GETTABLEKS                       R20 R3 K43 ["None"]
      173 SETLIST                          R16 R17 4 [1]
      175 SETTABLEKS                       R16 R15 K38 ["leadingIcon"]
      177 NEWTABLE                         R16 0 6
      179 LOADK                            R17 K62 ["icons/placeholder/placeholderOff"]
      180 LOADK                            R18 K63 ["icons/actions/edit/clear_small"]
      181 LOADK                            R19 K64 ["icons/actions/info_small"]
      182 LOADK                            R20 K65 ["icons/actions/viewOn"]
      183 LOADK                            R21 K66 ["icons/actions/viewOff"]
      184 GETTABLEKS                       R22 R3 K43 ["None"]
      186 SETLIST                          R16 R17 6 [1]
      188 SETTABLEKS                       R16 R15 K39 ["iconTrailing"]
      190 LOADB                            R16 0
      191 SETTABLEKS                       R16 R15 K40 ["trailingButton"]
      193 LOADN                            R16 0
      194 SETTABLEKS                       R16 R15 K41 ["width"]
      196 SETTABLEKS                       R15 R14 K26 ["controls"]
      198 RETURN                           R14 1
