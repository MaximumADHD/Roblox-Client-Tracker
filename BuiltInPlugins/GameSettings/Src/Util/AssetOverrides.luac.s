PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFEQKNIL                     R0 ; [+11]
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K2 ["assetTypeID"]
       11 SETTABLE                         R6 R1 R7
       12 FORGLOOP                         R2 2 ; [-4]
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFEQKNIL                     R0 ; [+11]
        4 GETIMPORT                        R5 K1 [pairs]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 GETTABLEKS                       R10 R9 K2 ["assetTypeID"]
       11 SETTABLE                         R9 R4 R10
       12 FORGLOOP                         R5 2 ; [-4]
       14 MOVE                             R3 R4
       15 NEWTABLE                         R5 0 0
       17 JUMPIFEQKNIL                     R1 ; [+11]
       19 GETIMPORT                        R6 K1 [pairs]
       21 MOVE                             R7 R1
       22 CALL                             R6 1 3
       23 FORGPREP_NEXT                    R6
       24 GETTABLEKS                       R11 R10 K2 ["assetTypeID"]
       26 SETTABLE                         R10 R5 R11
       27 FORGLOOP                         R6 2 ; [-4]
       29 MOVE                             R4 R5
       30 DUPTABLE                         R5 K7 [{["assetID"] = 0, ["isPlayerChoice"] = True}]
       31 GETIMPORT                        R6 K1 [pairs]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 3
       35 FORGPREP_NEXT                    R6
       36 GETTABLEKS                       R13 R10 K2 ["assetTypeID"]
       38 GETTABLE                         R12 R3 R13
       39 OR                               R11 R12 R5
       40 GETTABLEKS                       R12 R10 K3 ["assetID"]
       42 GETTABLEKS                       R13 R11 K3 ["assetID"]
       44 JUMPIFNOTEQ                      R12 R13 ; [+7]
       46 GETTABLEKS                       R12 R10 K5 ["isPlayerChoice"]
       48 GETTABLEKS                       R13 R11 K5 ["isPlayerChoice"]
       50 JUMPIFEQ                         R12 R13 ; [+6]
       52 MOVE                             R12 R2
       53 MOVE                             R13 R10
       54 CALL                             R12 1 1
       55 JUMPIF                           R12 ; [+1]
       56 RETURN                           R0 0
       57 FORGLOOP                         R6 2 ; [-22]
       59 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R2 1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R2
        6 CALL                             R3 3 0
        7 CLOSEUPVALS                      R2
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 ADDK                             R2 R3 K0 [1]
        4 SETTABLE                         R0 R1 R2
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 3 0
        8 RETURN                           R2 1

PROTO_6:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 GETTABLEKS                       R7 R6 K2 ["isPlayerChoice"]
        8 JUMPIF                           R7 ; [+41]
        9 LOADB                            R7 0
       10 GETTABLEKS                       R8 R6 K3 ["assetID"]
       12 JUMPIFEQKNIL                     R8 ; [+27]
       14 LOADB                            R7 0
       15 GETTABLEKS                       R8 R6 K3 ["assetID"]
       17 JUMPIFEQKN                       R8 K4 [0] ; [+22]
       19 LOADB                            R7 0
       20 GETTABLEKS                       R8 R6 K3 ["assetID"]
       22 JUMPIFEQKS                       R8 K5 ["0"] ; [+17]
       24 GETIMPORT                        R9 K8 [string.gsub]
       26 GETTABLEKS                       R10 R6 K3 ["assetID"]
       28 LOADK                            R11 K9 [" "]
       29 LOADK                            R12 K10 [""]
       30 CALL                             R9 3 1
       31 FASTCALL1                        STRING_LEN R9 ; [+2]
       32 GETIMPORT                        R8 K12 [string.len]
       34 CALL                             R8 1 1
       35 LOADN                            R9 0
       36 JUMPIFLT                         R9 R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 JUMPIF                           R7 ; [+9]
       41 MOVE                             R8 R1
       42 JUMPIF                           R8 ; [+2]
       43 NEWTABLE                         R8 0 0
       45 MOVE                             R1 R8
       46 GETTABLEKS                       R8 R6 K13 ["assetTypeID"]
       48 LOADK                            R9 K14 ["OverrideEmpty"]
       49 SETTABLE                         R9 R1 R8
       50 FORGLOOP                         R2 2 ; [-45]
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_3]
        6 CAPTURE                          VAL R2
        7 SETTABLEKS                       R3 R0 K3 ["isEqual"]
        9 DUPCLOSURE                       R3 K4 [PROTO_5]
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R3 R0 K5 ["processSaveData"]
       13 DUPCLOSURE                       R3 K6 [PROTO_6]
       14 SETTABLEKS                       R3 R0 K7 ["getErrors"]
       16 RETURN                           R0 1
