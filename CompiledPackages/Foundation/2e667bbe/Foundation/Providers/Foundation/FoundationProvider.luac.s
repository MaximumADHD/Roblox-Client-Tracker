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
       21 NEWTABLE                         R6 0 5
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K2 ["createElement"]
       26 GETUPVAL                         R8 2
       27 MOVE                             R9 R1
       28 CALL                             R7 2 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K2 ["createElement"]
       32 GETUPVAL                         R9 3
       33 DUPTABLE                         R10 K9 [{"theme", "device", "derives", "scale"}]
       34 GETTABLEKS                       R11 R0 K5 ["theme"]
       36 SETTABLEKS                       R11 R10 K5 ["theme"]
       38 GETTABLEKS                       R11 R0 K6 ["device"]
       40 SETTABLEKS                       R11 R10 K6 ["device"]
       42 GETTABLEKS                       R11 R0 K7 ["derives"]
       44 SETTABLEKS                       R11 R10 K7 ["derives"]
       46 GETTABLEKS                       R11 R1 K8 ["scale"]
       48 SETTABLEKS                       R11 R10 K8 ["scale"]
       50 CALL                             R8 2 1
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R9 R10 K2 ["createElement"]
       54 GETUPVAL                         R10 4
       55 DUPTABLE                         R11 K11 [{"config"}]
       56 SETTABLEKS                       R2 R11 K10 ["config"]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R10 R11 K2 ["createElement"]
       62 GETUPVAL                         R11 5
       63 DUPTABLE                         R12 K13 [{"gui"}]
       64 GETTABLEKS                       R13 R0 K14 ["overlayGui"]
       66 SETTABLEKS                       R13 R12 K12 ["gui"]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R11 R12 K2 ["createElement"]
       72 GETUPVAL                         R12 6
       73 CALL                             R11 1 -1
       74 SETLIST                          R6 R7 -1 [1]
       76 SETTABLEKS                       R6 R5 K3 ["providers"]
       78 GETTABLEKS                       R6 R0 K15 ["children"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

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
       25 GETTABLEKS                       R7 R0 K8 ["Preferences"]
       27 GETTABLEKS                       R6 R7 K9 ["PreferencesProvider"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Style"]
       34 GETTABLEKS                       R7 R8 K11 ["StyleProvider"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Cursor"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Overlay"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Responsive"]
       51 GETTABLEKS                       R10 R11 K15 ["ResponsiveContext"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R12 R0 K14 ["Responsive"]
       58 GETTABLEKS                       R11 R12 K16 ["ResponsiveProvider"]
       60 CALL                             R10 1 1
       61 DUPCLOSURE                       R11 K17 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 RETURN                           R11 1
