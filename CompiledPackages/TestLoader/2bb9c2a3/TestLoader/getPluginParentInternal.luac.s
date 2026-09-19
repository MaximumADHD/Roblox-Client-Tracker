MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GetPluginParentInternalFix"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 JUMPIFNOT                        R0 ; [+14]
        9 GETIMPORT                        R0 K5 [script]
       11 LOADK                            R2 K6 ["Plugin"]
       12 NAMECALL                         R0 R0 K7 ["FindFirstAncestorWhichIsA"]
       14 CALL                             R0 2 1
       15 LOADK                            R2 K8 ["Packages"]
       16 LOADB                            R3 1
       17 NAMECALL                         R0 R0 K9 ["FindFirstChild"]
       19 CALL                             R0 3 1
       20 GETTABLEKS                       R0 R0 K10 ["Parent"]
       22 RETURN                           R0 1
       23 GETIMPORT                        R0 K5 [script]
       25 GETTABLEKS                       R0 R0 K10 ["Parent"]
       27 LOADK                            R3 K6 ["Plugin"]
       28 NAMECALL                         R1 R0 K7 ["FindFirstAncestorWhichIsA"]
       30 CALL                             R1 2 1
       31 LOADK                            R3 K11 ["Folder"]
       32 NAMECALL                         R1 R1 K12 ["FindFirstChildWhichIsA"]
       34 CALL                             R1 2 1
       35 JUMPIFNOTEQKNIL                  R1 ; [+10]
       37 LOADK                            R4 K6 ["Plugin"]
       38 NAMECALL                         R2 R0 K7 ["FindFirstAncestorWhichIsA"]
       40 CALL                             R2 2 1
       41 LOADK                            R4 K13 ["ModuleScript"]
       42 NAMECALL                         R2 R2 K12 ["FindFirstChildWhichIsA"]
       44 CALL                             R2 2 1
       45 MOVE                             R1 R2
       46 LOADK                            R4 K8 ["Packages"]
       47 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       49 CALL                             R2 2 1
       50 JUMPIFNOTEQKNIL                  R2 ; [+8]
       52 LOADK                            R4 K8 ["Packages"]
       53 LOADB                            R5 1
       54 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       56 CALL                             R2 3 1
       57 GETTABLEKS                       R1 R2 K10 ["Parent"]
       59 RETURN                           R1 1
