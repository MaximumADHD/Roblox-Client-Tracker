PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["get"]
       18 CALL                             R1 0 2
       19 AND                              R4 R1 R2
       20 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       22 LOADK                            R5 K7 ["Expect both to exist"]
       23 GETIMPORT                        R3 K5 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K8 ["provideMockContext"]
       29 GETUPVAL                         R4 2
       30 DUPTABLE                         R5 K10 [{"ContextStack"}]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K11 ["createElement"]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R7 R8 K9 ["ContextStack"]
       37 DUPTABLE                         R8 K13 [{"providers"}]
       38 NEWTABLE                         R9 0 6
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R10 R11 K11 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K16 [{"theme", "device"}]
       45 LOADK                            R13 K17 ["Dark"]
       46 SETTABLEKS                       R13 R12 K14 ["theme"]
       48 LOADK                            R13 K18 ["Desktop"]
       49 SETTABLEKS                       R13 R12 K15 ["device"]
       51 CALL                             R10 2 1
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R11 R12 K11 ["createElement"]
       55 GETUPVAL                         R13 6
       56 GETTABLEKS                       R12 R13 K19 ["MockProvider"]
       58 CALL                             R11 1 1
       59 GETUPVAL                         R13 3
       60 GETTABLEKS                       R12 R13 K11 ["createElement"]
       62 GETUPVAL                         R14 7
       63 GETTABLEKS                       R13 R14 K20 ["Provider"]
       65 CALL                             R12 1 1
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R13 R14 K11 ["createElement"]
       69 GETUPVAL                         R15 8
       70 GETTABLEKS                       R14 R15 K20 ["Provider"]
       72 DUPTABLE                         R15 K22 [{"value"}]
       73 SETTABLEKS                       R1 R15 K21 ["value"]
       75 CALL                             R13 2 1
       76 GETUPVAL                         R15 3
       77 GETTABLEKS                       R14 R15 K11 ["createElement"]
       79 GETUPVAL                         R16 9
       80 GETTABLEKS                       R15 R16 K20 ["Provider"]
       82 DUPTABLE                         R16 K22 [{"value"}]
       83 SETTABLEKS                       R2 R16 K21 ["value"]
       85 CALL                             R14 2 1
       86 GETUPVAL                         R16 3
       87 GETTABLEKS                       R15 R16 K11 ["createElement"]
       89 GETUPVAL                         R17 10
       90 GETTABLEKS                       R16 R17 K20 ["Provider"]
       92 CALL                             R15 1 -1
       93 SETLIST                          R9 R10 -1 [1]
       95 SETTABLEKS                       R9 R8 K12 ["providers"]
       97 MOVE                             R9 R0
       98 CALL                             R6 3 1
       99 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
      101 CALL                             R3 2 -1
      102 RETURN                           R3 -1

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
       53 GETTABLEKS                       R10 R11 K18 ["DatamodelReference"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R13 R0 K17 ["Src"]
       60 GETTABLEKS                       R12 R13 K15 ["Contexts"]
       62 GETTABLEKS                       R11 R12 K19 ["Guest"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K17 ["Src"]
       69 GETTABLEKS                       R13 R14 K15 ["Contexts"]
       71 GETTABLEKS                       R12 R13 K20 ["Networking"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K17 ["Src"]
       78 GETTABLEKS                       R14 R15 K15 ["Contexts"]
       80 GETTABLEKS                       R13 R14 K21 ["PluginConfiguration"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K17 ["Src"]
       87 GETTABLEKS                       R15 R16 K22 ["Util"]
       89 GETTABLEKS                       R14 R15 K23 ["mockNetworking"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R15 R6 K22 ["Util"]
       94 GETTABLEKS                       R14 R15 K24 ["createFoundationDesignBinding"]
       96 CALL                             R14 0 1
       97 GETTABLEKS                       R16 R3 K25 ["Styling"]
       99 GETTABLEKS                       R15 R16 K26 ["registerPluginStyles"]
      101 GETIMPORT                        R16 K28 [plugin]
      103 LOADNIL                          R17
      104 LOADNIL                          R18
      105 NEWTABLE                         R19 0 1
      107 MOVE                             R20 R14
      108 SETLIST                          R19 R20 1 [1]
      110 CALL                             R15 4 1
      111 NEWTABLE                         R16 0 2
      113 GETTABLEKS                       R18 R5 K29 ["Analytics"]
      115 GETTABLEKS                       R17 R18 K30 ["mock"]
      117 CALL                             R17 0 1
      118 GETTABLEKS                       R19 R5 K31 ["Design"]
      120 GETTABLEKS                       R18 R19 K32 ["new"]
      122 MOVE                             R19 R15
      123 CALL                             R18 1 -1
      124 SETLIST                          R16 R17 -1 [1]
      126 DUPCLOSURE                       R17 K33 [PROTO_0]
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R9
      138 RETURN                           R17 1
