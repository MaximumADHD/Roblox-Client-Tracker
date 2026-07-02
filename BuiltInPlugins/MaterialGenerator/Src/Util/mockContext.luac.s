PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["MaterialGenerator"] ; [+6]
        2 DUPTABLE                         R2 K2 [{"UploadMaterialsAsync"}]
        3 DUPCLOSURE                       R3 K3 [PROTO_0]
        4 SETTABLEKS                       R3 R2 K1 ["UploadMaterialsAsync"]
        6 RETURN                           R2 1
        7 RETURN                           R0 0

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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["new"]
       18 CALL                             R2 0 1
       19 DUPCLOSURE                       R3 K7 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K8 ["GetPluginComponent"]
       22 GETUPVAL                         R4 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K9 ["Plugin"]
       26 GETTABLEKS                       R5 R5 K6 ["new"]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R3 K11 [table.insert]
       33 CALL                             R3 -1 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K12 ["append"]
       37 NEWTABLE                         R4 0 4
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K13 ["createElement"]
       42 GETUPVAL                         R6 5
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K13 ["createElement"]
       47 GETUPVAL                         R7 6
       48 CALL                             R6 1 1
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K13 ["createElement"]
       52 GETUPVAL                         R8 7
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K13 ["createElement"]
       57 GETUPVAL                         R9 8
       58 DUPTABLE                         R10 K16 [{["enabled"] = True}]
       59 CALL                             R8 2 -1
       60 SETLIST                          R4 R5 -1 [1]
       62 MOVE                             R5 R1
       63 JUMPIF                           R5 ; [+2]
       64 NEWTABLE                         R5 0 0
       66 CALL                             R3 2 1
       67 GETUPVAL                         R4 9
       68 GETTABLEKS                       R4 R4 K17 ["provideMockContext"]
       70 GETUPVAL                         R5 1
       71 DUPTABLE                         R6 K19 [{"ContextStack"}]
       72 GETUPVAL                         R7 4
       73 GETTABLEKS                       R7 R7 K13 ["createElement"]
       75 GETUPVAL                         R8 10
       76 DUPTABLE                         R9 K21 [{"providers"}]
       77 SETTABLEKS                       R3 R9 K20 ["providers"]
       79 MOVE                             R10 R0
       80 CALL                             R7 3 1
       81 SETTABLEKS                       R7 R6 K18 ["ContextStack"]
       83 CALL                             R4 2 -1
       84 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["ContextStack"]
       44 GETTABLEKS                       R7 R2 K13 ["ContextServices"]
       46 GETTABLEKS                       R8 R2 K14 ["TestHelpers"]
       48 GETTABLEKS                       R9 R8 K15 ["Instances"]
       50 GETTABLEKS                       R9 R9 K16 ["MockPlugin"]
       52 GETTABLEKS                       R10 R3 K17 ["Context"]
       54 GETTABLEKS                       R10 R10 K18 ["StudioServices"]
       56 GETTABLEKS                       R11 R0 K19 ["Src"]
       58 GETTABLEKS                       R11 R11 K20 ["Components"]
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R11 K21 ["GenerationProvider"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R11 K22 ["GeneratedMaterialsProvider"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R11 K23 ["PluginSettingsProvider"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R11 K24 ["PreviewProvider"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R17 R0 K19 ["Src"]
       84 GETTABLEKS                       R17 R17 K25 ["Resources"]
       86 GETTABLEKS                       R17 R17 K26 ["MakeTheme"]
       88 CALL                             R16 1 1
       89 NEWTABLE                         R17 0 4
       91 GETTABLEKS                       R18 R7 K27 ["Analytics"]
       93 GETTABLEKS                       R18 R18 K28 ["mock"]
       95 CALL                             R18 0 1
       96 GETTABLEKS                       R19 R7 K29 ["Localization"]
       98 GETTABLEKS                       R19 R19 K28 ["mock"]
      100 CALL                             R19 0 1
      101 MOVE                             R20 R16
      102 LOADB                            R21 1
      103 CALL                             R20 1 1
      104 GETTABLEKS                       R21 R10 K28 ["mock"]
      106 CALL                             R21 0 -1
      107 SETLIST                          R17 R18 -1 [1]
      109 DUPCLOSURE                       R18 K30 [PROTO_2]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R6
      121 RETURN                           R18 1
