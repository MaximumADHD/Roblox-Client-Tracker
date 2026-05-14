PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K1 ["closeDialog"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["use"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K2 ["Data"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 GETTABLEKS                       R5 R3 K3 ["Create"]
       16 JUMPIF                           R5 ; [+4]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R7 R3 K4 ["Type"]
       20 GETTABLE                         R5 R6 R7
       21 MOVE                             R6 R5
       22 GETTABLEKS                       R7 R0 K5 ["Props"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["createElement"]
       28 GETUPVAL                         R8 3
       29 DUPTABLE                         R9 K15 [{"Enabled", "Title", "Size", "MinSize", "Modal", "Resizable", "ZIndexBehavior", "OnClose"}]
       30 LOADB                            R10 1
       31 SETTABLEKS                       R10 R9 K7 ["Enabled"]
       33 GETTABLEKS                       R10 R3 K8 ["Title"]
       35 SETTABLEKS                       R10 R9 K8 ["Title"]
       37 GETTABLEKS                       R10 R3 K9 ["Size"]
       39 SETTABLEKS                       R10 R9 K9 ["Size"]
       41 GETTABLEKS                       R11 R3 K10 ["MinSize"]
       43 JUMPIFEQKNIL                     R11 ; [+4]
       45 GETTABLEKS                       R10 R3 K10 ["MinSize"]
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R10 R3 K9 ["Size"]
       50 SETTABLEKS                       R10 R9 K10 ["MinSize"]
       52 GETTABLEKS                       R11 R3 K11 ["Modal"]
       54 JUMPIFEQKNIL                     R11 ; [+4]
       56 GETTABLEKS                       R10 R3 K11 ["Modal"]
       58 JUMP                             ; [+1]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K11 ["Modal"]
       62 GETTABLEKS                       R11 R3 K12 ["Resizable"]
       64 JUMPIFEQKNIL                     R11 ; [+4]
       66 GETTABLEKS                       R10 R3 K12 ["Resizable"]
       68 JUMP                             ; [+1]
       69 LOADB                            R10 0
       70 SETTABLEKS                       R10 R9 K12 ["Resizable"]
       72 GETIMPORT                        R10 K18 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R10 R9 K13 ["ZIndexBehavior"]
       76 SETTABLEKS                       R4 R9 K14 ["OnClose"]
       78 NEWTABLE                         R10 0 1
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K6 ["createElement"]
       83 GETUPVAL                         R12 4
       84 GETTABLEKS                       R12 R12 K19 ["FoundationProvider"]
       86 DUPTABLE                         R13 K21 [{"theme"}]
       87 GETUPVAL                         R14 5
       88 CALL                             R14 0 1
       89 SETTABLEKS                       R14 R13 K20 ["theme"]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K6 ["createElement"]
       94 GETUPVAL                         R15 4
       95 GETTABLEKS                       R15 R15 K22 ["View"]
       97 DUPTABLE                         R16 K25 [{"tag", "ref"}]
       98 LOADK                            R17 K26 ["size-full"]
       99 SETTABLEKS                       R17 R16 K23 ["tag"]
      101 SETTABLEKS                       R1 R16 K24 ["ref"]
      103 GETUPVAL                         R17 0
      104 GETTABLEKS                       R17 R17 K6 ["createElement"]
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R18 R18 K27 ["OverlayProvider"]
      109 DUPTABLE                         R19 K29 [{"gui"}]
      110 GETTABLEKS                       R20 R1 K30 ["current"]
      112 SETTABLEKS                       R20 R19 K28 ["gui"]
      114 MOVE                             R20 R6
      115 CALL                             R17 3 -1
      116 CALL                             R14 -1 -1
      117 CALL                             R11 -1 -1
      118 SETLIST                          R10 R11 -1 [1]
      120 CALL                             R7 3 -1
      121 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Fragment"]
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["map"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["Active"]
       13 DUPCLOSURE                       R5 K4 [PROTO_2]
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K13 ["UI"]
       44 GETTABLEKS                       R6 R6 K14 ["Dialog"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K11 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Controllers"]
       52 GETTABLEKS                       R8 R8 K16 ["PluginController"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K11 ["Src"]
       59 GETTABLEKS                       R9 R9 K17 ["Components"]
       61 GETTABLEKS                       R9 R9 K18 ["App"]
       63 GETTABLEKS                       R9 R9 K19 ["Dialogs"]
       65 GETTABLEKS                       R9 R9 K20 ["dialogTypes"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K11 ["Src"]
       72 GETTABLEKS                       R10 R10 K21 ["Util"]
       74 GETTABLEKS                       R10 R10 K22 ["getStudioTheme"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K23 [PROTO_1]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 DUPCLOSURE                       R11 K24 [PROTO_4]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R10
       88 RETURN                           R11 1
