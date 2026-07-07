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
       38 NEWTABLE                         R9 0 6
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K11 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K18 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K11 ["createElement"]
       49 GETUPVAL                         R12 6
       50 GETTABLEKS                       R12 R12 K19 ["Provider"]
       52 DUPTABLE                         R13 K21 [{"localization"}]
       53 GETUPVAL                         R14 7
       54 SETTABLEKS                       R14 R13 K20 ["localization"]
       56 CALL                             R11 2 1
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R12 R12 K11 ["createElement"]
       60 GETUPVAL                         R13 8
       61 GETTABLEKS                       R13 R13 K19 ["Provider"]
       63 DUPTABLE                         R14 K23 [{"value"}]
       64 SETTABLEKS                       R1 R14 K22 ["value"]
       66 CALL                             R12 2 1
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R13 R13 K11 ["createElement"]
       70 GETUPVAL                         R14 9
       71 GETTABLEKS                       R14 R14 K19 ["Provider"]
       73 DUPTABLE                         R15 K23 [{"value"}]
       74 SETTABLEKS                       R2 R15 K22 ["value"]
       76 CALL                             R13 2 1
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R14 R14 K11 ["createElement"]
       80 GETUPVAL                         R15 10
       81 GETTABLEKS                       R15 R15 K24 ["AnalyticsTelemetryServiceProvider"]
       83 CALL                             R14 1 1
       84 GETUPVAL                         R15 3
       85 GETTABLEKS                       R15 R15 K11 ["createElement"]
       87 GETUPVAL                         R16 11
       88 GETTABLEKS                       R16 R16 K25 ["MockProvider"]
       90 CALL                             R15 1 -1
       91 SETLIST                          R9 R10 -1 [1]
       93 SETTABLEKS                       R9 R8 K12 ["providers"]
       95 MOVE                             R9 R0
       96 CALL                             R6 3 1
       97 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
       99 CALL                             R3 2 -1
      100 RETURN                           R3 -1

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
       60 GETTABLEKS                       R11 R11 K19 ["Guest"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Src"]
       67 GETTABLEKS                       R12 R12 K15 ["Contexts"]
       69 GETTABLEKS                       R12 R12 K20 ["Networking"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Src"]
       76 GETTABLEKS                       R13 R13 K15 ["Contexts"]
       78 GETTABLEKS                       R13 R13 K21 ["Telemetry"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R0 K18 ["Src"]
       83 GETTABLEKS                       R13 R13 K22 ["Resources"]
       85 GETTABLEKS                       R13 R13 K16 ["Localization"]
       87 GETTABLEKS                       R13 R13 K23 ["SourceStrings"]
       89 GETTABLEKS                       R14 R0 K18 ["Src"]
       91 GETTABLEKS                       R14 R14 K22 ["Resources"]
       93 GETTABLEKS                       R14 R14 K16 ["Localization"]
       95 GETTABLEKS                       R14 R14 K24 ["LocalizedStrings"]
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K18 ["Src"]
      101 GETTABLEKS                       R16 R16 K25 ["Util"]
      103 GETTABLEKS                       R16 R16 K26 ["Test"]
      105 GETTABLEKS                       R16 R16 K27 ["Mock"]
      107 GETTABLEKS                       R16 R16 K28 ["mockNetworking"]
      109 CALL                             R15 1 1
      110 GETTABLEKS                       R16 R6 K25 ["Util"]
      112 GETTABLEKS                       R16 R16 K29 ["createFoundationDesignBinding"]
      114 CALL                             R16 0 1
      115 GETTABLEKS                       R17 R3 K30 ["Styling"]
      117 GETTABLEKS                       R17 R17 K31 ["registerPluginStyles"]
      119 GETIMPORT                        R18 K33 [plugin]
      121 LOADNIL                          R19
      122 LOADNIL                          R20
      123 NEWTABLE                         R21 0 1
      125 MOVE                             R22 R16
      126 SETLIST                          R21 R22 1 [1]
      128 CALL                             R17 4 1
      129 NEWTABLE                         R18 0 2
      131 GETTABLEKS                       R19 R5 K17 ["Analytics"]
      133 GETTABLEKS                       R19 R19 K34 ["mock"]
      135 CALL                             R19 0 1
      136 GETTABLEKS                       R20 R5 K35 ["Design"]
      138 GETTABLEKS                       R20 R20 K36 ["new"]
      140 MOVE                             R21 R17
      141 CALL                             R20 1 -1
      142 SETLIST                          R18 R19 -1 [1]
      144 GETTABLEKS                       R19 R8 K16 ["Localization"]
      146 GETTABLEKS                       R19 R19 K36 ["new"]
      148 DUPTABLE                         R20 K42 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      149 SETTABLEKS                       R13 R20 K37 ["stringResourceTable"]
      151 SETTABLEKS                       R14 R20 K38 ["translationResourceTable"]
      153 CALL                             R19 1 1
      154 DUPCLOSURE                       R20 K43 [PROTO_0]
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R12
      167 RETURN                           R20 1
