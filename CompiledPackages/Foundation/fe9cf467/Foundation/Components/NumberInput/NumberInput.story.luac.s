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
       41 GETIMPORT                        R4 K22 [UDim.new]
       43 LOADN                            R5 0
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K23 ["baseWidth"]
       47 GETUPVAL                         R9 6
       48 GETTABLE                         R8 R9 R0
       49 ADD                              R6 R7 R8
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R3 K10 ["width"]
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R4 R5 K11 ["maximum"]
       56 SETTABLEKS                       R4 R3 K11 ["maximum"]
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R4 R5 K12 ["minimum"]
       61 SETTABLEKS                       R4 R3 K12 ["minimum"]
       63 GETUPVAL                         R5 4
       64 GETTABLEKS                       R4 R5 K13 ["step"]
       66 SETTABLEKS                       R4 R3 K13 ["step"]
       68 GETUPVAL                         R5 4
       69 GETTABLEKS                       R4 R5 K14 ["hint"]
       71 SETTABLEKS                       R4 R3 K14 ["hint"]
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R4 R5 K15 ["precision"]
       76 SETTABLEKS                       R4 R3 K15 ["precision"]
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R5 R6 K16 ["leadingIcon"]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R6 R7 K24 ["None"]
       84 JUMPIFNOTEQ                      R5 R6 ; [+3]
       86 LOADNIL                          R4
       87 JUMP                             ; [+3]
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K16 ["leadingIcon"]
       91 SETTABLEKS                       R4 R3 K16 ["leadingIcon"]
       93 GETUPVAL                         R5 4
       94 GETTABLEKS                       R4 R5 K17 ["isScrubbable"]
       96 SETTABLEKS                       R4 R3 K17 ["isScrubbable"]
       98 CALL                             R1 2 -1
       99 RETURN                           R1 -1

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
       44 CALL                             R8 2 -1
       45 CALL                             R5 -1 -1
       46 RETURN                           R5 -1

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
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["NumberInputControlsVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["NumberInput"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 4 0
       49 GETTABLEKS                       R9 R4 K15 ["Large"]
       51 LOADN                            R10 25
       52 SETTABLE                         R10 R8 R9
       53 GETTABLEKS                       R9 R4 K16 ["Medium"]
       55 LOADN                            R10 0
       56 SETTABLE                         R10 R8 R9
       57 GETTABLEKS                       R9 R4 K17 ["Small"]
       59 LOADN                            R10 231
       60 SETTABLE                         R10 R8 R9
       61 GETTABLEKS                       R9 R4 K18 ["XSmall"]
       63 LOADN                            R10 206
       64 SETTABLE                         R10 R8 R9
       65 DUPCLOSURE                       R9 K19 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 DUPTABLE                         R10 K23 [{"summary", "stories", "controls"}]
       73 LOADK                            R11 K14 ["NumberInput"]
       74 SETTABLEKS                       R11 R10 K20 ["summary"]
       76 GETTABLEKS                       R11 R2 K24 ["map"]
       78 GETTABLEKS                       R12 R2 K25 ["values"]
       80 MOVE                             R13 R5
       81 CALL                             R12 1 1
       82 DUPCLOSURE                       R13 K26 [PROTO_5]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K21 ["stories"]
       89 DUPTABLE                         R11 K40 [{"label", "hint", "isRequired", "hasError", "isDisabled", "maximum", "minimum", "step", "precision", "baseWidth", "controlsVariant", "isScrubbable", "leadingIcon"}]
       90 LOADK                            R12 K41 ["Label"]
       91 SETTABLEKS                       R12 R11 K27 ["label"]
       93 LOADK                            R12 K42 ["Number from -5 to 100"]
       94 SETTABLEKS                       R12 R11 K28 ["hint"]
       96 NEWTABLE                         R12 0 3
       98 GETTABLEKS                       R13 R3 K43 ["None"]
      100 LOADB                            R14 0
      101 LOADB                            R15 1
      102 SETLIST                          R12 R13 3 [1]
      104 SETTABLEKS                       R12 R11 K29 ["isRequired"]
      106 LOADB                            R12 0
      107 SETTABLEKS                       R12 R11 K30 ["hasError"]
      109 LOADB                            R12 0
      110 SETTABLEKS                       R12 R11 K31 ["isDisabled"]
      112 LOADN                            R12 100
      113 SETTABLEKS                       R12 R11 K32 ["maximum"]
      115 LOADN                            R12 251
      116 SETTABLEKS                       R12 R11 K33 ["minimum"]
      118 LOADK                            R12 K44 [0.2]
      119 SETTABLEKS                       R12 R11 K34 ["step"]
      121 LOADN                            R12 2
      122 SETTABLEKS                       R12 R11 K35 ["precision"]
      124 LOADN                            R12 200
      125 SETTABLEKS                       R12 R11 K36 ["baseWidth"]
      127 GETTABLEKS                       R12 R2 K25 ["values"]
      129 MOVE                             R13 R5
      130 CALL                             R12 1 1
      131 SETTABLEKS                       R12 R11 K37 ["controlsVariant"]
      133 LOADB                            R12 0
      134 SETTABLEKS                       R12 R11 K38 ["isScrubbable"]
      136 NEWTABLE                         R12 0 4
      138 LOADK                            R13 K45 ["icons/placeholder/placeholderOn_small"]
      139 LOADK                            R14 K46 ["icons/status/private_small"]
      140 LOADK                            R15 K47 ["icons/common/search_small"]
      141 GETTABLEKS                       R16 R3 K43 ["None"]
      143 SETLIST                          R12 R13 4 [1]
      145 SETTABLEKS                       R12 R11 K39 ["leadingIcon"]
      147 SETTABLEKS                       R11 R10 K22 ["controls"]
      149 RETURN                           R10 1
