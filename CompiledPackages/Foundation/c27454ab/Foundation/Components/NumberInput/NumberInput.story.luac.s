PROTO_0:
        0 LOADK                            R2 K0 ["%*px"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["$%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["formatAsString"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["newValue"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K18 [{"value", "controlsVariant", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision", "leadingIcon", "isScrubbable"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["value"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["controlsVariant"]
       11 SETTABLEKS                       R4 R3 K2 ["controlsVariant"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K3 ["hasError"]
       16 SETTABLEKS                       R4 R3 K3 ["hasError"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       21 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K5 ["isRequired"]
       26 SETTABLEKS                       R4 R3 K5 ["isRequired"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       31 GETUPVAL                         R4 6
       32 SETTABLEKS                       R4 R3 K7 ["formatAsString"]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K8 ["label"]
       37 SETTABLEKS                       R4 R3 K8 ["label"]
       39 SETTABLEKS                       R0 R3 K9 ["size"]
       41 GETUPVAL                         R5 7
       42 GETTABLEKS                       R5 R5 K19 ["FoundationNumberInputTokenBasedWidth"]
       44 JUMPIFNOT                        R5 ; [+15]
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R5 R5 K10 ["width"]
       48 JUMPIFNOTEQKN                    R5 K20 [0] ; [+3]
       50 LOADNIL                          R4
       51 JUMP                             ; [+18]
       52 GETIMPORT                        R4 K23 [UDim.new]
       54 LOADN                            R5 0
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R6 R6 K10 ["width"]
       58 CALL                             R4 2 1
       59 JUMP                             ; [+10]
       60 GETIMPORT                        R4 K23 [UDim.new]
       62 LOADN                            R5 0
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R7 R7 K24 ["baseWidth"]
       66 GETUPVAL                         R9 8
       67 GETTABLE                         R8 R9 R0
       68 ADD                              R6 R7 R8
       69 CALL                             R4 2 1
       70 SETTABLEKS                       R4 R3 K10 ["width"]
       72 GETUPVAL                         R4 4
       73 GETTABLEKS                       R4 R4 K11 ["maximum"]
       75 SETTABLEKS                       R4 R3 K11 ["maximum"]
       77 GETUPVAL                         R4 4
       78 GETTABLEKS                       R4 R4 K12 ["minimum"]
       80 SETTABLEKS                       R4 R3 K12 ["minimum"]
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K13 ["step"]
       85 SETTABLEKS                       R4 R3 K13 ["step"]
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K14 ["hint"]
       90 SETTABLEKS                       R4 R3 K14 ["hint"]
       92 GETUPVAL                         R4 4
       93 GETTABLEKS                       R4 R4 K15 ["precision"]
       95 SETTABLEKS                       R4 R3 K15 ["precision"]
       97 GETUPVAL                         R5 4
       98 GETTABLEKS                       R5 R5 K16 ["leadingIcon"]
      100 GETUPVAL                         R6 0
      101 GETTABLEKS                       R6 R6 K25 ["None"]
      103 JUMPIFNOTEQ                      R5 R6 ; [+3]
      105 LOADNIL                          R4
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R4 4
      108 GETTABLEKS                       R4 R4 K16 ["leadingIcon"]
      110 SETTABLEKS                       R4 R3 K16 ["leadingIcon"]
      112 GETUPVAL                         R4 4
      113 GETTABLEKS                       R4 R4 K17 ["isScrubbable"]
      115 SETTABLEKS                       R4 R3 K17 ["isScrubbable"]
      117 CALL                             R1 2 -1
      118 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["find"]
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K2 ["callback"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 LOADN                            R4 0
       15 CALL                             R3 1 2
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R4
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["createElement"]
       21 GETUPVAL                         R7 3
       22 DUPTABLE                         R8 K6 [{"tag"}]
       23 LOADK                            R9 K7 ["row gap-medium auto-y size-full-0 align-y-center"]
       24 SETTABLEKS                       R9 R8 K5 ["tag"]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K8 ["map"]
       29 NEWTABLE                         R10 0 4
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R11 R11 K9 ["Large"]
       34 GETUPVAL                         R12 4
       35 GETTABLEKS                       R12 R12 K10 ["Medium"]
       37 GETUPVAL                         R13 4
       38 GETTABLEKS                       R13 R13 K11 ["Small"]
       40 GETUPVAL                         R14 4
       41 GETTABLEKS                       R14 R14 K12 ["XSmall"]
       43 SETLIST                          R10 R11 4 [1]
       45 NEWCLOSURE                       R11 P2
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CALL                             R9 2 -1
       56 CALL                             R6 -1 -1
       57 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controlsVariant"}]
        9 GETUPVAL                         R6 3
       10 SETTABLEKS                       R6 R5 K2 ["controlsVariant"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R1 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["NumberInputControlsVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["NumberInput"]
       53 CALL                             R8 1 1
       54 NEWTABLE                         R9 4 0
       56 GETTABLEKS                       R10 R4 K17 ["Large"]
       58 LOADN                            R11 25
       59 SETTABLE                         R11 R9 R10
       60 GETTABLEKS                       R10 R4 K18 ["Medium"]
       62 LOADN                            R11 0
       63 SETTABLE                         R11 R9 R10
       64 GETTABLEKS                       R10 R4 K19 ["Small"]
       66 LOADN                            R11 231
       67 SETTABLE                         R11 R9 R10
       68 GETTABLEKS                       R10 R4 K20 ["XSmall"]
       70 LOADN                            R11 206
       71 SETTABLE                         R11 R9 R10
       72 NEWTABLE                         R10 0 4
       74 DUPTABLE                         R11 K23 [{"name", "callback"}]
       75 LOADK                            R12 K24 ["pixels"]
       76 SETTABLEKS                       R12 R11 K21 ["name"]
       78 DUPCLOSURE                       R12 K25 [PROTO_0]
       79 SETTABLEKS                       R12 R11 K22 ["callback"]
       81 DUPTABLE                         R12 K23 [{"name", "callback"}]
       82 LOADK                            R13 K26 ["none"]
       83 SETTABLEKS                       R13 R12 K21 ["name"]
       85 LOADNIL                          R13
       86 SETTABLEKS                       R13 R12 K22 ["callback"]
       88 DUPTABLE                         R13 K23 [{"name", "callback"}]
       89 LOADK                            R14 K27 ["stringified"]
       90 SETTABLEKS                       R14 R13 K21 ["name"]
       92 DUPCLOSURE                       R14 K28 [PROTO_1]
       93 SETTABLEKS                       R14 R13 K22 ["callback"]
       95 DUPTABLE                         R14 K23 [{"name", "callback"}]
       96 LOADK                            R15 K29 ["currency"]
       97 SETTABLEKS                       R15 R14 K21 ["name"]
       99 DUPCLOSURE                       R15 K30 [PROTO_2]
      100 SETTABLEKS                       R15 R14 K22 ["callback"]
      102 SETLIST                          R10 R11 4 [1]
      104 DUPCLOSURE                       R11 K31 [PROTO_6]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R9
      113 DUPTABLE                         R12 K35 [{"summary", "stories", "controls"}]
      114 LOADK                            R13 K16 ["NumberInput"]
      115 SETTABLEKS                       R13 R12 K32 ["summary"]
      117 GETTABLEKS                       R13 R2 K36 ["map"]
      119 GETTABLEKS                       R14 R2 K37 ["values"]
      121 MOVE                             R15 R6
      122 CALL                             R14 1 1
      123 DUPCLOSURE                       R15 K38 [PROTO_8]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R2
      127 CALL                             R13 2 1
      128 SETTABLEKS                       R13 R12 K33 ["stories"]
      130 DUPTABLE                         R13 K54 [{"label", "hint", "isRequired", "formatAsString", "hasError", "isDisabled", "maximum", "minimum", "step", "precision", "width", "baseWidth", "controlsVariant", "isScrubbable", "leadingIcon"}]
      131 LOADK                            R14 K55 ["Label"]
      132 SETTABLEKS                       R14 R13 K39 ["label"]
      134 LOADK                            R14 K56 ["Number from -5 to 100"]
      135 SETTABLEKS                       R14 R13 K40 ["hint"]
      137 NEWTABLE                         R14 0 3
      139 GETTABLEKS                       R15 R3 K57 ["None"]
      141 LOADB                            R16 0
      142 LOADB                            R17 1
      143 SETLIST                          R14 R15 3 [1]
      145 SETTABLEKS                       R14 R13 K41 ["isRequired"]
      147 GETTABLEKS                       R14 R2 K37 ["values"]
      149 GETTABLEKS                       R15 R2 K36 ["map"]
      151 MOVE                             R16 R10
      152 DUPCLOSURE                       R17 K58 [PROTO_9]
      153 CALL                             R15 2 -1
      154 CALL                             R14 -1 1
      155 SETTABLEKS                       R14 R13 K42 ["formatAsString"]
      157 LOADB                            R14 0
      158 SETTABLEKS                       R14 R13 K43 ["hasError"]
      160 LOADB                            R14 0
      161 SETTABLEKS                       R14 R13 K44 ["isDisabled"]
      163 LOADN                            R14 100
      164 SETTABLEKS                       R14 R13 K45 ["maximum"]
      166 LOADN                            R14 251
      167 SETTABLEKS                       R14 R13 K46 ["minimum"]
      169 LOADK                            R14 K59 [0.2]
      170 SETTABLEKS                       R14 R13 K47 ["step"]
      172 LOADN                            R14 2
      173 SETTABLEKS                       R14 R13 K48 ["precision"]
      175 GETTABLEKS                       R15 R5 K60 ["FoundationNumberInputTokenBasedWidth"]
      177 JUMPIFNOT                        R15 ; [+2]
      178 LOADN                            R14 0
      179 JUMP                             ; [+1]
      180 LOADNIL                          R14
      181 SETTABLEKS                       R14 R13 K49 ["width"]
      183 GETTABLEKS                       R15 R5 K60 ["FoundationNumberInputTokenBasedWidth"]
      185 JUMPIFNOT                        R15 ; [+2]
      186 LOADNIL                          R14
      187 JUMP                             ; [+1]
      188 LOADN                            R14 200
      189 SETTABLEKS                       R14 R13 K50 ["baseWidth"]
      191 GETTABLEKS                       R14 R2 K37 ["values"]
      193 MOVE                             R15 R6
      194 CALL                             R14 1 1
      195 SETTABLEKS                       R14 R13 K51 ["controlsVariant"]
      197 LOADB                            R14 0
      198 SETTABLEKS                       R14 R13 K52 ["isScrubbable"]
      200 NEWTABLE                         R14 0 4
      202 LOADK                            R15 K61 ["icons/placeholder/placeholderOn_small"]
      203 LOADK                            R16 K62 ["icons/status/private_small"]
      204 LOADK                            R17 K63 ["icons/common/search_small"]
      205 GETTABLEKS                       R18 R3 K57 ["None"]
      207 SETLIST                          R14 R15 4 [1]
      209 SETTABLEKS                       R14 R13 K53 ["leadingIcon"]
      211 SETTABLEKS                       R13 R12 K34 ["controls"]
      213 RETURN                           R12 1
