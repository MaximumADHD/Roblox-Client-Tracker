PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
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
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["useContext"]
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
       36 GETTABLEKS                       R5 R3 K7 ["databaseLoaded"]
       38 GETTABLEKS                       R4 R5 K8 ["value"]
       40 GETUPVAL                         R5 3
       41 CALL                             R5 0 1
       42 GETUPVAL                         R6 4
       43 GETUPVAL                         R7 5
       44 NEWTABLE                         R8 1 0
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K9 ["Tag"]
       49 LOADK                            R10 K10 ["X-Column"]
       50 SETTABLE                         R10 R8 R9
       51 DUPTABLE                         R9 K16 [{"NavigationBar", "Body", "PublishBar", "UnsavedChangesDialog", "SaveToRobloxPage"}]
       52 MOVE                             R10 R4
       53 JUMPIFNOT                        R10 ; [+8]
       54 GETUPVAL                         R10 4
       55 GETUPVAL                         R11 6
       56 DUPTABLE                         R12 K18 [{"layoutOrder"}]
       57 MOVE                             R13 R5
       58 CALL                             R13 0 1
       59 SETTABLEKS                       R13 R12 K17 ["layoutOrder"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K11 ["NavigationBar"]
       64 MOVE                             R10 R4
       65 JUMPIFNOT                        R10 ; [+8]
       66 GETUPVAL                         R10 4
       67 GETUPVAL                         R11 7
       68 DUPTABLE                         R12 K18 [{"layoutOrder"}]
       69 MOVE                             R13 R5
       70 CALL                             R13 0 1
       71 SETTABLEKS                       R13 R12 K17 ["layoutOrder"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K12 ["Body"]
       76 MOVE                             R10 R4
       77 JUMPIFNOT                        R10 ; [+8]
       78 GETUPVAL                         R10 4
       79 GETUPVAL                         R11 8
       80 DUPTABLE                         R12 K18 [{"layoutOrder"}]
       81 MOVE                             R13 R5
       82 CALL                             R13 0 1
       83 SETTABLEKS                       R13 R12 K17 ["layoutOrder"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K13 ["PublishBar"]
       88 MOVE                             R10 R4
       89 JUMPIFNOT                        R10 ; [+3]
       90 GETTABLEKS                       R10 R1 K19 ["getUnsavedChangesDialog"]
       92 CALL                             R10 0 1
       93 SETTABLEKS                       R10 R9 K14 ["UnsavedChangesDialog"]
       95 NOT                              R10 R4
       96 JUMPIFNOT                        R10 ; [+3]
       97 GETUPVAL                         R10 4
       98 GETUPVAL                         R11 9
       99 CALL                             R10 1 1
      100 SETTABLEKS                       R10 R9 K15 ["SaveToRobloxPage"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["Body"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K7 ["Components"]
       29 GETTABLEKS                       R4 R5 K11 ["NavigationBar"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K7 ["Components"]
       38 GETTABLEKS                       R5 R6 K12 ["PublishBar"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R10 R0 K6 ["Src"]
       45 GETTABLEKS                       R9 R10 K7 ["Components"]
       47 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       49 GETTABLEKS                       R7 R8 K14 ["PublishProvider"]
       51 GETTABLEKS                       R6 R7 K15 ["PublishContext"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K9 ["Packages"]
       58 GETTABLEKS                       R7 R8 K16 ["React"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K9 ["Packages"]
       65 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Src"]
       72 GETTABLEKS                       R10 R11 K7 ["Components"]
       74 GETTABLEKS                       R9 R10 K18 ["SaveToRobloxPage"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R13 R0 K6 ["Src"]
       81 GETTABLEKS                       R12 R13 K7 ["Components"]
       83 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       85 GETTABLEKS                       R10 R11 K19 ["UnsavedChangesDialogContext"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R7 K20 ["createNextOrder"]
       90 GETTABLEKS                       R11 R2 K21 ["UI"]
       92 GETTABLEKS                       R12 R11 K22 ["Pane"]
       94 GETTABLEKS                       R13 R6 K23 ["createElement"]
       96 DUPCLOSURE                       R14 K24 [PROTO_0]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R8
      107 RETURN                           R14 1
