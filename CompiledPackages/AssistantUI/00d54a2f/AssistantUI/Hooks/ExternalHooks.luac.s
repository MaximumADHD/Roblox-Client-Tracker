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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["editContent"]
        3 DUPTABLE                         R2 K5 [{"threadId", "messageId", "contentId", "transformFn"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["threadId"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["messageId"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K3 ["contentId"]
       13 SETTABLEKS                       R0 R2 K4 ["transformFn"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["getContentMetadata"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R5 R2 K4 ["type"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K5 ["Content"]
       18 JUMPIFEQ                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 LOADK                            R6 K6 ["Content metadata type mismatch (expected %*, got %*)"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R8 R9 K5 ["Content"]
       26 GETTABLEKS                       R9 R2 K4 ["type"]
       28 NAMECALL                         R6 R6 K7 ["format"]
       30 CALL                             R6 3 1
       31 MOVE                             R5 R6
       32 FASTCALL2                        ASSERT R4 R5 ; [+3]
       34 GETIMPORT                        R3 K2 [assert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R2 K8 ["threadId"]
       39 GETTABLEKS                       R4 R2 K9 ["messageId"]
       41 DUPTABLE                         R5 K11 [{"editContent"}]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K10 ["editContent"]
       49 RETURN                           R5 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["getContentObserver"]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["getContentObserver hook not initialized"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["getContentObserver"]
       13 GETVARARGS                       R1 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

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
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          REF R0
       37 SETTABLEKS                       R2 R1 K8 ["getContentHooks"]
       39 MOVE                             R0 R1
       40 CLOSEUPVALS                      R0
       41 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K12 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Components"]
       41 GETTABLEKS                       R7 R8 K14 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R7 K15 ["TextContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["getToggleGenerationInputFunc"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K19 ["useAddContent"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K20 ["useAddMessage"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K21 ["useEditContent"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K18 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K22 ["useGetContentObserver"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K18 ["Hooks"]
       90 GETTABLEKS                       R13 R14 K23 ["useGetOrAddMessage"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K18 ["Hooks"]
       97 GETTABLEKS                       R14 R15 K24 ["useGetThread"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K18 ["Hooks"]
      104 GETTABLEKS                       R15 R16 K25 ["useSendMessage"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K26 ["Flags"]
      111 GETTABLEKS                       R16 R17 K27 ["FFlagAssistantPersistConversations"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R1 K28 ["METADATA_TYPES"]
      116 DUPTABLE                         R17 K38 [{"addMessage", "addTextContent", "addToolContent", "editContent", "getContentObserver", "getOrAddMessage", "getThread", "sendMessage", "getContentHooks"}]
      117 LOADNIL                          R18
      118 SETTABLEKS                       R18 R17 K29 ["addMessage"]
      120 LOADNIL                          R18
      121 SETTABLEKS                       R18 R17 K30 ["addTextContent"]
      123 LOADNIL                          R18
      124 SETTABLEKS                       R18 R17 K31 ["addToolContent"]
      126 LOADNIL                          R18
      127 SETTABLEKS                       R18 R17 K32 ["editContent"]
      129 LOADNIL                          R18
      130 SETTABLEKS                       R18 R17 K33 ["getContentObserver"]
      132 LOADNIL                          R18
      133 SETTABLEKS                       R18 R17 K34 ["getOrAddMessage"]
      135 LOADNIL                          R18
      136 SETTABLEKS                       R18 R17 K35 ["getThread"]
      138 LOADNIL                          R18
      139 SETTABLEKS                       R18 R17 K36 ["sendMessage"]
      141 LOADNIL                          R18
      142 SETTABLEKS                       R18 R17 K37 ["getContentHooks"]
      144 DUPCLOSURE                       R18 K39 [PROTO_2]
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R7
      158 DUPCLOSURE                       R19 K40 [PROTO_4]
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R16
      162 DUPCLOSURE                       R20 K41 [PROTO_14]
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R19
      165 DUPTABLE                         R21 K44 [{"use", "get"}]
      166 SETTABLEKS                       R18 R21 K42 ["use"]
      168 SETTABLEKS                       R20 R21 K43 ["get"]
      170 RETURN                           R21 1
