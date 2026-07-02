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
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["useState"]
       12 LOADN                            R6 0
       13 CALL                             R5 1 2
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 DUPCLOSURE                       R8 K3 [PROTO_1]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          VAL R6
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K4 ["createElement"]
       22 GETUPVAL                         R11 2
       23 DUPTABLE                         R12 K7 [{["tag"] = "auto-xy padding-xlarge"}]
       24 DUPTABLE                         R13 K9 [{"WidthContainer"}]
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K4 ["createElement"]
       28 GETUPVAL                         R15 2
       29 DUPTABLE                         R16 K12 [{["Size"], ["tag"] = "col gap-large auto-y"}]
       30 GETIMPORT                        R17 K15 [UDim2.fromOffset]
       32 GETTABLEKS                       R18 R1 K16 ["width"]
       34 GETTABLEKS                       R19 R2 K10 ["Size"]
       36 GETTABLEKS                       R19 R19 K17 ["Size_3000"]
       38 CALL                             R17 2 1
       39 SETTABLEKS                       R17 R16 K10 ["Size"]
       41 DUPTABLE                         R17 K21 [{"InternalTextInput", "Output", "NumReturnPressed"}]
       42 GETUPVAL                         R18 1
       43 GETTABLEKS                       R18 R18 K4 ["createElement"]
       45 GETUPVAL                         R19 3
       46 DUPTABLE                         R20 K35 [{["text"], ["size"], ["hasError"], ["isDisabled"], ["numLines"], ["onChanged"], ["onReturnPressed"], ["placeholder"], ["leadingElement"], ["trailingElement"], ["textInputType"], ["LayoutOrder"] = 1}]
       47 SETTABLEKS                       R3 R20 K22 ["text"]
       49 GETTABLEKS                       R21 R1 K23 ["size"]
       51 SETTABLEKS                       R21 R20 K23 ["size"]
       53 GETTABLEKS                       R21 R1 K24 ["hasError"]
       55 SETTABLEKS                       R21 R20 K24 ["hasError"]
       57 GETTABLEKS                       R21 R1 K25 ["isDisabled"]
       59 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
       61 GETTABLEKS                       R21 R1 K26 ["numLines"]
       63 SETTABLEKS                       R21 R20 K26 ["numLines"]
       65 SETTABLEKS                       R7 R20 K27 ["onChanged"]
       67 SETTABLEKS                       R9 R20 K28 ["onReturnPressed"]
       69 GETTABLEKS                       R21 R1 K29 ["placeholder"]
       71 SETTABLEKS                       R21 R20 K29 ["placeholder"]
       73 GETTABLEKS                       R22 R1 K36 ["leadingComponentIcon"]
       75 GETUPVAL                         R23 1
       76 GETTABLEKS                       R23 R23 K37 ["None"]
       78 JUMPIFNOTEQ                      R22 R23 ; [+3]
       80 LOADNIL                          R21
       81 JUMP                             ; [+15]
       82 GETUPVAL                         R21 1
       83 GETTABLEKS                       R21 R21 K4 ["createElement"]
       85 GETUPVAL                         R22 4
       86 DUPTABLE                         R23 K39 [{"name", "size"}]
       87 GETTABLEKS                       R24 R1 K36 ["leadingComponentIcon"]
       89 SETTABLEKS                       R24 R23 K38 ["name"]
       91 GETUPVAL                         R24 5
       92 GETTABLEKS                       R24 R24 K40 ["Small"]
       94 SETTABLEKS                       R24 R23 K23 ["size"]
       96 CALL                             R21 2 1
       97 SETTABLEKS                       R21 R20 K30 ["leadingElement"]
       99 GETTABLEKS                       R22 R1 K41 ["trailingComponentIcon"]
      101 GETUPVAL                         R23 1
      102 GETTABLEKS                       R23 R23 K37 ["None"]
      104 JUMPIFNOTEQ                      R22 R23 ; [+3]
      106 LOADNIL                          R21
      107 JUMP                             ; [+21]
      108 GETUPVAL                         R21 1
      109 GETTABLEKS                       R21 R21 K4 ["createElement"]
      111 GETUPVAL                         R22 6
      112 DUPTABLE                         R23 K44 [{"onActivated", "isDisabled", "size", "icon"}]
      113 SETTABLEKS                       R8 R23 K42 ["onActivated"]
      115 GETTABLEKS                       R24 R1 K25 ["isDisabled"]
      117 SETTABLEKS                       R24 R23 K25 ["isDisabled"]
      119 GETUPVAL                         R24 5
      120 GETTABLEKS                       R24 R24 K40 ["Small"]
      122 SETTABLEKS                       R24 R23 K23 ["size"]
      124 GETTABLEKS                       R24 R1 K41 ["trailingComponentIcon"]
      126 SETTABLEKS                       R24 R23 K43 ["icon"]
      128 CALL                             R21 2 1
      129 SETTABLEKS                       R21 R20 K31 ["trailingElement"]
      131 GETTABLEKS                       R22 R1 K32 ["textInputType"]
      133 GETUPVAL                         R23 1
      134 GETTABLEKS                       R23 R23 K37 ["None"]
      136 JUMPIFNOTEQ                      R22 R23 ; [+3]
      138 LOADNIL                          R21
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R21 R1 K32 ["textInputType"]
      142 SETTABLEKS                       R21 R20 K32 ["textInputType"]
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K18 ["InternalTextInput"]
      147 GETUPVAL                         R18 1
      148 GETTABLEKS                       R18 R18 K4 ["createElement"]
      150 GETUPVAL                         R19 7
      151 DUPTABLE                         R20 K49 [{["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["tag"] = "auto-xy"}]
      152 SETTABLEKS                       R3 R20 K45 ["Text"]
      154 GETTABLEKS                       R21 R2 K50 ["Color"]
      156 GETTABLEKS                       R21 R21 K51 ["System"]
      158 GETTABLEKS                       R21 R21 K52 ["Alert"]
      160 SETTABLEKS                       R21 R20 K46 ["textStyle"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K19 ["Output"]
      165 GETUPVAL                         R18 1
      166 GETTABLEKS                       R18 R18 K4 ["createElement"]
      168 GETUPVAL                         R19 7
      169 DUPTABLE                         R20 K54 [{["LayoutOrder"] = 3, ["Text"], ["textStyle"], ["tag"] = "auto-xy"}]
      170 LOADK                            R22 K55 ["Num return pressed: "]
      171 FASTCALL1                        TOSTRING R5 ; [+3]
      172 MOVE                             R24 R5
      173 GETIMPORT                        R23 K57 [tostring]
      175 CALL                             R23 1 1
      176 CONCAT                           R21 R22 R23
      177 SETTABLEKS                       R21 R20 K45 ["Text"]
      179 GETTABLEKS                       R21 R2 K50 ["Color"]
      181 GETTABLEKS                       R21 R21 K58 ["Content"]
      183 GETTABLEKS                       R21 R21 K59 ["Emphasis"]
      185 SETTABLEKS                       R21 R20 K46 ["textStyle"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K20 ["NumReturnPressed"]
      190 CALL                             R14 3 1
      191 SETTABLEKS                       R14 R13 K8 ["WidthContainer"]
      193 CALL                             R10 3 -1
      194 RETURN                           R10 -1

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
       67 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Components"]
       74 GETTABLEKS                       R12 R12 K20 ["InternalTextInput"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K21 [PROTO_4]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 DUPTABLE                         R13 K26 [{["summary"] = "Internal text input", ["stories"], ["controls"]}]
       87 NEWTABLE                         R14 0 2
       89 DUPTABLE                         R15 K30 [{["name"] = "Single-line", ["story"]}]
       90 DUPCLOSURE                       R16 K31 [PROTO_5]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R16 R15 K29 ["story"]
       96 DUPTABLE                         R16 K33 [{["name"] = "Multi-line", ["story"]}]
       97 DUPCLOSURE                       R17 K34 [PROTO_6]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R17 R16 K29 ["story"]
      103 SETLIST                          R14 R15 2 [1]
      105 SETTABLEKS                       R14 R13 K24 ["stories"]
      107 DUPTABLE                         R14 K48 [{["hasError"] = False, ["isDisabled"] = False, ["size"], ["numLines"] = 3, ["width"] = 400, ["placeholder"] = "Placeholder text", ["leadingComponentIcon"], ["trailingComponentIcon"], ["textInputType"]}]
      108 GETTABLEKS                       R15 R2 K49 ["values"]
      110 MOVE                             R16 R10
      111 CALL                             R15 1 1
      112 SETTABLEKS                       R15 R14 K38 ["size"]
      114 NEWTABLE                         R15 0 4
      116 LOADK                            R16 K50 ["icons/placeholder/placeholderOn_small"]
      117 LOADK                            R17 K51 ["icons/status/private_small"]
      118 LOADK                            R18 K52 ["icons/common/search_small"]
      119 GETTABLEKS                       R19 R3 K53 ["None"]
      121 SETLIST                          R15 R16 4 [1]
      123 SETTABLEKS                       R15 R14 K45 ["leadingComponentIcon"]
      125 NEWTABLE                         R15 0 6
      127 LOADK                            R16 K54 ["icons/placeholder/placeholderOff"]
      128 LOADK                            R17 K55 ["icons/actions/edit/clear_small"]
      129 LOADK                            R18 K56 ["icons/actions/info_small"]
      130 LOADK                            R19 K57 ["icons/actions/viewOn"]
      131 LOADK                            R20 K58 ["icons/actions/viewOff"]
      132 GETTABLEKS                       R21 R3 K53 ["None"]
      134 SETLIST                          R15 R16 6 [1]
      136 SETTABLEKS                       R15 R14 K46 ["trailingComponentIcon"]
      138 NEWTABLE                         R15 0 4
      140 GETTABLEKS                       R16 R3 K53 ["None"]
      142 GETIMPORT                        R17 K62 [Enum.TextInputType.Default]
      144 GETIMPORT                        R18 K64 [Enum.TextInputType.Password]
      146 GETIMPORT                        R19 K66 [Enum.TextInputType.Number]
      148 SETLIST                          R15 R16 4 [1]
      150 SETTABLEKS                       R15 R14 K47 ["textInputType"]
      152 SETTABLEKS                       R14 R13 K25 ["controls"]
      154 RETURN                           R13 1
