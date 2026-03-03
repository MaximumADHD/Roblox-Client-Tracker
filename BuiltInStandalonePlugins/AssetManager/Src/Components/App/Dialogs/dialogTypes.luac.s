MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 2 0
       23 GETTABLEKS                       R5 R1 K10 ["DialogType"]
       25 GETTABLEKS                       R4 R5 K11 ["AssetError"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R10 R0 K6 ["Src"]
       31 GETTABLEKS                       R9 R10 K12 ["Components"]
       33 GETTABLEKS                       R8 R9 K13 ["App"]
       35 GETTABLEKS                       R7 R8 K14 ["Dialogs"]
       37 GETTABLEKS                       R6 R7 K15 ["AssetErrorDialog"]
       39 CALL                             R5 1 1
       40 SETTABLE                         R5 R3 R4
       41 GETTABLEKS                       R5 R1 K10 ["DialogType"]
       43 GETTABLEKS                       R4 R5 K16 ["Confirm"]
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R10 R0 K6 ["Src"]
       49 GETTABLEKS                       R9 R10 K12 ["Components"]
       51 GETTABLEKS                       R8 R9 K13 ["App"]
       53 GETTABLEKS                       R7 R8 K14 ["Dialogs"]
       55 GETTABLEKS                       R6 R7 K17 ["ConfirmDialog"]
       57 CALL                             R5 1 1
       58 SETTABLE                         R5 R3 R4
       59 GETTABLEKS                       R6 R2 K18 ["count"]
       61 GETTABLEKS                       R7 R2 K19 ["omit"]
       63 GETTABLEKS                       R8 R1 K10 ["DialogType"]
       65 NEWTABLE                         R9 0 1
       67 GETTABLEKS                       R11 R1 K10 ["DialogType"]
       69 GETTABLEKS                       R10 R11 K20 ["Test"]
       71 SETLIST                          R9 R10 1 [1]
       73 CALL                             R7 2 -1
       74 CALL                             R6 -1 1
       75 GETTABLEKS                       R7 R2 K18 ["count"]
       77 MOVE                             R8 R3
       78 CALL                             R7 1 1
       79 JUMPIFEQ                         R6 R7 ; [+2]
       81 LOADB                            R5 0 +1
       82 LOADB                            R5 1
       83 FASTCALL2K                       ASSERT R5 K21 ; [+4]
       85 LOADK                            R6 K21 ["Dialog type is missing a component mapping! Update dialogTypes to fix"]
       86 GETIMPORT                        R4 K23 [assert]
       88 CALL                             R4 2 0
       89 GETIMPORT                        R4 K26 [table.freeze]
       91 MOVE                             R5 R3
       92 CALL                             R4 1 -1
       93 RETURN                           R4 -1
