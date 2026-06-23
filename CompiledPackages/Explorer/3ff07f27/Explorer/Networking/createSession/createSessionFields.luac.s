PROTO_0:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 GETTABLEKS                       R4 R0 K3 ["datum"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R0 K3 ["datum"]
        7 GETTABLEKS                       R4 R0 K3 ["datum"]
        9 GETTABLEKS                       R4 R4 K4 ["fieldValues"]
       11 JUMPIFNOTEQKNIL                  R4 ; [+4]
       13 NEWTABLE                         R3 0 0
       15 JUMP                             ; [+7]
       16 GETIMPORT                        R3 K2 [table.clone]
       18 GETTABLEKS                       R4 R0 K3 ["datum"]
       20 GETTABLEKS                       R4 R4 K4 ["fieldValues"]
       22 CALL                             R3 1 1
       23 SETTABLE                         R2 R3 R1
       24 FASTCALL1                        TYPEOF R2 ; [+3]
       25 MOVE                             R5 R2
       26 GETIMPORT                        R4 K6 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K0 ["table"] ; [+10]
       31 GETIMPORT                        R4 K8 [table.isfrozen]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 JUMPIF                           R4 ; [+4]
       36 GETIMPORT                        R4 K10 [table.freeze]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 0
       40 GETTABLEKS                       R4 R0 K3 ["datum"]
       42 SETTABLEKS                       R3 R4 K4 ["fieldValues"]
       44 GETIMPORT                        R4 K10 [table.freeze]
       46 MOVE                             R5 R3
       47 CALL                             R4 1 0
       48 GETIMPORT                        R4 K10 [table.freeze]
       50 GETTABLEKS                       R5 R0 K3 ["datum"]
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["rootState"]
        3 GETTABLEKS                       R4 R4 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       12 LOADK                            R6 K2 ["Setting field value for unknown instance ID"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R3
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R4 3 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["searchRootState"]
       24 JUMPIFEQKNIL                     R4 ; [+14]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["searchRootState"]
       29 GETTABLEKS                       R5 R5 K1 ["instanceIdsToNodes"]
       31 GETTABLE                         R4 R5 R0
       32 JUMPIFEQKNIL                     R4 ; [+6]
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R4
       36 MOVE                             R7 R1
       37 MOVE                             R8 R2
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 MOVE                             R2 R0
        6 GETIMPORT                        R3 K4 [table.freeze]
        8 DUPTABLE                         R4 K8 [{"token", "field", "parameters"}]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K5 ["token"]
       12 GETUPVAL                         R5 0
       13 SETTABLEKS                       R5 R4 K6 ["field"]
       15 GETUPVAL                         R5 1
       16 SETTABLEKS                       R5 R4 K7 ["parameters"]
       18 CALL                             R3 1 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R1 K10 [table.insert]
       22 CALL                             R1 -1 0
       23 GETIMPORT                        R1 K4 [table.freeze]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["field"]
        3 GETUPVAL                         R3 0
        4 JUMPIFNOTEQ                      R2 R3 ; [+8]
        6 GETTABLEKS                       R2 R0 K1 ["parameters"]
        8 GETUPVAL                         R3 1
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 GETUPVAL                         R3 3
        9 LOADK                            R4 K0 ["Field %s was removed before we received the token and values for it"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["key"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 1
       15 GETIMPORT                        R3 K4 [table.clone]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 MOVE                             R0 R3
       20 GETIMPORT                        R3 K4 [table.clone]
       22 GETTABLE                         R4 R0 R2
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 4
       25 SETTABLEKS                       R4 R3 K5 ["token"]
       27 GETIMPORT                        R4 K7 [table.freeze]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 SETTABLE                         R4 R0 R2
       32 GETIMPORT                        R4 K7 [table.freeze]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
        3 GETTABLEKS                       R0 R0 K1 ["createFieldAsync"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["key"]
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 2
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["guestRpcInterface"]
       15 GETTABLEKS                       R2 R2 K3 ["deleteField"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 SETUPVAL                         R0 4
       21 GETUPVAL                         R2 5
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          VAL R0
       28 CALL                             R2 1 0
       29 MOVE                             R2 R1
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K4 ["rootState"]
       36 GETTABLEKS                       R8 R8 K5 ["instanceIdsToNodes"]
       38 GETTABLE                         R7 R8 R5
       39 JUMPIFNOTEQKNIL                  R7 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       45 LOADK                            R10 K6 ["Setting field value for unknown instance ID"]
       46 GETIMPORT                        R8 K8 [assert]
       48 CALL                             R8 2 0
       49 GETUPVAL                         R8 8
       50 MOVE                             R9 R7
       51 MOVE                             R10 R0
       52 MOVE                             R11 R6
       53 CALL                             R8 3 0
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K9 ["searchRootState"]
       57 JUMPIFEQKNIL                     R8 ; [+14]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K9 ["searchRootState"]
       62 GETTABLEKS                       R9 R9 K5 ["instanceIdsToNodes"]
       64 GETTABLE                         R8 R9 R5
       65 JUMPIFEQKNIL                     R8 ; [+6]
       67 GETUPVAL                         R9 8
       68 MOVE                             R10 R8
       69 MOVE                             R11 R0
       70 MOVE                             R12 R6
       71 CALL                             R9 3 0
       72 FORGLOOP                         R2 2 ; [-40]
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K4 ["rootState"]
       77 GETTABLEKS                       R2 R2 K10 ["queueRootChanged"]
       79 CALL                             R2 0 0
       80 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
        8 GETTABLEKS                       R0 R0 K1 ["deleteField"]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 LOADNIL                          R2
        6 LOADB                            R3 0
        7 GETIMPORT                        R4 K2 [task.spawn]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R3
       14 CAPTURE                          REF R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CALL                             R4 1 0
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          REF R3
       22 CAPTURE                          REF R2
       23 CAPTURE                          UPVAL U1
       24 CLOSEUPVALS                      R2
       25 RETURN                           R4 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["rootState"]
        3 GETTABLEKS                       R5 R5 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R4 R5 R1
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["Setting field value for unknown instance ID"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R4
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 CALL                             R5 3 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["searchRootState"]
       24 JUMPIFEQKNIL                     R5 ; [+14]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["searchRootState"]
       29 GETTABLEKS                       R6 R6 K1 ["instanceIdsToNodes"]
       31 GETTABLE                         R5 R6 R1
       32 JUMPIFEQKNIL                     R5 ; [+6]
       34 GETUPVAL                         R6 1
       35 MOVE                             R7 R5
       36 MOVE                             R8 R0
       37 MOVE                             R9 R2
       38 CALL                             R6 3 0
       39 JUMPIFNOT                        R3 ; [+4]
       40 GETUPVAL                         R4 2
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R0
       43 CALL                             R4 1 0
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K0 ["rootState"]
       47 GETTABLEKS                       R4 R4 K6 ["queueRootChanged"]
       49 CALL                             R4 0 0
       50 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["rootState"]
        3 GETTABLEKS                       R2 R2 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["Could not find node of instance ID being viewed"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K5 ["datum"]
       18 GETTABLEKS                       R3 R3 K6 ["isGhost"]
       20 NOT                              R2 R3
       21 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 LOADB                            R6 1
       10 SETTABLE                         R6 R0 R4
       11 FORGLOOP                         R1 2 ; [-3]
       13 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 2 1
        9 MOVE                             R0 R2
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
       14 GETTABLEKS                       R0 R0 K1 ["viewInstancesAsync"]
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 2
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K2 ["get"]
       21 CALL                             R2 0 1
       22 NEWTABLE                         R3 0 0
       24 MOVE                             R4 R2
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETTABLEKS                       R9 R8 K3 ["token"]
       30 JUMPIFEQKNIL                     R9 ; [+5]
       32 GETTABLEKS                       R9 R8 K3 ["token"]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R3 R9
       36 FORGLOOP                         R4 2 ; [-9]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K4 ["rootState"]
       41 MOVE                             R5 R0
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 GETTABLEKS                       R11 R4 K5 ["instanceIdsToNodes"]
       47 GETTABLE                         R10 R11 R8
       48 JUMPIFNOTEQKNIL                  R10 ; [+2]
       50 LOADB                            R12 0 +1
       51 LOADB                            R12 1
       52 FASTCALL2K                       ASSERT R12 K6 ; [+4]
       54 LOADK                            R13 K6 ["Server is telling us about field for instance we don't know about"]
       55 GETIMPORT                        R11 K8 [assert]
       57 CALL                             R11 2 0
       58 GETIMPORT                        R11 K11 [table.clone]
       60 GETTABLEKS                       R12 R10 K12 ["datum"]
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K12 ["datum"]
       65 GETTABLEKS                       R11 R10 K12 ["datum"]
       67 LOADNIL                          R12
       68 SETTABLEKS                       R12 R11 K13 ["fieldValues"]
       70 MOVE                             R11 R9
       71 LOADNIL                          R12
       72 LOADNIL                          R13
       73 FORGPREP                         R11
       74 GETTABLE                         R16 R3 R14
       75 JUMPIF                           R16 ; [+5]
       76 GETUPVAL                         R16 5
       77 LOADK                            R17 K14 ["Unknown field token received, so should be one we've removed before: %s"]
       78 MOVE                             R18 R14
       79 CALL                             R16 2 0
       80 JUMP                             ; [+39]
       81 GETUPVAL                         R17 3
       82 GETTABLEKS                       R17 R17 K4 ["rootState"]
       84 GETTABLEKS                       R17 R17 K5 ["instanceIdsToNodes"]
       86 GETTABLE                         R16 R17 R8
       87 JUMPIFNOTEQKNIL                  R16 ; [+2]
       89 LOADB                            R18 0 +1
       90 LOADB                            R18 1
       91 FASTCALL2K                       ASSERT R18 K15 ; [+4]
       93 LOADK                            R19 K15 ["Setting field value for unknown instance ID"]
       94 GETIMPORT                        R17 K8 [assert]
       96 CALL                             R17 2 0
       97 GETUPVAL                         R17 6
       98 MOVE                             R18 R16
       99 MOVE                             R19 R14
      100 MOVE                             R20 R15
      101 CALL                             R17 3 0
      102 GETUPVAL                         R17 3
      103 GETTABLEKS                       R17 R17 K16 ["searchRootState"]
      105 JUMPIFEQKNIL                     R17 ; [+14]
      107 GETUPVAL                         R18 3
      108 GETTABLEKS                       R18 R18 K16 ["searchRootState"]
      110 GETTABLEKS                       R18 R18 K5 ["instanceIdsToNodes"]
      112 GETTABLE                         R17 R18 R8
      113 JUMPIFEQKNIL                     R17 ; [+6]
      115 GETUPVAL                         R18 6
      116 MOVE                             R19 R17
      117 MOVE                             R20 R14
      118 MOVE                             R21 R15
      119 CALL                             R18 3 0
      120 FORGLOOP                         R11 2 ; [-47]
      122 FORGLOOP                         R5 2 ; [-78]
      124 GETUPVAL                         R5 7
      125 NEWCLOSURE                       R6 P1
      126 CAPTURE                          VAL R1
      127 CALL                             R5 1 0
      128 GETTABLEKS                       R5 R4 K17 ["queueRootChanged"]
      130 CALL                             R5 0 0
      131 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 0
       12 CLOSEUPVALS                      R0
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 MOVE                             R1 R0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 1
        9 MOVE                             R0 R2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["getFocusedRootState"]
       14 CALL                             R2 0 1
       15 JUMPIFEQ                         R1 R2 ; [+24]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K1 ["guestRpcInterface"]
       20 GETTABLEKS                       R1 R1 K2 ["stopViewingInstances"]
       22 GETUPVAL                         R2 4
       23 LOADK                            R3 K3 ["A"]
       24 CALL                             R1 2 0
       25 MOVE                             R1 R0
       26 GETIMPORT                        R2 K6 [task.spawn]
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          REF R1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CALL                             R2 1 0
       38 CLOSEUPVALS                      R1
       39 JUMP                             ; [+34]
       40 GETUPVAL                         R1 9
       41 MOVE                             R2 R0
       42 GETUPVAL                         R3 4
       43 CALL                             R1 2 2
       44 LENGTH                           R3 R1
       45 LOADN                            R4 0
       46 JUMPIFNOTLT                      R4 R3 ; [+15]
       48 MOVE                             R3 R1
       49 GETIMPORT                        R4 K6 [task.spawn]
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          REF R3
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CALL                             R4 1 0
       61 CLOSEUPVALS                      R3
       62 LENGTH                           R3 R2
       63 LOADN                            R4 0
       64 JUMPIFNOTLT                      R4 R3 ; [+9]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K1 ["guestRpcInterface"]
       69 GETTABLEKS                       R3 R3 K2 ["stopViewingInstances"]
       71 MOVE                             R4 R2
       72 LOADK                            R5 K7 ["B"]
       73 CALL                             R3 2 0
       74 SETUPVAL                         R0 4
       75 GETUPVAL                         R1 2
       76 GETTABLEKS                       R1 R1 K0 ["getFocusedRootState"]
       78 CALL                             R1 0 1
       79 SETUPVAL                         R1 3
       80 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 GETIMPORT                        R2 K3 [table.freeze]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["create"]
       12 GETIMPORT                        R4 K3 [table.freeze]
       14 NEWTABLE                         R5 0 0
       16 CALL                             R4 1 1
       17 CALL                             R3 1 2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U1
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R4
       31 NEWCLOSURE                       R8 P3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R0
       34 NEWCLOSURE                       R9 P4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R10 0 0
       44 GETTABLEKS                       R11 R0 K4 ["getFocusedRootState"]
       46 CALL                             R11 0 1
       47 NEWCLOSURE                       R12 P5
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          REF R11
       52 CAPTURE                          REF R10
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U6
       58 GETUPVAL                         R13 7
       59 LOADNIL                          R14
       60 LOADNIL                          R15
       61 FORGPREP                         R13
       62 JUMPIFNOTEQKNIL                  R17 ; [+2]
       64 LOADB                            R19 0 +1
       65 LOADB                            R19 1
       66 FASTCALL2K                       ASSERT R19 K5 ; [+4]
       68 LOADK                            R20 K5 ["Luau"]
       69 GETIMPORT                        R18 K7 [assert]
       71 CALL                             R18 2 0
       72 GETTABLEKS                       R18 R17 K8 ["permanent"]
       74 JUMPIFNOT                        R18 ; [+4]
       75 MOVE                             R18 R6
       76 MOVE                             R19 R17
       77 LOADNIL                          R20
       78 CALL                             R18 2 0
       79 FORGLOOP                         R13 2 ; [-18]
       81 DUPTABLE                         R13 K14 [{"addField", "requestedFieldsObservable", "seenFieldsObservable", "updateFieldValue", "setViewingInstances"}]
       82 SETTABLEKS                       R6 R13 K9 ["addField"]
       84 SETTABLEKS                       R1 R13 K10 ["requestedFieldsObservable"]
       86 SETTABLEKS                       R3 R13 K11 ["seenFieldsObservable"]
       88 SETTABLEKS                       R7 R13 K12 ["updateFieldValue"]
       90 SETTABLEKS                       R12 R13 K13 ["setViewingInstances"]
       92 CLOSEUPVALS                      R10
       93 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Fields"]
       18 GETTABLEKS                       R3 R3 K8 ["FieldTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["createDebugLogger"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Networking"]
       44 GETTABLEKS                       R7 R7 K14 ["createSession"]
       46 GETTABLEKS                       R7 R7 K15 ["createSessionTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["diffArray"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["filterList"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["find"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Flags"]
       74 GETTABLEKS                       R11 R11 K20 ["getFFlagExplorerStreaming"]
       76 CALL                             R10 1 1
       77 MOVE                             R11 R5
       78 LOADK                            R12 K21 ["createSessionFields"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K22 [PROTO_0]
       81 DUPCLOSURE                       R13 K23 [PROTO_16]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 RETURN                           R13 1
