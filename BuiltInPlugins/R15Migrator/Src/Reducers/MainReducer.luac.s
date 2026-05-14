PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["SetAvatarType"] ; [+4]
        4 GETTABLEKS                       R2 R1 K2 ["avatarType"]
        6 RETURN                           R2 1
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["AnimationConversion"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["CharacterConversion"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K8 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["ScriptConversion"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K8 ["Parent"]
       47 GETTABLEKS                       R6 R6 K12 ["Adapter"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K8 ["Parent"]
       56 GETTABLEKS                       R7 R7 K13 ["PanelSelection"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K8 ["Parent"]
       65 GETTABLEKS                       R8 R8 K14 ["DataDisplay"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETIMPORT                        R9 K1 [script]
       72 GETTABLEKS                       R9 R9 K8 ["Parent"]
       74 GETTABLEKS                       R9 R9 K15 ["ConversionProgress"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R9 R1 K16 ["combineReducers"]
       79 DUPTABLE                         R10 K18 [{"AnimationConversion", "CharacterConversion", "ScriptConversion", "Adapter", "PanelSelection", "DataDisplay", "AvatarType", "ConversionProgress"}]
       80 SETTABLEKS                       R2 R10 K9 ["AnimationConversion"]
       82 SETTABLEKS                       R3 R10 K10 ["CharacterConversion"]
       84 SETTABLEKS                       R4 R10 K11 ["ScriptConversion"]
       86 SETTABLEKS                       R5 R10 K12 ["Adapter"]
       88 SETTABLEKS                       R6 R10 K13 ["PanelSelection"]
       90 SETTABLEKS                       R7 R10 K14 ["DataDisplay"]
       92 DUPCLOSURE                       R11 K19 [PROTO_0]
       93 SETTABLEKS                       R11 R10 K17 ["AvatarType"]
       95 SETTABLEKS                       R8 R10 K15 ["ConversionProgress"]
       97 CALL                             R9 1 1
       98 RETURN                           R9 1
