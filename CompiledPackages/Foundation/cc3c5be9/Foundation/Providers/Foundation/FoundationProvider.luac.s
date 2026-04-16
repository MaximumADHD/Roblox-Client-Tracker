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
       16 NEWTABLE                         R3 0 7
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["createElement"]
       21 GETUPVAL                         R5 1
       22 DUPTABLE                         R6 K4 [{"plugin"}]
       23 GETTABLEKS                       R7 R0 K3 ["plugin"]
       25 SETTABLEKS                       R7 R6 K3 ["plugin"]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K2 ["createElement"]
       31 GETUPVAL                         R6 2
       32 LOADNIL                          R7
       33 CALL                             R5 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K2 ["createElement"]
       37 GETUPVAL                         R7 3
       38 MOVE                             R8 R1
       39 CALL                             R6 2 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K2 ["createElement"]
       43 GETUPVAL                         R8 4
       44 DUPTABLE                         R9 K9 [{"theme", "device", "derives", "scale"}]
       45 GETTABLEKS                       R10 R0 K5 ["theme"]
       47 SETTABLEKS                       R10 R9 K5 ["theme"]
       49 GETTABLEKS                       R10 R0 K6 ["device"]
       51 SETTABLEKS                       R10 R9 K6 ["device"]
       53 GETTABLEKS                       R10 R0 K7 ["derives"]
       55 SETTABLEKS                       R10 R9 K7 ["derives"]
       57 GETTABLEKS                       R10 R1 K8 ["scale"]
       59 SETTABLEKS                       R10 R9 K8 ["scale"]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R8 R9 K2 ["createElement"]
       65 GETUPVAL                         R9 5
       66 DUPTABLE                         R10 K11 [{"config"}]
       67 SETTABLEKS                       R2 R10 K10 ["config"]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R9 R10 K2 ["createElement"]
       73 GETUPVAL                         R10 6
       74 GETUPVAL                         R13 7
       75 GETTABLEKS                       R12 R13 K12 ["FoundationOverlayDisplayOrder"]
       77 JUMPIFNOT                        R12 ; [+16]
       78 GETTABLEKS                       R13 R0 K13 ["overlayGui"]
       80 FASTCALL1                        TYPEOF R13 ; [+2]
       81 GETIMPORT                        R12 K15 [typeof]
       83 CALL                             R12 1 1
       84 JUMPIFNOTEQKS                    R12 K16 ["table"] ; [+9]
       86 DUPTABLE                         R11 K18 [{"DisplayOrder"}]
       87 GETTABLEKS                       R13 R0 K13 ["overlayGui"]
       89 GETTABLEKS                       R12 R13 K17 ["DisplayOrder"]
       91 SETTABLEKS                       R12 R11 K17 ["DisplayOrder"]
       93 JUMP                             ; [+5]
       94 DUPTABLE                         R11 K20 [{"gui"}]
       95 GETTABLEKS                       R12 R0 K13 ["overlayGui"]
       97 SETTABLEKS                       R12 R11 K19 ["gui"]
       99 CALL                             R9 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R10 R11 K2 ["createElement"]
      103 GETUPVAL                         R11 8
      104 CALL                             R10 1 -1
      105 SETLIST                          R3 R4 -1 [1]
      107 GETTABLEKS                       R4 R0 K3 ["plugin"]
      109 JUMPIFNOT                        R4 ; [+28]
      110 GETUPVAL                         R5 7
      111 GETTABLEKS                       R4 R5 K21 ["FoundationPopoverPluginSupport"]
      113 JUMPIFNOT                        R4 ; [+24]
      114 MOVE                             R5 R3
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R6 R7 K2 ["createElement"]
      118 GETUPVAL                         R7 9
      119 NEWTABLE                         R8 0 0
      121 CALL                             R6 2 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R4 K23 [table.insert]
      125 CALL                             R4 -1 0
      126 MOVE                             R5 R3
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R6 R7 K2 ["createElement"]
      130 GETUPVAL                         R7 10
      131 NEWTABLE                         R8 0 0
      133 CALL                             R6 2 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R4 K23 [table.insert]
      137 CALL                             R4 -1 0
      138 GETUPVAL                         R5 0
      139 GETTABLEKS                       R4 R5 K2 ["createElement"]
      141 GETUPVAL                         R5 11
      142 DUPTABLE                         R6 K25 [{"providers"}]
      143 SETTABLEKS                       R3 R6 K24 ["providers"]
      145 GETTABLEKS                       R7 R0 K26 ["children"]
      147 CALL                             R4 3 -1
      148 RETURN                           R4 -1

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
       35 GETTABLEKS                       R9 R0 K10 ["StudioPanels"]
       37 GETTABLEKS                       R8 R9 K11 ["PanelsProvider"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R10 R0 K12 ["Plugin"]
       44 GETTABLEKS                       R9 R10 K13 ["PluginProvider"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Preferences"]
       51 GETTABLEKS                       R10 R11 K15 ["PreferencesProvider"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Responsive"]
       58 GETTABLEKS                       R11 R12 K17 ["ResponsiveContext"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R13 R0 K16 ["Responsive"]
       65 GETTABLEKS                       R12 R13 K18 ["ResponsiveProvider"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R14 R0 K19 ["Style"]
       72 GETTABLEKS                       R13 R14 K20 ["StyleProvider"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R15 R1 K21 ["Components"]
       79 GETTABLEKS                       R14 R15 K22 ["Types"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K4 [require]
       84 GETTABLEKS                       R16 R0 K23 ["StudioWidgets"]
       86 GETTABLEKS                       R15 R16 K24 ["WidgetsProvider"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R18 R0 K25 ["Elevation"]
       93 GETTABLEKS                       R17 R18 K26 ["ElevationProvider"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R15 R16 K26 ["ElevationProvider"]
       98 GETIMPORT                        R16 K4 [require]
      100 GETTABLEKS                       R18 R1 K27 ["Utility"]
      102 GETTABLEKS                       R17 R18 K28 ["Flags"]
      104 CALL                             R16 1 1
      105 DUPCLOSURE                       R17 K29 [PROTO_0]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R4
      118 RETURN                           R17 1
