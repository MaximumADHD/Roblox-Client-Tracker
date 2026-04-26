PROTO_0:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETIMPORT                        R7 K2 [table.find]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 CALL                             R7 2 1
       15 JUMPIFNOTEQKNIL                  R7 ; [+3]
       17 LOADB                            R8 0
       18 RETURN                           R8 1
       19 GETIMPORT                        R8 K4 [table.remove]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R7
       23 CALL                             R8 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["set selection"]
        4 CALL                             R1 3 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Selecting instance that doesn't exist"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 3
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K2 [table.insert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 4
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K3 ["Set"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K0 ["Get"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K1 ["root"]
       13 JUMPIFEQ                         R7 R8 ; [+47]
       15 GETUPVAL                         R8 2
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R7
       18 CALL                             R8 2 1
       19 JUMPIF                           R8 ; [+41]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K2 ["getInstanceId"]
       23 MOVE                             R9 R7
       24 CALL                             R8 1 1
       25 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       27 MOVE                             R10 R0
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K5 [table.insert]
       31 CALL                             R9 2 0
       32 JUMPIFNOTEQKNIL                  R2 ; [+5]
       34 NAMECALL                         R9 R7 K6 ["GetFullName"]
       36 CALL                             R9 1 1
       37 MOVE                             R2 R9
       38 GETTABLEKS                       R9 R7 K7 ["Parent"]
       40 JUMPIFNOTEQKNIL                  R9 ; [+2]
       42 LOADB                            R11 0 +1
       43 LOADB                            R11 1
       44 FASTCALL2K                       ASSERT R11 K8 ; [+4]
       46 LOADK                            R12 K8 ["Parent is somehow nil"]
       47 GETIMPORT                        R10 K10 [assert]
       49 CALL                             R10 2 0
       50 GETUPVAL                         R10 3
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R11 R12 K2 ["getInstanceId"]
       54 MOVE                             R12 R9
       55 CALL                             R11 1 -1
       56 CALL                             R10 -1 1
       57 GETUPVAL                         R11 4
       58 MOVE                             R12 R1
       59 MOVE                             R13 R10
       60 CALL                             R11 2 0
       61 FORGLOOP                         R3 2 ; [-52]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R4 R5 K11 ["hostRpcInterface"]
       66 GETTABLEKS                       R3 R4 K12 ["selectionChanged"]
       68 MOVE                             R4 R0
       69 MOVE                             R5 R1
       70 MOVE                             R6 R2
       71 GETUPVAL                         R7 5
       72 GETUPVAL                         R8 6
       73 CALL                             R3 5 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETIMPORT                        R0 K3 [table.remove]
       12 GETUPVAL                         R1 1
       13 LOADN                            R2 1
       14 CALL                             R0 2 1
       15 JUMPIFEQKNIL                     R0 ; [+21]
       17 GETUPVAL                         R1 2
       18 NAMECALL                         R1 R1 K4 ["Get"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R0
       23 MOVE                             R4 R1
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R2 4
       27 LOADK                            R3 K5 ["Selection predicted"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 4
       31 LOADK                            R3 K6 ["Selection changed while one was queued up, mispredict"]
       32 CALL                             R2 1 0
       33 GETIMPORT                        R2 K8 [table.clear]
       35 GETUPVAL                         R3 1
       36 CALL                             R2 1 0
       37 GETUPVAL                         R1 5
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["Heartbeat"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R0 R0 K1 ["Once"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 JUMPIFEQKNIL                     R0 ; [+5]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K0 ["Disconnect"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R5 0 0
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R7 P1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 LOADNIL                          R8
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          REF R8
       19 CAPTURE                          VAL R5
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R7
       24 GETUPVAL                         R11 2
       25 GETTABLEKS                       R10 R11 K0 ["SelectionChanged"]
       27 NEWCLOSURE                       R12 P3
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R9
       31 NAMECALL                         R10 R10 K1 ["Connect"]
       33 CALL                             R10 2 1
       34 LOADNIL                          R11
       35 JUMPIFEQKNIL                     R1 ; [+6]
       37 MOVE                             R14 R9
       38 NAMECALL                         R12 R1 K1 ["Connect"]
       40 CALL                             R12 2 1
       41 MOVE                             R11 R12
       42 DUPTABLE                         R12 K5 [{"sendCurrentSelection", "setSelection", "destroy"}]
       43 GETUPVAL                         R13 8
       44 MOVE                             R14 R7
       45 CALL                             R13 1 1
       46 SETTABLEKS                       R13 R12 K2 ["sendCurrentSelection"]
       48 GETUPVAL                         R13 8
       49 MOVE                             R14 R6
       50 CALL                             R13 1 1
       51 SETTABLEKS                       R13 R12 K3 ["setSelection"]
       53 NEWCLOSURE                       R13 P4
       54 CAPTURE                          VAL R10
       55 CAPTURE                          REF R11
       56 CAPTURE                          REF R8
       57 SETTABLEKS                       R13 R12 K4 ["destroy"]
       59 CLOSEUPVALS                      R8
       60 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Explorer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R6 R2 K11 ["Guest"]
       23 GETTABLEKS                       R5 R6 K12 ["InstanceGuestRPCInterface"]
       25 GETTABLEKS                       R4 R5 K13 ["InstanceGuestRPCInterfaceTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K14 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R2 K15 ["Parent"]
       37 GETTABLEKS                       R6 R7 K16 ["Signal"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R2 K17 ["Util"]
       44 GETTABLEKS                       R7 R8 K18 ["concatList"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R9 R2 K17 ["Util"]
       51 GETTABLEKS                       R8 R9 K19 ["createDebugLogger"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R12 R2 K11 ["Guest"]
       58 GETTABLEKS                       R11 R12 K12 ["InstanceGuestRPCInterface"]
       60 GETTABLEKS                       R10 R11 K17 ["Util"]
       62 GETTABLEKS                       R9 R10 K20 ["getInstanceById"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R13 R2 K11 ["Guest"]
       69 GETTABLEKS                       R12 R13 K12 ["InstanceGuestRPCInterface"]
       71 GETTABLEKS                       R11 R12 K17 ["Util"]
       73 GETTABLEKS                       R10 R11 K21 ["hasHiddenAncestry"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R12 R2 K17 ["Util"]
       80 GETTABLEKS                       R11 R12 K22 ["mapValues"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R13 R2 K17 ["Util"]
       87 GETTABLEKS                       R12 R13 K23 ["profile"]
       89 CALL                             R11 1 1
       90 MOVE                             R12 R7
       91 LOADK                            R13 K24 ["createGuestSelectionService"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K25 [PROTO_0]
       94 DUPCLOSURE                       R14 K26 [PROTO_7]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R11
      104 RETURN                           R14 1
