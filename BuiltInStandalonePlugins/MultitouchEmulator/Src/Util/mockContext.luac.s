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
       33 DUPTABLE                         R10 K14 [{"theme", "device"}]
       34 LOADK                            R11 K15 ["Dark"]
       35 SETTABLEKS                       R11 R10 K12 ["theme"]
       37 LOADK                            R11 K16 ["Desktop"]
       38 SETTABLEKS                       R11 R10 K13 ["device"]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K9 ["createElement"]
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K17 ["MockProvider"]
       47 CALL                             R9 1 -1
       48 SETLIST                          R7 R8 -1 [1]
       50 SETTABLEKS                       R7 R6 K10 ["providers"]
       52 MOVE                             R7 R0
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K7 ["ContextStack"]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MultitouchEmulator"]
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
       52 NEWTABLE                         R10 0 2
       54 GETTABLEKS                       R11 R5 K17 ["Analytics"]
       56 GETTABLEKS                       R11 R11 K18 ["mock"]
       58 CALL                             R11 0 1
       59 GETTABLEKS                       R12 R5 K19 ["Design"]
       61 GETTABLEKS                       R12 R12 K18 ["mock"]
       63 GETIMPORT                        R13 K22 [Instance.new]
       65 LOADK                            R14 K23 ["StyleSheet"]
       66 CALL                             R13 1 -1
       67 CALL                             R12 -1 -1
       68 SETLIST                          R10 R11 -1 [1]
       70 DUPCLOSURE                       R11 K24 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 RETURN                           R11 1
