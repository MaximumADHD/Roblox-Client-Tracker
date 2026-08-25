PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["slotIndex"]
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R1 R7
       10 FORGLOOP                         R2 2 ; [-5]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["FIRST_SLOT_INDEX"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["LAST_SLOT_INDEX"]
       18 LOADN                            R3 1
       19 FORNPREP                         R2
       20 GETTABLE                         R5 R1 R4
       21 JUMPIF                           R5 ; [+1]
       22 RETURN                           R4 1
       23 FORNLOOP                         R2
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["name"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R2 R8
       10 FORGLOOP                         R3 2 ; [-5]
       12 LOADN                            R3 0
       13 MOVE                             R4 R1
       14 GETTABLE                         R5 R2 R4
       15 JUMPIFNOT                        R5 ; [+9]
       16 ADDK                             R3 R3 K1 [1]
       17 LOADK                            R5 K2 ["%*%*"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R3
       20 NAMECALL                         R5 R5 K3 ["format"]
       22 CALL                             R5 3 1
       23 MOVE                             R4 R5
       24 JUMPBACK                         ; [-11]
       25 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["name"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R2 R8
       10 FORGLOOP                         R3 2 ; [-5]
       12 LOADK                            R5 K1 ["^(.-)%s*(%d+)$"]
       13 NAMECALL                         R3 R1 K2 ["match"]
       15 CALL                             R3 2 2
       16 OR                               R3 R3 R1
       17 LOADN                            R5 1
       18 JUMPIFNOT                        R4 ; [+17]
       19 FASTCALL1                        TONUMBER R4 ; [+3]
       20 MOVE                             R8 R4
       21 GETIMPORT                        R7 K4 [tonumber]
       23 CALL                             R7 1 1
       24 LOADK                            R9 K5 ["Invalid numeric suffix: %*"]
       25 MOVE                             R11 R4
       26 NAMECALL                         R9 R9 K6 ["format"]
       28 CALL                             R9 2 1
       29 MOVE                             R8 R9
       30 FASTCALL2                        ASSERT R7 R8 ; [+3]
       32 GETIMPORT                        R6 K8 [assert]
       34 CALL                             R6 2 1
       35 ADDK                             R5 R6 K9 [1]
       36 LOADK                            R7 K10 ["%*%*"]
       37 MOVE                             R9 R3
       38 MOVE                             R10 R5
       39 NAMECALL                         R7 R7 K6 ["format"]
       41 CALL                             R7 3 1
       42 MOVE                             R6 R7
       43 GETTABLE                         R7 R2 R6
       44 JUMPIFNOT                        R7 ; [+9]
       45 ADDK                             R5 R5 K9 [1]
       46 LOADK                            R7 K10 ["%*%*"]
       47 MOVE                             R9 R3
       48 MOVE                             R10 R5
       49 NAMECALL                         R7 R7 K6 ["format"]
       51 CALL                             R7 3 1
       52 MOVE                             R6 R7
       53 JUMPBACK                         ; [-11]
       54 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FIRST_SLOT_INDEX"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["READ_ONLY_SLOT_COUNT"]
        6 ADD                              R2 R3 R4
        7 JUMPIFLT                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Domain"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainMaterialTypes"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K8 ["FIRST_SLOT_INDEX"]
       19 LOADN                            R3 63
       20 SETTABLEKS                       R3 R2 K9 ["LAST_SLOT_INDEX"]
       22 LOADN                            R3 2
       23 SETTABLEKS                       R3 R2 K10 ["READ_ONLY_SLOT_COUNT"]
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K12 ["findFreeTerrainMaterialIndex"]
       29 DUPCLOSURE                       R3 K13 [PROTO_1]
       30 SETTABLEKS                       R3 R2 K14 ["getNextGeneratedName"]
       32 DUPCLOSURE                       R3 K15 [PROTO_2]
       33 SETTABLEKS                       R3 R2 K16 ["getDuplicateName"]
       35 DUPCLOSURE                       R3 K17 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R3 R2 K18 ["isReadOnlyIndex"]
       39 RETURN                           R2 1
