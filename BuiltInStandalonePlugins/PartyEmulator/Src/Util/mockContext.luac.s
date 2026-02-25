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
       16 GETTABLEKS                       R1 R2 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 DUPTABLE                         R3 K8 [{"FoundationProvider"}]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K9 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K12 [{"theme", "device"}]
       25 LOADK                            R7 K13 ["Dark"]
       26 SETTABLEKS                       R7 R6 K10 ["theme"]
       28 LOADK                            R7 K14 ["Desktop"]
       29 SETTABLEKS                       R7 R6 K11 ["device"]
       31 DUPTABLE                         R7 K16 [{"PartyContextProvider"}]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K9 ["createElement"]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R9 R10 K17 ["provider"]
       38 NEWTABLE                         R10 0 0
       40 MOVE                             R11 R0
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K15 ["PartyContextProvider"]
       44 CALL                             R4 3 1
       45 SETTABLEKS                       R4 R3 K7 ["FoundationProvider"]
       47 CALL                             R1 2 -1
       48 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["TestHelpers"]
       23 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Foundation"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["FoundationProvider"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R10 R0 K13 ["Src"]
       38 GETTABLEKS                       R9 R10 K14 ["Util"]
       40 GETTABLEKS                       R8 R9 K15 ["mockPartyContext"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R11 R0 K13 ["Src"]
       45 GETTABLEKS                       R10 R11 K16 ["Resources"]
       47 GETTABLEKS                       R9 R10 K17 ["Localization"]
       49 GETTABLEKS                       R8 R9 K18 ["SourceStrings"]
       51 GETTABLEKS                       R12 R0 K13 ["Src"]
       53 GETTABLEKS                       R11 R12 K16 ["Resources"]
       55 GETTABLEKS                       R10 R11 K17 ["Localization"]
       57 GETTABLEKS                       R9 R10 K19 ["LocalizedStrings"]
       59 NEWTABLE                         R10 0 3
       61 GETTABLEKS                       R12 R4 K20 ["Analytics"]
       63 GETTABLEKS                       R11 R12 K21 ["mock"]
       65 CALL                             R11 0 1
       66 GETTABLEKS                       R13 R4 K17 ["Localization"]
       68 GETTABLEKS                       R12 R13 K21 ["mock"]
       70 DUPTABLE                         R13 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       71 SETTABLEKS                       R8 R13 K22 ["stringResourceTable"]
       73 SETTABLEKS                       R9 R13 K23 ["translationResourceTable"]
       75 LOADK                            R14 K2 ["PartyEmulator"]
       76 SETTABLEKS                       R14 R13 K24 ["pluginName"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R14 R4 K26 ["Design"]
       81 GETTABLEKS                       R13 R14 K21 ["mock"]
       83 GETIMPORT                        R14 K29 [Instance.new]
       85 LOADK                            R15 K30 ["StyleSheet"]
       86 CALL                             R14 1 -1
       87 CALL                             R13 -1 -1
       88 SETLIST                          R10 R11 -1 [1]
       90 DUPCLOSURE                       R11 K31 [PROTO_0]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 RETURN                           R11 1
