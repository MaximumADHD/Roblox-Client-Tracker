PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%-%-%[(=*)%[%s*(.-)%s*%-%-%]%1%]%s*$"]
        4 CALL                             R1 2 4
        5 OR                               R5 R4 R0
        6 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["GetProductInfo"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 GETIMPORT                        R5 K6 [Enum.InfoType.Asset]
        9 CALL                             R1 4 2
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R2 K7 ["IsPublicDomain"]
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 GETTABLEKS                       R3 R2 K8 ["Creator"]
       21 GETUPVAL                         R4 1
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R9 R3 K9 ["CreatorType"]
       27 GETTABLEKS                       R10 R8 K9 ["CreatorType"]
       29 JUMPIFNOTEQ                      R9 R10 ; [+9]
       31 GETTABLEKS                       R9 R3 K10 ["CreatorTargetId"]
       33 GETTABLEKS                       R10 R8 K10 ["CreatorTargetId"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+3]
       37 LOADB                            R9 1
       38 RETURN                           R9 1
       39 FORGLOOP                         R4 2 ; [-15]
       41 LOADB                            R4 0
       42 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+5]
        5 NAMECALL                         R3 R0 K0 ["GetChildren"]
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 JUMP                             ; [+4]
       10 NAMECALL                         R3 R0 K1 ["GetDescendants"]
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 GETIMPORT                        R3 K4 [os.clock]
       16 CALL                             R3 0 1
       17 MOVE                             R4 R2
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETUPVAL                         R9 0
       22 JUMPIFNOT                        R9 ; [+7]
       23 GETIMPORT                        R10 K4 [os.clock]
       25 CALL                             R10 0 1
       26 SUB                              R9 R10 R3
       27 GETUPVAL                         R10 1
       28 JUMPIFLE                         R10 R9 ; [+28]
       30 LOADK                            R11 K5 ["IntValue"]
       31 NAMECALL                         R9 R8 K6 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+20]
       35 GETIMPORT                        R9 K9 [string.find]
       37 GETTABLEKS                       R10 R8 K10 ["Name"]
       39 LOADK                            R11 K11 ["%.tutorial$"]
       40 CALL                             R9 2 1
       41 JUMPIFNOT                        R9 ; [+13]
       42 GETTABLEKS                       R9 R8 K12 ["Value"]
       44 GETUPVAL                         R10 2
       45 MOVE                             R11 R9
       46 CALL                             R10 1 1
       47 JUMPIFNOT                        R10 ; [+7]
       48 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       50 MOVE                             R11 R1
       51 MOVE                             R12 R9
       52 GETIMPORT                        R10 K15 [table.insert]
       54 CALL                             R10 2 0
       55 FORGLOOP                         R4 2 ; [-35]
       57 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 LENGTH                           R2 R1
        6 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETIMPORT                        R7 K2 [pcall]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K3 ["GetObjects"]
       19 GETUPVAL                         R9 2
       20 LOADK                            R11 K4 ["rbxassetid://%*"]
       21 MOVE                             R13 R6
       22 NAMECALL                         R11 R11 K5 ["format"]
       24 CALL                             R11 2 1
       25 MOVE                             R10 R11
       26 CALL                             R7 3 2
       27 JUMPIFNOT                        R7 ; [+33]
       28 JUMPIFNOT                        R8 ; [+32]
       29 LENGTH                           R9 R8
       30 JUMPIFNOTEQKN                    R9 K6 [1] ; [+30]
       32 GETTABLEN                        R9 R8 1
       33 LOADK                            R12 K7 ["LuaSourceContainer"]
       34 NAMECALL                         R10 R9 K8 ["IsA"]
       36 CALL                             R10 2 1
       37 JUMPIFNOT                        R10 ; [+12]
       38 GETTABLEKS                       R11 R9 K9 ["Source"]
       40 GETIMPORT                        R12 K12 [string.find]
       42 MOVE                             R13 R11
       43 LOADK                            R14 K13 ["^%-%-%[(=*)%[%s*(.-)%s*%-%-%]%1%]%s*$"]
       44 CALL                             R12 2 4
       45 OR                               R10 R15 R11
       46 NAMECALL                         R11 R9 K14 ["Destroy"]
       48 CALL                             R11 1 0
       49 RETURN                           R10 1
       50 LOADK                            R12 K15 ["StringValue"]
       51 NAMECALL                         R10 R9 K8 ["IsA"]
       53 CALL                             R10 2 1
       54 JUMPIFNOT                        R10 ; [+6]
       55 GETTABLEKS                       R10 R9 K16 ["Value"]
       57 NAMECALL                         R11 R9 K14 ["Destroy"]
       59 CALL                             R11 1 0
       60 RETURN                           R10 1
       61 FORGLOOP                         R2 2 ; [-48]
       63 LOADNIL                          R2
       64 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["ServerStorage"]
       18 GETTABLEKS                       R3 R1 K10 ["DataModel"]
       20 GETTABLEKS                       R4 R1 K11 ["MarketplaceService"]
       22 GETIMPORT                        R5 K5 [require]
       24 GETTABLEKS                       R6 R0 K12 ["Bin"]
       26 GETTABLEKS                       R6 R6 K13 ["defineLuaFlags"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K14 ["getFFlagKnowledgeTutorialsAvoidHanging"]
       31 CALL                             R6 0 1
       32 GETTABLEKS                       R8 R5 K16 ["getFIntKnowledgeTutorialsAssetScanMaxMs"]
       34 CALL                             R8 0 1
       35 DIVK                             R7 R8 K15 [1000]
       36 GETIMPORT                        R8 K5 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K17 ["trustedCreators"]
       42 CALL                             R8 1 1
       43 DUPCLOSURE                       R9 K18 [PROTO_0]
       44 DUPCLOSURE                       R10 K19 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R8
       47 DUPCLOSURE                       R11 K20 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R10
       51 DUPCLOSURE                       R12 K21 [PROTO_3]
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 RETURN                           R12 1
