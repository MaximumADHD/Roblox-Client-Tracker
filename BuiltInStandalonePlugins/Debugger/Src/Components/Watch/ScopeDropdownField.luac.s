PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+3]
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-5]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["onScopeFilterChange"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["Analytics"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["WatchScopeEdited"]
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R0
       17 CALL                             R4 1 -1
       18 NAMECALL                         R1 R1 K4 ["report"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 4
        2 LOADK                            R2 K0 ["AllScopes"]
        3 SETTABLEN                        R2 R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["LocalScope"]
        7 SETTABLEN                        R2 R1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["UpvalueScope"]
       11 SETTABLEN                        R2 R1 3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["GlobalScope"]
       15 SETTABLEN                        R2 R1 4
       16 SETTABLEKS                       R1 R0 K4 ["keyColumns"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R1 R0 K5 ["clickCallback"]
       24 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 0 4
        8 LOADNIL                          R5
        9 SETTABLEN                        R5 R4 1
       10 LOADK                            R7 K3 ["Watch"]
       11 LOADK                            R8 K4 ["LocalTooltip"]
       12 NAMECALL                         R5 R3 K5 ["getText"]
       14 CALL                             R5 3 1
       15 SETTABLEN                        R5 R4 2
       16 LOADK                            R7 K3 ["Watch"]
       17 LOADK                            R8 K6 ["UpvalueTooltip"]
       18 NAMECALL                         R5 R3 K5 ["getText"]
       20 CALL                             R5 3 1
       21 SETTABLEN                        R5 R4 3
       22 LOADK                            R7 K3 ["Watch"]
       23 LOADK                            R8 K7 ["GlobalTooltip"]
       24 NAMECALL                         R5 R3 K5 ["getText"]
       26 CALL                             R5 3 1
       27 SETTABLEN                        R5 R4 4
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K8 ["createElement"]
       31 GETUPVAL                         R6 1
       32 DUPTABLE                         R7 K21 [{"KeyTexts", "Tooltips", "NumDisplay", "MaxDisplay", "ClickCallback", "KeyStates", "Localization", "Style", "Widget", "DropdownWidth", "ShouldShowDropdownIcon", "Tooltip", "LayoutOrder"}]
       33 GETTABLEKS                       R8 R0 K22 ["keyColumns"]
       35 SETTABLEKS                       R8 R7 K9 ["KeyTexts"]
       37 SETTABLEKS                       R4 R7 K10 ["Tooltips"]
       39 GETTABLEKS                       R8 R1 K23 ["NumEnabledChoices"]
       41 SETTABLEKS                       R8 R7 K11 ["NumDisplay"]
       43 LOADN                            R8 3
       44 SETTABLEKS                       R8 R7 K12 ["MaxDisplay"]
       46 GETTABLEKS                       R8 R0 K24 ["clickCallback"]
       48 SETTABLEKS                       R8 R7 K13 ["ClickCallback"]
       50 GETTABLEKS                       R8 R1 K14 ["KeyStates"]
       52 SETTABLEKS                       R8 R7 K14 ["KeyStates"]
       54 SETTABLEKS                       R3 R7 K2 ["Localization"]
       56 SETTABLEKS                       R2 R7 K15 ["Style"]
       58 LOADK                            R8 K3 ["Watch"]
       59 SETTABLEKS                       R8 R7 K16 ["Widget"]
       61 LOADN                            R8 100
       62 SETTABLEKS                       R8 R7 K17 ["DropdownWidth"]
       64 GETTABLEKS                       R8 R1 K18 ["ShouldShowDropdownIcon"]
       66 SETTABLEKS                       R8 R7 K18 ["ShouldShowDropdownIcon"]
       68 LOADK                            R10 K3 ["Watch"]
       69 LOADK                            R11 K25 ["FilterScopes"]
       70 NAMECALL                         R8 R3 K5 ["getText"]
       72 CALL                             R8 3 1
       73 SETTABLEKS                       R8 R7 K19 ["Tooltip"]
       75 GETTABLEKS                       R8 R1 K20 ["LayoutOrder"]
       77 SETTABLEKS                       R8 R7 K20 ["LayoutOrder"]
       79 CALL                             R5 2 -1
       80 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Watch"]
        2 GETTABLEKS                       R2 R3 K1 ["listOfEnabledScopes"]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K2 ["LocalScope"]
        9 GETIMPORT                        R6 K4 [pairs]
       11 MOVE                             R7 R2
       12 CALL                             R6 1 3
       13 FORGPREP_NEXT                    R6
       14 JUMPIFNOTEQ                      R10 R5 ; [+3]
       16 LOADB                            R4 1
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R6 2 ; [-5]
       20 LOADB                            R4 0
       21 SETTABLEN                        R4 R3 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K5 ["UpvalueScope"]
       25 GETIMPORT                        R6 K4 [pairs]
       27 MOVE                             R7 R2
       28 CALL                             R6 1 3
       29 FORGPREP_NEXT                    R6
       30 JUMPIFNOTEQ                      R10 R5 ; [+3]
       32 LOADB                            R4 1
       33 JUMP                             ; [+3]
       34 FORGLOOP                         R6 2 ; [-5]
       36 LOADB                            R4 0
       37 SETTABLEN                        R4 R3 3
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K6 ["GlobalScope"]
       41 GETIMPORT                        R6 K4 [pairs]
       43 MOVE                             R7 R2
       44 CALL                             R6 1 3
       45 FORGPREP_NEXT                    R6
       46 JUMPIFNOTEQ                      R10 R5 ; [+3]
       48 LOADB                            R4 1
       49 JUMP                             ; [+3]
       50 FORGLOOP                         R6 2 ; [-5]
       52 LOADB                            R4 0
       53 SETTABLEN                        R4 R3 4
       54 DUPTABLE                         R4 K9 [{"NumEnabledChoices", "KeyStates"}]
       55 LENGTH                           R5 R2
       56 SETTABLEKS                       R5 R4 K7 ["NumEnabledChoices"]
       58 SETTABLEKS                       R3 R4 K8 ["KeyStates"]
       60 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"onScopeFilterChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onScopeFilterChange"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R6 R4 K11 ["Localization"]
       38 GETTABLEKS                       R7 R4 K12 ["Analytics"]
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R11 R0 K13 ["Src"]
       44 GETTABLEKS                       R10 R11 K14 ["Resources"]
       46 GETTABLEKS                       R9 R10 K15 ["AnalyticsEventNames"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R10 R3 K16 ["Style"]
       51 GETTABLEKS                       R9 R10 K17 ["Stylizer"]
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R14 R0 K13 ["Src"]
       57 GETTABLEKS                       R13 R14 K18 ["Components"]
       59 GETTABLEKS                       R12 R13 K19 ["Common"]
       61 GETTABLEKS                       R11 R12 K20 ["DropdownField"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R12 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R12 K21 ["Thunks"]
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R14 R11 K22 ["Watch"]
       72 GETTABLEKS                       R13 R14 K23 ["FilterScopeWatchThunk"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R16 R0 K13 ["Src"]
       79 GETTABLEKS                       R15 R16 K24 ["Util"]
       81 GETTABLEKS                       R14 R15 K25 ["flatListToString"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R1 K26 ["PureComponent"]
       86 LOADK                            R16 K27 ["ScopeDropdownField"]
       87 NAMECALL                         R14 R14 K28 ["extend"]
       89 CALL                             R14 2 1
       90 DUPTABLE                         R15 K32 [{"LocalScope", "UpvalueScope", "GlobalScope"}]
       91 LOADK                            R16 K33 ["Local"]
       92 SETTABLEKS                       R16 R15 K29 ["LocalScope"]
       94 LOADK                            R16 K34 ["Upvalue"]
       95 SETTABLEKS                       R16 R15 K30 ["UpvalueScope"]
       97 LOADK                            R16 K35 ["Global"]
       98 SETTABLEKS                       R16 R15 K31 ["GlobalScope"]
      100 DUPCLOSURE                       R16 K36 [PROTO_0]
      101 DUPCLOSURE                       R17 K37 [PROTO_2]
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R17 R14 K38 ["init"]
      107 DUPCLOSURE                       R17 K39 [PROTO_3]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R17 R14 K40 ["render"]
      112 MOVE                             R17 R5
      113 DUPTABLE                         R18 K41 [{"Analytics", "Localization", "Stylizer"}]
      114 SETTABLEKS                       R7 R18 K12 ["Analytics"]
      116 SETTABLEKS                       R6 R18 K11 ["Localization"]
      118 SETTABLEKS                       R9 R18 K17 ["Stylizer"]
      120 CALL                             R17 1 1
      121 MOVE                             R18 R14
      122 CALL                             R17 1 1
      123 MOVE                             R14 R17
      124 GETTABLEKS                       R17 R2 K42 ["connect"]
      126 DUPCLOSURE                       R18 K43 [PROTO_4]
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R19 K44 [PROTO_6]
      129 CAPTURE                          VAL R12
      130 CALL                             R17 2 1
      131 MOVE                             R18 R14
      132 CALL                             R17 1 1
      133 MOVE                             R14 R17
      134 RETURN                           R14 1
