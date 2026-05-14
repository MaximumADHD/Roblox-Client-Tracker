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
        3 GETTABLEKS                       R1 R1 K1 ["onColumnFilterChange"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["BreakpointsColumnsEdited"]
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R0
       17 CALL                             R4 1 -1
       18 NAMECALL                         R1 R1 K4 ["report"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 6
        2 LOADK                            R2 K0 ["AllColumns"]
        3 SETTABLEN                        R2 R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["SourceLine"]
        7 SETTABLEN                        R2 R1 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Condition"]
       11 SETTABLEN                        R2 R1 3
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["LogMessage"]
       15 SETTABLEN                        R2 R1 4
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["ContinueExecution"]
       19 SETTABLEN                        R2 R1 5
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["RemoveOnHit"]
       23 SETTABLEN                        R2 R1 6
       24 SETTABLEKS                       R1 R0 K6 ["keyColumns"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 SETTABLEKS                       R1 R0 K7 ["clickCallback"]
       32 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K12 [{"KeyTexts", "ClickCallback", "KeyStates", "Localization", "Style", "Widget", "DropdownWidth", "HamburgerMenu", "ShouldShowDropdownIcon"}]
       11 GETTABLEKS                       R7 R0 K13 ["keyColumns"]
       13 SETTABLEKS                       R7 R6 K4 ["KeyTexts"]
       15 GETTABLEKS                       R7 R0 K14 ["clickCallback"]
       17 SETTABLEKS                       R7 R6 K5 ["ClickCallback"]
       19 GETTABLEKS                       R7 R1 K15 ["ColumnStates"]
       21 SETTABLEKS                       R7 R6 K6 ["KeyStates"]
       23 SETTABLEKS                       R3 R6 K2 ["Localization"]
       25 SETTABLEKS                       R2 R6 K7 ["Style"]
       27 LOADK                            R7 K16 ["BreakpointsWindow"]
       28 SETTABLEKS                       R7 R6 K8 ["Widget"]
       30 LOADN                            R7 200
       31 SETTABLEKS                       R7 R6 K9 ["DropdownWidth"]
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K10 ["HamburgerMenu"]
       36 LOADB                            R7 0
       37 SETTABLEKS                       R7 R6 K11 ["ShouldShowDropdownIcon"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Breakpoint"]
        2 GETTABLEKS                       R2 R2 K1 ["listOfEnabledColumns"]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["SourceLine"]
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
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["Condition"]
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
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K6 ["LogMessage"]
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
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K7 ["ContinueExecution"]
       57 GETIMPORT                        R6 K4 [pairs]
       59 MOVE                             R7 R2
       60 CALL                             R6 1 3
       61 FORGPREP_NEXT                    R6
       62 JUMPIFNOTEQ                      R10 R5 ; [+3]
       64 LOADB                            R4 1
       65 JUMP                             ; [+3]
       66 FORGLOOP                         R6 2 ; [-5]
       68 LOADB                            R4 0
       69 SETTABLEN                        R4 R3 5
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K8 ["RemoveOnHit"]
       73 GETIMPORT                        R6 K4 [pairs]
       75 MOVE                             R7 R2
       76 CALL                             R6 1 3
       77 FORGPREP_NEXT                    R6
       78 JUMPIFNOTEQ                      R10 R5 ; [+3]
       80 LOADB                            R4 1
       81 JUMP                             ; [+3]
       82 FORGLOOP                         R6 2 ; [-5]
       84 LOADB                            R4 0
       85 SETTABLEN                        R4 R3 6
       86 DUPTABLE                         R4 K10 [{"ColumnStates"}]
       87 SETTABLEKS                       R3 R4 K9 ["ColumnStates"]
       89 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"onColumnFilterChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onColumnFilterChange"]
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
       66 GETTABLEKS                       R11 R11 K21 ["Actions"]
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R13 R11 K22 ["BreakpointsWindow"]
       72 GETTABLEKS                       R13 R13 K23 ["BreakpointColumnFilter"]
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R0 K13 ["Src"]
       77 GETTABLEKS                       R13 R13 K24 ["Models"]
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R13 K25 ["BreakpointTableColumnEnum"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R0 K13 ["Src"]
       88 GETTABLEKS                       R16 R16 K26 ["Util"]
       90 GETTABLEKS                       R16 R16 K27 ["flatListToString"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R1 K28 ["PureComponent"]
       95 LOADK                            R18 K29 ["BreakpointsDropdownField"]
       96 NAMECALL                         R16 R16 K30 ["extend"]
       98 CALL                             R16 2 1
       99 DUPCLOSURE                       R17 K31 [PROTO_0]
      100 DUPCLOSURE                       R18 K32 [PROTO_2]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R15
      104 SETTABLEKS                       R18 R16 K33 ["init"]
      106 DUPCLOSURE                       R18 K34 [PROTO_3]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R18 R16 K35 ["render"]
      111 MOVE                             R18 R5
      112 DUPTABLE                         R19 K36 [{"Analytics", "Localization", "Stylizer"}]
      113 SETTABLEKS                       R7 R19 K12 ["Analytics"]
      115 SETTABLEKS                       R6 R19 K11 ["Localization"]
      117 SETTABLEKS                       R9 R19 K17 ["Stylizer"]
      119 CALL                             R18 1 1
      120 MOVE                             R19 R16
      121 CALL                             R18 1 1
      122 MOVE                             R16 R18
      123 GETTABLEKS                       R18 R2 K37 ["connect"]
      125 DUPCLOSURE                       R19 K38 [PROTO_4]
      126 CAPTURE                          VAL R14
      127 DUPCLOSURE                       R20 K39 [PROTO_6]
      128 CAPTURE                          VAL R12
      129 CALL                             R18 2 1
      130 MOVE                             R19 R16
      131 CALL                             R18 1 1
      132 MOVE                             R16 R18
      133 RETURN                           R16 1
