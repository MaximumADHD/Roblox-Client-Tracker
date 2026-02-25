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
       19 LOADK                            R10 K2 [""]
       20 GETTABLEKS                       R11 R1 K4 ["maxLines"]
       22 LOADN                            R12 1
       23 JUMPIFNOTLT                      R12 R11 ; [+22]
       25 NEWTABLE                         R11 0 0
       27 LOADN                            R14 1
       28 LOADN                            R12 232
       29 LOADN                            R13 1
       30 FORNPREP                         R12
       31 FASTCALL2                        TABLE_INSERT R11 R14 ; [+5]
       33 MOVE                             R16 R11
       34 MOVE                             R17 R14
       35 GETIMPORT                        R15 K7 [table.insert]
       37 CALL                             R15 2 0
       38 FORNLOOP                         R12
       39 GETIMPORT                        R12 K9 [table.concat]
       41 MOVE                             R13 R11
       42 LOADK                            R14 K10 ["\n"]
       43 CALL                             R12 2 1
       44 MOVE                             R10 R12
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R10 R1 K11 ["placeholder"]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R11 R12 K12 ["createElement"]
       51 GETUPVAL                         R12 2
       52 DUPTABLE                         R13 K14 [{"tag"}]
       53 LOADK                            R14 K15 ["auto-xy padding-xlarge"]
       54 SETTABLEKS                       R14 R13 K13 ["tag"]
       56 DUPTABLE                         R14 K17 [{"WidthContainer"}]
       57 GETUPVAL                         R16 1
       58 GETTABLEKS                       R15 R16 K12 ["createElement"]
       60 GETUPVAL                         R16 2
       61 DUPTABLE                         R17 K19 [{"Size", "tag"}]
       62 GETIMPORT                        R18 K22 [UDim2.fromOffset]
       64 GETTABLEKS                       R19 R1 K23 ["width"]
       66 GETTABLEKS                       R21 R2 K18 ["Size"]
       68 GETTABLEKS                       R20 R21 K24 ["Size_3000"]
       70 CALL                             R18 2 1
       71 SETTABLEKS                       R18 R17 K18 ["Size"]
       73 LOADK                            R18 K25 ["col gap-large auto-y"]
       74 SETTABLEKS                       R18 R17 K13 ["tag"]
       76 DUPTABLE                         R18 K29 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       77 GETUPVAL                         R20 1
       78 GETTABLEKS                       R19 R20 K12 ["createElement"]
       80 GETUPVAL                         R20 3
       81 DUPTABLE                         R21 K40 [{"text", "size", "hasError", "isDisabled", "maxLines", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
       82 SETTABLEKS                       R3 R21 K30 ["text"]
       84 GETTABLEKS                       R22 R1 K31 ["size"]
       86 SETTABLEKS                       R22 R21 K31 ["size"]
       88 GETTABLEKS                       R22 R1 K32 ["hasError"]
       90 SETTABLEKS                       R22 R21 K32 ["hasError"]
       92 GETTABLEKS                       R22 R1 K33 ["isDisabled"]
       94 SETTABLEKS                       R22 R21 K33 ["isDisabled"]
       96 GETTABLEKS                       R22 R1 K4 ["maxLines"]
       98 SETTABLEKS                       R22 R21 K4 ["maxLines"]
      100 SETTABLEKS                       R7 R21 K34 ["onChanged"]
      102 SETTABLEKS                       R9 R21 K35 ["onReturnPressed"]
      104 SETTABLEKS                       R10 R21 K11 ["placeholder"]
      106 GETTABLEKS                       R23 R1 K41 ["leadingComponentIcon"]
      108 GETUPVAL                         R25 1
      109 GETTABLEKS                       R24 R25 K42 ["None"]
      111 JUMPIFNOTEQ                      R23 R24 ; [+3]
      113 LOADNIL                          R22
      114 JUMP                             ; [+15]
      115 GETUPVAL                         R23 1
      116 GETTABLEKS                       R22 R23 K12 ["createElement"]
      118 GETUPVAL                         R23 4
      119 DUPTABLE                         R24 K44 [{"name", "size"}]
      120 GETTABLEKS                       R25 R1 K41 ["leadingComponentIcon"]
      122 SETTABLEKS                       R25 R24 K43 ["name"]
      124 GETUPVAL                         R26 5
      125 GETTABLEKS                       R25 R26 K45 ["Small"]
      127 SETTABLEKS                       R25 R24 K31 ["size"]
      129 CALL                             R22 2 1
      130 SETTABLEKS                       R22 R21 K36 ["leadingElement"]
      132 GETTABLEKS                       R23 R1 K46 ["trailingComponentIcon"]
      134 GETUPVAL                         R25 1
      135 GETTABLEKS                       R24 R25 K42 ["None"]
      137 JUMPIFNOTEQ                      R23 R24 ; [+3]
      139 LOADNIL                          R22
      140 JUMP                             ; [+21]
      141 GETUPVAL                         R23 1
      142 GETTABLEKS                       R22 R23 K12 ["createElement"]
      144 GETUPVAL                         R23 6
      145 DUPTABLE                         R24 K49 [{"onActivated", "isDisabled", "size", "icon"}]
      146 SETTABLEKS                       R8 R24 K47 ["onActivated"]
      148 GETTABLEKS                       R25 R1 K33 ["isDisabled"]
      150 SETTABLEKS                       R25 R24 K33 ["isDisabled"]
      152 GETUPVAL                         R26 5
      153 GETTABLEKS                       R25 R26 K45 ["Small"]
      155 SETTABLEKS                       R25 R24 K31 ["size"]
      157 GETTABLEKS                       R25 R1 K46 ["trailingComponentIcon"]
      159 SETTABLEKS                       R25 R24 K48 ["icon"]
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K37 ["trailingElement"]
      164 GETTABLEKS                       R23 R1 K38 ["textInputType"]
      166 GETUPVAL                         R25 1
      167 GETTABLEKS                       R24 R25 K42 ["None"]
      169 JUMPIFNOTEQ                      R23 R24 ; [+3]
      171 LOADNIL                          R22
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R22 R1 K38 ["textInputType"]
      175 SETTABLEKS                       R22 R21 K38 ["textInputType"]
      177 LOADN                            R22 1
      178 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      180 CALL                             R19 2 1
      181 SETTABLEKS                       R19 R18 K26 ["InternalTextInput"]
      183 GETUPVAL                         R20 1
      184 GETTABLEKS                       R19 R20 K12 ["createElement"]
      186 GETUPVAL                         R20 7
      187 DUPTABLE                         R21 K52 [{"Text", "textStyle", "LayoutOrder", "tag"}]
      188 SETTABLEKS                       R3 R21 K50 ["Text"]
      190 GETTABLEKS                       R24 R2 K53 ["Color"]
      192 GETTABLEKS                       R23 R24 K54 ["System"]
      194 GETTABLEKS                       R22 R23 K55 ["Alert"]
      196 SETTABLEKS                       R22 R21 K51 ["textStyle"]
      198 LOADN                            R22 2
      199 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      201 LOADK                            R22 K56 ["auto-xy"]
      202 SETTABLEKS                       R22 R21 K13 ["tag"]
      204 CALL                             R19 2 1
      205 SETTABLEKS                       R19 R18 K27 ["Output"]
      207 GETUPVAL                         R20 1
      208 GETTABLEKS                       R19 R20 K12 ["createElement"]
      210 GETUPVAL                         R20 7
      211 DUPTABLE                         R21 K57 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      212 LOADN                            R22 3
      213 SETTABLEKS                       R22 R21 K39 ["LayoutOrder"]
      215 LOADK                            R23 K58 ["Num return pressed: "]
      216 FASTCALL1                        TOSTRING R5 ; [+3]
      217 MOVE                             R25 R5
      218 GETIMPORT                        R24 K60 [tostring]
      220 CALL                             R24 1 1
      221 CONCAT                           R22 R23 R24
      222 SETTABLEKS                       R22 R21 K50 ["Text"]
      224 GETTABLEKS                       R24 R2 K53 ["Color"]
      226 GETTABLEKS                       R23 R24 K61 ["Content"]
      228 GETTABLEKS                       R22 R23 K62 ["Emphasis"]
      230 SETTABLEKS                       R22 R21 K51 ["textStyle"]
      232 LOADK                            R22 K56 ["auto-xy"]
      233 SETTABLEKS                       R22 R21 K13 ["tag"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K28 ["NumReturnPressed"]
      238 CALL                             R15 3 1
      239 SETTABLEKS                       R15 R14 K16 ["WidthContainer"]
      241 CALL                             R11 3 -1
      242 RETURN                           R11 -1

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
       86 DUPTABLE                         R13 K25 [{"summary", "story", "controls"}]
       87 LOADK                            R14 K26 ["Internal text input"]
       88 SETTABLEKS                       R14 R13 K22 ["summary"]
       90 SETTABLEKS                       R12 R13 K23 ["story"]
       92 DUPTABLE                         R14 K36 [{"hasError", "isDisabled", "size", "maxLines", "width", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
       93 LOADB                            R15 0
       94 SETTABLEKS                       R15 R14 K27 ["hasError"]
       96 LOADB                            R15 0
       97 SETTABLEKS                       R15 R14 K28 ["isDisabled"]
       99 GETTABLEKS                       R15 R3 K37 ["values"]
      101 MOVE                             R16 R10
      102 CALL                             R15 1 1
      103 SETTABLEKS                       R15 R14 K29 ["size"]
      105 LOADN                            R15 1
      106 SETTABLEKS                       R15 R14 K30 ["maxLines"]
      108 LOADN                            R15 144
      109 SETTABLEKS                       R15 R14 K31 ["width"]
      111 LOADK                            R15 K38 ["Placeholder text"]
      112 SETTABLEKS                       R15 R14 K32 ["placeholder"]
      114 NEWTABLE                         R15 0 4
      116 LOADK                            R16 K39 ["icons/placeholder/placeholderOn_small"]
      117 LOADK                            R17 K40 ["icons/status/private_small"]
      118 LOADK                            R18 K41 ["icons/common/search_small"]
      119 GETTABLEKS                       R19 R2 K42 ["None"]
      121 SETLIST                          R15 R16 4 [1]
      123 SETTABLEKS                       R15 R14 K33 ["leadingComponentIcon"]
      125 NEWTABLE                         R15 0 6
      127 LOADK                            R16 K43 ["icons/placeholder/placeholderOff"]
      128 LOADK                            R17 K44 ["icons/actions/edit/clear_small"]
      129 LOADK                            R18 K45 ["icons/actions/info_small"]
      130 LOADK                            R19 K46 ["icons/actions/viewOn"]
      131 LOADK                            R20 K47 ["icons/actions/viewOff"]
      132 GETTABLEKS                       R21 R2 K42 ["None"]
      134 SETLIST                          R15 R16 6 [1]
      136 SETTABLEKS                       R15 R14 K34 ["trailingComponentIcon"]
      138 NEWTABLE                         R15 0 4
      140 GETTABLEKS                       R16 R2 K42 ["None"]
      142 GETIMPORT                        R17 K51 [Enum.TextInputType.Default]
      144 GETIMPORT                        R18 K53 [Enum.TextInputType.Password]
      146 GETIMPORT                        R19 K55 [Enum.TextInputType.Number]
      148 SETLIST                          R15 R16 4 [1]
      150 SETTABLEKS                       R15 R14 K35 ["textInputType"]
      152 SETTABLEKS                       R14 R13 K24 ["controls"]
      154 RETURN                           R13 1
