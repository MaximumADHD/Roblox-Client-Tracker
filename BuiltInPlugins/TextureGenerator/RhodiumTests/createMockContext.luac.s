PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["PopupImagePickerController"] ; [+12]
        2 DUPTABLE                         R2 K3 [{"OpenPopupAsync", "ImageSelected"}]
        3 DUPCLOSURE                       R3 K4 [PROTO_0]
        4 SETTABLEKS                       R3 R2 K1 ["OpenPopupAsync"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K5 ["new"]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K2 ["ImageSelected"]
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["new"]
       18 CALL                             R2 0 1
       19 GETTABLEKS                       R3 R2 K7 ["GetPluginComponent"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R2 K7 ["GetPluginComponent"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K6 ["new"]
       30 CALL                             R4 0 1
       31 NEWTABLE                         R5 0 5
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K8 ["Plugin"]
       36 GETTABLEKS                       R6 R7 K6 ["new"]
       38 MOVE                             R7 R2
       39 CALL                             R6 1 1
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R8 R9 K9 ["Analytics"]
       43 GETTABLEKS                       R7 R8 K10 ["mock"]
       45 CALL                             R7 0 1
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R9 R10 K11 ["Localization"]
       49 GETTABLEKS                       R8 R9 K10 ["mock"]
       51 CALL                             R8 0 1
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R9 R10 K6 ["new"]
       55 MOVE                             R10 R4
       56 CALL                             R9 1 1
       57 GETUPVAL                         R10 5
       58 LOADB                            R11 1
       59 CALL                             R10 1 -1
       60 SETLIST                          R5 R6 -1 [1]
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R6 R7 K12 ["append"]
       65 NEWTABLE                         R7 0 5
       67 GETUPVAL                         R9 7
       68 GETTABLEKS                       R8 R9 K13 ["createElement"]
       70 GETUPVAL                         R9 8
       71 CALL                             R8 1 1
       72 GETUPVAL                         R10 7
       73 GETTABLEKS                       R9 R10 K13 ["createElement"]
       75 GETUPVAL                         R10 9
       76 CALL                             R9 1 1
       77 GETUPVAL                         R11 7
       78 GETTABLEKS                       R10 R11 K13 ["createElement"]
       80 GETUPVAL                         R11 10
       81 CALL                             R10 1 1
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R11 R12 K13 ["createElement"]
       85 GETUPVAL                         R12 11
       86 CALL                             R11 1 1
       87 GETUPVAL                         R13 7
       88 GETTABLEKS                       R12 R13 K13 ["createElement"]
       90 GETUPVAL                         R13 12
       91 CALL                             R12 1 -1
       92 SETLIST                          R7 R8 -1 [1]
       94 MOVE                             R8 R1
       95 JUMPIF                           R8 ; [+2]
       96 NEWTABLE                         R8 0 0
       98 CALL                             R6 2 1
       99 GETUPVAL                         R8 13
      100 GETTABLEKS                       R7 R8 K14 ["provideMockContext"]
      102 MOVE                             R8 R5
      103 DUPTABLE                         R9 K16 [{"ContextStack"}]
      104 GETUPVAL                         R11 7
      105 GETTABLEKS                       R10 R11 K13 ["createElement"]
      107 GETUPVAL                         R11 14
      108 DUPTABLE                         R12 K18 [{"providers"}]
      109 SETTABLEKS                       R6 R12 K17 ["providers"]
      111 MOVE                             R13 R0
      112 CALL                             R10 3 1
      113 SETTABLEKS                       R10 R9 K15 ["ContextStack"]
      115 CALL                             R7 2 -1
      116 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["Signal"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["ContextStack"]
       44 GETTABLEKS                       R7 R2 K13 ["ContextServices"]
       46 GETTABLEKS                       R8 R2 K14 ["TestHelpers"]
       48 GETTABLEKS                       R10 R8 K15 ["Instances"]
       50 GETTABLEKS                       R9 R10 K16 ["MockPlugin"]
       52 GETTABLEKS                       R11 R8 K15 ["Instances"]
       54 GETTABLEKS                       R10 R11 K17 ["MockSelectionService"]
       56 GETTABLEKS                       R11 R2 K14 ["TestHelpers"]
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R15 R0 K18 ["Src"]
       62 GETTABLEKS                       R14 R15 K19 ["Components"]
       64 GETTABLEKS                       R13 R14 K20 ["GenerationsProvider"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R16 R0 K18 ["Src"]
       71 GETTABLEKS                       R15 R16 K19 ["Components"]
       73 GETTABLEKS                       R14 R15 K21 ["GenerationAnglesProvider"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R17 R0 K18 ["Src"]
       80 GETTABLEKS                       R16 R17 K19 ["Components"]
       82 GETTABLEKS                       R15 R16 K22 ["OptionsProvider"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R18 R0 K18 ["Src"]
       89 GETTABLEKS                       R17 R18 K19 ["Components"]
       91 GETTABLEKS                       R16 R17 K23 ["PreviewProvider"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K5 [require]
       96 GETTABLEKS                       R19 R0 K18 ["Src"]
       98 GETTABLEKS                       R18 R19 K19 ["Components"]
      100 GETTABLEKS                       R17 R18 K24 ["TextureGenerationServiceContextMock"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K5 [require]
      105 GETTABLEKS                       R20 R0 K18 ["Src"]
      107 GETTABLEKS                       R19 R20 K25 ["Util"]
      109 GETTABLEKS                       R18 R19 K26 ["SelectionWrapper"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K5 [require]
      114 GETTABLEKS                       R21 R0 K18 ["Src"]
      116 GETTABLEKS                       R20 R21 K27 ["Resources"]
      118 GETTABLEKS                       R19 R20 K28 ["MakeTheme"]
      120 CALL                             R18 1 1
      121 DUPCLOSURE                       R19 K29 [PROTO_2]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R6
      137 RETURN                           R19 1
