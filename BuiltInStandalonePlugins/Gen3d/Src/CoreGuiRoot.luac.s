PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 2
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R0
       13 SETLIST                          R6 R7 1 [1]
       15 CALL                             R2 4 1
       16 MOVE                             R3 R1
       17 RETURN                           R2 2

PROTO_1:
        0 JUMPIF                           R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["View"]
        4 GETTABLEKS                       R1 R1 K1 ["sendIntent"]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["Intents"]
       10 GETTABLEKS                       R3 R3 K3 ["Close"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"setEnabled", "isEnabled"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["setEnabled"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R1 R0 K1 ["isEnabled"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R2 R1 K1 ["GetMouse"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [game]
        7 GETTABLEKS                       R3 R3 K4 ["CoreGui"]
        9 LOADK                            R5 K5 ["Gen3d"]
       10 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 LOADK                            R6 K7 ["Gen3dGui"]
       15 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       17 CALL                             R4 2 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 0
       21 MOVE                             R6 R1
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R8 0 1
       32 MOVE                             R9 R1
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 2
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K9 ["useRef"]
       39 LOADB                            R9 0
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R9 R5 K10 ["visible"]
       43 SETTABLEKS                       R9 R8 K11 ["current"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R1
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 JUMPIF                           R4 ; [+2]
       59 LOADNIL                          R10
       60 RETURN                           R10 1
       61 GETTABLEKS                       R11 R5 K10 ["visible"]
       63 JUMPIFNOT                        R11 ; [+6]
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R10 R10 K12 ["createElement"]
       67 GETUPVAL                         R11 5
       68 CALL                             R10 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R10
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R11 R11 K13 ["provide"]
       74 NEWTABLE                         R12 0 5
       76 GETUPVAL                         R13 7
       77 GETTABLEKS                       R13 R13 K14 ["new"]
       79 MOVE                             R14 R1
       80 CALL                             R13 1 1
       81 GETUPVAL                         R14 8
       82 GETTABLEKS                       R14 R14 K14 ["new"]
       84 MOVE                             R15 R2
       85 CALL                             R14 1 1
       86 GETUPVAL                         R15 9
       87 GETTABLEKS                       R15 R15 K14 ["new"]
       89 MOVE                             R16 R6
       90 CALL                             R15 1 1
       91 GETUPVAL                         R16 10
       92 GETUPVAL                         R17 11
       93 GETTABLEKS                       R17 R17 K14 ["new"]
       95 MOVE                             R18 R4
       96 CALL                             R17 1 -1
       97 SETLIST                          R12 R13 -1 [1]
       99 DUPTABLE                         R13 K16 [{"FoundationProvider"}]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R14 R14 K12 ["createElement"]
      103 GETUPVAL                         R15 12
      104 DUPTABLE                         R16 K19 [{"onStyleSheetChange", "plugin"}]
      105 SETTABLEKS                       R7 R16 K17 ["onStyleSheetChange"]
      107 SETTABLEKS                       R1 R16 K18 ["plugin"]
      109 DUPTABLE                         R17 K21 [{"LocalizationProvider"}]
      110 GETUPVAL                         R18 1
      111 GETTABLEKS                       R18 R18 K12 ["createElement"]
      113 GETUPVAL                         R19 13
      114 GETTABLEKS                       R19 R19 K22 ["Provider"]
      116 DUPTABLE                         R20 K24 [{"localization"}]
      117 GETUPVAL                         R21 14
      118 SETTABLEKS                       R21 R20 K23 ["localization"]
      120 DUPTABLE                         R21 K26 [{"ViewModelProvider"}]
      121 GETUPVAL                         R22 1
      122 GETTABLEKS                       R22 R22 K12 ["createElement"]
      124 GETUPVAL                         R23 15
      125 GETTABLEKS                       R23 R23 K22 ["Provider"]
      127 DUPTABLE                         R24 K28 [{"value"}]
      128 GETTABLEKS                       R25 R5 K27 ["value"]
      130 SETTABLEKS                       R25 R24 K27 ["value"]
      132 DUPTABLE                         R25 K30 [{"ToggleProvider"}]
      133 GETUPVAL                         R26 1
      134 GETTABLEKS                       R26 R26 K12 ["createElement"]
      136 GETUPVAL                         R27 16
      137 GETTABLEKS                       R27 R27 K22 ["Provider"]
      139 DUPTABLE                         R28 K28 [{"value"}]
      140 SETTABLEKS                       R9 R28 K27 ["value"]
      142 DUPTABLE                         R29 K32 [{"Popover"}]
      143 SETTABLEKS                       R10 R29 K31 ["Popover"]
      145 CALL                             R26 3 1
      146 SETTABLEKS                       R26 R25 K29 ["ToggleProvider"]
      148 CALL                             R22 3 1
      149 SETTABLEKS                       R22 R21 K25 ["ViewModelProvider"]
      151 CALL                             R18 3 1
      152 SETTABLEKS                       R18 R17 K20 ["LocalizationProvider"]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K15 ["FoundationProvider"]
      157 CALL                             R11 2 -1
      158 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       40 GETTABLEKS                       R8 R6 K16 ["Mouse"]
       42 GETTABLEKS                       R9 R6 K17 ["Design"]
       44 GETTABLEKS                       R10 R6 K18 ["Focus"]
       46 GETTABLEKS                       R11 R2 K19 ["Styling"]
       48 GETTABLEKS                       R11 R11 K20 ["registerPluginStyles"]
       50 GETTABLEKS                       R12 R0 K21 ["Src"]
       52 GETTABLEKS                       R12 R12 K22 ["Resources"]
       54 GETTABLEKS                       R12 R12 K13 ["Localization"]
       56 GETTABLEKS                       R12 R12 K23 ["SourceStrings"]
       58 GETTABLEKS                       R13 R0 K21 ["Src"]
       60 GETTABLEKS                       R13 R13 K22 ["Resources"]
       62 GETTABLEKS                       R13 R13 K13 ["Localization"]
       64 GETTABLEKS                       R13 R13 K24 ["LocalizedStrings"]
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K21 ["Src"]
       70 GETTABLEKS                       R15 R15 K12 ["Contexts"]
       72 GETTABLEKS                       R15 R15 K25 ["GenViewModelContext"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R0 K21 ["Src"]
       79 GETTABLEKS                       R16 R16 K12 ["Contexts"]
       81 GETTABLEKS                       R16 R16 K26 ["PluginToggleContext"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R17 R0 K21 ["Src"]
       88 GETTABLEKS                       R17 R17 K27 ["Util"]
       90 GETTABLEKS                       R17 R17 K28 ["CrossDMViewModel"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R0 K21 ["Src"]
       97 GETTABLEKS                       R18 R18 K29 ["Hooks"]
       99 GETTABLEKS                       R18 R18 K30 ["useViewModel"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R19 R0 K21 ["Src"]
      106 GETTABLEKS                       R19 R19 K31 ["CoreGuiComponents"]
      108 GETTABLEKS                       R19 R19 K32 ["GenerationPopover"]
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R19 R6 K13 ["Localization"]
      113 GETTABLEKS                       R19 R19 K33 ["new"]
      115 DUPTABLE                         R20 K37 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
      116 SETTABLEKS                       R12 R20 K34 ["stringResourceTable"]
      118 SETTABLEKS                       R13 R20 K35 ["translationResourceTable"]
      120 CALL                             R19 1 1
      121 GETTABLEKS                       R20 R5 K13 ["Localization"]
      123 GETTABLEKS                       R20 R20 K33 ["new"]
      125 DUPTABLE                         R21 K37 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
      126 SETTABLEKS                       R12 R21 K34 ["stringResourceTable"]
      128 SETTABLEKS                       R13 R21 K35 ["translationResourceTable"]
      130 CALL                             R20 1 1
      131 DUPCLOSURE                       R21 K38 [PROTO_4]
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R15
      149 RETURN                           R21 1
