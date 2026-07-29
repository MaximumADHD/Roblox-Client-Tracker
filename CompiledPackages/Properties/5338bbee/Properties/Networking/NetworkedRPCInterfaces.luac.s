PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        2 GETIMPORT                        R0 K2 [table.unpack]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["(.+)_FINISHED$"]
        2 NAMECALL                         R1 R0 K1 ["match"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETVARARGS                       R2 1
        9 GETUPVAL                         R3 0
       10 LOADK                            R4 K2 ["Received async nonce from %s for %s: %s"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["identifier"]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R2
       16 CALL                             R3 4 0
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R9 R8 K4 ["nonce"]
       24 JUMPIFNOTEQ                      R9 R2 ; [+3]
       26 MOVE                             R3 R8
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R4 2 ; [-7]
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 LOADK                            R7 K5 ["Guest sending invalid nonce for finished async task: %*"]
       35 MOVE                             R9 R2
       36 NAMECALL                         R7 R7 K6 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 FASTCALL2                        ASSERT R5 R6 ; [+3]
       42 GETIMPORT                        R4 K8 [assert]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R5 2
       46 LENGTH                           R4 R5
       47 JUMPIFNOTEQKN                    R4 K9 [1] ; [+15]
       49 NEWTABLE                         R4 0 0
       51 SETUPVAL                         R4 2
       52 GETIMPORT                        R4 K12 [task.spawn]
       54 GETTABLEKS                       R5 R3 K13 ["thread"]
       56 GETIMPORT                        R6 K15 [select]
       58 LOADN                            R7 2
       59 GETVARARGS                       R8 -1
       60 CALL                             R6 -1 -1
       61 CALL                             R4 -1 0
       62 RETURN                           R0 0
       63 GETIMPORT                        R4 K18 [table.pack]
       65 GETIMPORT                        R5 K15 [select]
       67 LOADN                            R6 2
       68 GETVARARGS                       R7 -1
       69 CALL                             R5 -1 -1
       70 CALL                             R4 -1 1
       71 NEWCLOSURE                       R5 P0
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R5 R3 K19 ["resumeWith"]
       75 GETUPVAL                         R6 2
       76 LENGTH                           R5 R6
       77 LOADN                            R6 0
       78 JUMPIFNOTLT                      R6 R5 ; [+43]
       80 GETUPVAL                         R6 2
       81 GETTABLEN                        R5 R6 1
       82 GETTABLEKS                       R5 R5 K19 ["resumeWith"]
       84 JUMPIFEQKNIL                     R5 ; [+37]
       86 GETIMPORT                        R5 K21 [table.remove]
       88 GETUPVAL                         R6 2
       89 LOADN                            R7 1
       90 CALL                             R5 2 1
       91 JUMPIFNOTEQKNIL                  R5 ; [+2]
       93 LOADB                            R7 0 +1
       94 LOADB                            R7 1
       95 FASTCALL2K                       ASSERT R7 K22 ; [+4]
       97 LOADK                            R8 K22 ["Couldn't pop yielding thread"]
       98 GETIMPORT                        R6 K8 [assert]
      100 CALL                             R6 2 0
      101 GETTABLEKS                       R8 R5 K19 ["resumeWith"]
      103 JUMPIFNOTEQKNIL                  R8 ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 FASTCALL2K                       ASSERT R7 K23 ; [+4]
      109 LOADK                            R8 K23 ["Yielding thread didn't set resumeWith"]
      110 GETIMPORT                        R6 K8 [assert]
      112 CALL                             R6 2 0
      113 GETIMPORT                        R6 K12 [task.spawn]
      115 GETTABLEKS                       R7 R5 K13 ["thread"]
      117 GETTABLEKS                       R8 R5 K19 ["resumeWith"]
      119 CALL                             R8 0 -1
      120 CALL                             R6 -1 0
      121 JUMPBACK                         ; [-47]
      122 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["fireAsync to %*: %*, nonce = %*"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["identifier"]
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R1 R1 K2 ["format"]
        9 CALL                             R1 4 1
       10 MOVE                             R0 R1
       11 GETVARARGS                       R1 -1
       12 RETURN                           R0 -1

PROTO_3:
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
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K9 ["sendMessage"]
       27 GETUPVAL                         R3 4
       28 MOVE                             R4 R0
       29 GETVARARGS                       R5 -1
       30 CALL                             R2 -1 0
       31 GETIMPORT                        R2 K11 [coroutine.yield]
       33 CALL                             R2 0 -1
       34 RETURN                           R2 -1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_5:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["fire to %*: %*"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["identifier"]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 3 1
        9 MOVE                             R0 R1
       10 GETVARARGS                       R1 -1
       11 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["sendMessage"]
       10 GETUPVAL                         R1 2
       11 GETVARARGS                       R2 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["messageReceivedSignal"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          REF R2
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R6 P3
       22 CAPTURE                          VAL R3
       23 DUPTABLE                         R7 K5 [{"fire", "fireAsync", "destroy"}]
       24 SETTABLEKS                       R5 R7 K2 ["fire"]
       26 SETTABLEKS                       R4 R7 K3 ["fireAsync"]
       28 SETTABLEKS                       R6 R7 K4 ["destroy"]
       30 CLOSEUPVALS                      R2
       31 RETURN                           R7 1

PROTO_10:
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
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K7 ["sendMessage"]
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["messageReceivedSignal"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 RETURN                           R3 1

PROTO_13:
        0 LOADK                            R5 K0 ["Async$"]
        1 NAMECALL                         R3 R1 K1 ["match"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["fireAsync"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["fire"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLE                         R2 R0 R1
       17 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R4 R3 K0 ["__index"]
        7 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K0 ["destroy"]
        8 RETURN                           R2 2

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["messageReceivedSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K0 ["destroy"]
        8 RETURN                           R2 2

PROTO_18:
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["NetworkingTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["createDebugLogger"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["createNextNonce"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 4 0
       35 MOVE                             R6 R3
       36 LOADK                            R7 K12 ["NetworkedRPCInterfaces"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K13 [PROTO_9]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R8 K14 [PROTO_12]
       42 DUPCLOSURE                       R9 K15 [PROTO_14]
       43 DUPCLOSURE                       R10 K16 [PROTO_15]
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R9
       46 SETTABLEKS                       R10 R5 K17 ["createNetworkedHostToGuestRPCInterface"]
       48 DUPCLOSURE                       R10 K18 [PROTO_16]
       49 SETTABLEKS                       R10 R5 K19 ["addNetworkLayerToGuestRPCInterface"]
       51 DUPCLOSURE                       R10 K20 [PROTO_17]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R9
       54 SETTABLEKS                       R10 R5 K21 ["createNetworkedGuestToHostRPCInterface"]
       56 DUPCLOSURE                       R10 K22 [PROTO_18]
       57 SETTABLEKS                       R10 R5 K23 ["addNetworkLayerToHostRPCInterface"]
       59 RETURN                           R5 1
