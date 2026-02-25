PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["newValue"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["%*px"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K18 [{"value", "controlsVariant", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision", "leadingIcon", "isScrubbable"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["value"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["controlsVariant"]
       11 SETTABLEKS                       R4 R3 K2 ["controlsVariant"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R4 R5 K3 ["hasError"]
       16 SETTABLEKS                       R4 R3 K3 ["hasError"]
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R4 R5 K4 ["isDisabled"]
       21 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R4 R5 K5 ["isRequired"]
       26 SETTABLEKS                       R4 R3 K5 ["isRequired"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       31 DUPCLOSURE                       R4 K19 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K7 ["formatAsString"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R4 R5 K8 ["label"]
       37 SETTABLEKS                       R4 R3 K8 ["label"]
       39 SETTABLEKS                       R0 R3 K9 ["size"]
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R5 R6 K20 ["FoundationNumberInputTokenBasedWidth"]
       44 JUMPIFNOT                        R5 ; [+15]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R5 R6 K10 ["width"]
       48 JUMPIFNOTEQKN                    R5 K21 [0] ; [+3]
       50 LOADNIL                          R4
       51 JUMP                             ; [+18]
       52 GETIMPORT                        R4 K24 [UDim.new]
       54 LOADN                            R5 0
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R6 R7 K10 ["width"]
       58 CALL                             R4 2 1
       59 JUMP                             ; [+10]
       60 GETIMPORT                        R4 K24 [UDim.new]
       62 LOADN                            R5 0
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R7 R8 K25 ["baseWidth"]
       66 GETUPVAL                         R9 7
       67 GETTABLE                         R8 R9 R0
       68 ADD                              R6 R7 R8
       69 CALL                             R4 2 1
       70 SETTABLEKS                       R4 R3 K10 ["width"]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R4 R5 K11 ["maximum"]
       75 SETTABLEKS                       R4 R3 K11 ["maximum"]
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R4 R5 K12 ["minimum"]
       80 SETTABLEKS                       R4 R3 K12 ["minimum"]
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K13 ["step"]
       85 SETTABLEKS                       R4 R3 K13 ["step"]
       87 GETUPVAL                         R5 4
       88 GETTABLEKS                       R4 R5 K14 ["hint"]
       90 SETTABLEKS                       R4 R3 K14 ["hint"]
       92 GETUPVAL                         R5 4
       93 GETTABLEKS                       R4 R5 K15 ["precision"]
       95 SETTABLEKS                       R4 R3 K15 ["precision"]
       97 GETUPVAL                         R6 4
       98 GETTABLEKS                       R5 R6 K16 ["leadingIcon"]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R6 R7 K26 ["None"]
      103 JUMPIFNOTEQ                      R5 R6 ; [+3]
      105 LOADNIL                          R4
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R5 4
      108 GETTABLEKS                       R4 R5 K16 ["leadingIcon"]
      110 SETTABLEKS                       R4 R3 K16 ["leadingIcon"]
      112 GETUPVAL                         R5 4
      113 GETTABLEKS                       R4 R5 K17 ["isScrubbable"]
      115 SETTABLEKS                       R4 R3 K17 ["isScrubbable"]
      117 CALL                             R1 2 -1
      118 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K4 [{"tag"}]
       14 LOADK                            R8 K5 ["row gap-medium auto-y size-full-0 align-y-center"]
       15 SETTABLEKS                       R8 R7 K3 ["tag"]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K6 ["map"]
       20 NEWTABLE                         R9 0 4
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R10 R11 K7 ["Large"]
       25 GETUPVAL                         R12 3
       26 GETTABLEKS                       R11 R12 K8 ["Medium"]
       28 GETUPVAL                         R13 3
       29 GETTABLEKS                       R12 R13 K9 ["Small"]
       31 GETUPVAL                         R14 3
       32 GETTABLEKS                       R13 R14 K10 ["XSmall"]
       34 SETLIST                          R9 R10 4 [1]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CALL                             R8 2 -1
       46 CALL                             R5 -1 -1
       47 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"controlsVariant"}]
        9 GETUPVAL                         R6 3
       10 SETTABLEKS                       R6 R5 K2 ["controlsVariant"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["story"]
       10 RETURN                           R1 1

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
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R7 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["NumberInputControlsVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K14 ["Components"]
       44 GETTABLEKS                       R8 R9 K15 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R10 K16 ["NumberInput"]
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
       72 DUPCLOSURE                       R10 K21 [PROTO_3]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R9
       80 DUPTABLE                         R11 K25 [{"summary", "stories", "controls"}]
       81 LOADK                            R12 K16 ["NumberInput"]
       82 SETTABLEKS                       R12 R11 K22 ["summary"]
       84 GETTABLEKS                       R12 R2 K26 ["map"]
       86 GETTABLEKS                       R13 R2 K27 ["values"]
       88 MOVE                             R14 R6
       89 CALL                             R13 1 1
       90 DUPCLOSURE                       R14 K28 [PROTO_5]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R2
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K23 ["stories"]
       97 DUPTABLE                         R12 K43 [{"label", "hint", "isRequired", "hasError", "isDisabled", "maximum", "minimum", "step", "precision", "width", "baseWidth", "controlsVariant", "isScrubbable", "leadingIcon"}]
       98 LOADK                            R13 K44 ["Label"]
       99 SETTABLEKS                       R13 R12 K29 ["label"]
      101 LOADK                            R13 K45 ["Number from -5 to 100"]
      102 SETTABLEKS                       R13 R12 K30 ["hint"]
      104 NEWTABLE                         R13 0 3
      106 GETTABLEKS                       R14 R3 K46 ["None"]
      108 LOADB                            R15 0
      109 LOADB                            R16 1
      110 SETLIST                          R13 R14 3 [1]
      112 SETTABLEKS                       R13 R12 K31 ["isRequired"]
      114 LOADB                            R13 0
      115 SETTABLEKS                       R13 R12 K32 ["hasError"]
      117 LOADB                            R13 0
      118 SETTABLEKS                       R13 R12 K33 ["isDisabled"]
      120 LOADN                            R13 100
      121 SETTABLEKS                       R13 R12 K34 ["maximum"]
      123 LOADN                            R13 251
      124 SETTABLEKS                       R13 R12 K35 ["minimum"]
      126 LOADK                            R13 K47 [0.2]
      127 SETTABLEKS                       R13 R12 K36 ["step"]
      129 LOADN                            R13 2
      130 SETTABLEKS                       R13 R12 K37 ["precision"]
      132 GETTABLEKS                       R14 R5 K48 ["FoundationNumberInputTokenBasedWidth"]
      134 JUMPIFNOT                        R14 ; [+2]
      135 LOADN                            R13 0
      136 JUMP                             ; [+1]
      137 LOADNIL                          R13
      138 SETTABLEKS                       R13 R12 K38 ["width"]
      140 GETTABLEKS                       R14 R5 K48 ["FoundationNumberInputTokenBasedWidth"]
      142 JUMPIFNOT                        R14 ; [+2]
      143 LOADNIL                          R13
      144 JUMP                             ; [+1]
      145 LOADN                            R13 200
      146 SETTABLEKS                       R13 R12 K39 ["baseWidth"]
      148 GETTABLEKS                       R13 R2 K27 ["values"]
      150 MOVE                             R14 R6
      151 CALL                             R13 1 1
      152 SETTABLEKS                       R13 R12 K40 ["controlsVariant"]
      154 LOADB                            R13 0
      155 SETTABLEKS                       R13 R12 K41 ["isScrubbable"]
      157 NEWTABLE                         R13 0 4
      159 LOADK                            R14 K49 ["icons/placeholder/placeholderOn_small"]
      160 LOADK                            R15 K50 ["icons/status/private_small"]
      161 LOADK                            R16 K51 ["icons/common/search_small"]
      162 GETTABLEKS                       R17 R3 K46 ["None"]
      164 SETLIST                          R13 R14 4 [1]
      166 SETTABLEKS                       R13 R12 K42 ["leadingIcon"]
      168 SETTABLEKS                       R12 R11 K24 ["controls"]
      170 RETURN                           R11 1
