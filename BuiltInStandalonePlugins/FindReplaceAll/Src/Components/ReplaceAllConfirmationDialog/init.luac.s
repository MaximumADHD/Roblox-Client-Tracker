PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ReplaceAllAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K3 ["onButtonClicked"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADK                            R4 K1 ["Frame"]
        8 NEWTABLE                         R5 4 0
       10 GETTABLEKS                       R6 R0 K2 ["ZIndex"]
       12 SETTABLEKS                       R6 R5 K2 ["ZIndex"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R6 R7 K3 ["Tag"]
       17 LOADK                            R7 K4 ["FindReplaceAll-SidePadM FindReplaceAll-ReplaceAllConfirmationDialog X-Row data-testid=ConfirmationDialogFrame"]
       18 SETTABLE                         R7 R5 R6
       19 GETTABLEKS                       R6 R0 K5 ["Visible"]
       21 SETTABLEKS                       R6 R5 K5 ["Visible"]
       23 DUPTABLE                         R6 K8 [{"ReplaceAllDialogText", "DialogButtonFrame"}]
       24 GETUPVAL                         R7 2
       25 LOADK                            R8 K9 ["TextLabel"]
       26 NEWTABLE                         R9 4 0
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R10 R11 K3 ["Tag"]
       31 LOADK                            R11 K6 ["ReplaceAllDialogText"]
       32 SETTABLE                         R11 R9 R10
       33 MOVE                             R10 R2
       34 CALL                             R10 0 1
       35 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       37 LOADK                            R12 K11 ["ReplaceAllConfirmationDialog"]
       38 LOADK                            R13 K12 ["ConfirmationPrompt"]
       39 NAMECALL                         R10 R1 K13 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K14 ["Text"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K6 ["ReplaceAllDialogText"]
       47 GETUPVAL                         R7 2
       48 LOADK                            R8 K1 ["Frame"]
       49 NEWTABLE                         R9 2 0
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R10 R11 K3 ["Tag"]
       54 LOADK                            R11 K15 ["DialogButtonFrame X-Row X-Right"]
       55 SETTABLE                         R11 R9 R10
       56 MOVE                             R10 R2
       57 CALL                             R10 0 1
       58 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       60 DUPTABLE                         R10 K18 [{"YesButton", "NoButton"}]
       61 GETUPVAL                         R11 2
       62 LOADK                            R12 K19 ["TextButton"]
       63 NEWTABLE                         R13 4 0
       65 GETUPVAL                         R15 3
       66 GETTABLEKS                       R14 R15 K3 ["Tag"]
       68 LOADK                            R15 K20 ["YesButton DialogButton"]
       69 SETTABLE                         R15 R13 R14
       70 MOVE                             R14 R2
       71 CALL                             R14 0 1
       72 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       74 LOADK                            R16 K11 ["ReplaceAllConfirmationDialog"]
       75 LOADK                            R17 K21 ["Yes"]
       76 NAMECALL                         R14 R1 K13 ["getText"]
       78 CALL                             R14 3 1
       79 SETTABLEKS                       R14 R13 K14 ["Text"]
       81 GETUPVAL                         R16 3
       82 GETTABLEKS                       R15 R16 K22 ["Event"]
       84 GETTABLEKS                       R14 R15 K23 ["MouseButton1Click"]
       86 NEWCLOSURE                       R15 P0
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R0
       89 SETTABLE                         R15 R13 R14
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K16 ["YesButton"]
       93 GETUPVAL                         R11 2
       94 LOADK                            R12 K19 ["TextButton"]
       95 NEWTABLE                         R13 4 0
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R14 R15 K3 ["Tag"]
      100 LOADK                            R15 K24 ["NoButton DialogButton"]
      101 SETTABLE                         R15 R13 R14
      102 MOVE                             R14 R2
      103 CALL                             R14 0 1
      104 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      106 LOADK                            R16 K11 ["ReplaceAllConfirmationDialog"]
      107 LOADK                            R17 K25 ["No"]
      108 NAMECALL                         R14 R1 K13 ["getText"]
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K14 ["Text"]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R15 R16 K22 ["Event"]
      116 GETTABLEKS                       R14 R15 K23 ["MouseButton1Click"]
      118 GETTABLEKS                       R15 R0 K26 ["onButtonClicked"]
      120 SETTABLE                         R15 R13 R14
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K17 ["NoButton"]
      124 CALL                             R7 3 1
      125 SETTABLEKS                       R7 R6 K7 ["DialogButtonFrame"]
      127 CALL                             R3 3 -1
      128 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETIMPORT                        R6 K5 [require]
       27 GETTABLEKS                       R8 R0 K6 ["Packages"]
       29 GETTABLEKS                       R7 R8 K11 ["ReactUtils"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R5 R6 K12 ["createNextOrder"]
       34 GETTABLEKS                       R6 R1 K13 ["createElement"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R11 R0 K14 ["Src"]
       40 GETTABLEKS                       R10 R11 K15 ["Util"]
       42 GETTABLEKS                       R9 R10 K16 ["MockableProxyPluginComponents"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R7 R8 K17 ["FindReplace"]
       47 DUPCLOSURE                       R8 K18 [PROTO_2]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 RETURN                           R8 1
