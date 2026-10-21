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
       32 DUPTABLE                         R4 K19 [{["Padding"] = 5, ["MaxWidth"] = 200, ["ShowDelay"] = 0.3, ["Offset"], ["DropShadow"]}]
       33 GETIMPORT                        R5 K22 [Vector2.new]
       35 LOADN                            R6 10
       36 LOADN                            R7 5
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K18 ["Offset"]
       40 GETTABLEKS                       R5 R1 K23 ["Dictionary"]
       42 GETTABLEKS                       R5 R5 K24 ["join"]
       44 MOVE                             R6 R3
       45 DUPTABLE                         R7 K27 [{["Radius"] = 3}]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K10 ["DropShadow"]
       49 RETURN                           R4 1
