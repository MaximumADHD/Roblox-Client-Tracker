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
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Return pressed!"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 DUPCLOSURE                       R1 K3 [PROTO_2]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useBinding"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["useState"]
       12 LOADN                            R6 0
       13 CALL                             R5 1 2
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 DUPCLOSURE                       R8 K4 [PROTO_1]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          VAL R6
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K5 ["createElement"]
       22 GETUPVAL                         R11 2
       23 DUPTABLE                         R12 K8 [{["tag"] = "auto-xy padding-xlarge"}]
       24 DUPTABLE                         R13 K10 [{"WidthContainer"}]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K5 ["createElement"]
       28 GETUPVAL                         R15 2
       29 DUPTABLE                         R16 K13 [{["Size"], ["tag"] = "col gap-large auto-y"}]
       30 GETIMPORT                        R17 K16 [UDim2.fromOffset]
       32 GETTABLEKS                       R18 R1 K17 ["width"]
       34 GETTABLEKS                       R19 R2 K11 ["Size"]
       36 GETTABLEKS                       R19 R19 K18 ["Size_3000"]
       38 CALL                             R17 2 1
       39 SETTABLEKS                       R17 R16 K11 ["Size"]
       41 DUPTABLE                         R17 K22 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       42 GETUPVAL                         R18 1
       43 GETTABLEKS                       R18 R18 K5 ["createElement"]
       45 GETUPVAL                         R19 3
       46 DUPTABLE                         R20 K40 [{["text"], ["size"], ["variant"], ["hasError"], ["isDisabled"], ["numLines"], ["focusBehavior"], ["hasClearButton"], ["radius"], ["onChanged"], ["onReturnPressed"], ["placeholder"], ["leadingElement"], ["trailingElement"], ["textInputType"], ["LayoutOrder"] = 1}]
       47 SETTABLEKS                       R3 R20 K23 ["text"]
       49 GETTABLEKS                       R21 R1 K24 ["size"]
       51 SETTABLEKS                       R21 R20 K24 ["size"]
       53 GETTABLEKS                       R21 R1 K25 ["variant"]
       55 SETTABLEKS                       R21 R20 K25 ["variant"]
       57 GETTABLEKS                       R21 R1 K26 ["hasError"]
       59 SETTABLEKS                       R21 R20 K26 ["hasError"]
       61 GETTABLEKS                       R21 R1 K27 ["isDisabled"]
       63 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
       65 GETTABLEKS                       R21 R1 K28 ["numLines"]
       67 SETTABLEKS                       R21 R20 K28 ["numLines"]
       69 GETTABLEKS                       R22 R1 K29 ["focusBehavior"]
       71 GETUPVAL                         R23 1
       72 GETTABLEKS                       R23 R23 K41 ["None"]
       74 JUMPIFEQ                         R22 R23 ; [+4]
       76 GETTABLEKS                       R21 R1 K29 ["focusBehavior"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R21
       80 SETTABLEKS                       R21 R20 K29 ["focusBehavior"]
       82 GETTABLEKS                       R21 R1 K30 ["hasClearButton"]
       84 SETTABLEKS                       R21 R20 K30 ["hasClearButton"]
       86 GETTABLEKS                       R22 R1 K31 ["radius"]
       88 GETUPVAL                         R23 1
       89 GETTABLEKS                       R23 R23 K41 ["None"]
       91 JUMPIFEQ                         R22 R23 ; [+4]
       93 GETTABLEKS                       R21 R1 K31 ["radius"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R21
       97 SETTABLEKS                       R21 R20 K31 ["radius"]
       99 SETTABLEKS                       R7 R20 K32 ["onChanged"]
      101 SETTABLEKS                       R9 R20 K33 ["onReturnPressed"]
      103 GETTABLEKS                       R21 R1 K34 ["placeholder"]
      105 SETTABLEKS                       R21 R20 K34 ["placeholder"]
      107 GETTABLEKS                       R22 R1 K42 ["leadingComponentIcon"]
      109 GETUPVAL                         R23 1
      110 GETTABLEKS                       R23 R23 K41 ["None"]
      112 JUMPIFNOTEQ                      R22 R23 ; [+3]
      114 LOADNIL                          R21
      115 JUMP                             ; [+15]
      116 GETUPVAL                         R21 1
      117 GETTABLEKS                       R21 R21 K5 ["createElement"]
      119 GETUPVAL                         R22 4
      120 DUPTABLE                         R23 K44 [{"name", "size"}]
      121 GETTABLEKS                       R24 R1 K42 ["leadingComponentIcon"]
      123 SETTABLEKS                       R24 R23 K43 ["name"]
      125 GETUPVAL                         R24 5
      126 GETTABLEKS                       R24 R24 K45 ["Small"]
      128 SETTABLEKS                       R24 R23 K24 ["size"]
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K35 ["leadingElement"]
      133 GETTABLEKS                       R22 R1 K46 ["trailingComponentIcon"]
      135 GETUPVAL                         R23 1
      136 GETTABLEKS                       R23 R23 K41 ["None"]
      138 JUMPIFNOTEQ                      R22 R23 ; [+3]
      140 LOADNIL                          R21
      141 JUMP                             ; [+21]
      142 GETUPVAL                         R21 1
      143 GETTABLEKS                       R21 R21 K5 ["createElement"]
      145 GETUPVAL                         R22 6
      146 DUPTABLE                         R23 K49 [{"onActivated", "isDisabled", "size", "icon"}]
      147 SETTABLEKS                       R8 R23 K47 ["onActivated"]
      149 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      151 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      153 GETUPVAL                         R24 5
      154 GETTABLEKS                       R24 R24 K45 ["Small"]
      156 SETTABLEKS                       R24 R23 K24 ["size"]
      158 GETTABLEKS                       R24 R1 K46 ["trailingComponentIcon"]
      160 SETTABLEKS                       R24 R23 K48 ["icon"]
      162 CALL                             R21 2 1
      163 SETTABLEKS                       R21 R20 K36 ["trailingElement"]
      165 GETTABLEKS                       R22 R1 K37 ["textInputType"]
      167 GETUPVAL                         R23 1
      168 GETTABLEKS                       R23 R23 K41 ["None"]
      170 JUMPIFNOTEQ                      R22 R23 ; [+3]
      172 LOADNIL                          R21
      173 JUMP                             ; [+2]
      174 GETTABLEKS                       R21 R1 K37 ["textInputType"]
      176 SETTABLEKS                       R21 R20 K37 ["textInputType"]
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      181 GETUPVAL                         R18 1
      182 GETTABLEKS                       R18 R18 K5 ["createElement"]
      184 GETUPVAL                         R19 7
      185 DUPTABLE                         R20 K54 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"] = "auto-xy"}]
      186 SETTABLEKS                       R3 R20 K50 ["Text"]
      188 GETTABLEKS                       R21 R2 K55 ["Color"]
      190 GETTABLEKS                       R21 R21 K56 ["System"]
      192 GETTABLEKS                       R21 R21 K57 ["Alert"]
      194 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K20 ["Output"]
      199 GETUPVAL                         R18 1
      200 GETTABLEKS                       R18 R18 K5 ["createElement"]
      202 GETUPVAL                         R19 7
      203 DUPTABLE                         R20 K59 [{["LayoutOrder"] = 3, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      204 LOADK                            R22 K60 ["Num return pressed: "]
      205 FASTCALL1                        TOSTRING R5 ; [+3]
      206 MOVE                             R24 R5
      207 GETIMPORT                        R23 K62 [tostring]
      209 CALL                             R23 1 1
      210 CONCAT                           R21 R22 R23
      211 SETTABLEKS                       R21 R20 K50 ["Text"]
      213 GETTABLEKS                       R21 R2 K55 ["Color"]
      215 GETTABLEKS                       R21 R21 K63 ["Content"]
      217 GETTABLEKS                       R21 R21 K64 ["Emphasis"]
      219 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K21 ["NumReturnPressed"]
      224 CALL                             R14 3 1
      225 SETTABLEKS                       R14 R13 K9 ["WidthContainer"]
      227 CALL                             R10 3 -1
      228 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["union"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controls"}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["union"]
       12 GETTABLEKS                       R7 R0 K2 ["controls"]
       14 DUPTABLE                         R8 K6 [{["numLines"] = 1}]
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K2 ["controls"]
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_6:
        0 LOADK                            R1 K0 [""]
        1 NEWTABLE                         R2 0 0
        3 LOADN                            R5 1
        4 LOADN                            R3 1000
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
        9 MOVE                             R7 R2
       10 MOVE                             R8 R5
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORNLOOP                         R3
       15 GETIMPORT                        R3 K5 [table.concat]
       17 MOVE                             R4 R2
       18 LOADK                            R5 K6 ["\n"]
       19 CALL                             R3 2 1
       20 MOVE                             R1 R3
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["createElement"]
       24 GETUPVAL                         R4 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K8 ["union"]
       28 MOVE                             R6 R0
       29 DUPTABLE                         R7 K10 [{"controls"}]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K8 ["union"]
       33 GETTABLEKS                       R9 R0 K9 ["controls"]
       35 DUPTABLE                         R10 K12 [{"placeholder"}]
       36 SETTABLEKS                       R1 R10 K11 ["placeholder"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K9 ["controls"]
       41 CALL                             R5 2 -1
       42 CALL                             R3 -1 -1
       43 RETURN                           R3 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["IconButton"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Providers"]
       51 GETTABLEKS                       R9 R9 K15 ["Style"]
       53 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["IconSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R11 K19 ["InputFocusBehavior"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K17 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["InputVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K17 ["Enums"]
       88 GETTABLEKS                       R14 R14 K22 ["Radius"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Components"]
       95 GETTABLEKS                       R15 R15 K23 ["InternalTextInput"]
       97 CALL                             R14 1 1
       98 DUPCLOSURE                       R15 K24 [PROTO_4]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 DUPTABLE                         R16 K29 [{["summary"] = "Internal text input", ["stories"], ["controls"]}]
      108 NEWTABLE                         R17 0 2
      110 DUPTABLE                         R18 K33 [{["name"] = "Single-line", ["story"]}]
      111 DUPCLOSURE                       R19 K34 [PROTO_5]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R19 R18 K32 ["story"]
      117 DUPTABLE                         R19 K36 [{["name"] = "Multi-line", ["story"]}]
      118 DUPCLOSURE                       R20 K37 [PROTO_6]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R20 R19 K32 ["story"]
      124 SETLIST                          R17 R18 2 [1]
      126 SETTABLEKS                       R17 R16 K27 ["stories"]
      128 DUPTABLE                         R17 K56 [{["hasError"] = False, ["isDisabled"] = False, ["size"], ["variant"], ["numLines"] = 3, ["width"] = 400, ["radius"], ["focusBehavior"], ["hasClearButton"] = True, ["placeholder"] = "Placeholder text", ["leadingComponentIcon"], ["trailingComponentIcon"], ["textInputType"]}]
      129 GETTABLEKS                       R18 R2 K57 ["values"]
      131 MOVE                             R19 R11
      132 CALL                             R18 1 1
      133 SETTABLEKS                       R18 R17 K41 ["size"]
      135 GETTABLEKS                       R18 R2 K57 ["values"]
      137 MOVE                             R19 R12
      138 CALL                             R18 1 1
      139 SETTABLEKS                       R18 R17 K42 ["variant"]
      141 NEWTABLE                         R18 0 2
      143 GETTABLEKS                       R19 R3 K58 ["None"]
      145 GETTABLEKS                       R21 R2 K57 ["values"]
      147 MOVE                             R22 R13
      148 CALL                             R21 1 -1
      149 FASTCALL                         TABLE_UNPACK ; [+2]
      150 GETIMPORT                        R20 K60 [unpack]
      152 CALL                             R20 -1 -1
      153 SETLIST                          R18 R19 -1 [1]
      155 SETTABLEKS                       R18 R17 K47 ["radius"]
      157 NEWTABLE                         R18 0 2
      159 GETTABLEKS                       R19 R3 K58 ["None"]
      161 GETTABLEKS                       R21 R2 K57 ["values"]
      163 MOVE                             R22 R10
      164 CALL                             R21 1 -1
      165 FASTCALL                         TABLE_UNPACK ; [+2]
      166 GETIMPORT                        R20 K60 [unpack]
      168 CALL                             R20 -1 -1
      169 SETLIST                          R18 R19 -1 [1]
      171 SETTABLEKS                       R18 R17 K48 ["focusBehavior"]
      173 NEWTABLE                         R18 0 4
      175 LOADK                            R19 K61 ["icons/placeholder/placeholderOn_small"]
      176 LOADK                            R20 K62 ["icons/status/private_small"]
      177 LOADK                            R21 K63 ["icons/common/search_small"]
      178 GETTABLEKS                       R22 R3 K58 ["None"]
      180 SETLIST                          R18 R19 4 [1]
      182 SETTABLEKS                       R18 R17 K53 ["leadingComponentIcon"]
      184 NEWTABLE                         R18 0 6
      186 LOADK                            R19 K64 ["icons/placeholder/placeholderOff"]
      187 LOADK                            R20 K65 ["icons/actions/edit/clear_small"]
      188 LOADK                            R21 K66 ["icons/actions/info_small"]
      189 LOADK                            R22 K67 ["icons/actions/viewOn"]
      190 LOADK                            R23 K68 ["icons/actions/viewOff"]
      191 GETTABLEKS                       R24 R3 K58 ["None"]
      193 SETLIST                          R18 R19 6 [1]
      195 SETTABLEKS                       R18 R17 K54 ["trailingComponentIcon"]
      197 NEWTABLE                         R18 0 4
      199 GETTABLEKS                       R19 R3 K58 ["None"]
      201 GETIMPORT                        R20 K72 [Enum.TextInputType.Default]
      203 GETIMPORT                        R21 K74 [Enum.TextInputType.Password]
      205 GETIMPORT                        R22 K76 [Enum.TextInputType.Number]
      207 SETLIST                          R18 R19 4 [1]
      209 SETTABLEKS                       R18 R17 K55 ["textInputType"]
      211 SETTABLEKS                       R17 R16 K28 ["controls"]
      213 RETURN                           R16 1
