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
        5 GETTABLEKS                       R3 R4 K1 ["useState"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["useState"]
       12 LOADN                            R6 0
       13 CALL                             R5 1 2
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 DUPCLOSURE                       R8 K3 [PROTO_1]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          VAL R6
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K4 ["createElement"]
       22 GETUPVAL                         R11 2
       23 DUPTABLE                         R12 K6 [{"tag"}]
       24 LOADK                            R13 K7 ["auto-xy padding-xlarge"]
       25 SETTABLEKS                       R13 R12 K5 ["tag"]
       27 DUPTABLE                         R13 K9 [{"WidthContainer"}]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R14 R15 K4 ["createElement"]
       31 GETUPVAL                         R15 2
       32 DUPTABLE                         R16 K11 [{"Size", "tag"}]
       33 GETIMPORT                        R17 K14 [UDim2.fromOffset]
       35 GETTABLEKS                       R18 R1 K15 ["width"]
       37 GETTABLEKS                       R20 R2 K10 ["Size"]
       39 GETTABLEKS                       R19 R20 K16 ["Size_3000"]
       41 CALL                             R17 2 1
       42 SETTABLEKS                       R17 R16 K10 ["Size"]
       44 LOADK                            R17 K17 ["col gap-large auto-y"]
       45 SETTABLEKS                       R17 R16 K5 ["tag"]
       47 DUPTABLE                         R17 K21 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       48 GETUPVAL                         R19 1
       49 GETTABLEKS                       R18 R19 K4 ["createElement"]
       51 GETUPVAL                         R19 3
       52 DUPTABLE                         R20 K34 [{"text", "size", "hasError", "isDisabled", "maxLines", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
       53 SETTABLEKS                       R3 R20 K22 ["text"]
       55 GETTABLEKS                       R21 R1 K23 ["size"]
       57 SETTABLEKS                       R21 R20 K23 ["size"]
       59 GETTABLEKS                       R21 R1 K24 ["hasError"]
       61 SETTABLEKS                       R21 R20 K24 ["hasError"]
       63 GETTABLEKS                       R21 R1 K25 ["isDisabled"]
       65 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
       67 GETTABLEKS                       R21 R1 K26 ["maxLines"]
       69 SETTABLEKS                       R21 R20 K26 ["maxLines"]
       71 SETTABLEKS                       R7 R20 K27 ["onChanged"]
       73 SETTABLEKS                       R9 R20 K28 ["onReturnPressed"]
       75 GETTABLEKS                       R21 R1 K29 ["placeholder"]
       77 SETTABLEKS                       R21 R20 K29 ["placeholder"]
       79 GETTABLEKS                       R22 R1 K35 ["leadingComponentIcon"]
       81 GETUPVAL                         R24 1
       82 GETTABLEKS                       R23 R24 K36 ["None"]
       84 JUMPIFNOTEQ                      R22 R23 ; [+3]
       86 LOADNIL                          R21
       87 JUMP                             ; [+15]
       88 GETUPVAL                         R22 1
       89 GETTABLEKS                       R21 R22 K4 ["createElement"]
       91 GETUPVAL                         R22 4
       92 DUPTABLE                         R23 K38 [{"name", "size"}]
       93 GETTABLEKS                       R24 R1 K35 ["leadingComponentIcon"]
       95 SETTABLEKS                       R24 R23 K37 ["name"]
       97 GETUPVAL                         R25 5
       98 GETTABLEKS                       R24 R25 K39 ["Small"]
      100 SETTABLEKS                       R24 R23 K23 ["size"]
      102 CALL                             R21 2 1
      103 SETTABLEKS                       R21 R20 K30 ["leadingElement"]
      105 GETTABLEKS                       R22 R1 K40 ["trailingComponentIcon"]
      107 GETUPVAL                         R24 1
      108 GETTABLEKS                       R23 R24 K36 ["None"]
      110 JUMPIFNOTEQ                      R22 R23 ; [+3]
      112 LOADNIL                          R21
      113 JUMP                             ; [+21]
      114 GETUPVAL                         R22 1
      115 GETTABLEKS                       R21 R22 K4 ["createElement"]
      117 GETUPVAL                         R22 6
      118 DUPTABLE                         R23 K43 [{"onActivated", "isDisabled", "size", "icon"}]
      119 SETTABLEKS                       R8 R23 K41 ["onActivated"]
      121 GETTABLEKS                       R24 R1 K25 ["isDisabled"]
      123 SETTABLEKS                       R24 R23 K25 ["isDisabled"]
      125 GETUPVAL                         R25 5
      126 GETTABLEKS                       R24 R25 K39 ["Small"]
      128 SETTABLEKS                       R24 R23 K23 ["size"]
      130 GETTABLEKS                       R24 R1 K40 ["trailingComponentIcon"]
      132 SETTABLEKS                       R24 R23 K42 ["icon"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K31 ["trailingElement"]
      137 GETTABLEKS                       R22 R1 K32 ["textInputType"]
      139 GETUPVAL                         R24 1
      140 GETTABLEKS                       R23 R24 K36 ["None"]
      142 JUMPIFNOTEQ                      R22 R23 ; [+3]
      144 LOADNIL                          R21
      145 JUMP                             ; [+2]
      146 GETTABLEKS                       R21 R1 K32 ["textInputType"]
      148 SETTABLEKS                       R21 R20 K32 ["textInputType"]
      150 LOADN                            R21 1
      151 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K18 ["InternalTextInput"]
      156 GETUPVAL                         R19 1
      157 GETTABLEKS                       R18 R19 K4 ["createElement"]
      159 GETUPVAL                         R19 7
      160 DUPTABLE                         R20 K46 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      161 SETTABLEKS                       R3 R20 K44 ["Text"]
      163 GETTABLEKS                       R23 R2 K47 ["Color"]
      165 GETTABLEKS                       R22 R23 K48 ["System"]
      167 GETTABLEKS                       R21 R22 K49 ["Alert"]
      169 SETTABLEKS                       R21 R20 K45 ["textStyle"]
      171 LOADN                            R21 2
      172 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      174 LOADK                            R21 K50 ["auto-xy"]
      175 SETTABLEKS                       R21 R20 K5 ["tag"]
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K19 ["Output"]
      180 GETUPVAL                         R19 1
      181 GETTABLEKS                       R18 R19 K4 ["createElement"]
      183 GETUPVAL                         R19 7
      184 DUPTABLE                         R20 K51 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      185 LOADN                            R21 3
      186 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      188 LOADK                            R22 K52 ["Num return pressed: "]
      189 FASTCALL1                        TOSTRING R5 ; [+3]
      190 MOVE                             R24 R5
      191 GETIMPORT                        R23 K54 [tostring]
      193 CALL                             R23 1 1
      194 CONCAT                           R21 R22 R23
      195 SETTABLEKS                       R21 R20 K44 ["Text"]
      197 GETTABLEKS                       R23 R2 K47 ["Color"]
      199 GETTABLEKS                       R22 R23 K55 ["Content"]
      201 GETTABLEKS                       R21 R22 K56 ["Emphasis"]
      203 SETTABLEKS                       R21 R20 K45 ["textStyle"]
      205 LOADK                            R21 K50 ["auto-xy"]
      206 SETTABLEKS                       R21 R20 K5 ["tag"]
      208 CALL                             R18 2 1
      209 SETTABLEKS                       R18 R17 K20 ["NumReturnPressed"]
      211 CALL                             R14 3 1
      212 SETTABLEKS                       R14 R13 K8 ["WidthContainer"]
      214 CALL                             R10 3 -1
      215 RETURN                           R10 -1

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
       14 DUPTABLE                         R8 K5 [{"maxLines"}]
       15 LOADN                            R9 1
       16 SETTABLEKS                       R9 R8 K4 ["maxLines"]
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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["IconButton"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Providers"]
       51 GETTABLEKS                       R10 R11 K15 ["Style"]
       53 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["IconSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R12 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K9 ["Components"]
       74 GETTABLEKS                       R12 R13 K20 ["InternalTextInput"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K21 [PROTO_4]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 DUPTABLE                         R13 K25 [{"summary", "stories", "controls"}]
       87 LOADK                            R14 K26 ["Internal text input"]
       88 SETTABLEKS                       R14 R13 K22 ["summary"]
       90 NEWTABLE                         R14 0 2
       92 DUPTABLE                         R15 K29 [{"name", "story"}]
       93 LOADK                            R16 K30 ["Single-line"]
       94 SETTABLEKS                       R16 R15 K27 ["name"]
       96 DUPCLOSURE                       R16 K31 [PROTO_5]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R16 R15 K28 ["story"]
      102 DUPTABLE                         R16 K29 [{"name", "story"}]
      103 LOADK                            R17 K32 ["Multi-line"]
      104 SETTABLEKS                       R17 R16 K27 ["name"]
      106 DUPCLOSURE                       R17 K33 [PROTO_6]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R17 R16 K28 ["story"]
      112 SETLIST                          R14 R15 2 [1]
      114 SETTABLEKS                       R14 R13 K23 ["stories"]
      116 DUPTABLE                         R14 K43 [{"hasError", "isDisabled", "size", "maxLines", "width", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
      117 LOADB                            R15 0
      118 SETTABLEKS                       R15 R14 K34 ["hasError"]
      120 LOADB                            R15 0
      121 SETTABLEKS                       R15 R14 K35 ["isDisabled"]
      123 GETTABLEKS                       R15 R3 K44 ["values"]
      125 MOVE                             R16 R10
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K36 ["size"]
      129 LOADN                            R15 3
      130 SETTABLEKS                       R15 R14 K37 ["maxLines"]
      132 LOADN                            R15 144
      133 SETTABLEKS                       R15 R14 K38 ["width"]
      135 LOADK                            R15 K45 ["Placeholder text"]
      136 SETTABLEKS                       R15 R14 K39 ["placeholder"]
      138 NEWTABLE                         R15 0 4
      140 LOADK                            R16 K46 ["icons/placeholder/placeholderOn_small"]
      141 LOADK                            R17 K47 ["icons/status/private_small"]
      142 LOADK                            R18 K48 ["icons/common/search_small"]
      143 GETTABLEKS                       R19 R2 K49 ["None"]
      145 SETLIST                          R15 R16 4 [1]
      147 SETTABLEKS                       R15 R14 K40 ["leadingComponentIcon"]
      149 NEWTABLE                         R15 0 6
      151 LOADK                            R16 K50 ["icons/placeholder/placeholderOff"]
      152 LOADK                            R17 K51 ["icons/actions/edit/clear_small"]
      153 LOADK                            R18 K52 ["icons/actions/info_small"]
      154 LOADK                            R19 K53 ["icons/actions/viewOn"]
      155 LOADK                            R20 K54 ["icons/actions/viewOff"]
      156 GETTABLEKS                       R21 R2 K49 ["None"]
      158 SETLIST                          R15 R16 6 [1]
      160 SETTABLEKS                       R15 R14 K41 ["trailingComponentIcon"]
      162 NEWTABLE                         R15 0 4
      164 GETTABLEKS                       R16 R2 K49 ["None"]
      166 GETIMPORT                        R17 K58 [Enum.TextInputType.Default]
      168 GETIMPORT                        R18 K60 [Enum.TextInputType.Password]
      170 GETIMPORT                        R19 K62 [Enum.TextInputType.Number]
      172 SETLIST                          R15 R16 4 [1]
      174 SETTABLEKS                       R15 R14 K42 ["textInputType"]
      176 SETTABLEKS                       R14 R13 K24 ["controls"]
      178 RETURN                           R13 1
