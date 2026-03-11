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
       52 DUPTABLE                         R20 K36 [{"text", "size", "hasError", "isDisabled", "numLines", "radius", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
       53 SETTABLEKS                       R3 R20 K23 ["text"]
       55 GETTABLEKS                       R21 R1 K24 ["size"]
       57 SETTABLEKS                       R21 R20 K24 ["size"]
       59 GETTABLEKS                       R21 R1 K25 ["hasError"]
       61 SETTABLEKS                       R21 R20 K25 ["hasError"]
       63 GETTABLEKS                       R21 R1 K26 ["isDisabled"]
       65 SETTABLEKS                       R21 R20 K26 ["isDisabled"]
       67 GETTABLEKS                       R21 R1 K27 ["numLines"]
       69 SETTABLEKS                       R21 R20 K27 ["numLines"]
       71 GETUPVAL                         R23 4
       72 GETTABLEKS                       R22 R23 K37 ["FoundationInternalTextInputCornerRadius"]
       74 JUMPIFNOT                        R22 ; [+10]
       75 GETTABLEKS                       R22 R1 K28 ["radius"]
       77 GETUPVAL                         R24 1
       78 GETTABLEKS                       R23 R24 K38 ["None"]
       80 JUMPIFEQ                         R22 R23 ; [+4]
       82 GETTABLEKS                       R21 R1 K28 ["radius"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R21
       86 SETTABLEKS                       R21 R20 K28 ["radius"]
       88 SETTABLEKS                       R7 R20 K29 ["onChanged"]
       90 SETTABLEKS                       R9 R20 K30 ["onReturnPressed"]
       92 GETTABLEKS                       R21 R1 K31 ["placeholder"]
       94 SETTABLEKS                       R21 R20 K31 ["placeholder"]
       96 GETTABLEKS                       R22 R1 K39 ["leadingComponentIcon"]
       98 GETUPVAL                         R24 1
       99 GETTABLEKS                       R23 R24 K38 ["None"]
      101 JUMPIFNOTEQ                      R22 R23 ; [+3]
      103 LOADNIL                          R21
      104 JUMP                             ; [+15]
      105 GETUPVAL                         R22 1
      106 GETTABLEKS                       R21 R22 K5 ["createElement"]
      108 GETUPVAL                         R22 5
      109 DUPTABLE                         R23 K41 [{"name", "size"}]
      110 GETTABLEKS                       R24 R1 K39 ["leadingComponentIcon"]
      112 SETTABLEKS                       R24 R23 K40 ["name"]
      114 GETUPVAL                         R25 6
      115 GETTABLEKS                       R24 R25 K42 ["Small"]
      117 SETTABLEKS                       R24 R23 K24 ["size"]
      119 CALL                             R21 2 1
      120 SETTABLEKS                       R21 R20 K32 ["leadingElement"]
      122 GETTABLEKS                       R22 R1 K43 ["trailingComponentIcon"]
      124 GETUPVAL                         R24 1
      125 GETTABLEKS                       R23 R24 K38 ["None"]
      127 JUMPIFNOTEQ                      R22 R23 ; [+3]
      129 LOADNIL                          R21
      130 JUMP                             ; [+21]
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R21 R22 K5 ["createElement"]
      134 GETUPVAL                         R22 7
      135 DUPTABLE                         R23 K46 [{"onActivated", "isDisabled", "size", "icon"}]
      136 SETTABLEKS                       R8 R23 K44 ["onActivated"]
      138 GETTABLEKS                       R24 R1 K26 ["isDisabled"]
      140 SETTABLEKS                       R24 R23 K26 ["isDisabled"]
      142 GETUPVAL                         R25 6
      143 GETTABLEKS                       R24 R25 K42 ["Small"]
      145 SETTABLEKS                       R24 R23 K24 ["size"]
      147 GETTABLEKS                       R24 R1 K43 ["trailingComponentIcon"]
      149 SETTABLEKS                       R24 R23 K45 ["icon"]
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K33 ["trailingElement"]
      154 GETTABLEKS                       R22 R1 K34 ["textInputType"]
      156 GETUPVAL                         R24 1
      157 GETTABLEKS                       R23 R24 K38 ["None"]
      159 JUMPIFNOTEQ                      R22 R23 ; [+3]
      161 LOADNIL                          R21
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R21 R1 K34 ["textInputType"]
      165 SETTABLEKS                       R21 R20 K34 ["textInputType"]
      167 LOADN                            R21 1
      168 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K19 ["InternalTextInput"]
      173 GETUPVAL                         R19 1
      174 GETTABLEKS                       R18 R19 K5 ["createElement"]
      176 GETUPVAL                         R19 8
      177 DUPTABLE                         R20 K49 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      178 SETTABLEKS                       R3 R20 K47 ["Text"]
      180 GETTABLEKS                       R23 R2 K50 ["Color"]
      182 GETTABLEKS                       R22 R23 K51 ["System"]
      184 GETTABLEKS                       R21 R22 K52 ["Alert"]
      186 SETTABLEKS                       R21 R20 K48 ["textStyle"]
      188 LOADN                            R21 2
      189 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      191 LOADK                            R21 K53 ["auto-xy"]
      192 SETTABLEKS                       R21 R20 K6 ["tag"]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K20 ["Output"]
      197 GETUPVAL                         R19 1
      198 GETTABLEKS                       R18 R19 K5 ["createElement"]
      200 GETUPVAL                         R19 8
      201 DUPTABLE                         R20 K54 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      202 LOADN                            R21 3
      203 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      205 LOADK                            R22 K55 ["Num return pressed: "]
      206 FASTCALL1                        TOSTRING R5 ; [+3]
      207 MOVE                             R24 R5
      208 GETIMPORT                        R23 K57 [tostring]
      210 CALL                             R23 1 1
      211 CONCAT                           R21 R22 R23
      212 SETTABLEKS                       R21 R20 K47 ["Text"]
      214 GETTABLEKS                       R23 R2 K50 ["Color"]
      216 GETTABLEKS                       R22 R23 K58 ["Content"]
      218 GETTABLEKS                       R21 R22 K59 ["Emphasis"]
      220 SETTABLEKS                       R21 R20 K48 ["textStyle"]
      222 LOADK                            R21 K53 ["auto-xy"]
      223 SETTABLEKS                       R21 R20 K6 ["tag"]
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K21 ["NumReturnPressed"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K9 ["WidthContainer"]
      231 CALL                             R10 3 -1
      232 RETURN                           R10 -1

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
       44 GETTABLEKS                       R8 R9 K14 ["InternalTextInput"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R13 R0 K17 ["Providers"]
       65 GETTABLEKS                       R12 R13 K18 ["Style"]
       67 GETTABLEKS                       R11 R12 K19 ["useTokens"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Enums"]
       74 GETTABLEKS                       R12 R13 K21 ["IconSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Enums"]
       81 GETTABLEKS                       R13 R14 K22 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K20 ["Enums"]
       88 GETTABLEKS                       R14 R15 K23 ["Radius"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_4]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R8
      101 DUPTABLE                         R15 K28 [{"summary", "stories", "controls"}]
      102 LOADK                            R16 K29 ["Internal text input"]
      103 SETTABLEKS                       R16 R15 K25 ["summary"]
      105 NEWTABLE                         R16 0 2
      107 DUPTABLE                         R17 K32 [{"name", "story"}]
      108 LOADK                            R18 K33 ["Single-line"]
      109 SETTABLEKS                       R18 R17 K30 ["name"]
      111 DUPCLOSURE                       R18 K34 [PROTO_5]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R18 R17 K31 ["story"]
      117 DUPTABLE                         R18 K32 [{"name", "story"}]
      118 LOADK                            R19 K35 ["Multi-line"]
      119 SETTABLEKS                       R19 R18 K30 ["name"]
      121 DUPCLOSURE                       R19 K36 [PROTO_6]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R2
      125 SETTABLEKS                       R19 R18 K31 ["story"]
      127 SETLIST                          R16 R17 2 [1]
      129 SETTABLEKS                       R16 R15 K26 ["stories"]
      131 DUPTABLE                         R16 K47 [{"hasError", "isDisabled", "size", "numLines", "width", "radius", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
      132 LOADB                            R17 0
      133 SETTABLEKS                       R17 R16 K37 ["hasError"]
      135 LOADB                            R17 0
      136 SETTABLEKS                       R17 R16 K38 ["isDisabled"]
      138 GETTABLEKS                       R17 R2 K48 ["values"]
      140 MOVE                             R18 R12
      141 CALL                             R17 1 1
      142 SETTABLEKS                       R17 R16 K39 ["size"]
      144 LOADN                            R17 3
      145 SETTABLEKS                       R17 R16 K40 ["numLines"]
      147 LOADN                            R17 144
      148 SETTABLEKS                       R17 R16 K41 ["width"]
      150 GETTABLEKS                       R18 R4 K49 ["FoundationInternalTextInputCornerRadius"]
      152 JUMPIFNOT                        R18 ; [+15]
      153 NEWTABLE                         R17 0 2
      155 GETTABLEKS                       R18 R3 K50 ["None"]
      157 GETTABLEKS                       R20 R2 K48 ["values"]
      159 MOVE                             R21 R13
      160 CALL                             R20 1 -1
      161 FASTCALL                         TABLE_UNPACK ; [+2]
      162 GETIMPORT                        R19 K52 [unpack]
      164 CALL                             R19 -1 -1
      165 SETLIST                          R17 R18 -1 [1]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R17
      169 SETTABLEKS                       R17 R16 K42 ["radius"]
      171 LOADK                            R17 K53 ["Placeholder text"]
      172 SETTABLEKS                       R17 R16 K43 ["placeholder"]
      174 NEWTABLE                         R17 0 4
      176 LOADK                            R18 K54 ["icons/placeholder/placeholderOn_small"]
      177 LOADK                            R19 K55 ["icons/status/private_small"]
      178 LOADK                            R20 K56 ["icons/common/search_small"]
      179 GETTABLEKS                       R21 R3 K50 ["None"]
      181 SETLIST                          R17 R18 4 [1]
      183 SETTABLEKS                       R17 R16 K44 ["leadingComponentIcon"]
      185 NEWTABLE                         R17 0 6
      187 LOADK                            R18 K57 ["icons/placeholder/placeholderOff"]
      188 LOADK                            R19 K58 ["icons/actions/edit/clear_small"]
      189 LOADK                            R20 K59 ["icons/actions/info_small"]
      190 LOADK                            R21 K60 ["icons/actions/viewOn"]
      191 LOADK                            R22 K61 ["icons/actions/viewOff"]
      192 GETTABLEKS                       R23 R3 K50 ["None"]
      194 SETLIST                          R17 R18 6 [1]
      196 SETTABLEKS                       R17 R16 K45 ["trailingComponentIcon"]
      198 NEWTABLE                         R17 0 4
      200 GETTABLEKS                       R18 R3 K50 ["None"]
      202 GETIMPORT                        R19 K65 [Enum.TextInputType.Default]
      204 GETIMPORT                        R20 K67 [Enum.TextInputType.Password]
      206 GETIMPORT                        R21 K69 [Enum.TextInputType.Number]
      208 SETLIST                          R17 R18 4 [1]
      210 SETTABLEKS                       R17 R16 K46 ["textInputType"]
      212 SETTABLEKS                       R16 R15 K27 ["controls"]
      214 RETURN                           R15 1
