PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["specificInputPinNodeId"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+12]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+6]
        7 GETTABLEKS                       R6 R0 K1 ["sourcePinDataType"]
        9 JUMPIFEQKS                       R6 K2 ["Parameter"] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 NOT                              R4 R5
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R0 K0 ["specificInputPinNodeId"]
       17 JUMPIFEQ                         R4 R1 ; [+3]
       19 LOADB                            R4 0
       20 RETURN                           R4 1
       21 GETTABLEKS                       R4 R0 K3 ["specificInputPinInputId"]
       23 JUMPIFEQKNIL                     R4 ; [+10]
       25 JUMPIFEQKNIL                     R3 ; [+8]
       27 GETTABLEKS                       R5 R0 K3 ["specificInputPinInputId"]
       29 JUMPIFEQ                         R5 R3 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1
       34 GETTABLEKS                       R5 R0 K4 ["specificInputPinName"]
       36 JUMPIFEQ                         R5 R2 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["getFFlagAnimGraphUIKeepParameterNoodlesOnDrag"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
