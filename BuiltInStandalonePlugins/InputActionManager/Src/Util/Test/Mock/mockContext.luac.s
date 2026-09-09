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
       38 NEWTABLE                         R9 0 7
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K11 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K18 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K11 ["createElement"]
       49 GETUPVAL                         R12 6
       50 GETTABLEKS                       R12 R12 K19 ["Provider"]
       52 DUPTABLE                         R13 K21 [{"value"}]
       53 SETTABLEKS                       R1 R13 K20 ["value"]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R13 7
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+10]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K11 ["createElement"]
       62 GETUPVAL                         R13 8
       63 GETTABLEKS                       R13 R13 K19 ["Provider"]
       65 NEWTABLE                         R14 0 0
       67 CALL                             R12 2 1
       68 JUMP                             ; [+9]
       69 GETUPVAL                         R12 3
       70 GETTABLEKS                       R12 R12 K11 ["createElement"]
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R13 R13 K22 ["Fragment"]
       75 NEWTABLE                         R14 0 0
       77 CALL                             R12 2 1
       78 GETUPVAL                         R13 3
       79 GETTABLEKS                       R13 R13 K11 ["createElement"]
       81 GETUPVAL                         R14 9
       82 GETTABLEKS                       R14 R14 K19 ["Provider"]
       84 DUPTABLE                         R15 K21 [{"value"}]
       85 SETTABLEKS                       R2 R15 K20 ["value"]
       87 CALL                             R13 2 1
       88 GETUPVAL                         R14 3
       89 GETTABLEKS                       R14 R14 K11 ["createElement"]
       91 GETUPVAL                         R15 10
       92 GETTABLEKS                       R15 R15 K19 ["Provider"]
       94 DUPTABLE                         R16 K24 [{"localization"}]
       95 GETUPVAL                         R17 11
       96 SETTABLEKS                       R17 R16 K23 ["localization"]
       98 CALL                             R14 2 1
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R15 R15 K11 ["createElement"]
      102 GETUPVAL                         R16 12
      103 GETTABLEKS                       R16 R16 K25 ["AnalyticsTelemetryServiceProvider"]
      105 CALL                             R15 1 1
      106 GETUPVAL                         R16 3
      107 GETTABLEKS                       R16 R16 K11 ["createElement"]
      109 GETUPVAL                         R17 13
      110 GETTABLEKS                       R17 R17 K26 ["MockProvider"]
      112 CALL                             R16 1 -1
      113 SETLIST                          R9 R10 -1 [1]
      115 SETTABLEKS                       R9 R8 K12 ["providers"]
      117 MOVE                             R9 R0
      118 CALL                             R6 3 1
      119 SETTABLEKS                       R6 R5 K9 ["ContextStack"]
      121 CALL                             R3 2 -1
      122 RETURN                           R3 -1

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
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R13
      187 RETURN                           R23 1
