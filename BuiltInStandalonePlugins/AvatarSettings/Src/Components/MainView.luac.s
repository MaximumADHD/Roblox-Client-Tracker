PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["default"]
        7 JUMPIFEQKB                       R4 FALSE ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["UnsavedChangesDialogContext must not be default"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["useContext"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R5 R2 K5 ["content"]
       24 JUMPIFNOTEQKNIL                  R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       30 LOADK                            R5 K6 ["Content must not be nil in PublishContext"]
       31 GETIMPORT                        R3 K4 [assert]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R2 K5 ["content"]
       36 GETTABLEKS                       R4 R3 K7 ["databaseLoaded"]
       38 GETTABLEKS                       R4 R4 K8 ["value"]
       40 GETUPVAL                         R5 3
       41 CALL                             R5 0 1
       42 GETUPVAL                         R6 4
       43 GETUPVAL                         R7 5
       44 NEWTABLE                         R8 1 0
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K9 ["Tag"]
       49 LOADK                            R10 K10 ["X-Column"]
       50 SETTABLE                         R10 R8 R9
       51 DUPTABLE                         R9 K17 [{"NavigationBar", "Body", "PublishBar", "UnsavedChangesDialog", "CreatePlaceSettingsDialog", "SaveToRobloxPage"}]
       52 MOVE                             R10 R4
       53 JUMPIFNOT                        R10 ; [+8]
       54 GETUPVAL                         R10 4
       55 GETUPVAL                         R11 6
       56 DUPTABLE                         R12 K19 [{"layoutOrder"}]
       57 MOVE                             R13 R5
       58 CALL                             R13 0 1
       59 SETTABLEKS                       R13 R12 K18 ["layoutOrder"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K11 ["NavigationBar"]
       64 MOVE                             R10 R4
       65 JUMPIFNOT                        R10 ; [+8]
       66 GETUPVAL                         R10 4
       67 GETUPVAL                         R11 7
       68 DUPTABLE                         R12 K19 [{"layoutOrder"}]
       69 MOVE                             R13 R5
       70 CALL                             R13 0 1
       71 SETTABLEKS                       R13 R12 K18 ["layoutOrder"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K12 ["Body"]
       76 MOVE                             R10 R4
       77 JUMPIFNOT                        R10 ; [+8]
       78 GETUPVAL                         R10 4
       79 GETUPVAL                         R11 8
       80 DUPTABLE                         R12 K19 [{"layoutOrder"}]
       81 MOVE                             R13 R5
       82 CALL                             R13 0 1
       83 SETTABLEKS                       R13 R12 K18 ["layoutOrder"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K13 ["PublishBar"]
       88 MOVE                             R10 R4
       89 JUMPIFNOT                        R10 ; [+3]
       90 GETTABLEKS                       R10 R1 K20 ["getUnsavedChangesDialog"]
       92 CALL                             R10 0 1
       93 SETTABLEKS                       R10 R9 K14 ["UnsavedChangesDialog"]
       95 MOVE                             R10 R4
       96 JUMPIFNOT                        R10 ; [+6]
       97 GETUPVAL                         R10 9
       98 CALL                             R10 0 1
       99 JUMPIFNOT                        R10 ; [+3]
      100 GETUPVAL                         R10 4
      101 GETUPVAL                         R11 10
      102 CALL                             R10 1 1
      103 SETTABLEKS                       R10 R9 K15 ["CreatePlaceSettingsDialog"]
      105 NOT                              R10 R4
      106 JUMPIFNOT                        R10 ; [+3]
      107 GETUPVAL                         R10 4
      108 GETUPVAL                         R11 11
      109 CALL                             R10 1 1
      110 SETTABLEKS                       R10 R9 K16 ["SaveToRobloxPage"]
      112 CALL                             R6 3 -1
      113 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Body"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["CreatePlaceSettingsDialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["NavigationBar"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K7 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["PublishBar"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K7 ["Components"]
       56 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       58 GETTABLEKS                       R7 R7 K15 ["PublishProvider"]
       60 GETTABLEKS                       R7 R7 K16 ["PublishContext"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K10 ["Packages"]
       67 GETTABLEKS                       R8 R8 K17 ["React"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K10 ["Packages"]
       74 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K7 ["Components"]
       83 GETTABLEKS                       R10 R10 K19 ["SaveToRobloxPage"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K7 ["Components"]
       92 GETTABLEKS                       R11 R11 K14 ["Contexts"]
       94 GETTABLEKS                       R11 R11 K20 ["UnsavedChangesDialogContext"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K6 ["Src"]
      101 GETTABLEKS                       R12 R12 K21 ["Flags"]
      103 GETTABLEKS                       R12 R12 K22 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      105 CALL                             R11 1 1
      106 GETTABLEKS                       R12 R8 K23 ["createNextOrder"]
      108 GETTABLEKS                       R13 R3 K24 ["UI"]
      110 GETTABLEKS                       R14 R13 K25 ["Pane"]
      112 GETTABLEKS                       R15 R7 K26 ["createElement"]
      114 DUPCLOSURE                       R16 K27 [PROTO_0]
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R9
      127 RETURN                           R16 1
