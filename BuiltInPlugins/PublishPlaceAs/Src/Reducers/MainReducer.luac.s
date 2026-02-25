MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R4 K9 ["ExistingGame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R5 K10 ["NewGameSettings"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R7 K8 ["Reducers"]
       40 GETTABLEKS                       R5 R6 K11 ["Policy"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R8 R0 K7 ["Src"]
       47 GETTABLEKS                       R7 R8 K8 ["Reducers"]
       49 GETTABLEKS                       R6 R7 K12 ["PublishInProgress"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K7 ["Src"]
       56 GETTABLEKS                       R8 R9 K8 ["Reducers"]
       58 GETTABLEKS                       R7 R8 K13 ["PublishedPlace"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R10 R0 K7 ["Src"]
       65 GETTABLEKS                       R9 R10 K8 ["Reducers"]
       67 GETTABLEKS                       R8 R9 K14 ["Screen"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R11 R0 K7 ["Src"]
       74 GETTABLEKS                       R10 R11 K8 ["Reducers"]
       76 GETTABLEKS                       R9 R10 K15 ["GroupsHavePermission"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R12 R0 K7 ["Src"]
       83 GETTABLEKS                       R11 R12 K8 ["Reducers"]
       85 GETTABLEKS                       R10 R11 K16 ["SelectedGroup"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R1 K17 ["combineReducers"]
       90 DUPTABLE                         R11 K18 [{"Screen", "ExistingGame", "NewGameSettings", "PublishedPlace", "PublishInProgress", "GroupsHavePermission", "Policy", "SelectedGroup"}]
       91 SETTABLEKS                       R7 R11 K14 ["Screen"]
       93 SETTABLEKS                       R2 R11 K9 ["ExistingGame"]
       95 SETTABLEKS                       R3 R11 K10 ["NewGameSettings"]
       97 SETTABLEKS                       R6 R11 K13 ["PublishedPlace"]
       99 SETTABLEKS                       R5 R11 K12 ["PublishInProgress"]
      101 SETTABLEKS                       R8 R11 K15 ["GroupsHavePermission"]
      103 SETTABLEKS                       R4 R11 K11 ["Policy"]
      105 SETTABLEKS                       R9 R11 K16 ["SelectedGroup"]
      107 CALL                             R10 1 1
      108 RETURN                           R10 1
