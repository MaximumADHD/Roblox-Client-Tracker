PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["Name"]
       13 NAMECALL                         R0 R0 K2 ["closeDialog"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETTABLEKS                       R4 R0 K3 ["Data"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R4 K5 ["Create"]
       28 JUMPIF                           R6 ; [+4]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R8 R4 K6 ["Type"]
       32 GETTABLE                         R6 R7 R8
       33 MOVE                             R7 R6
       34 GETTABLEKS                       R8 R0 K7 ["Props"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 4
       38 CALL                             R8 0 1
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K8 ["createElement"]
       42 GETUPVAL                         R10 5
       43 DUPTABLE                         R11 K17 [{"Enabled", "Title", "Size", "MinSize", "Modal", "Resizable", "ZIndexBehavior", "OnClose"}]
       44 LOADB                            R12 1
       45 SETTABLEKS                       R12 R11 K9 ["Enabled"]
       47 GETTABLEKS                       R12 R4 K10 ["Title"]
       49 SETTABLEKS                       R12 R11 K10 ["Title"]
       51 GETTABLEKS                       R12 R4 K11 ["Size"]
       53 SETTABLEKS                       R12 R11 K11 ["Size"]
       55 GETTABLEKS                       R13 R4 K12 ["MinSize"]
       57 JUMPIFEQKNIL                     R13 ; [+4]
       59 GETTABLEKS                       R12 R4 K12 ["MinSize"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R12 R4 K11 ["Size"]
       64 SETTABLEKS                       R12 R11 K12 ["MinSize"]
       66 GETTABLEKS                       R13 R4 K13 ["Modal"]
       68 JUMPIFEQKNIL                     R13 ; [+4]
       70 GETTABLEKS                       R12 R4 K13 ["Modal"]
       72 JUMP                             ; [+1]
       73 LOADB                            R12 1
       74 SETTABLEKS                       R12 R11 K13 ["Modal"]
       76 GETTABLEKS                       R13 R4 K14 ["Resizable"]
       78 JUMPIFEQKNIL                     R13 ; [+4]
       80 GETTABLEKS                       R12 R4 K14 ["Resizable"]
       82 JUMP                             ; [+1]
       83 LOADB                            R12 0
       84 SETTABLEKS                       R12 R11 K14 ["Resizable"]
       86 GETIMPORT                        R12 K20 [Enum.ZIndexBehavior.Sibling]
       88 SETTABLEKS                       R12 R11 K15 ["ZIndexBehavior"]
       90 SETTABLEKS                       R5 R11 K16 ["OnClose"]
       92 NEWTABLE                         R12 0 1
       94 GETUPVAL                         R14 1
       95 GETTABLEKS                       R13 R14 K8 ["createElement"]
       97 JUMPIFNOT                        R8 ; [+2]
       98 GETUPVAL                         R14 6
       99 JUMP                             ; [+1]
      100 GETUPVAL                         R14 7
      101 DUPTABLE                         R15 K22 [{"theme"}]
      102 GETUPVAL                         R16 8
      103 CALL                             R16 0 1
      104 SETTABLEKS                       R16 R15 K21 ["theme"]
      106 GETUPVAL                         R17 1
      107 GETTABLEKS                       R16 R17 K8 ["createElement"]
      109 GETUPVAL                         R17 9
      110 DUPTABLE                         R18 K25 [{"tag", "ref"}]
      111 LOADK                            R19 K26 ["size-full"]
      112 SETTABLEKS                       R19 R18 K23 ["tag"]
      114 SETTABLEKS                       R2 R18 K24 ["ref"]
      116 GETUPVAL                         R20 1
      117 GETTABLEKS                       R19 R20 K8 ["createElement"]
      119 GETUPVAL                         R20 10
      120 DUPTABLE                         R21 K28 [{"gui"}]
      121 GETTABLEKS                       R22 R2 K29 ["current"]
      123 SETTABLEKS                       R22 R21 K27 ["gui"]
      125 DUPTABLE                         R22 K32 [{"Content", "StyleLink"}]
      126 SETTABLEKS                       R7 R22 K30 ["Content"]
      128 JUMPIF                           R8 ; [+9]
      129 GETUPVAL                         R24 1
      130 GETTABLEKS                       R23 R24 K8 ["createElement"]
      132 LOADK                            R24 K31 ["StyleLink"]
      133 DUPTABLE                         R25 K34 [{"StyleSheet"}]
      134 SETTABLEKS                       R1 R25 K33 ["StyleSheet"]
      136 CALL                             R23 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R23
      139 SETTABLEKS                       R23 R22 K31 ["StyleLink"]
      141 CALL                             R19 3 -1
      142 CALL                             R16 -1 -1
      143 CALL                             R13 -1 -1
      144 SETLIST                          R12 R13 -1 [1]
      146 CALL                             R9 3 -1
      147 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Fragment"]
        6 LOADNIL                          R2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["map"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K3 ["Active"]
       13 DUPCLOSURE                       R5 K4 [PROTO_2]
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 1
       10 GETTABLEKS                       R4 R0 K1 ["Active"]
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R7 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K13 ["FoundationProvider"]
       44 GETTABLEKS                       R7 R2 K14 ["OverlayProvider"]
       46 GETTABLEKS                       R8 R2 K15 ["View"]
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R11 R0 K6 ["Packages"]
       52 GETTABLEKS                       R10 R11 K16 ["StudioFoundation"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R11 R9 K17 ["Components"]
       57 GETTABLEKS                       R10 R11 K18 ["FoundationProviderAdapter"]
       59 GETTABLEKS                       R12 R3 K19 ["UI"]
       61 GETTABLEKS                       R11 R12 K20 ["Dialog"]
       63 GETTABLEKS                       R12 R3 K21 ["ContextServices"]
       65 GETTABLEKS                       R13 R12 K22 ["Design"]
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R17 R0 K11 ["Src"]
       71 GETTABLEKS                       R16 R17 K23 ["Controllers"]
       73 GETTABLEKS                       R15 R16 K24 ["PluginController"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R20 R0 K11 ["Src"]
       80 GETTABLEKS                       R19 R20 K17 ["Components"]
       82 GETTABLEKS                       R18 R19 K25 ["App"]
       84 GETTABLEKS                       R17 R18 K26 ["Dialogs"]
       86 GETTABLEKS                       R16 R17 K27 ["dialogTypes"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R19 R0 K11 ["Src"]
       93 GETTABLEKS                       R18 R19 K28 ["Util"]
       95 GETTABLEKS                       R17 R18 K29 ["getStudioTheme"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R20 R0 K11 ["Src"]
      102 GETTABLEKS                       R19 R20 K30 ["Flags"]
      104 GETTABLEKS                       R18 R19 K31 ["getFFlagFoundationDisableStylingPolyfill"]
      106 CALL                             R17 1 1
      107 DUPCLOSURE                       R18 K32 [PROTO_1]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R7
      119 DUPCLOSURE                       R19 K33 [PROTO_4]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R18
      123 RETURN                           R19 1
