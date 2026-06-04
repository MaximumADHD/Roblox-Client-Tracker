MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Rodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K11 ["PluginInfo"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Reducers"]
       40 GETTABLEKS                       R5 R5 K12 ["PluginPermissions"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Reducers"]
       49 GETTABLEKS                       R6 R6 K13 ["Management"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R2 K14 ["combineReducers"]
       54 DUPTABLE                         R7 K15 [{"PluginInfo", "PluginPermissions", "Management"}]
       55 MOVE                             R9 R1
       56 CALL                             R9 0 1
       57 JUMPIFNOT                        R9 ; [+2]
       58 LOADNIL                          R8
       59 JUMP                             ; [+1]
       60 MOVE                             R8 R3
       61 SETTABLEKS                       R8 R7 K11 ["PluginInfo"]
       63 SETTABLEKS                       R4 R7 K12 ["PluginPermissions"]
       65 SETTABLEKS                       R5 R7 K13 ["Management"]
       67 CALL                             R6 1 1
       68 RETURN                           R6 1
