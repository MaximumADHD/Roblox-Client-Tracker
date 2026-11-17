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
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K0 ["useContext"]
       39 GETUPVAL                         R5 3
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R3 K7 ["databaseLoaded"]
       43 GETTABLEKS                       R5 R5 K8 ["value"]
       45 GETTABLEKS                       R7 R4 K9 ["currentGameId"]
       47 JUMPIFNOTEQKNIL                  R7 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 GETTABLEKS                       R8 R4 K9 ["currentGameId"]
       53 JUMPIFEQKN                       R8 K10 [0] ; [+2]
       55 LOADB                            R7 0 +1
       56 LOADB                            R7 1
       57 GETUPVAL                         R8 4
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+5]
       60 JUMPIF                           R6 ; [+2]
       61 LOADB                            R5 0
       62 JUMP                             ; [+2]
       63 JUMPIFNOT                        R7 ; [+1]
       64 LOADB                            R5 1
       65 NOT                              R8 R5
       66 JUMPIFNOT                        R8 ; [+2]
       67 GETUPVAL                         R8 4
       68 CALL                             R8 0 1
       69 NOT                              R9 R5
       70 JUMPIFNOT                        R9 ; [+3]
       71 GETUPVAL                         R10 4
       72 CALL                             R10 0 1
       73 NOT                              R9 R10
       74 GETUPVAL                         R10 5
       75 CALL                             R10 0 1
       76 GETUPVAL                         R11 6
       77 GETUPVAL                         R12 7
       78 NEWTABLE                         R13 1 0
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K11 ["Tag"]
       83 LOADK                            R15 K12 ["X-Column"]
       84 SETTABLE                         R15 R13 R14
       85 DUPTABLE                         R14 K20 [{"NavigationBar", "Body", "PublishBar", "UnsavedChangesDialog", "CreatePlaceSettingsDialog", "SaveToRobloxPage", "WaitingForDatabasePage"}]
       86 MOVE                             R15 R5
       87 JUMPIFNOT                        R15 ; [+8]
       88 GETUPVAL                         R15 6
       89 GETUPVAL                         R16 8
       90 DUPTABLE                         R17 K22 [{"layoutOrder"}]
       91 MOVE                             R18 R10
       92 CALL                             R18 0 1
       93 SETTABLEKS                       R18 R17 K21 ["layoutOrder"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K13 ["NavigationBar"]
       98 MOVE                             R15 R5
       99 JUMPIFNOT                        R15 ; [+8]
      100 GETUPVAL                         R15 6
      101 GETUPVAL                         R16 9
      102 DUPTABLE                         R17 K22 [{"layoutOrder"}]
      103 MOVE                             R18 R10
      104 CALL                             R18 0 1
      105 SETTABLEKS                       R18 R17 K21 ["layoutOrder"]
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K14 ["Body"]
      110 MOVE                             R15 R5
      111 JUMPIFNOT                        R15 ; [+8]
      112 GETUPVAL                         R15 6
      113 GETUPVAL                         R16 10
      114 DUPTABLE                         R17 K22 [{"layoutOrder"}]
      115 MOVE                             R18 R10
      116 CALL                             R18 0 1
      117 SETTABLEKS                       R18 R17 K21 ["layoutOrder"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K15 ["PublishBar"]
      122 MOVE                             R15 R5
      123 JUMPIFNOT                        R15 ; [+3]
      124 GETTABLEKS                       R15 R1 K23 ["getUnsavedChangesDialog"]
      126 CALL                             R15 0 1
      127 SETTABLEKS                       R15 R14 K16 ["UnsavedChangesDialog"]
      129 MOVE                             R15 R5
      130 JUMPIFNOT                        R15 ; [+6]
      131 GETUPVAL                         R15 11
      132 CALL                             R15 0 1
      133 JUMPIFNOT                        R15 ; [+3]
      134 GETUPVAL                         R15 6
      135 GETUPVAL                         R16 12
      136 CALL                             R15 1 1
      137 SETTABLEKS                       R15 R14 K17 ["CreatePlaceSettingsDialog"]
      139 MOVE                             R15 R9
      140 JUMPIFNOT                        R15 ; [+3]
      141 GETUPVAL                         R15 6
      142 GETUPVAL                         R16 13
      143 CALL                             R15 1 1
      144 SETTABLEKS                       R15 R14 K18 ["SaveToRobloxPage"]
      146 MOVE                             R15 R8
      147 JUMPIFNOT                        R15 ; [+3]
      148 GETUPVAL                         R15 6
      149 GETUPVAL                         R16 14
      150 CALL                             R15 1 1
      151 SETTABLEKS                       R15 R14 K19 ["WaitingForDatabasePage"]
      153 CALL                             R11 3 -1
      154 RETURN                           R11 -1

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
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       33 GETTABLEKS                       R4 R4 K11 ["EnableAvatarSettingsContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K12 ["Packages"]
       40 GETTABLEKS                       R5 R5 K13 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Components"]
       49 GETTABLEKS                       R6 R6 K14 ["NavigationBar"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Components"]
       58 GETTABLEKS                       R7 R7 K15 ["PublishBar"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Components"]
       67 GETTABLEKS                       R8 R8 K10 ["Contexts"]
       69 GETTABLEKS                       R8 R8 K16 ["PublishProvider"]
       71 GETTABLEKS                       R8 R8 K17 ["PublishContext"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K12 ["Packages"]
       78 GETTABLEKS                       R9 R9 K18 ["React"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K12 ["Packages"]
       85 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Src"]
       92 GETTABLEKS                       R11 R11 K7 ["Components"]
       94 GETTABLEKS                       R11 R11 K20 ["SaveToRobloxPage"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K6 ["Src"]
      101 GETTABLEKS                       R12 R12 K7 ["Components"]
      103 GETTABLEKS                       R12 R12 K10 ["Contexts"]
      105 GETTABLEKS                       R12 R12 K21 ["UnsavedChangesDialogContext"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K6 ["Src"]
      112 GETTABLEKS                       R13 R13 K7 ["Components"]
      114 GETTABLEKS                       R13 R13 K22 ["WaitingForDatabasePage"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K6 ["Src"]
      121 GETTABLEKS                       R14 R14 K23 ["Flags"]
      123 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarSettingsEditUnsavedPlace"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R15 R0 K6 ["Src"]
      130 GETTABLEKS                       R15 R15 K23 ["Flags"]
      132 GETTABLEKS                       R15 R15 K25 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      134 CALL                             R14 1 1
      135 GETTABLEKS                       R15 R9 K26 ["createNextOrder"]
      137 GETTABLEKS                       R16 R4 K27 ["UI"]
      139 GETTABLEKS                       R17 R16 K28 ["Pane"]
      141 GETTABLEKS                       R18 R8 K29 ["createElement"]
      143 DUPCLOSURE                       R19 K30 [PROTO_0]
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R12
      159 RETURN                           R19 1
