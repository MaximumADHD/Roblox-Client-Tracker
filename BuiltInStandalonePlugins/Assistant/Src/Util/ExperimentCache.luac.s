PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["([^,]+)"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K5 [string.match]
       10 MOVE                             R8 R5
       11 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+4]
       14 JUMPIFEQKS                       R7 K7 [""] ; [+3]
       16 LOADB                            R8 1
       17 SETTABLE                         R8 R1 R7
       18 FORGLOOP                         R2 1 ; [-11]
       20 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K3 [Enum.IXPLoadingStatus.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADK                            R1 K4 ["none"]
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnCreatorLayerLoadingStatusChanged"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMP                             ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["OnCreatorLayerLoadingStatusChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 2
       13 JUMPIFEQKS                       R1 K2 ["none"] ; [+3]
       15 GETUPVAL                         R1 2
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 3
       19 NAMECALL                         R1 R1 K3 ["GetCreatorStatusForLayer"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K7 [Enum.IXPLoadingStatus.Initialized]
       24 JUMPIFEQ                         R1 R2 ; [+3]
       26 LOADNIL                          R2
       27 RETURN                           R2 1
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R4 3
       30 NAMECALL                         R2 R2 K8 ["GetCreatorLayerVariables"]
       32 CALL                             R2 2 1
       33 JUMPIFEQKNIL                     R2 ; [+8]
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K10 [typeof]
       39 CALL                             R3 1 1
       40 JUMPIFEQKS                       R3 K11 ["table"] ; [+4]
       42 LOADNIL                          R3
       43 SETUPVAL                         R3 2
       44 JUMP                             ; [+1]
       45 SETUPVAL                         R2 2
       46 GETUPVAL                         R3 2
       47 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMP                             ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["OnCreatorLayerLoadingStatusChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 2
       13 JUMPIFEQKS                       R1 K2 ["none"] ; [+3]
       15 GETUPVAL                         R1 2
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 3
       19 NAMECALL                         R1 R1 K3 ["GetCreatorStatusForLayer"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K7 [Enum.IXPLoadingStatus.Pending]
       24 JUMPIFEQ                         R1 R2 ; [+5]
       26 GETIMPORT                        R2 K9 [Enum.IXPLoadingStatus.None]
       28 JUMPIFNOTEQ                      R1 R2 ; [+14]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K0 ["OnCreatorLayerLoadingStatusChanged"]
       33 NAMECALL                         R2 R2 K10 ["Wait"]
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 1
       37 GETUPVAL                         R4 3
       38 NAMECALL                         R2 R2 K3 ["GetCreatorStatusForLayer"]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 JUMPBACK                         ; [-21]
       43 GETUPVAL                         R2 1
       44 GETUPVAL                         R4 3
       45 NAMECALL                         R2 R2 K11 ["GetCreatorLayerVariables"]
       47 CALL                             R2 2 1
       48 JUMPIFEQKNIL                     R2 ; [+8]
       50 FASTCALL1                        TYPEOF R2 ; [+3]
       51 MOVE                             R4 R2
       52 GETIMPORT                        R3 K13 [typeof]
       54 CALL                             R3 1 1
       55 JUMPIFEQKS                       R3 K14 ["table"] ; [+4]
       57 LOADNIL                          R3
       58 SETUPVAL                         R3 2
       59 JUMP                             ; [+1]
       60 SETUPVAL                         R2 2
       61 GETUPVAL                         R3 2
       62 RETURN                           R3 1

PROTO_5:
        0 LOADK                            R1 K0 ["none"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R2 K0 ["none"]
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R2
        6 DUPTABLE                         R5 K5 [{"get", "getWhenReady", "clear", "_ixpConnection"}]
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R6 R5 K1 ["get"]
       14 NEWCLOSURE                       R6 P2
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R6 R5 K2 ["getWhenReady"]
       21 NEWCLOSURE                       R6 P3
       22 CAPTURE                          REF R2
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R6 R5 K3 ["clear"]
       26 SETTABLEKS                       R3 R5 K4 ["_ixpConnection"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["parseCommaDelimitedList"]
        6 DUPCLOSURE                       R1 K2 [PROTO_6]
        7 SETTABLEKS                       R1 R0 K3 ["new"]
        9 RETURN                           R0 1
