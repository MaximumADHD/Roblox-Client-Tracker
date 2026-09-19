PROTO_0:
        0 LOADK                            R3 K0 ["MaterialNames"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+8]
        6 LOADK                            R5 K2 ["Configuration"]
        7 NAMECALL                         R3 R1 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R2 R1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R4 K0 ["MaterialNames"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 LOADK                            R5 K2 ["Configuration"]
        7 NAMECALL                         R3 R2 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R1 R2
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 JUMPIFEQKNIL                     R1 ; [+2]
       16 RETURN                           R1 1
       17 GETIMPORT                        R2 K6 [Instance.new]
       19 LOADK                            R3 K2 ["Configuration"]
       20 CALL                             R2 1 1
       21 LOADK                            R3 K0 ["MaterialNames"]
       22 SETTABLEKS                       R3 R2 K7 ["Name"]
       24 SETTABLEKS                       R0 R2 K8 ["Parent"]
       26 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R5 K0 ["MaterialNames"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKNIL                     R3 ; [+8]
        6 LOADK                            R6 K2 ["Configuration"]
        7 NAMECALL                         R4 R3 K3 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 MOVE                             R2 R3
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 JUMPIFNOTEQKNIL                  R2 ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K5 [tostring]
       22 CALL                             R5 1 1
       23 NAMECALL                         R3 R2 K6 ["GetAttribute"]
       25 CALL                             R3 2 1
       26 FASTCALL1                        TYPEOF R3 ; [+3]
       27 MOVE                             R6 R3
       28 GETIMPORT                        R5 K8 [typeof]
       30 CALL                             R5 1 1
       31 JUMPIFNOTEQKS                    R5 K9 ["string"] ; [+5]
       33 JUMPIFEQKS                       R3 K10 [""] ; [+3]
       35 MOVE                             R4 R3
       36 RETURN                           R4 1
       37 LOADNIL                          R4
       38 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R7 K0 ["MaterialNames"]
        1 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
        3 CALL                             R5 2 1
        4 JUMPIFEQKNIL                     R5 ; [+8]
        6 LOADK                            R8 K2 ["Configuration"]
        7 NAMECALL                         R6 R5 K3 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+2]
       11 MOVE                             R4 R5
       12 JUMP                             ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R3 R4
       17 JUMP                             ; [+10]
       18 GETIMPORT                        R5 K6 [Instance.new]
       20 LOADK                            R6 K2 ["Configuration"]
       21 CALL                             R5 1 1
       22 LOADK                            R6 K0 ["MaterialNames"]
       23 SETTABLEKS                       R6 R5 K7 ["Name"]
       25 SETTABLEKS                       R0 R5 K8 ["Parent"]
       27 MOVE                             R3 R5
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R7 R1
       30 GETIMPORT                        R6 K10 [tostring]
       32 CALL                             R6 1 1
       33 MOVE                             R7 R2
       34 NAMECALL                         R4 R3 K11 ["SetAttribute"]
       36 CALL                             R4 3 0
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 SETTABLEKS                       R3 R0 K3 ["get"]
        8 DUPCLOSURE                       R3 K4 [PROTO_3]
        9 SETTABLEKS                       R3 R0 K5 ["set"]
       11 RETURN                           R0 1
