PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K1 ["closeDialog"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["use"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K2 ["Data"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R2
       17 GETUPVAL                         R7 2
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+6]
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R3
       23 SETLIST                          R6 R7 1 [1]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R5 R3 K4 ["Create"]
       30 JUMPIF                           R5 ; [+4]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R7 R3 K5 ["Type"]
       34 GETTABLE                         R5 R6 R7
       35 MOVE                             R6 R5
       36 GETTABLEKS                       R7 R0 K6 ["Props"]
       38 CALL                             R6 1 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K7 ["createElement"]
       42 GETUPVAL                         R8 4
       43 DUPTABLE                         R9 K16 [{"Enabled", "Title", "Size", "MinSize", "Modal", "Resizable", "ZIndexBehavior", "OnClose"}]
       44 LOADB                            R10 1
       45 SETTABLEKS                       R10 R9 K8 ["Enabled"]
       47 GETTABLEKS                       R10 R3 K9 ["Title"]
       49 SETTABLEKS                       R10 R9 K9 ["Title"]
       51 GETTABLEKS                       R10 R3 K10 ["Size"]
       53 SETTABLEKS                       R10 R9 K10 ["Size"]
       55 GETTABLEKS                       R11 R3 K11 ["MinSize"]
       57 JUMPIFEQKNIL                     R11 ; [+4]
       59 GETTABLEKS                       R10 R3 K11 ["MinSize"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R10 R3 K10 ["Size"]
       64 SETTABLEKS                       R10 R9 K11 ["MinSize"]
       66 GETTABLEKS                       R11 R3 K12 ["Modal"]
       68 JUMPIFEQKNIL                     R11 ; [+4]
       70 GETTABLEKS                       R10 R3 K12 ["Modal"]
       72 JUMP                             ; [+1]
       73 LOADB                            R10 1
       74 SETTABLEKS                       R10 R9 K12 ["Modal"]
       76 GETTABLEKS                       R11 R3 K13 ["Resizable"]
       78 JUMPIFEQKNIL                     R11 ; [+4]
       80 GETTABLEKS                       R10 R3 K13 ["Resizable"]
       82 JUMP                             ; [+1]
       83 LOADB                            R10 0
       84 SETTABLEKS                       R10 R9 K13 ["Resizable"]
       86 GETIMPORT                        R10 K19 [Enum.ZIndexBehavior.Sibling]
       88 SETTABLEKS                       R10 R9 K14 ["ZIndexBehavior"]
       90 SETTABLEKS                       R4 R9 K15 ["OnClose"]
       92 NEWTABLE                         R10 0 1
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R11 R12 K7 ["createElement"]
       97 GETUPVAL                         R13 5
       98 GETTABLEKS                       R12 R13 K20 ["FoundationProvider"]
      100 DUPTABLE                         R13 K22 [{"theme"}]
      101 GETUPVAL                         R14 6
      102 CALL                             R14 0 1
      103 SETTABLEKS                       R14 R13 K21 ["theme"]
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R14 R15 K7 ["createElement"]
      108 GETUPVAL                         R16 5
      109 GETTABLEKS                       R15 R16 K23 ["View"]
      111 DUPTABLE                         R16 K26 [{"tag", "ref"}]
      112 LOADK                            R17 K27 ["size-full"]
      113 SETTABLEKS                       R17 R16 K24 ["tag"]
      115 SETTABLEKS                       R1 R16 K25 ["ref"]
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R17 R18 K7 ["createElement"]
      120 GETUPVAL                         R19 5
      121 GETTABLEKS                       R18 R19 K28 ["OverlayProvider"]
      123 DUPTABLE                         R19 K30 [{"gui"}]
      124 GETTABLEKS                       R20 R1 K31 ["current"]
      126 SETTABLEKS                       R20 R19 K29 ["gui"]
      128 MOVE                             R20 R6
      129 CALL                             R17 3 -1
      130 CALL                             R14 -1 -1
      131 CALL                             R11 -1 -1
      132 SETLIST                          R10 R11 -1 [1]
      134 CALL                             R7 3 -1
      135 RETURN                           R7 -1

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
       42 GETTABLEKS                       R7 R3 K13 ["UI"]
       44 GETTABLEKS                       R6 R7 K14 ["Dialog"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K11 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Controllers"]
       52 GETTABLEKS                       R8 R9 K16 ["PluginController"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R13 R0 K11 ["Src"]
       59 GETTABLEKS                       R12 R13 K17 ["Components"]
       61 GETTABLEKS                       R11 R12 K18 ["App"]
       63 GETTABLEKS                       R10 R11 K19 ["Dialogs"]
       65 GETTABLEKS                       R9 R10 K20 ["dialogTypes"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K11 ["Src"]
       72 GETTABLEKS                       R11 R12 K21 ["Util"]
       74 GETTABLEKS                       R10 R11 K22 ["getStudioTheme"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Src"]
       81 GETTABLEKS                       R12 R13 K23 ["Flags"]
       83 GETTABLEKS                       R11 R12 K24 ["getFFlagAmrMiscCallbackFixes"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K25 [PROTO_1]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R9
       94 DUPCLOSURE                       R12 K26 [PROTO_4]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R11
       98 RETURN                           R12 1
