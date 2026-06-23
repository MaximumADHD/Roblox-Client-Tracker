PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"lastPacketTime", "pendingUserInputCount"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastPacketTime"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["pendingUserInputCount"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["current"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+10]
        4 DUPTABLE                         R2 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        5 LOADN                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["lastPacketTime"]
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["pendingUserInputCount"]
       11 GETTABLEKS                       R3 R0 K0 ["current"]
       13 SETTABLE                         R2 R3 R1
       14 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+7]
        6 DUPTABLE                         R0 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["lastPacketTime"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K2 ["pendingUserInputCount"]
       13 GETTABLEKS                       R1 R0 K1 ["lastPacketTime"]
       15 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+7]
        6 DUPTABLE                         R0 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["lastPacketTime"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K2 ["pendingUserInputCount"]
       13 GETTABLEKS                       R1 R0 K2 ["pendingUserInputCount"]
       15 RETURN                           R1 1

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
        5 JUMPIF                           R4 ; [+10]
        6 DUPTABLE                         R4 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K1 ["lastPacketTime"]
       10 LOADN                            R5 0
       11 SETTABLEKS                       R5 R4 K2 ["pendingUserInputCount"]
       13 GETTABLEKS                       R5 R2 K0 ["current"]
       15 SETTABLE                         R4 R5 R3
       16 MOVE                             R1 R4
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K5 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+6]
       24 MOVE                             R2 R0
       25 GETTABLEKS                       R3 R1 K1 ["lastPacketTime"]
       27 CALL                             R2 1 1
       28 JUMP                             ; [+1]
       29 MOVE                             R2 R0
       30 SETTABLEKS                       R2 R1 K1 ["lastPacketTime"]
       32 GETUPVAL                         R3 1
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K0 ["current"]
       36 JUMPIFNOTEQ                      R3 R4 ; [+4]
       38 GETUPVAL                         R3 3
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R4 R1 K0 ["current"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+10]
        6 DUPTABLE                         R3 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K1 ["lastPacketTime"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["pendingUserInputCount"]
       13 GETTABLEKS                       R4 R1 K0 ["current"]
       15 SETTABLE                         R3 R4 R2
       16 MOVE                             R0 R3
       17 GETTABLEKS                       R2 R0 K2 ["pendingUserInputCount"]
       19 ADDK                             R1 R2 K4 [1]
       20 SETTABLEKS                       R1 R0 K2 ["pendingUserInputCount"]
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K0 ["current"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+4]
       28 GETUPVAL                         R2 3
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R4 R1 K0 ["current"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+10]
        6 DUPTABLE                         R3 K3 [{"lastPacketTime", "pendingUserInputCount"}]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K1 ["lastPacketTime"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["pendingUserInputCount"]
       13 GETTABLEKS                       R4 R1 K0 ["current"]
       15 SETTABLE                         R3 R4 R2
       16 MOVE                             R0 R3
       17 LOADN                            R2 0
       18 GETTABLEKS                       R4 R0 K2 ["pendingUserInputCount"]
       20 SUBK                             R3 R4 K4 [1]
       21 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       23 GETIMPORT                        R1 K7 [math.max]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K2 ["pendingUserInputCount"]
       28 LOADNIL                          R2
       29 JUMPIFNOTEQKN                    R1 K8 [0] ; [+7]
       31 GETIMPORT                        R3 K11 [os.clock]
       33 CALL                             R3 0 1
       34 MOVE                             R2 R3
       35 SETTABLEKS                       R2 R0 K1 ["lastPacketTime"]
       37 GETUPVAL                         R3 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K0 ["current"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+8]
       43 GETUPVAL                         R3 3
       44 MOVE                             R4 R1
       45 CALL                             R3 1 0
       46 JUMPIFNOT                        R2 ; [+3]
       47 GETUPVAL                         R3 4
       48 MOVE                             R4 R2
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_12:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_12]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 LOADN                            R2 0
        1 SUBK                             R3 R0 K0 [1]
        2 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        4 GETIMPORT                        R1 K3 [math.max]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKN                    R1 K4 [0] ; [+6]
        9 GETUPVAL                         R2 0
       10 GETIMPORT                        R3 K7 [os.clock]
       12 CALL                             R3 0 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 LOADNIL                          R1
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 0
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+114]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K4 ["useContext"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K5 ["Context"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K6 ["threadId"]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K7 ["useRef"]
       32 NEWTABLE                         R9 0 0
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K7 ["useRef"]
       38 MOVE                             R10 R7
       39 CALL                             R9 1 1
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K8 ["useState"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R7
       48 CALL                             R12 1 2
       49 MOVE                             R1 R12
       50 MOVE                             R10 R13
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K8 ["useState"]
       54 NEWCLOSURE                       R13 P1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CALL                             R12 1 2
       58 MOVE                             R3 R12
       59 MOVE                             R11 R13
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K9 ["useEffect"]
       63 NEWCLOSURE                       R13 P2
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R14 0 1
       68 MOVE                             R15 R7
       69 SETLIST                          R14 R15 1 [1]
       71 CALL                             R12 2 0
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K9 ["useEffect"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 CAPTURE                          REF R10
       79 CAPTURE                          REF R11
       80 NEWTABLE                         R14 0 1
       82 MOVE                             R15 R7
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R12 2 0
       86 GETUPVAL                         R12 1
       87 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       89 NEWCLOSURE                       R13 P4
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R9
       93 CAPTURE                          REF R10
       94 NEWTABLE                         R14 0 1
       96 MOVE                             R15 R7
       97 SETLIST                          R14 R15 1 [1]
       99 CALL                             R12 2 1
      100 MOVE                             R2 R12
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      104 NEWCLOSURE                       R13 P5
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R9
      108 CAPTURE                          REF R11
      109 NEWTABLE                         R14 0 1
      111 MOVE                             R15 R7
      112 SETLIST                          R14 R15 1 [1]
      114 CALL                             R12 2 1
      115 MOVE                             R4 R12
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      119 NEWCLOSURE                       R13 P6
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 CAPTURE                          REF R11
      124 CAPTURE                          REF R10
      125 NEWTABLE                         R14 0 1
      127 MOVE                             R15 R7
      128 SETLIST                          R14 R15 1 [1]
      130 CALL                             R12 2 1
      131 MOVE                             R5 R12
      132 CLOSEUPVALS                      R10
      133 JUMP                             ; [+42]
      134 GETUPVAL                         R6 1
      135 GETTABLEKS                       R6 R6 K8 ["useState"]
      137 LOADN                            R7 0
      138 CALL                             R6 1 2
      139 MOVE                             R1 R6
      140 MOVE                             R2 R7
      141 LOADNIL                          R6
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R7 R7 K8 ["useState"]
      145 LOADN                            R8 0
      146 CALL                             R7 1 2
      147 MOVE                             R3 R7
      148 MOVE                             R6 R8
      149 GETUPVAL                         R7 1
      150 GETTABLEKS                       R7 R7 K10 ["useCallback"]
      152 NEWCLOSURE                       R8 P7
      153 CAPTURE                          REF R6
      154 NEWTABLE                         R9 0 1
      156 MOVE                             R10 R6
      157 SETLIST                          R9 R10 1 [1]
      159 CALL                             R7 2 1
      160 MOVE                             R4 R7
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R7 R7 K10 ["useCallback"]
      164 NEWCLOSURE                       R8 P8
      165 CAPTURE                          REF R6
      166 CAPTURE                          REF R2
      167 NEWTABLE                         R9 0 2
      169 MOVE                             R10 R6
      170 MOVE                             R11 R2
      171 SETLIST                          R9 R10 2 [1]
      173 CALL                             R7 2 1
      174 MOVE                             R5 R7
      175 CLOSEUPVALS                      R6
      176 GETTABLEKS                       R7 R0 K11 ["lastPacketTime"]
      178 OR                               R6 R7 R1
      179 GETTABLEKS                       R8 R0 K12 ["setLastPacketTime"]
      181 OR                               R7 R8 R2
      182 LOADN                            R9 0
      183 JUMPIFLT                         R9 R3 ; [+2]
      185 LOADB                            R8 0 +1
      186 LOADB                            R8 1
      187 GETUPVAL                         R9 1
      188 GETTABLEKS                       R9 R9 K13 ["useMemo"]
      190 NEWCLOSURE                       R10 P9
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R8
      194 CAPTURE                          REF R4
      195 CAPTURE                          REF R5
      196 NEWTABLE                         R11 0 5
      198 MOVE                             R12 R6
      199 MOVE                             R13 R7
      200 MOVE                             R14 R8
      201 MOVE                             R15 R4
      202 MOVE                             R16 R5
      203 SETLIST                          R11 R12 5 [1]
      205 CALL                             R9 2 1
      206 GETUPVAL                         R10 3
      207 GETUPVAL                         R11 4
      208 GETTABLEKS                       R11 R11 K14 ["Provider"]
      210 DUPTABLE                         R12 K16 [{"value"}]
      211 SETTABLEKS                       R9 R12 K15 ["value"]
      213 GETTABLEKS                       R13 R0 K17 ["children"]
      215 CALL                             R10 3 -1
      216 CLOSEUPVALS                      R2
      217 RETURN                           R10 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_20:
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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R5 K13 ["FFlagAssistantMultipleChatPersistence"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K14 ["createElement"]
       37 DUPTABLE                         R6 K21 [{"default", "lastPacketTime", "setLastPacketTime", "hasPendingUserInput", "incrementPendingUserInput", "decrementPendingUserInput"}]
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R6 K15 ["default"]
       41 LOADN                            R7 0
       42 SETTABLEKS                       R7 R6 K16 ["lastPacketTime"]
       44 DUPCLOSURE                       R7 K22 [PROTO_0]
       45 SETTABLEKS                       R7 R6 K17 ["setLastPacketTime"]
       47 LOADB                            R7 0
       48 SETTABLEKS                       R7 R6 K18 ["hasPendingUserInput"]
       50 DUPCLOSURE                       R7 K23 [PROTO_1]
       51 SETTABLEKS                       R7 R6 K19 ["incrementPendingUserInput"]
       53 DUPCLOSURE                       R7 K24 [PROTO_2]
       54 SETTABLEKS                       R7 R6 K20 ["decrementPendingUserInput"]
       56 DUPCLOSURE                       R7 K25 [PROTO_3]
       57 DUPCLOSURE                       R8 K26 [PROTO_4]
       58 GETTABLEKS                       R9 R1 K27 ["createContext"]
       60 MOVE                             R10 R6
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K28 [PROTO_17]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R11 K29 [PROTO_20]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R9
       71 DUPTABLE                         R12 K33 [{"Context", "Provider", "useMarkUserInputRequired"}]
       72 SETTABLEKS                       R9 R12 K30 ["Context"]
       74 SETTABLEKS                       R10 R12 K31 ["Provider"]
       76 SETTABLEKS                       R11 R12 K32 ["useMarkUserInputRequired"]
       78 RETURN                           R12 1
