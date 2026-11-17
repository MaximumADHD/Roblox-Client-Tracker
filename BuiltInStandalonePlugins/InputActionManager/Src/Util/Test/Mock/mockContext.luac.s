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
       48 NEWTABLE                         R10 0 9
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R11 R11 K13 ["createElement"]
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R12 R12 K8 ["MockProvider"]
       56 CALL                             R11 1 1
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K13 ["createElement"]
       60 GETUPVAL                         R13 7
       61 DUPTABLE                         R14 K20 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       62 CALL                             R12 2 1
       63 GETUPVAL                         R13 4
       64 GETTABLEKS                       R13 R13 K13 ["createElement"]
       66 GETUPVAL                         R14 8
       67 GETTABLEKS                       R14 R14 K21 ["Provider"]
       69 DUPTABLE                         R15 K23 [{"value"}]
       70 SETTABLEKS                       R1 R15 K22 ["value"]
       72 CALL                             R13 2 1
       73 GETUPVAL                         R14 4
       74 GETTABLEKS                       R14 R14 K13 ["createElement"]
       76 MOVE                             R15 R3
       77 CALL                             R14 1 1
       78 GETUPVAL                         R15 4
       79 GETTABLEKS                       R15 R15 K13 ["createElement"]
       81 GETUPVAL                         R16 9
       82 GETTABLEKS                       R16 R16 K21 ["Provider"]
       84 DUPTABLE                         R17 K23 [{"value"}]
       85 SETTABLEKS                       R2 R17 K22 ["value"]
       87 CALL                             R15 2 1
       88 GETUPVAL                         R16 4
       89 GETTABLEKS                       R16 R16 K13 ["createElement"]
       91 GETUPVAL                         R17 10
       92 GETTABLEKS                       R17 R17 K21 ["Provider"]
       94 DUPTABLE                         R18 K25 [{"localization"}]
       95 GETUPVAL                         R19 11
       96 SETTABLEKS                       R19 R18 K24 ["localization"]
       98 CALL                             R16 2 1
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K13 ["createElement"]
      102 GETUPVAL                         R18 12
      103 GETTABLEKS                       R18 R18 K26 ["AnalyticsTelemetryServiceProvider"]
      105 CALL                             R17 1 1
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R18 R18 K13 ["createElement"]
      109 GETUPVAL                         R19 13
      110 GETTABLEKS                       R19 R19 K8 ["MockProvider"]
      112 CALL                             R18 1 1
      113 GETUPVAL                         R19 4
      114 GETTABLEKS                       R19 R19 K13 ["createElement"]
      116 GETUPVAL                         R20 14
      117 GETTABLEKS                       R20 R20 K21 ["Provider"]
      119 NEWTABLE                         R21 0 0
      121 CALL                             R19 2 -1
      122 SETLIST                          R10 R11 -1 [1]
      124 SETTABLEKS                       R10 R9 K14 ["providers"]
      126 MOVE                             R10 R0
      127 CALL                             R7 3 1
      128 SETTABLEKS                       R7 R6 K11 ["ContextStack"]
      130 CALL                             R4 2 -1
      131 RETURN                           R4 -1

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
       96 GETTABLEKS                       R15 R15 K23 ["Settings"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K18 ["Src"]
      103 GETTABLEKS                       R16 R16 K15 ["Contexts"]
      105 GETTABLEKS                       R16 R16 K24 ["Telemetry"]
      107 CALL                             R15 1 1
      108 GETTABLEKS                       R16 R0 K18 ["Src"]
      110 GETTABLEKS                       R16 R16 K25 ["Resources"]
      112 GETTABLEKS                       R16 R16 K16 ["Localization"]
      114 GETTABLEKS                       R16 R16 K26 ["SourceStrings"]
      116 GETTABLEKS                       R17 R0 K18 ["Src"]
      118 GETTABLEKS                       R17 R17 K25 ["Resources"]
      120 GETTABLEKS                       R17 R17 K16 ["Localization"]
      122 GETTABLEKS                       R17 R17 K27 ["LocalizedStrings"]
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K18 ["Src"]
      128 GETTABLEKS                       R19 R19 K28 ["Util"]
      130 GETTABLEKS                       R19 R19 K29 ["Test"]
      132 GETTABLEKS                       R19 R19 K30 ["Mock"]
      134 GETTABLEKS                       R19 R19 K31 ["mockNetworking"]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R19 R6 K28 ["Util"]
      139 GETTABLEKS                       R19 R19 K32 ["createFoundationDesignBinding"]
      141 CALL                             R19 0 1
      142 GETTABLEKS                       R20 R3 K33 ["Styling"]
      144 GETTABLEKS                       R20 R20 K34 ["registerPluginStyles"]
      146 GETIMPORT                        R21 K36 [plugin]
      148 LOADNIL                          R22
      149 LOADNIL                          R23
      150 NEWTABLE                         R24 0 1
      152 MOVE                             R25 R19
      153 SETLIST                          R24 R25 1 [1]
      155 CALL                             R20 4 1
      156 NEWTABLE                         R21 0 2
      158 GETTABLEKS                       R22 R5 K17 ["Analytics"]
      160 GETTABLEKS                       R22 R22 K37 ["mock"]
      162 CALL                             R22 0 1
      163 GETTABLEKS                       R23 R5 K38 ["Design"]
      165 GETTABLEKS                       R23 R23 K39 ["new"]
      167 MOVE                             R24 R20
      168 CALL                             R23 1 -1
      169 SETLIST                          R21 R22 -1 [1]
      171 GETTABLEKS                       R22 R8 K16 ["Localization"]
      173 GETTABLEKS                       R22 R22 K39 ["new"]
      175 DUPTABLE                         R23 K45 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      176 SETTABLEKS                       R16 R23 K40 ["stringResourceTable"]
      178 SETTABLEKS                       R17 R23 K41 ["translationResourceTable"]
      180 CALL                             R22 1 1
      181 DUPCLOSURE                       R23 K46 [PROTO_0]
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R11
      197 RETURN                           R23 1
