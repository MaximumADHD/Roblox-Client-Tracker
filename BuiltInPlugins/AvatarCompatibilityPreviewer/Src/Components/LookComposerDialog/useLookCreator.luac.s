PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserId"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K4 [{"id", "text", "creatorType", "creatorId"}]
        3 LOADK                            R3 K5 ["User_"]
        4 GETUPVAL                         R5 0
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K7 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 SETTABLEKS                       R2 R1 K0 ["id"]
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R2 R1 K1 ["text"]
       15 LOADK                            R2 K8 ["User"]
       16 SETTABLEKS                       R2 R1 K2 ["creatorType"]
       18 GETUPVAL                         R2 0
       19 SETTABLEKS                       R2 R1 K3 ["creatorId"]
       21 SETLIST                          R0 R1 1 [1]
       23 GETUPVAL                         R1 2
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 DUPTABLE                         R8 K4 [{"id", "text", "creatorType", "creatorId"}]
       28 LOADK                            R10 K9 ["Group_"]
       29 GETTABLEKS                       R12 R5 K0 ["id"]
       31 FASTCALL1                        TOSTRING R12 ; [+2]
       32 GETIMPORT                        R11 K7 [tostring]
       34 CALL                             R11 1 1
       35 CONCAT                           R9 R10 R11
       36 SETTABLEKS                       R9 R8 K0 ["id"]
       38 GETTABLEKS                       R9 R5 K10 ["name"]
       40 SETTABLEKS                       R9 R8 K1 ["text"]
       42 LOADK                            R9 K11 ["Group"]
       43 SETTABLEKS                       R9 R8 K2 ["creatorType"]
       45 GETTABLEKS                       R9 R5 K0 ["id"]
       47 SETTABLEKS                       R9 R8 K3 ["creatorId"]
       49 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K14 [table.insert]
       54 CALL                             R6 2 0
       55 FORGLOOP                         R1 2 ; [-29]
       57 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        5 DUPCLOSURE                       R2 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R2 R2 K2 ["use"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["useState"]
       17 LOADK                            R5 K4 ["User_"]
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K6 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 CALL                             R3 1 2
       25 LOADK                            R7 K7 ["LookComposerDialog"]
       26 LOADK                            R8 K8 ["Me"]
       27 NAMECALL                         R5 R2 K9 ["getText"]
       29 CALL                             R5 3 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R8 0 3
       39 MOVE                             R9 R1
       40 MOVE                             R10 R5
       41 MOVE                             R11 R0
       42 SETLIST                          R8 R9 3 [1]
       44 CALL                             R6 2 1
       45 DUPTABLE                         R7 K13 [{"selectedCreatorId", "setSelectedCreatorId", "creators"}]
       46 SETTABLEKS                       R3 R7 K10 ["selectedCreatorId"]
       48 SETTABLEKS                       R4 R7 K11 ["setSelectedCreatorId"]
       50 SETTABLEKS                       R6 R7 K12 ["creators"]
       52 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["LookComposerUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       40 GETTABLEKS                       R6 R6 K15 ["useManageableGroups"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Components"]
       49 GETTABLEKS                       R7 R7 K17 ["LookComposerDialog"]
       51 GETTABLEKS                       R7 R7 K18 ["CreatorSelectionDropdown"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K19 [PROTO_2]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 RETURN                           R7 1
