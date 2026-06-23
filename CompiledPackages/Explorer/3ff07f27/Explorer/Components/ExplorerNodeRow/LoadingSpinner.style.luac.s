MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaExplorerUseRDLColors"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Styling"]
       23 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       25 MOVE                             R4 R3
       26 LOADK                            R5 K12 [".Explorer-LoadingSpinner"]
       27 NEWTABLE                         R6 0 0
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R3
       32 LOADK                            R9 K13 [">> .Explorer-LoadingSpinner-Background"]
       33 DUPTABLE                         R10 K15 [{"BackgroundColor3"}]
       34 MOVE                             R12 R2
       35 CALL                             R12 0 1
       36 JUMPIFNOT                        R12 ; [+2]
       37 LOADK                            R11 K16 ["$RDLSemanticColorSurface100"]
       38 JUMP                             ; [+1]
       39 LOADK                            R11 K17 ["$LegacyMainBackground"]
       40 SETTABLEKS                       R11 R10 K14 ["BackgroundColor3"]
       42 NEWTABLE                         R11 0 1
       44 MOVE                             R12 R3
       45 LOADK                            R13 K18 [".Explorer-SelectionKind-Selected"]
       46 DUPTABLE                         R14 K15 [{"BackgroundColor3"}]
       47 LOADK                            R15 K19 ["$ExplorerSelected"]
       48 SETTABLEKS                       R15 R14 K14 ["BackgroundColor3"]
       50 CALL                             R12 2 -1
       51 SETLIST                          R11 R12 -1 [1]
       53 CALL                             R8 3 -1
       54 SETLIST                          R7 R8 -1 [1]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1
