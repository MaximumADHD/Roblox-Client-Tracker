MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Reducers"]
       29 GETTABLEKS                       R4 R4 K11 ["PluginInfo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Reducers"]
       38 GETTABLEKS                       R5 R5 K12 ["PluginPermissions"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Reducers"]
       47 GETTABLEKS                       R6 R6 K13 ["Management"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K14 ["combineReducers"]
       52 DUPTABLE                         R7 K15 [{"PluginInfo", "PluginPermissions", "Management"}]
       53 MOVE                             R9 R1
       54 CALL                             R9 0 1
       55 JUMPIFNOT                        R9 ; [+2]
       56 LOADNIL                          R8
       57 JUMP                             ; [+1]
       58 MOVE                             R8 R3
       59 SETTABLEKS                       R8 R7 K11 ["PluginInfo"]
       61 SETTABLEKS                       R4 R7 K12 ["PluginPermissions"]
       63 SETTABLEKS                       R5 R7 K13 ["Management"]
       65 CALL                             R6 1 1
       66 RETURN                           R6 1
