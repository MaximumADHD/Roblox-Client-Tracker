PROTO_0:
        0 LOADK                            R3 K0 ["RBX_MaterialPickerSettings"]
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
        0 LOADK                            R3 K0 ["RBX_MaterialPickerSettings"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+10]
        6 LOADK                            R5 K2 ["Configuration"]
        7 NAMECALL                         R3 R1 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R2 R1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K6 [Instance.new]
       17 LOADK                            R3 K2 ["Configuration"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K0 ["RBX_MaterialPickerSettings"]
       20 SETTABLEKS                       R3 R2 K7 ["Name"]
       22 SETTABLEKS                       R0 R2 K8 ["Parent"]
       24 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R5 K0 ["RBX_MaterialPickerSettings"]
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
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R2 K4 ["GetAttribute"]
       21 CALL                             R3 2 1
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K6 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+3]
       29 MOVE                             R4 R3
       30 RETURN                           R4 1
       31 LOADNIL                          R4
       32 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R6 K0 ["RBX_MaterialPickerSettings"]
        1 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R4 ; [+10]
        6 LOADK                            R7 K2 ["Configuration"]
        7 NAMECALL                         R5 R4 K3 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+2]
       11 MOVE                             R3 R4
       12 JUMP                             ; [+12]
       13 LOADNIL                          R3
       14 JUMP                             ; [+10]
       15 GETIMPORT                        R5 K6 [Instance.new]
       17 LOADK                            R6 K2 ["Configuration"]
       18 CALL                             R5 1 1
       19 LOADK                            R6 K0 ["RBX_MaterialPickerSettings"]
       20 SETTABLEKS                       R6 R5 K7 ["Name"]
       22 SETTABLEKS                       R0 R5 K8 ["Parent"]
       24 MOVE                             R3 R5
       25 JUMPIFNOTEQKNIL                  R3 ; [+3]
       27 LOADB                            R4 0
       28 RETURN                           R4 1
       29 MOVE                             R6 R1
       30 MOVE                             R7 R2
       31 NAMECALL                         R4 R3 K9 ["SetAttribute"]
       33 CALL                             R4 3 0
       34 LOADB                            R4 1
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 SETTABLEKS                       R3 R0 K3 ["getString"]
        8 DUPCLOSURE                       R3 K4 [PROTO_3]
        9 SETTABLEKS                       R3 R0 K5 ["setString"]
       11 RETURN                           R0 1
