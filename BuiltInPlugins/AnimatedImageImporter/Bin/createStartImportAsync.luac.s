PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createRoot"]
        8 GETIMPORT                        R1 K3 [Instance.new]
       10 LOADK                            R2 K4 ["Folder"]
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R0 0
        4 JUMP                             ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createRoot"]
        8 GETIMPORT                        R2 K3 [Instance.new]
       10 LOADK                            R3 K4 ["Folder"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 SETUPVAL                         R1 0
       14 MOVE                             R0 R1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K5 ["ContextServices"]
       18 GETTABLEKS                       R2 R2 K6 ["provide"]
       20 NEWTABLE                         R3 0 2
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["ContextServices"]
       25 GETTABLEKS                       R4 R4 K7 ["Plugin"]
       27 GETTABLEKS                       R4 R4 K2 ["new"]
       29 GETUPVAL                         R5 3
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K5 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K8 ["Design"]
       36 GETTABLEKS                       R5 R5 K2 ["new"]
       38 GETIMPORT                        R6 K3 [Instance.new]
       40 LOADK                            R7 K9 ["StyleSheet"]
       41 CALL                             R6 1 -1
       42 CALL                             R5 -1 -1
       43 SETLIST                          R3 R4 -1 [1]
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K10 ["createElement"]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K11 ["ContextStack"]
       51 DUPTABLE                         R6 K13 [{"providers"}]
       52 NEWTABLE                         R7 0 2
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K10 ["createElement"]
       57 GETUPVAL                         R9 6
       58 GETTABLEKS                       R9 R9 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K15 ["FoundationProviderAdapter"]
       62 DUPTABLE                         R10 K17 [{"overlayGui"}]
       63 GETUPVAL                         R11 7
       64 GETIMPORT                        R12 K3 [Instance.new]
       66 LOADK                            R13 K18 ["ScreenGui"]
       67 CALL                             R12 1 -1
       68 CALL                             R11 -1 1
       69 SETTABLEKS                       R11 R10 K16 ["overlayGui"]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 4
       73 GETTABLEKS                       R9 R9 K10 ["createElement"]
       75 GETUPVAL                         R10 6
       76 GETTABLEKS                       R10 R10 K19 ["Contexts"]
       78 GETTABLEKS                       R10 R10 K20 ["Localization"]
       80 GETTABLEKS                       R10 R10 K21 ["Provider"]
       82 DUPTABLE                         R11 K23 [{"localization"}]
       83 GETUPVAL                         R12 6
       84 GETTABLEKS                       R12 R12 K19 ["Contexts"]
       86 GETTABLEKS                       R12 R12 K20 ["Localization"]
       88 GETTABLEKS                       R12 R12 K20 ["Localization"]
       90 GETTABLEKS                       R12 R12 K2 ["new"]
       92 DUPTABLE                         R13 K28 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimatedImageImporter"}]
       93 GETUPVAL                         R14 8
       94 GETTABLEKS                       R14 R14 K29 ["Src"]
       96 GETTABLEKS                       R14 R14 K30 ["Resources"]
       98 GETTABLEKS                       R14 R14 K20 ["Localization"]
      100 GETTABLEKS                       R14 R14 K31 ["SourceStrings"]
      102 SETTABLEKS                       R14 R13 K24 ["stringResourceTable"]
      104 GETUPVAL                         R14 8
      105 GETTABLEKS                       R14 R14 K29 ["Src"]
      107 GETTABLEKS                       R14 R14 K30 ["Resources"]
      109 GETTABLEKS                       R14 R14 K20 ["Localization"]
      111 GETTABLEKS                       R14 R14 K32 ["LocalizedStrings"]
      113 SETTABLEKS                       R14 R13 K25 ["translationResourceTable"]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K22 ["localization"]
      118 CALL                             R9 2 -1
      119 SETLIST                          R7 R8 -1 [1]
      121 SETTABLEKS                       R7 R6 K12 ["providers"]
      123 GETUPVAL                         R7 4
      124 GETTABLEKS                       R7 R7 K10 ["createElement"]
      126 GETUPVAL                         R8 9
      127 DUPTABLE                         R9 K35 [{"key", "initialScreen"}]
      128 GETIMPORT                        R11 K38 [os.clock]
      130 CALL                             R11 0 -1
      131 FASTCALL                         TOSTRING ; [+2]
      132 GETIMPORT                        R10 K40 [tostring]
      134 CALL                             R10 -1 1
      135 SETTABLEKS                       R10 R9 K33 ["key"]
      137 DUPTABLE                         R10 K43 [{["type"] = "fileDialog"}]
      138 SETTABLEKS                       R10 R9 K34 ["initialScreen"]
      140 CALL                             R7 2 -1
      141 CALL                             R4 -1 -1
      142 CALL                             R2 -1 -1
      143 NAMECALL                         R0 R0 K44 ["render"]
      145 CALL                             R0 -1 0
      146 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CLOSEUPVALS                      R0
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["App"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactRoblox"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Libraries"]
       57 GETTABLEKS                       R8 R8 K16 ["as"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R0 K17 ["Parent"]
       62 LOADK                            R12 K18 ["Plugin"]
       63 NAMECALL                         R10 R8 K19 ["IsA"]
       65 CALL                             R10 2 1
       66 FASTCALL2K                       ASSERT R10 K20 ; [+4]
       68 LOADK                            R11 K20 ["Main.Parent is not a Plugin"]
       69 GETIMPORT                        R9 K22 [assert]
       71 CALL                             R9 2 0
       72 DUPCLOSURE                       R9 K23 [PROTO_2]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 RETURN                           R9 1
