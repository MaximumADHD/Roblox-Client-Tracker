PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["ContextStack"]
        4 DUPTABLE                         R3 K2 [{"providers"}]
        5 NEWTABLE                         R4 0 8
        7 GETUPVAL                         R5 0
        8 GETUPVAL                         R6 2
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 3
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 0
       14 GETUPVAL                         R8 4
       15 CALL                             R7 1 1
       16 GETUPVAL                         R8 0
       17 GETUPVAL                         R9 5
       18 CALL                             R8 1 1
       19 GETUPVAL                         R9 0
       20 GETUPVAL                         R10 6
       21 CALL                             R9 1 1
       22 GETUPVAL                         R10 0
       23 GETUPVAL                         R11 7
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 0
       26 GETUPVAL                         R12 8
       27 CALL                             R11 1 1
       28 GETUPVAL                         R12 0
       29 GETUPVAL                         R13 9
       30 CALL                             R12 1 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 SETTABLEKS                       R4 R3 K1 ["providers"]
       35 GETUPVAL                         R4 0
       36 GETUPVAL                         R5 10
       37 CALL                             R4 1 -1
       38 CALL                             R1 -1 -1
       39 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AssetServiceProvider"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Components"]
       24 GETTABLEKS                       R3 R4 K10 ["AvatarSettingsProvider"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Components"]
       33 GETTABLEKS                       R5 R6 K8 ["Contexts"]
       35 GETTABLEKS                       R4 R5 K11 ["EnableAvatarSettingsProvider"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R8 K7 ["Components"]
       44 GETTABLEKS                       R6 R7 K8 ["Contexts"]
       46 GETTABLEKS                       R5 R6 K12 ["InsertServiceProvider"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Src"]
       53 GETTABLEKS                       R8 R9 K7 ["Components"]
       55 GETTABLEKS                       R7 R8 K8 ["Contexts"]
       57 GETTABLEKS                       R6 R7 K13 ["LoadAnimationProvider"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R9 K7 ["Components"]
       66 GETTABLEKS                       R7 R8 K14 ["MainView"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R11 K7 ["Components"]
       75 GETTABLEKS                       R9 R10 K8 ["Contexts"]
       77 GETTABLEKS                       R8 R9 K15 ["MarketplaceServiceProvider"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K5 [require]
       82 GETTABLEKS                       R12 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R12 K7 ["Components"]
       86 GETTABLEKS                       R10 R11 K8 ["Contexts"]
       88 GETTABLEKS                       R9 R10 K16 ["PublishProvider"]
       90 CALL                             R8 1 1
       91 GETIMPORT                        R9 K5 [require]
       93 GETTABLEKS                       R11 R0 K17 ["Packages"]
       95 GETTABLEKS                       R10 R11 K18 ["React"]
       97 CALL                             R9 1 1
       98 GETIMPORT                        R10 K5 [require]
      100 GETTABLEKS                       R12 R0 K17 ["Packages"]
      102 GETTABLEKS                       R11 R12 K19 ["ReactUtils"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K5 [require]
      107 GETTABLEKS                       R15 R0 K6 ["Src"]
      109 GETTABLEKS                       R14 R15 K7 ["Components"]
      111 GETTABLEKS                       R13 R14 K8 ["Contexts"]
      113 GETTABLEKS                       R12 R13 K20 ["UnsavedChangesDialogProvider"]
      115 CALL                             R11 1 1
      116 GETTABLEKS                       R12 R9 K21 ["createElement"]
      118 DUPCLOSURE                       R13 K22 [PROTO_0]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R6
      130 RETURN                           R13 1
