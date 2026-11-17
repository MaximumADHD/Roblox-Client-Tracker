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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["onScopeFilterChange"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["WatchScopeEdited"]
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
        4 LOADK                            R2 K1 ["Local"]
        5 SETTABLEN                        R2 R1 2
        6 LOADK                            R2 K2 ["Upvalue"]
        7 SETTABLEN                        R2 R1 3
        8 LOADK                            R2 K3 ["Global"]
        9 SETTABLEN                        R2 R1 4
       10 SETTABLEKS                       R1 R0 K4 ["keyColumns"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R1 R0 K5 ["clickCallback"]
       18 RETURN                           R0 0

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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["createElement"]
       31 GETUPVAL                         R6 1
       32 DUPTABLE                         R7 K23 [{["KeyTexts"], ["Tooltips"], ["NumDisplay"], ["MaxDisplay"] = 3, ["ClickCallback"], ["KeyStates"], ["Localization"], ["Style"], ["Widget"] = "Watch", ["DropdownWidth"] = 100, ["ShouldShowDropdownIcon"], ["Tooltip"], ["LayoutOrder"]}]
       33 GETTABLEKS                       R8 R0 K24 ["keyColumns"]
       35 SETTABLEKS                       R8 R7 K9 ["KeyTexts"]
       37 SETTABLEKS                       R4 R7 K10 ["Tooltips"]
       39 GETTABLEKS                       R8 R1 K25 ["NumEnabledChoices"]
       41 SETTABLEKS                       R8 R7 K11 ["NumDisplay"]
       43 GETTABLEKS                       R8 R0 K26 ["clickCallback"]
       45 SETTABLEKS                       R8 R7 K14 ["ClickCallback"]
       47 GETTABLEKS                       R8 R1 K15 ["KeyStates"]
       49 SETTABLEKS                       R8 R7 K15 ["KeyStates"]
       51 SETTABLEKS                       R3 R7 K2 ["Localization"]
       53 SETTABLEKS                       R2 R7 K16 ["Style"]
       55 GETTABLEKS                       R8 R1 K20 ["ShouldShowDropdownIcon"]
       57 SETTABLEKS                       R8 R7 K20 ["ShouldShowDropdownIcon"]
       59 LOADK                            R10 K3 ["Watch"]
       60 LOADK                            R11 K27 ["FilterScopes"]
       61 NAMECALL                         R8 R3 K5 ["getText"]
       63 CALL                             R8 3 1
       64 SETTABLEKS                       R8 R7 K21 ["Tooltip"]
       66 GETTABLEKS                       R8 R1 K22 ["LayoutOrder"]
       68 SETTABLEKS                       R8 R7 K22 ["LayoutOrder"]
       70 CALL                             R5 2 -1
       71 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Watch"]
        2 GETTABLEKS                       R2 R2 K1 ["listOfEnabledScopes"]
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R5 K3 [pairs]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 JUMPIFNOTEQKS                    R9 K4 ["Local"] ; [+3]
       13 LOADB                            R4 1
       14 JUMP                             ; [+3]
       15 FORGLOOP                         R5 2 ; [-5]
       17 LOADB                            R4 0
       18 SETTABLEN                        R4 R3 2
       19 GETIMPORT                        R5 K3 [pairs]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 3
       23 FORGPREP_NEXT                    R5
       24 JUMPIFNOTEQKS                    R9 K5 ["Upvalue"] ; [+3]
       26 LOADB                            R4 1
       27 JUMP                             ; [+3]
       28 FORGLOOP                         R5 2 ; [-5]
       30 LOADB                            R4 0
       31 SETTABLEN                        R4 R3 3
       32 GETIMPORT                        R5 K3 [pairs]
       34 MOVE                             R6 R2
       35 CALL                             R5 1 3
       36 FORGPREP_NEXT                    R5
       37 JUMPIFNOTEQKS                    R9 K6 ["Global"] ; [+3]
       39 LOADB                            R4 1
       40 JUMP                             ; [+3]
       41 FORGLOOP                         R5 2 ; [-5]
       43 LOADB                            R4 0
       44 SETTABLEN                        R4 R3 4
       45 DUPTABLE                         R4 K9 [{"NumEnabledChoices", "KeyStates"}]
       46 LENGTH                           R5 R2
       47 SETTABLEKS                       R5 R4 K7 ["NumEnabledChoices"]
       49 SETTABLEKS                       R3 R4 K8 ["KeyStates"]
       51 RETURN                           R4 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R6 R4 K11 ["Localization"]
       38 GETTABLEKS                       R7 R4 K12 ["Analytics"]
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Resources"]
       46 GETTABLEKS                       R9 R9 K15 ["AnalyticsEventNames"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R3 K16 ["Style"]
       51 GETTABLEKS                       R9 R9 K17 ["Stylizer"]
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K13 ["Src"]
       57 GETTABLEKS                       R11 R11 K18 ["Components"]
       59 GETTABLEKS                       R11 R11 K19 ["Common"]
       61 GETTABLEKS                       R11 R11 K20 ["DropdownField"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R11 K21 ["Thunks"]
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R13 R11 K22 ["Watch"]
       72 GETTABLEKS                       R13 R13 K23 ["FilterScopeWatchThunk"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R14 R0 K13 ["Src"]
       79 GETTABLEKS                       R14 R14 K24 ["Util"]
       81 GETTABLEKS                       R14 R14 K25 ["flatListToString"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R1 K26 ["PureComponent"]
       86 LOADK                            R16 K27 ["ScopeDropdownField"]
       87 NAMECALL                         R14 R14 K28 ["extend"]
       89 CALL                             R14 2 1
       90 DUPTABLE                         R15 K35 [{["LocalScope"] = "Local", ["UpvalueScope"] = "Upvalue", ["GlobalScope"] = "Global"}]
       91 DUPCLOSURE                       R16 K36 [PROTO_0]
       92 DUPCLOSURE                       R17 K37 [PROTO_2]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R13
       95 SETTABLEKS                       R17 R14 K38 ["init"]
       97 DUPCLOSURE                       R17 K39 [PROTO_3]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R17 R14 K40 ["render"]
      102 MOVE                             R17 R5
      103 DUPTABLE                         R18 K41 [{"Analytics", "Localization", "Stylizer"}]
      104 SETTABLEKS                       R7 R18 K12 ["Analytics"]
      106 SETTABLEKS                       R6 R18 K11 ["Localization"]
      108 SETTABLEKS                       R9 R18 K17 ["Stylizer"]
      110 CALL                             R17 1 1
      111 MOVE                             R18 R14
      112 CALL                             R17 1 1
      113 MOVE                             R14 R17
      114 GETTABLEKS                       R17 R2 K42 ["connect"]
      116 DUPCLOSURE                       R18 K43 [PROTO_4]
      117 DUPCLOSURE                       R19 K44 [PROTO_6]
      118 CAPTURE                          VAL R12
      119 CALL                             R17 2 1
      120 MOVE                             R18 R14
      121 CALL                             R17 1 1
      122 MOVE                             R14 R17
      123 RETURN                           R14 1
