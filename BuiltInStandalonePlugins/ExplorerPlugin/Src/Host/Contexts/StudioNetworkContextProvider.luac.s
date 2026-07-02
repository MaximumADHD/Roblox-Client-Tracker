PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["%s disconnecting"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       12 LOADK                            R4 K1 ["Disconnect sent without a connection"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R4 R1 K4 ["identifier"]
       19 GETTABLE                         R2 R3 R4
       20 JUMPIFNOTEQ                      R2 R0 ; [+6]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R3 R1 K4 ["identifier"]
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 SETTABLE                         R3 R2 R0
       30 GETTABLEKS                       R2 R1 K5 ["disconnectSignal"]
       32 NAMECALL                         R2 R2 K6 ["Fire"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Sending message to %s (%s)"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["fromHost"]
       10 GETTABLEKS                       R3 R3 K2 ["message"]
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R0
       14 GETVARARGS                       R6 -1
       15 NAMECALL                         R1 R1 K3 ["Invoke"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Connection identifier is not a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Session UUID is not a string"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLE                         R2 R3 R1
       32 JUMPIFEQKNIL                     R2 ; [+11]
       34 GETIMPORT                        R2 K8 [error]
       36 LOADK                            R4 K9 ["Double connection on session UUID with %* (from identifier %*)"]
       37 MOVE                             R6 R1
       38 MOVE                             R7 R0
       39 NAMECALL                         R4 R4 K10 ["format"]
       41 CALL                             R4 3 1
       42 MOVE                             R3 R4
       43 CALL                             R2 1 0
       44 GETUPVAL                         R3 1
       45 GETTABLE                         R2 R3 R0
       46 JUMPIFEQKNIL                     R2 ; [+63]
       48 GETUPVAL                         R3 2
       49 LOADK                            R4 K11 ["Had double connection from %s (old session UUID = %s, new session UUID = %s)"]
       50 MOVE                             R5 R0
       51 MOVE                             R6 R2
       52 MOVE                             R7 R1
       53 CALL                             R3 4 0
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K12 ["logCounter"]
       57 DUPTABLE                         R4 K21 [{["eventName"] = "LuaExplorerSloppyShutdown", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when the Luau Explorer requests a sloppy shutdown after receiving a double connection", ["lastUpdated"] = "2025-05-09"}]
       58 NEWTABLE                         R5 0 1
       60 LOADK                            R6 K22 ["RobloxTelemetryCounter"]
       61 SETLIST                          R5 R6 1 [1]
       63 SETTABLEKS                       R5 R4 K15 ["backends"]
       65 GETIMPORT                        R5 K24 [game]
       67 LOADK                            R7 K25 ["LuaExplorerSloppyShutdownThrottlingHundredthsPercent"]
       68 LOADN                            R8 10000
       69 NAMECALL                         R5 R5 K26 ["DefineFastInt"]
       71 CALL                             R5 3 1
       72 SETTABLEKS                       R5 R4 K16 ["throttlingPercentage"]
       74 CALL                             R3 1 0
       75 GETUPVAL                         R3 2
       76 LOADK                            R4 K27 ["%s disconnecting"]
       77 MOVE                             R5 R2
       78 CALL                             R3 2 0
       79 GETUPVAL                         R4 0
       80 GETTABLE                         R3 R4 R2
       81 JUMPIFNOTEQKNIL                  R3 ; [+2]
       83 LOADB                            R5 0 +1
       84 LOADB                            R5 1
       85 FASTCALL2K                       ASSERT R5 K28 ; [+4]
       87 LOADK                            R6 K28 ["Disconnect sent without a connection"]
       88 GETIMPORT                        R4 K5 [assert]
       90 CALL                             R4 2 0
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R6 R3 K29 ["identifier"]
       94 GETTABLE                         R4 R5 R6
       95 JUMPIFNOTEQ                      R4 R2 ; [+6]
       97 GETUPVAL                         R4 1
       98 GETTABLEKS                       R5 R3 K29 ["identifier"]
      100 LOADNIL                          R6
      101 SETTABLE                         R6 R4 R5
      102 GETUPVAL                         R4 0
      103 LOADNIL                          R5
      104 SETTABLE                         R5 R4 R2
      105 GETTABLEKS                       R4 R3 K30 ["disconnectSignal"]
      107 NAMECALL                         R4 R4 K31 ["Fire"]
      109 CALL                             R4 1 0
      110 GETUPVAL                         R3 2
      111 LOADK                            R4 K32 ["%s (%s) connected"]
      112 MOVE                             R5 R1
      113 MOVE                             R6 R0
      114 CALL                             R3 3 0
      115 DUPTABLE                         R3 K35 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
      116 SETTABLEKS                       R0 R3 K29 ["identifier"]
      118 GETUPVAL                         R4 4
      119 GETTABLEKS                       R4 R4 K36 ["Signal"]
      121 GETTABLEKS                       R4 R4 K37 ["new"]
      123 CALL                             R4 0 1
      124 SETTABLEKS                       R4 R3 K30 ["disconnectSignal"]
      126 GETUPVAL                         R4 4
      127 GETTABLEKS                       R4 R4 K36 ["Signal"]
      129 GETTABLEKS                       R4 R4 K37 ["new"]
      131 CALL                             R4 0 1
      132 SETTABLEKS                       R4 R3 K33 ["messageReceivedSignal"]
      134 NEWCLOSURE                       R4 P0
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          VAL R1
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          UPVAL U6
      139 SETTABLEKS                       R4 R3 K34 ["sendMessage"]
      141 GETUPVAL                         R4 0
      142 SETTABLE                         R3 R4 R1
      143 GETUPVAL                         R4 1
      144 SETTABLE                         R1 R4 R0
      145 GETUPVAL                         R4 7
      146 MOVE                             R5 R3
      147 CALL                             R4 1 0
      148 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Message session UUID is not a string"]
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

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Session UUID is not a string"]
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
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R4 R1 K8 ["identifier"]
       34 GETTABLE                         R2 R3 R4
       35 JUMPIFNOTEQ                      R2 R0 ; [+6]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R3 R1 K8 ["identifier"]
       40 LOADNIL                          R4
       41 SETTABLE                         R4 R2 R3
       42 GETUPVAL                         R2 1
       43 LOADNIL                          R3
       44 SETTABLE                         R3 R2 R0
       45 GETTABLEKS                       R2 R1 K9 ["disconnectSignal"]
       47 NAMECALL                         R2 R2 K10 ["Fire"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K0 ["fromGuest"]
       12 GETTABLEKS                       R6 R6 K1 ["connect"]
       14 NEWCLOSURE                       R7 P1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R4 R4 K2 ["OnInvokeSuspendOverride"]
       25 CALL                             R4 3 1
       26 GETUPVAL                         R5 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K0 ["fromGuest"]
       30 GETTABLEKS                       R7 R7 K3 ["message"]
       32 NEWCLOSURE                       R8 P2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U0
       35 NAMECALL                         R5 R5 K2 ["OnInvokeSuspendOverride"]
       37 CALL                             R5 3 1
       38 GETUPVAL                         R6 1
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K0 ["fromGuest"]
       42 GETTABLEKS                       R8 R8 K4 ["disconnect"]
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 NAMECALL                         R6 R6 K2 ["OnInvokeSuspendOverride"]
       50 CALL                             R6 3 1
       51 GETUPVAL                         R7 1
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K5 ["fromHost"]
       55 GETTABLEKS                       R9 R9 K6 ["starting"]
       57 NAMECALL                         R7 R7 K7 ["Invoke"]
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 5
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R9 R9 K5 ["fromHost"]
       64 GETTABLEKS                       R9 R9 K8 ["itemStarted"]
       66 NAMECALL                         R7 R7 K9 ["SetItem"]
       68 CALL                             R7 2 0
       69 NEWCLOSURE                       R7 P4
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U2
       77 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["AnalyticsContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 7
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K5 ["Components"]
       31 GETTABLEKS                       R5 R5 K6 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K7 ["NetworkContextProvider"]
       35 DUPTABLE                         R6 K9 [{"registerOnConnect"}]
       36 SETTABLEKS                       R3 R6 K8 ["registerOnConnect"]
       38 GETTABLEKS                       R7 R0 K10 ["children"]
       40 CALL                             R4 3 -1
       41 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Analytics"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Explorer"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["StudioProtocolConstants"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R5 K18 ["createElement"]
       52 GETTABLEKS                       R8 R4 K19 ["ContextServices"]
       54 GETTABLEKS                       R8 R8 K20 ["Plugin"]
       56 GETTABLEKS                       R9 R3 K16 ["Util"]
       58 GETTABLEKS                       R9 R9 K21 ["createDebugLogger"]
       60 LOADK                            R10 K22 ["StudioNetworkContextProvider"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K23 [PROTO_8]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 RETURN                           R10 1
