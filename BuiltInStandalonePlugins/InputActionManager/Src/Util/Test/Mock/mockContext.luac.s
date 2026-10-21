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
       50 GETUPVAL                         R12 6
       51 CALL                             R12 0 1
       52 JUMPIFNOT                        R12 ; [+8]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R11 R11 K13 ["createElement"]
       56 GETUPVAL                         R12 7
       57 GETTABLEKS                       R12 R12 K8 ["MockProvider"]
       59 CALL                             R11 1 1
       60 JUMP                             ; [+7]
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K13 ["createElement"]
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R12 R12 K16 ["Fragment"]
       67 CALL                             R11 1 1
       68 GETUPVAL                         R12 4
       69 GETTABLEKS                       R12 R12 K13 ["createElement"]
       71 GETUPVAL                         R13 8
       72 DUPTABLE                         R14 K21 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R13 R13 K13 ["createElement"]
       77 GETUPVAL                         R14 9
       78 GETTABLEKS                       R14 R14 K22 ["Provider"]
       80 DUPTABLE                         R15 K24 [{"value"}]
       81 SETTABLEKS                       R1 R15 K23 ["value"]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K13 ["createElement"]
       87 MOVE                             R15 R3
       88 CALL                             R14 1 1
       89 GETUPVAL                         R15 4
       90 GETTABLEKS                       R15 R15 K13 ["createElement"]
       92 GETUPVAL                         R16 10
       93 GETTABLEKS                       R16 R16 K22 ["Provider"]
       95 DUPTABLE                         R17 K24 [{"value"}]
       96 SETTABLEKS                       R2 R17 K23 ["value"]
       98 CALL                             R15 2 1
       99 GETUPVAL                         R16 4
      100 GETTABLEKS                       R16 R16 K13 ["createElement"]
      102 GETUPVAL                         R17 11
      103 GETTABLEKS                       R17 R17 K22 ["Provider"]
      105 DUPTABLE                         R18 K26 [{"localization"}]
      106 GETUPVAL                         R19 12
      107 SETTABLEKS                       R19 R18 K25 ["localization"]
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 4
      111 GETTABLEKS                       R17 R17 K13 ["createElement"]
      113 GETUPVAL                         R18 13
      114 GETTABLEKS                       R18 R18 K27 ["AnalyticsTelemetryServiceProvider"]
      116 CALL                             R17 1 1
      117 GETUPVAL                         R18 4
      118 GETTABLEKS                       R18 R18 K13 ["createElement"]
      120 GETUPVAL                         R19 14
      121 GETTABLEKS                       R19 R19 K8 ["MockProvider"]
      123 CALL                             R18 1 1
      124 GETUPVAL                         R19 4
      125 GETTABLEKS                       R19 R19 K13 ["createElement"]
      127 GETUPVAL                         R20 15
      128 GETTABLEKS                       R20 R20 K22 ["Provider"]
      130 NEWTABLE                         R21 0 0
      132 CALL                             R19 2 -1
      133 SETLIST                          R10 R11 -1 [1]
      135 SETTABLEKS                       R10 R9 K14 ["providers"]
      137 MOVE                             R10 R0
      138 CALL                             R7 3 1
      139 SETTABLEKS                       R7 R6 K11 ["ContextStack"]
      141 CALL                             R4 2 -1
      142 RETURN                           R4 -1

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
      137 GETTABLEKS                       R19 R0 K18 ["Src"]
      139 GETTABLEKS                       R19 R19 K32 ["Flags"]
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R19 K33 ["getFFlagIAMSavedFilters"]
      145 CALL                             R20 1 1
      146 GETTABLEKS                       R21 R6 K28 ["Util"]
      148 GETTABLEKS                       R21 R21 K34 ["createFoundationDesignBinding"]
      150 CALL                             R21 0 1
      151 GETTABLEKS                       R22 R3 K35 ["Styling"]
      153 GETTABLEKS                       R22 R22 K36 ["registerPluginStyles"]
      155 GETIMPORT                        R23 K38 [plugin]
      157 LOADNIL                          R24
      158 LOADNIL                          R25
      159 NEWTABLE                         R26 0 1
      161 MOVE                             R27 R21
      162 SETLIST                          R26 R27 1 [1]
      164 CALL                             R22 4 1
      165 NEWTABLE                         R23 0 2
      167 GETTABLEKS                       R24 R5 K17 ["Analytics"]
      169 GETTABLEKS                       R24 R24 K39 ["mock"]
      171 CALL                             R24 0 1
      172 GETTABLEKS                       R25 R5 K40 ["Design"]
      174 GETTABLEKS                       R25 R25 K41 ["new"]
      176 MOVE                             R26 R22
      177 CALL                             R25 1 -1
      178 SETLIST                          R23 R24 -1 [1]
      180 GETTABLEKS                       R24 R8 K16 ["Localization"]
      182 GETTABLEKS                       R24 R24 K41 ["new"]
      184 DUPTABLE                         R25 K47 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager", ["overrideLocaleId"] = "en-us"}]
      185 SETTABLEKS                       R16 R25 K42 ["stringResourceTable"]
      187 SETTABLEKS                       R17 R25 K43 ["translationResourceTable"]
      189 CALL                             R24 1 1
      190 DUPCLOSURE                       R25 K48 [PROTO_0]
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R11
      207 RETURN                           R25 1
