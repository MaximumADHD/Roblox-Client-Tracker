PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDestroySessionMonitorsOnClose"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 2
        6 JUMPIFEQKS                       R1 K1 [""] ; [+3]
        8 GETUPVAL                         R0 0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R0
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R3 4
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K2 ["syncPinnedThread"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getSessionMonitor"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"getSessionMonitor"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getSessionMonitor"]
        5 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K2 ["sessionId"]
       23 GETTABLEKS                       R4 R1 K3 ["service"]
       25 GETUPVAL                         R5 4
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 6
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 7
       32 CALL                             R8 0 1
       33 GETUPVAL                         R9 8
       34 CALL                             R9 0 1
       35 GETUPVAL                         R10 9
       36 CALL                             R10 0 1
       37 MOVE                             R11 R6
       38 JUMPIFNOT                        R11 ; [+2]
       39 GETTABLEKS                       R11 R6 K4 ["acpSessionId"]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R12 R12 K5 ["useRef"]
       44 NEWTABLE                         R13 0 0
       46 CALL                             R12 1 1
       47 GETTABLEKS                       R13 R12 K6 ["current"]
       49 SETTABLEKS                       R4 R13 K3 ["service"]
       51 GETTABLEKS                       R13 R12 K6 ["current"]
       53 SETTABLEKS                       R5 R13 K7 ["threadId"]
       55 GETTABLEKS                       R13 R12 K6 ["current"]
       57 SETTABLEKS                       R7 R13 K8 ["addMessage"]
       59 GETTABLEKS                       R13 R12 K6 ["current"]
       61 SETTABLEKS                       R8 R13 K9 ["addContent"]
       63 GETTABLEKS                       R13 R12 K6 ["current"]
       65 SETTABLEKS                       R9 R13 K10 ["editContent"]
       67 GETTABLEKS                       R13 R12 K6 ["current"]
       69 SETTABLEKS                       R10 R13 K11 ["editThread"]
       71 GETTABLEKS                       R13 R12 K6 ["current"]
       73 GETTABLEKS                       R14 R2 K12 ["markInputDisabled"]
       75 SETTABLEKS                       R14 R13 K12 ["markInputDisabled"]
       77 GETTABLEKS                       R13 R12 K6 ["current"]
       79 GETTABLEKS                       R14 R2 K13 ["clearInputDisabled"]
       81 SETTABLEKS                       R14 R13 K13 ["clearInputDisabled"]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K5 ["useRef"]
       86 LOADNIL                          R14
       87 CALL                             R13 1 1
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R14 R14 K5 ["useRef"]
       91 MOVE                             R15 R3
       92 CALL                             R14 1 1
       93 GETUPVAL                         R15 10
       94 GETTABLEKS                       R15 R15 K14 ["FFlagAssistantDestroySessionMonitorsOnClose"]
       96 JUMPIFNOT                        R15 ; [+12]
       97 GETTABLEKS                       R15 R14 K6 ["current"]
       99 JUMPIFEQ                         R15 R3 ; [+9]
      101 SETTABLEKS                       R3 R14 K6 ["current"]
      103 GETTABLEKS                       R15 R13 K6 ["current"]
      105 JUMPIFNOT                        R15 ; [+3]
      106 NAMECALL                         R16 R15 K15 ["destroy"]
      108 CALL                             R16 1 0
      109 GETTABLEKS                       R15 R13 K6 ["current"]
      111 JUMPIFNOTEQKNIL                  R15 ; [+9]
      113 GETUPVAL                         R15 11
      114 GETTABLEKS                       R15 R15 K16 ["new"]
      116 GETTABLEKS                       R16 R12 K6 ["current"]
      118 CALL                             R15 1 1
      119 SETTABLEKS                       R15 R13 K6 ["current"]
      121 GETTABLEKS                       R15 R13 K6 ["current"]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K17 ["useEffect"]
      126 NEWCLOSURE                       R17 P0
      127 CAPTURE                          VAL R11
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R5
      132 NEWTABLE                         R18 0 5
      134 MOVE                             R19 R15
      135 MOVE                             R20 R5
      136 MOVE                             R21 R4
      137 MOVE                             R22 R11
      138 MOVE                             R23 R3
      139 SETLIST                          R18 R19 5 [1]
      141 CALL                             R16 2 0
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K17 ["useEffect"]
      145 NEWCLOSURE                       R17 P1
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R13
      148 NEWTABLE                         R18 0 1
      150 MOVE                             R19 R15
      151 SETLIST                          R18 R19 1 [1]
      153 CALL                             R16 2 0
      154 GETUPVAL                         R16 0
      155 GETTABLEKS                       R16 R16 K18 ["useMemo"]
      157 NEWCLOSURE                       R17 P2
      158 CAPTURE                          VAL R15
      159 NEWTABLE                         R18 0 1
      161 MOVE                             R19 R15
      162 SETLIST                          R18 R19 1 [1]
      164 CALL                             R16 2 1
      165 GETUPVAL                         R17 12
      166 GETUPVAL                         R18 13
      167 GETTABLEKS                       R18 R18 K19 ["Provider"]
      169 DUPTABLE                         R19 K21 [{"value"}]
      170 SETTABLEKS                       R16 R19 K20 ["value"]
      172 GETTABLEKS                       R20 R0 K22 ["children"]
      174 CALL                             R17 3 -1
      175 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["ACPClientService"]
       20 GETTABLEKS                       R3 R3 K10 ["AcpSessionMonitor"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K18 ["useAddContent"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K19 ["useAddMessage"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K20 ["useCurrentThread"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K21 ["useEditContent"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K17 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useEditThread"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K17 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K23 ["useThreadId"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R2 K24 ["AcpSessionMonitorFactory"]
      102 GETTABLEKS                       R15 R5 K25 ["createElement"]
      104 DUPTABLE                         R16 K28 [{["getSessionMonitor"] = }]
      105 GETTABLEKS                       R17 R5 K29 ["createContext"]
      107 MOVE                             R18 R16
      108 CALL                             R17 1 1
      109 DUPCLOSURE                       R18 K30 [PROTO_5]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R17
      124 DUPTABLE                         R19 K33 [{"Context", "Provider"}]
      125 SETTABLEKS                       R17 R19 K31 ["Context"]
      127 SETTABLEKS                       R18 R19 K32 ["Provider"]
      129 RETURN                           R19 1
