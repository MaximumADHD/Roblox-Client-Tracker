PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"messageId", "content"}]
        2 SETTABLEKS                       R0 R3 K0 ["messageId"]
        4 DUPTABLE                         R4 K5 [{"type", "text"}]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K6 ["Type"]
        8 SETTABLEKS                       R5 R4 K3 ["type"]
       10 SETTABLEKS                       R1 R4 K4 ["text"]
       12 SETTABLEKS                       R4 R3 K1 ["content"]
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
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
       39 GETUPVAL                         R1 9
       40 GETTABLEKS                       R1 R1 K7 ["useContext"]
       42 GETUPVAL                         R2 10
       43 GETTABLEKS                       R2 R2 K8 ["Context"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getContentMetadata"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R7 R7 K1 ["editContent"]
        9 DUPTABLE                         R8 K7 [{"threadId", "messageId", "contentId", "transformFn", "skipIfNoMessage"}]
       10 GETTABLEKS                       R9 R6 K2 ["threadId"]
       12 SETTABLEKS                       R9 R8 K2 ["threadId"]
       14 GETTABLEKS                       R9 R6 K3 ["messageId"]
       16 SETTABLEKS                       R9 R8 K3 ["messageId"]
       18 GETUPVAL                         R9 1
       19 SETTABLEKS                       R9 R8 K4 ["contentId"]
       21 SETTABLEKS                       R0 R8 K5 ["transformFn"]
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R9 R1 K6 ["skipIfNoMessage"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 SETTABLEKS                       R9 R8 K6 ["skipIfNoMessage"]
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 ; [-26]
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K4 [{"editContent"}]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R2 K3 ["editContent"]
       15 RETURN                           R2 1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["addMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["addMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["addTextContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addTextContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["addTextContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["addToolContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["addToolContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["addToolContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["editContent"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["editContent hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["editContent"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getContentObserver"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getContentObserver hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["getContentObserver"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getOrAddMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getOrAddMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["getOrAddMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getThread"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getThread hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["getThread"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["sendMessage"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["sendMessage hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["sendMessage"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 CALL                             R4 0 1
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 DUPTABLE                         R1 K4 [{"editContent"}]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R3 R1 K3 ["editContent"]
       16 RETURN                           R1 1

PROTO_14:
        0 LOADNIL                          R0
        1 DUPTABLE                         R1 K9 [{"addMessage", "addTextContent", "addToolContent", "editContent", "getContentObserver", "getOrAddMessage", "getThread", "sendMessage", "getContentHooks"}]
        2 DUPCLOSURE                       R2 K10 [PROTO_5]
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["addMessage"]
        6 DUPCLOSURE                       R2 K11 [PROTO_6]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R2 R1 K1 ["addTextContent"]
       10 DUPCLOSURE                       R2 K12 [PROTO_7]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R2 R1 K2 ["addToolContent"]
       14 DUPCLOSURE                       R2 K13 [PROTO_8]
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R2 R1 K3 ["editContent"]
       18 DUPCLOSURE                       R2 K14 [PROTO_9]
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R2 R1 K4 ["getContentObserver"]
       22 DUPCLOSURE                       R2 K15 [PROTO_10]
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R2 R1 K5 ["getOrAddMessage"]
       26 DUPCLOSURE                       R2 K16 [PROTO_11]
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R2 R1 K6 ["getThread"]
       30 DUPCLOSURE                       R2 K17 [PROTO_12]
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R2 R1 K7 ["sendMessage"]
       34 NEWCLOSURE                       R2 P8
       35 CAPTURE                          REF R0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 SETTABLEKS                       R2 R1 K8 ["getContentHooks"]
       40 MOVE                             R0 R1
       41 CLOSEUPVALS                      R0
       42 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K15 ["TextContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["getToggleGenerationInputFunc"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K19 ["useAddContent"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K20 ["useAddMessage"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K21 ["useEditContent"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useGetContentObserver"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K18 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useGetOrAddMessage"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K18 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K24 ["useGetThread"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K18 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K25 ["useSendMessage"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K26 ["Flags"]
      111 GETTABLEKS                       R16 R16 K27 ["FFlagAssistantMultipleChatPersistence"]
      113 CALL                             R15 1 1
      114 DUPTABLE                         R16 K37 [{"addMessage", "addTextContent", "addToolContent", "editContent", "getContentObserver", "getOrAddMessage", "getThread", "sendMessage", "getContentHooks"}]
      115 LOADNIL                          R17
      116 SETTABLEKS                       R17 R16 K28 ["addMessage"]
      118 LOADNIL                          R17
      119 SETTABLEKS                       R17 R16 K29 ["addTextContent"]
      121 LOADNIL                          R17
      122 SETTABLEKS                       R17 R16 K30 ["addToolContent"]
      124 LOADNIL                          R17
      125 SETTABLEKS                       R17 R16 K31 ["editContent"]
      127 LOADNIL                          R17
      128 SETTABLEKS                       R17 R16 K32 ["getContentObserver"]
      130 LOADNIL                          R17
      131 SETTABLEKS                       R17 R16 K33 ["getOrAddMessage"]
      133 LOADNIL                          R17
      134 SETTABLEKS                       R17 R16 K34 ["getThread"]
      136 LOADNIL                          R17
      137 SETTABLEKS                       R17 R16 K35 ["sendMessage"]
      139 LOADNIL                          R17
      140 SETTABLEKS                       R17 R16 K36 ["getContentHooks"]
      142 DUPCLOSURE                       R17 K38 [PROTO_2]
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R7
      156 DUPCLOSURE                       R18 K39 [PROTO_4]
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R1
      159 DUPCLOSURE                       R19 K40 [PROTO_14]
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R1
      163 DUPTABLE                         R20 K43 [{"use", "get"}]
      164 SETTABLEKS                       R17 R20 K41 ["use"]
      166 SETTABLEKS                       R19 R20 K42 ["get"]
      168 RETURN                           R20 1
