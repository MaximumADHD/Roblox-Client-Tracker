PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K2 [string.split]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K3 ["."]
        9 CALL                             R2 2 1
       10 LENGTH                           R4 R2
       11 GETTABLE                         R3 R2 R4
       12 GETUPVAL                         R4 0
       13 SETTABLE                         R3 R4 R0
       14 RETURN                           R3 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [debug.profilebegin]
        3 LOADK                            R2 K3 ["Body of %* (%*)"]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R6 1
        6 GETUPVAL                         R8 2
        7 GETTABLE                         R7 R8 R6
        8 JUMPIFEQKNIL                     R7 ; [+3]
       10 MOVE                             R5 R7
       11 JUMP                             ; [+10]
       12 GETIMPORT                        R8 K6 [string.split]
       14 MOVE                             R9 R6
       15 LOADK                            R10 K7 ["."]
       16 CALL                             R8 2 1
       17 LENGTH                           R10 R8
       18 GETTABLE                         R9 R8 R10
       19 GETUPVAL                         R10 2
       20 SETTABLE                         R9 R10 R6
       21 MOVE                             R5 R9
       22 NAMECALL                         R2 R2 K8 ["format"]
       24 CALL                             R2 3 1
       25 MOVE                             R1 R2
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 3
       28 GETVARARGS                       R1 -1
       29 CALL                             R0 -1 1
       30 GETIMPORT                        R1 K10 [debug.profileend]
       32 CALL                             R1 0 0
       33 RETURN                           R0 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [debug.info]
        3 LOADN                            R2 2
        4 LOADK                            R3 K3 ["nsl"]
        5 CALL                             R1 2 3
        6 GETIMPORT                        R4 K5 [debug.profilebegin]
        8 LOADK                            R6 K6 ["React.createElement from %* (%*:%*)"]
        9 MOVE                             R8 R1
       10 GETUPVAL                         R11 0
       11 GETTABLE                         R10 R11 R2
       12 JUMPIFEQKNIL                     R10 ; [+3]
       14 MOVE                             R9 R10
       15 JUMP                             ; [+10]
       16 GETIMPORT                        R11 K9 [string.split]
       18 MOVE                             R12 R2
       19 LOADK                            R13 K10 ["."]
       20 CALL                             R11 2 1
       21 LENGTH                           R13 R11
       22 GETTABLE                         R12 R11 R13
       23 GETUPVAL                         R13 0
       24 SETTABLE                         R12 R13 R2
       25 MOVE                             R9 R12
       26 MOVE                             R10 R3
       27 NAMECALL                         R6 R6 K11 ["format"]
       29 CALL                             R6 4 1
       30 MOVE                             R5 R6
       31 CALL                             R4 1 0
       32 GETUPVAL                         R5 1
       33 GETTABLE                         R4 R5 R0
       34 JUMPIFNOTEQKNIL                  R4 ; [+22]
       36 FASTCALL1                        TYPEOF R0 ; [+3]
       37 MOVE                             R6 R0
       38 GETIMPORT                        R5 K13 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFNOTEQKS                    R5 K14 ["function"] ; [+12]
       43 GETIMPORT                        R5 K2 [debug.info]
       45 MOVE                             R6 R0
       46 LOADK                            R7 K15 ["ns"]
       47 CALL                             R5 2 2
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 JUMP                             ; [+1]
       54 MOVE                             R4 R0
       55 GETUPVAL                         R5 1
       56 SETTABLE                         R4 R5 R0
       57 GETUPVAL                         R5 2
       58 MOVE                             R6 R4
       59 GETVARARGS                       R7 -1
       60 CALL                             R5 -1 1
       61 GETIMPORT                        R6 K17 [debug.profileend]
       63 CALL                             R6 0 0
       64 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [debug.profilebegin]
        2 LOADK                            R2 K3 ["body of useEffect(%*:%*)"]
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R7 1
        5 GETTABLE                         R6 R7 R5
        6 JUMPIFEQKNIL                     R6 ; [+3]
        8 MOVE                             R4 R6
        9 JUMP                             ; [+10]
       10 GETIMPORT                        R7 K6 [string.split]
       12 MOVE                             R8 R5
       13 LOADK                            R9 K7 ["."]
       14 CALL                             R7 2 1
       15 LENGTH                           R9 R7
       16 GETTABLE                         R8 R7 R9
       17 GETUPVAL                         R9 1
       18 SETTABLE                         R8 R9 R5
       19 MOVE                             R4 R8
       20 GETUPVAL                         R5 2
       21 NAMECALL                         R2 R2 K8 ["format"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 3
       27 CALL                             R0 0 1
       28 GETIMPORT                        R1 K10 [debug.profileend]
       30 CALL                             R1 0 0
       31 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [debug.info]
        2 LOADN                            R3 2
        3 LOADK                            R4 K3 ["sl"]
        4 CALL                             R2 2 2
        5 GETIMPORT                        R4 K5 [debug.profilebegin]
        7 LOADK                            R6 K6 ["useEffect(%*:%*)"]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R2
       10 JUMPIFEQKNIL                     R9 ; [+3]
       12 MOVE                             R8 R9
       13 JUMP                             ; [+10]
       14 GETIMPORT                        R10 K9 [string.split]
       16 MOVE                             R11 R2
       17 LOADK                            R12 K10 ["."]
       18 CALL                             R10 2 1
       19 LENGTH                           R12 R10
       20 GETTABLE                         R11 R10 R12
       21 GETUPVAL                         R12 0
       22 SETTABLE                         R11 R12 R2
       23 MOVE                             R8 R11
       24 MOVE                             R9 R3
       25 NAMECALL                         R6 R6 K11 ["format"]
       27 CALL                             R6 3 1
       28 MOVE                             R5 R6
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 1
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 MOVE                             R6 R1
       37 CALL                             R4 2 0
       38 GETIMPORT                        R4 K13 [debug.profileend]
       40 CALL                             R4 0 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [debug.profilebegin]
        2 LOADK                            R2 K3 ["body of useMemo(%*:%*)"]
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R7 1
        5 GETTABLE                         R6 R7 R5
        6 JUMPIFEQKNIL                     R6 ; [+3]
        8 MOVE                             R4 R6
        9 JUMP                             ; [+10]
       10 GETIMPORT                        R7 K6 [string.split]
       12 MOVE                             R8 R5
       13 LOADK                            R9 K7 ["."]
       14 CALL                             R7 2 1
       15 LENGTH                           R9 R7
       16 GETTABLE                         R8 R7 R9
       17 GETUPVAL                         R9 1
       18 SETTABLE                         R8 R9 R5
       19 MOVE                             R4 R8
       20 GETUPVAL                         R5 2
       21 NAMECALL                         R2 R2 K8 ["format"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 CALL                             R0 1 0
       26 GETIMPORT                        R0 K11 [table.pack]
       28 GETUPVAL                         R1 3
       29 CALL                             R1 0 -1
       30 CALL                             R0 -1 1
       31 GETIMPORT                        R1 K13 [debug.profileend]
       33 CALL                             R1 0 0
       34 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K15 [table.unpack]
       38 CALL                             R1 1 -1
       39 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R2 K2 [debug.info]
        2 LOADN                            R3 2
        3 LOADK                            R4 K3 ["sl"]
        4 CALL                             R2 2 2
        5 GETUPVAL                         R4 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [debug.profilebegin]
        2 LOADK                            R2 K3 ["useContext"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K5 [debug.profileend]
        9 CALL                             R2 0 0
       10 RETURN                           R1 1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [debug.info]
        3 LOADN                            R1 2
        4 LOADK                            R2 K3 ["sl"]
        5 CALL                             R0 2 2
        6 GETIMPORT                        R2 K5 [debug.profilebegin]
        8 LOADK                            R4 K6 ["useCallback(%*:%*)"]
        9 GETUPVAL                         R8 0
       10 GETTABLE                         R7 R8 R0
       11 JUMPIFEQKNIL                     R7 ; [+3]
       13 MOVE                             R6 R7
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R8 K9 [string.split]
       17 MOVE                             R9 R0
       18 LOADK                            R10 K10 ["."]
       19 CALL                             R8 2 1
       20 LENGTH                           R10 R8
       21 GETTABLE                         R9 R8 R10
       22 GETUPVAL                         R10 0
       23 SETTABLE                         R9 R10 R0
       24 MOVE                             R6 R9
       25 MOVE                             R7 R1
       26 NAMECALL                         R4 R4 K11 ["format"]
       28 CALL                             R4 3 1
       29 MOVE                             R3 R4
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 1
       32 GETVARARGS                       R3 -1
       33 CALL                             R2 -1 1
       34 GETIMPORT                        R3 K13 [debug.profileend]
       36 CALL                             R3 0 0
       37 RETURN                           R2 1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [debug.profilebegin]
        3 LOADK                            R1 K3 ["joinTags"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETVARARGS                       R1 -1
        7 CALL                             R0 -1 1
        8 GETIMPORT                        R1 K5 [debug.profileend]
       10 CALL                             R1 0 0
       11 RETURN                           R0 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K2 [{[1] = "k"}]
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K4 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["createElement"]
       15 GETUPVAL                         R4 0
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R5 R4 K5 ["createElement"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       25 GETUPVAL                         R5 0
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R5 K6 ["useEffect"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       34 GETUPVAL                         R6 0
       35 NEWCLOSURE                       R7 P3
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R7 R6 K7 ["useMemo"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K8 ["useContext"]
       43 GETUPVAL                         R7 0
       44 NEWCLOSURE                       R8 P4
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R8 R7 K8 ["useContext"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       51 GETUPVAL                         R8 0
       52 NEWCLOSURE                       R9 P5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R9 R8 K9 ["useCallback"]
       57 GETIMPORT                        R8 K11 [require]
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K12 ["Packages"]
       62 GETTABLEKS                       R9 R9 K13 ["Framework"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R8 K14 ["Styling"]
       67 GETTABLEKS                       R9 R9 K15 ["joinTags"]
       69 GETTABLEKS                       R10 R8 K14 ["Styling"]
       71 NEWCLOSURE                       R11 P6
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R11 R10 K15 ["joinTags"]
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_10]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 RETURN                           R2 1
