PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["syncPinnedThread"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

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
       14 GETTABLEKS                       R3 R1 K2 ["service"]
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 4
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 GETUPVAL                         R7 6
       23 CALL                             R7 0 1
       24 GETUPVAL                         R8 7
       25 CALL                             R8 0 1
       26 GETUPVAL                         R9 8
       27 CALL                             R9 0 1
       28 MOVE                             R10 R5
       29 JUMPIFNOT                        R10 ; [+2]
       30 GETTABLEKS                       R10 R5 K3 ["acpSessionId"]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K4 ["useRef"]
       35 NEWTABLE                         R12 0 0
       37 CALL                             R11 1 1
       38 GETTABLEKS                       R12 R11 K5 ["current"]
       40 SETTABLEKS                       R3 R12 K2 ["service"]
       42 GETTABLEKS                       R12 R11 K5 ["current"]
       44 SETTABLEKS                       R4 R12 K6 ["threadId"]
       46 GETTABLEKS                       R12 R11 K5 ["current"]
       48 SETTABLEKS                       R6 R12 K7 ["addMessage"]
       50 GETTABLEKS                       R12 R11 K5 ["current"]
       52 SETTABLEKS                       R7 R12 K8 ["addContent"]
       54 GETTABLEKS                       R12 R11 K5 ["current"]
       56 SETTABLEKS                       R8 R12 K9 ["editContent"]
       58 GETTABLEKS                       R12 R11 K5 ["current"]
       60 SETTABLEKS                       R9 R12 K10 ["editThread"]
       62 GETTABLEKS                       R12 R11 K5 ["current"]
       64 GETTABLEKS                       R13 R2 K11 ["markInputDisabled"]
       66 SETTABLEKS                       R13 R12 K11 ["markInputDisabled"]
       68 GETTABLEKS                       R12 R11 K5 ["current"]
       70 GETTABLEKS                       R13 R2 K12 ["clearInputDisabled"]
       72 SETTABLEKS                       R13 R12 K12 ["clearInputDisabled"]
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K4 ["useRef"]
       77 LOADNIL                          R13
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R12 K5 ["current"]
       81 JUMPIFNOTEQKNIL                  R13 ; [+9]
       83 GETUPVAL                         R13 9
       84 GETTABLEKS                       R13 R13 K13 ["new"]
       86 GETTABLEKS                       R14 R11 K5 ["current"]
       88 CALL                             R13 1 1
       89 SETTABLEKS                       R13 R12 K5 ["current"]
       91 GETTABLEKS                       R13 R12 K5 ["current"]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K14 ["useEffect"]
       96 NEWCLOSURE                       R15 P0
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R10
      100 NEWTABLE                         R16 0 4
      102 MOVE                             R17 R13
      103 MOVE                             R18 R4
      104 MOVE                             R19 R3
      105 MOVE                             R20 R10
      106 SETLIST                          R16 R17 4 [1]
      108 CALL                             R14 2 0
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K14 ["useEffect"]
      112 NEWCLOSURE                       R15 P1
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R12
      115 NEWTABLE                         R16 0 1
      117 MOVE                             R17 R13
      118 SETLIST                          R16 R17 1 [1]
      120 CALL                             R14 2 0
      121 GETUPVAL                         R14 0
      122 GETTABLEKS                       R14 R14 K15 ["useMemo"]
      124 NEWCLOSURE                       R15 P2
      125 CAPTURE                          VAL R13
      126 NEWTABLE                         R16 0 1
      128 MOVE                             R17 R13
      129 SETLIST                          R16 R17 1 [1]
      131 CALL                             R14 2 1
      132 GETUPVAL                         R15 10
      133 GETUPVAL                         R16 11
      134 GETTABLEKS                       R16 R16 K16 ["Provider"]
      136 DUPTABLE                         R17 K18 [{"value"}]
      137 SETTABLEKS                       R14 R17 K17 ["value"]
      139 GETTABLEKS                       R18 R0 K19 ["children"]
      141 CALL                             R15 3 -1
      142 RETURN                           R15 -1

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
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["InputStateContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K16 ["useAddContent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K17 ["useAddMessage"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K18 ["useCurrentThread"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K15 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K19 ["useEditContent"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K15 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K20 ["useEditThread"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K15 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K21 ["useThreadId"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R2 K22 ["AcpSessionMonitorFactory"]
       88 GETTABLEKS                       R13 R4 K23 ["createElement"]
       90 DUPTABLE                         R14 K26 [{["getSessionMonitor"] = }]
       91 GETTABLEKS                       R15 R4 K27 ["createContext"]
       93 MOVE                             R16 R14
       94 CALL                             R15 1 1
       95 DUPCLOSURE                       R16 K28 [PROTO_5]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R15
      108 DUPTABLE                         R17 K31 [{"Context", "Provider"}]
      109 SETTABLEKS                       R15 R17 K29 ["Context"]
      111 SETTABLEKS                       R16 R17 K30 ["Provider"]
      113 RETURN                           R17 1
