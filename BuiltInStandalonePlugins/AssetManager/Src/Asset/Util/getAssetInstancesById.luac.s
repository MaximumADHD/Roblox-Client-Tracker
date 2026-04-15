PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+29]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K0 ["GetPropertiesOfClass"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+19]
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K1 ["ContentType"]
       18 JUMPIFEQKNIL                     R8 ; [+9]
       20 GETTABLEKS                       R10 R7 K2 ["Name"]
       22 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       24 MOVE                             R9 R1
       25 GETIMPORT                        R8 K5 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-13]
       30 GETUPVAL                         R3 0
       31 SETTABLE                         R1 R3 R0
       32 GETUPVAL                         R2 0
       33 GETTABLE                         R1 R2 R0
       34 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["SourceAssetId"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+3]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["ClassName"]
        9 CALL                             R2 1 1
       10 MOVE                             R3 R2
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLE                         R8 R0 R7
       15 JUMPIFNOT                        R8 ; [+17]
       16 GETTABLEKS                       R9 R8 K2 ["Uri"]
       18 JUMPIFNOT                        R9 ; [+14]
       19 GETIMPORT                        R10 K5 [string.match]
       21 GETTABLEKS                       R11 R8 K2 ["Uri"]
       23 LOADK                            R12 K6 ["%d+"]
       24 CALL                             R10 2 -1
       25 FASTCALL                         TONUMBER ; [+2]
       26 GETIMPORT                        R9 K8 [tonumber]
       28 CALL                             R9 -1 1
       29 JUMPIFNOTEQ                      R9 R1 ; [+3]
       31 LOADB                            R10 1
       32 RETURN                           R10 1
       33 FORGLOOP                         R3 2 ; [-20]
       35 LOADB                            R3 0
       36 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R3 K1 [game]
        4 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        6 NAMECALL                         R2 R2 K3 ["GetDescendants"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 MOVE                             R9 R0
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K1 [game]
        8 MOVE                             R9 R6
        9 NAMECALL                         R7 R7 K2 ["GetService"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+18]
       13 NAMECALL                         R8 R7 K3 ["GetDescendants"]
       15 CALL                             R8 1 3
       16 FORGPREP                         R8
       17 GETUPVAL                         R13 1
       18 MOVE                             R14 R12
       19 MOVE                             R15 R0
       20 CALL                             R13 2 1
       21 JUMPIFNOT                        R13 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       24 MOVE                             R14 R1
       25 MOVE                             R15 R12
       26 GETIMPORT                        R13 K6 [table.insert]
       28 CALL                             R13 2 0
       29 FORGLOOP                         R8 2 ; [-13]
       31 FORGLOOP                         R2 2 ; [-26]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReflectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Flags"]
       19 GETTABLEKS                       R3 R4 K12 ["getFFlagAmrAddFindInExplorerServiceSupport"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 0 10
       24 LOADK                            R4 K13 ["Workspace"]
       25 LOADK                            R5 K14 ["Lighting"]
       26 LOADK                            R6 K15 ["MaterialService"]
       27 LOADK                            R7 K16 ["ReplicatedFirst"]
       28 LOADK                            R8 K17 ["ReplicatedStorage"]
       29 LOADK                            R9 K18 ["ServerStorage"]
       30 LOADK                            R10 K19 ["SoundService"]
       31 LOADK                            R11 K20 ["StarterPack"]
       32 LOADK                            R12 K21 ["StarterPlayer"]
       33 LOADK                            R13 K22 ["StarterGui"]
       34 SETLIST                          R3 R4 10 [1]
       36 NEWTABLE                         R4 0 0
       38 DUPCLOSURE                       R5 K23 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 DUPCLOSURE                       R6 K24 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K25 [PROTO_2]
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R8 K26 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 MOVE                             R10 R2
       49 CALL                             R10 0 1
       50 JUMPIFNOT                        R10 ; [+2]
       51 MOVE                             R9 R8
       52 RETURN                           R9 1
       53 MOVE                             R9 R7
       54 RETURN                           R9 1
