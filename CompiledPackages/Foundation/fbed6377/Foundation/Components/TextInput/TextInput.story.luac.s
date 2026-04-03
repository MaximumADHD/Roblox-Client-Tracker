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
       88 GETTABLEKS                       R22 R1 K29 ["width"]
       90 JUMPIFNOTEQKN                    R22 K37 [0] ; [+3]
       92 LOADNIL                          R21
       93 JUMP                             ; [+6]
       94 GETIMPORT                        R21 K40 [UDim.new]
       96 LOADN                            R22 0
       97 GETTABLEKS                       R23 R1 K29 ["width"]
       99 CALL                             R21 2 1
      100 SETTABLEKS                       R21 R20 K29 ["width"]
      102 GETTABLEKS                       R22 R1 K30 ["hint"]
      104 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      106 LOADNIL                          R21
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R21 R1 K30 ["hint"]
      110 SETTABLEKS                       R21 R20 K30 ["hint"]
      112 GETTABLEKS                       R21 R1 K31 ["placeholder"]
      114 SETTABLEKS                       R21 R20 K31 ["placeholder"]
      116 GETTABLEKS                       R22 R1 K32 ["leadingIcon"]
      118 GETUPVAL                         R24 0
      119 GETTABLEKS                       R23 R24 K36 ["None"]
      121 JUMPIFNOTEQ                      R22 R23 ; [+3]
      123 LOADNIL                          R21
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R21 R1 K32 ["leadingIcon"]
      127 SETTABLEKS                       R21 R20 K32 ["leadingIcon"]
      129 GETTABLEKS                       R22 R1 K33 ["iconTrailing"]
      131 GETUPVAL                         R24 0
      132 GETTABLEKS                       R23 R24 K36 ["None"]
      134 JUMPIFNOTEQ                      R22 R23 ; [+3]
      136 LOADNIL                          R21
      137 JUMP                             ; [+13]
      138 GETTABLEKS                       R22 R1 K41 ["trailingButton"]
      140 JUMPIFNOT                        R22 ; [+8]
      141 DUPTABLE                         R21 K44 [{"name", "onActivated"}]
      142 GETTABLEKS                       R22 R1 K33 ["iconTrailing"]
      144 SETTABLEKS                       R22 R21 K42 ["name"]
      146 SETTABLEKS                       R9 R21 K43 ["onActivated"]
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R21 R1 K33 ["iconTrailing"]
      151 SETTABLEKS                       R21 R20 K33 ["iconTrailing"]
      153 SETTABLEKS                       R7 R20 K34 ["textBoxRef"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      158 GETUPVAL                         R19 0
      159 GETTABLEKS                       R18 R19 K8 ["createElement"]
      161 GETUPVAL                         R19 4
      162 DUPTABLE                         R20 K47 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      163 LOADN                            R21 2
      164 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      166 SETTABLEKS                       R2 R20 K45 ["Text"]
      168 GETTABLEKS                       R23 R6 K48 ["Color"]
      170 GETTABLEKS                       R22 R23 K49 ["System"]
      172 GETTABLEKS                       R21 R22 K50 ["Alert"]
      174 SETTABLEKS                       R21 R20 K46 ["textStyle"]
      176 LOADK                            R21 K51 ["auto-xy"]
      177 SETTABLEKS                       R21 R20 K9 ["tag"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K13 ["Output"]
      182 GETUPVAL                         R19 0
      183 GETTABLEKS                       R18 R19 K8 ["createElement"]
      185 GETUPVAL                         R19 5
      186 DUPTABLE                         R20 K53 [{"LayoutOrder", "text", "onActivated", "variant"}]
      187 LOADN                            R21 3
      188 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      190 LOADK                            R21 K54 ["Focus TextInput"]
      191 SETTABLEKS                       R21 R20 K18 ["text"]
      193 SETTABLEKS                       R10 R20 K43 ["onActivated"]
      195 GETUPVAL                         R22 6
      196 GETTABLEKS                       R21 R22 K55 ["Standard"]
      198 SETTABLEKS                       R21 R20 K52 ["variant"]
      200 CALL                             R18 2 1
      201 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      203 GETUPVAL                         R19 0
      204 GETTABLEKS                       R18 R19 K8 ["createElement"]
      206 GETUPVAL                         R19 4
      207 DUPTABLE                         R20 K47 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      208 LOADN                            R21 4
      209 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      211 LOADK                            R22 K56 ["Num return pressed: "]
      212 FASTCALL1                        TOSTRING R4 ; [+3]
      213 MOVE                             R24 R4
      214 GETIMPORT                        R23 K58 [tostring]
      216 CALL                             R23 1 1
      217 CONCAT                           R21 R22 R23
      218 SETTABLEKS                       R21 R20 K45 ["Text"]
      220 GETTABLEKS                       R23 R6 K48 ["Color"]
      222 GETTABLEKS                       R22 R23 K59 ["Content"]
      224 GETTABLEKS                       R21 R22 K60 ["Emphasis"]
      226 SETTABLEKS                       R21 R20 K46 ["textStyle"]
      228 LOADK                            R21 K51 ["auto-xy"]
      229 SETTABLEKS                       R21 R20 K9 ["tag"]
      231 CALL                             R18 2 1
      232 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      234 CALL                             R14 3 -1
      235 RETURN                           R14 -1

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
       70 DUPCLOSURE                       R11 K20 [PROTO_7]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 DUPTABLE                         R12 K24 [{"summary", "story", "controls"}]
       79 LOADK                            R13 K25 ["Text field"]
       80 SETTABLEKS                       R13 R12 K21 ["summary"]
       82 SETTABLEKS                       R11 R12 K22 ["story"]
       84 DUPTABLE                         R13 K38 [{"hasError", "isDisabled", "isRequired", "textInputType", "size", "label", "hint", "placeholder", "leadingIcon", "iconTrailing", "trailingButton", "width"}]
       85 LOADB                            R14 0
       86 SETTABLEKS                       R14 R13 K26 ["hasError"]
       88 LOADB                            R14 0
       89 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
       91 NEWTABLE                         R14 0 3
       93 GETTABLEKS                       R15 R3 K39 ["None"]
       95 LOADB                            R16 0
       96 LOADB                            R17 1
       97 SETLIST                          R14 R15 3 [1]
       99 SETTABLEKS                       R14 R13 K28 ["isRequired"]
      101 NEWTABLE                         R14 0 4
      103 GETTABLEKS                       R15 R3 K39 ["None"]
      105 GETIMPORT                        R16 K43 [Enum.TextInputType.Default]
      107 GETIMPORT                        R17 K45 [Enum.TextInputType.Password]
      109 GETIMPORT                        R18 K47 [Enum.TextInputType.Number]
      111 SETLIST                          R14 R15 4 [1]
      113 SETTABLEKS                       R14 R13 K29 ["textInputType"]
      115 GETTABLEKS                       R14 R2 K48 ["values"]
      117 MOVE                             R15 R9
      118 CALL                             R14 1 1
      119 SETTABLEKS                       R14 R13 K30 ["size"]
      121 LOADK                            R14 K49 ["Input Label"]
      122 SETTABLEKS                       R14 R13 K31 ["label"]
      124 LOADK                            R14 K50 ["Helper text goes here"]
      125 SETTABLEKS                       R14 R13 K32 ["hint"]
      127 LOADK                            R14 K51 ["Placeholder text"]
      128 SETTABLEKS                       R14 R13 K33 ["placeholder"]
      130 NEWTABLE                         R14 0 4
      132 LOADK                            R15 K52 ["icons/placeholder/placeholderOn_small"]
      133 LOADK                            R16 K53 ["icons/status/private_small"]
      134 LOADK                            R17 K54 ["icons/common/search_small"]
      135 GETTABLEKS                       R18 R3 K39 ["None"]
      137 SETLIST                          R14 R15 4 [1]
      139 SETTABLEKS                       R14 R13 K34 ["leadingIcon"]
      141 NEWTABLE                         R14 0 6
      143 LOADK                            R15 K55 ["icons/placeholder/placeholderOff"]
      144 LOADK                            R16 K56 ["icons/actions/edit/clear_small"]
      145 LOADK                            R17 K57 ["icons/actions/info_small"]
      146 LOADK                            R18 K58 ["icons/actions/viewOn"]
      147 LOADK                            R19 K59 ["icons/actions/viewOff"]
      148 GETTABLEKS                       R20 R3 K39 ["None"]
      150 SETLIST                          R14 R15 6 [1]
      152 SETTABLEKS                       R14 R13 K35 ["iconTrailing"]
      154 LOADB                            R14 0
      155 SETTABLEKS                       R14 R13 K36 ["trailingButton"]
      157 LOADN                            R14 0
      158 SETTABLEKS                       R14 R13 K37 ["width"]
      160 SETTABLEKS                       R13 R12 K23 ["controls"]
      162 RETURN                           R12 1
