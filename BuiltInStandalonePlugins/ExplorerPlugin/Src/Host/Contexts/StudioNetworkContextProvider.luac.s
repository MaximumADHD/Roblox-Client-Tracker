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
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["fromHost"]
       10 GETTABLEKS                       R3 R4 K2 ["message"]
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
       46 JUMPIFEQKNIL                     R2 ; [+72]
       48 GETUPVAL                         R3 2
       49 LOADK                            R4 K11 ["Had double connection from %s (old session UUID = %s, new session UUID = %s)"]
       50 MOVE                             R5 R0
       51 MOVE                             R6 R2
       52 MOVE                             R7 R1
       53 CALL                             R3 4 0
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R3 R4 K12 ["logCounter"]
       57 DUPTABLE                         R4 K18 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
       58 LOADK                            R5 K19 ["LuaExplorerSloppyShutdown"]
       59 SETTABLEKS                       R5 R4 K13 ["eventName"]
       61 NEWTABLE                         R5 0 1
       63 LOADK                            R6 K20 ["RobloxTelemetryCounter"]
       64 SETLIST                          R5 R6 1 [1]
       66 SETTABLEKS                       R5 R4 K14 ["backends"]
       68 GETIMPORT                        R5 K22 [game]
       70 LOADK                            R7 K23 ["LuaExplorerSloppyShutdownThrottlingHundredthsPercent"]
       71 LOADN                            R8 16
       72 NAMECALL                         R5 R5 K24 ["DefineFastInt"]
       74 CALL                             R5 3 1
       75 SETTABLEKS                       R5 R4 K15 ["throttlingPercentage"]
       77 LOADK                            R5 K25 ["Fired when the Luau Explorer requests a sloppy shutdown after receiving a double connection"]
       78 SETTABLEKS                       R5 R4 K16 ["description"]
       80 LOADK                            R5 K26 ["2025-05-09"]
       81 SETTABLEKS                       R5 R4 K17 ["lastUpdated"]
       83 CALL                             R3 1 0
       84 GETUPVAL                         R3 2
       85 LOADK                            R4 K27 ["%s disconnecting"]
       86 MOVE                             R5 R2
       87 CALL                             R3 2 0
       88 GETUPVAL                         R4 0
       89 GETTABLE                         R3 R4 R2
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 LOADB                            R5 0 +1
       93 LOADB                            R5 1
       94 FASTCALL2K                       ASSERT R5 K28 ; [+4]
       96 LOADK                            R6 K28 ["Disconnect sent without a connection"]
       97 GETIMPORT                        R4 K5 [assert]
       99 CALL                             R4 2 0
      100 GETUPVAL                         R5 1
      101 GETTABLEKS                       R6 R3 K29 ["identifier"]
      103 GETTABLE                         R4 R5 R6
      104 JUMPIFNOTEQ                      R4 R2 ; [+6]
      106 GETUPVAL                         R4 1
      107 GETTABLEKS                       R5 R3 K29 ["identifier"]
      109 LOADNIL                          R6
      110 SETTABLE                         R6 R4 R5
      111 GETUPVAL                         R4 0
      112 LOADNIL                          R5
      113 SETTABLE                         R5 R4 R2
      114 GETTABLEKS                       R4 R3 K30 ["disconnectSignal"]
      116 NAMECALL                         R4 R4 K31 ["Fire"]
      118 CALL                             R4 1 0
      119 GETUPVAL                         R3 2
      120 LOADK                            R4 K32 ["%s (%s) connected"]
      121 MOVE                             R5 R1
      122 MOVE                             R6 R0
      123 CALL                             R3 3 0
      124 DUPTABLE                         R3 K35 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
      125 SETTABLEKS                       R0 R3 K29 ["identifier"]
      127 GETUPVAL                         R6 4
      128 GETTABLEKS                       R5 R6 K36 ["Signal"]
      130 GETTABLEKS                       R4 R5 K37 ["new"]
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K30 ["disconnectSignal"]
      135 GETUPVAL                         R6 4
      136 GETTABLEKS                       R5 R6 K36 ["Signal"]
      138 GETTABLEKS                       R4 R5 K37 ["new"]
      140 CALL                             R4 0 1
      141 SETTABLEKS                       R4 R3 K33 ["messageReceivedSignal"]
      143 NEWCLOSURE                       R4 P0
      144 CAPTURE                          UPVAL U2
      145 CAPTURE                          VAL R1
      146 CAPTURE                          UPVAL U5
      147 CAPTURE                          UPVAL U6
      148 SETTABLEKS                       R4 R3 K34 ["sendMessage"]
      150 GETUPVAL                         R4 0
      151 SETTABLE                         R3 R4 R1
      152 GETUPVAL                         R4 1
      153 SETTABLE                         R1 R4 R0
      154 GETUPVAL                         R4 7
      155 MOVE                             R5 R3
      156 CALL                             R4 1 0
      157 RETURN                           R0 0

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
       27 GETUPVAL                         R4 6
       28 GETTABLEKS                       R3 R4 K4 ["fromHost"]
       30 GETTABLEKS                       R2 R3 K5 ["itemStarted"]
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
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K0 ["fromGuest"]
       12 GETTABLEKS                       R6 R7 K1 ["connect"]
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
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K0 ["fromGuest"]
       30 GETTABLEKS                       R7 R8 K3 ["message"]
       32 NEWCLOSURE                       R8 P2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U0
       35 NAMECALL                         R5 R5 K2 ["OnInvokeSuspendOverride"]
       37 CALL                             R5 3 1
       38 GETUPVAL                         R6 1
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K0 ["fromGuest"]
       42 GETTABLEKS                       R8 R9 K4 ["disconnect"]
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 NAMECALL                         R6 R6 K2 ["OnInvokeSuspendOverride"]
       50 CALL                             R6 3 1
       51 GETUPVAL                         R7 1
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R10 R11 K5 ["fromHost"]
       55 GETTABLEKS                       R9 R10 K6 ["starting"]
       57 NAMECALL                         R7 R7 K7 ["Invoke"]
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 5
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R10 R11 K5 ["fromHost"]
       64 GETTABLEKS                       R9 R10 K8 ["itemStarted"]
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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useContext"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["Components"]
       13 GETTABLEKS                       R4 R5 K4 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K5 ["AnalyticsContext"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U5
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 6
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K3 ["Components"]
       35 GETTABLEKS                       R6 R7 K4 ["Contexts"]
       37 GETTABLEKS                       R5 R6 K7 ["NetworkContextProvider"]
       39 DUPTABLE                         R6 K9 [{"registerOnConnect"}]
       40 SETTABLEKS                       R3 R6 K8 ["registerOnConnect"]
       42 GETTABLEKS                       R7 R0 K10 ["children"]
       44 CALL                             R4 3 -1
       45 RETURN                           R4 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Explorer"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R8 R1 K14 ["Src"]
       38 GETTABLEKS                       R7 R8 K15 ["Util"]
       40 GETTABLEKS                       R6 R7 K16 ["StudioProtocolConstants"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K17 ["createElement"]
       45 GETTABLEKS                       R8 R3 K18 ["ContextServices"]
       47 GETTABLEKS                       R7 R8 K19 ["Plugin"]
       49 GETTABLEKS                       R9 R2 K15 ["Util"]
       51 GETTABLEKS                       R8 R9 K20 ["createDebugLogger"]
       53 LOADK                            R9 K21 ["StudioNetworkContextProvider"]
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K22 [PROTO_8]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R6
       63 RETURN                           R9 1
