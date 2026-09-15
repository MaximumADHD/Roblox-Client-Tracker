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
       26 GETUPVAL                         R4 1
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+4]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K8 ["MockProvider"]
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K9 ["Provider"]
       36 FASTCALL2K                       ASSERT R3 K10 ; [+5]
       38 MOVE                             R5 R3
       39 LOADK                            R6 K10 ["Expected datamodelConfigurationProvider to exist"]
       40 GETIMPORT                        R4 K5 [assert]
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K11 ["provideMockContext"]
       46 GETUPVAL                         R5 4
       47 DUPTABLE                         R6 K13 [{"ContextStack"}]
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R7 R7 K14 ["createElement"]
       51 GETUPVAL                         R8 6
       52 GETTABLEKS                       R8 R8 K12 ["ContextStack"]
       54 DUPTABLE                         R9 K16 [{"providers"}]
       55 NEWTABLE                         R10 0 7
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R11 R11 K14 ["createElement"]
       60 GETUPVAL                         R12 7
       61 DUPTABLE                         R13 K21 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 5
       64 GETTABLEKS                       R12 R12 K14 ["createElement"]
       66 GETUPVAL                         R13 8
       67 GETTABLEKS                       R13 R13 K9 ["Provider"]
       69 DUPTABLE                         R14 K23 [{"value"}]
       70 SETTABLEKS                       R1 R14 K22 ["value"]
       72 CALL                             R12 2 1
       73 GETUPVAL                         R14 1
       74 CALL                             R14 0 1
       75 JUMPIFNOT                        R14 ; [+6]
       76 GETUPVAL                         R13 5
       77 GETTABLEKS                       R13 R13 K14 ["createElement"]
       79 MOVE                             R14 R3
       80 CALL                             R13 1 1
       81 JUMP                             ; [+9]
       82 GETUPVAL                         R13 5
       83 GETTABLEKS                       R13 R13 K14 ["createElement"]
       85 GETUPVAL                         R14 5
       86 GETTABLEKS                       R14 R14 K24 ["Fragment"]
       88 NEWTABLE                         R15 0 0
       90 CALL                             R13 2 1
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R14 R14 K14 ["createElement"]
       94 GETUPVAL                         R15 9
       95 GETTABLEKS                       R15 R15 K9 ["Provider"]
       97 DUPTABLE                         R16 K23 [{"value"}]
       98 SETTABLEKS                       R2 R16 K22 ["value"]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 5
      102 GETTABLEKS                       R15 R15 K14 ["createElement"]
      104 GETUPVAL                         R16 10
      105 GETTABLEKS                       R16 R16 K9 ["Provider"]
      107 DUPTABLE                         R17 K26 [{"localization"}]
      108 GETUPVAL                         R18 11
      109 SETTABLEKS                       R18 R17 K25 ["localization"]
      111 CALL                             R15 2 1
      112 GETUPVAL                         R16 5
      113 GETTABLEKS                       R16 R16 K14 ["createElement"]
      115 GETUPVAL                         R17 12
      116 GETTABLEKS                       R17 R17 K27 ["AnalyticsTelemetryServiceProvider"]
      118 CALL                             R16 1 1
      119 GETUPVAL                         R17 5
      120 GETTABLEKS                       R17 R17 K14 ["createElement"]
      122 GETUPVAL                         R18 13
      123 GETTABLEKS                       R18 R18 K8 ["MockProvider"]
      125 CALL                             R17 1 -1
      126 SETLIST                          R10 R11 -1 [1]
      128 SETTABLEKS                       R10 R9 K15 ["providers"]
      130 MOVE                             R10 R0
      131 CALL                             R7 3 1
      132 SETTABLEKS                       R7 R6 K12 ["ContextStack"]
      134 CALL                             R4 2 -1
      135 RETURN                           R4 -1

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
       69 GETTABLEKS                       R12 R12 K20 ["Guest"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Src"]
       76 GETTABLEKS                       R13 R13 K15 ["Contexts"]
       78 GETTABLEKS                       R13 R13 K21 ["Networking"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K18 ["Src"]
       85 GETTABLEKS                       R14 R14 K15 ["Contexts"]
       87 GETTABLEKS                       R14 R14 K22 ["Telemetry"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R14 R0 K18 ["Src"]
       92 GETTABLEKS                       R14 R14 K23 ["Resources"]
       94 GETTABLEKS                       R14 R14 K16 ["Localization"]
       96 GETTABLEKS                       R14 R14 K24 ["SourceStrings"]
       98 GETTABLEKS                       R15 R0 K18 ["Src"]
      100 GETTABLEKS                       R15 R15 K23 ["Resources"]
      102 GETTABLEKS                       R15 R15 K16 ["Localization"]
      104 GETTABLEKS                       R15 R15 K25 ["LocalizedStrings"]
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K18 ["Src"]
      110 GETTABLEKS                       R17 R17 K26 ["Util"]
      112 GETTABLEKS                       R17 R17 K27 ["Test"]
      114 GETTABLEKS                       R17 R17 K28 ["Mock"]
      116 GETTABLEKS                       R17 R17 K29 ["mockNetworking"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R6 K26 ["Util"]
      121 GETTABLEKS                       R17 R17 K30 ["createFoundationDesignBinding"]
      123 CALL                             R17 0 1
      124 GETTABLEKS                       R18 R3 K31 ["Styling"]
      126 GETTABLEKS                       R18 R18 K32 ["registerPluginStyles"]
      128 GETIMPORT                        R19 K34 [plugin]
      130 LOADNIL                          R20
      131 LOADNIL                          R21
      132 NEWTABLE                         R22 0 1
      134 MOVE                             R23 R17
      135 SETLIST                          R22 R23 1 [1]
      137 CALL                             R18 4 1
      138 GETTABLEKS                       R19 R0 K18 ["Src"]
      140 GETTABLEKS                       R19 R19 K35 ["Flags"]
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R19 K36 ["getFFlagIAMLiveDebugging"]
      146 CALL                             R20 1 1
      147 NEWTABLE                         R21 0 2
      149 GETTABLEKS                       R22 R5 K17 ["Analytics"]
      151 GETTABLEKS                       R22 R22 K37 ["mock"]
      153 CALL                             R22 0 1
      154 GETTABLEKS                       R23 R5 K38 ["Design"]
      156 GETTABLEKS                       R23 R23 K39 ["new"]
      158 MOVE                             R24 R18
      159 CALL                             R23 1 -1
      160 SETLIST                          R21 R22 -1 [1]
      162 GETTABLEKS                       R22 R8 K16 ["Localization"]
      164 GETTABLEKS                       R22 R22 K39 ["new"]
      166 DUPTABLE                         R23 K45 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      167 SETTABLEKS                       R14 R23 K40 ["stringResourceTable"]
      169 SETTABLEKS                       R15 R23 K41 ["translationResourceTable"]
      171 CALL                             R22 1 1
      172 DUPCLOSURE                       R23 K46 [PROTO_0]
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R13
      187 RETURN                           R23 1
