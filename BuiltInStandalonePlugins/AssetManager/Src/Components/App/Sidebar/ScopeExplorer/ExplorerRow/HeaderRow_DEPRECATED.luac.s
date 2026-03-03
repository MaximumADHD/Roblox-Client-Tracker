PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["ExplorerHeader"]
       12 GETTABLEKS                       R3 R4 K4 ["User"]
       14 JUMPIFNOTEQ                      R1 R3 ; [+7]
       16 LOADK                            R4 K5 ["Plugin"]
       17 LOADK                            R5 K6 ["PlaceholderUsername"]
       18 NAMECALL                         R2 R0 K7 ["getText"]
       20 CALL                             R2 3 1
       21 RETURN                           R2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K3 ["ExplorerHeader"]
       25 GETTABLEKS                       R3 R4 K8 ["Groups"]
       27 JUMPIFNOTEQ                      R1 R3 ; [+7]
       29 LOADK                            R4 K9 ["Explorer"]
       30 LOADK                            R5 K10 ["GroupsHeader"]
       31 NAMECALL                         R2 R0 K7 ["getText"]
       33 CALL                             R2 3 1
       34 RETURN                           R2 1
       35 GETUPVAL                         R3 1
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+13]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K3 ["ExplorerHeader"]
       41 GETTABLEKS                       R3 R4 K11 ["Recent"]
       43 JUMPIFNOTEQ                      R1 R3 ; [+7]
       45 LOADK                            R4 K12 ["Sidebar"]
       46 LOADK                            R5 K11 ["Recent"]
       47 NAMECALL                         R2 R0 K7 ["getText"]
       49 CALL                             R2 3 1
       50 RETURN                           R2 1
       51 LOADK                            R2 K13 [""]
       52 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 NEWTABLE                         R4 4 0
       10 GETTABLEKS                       R5 R0 K2 ["Index"]
       12 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K4 ["Position"]
       16 SETTABLEKS                       R5 R4 K4 ["Position"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["Tag"]
       21 LOADK                            R6 K6 ["am-size-full-explorerrow am-padding-left-small"]
       22 SETTABLE                         R6 R4 R5
       23 NEWTABLE                         R5 0 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K1 ["createElement"]
       28 GETUPVAL                         R7 3
       29 NEWTABLE                         R8 4 0
       31 GETUPVAL                         R9 4
       32 MOVE                             R10 R1
       33 GETTABLEKS                       R11 R0 K7 ["Text"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K7 ["Text"]
       38 GETIMPORT                        R9 K11 [Enum.TextTruncate.AtEnd]
       40 SETTABLEKS                       R9 R8 K9 ["TextTruncate"]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R9 R10 K5 ["Tag"]
       45 LOADK                            R10 K12 ["SubText Left"]
       46 SETTABLE                         R10 R8 R9
       47 CALL                             R6 2 -1
       48 SETLIST                          R5 R6 -1 [1]
       50 CALL                             R2 3 -1
       51 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETTABLEKS                       R6 R2 K13 ["UI"]
       34 GETTABLEKS                       R7 R6 K14 ["Pane"]
       36 GETTABLEKS                       R8 R6 K15 ["TextLabel"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R12 R0 K9 ["Src"]
       42 GETTABLEKS                       R11 R12 K16 ["Flags"]
       44 GETTABLEKS                       R10 R11 K17 ["getFFlagAmrRecents"]
       46 CALL                             R9 1 1
       47 DUPCLOSURE                       R10 K18 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R9
       50 DUPCLOSURE                       R11 K19 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R10
       56 RETURN                           R11 1
