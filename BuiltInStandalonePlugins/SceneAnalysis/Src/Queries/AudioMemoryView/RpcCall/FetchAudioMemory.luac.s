PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioMemoryAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+5]
       12 GETIMPORT                        R3 K7 [warn]
       14 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 JUMPIFNOT                        R1 ; [+1]
       18 JUMPIF                           R2 ; [+34]
       19 DUPTABLE                         R3 K13 [{"Id", "Name", "Size", "Children"}]
       20 LOADN                            R4 0
       21 SETTABLEKS                       R4 R3 K9 ["Id"]
       23 LOADK                            R4 K14 ["Root"]
       24 SETTABLEKS                       R4 R3 K10 ["Name"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K11 ["Size"]
       29 NEWTABLE                         R4 0 1
       31 DUPTABLE                         R5 K17 [{"Name", "SizeMB", "AssetId", "Id", "Children"}]
       32 LOADK                            R6 K18 ["Mock Audio"]
       33 SETTABLEKS                       R6 R5 K10 ["Name"]
       35 LOADN                            R6 5
       36 SETTABLEKS                       R6 R5 K15 ["SizeMB"]
       38 LOADK                            R6 K19 ["54321"]
       39 SETTABLEKS                       R6 R5 K16 ["AssetId"]
       41 LOADN                            R6 1
       42 SETTABLEKS                       R6 R5 K9 ["Id"]
       44 NEWTABLE                         R6 0 0
       46 SETTABLEKS                       R6 R5 K12 ["Children"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K12 ["Children"]
       52 RETURN                           R3 1
       53 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+62]
        7 NEWTABLE                         R1 0 0
        9 GETIMPORT                        R2 K5 [ipairs]
       11 MOVE                             R3 R0
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 CALL                             R2 1 3
       16 FORGPREP_INEXT                   R2
       17 GETIMPORT                        R7 K8 [string.split]
       19 MOVE                             R8 R6
       20 LOADK                            R9 K9 ["."]
       21 CALL                             R7 2 1
       22 GETIMPORT                        R8 K1 [game]
       24 LOADB                            R9 1
       25 GETIMPORT                        R10 K5 [ipairs]
       27 MOVE                             R11 R7
       28 CALL                             R10 1 3
       29 FORGPREP_INEXT                   R10
       30 MOVE                             R17 R14
       31 NAMECALL                         R15 R8 K10 ["FindFirstChild"]
       33 CALL                             R15 2 1
       34 JUMPIFNOT                        R15 ; [+2]
       35 MOVE                             R8 R15
       36 JUMP                             ; [+2]
       37 LOADB                            R9 0
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R10 2 [inext] ; [-10]
       41 JUMPIFNOT                        R9 ; [+11]
       42 GETIMPORT                        R10 K1 [game]
       44 JUMPIFEQ                         R8 R10 ; [+8]
       46 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       48 MOVE                             R11 R1
       49 MOVE                             R12 R8
       50 GETIMPORT                        R10 K13 [table.insert]
       52 CALL                             R10 2 0
       53 FORGLOOP                         R2 2 [inext] ; [-37]
       55 LENGTH                           R2 R1
       56 LOADN                            R3 0
       57 JUMPIFNOTLT                      R3 R2 ; [+11]
       59 GETIMPORT                        R2 K1 [game]
       61 LOADK                            R4 K2 ["Selection"]
       62 NAMECALL                         R2 R2 K3 ["GetService"]
       64 CALL                             R2 2 1
       65 MOVE                             R4 R1
       66 NAMECALL                         R2 R2 K14 ["Set"]
       68 CALL                             R2 2 0
       69 LOADNIL                          R1
       70 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["FetchAudioMemory"]
        1 DUPCLOSURE                       R5 K1 [PROTO_1]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 LOADK                            R4 K3 ["SelectInstancesByPaths"]
        6 DUPCLOSURE                       R5 K4 [PROTO_2]
        7 NAMECALL                         R2 R1 K2 ["Bind"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
