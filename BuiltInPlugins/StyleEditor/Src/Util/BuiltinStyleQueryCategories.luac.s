PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R1 K0 ["GetEnumItems"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R11 K1 ["@"]
        7 MOVE                             R12 R0
        8 GETTABLEKS                       R13 R7 K2 ["Name"]
       10 CONCAT                           R10 R11 R13
       11 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K5 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 2
        2 LOADK                            R3 K0 ["@"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["True"]
        5 CONCAT                           R2 R3 R5
        6 LOADK                            R4 K0 ["@"]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K2 ["False"]
        9 CONCAT                           R3 R4 R6
       10 SETLIST                          R1 R2 2 [1]
       12 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [Enum]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStyleEditorBuiltinStyleQuery"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R3 R0 K5 ["Src"]
       23 GETTABLEKS                       R3 R3 K6 ["Flags"]
       25 GETTABLEKS                       R3 R3 K8 ["getEngineFeatureStyleQueryPreferredTextSize"]
       27 CALL                             R2 1 1
       28 CALL                             R2 0 1
       29 JUMPIF                           R1 ; [+3]
       30 NEWTABLE                         R3 0 0
       32 RETURN                           R3 1
       33 DUPCLOSURE                       R3 K9 [PROTO_0]
       34 DUPCLOSURE                       R4 K10 [PROTO_1]
       35 DUPCLOSURE                       R5 K11 [PROTO_3]
       36 NEWTABLE                         R6 0 0
       38 LOADK                            R10 K12 ["PreferredInput"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R10
       41 FASTPCALL                        pcall 1 ; [+2]
       42 GETIMPORT                        R8 K14 [pcall]
       44 CALL                             R8 1 2
       45 JUMPIFNOT                        R8 ; [+2]
       46 MOVE                             R7 R9
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 JUMPIFNOT                        R7 ; [+13]
       50 DUPTABLE                         R10 K17 [{["Name"] = "PreferredInput", ["Selectors"]}]
       51 MOVE                             R11 R3
       52 LOADK                            R12 K12 ["PreferredInput"]
       53 MOVE                             R13 R7
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K16 ["Selectors"]
       57 FASTCALL2                        TABLE_INSERT R6 R10 ; [+4]
       59 MOVE                             R9 R6
       60 GETIMPORT                        R8 K20 [table.insert]
       62 CALL                             R8 2 0
       63 LOADK                            R11 K21 ["DisplaySize"]
       64 NEWCLOSURE                       R10 P3
       65 CAPTURE                          VAL R11
       66 FASTPCALL                        pcall 1 ; [+2]
       67 GETIMPORT                        R9 K14 [pcall]
       69 CALL                             R9 1 2
       70 JUMPIFNOT                        R9 ; [+2]
       71 MOVE                             R8 R10
       72 JUMP                             ; [+1]
       73 LOADNIL                          R8
       74 JUMPIFNOT                        R8 ; [+13]
       75 DUPTABLE                         R11 K23 [{["Name"] = "ViewportDisplaySize", ["Selectors"]}]
       76 MOVE                             R12 R3
       77 LOADK                            R13 K22 ["ViewportDisplaySize"]
       78 MOVE                             R14 R8
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K16 ["Selectors"]
       82 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
       84 MOVE                             R10 R6
       85 GETIMPORT                        R9 K20 [table.insert]
       87 CALL                             R9 2 0
       88 DUPTABLE                         R11 K25 [{["Name"] = "ReducedMotionEnabled", ["Selectors"]}]
       89 NEWTABLE                         R12 0 2
       91 LOADK                            R13 K26 ["@ReducedMotionEnabledTrue"]
       92 LOADK                            R14 K27 ["@ReducedMotionEnabledFalse"]
       93 SETLIST                          R12 R13 2 [1]
       95 SETTABLEKS                       R12 R11 K16 ["Selectors"]
       97 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
       99 MOVE                             R10 R6
      100 GETIMPORT                        R9 K20 [table.insert]
      102 CALL                             R9 2 0
      103 JUMPIFNOT                        R2 ; [+25]
      104 LOADK                            R12 K28 ["PreferredTextSize"]
      105 NEWCLOSURE                       R11 P3
      106 CAPTURE                          VAL R12
      107 FASTPCALL                        pcall 1 ; [+2]
      108 GETIMPORT                        R10 K14 [pcall]
      110 CALL                             R10 1 2
      111 JUMPIFNOT                        R10 ; [+2]
      112 MOVE                             R9 R11
      113 JUMP                             ; [+1]
      114 LOADNIL                          R9
      115 JUMPIFNOT                        R9 ; [+13]
      116 DUPTABLE                         R12 K29 [{["Name"] = "PreferredTextSize", ["Selectors"]}]
      117 MOVE                             R13 R3
      118 LOADK                            R14 K28 ["PreferredTextSize"]
      119 MOVE                             R15 R9
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K16 ["Selectors"]
      123 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      125 MOVE                             R11 R6
      126 GETIMPORT                        R10 K20 [table.insert]
      128 CALL                             R10 2 0
      129 RETURN                           R6 1
