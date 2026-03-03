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
       38 NEWTABLE                         R9 0 5
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
       63 GETTABLEKS                       R13 R14 K19 ["MockProvider"]
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
       85 CALL                             R14 2 -1
       86 SETLIST                          R9 R10 -1 [1]
       88 SETTABLEKS                       R9 R8 K12 ["providers"]
       90 MOVE                             R9 R0
       91 CALL                             R6 3 1
       92 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
       94 CALL                             R3 2 -1
       95 RETURN                           R3 -1

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
       36 GETTABLEKS                       R7 R8 K12 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K13 ["FoundationProvider"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R10 R0 K6 ["Packages"]
       45 GETTABLEKS                       R9 R10 K14 ["StudioFoundation"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R10 R8 K15 ["Contexts"]
       50 GETTABLEKS                       R9 R10 K16 ["Localization"]
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R13 R0 K17 ["Src"]
       56 GETTABLEKS                       R12 R13 K15 ["Contexts"]
       58 GETTABLEKS                       R11 R12 K18 ["Guest"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R14 R0 K17 ["Src"]
       65 GETTABLEKS                       R13 R14 K15 ["Contexts"]
       67 GETTABLEKS                       R12 R13 K19 ["Networking"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R15 R0 K17 ["Src"]
       74 GETTABLEKS                       R14 R15 K15 ["Contexts"]
       76 GETTABLEKS                       R13 R14 K20 ["PluginConfiguration"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R16 R0 K17 ["Src"]
       83 GETTABLEKS                       R15 R16 K21 ["Util"]
       85 GETTABLEKS                       R14 R15 K22 ["mockNetworking"]
       87 CALL                             R13 1 1
       88 NEWTABLE                         R14 0 2
       90 GETTABLEKS                       R16 R5 K23 ["Analytics"]
       92 GETTABLEKS                       R15 R16 K24 ["mock"]
       94 CALL                             R15 0 1
       95 GETTABLEKS                       R17 R5 K25 ["Design"]
       97 GETTABLEKS                       R16 R17 K24 ["mock"]
       99 GETIMPORT                        R17 K28 [Instance.new]
      101 LOADK                            R18 K29 ["StyleSheet"]
      102 CALL                             R17 1 -1
      103 CALL                             R16 -1 -1
      104 SETLIST                          R14 R15 -1 [1]
      106 DUPCLOSURE                       R15 K30 [PROTO_0]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R10
      117 RETURN                           R15 1
