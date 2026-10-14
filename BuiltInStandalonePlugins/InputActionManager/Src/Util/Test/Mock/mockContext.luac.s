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
       22 LOADK                            R5 K7 ["Expect networking to exist"]
       23 GETIMPORT                        R3 K5 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K8 ["MockProvider"]
       29 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K9 ["Expected datamodelConfigurationProvider to exist"]
       33 GETIMPORT                        R4 K5 [assert]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K10 ["provideMockContext"]
       39 GETUPVAL                         R5 3
       40 DUPTABLE                         R6 K12 [{"ContextStack"}]
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R7 R7 K13 ["createElement"]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R8 R8 K11 ["ContextStack"]
       47 DUPTABLE                         R9 K15 [{"providers"}]
       48 NEWTABLE                         R10 0 8
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R11 R11 K13 ["createElement"]
       53 GETUPVAL                         R12 6
       54 DUPTABLE                         R13 K20 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K13 ["createElement"]
       59 GETUPVAL                         R13 7
       60 GETTABLEKS                       R13 R13 K21 ["Provider"]
       62 DUPTABLE                         R14 K23 [{"value"}]
       63 SETTABLEKS                       R1 R14 K22 ["value"]
       65 CALL                             R12 2 1
       66 GETUPVAL                         R13 4
       67 GETTABLEKS                       R13 R13 K13 ["createElement"]
       69 MOVE                             R14 R3
       70 CALL                             R13 1 1
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K13 ["createElement"]
       74 GETUPVAL                         R15 8
       75 GETTABLEKS                       R15 R15 K21 ["Provider"]
       77 DUPTABLE                         R16 K23 [{"value"}]
       78 SETTABLEKS                       R2 R16 K22 ["value"]
       80 CALL                             R14 2 1
       81 GETUPVAL                         R15 4
       82 GETTABLEKS                       R15 R15 K13 ["createElement"]
       84 GETUPVAL                         R16 9
       85 GETTABLEKS                       R16 R16 K21 ["Provider"]
       87 DUPTABLE                         R17 K25 [{"localization"}]
       88 GETUPVAL                         R18 10
       89 SETTABLEKS                       R18 R17 K24 ["localization"]
       91 CALL                             R15 2 1
       92 GETUPVAL                         R16 4
       93 GETTABLEKS                       R16 R16 K13 ["createElement"]
       95 GETUPVAL                         R17 11
       96 GETTABLEKS                       R17 R17 K26 ["AnalyticsTelemetryServiceProvider"]
       98 CALL                             R16 1 1
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K13 ["createElement"]
      102 GETUPVAL                         R18 12
      103 GETTABLEKS                       R18 R18 K8 ["MockProvider"]
      105 CALL                             R17 1 1
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R18 R18 K13 ["createElement"]
      109 GETUPVAL                         R19 13
      110 GETTABLEKS                       R19 R19 K21 ["Provider"]
      112 NEWTABLE                         R20 0 0
      114 CALL                             R18 2 -1
      115 SETLIST                          R10 R11 -1 [1]
      117 SETTABLEKS                       R10 R9 K14 ["providers"]
      119 MOVE                             R10 R0
      120 CALL                             R7 3 1
      121 SETTABLEKS                       R7 R6 K11 ["ContextStack"]
      123 CALL                             R4 2 -1
      124 RETURN                           R4 -1

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
       49 GETTABLEKS                       R10 R0 K6 ["Packages"]
       51 GETTABLEKS                       R10 R10 K17 ["Analytics"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K18 ["Src"]
       58 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       60 GETTABLEKS                       R11 R11 K19 ["DatamodelConfiguration"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Src"]
       67 GETTABLEKS                       R12 R12 K15 ["Contexts"]
       69 GETTABLEKS                       R12 R12 K20 ["FilterConfiguration"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Src"]
       76 GETTABLEKS                       R13 R13 K15 ["Contexts"]
       78 GETTABLEKS                       R13 R13 K21 ["Guest"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K18 ["Src"]
       85 GETTABLEKS                       R14 R14 K15 ["Contexts"]
       87 GETTABLEKS                       R14 R14 K22 ["Networking"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K18 ["Src"]
       94 GETTABLEKS                       R15 R15 K15 ["Contexts"]
       96 GETTABLEKS                       R15 R15 K23 ["Telemetry"]
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R15 R0 K18 ["Src"]
      101 GETTABLEKS                       R15 R15 K24 ["Resources"]
      103 GETTABLEKS                       R15 R15 K16 ["Localization"]
      105 GETTABLEKS                       R15 R15 K25 ["SourceStrings"]
      107 GETTABLEKS                       R16 R0 K18 ["Src"]
      109 GETTABLEKS                       R16 R16 K24 ["Resources"]
      111 GETTABLEKS                       R16 R16 K16 ["Localization"]
      113 GETTABLEKS                       R16 R16 K26 ["LocalizedStrings"]
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K18 ["Src"]
      119 GETTABLEKS                       R18 R18 K27 ["Util"]
      121 GETTABLEKS                       R18 R18 K28 ["Test"]
      123 GETTABLEKS                       R18 R18 K29 ["Mock"]
      125 GETTABLEKS                       R18 R18 K30 ["mockNetworking"]
      127 CALL                             R17 1 1
      128 GETTABLEKS                       R18 R6 K27 ["Util"]
      130 GETTABLEKS                       R18 R18 K31 ["createFoundationDesignBinding"]
      132 CALL                             R18 0 1
      133 GETTABLEKS                       R19 R3 K32 ["Styling"]
      135 GETTABLEKS                       R19 R19 K33 ["registerPluginStyles"]
      137 GETIMPORT                        R20 K35 [plugin]
      139 LOADNIL                          R21
      140 LOADNIL                          R22
      141 NEWTABLE                         R23 0 1
      143 MOVE                             R24 R18
      144 SETLIST                          R23 R24 1 [1]
      146 CALL                             R19 4 1
      147 NEWTABLE                         R20 0 2
      149 GETTABLEKS                       R21 R5 K17 ["Analytics"]
      151 GETTABLEKS                       R21 R21 K36 ["mock"]
      153 CALL                             R21 0 1
      154 GETTABLEKS                       R22 R5 K37 ["Design"]
      156 GETTABLEKS                       R22 R22 K38 ["new"]
      158 MOVE                             R23 R19
      159 CALL                             R22 1 -1
      160 SETLIST                          R20 R21 -1 [1]
      162 GETTABLEKS                       R21 R8 K16 ["Localization"]
      164 GETTABLEKS                       R21 R21 K38 ["new"]
      166 DUPTABLE                         R22 K44 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      167 SETTABLEKS                       R15 R22 K39 ["stringResourceTable"]
      169 SETTABLEKS                       R16 R22 K40 ["translationResourceTable"]
      171 CALL                             R21 1 1
      172 DUPCLOSURE                       R22 K45 [PROTO_0]
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R11
      187 RETURN                           R22 1
