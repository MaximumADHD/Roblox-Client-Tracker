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
       38 DUPTABLE                         R20 K36 [{["LayoutOrder"] = 1, ["text"], ["textInputType"], ["hasError"], ["isDisabled"], ["isRequired"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["onReturnPressed"], ["label"], ["size"], ["width"], ["hint"], ["placeholder"], ["leadingIcon"], ["iconTrailing"], ["textBoxRef"]}]
       39 SETTABLEKS                       R2 R20 K19 ["text"]
       41 GETTABLEKS                       R22 R1 K20 ["textInputType"]
       43 GETUPVAL                         R23 0
       44 GETTABLEKS                       R23 R23 K37 ["None"]
       46 JUMPIFNOTEQ                      R22 R23 ; [+3]
       48 LOADNIL                          R21
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R21 R1 K20 ["textInputType"]
       52 SETTABLEKS                       R21 R20 K20 ["textInputType"]
       54 GETTABLEKS                       R21 R1 K21 ["hasError"]
       56 SETTABLEKS                       R21 R20 K21 ["hasError"]
       58 GETTABLEKS                       R21 R1 K22 ["isDisabled"]
       60 SETTABLEKS                       R21 R20 K22 ["isDisabled"]
       62 GETTABLEKS                       R21 R1 K23 ["isRequired"]
       64 SETTABLEKS                       R21 R20 K23 ["isRequired"]
       66 SETTABLEKS                       R8 R20 K24 ["onChanged"]
       68 SETTABLEKS                       R11 R20 K25 ["onFocusGained"]
       70 SETTABLEKS                       R12 R20 K26 ["onFocusLost"]
       72 SETTABLEKS                       R13 R20 K27 ["onReturnPressed"]
       74 GETTABLEKS                       R21 R1 K28 ["label"]
       76 SETTABLEKS                       R21 R20 K28 ["label"]
       78 GETTABLEKS                       R21 R1 K29 ["size"]
       80 SETTABLEKS                       R21 R20 K29 ["size"]
       82 GETUPVAL                         R22 4
       83 GETTABLEKS                       R22 R22 K38 ["FoundationTextInputTokenBasedWidth"]
       85 JUMPIFNOT                        R22 ; [+4]
       86 GETTABLEKS                       R22 R1 K30 ["width"]
       88 JUMPIFNOTEQKN                    R22 K39 [0] ; [+3]
       90 LOADNIL                          R21
       91 JUMP                             ; [+6]
       92 GETIMPORT                        R21 K42 [UDim.new]
       94 LOADN                            R22 0
       95 GETTABLEKS                       R23 R1 K30 ["width"]
       97 CALL                             R21 2 1
       98 SETTABLEKS                       R21 R20 K30 ["width"]
      100 GETTABLEKS                       R22 R1 K31 ["hint"]
      102 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
      104 LOADNIL                          R21
      105 JUMP                             ; [+2]
      106 GETTABLEKS                       R21 R1 K31 ["hint"]
      108 SETTABLEKS                       R21 R20 K31 ["hint"]
      110 GETTABLEKS                       R21 R1 K32 ["placeholder"]
      112 SETTABLEKS                       R21 R20 K32 ["placeholder"]
      114 GETTABLEKS                       R22 R1 K33 ["leadingIcon"]
      116 GETUPVAL                         R23 0
      117 GETTABLEKS                       R23 R23 K37 ["None"]
      119 JUMPIFNOTEQ                      R22 R23 ; [+3]
      121 LOADNIL                          R21
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R21 R1 K33 ["leadingIcon"]
      125 SETTABLEKS                       R21 R20 K33 ["leadingIcon"]
      127 GETTABLEKS                       R22 R1 K34 ["iconTrailing"]
      129 GETUPVAL                         R23 0
      130 GETTABLEKS                       R23 R23 K37 ["None"]
      132 JUMPIFNOTEQ                      R22 R23 ; [+3]
      134 LOADNIL                          R21
      135 JUMP                             ; [+13]
      136 GETTABLEKS                       R22 R1 K43 ["trailingButton"]
      138 JUMPIFNOT                        R22 ; [+8]
      139 DUPTABLE                         R21 K46 [{"name", "onActivated"}]
      140 GETTABLEKS                       R22 R1 K34 ["iconTrailing"]
      142 SETTABLEKS                       R22 R21 K44 ["name"]
      144 SETTABLEKS                       R9 R21 K45 ["onActivated"]
      146 JUMP                             ; [+2]
      147 GETTABLEKS                       R21 R1 K34 ["iconTrailing"]
      149 SETTABLEKS                       R21 R20 K34 ["iconTrailing"]
      151 SETTABLEKS                       R7 R20 K35 ["textBoxRef"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K12 ["TextInput"]
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R18 R18 K8 ["createElement"]
      159 GETUPVAL                         R19 5
      160 DUPTABLE                         R20 K51 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      161 SETTABLEKS                       R2 R20 K48 ["Text"]
      163 GETTABLEKS                       R21 R6 K52 ["Color"]
      165 GETTABLEKS                       R21 R21 K53 ["System"]
      167 GETTABLEKS                       R21 R21 K54 ["Alert"]
      169 SETTABLEKS                       R21 R20 K49 ["textStyle"]
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K13 ["Output"]
      174 GETUPVAL                         R18 0
      175 GETTABLEKS                       R18 R18 K8 ["createElement"]
      177 GETUPVAL                         R19 6
      178 DUPTABLE                         R20 K58 [{["LayoutOrder"] = 3, ["text"] = "Focus TextInput", ["onActivated"], ["variant"]}]
      179 SETTABLEKS                       R10 R20 K45 ["onActivated"]
      181 GETUPVAL                         R21 7
      182 GETTABLEKS                       R21 R21 K59 ["Standard"]
      184 SETTABLEKS                       R21 R20 K57 ["variant"]
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K14 ["FocusButton"]
      189 GETUPVAL                         R18 0
      190 GETTABLEKS                       R18 R18 K8 ["createElement"]
      192 GETUPVAL                         R19 5
      193 DUPTABLE                         R20 K61 [{["LayoutOrder"] = 4, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      194 LOADK                            R22 K62 ["Num return pressed: "]
      195 FASTCALL1                        TOSTRING R4 ; [+3]
      196 MOVE                             R24 R4
      197 GETIMPORT                        R23 K64 [tostring]
      199 CALL                             R23 1 1
      200 CONCAT                           R21 R22 R23
      201 SETTABLEKS                       R21 R20 K48 ["Text"]
      203 GETTABLEKS                       R21 R6 K52 ["Color"]
      205 GETTABLEKS                       R21 R21 K65 ["Content"]
      207 GETTABLEKS                       R21 R21 K66 ["Emphasis"]
      209 SETTABLEKS                       R21 R20 K49 ["textStyle"]
      211 CALL                             R18 2 1
      212 SETTABLEKS                       R18 R17 K15 ["NumReturnPressed"]
      214 CALL                             R14 3 -1
      215 RETURN                           R14 -1

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
       60 GETTABLEKS                       R10 R10 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R11 K19 ["TextInput"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Utility"]
       74 GETTABLEKS                       R12 R12 K21 ["Flags"]
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
       86 DUPTABLE                         R13 K27 [{["summary"] = "Text field", ["story"], ["controls"]}]
       87 SETTABLEKS                       R12 R13 K25 ["story"]
       89 DUPTABLE                         R14 K44 [{["hasError"] = False, ["isDisabled"] = False, ["isRequired"], ["textInputType"], ["size"], ["label"] = "Input Label", ["hint"] = "Helper text goes here", ["placeholder"] = "Placeholder text", ["leadingIcon"], ["iconTrailing"], ["trailingButton"] = False, ["width"]}]
       90 NEWTABLE                         R15 0 3
       92 GETTABLEKS                       R16 R3 K45 ["None"]
       94 LOADB                            R17 0
       95 LOADB                            R18 1
       96 SETLIST                          R15 R16 3 [1]
       98 SETTABLEKS                       R15 R14 K31 ["isRequired"]
      100 NEWTABLE                         R15 0 4
      102 GETTABLEKS                       R16 R3 K45 ["None"]
      104 GETIMPORT                        R17 K49 [Enum.TextInputType.Default]
      106 GETIMPORT                        R18 K51 [Enum.TextInputType.Password]
      108 GETIMPORT                        R19 K53 [Enum.TextInputType.Number]
      110 SETLIST                          R15 R16 4 [1]
      112 SETTABLEKS                       R15 R14 K32 ["textInputType"]
      114 GETTABLEKS                       R15 R2 K54 ["values"]
      116 MOVE                             R16 R9
      117 CALL                             R15 1 1
      118 SETTABLEKS                       R15 R14 K33 ["size"]
      120 NEWTABLE                         R15 0 4
      122 LOADK                            R16 K55 ["icons/placeholder/placeholderOn_small"]
      123 LOADK                            R17 K56 ["icons/status/private_small"]
      124 LOADK                            R18 K57 ["icons/common/search_small"]
      125 GETTABLEKS                       R19 R3 K45 ["None"]
      127 SETLIST                          R15 R16 4 [1]
      129 SETTABLEKS                       R15 R14 K40 ["leadingIcon"]
      131 NEWTABLE                         R15 0 6
      133 LOADK                            R16 K58 ["icons/placeholder/placeholderOff"]
      134 LOADK                            R17 K59 ["icons/actions/edit/clear_small"]
      135 LOADK                            R18 K60 ["icons/actions/info_small"]
      136 LOADK                            R19 K61 ["icons/actions/viewOn"]
      137 LOADK                            R20 K62 ["icons/actions/viewOff"]
      138 GETTABLEKS                       R21 R3 K45 ["None"]
      140 SETLIST                          R15 R16 6 [1]
      142 SETTABLEKS                       R15 R14 K41 ["iconTrailing"]
      144 GETTABLEKS                       R16 R11 K63 ["FoundationTextInputTokenBasedWidth"]
      146 JUMPIFNOT                        R16 ; [+2]
      147 LOADN                            R15 0
      148 JUMP                             ; [+1]
      149 LOADNIL                          R15
      150 SETTABLEKS                       R15 R14 K43 ["width"]
      152 SETTABLEKS                       R14 R13 K26 ["controls"]
      154 RETURN                           R13 1
