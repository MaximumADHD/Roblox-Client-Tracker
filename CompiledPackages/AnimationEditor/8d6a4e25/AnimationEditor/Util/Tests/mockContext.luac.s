PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["createElement"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["FoundationProvider"]
       10 DUPTABLE                         R6 K4 [{"theme", "device"}]
       11 GETUPVAL                         R10 1
       12 GETTABLEKS                       R9 R10 K5 ["Enums"]
       14 GETTABLEKS                       R8 R9 K6 ["Theme"]
       16 GETTABLEKS                       R7 R8 K7 ["Dark"]
       18 SETTABLEKS                       R7 R6 K2 ["theme"]
       20 LOADK                            R7 K8 ["Desktop"]
       21 SETTABLEKS                       R7 R6 K3 ["device"]
       23 CALL                             R4 2 -1
       24 SETLIST                          R3 R4 -1 [1]
       26 GETTABLEKS                       R4 R1 K9 ["PreProviders"]
       28 JUMPIFNOT                        R4 ; [+14]
       29 GETTABLEKS                       R4 R1 K9 ["PreProviders"]
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R8
       38 GETIMPORT                        R9 K12 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-8]
       43 MOVE                             R4 R3
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       49 MOVE                             R10 R2
       50 MOVE                             R11 R8
       51 GETIMPORT                        R9 K12 [table.insert]
       53 CALL                             R9 2 0
       54 FORGLOOP                         R4 2 ; [-8]
       56 GETTABLEKS                       R4 R1 K13 ["Providers"]
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 FORGPREP                         R4
       61 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       63 MOVE                             R10 R2
       64 MOVE                             R11 R8
       65 GETIMPORT                        R9 K12 [table.insert]
       67 CALL                             R9 2 0
       68 FORGLOOP                         R4 2 ; [-8]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R4 R5 K14 ["new"]
       73 CALL                             R4 0 1
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R6 R7 K15 ["TestHelpers"]
       77 GETTABLEKS                       R5 R6 K16 ["provideMockContext"]
       79 NEWTABLE                         R6 0 3
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R9 R10 K17 ["ContextServices"]
       84 GETTABLEKS                       R8 R9 K18 ["Analytics"]
       86 GETTABLEKS                       R7 R8 K19 ["mock"]
       88 CALL                             R7 0 1
       89 GETUPVAL                         R11 3
       90 GETTABLEKS                       R10 R11 K17 ["ContextServices"]
       92 GETTABLEKS                       R9 R10 K20 ["Localization"]
       94 GETTABLEKS                       R8 R9 K19 ["mock"]
       96 CALL                             R8 0 1
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R11 R12 K17 ["ContextServices"]
      100 GETTABLEKS                       R10 R11 K21 ["Plugin"]
      102 GETTABLEKS                       R9 R10 K14 ["new"]
      104 MOVE                             R10 R4
      105 CALL                             R9 1 -1
      106 SETLIST                          R6 R7 -1 [1]
      108 DUPTABLE                         R7 K23 [{"ContextStack"}]
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R8 R9 K0 ["createElement"]
      112 GETUPVAL                         R10 4
      113 GETTABLEKS                       R9 R10 K22 ["ContextStack"]
      115 DUPTABLE                         R10 K25 [{"providers"}]
      116 SETTABLEKS                       R2 R10 K24 ["providers"]
      118 MOVE                             R11 R0
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K22 ["ContextStack"]
      122 CALL                             R5 2 -1
      123 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Util"]
       39 GETTABLEKS                       R7 R8 K12 ["Tests"]
       41 GETTABLEKS                       R6 R7 K13 ["TestPlugin"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 RETURN                           R6 1
