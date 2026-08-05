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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnCreatorLayerLoadingStatusChanged"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["OnCreatorLayerLoadingStatusChanged"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetCreatorLayerVariables"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+8]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFEQKS                       R1 K3 ["table"] ; [+4]
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 2
       16 JUMP                             ; [+1]
       17 SETUPVAL                         R0 2
       18 GETUPVAL                         R1 2
       19 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.IXPLoadingStatus.Pending]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.IXPLoadingStatus.None]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMP                             ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["OnCreatorLayerLoadingStatusChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 2
       13 JUMPIFEQKS                       R1 K2 ["none"] ; [+3]
       15 GETUPVAL                         R1 2
       16 RETURN                           R1 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U2
       21 DUPCLOSURE                       R2 K3 [PROTO_5]
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R5 3
       24 NAMECALL                         R3 R3 K4 ["GetCreatorStatusForLayer"]
       26 CALL                             R3 2 1
       27 MOVE                             R5 R3
       28 LOADB                            R4 1
       29 GETIMPORT                        R6 K8 [Enum.IXPLoadingStatus.Pending]
       31 JUMPIFEQ                         R5 R6 ; [+7]
       33 GETIMPORT                        R6 K10 [Enum.IXPLoadingStatus.None]
       35 JUMPIFEQ                         R5 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 JUMPIF                           R4 ; [+20]
       40 GETUPVAL                         R5 1
       41 GETUPVAL                         R7 3
       42 NAMECALL                         R5 R5 K11 ["GetCreatorLayerVariables"]
       44 CALL                             R5 2 1
       45 JUMPIFEQKNIL                     R5 ; [+8]
       47 FASTCALL1                        TYPEOF R5 ; [+3]
       48 MOVE                             R7 R5
       49 GETIMPORT                        R6 K13 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFEQKS                       R6 K14 ["table"] ; [+4]
       54 LOADNIL                          R6
       55 SETUPVAL                         R6 2
       56 JUMP                             ; [+1]
       57 SETUPVAL                         R5 2
       58 GETUPVAL                         R4 2
       59 RETURN                           R4 1
       60 GETIMPORT                        R5 K17 [os.clock]
       62 CALL                             R5 0 1
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R6 R6 K18 ["FIntAssistantExperimentReadyTimeoutSeconds"]
       66 ADD                              R4 R5 R6
       67 MOVE                             R6 R3
       68 LOADB                            R5 1
       69 GETIMPORT                        R7 K8 [Enum.IXPLoadingStatus.Pending]
       71 JUMPIFEQ                         R6 R7 ; [+7]
       73 GETIMPORT                        R7 K10 [Enum.IXPLoadingStatus.None]
       75 JUMPIFEQ                         R6 R7 ; [+2]
       77 LOADB                            R5 0 +1
       78 LOADB                            R5 1
       79 JUMPIFNOT                        R5 ; [+15]
       80 GETIMPORT                        R5 K17 [os.clock]
       82 CALL                             R5 0 1
       83 JUMPIFNOTLT                      R5 R4 ; [+11]
       85 GETIMPORT                        R5 K21 [task.wait]
       87 CALL                             R5 0 0
       88 GETUPVAL                         R5 1
       89 GETUPVAL                         R7 3
       90 NAMECALL                         R5 R5 K4 ["GetCreatorStatusForLayer"]
       92 CALL                             R5 2 1
       93 MOVE                             R3 R5
       94 JUMPBACK                         ; [-28]
       95 MOVE                             R6 R3
       96 LOADB                            R5 1
       97 GETIMPORT                        R7 K8 [Enum.IXPLoadingStatus.Pending]
       99 JUMPIFEQ                         R6 R7 ; [+7]
      101 GETIMPORT                        R7 K10 [Enum.IXPLoadingStatus.None]
      103 JUMPIFEQ                         R6 R7 ; [+2]
      105 LOADB                            R5 0 +1
      106 LOADB                            R5 1
      107 JUMPIFNOT                        R5 ; [+4]
      108 LOADNIL                          R5
      109 SETUPVAL                         R5 2
      110 LOADNIL                          R5
      111 RETURN                           R5 1
      112 GETUPVAL                         R6 1
      113 GETUPVAL                         R8 3
      114 NAMECALL                         R6 R6 K11 ["GetCreatorLayerVariables"]
      116 CALL                             R6 2 1
      117 JUMPIFEQKNIL                     R6 ; [+8]
      119 FASTCALL1                        TYPEOF R6 ; [+3]
      120 MOVE                             R8 R6
      121 GETIMPORT                        R7 K13 [typeof]
      123 CALL                             R7 1 1
      124 JUMPIFEQKS                       R7 K14 ["table"] ; [+4]
      126 LOADNIL                          R7
      127 SETUPVAL                         R7 2
      128 JUMP                             ; [+1]
      129 SETUPVAL                         R6 2
      130 GETUPVAL                         R5 2
      131 RETURN                           R5 1

PROTO_7:
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

PROTO_8:
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
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R6 R5 K2 ["getWhenReady"]
       22 NEWCLOSURE                       R6 P3
       23 CAPTURE                          REF R2
       24 CAPTURE                          REF R3
       25 SETTABLEKS                       R6 R5 K3 ["clear"]
       27 SETTABLEKS                       R3 R5 K4 ["_ixpConnection"]
       29 CLOSEUPVALS                      R2
       30 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["parseCommaDelimitedList"]
       19 DUPCLOSURE                       R3 K10 [PROTO_8]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K11 ["new"]
       23 RETURN                           R2 1
