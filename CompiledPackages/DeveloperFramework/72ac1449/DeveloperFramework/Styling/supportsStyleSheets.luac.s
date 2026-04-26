MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["DebugDevFrameworkForceSupportsStyleSheets"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K6 ["DefineFastFlag"]
       13 CALL                             R1 3 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 GETTABLEKS                       R3 R0 K2 ["Parent"]
       19 LOADK                            R5 K7 ["React"]
       20 NAMECALL                         R3 R3 K8 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+8]
       24 GETIMPORT                        R2 K10 [require]
       26 GETTABLEKS                       R4 R0 K2 ["Parent"]
       28 GETTABLEKS                       R3 R4 K7 ["React"]
       30 CALL                             R2 1 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R2
       33 LOADK                            R5 K11 ["Plugin"]
       34 NAMECALL                         R3 R0 K12 ["FindFirstAncestorWhichIsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+5]
       38 LOADK                            R6 K13 ["Folder"]
       39 NAMECALL                         R4 R3 K14 ["FindFirstChildWhichIsA"]
       41 CALL                             R4 2 1
       42 JUMP                             ; [+7]
       43 GETTABLEKS                       R5 R0 K2 ["Parent"]
       45 LOADK                            R7 K16 ["DeveloperStorybook"]
       46 NAMECALL                         R5 R5 K8 ["FindFirstChild"]
       48 CALL                             R5 2 1
       49 ORK                              R4 R5 K15 []
       50 JUMPIFNOT                        R4 ; [+5]
       51 LOADK                            R7 K17 ["Src"]
       52 NAMECALL                         R5 R4 K8 ["FindFirstChild"]
       54 CALL                             R5 2 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 JUMPIFNOT                        R5 ; [+5]
       58 LOADK                            R8 K18 ["EnableStyleSheets"]
       59 NAMECALL                         R6 R5 K8 ["FindFirstChild"]
       61 CALL                             R6 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R6
       64 JUMPIFNOT                        R2 ; [+10]
       65 GETTABLEKS                       R8 R2 K19 ["Tag"]
       67 JUMPIFEQKNIL                     R8 ; [+7]
       69 JUMPIFNOT                        R6 ; [+5]
       70 GETTABLEKS                       R8 R6 K20 ["Value"]
       72 JUMPIFNOT                        R8 ; [+2]
       73 LOADB                            R7 1
       74 JUMP                             ; [+1]
       75 LOADB                            R7 0
       76 GETIMPORT                        R8 K4 [game]
       78 LOADK                            R10 K21 ["DebugDeveloperFrameworkSdk"]
       79 NAMECALL                         R8 R8 K22 ["GetFastFlag"]
       81 CALL                             R8 2 1
       82 JUMPIFNOT                        R8 ; [+12]
       83 JUMPIFNOT                        R4 ; [+11]
       84 GETIMPORT                        R8 K24 [print]
       86 LOADK                            R10 K25 ["[DebugDeveloperFrameworkSdk] %* StyleSheets supported: %*"]
       87 GETTABLEKS                       R12 R4 K26 ["Name"]
       89 MOVE                             R13 R7
       90 NAMECALL                         R10 R10 K27 ["format"]
       92 CALL                             R10 3 1
       93 MOVE                             R9 R10
       94 CALL                             R8 1 0
       95 RETURN                           R7 1
