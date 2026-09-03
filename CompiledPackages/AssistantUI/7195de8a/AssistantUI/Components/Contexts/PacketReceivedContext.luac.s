PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{[1] = 0, ["pendingUserInputCount"] = 0}]
        1 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["current"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+4]
        4 DUPTABLE                         R2 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        5 GETTABLEKS                       R3 R0 K0 ["current"]
        7 SETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 DUPTABLE                         R0 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        7 GETTABLEKS                       R1 R0 K1 ["lastPacketTime"]
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 DUPTABLE                         R0 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        7 GETTABLEKS                       R1 R0 K3 ["pendingUserInputCount"]
        9 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R2 R0 K1 ["lastPacketTime"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R2 R0 K2 ["pendingUserInputCount"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 LOADN                            R2 0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 LOADN                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R5 R2 K0 ["current"]
        4 GETTABLE                         R4 R5 R3
        5 JUMPIF                           R4 ; [+4]
        6 DUPTABLE                         R4 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        7 GETTABLEKS                       R5 R2 K0 ["current"]
        9 SETTABLE                         R4 R5 R3
       10 MOVE                             R1 R4
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K6 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K7 ["function"] ; [+6]
       18 MOVE                             R2 R0
       19 GETTABLEKS                       R3 R1 K1 ["lastPacketTime"]
       21 CALL                             R2 1 1
       22 JUMP                             ; [+1]
       23 MOVE                             R2 R0
       24 SETTABLEKS                       R2 R1 K1 ["lastPacketTime"]
       26 GETUPVAL                         R3 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K0 ["current"]
       30 JUMPIFNOTEQ                      R3 R4 ; [+4]
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R4 R1 K0 ["current"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+4]
        6 DUPTABLE                         R3 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        7 GETTABLEKS                       R4 R1 K0 ["current"]
        9 SETTABLE                         R3 R4 R2
       10 MOVE                             R0 R3
       11 GETTABLEKS                       R2 R0 K3 ["pendingUserInputCount"]
       13 ADDK                             R1 R2 K5 [1]
       14 SETTABLEKS                       R1 R0 K3 ["pendingUserInputCount"]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K0 ["current"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+4]
       22 GETUPVAL                         R2 3
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R4 R1 K0 ["current"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+4]
        6 DUPTABLE                         R3 K4 [{["lastPacketTime"] = 0, ["pendingUserInputCount"] = 0}]
        7 GETTABLEKS                       R4 R1 K0 ["current"]
        9 SETTABLE                         R3 R4 R2
       10 MOVE                             R0 R3
       11 LOADN                            R2 0
       12 GETTABLEKS                       R4 R0 K3 ["pendingUserInputCount"]
       14 SUBK                             R3 R4 K5 [1]
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K8 [math.max]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K3 ["pendingUserInputCount"]
       22 LOADNIL                          R2
       23 JUMPIFNOTEQKN                    R1 K2 [0] ; [+7]
       25 GETIMPORT                        R3 K11 [os.clock]
       27 CALL                             R3 0 1
       28 MOVE                             R2 R3
       29 SETTABLEKS                       R2 R0 K1 ["lastPacketTime"]
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K0 ["current"]
       35 JUMPIFNOTEQ                      R3 R4 ; [+8]
       37 GETUPVAL                         R3 3
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETUPVAL                         R3 4
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K5 [{"lastPacketTime", "setLastPacketTime", "hasPendingUserInput", "incrementPendingUserInput", "decrementPendingUserInput"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastPacketTime"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setLastPacketTime"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hasPendingUserInput"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["incrementPendingUserInput"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["decrementPendingUserInput"]
       16 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useContext"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["Context"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["threadId"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["useRef"]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["useRef"]
       30 MOVE                             R5 R2
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K8 ["useState"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CALL                             R5 1 2
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K8 ["useState"]
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CALL                             R7 1 2
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R2
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 0
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       61 NEWCLOSURE                       R10 P3
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R11 0 1
       68 MOVE                             R12 R2
       69 SETLIST                          R11 R12 1 [1]
       71 CALL                             R9 2 0
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       75 NEWCLOSURE                       R10 P4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 NEWTABLE                         R11 0 1
       82 MOVE                             R12 R2
       83 SETLIST                          R11 R12 1 [1]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       89 NEWCLOSURE                       R11 P5
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R12 0 1
       96 MOVE                             R13 R2
       97 SETLIST                          R12 R13 1 [1]
       99 CALL                             R10 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K10 ["useCallback"]
      103 NEWCLOSURE                       R12 P6
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 NEWTABLE                         R13 0 1
      111 MOVE                             R14 R2
      112 SETLIST                          R13 R14 1 [1]
      114 CALL                             R11 2 1
      115 GETTABLEKS                       R13 R0 K11 ["lastPacketTime"]
      117 OR                               R12 R13 R5
      118 GETTABLEKS                       R14 R0 K12 ["setLastPacketTime"]
      120 OR                               R13 R14 R9
      121 LOADN                            R15 0
      122 JUMPIFLT                         R15 R7 ; [+2]
      124 LOADB                            R14 0 +1
      125 LOADB                            R14 1
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R15 R15 K13 ["useMemo"]
      129 NEWCLOSURE                       R16 P7
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 NEWTABLE                         R17 0 5
      137 MOVE                             R18 R12
      138 MOVE                             R19 R13
      139 MOVE                             R20 R14
      140 MOVE                             R21 R10
      141 MOVE                             R22 R11
      142 SETLIST                          R17 R18 5 [1]
      144 CALL                             R15 2 1
      145 GETUPVAL                         R16 2
      146 GETUPVAL                         R17 3
      147 GETTABLEKS                       R17 R17 K14 ["Provider"]
      149 DUPTABLE                         R18 K16 [{"value"}]
      150 SETTABLEKS                       R15 R18 K15 ["value"]
      152 GETTABLEKS                       R19 R0 K17 ["children"]
      154 CALL                             R16 3 -1
      155 RETURN                           R16 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["incrementPendingUserInput"]
        7 GETTABLEKS                       R3 R1 K2 ["decrementPendingUserInput"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 3
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 MOVE                             R9 R3
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["createElement"]
       30 DUPTABLE                         R5 K22 [{["default"] = True, ["lastPacketTime"] = 0, ["setLastPacketTime"], ["hasPendingUserInput"] = False, ["incrementPendingUserInput"], ["decrementPendingUserInput"]}]
       31 DUPCLOSURE                       R6 K23 [PROTO_0]
       32 SETTABLEKS                       R6 R5 K17 ["setLastPacketTime"]
       34 DUPCLOSURE                       R6 K24 [PROTO_1]
       35 SETTABLEKS                       R6 R5 K20 ["incrementPendingUserInput"]
       37 DUPCLOSURE                       R6 K25 [PROTO_2]
       38 SETTABLEKS                       R6 R5 K21 ["decrementPendingUserInput"]
       40 DUPCLOSURE                       R6 K26 [PROTO_3]
       41 DUPCLOSURE                       R7 K27 [PROTO_4]
       42 GETTABLEKS                       R8 R1 K28 ["createContext"]
       44 MOVE                             R9 R5
       45 CALL                             R8 1 1
       46 DUPCLOSURE                       R9 K29 [PROTO_13]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 DUPCLOSURE                       R10 K30 [PROTO_16]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R8
       54 DUPTABLE                         R11 K34 [{"Context", "Provider", "useMarkUserInputRequired"}]
       55 SETTABLEKS                       R8 R11 K31 ["Context"]
       57 SETTABLEKS                       R9 R11 K32 ["Provider"]
       59 SETTABLEKS                       R10 R11 K33 ["useMarkUserInputRequired"]
       61 RETURN                           R11 1
