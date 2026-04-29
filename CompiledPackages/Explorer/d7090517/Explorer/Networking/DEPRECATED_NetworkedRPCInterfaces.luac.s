PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["nonce"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        2 GETIMPORT                        R0 K2 [table.unpack]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["(.+)_FINISHED$"]
        2 NAMECALL                         R1 R0 K1 ["match"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETVARARGS                       R2 1
        9 GETUPVAL                         R3 0
       10 LOADK                            R4 K2 ["Received async nonce from %s for %s: %s"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["identifier"]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R2
       16 CALL                             R3 4 0
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 CALL                             R3 2 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+59]
       24 NEWTABLE                         R4 0 0
       26 GETUPVAL                         R5 3
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R12 R9 K4 ["nonce"]
       32 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       34 MOVE                             R11 R4
       35 GETIMPORT                        R10 K7 [table.insert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R5 2 ; [-9]
       40 GETIMPORT                        R5 K9 [error]
       42 GETIMPORT                        R6 K11 [table.concat]
       44 NEWTABLE                         R7 0 5
       46 LOADK                            R8 K12 ["Guest sending invalid nonce for finished async task."]
       47 LOADK                            R10 K13 ["connection.identifier = %*"]
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R12 R13 K3 ["identifier"]
       51 NAMECALL                         R10 R10 K14 ["format"]
       53 CALL                             R10 2 1
       54 MOVE                             R9 R10
       55 LOADK                            R11 K15 ["key = %*"]
       56 MOVE                             R13 R0
       57 NAMECALL                         R11 R11 K14 ["format"]
       59 CALL                             R11 2 1
       60 MOVE                             R10 R11
       61 LOADK                            R12 K16 ["nonce = %*"]
       62 MOVE                             R14 R2
       63 NAMECALL                         R12 R12 K14 ["format"]
       65 CALL                             R12 2 1
       66 MOVE                             R11 R12
       67 LOADK                            R13 K17 ["yieldingThreadNonces = %*"]
       68 GETUPVAL                         R15 4
       69 MOVE                             R17 R4
       70 NAMECALL                         R15 R15 K18 ["JSONEncode"]
       72 CALL                             R15 2 1
       73 NAMECALL                         R13 R13 K14 ["format"]
       75 CALL                             R13 2 1
       76 MOVE                             R12 R13
       77 SETLIST                          R7 R8 5 [1]
       79 LOADK                            R8 K19 ["\n"]
       80 CALL                             R6 2 -1
       81 CALL                             R5 -1 0
       82 GETUPVAL                         R5 3
       83 LENGTH                           R4 R5
       84 JUMPIFNOTEQKN                    R4 K20 [1] ; [+15]
       86 NEWTABLE                         R4 0 0
       88 SETUPVAL                         R4 3
       89 GETIMPORT                        R4 K23 [task.spawn]
       91 GETTABLEKS                       R5 R3 K24 ["thread"]
       93 GETIMPORT                        R6 K26 [select]
       95 LOADN                            R7 2
       96 GETVARARGS                       R8 -1
       97 CALL                             R6 -1 -1
       98 CALL                             R4 -1 0
       99 RETURN                           R0 0
      100 GETIMPORT                        R4 K28 [table.pack]
      102 GETIMPORT                        R5 K26 [select]
      104 LOADN                            R6 2
      105 GETVARARGS                       R7 -1
      106 CALL                             R5 -1 -1
      107 CALL                             R4 -1 1
      108 NEWCLOSURE                       R5 P1
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R5 R3 K29 ["resumeWith"]
      112 GETUPVAL                         R6 3
      113 LENGTH                           R5 R6
      114 LOADN                            R6 0
      115 JUMPIFNOTLT                      R6 R5 ; [+43]
      117 GETUPVAL                         R7 3
      118 GETTABLEN                        R6 R7 1
      119 GETTABLEKS                       R5 R6 K29 ["resumeWith"]
      121 JUMPIFEQKNIL                     R5 ; [+37]
      123 GETIMPORT                        R5 K31 [table.remove]
      125 GETUPVAL                         R6 3
      126 LOADN                            R7 1
      127 CALL                             R5 2 1
      128 JUMPIFNOTEQKNIL                  R5 ; [+2]
      130 LOADB                            R7 0 +1
      131 LOADB                            R7 1
      132 FASTCALL2K                       ASSERT R7 K32 ; [+4]
      134 LOADK                            R8 K32 ["Couldn't pop yielding thread"]
      135 GETIMPORT                        R6 K34 [assert]
      137 CALL                             R6 2 0
      138 GETTABLEKS                       R8 R5 K29 ["resumeWith"]
      140 JUMPIFNOTEQKNIL                  R8 ; [+2]
      142 LOADB                            R7 0 +1
      143 LOADB                            R7 1
      144 FASTCALL2K                       ASSERT R7 K35 ; [+4]
      146 LOADK                            R8 K35 ["Yielding thread didn't set resumeWith"]
      147 GETIMPORT                        R6 K34 [assert]
      149 CALL                             R6 2 0
      150 GETIMPORT                        R6 K23 [task.spawn]
      152 GETTABLEKS                       R7 R5 K24 ["thread"]
      154 GETTABLEKS                       R8 R5 K29 ["resumeWith"]
      156 CALL                             R8 0 -1
      157 CALL                             R6 -1 0
      158 JUMPBACK                         ; [-47]
      159 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["fireAsync to %*: %*, nonce = %*"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["identifier"]
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 4 1
       10 MOVE                             R0 R1
       11 GETVARARGS                       R1 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 CALL                             R0 0 1
        3 GETIMPORT                        R1 K2 [coroutine.running]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K5 [{"thread", "nonce"}]
        8 SETTABLEKS                       R1 R4 K3 ["thread"]
       10 SETTABLEKS                       R0 R4 K4 ["nonce"]
       12 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K8 [table.insert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 GETVARARGS                       R4 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K9 ["sendMessage"]
       27 GETUPVAL                         R3 4
       28 MOVE                             R4 R0
       29 GETVARARGS                       R5 -1
       30 CALL                             R2 -1 0
       31 GETIMPORT                        R2 K11 [coroutine.yield]
       33 CALL                             R2 0 -1
       34 RETURN                           R2 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_6:
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
       42 LOADK                            R2 K8 ["fire to %*: %*"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K9 ["identifier"]
       46 GETUPVAL                         R5 2
       47 NAMECALL                         R2 R2 K10 ["format"]
       49 CALL                             R2 3 1
       50 MOVE                             R1 R2
       51 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       52 MOVE                             R3 R0
       53 GETIMPORT                        R2 K12 [unpack]
       55 CALL                             R2 1 -1
       56 RETURN                           R1 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 GETVARARGS                       R2 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K0 ["sendMessage"]
       11 GETUPVAL                         R1 3
       12 GETVARARGS                       R2 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["messageReceivedSignal"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R3 R3 K1 ["Connect"]
       14 CALL                             R3 2 1
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 NEWCLOSURE                       R6 P3
       25 CAPTURE                          VAL R3
       26 DUPTABLE                         R7 K5 [{"fire", "fireAsync", "destroy"}]
       27 SETTABLEKS                       R5 R7 K2 ["fire"]
       29 SETTABLEKS                       R4 R7 K3 ["fireAsync"]
       31 SETTABLEKS                       R6 R7 K4 ["destroy"]
       33 CLOSEUPVALS                      R2
       34 RETURN                           R7 1

PROTO_11:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["_FINISHED$"]
        2 NAMECALL                         R1 R0 K1 ["match"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLE                         R1 R2 R0
        9 JUMPIFNOTEQKNIL                  R1 ; [+10]
       11 GETIMPORT                        R1 K3 [error]
       13 LOADK                            R3 K4 ["Connection received invalid message key: %*"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K5 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 CALL                             R1 1 0
       20 LOADK                            R3 K6 ["Async$"]
       21 NAMECALL                         R1 R0 K1 ["match"]
       23 CALL                             R1 2 1
       24 JUMPIF                           R1 ; [+5]
       25 GETUPVAL                         R2 0
       26 GETTABLE                         R1 R2 R0
       27 GETVARARGS                       R2 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0
       30 GETVARARGS                       R1 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K7 ["sendMessage"]
       34 MOVE                             R4 R0
       35 LOADK                            R5 K8 ["_FINISHED"]
       36 CONCAT                           R3 R4 R5
       37 MOVE                             R4 R1
       38 GETUPVAL                         R6 0
       39 GETTABLE                         R5 R6 R0
       40 GETIMPORT                        R6 K10 [select]
       42 LOADN                            R7 2
       43 GETVARARGS                       R8 -1
       44 CALL                             R6 -1 -1
       45 CALL                             R5 -1 -1
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["messageReceivedSignal"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 RETURN                           R3 1

PROTO_14:
        0 LOADK                            R5 K0 ["Async$"]
        1 NAMECALL                         R3 R1 K1 ["match"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["fireAsync"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["fire"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLE                         R2 R0 R1
       17 RETURN                           R2 1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R4 R3 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K0 ["destroy"]
        8 RETURN                           R2 2

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["messageReceivedSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K0 ["destroy"]
        8 RETURN                           R2 2

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["messageReceivedSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R2 1

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
       15 GETTABLEKS                       R4 R1 K10 ["Networking"]
       17 GETTABLEKS                       R3 R4 K11 ["NetworkingTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["RpcTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R6 R1 K13 ["Util"]
       29 GETTABLEKS                       R5 R6 K14 ["createDebugLogger"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R7 R1 K13 ["Util"]
       36 GETTABLEKS                       R6 R7 K15 ["createNextNonce"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R8 R1 K13 ["Util"]
       43 GETTABLEKS                       R7 R8 K16 ["find"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 4 0
       48 MOVE                             R8 R4
       49 LOADK                            R9 K17 ["DEPRECATED_NetworkedRPCInterfaces"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K18 [PROTO_10]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R0
       56 DUPCLOSURE                       R10 K19 [PROTO_13]
       57 DUPCLOSURE                       R11 K20 [PROTO_15]
       58 DUPCLOSURE                       R12 K21 [PROTO_16]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R11
       61 SETTABLEKS                       R12 R7 K22 ["createNetworkedHostToGuestRPCInterface"]
       63 DUPCLOSURE                       R12 K23 [PROTO_17]
       64 SETTABLEKS                       R12 R7 K24 ["addNetworkLayerToGuestRPCInterface"]
       66 DUPCLOSURE                       R12 K25 [PROTO_18]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R12 R7 K26 ["createNetworkedGuestToHostRPCInterface"]
       71 DUPCLOSURE                       R12 K27 [PROTO_19]
       72 SETTABLEKS                       R12 R7 K28 ["addNetworkLayerToHostRPCInterface"]
       74 RETURN                           R7 1
