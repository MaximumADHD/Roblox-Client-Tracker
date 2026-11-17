PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetInstanceCompositionAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["childCount"]
        2 JUMPIF                           R1 ; [+5]
        3 GETTABLEKS                       R2 R0 K2 ["Size"]
        5 ORK                              R1 R2 K1 [0]
        6 SETTABLEKS                       R1 R0 K0 ["childCount"]
        8 GETTABLEKS                       R1 R0 K3 ["Children"]
       10 JUMPIFNOT                        R1 ; [+10]
       11 GETTABLEKS                       R1 R0 K3 ["Children"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETUPVAL                         R6 0
       17 MOVE                             R7 R5
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-4]
       21 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+6]
       14 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K11 ["Children"]
       19 RETURN                           R3 1
       20 DUPCLOSURE                       R3 K13 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 GETTABLEKS                       R4 R2 K14 ["childCount"]
       24 JUMPIF                           R4 ; [+5]
       25 GETTABLEKS                       R5 R2 K10 ["Size"]
       27 ORK                              R4 R5 K7 [0]
       28 SETTABLEKS                       R4 R2 K14 ["childCount"]
       30 GETTABLEKS                       R4 R2 K11 ["Children"]
       32 JUMPIFNOT                        R4 ; [+10]
       33 GETTABLEKS                       R4 R2 K11 ["Children"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 MOVE                             R9 R3
       39 MOVE                             R10 R8
       40 CALL                             R9 1 0
       41 FORGLOOP                         R4 2 ; [-4]
       43 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          VAL R6
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R7 K1 [pcall]
       11 CALL                             R7 1 2
       12 JUMPIFNOT                        R7 ; [+27]
       13 JUMPIFNOT                        R8 ; [+26]
       14 NAMECALL                         R9 R8 K2 ["GetDescendants"]
       16 CALL                             R9 1 3
       17 FORGPREP                         R9
       18 GETIMPORT                        R14 K4 [ipairs]
       20 MOVE                             R15 R0
       21 CALL                             R14 1 3
       22 FORGPREP_INEXT                   R14
       23 MOVE                             R21 R18
       24 NAMECALL                         R19 R13 K5 ["IsA"]
       26 CALL                             R19 2 1
       27 JUMPIFNOT                        R19 ; [+8]
       28 FASTCALL2                        TABLE_INSERT R1 R13 ; [+5]
       30 MOVE                             R20 R1
       31 MOVE                             R21 R13
       32 GETIMPORT                        R19 K8 [table.insert]
       34 CALL                             R19 2 0
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R14 2 [inext] ; [-14]
       38 FORGLOOP                         R9 2 ; [-21]
       40 FORGLOOP                         R2 2 ; [-35]
       42 GETIMPORT                        R2 K10 [game]
       44 LOADK                            R4 K11 ["Selection"]
       45 NAMECALL                         R2 R2 K12 ["GetService"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+10]
       49 GETIMPORT                        R2 K10 [game]
       51 LOADK                            R4 K11 ["Selection"]
       52 NAMECALL                         R2 R2 K12 ["GetService"]
       54 CALL                             R2 2 1
       55 MOVE                             R4 R1
       56 NAMECALL                         R2 R2 K13 ["Set"]
       58 CALL                             R2 2 0
       59 LENGTH                           R2 R1
       60 RETURN                           R2 1

PROTO_5:
        0 LOADK                            R4 K0 ["FetchInstanceComposition"]
        1 DUPCLOSURE                       R5 K1 [PROTO_2]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 LOADK                            R4 K3 ["SelectInstances"]
        6 DUPCLOSURE                       R5 K4 [PROTO_4]
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R2 R1 K2 ["Bind"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 14
        3 LOADK                            R1 K0 ["Workspace"]
        4 LOADK                            R2 K1 ["Players"]
        5 LOADK                            R3 K2 ["Lighting"]
        6 LOADK                            R4 K3 ["MaterialService"]
        7 LOADK                            R5 K4 ["ReplicatedFirst"]
        8 LOADK                            R6 K5 ["ReplicatedStorage"]
        9 LOADK                            R7 K6 ["ServerScriptService"]
       10 LOADK                            R8 K7 ["ServerStorage"]
       11 LOADK                            R9 K8 ["StarterGui"]
       12 LOADK                            R10 K9 ["StarterPack"]
       13 LOADK                            R11 K10 ["StarterPlayer"]
       14 LOADK                            R12 K11 ["Teams"]
       15 LOADK                            R13 K12 ["SoundService"]
       16 LOADK                            R14 K13 ["TextChatService"]
       17 SETLIST                          R0 R1 14 [1]
       19 NEWTABLE                         R1 1 0
       21 DUPCLOSURE                       R2 K14 [PROTO_5]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R1 K15 ["Init"]
       25 RETURN                           R1 1
