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
       32 DUPTABLE                         R16 K11 [{["tag"] = "col gap-large auto-xy padding-xlarge"}]
       33 DUPTABLE                         R17 K16 [{"TextInput", "Output", "FocusButton", "NumReturnPressed"}]
       34 GETUPVAL                         R18 0
       35 GETTABLEKS                       R18 R18 K8 ["createElement"]
       37 GETUPVAL                         R19 3
       38 DUPTABLE                         R20 K39 [{["LayoutOrder"] = 1, ["text"], ["textInputType"], ["focusBehavior"], ["hasClearButton"], ["variant"], ["hasError"], ["isDisabled"], ["isRequired"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["onReturnPressed"], ["label"], ["size"], ["width"], ["hint"], ["placeholder"], ["leadingIcon"], ["iconTrailing"], ["textBoxRef"]}]
       39 SETTABLEKS                       R2 R20 K19 ["text"]
       41 GETTABLEKS                       R22 R1 K20 ["textInputType"]
       43 GETUPVAL                         R23 0
       44 GETTABLEKS                       R23 R23 K40 ["None"]
       46 JUMPIFNOTEQ                      R22 R23 ; [+3]
       48 LOADNIL                          R21
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R21 R1 K20 ["textInputType"]
       52 SETTABLEKS                       R21 R20 K20 ["textInputType"]
       54 GETTABLEKS                       R22 R1 K21 ["focusBehavior"]
       56 GETUPVAL                         R23 0
       57 GETTABLEKS                       R23 R23 K40 ["None"]
       59 JUMPIFEQ                         R22 R23 ; [+4]
       61 GETTABLEKS                       R21 R1 K21 ["focusBehavior"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R21
       65 SETTABLEKS                       R21 R20 K21 ["focusBehavior"]
       67 GETTABLEKS                       R22 R1 K22 ["hasClearButton"]
       69 GETUPVAL                         R23 0
       70 GETTABLEKS                       R23 R23 K40 ["None"]
       72 JUMPIFNOTEQ                      R22 R23 ; [+3]
       74 LOADNIL                          R21
       75 JUMP                             ; [+2]
       76 GETTABLEKS                       R21 R1 K22 ["hasClearButton"]
       78 SETTABLEKS                       R21 R20 K22 ["hasClearButton"]
       80 GETTABLEKS                       R21 R1 K23 ["variant"]
       82 SETTABLEKS                       R21 R20 K23 ["variant"]
       84 GETTABLEKS                       R21 R1 K24 ["hasError"]
       86 SETTABLEKS                       R21 R20 K24 ["hasError"]
       88 GETTABLEKS                       R21 R1 K25 ["isDisabled"]
       90 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
       92 GETTABLEKS                       R21 R1 K26 ["isRequired"]
       94 SETTABLEKS                       R21 R20 K26 ["isRequired"]
       96 SETTABLEKS                       R8 R20 K27 ["onChanged"]
       98 SETTABLEKS                       R11 R20 K28 ["onFocusGained"]
      100 SETTABLEKS                       R12 R20 K29 ["onFocusLost"]
      102 SETTABLEKS                       R13 R20 K30 ["onReturnPressed"]
      104 GETTABLEKS                       R21 R1 K31 ["label"]
      106 SETTABLEKS                       R21 R20 K31 ["label"]
      108 GETTABLEKS                       R21 R1 K32 ["size"]
      110 SETTABLEKS                       R21 R20 K32 ["size"]
      112 GETTABLEKS                       R22 R1 K33 ["width"]
      114 JUMPIFNOTEQKN                    R22 K41 [0] ; [+3]
      116 LOADNIL                          R21
      117 JUMP                             ; [+6]
      118 GETIMPORT                        R21 K44 [UDim.new]
      120 LOADN                            R22 0
      121 GETTABLEKS                       R23 R1 K33 ["width"]
      123 CALL                             R21 2 1
      124 SETTABLEKS                       R21 R20 K33 ["width"]
      126 GETTABLEKS                       R22 R1 K34 ["hint"]
      128 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      130 LOADNIL                          R21
      131 JUMP                             ; [+2]
      132 GETTABLEKS                       R21 R1 K34 ["hint"]
      134 SETTABLEKS                       R21 R20 K34 ["hint"]
      136 GETTABLEKS                       R21 R1 K35 ["placeholder"]
      138 SETTABLEKS                       R21 R20 K35 ["placeholder"]
      140 GETTABLEKS                       R22 R1 K36 ["leadingIcon"]
      142 GETUPVAL                         R23 0
      143 GETTABLEKS                       R23 R23 K40 ["None"]
      145 JUMPIFNOTEQ                      R22 R23 ; [+3]
      147 LOADNIL                          R21
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R21 R1 K36 ["leadingIcon"]
      151 SETTABLEKS                       R21 R20 K36 ["leadingIcon"]
      153 GETTABLEKS                       R22 R1 K37 ["iconTrailing"]
      155 GETUPVAL                         R23 0
      156 GETTABLEKS                       R23 R23 K40 ["None"]
      158 JUMPIFNOTEQ                      R22 R23 ; [+3]
      160 LOADNIL                          R21
      161 JUMP                             ; [+13]
      162 GETTABLEKS                       R22 R1 K45 ["trailingButton"]
      164 JUMPIFNOT                        R22 ; [+8]
      165 DUPTABLE                         R21 K48 [{"name", "onActivated"}]
      166 GETTABLEKS                       R22 R1 K37 ["iconTrailing"]
      168 SETTABLEKS                       R22 R21 K46 ["name"]
      170 SETTABLEKS                       R9 R21 K47 ["onActivated"]
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R21 R1 K37 ["iconTrailing"]
      175 SETTABLEKS                       R21 R20 K37 ["iconTrailing"]
      177 SETTABLEKS                       R7 R20 K38 ["textBoxRef"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      182 GETUPVAL                         R18 0
      183 GETTABLEKS                       R18 R18 K8 ["createElement"]
      185 GETUPVAL                         R19 4
      186 DUPTABLE                         R20 K53 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      187 SETTABLEKS                       R2 R20 K50 ["Text"]
      189 GETTABLEKS                       R21 R6 K54 ["Color"]
      191 GETTABLEKS                       R21 R21 K55 ["System"]
      193 GETTABLEKS                       R21 R21 K56 ["Alert"]
      195 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      197 CALL                             R18 2 1
      198 SETTABLEKS                       R18 R17 K13 ["Output"]
      200 GETUPVAL                         R18 0
      201 GETTABLEKS                       R18 R18 K8 ["createElement"]
      203 GETUPVAL                         R19 5
      204 DUPTABLE                         R20 K59 [{["LayoutOrder"] = 3, ["text"] = "Focus TextInput", ["onActivated"], ["variant"]}]
      205 SETTABLEKS                       R10 R20 K47 ["onActivated"]
      207 GETUPVAL                         R21 6
      208 GETTABLEKS                       R21 R21 K60 ["Standard"]
      210 SETTABLEKS                       R21 R20 K23 ["variant"]
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      215 GETUPVAL                         R18 0
      216 GETTABLEKS                       R18 R18 K8 ["createElement"]
      218 GETUPVAL                         R19 4
      219 DUPTABLE                         R20 K62 [{["LayoutOrder"] = 4, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      220 LOADK                            R22 K63 ["Num return pressed: "]
      221 FASTCALL1                        TOSTRING R4 ; [+3]
      222 MOVE                             R24 R4
      223 GETIMPORT                        R23 K65 [tostring]
      225 CALL                             R23 1 1
      226 CONCAT                           R21 R22 R23
      227 SETTABLEKS                       R21 R20 K50 ["Text"]
      229 GETTABLEKS                       R21 R6 K54 ["Color"]
      231 GETTABLEKS                       R21 R21 K66 ["Content"]
      233 GETTABLEKS                       R21 R21 K67 ["Emphasis"]
      235 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      237 CALL                             R18 2 1
      238 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      240 CALL                             R14 3 -1
      241 RETURN                           R14 -1

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
       92 DUPTABLE                         R14 K27 [{["summary"] = "Text field", ["story"], ["controls"]}]
       93 SETTABLEKS                       R13 R14 K25 ["story"]
       95 DUPTABLE                         R15 K48 [{["hasError"] = False, ["isDisabled"] = False, ["isRequired"], ["focusBehavior"], ["hasClearButton"], ["textInputType"], ["variant"], ["size"], ["label"] = "Input Label", ["hint"] = "Helper text goes here", ["placeholder"] = "Placeholder text", ["leadingIcon"], ["iconTrailing"], ["trailingButton"] = False, ["width"] = 0}]
       96 NEWTABLE                         R16 0 3
       98 GETTABLEKS                       R17 R3 K49 ["None"]
      100 LOADB                            R18 0
      101 LOADB                            R19 1
      102 SETLIST                          R16 R17 3 [1]
      104 SETTABLEKS                       R16 R15 K31 ["isRequired"]
      106 NEWTABLE                         R16 0 2
      108 GETTABLEKS                       R17 R3 K49 ["None"]
      110 GETTABLEKS                       R19 R2 K50 ["values"]
      112 MOVE                             R20 R9
      113 CALL                             R19 1 -1
      114 FASTCALL                         TABLE_UNPACK ; [+2]
      115 GETIMPORT                        R18 K52 [unpack]
      117 CALL                             R18 -1 -1
      118 SETLIST                          R16 R17 -1 [1]
      120 SETTABLEKS                       R16 R15 K32 ["focusBehavior"]
      122 NEWTABLE                         R16 0 3
      124 GETTABLEKS                       R17 R3 K49 ["None"]
      126 LOADB                            R18 0
      127 LOADB                            R19 1
      128 SETLIST                          R16 R17 3 [1]
      130 SETTABLEKS                       R16 R15 K33 ["hasClearButton"]
      132 NEWTABLE                         R16 0 4
      134 GETTABLEKS                       R17 R3 K49 ["None"]
      136 GETIMPORT                        R18 K56 [Enum.TextInputType.Default]
      138 GETIMPORT                        R19 K58 [Enum.TextInputType.Password]
      140 GETIMPORT                        R20 K60 [Enum.TextInputType.Number]
      142 SETLIST                          R16 R17 4 [1]
      144 SETTABLEKS                       R16 R15 K34 ["textInputType"]
      146 GETTABLEKS                       R16 R2 K50 ["values"]
      148 MOVE                             R17 R11
      149 CALL                             R16 1 1
      150 SETTABLEKS                       R16 R15 K35 ["variant"]
      152 GETTABLEKS                       R16 R2 K50 ["values"]
      154 MOVE                             R17 R10
      155 CALL                             R16 1 1
      156 SETTABLEKS                       R16 R15 K36 ["size"]
      158 NEWTABLE                         R16 0 4
      160 LOADK                            R17 K61 ["icons/placeholder/placeholderOn_small"]
      161 LOADK                            R18 K62 ["icons/status/private_small"]
      162 LOADK                            R19 K63 ["icons/common/search_small"]
      163 GETTABLEKS                       R20 R3 K49 ["None"]
      165 SETLIST                          R16 R17 4 [1]
      167 SETTABLEKS                       R16 R15 K43 ["leadingIcon"]
      169 NEWTABLE                         R16 0 6
      171 LOADK                            R17 K64 ["icons/placeholder/placeholderOff"]
      172 LOADK                            R18 K65 ["icons/actions/edit/clear_small"]
      173 LOADK                            R19 K66 ["icons/actions/info_small"]
      174 LOADK                            R20 K67 ["icons/actions/viewOn"]
      175 LOADK                            R21 K68 ["icons/actions/viewOff"]
      176 GETTABLEKS                       R22 R3 K49 ["None"]
      178 SETLIST                          R16 R17 6 [1]
      180 SETTABLEKS                       R16 R15 K44 ["iconTrailing"]
      182 SETTABLEKS                       R15 R14 K26 ["controls"]
      184 RETURN                           R14 1
