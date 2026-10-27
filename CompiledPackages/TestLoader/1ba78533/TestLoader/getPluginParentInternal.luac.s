MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GetPluginParentInternalFix"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 JUMPIFNOT                        R0 ; [+25]
        9 GETIMPORT                        R0 K5 [script]
       11 LOADK                            R2 K6 ["Plugin"]
       12 NAMECALL                         R0 R0 K7 ["FindFirstAncestorWhichIsA"]
       14 CALL                             R0 2 1
       15 JUMPIFNOTEQKNIL                  R0 ; [+10]
       17 GETIMPORT                        R1 K5 [script]
       19 LOADK                            R3 K8 ["Packages"]
       20 NAMECALL                         R1 R1 K9 ["FindFirstAncestor"]
       22 CALL                             R1 2 1
       23 GETTABLEKS                       R1 R1 K10 ["Parent"]
       25 RETURN                           R1 1
       26 LOADK                            R3 K8 ["Packages"]
       27 LOADB                            R4 1
       28 NAMECALL                         R1 R0 K11 ["FindFirstChild"]
       30 CALL                             R1 3 1
       31 GETTABLEKS                       R1 R1 K10 ["Parent"]
       33 RETURN                           R1 1
       34 GETIMPORT                        R0 K5 [script]
       36 GETTABLEKS                       R0 R0 K10 ["Parent"]
       38 LOADK                            R3 K6 ["Plugin"]
       39 NAMECALL                         R1 R0 K7 ["FindFirstAncestorWhichIsA"]
       41 CALL                             R1 2 1
       42 LOADK                            R3 K12 ["Folder"]
       43 NAMECALL                         R1 R1 K13 ["FindFirstChildWhichIsA"]
       45 CALL                             R1 2 1
       46 JUMPIFNOTEQKNIL                  R1 ; [+10]
       48 LOADK                            R4 K6 ["Plugin"]
       49 NAMECALL                         R2 R0 K7 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 LOADK                            R4 K14 ["ModuleScript"]
       53 NAMECALL                         R2 R2 K13 ["FindFirstChildWhichIsA"]
       55 CALL                             R2 2 1
       56 MOVE                             R1 R2
       57 LOADK                            R4 K8 ["Packages"]
       58 NAMECALL                         R2 R1 K11 ["FindFirstChild"]
       60 CALL                             R2 2 1
       61 JUMPIFNOTEQKNIL                  R2 ; [+8]
       63 LOADK                            R4 K8 ["Packages"]
       64 LOADB                            R5 1
       65 NAMECALL                         R2 R1 K11 ["FindFirstChild"]
       67 CALL                             R2 3 1
       68 GETTABLEKS                       R1 R2 K10 ["Parent"]
       70 RETURN                           R1 1
