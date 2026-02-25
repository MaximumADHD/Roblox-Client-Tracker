PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R2
        6 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["count"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
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
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K0 ["use"]
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R5 R0 K3 ["AssetIds"]
       22 LOADB                            R6 0
       23 JUMPIFEQKNIL                     R5 ; [+7]
       25 LENGTH                           R7 R5
       26 LOADN                            R8 0
       27 JUMPIFLT                         R8 R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K4 ["useState"]
       34 NEWTABLE                         R8 0 0
       36 CALL                             R7 1 2
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R3
       43 CALL                             R9 1 1
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R8
       51 CALL                             R10 1 1
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K6 ["createElement"]
       55 GETUPVAL                         R12 5
       56 DUPTABLE                         R13 K15 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
       57 SETTABLEKS                       R6 R13 K7 ["Enabled"]
       59 LOADB                            R14 1
       60 SETTABLEKS                       R14 R13 K8 ["Modal"]
       62 LOADB                            R14 0
       63 SETTABLEKS                       R14 R13 K9 ["Resizable"]
       65 LOADK                            R16 K16 ["QuickShare"]
       66 LOADK                            R17 K17 ["DialogTitle"]
       67 NAMECALL                         R14 R4 K18 ["getText"]
       69 CALL                             R14 3 1
       70 SETTABLEKS                       R14 R13 K10 ["Title"]
       72 GETIMPORT                        R14 K21 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R14 R13 K11 ["ZIndexBehavior"]
       76 GETUPVAL                         R15 6
       77 GETTABLEKS                       R14 R15 K22 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       79 SETTABLEKS                       R14 R13 K12 ["MinSize"]
       81 GETUPVAL                         R15 6
       82 GETTABLEKS                       R14 R15 K22 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       84 SETTABLEKS                       R14 R13 K13 ["Size"]
       86 SETTABLEKS                       R9 R13 K14 ["OnClose"]
       88 NEWTABLE                         R14 0 1
       90 GETUPVAL                         R16 1
       91 GETTABLEKS                       R15 R16 K6 ["createElement"]
       93 GETUPVAL                         R16 7
       94 DUPTABLE                         R17 K24 [{"theme"}]
       95 GETUPVAL                         R18 8
       96 CALL                             R18 0 1
       97 SETTABLEKS                       R18 R17 K23 ["theme"]
       99 GETUPVAL                         R19 1
      100 GETTABLEKS                       R18 R19 K6 ["createElement"]
      102 GETUPVAL                         R20 9
      103 GETTABLEKS                       R19 R20 K25 ["View"]
      105 DUPTABLE                         R20 K28 [{"tag", "ref"}]
      106 LOADK                            R21 K29 ["size-full"]
      107 SETTABLEKS                       R21 R20 K26 ["tag"]
      109 SETTABLEKS                       R2 R20 K27 ["ref"]
      111 GETUPVAL                         R22 1
      112 GETTABLEKS                       R21 R22 K6 ["createElement"]
      114 GETUPVAL                         R22 10
      115 DUPTABLE                         R23 K31 [{"gui"}]
      116 GETTABLEKS                       R24 R2 K32 ["current"]
      118 SETTABLEKS                       R24 R23 K30 ["gui"]
      120 DUPTABLE                         R24 K35 [{"Contents", "StyleLink"}]
      121 GETUPVAL                         R27 4
      122 GETTABLEKS                       R26 R27 K36 ["count"]
      124 MOVE                             R27 R7
      125 CALL                             R26 1 1
      126 JUMPIFNOTEQKN                    R26 K37 [0] ; [+12]
      128 GETUPVAL                         R26 1
      129 GETTABLEKS                       R25 R26 K6 ["createElement"]
      131 GETUPVAL                         R26 11
      132 DUPTABLE                         R27 K39 [{"AssetIds", "OnDone"}]
      133 SETTABLEKS                       R5 R27 K3 ["AssetIds"]
      135 SETTABLEKS                       R10 R27 K38 ["OnDone"]
      137 CALL                             R25 2 1
      138 JUMP                             ; [+10]
      139 GETUPVAL                         R26 1
      140 GETTABLEKS                       R25 R26 K6 ["createElement"]
      142 GETUPVAL                         R26 12
      143 DUPTABLE                         R27 K41 [{"Errors", "OnDone"}]
      144 SETTABLEKS                       R7 R27 K40 ["Errors"]
      146 SETTABLEKS                       R9 R27 K38 ["OnDone"]
      148 CALL                             R25 2 1
      149 SETTABLEKS                       R25 R24 K33 ["Contents"]
      151 GETUPVAL                         R26 1
      152 GETTABLEKS                       R25 R26 K6 ["createElement"]
      154 LOADK                            R26 K34 ["StyleLink"]
      155 DUPTABLE                         R27 K43 [{"StyleSheet"}]
      156 SETTABLEKS                       R1 R27 K42 ["StyleSheet"]
      158 CALL                             R25 2 1
      159 SETTABLEKS                       R25 R24 K34 ["StyleLink"]
      161 CALL                             R21 3 -1
      162 CALL                             R18 -1 -1
      163 CALL                             R15 -1 -1
      164 SETLIST                          R14 R15 -1 [1]
      166 CALL                             R11 3 -1
      167 RETURN                           R11 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["FoundationProvider"]
       37 GETTABLEKS                       R6 R4 K12 ["OverlayProvider"]
       39 GETTABLEKS                       R8 R3 K13 ["UI"]
       41 GETTABLEKS                       R7 R8 K14 ["Dialog"]
       43 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       45 GETTABLEKS                       R9 R8 K16 ["Localization"]
       47 GETTABLEKS                       R10 R8 K17 ["Design"]
       49 GETIMPORT                        R11 K5 [require]
       51 GETTABLEKS                       R14 R0 K18 ["Src"]
       53 GETTABLEKS                       R13 R14 K19 ["Util"]
       55 GETTABLEKS                       R12 R13 K20 ["getStudioTheme"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R15 R0 K18 ["Src"]
       62 GETTABLEKS                       R14 R15 K21 ["Resources"]
       64 GETTABLEKS                       R13 R14 K22 ["StyleConstants"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R16 R0 K18 ["Src"]
       71 GETTABLEKS                       R15 R16 K23 ["Controllers"]
       73 GETTABLEKS                       R14 R15 K24 ["PluginController"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETIMPORT                        R17 K1 [script]
       80 GETTABLEKS                       R16 R17 K25 ["View"]
       82 GETTABLEKS                       R15 R16 K26 ["MainView"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETIMPORT                        R18 K1 [script]
       89 GETTABLEKS                       R17 R18 K25 ["View"]
       91 GETTABLEKS                       R16 R17 K27 ["ErrorsView"]
       93 CALL                             R15 1 1
       94 DUPCLOSURE                       R16 K28 [PROTO_2]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 RETURN                           R16 1
