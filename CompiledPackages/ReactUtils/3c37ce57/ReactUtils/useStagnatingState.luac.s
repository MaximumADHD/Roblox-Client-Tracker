PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K1 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+48]
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R5 R1
       27 GETIMPORT                        R4 K1 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       36 LOADK                            R4 K3 ["Luau"]
       37 GETIMPORT                        R2 K5 [assert]
       39 CALL                             R2 2 0
       40 LENGTH                           R2 R0
       41 LENGTH                           R3 R1
       42 JUMPIFEQ                         R2 R3 ; [+3]
       44 LOADB                            R2 0
       45 RETURN                           R2 1
       46 MOVE                             R2 R0
       47 LOADNIL                          R3
       48 LOADNIL                          R4
       49 FORGPREP                         R2
       50 GETTABLE                         R7 R0 R5
       51 GETTABLE                         R8 R1 R5
       52 JUMPIFEQ                         R7 R8 ; [+3]
       54 LOADB                            R7 0
       55 RETURN                           R7 1
       56 FORGLOOP                         R2 1 ; [-7]
       58 MOVE                             R2 R1
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 GETTABLE                         R7 R0 R5
       63 GETTABLE                         R8 R1 R5
       64 JUMPIFEQ                         R7 R8 ; [+3]
       66 LOADB                            R7 0
       67 RETURN                           R7 1
       68 FORGLOOP                         R2 1 ; [-7]
       70 LOADB                            R2 1
       71 RETURN                           R2 1
       72 JUMPIFEQ                         R0 R1 ; [+2]
       74 LOADB                            R2 0 +1
       75 LOADB                            R2 1
       76 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["tick"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["current"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["value"]
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R1 1
       11 DUPTABLE                         R2 K3 [{"tick", "value"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["current"]
       15 SETTABLEKS                       R3 R2 K0 ["tick"]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K2 ["value"]
       22 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+8]
        7 GETUPVAL                         R1 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R2 K5 [{"tick", "value"}]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K6 ["current"]
       19 SETTABLEKS                       R3 R2 K3 ["tick"]
       21 SETTABLEKS                       R0 R2 K4 ["value"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useRef"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R5 R2 K1 ["current"]
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+7]
       16 SETTABLEKS                       R1 R2 K1 ["current"]
       18 GETTABLEKS                       R4 R3 K1 ["current"]
       20 ADDK                             R4 R4 K2 [1]
       21 SETTABLEKS                       R4 R3 K1 ["current"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useState"]
       26 DUPTABLE                         R5 K6 [{"tick", "value"}]
       27 GETTABLEKS                       R6 R3 K1 ["current"]
       29 SETTABLEKS                       R6 R5 K4 ["tick"]
       31 SETTABLEKS                       R0 R5 K5 ["value"]
       33 CALL                             R4 1 2
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 1
       43 MOVE                             R9 R0
       44 SETLIST                          R8 R9 1 [1]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R8 R4 K4 ["tick"]
       49 GETTABLEKS                       R9 R3 K1 ["current"]
       51 JUMPIFNOTEQ                      R8 R9 ; [+4]
       53 GETTABLEKS                       R7 R4 K5 ["value"]
       55 JUMP                             ; [+1]
       56 MOVE                             R7 R0
       57 MOVE                             R8 R6
       58 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_3]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
