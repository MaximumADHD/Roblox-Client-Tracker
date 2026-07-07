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
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R2 2
        2 GETTABLE                         R0 R1 R2
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_2:
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
       14 LOADNIL                          R8
       15 GETIMPORT                        R9 K3 [pcall]
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          REF R8
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R7
       21 CALL                             R9 1 0
       22 JUMPIFNOT                        R8 ; [+3]
       23 GETTABLEKS                       R9 R8 K4 ["Uri"]
       25 JUMPIF                           R9 ; [+2]
       26 CLOSEUPVALS                      R8
       27 JUMP                             ; [+16]
       28 GETIMPORT                        R10 K7 [string.match]
       30 GETTABLEKS                       R11 R8 K4 ["Uri"]
       32 LOADK                            R12 K8 ["%d+"]
       33 CALL                             R10 2 -1
       34 FASTCALL                         TONUMBER ; [+2]
       35 GETIMPORT                        R9 K10 [tonumber]
       37 CALL                             R9 -1 1
       38 JUMPIFNOTEQ                      R9 R1 ; [+4]
       40 LOADB                            R10 1
       41 CLOSEUPVALS                      R8
       42 RETURN                           R10 1
       43 CLOSEUPVALS                      R8
       44 FORGLOOP                         R3 2 ; [-31]
       46 LOADB                            R3 0
       47 RETURN                           R3 1

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
        7 NEWTABLE                         R1 0 10
        9 LOADK                            R2 K4 ["Workspace"]
       10 LOADK                            R3 K5 ["Lighting"]
       11 LOADK                            R4 K6 ["MaterialService"]
       12 LOADK                            R5 K7 ["ReplicatedFirst"]
       13 LOADK                            R6 K8 ["ReplicatedStorage"]
       14 LOADK                            R7 K9 ["ServerStorage"]
       15 LOADK                            R8 K10 ["SoundService"]
       16 LOADK                            R9 K11 ["StarterPack"]
       17 LOADK                            R10 K12 ["StarterPlayer"]
       18 LOADK                            R11 K13 ["StarterGui"]
       19 SETLIST                          R1 R2 10 [1]
       21 NEWTABLE                         R2 0 0
       23 DUPCLOSURE                       R3 K14 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R0
       26 DUPCLOSURE                       R4 K15 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R5 K16 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
