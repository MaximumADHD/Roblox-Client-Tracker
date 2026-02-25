PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selection"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Set"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selection"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["Set"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKNIL                  R1 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
       20 FASTCALL2                        ASSERT R3 R4 ; [+3]
       22 GETIMPORT                        R2 K6 [assert]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K9 [Enum.UserInputState.Cancel]
       27 SETTABLEKS                       R2 R0 K7 ["UserInputState"]
       29 NEWTABLE                         R2 0 1
       31 DUPTABLE                         R3 K12 [{"Text", "OnItemClicked"}]
       32 GETUPVAL                         R4 3
       33 LOADK                            R6 K13 ["BodyPointsTool"]
       34 LOADK                            R7 K14 ["SelectAll"]
       35 NAMECALL                         R4 R4 K15 ["getText"]
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K10 ["Text"]
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R4 R3 K11 ["OnItemClicked"]
       45 SETLIST                          R2 R3 1 [1]
       47 MOVE                             R3 R1
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 DUPTABLE                         R10 K12 [{"Text", "OnItemClicked"}]
       52 SETTABLEKS                       R7 R10 K10 ["Text"]
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R11 R10 K11 ["OnItemClicked"]
       59 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       61 MOVE                             R9 R2
       62 GETIMPORT                        R8 K18 [table.insert]
       64 CALL                             R8 2 0
       65 FORGLOOP                         R3 2 ; [-15]
       67 GETUPVAL                         R3 4
       68 GETUPVAL                         R4 5
       69 MOVE                             R5 R2
       70 CALL                             R3 2 0
       71 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K2 ["InputBegan"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 0 0
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R8 R1 K12 ["Src"]
       24 GETTABLEKS                       R7 R8 K13 ["Components"]
       26 GETTABLEKS                       R6 R7 K14 ["EditingTools"]
       28 GETTABLEKS                       R5 R6 K15 ["BodyPointsTool"]
       30 GETTABLEKS                       R4 R5 K16 ["Types"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R7 R1 K12 ["Src"]
       37 GETTABLEKS                       R6 R7 K17 ["Util"]
       39 GETTABLEKS                       R5 R6 K18 ["Constants"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R10 R1 K12 ["Src"]
       46 GETTABLEKS                       R9 R10 K13 ["Components"]
       48 GETTABLEKS                       R8 R9 K14 ["EditingTools"]
       50 GETTABLEKS                       R7 R8 K15 ["BodyPointsTool"]
       52 GETTABLEKS                       R6 R7 K19 ["getHoveringPair"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K9 [require]
       57 GETTABLEKS                       R9 R1 K12 ["Src"]
       59 GETTABLEKS                       R8 R9 K20 ["Hooks"]
       61 GETTABLEKS                       R7 R8 K21 ["useEventConnection"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R8 R2 K22 ["UI"]
       66 GETTABLEKS                       R7 R8 K23 ["showContextMenu"]
       68 GETTABLEKS                       R9 R2 K24 ["ContextServices"]
       70 GETTABLEKS                       R8 R9 K25 ["Localization"]
       72 GETTABLEKS                       R10 R2 K24 ["ContextServices"]
       74 GETTABLEKS                       R9 R10 K26 ["Plugin"]
       76 DUPCLOSURE                       R10 K27 [PROTO_3]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 RETURN                           R10 1
