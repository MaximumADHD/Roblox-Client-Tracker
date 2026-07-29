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
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 DUPTABLE                         R3 K8 [{"ContextStack"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K9 ["createElement"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["ContextStack"]
       26 DUPTABLE                         R6 K11 [{"providers"}]
       27 NEWTABLE                         R7 0 2
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K9 ["createElement"]
       32 GETUPVAL                         R9 4
       33 DUPTABLE                         R10 K16 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K9 ["createElement"]
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R10 R10 K17 ["Provider"]
       41 DUPTABLE                         R11 K19 [{"localization"}]
       42 GETUPVAL                         R12 6
       43 SETTABLEKS                       R12 R11 K18 ["localization"]
       45 CALL                             R9 2 -1
       46 SETLIST                          R7 R8 -1 [1]
       48 SETTABLEKS                       R7 R6 K10 ["providers"]
       50 MOVE                             R7 R0
       51 CALL                             R4 3 1
       52 SETTABLEKS                       R4 R3 K7 ["ContextStack"]
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
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
       36 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K13 ["FoundationProvider"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Packages"]
       45 GETTABLEKS                       R9 R9 K14 ["StudioFoundation"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R8 K15 ["Contexts"]
       50 GETTABLEKS                       R9 R9 K16 ["Localization"]
       52 GETTABLEKS                       R10 R0 K17 ["Src"]
       54 GETTABLEKS                       R10 R10 K18 ["Resources"]
       56 GETTABLEKS                       R10 R10 K16 ["Localization"]
       58 GETTABLEKS                       R10 R10 K19 ["SourceStrings"]
       60 GETTABLEKS                       R11 R0 K17 ["Src"]
       62 GETTABLEKS                       R11 R11 K18 ["Resources"]
       64 GETTABLEKS                       R11 R11 K16 ["Localization"]
       66 GETTABLEKS                       R11 R11 K20 ["LocalizedStrings"]
       68 NEWTABLE                         R12 0 2
       70 GETTABLEKS                       R13 R5 K21 ["Analytics"]
       72 GETTABLEKS                       R13 R13 K22 ["mock"]
       74 CALL                             R13 0 1
       75 GETTABLEKS                       R14 R5 K23 ["Design"]
       77 GETTABLEKS                       R14 R14 K22 ["mock"]
       79 GETIMPORT                        R15 K26 [Instance.new]
       81 LOADK                            R16 K27 ["StyleSheet"]
       82 CALL                             R15 1 -1
       83 CALL                             R14 -1 -1
       84 SETLIST                          R12 R13 -1 [1]
       86 GETTABLEKS                       R13 R9 K16 ["Localization"]
       88 GETTABLEKS                       R13 R13 K25 ["new"]
       90 DUPTABLE                         R14 K33 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "LoginPage", ["overrideLocaleId"] = "en-us"}]
       91 SETTABLEKS                       R10 R14 K28 ["stringResourceTable"]
       93 SETTABLEKS                       R11 R14 K29 ["translationResourceTable"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K34 [PROTO_0]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R13
      104 RETURN                           R14 1
