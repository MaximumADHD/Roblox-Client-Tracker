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
       23 DUPTABLE                         R12 K7 [{"tag"}]
       24 LOADK                            R13 K8 ["auto-xy padding-xlarge"]
       25 SETTABLEKS                       R13 R12 K6 ["tag"]
       27 DUPTABLE                         R13 K10 [{"WidthContainer"}]
       28 GETUPVAL                         R14 1
       29 GETTABLEKS                       R14 R14 K5 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K12 [{"Size", "tag"}]
       33 GETIMPORT                        R17 K15 [UDim2.fromOffset]
       35 GETTABLEKS                       R18 R1 K16 ["width"]
       37 GETTABLEKS                       R19 R2 K11 ["Size"]
       39 GETTABLEKS                       R19 R19 K17 ["Size_3000"]
       41 CALL                             R17 2 1
       42 SETTABLEKS                       R17 R16 K11 ["Size"]
       44 LOADK                            R17 K18 ["col gap-large auto-y"]
       45 SETTABLEKS                       R17 R16 K6 ["tag"]
       47 DUPTABLE                         R17 K22 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       48 GETUPVAL                         R18 1
       49 GETTABLEKS                       R18 R18 K5 ["createElement"]
       51 GETUPVAL                         R19 3
       52 DUPTABLE                         R20 K39 [{"text", "size", "variant", "hasError", "isDisabled", "numLines", "focusBehavior", "hasClearButton", "radius", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
       53 SETTABLEKS                       R3 R20 K23 ["text"]
       55 GETTABLEKS                       R21 R1 K24 ["size"]
       57 SETTABLEKS                       R21 R20 K24 ["size"]
       59 GETTABLEKS                       R21 R1 K25 ["variant"]
       61 SETTABLEKS                       R21 R20 K25 ["variant"]
       63 GETTABLEKS                       R21 R1 K26 ["hasError"]
       65 SETTABLEKS                       R21 R20 K26 ["hasError"]
       67 GETTABLEKS                       R21 R1 K27 ["isDisabled"]
       69 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
       71 GETTABLEKS                       R21 R1 K28 ["numLines"]
       73 SETTABLEKS                       R21 R20 K28 ["numLines"]
       75 GETTABLEKS                       R22 R1 K29 ["focusBehavior"]
       77 GETUPVAL                         R23 1
       78 GETTABLEKS                       R23 R23 K40 ["None"]
       80 JUMPIFEQ                         R22 R23 ; [+4]
       82 GETTABLEKS                       R21 R1 K29 ["focusBehavior"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R21
       86 SETTABLEKS                       R21 R20 K29 ["focusBehavior"]
       88 GETTABLEKS                       R21 R1 K30 ["hasClearButton"]
       90 SETTABLEKS                       R21 R20 K30 ["hasClearButton"]
       92 GETTABLEKS                       R22 R1 K31 ["radius"]
       94 GETUPVAL                         R23 1
       95 GETTABLEKS                       R23 R23 K40 ["None"]
       97 JUMPIFEQ                         R22 R23 ; [+4]
       99 GETTABLEKS                       R21 R1 K31 ["radius"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R21
      103 SETTABLEKS                       R21 R20 K31 ["radius"]
      105 SETTABLEKS                       R7 R20 K32 ["onChanged"]
      107 SETTABLEKS                       R9 R20 K33 ["onReturnPressed"]
      109 GETTABLEKS                       R21 R1 K34 ["placeholder"]
      111 SETTABLEKS                       R21 R20 K34 ["placeholder"]
      113 GETTABLEKS                       R22 R1 K41 ["leadingComponentIcon"]
      115 GETUPVAL                         R23 1
      116 GETTABLEKS                       R23 R23 K40 ["None"]
      118 JUMPIFNOTEQ                      R22 R23 ; [+3]
      120 LOADNIL                          R21
      121 JUMP                             ; [+15]
      122 GETUPVAL                         R21 1
      123 GETTABLEKS                       R21 R21 K5 ["createElement"]
      125 GETUPVAL                         R22 4
      126 DUPTABLE                         R23 K43 [{"name", "size"}]
      127 GETTABLEKS                       R24 R1 K41 ["leadingComponentIcon"]
      129 SETTABLEKS                       R24 R23 K42 ["name"]
      131 GETUPVAL                         R24 5
      132 GETTABLEKS                       R24 R24 K44 ["Small"]
      134 SETTABLEKS                       R24 R23 K24 ["size"]
      136 CALL                             R21 2 1
      137 SETTABLEKS                       R21 R20 K35 ["leadingElement"]
      139 GETTABLEKS                       R22 R1 K45 ["trailingComponentIcon"]
      141 GETUPVAL                         R23 1
      142 GETTABLEKS                       R23 R23 K40 ["None"]
      144 JUMPIFNOTEQ                      R22 R23 ; [+3]
      146 LOADNIL                          R21
      147 JUMP                             ; [+21]
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R21 R21 K5 ["createElement"]
      151 GETUPVAL                         R22 6
      152 DUPTABLE                         R23 K48 [{"onActivated", "isDisabled", "size", "icon"}]
      153 SETTABLEKS                       R8 R23 K46 ["onActivated"]
      155 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      157 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      159 GETUPVAL                         R24 5
      160 GETTABLEKS                       R24 R24 K44 ["Small"]
      162 SETTABLEKS                       R24 R23 K24 ["size"]
      164 GETTABLEKS                       R24 R1 K45 ["trailingComponentIcon"]
      166 SETTABLEKS                       R24 R23 K47 ["icon"]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K36 ["trailingElement"]
      171 GETTABLEKS                       R22 R1 K37 ["textInputType"]
      173 GETUPVAL                         R23 1
      174 GETTABLEKS                       R23 R23 K40 ["None"]
      176 JUMPIFNOTEQ                      R22 R23 ; [+3]
      178 LOADNIL                          R21
      179 JUMP                             ; [+2]
      180 GETTABLEKS                       R21 R1 K37 ["textInputType"]
      182 SETTABLEKS                       R21 R20 K37 ["textInputType"]
      184 LOADN                            R21 1
      185 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R18 R18 K5 ["createElement"]
      193 GETUPVAL                         R19 7
      194 DUPTABLE                         R20 K51 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      195 SETTABLEKS                       R3 R20 K49 ["Text"]
      197 GETTABLEKS                       R21 R2 K52 ["Color"]
      199 GETTABLEKS                       R21 R21 K53 ["System"]
      201 GETTABLEKS                       R21 R21 K54 ["Alert"]
      203 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      205 LOADN                            R21 2
      206 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      208 LOADK                            R21 K55 ["auto-xy"]
      209 SETTABLEKS                       R21 R20 K6 ["tag"]
      211 CALL                             R18 2 1
      212 SETTABLEKS                       R18 R17 K20 ["Output"]
      214 GETUPVAL                         R18 1
      215 GETTABLEKS                       R18 R18 K5 ["createElement"]
      217 GETUPVAL                         R19 7
      218 DUPTABLE                         R20 K56 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      219 LOADN                            R21 3
      220 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      222 LOADK                            R22 K57 ["Num return pressed: "]
      223 FASTCALL1                        TOSTRING R5 ; [+3]
      224 MOVE                             R24 R5
      225 GETIMPORT                        R23 K59 [tostring]
      227 CALL                             R23 1 1
      228 CONCAT                           R21 R22 R23
      229 SETTABLEKS                       R21 R20 K49 ["Text"]
      231 GETTABLEKS                       R21 R2 K52 ["Color"]
      233 GETTABLEKS                       R21 R21 K60 ["Content"]
      235 GETTABLEKS                       R21 R21 K61 ["Emphasis"]
      237 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      239 LOADK                            R21 K55 ["auto-xy"]
      240 SETTABLEKS                       R21 R20 K6 ["tag"]
      242 CALL                             R18 2 1
      243 SETTABLEKS                       R18 R17 K21 ["NumReturnPressed"]
      245 CALL                             R14 3 1
      246 SETTABLEKS                       R14 R13 K9 ["WidthContainer"]
      248 CALL                             R10 3 -1
      249 RETURN                           R10 -1

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
      107 DUPTABLE                         R16 K28 [{"summary", "stories", "controls"}]
      108 LOADK                            R17 K29 ["Internal text input"]
      109 SETTABLEKS                       R17 R16 K25 ["summary"]
      111 NEWTABLE                         R17 0 2
      113 DUPTABLE                         R18 K32 [{"name", "story"}]
      114 LOADK                            R19 K33 ["Single-line"]
      115 SETTABLEKS                       R19 R18 K30 ["name"]
      117 DUPCLOSURE                       R19 K34 [PROTO_5]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R19 R18 K31 ["story"]
      123 DUPTABLE                         R19 K32 [{"name", "story"}]
      124 LOADK                            R20 K35 ["Multi-line"]
      125 SETTABLEKS                       R20 R19 K30 ["name"]
      127 DUPCLOSURE                       R20 K36 [PROTO_6]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R2
      131 SETTABLEKS                       R20 R19 K31 ["story"]
      133 SETLIST                          R17 R18 2 [1]
      135 SETTABLEKS                       R17 R16 K26 ["stories"]
      137 DUPTABLE                         R17 K50 [{"hasError", "isDisabled", "size", "variant", "numLines", "width", "radius", "focusBehavior", "hasClearButton", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
      138 LOADB                            R18 0
      139 SETTABLEKS                       R18 R17 K37 ["hasError"]
      141 LOADB                            R18 0
      142 SETTABLEKS                       R18 R17 K38 ["isDisabled"]
      144 GETTABLEKS                       R18 R2 K51 ["values"]
      146 MOVE                             R19 R11
      147 CALL                             R18 1 1
      148 SETTABLEKS                       R18 R17 K39 ["size"]
      150 GETTABLEKS                       R18 R2 K51 ["values"]
      152 MOVE                             R19 R12
      153 CALL                             R18 1 1
      154 SETTABLEKS                       R18 R17 K40 ["variant"]
      156 LOADN                            R18 3
      157 SETTABLEKS                       R18 R17 K41 ["numLines"]
      159 LOADN                            R18 144
      160 SETTABLEKS                       R18 R17 K42 ["width"]
      162 NEWTABLE                         R18 0 2
      164 GETTABLEKS                       R19 R3 K52 ["None"]
      166 GETTABLEKS                       R21 R2 K51 ["values"]
      168 MOVE                             R22 R13
      169 CALL                             R21 1 -1
      170 FASTCALL                         TABLE_UNPACK ; [+2]
      171 GETIMPORT                        R20 K54 [unpack]
      173 CALL                             R20 -1 -1
      174 SETLIST                          R18 R19 -1 [1]
      176 SETTABLEKS                       R18 R17 K43 ["radius"]
      178 NEWTABLE                         R18 0 2
      180 GETTABLEKS                       R19 R3 K52 ["None"]
      182 GETTABLEKS                       R21 R2 K51 ["values"]
      184 MOVE                             R22 R10
      185 CALL                             R21 1 -1
      186 FASTCALL                         TABLE_UNPACK ; [+2]
      187 GETIMPORT                        R20 K54 [unpack]
      189 CALL                             R20 -1 -1
      190 SETLIST                          R18 R19 -1 [1]
      192 SETTABLEKS                       R18 R17 K44 ["focusBehavior"]
      194 LOADB                            R18 1
      195 SETTABLEKS                       R18 R17 K45 ["hasClearButton"]
      197 LOADK                            R18 K55 ["Placeholder text"]
      198 SETTABLEKS                       R18 R17 K46 ["placeholder"]
      200 NEWTABLE                         R18 0 4
      202 LOADK                            R19 K56 ["icons/placeholder/placeholderOn_small"]
      203 LOADK                            R20 K57 ["icons/status/private_small"]
      204 LOADK                            R21 K58 ["icons/common/search_small"]
      205 GETTABLEKS                       R22 R3 K52 ["None"]
      207 SETLIST                          R18 R19 4 [1]
      209 SETTABLEKS                       R18 R17 K47 ["leadingComponentIcon"]
      211 NEWTABLE                         R18 0 6
      213 LOADK                            R19 K59 ["icons/placeholder/placeholderOff"]
      214 LOADK                            R20 K60 ["icons/actions/edit/clear_small"]
      215 LOADK                            R21 K61 ["icons/actions/info_small"]
      216 LOADK                            R22 K62 ["icons/actions/viewOn"]
      217 LOADK                            R23 K63 ["icons/actions/viewOff"]
      218 GETTABLEKS                       R24 R3 K52 ["None"]
      220 SETLIST                          R18 R19 6 [1]
      222 SETTABLEKS                       R18 R17 K48 ["trailingComponentIcon"]
      224 NEWTABLE                         R18 0 4
      226 GETTABLEKS                       R19 R3 K52 ["None"]
      228 GETIMPORT                        R20 K67 [Enum.TextInputType.Default]
      230 GETIMPORT                        R21 K69 [Enum.TextInputType.Password]
      232 GETIMPORT                        R22 K71 [Enum.TextInputType.Number]
      234 SETLIST                          R18 R19 4 [1]
      236 SETTABLEKS                       R18 R17 K49 ["textInputType"]
      238 SETTABLEKS                       R17 R16 K27 ["controls"]
      240 RETURN                           R16 1
