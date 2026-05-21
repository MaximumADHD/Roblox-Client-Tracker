MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["UIFolderData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R2 K10 ["DropShadow"]
       29 GETTABLEKS                       R4 R4 K11 ["style"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K16 [{"Padding", "MaxWidth", "ShowDelay", "Offset", "DropShadow"}]
       33 LOADN                            R5 5
       34 SETTABLEKS                       R5 R4 K12 ["Padding"]
       36 LOADN                            R5 200
       37 SETTABLEKS                       R5 R4 K13 ["MaxWidth"]
       39 LOADK                            R5 K17 [0.3]
       40 SETTABLEKS                       R5 R4 K14 ["ShowDelay"]
       42 GETIMPORT                        R5 K20 [Vector2.new]
       44 LOADN                            R6 10
       45 LOADN                            R7 5
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K15 ["Offset"]
       49 GETTABLEKS                       R5 R1 K21 ["Dictionary"]
       51 GETTABLEKS                       R5 R5 K22 ["join"]
       53 MOVE                             R6 R3
       54 DUPTABLE                         R7 K24 [{"Radius"}]
       55 LOADN                            R8 3
       56 SETTABLEKS                       R8 R7 K23 ["Radius"]
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K10 ["DropShadow"]
       61 RETURN                           R4 1
