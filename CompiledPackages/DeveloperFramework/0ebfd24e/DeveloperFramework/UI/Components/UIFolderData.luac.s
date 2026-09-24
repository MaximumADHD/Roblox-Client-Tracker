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
       36 DUPTABLE                         R7 K19 [{["name"] = "Button", ["story"], ["style"], ["test"]}]
       37 GETTABLEKS                       R8 R0 K2 ["UI"]
       39 GETTABLEKS                       R8 R8 K11 ["Components"]
       41 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       43 LOADK                            R10 K21 ["DEPRECATED_Button.story"]
       44 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K16 ["story"]
       49 GETTABLEKS                       R8 R0 K2 ["UI"]
       51 GETTABLEKS                       R8 R8 K11 ["Components"]
       53 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       55 LOADK                            R10 K17 ["style"]
       56 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K17 ["style"]
       61 GETTABLEKS                       R8 R0 K2 ["UI"]
       63 GETTABLEKS                       R8 R8 K11 ["Components"]
       65 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_Button"]
       67 LOADK                            R10 K23 ["init.test"]
       68 NAMECALL                         R8 R8 K22 ["FindFirstChild"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K18 ["test"]
       73 SETTABLEKS                       R7 R6 K13 ["Button"]
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1
