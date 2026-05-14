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
       21 NEWTABLE                         R6 0 6
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K2 ["createElement"]
       26 GETUPVAL                         R8 2
       27 LOADNIL                          R9
       28 CALL                             R7 2 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K2 ["createElement"]
       32 GETUPVAL                         R9 3
       33 MOVE                             R10 R1
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K2 ["createElement"]
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
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K2 ["createElement"]
       60 GETUPVAL                         R11 5
       61 DUPTABLE                         R12 K11 [{"config"}]
       62 SETTABLEKS                       R2 R12 K10 ["config"]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K2 ["createElement"]
       68 GETUPVAL                         R12 6
       69 DUPTABLE                         R13 K13 [{"gui"}]
       70 GETTABLEKS                       R14 R0 K14 ["overlayGui"]
       72 SETTABLEKS                       R14 R13 K12 ["gui"]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K2 ["createElement"]
       78 GETUPVAL                         R13 7
       79 CALL                             R12 1 -1
       80 SETLIST                          R6 R7 -1 [1]
       82 SETTABLEKS                       R6 R5 K3 ["providers"]
       84 GETTABLEKS                       R6 R0 K15 ["children"]
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

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
       25 GETTABLEKS                       R6 R0 K8 ["Preferences"]
       27 GETTABLEKS                       R6 R6 K9 ["PreferencesProvider"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Style"]
       34 GETTABLEKS                       R7 R7 K11 ["StyleProvider"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Cursor"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Overlay"]
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
       63 GETTABLEKS                       R12 R0 K17 ["Elevation"]
       65 GETTABLEKS                       R12 R12 K18 ["ElevationProvider"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R11 R11 K18 ["ElevationProvider"]
       70 DUPCLOSURE                       R12 K19 [PROTO_0]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 RETURN                           R12 1
