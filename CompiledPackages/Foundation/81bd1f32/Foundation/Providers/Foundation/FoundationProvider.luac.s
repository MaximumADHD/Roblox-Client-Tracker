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
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K2 ["createElement"]
       19 GETUPVAL                         R4 1
       20 DUPTABLE                         R5 K4 [{"providers"}]
       21 NEWTABLE                         R6 0 6
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K2 ["createElement"]
       26 GETUPVAL                         R8 2
       27 LOADNIL                          R9
       28 CALL                             R7 2 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K2 ["createElement"]
       32 GETUPVAL                         R9 3
       33 MOVE                             R10 R1
       34 CALL                             R8 2 1
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K2 ["createElement"]
       38 GETUPVAL                         R10 4
       39 DUPTABLE                         R11 K9 [{"theme", "device", "derives", "scale"}]
       40 GETTABLEKS                       R12 R0 K5 ["theme"]
       42 SETTABLEKS                       R12 R11 K5 ["theme"]
       44 GETTABLEKS                       R12 R0 K6 ["device"]
       46 SETTABLEKS                       R12 R11 K6 ["device"]
       48 GETTABLEKS                       R12 R0 K7 ["derives"]
       50 SETTABLEKS                       R12 R11 K7 ["derives"]
       52 GETTABLEKS                       R12 R1 K8 ["scale"]
       54 SETTABLEKS                       R12 R11 K8 ["scale"]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R10 R11 K2 ["createElement"]
       60 GETUPVAL                         R11 5
       61 DUPTABLE                         R12 K11 [{"config"}]
       62 SETTABLEKS                       R2 R12 K10 ["config"]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K2 ["createElement"]
       68 GETUPVAL                         R12 6
       69 GETUPVAL                         R15 7
       70 GETTABLEKS                       R14 R15 K12 ["FoundationOverlayDisplayOrder"]
       72 JUMPIFNOT                        R14 ; [+16]
       73 GETTABLEKS                       R15 R0 K13 ["overlayGui"]
       75 FASTCALL1                        TYPEOF R15 ; [+2]
       76 GETIMPORT                        R14 K15 [typeof]
       78 CALL                             R14 1 1
       79 JUMPIFNOTEQKS                    R14 K16 ["table"] ; [+9]
       81 DUPTABLE                         R13 K18 [{"DisplayOrder"}]
       82 GETTABLEKS                       R15 R0 K13 ["overlayGui"]
       84 GETTABLEKS                       R14 R15 K17 ["DisplayOrder"]
       86 SETTABLEKS                       R14 R13 K17 ["DisplayOrder"]
       88 JUMP                             ; [+5]
       89 DUPTABLE                         R13 K20 [{"gui"}]
       90 GETTABLEKS                       R14 R0 K13 ["overlayGui"]
       92 SETTABLEKS                       R14 R13 K19 ["gui"]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R12 R13 K2 ["createElement"]
       98 GETUPVAL                         R13 8
       99 CALL                             R12 1 -1
      100 SETLIST                          R6 R7 -1 [1]
      102 SETTABLEKS                       R6 R5 K3 ["providers"]
      104 GETTABLEKS                       R6 R0 K21 ["children"]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R2 K5 ["React"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R2 K6 ["ReactUtils"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K7 ["ContextStack"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Cursor"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Overlay"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Preferences"]
       37 GETTABLEKS                       R8 R9 K11 ["PreferencesProvider"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R10 R0 K12 ["Responsive"]
       44 GETTABLEKS                       R9 R10 K13 ["ResponsiveContext"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R11 R0 K12 ["Responsive"]
       51 GETTABLEKS                       R10 R11 K14 ["ResponsiveProvider"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R12 R0 K15 ["Style"]
       58 GETTABLEKS                       R11 R12 K16 ["StyleProvider"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R13 R1 K17 ["Components"]
       65 GETTABLEKS                       R12 R13 K18 ["Types"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R13 K4 [require]
       70 GETTABLEKS                       R15 R0 K19 ["Elevation"]
       72 GETTABLEKS                       R14 R15 K20 ["ElevationProvider"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R12 R13 K20 ["ElevationProvider"]
       77 GETIMPORT                        R13 K4 [require]
       79 GETTABLEKS                       R15 R1 K21 ["Utility"]
       81 GETTABLEKS                       R14 R15 K22 ["Flags"]
       83 CALL                             R13 1 1
       84 DUPCLOSURE                       R14 K23 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 RETURN                           R14 1
