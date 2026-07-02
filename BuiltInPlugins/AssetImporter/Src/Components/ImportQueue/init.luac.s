PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Dialogs"]
        2 GETTABLEKS                       R1 R1 K1 ["showQueue"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 DUPCLOSURE                       R3 K0 [PROTO_0]
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K1 ["UI"]
       12 GETTABLEKS                       R5 R5 K2 ["DockWidget"]
       14 DUPTABLE                         R6 K9 [{"Title", "Enabled", "Size", "MinSize", "InitialDockState", "OnClose"}]
       15 GETTABLEKS                       R7 R0 K3 ["Title"]
       17 SETTABLEKS                       R7 R6 K3 ["Title"]
       19 SETTABLEKS                       R2 R6 K4 ["Enabled"]
       21 GETUPVAL                         R7 5
       22 SETTABLEKS                       R7 R6 K5 ["Size"]
       24 GETUPVAL                         R7 6
       25 SETTABLEKS                       R7 R6 K6 ["MinSize"]
       27 GETIMPORT                        R7 K12 [Enum.InitialDockState.Bottom]
       29 SETTABLEKS                       R7 R6 K7 ["InitialDockState"]
       31 SETTABLEKS                       R3 R6 K8 ["OnClose"]
       33 DUPTABLE                         R7 K14 [{"FoundationProvider"}]
       34 GETUPVAL                         R8 3
       35 GETUPVAL                         R9 7
       36 LOADNIL                          R10
       37 DUPTABLE                         R11 K18 [{"MainView", "ErrorDialog", "WarningDialog"}]
       38 GETUPVAL                         R12 3
       39 GETUPVAL                         R13 8
       40 CALL                             R12 1 1
       41 SETTABLEKS                       R12 R11 K15 ["MainView"]
       43 GETUPVAL                         R12 3
       44 GETUPVAL                         R13 9
       45 CALL                             R12 1 1
       46 SETTABLEKS                       R12 R11 K16 ["ErrorDialog"]
       48 GETUPVAL                         R12 3
       49 GETUPVAL                         R13 10
       50 CALL                             R12 1 1
       51 SETTABLEKS                       R12 R11 K17 ["WarningDialog"]
       53 CALL                             R8 3 1
       54 SETTABLEKS                       R8 R7 K13 ["FoundationProvider"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Actions"]
       29 GETTABLEKS                       R5 R5 K12 ["SetShowQueue"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R0 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Components"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R5 K14 ["Dialogs"]
       40 GETTABLEKS                       R7 R7 K15 ["UploadErrorDialog"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R5 K14 ["Dialogs"]
       47 GETTABLEKS                       R8 R8 K16 ["UploadConfirmationDialog"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R9 R9 K17 ["MainView"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K19 ["useDispatch"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K20 ["useSelector"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Packages"]
       79 GETTABLEKS                       R12 R12 K21 ["StudioFoundation"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R11 K13 ["Components"]
       84 GETTABLEKS                       R12 R12 K22 ["FoundationProviderAdapter"]
       86 GETIMPORT                        R13 K25 [Vector2.new]
       88 LOADN                            R14 395
       89 LOADN                            R15 320
       90 CALL                             R13 2 1
       91 GETIMPORT                        R14 K25 [Vector2.new]
       93 LOADN                            R15 395
       94 LOADN                            R16 320
       95 CALL                             R14 2 1
       96 DUPCLOSURE                       R15 K26 [PROTO_2]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 RETURN                           R15 1
