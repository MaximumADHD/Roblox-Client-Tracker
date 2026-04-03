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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useBinding"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["useState"]
       12 LOADN                            R6 0
       13 CALL                             R5 1 2
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 DUPCLOSURE                       R8 K4 [PROTO_1]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          VAL R6
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K5 ["createElement"]
       22 GETUPVAL                         R11 2
       23 DUPTABLE                         R12 K7 [{"tag"}]
       24 LOADK                            R13 K8 ["auto-xy padding-xlarge"]
       25 SETTABLEKS                       R13 R12 K6 ["tag"]
       27 DUPTABLE                         R13 K10 [{"WidthContainer"}]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R14 R15 K5 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K12 [{"Size", "tag"}]
       33 GETIMPORT                        R17 K15 [UDim2.fromOffset]
       35 GETTABLEKS                       R18 R1 K16 ["width"]
       37 GETTABLEKS                       R20 R2 K11 ["Size"]
       39 GETTABLEKS                       R19 R20 K17 ["Size_3000"]
       41 CALL                             R17 2 1
       42 SETTABLEKS                       R17 R16 K11 ["Size"]
       44 LOADK                            R17 K18 ["col gap-large auto-y"]
       45 SETTABLEKS                       R17 R16 K6 ["tag"]
       47 DUPTABLE                         R17 K22 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       48 GETUPVAL                         R19 1
       49 GETTABLEKS                       R18 R19 K5 ["createElement"]
       51 GETUPVAL                         R19 3
       52 DUPTABLE                         R20 K37 [{"text", "size", "variant", "hasError", "isDisabled", "numLines", "radius", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
       53 SETTABLEKS                       R3 R20 K23 ["text"]
       55 GETTABLEKS                       R21 R1 K24 ["size"]
       57 SETTABLEKS                       R21 R20 K24 ["size"]
       59 GETUPVAL                         R23 4
       60 GETTABLEKS                       R22 R23 K38 ["FoundationInternalTextInputVariants"]
       62 JUMPIFNOT                        R22 ; [+3]
       63 GETTABLEKS                       R21 R1 K25 ["variant"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R21
       67 SETTABLEKS                       R21 R20 K25 ["variant"]
       69 GETTABLEKS                       R21 R1 K26 ["hasError"]
       71 SETTABLEKS                       R21 R20 K26 ["hasError"]
       73 GETTABLEKS                       R21 R1 K27 ["isDisabled"]
       75 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
       77 GETTABLEKS                       R21 R1 K28 ["numLines"]
       79 SETTABLEKS                       R21 R20 K28 ["numLines"]
       81 GETUPVAL                         R23 4
       82 GETTABLEKS                       R22 R23 K39 ["FoundationInternalTextInputCornerRadius"]
       84 JUMPIFNOT                        R22 ; [+10]
       85 GETTABLEKS                       R22 R1 K29 ["radius"]
       87 GETUPVAL                         R24 1
       88 GETTABLEKS                       R23 R24 K40 ["None"]
       90 JUMPIFEQ                         R22 R23 ; [+4]
       92 GETTABLEKS                       R21 R1 K29 ["radius"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R21
       96 SETTABLEKS                       R21 R20 K29 ["radius"]
       98 SETTABLEKS                       R7 R20 K30 ["onChanged"]
      100 SETTABLEKS                       R9 R20 K31 ["onReturnPressed"]
      102 GETTABLEKS                       R21 R1 K32 ["placeholder"]
      104 SETTABLEKS                       R21 R20 K32 ["placeholder"]
      106 GETTABLEKS                       R22 R1 K41 ["leadingComponentIcon"]
      108 GETUPVAL                         R24 1
      109 GETTABLEKS                       R23 R24 K40 ["None"]
      111 JUMPIFNOTEQ                      R22 R23 ; [+3]
      113 LOADNIL                          R21
      114 JUMP                             ; [+15]
      115 GETUPVAL                         R22 1
      116 GETTABLEKS                       R21 R22 K5 ["createElement"]
      118 GETUPVAL                         R22 5
      119 DUPTABLE                         R23 K43 [{"name", "size"}]
      120 GETTABLEKS                       R24 R1 K41 ["leadingComponentIcon"]
      122 SETTABLEKS                       R24 R23 K42 ["name"]
      124 GETUPVAL                         R25 6
      125 GETTABLEKS                       R24 R25 K44 ["Small"]
      127 SETTABLEKS                       R24 R23 K24 ["size"]
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K33 ["leadingElement"]
      132 GETTABLEKS                       R22 R1 K45 ["trailingComponentIcon"]
      134 GETUPVAL                         R24 1
      135 GETTABLEKS                       R23 R24 K40 ["None"]
      137 JUMPIFNOTEQ                      R22 R23 ; [+3]
      139 LOADNIL                          R21
      140 JUMP                             ; [+21]
      141 GETUPVAL                         R22 1
      142 GETTABLEKS                       R21 R22 K5 ["createElement"]
      144 GETUPVAL                         R22 7
      145 DUPTABLE                         R23 K48 [{"onActivated", "isDisabled", "size", "icon"}]
      146 SETTABLEKS                       R8 R23 K46 ["onActivated"]
      148 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      150 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      152 GETUPVAL                         R25 6
      153 GETTABLEKS                       R24 R25 K44 ["Small"]
      155 SETTABLEKS                       R24 R23 K24 ["size"]
      157 GETTABLEKS                       R24 R1 K45 ["trailingComponentIcon"]
      159 SETTABLEKS                       R24 R23 K47 ["icon"]
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K34 ["trailingElement"]
      164 GETTABLEKS                       R22 R1 K35 ["textInputType"]
      166 GETUPVAL                         R24 1
      167 GETTABLEKS                       R23 R24 K40 ["None"]
      169 JUMPIFNOTEQ                      R22 R23 ; [+3]
      171 LOADNIL                          R21
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R21 R1 K35 ["textInputType"]
      175 SETTABLEKS                       R21 R20 K35 ["textInputType"]
      177 LOADN                            R21 1
      178 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      183 GETUPVAL                         R19 1
      184 GETTABLEKS                       R18 R19 K5 ["createElement"]
      186 GETUPVAL                         R19 8
      187 DUPTABLE                         R20 K51 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      188 SETTABLEKS                       R3 R20 K49 ["Text"]
      190 GETTABLEKS                       R23 R2 K52 ["Color"]
      192 GETTABLEKS                       R22 R23 K53 ["System"]
      194 GETTABLEKS                       R21 R22 K54 ["Alert"]
      196 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      198 LOADN                            R21 2
      199 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      201 LOADK                            R21 K55 ["auto-xy"]
      202 SETTABLEKS                       R21 R20 K6 ["tag"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K20 ["Output"]
      207 GETUPVAL                         R19 1
      208 GETTABLEKS                       R18 R19 K5 ["createElement"]
      210 GETUPVAL                         R19 8
      211 DUPTABLE                         R20 K56 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      212 LOADN                            R21 3
      213 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      215 LOADK                            R22 K57 ["Num return pressed: "]
      216 FASTCALL1                        TOSTRING R5 ; [+3]
      217 MOVE                             R24 R5
      218 GETIMPORT                        R23 K59 [tostring]
      220 CALL                             R23 1 1
      221 CONCAT                           R21 R22 R23
      222 SETTABLEKS                       R21 R20 K49 ["Text"]
      224 GETTABLEKS                       R23 R2 K52 ["Color"]
      226 GETTABLEKS                       R22 R23 K60 ["Content"]
      228 GETTABLEKS                       R21 R22 K61 ["Emphasis"]
      230 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      232 LOADK                            R21 K55 ["auto-xy"]
      233 SETTABLEKS                       R21 R20 K6 ["tag"]
      235 CALL                             R18 2 1
      236 SETTABLEKS                       R18 R17 K21 ["NumReturnPressed"]
      238 CALL                             R14 3 1
      239 SETTABLEKS                       R14 R13 K9 ["WidthContainer"]
      241 CALL                             R10 3 -1
      242 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["union"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controls"}]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K1 ["union"]
       12 GETTABLEKS                       R7 R0 K2 ["controls"]
       14 DUPTABLE                         R8 K5 [{"numLines"}]
       15 LOADN                            R9 1
       16 SETTABLEKS                       R9 R8 K4 ["numLines"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K2 ["controls"]
       21 CALL                             R3 2 -1
       22 CALL                             R1 -1 -1
       23 RETURN                           R1 -1

PROTO_6:
        0 LOADK                            R1 K0 [""]
        1 NEWTABLE                         R2 0 0
        3 LOADN                            R5 1
        4 LOADN                            R3 232
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
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K7 ["createElement"]
       24 GETUPVAL                         R4 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K8 ["union"]
       28 MOVE                             R6 R0
       29 DUPTABLE                         R7 K10 [{"controls"}]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K8 ["union"]
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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Providers"]
       58 GETTABLEKS                       R11 R12 K17 ["Style"]
       60 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K19 ["Enums"]
       67 GETTABLEKS                       R11 R12 K20 ["IconSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K19 ["Enums"]
       74 GETTABLEKS                       R12 R13 K21 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K19 ["Enums"]
       81 GETTABLEKS                       R13 R14 K22 ["InputVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K19 ["Enums"]
       88 GETTABLEKS                       R14 R15 K23 ["Radius"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K11 ["Components"]
       95 GETTABLEKS                       R15 R16 K24 ["InternalTextInput"]
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
      108 DUPTABLE                         R16 K29 [{"summary", "stories", "controls"}]
      109 LOADK                            R17 K30 ["Internal text input"]
      110 SETTABLEKS                       R17 R16 K26 ["summary"]
      112 NEWTABLE                         R17 0 2
      114 DUPTABLE                         R18 K33 [{"name", "story"}]
      115 LOADK                            R19 K34 ["Single-line"]
      116 SETTABLEKS                       R19 R18 K31 ["name"]
      118 DUPCLOSURE                       R19 K35 [PROTO_5]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R19 R18 K32 ["story"]
      124 DUPTABLE                         R19 K33 [{"name", "story"}]
      125 LOADK                            R20 K36 ["Multi-line"]
      126 SETTABLEKS                       R20 R19 K31 ["name"]
      128 DUPCLOSURE                       R20 K37 [PROTO_6]
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R2
      132 SETTABLEKS                       R20 R19 K32 ["story"]
      134 SETLIST                          R17 R18 2 [1]
      136 SETTABLEKS                       R17 R16 K27 ["stories"]
      138 DUPTABLE                         R17 K49 [{"hasError", "isDisabled", "size", "variant", "numLines", "width", "radius", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
      139 LOADB                            R18 0
      140 SETTABLEKS                       R18 R17 K38 ["hasError"]
      142 LOADB                            R18 0
      143 SETTABLEKS                       R18 R17 K39 ["isDisabled"]
      145 GETTABLEKS                       R18 R2 K50 ["values"]
      147 MOVE                             R19 R11
      148 CALL                             R18 1 1
      149 SETTABLEKS                       R18 R17 K40 ["size"]
      151 GETTABLEKS                       R19 R4 K51 ["FoundationInternalTextInputVariants"]
      153 JUMPIFNOT                        R19 ; [+5]
      154 GETTABLEKS                       R18 R2 K50 ["values"]
      156 MOVE                             R19 R12
      157 CALL                             R18 1 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R18
      160 SETTABLEKS                       R18 R17 K41 ["variant"]
      162 LOADN                            R18 3
      163 SETTABLEKS                       R18 R17 K42 ["numLines"]
      165 LOADN                            R18 144
      166 SETTABLEKS                       R18 R17 K43 ["width"]
      168 GETTABLEKS                       R19 R4 K52 ["FoundationInternalTextInputCornerRadius"]
      170 JUMPIFNOT                        R19 ; [+15]
      171 NEWTABLE                         R18 0 2
      173 GETTABLEKS                       R19 R3 K53 ["None"]
      175 GETTABLEKS                       R21 R2 K50 ["values"]
      177 MOVE                             R22 R13
      178 CALL                             R21 1 -1
      179 FASTCALL                         TABLE_UNPACK ; [+2]
      180 GETIMPORT                        R20 K55 [unpack]
      182 CALL                             R20 -1 -1
      183 SETLIST                          R18 R19 -1 [1]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R18
      187 SETTABLEKS                       R18 R17 K44 ["radius"]
      189 LOADK                            R18 K56 ["Placeholder text"]
      190 SETTABLEKS                       R18 R17 K45 ["placeholder"]
      192 NEWTABLE                         R18 0 4
      194 LOADK                            R19 K57 ["icons/placeholder/placeholderOn_small"]
      195 LOADK                            R20 K58 ["icons/status/private_small"]
      196 LOADK                            R21 K59 ["icons/common/search_small"]
      197 GETTABLEKS                       R22 R3 K53 ["None"]
      199 SETLIST                          R18 R19 4 [1]
      201 SETTABLEKS                       R18 R17 K46 ["leadingComponentIcon"]
      203 NEWTABLE                         R18 0 6
      205 LOADK                            R19 K60 ["icons/placeholder/placeholderOff"]
      206 LOADK                            R20 K61 ["icons/actions/edit/clear_small"]
      207 LOADK                            R21 K62 ["icons/actions/info_small"]
      208 LOADK                            R22 K63 ["icons/actions/viewOn"]
      209 LOADK                            R23 K64 ["icons/actions/viewOff"]
      210 GETTABLEKS                       R24 R3 K53 ["None"]
      212 SETLIST                          R18 R19 6 [1]
      214 SETTABLEKS                       R18 R17 K47 ["trailingComponentIcon"]
      216 NEWTABLE                         R18 0 4
      218 GETTABLEKS                       R19 R3 K53 ["None"]
      220 GETIMPORT                        R20 K68 [Enum.TextInputType.Default]
      222 GETIMPORT                        R21 K70 [Enum.TextInputType.Password]
      224 GETIMPORT                        R22 K72 [Enum.TextInputType.Number]
      226 SETLIST                          R18 R19 4 [1]
      228 SETTABLEKS                       R18 R17 K48 ["textInputType"]
      230 SETTABLEKS                       R17 R16 K28 ["controls"]
      232 RETURN                           R16 1
