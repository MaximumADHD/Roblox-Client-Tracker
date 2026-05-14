PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["controls"]
        4 GETTABLEKS                       R3 R3 K1 ["CreatorType"]
        6 GETIMPORT                        R4 K4 [Enum.CreatorType.User]
        8 JUMPIFNOTEQ                      R3 R4 ; [+9]
       10 LOADK                            R2 K5 [957765952]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K5 [957765952]
       13 NAMECALL                         R3 R3 K6 ["GetNameFromUserIdAsync"]
       15 CALL                             R3 2 1
       16 MOVE                             R1 R3
       17 JUMP                             ; [+8]
       18 GETUPVAL                         R3 1
       19 LOADK                            R5 K7 [1208727]
       20 NAMECALL                         R3 R3 K8 ["GetGroupInfoAsync"]
       22 CALL                             R3 2 1
       23 LOADK                            R2 K7 [1208727]
       24 GETTABLEKS                       R1 R3 K9 ["Name"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K10 ["createElement"]
       29 GETUPVAL                         R4 3
       30 NEWTABLE                         R5 0 0
       32 DUPTABLE                         R6 K12 [{"CreatorLabel"}]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K10 ["createElement"]
       36 GETUPVAL                         R8 4
       37 DUPTABLE                         R9 K15 [{"CreatorId", "CreatorName", "CreatorType"}]
       38 SETTABLEKS                       R2 R9 K13 ["CreatorId"]
       40 SETTABLEKS                       R1 R9 K14 ["CreatorName"]
       42 GETTABLEKS                       R10 R0 K0 ["controls"]
       44 GETTABLEKS                       R10 R10 K1 ["CreatorType"]
       46 SETTABLEKS                       R10 R9 K1 ["CreatorType"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K11 ["CreatorLabel"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Players"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["GroupService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Stories"]
       30 GETTABLEKS                       R5 R5 K14 ["ToolboxStoryWrapper"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K15 ["Parent"]
       39 GETTABLEKS                       R6 R6 K16 ["CreatorLabel"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K18 [{"CreatorType"}]
       43 NEWTABLE                         R7 0 2
       45 GETIMPORT                        R8 K21 [Enum.CreatorType.User]
       47 GETIMPORT                        R9 K23 [Enum.CreatorType.Group]
       49 SETLIST                          R7 R8 2 [1]
       51 SETTABLEKS                       R7 R6 K17 ["CreatorType"]
       53 DUPTABLE                         R7 K26 [{"controls", "story"}]
       54 SETTABLEKS                       R6 R7 K24 ["controls"]
       56 DUPCLOSURE                       R8 K27 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R7 K25 ["story"]
       64 RETURN                           R7 1
