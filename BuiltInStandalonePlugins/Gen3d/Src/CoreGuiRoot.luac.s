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
        7 LOADK                            R5 K4 ["CoreGui"]
        8 NAMECALL                         R3 R3 K5 ["GetService"]
       10 CALL                             R3 2 1
       11 LOADK                            R5 K6 ["Gen3d"]
       12 NAMECALL                         R3 R3 K7 ["FindFirstChild"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+5]
       16 LOADK                            R6 K8 ["Gen3dGui"]
       17 NAMECALL                         R4 R3 K7 ["FindFirstChild"]
       19 CALL                             R4 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R1
       24 GETTABLEKS                       R7 R0 K9 ["EditSessionId"]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R8 0 1
       36 MOVE                             R9 R1
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 2
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K11 ["useRef"]
       43 LOADB                            R9 0
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R9 R5 K12 ["visible"]
       47 SETTABLEKS                       R9 R8 K13 ["current"]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R8
       56 NEWTABLE                         R11 0 1
       58 MOVE                             R12 R1
       59 SETLIST                          R11 R12 1 [1]
       61 CALL                             R9 2 1
       62 JUMPIF                           R4 ; [+2]
       63 LOADNIL                          R10
       64 RETURN                           R10 1
       65 GETTABLEKS                       R11 R5 K12 ["visible"]
       67 JUMPIFNOT                        R11 ; [+6]
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R10 R10 K14 ["createElement"]
       71 GETUPVAL                         R11 5
       72 CALL                             R10 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 GETUPVAL                         R11 6
       76 GETTABLEKS                       R11 R11 K15 ["provide"]
       78 NEWTABLE                         R12 0 5
       80 GETUPVAL                         R13 7
       81 GETTABLEKS                       R13 R13 K16 ["new"]
       83 MOVE                             R14 R1
       84 CALL                             R13 1 1
       85 GETUPVAL                         R14 8
       86 GETTABLEKS                       R14 R14 K16 ["new"]
       88 MOVE                             R15 R2
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 9
       91 GETTABLEKS                       R15 R15 K16 ["new"]
       93 MOVE                             R16 R6
       94 CALL                             R15 1 1
       95 GETUPVAL                         R16 10
       96 GETUPVAL                         R17 11
       97 GETTABLEKS                       R17 R17 K16 ["new"]
       99 MOVE                             R18 R4
      100 CALL                             R17 1 -1
      101 SETLIST                          R12 R13 -1 [1]
      103 DUPTABLE                         R13 K18 [{"FoundationProvider"}]
      104 GETUPVAL                         R14 1
      105 GETTABLEKS                       R14 R14 K14 ["createElement"]
      107 GETUPVAL                         R15 12
      108 DUPTABLE                         R16 K21 [{"onStyleSheetChange", "plugin"}]
      109 SETTABLEKS                       R7 R16 K19 ["onStyleSheetChange"]
      111 SETTABLEKS                       R1 R16 K20 ["plugin"]
      113 DUPTABLE                         R17 K23 [{"LocalizationProvider"}]
      114 GETUPVAL                         R18 1
      115 GETTABLEKS                       R18 R18 K14 ["createElement"]
      117 GETUPVAL                         R19 13
      118 GETTABLEKS                       R19 R19 K24 ["Provider"]
      120 DUPTABLE                         R20 K26 [{"localization"}]
      121 GETUPVAL                         R21 14
      122 SETTABLEKS                       R21 R20 K25 ["localization"]
      124 DUPTABLE                         R21 K28 [{"ViewModelProvider"}]
      125 GETUPVAL                         R22 1
      126 GETTABLEKS                       R22 R22 K14 ["createElement"]
      128 GETUPVAL                         R23 15
      129 GETTABLEKS                       R23 R23 K24 ["Provider"]
      131 DUPTABLE                         R24 K30 [{"value"}]
      132 GETTABLEKS                       R25 R5 K29 ["value"]
      134 SETTABLEKS                       R25 R24 K29 ["value"]
      136 DUPTABLE                         R25 K32 [{"ToggleProvider"}]
      137 GETUPVAL                         R26 1
      138 GETTABLEKS                       R26 R26 K14 ["createElement"]
      140 GETUPVAL                         R27 16
      141 GETTABLEKS                       R27 R27 K24 ["Provider"]
      143 DUPTABLE                         R28 K30 [{"value"}]
      144 SETTABLEKS                       R9 R28 K29 ["value"]
      146 DUPTABLE                         R29 K34 [{"Popover"}]
      147 SETTABLEKS                       R10 R29 K33 ["Popover"]
      149 CALL                             R26 3 1
      150 SETTABLEKS                       R26 R25 K31 ["ToggleProvider"]
      152 CALL                             R22 3 1
      153 SETTABLEKS                       R22 R21 K27 ["ViewModelProvider"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K22 ["LocalizationProvider"]
      158 CALL                             R14 3 1
      159 SETTABLEKS                       R14 R13 K17 ["FoundationProvider"]
      161 CALL                             R11 2 -1
      162 RETURN                           R11 -1

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
