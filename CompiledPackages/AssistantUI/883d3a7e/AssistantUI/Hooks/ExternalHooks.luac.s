PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"messageId", "content"}]
        2 SETTABLEKS                       R0 R3 K0 ["messageId"]
        4 DUPTABLE                         R4 K5 [{"type", "text"}]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K6 ["Type"]
        8 SETTABLEKS                       R5 R4 K3 ["type"]
       10 SETTABLEKS                       R1 R4 K4 ["text"]
       12 SETTABLEKS                       R4 R3 K1 ["content"]
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R1 K2 ["content"]
        7 DUPTABLE                         R4 K5 [{"toolUse", "toolResult"}]
        8 GETTABLEKS                       R5 R1 K3 ["toolUse"]
       10 SETTABLEKS                       R5 R4 K3 ["toolUse"]
       12 GETTABLEKS                       R5 R1 K4 ["toolResult"]
       14 SETTABLEKS                       R5 R4 K4 ["toolResult"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R4 K7 [{"messageId", "content"}]
       19 SETTABLEKS                       R0 R4 K6 ["messageId"]
       21 SETTABLEKS                       R2 R4 K2 ["content"]
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["addMessage"]
        7 GETUPVAL                         R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R1 K1 ["addTextContent"]
       13 GETUPVAL                         R1 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K2 ["addToolContent"]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 5
       21 CALL                             R2 0 1
       22 SETTABLEKS                       R2 R1 K3 ["editContent"]
       24 GETUPVAL                         R1 1
       25 GETUPVAL                         R2 6
       26 CALL                             R2 0 1
       27 SETTABLEKS                       R2 R1 K4 ["getContentObserver"]
       29 GETUPVAL                         R1 1
       30 GETUPVAL                         R2 7
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R1 K5 ["getOrAddMessage"]
       34 GETUPVAL                         R1 1
       35 GETUPVAL                         R2 8
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R1 K6 ["getThread"]
       39 GETUPVAL                         R2 9
       40 GETTABLEKS                       R1 R2 K7 ["useContext"]
       42 GETUPVAL                         R3 10
       43 GETTABLEKS                       R2 R3 K8 ["Context"]
       45 CALL                             R1 1 1
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R3 11
       48 DUPTABLE                         R4 K10 [{"setInputEnabled"}]
       49 GETUPVAL                         R5 12
       50 MOVE                             R6 R1
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K9 ["setInputEnabled"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K11 ["sendMessage"]
       57 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["addMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["addMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["addTextContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addTextContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["addTextContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["addToolContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addToolContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["addToolContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["editContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["editContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["editContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["getContentObserver flag not enabled"]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["getContentObserver"]
       12 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       14 LOADK                            R2 K4 ["getContentObserver hook not initialized"]
       15 GETIMPORT                        R0 K2 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K3 ["getContentObserver"]
       21 GETVARARGS                       R1 -1
       22 CALL                             R0 -1 -1
       23 RETURN                           R0 -1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["getOrAddMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getOrAddMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["getOrAddMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["getThread"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getThread hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["getThread"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["sendMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["sendMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["sendMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_11:
        0 DUPTABLE                         R0 K8 [{"addMessage", "addTextContent", "addToolContent", "editContent", "getContentObserver", "getOrAddMessage", "getThread", "sendMessage"}]
        1 DUPCLOSURE                       R1 K9 [PROTO_3]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["addMessage"]
        5 DUPCLOSURE                       R1 K10 [PROTO_4]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["addTextContent"]
        9 DUPCLOSURE                       R1 K11 [PROTO_5]
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["addToolContent"]
       13 DUPCLOSURE                       R1 K12 [PROTO_6]
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K3 ["editContent"]
       17 DUPCLOSURE                       R1 K13 [PROTO_7]
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R1 R0 K4 ["getContentObserver"]
       22 DUPCLOSURE                       R1 K14 [PROTO_8]
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R1 R0 K5 ["getOrAddMessage"]
       26 DUPCLOSURE                       R1 K15 [PROTO_9]
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R1 R0 K6 ["getThread"]
       30 DUPCLOSURE                       R1 K16 [PROTO_10]
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R1 R0 K7 ["sendMessage"]
       34 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["InputStateContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       36 GETTABLEKS                       R5 R6 K13 ["TextContentWidget"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Util"]
       48 GETTABLEKS                       R7 R8 K16 ["getToggleGenerationInputFunc"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       55 GETTABLEKS                       R8 R9 K18 ["useAddContent"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K19 ["useAddMessage"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K20 ["useEditContent"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K21 ["useGetContentObserver"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K17 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K22 ["useGetOrAddMessage"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K17 ["Hooks"]
       90 GETTABLEKS                       R13 R14 K23 ["useGetThread"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K17 ["Hooks"]
       97 GETTABLEKS                       R14 R15 K24 ["useSendMessage"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K25 ["Flags"]
      104 GETTABLEKS                       R15 R16 K26 ["FFlagMCPAssistantLongRunningToolCalls"]
      106 CALL                             R14 1 1
      107 DUPTABLE                         R15 K35 [{"addMessage", "addTextContent", "addToolContent", "editContent", "getContentObserver", "getOrAddMessage", "getThread", "sendMessage"}]
      108 LOADNIL                          R16
      109 SETTABLEKS                       R16 R15 K27 ["addMessage"]
      111 LOADNIL                          R16
      112 SETTABLEKS                       R16 R15 K28 ["addTextContent"]
      114 LOADNIL                          R16
      115 SETTABLEKS                       R16 R15 K29 ["addToolContent"]
      117 LOADNIL                          R16
      118 SETTABLEKS                       R16 R15 K30 ["editContent"]
      120 LOADNIL                          R16
      121 SETTABLEKS                       R16 R15 K31 ["getContentObserver"]
      123 LOADNIL                          R16
      124 SETTABLEKS                       R16 R15 K32 ["getOrAddMessage"]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R15 K33 ["getThread"]
      129 LOADNIL                          R16
      130 SETTABLEKS                       R16 R15 K34 ["sendMessage"]
      132 DUPCLOSURE                       R16 K36 [PROTO_2]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R6
      146 DUPCLOSURE                       R17 K37 [PROTO_11]
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R14
      149 DUPTABLE                         R18 K40 [{"use", "get"}]
      150 SETTABLEKS                       R16 R18 K38 ["use"]
      152 SETTABLEKS                       R17 R18 K39 ["get"]
      154 RETURN                           R18 1
