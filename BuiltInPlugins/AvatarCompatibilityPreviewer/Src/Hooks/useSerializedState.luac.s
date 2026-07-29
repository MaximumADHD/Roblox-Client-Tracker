PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R0
        4 JUMP                             ; [+5]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K0 ["GetAttribute"]
        9 CALL                             R0 2 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+3]
       12 GETUPVAL                         R1 3
       13 RETURN                           R1 1
       14 GETUPVAL                         R2 4
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["deserialize"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 RETURN                           R1 1
       22 MOVE                             R1 R0
       23 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+17]
        4 JUMPIFEQKNIL                     R0 ; [+14]
        6 GETTABLEKS                       R2 R0 K0 ["root"]
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQ                      R2 R3 ; [+9]
       11 GETTABLEKS                       R2 R0 K1 ["key"]
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQ                      R2 R3 ; [+4]
       16 GETTABLEKS                       R1 R0 K2 ["value"]
       18 JUMP                             ; [+8]
       19 GETUPVAL                         R1 3
       20 JUMP                             ; [+6]
       21 JUMPIFNOTEQKNIL                  R0 ; [+3]
       23 GETUPVAL                         R1 3
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R1 R0 K2 ["value"]
       27 DUPTABLE                         R2 K3 [{"key", "root", "value"}]
       28 GETUPVAL                         R3 2
       29 SETTABLEKS                       R3 R2 K1 ["key"]
       31 GETUPVAL                         R3 1
       32 SETTABLEKS                       R3 R2 K0 ["root"]
       34 GETUPVAL                         R5 4
       35 FASTCALL1                        TYPEOF R5 ; [+2]
       36 GETIMPORT                        R4 K5 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+5]
       41 GETUPVAL                         R3 4
       42 MOVE                             R4 R1
       43 CALL                             R3 1 1
       44 JUMP                             ; [+1]
       45 GETUPVAL                         R3 4
       46 SETTABLEKS                       R3 R2 K2 ["value"]
       48 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 JUMPIFNOT                        R4 ; [+6]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["serialize"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R0 R0 K1 ["SetAttribute"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ATTRIBUTE_PREFIX"]
        3 MOVE                             R6 R1
        4 CONCAT                           R4 R5 R6
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["useMemo"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 NEWTABLE                         R7 0 3
       16 MOVE                             R8 R0
       17 MOVE                             R9 R4
       18 MOVE                             R10 R3
       19 SETLIST                          R7 R8 3 [1]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K2 ["useState"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 2
       27 JUMPIFEQKNIL                     R6 ; [+18]
       29 GETTABLEKS                       R8 R6 K3 ["root"]
       31 JUMPIFEQ                         R8 R0 ; [+14]
       33 GETTABLEKS                       R8 R6 K4 ["key"]
       35 JUMPIFEQ                         R8 R1 ; [+10]
       37 GETIMPORT                        R8 K6 [warn]
       39 LOADK                            R10 K7 ["%* didn't match"]
       40 MOVE                             R12 R1
       41 NAMECALL                         R10 R10 K8 ["format"]
       43 CALL                             R10 2 1
       44 MOVE                             R9 R10
       45 CALL                             R8 1 0
       46 JUMPIFEQKNIL                     R6 ; [+12]
       48 GETTABLEKS                       R9 R6 K3 ["root"]
       50 JUMPIFNOTEQ                      R9 R0 ; [+8]
       52 GETTABLEKS                       R9 R6 K4 ["key"]
       54 JUMPIFNOTEQ                      R9 R1 ; [+4]
       56 GETTABLEKS                       R8 R6 K9 ["value"]
       58 JUMP                             ; [+1]
       59 MOVE                             R8 R5
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 NEWTABLE                         R11 0 3
       71 MOVE                             R12 R0
       72 MOVE                             R13 R1
       73 MOVE                             R14 R5
       74 SETLIST                          R11 R12 3 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K11 ["useEffect"]
       80 NEWCLOSURE                       R11 P2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R12 0 4
       87 MOVE                             R13 R4
       88 MOVE                             R14 R8
       89 MOVE                             R15 R3
       90 MOVE                             R16 R0
       91 SETLIST                          R12 R13 4 [1]
       93 CALL                             R10 2 0
       94 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarPreviewerSelectionStability"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagDebugAvatarPreviewerAvoidSerialization"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_4]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 RETURN                           R6 1
