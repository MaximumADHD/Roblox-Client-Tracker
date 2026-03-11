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
       41 DUPTABLE                         R20 K35 [{"LayoutOrder", "text", "textInputType", "hasError", "isDisabled", "isRequired", "onChanged", "onFocusGained", "onFocusLost", "onReturnPressed", "label", "size", "width", "hint", "placeholder", "leadingIcon", "iconTrailing", "textBoxRef"}]
       42 LOADN                            R21 1
       43 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       45 SETTABLEKS                       R2 R20 K18 ["text"]
       47 GETTABLEKS                       R22 R1 K19 ["textInputType"]
       49 GETUPVAL                         R24 0
       50 GETTABLEKS                       R23 R24 K36 ["None"]
       52 JUMPIFNOTEQ                      R22 R23 ; [+3]
       54 LOADNIL                          R21
       55 JUMP                             ; [+2]
       56 GETTABLEKS                       R21 R1 K19 ["textInputType"]
       58 SETTABLEKS                       R21 R20 K19 ["textInputType"]
       60 GETTABLEKS                       R21 R1 K20 ["hasError"]
       62 SETTABLEKS                       R21 R20 K20 ["hasError"]
       64 GETTABLEKS                       R21 R1 K21 ["isDisabled"]
       66 SETTABLEKS                       R21 R20 K21 ["isDisabled"]
       68 GETTABLEKS                       R21 R1 K22 ["isRequired"]
       70 SETTABLEKS                       R21 R20 K22 ["isRequired"]
       72 SETTABLEKS                       R8 R20 K23 ["onChanged"]
       74 SETTABLEKS                       R11 R20 K24 ["onFocusGained"]
       76 SETTABLEKS                       R12 R20 K25 ["onFocusLost"]
       78 SETTABLEKS                       R13 R20 K26 ["onReturnPressed"]
       80 GETTABLEKS                       R21 R1 K27 ["label"]
       82 SETTABLEKS                       R21 R20 K27 ["label"]
       84 GETTABLEKS                       R21 R1 K28 ["size"]
       86 SETTABLEKS                       R21 R20 K28 ["size"]
       88 GETUPVAL                         R23 4
       89 GETTABLEKS                       R22 R23 K37 ["FoundationTextInputTokenBasedWidth"]
       91 JUMPIFNOT                        R22 ; [+4]
       92 GETTABLEKS                       R22 R1 K29 ["width"]
       94 JUMPIFNOTEQKN                    R22 K38 [0] ; [+3]
       96 LOADNIL                          R21
       97 JUMP                             ; [+6]
       98 GETIMPORT                        R21 K41 [UDim.new]
      100 LOADN                            R22 0
      101 GETTABLEKS                       R23 R1 K29 ["width"]
      103 CALL                             R21 2 1
      104 SETTABLEKS                       R21 R20 K29 ["width"]
      106 GETTABLEKS                       R22 R1 K30 ["hint"]
      108 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      110 LOADNIL                          R21
      111 JUMP                             ; [+2]
      112 GETTABLEKS                       R21 R1 K30 ["hint"]
      114 SETTABLEKS                       R21 R20 K30 ["hint"]
      116 GETTABLEKS                       R21 R1 K31 ["placeholder"]
      118 SETTABLEKS                       R21 R20 K31 ["placeholder"]
      120 GETTABLEKS                       R22 R1 K32 ["leadingIcon"]
      122 GETUPVAL                         R24 0
      123 GETTABLEKS                       R23 R24 K36 ["None"]
      125 JUMPIFNOTEQ                      R22 R23 ; [+3]
      127 LOADNIL                          R21
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R21 R1 K32 ["leadingIcon"]
      131 SETTABLEKS                       R21 R20 K32 ["leadingIcon"]
      133 GETTABLEKS                       R22 R1 K33 ["iconTrailing"]
      135 GETUPVAL                         R24 0
      136 GETTABLEKS                       R23 R24 K36 ["None"]
      138 JUMPIFNOTEQ                      R22 R23 ; [+3]
      140 LOADNIL                          R21
      141 JUMP                             ; [+13]
      142 GETTABLEKS                       R22 R1 K42 ["trailingButton"]
      144 JUMPIFNOT                        R22 ; [+8]
      145 DUPTABLE                         R21 K45 [{"name", "onActivated"}]
      146 GETTABLEKS                       R22 R1 K33 ["iconTrailing"]
      148 SETTABLEKS                       R22 R21 K43 ["name"]
      150 SETTABLEKS                       R9 R21 K44 ["onActivated"]
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R21 R1 K33 ["iconTrailing"]
      155 SETTABLEKS                       R21 R20 K33 ["iconTrailing"]
      157 SETTABLEKS                       R7 R20 K34 ["textBoxRef"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      162 GETUPVAL                         R19 0
      163 GETTABLEKS                       R18 R19 K8 ["createElement"]
      165 GETUPVAL                         R19 5
      166 DUPTABLE                         R20 K48 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      167 LOADN                            R21 2
      168 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      170 SETTABLEKS                       R2 R20 K46 ["Text"]
      172 GETTABLEKS                       R23 R6 K49 ["Color"]
      174 GETTABLEKS                       R22 R23 K50 ["System"]
      176 GETTABLEKS                       R21 R22 K51 ["Alert"]
      178 SETTABLEKS                       R21 R20 K47 ["textStyle"]
      180 LOADK                            R21 K52 ["auto-xy"]
      181 SETTABLEKS                       R21 R20 K9 ["tag"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K13 ["Output"]
      186 GETUPVAL                         R19 0
      187 GETTABLEKS                       R18 R19 K8 ["createElement"]
      189 GETUPVAL                         R19 6
      190 DUPTABLE                         R20 K54 [{"LayoutOrder", "text", "onActivated", "variant"}]
      191 LOADN                            R21 3
      192 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      194 LOADK                            R21 K55 ["Focus TextInput"]
      195 SETTABLEKS                       R21 R20 K18 ["text"]
      197 SETTABLEKS                       R10 R20 K44 ["onActivated"]
      199 GETUPVAL                         R22 7
      200 GETTABLEKS                       R21 R22 K56 ["Standard"]
      202 SETTABLEKS                       R21 R20 K53 ["variant"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      207 GETUPVAL                         R19 0
      208 GETTABLEKS                       R18 R19 K8 ["createElement"]
      210 GETUPVAL                         R19 5
      211 DUPTABLE                         R20 K48 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      212 LOADN                            R21 4
      213 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      215 LOADK                            R22 K57 ["Num return pressed: "]
      216 FASTCALL1                        TOSTRING R4 ; [+3]
      217 MOVE                             R24 R4
      218 GETIMPORT                        R23 K59 [tostring]
      220 CALL                             R23 1 1
      221 CONCAT                           R21 R22 R23
      222 SETTABLEKS                       R21 R20 K46 ["Text"]
      224 GETTABLEKS                       R23 R6 K49 ["Color"]
      226 GETTABLEKS                       R22 R23 K60 ["Content"]
      228 GETTABLEKS                       R21 R22 K61 ["Emphasis"]
      230 SETTABLEKS                       R21 R20 K47 ["textStyle"]
      232 LOADK                            R21 K52 ["auto-xy"]
      233 SETTABLEKS                       R21 R20 K9 ["tag"]
      235 CALL                             R18 2 1
      236 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      238 CALL                             R14 3 -1
      239 RETURN                           R14 -1

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
       67 GETTABLEKS                       R11 R12 K19 ["TextInput"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Utility"]
       74 GETTABLEKS                       R12 R13 K21 ["Flags"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K22 [PROTO_7]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 DUPTABLE                         R13 K26 [{"summary", "story", "controls"}]
       87 LOADK                            R14 K27 ["Text field"]
       88 SETTABLEKS                       R14 R13 K23 ["summary"]
       90 SETTABLEKS                       R12 R13 K24 ["story"]
       92 DUPTABLE                         R14 K40 [{"hasError", "isDisabled", "isRequired", "textInputType", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
       93 LOADB                            R15 0
       94 SETTABLEKS                       R15 R14 K28 ["hasError"]
       96 LOADB                            R15 0
       97 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
       99 NEWTABLE                         R15 0 3
      101 GETTABLEKS                       R16 R3 K41 ["None"]
      103 LOADB                            R17 0
      104 LOADB                            R18 1
      105 SETLIST                          R15 R16 3 [1]
      107 SETTABLEKS                       R15 R14 K30 ["isRequired"]
      109 NEWTABLE                         R15 0 4
      111 GETTABLEKS                       R16 R3 K41 ["None"]
      113 GETIMPORT                        R17 K45 [Enum.TextInputType.Default]
      115 GETIMPORT                        R18 K47 [Enum.TextInputType.Password]
      117 GETIMPORT                        R19 K49 [Enum.TextInputType.Number]
      119 SETLIST                          R15 R16 4 [1]
      121 SETTABLEKS                       R15 R14 K31 ["textInputType"]
      123 GETTABLEKS                       R15 R2 K50 ["values"]
      125 MOVE                             R16 R9
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K32 ["size"]
      129 LOADK                            R15 K51 ["Input Label"]
      130 SETTABLEKS                       R15 R14 K33 ["label"]
      132 LOADK                            R15 K52 ["Helper text goes here"]
      133 SETTABLEKS                       R15 R14 K34 ["hint"]
      135 LOADK                            R15 K53 ["Placeholder text"]
      136 SETTABLEKS                       R15 R14 K35 ["placeholder"]
      138 NEWTABLE                         R15 0 4
      140 LOADK                            R16 K54 ["icons/placeholder/placeholderOn_small"]
      141 LOADK                            R17 K55 ["icons/status/private_small"]
      142 LOADK                            R18 K56 ["icons/common/search_small"]
      143 GETTABLEKS                       R19 R3 K41 ["None"]
      145 SETLIST                          R15 R16 4 [1]
      147 SETTABLEKS                       R15 R14 K36 ["leadingIcon"]
      149 NEWTABLE                         R15 0 6
      151 LOADK                            R16 K57 ["icons/placeholder/placeholderOff"]
      152 LOADK                            R17 K58 ["icons/actions/edit/clear_small"]
      153 LOADK                            R18 K59 ["icons/actions/info_small"]
      154 LOADK                            R19 K60 ["icons/actions/viewOn"]
      155 LOADK                            R20 K61 ["icons/actions/viewOff"]
      156 GETTABLEKS                       R21 R3 K41 ["None"]
      158 SETLIST                          R15 R16 6 [1]
      160 SETTABLEKS                       R15 R14 K37 ["iconTrailing"]
      162 LOADB                            R15 0
      163 SETTABLEKS                       R15 R14 K38 ["trailingButton"]
      165 GETTABLEKS                       R16 R11 K62 ["FoundationTextInputTokenBasedWidth"]
      167 JUMPIFNOT                        R16 ; [+2]
      168 LOADN                            R15 0
      169 JUMP                             ; [+1]
      170 LOADNIL                          R15
      171 SETTABLEKS                       R15 R14 K39 ["width"]
      173 SETTABLEKS                       R14 R13 K25 ["controls"]
      175 RETURN                           R13 1
