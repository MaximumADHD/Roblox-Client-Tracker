PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["StandardizedFields"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R5
       12 GETIMPORT                        R6 K3 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-8]
       17 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R2 K0 ["StudioAssistant%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["Backends"]
        5 GETTABLEKS                       R3 R4 K1 ["EventIngest"]
        7 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["Backends"]
       16 GETTABLEKS                       R3 R4 K5 ["Points"]
       18 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K4 [table.insert]
       23 CALL                             R1 2 0
       24 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       13 LOADK                            R3 K3 ["Message ID not found in map"]
       14 GETIMPORT                        R1 K2 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R2 1
       18 GETTABLE                         R1 R2 R0
       19 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["createMessageGuid should not be called when FFlagAssistantMultipleChatPersistence is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R0
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       14 LOADK                            R3 K3 ["Message ID already exists in map"]
       15 GETIMPORT                        R1 K2 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 2
       19 LOADB                            R3 0
       20 NAMECALL                         R1 R1 K4 ["GenerateGUID"]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 1
       24 SETTABLE                         R1 R2 R0
       25 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"timestampMilliseconds"}]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K3 ["getTimestampMilliseconds"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K1 ["timestampMilliseconds"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R0 R2
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 GETTABLEKS                       R1 R0 K1 ["generatedExperimentVariantDistributionVariable"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+3]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K3 [tostring]
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"experimentationGroup"}]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R5 R5 K3 ["get"]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADNIL                          R4
       12 JUMP                             ; [+16]
       13 GETUPVAL                         R7 2
       14 GETTABLE                         R6 R5 R7
       15 JUMPIFNOTEQKNIL                  R6 ; [+3]
       17 GETTABLEKS                       R6 R5 K4 ["generatedExperimentVariantDistributionVariable"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+3]
       21 LOADNIL                          R4
       22 JUMP                             ; [+6]
       23 FASTCALL1                        TOSTRING R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K6 [tostring]
       27 CALL                             R7 1 1
       28 MOVE                             R4 R7
       29 SETTABLEKS                       R4 R3 K1 ["experimentationGroup"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R1 K17 [{"requestId", "conversationId", "threadId", "message", "attachments", "assistantMode", "role"}]
       45 GETTABLEKS                       R2 R0 K18 ["messageGuid"]
       47 SETTABLEKS                       R2 R1 K10 ["requestId"]
       49 GETTABLEKS                       R2 R0 K19 ["sessionId"]
       51 SETTABLEKS                       R2 R1 K11 ["conversationId"]
       53 GETUPVAL                         R3 5
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+3]
       56 GETTABLEKS                       R2 R0 K12 ["threadId"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R2
       60 SETTABLEKS                       R2 R1 K12 ["threadId"]
       62 GETTABLEKS                       R2 R0 K13 ["message"]
       64 SETTABLEKS                       R2 R1 K13 ["message"]
       66 GETTABLEKS                       R2 R0 K14 ["attachments"]
       68 SETTABLEKS                       R2 R1 K14 ["attachments"]
       70 GETTABLEKS                       R2 R0 K15 ["assistantMode"]
       72 SETTABLEKS                       R2 R1 K15 ["assistantMode"]
       74 LOADK                            R2 K20 ["MCPUser"]
       75 SETTABLEKS                       R2 R1 K16 ["role"]
       77 GETTABLEKS                       R2 R0 K21 ["model"]
       79 SETTABLEKS                       R2 R1 K21 ["model"]
       81 GETUPVAL                         R3 2
       82 GETTABLEKS                       R2 R3 K22 ["assign"]
       84 MOVE                             R3 R1
       85 DUPTABLE                         R4 K24 [{"timestampMilliseconds"}]
       86 GETUPVAL                         R6 6
       87 GETTABLEKS                       R5 R6 K25 ["getTimestampMilliseconds"]
       89 CALL                             R5 0 1
       90 SETTABLEKS                       R5 R4 K23 ["timestampMilliseconds"]
       92 CALL                             R2 2 1
       93 GETUPVAL                         R4 0
       94 GETTABLEKS                       R3 R4 K26 ["logEvent"]
       96 GETUPVAL                         R4 7
       97 DUPTABLE                         R5 K28 [{"customFields", "standardizedFields"}]
       98 SETTABLEKS                       R2 R5 K1 ["customFields"]
      100 NEWTABLE                         R7 0 0
      102 GETUPVAL                         R11 8
      103 GETTABLEKS                       R8 R11 K29 ["StandardizedFields"]
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      110 MOVE                             R14 R7
      111 MOVE                             R15 R12
      112 GETIMPORT                        R13 K32 [table.insert]
      114 CALL                             R13 2 0
      115 FORGLOOP                         R8 2 ; [-8]
      117 MOVE                             R6 R7
      118 SETTABLEKS                       R6 R5 K27 ["standardizedFields"]
      120 CALL                             R3 2 0
      121 GETUPVAL                         R3 9
      122 JUMPIFNOT                        R3 ; [+10]
      123 GETUPVAL                         R3 9
      124 LOADK                            R5 K33 ["user_message_sent"]
      125 DUPTABLE                         R6 K34 [{"requestId"}]
      126 GETTABLEKS                       R7 R0 K18 ["messageGuid"]
      128 SETTABLEKS                       R7 R6 K10 ["requestId"]
      130 NAMECALL                         R3 R3 K35 ["LogEventAsync"]
      132 CALL                             R3 3 0
      133 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K5 [{"requestId", "conversationId", "threadId", "message", "role"}]
        1 GETTABLEKS                       R3 R0 K6 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K7 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R3 R0 K2 ["threadId"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K2 ["threadId"]
       18 GETTABLEKS                       R3 R0 K3 ["message"]
       20 SETTABLEKS                       R3 R2 K3 ["message"]
       22 LOADK                            R3 K8 ["MCPAssistant"]
       23 SETTABLEKS                       R3 R2 K4 ["role"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K9 ["assign"]
       28 MOVE                             R4 R2
       29 DUPTABLE                         R5 K11 [{"timestampMilliseconds"}]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K12 ["getTimestampMilliseconds"]
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K10 ["timestampMilliseconds"]
       36 CALL                             R3 2 1
       37 MOVE                             R1 R3
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R2 R3 K13 ["logEvent"]
       41 GETUPVAL                         R3 4
       42 DUPTABLE                         R4 K16 [{"customFields", "standardizedFields"}]
       43 SETTABLEKS                       R1 R4 K14 ["customFields"]
       45 NEWTABLE                         R6 0 0
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R7 R10 K17 ["StandardizedFields"]
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 FORGPREP                         R7
       53 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       55 MOVE                             R13 R6
       56 MOVE                             R14 R11
       57 GETIMPORT                        R12 K20 [table.insert]
       59 CALL                             R12 2 0
       60 FORGLOOP                         R7 2 ; [-8]
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K15 ["standardizedFields"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"provider"}]
        1 SETTABLEKS                       R0 R2 K0 ["provider"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["assign"]
        6 MOVE                             R4 R2
        7 DUPTABLE                         R5 K4 [{"timestampMilliseconds"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K5 ["getTimestampMilliseconds"]
       11 CALL                             R6 0 1
       12 SETTABLEKS                       R6 R5 K3 ["timestampMilliseconds"]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K6 ["logEvent"]
       19 GETUPVAL                         R3 3
       20 DUPTABLE                         R4 K9 [{"customFields", "standardizedFields"}]
       21 SETTABLEKS                       R1 R4 K7 ["customFields"]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R7 R10 K10 ["StandardizedFields"]
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       33 MOVE                             R13 R6
       34 MOVE                             R14 R11
       35 GETIMPORT                        R12 K13 [table.insert]
       37 CALL                             R12 2 0
       38 FORGLOOP                         R7 2 ; [-8]
       40 MOVE                             R5 R6
       41 SETTABLEKS                       R5 R4 K8 ["standardizedFields"]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"errorType"}]
        7 SETTABLEKS                       R0 R6 K3 ["errorType"]
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K5 ["join"]
       12 MOVE                             R8 R6
       13 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       14 GETUPVAL                         R11 3
       15 NAMECALL                         R11 R11 K8 ["get"]
       17 CALL                             R11 1 1
       18 JUMPIFNOTEQKNIL                  R11 ; [+3]
       20 LOADNIL                          R10
       21 JUMP                             ; [+16]
       22 GETUPVAL                         R13 4
       23 GETTABLE                         R12 R11 R13
       24 JUMPIFNOTEQKNIL                  R12 ; [+3]
       26 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       28 JUMPIFNOTEQKNIL                  R12 ; [+3]
       30 LOADNIL                          R10
       31 JUMP                             ; [+6]
       32 FASTCALL1                        TOSTRING R12 ; [+3]
       33 MOVE                             R14 R12
       34 GETIMPORT                        R13 K11 [tostring]
       36 CALL                             R13 1 1
       37 MOVE                             R10 R13
       38 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       40 CALL                             R7 2 1
       41 MOVE                             R5 R7
       42 SETTABLEKS                       R5 R4 K1 ["customFields"]
       44 CALL                             R1 3 0
       45 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R2 K14 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       45 GETTABLEKS                       R3 R0 K15 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K16 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETTABLEKS                       R3 R0 K12 ["feedbackCategory"]
       55 SETTABLEKS                       R3 R2 K12 ["feedbackCategory"]
       57 GETTABLEKS                       R3 R0 K13 ["feedbackMessage"]
       59 SETTABLEKS                       R3 R2 K13 ["feedbackMessage"]
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K17 ["assign"]
       64 MOVE                             R4 R2
       65 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R6 R7 K20 ["getTimestampMilliseconds"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
       72 CALL                             R3 2 1
       73 MOVE                             R1 R3
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K21 ["logEvent"]
       77 GETUPVAL                         R3 6
       78 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
       79 SETTABLEKS                       R1 R4 K1 ["customFields"]
       81 NEWTABLE                         R6 0 0
       83 GETUPVAL                         R10 7
       84 GETTABLEKS                       R7 R10 K24 ["StandardizedFields"]
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       91 MOVE                             R13 R6
       92 MOVE                             R14 R11
       93 GETIMPORT                        R12 K27 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-8]
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 8
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 8
      105 LOADK                            R4 K28 ["thumbs_up"]
      106 DUPTABLE                         R5 K29 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K15 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K30 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 DUPTABLE                         R2 K14 [{"requestId", "conversationId", "feedbackCategory", "feedbackMessage"}]
       45 GETTABLEKS                       R3 R0 K15 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K16 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETTABLEKS                       R3 R0 K12 ["feedbackCategory"]
       55 SETTABLEKS                       R3 R2 K12 ["feedbackCategory"]
       57 GETTABLEKS                       R3 R0 K13 ["feedbackMessage"]
       59 SETTABLEKS                       R3 R2 K13 ["feedbackMessage"]
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K17 ["assign"]
       64 MOVE                             R4 R2
       65 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R6 R7 K20 ["getTimestampMilliseconds"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
       72 CALL                             R3 2 1
       73 MOVE                             R1 R3
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K21 ["logEvent"]
       77 GETUPVAL                         R3 6
       78 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
       79 SETTABLEKS                       R1 R4 K1 ["customFields"]
       81 NEWTABLE                         R6 0 0
       83 GETUPVAL                         R10 7
       84 GETTABLEKS                       R7 R10 K24 ["StandardizedFields"]
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       91 MOVE                             R13 R6
       92 MOVE                             R14 R11
       93 GETIMPORT                        R12 K27 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-8]
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 8
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 8
      105 LOADK                            R4 K28 ["thumbs_down"]
      106 DUPTABLE                         R5 K29 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K15 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K30 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 NEWTABLE                         R6 0 0
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K3 ["join"]
       11 MOVE                             R8 R6
       12 DUPTABLE                         R9 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R11 3
       14 NAMECALL                         R11 R11 K6 ["get"]
       16 CALL                             R11 1 1
       17 JUMPIFNOTEQKNIL                  R11 ; [+3]
       19 LOADNIL                          R10
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R13 4
       22 GETTABLE                         R12 R11 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+3]
       25 GETTABLEKS                       R12 R11 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 LOADNIL                          R10
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R12 ; [+3]
       32 MOVE                             R14 R12
       33 GETIMPORT                        R13 K9 [tostring]
       35 CALL                             R13 1 1
       36 MOVE                             R10 R13
       37 SETTABLEKS                       R10 R9 K4 ["experimentationGroup"]
       39 CALL                             R7 2 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K1 ["customFields"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K4 [{"markdown"}]
        6 SETTABLEKS                       R0 R4 K3 ["markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["customFields"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R2 K2 [{"requestId", "conversationId"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K4 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K8 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K9 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K10 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R7 R10 K13 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K16 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 GETUPVAL                         R2 5
       51 JUMPIFNOT                        R2 ; [+10]
       52 GETUPVAL                         R2 5
       53 LOADK                            R4 K17 ["retry"]
       54 DUPTABLE                         R5 K18 [{"requestId"}]
       55 GETTABLEKS                       R6 R0 K3 ["messageGuid"]
       57 SETTABLEKS                       R6 R5 K0 ["requestId"]
       59 NAMECALL                         R2 R2 K19 ["LogEventAsync"]
       61 CALL                             R2 3 0
       62 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R2 K2 [{"requestId", "conversationId"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K4 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K8 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K9 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K10 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R7 R10 K13 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K16 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R2 K8 [{"requestId", "conversationId", "toolName", "toolType", "serverName", "clientName", "isThirdPartyRequest", "args"}]
        1 GETTABLEKS                       R3 R0 K9 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K10 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["toolName"]
       11 SETTABLEKS                       R3 R2 K2 ["toolName"]
       13 GETTABLEKS                       R3 R0 K2 ["toolName"]
       15 SETTABLEKS                       R3 R2 K3 ["toolType"]
       17 GETTABLEKS                       R3 R0 K4 ["serverName"]
       19 SETTABLEKS                       R3 R2 K4 ["serverName"]
       21 GETTABLEKS                       R3 R0 K5 ["clientName"]
       23 SETTABLEKS                       R3 R2 K5 ["clientName"]
       25 GETTABLEKS                       R3 R0 K6 ["isThirdPartyRequest"]
       27 SETTABLEKS                       R3 R2 K6 ["isThirdPartyRequest"]
       29 GETTABLEKS                       R3 R0 K7 ["args"]
       31 SETTABLEKS                       R3 R2 K7 ["args"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K11 ["assign"]
       36 MOVE                             R4 R2
       37 DUPTABLE                         R5 K13 [{"timestampMilliseconds"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K14 ["getTimestampMilliseconds"]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K12 ["timestampMilliseconds"]
       44 CALL                             R3 2 1
       45 MOVE                             R1 R3
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K15 ["logEvent"]
       49 GETUPVAL                         R3 3
       50 DUPTABLE                         R4 K18 [{"customFields", "standardizedFields"}]
       51 SETTABLEKS                       R1 R4 K16 ["customFields"]
       53 NEWTABLE                         R6 0 0
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R7 R10 K19 ["StandardizedFields"]
       58 LOADNIL                          R8
       59 LOADNIL                          R9
       60 FORGPREP                         R7
       61 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       63 MOVE                             R13 R6
       64 MOVE                             R14 R11
       65 GETIMPORT                        R12 K22 [table.insert]
       67 CALL                             R12 2 0
       68 FORGLOOP                         R7 2 ; [-8]
       70 MOVE                             R5 R6
       71 SETTABLEKS                       R5 R4 K17 ["standardizedFields"]
       73 CALL                             R2 2 0
       74 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R2 K12 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest", "args"}]
        1 GETTABLEKS                       R3 R0 K13 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["toolId"]
        7 SETTABLEKS                       R3 R2 K1 ["toolId"]
        9 GETTABLEKS                       R3 R0 K2 ["toolName"]
       11 SETTABLEKS                       R3 R2 K2 ["toolName"]
       13 GETTABLEKS                       R3 R0 K2 ["toolName"]
       15 SETTABLEKS                       R3 R2 K3 ["toolType"]
       17 GETTABLEKS                       R3 R0 K4 ["isError"]
       19 SETTABLEKS                       R3 R2 K4 ["isError"]
       21 GETTABLEKS                       R3 R0 K5 ["startTime"]
       23 SETTABLEKS                       R3 R2 K5 ["startTime"]
       25 GETTABLEKS                       R3 R0 K6 ["startTimeAfterConfirmation"]
       27 SETTABLEKS                       R3 R2 K6 ["startTimeAfterConfirmation"]
       29 GETTABLEKS                       R3 R0 K7 ["endTime"]
       31 SETTABLEKS                       R3 R2 K7 ["endTime"]
       33 GETTABLEKS                       R3 R0 K8 ["serverName"]
       35 SETTABLEKS                       R3 R2 K8 ["serverName"]
       37 GETTABLEKS                       R3 R0 K9 ["clientName"]
       39 SETTABLEKS                       R3 R2 K9 ["clientName"]
       41 GETTABLEKS                       R3 R0 K10 ["isThirdPartyRequest"]
       43 SETTABLEKS                       R3 R2 K10 ["isThirdPartyRequest"]
       45 GETTABLEKS                       R3 R0 K11 ["args"]
       47 SETTABLEKS                       R3 R2 K11 ["args"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R3 R4 K14 ["assign"]
       52 MOVE                             R4 R2
       53 DUPTABLE                         R5 K16 [{"timestampMilliseconds"}]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K17 ["getTimestampMilliseconds"]
       57 CALL                             R6 0 1
       58 SETTABLEKS                       R6 R5 K15 ["timestampMilliseconds"]
       60 CALL                             R3 2 1
       61 MOVE                             R1 R3
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R2 R3 K18 ["logEvent"]
       65 GETUPVAL                         R3 3
       66 DUPTABLE                         R4 K21 [{"customFields", "standardizedFields"}]
       67 SETTABLEKS                       R1 R4 K19 ["customFields"]
       69 NEWTABLE                         R6 0 0
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R7 R10 K22 ["StandardizedFields"]
       74 LOADNIL                          R8
       75 LOADNIL                          R9
       76 FORGPREP                         R7
       77 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       79 MOVE                             R13 R6
       80 MOVE                             R14 R11
       81 GETIMPORT                        R12 K25 [table.insert]
       83 CALL                             R12 2 0
       84 FORGLOOP                         R7 2 ; [-8]
       86 MOVE                             R5 R6
       87 SETTABLEKS                       R5 R4 K20 ["standardizedFields"]
       89 CALL                             R2 2 0
       90 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R2 K4 [{"requestId", "toolName", "warningMessage", "serverName"}]
        1 GETTABLEKS                       R3 R0 K5 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["toolName"]
        7 SETTABLEKS                       R3 R2 K1 ["toolName"]
        9 GETTABLEKS                       R3 R0 K2 ["warningMessage"]
       11 SETTABLEKS                       R3 R2 K2 ["warningMessage"]
       13 GETTABLEKS                       R3 R0 K3 ["serverName"]
       15 SETTABLEKS                       R3 R2 K3 ["serverName"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K6 ["assign"]
       20 MOVE                             R4 R2
       21 DUPTABLE                         R5 K8 [{"timestampMilliseconds"}]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K9 ["getTimestampMilliseconds"]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R5 K7 ["timestampMilliseconds"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K10 ["logEvent"]
       33 GETUPVAL                         R3 3
       34 DUPTABLE                         R4 K13 [{"customFields", "standardizedFields"}]
       35 SETTABLEKS                       R1 R4 K11 ["customFields"]
       37 NEWTABLE                         R6 0 0
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R7 R10 K14 ["StandardizedFields"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       47 MOVE                             R13 R6
       48 MOVE                             R14 R11
       49 GETIMPORT                        R12 K17 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-8]
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K12 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R2 K2 [{"requestId", "result"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["result"]
        7 SETTABLEKS                       R3 R2 K1 ["result"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K6 [{"timestampMilliseconds"}]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K7 ["getTimestampMilliseconds"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K5 ["timestampMilliseconds"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K8 ["logEvent"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K11 [{"customFields", "standardizedFields"}]
       27 SETTABLEKS                       R1 R4 K9 ["customFields"]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R7 R10 K12 ["StandardizedFields"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K15 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K10 ["standardizedFields"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
        6 DUPTABLE                         R4 K3 [{"customFields"}]
        7 DUPTABLE                         R6 K5 [{"requestId"}]
        8 GETTABLEKS                       R7 R0 K6 ["requestEndReason"]
       10 SETTABLEKS                       R7 R6 K4 ["requestId"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K7 ["join"]
       15 MOVE                             R8 R6
       16 DUPTABLE                         R9 K9 [{"experimentationGroup"}]
       17 GETUPVAL                         R11 3
       18 NAMECALL                         R11 R11 K10 ["get"]
       20 CALL                             R11 1 1
       21 JUMPIFNOTEQKNIL                  R11 ; [+3]
       23 LOADNIL                          R10
       24 JUMP                             ; [+16]
       25 GETUPVAL                         R13 4
       26 GETTABLE                         R12 R11 R13
       27 JUMPIFNOTEQKNIL                  R12 ; [+3]
       29 GETTABLEKS                       R12 R11 K11 ["generatedExperimentVariantDistributionVariable"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+3]
       33 LOADNIL                          R10
       34 JUMP                             ; [+6]
       35 FASTCALL1                        TOSTRING R12 ; [+3]
       36 MOVE                             R14 R12
       37 GETIMPORT                        R13 K13 [tostring]
       39 CALL                             R13 1 1
       40 MOVE                             R10 R13
       41 SETTABLEKS                       R10 R9 K8 ["experimentationGroup"]
       43 CALL                             R7 2 1
       44 MOVE                             R5 R7
       45 SETTABLEKS                       R5 R4 K2 ["customFields"]
       47 CALL                             R1 3 0
       48 DUPTABLE                         R2 K16 [{"requestId", "conversationId", "requestEndReason", "requestJourneyDuration", "message", "experimentationGroup"}]
       49 GETTABLEKS                       R3 R0 K17 ["messageGuid"]
       51 SETTABLEKS                       R3 R2 K4 ["requestId"]
       53 GETTABLEKS                       R3 R0 K18 ["sessionId"]
       55 SETTABLEKS                       R3 R2 K14 ["conversationId"]
       57 GETTABLEKS                       R3 R0 K6 ["requestEndReason"]
       59 SETTABLEKS                       R3 R2 K6 ["requestEndReason"]
       61 GETTABLEKS                       R3 R0 K1 ["requestJourneyDuration"]
       63 SETTABLEKS                       R3 R2 K1 ["requestJourneyDuration"]
       65 GETTABLEKS                       R3 R0 K15 ["message"]
       67 SETTABLEKS                       R3 R2 K15 ["message"]
       69 GETUPVAL                         R4 3
       70 NAMECALL                         R4 R4 K10 ["get"]
       72 CALL                             R4 1 1
       73 JUMPIFNOTEQKNIL                  R4 ; [+3]
       75 LOADNIL                          R3
       76 JUMP                             ; [+16]
       77 GETUPVAL                         R6 4
       78 GETTABLE                         R5 R4 R6
       79 JUMPIFNOTEQKNIL                  R5 ; [+3]
       81 GETTABLEKS                       R5 R4 K11 ["generatedExperimentVariantDistributionVariable"]
       83 JUMPIFNOTEQKNIL                  R5 ; [+3]
       85 LOADNIL                          R3
       86 JUMP                             ; [+6]
       87 FASTCALL1                        TOSTRING R5 ; [+3]
       88 MOVE                             R7 R5
       89 GETIMPORT                        R6 K13 [tostring]
       91 CALL                             R6 1 1
       92 MOVE                             R3 R6
       93 SETTABLEKS                       R3 R2 K8 ["experimentationGroup"]
       95 GETUPVAL                         R4 2
       96 GETTABLEKS                       R3 R4 K19 ["assign"]
       98 MOVE                             R4 R2
       99 DUPTABLE                         R5 K21 [{"timestampMilliseconds"}]
      100 GETUPVAL                         R7 5
      101 GETTABLEKS                       R6 R7 K22 ["getTimestampMilliseconds"]
      103 CALL                             R6 0 1
      104 SETTABLEKS                       R6 R5 K20 ["timestampMilliseconds"]
      106 CALL                             R3 2 1
      107 MOVE                             R1 R3
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R2 R3 K23 ["logEvent"]
      111 GETUPVAL                         R3 6
      112 DUPTABLE                         R4 K25 [{"customFields", "standardizedFields"}]
      113 SETTABLEKS                       R1 R4 K2 ["customFields"]
      115 NEWTABLE                         R6 0 0
      117 GETUPVAL                         R10 7
      118 GETTABLEKS                       R7 R10 K26 ["StandardizedFields"]
      120 LOADNIL                          R8
      121 LOADNIL                          R9
      122 FORGPREP                         R7
      123 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      125 MOVE                             R13 R6
      126 MOVE                             R14 R11
      127 GETIMPORT                        R12 K29 [table.insert]
      129 CALL                             R12 2 0
      130 FORGLOOP                         R7 2 ; [-8]
      132 MOVE                             R5 R6
      133 SETTABLEKS                       R5 R4 K24 ["standardizedFields"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R2 K3 [{"requestId", "model", "statusCode"}]
        1 GETTABLEKS                       R3 R0 K4 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["model"]
        7 SETTABLEKS                       R3 R2 K1 ["model"]
        9 GETTABLEKS                       R3 R0 K2 ["statusCode"]
       11 SETTABLEKS                       R3 R2 K2 ["statusCode"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K5 ["assign"]
       16 MOVE                             R4 R2
       17 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K8 ["getTimestampMilliseconds"]
       21 CALL                             R6 0 1
       22 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       24 CALL                             R3 2 1
       25 MOVE                             R1 R3
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R2 R3 K9 ["logEvent"]
       29 GETUPVAL                         R3 3
       30 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       31 SETTABLEKS                       R1 R4 K10 ["customFields"]
       33 NEWTABLE                         R6 0 0
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R7 R10 K13 ["StandardizedFields"]
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       43 MOVE                             R13 R6
       44 MOVE                             R14 R11
       45 GETIMPORT                        R12 K16 [table.insert]
       47 CALL                             R12 2 0
       48 FORGLOOP                         R7 2 ; [-8]
       50 MOVE                             R5 R6
       51 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 DUPTABLE                         R3 K2 [{"customFields"}]
        6 NEWTABLE                         R5 0 0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K3 ["join"]
       11 MOVE                             R7 R5
       12 DUPTABLE                         R8 K5 [{"experimentationGroup"}]
       13 GETUPVAL                         R10 3
       14 NAMECALL                         R10 R10 K6 ["get"]
       16 CALL                             R10 1 1
       17 JUMPIFNOTEQKNIL                  R10 ; [+3]
       19 LOADNIL                          R9
       20 JUMP                             ; [+16]
       21 GETUPVAL                         R12 4
       22 GETTABLE                         R11 R10 R12
       23 JUMPIFNOTEQKNIL                  R11 ; [+3]
       25 GETTABLEKS                       R11 R10 K7 ["generatedExperimentVariantDistributionVariable"]
       27 JUMPIFNOTEQKNIL                  R11 ; [+3]
       29 LOADNIL                          R9
       30 JUMP                             ; [+6]
       31 FASTCALL1                        TOSTRING R11 ; [+3]
       32 MOVE                             R13 R11
       33 GETIMPORT                        R12 K9 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R9 R12
       37 SETTABLEKS                       R9 R8 K4 ["experimentationGroup"]
       39 CALL                             R6 2 1
       40 MOVE                             R4 R6
       41 SETTABLEKS                       R4 R3 K1 ["customFields"]
       43 CALL                             R0 3 0
       44 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K15 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETTABLEKS                       R3 R0 K14 ["prompt"]
      111 SETTABLEKS                       R3 R2 K14 ["prompt"]
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R3 R4 K16 ["assign"]
      116 MOVE                             R4 R2
      117 DUPTABLE                         R5 K18 [{"timestampMilliseconds"}]
      118 GETUPVAL                         R7 6
      119 GETTABLEKS                       R6 R7 K19 ["getTimestampMilliseconds"]
      121 CALL                             R6 0 1
      122 SETTABLEKS                       R6 R5 K17 ["timestampMilliseconds"]
      124 CALL                             R3 2 1
      125 MOVE                             R1 R3
      126 GETUPVAL                         R3 0
      127 GETTABLEKS                       R2 R3 K20 ["logEvent"]
      129 GETUPVAL                         R3 7
      130 DUPTABLE                         R4 K22 [{"customFields", "standardizedFields"}]
      131 SETTABLEKS                       R1 R4 K2 ["customFields"]
      133 NEWTABLE                         R6 0 0
      135 GETUPVAL                         R10 8
      136 GETTABLEKS                       R7 R10 K23 ["StandardizedFields"]
      138 LOADNIL                          R8
      139 LOADNIL                          R9
      140 FORGPREP                         R7
      141 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      143 MOVE                             R13 R6
      144 MOVE                             R14 R11
      145 GETIMPORT                        R12 K26 [table.insert]
      147 CALL                             R12 2 0
      148 FORGLOOP                         R7 2 ; [-8]
      150 MOVE                             R5 R6
      151 SETTABLEKS                       R5 R4 K21 ["standardizedFields"]
      153 CALL                             R2 2 0
      154 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K16 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETTABLEKS                       R3 R0 K14 ["meshId"]
      111 SETTABLEKS                       R3 R2 K14 ["meshId"]
      113 GETTABLEKS                       R3 R0 K15 ["imageId"]
      115 SETTABLEKS                       R3 R2 K15 ["imageId"]
      117 GETUPVAL                         R4 2
      118 GETTABLEKS                       R3 R4 K17 ["assign"]
      120 MOVE                             R4 R2
      121 DUPTABLE                         R5 K19 [{"timestampMilliseconds"}]
      122 GETUPVAL                         R7 6
      123 GETTABLEKS                       R6 R7 K20 ["getTimestampMilliseconds"]
      125 CALL                             R6 0 1
      126 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
      128 CALL                             R3 2 1
      129 MOVE                             R1 R3
      130 GETUPVAL                         R3 0
      131 GETTABLEKS                       R2 R3 K21 ["logEvent"]
      133 GETUPVAL                         R3 7
      134 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
      135 SETTABLEKS                       R1 R4 K2 ["customFields"]
      137 NEWTABLE                         R6 0 0
      139 GETUPVAL                         R10 8
      140 GETTABLEKS                       R7 R10 K24 ["StandardizedFields"]
      142 LOADNIL                          R8
      143 LOADNIL                          R9
      144 FORGPREP                         R7
      145 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      147 MOVE                             R13 R6
      148 MOVE                             R14 R11
      149 GETIMPORT                        R12 K27 [table.insert]
      151 CALL                             R12 2 0
      152 FORGLOOP                         R7 2 ; [-8]
      154 MOVE                             R5 R6
      155 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
      157 CALL                             R2 2 0
      158 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+45]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["logCounter"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 DUPTABLE                         R4 K3 [{"customFields"}]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K4 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K7 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K10 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K2 ["customFields"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+44]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K1 ["logCounter"]
       51 GETUPVAL                         R2 5
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K3 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K4 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K6 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 3
       62 NAMECALL                         R11 R11 K7 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 4
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K8 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K10 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K5 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K2 ["customFields"]
       91 CALL                             R1 3 0
       92 DUPTABLE                         R2 K14 [{"requestId", "generationId", "success", "errorMessage"}]
       93 GETTABLEKS                       R3 R0 K11 ["requestId"]
       95 SETTABLEKS                       R3 R2 K11 ["requestId"]
       97 GETTABLEKS                       R3 R0 K12 ["generationId"]
       99 SETTABLEKS                       R3 R2 K12 ["generationId"]
      101 GETTABLEKS                       R3 R0 K0 ["success"]
      103 SETTABLEKS                       R3 R2 K0 ["success"]
      105 GETTABLEKS                       R3 R0 K13 ["errorMessage"]
      107 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
      109 GETUPVAL                         R4 2
      110 GETTABLEKS                       R3 R4 K15 ["assign"]
      112 MOVE                             R4 R2
      113 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
      114 GETUPVAL                         R7 6
      115 GETTABLEKS                       R6 R7 K18 ["getTimestampMilliseconds"]
      117 CALL                             R6 0 1
      118 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
      120 CALL                             R3 2 1
      121 MOVE                             R1 R3
      122 GETUPVAL                         R3 0
      123 GETTABLEKS                       R2 R3 K19 ["logEvent"]
      125 GETUPVAL                         R3 7
      126 DUPTABLE                         R4 K21 [{"customFields", "standardizedFields"}]
      127 SETTABLEKS                       R1 R4 K2 ["customFields"]
      129 NEWTABLE                         R6 0 0
      131 GETUPVAL                         R10 8
      132 GETTABLEKS                       R7 R10 K22 ["StandardizedFields"]
      134 LOADNIL                          R8
      135 LOADNIL                          R9
      136 FORGPREP                         R7
      137 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      139 MOVE                             R13 R6
      140 MOVE                             R14 R11
      141 GETIMPORT                        R12 K25 [table.insert]
      143 CALL                             R12 2 0
      144 FORGLOOP                         R7 2 ; [-8]
      146 MOVE                             R5 R6
      147 SETTABLEKS                       R5 R4 K20 ["standardizedFields"]
      149 CALL                             R2 2 0
      150 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logCounter"]
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 1
        5 DUPTABLE                         R4 K2 [{"customFields"}]
        6 DUPTABLE                         R6 K4 [{"success"}]
        7 GETTABLEKS                       R7 R0 K3 ["success"]
        9 SETTABLEKS                       R7 R6 K3 ["success"]
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K5 ["join"]
       14 MOVE                             R8 R6
       15 DUPTABLE                         R9 K7 [{"experimentationGroup"}]
       16 GETUPVAL                         R11 3
       17 NAMECALL                         R11 R11 K8 ["get"]
       19 CALL                             R11 1 1
       20 JUMPIFNOTEQKNIL                  R11 ; [+3]
       22 LOADNIL                          R10
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R13 4
       25 GETTABLE                         R12 R11 R13
       26 JUMPIFNOTEQKNIL                  R12 ; [+3]
       28 GETTABLEKS                       R12 R11 K9 ["generatedExperimentVariantDistributionVariable"]
       30 JUMPIFNOTEQKNIL                  R12 ; [+3]
       32 LOADNIL                          R10
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K11 [tostring]
       38 CALL                             R13 1 1
       39 MOVE                             R10 R13
       40 SETTABLEKS                       R10 R9 K6 ["experimentationGroup"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 SETTABLEKS                       R5 R4 K1 ["customFields"]
       46 CALL                             R1 3 0
       47 DUPTABLE                         R2 K18 [{"requestId", "generationId", "success", "errorMessage", "prompt", "timeToFirstRender", "dependencyVersion"}]
       48 GETTABLEKS                       R3 R0 K12 ["requestId"]
       50 SETTABLEKS                       R3 R2 K12 ["requestId"]
       52 GETTABLEKS                       R3 R0 K13 ["generationId"]
       54 SETTABLEKS                       R3 R2 K13 ["generationId"]
       56 GETTABLEKS                       R3 R0 K3 ["success"]
       58 SETTABLEKS                       R3 R2 K3 ["success"]
       60 GETTABLEKS                       R3 R0 K14 ["errorMessage"]
       62 SETTABLEKS                       R3 R2 K14 ["errorMessage"]
       64 GETTABLEKS                       R3 R0 K15 ["prompt"]
       66 SETTABLEKS                       R3 R2 K15 ["prompt"]
       68 GETTABLEKS                       R3 R0 K16 ["timeToFirstRender"]
       70 SETTABLEKS                       R3 R2 K16 ["timeToFirstRender"]
       72 GETTABLEKS                       R3 R0 K17 ["dependencyVersion"]
       74 SETTABLEKS                       R3 R2 K17 ["dependencyVersion"]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R3 R4 K19 ["assign"]
       79 MOVE                             R4 R2
       80 DUPTABLE                         R5 K21 [{"timestampMilliseconds"}]
       81 GETUPVAL                         R7 5
       82 GETTABLEKS                       R6 R7 K22 ["getTimestampMilliseconds"]
       84 CALL                             R6 0 1
       85 SETTABLEKS                       R6 R5 K20 ["timestampMilliseconds"]
       87 CALL                             R3 2 1
       88 MOVE                             R1 R3
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R2 R3 K23 ["logEvent"]
       92 GETUPVAL                         R3 6
       93 DUPTABLE                         R4 K25 [{"customFields", "standardizedFields"}]
       94 SETTABLEKS                       R1 R4 K1 ["customFields"]
       96 NEWTABLE                         R6 0 0
       98 GETUPVAL                         R10 7
       99 GETTABLEKS                       R7 R10 K26 ["StandardizedFields"]
      101 LOADNIL                          R8
      102 LOADNIL                          R9
      103 FORGPREP                         R7
      104 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      106 MOVE                             R13 R6
      107 MOVE                             R14 R11
      108 GETIMPORT                        R12 K29 [table.insert]
      110 CALL                             R12 2 0
      111 FORGLOOP                         R7 2 ; [-8]
      113 MOVE                             R5 R6
      114 SETTABLEKS                       R5 R4 K24 ["standardizedFields"]
      116 CALL                             R2 2 0
      117 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K7 ["getTimestampMilliseconds"]
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["customFields"]
       19 NEWTABLE                         R5 0 0
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R6 R9 K8 ["StandardizedFields"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K11 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-8]
       36 MOVE                             R4 R5
       37 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K7 ["getTimestampMilliseconds"]
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["customFields"]
       19 NEWTABLE                         R5 0 0
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R6 R9 K8 ["StandardizedFields"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K11 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-8]
       36 MOVE                             R4 R5
       37 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K12 ["logCounter"]
       43 GETUPVAL                         R2 5
       44 LOADN                            R3 1
       45 DUPTABLE                         R4 K13 [{"customFields"}]
       46 NEWTABLE                         R6 0 0
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K14 ["join"]
       51 MOVE                             R8 R6
       52 DUPTABLE                         R9 K16 [{"experimentationGroup"}]
       53 GETUPVAL                         R11 6
       54 NAMECALL                         R11 R11 K17 ["get"]
       56 CALL                             R11 1 1
       57 JUMPIFNOTEQKNIL                  R11 ; [+3]
       59 LOADNIL                          R10
       60 JUMP                             ; [+16]
       61 GETUPVAL                         R13 7
       62 GETTABLE                         R12 R11 R13
       63 JUMPIFNOTEQKNIL                  R12 ; [+3]
       65 GETTABLEKS                       R12 R11 K18 ["generatedExperimentVariantDistributionVariable"]
       67 JUMPIFNOTEQKNIL                  R12 ; [+3]
       69 LOADNIL                          R10
       70 JUMP                             ; [+6]
       71 FASTCALL1                        TOSTRING R12 ; [+3]
       72 MOVE                             R14 R12
       73 GETIMPORT                        R13 K20 [tostring]
       75 CALL                             R13 1 1
       76 MOVE                             R10 R13
       77 SETTABLEKS                       R10 R9 K15 ["experimentationGroup"]
       79 CALL                             R7 2 1
       80 MOVE                             R5 R7
       81 SETTABLEKS                       R5 R4 K1 ["customFields"]
       83 CALL                             R1 3 0
       84 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logCounter"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K11 [{"conversationId", "threadId", "creationReason", "sourceThreadId", "rootThreadId", "titleAtCreate", "namingSource"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["creationReason"]
       16 SETTABLEKS                       R6 R5 K6 ["creationReason"]
       18 GETTABLEKS                       R6 R0 K7 ["sourceThreadId"]
       20 SETTABLEKS                       R6 R5 K7 ["sourceThreadId"]
       22 GETTABLEKS                       R6 R0 K8 ["rootThreadId"]
       24 SETTABLEKS                       R6 R5 K8 ["rootThreadId"]
       26 GETTABLEKS                       R6 R0 K9 ["titleAtCreate"]
       28 SETTABLEKS                       R6 R5 K9 ["titleAtCreate"]
       30 GETTABLEKS                       R6 R0 K10 ["namingSource"]
       32 SETTABLEKS                       R6 R5 K10 ["namingSource"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K12 ["assign"]
       37 MOVE                             R7 R5
       38 DUPTABLE                         R8 K14 [{"timestampMilliseconds"}]
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R9 R10 K15 ["getTimestampMilliseconds"]
       42 CALL                             R9 0 1
       43 SETTABLEKS                       R9 R8 K13 ["timestampMilliseconds"]
       45 CALL                             R6 2 1
       46 MOVE                             R4 R6
       47 SETTABLEKS                       R4 R3 K1 ["customFields"]
       49 NEWTABLE                         R5 0 0
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R6 R9 K16 ["StandardizedFields"]
       54 LOADNIL                          R7
       55 LOADNIL                          R8
       56 FORGPREP                         R6
       57 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       59 MOVE                             R12 R5
       60 MOVE                             R13 R10
       61 GETIMPORT                        R11 K19 [table.insert]
       63 CALL                             R11 2 0
       64 FORGLOOP                         R6 2 ; [-8]
       66 MOVE                             R4 R5
       67 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       69 CALL                             R1 2 0
       70 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K9 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["oldTitle"]
       16 SETTABLEKS                       R6 R5 K6 ["oldTitle"]
       18 GETTABLEKS                       R6 R0 K7 ["newTitle"]
       20 SETTABLEKS                       R6 R5 K7 ["newTitle"]
       22 GETTABLEKS                       R6 R0 K8 ["namingSource"]
       24 SETTABLEKS                       R6 R5 K8 ["namingSource"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K10 ["assign"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K13 ["getTimestampMilliseconds"]
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 SETTABLEKS                       R4 R3 K1 ["customFields"]
       41 NEWTABLE                         R5 0 0
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R6 R9 K14 ["StandardizedFields"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       51 MOVE                             R12 R5
       52 MOVE                             R13 R10
       53 GETIMPORT                        R11 K17 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-8]
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K7 [{"conversationId", "threadId", "isPinned"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["isPinned"]
       16 SETTABLEKS                       R6 R5 K6 ["isPinned"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K8 ["assign"]
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K10 [{"timestampMilliseconds"}]
       23 GETUPVAL                         R10 3
       24 GETTABLEKS                       R9 R10 K11 ["getTimestampMilliseconds"]
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K9 ["timestampMilliseconds"]
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K1 ["customFields"]
       33 NEWTABLE                         R5 0 0
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R6 R9 K12 ["StandardizedFields"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       43 MOVE                             R12 R5
       44 MOVE                             R13 R10
       45 GETIMPORT                        R11 K15 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-8]
       50 MOVE                             R4 R5
       51 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K7 [{"conversationId", "threadId", "deleteReason"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["threadId"]
       12 SETTABLEKS                       R6 R5 K5 ["threadId"]
       14 GETTABLEKS                       R6 R0 K6 ["deleteReason"]
       16 SETTABLEKS                       R6 R5 K6 ["deleteReason"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K8 ["assign"]
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K10 [{"timestampMilliseconds"}]
       23 GETUPVAL                         R10 3
       24 GETTABLEKS                       R9 R10 K11 ["getTimestampMilliseconds"]
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K9 ["timestampMilliseconds"]
       29 CALL                             R6 2 1
       30 MOVE                             R4 R6
       31 SETTABLEKS                       R4 R3 K1 ["customFields"]
       33 NEWTABLE                         R5 0 0
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R6 R9 K12 ["StandardizedFields"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       43 MOVE                             R12 R5
       44 MOVE                             R13 R10
       45 GETIMPORT                        R11 K15 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-8]
       50 MOVE                             R4 R5
       51 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K9 [{"conversationId", "newThreadId", "sourceThreadId", "titleAtDuplicate", "upToMessageId"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["newThreadId"]
       12 SETTABLEKS                       R6 R5 K5 ["newThreadId"]
       14 GETTABLEKS                       R6 R0 K6 ["sourceThreadId"]
       16 SETTABLEKS                       R6 R5 K6 ["sourceThreadId"]
       18 GETTABLEKS                       R6 R0 K7 ["titleAtDuplicate"]
       20 SETTABLEKS                       R6 R5 K7 ["titleAtDuplicate"]
       22 GETTABLEKS                       R6 R0 K8 ["upToMessageId"]
       24 SETTABLEKS                       R6 R5 K8 ["upToMessageId"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K10 ["assign"]
       29 MOVE                             R7 R5
       30 DUPTABLE                         R8 K12 [{"timestampMilliseconds"}]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K13 ["getTimestampMilliseconds"]
       34 CALL                             R9 0 1
       35 SETTABLEKS                       R9 R8 K11 ["timestampMilliseconds"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 SETTABLEKS                       R4 R3 K1 ["customFields"]
       41 NEWTABLE                         R5 0 0
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R6 R9 K14 ["StandardizedFields"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       51 MOVE                             R12 R5
       52 MOVE                             R13 R10
       53 GETIMPORT                        R11 K17 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-8]
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       61 CALL                             R1 2 0
       62 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 DUPTABLE                         R5 K8 [{"conversationId", "previousThreadId", "nextThreadId", "source"}]
        6 GETTABLEKS                       R6 R0 K4 ["conversationId"]
        8 SETTABLEKS                       R6 R5 K4 ["conversationId"]
       10 GETTABLEKS                       R6 R0 K5 ["previousThreadId"]
       12 SETTABLEKS                       R6 R5 K5 ["previousThreadId"]
       14 GETTABLEKS                       R6 R0 K6 ["nextThreadId"]
       16 SETTABLEKS                       R6 R5 K6 ["nextThreadId"]
       18 GETTABLEKS                       R6 R0 K7 ["source"]
       20 SETTABLEKS                       R6 R5 K7 ["source"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K9 ["assign"]
       25 MOVE                             R7 R5
       26 DUPTABLE                         R8 K11 [{"timestampMilliseconds"}]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R9 R10 K12 ["getTimestampMilliseconds"]
       30 CALL                             R9 0 1
       31 SETTABLEKS                       R9 R8 K10 ["timestampMilliseconds"]
       33 CALL                             R6 2 1
       34 MOVE                             R4 R6
       35 SETTABLEKS                       R4 R3 K1 ["customFields"]
       37 NEWTABLE                         R5 0 0
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R6 R9 K13 ["StandardizedFields"]
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       47 MOVE                             R12 R5
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K16 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R6 2 ; [-8]
       54 MOVE                             R4 R5
       55 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logStat"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["latencyMs"]
        6 DUPTABLE                         R4 K3 [{"customFields"}]
        7 DUPTABLE                         R6 K7 [{"operation", "scope", "success"}]
        8 GETTABLEKS                       R7 R0 K4 ["operation"]
       10 SETTABLEKS                       R7 R6 K4 ["operation"]
       12 GETTABLEKS                       R7 R0 K5 ["scope"]
       14 SETTABLEKS                       R7 R6 K5 ["scope"]
       16 GETTABLEKS                       R7 R0 K6 ["success"]
       18 SETTABLEKS                       R7 R6 K6 ["success"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K8 ["join"]
       23 MOVE                             R8 R6
       24 DUPTABLE                         R9 K10 [{"experimentationGroup"}]
       25 GETUPVAL                         R11 3
       26 NAMECALL                         R11 R11 K11 ["get"]
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+3]
       31 LOADNIL                          R10
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R13 4
       34 GETTABLE                         R12 R11 R13
       35 JUMPIFNOTEQKNIL                  R12 ; [+3]
       37 GETTABLEKS                       R12 R11 K12 ["generatedExperimentVariantDistributionVariable"]
       39 JUMPIFNOTEQKNIL                  R12 ; [+3]
       41 LOADNIL                          R10
       42 JUMP                             ; [+6]
       43 FASTCALL1                        TOSTRING R12 ; [+3]
       44 MOVE                             R14 R12
       45 GETIMPORT                        R13 K14 [tostring]
       47 CALL                             R13 1 1
       48 MOVE                             R10 R13
       49 SETTABLEKS                       R10 R9 K9 ["experimentationGroup"]
       51 CALL                             R7 2 1
       52 MOVE                             R5 R7
       53 SETTABLEKS                       R5 R4 K2 ["customFields"]
       55 CALL                             R1 3 0
       56 GETTABLEKS                       R2 R0 K6 ["success"]
       58 JUMPIFNOT                        R2 ; [+2]
       59 GETUPVAL                         R1 5
       60 JUMP                             ; [+1]
       61 GETUPVAL                         R1 6
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K15 ["logCounter"]
       65 MOVE                             R3 R1
       66 LOADN                            R4 1
       67 DUPTABLE                         R5 K3 [{"customFields"}]
       68 DUPTABLE                         R7 K16 [{"operation", "scope"}]
       69 GETTABLEKS                       R8 R0 K4 ["operation"]
       71 SETTABLEKS                       R8 R7 K4 ["operation"]
       73 GETTABLEKS                       R8 R0 K5 ["scope"]
       75 SETTABLEKS                       R8 R7 K5 ["scope"]
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R8 R9 K8 ["join"]
       80 MOVE                             R9 R7
       81 DUPTABLE                         R10 K10 [{"experimentationGroup"}]
       82 GETUPVAL                         R12 3
       83 NAMECALL                         R12 R12 K11 ["get"]
       85 CALL                             R12 1 1
       86 JUMPIFNOTEQKNIL                  R12 ; [+3]
       88 LOADNIL                          R11
       89 JUMP                             ; [+16]
       90 GETUPVAL                         R14 4
       91 GETTABLE                         R13 R12 R14
       92 JUMPIFNOTEQKNIL                  R13 ; [+3]
       94 GETTABLEKS                       R13 R12 K12 ["generatedExperimentVariantDistributionVariable"]
       96 JUMPIFNOTEQKNIL                  R13 ; [+3]
       98 LOADNIL                          R11
       99 JUMP                             ; [+6]
      100 FASTCALL1                        TOSTRING R13 ; [+3]
      101 MOVE                             R15 R13
      102 GETIMPORT                        R14 K14 [tostring]
      104 CALL                             R14 1 1
      105 MOVE                             R11 R14
      106 SETTABLEKS                       R11 R10 K9 ["experimentationGroup"]
      108 CALL                             R8 2 1
      109 MOVE                             R6 R8
      110 SETTABLEKS                       R6 R5 K2 ["customFields"]
      112 CALL                             R2 3 0
      113 RETURN                           R0 0

PROTO_39:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R2 K0 [PROTO_9]
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 DUPCLOSURE                       R3 K1 [PROTO_10]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U8
       24 DUPCLOSURE                       R4 K2 [PROTO_11]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 NEWCLOSURE                       R5 P4
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          VAL R0
       40 NEWCLOSURE                       R6 P5
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U14
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R0
       50 DUPCLOSURE                       R7 K3 [PROTO_14]
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U15
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 DUPCLOSURE                       R8 K4 [PROTO_15]
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U16
       59 NEWCLOSURE                       R9 P8
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U17
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          VAL R0
       66 DUPCLOSURE                       R10 K5 [PROTO_17]
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U18
       71 CAPTURE                          UPVAL U8
       72 DUPCLOSURE                       R11 K6 [PROTO_18]
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U19
       77 CAPTURE                          UPVAL U8
       78 DUPCLOSURE                       R12 K7 [PROTO_19]
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U20
       83 CAPTURE                          UPVAL U8
       84 DUPCLOSURE                       R13 K8 [PROTO_20]
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U21
       89 CAPTURE                          UPVAL U8
       90 DUPCLOSURE                       R14 K9 [PROTO_21]
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U22
       95 CAPTURE                          UPVAL U8
       96 DUPCLOSURE                       R15 K10 [PROTO_22]
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U23
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U24
      104 CAPTURE                          UPVAL U8
      105 DUPCLOSURE                       R16 K11 [PROTO_23]
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          UPVAL U25
      110 CAPTURE                          UPVAL U8
      111 DUPCLOSURE                       R17 K12 [PROTO_24]
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          UPVAL U26
      114 CAPTURE                          UPVAL U2
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          UPVAL U4
      117 DUPCLOSURE                       R18 K13 [PROTO_25]
      118 CAPTURE                          UPVAL U0
      119 CAPTURE                          UPVAL U27
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          UPVAL U28
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U29
      126 CAPTURE                          UPVAL U8
      127 DUPCLOSURE                       R19 K14 [PROTO_26]
      128 CAPTURE                          UPVAL U0
      129 CAPTURE                          UPVAL U30
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U31
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          UPVAL U32
      136 CAPTURE                          UPVAL U8
      137 DUPCLOSURE                       R20 K15 [PROTO_27]
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          UPVAL U33
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          UPVAL U34
      144 CAPTURE                          UPVAL U6
      145 CAPTURE                          UPVAL U35
      146 CAPTURE                          UPVAL U8
      147 DUPCLOSURE                       R21 K16 [PROTO_28]
      148 CAPTURE                          UPVAL U0
      149 CAPTURE                          UPVAL U36
      150 CAPTURE                          UPVAL U2
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          UPVAL U4
      153 CAPTURE                          UPVAL U6
      154 CAPTURE                          UPVAL U37
      155 CAPTURE                          UPVAL U8
      156 DUPCLOSURE                       R22 K17 [PROTO_29]
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U38
      159 CAPTURE                          UPVAL U2
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          UPVAL U8
      162 DUPCLOSURE                       R23 K18 [PROTO_30]
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          UPVAL U39
      165 CAPTURE                          UPVAL U2
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          UPVAL U8
      168 CAPTURE                          UPVAL U40
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          UPVAL U4
      171 DUPCLOSURE                       R24 K19 [PROTO_31]
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          UPVAL U41
      174 DUPCLOSURE                       R25 K20 [PROTO_32]
      175 CAPTURE                          UPVAL U0
      176 CAPTURE                          UPVAL U42
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          UPVAL U8
      180 DUPCLOSURE                       R26 K21 [PROTO_33]
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          UPVAL U43
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          UPVAL U8
      186 DUPCLOSURE                       R27 K22 [PROTO_34]
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U44
      189 CAPTURE                          UPVAL U2
      190 CAPTURE                          UPVAL U6
      191 CAPTURE                          UPVAL U8
      192 DUPCLOSURE                       R28 K23 [PROTO_35]
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U45
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U8
      198 DUPCLOSURE                       R29 K24 [PROTO_36]
      199 CAPTURE                          UPVAL U0
      200 CAPTURE                          UPVAL U46
      201 CAPTURE                          UPVAL U2
      202 CAPTURE                          UPVAL U6
      203 CAPTURE                          UPVAL U8
      204 DUPCLOSURE                       R30 K25 [PROTO_37]
      205 CAPTURE                          UPVAL U0
      206 CAPTURE                          UPVAL U47
      207 CAPTURE                          UPVAL U2
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          UPVAL U8
      210 DUPCLOSURE                       R31 K26 [PROTO_38]
      211 CAPTURE                          UPVAL U0
      212 CAPTURE                          UPVAL U48
      213 CAPTURE                          UPVAL U2
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          UPVAL U4
      216 CAPTURE                          UPVAL U49
      217 CAPTURE                          UPVAL U50
      218 NEWTABLE                         R32 64 0
      220 SETTABLEKS                       R1 R32 K27 ["logUserMessageSent"]
      222 SETTABLEKS                       R2 R32 K28 ["logAssistantMessageSent"]
      224 SETTABLEKS                       R3 R32 K29 ["logApiKeyAdded"]
      226 SETTABLEKS                       R4 R32 K30 ["logErrorEvent"]
      228 SETTABLEKS                       R16 R32 K31 ["logExternalAPIError"]
      230 SETTABLEKS                       R5 R32 K32 ["logThumbsUp"]
      232 SETTABLEKS                       R6 R32 K33 ["logThumbsDown"]
      234 SETTABLEKS                       R7 R32 K34 ["logInitialResponseLatency"]
      236 SETTABLEKS                       R8 R32 K35 ["logMarkdownError"]
      238 SETTABLEKS                       R9 R32 K36 ["logRetry"]
      240 SETTABLEKS                       R10 R32 K37 ["logStopGeneration"]
      242 SETTABLEKS                       R11 R32 K38 ["logToolStarted"]
      244 SETTABLEKS                       R12 R32 K39 ["logToolEnded"]
      246 SETTABLEKS                       R13 R32 K40 ["logToolConfirmationShown"]
      248 SETTABLEKS                       R14 R32 K41 ["logToolConfirmationResult"]
      250 SETTABLEKS                       R15 R32 K42 ["logRequestJourney"]
      252 SETTABLEKS                       R17 R32 K43 ["logMeshGenActivated"]
      254 SETTABLEKS                       R18 R32 K44 ["logMeshGenCompleted"]
      256 SETTABLEKS                       R19 R32 K45 ["logMeshGenPublishedAssets"]
      258 SETTABLEKS                       R20 R32 K46 ["logMeshGenMeshInserted"]
      260 SETTABLEKS                       R21 R32 K47 ["logPrimitiveGen"]
      262 SETTABLEKS                       R22 R32 K48 ["logIntegrationEvent"]
      264 SETTABLEKS                       R23 R32 K49 ["logExternalServerConnected"]
      266 SETTABLEKS                       R24 R32 K50 ["logMaterialGeneratorSavedMaterial"]
      268 GETUPVAL                         R34 5
      269 CALL                             R34 0 1
      270 JUMPIFNOT                        R34 ; [+2]
      271 MOVE                             R33 R25
      272 JUMP                             ; [+1]
      273 LOADNIL                          R33
      274 SETTABLEKS                       R33 R32 K51 ["logThreadCreated"]
      276 GETUPVAL                         R34 5
      277 CALL                             R34 0 1
      278 JUMPIFNOT                        R34 ; [+2]
      279 MOVE                             R33 R26
      280 JUMP                             ; [+1]
      281 LOADNIL                          R33
      282 SETTABLEKS                       R33 R32 K52 ["logThreadRenamed"]
      284 GETUPVAL                         R34 5
      285 CALL                             R34 0 1
      286 JUMPIFNOT                        R34 ; [+2]
      287 MOVE                             R33 R27
      288 JUMP                             ; [+1]
      289 LOADNIL                          R33
      290 SETTABLEKS                       R33 R32 K53 ["logThreadPinnedChanged"]
      292 GETUPVAL                         R34 5
      293 CALL                             R34 0 1
      294 JUMPIFNOT                        R34 ; [+2]
      295 MOVE                             R33 R28
      296 JUMP                             ; [+1]
      297 LOADNIL                          R33
      298 SETTABLEKS                       R33 R32 K54 ["logThreadDeleted"]
      300 GETUPVAL                         R34 5
      301 CALL                             R34 0 1
      302 JUMPIFNOT                        R34 ; [+2]
      303 MOVE                             R33 R29
      304 JUMP                             ; [+1]
      305 LOADNIL                          R33
      306 SETTABLEKS                       R33 R32 K55 ["logThreadDuplicated"]
      308 GETUPVAL                         R34 5
      309 CALL                             R34 0 1
      310 JUMPIFNOT                        R34 ; [+2]
      311 MOVE                             R33 R30
      312 JUMP                             ; [+1]
      313 LOADNIL                          R33
      314 SETTABLEKS                       R33 R32 K56 ["logThreadSwitched"]
      316 GETUPVAL                         R34 5
      317 CALL                             R34 0 1
      318 JUMPIFNOT                        R34 ; [+2]
      319 MOVE                             R33 R31
      320 JUMP                             ; [+1]
      321 LOADNIL                          R33
      322 SETTABLEKS                       R33 R32 K57 ["logPersistenceOperation"]
      324 GETUPVAL                         R33 51
      325 SETTABLEKS                       R33 R32 K58 ["getMessageGuid"]
      327 GETUPVAL                         R33 52
      328 SETTABLEKS                       R33 R32 K59 ["createMessageGuid"]
      330 RETURN                           R32 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K32 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logPrimitiveGen", "logIntegrationEvent", "logExternalServerConnected", "logThreadCreated", "logThreadRenamed", "logThreadPinnedChanged", "logThreadDeleted", "logThreadDuplicated", "logThreadSwitched", "logPersistenceOperation", "getMessageGuid", "createMessageGuid"}]
        4 GETTABLEKS                       R3 R1 K0 ["logUserMessageSent"]
        6 SETTABLEKS                       R3 R2 K0 ["logUserMessageSent"]
        8 GETTABLEKS                       R3 R1 K1 ["logAssistantMessageSent"]
       10 SETTABLEKS                       R3 R2 K1 ["logAssistantMessageSent"]
       12 GETTABLEKS                       R3 R1 K2 ["logApiKeyAdded"]
       14 SETTABLEKS                       R3 R2 K2 ["logApiKeyAdded"]
       16 GETTABLEKS                       R3 R1 K3 ["logErrorEvent"]
       18 SETTABLEKS                       R3 R2 K3 ["logErrorEvent"]
       20 GETTABLEKS                       R3 R1 K4 ["logExternalAPIError"]
       22 SETTABLEKS                       R3 R2 K4 ["logExternalAPIError"]
       24 GETTABLEKS                       R3 R1 K5 ["logThumbsUp"]
       26 SETTABLEKS                       R3 R2 K5 ["logThumbsUp"]
       28 GETTABLEKS                       R3 R1 K6 ["logThumbsDown"]
       30 SETTABLEKS                       R3 R2 K6 ["logThumbsDown"]
       32 GETTABLEKS                       R3 R1 K7 ["logInitialResponseLatency"]
       34 SETTABLEKS                       R3 R2 K7 ["logInitialResponseLatency"]
       36 GETTABLEKS                       R3 R1 K8 ["logMarkdownError"]
       38 SETTABLEKS                       R3 R2 K8 ["logMarkdownError"]
       40 GETTABLEKS                       R3 R1 K9 ["logRetry"]
       42 SETTABLEKS                       R3 R2 K9 ["logRetry"]
       44 GETTABLEKS                       R3 R1 K10 ["logStopGeneration"]
       46 SETTABLEKS                       R3 R2 K10 ["logStopGeneration"]
       48 GETTABLEKS                       R3 R1 K11 ["logToolStarted"]
       50 SETTABLEKS                       R3 R2 K11 ["logToolStarted"]
       52 GETTABLEKS                       R3 R1 K12 ["logToolEnded"]
       54 SETTABLEKS                       R3 R2 K12 ["logToolEnded"]
       56 GETTABLEKS                       R3 R1 K13 ["logToolConfirmationShown"]
       58 SETTABLEKS                       R3 R2 K13 ["logToolConfirmationShown"]
       60 GETTABLEKS                       R3 R1 K14 ["logToolConfirmationResult"]
       62 SETTABLEKS                       R3 R2 K14 ["logToolConfirmationResult"]
       64 GETTABLEKS                       R3 R1 K15 ["logRequestJourney"]
       66 SETTABLEKS                       R3 R2 K15 ["logRequestJourney"]
       68 GETTABLEKS                       R3 R1 K16 ["logMeshGenActivated"]
       70 SETTABLEKS                       R3 R2 K16 ["logMeshGenActivated"]
       72 GETTABLEKS                       R3 R1 K17 ["logMeshGenCompleted"]
       74 SETTABLEKS                       R3 R2 K17 ["logMeshGenCompleted"]
       76 GETTABLEKS                       R3 R1 K18 ["logMeshGenPublishedAssets"]
       78 SETTABLEKS                       R3 R2 K18 ["logMeshGenPublishedAssets"]
       80 GETTABLEKS                       R3 R1 K19 ["logMeshGenMeshInserted"]
       82 SETTABLEKS                       R3 R2 K19 ["logMeshGenMeshInserted"]
       84 GETTABLEKS                       R3 R1 K20 ["logPrimitiveGen"]
       86 SETTABLEKS                       R3 R2 K20 ["logPrimitiveGen"]
       88 GETTABLEKS                       R3 R1 K21 ["logIntegrationEvent"]
       90 SETTABLEKS                       R3 R2 K21 ["logIntegrationEvent"]
       92 GETTABLEKS                       R3 R1 K22 ["logExternalServerConnected"]
       94 SETTABLEKS                       R3 R2 K22 ["logExternalServerConnected"]
       96 GETUPVAL                         R4 1
       97 CALL                             R4 0 1
       98 JUMPIFNOT                        R4 ; [+3]
       99 GETTABLEKS                       R3 R1 K23 ["logThreadCreated"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R3
      103 SETTABLEKS                       R3 R2 K23 ["logThreadCreated"]
      105 GETUPVAL                         R4 1
      106 CALL                             R4 0 1
      107 JUMPIFNOT                        R4 ; [+3]
      108 GETTABLEKS                       R3 R1 K24 ["logThreadRenamed"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R3
      112 SETTABLEKS                       R3 R2 K24 ["logThreadRenamed"]
      114 GETUPVAL                         R4 1
      115 CALL                             R4 0 1
      116 JUMPIFNOT                        R4 ; [+3]
      117 GETTABLEKS                       R3 R1 K25 ["logThreadPinnedChanged"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R3
      121 SETTABLEKS                       R3 R2 K25 ["logThreadPinnedChanged"]
      123 GETUPVAL                         R4 1
      124 CALL                             R4 0 1
      125 JUMPIFNOT                        R4 ; [+3]
      126 GETTABLEKS                       R3 R1 K26 ["logThreadDeleted"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R3
      130 SETTABLEKS                       R3 R2 K26 ["logThreadDeleted"]
      132 GETUPVAL                         R4 1
      133 CALL                             R4 0 1
      134 JUMPIFNOT                        R4 ; [+3]
      135 GETTABLEKS                       R3 R1 K27 ["logThreadDuplicated"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R3
      139 SETTABLEKS                       R3 R2 K27 ["logThreadDuplicated"]
      141 GETUPVAL                         R4 1
      142 CALL                             R4 0 1
      143 JUMPIFNOT                        R4 ; [+3]
      144 GETTABLEKS                       R3 R1 K28 ["logThreadSwitched"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R3
      148 SETTABLEKS                       R3 R2 K28 ["logThreadSwitched"]
      150 GETUPVAL                         R4 1
      151 CALL                             R4 0 1
      152 JUMPIFNOT                        R4 ; [+3]
      153 GETTABLEKS                       R3 R1 K29 ["logPersistenceOperation"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R3
      157 SETTABLEKS                       R3 R2 K29 ["logPersistenceOperation"]
      159 GETTABLEKS                       R3 R1 K30 ["getMessageGuid"]
      161 SETTABLEKS                       R3 R2 K30 ["getMessageGuid"]
      163 GETTABLEKS                       R3 R1 K31 ["createMessageGuid"]
      165 SETTABLEKS                       R3 R2 K31 ["createMessageGuid"]
      167 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["IXPService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["AssistantUI"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R6 K13 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Util"]
       39 GETTABLEKS                       R6 R7 K16 ["ExperimentCache"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Src"]
       46 GETTABLEKS                       R8 R9 K15 ["Util"]
       48 GETTABLEKS                       R7 R8 K17 ["Telemetry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Packages"]
       55 GETTABLEKS                       R8 R9 K18 ["TelemetryProtocol"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R3 K19 ["Utils"]
       60 GETTABLEKS                       R8 R9 K20 ["Time"]
       62 GETIMPORT                        R9 K10 [require]
       64 GETTABLEKS                       R12 R0 K14 ["Src"]
       66 GETTABLEKS                       R11 R12 K21 ["Flags"]
       68 GETTABLEKS                       R10 R11 K22 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K10 [require]
       73 GETTABLEKS                       R13 R0 K14 ["Src"]
       75 GETTABLEKS                       R12 R13 K21 ["Flags"]
       77 GETTABLEKS                       R11 R12 K23 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K10 [require]
       82 GETTABLEKS                       R14 R0 K14 ["Src"]
       84 GETTABLEKS                       R13 R14 K21 ["Flags"]
       86 GETTABLEKS                       R12 R13 K24 ["FStringAssistantGroupNameKey"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K10 [require]
       91 GETTABLEKS                       R15 R0 K14 ["Src"]
       93 GETTABLEKS                       R14 R15 K21 ["Flags"]
       95 GETTABLEKS                       R13 R14 K25 ["FStringNewAssistantExperimentLayer"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R15 R3 K21 ["Flags"]
      100 GETTABLEKS                       R14 R15 K26 ["Shared"]
      102 GETTABLEKS                       R13 R14 K27 ["FFlagAssistantMultipleChatPersistence"]
      104 NEWTABLE                         R14 0 0
      106 DUPCLOSURE                       R15 K28 [PROTO_0]
      107 CAPTURE                          VAL R7
      108 DUPCLOSURE                       R16 K29 [PROTO_1]
      109 DUPCLOSURE                       R17 K30 [PROTO_2]
      110 CAPTURE                          VAL R6
      111 GETIMPORT                        R18 K33 [table.freeze]
      113 NEWTABLE                         R20 0 0
      115 GETTABLEKS                       R24 R6 K34 ["Backends"]
      117 GETTABLEKS                       R23 R24 K35 ["EventIngest"]
      119 FASTCALL2                        TABLE_INSERT R20 R23 ; [+4]
      121 MOVE                             R22 R20
      122 GETIMPORT                        R21 K37 [table.insert]
      124 CALL                             R21 2 0
      125 GETTABLEKS                       R24 R6 K34 ["Backends"]
      127 GETTABLEKS                       R23 R24 K38 ["Points"]
      129 FASTCALL2                        TABLE_INSERT R20 R23 ; [+4]
      131 MOVE                             R22 R20
      132 GETIMPORT                        R21 K37 [table.insert]
      134 CALL                             R21 2 0
      135 MOVE                             R19 R20
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K33 [table.freeze]
      139 DUPTABLE                         R20 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      140 LOADK                            R21 K44 ["StudioAssistantUserMessageSent"]
      141 SETTABLEKS                       R21 R20 K39 ["eventName"]
      143 NEWTABLE                         R21 0 1
      145 GETTABLEKS                       R23 R6 K34 ["Backends"]
      147 GETTABLEKS                       R22 R23 K45 ["RobloxTelemetryCounter"]
      149 SETLIST                          R21 R22 1 [1]
      151 SETTABLEKS                       R21 R20 K40 ["backends"]
      153 LOADK                            R21 K46 ["Incrementing count of user messages sent."]
      154 SETTABLEKS                       R21 R20 K41 ["description"]
      156 NEWTABLE                         R21 0 3
      158 LOADN                            R22 25
      159 LOADN                            R23 7
      160 LOADN                            R24 21
      161 SETLIST                          R21 R22 3 [1]
      163 SETTABLEKS                       R21 R20 K42 ["lastUpdated"]
      165 CALL                             R19 1 1
      166 GETIMPORT                        R20 K33 [table.freeze]
      168 DUPTABLE                         R21 K48 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      169 LOADK                            R22 K49 ["CAPMessageSent"]
      170 SETTABLEKS                       R22 R21 K39 ["eventName"]
      172 SETTABLEKS                       R18 R21 K40 ["backends"]
      174 LOADK                            R22 K50 ["User message sent event with request ID."]
      175 SETTABLEKS                       R22 R21 K41 ["description"]
      177 MOVE                             R22 R10
      178 CALL                             R22 0 1
      179 SETTABLEKS                       R22 R21 K47 ["throttlingPercentage"]
      181 NEWTABLE                         R22 0 3
      183 LOADN                            R23 25
      184 LOADN                            R24 7
      185 LOADN                            R25 25
      186 SETLIST                          R22 R23 3 [1]
      188 SETTABLEKS                       R22 R21 K42 ["lastUpdated"]
      190 CALL                             R20 1 1
      191 GETIMPORT                        R21 K33 [table.freeze]
      193 DUPTABLE                         R22 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      194 LOADK                            R23 K51 ["CAPAPIKeyAdded"]
      195 SETTABLEKS                       R23 R22 K39 ["eventName"]
      197 SETTABLEKS                       R18 R22 K40 ["backends"]
      199 LOADK                            R23 K52 ["User added an API key for an LLM provider."]
      200 SETTABLEKS                       R23 R22 K41 ["description"]
      202 NEWTABLE                         R23 0 3
      204 LOADN                            R24 25
      205 LOADN                            R25 11
      206 LOADN                            R26 4
      207 SETLIST                          R23 R24 3 [1]
      209 SETTABLEKS                       R23 R22 K42 ["lastUpdated"]
      211 CALL                             R21 1 1
      212 GETIMPORT                        R22 K33 [table.freeze]
      214 DUPTABLE                         R23 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      215 LOADK                            R24 K53 ["CAPUserFeedbackThumbsUp"]
      216 SETTABLEKS                       R24 R23 K39 ["eventName"]
      218 SETTABLEKS                       R18 R23 K40 ["backends"]
      220 LOADK                            R24 K54 ["User feedback thumbs up event with message context."]
      221 SETTABLEKS                       R24 R23 K41 ["description"]
      223 NEWTABLE                         R24 0 3
      225 LOADN                            R25 25
      226 LOADN                            R26 7
      227 LOADN                            R27 25
      228 SETLIST                          R24 R25 3 [1]
      230 SETTABLEKS                       R24 R23 K42 ["lastUpdated"]
      232 CALL                             R22 1 1
      233 GETIMPORT                        R23 K33 [table.freeze]
      235 DUPTABLE                         R24 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      236 LOADK                            R25 K55 ["CAPUserFeedbackThumbsDown"]
      237 SETTABLEKS                       R25 R24 K39 ["eventName"]
      239 SETTABLEKS                       R18 R24 K40 ["backends"]
      241 LOADK                            R25 K56 ["User feedback thumbs down event with message context."]
      242 SETTABLEKS                       R25 R24 K41 ["description"]
      244 NEWTABLE                         R25 0 3
      246 LOADN                            R26 25
      247 LOADN                            R27 7
      248 LOADN                            R28 25
      249 SETLIST                          R25 R26 3 [1]
      251 SETTABLEKS                       R25 R24 K42 ["lastUpdated"]
      253 CALL                             R23 1 1
      254 GETIMPORT                        R24 K33 [table.freeze]
      256 DUPTABLE                         R25 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      257 LOADK                            R26 K57 ["StudioAssistantThumbsUp"]
      258 SETTABLEKS                       R26 R25 K39 ["eventName"]
      260 NEWTABLE                         R26 0 1
      262 GETTABLEKS                       R28 R6 K34 ["Backends"]
      264 GETTABLEKS                       R27 R28 K45 ["RobloxTelemetryCounter"]
      266 SETLIST                          R26 R27 1 [1]
      268 SETTABLEKS                       R26 R25 K40 ["backends"]
      270 LOADK                            R26 K58 ["Incrementing count of thumbs up events."]
      271 SETTABLEKS                       R26 R25 K41 ["description"]
      273 NEWTABLE                         R26 0 3
      275 LOADN                            R27 25
      276 LOADN                            R28 7
      277 LOADN                            R29 21
      278 SETLIST                          R26 R27 3 [1]
      280 SETTABLEKS                       R26 R25 K42 ["lastUpdated"]
      282 CALL                             R24 1 1
      283 GETIMPORT                        R25 K33 [table.freeze]
      285 DUPTABLE                         R26 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      286 LOADK                            R27 K59 ["StudioAssistantThumbsDown"]
      287 SETTABLEKS                       R27 R26 K39 ["eventName"]
      289 NEWTABLE                         R27 0 1
      291 GETTABLEKS                       R29 R6 K34 ["Backends"]
      293 GETTABLEKS                       R28 R29 K45 ["RobloxTelemetryCounter"]
      295 SETLIST                          R27 R28 1 [1]
      297 SETTABLEKS                       R27 R26 K40 ["backends"]
      299 LOADK                            R27 K60 ["Incrementing count of thumbs down events."]
      300 SETTABLEKS                       R27 R26 K41 ["description"]
      302 NEWTABLE                         R27 0 3
      304 LOADN                            R28 25
      305 LOADN                            R29 7
      306 LOADN                            R30 21
      307 SETLIST                          R27 R28 3 [1]
      309 SETTABLEKS                       R27 R26 K42 ["lastUpdated"]
      311 CALL                             R25 1 1
      312 GETIMPORT                        R26 K33 [table.freeze]
      314 DUPTABLE                         R27 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      315 LOADK                            R28 K61 ["StudioAssistantInitialResponseLatency"]
      316 SETTABLEKS                       R28 R27 K39 ["eventName"]
      318 NEWTABLE                         R28 0 1
      320 GETTABLEKS                       R30 R6 K34 ["Backends"]
      322 GETTABLEKS                       R29 R30 K62 ["RobloxTelemetryStat"]
      324 SETLIST                          R28 R29 1 [1]
      326 SETTABLEKS                       R28 R27 K40 ["backends"]
      328 LOADK                            R28 K63 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      329 SETTABLEKS                       R28 R27 K41 ["description"]
      331 NEWTABLE                         R28 0 3
      333 LOADN                            R29 25
      334 LOADN                            R30 7
      335 LOADN                            R31 21
      336 SETLIST                          R28 R29 3 [1]
      338 SETTABLEKS                       R28 R27 K42 ["lastUpdated"]
      340 CALL                             R26 1 1
      341 GETIMPORT                        R27 K33 [table.freeze]
      343 DUPTABLE                         R28 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      344 LOADK                            R29 K64 ["StudioAssistantRequestJourney"]
      345 SETTABLEKS                       R29 R28 K39 ["eventName"]
      347 NEWTABLE                         R29 0 1
      349 GETTABLEKS                       R31 R6 K34 ["Backends"]
      351 GETTABLEKS                       R30 R31 K62 ["RobloxTelemetryStat"]
      353 SETLIST                          R29 R30 1 [1]
      355 SETTABLEKS                       R29 R28 K40 ["backends"]
      357 LOADK                            R29 K65 ["User request journey duration in seconds. Time between sending first message to request ended."]
      358 SETTABLEKS                       R29 R28 K41 ["description"]
      360 NEWTABLE                         R29 0 3
      362 LOADN                            R30 25
      363 LOADN                            R31 10
      364 LOADN                            R32 22
      365 SETLIST                          R29 R30 3 [1]
      367 SETTABLEKS                       R29 R28 K42 ["lastUpdated"]
      369 CALL                             R27 1 1
      370 GETIMPORT                        R28 K33 [table.freeze]
      372 DUPTABLE                         R29 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      373 LOADK                            R30 K66 ["CAPRequestJourney"]
      374 SETTABLEKS                       R30 R29 K39 ["eventName"]
      376 SETTABLEKS                       R18 R29 K40 ["backends"]
      378 LOADK                            R30 K67 ["User request journey detail."]
      379 SETTABLEKS                       R30 R29 K41 ["description"]
      381 NEWTABLE                         R30 0 3
      383 LOADN                            R31 25
      384 LOADN                            R32 11
      385 LOADN                            R33 1
      386 SETLIST                          R30 R31 3 [1]
      388 SETTABLEKS                       R30 R29 K42 ["lastUpdated"]
      390 CALL                             R28 1 1
      391 GETIMPORT                        R29 K33 [table.freeze]
      393 DUPTABLE                         R30 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      394 LOADK                            R31 K68 ["StudioAssistantErrorEvent"]
      395 SETTABLEKS                       R31 R30 K39 ["eventName"]
      397 NEWTABLE                         R31 0 1
      399 GETTABLEKS                       R33 R6 K34 ["Backends"]
      401 GETTABLEKS                       R32 R33 K45 ["RobloxTelemetryCounter"]
      403 SETLIST                          R31 R32 1 [1]
      405 SETTABLEKS                       R31 R30 K40 ["backends"]
      407 LOADK                            R31 K69 ["Incrementing count of error events with error type attached."]
      408 SETTABLEKS                       R31 R30 K41 ["description"]
      410 NEWTABLE                         R31 0 3
      412 LOADN                            R32 25
      413 LOADN                            R33 7
      414 LOADN                            R34 21
      415 SETLIST                          R31 R32 3 [1]
      417 SETTABLEKS                       R31 R30 K42 ["lastUpdated"]
      419 CALL                             R29 1 1
      420 GETIMPORT                        R30 K33 [table.freeze]
      422 DUPTABLE                         R31 K48 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      423 LOADK                            R32 K70 ["StudioAssistantMarkdownError"]
      424 SETTABLEKS                       R32 R31 K39 ["eventName"]
      426 NEWTABLE                         R32 0 1
      428 GETTABLEKS                       R34 R6 K34 ["Backends"]
      430 GETTABLEKS                       R33 R34 K38 ["Points"]
      432 SETLIST                          R32 R33 1 [1]
      434 SETTABLEKS                       R32 R31 K40 ["backends"]
      436 LOADK                            R32 K71 ["Collection of markdown error events, with markdown attached."]
      437 SETTABLEKS                       R32 R31 K41 ["description"]
      439 MOVE                             R32 R9
      440 CALL                             R32 0 1
      441 SETTABLEKS                       R32 R31 K47 ["throttlingPercentage"]
      443 NEWTABLE                         R32 0 3
      445 LOADN                            R33 25
      446 LOADN                            R34 7
      447 LOADN                            R35 21
      448 SETLIST                          R32 R33 3 [1]
      450 SETTABLEKS                       R32 R31 K42 ["lastUpdated"]
      452 CALL                             R30 1 1
      453 GETIMPORT                        R31 K33 [table.freeze]
      455 DUPTABLE                         R32 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      456 LOADK                            R33 K72 ["CAPMessageResubmitted"]
      457 SETTABLEKS                       R33 R32 K39 ["eventName"]
      459 SETTABLEKS                       R18 R32 K40 ["backends"]
      461 LOADK                            R33 K73 ["User message retry/resubmit event with request ID."]
      462 SETTABLEKS                       R33 R32 K41 ["description"]
      464 NEWTABLE                         R33 0 3
      466 LOADN                            R34 25
      467 LOADN                            R35 8
      468 LOADN                            R36 7
      469 SETLIST                          R33 R34 3 [1]
      471 SETTABLEKS                       R33 R32 K42 ["lastUpdated"]
      473 CALL                             R31 1 1
      474 GETIMPORT                        R32 K33 [table.freeze]
      476 DUPTABLE                         R33 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      477 LOADK                            R34 K74 ["CAPStopGeneration"]
      478 SETTABLEKS                       R34 R33 K39 ["eventName"]
      480 SETTABLEKS                       R18 R33 K40 ["backends"]
      482 LOADK                            R34 K75 ["User stop generation event with request ID."]
      483 SETTABLEKS                       R34 R33 K41 ["description"]
      485 NEWTABLE                         R34 0 3
      487 LOADN                            R35 25
      488 LOADN                            R36 8
      489 LOADN                            R37 7
      490 SETLIST                          R34 R35 3 [1]
      492 SETTABLEKS                       R34 R33 K42 ["lastUpdated"]
      494 CALL                             R32 1 1
      495 GETIMPORT                        R33 K33 [table.freeze]
      497 DUPTABLE                         R34 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      498 LOADK                            R35 K76 ["CAPToolEnded"]
      499 SETTABLEKS                       R35 R34 K39 ["eventName"]
      501 SETTABLEKS                       R18 R34 K40 ["backends"]
      503 LOADK                            R35 K77 ["Tool invocation ended event with request ID and tool name"]
      504 SETTABLEKS                       R35 R34 K41 ["description"]
      506 NEWTABLE                         R35 0 3
      508 LOADN                            R36 25
      509 LOADN                            R37 7
      510 LOADN                            R38 21
      511 SETLIST                          R35 R36 3 [1]
      513 SETTABLEKS                       R35 R34 K42 ["lastUpdated"]
      515 CALL                             R33 1 1
      516 GETIMPORT                        R34 K33 [table.freeze]
      518 DUPTABLE                         R35 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      519 LOADK                            R36 K78 ["CAPToolStarted"]
      520 SETTABLEKS                       R36 R35 K39 ["eventName"]
      522 SETTABLEKS                       R18 R35 K40 ["backends"]
      524 LOADK                            R36 K79 ["Tool invocation started event with request ID and tool name."]
      525 SETTABLEKS                       R36 R35 K41 ["description"]
      527 NEWTABLE                         R36 0 3
      529 LOADN                            R37 25
      530 LOADN                            R38 8
      531 LOADN                            R39 7
      532 SETLIST                          R36 R37 3 [1]
      534 SETTABLEKS                       R36 R35 K42 ["lastUpdated"]
      536 CALL                             R34 1 1
      537 GETIMPORT                        R35 K33 [table.freeze]
      539 DUPTABLE                         R36 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      540 LOADK                            R37 K80 ["CAPToolConfirmationShown"]
      541 SETTABLEKS                       R37 R36 K39 ["eventName"]
      543 SETTABLEKS                       R18 R36 K40 ["backends"]
      545 LOADK                            R37 K81 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      546 SETTABLEKS                       R37 R36 K41 ["description"]
      548 NEWTABLE                         R37 0 3
      550 LOADN                            R38 25
      551 LOADN                            R39 9
      552 LOADN                            R40 19
      553 SETLIST                          R37 R38 3 [1]
      555 SETTABLEKS                       R37 R36 K42 ["lastUpdated"]
      557 CALL                             R35 1 1
      558 GETIMPORT                        R36 K33 [table.freeze]
      560 DUPTABLE                         R37 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      561 LOADK                            R38 K82 ["CAPToolConfirmationResult"]
      562 SETTABLEKS                       R38 R37 K39 ["eventName"]
      564 SETTABLEKS                       R18 R37 K40 ["backends"]
      566 LOADK                            R38 K83 ["Tool confirmation dialog result event with request ID and user choice."]
      567 SETTABLEKS                       R38 R37 K41 ["description"]
      569 NEWTABLE                         R38 0 3
      571 LOADN                            R39 25
      572 LOADN                            R40 9
      573 LOADN                            R41 19
      574 SETLIST                          R38 R39 3 [1]
      576 SETTABLEKS                       R38 R37 K42 ["lastUpdated"]
      578 CALL                             R36 1 1
      579 GETIMPORT                        R37 K33 [table.freeze]
      581 DUPTABLE                         R38 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      582 LOADK                            R39 K84 ["CAPExternalAPIError"]
      583 SETTABLEKS                       R39 R38 K39 ["eventName"]
      585 SETTABLEKS                       R18 R38 K40 ["backends"]
      587 LOADK                            R39 K85 ["External LLM API error event with request ID, model, and HTTP status code."]
      588 SETTABLEKS                       R39 R38 K41 ["description"]
      590 NEWTABLE                         R39 0 3
      592 LOADN                            R40 25
      593 LOADN                            R41 12
      594 LOADN                            R42 16
      595 SETLIST                          R39 R40 3 [1]
      597 SETTABLEKS                       R39 R38 K42 ["lastUpdated"]
      599 CALL                             R37 1 1
      600 GETIMPORT                        R38 K33 [table.freeze]
      602 DUPTABLE                         R39 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      603 LOADK                            R40 K86 ["CAPMeshGenActivated"]
      604 SETTABLEKS                       R40 R39 K39 ["eventName"]
      606 NEWTABLE                         R40 0 1
      608 GETTABLEKS                       R42 R6 K34 ["Backends"]
      610 GETTABLEKS                       R41 R42 K45 ["RobloxTelemetryCounter"]
      612 SETLIST                          R40 R41 1 [1]
      614 SETTABLEKS                       R40 R39 K40 ["backends"]
      616 LOADK                            R40 K87 ["Count of MeshGen tool activations."]
      617 SETTABLEKS                       R40 R39 K41 ["description"]
      619 NEWTABLE                         R40 0 3
      621 LOADN                            R41 26
      622 LOADN                            R42 2
      623 LOADN                            R43 6
      624 SETLIST                          R40 R41 3 [1]
      626 SETTABLEKS                       R40 R39 K42 ["lastUpdated"]
      628 CALL                             R38 1 1
      629 GETIMPORT                        R39 K33 [table.freeze]
      631 DUPTABLE                         R40 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      632 LOADK                            R41 K88 ["CAPMeshGenCompletedSuccess"]
      633 SETTABLEKS                       R41 R40 K39 ["eventName"]
      635 NEWTABLE                         R41 0 1
      637 GETTABLEKS                       R43 R6 K34 ["Backends"]
      639 GETTABLEKS                       R42 R43 K45 ["RobloxTelemetryCounter"]
      641 SETLIST                          R41 R42 1 [1]
      643 SETTABLEKS                       R41 R40 K40 ["backends"]
      645 LOADK                            R41 K89 ["Count of successful MeshGen completions."]
      646 SETTABLEKS                       R41 R40 K41 ["description"]
      648 NEWTABLE                         R41 0 3
      650 LOADN                            R42 26
      651 LOADN                            R43 2
      652 LOADN                            R44 6
      653 SETLIST                          R41 R42 3 [1]
      655 SETTABLEKS                       R41 R40 K42 ["lastUpdated"]
      657 CALL                             R39 1 1
      658 GETIMPORT                        R40 K33 [table.freeze]
      660 DUPTABLE                         R41 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      661 LOADK                            R42 K90 ["CAPMeshGenCompletedFailure"]
      662 SETTABLEKS                       R42 R41 K39 ["eventName"]
      664 NEWTABLE                         R42 0 1
      666 GETTABLEKS                       R44 R6 K34 ["Backends"]
      668 GETTABLEKS                       R43 R44 K45 ["RobloxTelemetryCounter"]
      670 SETLIST                          R42 R43 1 [1]
      672 SETTABLEKS                       R42 R41 K40 ["backends"]
      674 LOADK                            R42 K91 ["Count of failed MeshGen completions."]
      675 SETTABLEKS                       R42 R41 K41 ["description"]
      677 NEWTABLE                         R42 0 3
      679 LOADN                            R43 26
      680 LOADN                            R44 2
      681 LOADN                            R45 6
      682 SETLIST                          R42 R43 3 [1]
      684 SETTABLEKS                       R42 R41 K42 ["lastUpdated"]
      686 CALL                             R40 1 1
      687 GETIMPORT                        R41 K33 [table.freeze]
      689 DUPTABLE                         R42 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      690 LOADK                            R43 K92 ["CAPMeshGenCompleted"]
      691 SETTABLEKS                       R43 R42 K39 ["eventName"]
      693 SETTABLEKS                       R18 R42 K40 ["backends"]
      695 LOADK                            R43 K93 ["MeshGen generation completed event with details."]
      696 SETTABLEKS                       R43 R42 K41 ["description"]
      698 NEWTABLE                         R43 0 3
      700 LOADN                            R44 26
      701 LOADN                            R45 2
      702 LOADN                            R46 6
      703 SETLIST                          R43 R44 3 [1]
      705 SETTABLEKS                       R43 R42 K42 ["lastUpdated"]
      707 CALL                             R41 1 1
      708 GETIMPORT                        R42 K33 [table.freeze]
      710 DUPTABLE                         R43 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      711 LOADK                            R44 K94 ["CAPMeshGenPublishedAssetsSuccess"]
      712 SETTABLEKS                       R44 R43 K39 ["eventName"]
      714 NEWTABLE                         R44 0 1
      716 GETTABLEKS                       R46 R6 K34 ["Backends"]
      718 GETTABLEKS                       R45 R46 K45 ["RobloxTelemetryCounter"]
      720 SETLIST                          R44 R45 1 [1]
      722 SETTABLEKS                       R44 R43 K40 ["backends"]
      724 LOADK                            R44 K95 ["Count of successful MeshGen asset publications."]
      725 SETTABLEKS                       R44 R43 K41 ["description"]
      727 NEWTABLE                         R44 0 3
      729 LOADN                            R45 26
      730 LOADN                            R46 2
      731 LOADN                            R47 6
      732 SETLIST                          R44 R45 3 [1]
      734 SETTABLEKS                       R44 R43 K42 ["lastUpdated"]
      736 CALL                             R42 1 1
      737 GETIMPORT                        R43 K33 [table.freeze]
      739 DUPTABLE                         R44 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      740 LOADK                            R45 K96 ["CAPMeshGenPublishedAssetsFailure"]
      741 SETTABLEKS                       R45 R44 K39 ["eventName"]
      743 NEWTABLE                         R45 0 1
      745 GETTABLEKS                       R47 R6 K34 ["Backends"]
      747 GETTABLEKS                       R46 R47 K45 ["RobloxTelemetryCounter"]
      749 SETLIST                          R45 R46 1 [1]
      751 SETTABLEKS                       R45 R44 K40 ["backends"]
      753 LOADK                            R45 K97 ["Count of failed MeshGen asset publications."]
      754 SETTABLEKS                       R45 R44 K41 ["description"]
      756 NEWTABLE                         R45 0 3
      758 LOADN                            R46 26
      759 LOADN                            R47 2
      760 LOADN                            R48 6
      761 SETLIST                          R45 R46 3 [1]
      763 SETTABLEKS                       R45 R44 K42 ["lastUpdated"]
      765 CALL                             R43 1 1
      766 GETIMPORT                        R44 K33 [table.freeze]
      768 DUPTABLE                         R45 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      769 LOADK                            R46 K98 ["CAPMeshGenPublishedAssets"]
      770 SETTABLEKS                       R46 R45 K39 ["eventName"]
      772 SETTABLEKS                       R18 R45 K40 ["backends"]
      774 LOADK                            R46 K99 ["MeshGen assets published event with details."]
      775 SETTABLEKS                       R46 R45 K41 ["description"]
      777 NEWTABLE                         R46 0 3
      779 LOADN                            R47 26
      780 LOADN                            R48 2
      781 LOADN                            R49 6
      782 SETLIST                          R46 R47 3 [1]
      784 SETTABLEKS                       R46 R45 K42 ["lastUpdated"]
      786 CALL                             R44 1 1
      787 GETIMPORT                        R45 K33 [table.freeze]
      789 DUPTABLE                         R46 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      790 LOADK                            R47 K100 ["CAPMeshGenMeshInsertedSuccess"]
      791 SETTABLEKS                       R47 R46 K39 ["eventName"]
      793 NEWTABLE                         R47 0 1
      795 GETTABLEKS                       R49 R6 K34 ["Backends"]
      797 GETTABLEKS                       R48 R49 K45 ["RobloxTelemetryCounter"]
      799 SETLIST                          R47 R48 1 [1]
      801 SETTABLEKS                       R47 R46 K40 ["backends"]
      803 LOADK                            R47 K101 ["Count of successful MeshGen mesh insertions."]
      804 SETTABLEKS                       R47 R46 K41 ["description"]
      806 NEWTABLE                         R47 0 3
      808 LOADN                            R48 26
      809 LOADN                            R49 2
      810 LOADN                            R50 6
      811 SETLIST                          R47 R48 3 [1]
      813 SETTABLEKS                       R47 R46 K42 ["lastUpdated"]
      815 CALL                             R45 1 1
      816 GETIMPORT                        R46 K33 [table.freeze]
      818 DUPTABLE                         R47 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      819 LOADK                            R48 K102 ["CAPMeshGenMeshInsertedFailure"]
      820 SETTABLEKS                       R48 R47 K39 ["eventName"]
      822 NEWTABLE                         R48 0 1
      824 GETTABLEKS                       R50 R6 K34 ["Backends"]
      826 GETTABLEKS                       R49 R50 K45 ["RobloxTelemetryCounter"]
      828 SETLIST                          R48 R49 1 [1]
      830 SETTABLEKS                       R48 R47 K40 ["backends"]
      832 LOADK                            R48 K103 ["Count of failed MeshGen mesh insertions."]
      833 SETTABLEKS                       R48 R47 K41 ["description"]
      835 NEWTABLE                         R48 0 3
      837 LOADN                            R49 26
      838 LOADN                            R50 2
      839 LOADN                            R51 6
      840 SETLIST                          R48 R49 3 [1]
      842 SETTABLEKS                       R48 R47 K42 ["lastUpdated"]
      844 CALL                             R46 1 1
      845 GETIMPORT                        R47 K33 [table.freeze]
      847 DUPTABLE                         R48 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      848 LOADK                            R49 K104 ["CAPMeshGenMeshInserted"]
      849 SETTABLEKS                       R49 R48 K39 ["eventName"]
      851 SETTABLEKS                       R18 R48 K40 ["backends"]
      853 LOADK                            R49 K105 ["MeshGen mesh inserted event with details."]
      854 SETTABLEKS                       R49 R48 K41 ["description"]
      856 NEWTABLE                         R49 0 3
      858 LOADN                            R50 26
      859 LOADN                            R51 2
      860 LOADN                            R52 6
      861 SETLIST                          R49 R50 3 [1]
      863 SETTABLEKS                       R49 R48 K42 ["lastUpdated"]
      865 CALL                             R47 1 1
      866 GETIMPORT                        R48 K33 [table.freeze]
      868 DUPTABLE                         R49 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      869 LOADK                            R50 K106 ["StudioAssistantPrimitiveGenCompletedCount"]
      870 SETTABLEKS                       R50 R49 K39 ["eventName"]
      872 NEWTABLE                         R50 0 1
      874 GETTABLEKS                       R52 R6 K34 ["Backends"]
      876 GETTABLEKS                       R51 R52 K45 ["RobloxTelemetryCounter"]
      878 SETLIST                          R50 R51 1 [1]
      880 SETTABLEKS                       R50 R49 K40 ["backends"]
      882 LOADK                            R50 K107 ["Count of PrimitiveGen completions with success status."]
      883 SETTABLEKS                       R50 R49 K41 ["description"]
      885 NEWTABLE                         R50 0 3
      887 LOADN                            R51 26
      888 LOADN                            R52 3
      889 LOADN                            R53 12
      890 SETLIST                          R50 R51 3 [1]
      892 SETTABLEKS                       R50 R49 K42 ["lastUpdated"]
      894 CALL                             R48 1 1
      895 GETIMPORT                        R49 K33 [table.freeze]
      897 DUPTABLE                         R50 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      898 LOADK                            R51 K108 ["StudioAssistantPrimitiveGenCompleted"]
      899 SETTABLEKS                       R51 R50 K39 ["eventName"]
      901 SETTABLEKS                       R18 R50 K40 ["backends"]
      903 LOADK                            R51 K109 ["PrimitiveGen completion event with generation, prompt, render latency, and dependency details."]
      904 SETTABLEKS                       R51 R50 K41 ["description"]
      906 NEWTABLE                         R51 0 3
      908 LOADN                            R52 26
      909 LOADN                            R53 3
      910 LOADN                            R54 12
      911 SETLIST                          R51 R52 3 [1]
      913 SETTABLEKS                       R51 R50 K42 ["lastUpdated"]
      915 CALL                             R49 1 1
      916 GETIMPORT                        R50 K33 [table.freeze]
      918 DUPTABLE                         R51 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      919 LOADK                            R52 K110 ["StudioAssistantIntegrationAction"]
      920 SETTABLEKS                       R52 R51 K39 ["eventName"]
      922 SETTABLEKS                       R18 R51 K40 ["backends"]
      924 LOADK                            R52 K111 ["Integration event with action, label, and URL."]
      925 SETTABLEKS                       R52 R51 K41 ["description"]
      927 NEWTABLE                         R52 0 3
      929 LOADN                            R53 26
      930 LOADN                            R54 2
      931 LOADN                            R55 3
      932 SETLIST                          R52 R53 3 [1]
      934 SETTABLEKS                       R52 R51 K42 ["lastUpdated"]
      936 CALL                             R50 1 1
      937 GETIMPORT                        R51 K33 [table.freeze]
      939 DUPTABLE                         R52 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      940 LOADK                            R53 K112 ["StudioAssistantExternalServerConnectedEvent"]
      941 SETTABLEKS                       R53 R52 K39 ["eventName"]
      943 SETTABLEKS                       R18 R52 K40 ["backends"]
      945 LOADK                            R53 K113 ["External server connected event with session ID"]
      946 SETTABLEKS                       R53 R52 K41 ["description"]
      948 NEWTABLE                         R53 0 3
      950 LOADN                            R54 26
      951 LOADN                            R55 2
      952 LOADN                            R56 25
      953 SETLIST                          R53 R54 3 [1]
      955 SETTABLEKS                       R53 R52 K42 ["lastUpdated"]
      957 CALL                             R51 1 1
      958 GETIMPORT                        R52 K33 [table.freeze]
      960 DUPTABLE                         R53 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      961 LOADK                            R54 K114 ["StudioAssistantExternalServerConnectedCounter"]
      962 SETTABLEKS                       R54 R53 K39 ["eventName"]
      964 NEWTABLE                         R54 0 1
      966 GETTABLEKS                       R56 R6 K34 ["Backends"]
      968 GETTABLEKS                       R55 R56 K45 ["RobloxTelemetryCounter"]
      970 SETLIST                          R54 R55 1 [1]
      972 SETTABLEKS                       R54 R53 K40 ["backends"]
      974 LOADK                            R54 K113 ["External server connected event with session ID"]
      975 SETTABLEKS                       R54 R53 K41 ["description"]
      977 NEWTABLE                         R54 0 3
      979 LOADN                            R55 26
      980 LOADN                            R56 2
      981 LOADN                            R57 25
      982 SETLIST                          R54 R55 3 [1]
      984 SETTABLEKS                       R54 R53 K42 ["lastUpdated"]
      986 CALL                             R52 1 1
      987 GETIMPORT                        R53 K33 [table.freeze]
      989 DUPTABLE                         R54 K43 [{"eventName", "backends", "description", "lastUpdated"}]
      990 LOADK                            R55 K115 ["SBT_MaterialGeneratorSavedMaterial"]
      991 SETTABLEKS                       R55 R54 K39 ["eventName"]
      993 NEWTABLE                         R55 0 1
      995 GETTABLEKS                       R57 R6 K34 ["Backends"]
      997 GETTABLEKS                       R56 R57 K45 ["RobloxTelemetryCounter"]
      999 SETLIST                          R55 R56 1 [1]
     1001 SETTABLEKS                       R55 R54 K40 ["backends"]
     1003 LOADK                            R55 K116 ["Counter to track number of saved materials"]
     1004 SETTABLEKS                       R55 R54 K41 ["description"]
     1006 NEWTABLE                         R55 0 3
     1008 LOADN                            R56 24
     1009 LOADN                            R57 10
     1010 LOADN                            R58 15
     1011 SETLIST                          R55 R56 3 [1]
     1013 SETTABLEKS                       R55 R54 K42 ["lastUpdated"]
     1015 CALL                             R53 1 1
     1016 GETIMPORT                        R54 K33 [table.freeze]
     1018 DUPTABLE                         R55 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1019 LOADK                            R56 K117 ["StudioAssistantThreadCreated"]
     1020 SETTABLEKS                       R56 R55 K39 ["eventName"]
     1022 SETTABLEKS                       R18 R55 K40 ["backends"]
     1024 LOADK                            R56 K118 ["Thread created event with details."]
     1025 SETTABLEKS                       R56 R55 K41 ["description"]
     1027 NEWTABLE                         R56 0 3
     1029 LOADN                            R57 26
     1030 LOADN                            R58 3
     1031 LOADN                            R59 10
     1032 SETLIST                          R56 R57 3 [1]
     1034 SETTABLEKS                       R56 R55 K42 ["lastUpdated"]
     1036 CALL                             R54 1 1
     1037 GETIMPORT                        R55 K33 [table.freeze]
     1039 DUPTABLE                         R56 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1040 LOADK                            R57 K119 ["StudioAssistantThreadRenamed"]
     1041 SETTABLEKS                       R57 R56 K39 ["eventName"]
     1043 SETTABLEKS                       R18 R56 K40 ["backends"]
     1045 LOADK                            R57 K120 ["Thread named event with details."]
     1046 SETTABLEKS                       R57 R56 K41 ["description"]
     1048 NEWTABLE                         R57 0 3
     1050 LOADN                            R58 26
     1051 LOADN                            R59 3
     1052 LOADN                            R60 10
     1053 SETLIST                          R57 R58 3 [1]
     1055 SETTABLEKS                       R57 R56 K42 ["lastUpdated"]
     1057 CALL                             R55 1 1
     1058 GETIMPORT                        R56 K33 [table.freeze]
     1060 DUPTABLE                         R57 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1061 LOADK                            R58 K121 ["StudioAssistantThreadPinnedChanged"]
     1062 SETTABLEKS                       R58 R57 K39 ["eventName"]
     1064 SETTABLEKS                       R18 R57 K40 ["backends"]
     1066 LOADK                            R58 K122 ["Thread pinned changed event with details."]
     1067 SETTABLEKS                       R58 R57 K41 ["description"]
     1069 NEWTABLE                         R58 0 3
     1071 LOADN                            R59 26
     1072 LOADN                            R60 3
     1073 LOADN                            R61 10
     1074 SETLIST                          R58 R59 3 [1]
     1076 SETTABLEKS                       R58 R57 K42 ["lastUpdated"]
     1078 CALL                             R56 1 1
     1079 GETIMPORT                        R57 K33 [table.freeze]
     1081 DUPTABLE                         R58 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1082 LOADK                            R59 K123 ["StudioAssistantThreadDeleted"]
     1083 SETTABLEKS                       R59 R58 K39 ["eventName"]
     1085 SETTABLEKS                       R18 R58 K40 ["backends"]
     1087 LOADK                            R59 K124 ["Thread deleted event with details."]
     1088 SETTABLEKS                       R59 R58 K41 ["description"]
     1090 NEWTABLE                         R59 0 3
     1092 LOADN                            R60 26
     1093 LOADN                            R61 3
     1094 LOADN                            R62 10
     1095 SETLIST                          R59 R60 3 [1]
     1097 SETTABLEKS                       R59 R58 K42 ["lastUpdated"]
     1099 CALL                             R57 1 1
     1100 GETIMPORT                        R58 K33 [table.freeze]
     1102 DUPTABLE                         R59 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1103 LOADK                            R60 K125 ["StudioAssistantThreadDuplicated"]
     1104 SETTABLEKS                       R60 R59 K39 ["eventName"]
     1106 SETTABLEKS                       R18 R59 K40 ["backends"]
     1108 LOADK                            R60 K126 ["Thread duplicated event with details."]
     1109 SETTABLEKS                       R60 R59 K41 ["description"]
     1111 NEWTABLE                         R60 0 3
     1113 LOADN                            R61 26
     1114 LOADN                            R62 3
     1115 LOADN                            R63 10
     1116 SETLIST                          R60 R61 3 [1]
     1118 SETTABLEKS                       R60 R59 K42 ["lastUpdated"]
     1120 CALL                             R58 1 1
     1121 GETIMPORT                        R59 K33 [table.freeze]
     1123 DUPTABLE                         R60 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1124 LOADK                            R61 K127 ["StudioAssistantThreadSwitched"]
     1125 SETTABLEKS                       R61 R60 K39 ["eventName"]
     1127 SETTABLEKS                       R18 R60 K40 ["backends"]
     1129 LOADK                            R61 K128 ["Thread switched event with details."]
     1130 SETTABLEKS                       R61 R60 K41 ["description"]
     1132 NEWTABLE                         R61 0 3
     1134 LOADN                            R62 26
     1135 LOADN                            R63 3
     1136 LOADN                            R64 10
     1137 SETLIST                          R61 R62 3 [1]
     1139 SETTABLEKS                       R61 R60 K42 ["lastUpdated"]
     1141 CALL                             R59 1 1
     1142 GETIMPORT                        R60 K33 [table.freeze]
     1144 DUPTABLE                         R61 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1145 LOADK                            R62 K129 ["StudioAssistantPersistenceSuccess"]
     1146 SETTABLEKS                       R62 R61 K39 ["eventName"]
     1148 NEWTABLE                         R62 0 1
     1150 GETTABLEKS                       R64 R6 K34 ["Backends"]
     1152 GETTABLEKS                       R63 R64 K45 ["RobloxTelemetryCounter"]
     1154 SETLIST                          R62 R63 1 [1]
     1156 SETTABLEKS                       R62 R61 K40 ["backends"]
     1158 LOADK                            R62 K130 ["Count of successful persistence operations."]
     1159 SETTABLEKS                       R62 R61 K41 ["description"]
     1161 NEWTABLE                         R62 0 3
     1163 LOADN                            R63 26
     1164 LOADN                            R64 3
     1165 LOADN                            R65 10
     1166 SETLIST                          R62 R63 3 [1]
     1168 SETTABLEKS                       R62 R61 K42 ["lastUpdated"]
     1170 CALL                             R60 1 1
     1171 GETIMPORT                        R61 K33 [table.freeze]
     1173 DUPTABLE                         R62 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1174 LOADK                            R63 K131 ["StudioAssistantPersistenceFailure"]
     1175 SETTABLEKS                       R63 R62 K39 ["eventName"]
     1177 NEWTABLE                         R63 0 1
     1179 GETTABLEKS                       R65 R6 K34 ["Backends"]
     1181 GETTABLEKS                       R64 R65 K45 ["RobloxTelemetryCounter"]
     1183 SETLIST                          R63 R64 1 [1]
     1185 SETTABLEKS                       R63 R62 K40 ["backends"]
     1187 LOADK                            R63 K132 ["Count of failed persistence operations."]
     1188 SETTABLEKS                       R63 R62 K41 ["description"]
     1190 NEWTABLE                         R63 0 3
     1192 LOADN                            R64 26
     1193 LOADN                            R65 3
     1194 LOADN                            R66 10
     1195 SETLIST                          R63 R64 3 [1]
     1197 SETTABLEKS                       R63 R62 K42 ["lastUpdated"]
     1199 CALL                             R61 1 1
     1200 GETIMPORT                        R62 K33 [table.freeze]
     1202 DUPTABLE                         R63 K43 [{"eventName", "backends", "description", "lastUpdated"}]
     1203 LOADK                            R64 K133 ["StudioAssistantPersistenceLatencyMs"]
     1204 SETTABLEKS                       R64 R63 K39 ["eventName"]
     1206 NEWTABLE                         R64 0 1
     1208 GETTABLEKS                       R66 R6 K34 ["Backends"]
     1210 GETTABLEKS                       R65 R66 K62 ["RobloxTelemetryStat"]
     1212 SETLIST                          R64 R65 1 [1]
     1214 SETTABLEKS                       R64 R63 K40 ["backends"]
     1216 LOADK                            R64 K134 ["Persistence operation latency in milliseconds."]
     1217 SETTABLEKS                       R64 R63 K41 ["description"]
     1219 NEWTABLE                         R64 0 3
     1221 LOADN                            R65 26
     1222 LOADN                            R66 3
     1223 LOADN                            R67 10
     1224 SETLIST                          R64 R65 3 [1]
     1226 SETTABLEKS                       R64 R63 K42 ["lastUpdated"]
     1228 CALL                             R62 1 1
     1229 DUPCLOSURE                       R63 K135 [PROTO_3]
     1230 CAPTURE                          VAL R13
     1231 CAPTURE                          VAL R14
     1232 DUPCLOSURE                       R64 K136 [PROTO_4]
     1233 CAPTURE                          VAL R13
     1234 CAPTURE                          VAL R14
     1235 CAPTURE                          VAL R1
     1236 DUPCLOSURE                       R65 K137 [PROTO_5]
     1237 CAPTURE                          VAL R4
     1238 CAPTURE                          VAL R8
     1239 MOVE                             R66 R11
     1240 CALL                             R66 0 1
     1241 GETTABLEKS                       R67 R5 K138 ["new"]
     1243 MOVE                             R68 R2
     1244 MOVE                             R69 R12
     1245 CALL                             R69 0 -1
     1246 CALL                             R67 -1 1
     1247 DUPCLOSURE                       R68 K139 [PROTO_6]
     1248 CAPTURE                          VAL R67
     1249 CAPTURE                          VAL R66
     1250 DUPCLOSURE                       R69 K140 [PROTO_7]
     1251 CAPTURE                          VAL R4
     1252 CAPTURE                          VAL R67
     1253 CAPTURE                          VAL R66
     1254 DUPCLOSURE                       R70 K141 [PROTO_39]
     1255 CAPTURE                          VAL R6
     1256 CAPTURE                          VAL R19
     1257 CAPTURE                          VAL R4
     1258 CAPTURE                          VAL R67
     1259 CAPTURE                          VAL R66
     1260 CAPTURE                          VAL R13
     1261 CAPTURE                          VAL R8
     1262 CAPTURE                          VAL R20
     1263 CAPTURE                          VAL R7
     1264 CAPTURE                          VAL R21
     1265 CAPTURE                          VAL R29
     1266 CAPTURE                          VAL R24
     1267 CAPTURE                          VAL R22
     1268 CAPTURE                          VAL R25
     1269 CAPTURE                          VAL R23
     1270 CAPTURE                          VAL R26
     1271 CAPTURE                          VAL R30
     1272 CAPTURE                          VAL R31
     1273 CAPTURE                          VAL R32
     1274 CAPTURE                          VAL R34
     1275 CAPTURE                          VAL R33
     1276 CAPTURE                          VAL R35
     1277 CAPTURE                          VAL R36
     1278 CAPTURE                          VAL R27
     1279 CAPTURE                          VAL R28
     1280 CAPTURE                          VAL R37
     1281 CAPTURE                          VAL R38
     1282 CAPTURE                          VAL R39
     1283 CAPTURE                          VAL R40
     1284 CAPTURE                          VAL R41
     1285 CAPTURE                          VAL R42
     1286 CAPTURE                          VAL R43
     1287 CAPTURE                          VAL R44
     1288 CAPTURE                          VAL R45
     1289 CAPTURE                          VAL R46
     1290 CAPTURE                          VAL R47
     1291 CAPTURE                          VAL R48
     1292 CAPTURE                          VAL R49
     1293 CAPTURE                          VAL R50
     1294 CAPTURE                          VAL R51
     1295 CAPTURE                          VAL R52
     1296 CAPTURE                          VAL R53
     1297 CAPTURE                          VAL R54
     1298 CAPTURE                          VAL R55
     1299 CAPTURE                          VAL R56
     1300 CAPTURE                          VAL R57
     1301 CAPTURE                          VAL R58
     1302 CAPTURE                          VAL R59
     1303 CAPTURE                          VAL R62
     1304 CAPTURE                          VAL R60
     1305 CAPTURE                          VAL R61
     1306 CAPTURE                          VAL R63
     1307 CAPTURE                          VAL R64
     1308 DUPCLOSURE                       R71 K142 [PROTO_40]
     1309 CAPTURE                          VAL R70
     1310 CAPTURE                          VAL R13
     1311 DUPTABLE                         R72 K145 [{"makeStudioTelemetryEvents", "createStudioEventLogger"}]
     1312 SETTABLEKS                       R70 R72 K143 ["makeStudioTelemetryEvents"]
     1314 SETTABLEKS                       R71 R72 K144 ["createStudioEventLogger"]
     1316 RETURN                           R72 1
