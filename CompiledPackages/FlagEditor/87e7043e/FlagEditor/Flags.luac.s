MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["SafeFlags"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K9 [{"getFFlagDebugFlagEditorLogging"}]
       15 GETTABLEKS                       R4 R2 K10 ["createGetFFlag"]
       17 LOADK                            R5 K11 ["DebugFlagEditorLogging"]
       18 LOADB                            R6 0
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K8 ["getFFlagDebugFlagEditorLogging"]
       22 RETURN                           R3 1
