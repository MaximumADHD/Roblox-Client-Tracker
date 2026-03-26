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
        5 LOADK                            R3 K0 ["getMessageGuid should not be called when FFlagAssistantPersistConversations is enabled"]
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
        5 LOADK                            R3 K0 ["createMessageGuid should not be called when FFlagAssistantPersistConversations is enabled"]
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
       44 DUPTABLE                         R1 K16 [{"requestId", "conversationId", "threadId", "message", "attachments", "role"}]
       45 GETTABLEKS                       R2 R0 K17 ["messageGuid"]
       47 SETTABLEKS                       R2 R1 K10 ["requestId"]
       49 GETTABLEKS                       R2 R0 K18 ["sessionId"]
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
       70 LOADK                            R2 K19 ["MCPUser"]
       71 SETTABLEKS                       R2 R1 K15 ["role"]
       73 GETTABLEKS                       R2 R0 K20 ["model"]
       75 SETTABLEKS                       R2 R1 K20 ["model"]
       77 GETUPVAL                         R3 2
       78 GETTABLEKS                       R2 R3 K21 ["assign"]
       80 MOVE                             R3 R1
       81 DUPTABLE                         R4 K23 [{"timestampMilliseconds"}]
       82 GETUPVAL                         R6 6
       83 GETTABLEKS                       R5 R6 K24 ["getTimestampMilliseconds"]
       85 CALL                             R5 0 1
       86 SETTABLEKS                       R5 R4 K22 ["timestampMilliseconds"]
       88 CALL                             R2 2 1
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R3 R4 K25 ["logEvent"]
       92 GETUPVAL                         R4 7
       93 DUPTABLE                         R5 K27 [{"customFields", "standardizedFields"}]
       94 SETTABLEKS                       R2 R5 K1 ["customFields"]
       96 NEWTABLE                         R7 0 0
       98 GETUPVAL                         R11 8
       99 GETTABLEKS                       R8 R11 K28 ["StandardizedFields"]
      101 LOADNIL                          R9
      102 LOADNIL                          R10
      103 FORGPREP                         R8
      104 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      106 MOVE                             R14 R7
      107 MOVE                             R15 R12
      108 GETIMPORT                        R13 K31 [table.insert]
      110 CALL                             R13 2 0
      111 FORGLOOP                         R8 2 ; [-8]
      113 MOVE                             R6 R7
      114 SETTABLEKS                       R6 R5 K26 ["standardizedFields"]
      116 CALL                             R3 2 0
      117 GETUPVAL                         R3 9
      118 JUMPIFNOT                        R3 ; [+10]
      119 GETUPVAL                         R3 9
      120 LOADK                            R5 K32 ["user_message_sent"]
      121 DUPTABLE                         R6 K33 [{"requestId"}]
      122 GETTABLEKS                       R7 R0 K17 ["messageGuid"]
      124 SETTABLEKS                       R7 R6 K10 ["requestId"]
      126 NAMECALL                         R3 R3 K34 ["LogEventAsync"]
      128 CALL                             R3 3 0
      129 RETURN                           R0 0

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
       44 DUPTABLE                         R2 K12 [{"requestId", "conversationId"}]
       45 GETTABLEKS                       R3 R0 K13 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K14 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R3 R4 K15 ["assign"]
       56 MOVE                             R4 R2
       57 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R6 R7 K18 ["getTimestampMilliseconds"]
       61 CALL                             R6 0 1
       62 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       64 CALL                             R3 2 1
       65 MOVE                             R1 R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R2 R3 K19 ["logEvent"]
       69 GETUPVAL                         R3 6
       70 DUPTABLE                         R4 K21 [{"customFields", "standardizedFields"}]
       71 SETTABLEKS                       R1 R4 K1 ["customFields"]
       73 NEWTABLE                         R6 0 0
       75 GETUPVAL                         R10 7
       76 GETTABLEKS                       R7 R10 K22 ["StandardizedFields"]
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 FORGPREP                         R7
       81 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       83 MOVE                             R13 R6
       84 MOVE                             R14 R11
       85 GETIMPORT                        R12 K25 [table.insert]
       87 CALL                             R12 2 0
       88 FORGLOOP                         R7 2 ; [-8]
       90 MOVE                             R5 R6
       91 SETTABLEKS                       R5 R4 K20 ["standardizedFields"]
       93 CALL                             R2 2 0
       94 GETUPVAL                         R2 8
       95 JUMPIFNOT                        R2 ; [+10]
       96 GETUPVAL                         R2 8
       97 LOADK                            R4 K26 ["thumbs_up"]
       98 DUPTABLE                         R5 K27 [{"requestId"}]
       99 GETTABLEKS                       R6 R0 K13 ["messageGuid"]
      101 SETTABLEKS                       R6 R5 K10 ["requestId"]
      103 NAMECALL                         R2 R2 K28 ["LogEventAsync"]
      105 CALL                             R2 3 0
      106 RETURN                           R0 0

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
       44 DUPTABLE                         R2 K12 [{"requestId", "conversationId"}]
       45 GETTABLEKS                       R3 R0 K13 ["messageGuid"]
       47 SETTABLEKS                       R3 R2 K10 ["requestId"]
       49 GETTABLEKS                       R3 R0 K14 ["sessionId"]
       51 SETTABLEKS                       R3 R2 K11 ["conversationId"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R3 R4 K15 ["assign"]
       56 MOVE                             R4 R2
       57 DUPTABLE                         R5 K17 [{"timestampMilliseconds"}]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R6 R7 K18 ["getTimestampMilliseconds"]
       61 CALL                             R6 0 1
       62 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       64 CALL                             R3 2 1
       65 MOVE                             R1 R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R2 R3 K19 ["logEvent"]
       69 GETUPVAL                         R3 6
       70 DUPTABLE                         R4 K21 [{"customFields", "standardizedFields"}]
       71 SETTABLEKS                       R1 R4 K1 ["customFields"]
       73 NEWTABLE                         R6 0 0
       75 GETUPVAL                         R10 7
       76 GETTABLEKS                       R7 R10 K22 ["StandardizedFields"]
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 FORGPREP                         R7
       81 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       83 MOVE                             R13 R6
       84 MOVE                             R14 R11
       85 GETIMPORT                        R12 K25 [table.insert]
       87 CALL                             R12 2 0
       88 FORGLOOP                         R7 2 ; [-8]
       90 MOVE                             R5 R6
       91 SETTABLEKS                       R5 R4 K20 ["standardizedFields"]
       93 CALL                             R2 2 0
       94 GETUPVAL                         R2 8
       95 JUMPIFNOT                        R2 ; [+10]
       96 GETUPVAL                         R2 8
       97 LOADK                            R4 K26 ["thumbs_down"]
       98 DUPTABLE                         R5 K27 [{"requestId"}]
       99 GETTABLEKS                       R6 R0 K13 ["messageGuid"]
      101 SETTABLEKS                       R6 R5 K10 ["requestId"]
      103 NAMECALL                         R2 R2 K28 ["LogEventAsync"]
      105 CALL                             R2 3 0
      106 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K7 [{"requestId", "conversationId", "toolName", "toolType", "serverName", "clientName", "isThirdPartyRequest"}]
        1 GETTABLEKS                       R3 R0 K8 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K9 ["sessionId"]
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
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K10 ["assign"]
       32 MOVE                             R4 R2
       33 DUPTABLE                         R5 K12 [{"timestampMilliseconds"}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K13 ["getTimestampMilliseconds"]
       37 CALL                             R6 0 1
       38 SETTABLEKS                       R6 R5 K11 ["timestampMilliseconds"]
       40 CALL                             R3 2 1
       41 MOVE                             R1 R3
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K14 ["logEvent"]
       45 GETUPVAL                         R3 3
       46 DUPTABLE                         R4 K17 [{"customFields", "standardizedFields"}]
       47 SETTABLEKS                       R1 R4 K15 ["customFields"]
       49 NEWTABLE                         R6 0 0
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R7 R10 K18 ["StandardizedFields"]
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       59 MOVE                             R13 R6
       60 MOVE                             R14 R11
       61 GETIMPORT                        R12 K21 [table.insert]
       63 CALL                             R12 2 0
       64 FORGLOOP                         R7 2 ; [-8]
       66 MOVE                             R5 R6
       67 SETTABLEKS                       R5 R4 K16 ["standardizedFields"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R2 K11 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime", "serverName", "clientName", "isThirdPartyRequest"}]
        1 GETTABLEKS                       R3 R0 K12 ["messageGuid"]
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
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K13 ["assign"]
       48 MOVE                             R4 R2
       49 DUPTABLE                         R5 K15 [{"timestampMilliseconds"}]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K16 ["getTimestampMilliseconds"]
       53 CALL                             R6 0 1
       54 SETTABLEKS                       R6 R5 K14 ["timestampMilliseconds"]
       56 CALL                             R3 2 1
       57 MOVE                             R1 R3
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R2 R3 K17 ["logEvent"]
       61 GETUPVAL                         R3 3
       62 DUPTABLE                         R4 K20 [{"customFields", "standardizedFields"}]
       63 SETTABLEKS                       R1 R4 K18 ["customFields"]
       65 NEWTABLE                         R6 0 0
       67 GETUPVAL                         R10 4
       68 GETTABLEKS                       R7 R10 K21 ["StandardizedFields"]
       70 LOADNIL                          R8
       71 LOADNIL                          R9
       72 FORGPREP                         R7
       73 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       75 MOVE                             R13 R6
       76 MOVE                             R14 R11
       77 GETIMPORT                        R12 K24 [table.insert]
       79 CALL                             R12 2 0
       80 FORGLOOP                         R7 2 ; [-8]
       82 MOVE                             R5 R6
       83 SETTABLEKS                       R5 R4 K19 ["standardizedFields"]
       85 CALL                             R2 2 0
       86 RETURN                           R0 0

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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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
      151 CAPTURE                          UPVAL U6
      152 CAPTURE                          UPVAL U8
      153 DUPCLOSURE                       R22 K17 [PROTO_29]
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          UPVAL U37
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          UPVAL U6
      158 CAPTURE                          UPVAL U8
      159 CAPTURE                          UPVAL U38
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U4
      162 DUPCLOSURE                       R23 K18 [PROTO_30]
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          UPVAL U39
      165 CAPTURE                          UPVAL U2
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          UPVAL U8
      168 DUPCLOSURE                       R24 K19 [PROTO_31]
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          UPVAL U40
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U6
      173 CAPTURE                          UPVAL U8
      174 DUPCLOSURE                       R25 K20 [PROTO_32]
      175 CAPTURE                          UPVAL U0
      176 CAPTURE                          UPVAL U41
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          UPVAL U8
      180 DUPCLOSURE                       R26 K21 [PROTO_33]
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          UPVAL U42
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          UPVAL U8
      186 DUPCLOSURE                       R27 K22 [PROTO_34]
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U43
      189 CAPTURE                          UPVAL U2
      190 CAPTURE                          UPVAL U6
      191 CAPTURE                          UPVAL U8
      192 DUPCLOSURE                       R28 K23 [PROTO_35]
      193 CAPTURE                          UPVAL U0
      194 CAPTURE                          UPVAL U44
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U8
      198 DUPCLOSURE                       R29 K24 [PROTO_36]
      199 CAPTURE                          UPVAL U0
      200 CAPTURE                          UPVAL U45
      201 CAPTURE                          UPVAL U2
      202 CAPTURE                          UPVAL U3
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          UPVAL U46
      205 CAPTURE                          UPVAL U47
      206 DUPTABLE                         R30 K56 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logIntegrationEvent", "logExternalServerConnected", "logThreadCreated", "logThreadRenamed", "logThreadPinnedChanged", "logThreadDeleted", "logThreadDuplicated", "logThreadSwitched", "logPersistenceOperation", "getMessageGuid", "createMessageGuid"}]
      207 SETTABLEKS                       R1 R30 K25 ["logUserMessageSent"]
      209 SETTABLEKS                       R2 R30 K26 ["logAssistantMessageSent"]
      211 SETTABLEKS                       R3 R30 K27 ["logApiKeyAdded"]
      213 SETTABLEKS                       R4 R30 K28 ["logErrorEvent"]
      215 SETTABLEKS                       R16 R30 K29 ["logExternalAPIError"]
      217 SETTABLEKS                       R5 R30 K30 ["logThumbsUp"]
      219 SETTABLEKS                       R6 R30 K31 ["logThumbsDown"]
      221 SETTABLEKS                       R7 R30 K32 ["logInitialResponseLatency"]
      223 SETTABLEKS                       R8 R30 K33 ["logMarkdownError"]
      225 SETTABLEKS                       R9 R30 K34 ["logRetry"]
      227 SETTABLEKS                       R10 R30 K35 ["logStopGeneration"]
      229 SETTABLEKS                       R11 R30 K36 ["logToolStarted"]
      231 SETTABLEKS                       R12 R30 K37 ["logToolEnded"]
      233 SETTABLEKS                       R13 R30 K38 ["logToolConfirmationShown"]
      235 SETTABLEKS                       R14 R30 K39 ["logToolConfirmationResult"]
      237 SETTABLEKS                       R15 R30 K40 ["logRequestJourney"]
      239 SETTABLEKS                       R17 R30 K41 ["logMeshGenActivated"]
      241 SETTABLEKS                       R18 R30 K42 ["logMeshGenCompleted"]
      243 SETTABLEKS                       R19 R30 K43 ["logMeshGenPublishedAssets"]
      245 SETTABLEKS                       R20 R30 K44 ["logMeshGenMeshInserted"]
      247 SETTABLEKS                       R21 R30 K45 ["logIntegrationEvent"]
      249 SETTABLEKS                       R22 R30 K46 ["logExternalServerConnected"]
      251 GETUPVAL                         R32 5
      252 CALL                             R32 0 1
      253 JUMPIFNOT                        R32 ; [+2]
      254 MOVE                             R31 R23
      255 JUMP                             ; [+1]
      256 LOADNIL                          R31
      257 SETTABLEKS                       R31 R30 K47 ["logThreadCreated"]
      259 GETUPVAL                         R32 5
      260 CALL                             R32 0 1
      261 JUMPIFNOT                        R32 ; [+2]
      262 MOVE                             R31 R24
      263 JUMP                             ; [+1]
      264 LOADNIL                          R31
      265 SETTABLEKS                       R31 R30 K48 ["logThreadRenamed"]
      267 GETUPVAL                         R32 5
      268 CALL                             R32 0 1
      269 JUMPIFNOT                        R32 ; [+2]
      270 MOVE                             R31 R25
      271 JUMP                             ; [+1]
      272 LOADNIL                          R31
      273 SETTABLEKS                       R31 R30 K49 ["logThreadPinnedChanged"]
      275 GETUPVAL                         R32 5
      276 CALL                             R32 0 1
      277 JUMPIFNOT                        R32 ; [+2]
      278 MOVE                             R31 R26
      279 JUMP                             ; [+1]
      280 LOADNIL                          R31
      281 SETTABLEKS                       R31 R30 K50 ["logThreadDeleted"]
      283 GETUPVAL                         R32 5
      284 CALL                             R32 0 1
      285 JUMPIFNOT                        R32 ; [+2]
      286 MOVE                             R31 R27
      287 JUMP                             ; [+1]
      288 LOADNIL                          R31
      289 SETTABLEKS                       R31 R30 K51 ["logThreadDuplicated"]
      291 GETUPVAL                         R32 5
      292 CALL                             R32 0 1
      293 JUMPIFNOT                        R32 ; [+2]
      294 MOVE                             R31 R28
      295 JUMP                             ; [+1]
      296 LOADNIL                          R31
      297 SETTABLEKS                       R31 R30 K52 ["logThreadSwitched"]
      299 GETUPVAL                         R32 5
      300 CALL                             R32 0 1
      301 JUMPIFNOT                        R32 ; [+2]
      302 MOVE                             R31 R29
      303 JUMP                             ; [+1]
      304 LOADNIL                          R31
      305 SETTABLEKS                       R31 R30 K53 ["logPersistenceOperation"]
      307 GETUPVAL                         R31 48
      308 SETTABLEKS                       R31 R30 K54 ["getMessageGuid"]
      310 GETUPVAL                         R31 49
      311 SETTABLEKS                       R31 R30 K55 ["createMessageGuid"]
      313 RETURN                           R30 1

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
      102 GETTABLEKS                       R13 R14 K27 ["FFlagAssistantPersistConversations"]
      104 GETTABLEKS                       R16 R3 K21 ["Flags"]
      106 GETTABLEKS                       R15 R16 K26 ["Shared"]
      108 GETTABLEKS                       R14 R15 K28 ["FFlagAssistantMultipleChatSupport"]
      110 NEWTABLE                         R15 0 0
      112 DUPCLOSURE                       R16 K29 [PROTO_0]
      113 CAPTURE                          VAL R7
      114 DUPCLOSURE                       R17 K30 [PROTO_1]
      115 DUPCLOSURE                       R18 K31 [PROTO_2]
      116 CAPTURE                          VAL R6
      117 GETIMPORT                        R19 K34 [table.freeze]
      119 NEWTABLE                         R21 0 0
      121 GETTABLEKS                       R25 R6 K35 ["Backends"]
      123 GETTABLEKS                       R24 R25 K36 ["EventIngest"]
      125 FASTCALL2                        TABLE_INSERT R21 R24 ; [+4]
      127 MOVE                             R23 R21
      128 GETIMPORT                        R22 K38 [table.insert]
      130 CALL                             R22 2 0
      131 GETTABLEKS                       R25 R6 K35 ["Backends"]
      133 GETTABLEKS                       R24 R25 K39 ["Points"]
      135 FASTCALL2                        TABLE_INSERT R21 R24 ; [+4]
      137 MOVE                             R23 R21
      138 GETIMPORT                        R22 K38 [table.insert]
      140 CALL                             R22 2 0
      141 MOVE                             R20 R21
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K34 [table.freeze]
      145 DUPTABLE                         R21 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      146 LOADK                            R22 K45 ["StudioAssistantUserMessageSent"]
      147 SETTABLEKS                       R22 R21 K40 ["eventName"]
      149 NEWTABLE                         R22 0 1
      151 GETTABLEKS                       R24 R6 K35 ["Backends"]
      153 GETTABLEKS                       R23 R24 K46 ["RobloxTelemetryCounter"]
      155 SETLIST                          R22 R23 1 [1]
      157 SETTABLEKS                       R22 R21 K41 ["backends"]
      159 LOADK                            R22 K47 ["Incrementing count of user messages sent."]
      160 SETTABLEKS                       R22 R21 K42 ["description"]
      162 NEWTABLE                         R22 0 3
      164 LOADN                            R23 25
      165 LOADN                            R24 7
      166 LOADN                            R25 21
      167 SETLIST                          R22 R23 3 [1]
      169 SETTABLEKS                       R22 R21 K43 ["lastUpdated"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K34 [table.freeze]
      174 DUPTABLE                         R22 K49 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      175 LOADK                            R23 K50 ["CAPMessageSent"]
      176 SETTABLEKS                       R23 R22 K40 ["eventName"]
      178 SETTABLEKS                       R19 R22 K41 ["backends"]
      180 LOADK                            R23 K51 ["User message sent event with request ID."]
      181 SETTABLEKS                       R23 R22 K42 ["description"]
      183 MOVE                             R23 R10
      184 CALL                             R23 0 1
      185 SETTABLEKS                       R23 R22 K48 ["throttlingPercentage"]
      187 NEWTABLE                         R23 0 3
      189 LOADN                            R24 25
      190 LOADN                            R25 7
      191 LOADN                            R26 25
      192 SETLIST                          R23 R24 3 [1]
      194 SETTABLEKS                       R23 R22 K43 ["lastUpdated"]
      196 CALL                             R21 1 1
      197 GETIMPORT                        R22 K34 [table.freeze]
      199 DUPTABLE                         R23 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      200 LOADK                            R24 K52 ["CAPAPIKeyAdded"]
      201 SETTABLEKS                       R24 R23 K40 ["eventName"]
      203 SETTABLEKS                       R19 R23 K41 ["backends"]
      205 LOADK                            R24 K53 ["User added an API key for an LLM provider."]
      206 SETTABLEKS                       R24 R23 K42 ["description"]
      208 NEWTABLE                         R24 0 3
      210 LOADN                            R25 25
      211 LOADN                            R26 11
      212 LOADN                            R27 4
      213 SETLIST                          R24 R25 3 [1]
      215 SETTABLEKS                       R24 R23 K43 ["lastUpdated"]
      217 CALL                             R22 1 1
      218 GETIMPORT                        R23 K34 [table.freeze]
      220 DUPTABLE                         R24 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      221 LOADK                            R25 K54 ["CAPUserFeedbackThumbsUp"]
      222 SETTABLEKS                       R25 R24 K40 ["eventName"]
      224 SETTABLEKS                       R19 R24 K41 ["backends"]
      226 LOADK                            R25 K55 ["User feedback thumbs up event with message context."]
      227 SETTABLEKS                       R25 R24 K42 ["description"]
      229 NEWTABLE                         R25 0 3
      231 LOADN                            R26 25
      232 LOADN                            R27 7
      233 LOADN                            R28 25
      234 SETLIST                          R25 R26 3 [1]
      236 SETTABLEKS                       R25 R24 K43 ["lastUpdated"]
      238 CALL                             R23 1 1
      239 GETIMPORT                        R24 K34 [table.freeze]
      241 DUPTABLE                         R25 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      242 LOADK                            R26 K56 ["CAPUserFeedbackThumbsDown"]
      243 SETTABLEKS                       R26 R25 K40 ["eventName"]
      245 SETTABLEKS                       R19 R25 K41 ["backends"]
      247 LOADK                            R26 K57 ["User feedback thumbs down event with message context."]
      248 SETTABLEKS                       R26 R25 K42 ["description"]
      250 NEWTABLE                         R26 0 3
      252 LOADN                            R27 25
      253 LOADN                            R28 7
      254 LOADN                            R29 25
      255 SETLIST                          R26 R27 3 [1]
      257 SETTABLEKS                       R26 R25 K43 ["lastUpdated"]
      259 CALL                             R24 1 1
      260 GETIMPORT                        R25 K34 [table.freeze]
      262 DUPTABLE                         R26 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      263 LOADK                            R27 K58 ["StudioAssistantThumbsUp"]
      264 SETTABLEKS                       R27 R26 K40 ["eventName"]
      266 NEWTABLE                         R27 0 1
      268 GETTABLEKS                       R29 R6 K35 ["Backends"]
      270 GETTABLEKS                       R28 R29 K46 ["RobloxTelemetryCounter"]
      272 SETLIST                          R27 R28 1 [1]
      274 SETTABLEKS                       R27 R26 K41 ["backends"]
      276 LOADK                            R27 K59 ["Incrementing count of thumbs up events."]
      277 SETTABLEKS                       R27 R26 K42 ["description"]
      279 NEWTABLE                         R27 0 3
      281 LOADN                            R28 25
      282 LOADN                            R29 7
      283 LOADN                            R30 21
      284 SETLIST                          R27 R28 3 [1]
      286 SETTABLEKS                       R27 R26 K43 ["lastUpdated"]
      288 CALL                             R25 1 1
      289 GETIMPORT                        R26 K34 [table.freeze]
      291 DUPTABLE                         R27 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      292 LOADK                            R28 K60 ["StudioAssistantThumbsDown"]
      293 SETTABLEKS                       R28 R27 K40 ["eventName"]
      295 NEWTABLE                         R28 0 1
      297 GETTABLEKS                       R30 R6 K35 ["Backends"]
      299 GETTABLEKS                       R29 R30 K46 ["RobloxTelemetryCounter"]
      301 SETLIST                          R28 R29 1 [1]
      303 SETTABLEKS                       R28 R27 K41 ["backends"]
      305 LOADK                            R28 K61 ["Incrementing count of thumbs down events."]
      306 SETTABLEKS                       R28 R27 K42 ["description"]
      308 NEWTABLE                         R28 0 3
      310 LOADN                            R29 25
      311 LOADN                            R30 7
      312 LOADN                            R31 21
      313 SETLIST                          R28 R29 3 [1]
      315 SETTABLEKS                       R28 R27 K43 ["lastUpdated"]
      317 CALL                             R26 1 1
      318 GETIMPORT                        R27 K34 [table.freeze]
      320 DUPTABLE                         R28 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      321 LOADK                            R29 K62 ["StudioAssistantInitialResponseLatency"]
      322 SETTABLEKS                       R29 R28 K40 ["eventName"]
      324 NEWTABLE                         R29 0 1
      326 GETTABLEKS                       R31 R6 K35 ["Backends"]
      328 GETTABLEKS                       R30 R31 K63 ["RobloxTelemetryStat"]
      330 SETLIST                          R29 R30 1 [1]
      332 SETTABLEKS                       R29 R28 K41 ["backends"]
      334 LOADK                            R29 K64 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      335 SETTABLEKS                       R29 R28 K42 ["description"]
      337 NEWTABLE                         R29 0 3
      339 LOADN                            R30 25
      340 LOADN                            R31 7
      341 LOADN                            R32 21
      342 SETLIST                          R29 R30 3 [1]
      344 SETTABLEKS                       R29 R28 K43 ["lastUpdated"]
      346 CALL                             R27 1 1
      347 GETIMPORT                        R28 K34 [table.freeze]
      349 DUPTABLE                         R29 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      350 LOADK                            R30 K65 ["StudioAssistantRequestJourney"]
      351 SETTABLEKS                       R30 R29 K40 ["eventName"]
      353 NEWTABLE                         R30 0 1
      355 GETTABLEKS                       R32 R6 K35 ["Backends"]
      357 GETTABLEKS                       R31 R32 K63 ["RobloxTelemetryStat"]
      359 SETLIST                          R30 R31 1 [1]
      361 SETTABLEKS                       R30 R29 K41 ["backends"]
      363 LOADK                            R30 K66 ["User request journey duration in seconds. Time between sending first message to request ended."]
      364 SETTABLEKS                       R30 R29 K42 ["description"]
      366 NEWTABLE                         R30 0 3
      368 LOADN                            R31 25
      369 LOADN                            R32 10
      370 LOADN                            R33 22
      371 SETLIST                          R30 R31 3 [1]
      373 SETTABLEKS                       R30 R29 K43 ["lastUpdated"]
      375 CALL                             R28 1 1
      376 GETIMPORT                        R29 K34 [table.freeze]
      378 DUPTABLE                         R30 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      379 LOADK                            R31 K67 ["CAPRequestJourney"]
      380 SETTABLEKS                       R31 R30 K40 ["eventName"]
      382 SETTABLEKS                       R19 R30 K41 ["backends"]
      384 LOADK                            R31 K68 ["User request journey detail."]
      385 SETTABLEKS                       R31 R30 K42 ["description"]
      387 NEWTABLE                         R31 0 3
      389 LOADN                            R32 25
      390 LOADN                            R33 11
      391 LOADN                            R34 1
      392 SETLIST                          R31 R32 3 [1]
      394 SETTABLEKS                       R31 R30 K43 ["lastUpdated"]
      396 CALL                             R29 1 1
      397 GETIMPORT                        R30 K34 [table.freeze]
      399 DUPTABLE                         R31 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      400 LOADK                            R32 K69 ["StudioAssistantErrorEvent"]
      401 SETTABLEKS                       R32 R31 K40 ["eventName"]
      403 NEWTABLE                         R32 0 1
      405 GETTABLEKS                       R34 R6 K35 ["Backends"]
      407 GETTABLEKS                       R33 R34 K46 ["RobloxTelemetryCounter"]
      409 SETLIST                          R32 R33 1 [1]
      411 SETTABLEKS                       R32 R31 K41 ["backends"]
      413 LOADK                            R32 K70 ["Incrementing count of error events with error type attached."]
      414 SETTABLEKS                       R32 R31 K42 ["description"]
      416 NEWTABLE                         R32 0 3
      418 LOADN                            R33 25
      419 LOADN                            R34 7
      420 LOADN                            R35 21
      421 SETLIST                          R32 R33 3 [1]
      423 SETTABLEKS                       R32 R31 K43 ["lastUpdated"]
      425 CALL                             R30 1 1
      426 GETIMPORT                        R31 K34 [table.freeze]
      428 DUPTABLE                         R32 K49 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      429 LOADK                            R33 K71 ["StudioAssistantMarkdownError"]
      430 SETTABLEKS                       R33 R32 K40 ["eventName"]
      432 NEWTABLE                         R33 0 1
      434 GETTABLEKS                       R35 R6 K35 ["Backends"]
      436 GETTABLEKS                       R34 R35 K39 ["Points"]
      438 SETLIST                          R33 R34 1 [1]
      440 SETTABLEKS                       R33 R32 K41 ["backends"]
      442 LOADK                            R33 K72 ["Collection of markdown error events, with markdown attached."]
      443 SETTABLEKS                       R33 R32 K42 ["description"]
      445 MOVE                             R33 R9
      446 CALL                             R33 0 1
      447 SETTABLEKS                       R33 R32 K48 ["throttlingPercentage"]
      449 NEWTABLE                         R33 0 3
      451 LOADN                            R34 25
      452 LOADN                            R35 7
      453 LOADN                            R36 21
      454 SETLIST                          R33 R34 3 [1]
      456 SETTABLEKS                       R33 R32 K43 ["lastUpdated"]
      458 CALL                             R31 1 1
      459 GETIMPORT                        R32 K34 [table.freeze]
      461 DUPTABLE                         R33 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      462 LOADK                            R34 K73 ["CAPMessageResubmitted"]
      463 SETTABLEKS                       R34 R33 K40 ["eventName"]
      465 SETTABLEKS                       R19 R33 K41 ["backends"]
      467 LOADK                            R34 K74 ["User message retry/resubmit event with request ID."]
      468 SETTABLEKS                       R34 R33 K42 ["description"]
      470 NEWTABLE                         R34 0 3
      472 LOADN                            R35 25
      473 LOADN                            R36 8
      474 LOADN                            R37 7
      475 SETLIST                          R34 R35 3 [1]
      477 SETTABLEKS                       R34 R33 K43 ["lastUpdated"]
      479 CALL                             R32 1 1
      480 GETIMPORT                        R33 K34 [table.freeze]
      482 DUPTABLE                         R34 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      483 LOADK                            R35 K75 ["CAPStopGeneration"]
      484 SETTABLEKS                       R35 R34 K40 ["eventName"]
      486 SETTABLEKS                       R19 R34 K41 ["backends"]
      488 LOADK                            R35 K76 ["User stop generation event with request ID."]
      489 SETTABLEKS                       R35 R34 K42 ["description"]
      491 NEWTABLE                         R35 0 3
      493 LOADN                            R36 25
      494 LOADN                            R37 8
      495 LOADN                            R38 7
      496 SETLIST                          R35 R36 3 [1]
      498 SETTABLEKS                       R35 R34 K43 ["lastUpdated"]
      500 CALL                             R33 1 1
      501 GETIMPORT                        R34 K34 [table.freeze]
      503 DUPTABLE                         R35 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      504 LOADK                            R36 K77 ["CAPToolEnded"]
      505 SETTABLEKS                       R36 R35 K40 ["eventName"]
      507 SETTABLEKS                       R19 R35 K41 ["backends"]
      509 LOADK                            R36 K78 ["Tool invocation ended event with request ID and tool name"]
      510 SETTABLEKS                       R36 R35 K42 ["description"]
      512 NEWTABLE                         R36 0 3
      514 LOADN                            R37 25
      515 LOADN                            R38 7
      516 LOADN                            R39 21
      517 SETLIST                          R36 R37 3 [1]
      519 SETTABLEKS                       R36 R35 K43 ["lastUpdated"]
      521 CALL                             R34 1 1
      522 GETIMPORT                        R35 K34 [table.freeze]
      524 DUPTABLE                         R36 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      525 LOADK                            R37 K79 ["CAPToolStarted"]
      526 SETTABLEKS                       R37 R36 K40 ["eventName"]
      528 SETTABLEKS                       R19 R36 K41 ["backends"]
      530 LOADK                            R37 K80 ["Tool invocation started event with request ID and tool name."]
      531 SETTABLEKS                       R37 R36 K42 ["description"]
      533 NEWTABLE                         R37 0 3
      535 LOADN                            R38 25
      536 LOADN                            R39 8
      537 LOADN                            R40 7
      538 SETLIST                          R37 R38 3 [1]
      540 SETTABLEKS                       R37 R36 K43 ["lastUpdated"]
      542 CALL                             R35 1 1
      543 GETIMPORT                        R36 K34 [table.freeze]
      545 DUPTABLE                         R37 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      546 LOADK                            R38 K81 ["CAPToolConfirmationShown"]
      547 SETTABLEKS                       R38 R37 K40 ["eventName"]
      549 SETTABLEKS                       R19 R37 K41 ["backends"]
      551 LOADK                            R38 K82 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      552 SETTABLEKS                       R38 R37 K42 ["description"]
      554 NEWTABLE                         R38 0 3
      556 LOADN                            R39 25
      557 LOADN                            R40 9
      558 LOADN                            R41 19
      559 SETLIST                          R38 R39 3 [1]
      561 SETTABLEKS                       R38 R37 K43 ["lastUpdated"]
      563 CALL                             R36 1 1
      564 GETIMPORT                        R37 K34 [table.freeze]
      566 DUPTABLE                         R38 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      567 LOADK                            R39 K83 ["CAPToolConfirmationResult"]
      568 SETTABLEKS                       R39 R38 K40 ["eventName"]
      570 SETTABLEKS                       R19 R38 K41 ["backends"]
      572 LOADK                            R39 K84 ["Tool confirmation dialog result event with request ID and user choice."]
      573 SETTABLEKS                       R39 R38 K42 ["description"]
      575 NEWTABLE                         R39 0 3
      577 LOADN                            R40 25
      578 LOADN                            R41 9
      579 LOADN                            R42 19
      580 SETLIST                          R39 R40 3 [1]
      582 SETTABLEKS                       R39 R38 K43 ["lastUpdated"]
      584 CALL                             R37 1 1
      585 GETIMPORT                        R38 K34 [table.freeze]
      587 DUPTABLE                         R39 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      588 LOADK                            R40 K85 ["CAPExternalAPIError"]
      589 SETTABLEKS                       R40 R39 K40 ["eventName"]
      591 SETTABLEKS                       R19 R39 K41 ["backends"]
      593 LOADK                            R40 K86 ["External LLM API error event with request ID, model, and HTTP status code."]
      594 SETTABLEKS                       R40 R39 K42 ["description"]
      596 NEWTABLE                         R40 0 3
      598 LOADN                            R41 25
      599 LOADN                            R42 12
      600 LOADN                            R43 16
      601 SETLIST                          R40 R41 3 [1]
      603 SETTABLEKS                       R40 R39 K43 ["lastUpdated"]
      605 CALL                             R38 1 1
      606 GETIMPORT                        R39 K34 [table.freeze]
      608 DUPTABLE                         R40 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      609 LOADK                            R41 K87 ["CAPMeshGenActivated"]
      610 SETTABLEKS                       R41 R40 K40 ["eventName"]
      612 NEWTABLE                         R41 0 1
      614 GETTABLEKS                       R43 R6 K35 ["Backends"]
      616 GETTABLEKS                       R42 R43 K46 ["RobloxTelemetryCounter"]
      618 SETLIST                          R41 R42 1 [1]
      620 SETTABLEKS                       R41 R40 K41 ["backends"]
      622 LOADK                            R41 K88 ["Count of MeshGen tool activations."]
      623 SETTABLEKS                       R41 R40 K42 ["description"]
      625 NEWTABLE                         R41 0 3
      627 LOADN                            R42 26
      628 LOADN                            R43 2
      629 LOADN                            R44 6
      630 SETLIST                          R41 R42 3 [1]
      632 SETTABLEKS                       R41 R40 K43 ["lastUpdated"]
      634 CALL                             R39 1 1
      635 GETIMPORT                        R40 K34 [table.freeze]
      637 DUPTABLE                         R41 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      638 LOADK                            R42 K89 ["CAPMeshGenCompletedSuccess"]
      639 SETTABLEKS                       R42 R41 K40 ["eventName"]
      641 NEWTABLE                         R42 0 1
      643 GETTABLEKS                       R44 R6 K35 ["Backends"]
      645 GETTABLEKS                       R43 R44 K46 ["RobloxTelemetryCounter"]
      647 SETLIST                          R42 R43 1 [1]
      649 SETTABLEKS                       R42 R41 K41 ["backends"]
      651 LOADK                            R42 K90 ["Count of successful MeshGen completions."]
      652 SETTABLEKS                       R42 R41 K42 ["description"]
      654 NEWTABLE                         R42 0 3
      656 LOADN                            R43 26
      657 LOADN                            R44 2
      658 LOADN                            R45 6
      659 SETLIST                          R42 R43 3 [1]
      661 SETTABLEKS                       R42 R41 K43 ["lastUpdated"]
      663 CALL                             R40 1 1
      664 GETIMPORT                        R41 K34 [table.freeze]
      666 DUPTABLE                         R42 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      667 LOADK                            R43 K91 ["CAPMeshGenCompletedFailure"]
      668 SETTABLEKS                       R43 R42 K40 ["eventName"]
      670 NEWTABLE                         R43 0 1
      672 GETTABLEKS                       R45 R6 K35 ["Backends"]
      674 GETTABLEKS                       R44 R45 K46 ["RobloxTelemetryCounter"]
      676 SETLIST                          R43 R44 1 [1]
      678 SETTABLEKS                       R43 R42 K41 ["backends"]
      680 LOADK                            R43 K92 ["Count of failed MeshGen completions."]
      681 SETTABLEKS                       R43 R42 K42 ["description"]
      683 NEWTABLE                         R43 0 3
      685 LOADN                            R44 26
      686 LOADN                            R45 2
      687 LOADN                            R46 6
      688 SETLIST                          R43 R44 3 [1]
      690 SETTABLEKS                       R43 R42 K43 ["lastUpdated"]
      692 CALL                             R41 1 1
      693 GETIMPORT                        R42 K34 [table.freeze]
      695 DUPTABLE                         R43 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      696 LOADK                            R44 K93 ["CAPMeshGenCompleted"]
      697 SETTABLEKS                       R44 R43 K40 ["eventName"]
      699 SETTABLEKS                       R19 R43 K41 ["backends"]
      701 LOADK                            R44 K94 ["MeshGen generation completed event with details."]
      702 SETTABLEKS                       R44 R43 K42 ["description"]
      704 NEWTABLE                         R44 0 3
      706 LOADN                            R45 26
      707 LOADN                            R46 2
      708 LOADN                            R47 6
      709 SETLIST                          R44 R45 3 [1]
      711 SETTABLEKS                       R44 R43 K43 ["lastUpdated"]
      713 CALL                             R42 1 1
      714 GETIMPORT                        R43 K34 [table.freeze]
      716 DUPTABLE                         R44 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      717 LOADK                            R45 K95 ["CAPMeshGenPublishedAssetsSuccess"]
      718 SETTABLEKS                       R45 R44 K40 ["eventName"]
      720 NEWTABLE                         R45 0 1
      722 GETTABLEKS                       R47 R6 K35 ["Backends"]
      724 GETTABLEKS                       R46 R47 K46 ["RobloxTelemetryCounter"]
      726 SETLIST                          R45 R46 1 [1]
      728 SETTABLEKS                       R45 R44 K41 ["backends"]
      730 LOADK                            R45 K96 ["Count of successful MeshGen asset publications."]
      731 SETTABLEKS                       R45 R44 K42 ["description"]
      733 NEWTABLE                         R45 0 3
      735 LOADN                            R46 26
      736 LOADN                            R47 2
      737 LOADN                            R48 6
      738 SETLIST                          R45 R46 3 [1]
      740 SETTABLEKS                       R45 R44 K43 ["lastUpdated"]
      742 CALL                             R43 1 1
      743 GETIMPORT                        R44 K34 [table.freeze]
      745 DUPTABLE                         R45 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      746 LOADK                            R46 K97 ["CAPMeshGenPublishedAssetsFailure"]
      747 SETTABLEKS                       R46 R45 K40 ["eventName"]
      749 NEWTABLE                         R46 0 1
      751 GETTABLEKS                       R48 R6 K35 ["Backends"]
      753 GETTABLEKS                       R47 R48 K46 ["RobloxTelemetryCounter"]
      755 SETLIST                          R46 R47 1 [1]
      757 SETTABLEKS                       R46 R45 K41 ["backends"]
      759 LOADK                            R46 K98 ["Count of failed MeshGen asset publications."]
      760 SETTABLEKS                       R46 R45 K42 ["description"]
      762 NEWTABLE                         R46 0 3
      764 LOADN                            R47 26
      765 LOADN                            R48 2
      766 LOADN                            R49 6
      767 SETLIST                          R46 R47 3 [1]
      769 SETTABLEKS                       R46 R45 K43 ["lastUpdated"]
      771 CALL                             R44 1 1
      772 GETIMPORT                        R45 K34 [table.freeze]
      774 DUPTABLE                         R46 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      775 LOADK                            R47 K99 ["CAPMeshGenPublishedAssets"]
      776 SETTABLEKS                       R47 R46 K40 ["eventName"]
      778 SETTABLEKS                       R19 R46 K41 ["backends"]
      780 LOADK                            R47 K100 ["MeshGen assets published event with details."]
      781 SETTABLEKS                       R47 R46 K42 ["description"]
      783 NEWTABLE                         R47 0 3
      785 LOADN                            R48 26
      786 LOADN                            R49 2
      787 LOADN                            R50 6
      788 SETLIST                          R47 R48 3 [1]
      790 SETTABLEKS                       R47 R46 K43 ["lastUpdated"]
      792 CALL                             R45 1 1
      793 GETIMPORT                        R46 K34 [table.freeze]
      795 DUPTABLE                         R47 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      796 LOADK                            R48 K101 ["CAPMeshGenMeshInsertedSuccess"]
      797 SETTABLEKS                       R48 R47 K40 ["eventName"]
      799 NEWTABLE                         R48 0 1
      801 GETTABLEKS                       R50 R6 K35 ["Backends"]
      803 GETTABLEKS                       R49 R50 K46 ["RobloxTelemetryCounter"]
      805 SETLIST                          R48 R49 1 [1]
      807 SETTABLEKS                       R48 R47 K41 ["backends"]
      809 LOADK                            R48 K102 ["Count of successful MeshGen mesh insertions."]
      810 SETTABLEKS                       R48 R47 K42 ["description"]
      812 NEWTABLE                         R48 0 3
      814 LOADN                            R49 26
      815 LOADN                            R50 2
      816 LOADN                            R51 6
      817 SETLIST                          R48 R49 3 [1]
      819 SETTABLEKS                       R48 R47 K43 ["lastUpdated"]
      821 CALL                             R46 1 1
      822 GETIMPORT                        R47 K34 [table.freeze]
      824 DUPTABLE                         R48 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      825 LOADK                            R49 K103 ["CAPMeshGenMeshInsertedFailure"]
      826 SETTABLEKS                       R49 R48 K40 ["eventName"]
      828 NEWTABLE                         R49 0 1
      830 GETTABLEKS                       R51 R6 K35 ["Backends"]
      832 GETTABLEKS                       R50 R51 K46 ["RobloxTelemetryCounter"]
      834 SETLIST                          R49 R50 1 [1]
      836 SETTABLEKS                       R49 R48 K41 ["backends"]
      838 LOADK                            R49 K104 ["Count of failed MeshGen mesh insertions."]
      839 SETTABLEKS                       R49 R48 K42 ["description"]
      841 NEWTABLE                         R49 0 3
      843 LOADN                            R50 26
      844 LOADN                            R51 2
      845 LOADN                            R52 6
      846 SETLIST                          R49 R50 3 [1]
      848 SETTABLEKS                       R49 R48 K43 ["lastUpdated"]
      850 CALL                             R47 1 1
      851 GETIMPORT                        R48 K34 [table.freeze]
      853 DUPTABLE                         R49 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      854 LOADK                            R50 K105 ["CAPMeshGenMeshInserted"]
      855 SETTABLEKS                       R50 R49 K40 ["eventName"]
      857 SETTABLEKS                       R19 R49 K41 ["backends"]
      859 LOADK                            R50 K106 ["MeshGen mesh inserted event with details."]
      860 SETTABLEKS                       R50 R49 K42 ["description"]
      862 NEWTABLE                         R50 0 3
      864 LOADN                            R51 26
      865 LOADN                            R52 2
      866 LOADN                            R53 6
      867 SETLIST                          R50 R51 3 [1]
      869 SETTABLEKS                       R50 R49 K43 ["lastUpdated"]
      871 CALL                             R48 1 1
      872 GETIMPORT                        R49 K34 [table.freeze]
      874 DUPTABLE                         R50 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      875 LOADK                            R51 K107 ["StudioAssistantIntegrationAction"]
      876 SETTABLEKS                       R51 R50 K40 ["eventName"]
      878 SETTABLEKS                       R19 R50 K41 ["backends"]
      880 LOADK                            R51 K108 ["Integration event with action, label, and URL."]
      881 SETTABLEKS                       R51 R50 K42 ["description"]
      883 NEWTABLE                         R51 0 3
      885 LOADN                            R52 26
      886 LOADN                            R53 2
      887 LOADN                            R54 3
      888 SETLIST                          R51 R52 3 [1]
      890 SETTABLEKS                       R51 R50 K43 ["lastUpdated"]
      892 CALL                             R49 1 1
      893 GETIMPORT                        R50 K34 [table.freeze]
      895 DUPTABLE                         R51 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      896 LOADK                            R52 K109 ["StudioAssistantExternalServerConnectedEvent"]
      897 SETTABLEKS                       R52 R51 K40 ["eventName"]
      899 SETTABLEKS                       R19 R51 K41 ["backends"]
      901 LOADK                            R52 K110 ["External server connected event with session ID"]
      902 SETTABLEKS                       R52 R51 K42 ["description"]
      904 NEWTABLE                         R52 0 3
      906 LOADN                            R53 26
      907 LOADN                            R54 2
      908 LOADN                            R55 25
      909 SETLIST                          R52 R53 3 [1]
      911 SETTABLEKS                       R52 R51 K43 ["lastUpdated"]
      913 CALL                             R50 1 1
      914 GETIMPORT                        R51 K34 [table.freeze]
      916 DUPTABLE                         R52 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      917 LOADK                            R53 K111 ["StudioAssistantExternalServerConnectedCounter"]
      918 SETTABLEKS                       R53 R52 K40 ["eventName"]
      920 NEWTABLE                         R53 0 1
      922 GETTABLEKS                       R55 R6 K35 ["Backends"]
      924 GETTABLEKS                       R54 R55 K46 ["RobloxTelemetryCounter"]
      926 SETLIST                          R53 R54 1 [1]
      928 SETTABLEKS                       R53 R52 K41 ["backends"]
      930 LOADK                            R53 K110 ["External server connected event with session ID"]
      931 SETTABLEKS                       R53 R52 K42 ["description"]
      933 NEWTABLE                         R53 0 3
      935 LOADN                            R54 26
      936 LOADN                            R55 2
      937 LOADN                            R56 25
      938 SETLIST                          R53 R54 3 [1]
      940 SETTABLEKS                       R53 R52 K43 ["lastUpdated"]
      942 CALL                             R51 1 1
      943 GETIMPORT                        R52 K34 [table.freeze]
      945 DUPTABLE                         R53 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      946 LOADK                            R54 K112 ["StudioAssistantThreadCreated"]
      947 SETTABLEKS                       R54 R53 K40 ["eventName"]
      949 SETTABLEKS                       R19 R53 K41 ["backends"]
      951 LOADK                            R54 K113 ["Thread created event with details."]
      952 SETTABLEKS                       R54 R53 K42 ["description"]
      954 NEWTABLE                         R54 0 3
      956 LOADN                            R55 26
      957 LOADN                            R56 3
      958 LOADN                            R57 10
      959 SETLIST                          R54 R55 3 [1]
      961 SETTABLEKS                       R54 R53 K43 ["lastUpdated"]
      963 CALL                             R52 1 1
      964 GETIMPORT                        R53 K34 [table.freeze]
      966 DUPTABLE                         R54 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      967 LOADK                            R55 K114 ["StudioAssistantThreadRenamed"]
      968 SETTABLEKS                       R55 R54 K40 ["eventName"]
      970 SETTABLEKS                       R19 R54 K41 ["backends"]
      972 LOADK                            R55 K115 ["Thread named event with details."]
      973 SETTABLEKS                       R55 R54 K42 ["description"]
      975 NEWTABLE                         R55 0 3
      977 LOADN                            R56 26
      978 LOADN                            R57 3
      979 LOADN                            R58 10
      980 SETLIST                          R55 R56 3 [1]
      982 SETTABLEKS                       R55 R54 K43 ["lastUpdated"]
      984 CALL                             R53 1 1
      985 GETIMPORT                        R54 K34 [table.freeze]
      987 DUPTABLE                         R55 K44 [{"eventName", "backends", "description", "lastUpdated"}]
      988 LOADK                            R56 K116 ["StudioAssistantThreadPinnedChanged"]
      989 SETTABLEKS                       R56 R55 K40 ["eventName"]
      991 SETTABLEKS                       R19 R55 K41 ["backends"]
      993 LOADK                            R56 K117 ["Thread pinned changed event with details."]
      994 SETTABLEKS                       R56 R55 K42 ["description"]
      996 NEWTABLE                         R56 0 3
      998 LOADN                            R57 26
      999 LOADN                            R58 3
     1000 LOADN                            R59 10
     1001 SETLIST                          R56 R57 3 [1]
     1003 SETTABLEKS                       R56 R55 K43 ["lastUpdated"]
     1005 CALL                             R54 1 1
     1006 GETIMPORT                        R55 K34 [table.freeze]
     1008 DUPTABLE                         R56 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1009 LOADK                            R57 K118 ["StudioAssistantThreadDeleted"]
     1010 SETTABLEKS                       R57 R56 K40 ["eventName"]
     1012 SETTABLEKS                       R19 R56 K41 ["backends"]
     1014 LOADK                            R57 K119 ["Thread deleted event with details."]
     1015 SETTABLEKS                       R57 R56 K42 ["description"]
     1017 NEWTABLE                         R57 0 3
     1019 LOADN                            R58 26
     1020 LOADN                            R59 3
     1021 LOADN                            R60 10
     1022 SETLIST                          R57 R58 3 [1]
     1024 SETTABLEKS                       R57 R56 K43 ["lastUpdated"]
     1026 CALL                             R55 1 1
     1027 GETIMPORT                        R56 K34 [table.freeze]
     1029 DUPTABLE                         R57 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1030 LOADK                            R58 K120 ["StudioAssistantThreadDuplicated"]
     1031 SETTABLEKS                       R58 R57 K40 ["eventName"]
     1033 SETTABLEKS                       R19 R57 K41 ["backends"]
     1035 LOADK                            R58 K121 ["Thread duplicated event with details."]
     1036 SETTABLEKS                       R58 R57 K42 ["description"]
     1038 NEWTABLE                         R58 0 3
     1040 LOADN                            R59 26
     1041 LOADN                            R60 3
     1042 LOADN                            R61 10
     1043 SETLIST                          R58 R59 3 [1]
     1045 SETTABLEKS                       R58 R57 K43 ["lastUpdated"]
     1047 CALL                             R56 1 1
     1048 GETIMPORT                        R57 K34 [table.freeze]
     1050 DUPTABLE                         R58 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1051 LOADK                            R59 K122 ["StudioAssistantThreadSwitched"]
     1052 SETTABLEKS                       R59 R58 K40 ["eventName"]
     1054 SETTABLEKS                       R19 R58 K41 ["backends"]
     1056 LOADK                            R59 K123 ["Thread switched event with details."]
     1057 SETTABLEKS                       R59 R58 K42 ["description"]
     1059 NEWTABLE                         R59 0 3
     1061 LOADN                            R60 26
     1062 LOADN                            R61 3
     1063 LOADN                            R62 10
     1064 SETLIST                          R59 R60 3 [1]
     1066 SETTABLEKS                       R59 R58 K43 ["lastUpdated"]
     1068 CALL                             R57 1 1
     1069 GETIMPORT                        R58 K34 [table.freeze]
     1071 DUPTABLE                         R59 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1072 LOADK                            R60 K124 ["StudioAssistantPersistenceSuccess"]
     1073 SETTABLEKS                       R60 R59 K40 ["eventName"]
     1075 NEWTABLE                         R60 0 1
     1077 GETTABLEKS                       R62 R6 K35 ["Backends"]
     1079 GETTABLEKS                       R61 R62 K46 ["RobloxTelemetryCounter"]
     1081 SETLIST                          R60 R61 1 [1]
     1083 SETTABLEKS                       R60 R59 K41 ["backends"]
     1085 LOADK                            R60 K125 ["Count of successful persistence operations."]
     1086 SETTABLEKS                       R60 R59 K42 ["description"]
     1088 NEWTABLE                         R60 0 3
     1090 LOADN                            R61 26
     1091 LOADN                            R62 3
     1092 LOADN                            R63 10
     1093 SETLIST                          R60 R61 3 [1]
     1095 SETTABLEKS                       R60 R59 K43 ["lastUpdated"]
     1097 CALL                             R58 1 1
     1098 GETIMPORT                        R59 K34 [table.freeze]
     1100 DUPTABLE                         R60 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1101 LOADK                            R61 K126 ["StudioAssistantPersistenceFailure"]
     1102 SETTABLEKS                       R61 R60 K40 ["eventName"]
     1104 NEWTABLE                         R61 0 1
     1106 GETTABLEKS                       R63 R6 K35 ["Backends"]
     1108 GETTABLEKS                       R62 R63 K46 ["RobloxTelemetryCounter"]
     1110 SETLIST                          R61 R62 1 [1]
     1112 SETTABLEKS                       R61 R60 K41 ["backends"]
     1114 LOADK                            R61 K127 ["Count of failed persistence operations."]
     1115 SETTABLEKS                       R61 R60 K42 ["description"]
     1117 NEWTABLE                         R61 0 3
     1119 LOADN                            R62 26
     1120 LOADN                            R63 3
     1121 LOADN                            R64 10
     1122 SETLIST                          R61 R62 3 [1]
     1124 SETTABLEKS                       R61 R60 K43 ["lastUpdated"]
     1126 CALL                             R59 1 1
     1127 GETIMPORT                        R60 K34 [table.freeze]
     1129 DUPTABLE                         R61 K44 [{"eventName", "backends", "description", "lastUpdated"}]
     1130 LOADK                            R62 K128 ["StudioAssistantPersistenceLatencyMs"]
     1131 SETTABLEKS                       R62 R61 K40 ["eventName"]
     1133 NEWTABLE                         R62 0 1
     1135 GETTABLEKS                       R64 R6 K35 ["Backends"]
     1137 GETTABLEKS                       R63 R64 K63 ["RobloxTelemetryStat"]
     1139 SETLIST                          R62 R63 1 [1]
     1141 SETTABLEKS                       R62 R61 K41 ["backends"]
     1143 LOADK                            R62 K129 ["Persistence operation latency in milliseconds."]
     1144 SETTABLEKS                       R62 R61 K42 ["description"]
     1146 NEWTABLE                         R62 0 3
     1148 LOADN                            R63 26
     1149 LOADN                            R64 3
     1150 LOADN                            R65 10
     1151 SETLIST                          R62 R63 3 [1]
     1153 SETTABLEKS                       R62 R61 K43 ["lastUpdated"]
     1155 CALL                             R60 1 1
     1156 DUPCLOSURE                       R61 K130 [PROTO_3]
     1157 CAPTURE                          VAL R13
     1158 CAPTURE                          VAL R15
     1159 DUPCLOSURE                       R62 K131 [PROTO_4]
     1160 CAPTURE                          VAL R13
     1161 CAPTURE                          VAL R15
     1162 CAPTURE                          VAL R1
     1163 DUPCLOSURE                       R63 K132 [PROTO_5]
     1164 CAPTURE                          VAL R4
     1165 CAPTURE                          VAL R8
     1166 MOVE                             R64 R11
     1167 CALL                             R64 0 1
     1168 GETTABLEKS                       R65 R5 K133 ["new"]
     1170 MOVE                             R66 R2
     1171 MOVE                             R67 R12
     1172 CALL                             R67 0 -1
     1173 CALL                             R65 -1 1
     1174 DUPCLOSURE                       R66 K134 [PROTO_6]
     1175 CAPTURE                          VAL R65
     1176 CAPTURE                          VAL R64
     1177 DUPCLOSURE                       R67 K135 [PROTO_7]
     1178 CAPTURE                          VAL R4
     1179 CAPTURE                          VAL R65
     1180 CAPTURE                          VAL R64
     1181 DUPCLOSURE                       R68 K136 [PROTO_37]
     1182 CAPTURE                          VAL R6
     1183 CAPTURE                          VAL R20
     1184 CAPTURE                          VAL R4
     1185 CAPTURE                          VAL R65
     1186 CAPTURE                          VAL R64
     1187 CAPTURE                          VAL R14
     1188 CAPTURE                          VAL R8
     1189 CAPTURE                          VAL R21
     1190 CAPTURE                          VAL R7
     1191 CAPTURE                          VAL R22
     1192 CAPTURE                          VAL R30
     1193 CAPTURE                          VAL R25
     1194 CAPTURE                          VAL R23
     1195 CAPTURE                          VAL R26
     1196 CAPTURE                          VAL R24
     1197 CAPTURE                          VAL R27
     1198 CAPTURE                          VAL R31
     1199 CAPTURE                          VAL R32
     1200 CAPTURE                          VAL R33
     1201 CAPTURE                          VAL R35
     1202 CAPTURE                          VAL R34
     1203 CAPTURE                          VAL R36
     1204 CAPTURE                          VAL R37
     1205 CAPTURE                          VAL R28
     1206 CAPTURE                          VAL R29
     1207 CAPTURE                          VAL R38
     1208 CAPTURE                          VAL R39
     1209 CAPTURE                          VAL R40
     1210 CAPTURE                          VAL R41
     1211 CAPTURE                          VAL R42
     1212 CAPTURE                          VAL R43
     1213 CAPTURE                          VAL R44
     1214 CAPTURE                          VAL R45
     1215 CAPTURE                          VAL R46
     1216 CAPTURE                          VAL R47
     1217 CAPTURE                          VAL R48
     1218 CAPTURE                          VAL R49
     1219 CAPTURE                          VAL R50
     1220 CAPTURE                          VAL R51
     1221 CAPTURE                          VAL R52
     1222 CAPTURE                          VAL R53
     1223 CAPTURE                          VAL R54
     1224 CAPTURE                          VAL R55
     1225 CAPTURE                          VAL R56
     1226 CAPTURE                          VAL R57
     1227 CAPTURE                          VAL R60
     1228 CAPTURE                          VAL R58
     1229 CAPTURE                          VAL R59
     1230 CAPTURE                          VAL R61
     1231 CAPTURE                          VAL R62
     1232 RETURN                           R68 1
