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
       17 CAPTURE                          VAL R0
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R3 K4 ["Create"]
       21 JUMPIF                           R5 ; [+4]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R7 R3 K5 ["Type"]
       25 GETTABLE                         R5 R6 R7
       26 MOVE                             R6 R5
       27 GETTABLEKS                       R7 R0 K6 ["Props"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K7 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K16 [{"Enabled", "Title", "Size", "MinSize", "Modal", "Resizable", "ZIndexBehavior", "OnClose"}]
       35 LOADB                            R10 1
       36 SETTABLEKS                       R10 R9 K8 ["Enabled"]
       38 GETTABLEKS                       R10 R3 K9 ["Title"]
       40 SETTABLEKS                       R10 R9 K9 ["Title"]
       42 GETTABLEKS                       R10 R3 K10 ["Size"]
       44 SETTABLEKS                       R10 R9 K10 ["Size"]
       46 GETTABLEKS                       R11 R3 K11 ["MinSize"]
       48 JUMPIFEQKNIL                     R11 ; [+4]
       50 GETTABLEKS                       R10 R3 K11 ["MinSize"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R10 R3 K10 ["Size"]
       55 SETTABLEKS                       R10 R9 K11 ["MinSize"]
       57 GETTABLEKS                       R11 R3 K12 ["Modal"]
       59 JUMPIFEQKNIL                     R11 ; [+4]
       61 GETTABLEKS                       R10 R3 K12 ["Modal"]
       63 JUMP                             ; [+1]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K12 ["Modal"]
       67 GETTABLEKS                       R11 R3 K13 ["Resizable"]
       69 JUMPIFEQKNIL                     R11 ; [+4]
       71 GETTABLEKS                       R10 R3 K13 ["Resizable"]
       73 JUMP                             ; [+1]
       74 LOADB                            R10 0
       75 SETTABLEKS                       R10 R9 K13 ["Resizable"]
       77 GETIMPORT                        R10 K19 [Enum.ZIndexBehavior.Sibling]
       79 SETTABLEKS                       R10 R9 K14 ["ZIndexBehavior"]
       81 SETTABLEKS                       R4 R9 K15 ["OnClose"]
       83 NEWTABLE                         R10 0 1
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R11 R12 K7 ["createElement"]
       88 GETUPVAL                         R12 4
       89 DUPTABLE                         R13 K21 [{"theme"}]
       90 GETUPVAL                         R14 5
       91 CALL                             R14 0 1
       92 SETTABLEKS                       R14 R13 K20 ["theme"]
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R14 R15 K7 ["createElement"]
       97 GETUPVAL                         R15 6
       98 DUPTABLE                         R16 K24 [{"tag", "ref"}]
       99 LOADK                            R17 K25 ["size-full"]
      100 SETTABLEKS                       R17 R16 K22 ["tag"]
      102 SETTABLEKS                       R1 R16 K23 ["ref"]
      104 GETUPVAL                         R18 0
      105 GETTABLEKS                       R17 R18 K7 ["createElement"]
      107 GETUPVAL                         R18 7
      108 DUPTABLE                         R19 K27 [{"gui"}]
      109 GETTABLEKS                       R20 R1 K28 ["current"]
      111 SETTABLEKS                       R20 R19 K26 ["gui"]
      113 DUPTABLE                         R20 K30 [{"Content"}]
      114 SETTABLEKS                       R6 R20 K29 ["Content"]
      116 CALL                             R17 3 -1
      117 CALL                             R14 -1 -1
      118 CALL                             R11 -1 -1
      119 SETLIST                          R10 R11 -1 [1]
      121 CALL                             R7 3 -1
      122 RETURN                           R7 -1

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
       42 GETTABLEKS                       R6 R2 K13 ["OverlayProvider"]
       44 GETTABLEKS                       R7 R2 K14 ["View"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R10 R0 K6 ["Packages"]
       50 GETTABLEKS                       R9 R10 K15 ["StudioFoundation"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R10 R8 K16 ["Components"]
       55 GETTABLEKS                       R9 R10 K17 ["FoundationProviderAdapter"]
       57 GETTABLEKS                       R11 R3 K18 ["UI"]
       59 GETTABLEKS                       R10 R11 K19 ["Dialog"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R14 R0 K11 ["Src"]
       65 GETTABLEKS                       R13 R14 K20 ["Controllers"]
       67 GETTABLEKS                       R12 R13 K21 ["PluginController"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R17 R0 K11 ["Src"]
       74 GETTABLEKS                       R16 R17 K16 ["Components"]
       76 GETTABLEKS                       R15 R16 K22 ["App"]
       78 GETTABLEKS                       R14 R15 K23 ["Dialogs"]
       80 GETTABLEKS                       R13 R14 K24 ["dialogTypes"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K11 ["Src"]
       87 GETTABLEKS                       R15 R16 K25 ["Util"]
       89 GETTABLEKS                       R14 R15 K26 ["getStudioTheme"]
       91 CALL                             R13 1 1
       92 DUPCLOSURE                       R14 K27 [PROTO_1]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R6
      101 DUPCLOSURE                       R15 K28 [PROTO_4]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R14
      105 RETURN                           R15 1
