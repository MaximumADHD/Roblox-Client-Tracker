PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["PluginReducer"]
        5 GETTABLEKS                       R1 R2 K2 ["animationId"]
        7 GETIMPORT                        R2 K5 [Instance.new]
        9 LOADK                            R3 K6 ["Folder"]
       10 CALL                             R2 1 1
       11 LOADK                            R3 K7 ["MoodAnimation"]
       12 SETTABLEKS                       R3 R2 K8 ["Name"]
       14 GETUPVAL                         R3 0
       15 MOVE                             R5 R2
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K9 ["Tag"]
       19 NAMECALL                         R3 R3 K10 ["AddTag"]
       21 CALL                             R3 3 0
       22 GETIMPORT                        R3 K5 [Instance.new]
       24 LOADK                            R4 K6 ["Folder"]
       25 CALL                             R3 1 1
       26 LOADK                            R4 K11 ["R15Anim"]
       27 SETTABLEKS                       R4 R3 K8 ["Name"]
       29 SETTABLEKS                       R2 R3 K12 ["Parent"]
       31 GETIMPORT                        R4 K5 [Instance.new]
       33 LOADK                            R5 K13 ["StringValue"]
       34 CALL                             R4 1 1
       35 LOADK                            R5 K14 ["mood"]
       36 SETTABLEKS                       R5 R4 K8 ["Name"]
       38 SETTABLEKS                       R3 R4 K12 ["Parent"]
       40 GETIMPORT                        R5 K5 [Instance.new]
       42 LOADK                            R6 K15 ["Animation"]
       43 CALL                             R5 1 1
       44 LOADK                            R6 K16 ["Animation1"]
       45 SETTABLEKS                       R6 R5 K8 ["Name"]
       47 GETIMPORT                        R6 K19 [string.format]
       49 LOADK                            R7 K20 ["rbxassetid://%s"]
       50 MOVE                             R8 R1
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K21 ["AnimationId"]
       54 SETTABLEKS                       R4 R5 K12 ["Parent"]
       56 GETUPVAL                         R6 2
       57 SETTABLEKS                       R6 R2 K12 ["Parent"]
       59 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R5 K12 ["Constants"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K13 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
