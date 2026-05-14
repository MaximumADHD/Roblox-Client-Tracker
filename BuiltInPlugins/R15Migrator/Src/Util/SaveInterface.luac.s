PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 LOADK                            R4 K1 ["Folder"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R1 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 LOADK                            R5 K1 ["Folder"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+1]
       10 RETURN                           R2 1
       11 GETIMPORT                        R3 K5 [Instance.new]
       13 LOADK                            R4 K1 ["Folder"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R0 R3 K6 ["Name"]
       17 SETTABLEKS                       R1 R3 K7 ["Parent"]
       19 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+24]
        2 GETUPVAL                         R2 1
        3 LOADK                            R5 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R6 K2 ["Folder"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K2 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R5 R4 K7 ["Name"]
       22 SETTABLEKS                       R2 R4 K8 ["Parent"]
       24 MOVE                             R1 R4
       25 SETUPVAL                         R1 0
       26 JUMPIFNOT                        R0 ; [+23]
       27 GETUPVAL                         R2 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+7]
       33 LOADK                            R6 K2 ["Folder"]
       34 NAMECALL                         R4 R3 K3 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+2]
       38 MOVE                             R1 R3
       39 RETURN                           R1 1
       40 GETIMPORT                        R4 K6 [Instance.new]
       42 LOADK                            R5 K2 ["Folder"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R0 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 RETURN                           R1 1
       50 GETUPVAL                         R1 0
       51 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+24]
        2 GETUPVAL                         R2 1
        3 LOADK                            R5 K0 ["R15MigratorPostPublish"]
        4 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R6 K2 ["Folder"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K2 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["R15MigratorPostPublish"]
       20 SETTABLEKS                       R5 R4 K7 ["Name"]
       22 SETTABLEKS                       R2 R4 K8 ["Parent"]
       24 MOVE                             R1 R4
       25 SETUPVAL                         R1 0
       26 JUMPIFNOT                        R0 ; [+23]
       27 GETUPVAL                         R2 0
       28 MOVE                             R5 R0
       29 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+7]
       33 LOADK                            R6 K2 ["Folder"]
       34 NAMECALL                         R4 R3 K3 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+2]
       38 MOVE                             R1 R3
       39 RETURN                           R1 1
       40 GETIMPORT                        R4 K6 [Instance.new]
       42 LOADK                            R5 K2 ["Folder"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R0 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 RETURN                           R1 1
       50 GETUPVAL                         R1 0
       51 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R2 1
        3 LOADK                            R4 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 LOADK                            R5 K2 ["Folder"]
        9 NAMECALL                         R3 R2 K3 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R1 R2
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R1 0
       18 JUMPIFNOT                        R1 ; [+7]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R1 0
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       24 CALL                             R1 2 1
       25 RETURN                           R1 1
       26 GETUPVAL                         R1 0
       27 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R2 1
        3 LOADK                            R4 K0 ["R15MigratorPostPublish"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 LOADK                            R5 K2 ["Folder"]
        9 NAMECALL                         R3 R2 K3 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R1 R2
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R1 0
       18 JUMPIFNOT                        R1 ; [+7]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R1 0
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       24 CALL                             R1 2 1
       25 RETURN                           R1 1
       26 GETUPVAL                         R1 0
       27 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["clearPublishTags"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["clearTags"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+24]
        2 GETUPVAL                         R4 1
        3 LOADK                            R7 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
        6 CALL                             R5 2 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 LOADK                            R8 K2 ["Folder"]
        9 NAMECALL                         R6 R5 K3 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+2]
       13 MOVE                             R3 R5
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R6 K6 [Instance.new]
       17 LOADK                            R7 K2 ["Folder"]
       18 CALL                             R6 1 1
       19 LOADK                            R7 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R7 R6 K7 ["Name"]
       22 SETTABLEKS                       R4 R6 K8 ["Parent"]
       24 MOVE                             R3 R6
       25 SETUPVAL                         R3 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["Parent"]
       29 JUMPIFEQ                         R2 R0 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R1 0
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K9 ["IsDescendantOf"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+24]
        2 GETUPVAL                         R4 1
        3 LOADK                            R7 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
        6 CALL                             R5 2 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 LOADK                            R8 K2 ["Folder"]
        9 NAMECALL                         R6 R5 K3 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+2]
       13 MOVE                             R3 R5
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R6 K6 [Instance.new]
       17 LOADK                            R7 K2 ["Folder"]
       18 CALL                             R6 1 1
       19 LOADK                            R7 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R7 R6 K7 ["Name"]
       22 SETTABLEKS                       R4 R6 K8 ["Parent"]
       24 MOVE                             R3 R6
       25 SETUPVAL                         R3 0
       26 GETUPVAL                         R2 0
       27 JUMPIFEQ                         R2 R0 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+24]
        2 GETUPVAL                         R5 1
        3 LOADK                            R8 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
        6 CALL                             R6 2 1
        7 JUMPIFNOT                        R6 ; [+7]
        8 LOADK                            R9 K2 ["Folder"]
        9 NAMECALL                         R7 R6 K3 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+2]
       13 MOVE                             R4 R6
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R7 K6 [Instance.new]
       17 LOADK                            R8 K2 ["Folder"]
       18 CALL                             R7 1 1
       19 LOADK                            R8 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R8 R7 K7 ["Name"]
       22 SETTABLEKS                       R5 R7 K8 ["Parent"]
       24 MOVE                             R4 R7
       25 SETUPVAL                         R4 0
       26 GETUPVAL                         R3 0
       27 NAMECALL                         R1 R0 K9 ["IsDescendantOf"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["R15MigratorProgress"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["R15MigratorProgress"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+4]
        7 NAMECALL                         R1 R0 K2 ["Destroy"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R2 R0 K0 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_14:
        0 DUPCLOSURE                       R0 K0 [PROTO_13]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 NAMECALL                         R1 R0 K0 ["SetAttribute"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K9 ["Adapted"]
       30 MOVE                             R5 R0
       31 NAMECALL                         R2 R1 K10 ["SetAttribute"]
       33 CALL                             R2 3 0
       34 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+24]
        2 GETUPVAL                         R2 1
        3 LOADK                            R5 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R6 K2 ["Folder"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K2 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R5 R4 K7 ["Name"]
       22 SETTABLEKS                       R2 R4 K8 ["Parent"]
       24 MOVE                             R1 R4
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K9 ["Adapted"]
       30 NAMECALL                         R1 R0 K10 ["GetAttribute"]
       32 CALL                             R1 2 1
       33 JUMPIFNOTEQKNIL                  R1 ; [+10]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K9 ["Adapted"]
       38 LOADB                            R5 1
       39 NAMECALL                         R2 R0 K11 ["SetAttribute"]
       41 CALL                             R2 3 0
       42 LOADB                            R2 1
       43 RETURN                           R2 1
       44 JUMPIFEQKB                       R1 TRUE ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["GetAttribute"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getConversionId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADK                            R5 K9 ["R6Characters"]
       28 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+7]
       32 LOADK                            R6 K2 ["Folder"]
       33 NAMECALL                         R4 R3 K3 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R1 R3
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R4 K6 [Instance.new]
       41 LOADK                            R5 K2 ["Folder"]
       42 CALL                             R4 1 1
       43 LOADK                            R5 K9 ["R6Characters"]
       44 SETTABLEKS                       R5 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 MOVE                             R2 R0
       50 LOADNIL                          R3
       51 LOADNIL                          R4
       52 FORGPREP                         R2
       53 GETUPVAL                         R9 2
       54 NAMECALL                         R7 R6 K10 ["GetAttribute"]
       56 CALL                             R7 2 1
       57 JUMPIF                           R7 ; [+27]
       58 GETUPVAL                         R8 3
       59 NAMECALL                         R8 R8 K11 ["GenerateGUID"]
       61 CALL                             R8 1 1
       62 MOVE                             R7 R8
       63 GETUPVAL                         R10 2
       64 MOVE                             R11 R7
       65 NAMECALL                         R8 R6 K12 ["SetAttribute"]
       67 CALL                             R8 3 0
       68 NAMECALL                         R8 R6 K13 ["Clone"]
       70 CALL                             R8 1 1
       71 SETTABLEKS                       R7 R8 K7 ["Name"]
       73 SETTABLEKS                       R1 R8 K8 ["Parent"]
       75 GETUPVAL                         R9 4
       76 MOVE                             R11 R8
       77 NAMECALL                         R9 R9 K14 ["clearPublishTags"]
       79 CALL                             R9 2 0
       80 GETUPVAL                         R9 5
       81 GETTABLEKS                       R9 R9 K15 ["clearTags"]
       83 MOVE                             R10 R8
       84 CALL                             R9 1 0
       85 FORGLOOP                         R2 2 ; [-33]
       87 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+24]
        2 GETUPVAL                         R2 1
        3 LOADK                            R5 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R6 K2 ["Folder"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K2 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R5 R4 K7 ["Name"]
       22 SETTABLEKS                       R2 R4 K8 ["Parent"]
       24 MOVE                             R1 R4
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R1 0
       27 LOADK                            R4 K9 ["R6Characters"]
       28 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+7]
       32 LOADK                            R5 K2 ["Folder"]
       33 NAMECALL                         R3 R2 K3 ["IsA"]
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+2]
       37 MOVE                             R0 R2
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R3 K6 [Instance.new]
       41 LOADK                            R4 K2 ["Folder"]
       42 CALL                             R3 1 1
       43 LOADK                            R4 K9 ["R6Characters"]
       44 SETTABLEKS                       R4 R3 K7 ["Name"]
       46 SETTABLEKS                       R1 R3 K8 ["Parent"]
       48 MOVE                             R0 R3
       49 NEWTABLE                         R1 0 0
       51 NAMECALL                         R2 R0 K10 ["GetChildren"]
       53 CALL                             R2 1 3
       54 FORGPREP                         R2
       55 GETTABLEKS                       R7 R6 K7 ["Name"]
       57 SETTABLE                         R6 R1 R7
       58 FORGLOOP                         R2 2 ; [-4]
       60 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R3 2
       28 GETUPVAL                         R4 3
       29 MOVE                             R6 R0
       30 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       32 CALL                             R4 2 -1
       33 NAMECALL                         R1 R1 K10 ["SetAttribute"]
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R2 1
        3 LOADK                            R4 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 LOADK                            R5 K2 ["Folder"]
        9 NAMECALL                         R3 R2 K3 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R1 R2
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R0 0
       18 JUMPIF                           R0 ; [+2]
       19 LOADNIL                          R0
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 0
       22 JUMPIF                           R1 ; [+15]
       23 GETUPVAL                         R2 1
       24 LOADK                            R4 K0 ["R15MigratorProgress"]
       25 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       27 CALL                             R2 2 1
       28 JUMPIFNOT                        R2 ; [+7]
       29 LOADK                            R5 K2 ["Folder"]
       30 NAMECALL                         R3 R2 K3 ["IsA"]
       32 CALL                             R3 2 1
       33 JUMPIFNOT                        R3 ; [+2]
       34 MOVE                             R1 R2
       35 JUMP                             ; [+1]
       36 LOADNIL                          R1
       37 SETUPVAL                         R1 0
       38 GETUPVAL                         R0 0
       39 GETUPVAL                         R2 2
       40 NAMECALL                         R0 R0 K4 ["GetAttribute"]
       42 CALL                             R0 2 1
       43 JUMPIFNOT                        R0 ; [+6]
       44 GETUPVAL                         R1 3
       45 MOVE                             R3 R0
       46 NAMECALL                         R1 R1 K5 ["JSONDecode"]
       48 CALL                             R1 2 1
       49 RETURN                           R1 1
       50 LOADNIL                          R1
       51 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R3 K0 ["KeyframeSequence"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R2 R0 K2 ["GetAttribute"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADK                            R5 K9 ["R6KeyframeSequences"]
       28 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+7]
       32 LOADK                            R6 K2 ["Folder"]
       33 NAMECALL                         R4 R3 K3 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R1 R3
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R4 K6 [Instance.new]
       41 LOADK                            R5 K2 ["Folder"]
       42 CALL                             R4 1 1
       43 LOADK                            R5 K9 ["R6KeyframeSequences"]
       44 SETTABLEKS                       R5 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 MOVE                             R2 R0
       50 LOADNIL                          R3
       51 LOADNIL                          R4
       52 FORGPREP                         R2
       53 LOADK                            R9 K10 ["KeyframeSequence"]
       54 NAMECALL                         R7 R6 K3 ["IsA"]
       56 CALL                             R7 2 1
       57 JUMPIFNOT                        R7 ; [+39]
       58 GETUPVAL                         R9 2
       59 NAMECALL                         R7 R6 K11 ["GetAttribute"]
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+34]
       63 GETUPVAL                         R8 3
       64 NAMECALL                         R8 R8 K12 ["GenerateGUID"]
       66 CALL                             R8 1 1
       67 MOVE                             R7 R8
       68 GETUPVAL                         R10 2
       69 MOVE                             R11 R7
       70 NAMECALL                         R8 R6 K13 ["SetAttribute"]
       72 CALL                             R8 3 0
       73 NAMECALL                         R8 R6 K14 ["Clone"]
       75 CALL                             R8 1 1
       76 SETTABLEKS                       R7 R8 K7 ["Name"]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R11 R11 K15 ["OriginalId"]
       81 LOADNIL                          R12
       82 NAMECALL                         R9 R8 K13 ["SetAttribute"]
       84 CALL                             R9 3 0
       85 SETTABLEKS                       R1 R8 K8 ["Parent"]
       87 GETUPVAL                         R9 5
       88 MOVE                             R11 R8
       89 NAMECALL                         R9 R9 K16 ["clearPublishTags"]
       91 CALL                             R9 2 0
       92 GETUPVAL                         R9 6
       93 GETTABLEKS                       R9 R9 K17 ["clearTags"]
       95 MOVE                             R10 R8
       96 CALL                             R9 1 0
       97 FORGLOOP                         R2 2 ; [-45]
       99 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R2 R0 K0 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+36]
        5 GETIMPORT                        R3 K2 [warn]
        7 LOADK                            R5 K3 ["Could not find matching R6 KeyframeSequence. Was the %* folder edited?"]
        8 GETUPVAL                         R8 1
        9 JUMPIF                           R8 ; [+24]
       10 GETUPVAL                         R9 2
       11 LOADK                            R12 K4 ["R15MigratorProgress"]
       12 NAMECALL                         R10 R9 K5 ["FindFirstChild"]
       14 CALL                             R10 2 1
       15 JUMPIFNOT                        R10 ; [+7]
       16 LOADK                            R13 K6 ["Folder"]
       17 NAMECALL                         R11 R10 K7 ["IsA"]
       19 CALL                             R11 2 1
       20 JUMPIFNOT                        R11 ; [+2]
       21 MOVE                             R8 R10
       22 JUMP                             ; [+10]
       23 GETIMPORT                        R11 K10 [Instance.new]
       25 LOADK                            R12 K6 ["Folder"]
       26 CALL                             R11 1 1
       27 LOADK                            R12 K4 ["R15MigratorProgress"]
       28 SETTABLEKS                       R12 R11 K11 ["Name"]
       30 SETTABLEKS                       R9 R11 K12 ["Parent"]
       32 MOVE                             R8 R11
       33 SETUPVAL                         R8 1
       34 GETUPVAL                         R7 1
       35 NAMECALL                         R5 R5 K13 ["format"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 LOADNIL                          R3
       42 JUMPIFNOT                        R1 ; [+2]
       43 GETTABLE                         R3 R1 R2
       44 JUMP                             ; [+54]
       45 GETUPVAL                         R5 1
       46 JUMPIF                           R5 ; [+24]
       47 GETUPVAL                         R6 2
       48 LOADK                            R9 K4 ["R15MigratorProgress"]
       49 NAMECALL                         R7 R6 K5 ["FindFirstChild"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+7]
       53 LOADK                            R10 K6 ["Folder"]
       54 NAMECALL                         R8 R7 K7 ["IsA"]
       56 CALL                             R8 2 1
       57 JUMPIFNOT                        R8 ; [+2]
       58 MOVE                             R5 R7
       59 JUMP                             ; [+10]
       60 GETIMPORT                        R8 K10 [Instance.new]
       62 LOADK                            R9 K6 ["Folder"]
       63 CALL                             R8 1 1
       64 LOADK                            R9 K4 ["R15MigratorProgress"]
       65 SETTABLEKS                       R9 R8 K11 ["Name"]
       67 SETTABLEKS                       R6 R8 K12 ["Parent"]
       69 MOVE                             R5 R8
       70 SETUPVAL                         R5 1
       71 GETUPVAL                         R5 1
       72 LOADK                            R8 K14 ["R6KeyframeSequences"]
       73 NAMECALL                         R6 R5 K5 ["FindFirstChild"]
       75 CALL                             R6 2 1
       76 JUMPIFNOT                        R6 ; [+7]
       77 LOADK                            R9 K6 ["Folder"]
       78 NAMECALL                         R7 R6 K7 ["IsA"]
       80 CALL                             R7 2 1
       81 JUMPIFNOT                        R7 ; [+2]
       82 MOVE                             R4 R6
       83 JUMP                             ; [+10]
       84 GETIMPORT                        R7 K10 [Instance.new]
       86 LOADK                            R8 K6 ["Folder"]
       87 CALL                             R7 1 1
       88 LOADK                            R8 K14 ["R6KeyframeSequences"]
       89 SETTABLEKS                       R8 R7 K11 ["Name"]
       91 SETTABLEKS                       R5 R7 K12 ["Parent"]
       93 MOVE                             R4 R7
       94 MOVE                             R7 R2
       95 NAMECALL                         R5 R4 K5 ["FindFirstChild"]
       97 CALL                             R5 2 1
       98 MOVE                             R3 R5
       99 JUMPIF                           R3 ; [+36]
      100 GETIMPORT                        R4 K2 [warn]
      102 LOADK                            R6 K15 ["Original R6 KeyframeSequence is unavailable. Was the %* folder edited?"]
      103 GETUPVAL                         R9 1
      104 JUMPIF                           R9 ; [+24]
      105 GETUPVAL                         R10 2
      106 LOADK                            R13 K4 ["R15MigratorProgress"]
      107 NAMECALL                         R11 R10 K5 ["FindFirstChild"]
      109 CALL                             R11 2 1
      110 JUMPIFNOT                        R11 ; [+7]
      111 LOADK                            R14 K6 ["Folder"]
      112 NAMECALL                         R12 R11 K7 ["IsA"]
      114 CALL                             R12 2 1
      115 JUMPIFNOT                        R12 ; [+2]
      116 MOVE                             R9 R11
      117 JUMP                             ; [+10]
      118 GETIMPORT                        R12 K10 [Instance.new]
      120 LOADK                            R13 K6 ["Folder"]
      121 CALL                             R12 1 1
      122 LOADK                            R13 K4 ["R15MigratorProgress"]
      123 SETTABLEKS                       R13 R12 K11 ["Name"]
      125 SETTABLEKS                       R10 R12 K12 ["Parent"]
      127 MOVE                             R9 R12
      128 SETUPVAL                         R9 1
      129 GETUPVAL                         R8 1
      130 NAMECALL                         R6 R6 K13 ["format"]
      132 CALL                             R6 2 1
      133 MOVE                             R5 R6
      134 CALL                             R4 1 0
      135 RETURN                           R0 0
      136 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADK                            R5 K9 ["R6KeyframeSequences"]
       28 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+7]
       32 LOADK                            R6 K2 ["Folder"]
       33 NAMECALL                         R4 R3 K3 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R1 R3
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R4 K6 [Instance.new]
       41 LOADK                            R5 K2 ["Folder"]
       42 CALL                             R4 1 1
       43 LOADK                            R5 K9 ["R6KeyframeSequences"]
       44 SETTABLEKS                       R5 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 NEWTABLE                         R2 0 0
       51 NAMECALL                         R3 R1 K10 ["GetChildren"]
       53 CALL                             R3 1 3
       54 FORGPREP                         R3
       55 GETTABLEKS                       R8 R7 K7 ["Name"]
       57 SETTABLE                         R7 R2 R8
       58 FORGLOOP                         R3 2 ; [-4]
       60 NEWTABLE                         R3 0 0
       62 MOVE                             R4 R0
       63 LOADNIL                          R5
       64 LOADNIL                          R6
       65 FORGPREP                         R4
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R9 R9 K11 ["getR6KeyframeSequence"]
       69 MOVE                             R10 R8
       70 MOVE                             R11 R2
       71 CALL                             R9 2 1
       72 SETTABLE                         R9 R3 R8
       73 FORGLOOP                         R4 2 ; [-8]
       75 RETURN                           R3 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADK                            R5 K9 ["R15KeyframeSequences"]
       28 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+7]
       32 LOADK                            R6 K2 ["Folder"]
       33 NAMECALL                         R4 R3 K3 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R1 R3
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R4 K6 [Instance.new]
       41 LOADK                            R5 K2 ["Folder"]
       42 CALL                             R4 1 1
       43 LOADK                            R5 K9 ["R15KeyframeSequences"]
       44 SETTABLEKS                       R5 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 NEWTABLE                         R2 0 0
       51 NAMECALL                         R3 R1 K10 ["GetChildren"]
       53 CALL                             R3 1 3
       54 FORGPREP                         R3
       55 GETTABLEKS                       R9 R7 K7 ["Name"]
       57 FASTCALL1                        TONUMBER R9 ; [+2]
       58 GETIMPORT                        R8 K12 [tonumber]
       60 CALL                             R8 1 1
       61 LOADB                            R9 1
       62 SETTABLE                         R9 R2 R8
       63 FORGLOOP                         R3 2 ; [-9]
       65 MOVE                             R3 R0
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLE                         R8 R2 R7
       70 JUMPIF                           R8 ; [+34]
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R8 R8 K13 ["getConvertedKeyframeSequence"]
       74 MOVE                             R9 R7
       75 CALL                             R8 1 1
       76 JUMPIFNOT                        R8 ; [+28]
       77 LOADB                            R9 1
       78 SETTABLE                         R9 R2 R7
       79 GETTABLEKS                       R9 R8 K8 ["Parent"]
       81 NAMECALL                         R9 R9 K14 ["Clone"]
       83 CALL                             R9 1 1
       84 SETTABLEKS                       R7 R9 K7 ["Name"]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K15 ["TempId"]
       89 LOADNIL                          R13
       90 NAMECALL                         R10 R9 K16 ["SetAttribute"]
       92 CALL                             R10 3 0
       93 SETTABLEKS                       R1 R9 K8 ["Parent"]
       95 GETUPVAL                         R10 4
       96 MOVE                             R12 R9
       97 NAMECALL                         R10 R10 K17 ["clearPublishTags"]
       99 CALL                             R10 2 0
      100 GETUPVAL                         R10 5
      101 GETTABLEKS                       R10 R10 K18 ["clearTags"]
      103 MOVE                             R11 R9
      104 CALL                             R10 1 0
      105 FORGLOOP                         R3 2 ; [-37]
      107 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [tostring]
        7 CALL                             R2 1 1
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K1 [tostring]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 0
       14 JUMPIF                           R5 ; [+24]
       15 GETUPVAL                         R6 1
       16 LOADK                            R9 K2 ["R15MigratorProgress"]
       17 NAMECALL                         R7 R6 K3 ["FindFirstChild"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+7]
       21 LOADK                            R10 K4 ["Folder"]
       22 NAMECALL                         R8 R7 K5 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+2]
       26 MOVE                             R5 R7
       27 JUMP                             ; [+10]
       28 GETIMPORT                        R8 K8 [Instance.new]
       30 LOADK                            R9 K4 ["Folder"]
       31 CALL                             R8 1 1
       32 LOADK                            R9 K2 ["R15MigratorProgress"]
       33 SETTABLEKS                       R9 R8 K9 ["Name"]
       35 SETTABLEKS                       R6 R8 K10 ["Parent"]
       37 MOVE                             R5 R8
       38 SETUPVAL                         R5 0
       39 GETUPVAL                         R5 0
       40 LOADK                            R8 K11 ["R15KeyframeSequences"]
       41 NAMECALL                         R6 R5 K3 ["FindFirstChild"]
       43 CALL                             R6 2 1
       44 JUMPIFNOT                        R6 ; [+7]
       45 LOADK                            R9 K4 ["Folder"]
       46 NAMECALL                         R7 R6 K5 ["IsA"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+2]
       50 MOVE                             R4 R6
       51 JUMP                             ; [+10]
       52 GETIMPORT                        R7 K8 [Instance.new]
       54 LOADK                            R8 K4 ["Folder"]
       55 CALL                             R7 1 1
       56 LOADK                            R8 K11 ["R15KeyframeSequences"]
       57 SETTABLEKS                       R8 R7 K9 ["Name"]
       59 SETTABLEKS                       R5 R7 K10 ["Parent"]
       61 MOVE                             R4 R7
       62 MOVE                             R7 R2
       63 NAMECALL                         R5 R4 K3 ["FindFirstChild"]
       65 CALL                             R5 2 1
       66 JUMPIFNOT                        R5 ; [+5]
       67 LOADK                            R8 K12 ["StringValue"]
       68 NAMECALL                         R6 R5 K5 ["IsA"]
       70 CALL                             R6 2 1
       71 JUMPIF                           R6 ; [+1]
       72 RETURN                           R0 0
       73 GETTABLEKS                       R7 R5 K13 ["Value"]
       75 LENGTH                           R6 R7
       76 LOADN                            R7 0
       77 JUMPIFNOTLT                      R7 R6 ; [+37]
       79 GETIMPORT                        R6 K15 [warn]
       81 LOADK                            R8 K16 ["%*.Value in folder R15KeyframeSequences should be empty. Was the %* folder edited?"]
       82 MOVE                             R10 R2
       83 GETUPVAL                         R12 0
       84 JUMPIF                           R12 ; [+24]
       85 GETUPVAL                         R13 1
       86 LOADK                            R16 K2 ["R15MigratorProgress"]
       87 NAMECALL                         R14 R13 K3 ["FindFirstChild"]
       89 CALL                             R14 2 1
       90 JUMPIFNOT                        R14 ; [+7]
       91 LOADK                            R17 K4 ["Folder"]
       92 NAMECALL                         R15 R14 K5 ["IsA"]
       94 CALL                             R15 2 1
       95 JUMPIFNOT                        R15 ; [+2]
       96 MOVE                             R12 R14
       97 JUMP                             ; [+10]
       98 GETIMPORT                        R15 K8 [Instance.new]
      100 LOADK                            R16 K4 ["Folder"]
      101 CALL                             R15 1 1
      102 LOADK                            R16 K2 ["R15MigratorProgress"]
      103 SETTABLEKS                       R16 R15 K9 ["Name"]
      105 SETTABLEKS                       R13 R15 K10 ["Parent"]
      107 MOVE                             R12 R15
      108 SETUPVAL                         R12 0
      109 GETUPVAL                         R11 0
      110 NAMECALL                         R8 R8 K17 ["format"]
      112 CALL                             R8 3 1
      113 MOVE                             R7 R8
      114 CALL                             R6 1 0
      115 SETTABLEKS                       R3 R5 K13 ["Value"]
      117 RETURN                           R0 0

