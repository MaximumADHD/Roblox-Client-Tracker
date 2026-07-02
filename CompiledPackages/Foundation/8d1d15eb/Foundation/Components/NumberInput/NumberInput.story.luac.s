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
       22 DUPTABLE                         R8 K7 [{["tag"] = "row gap-medium auto-y size-full-0 align-y-center"}]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K8 ["map"]
       26 NEWTABLE                         R10 0 4
       28 GETUPVAL                         R11 4
       29 GETTABLEKS                       R11 R11 K9 ["Large"]
       31 GETUPVAL                         R12 4
       32 GETTABLEKS                       R12 R12 K10 ["Medium"]
       34 GETUPVAL                         R13 4
       35 GETTABLEKS                       R13 R13 K11 ["Small"]
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R14 R14 K12 ["XSmall"]
       40 SETLIST                          R10 R11 4 [1]
       42 NEWCLOSURE                       R11 P2
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CALL                             R9 2 -1
       53 CALL                             R6 -1 -1
       54 RETURN                           R6 -1

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
       66 LOADN                            R11 -25
       67 SETTABLE                         R11 R9 R10
       68 GETTABLEKS                       R10 R4 K20 ["XSmall"]
       70 LOADN                            R11 -50
       71 SETTABLE                         R11 R9 R10
       72 NEWTABLE                         R10 0 4
       74 DUPTABLE                         R11 K24 [{["name"] = "pixels", ["callback"]}]
       75 DUPCLOSURE                       R12 K25 [PROTO_0]
       76 SETTABLEKS                       R12 R11 K23 ["callback"]
       78 DUPTABLE                         R12 K28 [{["name"] = "none", ["callback"] = }]
       79 DUPTABLE                         R13 K30 [{["name"] = "stringified", ["callback"]}]
       80 DUPCLOSURE                       R14 K31 [PROTO_1]
       81 SETTABLEKS                       R14 R13 K23 ["callback"]
       83 DUPTABLE                         R14 K33 [{["name"] = "currency", ["callback"]}]
       84 DUPCLOSURE                       R15 K34 [PROTO_2]
       85 SETTABLEKS                       R15 R14 K23 ["callback"]
       87 SETLIST                          R10 R11 4 [1]
       89 DUPCLOSURE                       R11 K35 [PROTO_6]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R9
       98 DUPTABLE                         R12 K39 [{["summary"] = "NumberInput", ["stories"], ["controls"]}]
       99 GETTABLEKS                       R13 R2 K40 ["map"]
      101 GETTABLEKS                       R14 R2 K41 ["values"]
      103 MOVE                             R15 R6
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K42 [PROTO_8]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R2
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K37 ["stories"]
      112 DUPTABLE                         R13 K65 [{["label"] = "Label", ["hint"] = "Number from -5 to 100", ["isRequired"], ["formatAsString"], ["hasError"] = False, ["isDisabled"] = False, ["maximum"] = 100, ["minimum"] = -5, ["step"] = 0.2, ["precision"] = 2, ["width"], ["baseWidth"], ["controlsVariant"], ["isScrubbable"] = False, ["leadingIcon"]}]
      113 NEWTABLE                         R14 0 3
      115 GETTABLEKS                       R15 R3 K66 ["None"]
      117 LOADB                            R16 0
      118 LOADB                            R17 1
      119 SETLIST                          R14 R15 3 [1]
      121 SETTABLEKS                       R14 R13 K47 ["isRequired"]
      123 GETTABLEKS                       R14 R2 K41 ["values"]
      125 GETTABLEKS                       R15 R2 K40 ["map"]
      127 MOVE                             R16 R10
      128 DUPCLOSURE                       R17 K67 [PROTO_9]
      129 CALL                             R15 2 -1
      130 CALL                             R14 -1 1
      131 SETTABLEKS                       R14 R13 K48 ["formatAsString"]
      133 GETTABLEKS                       R15 R5 K68 ["FoundationNumberInputTokenBasedWidth"]
      135 JUMPIFNOT                        R15 ; [+2]
      136 LOADN                            R14 0
      137 JUMP                             ; [+1]
      138 LOADNIL                          R14
      139 SETTABLEKS                       R14 R13 K60 ["width"]
      141 GETTABLEKS                       R15 R5 K68 ["FoundationNumberInputTokenBasedWidth"]
      143 JUMPIFNOT                        R15 ; [+2]
      144 LOADNIL                          R14
      145 JUMP                             ; [+1]
      146 LOADN                            R14 200
      147 SETTABLEKS                       R14 R13 K61 ["baseWidth"]
      149 GETTABLEKS                       R14 R2 K41 ["values"]
      151 MOVE                             R15 R6
      152 CALL                             R14 1 1
      153 SETTABLEKS                       R14 R13 K62 ["controlsVariant"]
      155 NEWTABLE                         R14 0 4
      157 LOADK                            R15 K69 ["icons/placeholder/placeholderOn_small"]
      158 LOADK                            R16 K70 ["icons/status/private_small"]
      159 LOADK                            R17 K71 ["icons/common/search_small"]
      160 GETTABLEKS                       R18 R3 K66 ["None"]
      162 SETLIST                          R14 R15 4 [1]
      164 SETTABLEKS                       R14 R13 K64 ["leadingIcon"]
      166 SETTABLEKS                       R13 R12 K38 ["controls"]
      168 RETURN                           R12 1
