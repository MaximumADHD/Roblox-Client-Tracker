MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["assign"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K9 ["Util"]
       22 GETTABLEKS                       R4 R4 K10 ["createFolderDataLookup"]
       24 CALL                             R3 1 1
       25 MOVE                             R4 R2
       26 MOVE                             R5 R3
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R6 K11 ["Components"]
       31 NAMECALL                         R6 R6 K12 ["GetChildren"]
       33 CALL                             R6 1 -1
       34 CALL                             R5 -1 1
       35 DUPTABLE                         R6 K14 [{"Button"}]
       36 DUPTABLE                         R7 K19 [{"name", "story", "style", "test"}]
       37 LOADK                            R8 K13 ["Button"]
       38 SETTABLEKS                       R8 R7 K15 ["name"]
       40 GETTABLEKS                       R8 R0 K2 ["UI"]
       42 GETTABLEKS                       R8 R8 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       46 LOADK                            R10 K21 ["DEPRECATED_Button.story"]
       47 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K16 ["story"]
       52 GETTABLEKS                       R8 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R8 K11 ["Components"]
       56 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       58 LOADK                            R10 K17 ["style"]
       59 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K17 ["style"]
       64 GETTABLEKS                       R8 R0 K2 ["UI"]
       66 GETTABLEKS                       R8 R8 K11 ["Components"]
       68 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       70 LOADK                            R10 K23 ["init.test"]
       71 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K18 ["test"]
       76 SETTABLEKS                       R7 R6 K13 ["Button"]
       78 CALL                             R4 2 -1
       79 RETURN                           R4 -1
