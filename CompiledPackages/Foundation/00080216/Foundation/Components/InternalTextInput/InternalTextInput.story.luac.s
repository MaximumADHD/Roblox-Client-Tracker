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
       52 DUPTABLE                         R20 K38 [{"text", "size", "variant", "hasError", "isDisabled", "numLines", "focusBehavior", "radius", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
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
       75 GETUPVAL                         R22 4
       76 GETTABLEKS                       R22 R22 K39 ["FoundationTextInputFocusBehavior"]
       78 JUMPIFNOT                        R22 ; [+10]
       79 GETTABLEKS                       R22 R1 K29 ["focusBehavior"]
       81 GETUPVAL                         R23 1
       82 GETTABLEKS                       R23 R23 K40 ["None"]
       84 JUMPIFEQ                         R22 R23 ; [+4]
       86 GETTABLEKS                       R21 R1 K29 ["focusBehavior"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R21
       90 SETTABLEKS                       R21 R20 K29 ["focusBehavior"]
       92 GETTABLEKS                       R22 R1 K30 ["radius"]
       94 GETUPVAL                         R23 1
       95 GETTABLEKS                       R23 R23 K40 ["None"]
       97 JUMPIFEQ                         R22 R23 ; [+4]
       99 GETTABLEKS                       R21 R1 K30 ["radius"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R21
      103 SETTABLEKS                       R21 R20 K30 ["radius"]
      105 SETTABLEKS                       R7 R20 K31 ["onChanged"]
      107 SETTABLEKS                       R9 R20 K32 ["onReturnPressed"]
      109 GETTABLEKS                       R21 R1 K33 ["placeholder"]
      111 SETTABLEKS                       R21 R20 K33 ["placeholder"]
      113 GETTABLEKS                       R22 R1 K41 ["leadingComponentIcon"]
      115 GETUPVAL                         R23 1
      116 GETTABLEKS                       R23 R23 K40 ["None"]
      118 JUMPIFNOTEQ                      R22 R23 ; [+3]
      120 LOADNIL                          R21
      121 JUMP                             ; [+15]
      122 GETUPVAL                         R21 1
      123 GETTABLEKS                       R21 R21 K5 ["createElement"]
      125 GETUPVAL                         R22 5
      126 DUPTABLE                         R23 K43 [{"name", "size"}]
      127 GETTABLEKS                       R24 R1 K41 ["leadingComponentIcon"]
      129 SETTABLEKS                       R24 R23 K42 ["name"]
      131 GETUPVAL                         R24 6
      132 GETTABLEKS                       R24 R24 K44 ["Small"]
      134 SETTABLEKS                       R24 R23 K24 ["size"]
      136 CALL                             R21 2 1
      137 SETTABLEKS                       R21 R20 K34 ["leadingElement"]
      139 GETTABLEKS                       R22 R1 K45 ["trailingComponentIcon"]
      141 GETUPVAL                         R23 1
      142 GETTABLEKS                       R23 R23 K40 ["None"]
      144 JUMPIFNOTEQ                      R22 R23 ; [+3]
      146 LOADNIL                          R21
      147 JUMP                             ; [+21]
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R21 R21 K5 ["createElement"]
      151 GETUPVAL                         R22 7
      152 DUPTABLE                         R23 K48 [{"onActivated", "isDisabled", "size", "icon"}]
      153 SETTABLEKS                       R8 R23 K46 ["onActivated"]
      155 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      157 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      159 GETUPVAL                         R24 6
      160 GETTABLEKS                       R24 R24 K44 ["Small"]
      162 SETTABLEKS                       R24 R23 K24 ["size"]
      164 GETTABLEKS                       R24 R1 K45 ["trailingComponentIcon"]
      166 SETTABLEKS                       R24 R23 K47 ["icon"]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K35 ["trailingElement"]
      171 GETTABLEKS                       R22 R1 K36 ["textInputType"]
      173 GETUPVAL                         R23 1
      174 GETTABLEKS                       R23 R23 K40 ["None"]
      176 JUMPIFNOTEQ                      R22 R23 ; [+3]
      178 LOADNIL                          R21
      179 JUMP                             ; [+2]
      180 GETTABLEKS                       R21 R1 K36 ["textInputType"]
      182 SETTABLEKS                       R21 R20 K36 ["textInputType"]
      184 LOADN                            R21 1
      185 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R18 R18 K5 ["createElement"]
      193 GETUPVAL                         R19 8
      194 DUPTABLE                         R20 K51 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      195 SETTABLEKS                       R3 R20 K49 ["Text"]
      197 GETTABLEKS                       R21 R2 K52 ["Color"]
      199 GETTABLEKS                       R21 R21 K53 ["System"]
      201 GETTABLEKS                       R21 R21 K54 ["Alert"]
      203 SETTABLEKS                       R21 R20 K50 ["textStyle"]
      205 LOADN                            R21 2
      206 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
      208 LOADK                            R21 K55 ["auto-xy"]
      209 SETTABLEKS                       R21 R20 K6 ["tag"]
      211 CALL                             R18 2 1
      212 SETTABLEKS                       R18 R17 K20 ["Output"]
      214 GETUPVAL                         R18 1
      215 GETTABLEKS                       R18 R18 K5 ["createElement"]
      217 GETUPVAL                         R19 8
      218 DUPTABLE                         R20 K56 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      219 LOADN                            R21 3
      220 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
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
       74 GETTABLEKS                       R12 R12 K21 ["InputFocusBehavior"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Enums"]
       81 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K19 ["Enums"]
       88 GETTABLEKS                       R14 R14 K23 ["InputVariant"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K19 ["Enums"]
       95 GETTABLEKS                       R15 R15 K24 ["Radius"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K11 ["Components"]
      102 GETTABLEKS                       R16 R16 K25 ["InternalTextInput"]
      104 CALL                             R15 1 1
      105 DUPCLOSURE                       R16 K26 [PROTO_4]
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 DUPTABLE                         R17 K30 [{"summary", "stories", "controls"}]
      116 LOADK                            R18 K31 ["Internal text input"]
      117 SETTABLEKS                       R18 R17 K27 ["summary"]
      119 NEWTABLE                         R18 0 2
      121 DUPTABLE                         R19 K34 [{"name", "story"}]
      122 LOADK                            R20 K35 ["Single-line"]
      123 SETTABLEKS                       R20 R19 K32 ["name"]
      125 DUPCLOSURE                       R20 K36 [PROTO_5]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R20 R19 K33 ["story"]
      131 DUPTABLE                         R20 K34 [{"name", "story"}]
      132 LOADK                            R21 K37 ["Multi-line"]
      133 SETTABLEKS                       R21 R20 K32 ["name"]
      135 DUPCLOSURE                       R21 K38 [PROTO_6]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R21 R20 K33 ["story"]
      141 SETLIST                          R18 R19 2 [1]
      143 SETTABLEKS                       R18 R17 K28 ["stories"]
      145 DUPTABLE                         R18 K51 [{"hasError", "isDisabled", "size", "variant", "numLines", "width", "radius", "focusBehavior", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
      146 LOADB                            R19 0
      147 SETTABLEKS                       R19 R18 K39 ["hasError"]
      149 LOADB                            R19 0
      150 SETTABLEKS                       R19 R18 K40 ["isDisabled"]
      152 GETTABLEKS                       R19 R2 K52 ["values"]
      154 MOVE                             R20 R12
      155 CALL                             R19 1 1
      156 SETTABLEKS                       R19 R18 K41 ["size"]
      158 GETTABLEKS                       R19 R2 K52 ["values"]
      160 MOVE                             R20 R13
      161 CALL                             R19 1 1
      162 SETTABLEKS                       R19 R18 K42 ["variant"]
      164 LOADN                            R19 3
      165 SETTABLEKS                       R19 R18 K43 ["numLines"]
      167 LOADN                            R19 144
      168 SETTABLEKS                       R19 R18 K44 ["width"]
      170 NEWTABLE                         R19 0 2
      172 GETTABLEKS                       R20 R3 K53 ["None"]
      174 GETTABLEKS                       R22 R2 K52 ["values"]
      176 MOVE                             R23 R14
      177 CALL                             R22 1 -1
      178 FASTCALL                         TABLE_UNPACK ; [+2]
      179 GETIMPORT                        R21 K55 [unpack]
      181 CALL                             R21 -1 -1
      182 SETLIST                          R19 R20 -1 [1]
      184 SETTABLEKS                       R19 R18 K45 ["radius"]
      186 GETTABLEKS                       R20 R4 K56 ["FoundationTextInputFocusBehavior"]
      188 JUMPIFNOT                        R20 ; [+15]
      189 NEWTABLE                         R19 0 2
      191 GETTABLEKS                       R20 R3 K53 ["None"]
      193 GETTABLEKS                       R22 R2 K52 ["values"]
      195 MOVE                             R23 R11
      196 CALL                             R22 1 -1
      197 FASTCALL                         TABLE_UNPACK ; [+2]
      198 GETIMPORT                        R21 K55 [unpack]
      200 CALL                             R21 -1 -1
      201 SETLIST                          R19 R20 -1 [1]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R19
      205 SETTABLEKS                       R19 R18 K46 ["focusBehavior"]
      207 LOADK                            R19 K57 ["Placeholder text"]
      208 SETTABLEKS                       R19 R18 K47 ["placeholder"]
      210 NEWTABLE                         R19 0 4
      212 LOADK                            R20 K58 ["icons/placeholder/placeholderOn_small"]
      213 LOADK                            R21 K59 ["icons/status/private_small"]
      214 LOADK                            R22 K60 ["icons/common/search_small"]
      215 GETTABLEKS                       R23 R3 K53 ["None"]
      217 SETLIST                          R19 R20 4 [1]
      219 SETTABLEKS                       R19 R18 K48 ["leadingComponentIcon"]
      221 NEWTABLE                         R19 0 6
      223 LOADK                            R20 K61 ["icons/placeholder/placeholderOff"]
      224 LOADK                            R21 K62 ["icons/actions/edit/clear_small"]
      225 LOADK                            R22 K63 ["icons/actions/info_small"]
      226 LOADK                            R23 K64 ["icons/actions/viewOn"]
      227 LOADK                            R24 K65 ["icons/actions/viewOff"]
      228 GETTABLEKS                       R25 R3 K53 ["None"]
      230 SETLIST                          R19 R20 6 [1]
      232 SETTABLEKS                       R19 R18 K49 ["trailingComponentIcon"]
      234 NEWTABLE                         R19 0 4
      236 GETTABLEKS                       R20 R3 K53 ["None"]
      238 GETIMPORT                        R21 K69 [Enum.TextInputType.Default]
      240 GETIMPORT                        R22 K71 [Enum.TextInputType.Password]
      242 GETIMPORT                        R23 K73 [Enum.TextInputType.Number]
      244 SETLIST                          R19 R20 4 [1]
      246 SETTABLEKS                       R19 R18 K50 ["textInputType"]
      248 SETTABLEKS                       R18 R17 K29 ["controls"]
      250 RETURN                           R17 1
