PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["createElement"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["FoundationProvider"]
       10 DUPTABLE                         R6 K5 [{["theme"], ["device"] = "Desktop"}]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K6 ["Enums"]
       14 GETTABLEKS                       R7 R7 K7 ["Theme"]
       16 GETTABLEKS                       R7 R7 K8 ["Dark"]
       18 SETTABLEKS                       R7 R6 K2 ["theme"]
       20 CALL                             R4 2 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 GETTABLEKS                       R4 R1 K9 ["PreProviders"]
       25 JUMPIFNOT                        R4 ; [+14]
       26 GETTABLEKS                       R4 R1 K9 ["PreProviders"]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       33 MOVE                             R10 R2
       34 MOVE                             R11 R8
       35 GETIMPORT                        R9 K12 [table.insert]
       37 CALL                             R9 2 0
       38 FORGLOOP                         R4 2 ; [-8]
       40 MOVE                             R4 R3
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       46 MOVE                             R10 R2
       47 MOVE                             R11 R8
       48 GETIMPORT                        R9 K12 [table.insert]
       50 CALL                             R9 2 0
       51 FORGLOOP                         R4 2 ; [-8]
       53 GETTABLEKS                       R4 R1 K13 ["Providers"]
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       60 MOVE                             R10 R2
       61 MOVE                             R11 R8
       62 GETIMPORT                        R9 K12 [table.insert]
       64 CALL                             R9 2 0
       65 FORGLOOP                         R4 2 ; [-8]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R4 R4 K14 ["new"]
       70 DUPTABLE                         R5 K17 [{["MockMDI"] = True}]
       71 CALL                             R4 1 1
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K18 ["TestHelpers"]
       75 GETTABLEKS                       R5 R5 K19 ["provideMockContext"]
       77 NEWTABLE                         R6 0 3
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K20 ["ContextServices"]
       82 GETTABLEKS                       R7 R7 K21 ["Analytics"]
       84 GETTABLEKS                       R7 R7 K22 ["mock"]
       86 CALL                             R7 0 1
       87 GETUPVAL                         R8 3
       88 GETTABLEKS                       R8 R8 K20 ["ContextServices"]
       90 GETTABLEKS                       R8 R8 K23 ["Localization"]
       92 GETTABLEKS                       R8 R8 K22 ["mock"]
       94 CALL                             R8 0 1
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K20 ["ContextServices"]
       98 GETTABLEKS                       R9 R9 K24 ["Plugin"]
      100 GETTABLEKS                       R9 R9 K14 ["new"]
      102 MOVE                             R10 R4
      103 CALL                             R9 1 -1
      104 SETLIST                          R6 R7 -1 [1]
      106 DUPTABLE                         R7 K26 [{"ContextStack"}]
      107 GETUPVAL                         R8 0
      108 GETTABLEKS                       R8 R8 K0 ["createElement"]
      110 GETUPVAL                         R9 4
      111 GETTABLEKS                       R9 R9 K25 ["ContextStack"]
      113 DUPTABLE                         R10 K28 [{"providers"}]
      114 SETTABLEKS                       R2 R10 K27 ["providers"]
      116 MOVE                             R11 R0
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K25 ["ContextStack"]
      120 CALL                             R5 2 -1
      121 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Util"]
       39 GETTABLEKS                       R6 R6 K12 ["Tests"]
       41 GETTABLEKS                       R6 R6 K13 ["TestPlugin"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 RETURN                           R6 1
