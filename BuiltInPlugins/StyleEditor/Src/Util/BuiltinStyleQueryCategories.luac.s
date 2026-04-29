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
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Flags"]
       15 GETTABLEKS                       R2 R3 K7 ["getFFlagStyleEditorBuiltinStyleQuery"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R5 R0 K5 ["Src"]
       23 GETTABLEKS                       R4 R5 K6 ["Flags"]
       25 GETTABLEKS                       R3 R4 K8 ["getEngineFeatureStyleQueryPreferredTextSize"]
       27 CALL                             R2 1 1
       28 CALL                             R2 0 1
       29 JUMPIF                           R1 ; [+3]
       30 NEWTABLE                         R3 0 0
       32 RETURN                           R3 1
       33 DUPCLOSURE                       R3 K9 [PROTO_0]
       34 DUPCLOSURE                       R4 K10 [PROTO_1]
       35 DUPCLOSURE                       R5 K11 [PROTO_3]
       36 NEWTABLE                         R6 0 0
       38 GETIMPORT                        R8 K13 [pcall]
       40 LOADK                            R10 K14 ["PreferredInput"]
       41 NEWCLOSURE                       R9 P3
       42 CAPTURE                          VAL R10
       43 CALL                             R8 1 2
       44 JUMPIFNOT                        R8 ; [+2]
       45 MOVE                             R7 R9
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 JUMPIFNOT                        R7 ; [+16]
       49 DUPTABLE                         R10 K17 [{"Name", "Selectors"}]
       50 LOADK                            R11 K14 ["PreferredInput"]
       51 SETTABLEKS                       R11 R10 K15 ["Name"]
       53 MOVE                             R11 R3
       54 LOADK                            R12 K14 ["PreferredInput"]
       55 MOVE                             R13 R7
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K16 ["Selectors"]
       59 FASTCALL2                        TABLE_INSERT R6 R10 ; [+4]
       61 MOVE                             R9 R6
       62 GETIMPORT                        R8 K20 [table.insert]
       64 CALL                             R8 2 0
       65 GETIMPORT                        R9 K13 [pcall]
       67 LOADK                            R11 K21 ["DisplaySize"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R11
       70 CALL                             R9 1 2
       71 JUMPIFNOT                        R9 ; [+2]
       72 MOVE                             R8 R10
       73 JUMP                             ; [+1]
       74 LOADNIL                          R8
       75 JUMPIFNOT                        R8 ; [+16]
       76 DUPTABLE                         R11 K17 [{"Name", "Selectors"}]
       77 LOADK                            R12 K22 ["ViewportDisplaySize"]
       78 SETTABLEKS                       R12 R11 K15 ["Name"]
       80 MOVE                             R12 R3
       81 LOADK                            R13 K22 ["ViewportDisplaySize"]
       82 MOVE                             R14 R8
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K16 ["Selectors"]
       86 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
       88 MOVE                             R10 R6
       89 GETIMPORT                        R9 K20 [table.insert]
       91 CALL                             R9 2 0
       92 DUPTABLE                         R11 K17 [{"Name", "Selectors"}]
       93 LOADK                            R12 K23 ["ReducedMotionEnabled"]
       94 SETTABLEKS                       R12 R11 K15 ["Name"]
       96 NEWTABLE                         R12 0 2
       98 LOADK                            R13 K24 ["@ReducedMotionEnabledTrue"]
       99 LOADK                            R14 K25 ["@ReducedMotionEnabledFalse"]
      100 SETLIST                          R12 R13 2 [1]
      102 SETTABLEKS                       R12 R11 K16 ["Selectors"]
      104 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      106 MOVE                             R10 R6
      107 GETIMPORT                        R9 K20 [table.insert]
      109 CALL                             R9 2 0
      110 JUMPIFNOT                        R2 ; [+27]
      111 GETIMPORT                        R10 K13 [pcall]
      113 LOADK                            R12 K26 ["PreferredTextSize"]
      114 NEWCLOSURE                       R11 P3
      115 CAPTURE                          VAL R12
      116 CALL                             R10 1 2
      117 JUMPIFNOT                        R10 ; [+2]
      118 MOVE                             R9 R11
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 JUMPIFNOT                        R9 ; [+16]
      122 DUPTABLE                         R12 K17 [{"Name", "Selectors"}]
      123 LOADK                            R13 K26 ["PreferredTextSize"]
      124 SETTABLEKS                       R13 R12 K15 ["Name"]
      126 MOVE                             R13 R3
      127 LOADK                            R14 K26 ["PreferredTextSize"]
      128 MOVE                             R15 R9
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K16 ["Selectors"]
      132 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      134 MOVE                             R11 R6
      135 GETIMPORT                        R10 K20 [table.insert]
      137 CALL                             R10 2 0
      138 RETURN                           R6 1