PROTO_30:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["Animation"]
        7 NAMECALL                         R7 R6 K1 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+27]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K2 ["getNormalizedAssetId"]
       14 MOVE                             R8 R6
       15 CALL                             R7 1 1
       16 MOVE                             R9 R7
       17 JUMPIFNOT                        R9 ; [+9]
       18 FASTCALL1                        TYPEOF R7 ; [+3]
       19 MOVE                             R11 R7
       20 GETIMPORT                        R10 K4 [typeof]
       22 CALL                             R10 1 1
       23 JUMPIFEQKS                       R10 K5 ["number"] ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 FASTCALL1                        ASSERT R9 ; [+2]
       28 GETIMPORT                        R8 K7 [assert]
       30 CALL                             R8 1 0
       31 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R7
       35 GETIMPORT                        R8 K10 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R2 2 ; [-33]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K11 ["addConvertibleAssetIds"]
       43 MOVE                             R3 R1
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+24]
        2 GETUPVAL                         R2 1
        3 LOADK                            R5 K0 ["R15MigratorProgress"]
        4 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R6 K2 ["Folder"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 MOVE                             R1 R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R4 K6 [Instance.new]
       17 LOADK                            R5 K2 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["R15MigratorProgress"]
       20 SETTABLEKS                       R5 R4 K7 ["Name"]
       22 SETTABLEKS                       R2 R4 K8 ["Parent"]
       24 MOVE                             R1 R4
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R1 0
       27 LOADK                            R4 K9 ["R15KeyframeSequences"]
       28 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+7]
       32 LOADK                            R5 K2 ["Folder"]
       33 NAMECALL                         R3 R2 K3 ["IsA"]
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+2]
       37 MOVE                             R0 R2
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R3 K6 [Instance.new]
       41 LOADK                            R4 K2 ["Folder"]
       42 CALL                             R3 1 1
       43 LOADK                            R4 K9 ["R15KeyframeSequences"]
       44 SETTABLEKS                       R4 R3 K7 ["Name"]
       46 SETTABLEKS                       R1 R3 K8 ["Parent"]
       48 MOVE                             R0 R3
       49 NEWTABLE                         R1 0 0
       51 NAMECALL                         R2 R0 K10 ["GetChildren"]
       53 CALL                             R2 1 3
       54 FORGPREP                         R2
       55 LOADK                            R9 K11 ["StringValue"]
       56 NAMECALL                         R7 R6 K3 ["IsA"]
       58 CALL                             R7 2 1
       59 JUMPIFNOT                        R7 ; [+32]
       60 GETTABLEKS                       R8 R6 K7 ["Name"]
       62 FASTCALL1                        TONUMBER R8 ; [+2]
       63 GETIMPORT                        R7 K13 [tonumber]
       65 CALL                             R7 1 1
       66 JUMPIFNOT                        R7 ; [+25]
       67 GETTABLEKS                       R9 R6 K14 ["Value"]
       69 FASTCALL1                        TONUMBER R9 ; [+2]
       70 GETIMPORT                        R8 K13 [tonumber]
       72 CALL                             R8 1 1
       73 JUMPIFNOT                        R8 ; [+18]
       74 DUPTABLE                         R9 K18 [{"converted", "kfs", "name"}]
       75 SETTABLEKS                       R8 R9 K15 ["converted"]
       77 LOADK                            R12 K19 ["KeyframeSequence"]
       78 NAMECALL                         R10 R6 K20 ["FindFirstChildWhichIsA"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K16 ["kfs"]
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K7 ["Name"]
       86 NAMECALL                         R10 R6 K21 ["GetAttribute"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K17 ["name"]
       91 SETTABLE                         R9 R1 R7
       92 FORGLOOP                         R2 2 ; [-38]
       94 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+24]
        2 GETUPVAL                         R3 1
        3 LOADK                            R6 K0 ["R15MigratorPostPublish"]
        4 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 LOADK                            R7 K2 ["Folder"]
        9 NAMECALL                         R5 R4 K3 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R2 R4
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Folder"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["R15MigratorPostPublish"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R3 R5 K8 ["Parent"]
       24 MOVE                             R2 R5
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADK                            R5 K9 ["PublishInfo"]
       28 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+7]
       32 LOADK                            R6 K2 ["Folder"]
       33 NAMECALL                         R4 R3 K3 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R1 R3
       38 JUMP                             ; [+10]
       39 GETIMPORT                        R4 K6 [Instance.new]
       41 LOADK                            R5 K2 ["Folder"]
       42 CALL                             R4 1 1
       43 LOADK                            R5 K9 ["PublishInfo"]
       44 SETTABLEKS                       R5 R4 K7 ["Name"]
       46 SETTABLEKS                       R2 R4 K8 ["Parent"]
       48 MOVE                             R1 R4
       49 LOADK                            R4 K10 ["publishTime"]
       50 NAMECALL                         R5 R0 K11 ["ToIsoDate"]
       52 CALL                             R5 1 -1
       53 NAMECALL                         R2 R1 K12 ["SetAttribute"]
       55 CALL                             R2 -1 0
       56 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R2 1
        3 LOADK                            R4 K0 ["R15MigratorPostPublish"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 LOADK                            R5 K2 ["Folder"]
        9 NAMECALL                         R3 R2 K3 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R1 R2
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R1 0
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R0 0
       20 LOADK                            R2 K4 ["PublishInfo"]
       21 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
       23 CALL                             R0 2 1
       24 JUMP                             ; [+1]
       25 GETUPVAL                         R0 0
       26 JUMPIF                           R0 ; [+2]
       27 LOADNIL                          R1
       28 RETURN                           R1 1
       29 LOADK                            R3 K5 ["publishTime"]
       30 NAMECALL                         R1 R0 K6 ["GetAttribute"]
       32 CALL                             R1 2 1
       33 FASTCALL1                        TYPE R1 ; [+3]
       34 MOVE                             R4 R1
       35 GETIMPORT                        R3 K8 [type]
       37 CALL                             R3 1 1
       38 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+6]
       40 GETIMPORT                        R2 K12 [DateTime.fromIsoDate]
       42 MOVE                             R3 R1
       43 CALL                             R2 1 1
       44 RETURN                           R2 1
       45 LOADNIL                          R2
       46 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["ServerStorage"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["HttpService"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K6 [script]
       17 LOADK                            R5 K7 ["R15Migrator"]
       18 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K10 [require]
       23 GETTABLEKS                       R5 R3 K11 ["Src"]
       25 GETTABLEKS                       R5 R5 K12 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K10 [require]
       30 GETTABLEKS                       R6 R3 K11 ["Src"]
       32 GETTABLEKS                       R6 R6 K13 ["Resources"]
       34 GETTABLEKS                       R6 R6 K14 ["Constants"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K15 ["Attributes"]
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R3 K11 ["Src"]
       43 GETTABLEKS                       R8 R8 K16 ["Util"]
       45 GETTABLEKS                       R8 R8 K17 ["PublishTagging"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R3 K11 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Util"]
       54 GETTABLEKS                       R9 R9 K18 ["QuickAccessTagging"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R3 K11 ["Src"]
       59 GETTABLEKS                       R9 R9 K16 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["AnimationConversion"]
       63 GETIMPORT                        R10 K10 [require]
       65 GETTABLEKS                       R11 R9 K20 ["AnimationConversionManager"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R12 R5 K21 ["AttributePrefix"]
       70 LOADK                            R13 K22 ["R15MigratorConversionId"]
       71 CONCAT                           R11 R12 R13
       72 GETTABLEKS                       R13 R5 K21 ["AttributePrefix"]
       74 LOADK                            R14 K23 ["ScriptConversionRules"]
       75 CONCAT                           R12 R13 R14
       76 LOADNIL                          R13
       77 LOADNIL                          R14
       78 DUPCLOSURE                       R15 K24 [PROTO_0]
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R16 K25 [PROTO_1]
       81 NEWCLOSURE                       R17 P2
       82 CAPTURE                          REF R13
       83 CAPTURE                          VAL R1
       84 NEWCLOSURE                       R18 P3
       85 CAPTURE                          REF R14
       86 CAPTURE                          VAL R1
       87 NEWCLOSURE                       R19 P4
       88 CAPTURE                          REF R13
       89 CAPTURE                          VAL R1
       90 NEWCLOSURE                       R20 P5
       91 CAPTURE                          REF R14
       92 CAPTURE                          VAL R1
       93 DUPCLOSURE                       R21 K26 [PROTO_6]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 NEWCLOSURE                       R22 P7
       97 CAPTURE                          REF R13
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R22 R0 K27 ["isRootSaveFolderChildOf"]
      101 NEWCLOSURE                       R22 P8
      102 CAPTURE                          REF R13
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R22 R0 K28 ["isRootSaveFolderDescendantOf"]
      106 NEWCLOSURE                       R22 P9
      107 CAPTURE                          REF R13
      108 CAPTURE                          VAL R1
      109 SETTABLEKS                       R22 R0 K29 ["isRootSaveFolder"]
      111 NEWCLOSURE                       R22 P10
      112 CAPTURE                          REF R13
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R22 R0 K30 ["isDescendantOfSaveFolder"]
      116 DUPCLOSURE                       R22 K31 [PROTO_11]
      117 CAPTURE                          VAL R1
      118 SETTABLEKS                       R22 R0 K32 ["doesSaveFolderExistInDM"]
      120 DUPCLOSURE                       R22 K33 [PROTO_12]
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R22 R0 K34 ["removeAllSavedData"]
      124 DUPCLOSURE                       R22 K35 [PROTO_14]
      125 CAPTURE                          VAL R11
      126 SETTABLEKS                       R22 R0 K36 ["conversionIdFilter"]
      128 DUPCLOSURE                       R22 K37 [PROTO_15]
      129 CAPTURE                          VAL R11
      130 SETTABLEKS                       R22 R0 K38 ["removeConversionId"]
      132 NEWCLOSURE                       R22 P15
      133 CAPTURE                          REF R13
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R22 R0 K39 ["SetAdapted"]
      138 NEWCLOSURE                       R22 P16
      139 CAPTURE                          REF R13
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R22 R0 K40 ["GetAdapted"]
      144 DUPCLOSURE                       R22 K41 [PROTO_18]
      145 CAPTURE                          VAL R11
      146 SETTABLEKS                       R22 R0 K42 ["getConversionId"]
      148 DUPCLOSURE                       R22 K43 [PROTO_19]
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R22 R0 K44 ["hasConvertedFrom"]
      152 NEWCLOSURE                       R22 P19
      153 CAPTURE                          REF R13
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R8
      159 SETTABLEKS                       R22 R0 K45 ["addConvertibleCharacters"]
      161 NEWCLOSURE                       R22 P20
      162 CAPTURE                          REF R13
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R22 R0 K46 ["getR6Characters"]
      166 NEWCLOSURE                       R22 P21
      167 CAPTURE                          REF R13
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R2
      171 SETTABLEKS                       R22 R0 K47 ["addScriptConversionRules"]
      173 NEWCLOSURE                       R22 P22
      174 CAPTURE                          REF R13
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R2
      178 SETTABLEKS                       R22 R0 K48 ["getScriptConversionRules"]
      180 DUPCLOSURE                       R22 K49 [PROTO_24]
      181 CAPTURE                          VAL R11
      182 SETTABLEKS                       R22 R0 K50 ["isConvertibleKeyframeSequence"]
      184 NEWCLOSURE                       R22 P24
      185 CAPTURE                          REF R13
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R8
      192 SETTABLEKS                       R22 R0 K51 ["addConvertibleKeyframeSequences"]
      194 NEWCLOSURE                       R22 P25
      195 CAPTURE                          VAL R11
      196 CAPTURE                          REF R13
      197 CAPTURE                          VAL R1
      198 SETTABLEKS                       R22 R0 K52 ["getR6KeyframeSequence"]
      200 NEWCLOSURE                       R22 P26
      201 CAPTURE                          REF R13
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R22 R0 K53 ["getOriginalR6KeyframeSequences"]
      206 NEWCLOSURE                       R22 P27
      207 CAPTURE                          REF R13
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R8
      213 SETTABLEKS                       R22 R0 K54 ["addConvertibleAssetIds"]
      215 NEWCLOSURE                       R22 P28
      216 CAPTURE                          REF R13
      217 CAPTURE                          VAL R1
      218 SETTABLEKS                       R22 R0 K55 ["setTargetAssetId"]
      220 DUPCLOSURE                       R22 K56 [PROTO_30]
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R22 R0 K57 ["addConvertibleAnimations"]
      225 NEWCLOSURE                       R22 P30
      226 CAPTURE                          REF R13
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R6
      229 SETTABLEKS                       R22 R0 K58 ["getAllSavedAnimationAssetIds"]
      231 NEWCLOSURE                       R22 P31
      232 CAPTURE                          REF R14
      233 CAPTURE                          VAL R1
      234 SETTABLEKS                       R22 R0 K59 ["setPublishTime"]
      236 NEWCLOSURE                       R22 P32
      237 CAPTURE                          REF R14
      238 CAPTURE                          VAL R1
      239 SETTABLEKS                       R22 R0 K60 ["getPublishTime"]
      241 CLOSEUPVALS                      R13
      242 RETURN                           R0 1
