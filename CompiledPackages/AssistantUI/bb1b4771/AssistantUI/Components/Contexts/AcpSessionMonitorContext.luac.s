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
       26 MOVE                             R9 R5
       27 JUMPIFNOT                        R9 ; [+2]
       28 GETTABLEKS                       R9 R5 K3 ["acpSessionId"]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K4 ["useRef"]
       33 NEWTABLE                         R11 0 0
       35 CALL                             R10 1 1
       36 GETTABLEKS                       R11 R10 K5 ["current"]
       38 SETTABLEKS                       R3 R11 K2 ["service"]
       40 GETTABLEKS                       R11 R10 K5 ["current"]
       42 SETTABLEKS                       R4 R11 K6 ["threadId"]
       44 GETTABLEKS                       R11 R10 K5 ["current"]
       46 SETTABLEKS                       R6 R11 K7 ["addMessage"]
       48 GETTABLEKS                       R11 R10 K5 ["current"]
       50 SETTABLEKS                       R7 R11 K8 ["addContent"]
       52 GETTABLEKS                       R11 R10 K5 ["current"]
       54 SETTABLEKS                       R8 R11 K9 ["editContent"]
       56 GETTABLEKS                       R11 R10 K5 ["current"]
       58 GETTABLEKS                       R12 R2 K10 ["markInputDisabled"]
       60 SETTABLEKS                       R12 R11 K10 ["markInputDisabled"]
       62 GETTABLEKS                       R11 R10 K5 ["current"]
       64 GETTABLEKS                       R12 R2 K11 ["clearInputDisabled"]
       66 SETTABLEKS                       R12 R11 K11 ["clearInputDisabled"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K4 ["useRef"]
       71 LOADNIL                          R12
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R11 K5 ["current"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+9]
       77 GETUPVAL                         R12 8
       78 GETTABLEKS                       R12 R12 K12 ["new"]
       80 GETTABLEKS                       R13 R10 K5 ["current"]
       82 CALL                             R12 1 1
       83 SETTABLEKS                       R12 R11 K5 ["current"]
       85 GETTABLEKS                       R12 R11 K5 ["current"]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       90 NEWCLOSURE                       R14 P0
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R9
       94 NEWTABLE                         R15 0 4
       96 MOVE                             R16 R12
       97 MOVE                             R17 R4
       98 MOVE                             R18 R3
       99 MOVE                             R19 R9
      100 SETLIST                          R15 R16 4 [1]
      102 CALL                             R13 2 0
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R13 R13 K13 ["useEffect"]
      106 NEWCLOSURE                       R14 P1
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R11
      109 NEWTABLE                         R15 0 1
      111 MOVE                             R16 R12
      112 SETLIST                          R15 R16 1 [1]
      114 CALL                             R13 2 0
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K14 ["useMemo"]
      118 NEWCLOSURE                       R14 P2
      119 CAPTURE                          VAL R12
      120 NEWTABLE                         R15 0 1
      122 MOVE                             R16 R12
      123 SETLIST                          R15 R16 1 [1]
      125 CALL                             R13 2 1
      126 GETUPVAL                         R14 9
      127 GETUPVAL                         R15 10
      128 GETTABLEKS                       R15 R15 K15 ["Provider"]
      130 DUPTABLE                         R16 K17 [{"value"}]
      131 SETTABLEKS                       R13 R16 K16 ["value"]
      133 GETTABLEKS                       R17 R0 K18 ["children"]
      135 CALL                             R14 3 -1
      136 RETURN                           R14 -1

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
       76 GETTABLEKS                       R11 R11 K20 ["useThreadId"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K21 ["AcpSessionMonitorFactory"]
       81 GETTABLEKS                       R12 R4 K22 ["createElement"]
       83 DUPTABLE                         R13 K25 [{["getSessionMonitor"] = }]
       84 GETTABLEKS                       R14 R4 K26 ["createContext"]
       86 MOVE                             R15 R13
       87 CALL                             R14 1 1
       88 DUPCLOSURE                       R15 K27 [PROTO_5]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R14
      100 DUPTABLE                         R16 K30 [{"Context", "Provider"}]
      101 SETTABLEKS                       R14 R16 K28 ["Context"]
      103 SETTABLEKS                       R15 R16 K29 ["Provider"]
      105 RETURN                           R16 1
