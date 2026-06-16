PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 GETVARARGS                       R4 -1
        6 SETLIST                          R1 R4 -1 [1]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 FASTCALL1                        TYPEOF R5 ; [+3]
       12 MOVE                             R7 R5
       13 GETIMPORT                        R6 K1 [typeof]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+12]
       18 MOVE                             R7 R0
       19 GETUPVAL                         R8 0
       20 MOVE                             R10 R5
       21 NAMECALL                         R8 R8 K3 ["JSONEncode"]
       23 CALL                             R8 2 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R6 K5 [table.insert]
       27 CALL                             R6 -1 0
       28 JUMP                             ; [+11]
       29 FASTCALL1                        TOSTRING R5 ; [+3]
       30 MOVE                             R9 R5
       31 GETIMPORT                        R8 K7 [tostring]
       33 CALL                             R8 1 1
       34 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       36 MOVE                             R7 R0
       37 GETIMPORT                        R6 K5 [table.insert]
       39 CALL                             R6 2 0
       40 FORGLOOP                         R1 2 ; [-30]
       42 GETIMPORT                        R1 K9 [table.concat]
       44 MOVE                             R2 R0
       45 LOADK                            R3 K10 [" "]
       46 CALL                             R1 2 -1
       47 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["%*: fire to %*: %*"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["identifier"]
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 4 1
       10 MOVE                             R0 R1
       11 GETVARARGS                       R1 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 GETVARARGS                       R3 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["sendMessage"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 3
       15 GETVARARGS                       R4 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["%*: fireAsync to %*: %*"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["identifier"]
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 4 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 3
       12 GETVARARGS                       R2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 GETVARARGS                       R3 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 5
       12 GETIMPORT                        R2 K2 [coroutine.running]
       14 CALL                             R2 0 1
       15 SETTABLE                         R2 R1 R0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K3 ["sendMessage"]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R3 3
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 GETIMPORT                        R1 K5 [coroutine.yield]
       25 CALL                             R1 0 -1
       26 RETURN                           R1 -1

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R5 K0 ["Async$"]
        1 NAMECALL                         R3 R1 K1 ["match"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+8]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 JUMP                             ; [+5]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 SETTABLE                         R2 R0 R1
       19 RETURN                           R2 1

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        9 LOADK                            R4 K0 ["Received async result for an ID we don't have"]
       10 GETIMPORT                        R2 K2 [assert]
       12 CALL                             R2 2 0
       13 GETIMPORT                        R2 K5 [task.spawn]
       15 MOVE                             R3 R1
       16 GETVARARGS                       R4 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_9:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["sendMessage"]
        6 MOVE                             R4 R2
        7 MOVE                             R6 R1
        8 LOADK                            R7 K1 ["_FINISHED"]
        9 CONCAT                           R5 R6 R7
       10 MOVE                             R6 R0
       11 GETUPVAL                         R8 2
       12 GETTABLE                         R7 R8 R1
       13 GETVARARGS                       R8 -1
       14 CALL                             R7 -1 -1
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["_FINISHED$"]
        2 NAMECALL                         R2 R1 K1 ["match"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+25]
        6 GETVARARGS                       R2 1
        7 FASTCALL1                        TYPEOF R2 ; [+3]
        8 MOVE                             R6 R2
        9 GETIMPORT                        R5 K3 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFEQKS                       R5 K4 ["number"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       18 LOADK                            R5 K5 ["First value passed with async finished is not the request ID we are responding to"]
       19 GETIMPORT                        R3 K7 [assert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 MOVE                             R4 R2
       24 GETIMPORT                        R5 K9 [select]
       26 LOADN                            R6 2
       27 GETVARARGS                       R7 -1
       28 CALL                             R5 -1 -1
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 1
       32 GETTABLE                         R2 R3 R1
       33 JUMPIFNOTEQKNIL                  R2 ; [+10]
       35 GETIMPORT                        R2 K11 [error]
       37 LOADK                            R4 K12 ["Connection received invalid message key: %*"]
       38 MOVE                             R6 R1
       39 NAMECALL                         R4 R4 K13 ["format"]
       41 CALL                             R4 2 1
       42 MOVE                             R3 R4
       43 CALL                             R2 1 0
       44 LOADK                            R4 K14 ["Async$"]
       45 NAMECALL                         R2 R1 K1 ["match"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+6]
       49 GETUPVAL                         R2 2
       50 MOVE                             R3 R0
       51 MOVE                             R4 R1
       52 GETVARARGS                       R5 -1
       53 CALL                             R2 -1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 1
       56 GETTABLE                         R2 R3 R1
       57 GETVARARGS                       R3 -1
       58 CALL                             R2 -1 0
       59 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["%*:"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["identifier"]
        5 NAMECALL                         R1 R1 K2 ["format"]
        7 CALL                             R1 2 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETVARARGS                       R4 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R0 -1

PROTO_12:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["%*: %* sent %*"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["identifier"]
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 4 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 3
       12 GETVARARGS                       R2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R0 -1

PROTO_13:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 GETVARARGS                       R4 -1
        8 CALL                             R2 -1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R5 R0
       11 GETIMPORT                        R4 K1 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       20 LOADK                            R4 K3 ["requestId is not a number"]
       21 GETIMPORT                        R2 K5 [assert]
       23 CALL                             R2 2 0
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K1 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       35 LOADK                            R4 K7 ["key is not a string"]
       36 GETIMPORT                        R2 K5 [assert]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 0
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U2
       45 GETVARARGS                       R4 -1
       46 CALL                             R2 -1 0
       47 GETUPVAL                         R2 3
       48 JUMPIFNOTLT                      R0 R2 ; [+11]
       50 GETIMPORT                        R2 K9 [error]
       52 LOADK                            R4 K10 ["requestId (%*) < nextRequestIdExpecting (%*)"]
       53 MOVE                             R6 R0
       54 GETUPVAL                         R7 3
       55 NAMECALL                         R4 R4 K11 ["format"]
       57 CALL                             R4 3 1
       58 MOVE                             R3 R4
       59 CALL                             R2 1 0
       60 GETUPVAL                         R2 3
       61 JUMPIFNOTLT                      R2 R0 ; [+21]
       63 GETUPVAL                         R2 0
       64 LOADK                            R3 K12 ["Received request %d before %d, waiting"]
       65 MOVE                             R4 R0
       66 GETUPVAL                         R5 3
       67 CALL                             R2 3 0
       68 GETUPVAL                         R2 4
       69 DUPTABLE                         R3 K16 [{"requestId", "key", "args"}]
       70 SETTABLEKS                       R0 R3 K13 ["requestId"]
       72 SETTABLEKS                       R1 R3 K14 ["key"]
       74 NEWTABLE                         R4 0 0
       76 GETVARARGS                       R5 -1
       77 SETLIST                          R4 R5 -1 [1]
       79 SETTABLEKS                       R4 R3 K15 ["args"]
       81 SETTABLE                         R3 R2 R0
       82 RETURN                           R0 0
       83 GETUPVAL                         R2 5
       84 MOVE                             R3 R0
       85 MOVE                             R4 R1
       86 GETVARARGS                       R5 -1
       87 CALL                             R2 -1 0
       88 GETUPVAL                         R2 3
       89 ADDK                             R2 R2 K17 [1]
       90 SETUPVAL                         R2 3
       91 GETUPVAL                         R3 4
       92 GETUPVAL                         R4 3
       93 GETTABLE                         R2 R3 R4
       94 JUMPIFEQKNIL                     R2 ; [+25]
       96 GETUPVAL                         R3 0
       97 LOADK                            R4 K18 ["Processing queued request %d (%s)"]
       98 GETTABLEKS                       R5 R2 K13 ["requestId"]
      100 GETTABLEKS                       R6 R2 K14 ["key"]
      102 CALL                             R3 3 0
      103 GETUPVAL                         R3 5
      104 GETTABLEKS                       R4 R2 K13 ["requestId"]
      106 GETTABLEKS                       R5 R2 K14 ["key"]
      108 GETTABLEKS                       R7 R2 K15 ["args"]
      110 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
      111 GETIMPORT                        R6 K20 [unpack]
      113 CALL                             R6 1 -1
      114 CALL                             R3 -1 0
      115 GETUPVAL                         R3 4
      116 GETUPVAL                         R4 3
      117 LOADNIL                          R5
      118 SETTABLE                         R5 R3 R4
      119 JUMPBACK                         ; [-32]
      120 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 0
       16 DUPTABLE                         R8 K1 [{"__index"}]
       17 NEWCLOSURE                       R9 P2
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R9 R8 K0 ["__index"]
       25 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       27 GETIMPORT                        R6 K3 [setmetatable]
       29 CALL                             R6 2 1
       30 MOVE                             R7 R1
       31 MOVE                             R8 R6
       32 CALL                             R7 1 2
       33 NEWCLOSURE                       R9 P3
       34 CAPTURE                          VAL R4
       35 NEWCLOSURE                       R10 P4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R7
       39 NEWCLOSURE                       R11 P5
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R10
       43 LOADN                            R12 1
       44 NEWTABLE                         R13 0 0
       46 GETTABLEKS                       R14 R0 K4 ["messageReceivedSignal"]
       48 NEWCLOSURE                       R16 P6
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          REF R12
       53 CAPTURE                          VAL R13
       54 CAPTURE                          VAL R11
       55 NAMECALL                         R14 R14 K5 ["Connect"]
       57 CALL                             R14 2 1
       58 NEWCLOSURE                       R15 P7
       59 CAPTURE                          VAL R14
       60 CAPTURE                          VAL R8
       61 CLOSEUPVALS                      R12
       62 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Networking"]
       17 GETTABLEKS                       R3 R3 K11 ["NetworkingTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["createDebugLogger"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["createNextOrder"]
       33 CALL                             R4 1 1
       34 MOVE                             R5 R3
       35 LOADK                            R6 K15 ["NetworkedRPCInterfaces"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 1 0
       39 DUPCLOSURE                       R7 K16 [PROTO_0]
       40 CAPTURE                          VAL R0
       41 DUPCLOSURE                       R8 K17 [PROTO_15]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 SETTABLEKS                       R8 R6 K18 ["addCommunicationLayer"]
       47 RETURN                           R6 1
