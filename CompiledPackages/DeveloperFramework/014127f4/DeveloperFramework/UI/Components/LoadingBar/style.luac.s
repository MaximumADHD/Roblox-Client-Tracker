MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K4 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K2 ["UI"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["RoundBox"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K2 ["UI"]
       43 GETTABLEKS                       R7 R7 K12 ["Components"]
       45 GETTABLEKS                       R7 R7 K14 ["UIFolderData"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R6 K13 ["RoundBox"]
       52 GETTABLEKS                       R8 R8 K15 ["style"]
       54 CALL                             R7 1 1
       55 MOVE                             R8 R4
       56 MOVE                             R9 R7
       57 CALL                             R8 1 1
       58 DUPTABLE                         R9 K20 [{"Background", "Foreground", "BackgroundStyle", "ForegroundStyle"}]
       59 SETTABLEKS                       R5 R9 K16 ["Background"]
       61 SETTABLEKS                       R5 R9 K17 ["Foreground"]
       63 GETTABLEKS                       R10 R3 K21 ["Dictionary"]
       65 GETTABLEKS                       R10 R10 K22 ["join"]
       67 MOVE                             R11 R8
       68 DUPTABLE                         R12 K24 [{"Color"}]
       69 GETTABLEKS                       R13 R1 K25 ["Button"]
       71 SETTABLEKS                       R13 R12 K23 ["Color"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K18 ["BackgroundStyle"]
       76 GETTABLEKS                       R10 R3 K21 ["Dictionary"]
       78 GETTABLEKS                       R10 R10 K22 ["join"]
       80 MOVE                             R11 R8
       81 DUPTABLE                         R12 K24 [{"Color"}]
       82 GETTABLEKS                       R13 R1 K26 ["DialogMainButtonSelected"]
       84 SETTABLEKS                       R13 R12 K23 ["Color"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K19 ["ForegroundStyle"]
       89 RETURN                           R9 1
