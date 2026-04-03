PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["get"]
       18 CALL                             R2 0 2
       19 AND                              R5 R2 R3
       20 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       22 LOADK                            R6 K7 ["Expect both to exist"]
       23 GETIMPORT                        R4 K5 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K8 ["provideMockContext"]
       29 GETUPVAL                         R5 2
       30 DUPTABLE                         R6 K10 [{"ContextStack"}]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R7 R8 K11 ["createElement"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R8 R9 K9 ["ContextStack"]
       37 DUPTABLE                         R9 K13 [{"providers"}]
       38 NEWTABLE                         R10 0 5
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R11 R12 K11 ["createElement"]
       43 GETUPVAL                         R12 5
       44 DUPTABLE                         R13 K16 [{"theme", "device"}]
       45 LOADK                            R14 K17 ["Dark"]
       46 SETTABLEKS                       R14 R13 K14 ["theme"]
       48 LOADK                            R14 K18 ["Desktop"]
       49 SETTABLEKS                       R14 R13 K15 ["device"]
       51 CALL                             R11 2 1
       52 GETUPVAL                         R13 3
       53 GETTABLEKS                       R12 R13 K11 ["createElement"]
       55 GETUPVAL                         R14 6
       56 GETTABLEKS                       R13 R14 K19 ["MockProvider"]
       58 CALL                             R12 1 1
       59 GETUPVAL                         R14 3
       60 GETTABLEKS                       R13 R14 K11 ["createElement"]
       62 GETUPVAL                         R15 7
       63 GETTABLEKS                       R14 R15 K19 ["MockProvider"]
       65 DUPTABLE                         R15 K21 [{"sizeChanged"}]
       66 GETTABLEKS                       R16 R0 K20 ["sizeChanged"]
       68 SETTABLEKS                       R16 R15 K20 ["sizeChanged"]
       70 CALL                             R13 2 1
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R14 R15 K11 ["createElement"]
       74 GETUPVAL                         R16 8
       75 GETTABLEKS                       R15 R16 K22 ["Provider"]
       77 DUPTABLE                         R16 K24 [{"value"}]
       78 SETTABLEKS                       R2 R16 K23 ["value"]
       80 CALL                             R14 2 1
       81 GETUPVAL                         R16 3
       82 GETTABLEKS                       R15 R16 K11 ["createElement"]
       84 GETUPVAL                         R17 9
       85 GETTABLEKS                       R16 R17 K22 ["Provider"]
       87 DUPTABLE                         R17 K24 [{"value"}]
       88 SETTABLEKS                       R3 R17 K23 ["value"]
       90 CALL                             R15 2 -1
       91 SETLIST                          R10 R11 -1 [1]
       93 SETTABLEKS                       R10 R9 K12 ["providers"]
       95 MOVE                             R10 R1
       96 CALL                             R7 3 1
       97 SETTABLEKS                       R7 R6 K9 ["ContextStack"]
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["TestHelpers"]
       30 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R8 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R8 K12 ["StudioFoundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R6 K13 ["Components"]
       41 GETTABLEKS                       R7 R8 K14 ["FoundationProviderAdapter"]
       43 GETTABLEKS                       R9 R6 K15 ["Contexts"]
       45 GETTABLEKS                       R8 R9 K16 ["Localization"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K17 ["Src"]
       51 GETTABLEKS                       R11 R12 K15 ["Contexts"]
       53 GETTABLEKS                       R10 R11 K18 ["Guest"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R13 R0 K17 ["Src"]
       60 GETTABLEKS                       R12 R13 K15 ["Contexts"]
       62 GETTABLEKS                       R11 R12 K19 ["Networking"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K17 ["Src"]
       69 GETTABLEKS                       R13 R14 K15 ["Contexts"]
       71 GETTABLEKS                       R12 R13 K20 ["PluginConfiguration"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K17 ["Src"]
       78 GETTABLEKS                       R14 R15 K21 ["Util"]
       80 GETTABLEKS                       R13 R14 K22 ["mockNetworking"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R14 R6 K21 ["Util"]
       85 GETTABLEKS                       R13 R14 K23 ["createFoundationDesignBinding"]
       87 CALL                             R13 0 1
       88 GETTABLEKS                       R15 R3 K24 ["Styling"]
       90 GETTABLEKS                       R14 R15 K25 ["registerPluginStyles"]
       92 GETIMPORT                        R15 K27 [plugin]
       94 LOADNIL                          R16
       95 LOADNIL                          R17
       96 NEWTABLE                         R18 0 1
       98 MOVE                             R19 R13
       99 SETLIST                          R18 R19 1 [1]
      101 CALL                             R14 4 1
      102 NEWTABLE                         R15 0 2
      104 GETTABLEKS                       R17 R5 K28 ["Analytics"]
      106 GETTABLEKS                       R16 R17 K29 ["mock"]
      108 CALL                             R16 0 1
      109 GETTABLEKS                       R18 R5 K30 ["Design"]
      111 GETTABLEKS                       R17 R18 K31 ["new"]
      113 MOVE                             R18 R14
      114 CALL                             R17 1 -1
      115 SETLIST                          R15 R16 -1 [1]
      117 DUPCLOSURE                       R16 K32 [PROTO_0]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R9
      128 RETURN                           R16 1
