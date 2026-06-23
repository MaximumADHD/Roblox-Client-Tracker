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
       38 NEWTABLE                         R9 0 4
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
       56 GETTABLEKS                       R12 R12 K19 ["Provider"]
       58 DUPTABLE                         R13 K21 [{"localization"}]
       59 GETUPVAL                         R14 7
       60 SETTABLEKS                       R14 R13 K20 ["localization"]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 3
       64 GETTABLEKS                       R12 R12 K11 ["createElement"]
       66 GETUPVAL                         R13 8
       67 GETTABLEKS                       R13 R13 K19 ["Provider"]
       69 DUPTABLE                         R14 K23 [{"value"}]
       70 SETTABLEKS                       R1 R14 K22 ["value"]
       72 CALL                             R12 2 1
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K11 ["createElement"]
       76 GETUPVAL                         R14 9
       77 GETTABLEKS                       R14 R14 K19 ["Provider"]
       79 DUPTABLE                         R15 K23 [{"value"}]
       80 SETTABLEKS                       R2 R15 K22 ["value"]
       82 CALL                             R13 2 -1
       83 SETLIST                          R9 R10 -1 [1]
       85 SETTABLEKS                       R9 R8 K12 ["providers"]
       87 MOVE                             R9 R0
       88 CALL                             R6 3 1
       89 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
       91 CALL                             R3 2 -1
       92 RETURN                           R3 -1

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
       53 GETTABLEKS                       R10 R10 K18 ["Guest"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Src"]
       60 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       62 GETTABLEKS                       R11 R11 K19 ["Networking"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R0 K17 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Resources"]
       69 GETTABLEKS                       R11 R11 K16 ["Localization"]
       71 GETTABLEKS                       R11 R11 K21 ["SourceStrings"]
       73 GETTABLEKS                       R12 R0 K17 ["Src"]
       75 GETTABLEKS                       R12 R12 K20 ["Resources"]
       77 GETTABLEKS                       R12 R12 K16 ["Localization"]
       79 GETTABLEKS                       R12 R12 K22 ["LocalizedStrings"]
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K17 ["Src"]
       85 GETTABLEKS                       R14 R14 K23 ["Util"]
       87 GETTABLEKS                       R14 R14 K24 ["Test"]
       89 GETTABLEKS                       R14 R14 K25 ["Mock"]
       91 GETTABLEKS                       R14 R14 K26 ["mockNetworking"]
       93 CALL                             R13 1 1
       94 GETTABLEKS                       R14 R6 K23 ["Util"]
       96 GETTABLEKS                       R14 R14 K27 ["createFoundationDesignBinding"]
       98 CALL                             R14 0 1
       99 GETTABLEKS                       R15 R3 K28 ["Styling"]
      101 GETTABLEKS                       R15 R15 K29 ["registerPluginStyles"]
      103 GETIMPORT                        R16 K31 [plugin]
      105 LOADNIL                          R17
      106 LOADNIL                          R18
      107 NEWTABLE                         R19 0 1
      109 MOVE                             R20 R14
      110 SETLIST                          R19 R20 1 [1]
      112 CALL                             R15 4 1
      113 NEWTABLE                         R16 0 2
      115 GETTABLEKS                       R17 R5 K32 ["Analytics"]
      117 GETTABLEKS                       R17 R17 K33 ["mock"]
      119 CALL                             R17 0 1
      120 GETTABLEKS                       R18 R5 K34 ["Design"]
      122 GETTABLEKS                       R18 R18 K35 ["new"]
      124 MOVE                             R19 R15
      125 CALL                             R18 1 -1
      126 SETLIST                          R16 R17 -1 [1]
      128 GETTABLEKS                       R17 R8 K16 ["Localization"]
      130 GETTABLEKS                       R17 R17 K35 ["new"]
      132 DUPTABLE                         R18 K40 [{"stringResourceTable", "translationResourceTable", "pluginName", "overrideLocaleId"}]
      133 SETTABLEKS                       R11 R18 K36 ["stringResourceTable"]
      135 SETTABLEKS                       R12 R18 K37 ["translationResourceTable"]
      137 LOADK                            R19 K2 ["InputActionManager"]
      138 SETTABLEKS                       R19 R18 K38 ["pluginName"]
      140 LOADK                            R19 K41 ["en-us"]
      141 SETTABLEKS                       R19 R18 K39 ["overrideLocaleId"]
      143 CALL                             R17 1 1
      144 DUPCLOSURE                       R18 K42 [PROTO_0]
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R9
      155 RETURN                           R18 1
