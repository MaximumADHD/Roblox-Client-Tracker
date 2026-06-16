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
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["get"]
       18 CALL                             R1 0 2
       19 AND                              R4 R1 R2
       20 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       22 LOADK                            R5 K7 ["Expect both to exist"]
       23 GETIMPORT                        R3 K5 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K8 ["provideMockContext"]
       29 GETUPVAL                         R4 2
       30 DUPTABLE                         R5 K10 [{"ContextStack"}]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K11 ["createElement"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K9 ["ContextStack"]
       37 DUPTABLE                         R8 K13 [{"providers"}]
       38 NEWTABLE                         R9 0 8
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K11 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K16 [{"theme", "device"}]
       45 LOADK                            R13 K17 ["Dark"]
       46 SETTABLEKS                       R13 R12 K14 ["theme"]
       48 LOADK                            R13 K18 ["Desktop"]
       49 SETTABLEKS                       R13 R12 K15 ["device"]
       51 CALL                             R10 2 1
       52 GETUPVAL                         R11 3
       53 GETTABLEKS                       R11 R11 K11 ["createElement"]
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K19 ["MockProvider"]
       58 CALL                             R11 1 1
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K11 ["createElement"]
       62 GETUPVAL                         R13 7
       63 GETTABLEKS                       R13 R13 K20 ["Provider"]
       65 CALL                             R12 1 1
       66 GETUPVAL                         R13 3
       67 GETTABLEKS                       R13 R13 K11 ["createElement"]
       69 GETUPVAL                         R14 8
       70 GETTABLEKS                       R14 R14 K20 ["Provider"]
       72 CALL                             R13 1 1
       73 GETUPVAL                         R14 3
       74 GETTABLEKS                       R14 R14 K11 ["createElement"]
       76 GETUPVAL                         R15 9
       77 GETTABLEKS                       R15 R15 K20 ["Provider"]
       79 DUPTABLE                         R16 K22 [{"value"}]
       80 SETTABLEKS                       R1 R16 K21 ["value"]
       82 CALL                             R14 2 1
       83 GETUPVAL                         R15 3
       84 GETTABLEKS                       R15 R15 K11 ["createElement"]
       86 GETUPVAL                         R16 10
       87 GETTABLEKS                       R16 R16 K20 ["Provider"]
       89 DUPTABLE                         R17 K22 [{"value"}]
       90 SETTABLEKS                       R2 R17 K21 ["value"]
       92 CALL                             R15 2 1
       93 GETUPVAL                         R16 3
       94 GETTABLEKS                       R16 R16 K11 ["createElement"]
       96 GETUPVAL                         R17 11
       97 GETTABLEKS                       R17 R17 K20 ["Provider"]
       99 CALL                             R16 1 1
      100 GETUPVAL                         R17 3
      101 GETTABLEKS                       R17 R17 K11 ["createElement"]
      103 GETUPVAL                         R18 12
      104 GETTABLEKS                       R18 R18 K20 ["Provider"]
      106 CALL                             R17 1 -1
      107 SETLIST                          R9 R10 -1 [1]
      109 SETTABLEKS                       R9 R8 K12 ["providers"]
      111 MOVE                             R9 R0
      112 CALL                             R6 3 1
      113 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
      115 CALL                             R3 2 -1
      116 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["TestHelpers"]
       30 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K13 ["Components"]
       41 GETTABLEKS                       R7 R7 K14 ["FoundationProviderAdapter"]
       43 GETTABLEKS                       R8 R6 K15 ["Contexts"]
       45 GETTABLEKS                       R8 R8 K16 ["Localization"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Src"]
       51 GETTABLEKS                       R10 R10 K15 ["Contexts"]
       53 GETTABLEKS                       R10 R10 K18 ["InputConfiguration"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Src"]
       60 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       62 GETTABLEKS                       R11 R11 K19 ["Status"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Src"]
       69 GETTABLEKS                       R12 R12 K15 ["Contexts"]
       71 GETTABLEKS                       R12 R12 K20 ["Guest"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K17 ["Src"]
       78 GETTABLEKS                       R13 R13 K15 ["Contexts"]
       80 GETTABLEKS                       R13 R13 K21 ["Networking"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R14 R0 K17 ["Src"]
       87 GETTABLEKS                       R14 R14 K15 ["Contexts"]
       89 GETTABLEKS                       R14 R14 K22 ["PluginConfiguration"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K17 ["Src"]
       96 GETTABLEKS                       R15 R15 K15 ["Contexts"]
       98 GETTABLEKS                       R15 R15 K23 ["SchemaConfiguration"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K17 ["Src"]
      105 GETTABLEKS                       R16 R16 K24 ["Util"]
      107 GETTABLEKS                       R16 R16 K25 ["Test"]
      109 GETTABLEKS                       R16 R16 K26 ["Mock"]
      111 GETTABLEKS                       R16 R16 K27 ["mockNetworking"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R6 K24 ["Util"]
      116 GETTABLEKS                       R16 R16 K28 ["createFoundationDesignBinding"]
      118 CALL                             R16 0 1
      119 GETTABLEKS                       R17 R3 K29 ["Styling"]
      121 GETTABLEKS                       R17 R17 K30 ["registerPluginStyles"]
      123 GETIMPORT                        R18 K32 [plugin]
      125 LOADNIL                          R19
      126 LOADNIL                          R20
      127 NEWTABLE                         R21 0 1
      129 MOVE                             R22 R16
      130 SETLIST                          R21 R22 1 [1]
      132 CALL                             R17 4 1
      133 NEWTABLE                         R18 0 2
      135 GETTABLEKS                       R19 R5 K33 ["Analytics"]
      137 GETTABLEKS                       R19 R19 K34 ["mock"]
      139 CALL                             R19 0 1
      140 GETTABLEKS                       R20 R5 K35 ["Design"]
      142 GETTABLEKS                       R20 R20 K36 ["new"]
      144 MOVE                             R21 R17
      145 CALL                             R20 1 -1
      146 SETLIST                          R18 R19 -1 [1]
      148 DUPCLOSURE                       R19 K37 [PROTO_0]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R10
      162 RETURN                           R19 1
