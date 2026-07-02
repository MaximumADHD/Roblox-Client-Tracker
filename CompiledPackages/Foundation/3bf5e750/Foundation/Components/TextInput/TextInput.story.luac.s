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
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["focus lost!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useState"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K3 ["useRef"]
       17 LOADNIL                          R8
       18 CALL                             R7 1 1
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R3
       21 DUPCLOSURE                       R9 K4 [PROTO_1]
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          VAL R7
       24 DUPCLOSURE                       R11 K5 [PROTO_3]
       25 DUPCLOSURE                       R12 K6 [PROTO_4]
       26 NEWCLOSURE                       R13 P5
       27 CAPTURE                          VAL R5
       28 GETUPVAL                         R14 0
       29 GETTABLEKS                       R14 R14 K7 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K10 [{["tag"] = "col gap-large auto-xy padding-xlarge"}]
       33 DUPTABLE                         R17 K15 [{"TextInput", "Output", "FocusButton", "NumReturnPressed"}]
       34 GETUPVAL                         R18 0
       35 GETTABLEKS                       R18 R18 K7 ["createElement"]
       37 GETUPVAL                         R19 3
       38 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 1, ["text"], ["textInputType"], ["hasError"], ["isDisabled"], ["isRequired"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["onReturnPressed"], ["label"], ["size"], ["hint"], ["placeholder"], ["leadingIcon"], ["iconTrailing"], ["textBoxRef"]}]
       39 SETTABLEKS                       R2 R20 K18 ["text"]
       41 GETTABLEKS                       R22 R1 K19 ["textInputType"]
       43 GETUPVAL                         R23 0
       44 GETTABLEKS                       R23 R23 K35 ["None"]
       46 JUMPIFNOTEQ                      R22 R23 ; [+3]
       48 LOADNIL                          R21
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R21 R1 K19 ["textInputType"]
       52 SETTABLEKS                       R21 R20 K19 ["textInputType"]
       54 GETTABLEKS                       R21 R1 K20 ["hasError"]
       56 SETTABLEKS                       R21 R20 K20 ["hasError"]
       58 GETTABLEKS                       R21 R1 K21 ["isDisabled"]
       60 SETTABLEKS                       R21 R20 K21 ["isDisabled"]
       62 GETTABLEKS                       R21 R1 K22 ["isRequired"]
       64 SETTABLEKS                       R21 R20 K22 ["isRequired"]
       66 SETTABLEKS                       R8 R20 K23 ["onChanged"]
       68 SETTABLEKS                       R11 R20 K24 ["onFocusGained"]
       70 SETTABLEKS                       R12 R20 K25 ["onFocusLost"]
       72 SETTABLEKS                       R13 R20 K26 ["onReturnPressed"]
       74 GETTABLEKS                       R21 R1 K27 ["label"]
       76 SETTABLEKS                       R21 R20 K27 ["label"]
       78 GETTABLEKS                       R21 R1 K28 ["size"]
       80 SETTABLEKS                       R21 R20 K28 ["size"]
       82 GETTABLEKS                       R22 R1 K29 ["hint"]
       84 JUMPIFNOTEQKS                    R22 K2 [""] ; [+3]
       86 LOADNIL                          R21
       87 JUMP                             ; [+2]
       88 GETTABLEKS                       R21 R1 K29 ["hint"]
       90 SETTABLEKS                       R21 R20 K29 ["hint"]
       92 GETTABLEKS                       R21 R1 K30 ["placeholder"]
       94 SETTABLEKS                       R21 R20 K30 ["placeholder"]
       96 GETTABLEKS                       R22 R1 K31 ["leadingIcon"]
       98 GETUPVAL                         R23 0
       99 GETTABLEKS                       R23 R23 K35 ["None"]
      101 JUMPIFNOTEQ                      R22 R23 ; [+3]
      103 LOADNIL                          R21
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R21 R1 K31 ["leadingIcon"]
      107 SETTABLEKS                       R21 R20 K31 ["leadingIcon"]
      109 GETTABLEKS                       R22 R1 K32 ["iconTrailing"]
      111 GETUPVAL                         R23 0
      112 GETTABLEKS                       R23 R23 K35 ["None"]
      114 JUMPIFNOTEQ                      R22 R23 ; [+3]
      116 LOADNIL                          R21
      117 JUMP                             ; [+13]
      118 GETTABLEKS                       R22 R1 K36 ["trailingButton"]
      120 JUMPIFNOT                        R22 ; [+8]
      121 DUPTABLE                         R21 K39 [{"name", "onActivated"}]
      122 GETTABLEKS                       R22 R1 K32 ["iconTrailing"]
      124 SETTABLEKS                       R22 R21 K37 ["name"]
      126 SETTABLEKS                       R9 R21 K38 ["onActivated"]
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R21 R1 K32 ["iconTrailing"]
      131 SETTABLEKS                       R21 R20 K32 ["iconTrailing"]
      133 SETTABLEKS                       R7 R20 K33 ["textBoxRef"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K11 ["TextInput"]
      138 GETUPVAL                         R18 0
      139 GETTABLEKS                       R18 R18 K7 ["createElement"]
      141 GETUPVAL                         R19 4
      142 DUPTABLE                         R20 K44 [{["LayoutOrder"] = 2, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      143 SETTABLEKS                       R2 R20 K41 ["Text"]
      145 GETTABLEKS                       R21 R6 K45 ["Color"]
      147 GETTABLEKS                       R21 R21 K46 ["System"]
      149 GETTABLEKS                       R21 R21 K47 ["Alert"]
      151 SETTABLEKS                       R21 R20 K42 ["textStyle"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K12 ["Output"]
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R18 R18 K7 ["createElement"]
      159 GETUPVAL                         R19 5
      160 DUPTABLE                         R20 K51 [{["LayoutOrder"] = 3, ["text"] = "Focus TextInput", ["onActivated"], ["variant"]}]
      161 SETTABLEKS                       R10 R20 K38 ["onActivated"]
      163 GETUPVAL                         R21 6
      164 GETTABLEKS                       R21 R21 K52 ["Standard"]
      166 SETTABLEKS                       R21 R20 K50 ["variant"]
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K13 ["FocusButton"]
      171 GETUPVAL                         R18 0
      172 GETTABLEKS                       R18 R18 K7 ["createElement"]
      174 GETUPVAL                         R19 4
      175 DUPTABLE                         R20 K54 [{["LayoutOrder"] = 4, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      176 LOADK                            R22 K55 ["Num return pressed: "]
      177 FASTCALL1                        TOSTRING R4 ; [+3]
      178 MOVE                             R24 R4
      179 GETIMPORT                        R23 K57 [tostring]
      181 CALL                             R23 1 1
      182 CONCAT                           R21 R22 R23
      183 SETTABLEKS                       R21 R20 K41 ["Text"]
      185 GETTABLEKS                       R21 R6 K45 ["Color"]
      187 GETTABLEKS                       R21 R21 K58 ["Content"]
      189 GETTABLEKS                       R21 R21 K59 ["Emphasis"]
      191 SETTABLEKS                       R21 R20 K42 ["textStyle"]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K14 ["NumReturnPressed"]
      196 CALL                             R14 3 -1
      197 RETURN                           R14 -1

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
       70 DUPCLOSURE                       R11 K20 [PROTO_7]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 DUPTABLE                         R12 K25 [{["summary"] = "Text field", ["story"], ["controls"]}]
       79 SETTABLEKS                       R11 R12 K23 ["story"]
       81 DUPTABLE                         R13 K41 [{["hasError"] = False, ["isDisabled"] = False, ["isRequired"], ["textInputType"], ["size"], ["label"] = "Input Label", ["hint"] = "Helper text goes here", ["placeholder"] = "Placeholder text", ["leadingIcon"], ["iconTrailing"], ["trailingButton"] = False}]
       82 NEWTABLE                         R14 0 3
       84 GETTABLEKS                       R15 R3 K42 ["None"]
       86 LOADB                            R16 0
       87 LOADB                            R17 1
       88 SETLIST                          R14 R15 3 [1]
       90 SETTABLEKS                       R14 R13 K29 ["isRequired"]
       92 NEWTABLE                         R14 0 4
       94 GETTABLEKS                       R15 R3 K42 ["None"]
       96 GETIMPORT                        R16 K46 [Enum.TextInputType.Default]
       98 GETIMPORT                        R17 K48 [Enum.TextInputType.Password]
      100 GETIMPORT                        R18 K50 [Enum.TextInputType.Number]
      102 SETLIST                          R14 R15 4 [1]
      104 SETTABLEKS                       R14 R13 K30 ["textInputType"]
      106 GETTABLEKS                       R14 R2 K51 ["values"]
      108 MOVE                             R15 R9
      109 CALL                             R14 1 1
      110 SETTABLEKS                       R14 R13 K31 ["size"]
      112 NEWTABLE                         R14 0 4
      114 LOADK                            R15 K52 ["icons/placeholder/placeholderOn_small"]
      115 LOADK                            R16 K53 ["icons/status/private_small"]
      116 LOADK                            R17 K54 ["icons/common/search_small"]
      117 GETTABLEKS                       R18 R3 K42 ["None"]
      119 SETLIST                          R14 R15 4 [1]
      121 SETTABLEKS                       R14 R13 K38 ["leadingIcon"]
      123 NEWTABLE                         R14 0 6
      125 LOADK                            R15 K55 ["icons/placeholder/placeholderOff"]
      126 LOADK                            R16 K56 ["icons/actions/edit/clear_small"]
      127 LOADK                            R17 K57 ["icons/actions/info_small"]
      128 LOADK                            R18 K58 ["icons/actions/viewOn"]
      129 LOADK                            R19 K59 ["icons/actions/viewOff"]
      130 GETTABLEKS                       R20 R3 K42 ["None"]
      132 SETLIST                          R14 R15 6 [1]
      134 SETTABLEKS                       R14 R13 K39 ["iconTrailing"]
      136 SETTABLEKS                       R13 R12 K24 ["controls"]
      138 RETURN                           R12 1
