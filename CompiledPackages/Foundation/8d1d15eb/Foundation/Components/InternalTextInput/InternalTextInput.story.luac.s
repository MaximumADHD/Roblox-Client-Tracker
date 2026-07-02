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
       46 DUPTABLE                         R20 K38 [{["text"], ["size"], ["variant"], ["hasError"], ["isDisabled"], ["numLines"], ["radius"], ["onChanged"], ["onReturnPressed"], ["placeholder"], ["leadingElement"], ["trailingElement"], ["textInputType"], ["LayoutOrder"] = 1}]
       47 SETTABLEKS                       R3 R20 K23 ["text"]
       49 GETTABLEKS                       R21 R1 K24 ["size"]
       51 SETTABLEKS                       R21 R20 K24 ["size"]
       53 GETUPVAL                         R22 4
       54 GETTABLEKS                       R22 R22 K39 ["FoundationInternalTextInputVariants"]
       56 JUMPIFNOT                        R22 ; [+3]
       57 GETTABLEKS                       R21 R1 K25 ["variant"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R21
       61 SETTABLEKS                       R21 R20 K25 ["variant"]
       63 GETTABLEKS                       R21 R1 K26 ["hasError"]
       65 SETTABLEKS                       R21 R20 K26 ["hasError"]
       67 GETTABLEKS                       R21 R1 K27 ["isDisabled"]
       69 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
       71 GETTABLEKS                       R21 R1 K28 ["numLines"]
       73 SETTABLEKS                       R21 R20 K28 ["numLines"]
       75 GETUPVAL                         R22 4
       76 GETTABLEKS                       R22 R22 K40 ["FoundationInternalTextInputCornerRadius"]
       78 JUMPIFNOT                        R22 ; [+10]
       79 GETTABLEKS                       R22 R1 K29 ["radius"]
       81 GETUPVAL                         R23 1
       82 GETTABLEKS                       R23 R23 K41 ["None"]
       84 JUMPIFEQ                         R22 R23 ; [+4]
       86 GETTABLEKS                       R21 R1 K29 ["radius"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R21
       90 SETTABLEKS                       R21 R20 K29 ["radius"]
       92 SETTABLEKS                       R7 R20 K30 ["onChanged"]
       94 SETTABLEKS                       R9 R20 K31 ["onReturnPressed"]
       96 GETTABLEKS                       R21 R1 K32 ["placeholder"]
       98 SETTABLEKS                       R21 R20 K32 ["placeholder"]
      100 GETTABLEKS                       R22 R1 K42 ["leadingComponentIcon"]
      102 GETUPVAL                         R23 1
      103 GETTABLEKS                       R23 R23 K41 ["None"]
      105 JUMPIFNOTEQ                      R22 R23 ; [+3]
      107 LOADNIL                          R21
      108 JUMP                             ; [+15]
      109 GETUPVAL                         R21 1
      110 GETTABLEKS                       R21 R21 K5 ["createElement"]
      112 GETUPVAL                         R22 5
      113 DUPTABLE                         R23 K44 [{"name", "size"}]
      114 GETTABLEKS                       R24 R1 K42 ["leadingComponentIcon"]
      116 SETTABLEKS                       R24 R23 K43 ["name"]
      118 GETUPVAL                         R24 6
      119 GETTABLEKS                       R24 R24 K45 ["Small"]
      121 SETTABLEKS                       R24 R23 K24 ["size"]
      123 CALL                             R21 2 1
      124 SETTABLEKS                       R21 R20 K33 ["leadingElement"]
      126 GETTABLEKS                       R22 R1 K46 ["trailingComponentIcon"]
      128 GETUPVAL                         R23 1
      129 GETTABLEKS                       R23 R23 K41 ["None"]
      131 JUMPIFNOTEQ                      R22 R23 ; [+3]
      133 LOADNIL                          R21
      134 JUMP                             ; [+21]
      135 GETUPVAL                         R21 1
      136 GETTABLEKS                       R21 R21 K5 ["createElement"]
      138 GETUPVAL                         R22 7
      139 DUPTABLE                         R23 K49 [{"onActivated", "isDisabled", "size", "icon"}]
      140 SETTABLEKS                       R8 R23 K47 ["onActivated"]
      142 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      144 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      146 GETUPVAL                         R24 6
      147 GETTABLEKS                       R24 R24 K45 ["Small"]
      149 SETTABLEKS                       R24 R23 K24 ["size"]
      151 GETTABLEKS                       R24 R1 K46 ["trailingComponentIcon"]
      153 SETTABLEKS                       R24 R23 K48 ["icon"]
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K34 ["trailingElement"]
      158 GETTABLEKS                       R22 R1 K35 ["textInputType"]
      160 GETUPVAL                         R23 1
      161 GETTABLEKS                       R23 R23 K41 ["None"]
      163 JUMPIFNOTEQ                      R22 R23 ; [+3]
      165 LOADNIL                          R21
      166 JUMP                             ; [+2]
      167 GETTABLEKS                       R21 R1 K35 ["textInputType"]
      169 SETTABLEKS                       R21 R20 K35 ["textInputType"]
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      174 GETUPVAL                         R18 1
      175 GETTABLEKS                       R18 R18 K5 ["createElement"]
      177 GETUPVAL                         R19 8
      178 DUPTABLE                         R20 K54 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"] = "auto-xy"}]
      179 SETTABLEKS                       R3 R20 K50 ["Text"]
      181 GETTABLEKS                       R21 R2 K55 ["Color"]
      183 GETTABLEKS                       R21 R21 K56 ["System"]
      185 GETTABLEKS                       R21 R21 K57 ["Alert"]
      187 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K20 ["Output"]
      192 GETUPVAL                         R18 1
      193 GETTABLEKS                       R18 R18 K5 ["createElement"]
      195 GETUPVAL                         R19 8
      196 DUPTABLE                         R20 K59 [{["LayoutOrder"] = 3, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      197 LOADK                            R22 K60 ["Num return pressed: "]
      198 FASTCALL1                        TOSTRING R5 ; [+3]
      199 MOVE                             R24 R5
      200 GETIMPORT                        R23 K62 [tostring]
      202 CALL                             R23 1 1
      203 CONCAT                           R21 R22 R23
      204 SETTABLEKS                       R21 R20 K50 ["Text"]
      206 GETTABLEKS                       R21 R2 K55 ["Color"]
      208 GETTABLEKS                       R21 R21 K63 ["Content"]
      210 GETTABLEKS                       R21 R21 K64 ["Emphasis"]
      212 SETTABLEKS                       R21 R20 K51 ["textStyle"]
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K21 ["NumReturnPressed"]
      217 CALL                             R14 3 1
      218 SETTABLEKS                       R14 R13 K9 ["WidthContainer"]
      220 CALL                             R10 3 -1
      221 RETURN                           R10 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Providers"]
       58 GETTABLEKS                       R10 R10 K17 ["Style"]
       60 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["IconSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Enums"]
       74 GETTABLEKS                       R12 R12 K21 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Enums"]
       81 GETTABLEKS                       R13 R13 K22 ["InputVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K19 ["Enums"]
       88 GETTABLEKS                       R14 R14 K23 ["Radius"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K11 ["Components"]
       95 GETTABLEKS                       R15 R15 K24 ["InternalTextInput"]
       97 CALL                             R14 1 1
       98 DUPCLOSURE                       R15 K25 [PROTO_4]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 DUPTABLE                         R16 K30 [{["summary"] = "Internal text input", ["stories"], ["controls"]}]
      109 NEWTABLE                         R17 0 2
      111 DUPTABLE                         R18 K34 [{["name"] = "Single-line", ["story"]}]
      112 DUPCLOSURE                       R19 K35 [PROTO_5]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R19 R18 K33 ["story"]
      118 DUPTABLE                         R19 K37 [{["name"] = "Multi-line", ["story"]}]
      119 DUPCLOSURE                       R20 K38 [PROTO_6]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R2
      123 SETTABLEKS                       R20 R19 K33 ["story"]
      125 SETLIST                          R17 R18 2 [1]
      127 SETTABLEKS                       R17 R16 K28 ["stories"]
      129 DUPTABLE                         R17 K54 [{["hasError"] = False, ["isDisabled"] = False, ["size"], ["variant"], ["numLines"] = 3, ["width"] = 400, ["radius"], ["placeholder"] = "Placeholder text", ["leadingComponentIcon"], ["trailingComponentIcon"], ["textInputType"]}]
      130 GETTABLEKS                       R18 R2 K55 ["values"]
      132 MOVE                             R19 R11
      133 CALL                             R18 1 1
      134 SETTABLEKS                       R18 R17 K42 ["size"]
      136 GETTABLEKS                       R19 R4 K56 ["FoundationInternalTextInputVariants"]
      138 JUMPIFNOT                        R19 ; [+5]
      139 GETTABLEKS                       R18 R2 K55 ["values"]
      141 MOVE                             R19 R12
      142 CALL                             R18 1 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R18
      145 SETTABLEKS                       R18 R17 K43 ["variant"]
      147 GETTABLEKS                       R19 R4 K57 ["FoundationInternalTextInputCornerRadius"]
      149 JUMPIFNOT                        R19 ; [+15]
      150 NEWTABLE                         R18 0 2
      152 GETTABLEKS                       R19 R3 K58 ["None"]
      154 GETTABLEKS                       R21 R2 K55 ["values"]
      156 MOVE                             R22 R13
      157 CALL                             R21 1 -1
      158 FASTCALL                         TABLE_UNPACK ; [+2]
      159 GETIMPORT                        R20 K60 [unpack]
      161 CALL                             R20 -1 -1
      162 SETLIST                          R18 R19 -1 [1]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R18
      166 SETTABLEKS                       R18 R17 K48 ["radius"]
      168 NEWTABLE                         R18 0 4
      170 LOADK                            R19 K61 ["icons/placeholder/placeholderOn_small"]
      171 LOADK                            R20 K62 ["icons/status/private_small"]
      172 LOADK                            R21 K63 ["icons/common/search_small"]
      173 GETTABLEKS                       R22 R3 K58 ["None"]
      175 SETLIST                          R18 R19 4 [1]
      177 SETTABLEKS                       R18 R17 K51 ["leadingComponentIcon"]
      179 NEWTABLE                         R18 0 6
      181 LOADK                            R19 K64 ["icons/placeholder/placeholderOff"]
      182 LOADK                            R20 K65 ["icons/actions/edit/clear_small"]
      183 LOADK                            R21 K66 ["icons/actions/info_small"]
      184 LOADK                            R22 K67 ["icons/actions/viewOn"]
      185 LOADK                            R23 K68 ["icons/actions/viewOff"]
      186 GETTABLEKS                       R24 R3 K58 ["None"]
      188 SETLIST                          R18 R19 6 [1]
      190 SETTABLEKS                       R18 R17 K52 ["trailingComponentIcon"]
      192 NEWTABLE                         R18 0 4
      194 GETTABLEKS                       R19 R3 K58 ["None"]
      196 GETIMPORT                        R20 K72 [Enum.TextInputType.Default]
      198 GETIMPORT                        R21 K74 [Enum.TextInputType.Password]
      200 GETIMPORT                        R22 K76 [Enum.TextInputType.Number]
      202 SETLIST                          R18 R19 4 [1]
      204 SETTABLEKS                       R18 R17 K53 ["textInputType"]
      206 SETTABLEKS                       R17 R16 K29 ["controls"]
      208 RETURN                           R16 1
