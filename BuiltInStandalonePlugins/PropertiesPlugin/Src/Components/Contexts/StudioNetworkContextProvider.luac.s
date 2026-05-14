PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Invoke"]
        4 MOVE                             R2 R1
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["fromHost"]
        9 GETTABLEKS                       R4 R4 K2 ["message"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 GETVARARGS                       R7 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Connection identifier is not a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLE                         R1 R2 R0
       17 JUMPIFEQKNIL                     R1 ; [+10]
       19 GETIMPORT                        R1 K7 [error]
       21 LOADK                            R3 K8 ["Double connection with %*"]
       22 MOVE                             R5 R0
       23 NAMECALL                         R3 R3 K9 ["format"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 1
       29 LOADK                            R2 K10 ["%s connected"]
       30 MOVE                             R3 R0
       31 CALL                             R1 2 0
       32 DUPTABLE                         R1 K15 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
       33 SETTABLEKS                       R0 R1 K11 ["identifier"]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K16 ["Signal"]
       38 GETTABLEKS                       R2 R2 K17 ["new"]
       40 CALL                             R2 0 1
       41 SETTABLEKS                       R2 R1 K12 ["disconnectSignal"]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K16 ["Signal"]
       46 GETTABLEKS                       R2 R2 K17 ["new"]
       48 CALL                             R2 0 1
       49 SETTABLEKS                       R2 R1 K13 ["messageReceivedSignal"]
       51 NEWCLOSURE                       R2 P0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R1 K14 ["sendMessage"]
       57 GETUPVAL                         R2 0
       58 SETTABLE                         R1 R2 R0
       59 GETUPVAL                         R2 5
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R1 K0 ["%* sent message \"%*\""]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETUPVAL                         R2 2
        8 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        9 GETIMPORT                        R1 K4 [table.unpack]
       11 CALL                             R1 1 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Message identifier is not a string"]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 0
       17 GETTABLE                         R2 R3 R0
       18 JUMPIFNOTEQKNIL                  R2 ; [+11]
       20 GETIMPORT                        R3 K7 [error]
       22 LOADK                            R5 K8 ["Message sent by %* without a connection: %*"]
       23 MOVE                             R7 R0
       24 MOVE                             R8 R1
       25 NAMECALL                         R5 R5 K9 ["format"]
       27 CALL                             R5 3 1
       28 MOVE                             R4 R5
       29 CALL                             R3 1 0
       30 JUMPIFNOTEQKNIL                  R2 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       36 LOADK                            R5 K10 ["Luau"]
       37 GETIMPORT                        R3 K5 [assert]
       39 CALL                             R3 2 0
       40 GETIMPORT                        R3 K13 [table.pack]
       42 GETVARARGS                       R4 -1
       43 CALL                             R3 -1 1
       44 GETUPVAL                         R4 1
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CALL                             R4 1 0
       50 GETTABLEKS                       R4 R2 K14 ["messageReceivedSignal"]
       52 MOVE                             R6 R1
       53 GETVARARGS                       R7 -1
       54 NAMECALL                         R4 R4 K15 ["Fire"]
       56 CALL                             R4 -1 0
       57 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Connection identifier is not a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 LOADK                            R2 K6 ["%s disconnecting"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 GETUPVAL                         R2 1
       20 GETTABLE                         R1 R2 R0
       21 JUMPIFNOTEQKNIL                  R1 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       27 LOADK                            R4 K7 ["Disconnect sent without a connection"]
       28 GETIMPORT                        R2 K5 [assert]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 1
       32 LOADNIL                          R3
       33 SETTABLE                         R3 R2 R0
       34 GETTABLEKS                       R2 R1 K8 ["disconnectSignal"]
       36 NAMECALL                         R2 R2 K9 ["Fire"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Destroying"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 NAMECALL                         R0 R0 K1 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 NAMECALL                         R0 R0 K1 ["Disconnect"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 LOADNIL                          R1
       17 LOADNIL                          R2
       18 FORGPREP                         R0
       19 GETTABLEKS                       R5 R4 K2 ["disconnectSignal"]
       21 NAMECALL                         R5 R5 K3 ["Fire"]
       23 CALL                             R5 1 0
       24 FORGLOOP                         R0 2 ; [-6]
       26 GETUPVAL                         R0 5
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R2 R2 K4 ["fromHost"]
       30 GETTABLEKS                       R2 R2 K5 ["itemStarted"]
       32 NAMECALL                         R0 R0 K6 ["RemoveItem"]
       34 CALL                             R0 2 0
       35 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["fromGuest"]
        6 GETTABLEKS                       R4 R4 K1 ["connect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R2 K2 ["OnInvoke"]
       17 CALL                             R2 3 1
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K0 ["fromGuest"]
       22 GETTABLEKS                       R5 R5 K3 ["message"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R3 R3 K2 ["OnInvoke"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K0 ["fromGuest"]
       34 GETTABLEKS                       R6 R6 K4 ["disconnect"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R4 R4 K2 ["OnInvoke"]
       41 CALL                             R4 3 1
       42 GETUPVAL                         R5 2
       43 LOADK                            R6 K5 ["Invoke fromHost.starting"]
       44 CALL                             R5 1 0
       45 GETUPVAL                         R5 0
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K6 ["fromHost"]
       49 GETTABLEKS                       R7 R7 K7 ["starting"]
       51 NAMECALL                         R5 R5 K8 ["Invoke"]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 4
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K6 ["fromHost"]
       58 GETTABLEKS                       R7 R7 K9 ["itemStarted"]
       60 NAMECALL                         R5 R5 K10 ["SetItem"]
       62 CALL                             R5 2 0
       63 NEWCLOSURE                       R5 P3
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U1
       71 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 5
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K2 ["Components"]
       18 GETTABLEKS                       R4 R4 K3 ["Contexts"]
       20 GETTABLEKS                       R4 R4 K4 ["NetworkContextProvider"]
       22 DUPTABLE                         R5 K6 [{"registerOnConnect"}]
       23 SETTABLEKS                       R2 R5 K5 ["registerOnConnect"]
       25 GETTABLEKS                       R6 R0 K7 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PropertiesPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Properties"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["StudioProtocolConstants"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R3 K16 ["createElement"]
       38 GETTABLEKS                       R6 R2 K14 ["Util"]
       40 GETTABLEKS                       R6 R6 K17 ["createDebugLogger"]
       42 LOADK                            R7 K18 ["StudioNetworkContextProvider"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K19 [PROTO_7]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R5
       51 RETURN                           R7 1
