PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableFlagEditorLuaUI"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["EnableFlagEditorLuaUI"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 0
       21 DUPTABLE                         R2 K14 [{"getFFlagDebugStudioAllowFlagEditor", "getFFlagEnableFlagEditorLuaUI"}]
       22 GETTABLEKS                       R3 R1 K15 ["createGetFFlag"]
       24 LOADK                            R4 K16 ["DebugStudioAllowFlagEditor"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K12 ["getFFlagDebugStudioAllowFlagEditor"]
       28 DUPCLOSURE                       R3 K17 [PROTO_0]
       29 SETTABLEKS                       R3 R2 K13 ["getFFlagEnableFlagEditorLuaUI"]
       31 RETURN                           R2 1
