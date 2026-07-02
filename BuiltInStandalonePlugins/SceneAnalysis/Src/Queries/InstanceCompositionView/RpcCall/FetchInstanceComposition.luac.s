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
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+6]
       13 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K11 ["Children"]
       18 RETURN                           R3 1
       19 DUPCLOSURE                       R3 K13 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 GETTABLEKS                       R4 R2 K14 ["childCount"]
       23 JUMPIF                           R4 ; [+5]
       24 GETTABLEKS                       R5 R2 K10 ["Size"]
       26 ORK                              R4 R5 K7 [0]
       27 SETTABLEKS                       R4 R2 K14 ["childCount"]
       29 GETTABLEKS                       R4 R2 K11 ["Children"]
       31 JUMPIFNOT                        R4 ; [+10]
       32 GETTABLEKS                       R4 R2 K11 ["Children"]
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 MOVE                             R9 R3
       38 MOVE                             R10 R8
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 ; [-4]
       42 RETURN                           R2 1

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
        6 GETIMPORT                        R7 K1 [pcall]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          VAL R6
       10 CALL                             R7 1 2
       11 JUMPIFNOT                        R7 ; [+27]
       12 JUMPIFNOT                        R8 ; [+26]
       13 NAMECALL                         R9 R8 K2 ["GetDescendants"]
       15 CALL                             R9 1 3
       16 FORGPREP                         R9
       17 GETIMPORT                        R14 K4 [ipairs]
       19 MOVE                             R15 R0
       20 CALL                             R14 1 3
       21 FORGPREP_INEXT                   R14
       22 MOVE                             R21 R18
       23 NAMECALL                         R19 R13 K5 ["IsA"]
       25 CALL                             R19 2 1
       26 JUMPIFNOT                        R19 ; [+8]
       27 FASTCALL2                        TABLE_INSERT R1 R13 ; [+5]
       29 MOVE                             R20 R1
       30 MOVE                             R21 R13
       31 GETIMPORT                        R19 K8 [table.insert]
       33 CALL                             R19 2 0
       34 JUMP                             ; [+2]
       35 FORGLOOP                         R14 2 [inext] ; [-14]
       37 FORGLOOP                         R9 2 ; [-21]
       39 FORGLOOP                         R2 2 ; [-34]
       41 GETIMPORT                        R2 K10 [game]
       43 LOADK                            R4 K11 ["Selection"]
       44 NAMECALL                         R2 R2 K12 ["GetService"]
       46 CALL                             R2 2 1
       47 JUMPIFNOT                        R2 ; [+10]
       48 GETIMPORT                        R2 K10 [game]
       50 LOADK                            R4 K11 ["Selection"]
       51 NAMECALL                         R2 R2 K12 ["GetService"]
       53 CALL                             R2 2 1
       54 MOVE                             R4 R1
       55 NAMECALL                         R2 R2 K13 ["Set"]
       57 CALL                             R2 2 0
       58 LENGTH                           R2 R1
       59 RETURN                           R2 1

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
