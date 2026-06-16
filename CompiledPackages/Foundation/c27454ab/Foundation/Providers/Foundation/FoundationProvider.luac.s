PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["preferences"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["preferences"]
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R3 R0 K1 ["responsiveConfig"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R0 K1 ["responsiveConfig"]
       13 JUMP                             ; [+2]
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["createElement"]
       19 GETUPVAL                         R4 1
       20 DUPTABLE                         R5 K4 [{"providers"}]
       21 NEWTABLE                         R6 0 7
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K2 ["createElement"]
       26 GETUPVAL                         R8 2
       27 DUPTABLE                         R9 K6 [{"plugin"}]
       28 GETTABLEKS                       R10 R0 K5 ["plugin"]
       30 SETTABLEKS                       R10 R9 K5 ["plugin"]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K2 ["createElement"]
       36 GETUPVAL                         R9 3
       37 LOADNIL                          R10
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K2 ["createElement"]
       42 GETUPVAL                         R10 4
       43 MOVE                             R11 R1
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K2 ["createElement"]
       48 GETUPVAL                         R11 5
       49 DUPTABLE                         R12 K11 [{"theme", "device", "derives", "scale"}]
       50 GETTABLEKS                       R13 R0 K7 ["theme"]
       52 SETTABLEKS                       R13 R12 K7 ["theme"]
       54 GETTABLEKS                       R13 R0 K8 ["device"]
       56 SETTABLEKS                       R13 R12 K8 ["device"]
       58 GETTABLEKS                       R13 R0 K9 ["derives"]
       60 SETTABLEKS                       R13 R12 K9 ["derives"]
       62 GETTABLEKS                       R13 R1 K10 ["scale"]
       64 SETTABLEKS                       R13 R12 K10 ["scale"]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K2 ["createElement"]
       70 GETUPVAL                         R12 6
       71 DUPTABLE                         R13 K13 [{"config"}]
       72 SETTABLEKS                       R2 R13 K12 ["config"]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K2 ["createElement"]
       78 GETUPVAL                         R13 7
       79 GETUPVAL                         R15 8
       80 GETTABLEKS                       R15 R15 K14 ["FoundationOverlayDisplayOrder"]
       82 JUMPIFNOT                        R15 ; [+16]
       83 GETTABLEKS                       R16 R0 K15 ["overlayGui"]
       85 FASTCALL1                        TYPEOF R16 ; [+2]
       86 GETIMPORT                        R15 K17 [typeof]
       88 CALL                             R15 1 1
       89 JUMPIFNOTEQKS                    R15 K18 ["table"] ; [+9]
       91 DUPTABLE                         R14 K20 [{"DisplayOrder"}]
       92 GETTABLEKS                       R15 R0 K15 ["overlayGui"]
       94 GETTABLEKS                       R15 R15 K19 ["DisplayOrder"]
       96 SETTABLEKS                       R15 R14 K19 ["DisplayOrder"]
       98 JUMP                             ; [+5]
       99 DUPTABLE                         R14 K22 [{"gui"}]
      100 GETTABLEKS                       R15 R0 K15 ["overlayGui"]
      102 SETTABLEKS                       R15 R14 K21 ["gui"]
      104 CALL                             R12 2 1
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K2 ["createElement"]
      108 GETUPVAL                         R14 9
      109 CALL                             R13 1 -1
      110 SETLIST                          R6 R7 -1 [1]
      112 SETTABLEKS                       R6 R5 K3 ["providers"]
      114 GETTABLEKS                       R6 R0 K23 ["children"]
      116 CALL                             R3 3 -1
      117 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R2 K5 ["React"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R2 K6 ["ReactUtils"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K7 ["ContextStack"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Cursor"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Overlay"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R8 R0 K10 ["Plugin"]
       37 GETTABLEKS                       R8 R8 K11 ["PluginProvider"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Preferences"]
       44 GETTABLEKS                       R9 R9 K13 ["PreferencesProvider"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Responsive"]
       51 GETTABLEKS                       R10 R10 K15 ["ResponsiveContext"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Responsive"]
       58 GETTABLEKS                       R11 R11 K16 ["ResponsiveProvider"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Style"]
       65 GETTABLEKS                       R12 R12 K18 ["StyleProvider"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R13 R1 K19 ["Components"]
       72 GETTABLEKS                       R13 R13 K20 ["Types"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R14 R0 K21 ["Elevation"]
       79 GETTABLEKS                       R14 R14 K22 ["ElevationProvider"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R13 R13 K22 ["ElevationProvider"]
       84 GETIMPORT                        R14 K4 [require]
       86 GETTABLEKS                       R15 R1 K23 ["Utility"]
       88 GETTABLEKS                       R15 R15 K24 ["Flags"]
       90 CALL                             R14 1 1
       91 DUPCLOSURE                       R15 K25 [PROTO_0]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R5
      102 RETURN                           R15 1
