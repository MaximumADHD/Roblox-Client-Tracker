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
       17 FASTCALL2K                       TABLE_INSERT R0 K4 ; [+5]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K4 ["addSessionInfo"]
       21 GETIMPORT                        R1 K3 [table.insert]
       23 CALL                             R1 2 0
       24 RETURN                           R0 1

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
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"timestampMilliseconds"}]
        5 GETIMPORT                        R5 K5 [DateTime.now]
        7 CALL                             R5 0 1
        8 GETTABLEKS                       R4 R5 K6 ["UnixTimestampMillis"]
       10 SETTABLEKS                       R4 R3 K1 ["timestampMilliseconds"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       44 DUPTABLE                         R1 K15 [{"requestId", "conversationId", "message", "attachments", "role"}]
       45 GETTABLEKS                       R2 R0 K16 ["messageGuid"]
       47 SETTABLEKS                       R2 R1 K10 ["requestId"]
       49 GETTABLEKS                       R2 R0 K17 ["sessionId"]
       51 SETTABLEKS                       R2 R1 K11 ["conversationId"]
       53 GETTABLEKS                       R2 R0 K12 ["message"]
       55 SETTABLEKS                       R2 R1 K12 ["message"]
       57 GETTABLEKS                       R2 R0 K13 ["attachments"]
       59 SETTABLEKS                       R2 R1 K13 ["attachments"]
       61 LOADK                            R2 K18 ["MCPUser"]
       62 SETTABLEKS                       R2 R1 K14 ["role"]
       64 GETTABLEKS                       R2 R0 K19 ["model"]
       66 SETTABLEKS                       R2 R1 K19 ["model"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R2 R3 K20 ["assign"]
       71 MOVE                             R3 R1
       72 DUPTABLE                         R4 K22 [{"timestampMilliseconds"}]
       73 GETIMPORT                        R6 K25 [DateTime.now]
       75 CALL                             R6 0 1
       76 GETTABLEKS                       R5 R6 K26 ["UnixTimestampMillis"]
       78 SETTABLEKS                       R5 R4 K21 ["timestampMilliseconds"]
       80 CALL                             R2 2 1
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K27 ["logEvent"]
       84 GETUPVAL                         R4 5
       85 DUPTABLE                         R5 K29 [{"customFields", "standardizedFields"}]
       86 SETTABLEKS                       R2 R5 K1 ["customFields"]
       88 NEWTABLE                         R7 0 0
       90 GETUPVAL                         R11 6
       91 GETTABLEKS                       R8 R11 K30 ["StandardizedFields"]
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 FORGPREP                         R8
       96 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       98 MOVE                             R14 R7
       99 MOVE                             R15 R12
      100 GETIMPORT                        R13 K33 [table.insert]
      102 CALL                             R13 2 0
      103 FORGLOOP                         R8 2 ; [-8]
      105 FASTCALL2K                       TABLE_INSERT R7 K34 ; [+5]
      107 MOVE                             R9 R7
      108 LOADK                            R10 K34 ["addSessionInfo"]
      109 GETIMPORT                        R8 K33 [table.insert]
      111 CALL                             R8 2 0
      112 MOVE                             R6 R7
      113 SETTABLEKS                       R6 R5 K28 ["standardizedFields"]
      115 CALL                             R3 2 0
      116 GETUPVAL                         R3 7
      117 JUMPIFNOT                        R3 ; [+10]
      118 GETUPVAL                         R3 7
      119 LOADK                            R5 K35 ["user_message_sent"]
      120 DUPTABLE                         R6 K36 [{"requestId"}]
      121 GETTABLEKS                       R7 R0 K16 ["messageGuid"]
      123 SETTABLEKS                       R7 R6 K10 ["requestId"]
      125 NAMECALL                         R3 R3 K37 ["LogEventAsync"]
      127 CALL                             R3 3 0
      128 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R2 K4 [{"requestId", "conversationId", "message", "role"}]
        1 GETTABLEKS                       R3 R0 K5 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K6 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["message"]
       11 SETTABLEKS                       R3 R2 K2 ["message"]
       13 LOADK                            R3 K7 ["MCPAssistant"]
       14 SETTABLEKS                       R3 R2 K3 ["role"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K8 ["assign"]
       19 MOVE                             R4 R2
       20 DUPTABLE                         R5 K10 [{"timestampMilliseconds"}]
       21 GETIMPORT                        R7 K13 [DateTime.now]
       23 CALL                             R7 0 1
       24 GETTABLEKS                       R6 R7 K14 ["UnixTimestampMillis"]
       26 SETTABLEKS                       R6 R5 K9 ["timestampMilliseconds"]
       28 CALL                             R3 2 1
       29 MOVE                             R1 R3
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K15 ["logEvent"]
       33 GETUPVAL                         R3 2
       34 DUPTABLE                         R4 K18 [{"customFields", "standardizedFields"}]
       35 SETTABLEKS                       R1 R4 K16 ["customFields"]
       37 NEWTABLE                         R6 0 0
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R7 R10 K19 ["StandardizedFields"]
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       47 MOVE                             R13 R6
       48 MOVE                             R14 R11
       49 GETIMPORT                        R12 K22 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-8]
       54 FASTCALL2K                       TABLE_INSERT R6 K23 ; [+5]
       56 MOVE                             R8 R6
       57 LOADK                            R9 K23 ["addSessionInfo"]
       58 GETIMPORT                        R7 K22 [table.insert]
       60 CALL                             R7 2 0
       61 MOVE                             R5 R6
       62 SETTABLEKS                       R5 R4 K17 ["standardizedFields"]
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R2 K1 [{"provider"}]
        1 SETTABLEKS                       R0 R2 K0 ["provider"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["assign"]
        6 MOVE                             R4 R2
        7 DUPTABLE                         R5 K4 [{"timestampMilliseconds"}]
        8 GETIMPORT                        R7 K7 [DateTime.now]
       10 CALL                             R7 0 1
       11 GETTABLEKS                       R6 R7 K8 ["UnixTimestampMillis"]
       13 SETTABLEKS                       R6 R5 K3 ["timestampMilliseconds"]
       15 CALL                             R3 2 1
       16 MOVE                             R1 R3
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K9 ["logEvent"]
       20 GETUPVAL                         R3 2
       21 DUPTABLE                         R4 K12 [{"customFields", "standardizedFields"}]
       22 SETTABLEKS                       R1 R4 K10 ["customFields"]
       24 NEWTABLE                         R6 0 0
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R7 R10 K13 ["StandardizedFields"]
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       34 MOVE                             R13 R6
       35 MOVE                             R14 R11
       36 GETIMPORT                        R12 K16 [table.insert]
       38 CALL                             R12 2 0
       39 FORGLOOP                         R7 2 ; [-8]
       41 FASTCALL2K                       TABLE_INSERT R6 K17 ; [+5]
       43 MOVE                             R8 R6
       44 LOADK                            R9 K17 ["addSessionInfo"]
       45 GETIMPORT                        R7 K16 [table.insert]
       47 CALL                             R7 2 0
       48 MOVE                             R5 R6
       49 SETTABLEKS                       R5 R4 K11 ["standardizedFields"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_12:
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
       58 GETIMPORT                        R7 K20 [DateTime.now]
       60 CALL                             R7 0 1
       61 GETTABLEKS                       R6 R7 K21 ["UnixTimestampMillis"]
       63 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       65 CALL                             R3 2 1
       66 MOVE                             R1 R3
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R2 R3 K22 ["logEvent"]
       70 GETUPVAL                         R3 5
       71 DUPTABLE                         R4 K24 [{"customFields", "standardizedFields"}]
       72 SETTABLEKS                       R1 R4 K1 ["customFields"]
       74 NEWTABLE                         R6 0 0
       76 GETUPVAL                         R10 6
       77 GETTABLEKS                       R7 R10 K25 ["StandardizedFields"]
       79 LOADNIL                          R8
       80 LOADNIL                          R9
       81 FORGPREP                         R7
       82 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       84 MOVE                             R13 R6
       85 MOVE                             R14 R11
       86 GETIMPORT                        R12 K28 [table.insert]
       88 CALL                             R12 2 0
       89 FORGLOOP                         R7 2 ; [-8]
       91 FASTCALL2K                       TABLE_INSERT R6 K29 ; [+5]
       93 MOVE                             R8 R6
       94 LOADK                            R9 K29 ["addSessionInfo"]
       95 GETIMPORT                        R7 K28 [table.insert]
       97 CALL                             R7 2 0
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K23 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 7
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 7
      105 LOADK                            R4 K30 ["thumbs_up"]
      106 DUPTABLE                         R5 K31 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K13 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K32 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_14:
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
       58 GETIMPORT                        R7 K20 [DateTime.now]
       60 CALL                             R7 0 1
       61 GETTABLEKS                       R6 R7 K21 ["UnixTimestampMillis"]
       63 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
       65 CALL                             R3 2 1
       66 MOVE                             R1 R3
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R2 R3 K22 ["logEvent"]
       70 GETUPVAL                         R3 5
       71 DUPTABLE                         R4 K24 [{"customFields", "standardizedFields"}]
       72 SETTABLEKS                       R1 R4 K1 ["customFields"]
       74 NEWTABLE                         R6 0 0
       76 GETUPVAL                         R10 6
       77 GETTABLEKS                       R7 R10 K25 ["StandardizedFields"]
       79 LOADNIL                          R8
       80 LOADNIL                          R9
       81 FORGPREP                         R7
       82 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       84 MOVE                             R13 R6
       85 MOVE                             R14 R11
       86 GETIMPORT                        R12 K28 [table.insert]
       88 CALL                             R12 2 0
       89 FORGLOOP                         R7 2 ; [-8]
       91 FASTCALL2K                       TABLE_INSERT R6 K29 ; [+5]
       93 MOVE                             R8 R6
       94 LOADK                            R9 K29 ["addSessionInfo"]
       95 GETIMPORT                        R7 K28 [table.insert]
       97 CALL                             R7 2 0
       98 MOVE                             R5 R6
       99 SETTABLEKS                       R5 R4 K23 ["standardizedFields"]
      101 CALL                             R2 2 0
      102 GETUPVAL                         R2 7
      103 JUMPIFNOT                        R2 ; [+10]
      104 GETUPVAL                         R2 7
      105 LOADK                            R4 K30 ["thumbs_down"]
      106 DUPTABLE                         R5 K31 [{"requestId"}]
      107 GETTABLEKS                       R6 R0 K13 ["messageGuid"]
      109 SETTABLEKS                       R6 R5 K10 ["requestId"]
      111 NAMECALL                         R2 R2 K32 ["LogEventAsync"]
      113 CALL                             R2 3 0
      114 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"customFields"}]
        5 DUPTABLE                         R4 K4 [{"markdown"}]
        6 SETTABLEKS                       R0 R4 K3 ["markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["customFields"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

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
       14 GETIMPORT                        R7 K10 [DateTime.now]
       16 CALL                             R7 0 1
       17 GETTABLEKS                       R6 R7 K11 ["UnixTimestampMillis"]
       19 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       21 CALL                             R3 2 1
       22 MOVE                             R1 R3
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K12 ["logEvent"]
       26 GETUPVAL                         R3 2
       27 DUPTABLE                         R4 K15 [{"customFields", "standardizedFields"}]
       28 SETTABLEKS                       R1 R4 K13 ["customFields"]
       30 NEWTABLE                         R6 0 0
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R7 R10 K16 ["StandardizedFields"]
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       40 MOVE                             R13 R6
       41 MOVE                             R14 R11
       42 GETIMPORT                        R12 K19 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R7 2 ; [-8]
       47 FASTCALL2K                       TABLE_INSERT R6 K20 ; [+5]
       49 MOVE                             R8 R6
       50 LOADK                            R9 K20 ["addSessionInfo"]
       51 GETIMPORT                        R7 K19 [table.insert]
       53 CALL                             R7 2 0
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K14 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R2 4
       59 JUMPIFNOT                        R2 ; [+10]
       60 GETUPVAL                         R2 4
       61 LOADK                            R4 K21 ["retry"]
       62 DUPTABLE                         R5 K22 [{"requestId"}]
       63 GETTABLEKS                       R6 R0 K3 ["messageGuid"]
       65 SETTABLEKS                       R6 R5 K0 ["requestId"]
       67 NAMECALL                         R2 R2 K23 ["LogEventAsync"]
       69 CALL                             R2 3 0
       70 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R2 K2 [{"requestId", "conversationId"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K4 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K7 [{"timestampMilliseconds"}]
       14 GETIMPORT                        R7 K10 [DateTime.now]
       16 CALL                             R7 0 1
       17 GETTABLEKS                       R6 R7 K11 ["UnixTimestampMillis"]
       19 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       21 CALL                             R3 2 1
       22 MOVE                             R1 R3
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K12 ["logEvent"]
       26 GETUPVAL                         R3 2
       27 DUPTABLE                         R4 K15 [{"customFields", "standardizedFields"}]
       28 SETTABLEKS                       R1 R4 K13 ["customFields"]
       30 NEWTABLE                         R6 0 0
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R7 R10 K16 ["StandardizedFields"]
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       40 MOVE                             R13 R6
       41 MOVE                             R14 R11
       42 GETIMPORT                        R12 K19 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R7 2 ; [-8]
       47 FASTCALL2K                       TABLE_INSERT R6 K20 ; [+5]
       49 MOVE                             R8 R6
       50 LOADK                            R9 K20 ["addSessionInfo"]
       51 GETIMPORT                        R7 K19 [table.insert]
       53 CALL                             R7 2 0
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K14 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_19:
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
       34 GETIMPORT                        R7 K15 [DateTime.now]
       36 CALL                             R7 0 1
       37 GETTABLEKS                       R6 R7 K16 ["UnixTimestampMillis"]
       39 SETTABLEKS                       R6 R5 K11 ["timestampMilliseconds"]
       41 CALL                             R3 2 1
       42 MOVE                             R1 R3
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R2 R3 K17 ["logEvent"]
       46 GETUPVAL                         R3 2
       47 DUPTABLE                         R4 K20 [{"customFields", "standardizedFields"}]
       48 SETTABLEKS                       R1 R4 K18 ["customFields"]
       50 NEWTABLE                         R6 0 0
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R7 R10 K21 ["StandardizedFields"]
       55 LOADNIL                          R8
       56 LOADNIL                          R9
       57 FORGPREP                         R7
       58 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       60 MOVE                             R13 R6
       61 MOVE                             R14 R11
       62 GETIMPORT                        R12 K24 [table.insert]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R7 2 ; [-8]
       67 FASTCALL2K                       TABLE_INSERT R6 K25 ; [+5]
       69 MOVE                             R8 R6
       70 LOADK                            R9 K25 ["addSessionInfo"]
       71 GETIMPORT                        R7 K24 [table.insert]
       73 CALL                             R7 2 0
       74 MOVE                             R5 R6
       75 SETTABLEKS                       R5 R4 K19 ["standardizedFields"]
       77 CALL                             R2 2 0
       78 RETURN                           R0 0

PROTO_20:
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
       50 GETIMPORT                        R7 K18 [DateTime.now]
       52 CALL                             R7 0 1
       53 GETTABLEKS                       R6 R7 K19 ["UnixTimestampMillis"]
       55 SETTABLEKS                       R6 R5 K14 ["timestampMilliseconds"]
       57 CALL                             R3 2 1
       58 MOVE                             R1 R3
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R2 R3 K20 ["logEvent"]
       62 GETUPVAL                         R3 2
       63 DUPTABLE                         R4 K23 [{"customFields", "standardizedFields"}]
       64 SETTABLEKS                       R1 R4 K21 ["customFields"]
       66 NEWTABLE                         R6 0 0
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R7 R10 K24 ["StandardizedFields"]
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 FORGPREP                         R7
       74 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       76 MOVE                             R13 R6
       77 MOVE                             R14 R11
       78 GETIMPORT                        R12 K27 [table.insert]
       80 CALL                             R12 2 0
       81 FORGLOOP                         R7 2 ; [-8]
       83 FASTCALL2K                       TABLE_INSERT R6 K28 ; [+5]
       85 MOVE                             R8 R6
       86 LOADK                            R9 K28 ["addSessionInfo"]
       87 GETIMPORT                        R7 K27 [table.insert]
       89 CALL                             R7 2 0
       90 MOVE                             R5 R6
       91 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
       93 CALL                             R2 2 0
       94 RETURN                           R0 0

PROTO_21:
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
       22 GETIMPORT                        R7 K11 [DateTime.now]
       24 CALL                             R7 0 1
       25 GETTABLEKS                       R6 R7 K12 ["UnixTimestampMillis"]
       27 SETTABLEKS                       R6 R5 K7 ["timestampMilliseconds"]
       29 CALL                             R3 2 1
       30 MOVE                             R1 R3
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K13 ["logEvent"]
       34 GETUPVAL                         R3 2
       35 DUPTABLE                         R4 K16 [{"customFields", "standardizedFields"}]
       36 SETTABLEKS                       R1 R4 K14 ["customFields"]
       38 NEWTABLE                         R6 0 0
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R7 R10 K17 ["StandardizedFields"]
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       48 MOVE                             R13 R6
       49 MOVE                             R14 R11
       50 GETIMPORT                        R12 K20 [table.insert]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R7 2 ; [-8]
       55 FASTCALL2K                       TABLE_INSERT R6 K21 ; [+5]
       57 MOVE                             R8 R6
       58 LOADK                            R9 K21 ["addSessionInfo"]
       59 GETIMPORT                        R7 K20 [table.insert]
       61 CALL                             R7 2 0
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K15 ["standardizedFields"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R2 K2 [{"requestId", "result"}]
        1 GETTABLEKS                       R3 R0 K3 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["result"]
        7 SETTABLEKS                       R3 R2 K1 ["result"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["assign"]
       12 MOVE                             R4 R2
       13 DUPTABLE                         R5 K6 [{"timestampMilliseconds"}]
       14 GETIMPORT                        R7 K9 [DateTime.now]
       16 CALL                             R7 0 1
       17 GETTABLEKS                       R6 R7 K10 ["UnixTimestampMillis"]
       19 SETTABLEKS                       R6 R5 K5 ["timestampMilliseconds"]
       21 CALL                             R3 2 1
       22 MOVE                             R1 R3
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K11 ["logEvent"]
       26 GETUPVAL                         R3 2
       27 DUPTABLE                         R4 K14 [{"customFields", "standardizedFields"}]
       28 SETTABLEKS                       R1 R4 K12 ["customFields"]
       30 NEWTABLE                         R6 0 0
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R7 R10 K15 ["StandardizedFields"]
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       40 MOVE                             R13 R6
       41 MOVE                             R14 R11
       42 GETIMPORT                        R12 K18 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R7 2 ; [-8]
       47 FASTCALL2K                       TABLE_INSERT R6 K19 ; [+5]
       49 MOVE                             R8 R6
       50 LOADK                            R9 K19 ["addSessionInfo"]
       51 GETIMPORT                        R7 K18 [table.insert]
       53 CALL                             R7 2 0
       54 MOVE                             R5 R6
       55 SETTABLEKS                       R5 R4 K13 ["standardizedFields"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_23:
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
      100 GETIMPORT                        R7 K24 [DateTime.now]
      102 CALL                             R7 0 1
      103 GETTABLEKS                       R6 R7 K25 ["UnixTimestampMillis"]
      105 SETTABLEKS                       R6 R5 K20 ["timestampMilliseconds"]
      107 CALL                             R3 2 1
      108 MOVE                             R1 R3
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R2 R3 K26 ["logEvent"]
      112 GETUPVAL                         R3 5
      113 DUPTABLE                         R4 K28 [{"customFields", "standardizedFields"}]
      114 SETTABLEKS                       R1 R4 K2 ["customFields"]
      116 NEWTABLE                         R6 0 0
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R7 R10 K29 ["StandardizedFields"]
      121 LOADNIL                          R8
      122 LOADNIL                          R9
      123 FORGPREP                         R7
      124 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      126 MOVE                             R13 R6
      127 MOVE                             R14 R11
      128 GETIMPORT                        R12 K32 [table.insert]
      130 CALL                             R12 2 0
      131 FORGLOOP                         R7 2 ; [-8]
      133 FASTCALL2K                       TABLE_INSERT R6 K33 ; [+5]
      135 MOVE                             R8 R6
      136 LOADK                            R9 K33 ["addSessionInfo"]
      137 GETIMPORT                        R7 K32 [table.insert]
      139 CALL                             R7 2 0
      140 MOVE                             R5 R6
      141 SETTABLEKS                       R5 R4 K27 ["standardizedFields"]
      143 CALL                             R2 2 0
      144 RETURN                           R0 0

PROTO_24:
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
       18 GETIMPORT                        R7 K10 [DateTime.now]
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R6 R7 K11 ["UnixTimestampMillis"]
       23 SETTABLEKS                       R6 R5 K6 ["timestampMilliseconds"]
       25 CALL                             R3 2 1
       26 MOVE                             R1 R3
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K12 ["logEvent"]
       30 GETUPVAL                         R3 2
       31 DUPTABLE                         R4 K15 [{"customFields", "standardizedFields"}]
       32 SETTABLEKS                       R1 R4 K13 ["customFields"]
       34 NEWTABLE                         R6 0 0
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R7 R10 K16 ["StandardizedFields"]
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 FORGPREP                         R7
       42 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       44 MOVE                             R13 R6
       45 MOVE                             R14 R11
       46 GETIMPORT                        R12 K19 [table.insert]
       48 CALL                             R12 2 0
       49 FORGLOOP                         R7 2 ; [-8]
       51 FASTCALL2K                       TABLE_INSERT R6 K20 ; [+5]
       53 MOVE                             R8 R6
       54 LOADK                            R9 K20 ["addSessionInfo"]
       55 GETIMPORT                        R7 K19 [table.insert]
       57 CALL                             R7 2 0
       58 MOVE                             R5 R6
       59 SETTABLEKS                       R5 R4 K14 ["standardizedFields"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_25:
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
      118 GETIMPORT                        R7 K21 [DateTime.now]
      120 CALL                             R7 0 1
      121 GETTABLEKS                       R6 R7 K22 ["UnixTimestampMillis"]
      123 SETTABLEKS                       R6 R5 K17 ["timestampMilliseconds"]
      125 CALL                             R3 2 1
      126 MOVE                             R1 R3
      127 GETUPVAL                         R3 0
      128 GETTABLEKS                       R2 R3 K23 ["logEvent"]
      130 GETUPVAL                         R3 6
      131 DUPTABLE                         R4 K25 [{"customFields", "standardizedFields"}]
      132 SETTABLEKS                       R1 R4 K2 ["customFields"]
      134 NEWTABLE                         R6 0 0
      136 GETUPVAL                         R10 7
      137 GETTABLEKS                       R7 R10 K26 ["StandardizedFields"]
      139 LOADNIL                          R8
      140 LOADNIL                          R9
      141 FORGPREP                         R7
      142 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      144 MOVE                             R13 R6
      145 MOVE                             R14 R11
      146 GETIMPORT                        R12 K29 [table.insert]
      148 CALL                             R12 2 0
      149 FORGLOOP                         R7 2 ; [-8]
      151 FASTCALL2K                       TABLE_INSERT R6 K30 ; [+5]
      153 MOVE                             R8 R6
      154 LOADK                            R9 K30 ["addSessionInfo"]
      155 GETIMPORT                        R7 K29 [table.insert]
      157 CALL                             R7 2 0
      158 MOVE                             R5 R6
      159 SETTABLEKS                       R5 R4 K24 ["standardizedFields"]
      161 CALL                             R2 2 0
      162 RETURN                           R0 0

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
      122 GETIMPORT                        R7 K22 [DateTime.now]
      124 CALL                             R7 0 1
      125 GETTABLEKS                       R6 R7 K23 ["UnixTimestampMillis"]
      127 SETTABLEKS                       R6 R5 K18 ["timestampMilliseconds"]
      129 CALL                             R3 2 1
      130 MOVE                             R1 R3
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R2 R3 K24 ["logEvent"]
      134 GETUPVAL                         R3 6
      135 DUPTABLE                         R4 K26 [{"customFields", "standardizedFields"}]
      136 SETTABLEKS                       R1 R4 K2 ["customFields"]
      138 NEWTABLE                         R6 0 0
      140 GETUPVAL                         R10 7
      141 GETTABLEKS                       R7 R10 K27 ["StandardizedFields"]
      143 LOADNIL                          R8
      144 LOADNIL                          R9
      145 FORGPREP                         R7
      146 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      148 MOVE                             R13 R6
      149 MOVE                             R14 R11
      150 GETIMPORT                        R12 K30 [table.insert]
      152 CALL                             R12 2 0
      153 FORGLOOP                         R7 2 ; [-8]
      155 FASTCALL2K                       TABLE_INSERT R6 K31 ; [+5]
      157 MOVE                             R8 R6
      158 LOADK                            R9 K31 ["addSessionInfo"]
      159 GETIMPORT                        R7 K30 [table.insert]
      161 CALL                             R7 2 0
      162 MOVE                             R5 R6
      163 SETTABLEKS                       R5 R4 K25 ["standardizedFields"]
      165 CALL                             R2 2 0
      166 RETURN                           R0 0

PROTO_28:
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
      114 GETIMPORT                        R7 K20 [DateTime.now]
      116 CALL                             R7 0 1
      117 GETTABLEKS                       R6 R7 K21 ["UnixTimestampMillis"]
      119 SETTABLEKS                       R6 R5 K16 ["timestampMilliseconds"]
      121 CALL                             R3 2 1
      122 MOVE                             R1 R3
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R2 R3 K22 ["logEvent"]
      126 GETUPVAL                         R3 6
      127 DUPTABLE                         R4 K24 [{"customFields", "standardizedFields"}]
      128 SETTABLEKS                       R1 R4 K2 ["customFields"]
      130 NEWTABLE                         R6 0 0
      132 GETUPVAL                         R10 7
      133 GETTABLEKS                       R7 R10 K25 ["StandardizedFields"]
      135 LOADNIL                          R8
      136 LOADNIL                          R9
      137 FORGPREP                         R7
      138 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      140 MOVE                             R13 R6
      141 MOVE                             R14 R11
      142 GETIMPORT                        R12 K28 [table.insert]
      144 CALL                             R12 2 0
      145 FORGLOOP                         R7 2 ; [-8]
      147 FASTCALL2K                       TABLE_INSERT R6 K29 ; [+5]
      149 MOVE                             R8 R6
      150 LOADK                            R9 K29 ["addSessionInfo"]
      151 GETIMPORT                        R7 K28 [table.insert]
      153 CALL                             R7 2 0
      154 MOVE                             R5 R6
      155 SETTABLEKS                       R5 R4 K23 ["standardizedFields"]
      157 CALL                             R2 2 0
      158 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETIMPORT                        R8 K9 [DateTime.now]
       12 CALL                             R8 0 1
       13 GETTABLEKS                       R7 R8 K10 ["UnixTimestampMillis"]
       15 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K1 ["customFields"]
       20 NEWTABLE                         R5 0 0
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R6 R9 K11 ["StandardizedFields"]
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       30 MOVE                             R12 R5
       31 MOVE                             R13 R10
       32 GETIMPORT                        R11 K14 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R6 2 ; [-8]
       37 FASTCALL2K                       TABLE_INSERT R5 K15 ; [+5]
       39 MOVE                             R7 R5
       40 LOADK                            R8 K15 ["addSessionInfo"]
       41 GETIMPORT                        R6 K14 [table.insert]
       43 CALL                             R6 2 0
       44 MOVE                             R4 R5
       45 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logEvent"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"customFields", "standardizedFields"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K4 ["assign"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"timestampMilliseconds"}]
       10 GETIMPORT                        R8 K9 [DateTime.now]
       12 CALL                             R8 0 1
       13 GETTABLEKS                       R7 R8 K10 ["UnixTimestampMillis"]
       15 SETTABLEKS                       R7 R6 K5 ["timestampMilliseconds"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K1 ["customFields"]
       20 NEWTABLE                         R5 0 0
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R6 R9 K11 ["StandardizedFields"]
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       30 MOVE                             R12 R5
       31 MOVE                             R13 R10
       32 GETIMPORT                        R11 K14 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R6 2 ; [-8]
       37 FASTCALL2K                       TABLE_INSERT R5 K15 ; [+5]
       39 MOVE                             R7 R5
       40 LOADK                            R8 K15 ["addSessionInfo"]
       41 GETIMPORT                        R6 K14 [table.insert]
       43 CALL                             R6 2 0
       44 MOVE                             R4 R5
       45 SETTABLEKS                       R4 R3 K2 ["standardizedFields"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K16 ["logCounter"]
       51 GETUPVAL                         R2 4
       52 LOADN                            R3 1
       53 DUPTABLE                         R4 K17 [{"customFields"}]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K18 ["join"]
       59 MOVE                             R8 R6
       60 DUPTABLE                         R9 K20 [{"experimentationGroup"}]
       61 GETUPVAL                         R11 5
       62 NAMECALL                         R11 R11 K21 ["get"]
       64 CALL                             R11 1 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+3]
       67 LOADNIL                          R10
       68 JUMP                             ; [+16]
       69 GETUPVAL                         R13 6
       70 GETTABLE                         R12 R11 R13
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 GETTABLEKS                       R12 R11 K22 ["generatedExperimentVariantDistributionVariable"]
       75 JUMPIFNOTEQKNIL                  R12 ; [+3]
       77 LOADNIL                          R10
       78 JUMP                             ; [+6]
       79 FASTCALL1                        TOSTRING R12 ; [+3]
       80 MOVE                             R14 R12
       81 GETIMPORT                        R13 K24 [tostring]
       83 CALL                             R13 1 1
       84 MOVE                             R10 R13
       85 SETTABLEKS                       R10 R9 K19 ["experimentationGroup"]
       87 CALL                             R7 2 1
       88 MOVE                             R5 R7
       89 SETTABLEKS                       R5 R4 K1 ["customFields"]
       91 CALL                             R1 3 0
       92 RETURN                           R0 0

PROTO_31:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K0 [PROTO_10]
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 DUPCLOSURE                       R3 K1 [PROTO_11]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U6
       19 DUPCLOSURE                       R4 K2 [PROTO_12]
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 NEWCLOSURE                       R5 P4
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R0
       34 NEWCLOSURE                       R6 P5
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R0
       43 DUPCLOSURE                       R7 K3 [PROTO_15]
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 DUPCLOSURE                       R8 K4 [PROTO_16]
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U14
       52 NEWCLOSURE                       R9 P8
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R0
       58 DUPCLOSURE                       R10 K5 [PROTO_18]
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U16
       62 CAPTURE                          UPVAL U6
       63 DUPCLOSURE                       R11 K6 [PROTO_19]
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U17
       67 CAPTURE                          UPVAL U6
       68 DUPCLOSURE                       R12 K7 [PROTO_20]
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U18
       72 CAPTURE                          UPVAL U6
       73 DUPCLOSURE                       R13 K8 [PROTO_21]
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U19
       77 CAPTURE                          UPVAL U6
       78 DUPCLOSURE                       R14 K9 [PROTO_22]
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U20
       82 CAPTURE                          UPVAL U6
       83 DUPCLOSURE                       R15 K10 [PROTO_23]
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U21
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U22
       90 CAPTURE                          UPVAL U6
       91 DUPCLOSURE                       R16 K11 [PROTO_24]
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U23
       95 CAPTURE                          UPVAL U6
       96 DUPCLOSURE                       R17 K12 [PROTO_25]
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U24
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U4
      102 DUPCLOSURE                       R18 K13 [PROTO_26]
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          UPVAL U25
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U26
      109 CAPTURE                          UPVAL U27
      110 CAPTURE                          UPVAL U6
      111 DUPCLOSURE                       R19 K14 [PROTO_27]
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          UPVAL U28
      114 CAPTURE                          UPVAL U2
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          UPVAL U29
      118 CAPTURE                          UPVAL U30
      119 CAPTURE                          UPVAL U6
      120 DUPCLOSURE                       R20 K15 [PROTO_28]
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          UPVAL U31
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U32
      127 CAPTURE                          UPVAL U33
      128 CAPTURE                          UPVAL U6
      129 DUPCLOSURE                       R21 K16 [PROTO_29]
      130 CAPTURE                          UPVAL U0
      131 CAPTURE                          UPVAL U34
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          UPVAL U6
      134 DUPCLOSURE                       R22 K17 [PROTO_30]
      135 CAPTURE                          UPVAL U0
      136 CAPTURE                          UPVAL U35
      137 CAPTURE                          UPVAL U2
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          UPVAL U36
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          UPVAL U4
      142 DUPTABLE                         R23 K42 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logIntegrationEvent", "logExternalServerConnected", "getMessageGuid", "createMessageGuid"}]
      143 SETTABLEKS                       R1 R23 K18 ["logUserMessageSent"]
      145 SETTABLEKS                       R2 R23 K19 ["logAssistantMessageSent"]
      147 SETTABLEKS                       R3 R23 K20 ["logApiKeyAdded"]
      149 SETTABLEKS                       R4 R23 K21 ["logErrorEvent"]
      151 SETTABLEKS                       R16 R23 K22 ["logExternalAPIError"]
      153 SETTABLEKS                       R5 R23 K23 ["logThumbsUp"]
      155 SETTABLEKS                       R6 R23 K24 ["logThumbsDown"]
      157 SETTABLEKS                       R7 R23 K25 ["logInitialResponseLatency"]
      159 SETTABLEKS                       R8 R23 K26 ["logMarkdownError"]
      161 SETTABLEKS                       R9 R23 K27 ["logRetry"]
      163 SETTABLEKS                       R10 R23 K28 ["logStopGeneration"]
      165 SETTABLEKS                       R11 R23 K29 ["logToolStarted"]
      167 SETTABLEKS                       R12 R23 K30 ["logToolEnded"]
      169 SETTABLEKS                       R13 R23 K31 ["logToolConfirmationShown"]
      171 SETTABLEKS                       R14 R23 K32 ["logToolConfirmationResult"]
      173 SETTABLEKS                       R15 R23 K33 ["logRequestJourney"]
      175 SETTABLEKS                       R17 R23 K34 ["logMeshGenActivated"]
      177 SETTABLEKS                       R18 R23 K35 ["logMeshGenCompleted"]
      179 SETTABLEKS                       R19 R23 K36 ["logMeshGenPublishedAssets"]
      181 SETTABLEKS                       R20 R23 K37 ["logMeshGenMeshInserted"]
      183 SETTABLEKS                       R21 R23 K38 ["logIntegrationEvent"]
      185 SETTABLEKS                       R22 R23 K39 ["logExternalServerConnected"]
      187 GETUPVAL                         R24 37
      188 SETTABLEKS                       R24 R23 K40 ["getMessageGuid"]
      190 GETUPVAL                         R24 38
      191 SETTABLEKS                       R24 R23 K41 ["createMessageGuid"]
      193 RETURN                           R23 1

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
       39 GETTABLEKS                       R6 R7 K16 ["Telemetry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Packages"]
       46 GETTABLEKS                       R7 R8 K17 ["TelemetryProtocol"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Src"]
       53 GETTABLEKS                       R9 R10 K18 ["Flags"]
       55 GETTABLEKS                       R8 R9 K19 ["FIntMarkdownErrorEventThrottlingHundredthPercent"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R11 R0 K14 ["Src"]
       62 GETTABLEKS                       R10 R11 K18 ["Flags"]
       64 GETTABLEKS                       R9 R10 K20 ["FIntUserMessageSentEventThrottlingHundredthPercent"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Src"]
       71 GETTABLEKS                       R11 R12 K18 ["Flags"]
       73 GETTABLEKS                       R10 R11 K21 ["FStringAssistantGroupNameKey"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R13 R0 K14 ["Src"]
       80 GETTABLEKS                       R12 R13 K18 ["Flags"]
       82 GETTABLEKS                       R11 R12 K22 ["FStringNewAssistantExperimentLayer"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R13 R3 K18 ["Flags"]
       87 GETTABLEKS                       R12 R13 K23 ["Shared"]
       89 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantPersistConversations"]
       91 GETIMPORT                        R12 K10 [require]
       93 GETTABLEKS                       R15 R0 K14 ["Src"]
       95 GETTABLEKS                       R14 R15 K15 ["Util"]
       97 GETTABLEKS                       R13 R14 K25 ["ExperimentCache"]
       99 CALL                             R12 1 1
      100 NEWTABLE                         R13 0 0
      102 DUPCLOSURE                       R14 K26 [PROTO_0]
      103 CAPTURE                          VAL R6
      104 DUPCLOSURE                       R15 K27 [PROTO_1]
      105 DUPCLOSURE                       R16 K28 [PROTO_2]
      106 CAPTURE                          VAL R5
      107 GETIMPORT                        R17 K31 [table.freeze]
      109 NEWTABLE                         R19 0 0
      111 GETTABLEKS                       R23 R5 K32 ["Backends"]
      113 GETTABLEKS                       R22 R23 K33 ["EventIngest"]
      115 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      117 MOVE                             R21 R19
      118 GETIMPORT                        R20 K35 [table.insert]
      120 CALL                             R20 2 0
      121 GETTABLEKS                       R23 R5 K32 ["Backends"]
      123 GETTABLEKS                       R22 R23 K36 ["Points"]
      125 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      127 MOVE                             R21 R19
      128 GETIMPORT                        R20 K35 [table.insert]
      130 CALL                             R20 2 0
      131 MOVE                             R18 R19
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K31 [table.freeze]
      135 DUPTABLE                         R19 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      136 LOADK                            R20 K42 ["StudioAssistantUserMessageSent"]
      137 SETTABLEKS                       R20 R19 K37 ["eventName"]
      139 NEWTABLE                         R20 0 1
      141 GETTABLEKS                       R22 R5 K32 ["Backends"]
      143 GETTABLEKS                       R21 R22 K43 ["RobloxTelemetryCounter"]
      145 SETLIST                          R20 R21 1 [1]
      147 SETTABLEKS                       R20 R19 K38 ["backends"]
      149 LOADK                            R20 K44 ["Incrementing count of user messages sent."]
      150 SETTABLEKS                       R20 R19 K39 ["description"]
      152 NEWTABLE                         R20 0 3
      154 LOADN                            R21 25
      155 LOADN                            R22 7
      156 LOADN                            R23 21
      157 SETLIST                          R20 R21 3 [1]
      159 SETTABLEKS                       R20 R19 K40 ["lastUpdated"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K31 [table.freeze]
      164 DUPTABLE                         R20 K46 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      165 LOADK                            R21 K47 ["CAPMessageSent"]
      166 SETTABLEKS                       R21 R20 K37 ["eventName"]
      168 SETTABLEKS                       R17 R20 K38 ["backends"]
      170 LOADK                            R21 K48 ["User message sent event with request ID."]
      171 SETTABLEKS                       R21 R20 K39 ["description"]
      173 MOVE                             R21 R8
      174 CALL                             R21 0 1
      175 SETTABLEKS                       R21 R20 K45 ["throttlingPercentage"]
      177 NEWTABLE                         R21 0 3
      179 LOADN                            R22 25
      180 LOADN                            R23 7
      181 LOADN                            R24 25
      182 SETLIST                          R21 R22 3 [1]
      184 SETTABLEKS                       R21 R20 K40 ["lastUpdated"]
      186 CALL                             R19 1 1
      187 GETIMPORT                        R20 K31 [table.freeze]
      189 DUPTABLE                         R21 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      190 LOADK                            R22 K49 ["CAPAPIKeyAdded"]
      191 SETTABLEKS                       R22 R21 K37 ["eventName"]
      193 SETTABLEKS                       R17 R21 K38 ["backends"]
      195 LOADK                            R22 K50 ["User added an API key for an LLM provider."]
      196 SETTABLEKS                       R22 R21 K39 ["description"]
      198 NEWTABLE                         R22 0 3
      200 LOADN                            R23 25
      201 LOADN                            R24 11
      202 LOADN                            R25 4
      203 SETLIST                          R22 R23 3 [1]
      205 SETTABLEKS                       R22 R21 K40 ["lastUpdated"]
      207 CALL                             R20 1 1
      208 GETIMPORT                        R21 K31 [table.freeze]
      210 DUPTABLE                         R22 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      211 LOADK                            R23 K51 ["CAPUserFeedbackThumbsUp"]
      212 SETTABLEKS                       R23 R22 K37 ["eventName"]
      214 SETTABLEKS                       R17 R22 K38 ["backends"]
      216 LOADK                            R23 K52 ["User feedback thumbs up event with message context."]
      217 SETTABLEKS                       R23 R22 K39 ["description"]
      219 NEWTABLE                         R23 0 3
      221 LOADN                            R24 25
      222 LOADN                            R25 7
      223 LOADN                            R26 25
      224 SETLIST                          R23 R24 3 [1]
      226 SETTABLEKS                       R23 R22 K40 ["lastUpdated"]
      228 CALL                             R21 1 1
      229 GETIMPORT                        R22 K31 [table.freeze]
      231 DUPTABLE                         R23 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      232 LOADK                            R24 K53 ["CAPUserFeedbackThumbsDown"]
      233 SETTABLEKS                       R24 R23 K37 ["eventName"]
      235 SETTABLEKS                       R17 R23 K38 ["backends"]
      237 LOADK                            R24 K54 ["User feedback thumbs down event with message context."]
      238 SETTABLEKS                       R24 R23 K39 ["description"]
      240 NEWTABLE                         R24 0 3
      242 LOADN                            R25 25
      243 LOADN                            R26 7
      244 LOADN                            R27 25
      245 SETLIST                          R24 R25 3 [1]
      247 SETTABLEKS                       R24 R23 K40 ["lastUpdated"]
      249 CALL                             R22 1 1
      250 GETIMPORT                        R23 K31 [table.freeze]
      252 DUPTABLE                         R24 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      253 LOADK                            R25 K55 ["StudioAssistantThumbsUp"]
      254 SETTABLEKS                       R25 R24 K37 ["eventName"]
      256 NEWTABLE                         R25 0 1
      258 GETTABLEKS                       R27 R5 K32 ["Backends"]
      260 GETTABLEKS                       R26 R27 K43 ["RobloxTelemetryCounter"]
      262 SETLIST                          R25 R26 1 [1]
      264 SETTABLEKS                       R25 R24 K38 ["backends"]
      266 LOADK                            R25 K56 ["Incrementing count of thumbs up events."]
      267 SETTABLEKS                       R25 R24 K39 ["description"]
      269 NEWTABLE                         R25 0 3
      271 LOADN                            R26 25
      272 LOADN                            R27 7
      273 LOADN                            R28 21
      274 SETLIST                          R25 R26 3 [1]
      276 SETTABLEKS                       R25 R24 K40 ["lastUpdated"]
      278 CALL                             R23 1 1
      279 GETIMPORT                        R24 K31 [table.freeze]
      281 DUPTABLE                         R25 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      282 LOADK                            R26 K57 ["StudioAssistantThumbsDown"]
      283 SETTABLEKS                       R26 R25 K37 ["eventName"]
      285 NEWTABLE                         R26 0 1
      287 GETTABLEKS                       R28 R5 K32 ["Backends"]
      289 GETTABLEKS                       R27 R28 K43 ["RobloxTelemetryCounter"]
      291 SETLIST                          R26 R27 1 [1]
      293 SETTABLEKS                       R26 R25 K38 ["backends"]
      295 LOADK                            R26 K58 ["Incrementing count of thumbs down events."]
      296 SETTABLEKS                       R26 R25 K39 ["description"]
      298 NEWTABLE                         R26 0 3
      300 LOADN                            R27 25
      301 LOADN                            R28 7
      302 LOADN                            R29 21
      303 SETLIST                          R26 R27 3 [1]
      305 SETTABLEKS                       R26 R25 K40 ["lastUpdated"]
      307 CALL                             R24 1 1
      308 GETIMPORT                        R25 K31 [table.freeze]
      310 DUPTABLE                         R26 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      311 LOADK                            R27 K59 ["StudioAssistantInitialResponseLatency"]
      312 SETTABLEKS                       R27 R26 K37 ["eventName"]
      314 NEWTABLE                         R27 0 1
      316 GETTABLEKS                       R29 R5 K32 ["Backends"]
      318 GETTABLEKS                       R28 R29 K60 ["RobloxTelemetryStat"]
      320 SETLIST                          R27 R28 1 [1]
      322 SETTABLEKS                       R27 R26 K38 ["backends"]
      324 LOADK                            R27 K61 ["Initial response latency, in seconds. Time between making initial HTTP request and receiving first SignalR message."]
      325 SETTABLEKS                       R27 R26 K39 ["description"]
      327 NEWTABLE                         R27 0 3
      329 LOADN                            R28 25
      330 LOADN                            R29 7
      331 LOADN                            R30 21
      332 SETLIST                          R27 R28 3 [1]
      334 SETTABLEKS                       R27 R26 K40 ["lastUpdated"]
      336 CALL                             R25 1 1
      337 GETIMPORT                        R26 K31 [table.freeze]
      339 DUPTABLE                         R27 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      340 LOADK                            R28 K62 ["StudioAssistantRequestJourney"]
      341 SETTABLEKS                       R28 R27 K37 ["eventName"]
      343 NEWTABLE                         R28 0 1
      345 GETTABLEKS                       R30 R5 K32 ["Backends"]
      347 GETTABLEKS                       R29 R30 K60 ["RobloxTelemetryStat"]
      349 SETLIST                          R28 R29 1 [1]
      351 SETTABLEKS                       R28 R27 K38 ["backends"]
      353 LOADK                            R28 K63 ["User request journey duration in seconds. Time between sending first message to request ended."]
      354 SETTABLEKS                       R28 R27 K39 ["description"]
      356 NEWTABLE                         R28 0 3
      358 LOADN                            R29 25
      359 LOADN                            R30 10
      360 LOADN                            R31 22
      361 SETLIST                          R28 R29 3 [1]
      363 SETTABLEKS                       R28 R27 K40 ["lastUpdated"]
      365 CALL                             R26 1 1
      366 GETIMPORT                        R27 K31 [table.freeze]
      368 DUPTABLE                         R28 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      369 LOADK                            R29 K64 ["CAPRequestJourney"]
      370 SETTABLEKS                       R29 R28 K37 ["eventName"]
      372 SETTABLEKS                       R17 R28 K38 ["backends"]
      374 LOADK                            R29 K65 ["User request journey detail."]
      375 SETTABLEKS                       R29 R28 K39 ["description"]
      377 NEWTABLE                         R29 0 3
      379 LOADN                            R30 25
      380 LOADN                            R31 11
      381 LOADN                            R32 1
      382 SETLIST                          R29 R30 3 [1]
      384 SETTABLEKS                       R29 R28 K40 ["lastUpdated"]
      386 CALL                             R27 1 1
      387 GETIMPORT                        R28 K31 [table.freeze]
      389 DUPTABLE                         R29 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      390 LOADK                            R30 K66 ["StudioAssistantErrorEvent"]
      391 SETTABLEKS                       R30 R29 K37 ["eventName"]
      393 NEWTABLE                         R30 0 1
      395 GETTABLEKS                       R32 R5 K32 ["Backends"]
      397 GETTABLEKS                       R31 R32 K43 ["RobloxTelemetryCounter"]
      399 SETLIST                          R30 R31 1 [1]
      401 SETTABLEKS                       R30 R29 K38 ["backends"]
      403 LOADK                            R30 K67 ["Incrementing count of error events with error type attached."]
      404 SETTABLEKS                       R30 R29 K39 ["description"]
      406 NEWTABLE                         R30 0 3
      408 LOADN                            R31 25
      409 LOADN                            R32 7
      410 LOADN                            R33 21
      411 SETLIST                          R30 R31 3 [1]
      413 SETTABLEKS                       R30 R29 K40 ["lastUpdated"]
      415 CALL                             R28 1 1
      416 GETIMPORT                        R29 K31 [table.freeze]
      418 DUPTABLE                         R30 K46 [{"eventName", "backends", "description", "throttlingPercentage", "lastUpdated"}]
      419 LOADK                            R31 K68 ["StudioAssistantMarkdownError"]
      420 SETTABLEKS                       R31 R30 K37 ["eventName"]
      422 NEWTABLE                         R31 0 1
      424 GETTABLEKS                       R33 R5 K32 ["Backends"]
      426 GETTABLEKS                       R32 R33 K36 ["Points"]
      428 SETLIST                          R31 R32 1 [1]
      430 SETTABLEKS                       R31 R30 K38 ["backends"]
      432 LOADK                            R31 K69 ["Collection of markdown error events, with markdown attached."]
      433 SETTABLEKS                       R31 R30 K39 ["description"]
      435 MOVE                             R31 R7
      436 CALL                             R31 0 1
      437 SETTABLEKS                       R31 R30 K45 ["throttlingPercentage"]
      439 NEWTABLE                         R31 0 3
      441 LOADN                            R32 25
      442 LOADN                            R33 7
      443 LOADN                            R34 21
      444 SETLIST                          R31 R32 3 [1]
      446 SETTABLEKS                       R31 R30 K40 ["lastUpdated"]
      448 CALL                             R29 1 1
      449 GETIMPORT                        R30 K31 [table.freeze]
      451 DUPTABLE                         R31 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      452 LOADK                            R32 K70 ["CAPMessageResubmitted"]
      453 SETTABLEKS                       R32 R31 K37 ["eventName"]
      455 SETTABLEKS                       R17 R31 K38 ["backends"]
      457 LOADK                            R32 K71 ["User message retry/resubmit event with request ID."]
      458 SETTABLEKS                       R32 R31 K39 ["description"]
      460 NEWTABLE                         R32 0 3
      462 LOADN                            R33 25
      463 LOADN                            R34 8
      464 LOADN                            R35 7
      465 SETLIST                          R32 R33 3 [1]
      467 SETTABLEKS                       R32 R31 K40 ["lastUpdated"]
      469 CALL                             R30 1 1
      470 GETIMPORT                        R31 K31 [table.freeze]
      472 DUPTABLE                         R32 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      473 LOADK                            R33 K72 ["CAPStopGeneration"]
      474 SETTABLEKS                       R33 R32 K37 ["eventName"]
      476 SETTABLEKS                       R17 R32 K38 ["backends"]
      478 LOADK                            R33 K73 ["User stop generation event with request ID."]
      479 SETTABLEKS                       R33 R32 K39 ["description"]
      481 NEWTABLE                         R33 0 3
      483 LOADN                            R34 25
      484 LOADN                            R35 8
      485 LOADN                            R36 7
      486 SETLIST                          R33 R34 3 [1]
      488 SETTABLEKS                       R33 R32 K40 ["lastUpdated"]
      490 CALL                             R31 1 1
      491 GETIMPORT                        R32 K31 [table.freeze]
      493 DUPTABLE                         R33 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      494 LOADK                            R34 K74 ["CAPToolEnded"]
      495 SETTABLEKS                       R34 R33 K37 ["eventName"]
      497 SETTABLEKS                       R17 R33 K38 ["backends"]
      499 LOADK                            R34 K75 ["Tool invocation ended event with request ID and tool name"]
      500 SETTABLEKS                       R34 R33 K39 ["description"]
      502 NEWTABLE                         R34 0 3
      504 LOADN                            R35 25
      505 LOADN                            R36 7
      506 LOADN                            R37 21
      507 SETLIST                          R34 R35 3 [1]
      509 SETTABLEKS                       R34 R33 K40 ["lastUpdated"]
      511 CALL                             R32 1 1
      512 GETIMPORT                        R33 K31 [table.freeze]
      514 DUPTABLE                         R34 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      515 LOADK                            R35 K76 ["CAPToolStarted"]
      516 SETTABLEKS                       R35 R34 K37 ["eventName"]
      518 SETTABLEKS                       R17 R34 K38 ["backends"]
      520 LOADK                            R35 K77 ["Tool invocation started event with request ID and tool name."]
      521 SETTABLEKS                       R35 R34 K39 ["description"]
      523 NEWTABLE                         R35 0 3
      525 LOADN                            R36 25
      526 LOADN                            R37 8
      527 LOADN                            R38 7
      528 SETLIST                          R35 R36 3 [1]
      530 SETTABLEKS                       R35 R34 K40 ["lastUpdated"]
      532 CALL                             R33 1 1
      533 GETIMPORT                        R34 K31 [table.freeze]
      535 DUPTABLE                         R35 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      536 LOADK                            R36 K78 ["CAPToolConfirmationShown"]
      537 SETTABLEKS                       R36 R35 K37 ["eventName"]
      539 SETTABLEKS                       R17 R35 K38 ["backends"]
      541 LOADK                            R36 K79 ["Tool confirmation dialog shown event with request ID, tool name, and warning message."]
      542 SETTABLEKS                       R36 R35 K39 ["description"]
      544 NEWTABLE                         R36 0 3
      546 LOADN                            R37 25
      547 LOADN                            R38 9
      548 LOADN                            R39 19
      549 SETLIST                          R36 R37 3 [1]
      551 SETTABLEKS                       R36 R35 K40 ["lastUpdated"]
      553 CALL                             R34 1 1
      554 GETIMPORT                        R35 K31 [table.freeze]
      556 DUPTABLE                         R36 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      557 LOADK                            R37 K80 ["CAPToolConfirmationResult"]
      558 SETTABLEKS                       R37 R36 K37 ["eventName"]
      560 SETTABLEKS                       R17 R36 K38 ["backends"]
      562 LOADK                            R37 K81 ["Tool confirmation dialog result event with request ID and user choice."]
      563 SETTABLEKS                       R37 R36 K39 ["description"]
      565 NEWTABLE                         R37 0 3
      567 LOADN                            R38 25
      568 LOADN                            R39 9
      569 LOADN                            R40 19
      570 SETLIST                          R37 R38 3 [1]
      572 SETTABLEKS                       R37 R36 K40 ["lastUpdated"]
      574 CALL                             R35 1 1
      575 GETIMPORT                        R36 K31 [table.freeze]
      577 DUPTABLE                         R37 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      578 LOADK                            R38 K82 ["CAPExternalAPIError"]
      579 SETTABLEKS                       R38 R37 K37 ["eventName"]
      581 SETTABLEKS                       R17 R37 K38 ["backends"]
      583 LOADK                            R38 K83 ["External LLM API error event with request ID, model, and HTTP status code."]
      584 SETTABLEKS                       R38 R37 K39 ["description"]
      586 NEWTABLE                         R38 0 3
      588 LOADN                            R39 25
      589 LOADN                            R40 12
      590 LOADN                            R41 16
      591 SETLIST                          R38 R39 3 [1]
      593 SETTABLEKS                       R38 R37 K40 ["lastUpdated"]
      595 CALL                             R36 1 1
      596 GETIMPORT                        R37 K31 [table.freeze]
      598 DUPTABLE                         R38 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      599 LOADK                            R39 K84 ["CAPMeshGenActivated"]
      600 SETTABLEKS                       R39 R38 K37 ["eventName"]
      602 NEWTABLE                         R39 0 1
      604 GETTABLEKS                       R41 R5 K32 ["Backends"]
      606 GETTABLEKS                       R40 R41 K43 ["RobloxTelemetryCounter"]
      608 SETLIST                          R39 R40 1 [1]
      610 SETTABLEKS                       R39 R38 K38 ["backends"]
      612 LOADK                            R39 K85 ["Count of MeshGen tool activations."]
      613 SETTABLEKS                       R39 R38 K39 ["description"]
      615 NEWTABLE                         R39 0 3
      617 LOADN                            R40 26
      618 LOADN                            R41 2
      619 LOADN                            R42 6
      620 SETLIST                          R39 R40 3 [1]
      622 SETTABLEKS                       R39 R38 K40 ["lastUpdated"]
      624 CALL                             R37 1 1
      625 GETIMPORT                        R38 K31 [table.freeze]
      627 DUPTABLE                         R39 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      628 LOADK                            R40 K86 ["CAPMeshGenCompletedSuccess"]
      629 SETTABLEKS                       R40 R39 K37 ["eventName"]
      631 NEWTABLE                         R40 0 1
      633 GETTABLEKS                       R42 R5 K32 ["Backends"]
      635 GETTABLEKS                       R41 R42 K43 ["RobloxTelemetryCounter"]
      637 SETLIST                          R40 R41 1 [1]
      639 SETTABLEKS                       R40 R39 K38 ["backends"]
      641 LOADK                            R40 K87 ["Count of successful MeshGen completions."]
      642 SETTABLEKS                       R40 R39 K39 ["description"]
      644 NEWTABLE                         R40 0 3
      646 LOADN                            R41 26
      647 LOADN                            R42 2
      648 LOADN                            R43 6
      649 SETLIST                          R40 R41 3 [1]
      651 SETTABLEKS                       R40 R39 K40 ["lastUpdated"]
      653 CALL                             R38 1 1
      654 GETIMPORT                        R39 K31 [table.freeze]
      656 DUPTABLE                         R40 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      657 LOADK                            R41 K88 ["CAPMeshGenCompletedFailure"]
      658 SETTABLEKS                       R41 R40 K37 ["eventName"]
      660 NEWTABLE                         R41 0 1
      662 GETTABLEKS                       R43 R5 K32 ["Backends"]
      664 GETTABLEKS                       R42 R43 K43 ["RobloxTelemetryCounter"]
      666 SETLIST                          R41 R42 1 [1]
      668 SETTABLEKS                       R41 R40 K38 ["backends"]
      670 LOADK                            R41 K89 ["Count of failed MeshGen completions."]
      671 SETTABLEKS                       R41 R40 K39 ["description"]
      673 NEWTABLE                         R41 0 3
      675 LOADN                            R42 26
      676 LOADN                            R43 2
      677 LOADN                            R44 6
      678 SETLIST                          R41 R42 3 [1]
      680 SETTABLEKS                       R41 R40 K40 ["lastUpdated"]
      682 CALL                             R39 1 1
      683 GETIMPORT                        R40 K31 [table.freeze]
      685 DUPTABLE                         R41 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      686 LOADK                            R42 K90 ["CAPMeshGenCompleted"]
      687 SETTABLEKS                       R42 R41 K37 ["eventName"]
      689 SETTABLEKS                       R17 R41 K38 ["backends"]
      691 LOADK                            R42 K91 ["MeshGen generation completed event with details."]
      692 SETTABLEKS                       R42 R41 K39 ["description"]
      694 NEWTABLE                         R42 0 3
      696 LOADN                            R43 26
      697 LOADN                            R44 2
      698 LOADN                            R45 6
      699 SETLIST                          R42 R43 3 [1]
      701 SETTABLEKS                       R42 R41 K40 ["lastUpdated"]
      703 CALL                             R40 1 1
      704 GETIMPORT                        R41 K31 [table.freeze]
      706 DUPTABLE                         R42 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      707 LOADK                            R43 K92 ["CAPMeshGenPublishedAssetsSuccess"]
      708 SETTABLEKS                       R43 R42 K37 ["eventName"]
      710 NEWTABLE                         R43 0 1
      712 GETTABLEKS                       R45 R5 K32 ["Backends"]
      714 GETTABLEKS                       R44 R45 K43 ["RobloxTelemetryCounter"]
      716 SETLIST                          R43 R44 1 [1]
      718 SETTABLEKS                       R43 R42 K38 ["backends"]
      720 LOADK                            R43 K93 ["Count of successful MeshGen asset publications."]
      721 SETTABLEKS                       R43 R42 K39 ["description"]
      723 NEWTABLE                         R43 0 3
      725 LOADN                            R44 26
      726 LOADN                            R45 2
      727 LOADN                            R46 6
      728 SETLIST                          R43 R44 3 [1]
      730 SETTABLEKS                       R43 R42 K40 ["lastUpdated"]
      732 CALL                             R41 1 1
      733 GETIMPORT                        R42 K31 [table.freeze]
      735 DUPTABLE                         R43 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      736 LOADK                            R44 K94 ["CAPMeshGenPublishedAssetsFailure"]
      737 SETTABLEKS                       R44 R43 K37 ["eventName"]
      739 NEWTABLE                         R44 0 1
      741 GETTABLEKS                       R46 R5 K32 ["Backends"]
      743 GETTABLEKS                       R45 R46 K43 ["RobloxTelemetryCounter"]
      745 SETLIST                          R44 R45 1 [1]
      747 SETTABLEKS                       R44 R43 K38 ["backends"]
      749 LOADK                            R44 K95 ["Count of failed MeshGen asset publications."]
      750 SETTABLEKS                       R44 R43 K39 ["description"]
      752 NEWTABLE                         R44 0 3
      754 LOADN                            R45 26
      755 LOADN                            R46 2
      756 LOADN                            R47 6
      757 SETLIST                          R44 R45 3 [1]
      759 SETTABLEKS                       R44 R43 K40 ["lastUpdated"]
      761 CALL                             R42 1 1
      762 GETIMPORT                        R43 K31 [table.freeze]
      764 DUPTABLE                         R44 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      765 LOADK                            R45 K96 ["CAPMeshGenPublishedAssets"]
      766 SETTABLEKS                       R45 R44 K37 ["eventName"]
      768 SETTABLEKS                       R17 R44 K38 ["backends"]
      770 LOADK                            R45 K97 ["MeshGen assets published event with details."]
      771 SETTABLEKS                       R45 R44 K39 ["description"]
      773 NEWTABLE                         R45 0 3
      775 LOADN                            R46 26
      776 LOADN                            R47 2
      777 LOADN                            R48 6
      778 SETLIST                          R45 R46 3 [1]
      780 SETTABLEKS                       R45 R44 K40 ["lastUpdated"]
      782 CALL                             R43 1 1
      783 GETIMPORT                        R44 K31 [table.freeze]
      785 DUPTABLE                         R45 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      786 LOADK                            R46 K98 ["CAPMeshGenMeshInsertedSuccess"]
      787 SETTABLEKS                       R46 R45 K37 ["eventName"]
      789 NEWTABLE                         R46 0 1
      791 GETTABLEKS                       R48 R5 K32 ["Backends"]
      793 GETTABLEKS                       R47 R48 K43 ["RobloxTelemetryCounter"]
      795 SETLIST                          R46 R47 1 [1]
      797 SETTABLEKS                       R46 R45 K38 ["backends"]
      799 LOADK                            R46 K99 ["Count of successful MeshGen mesh insertions."]
      800 SETTABLEKS                       R46 R45 K39 ["description"]
      802 NEWTABLE                         R46 0 3
      804 LOADN                            R47 26
      805 LOADN                            R48 2
      806 LOADN                            R49 6
      807 SETLIST                          R46 R47 3 [1]
      809 SETTABLEKS                       R46 R45 K40 ["lastUpdated"]
      811 CALL                             R44 1 1
      812 GETIMPORT                        R45 K31 [table.freeze]
      814 DUPTABLE                         R46 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      815 LOADK                            R47 K100 ["CAPMeshGenMeshInsertedFailure"]
      816 SETTABLEKS                       R47 R46 K37 ["eventName"]
      818 NEWTABLE                         R47 0 1
      820 GETTABLEKS                       R49 R5 K32 ["Backends"]
      822 GETTABLEKS                       R48 R49 K43 ["RobloxTelemetryCounter"]
      824 SETLIST                          R47 R48 1 [1]
      826 SETTABLEKS                       R47 R46 K38 ["backends"]
      828 LOADK                            R47 K101 ["Count of failed MeshGen mesh insertions."]
      829 SETTABLEKS                       R47 R46 K39 ["description"]
      831 NEWTABLE                         R47 0 3
      833 LOADN                            R48 26
      834 LOADN                            R49 2
      835 LOADN                            R50 6
      836 SETLIST                          R47 R48 3 [1]
      838 SETTABLEKS                       R47 R46 K40 ["lastUpdated"]
      840 CALL                             R45 1 1
      841 GETIMPORT                        R46 K31 [table.freeze]
      843 DUPTABLE                         R47 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      844 LOADK                            R48 K102 ["CAPMeshGenMeshInserted"]
      845 SETTABLEKS                       R48 R47 K37 ["eventName"]
      847 SETTABLEKS                       R17 R47 K38 ["backends"]
      849 LOADK                            R48 K103 ["MeshGen mesh inserted event with details."]
      850 SETTABLEKS                       R48 R47 K39 ["description"]
      852 NEWTABLE                         R48 0 3
      854 LOADN                            R49 26
      855 LOADN                            R50 2
      856 LOADN                            R51 6
      857 SETLIST                          R48 R49 3 [1]
      859 SETTABLEKS                       R48 R47 K40 ["lastUpdated"]
      861 CALL                             R46 1 1
      862 GETIMPORT                        R47 K31 [table.freeze]
      864 DUPTABLE                         R48 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      865 LOADK                            R49 K104 ["StudioAssistantIntegrationAction"]
      866 SETTABLEKS                       R49 R48 K37 ["eventName"]
      868 SETTABLEKS                       R17 R48 K38 ["backends"]
      870 LOADK                            R49 K105 ["Integration event with action, label, and URL."]
      871 SETTABLEKS                       R49 R48 K39 ["description"]
      873 NEWTABLE                         R49 0 3
      875 LOADN                            R50 26
      876 LOADN                            R51 2
      877 LOADN                            R52 3
      878 SETLIST                          R49 R50 3 [1]
      880 SETTABLEKS                       R49 R48 K40 ["lastUpdated"]
      882 CALL                             R47 1 1
      883 GETIMPORT                        R48 K31 [table.freeze]
      885 DUPTABLE                         R49 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      886 LOADK                            R50 K106 ["StudioAssistantExternalServerConnectedEvent"]
      887 SETTABLEKS                       R50 R49 K37 ["eventName"]
      889 SETTABLEKS                       R17 R49 K38 ["backends"]
      891 LOADK                            R50 K107 ["External server connected event with session ID"]
      892 SETTABLEKS                       R50 R49 K39 ["description"]
      894 NEWTABLE                         R50 0 3
      896 LOADN                            R51 26
      897 LOADN                            R52 2
      898 LOADN                            R53 25
      899 SETLIST                          R50 R51 3 [1]
      901 SETTABLEKS                       R50 R49 K40 ["lastUpdated"]
      903 CALL                             R48 1 1
      904 GETIMPORT                        R49 K31 [table.freeze]
      906 DUPTABLE                         R50 K41 [{"eventName", "backends", "description", "lastUpdated"}]
      907 LOADK                            R51 K108 ["StudioAssistantExternalServerConnectedCounter"]
      908 SETTABLEKS                       R51 R50 K37 ["eventName"]
      910 NEWTABLE                         R51 0 1
      912 GETTABLEKS                       R53 R5 K32 ["Backends"]
      914 GETTABLEKS                       R52 R53 K43 ["RobloxTelemetryCounter"]
      916 SETLIST                          R51 R52 1 [1]
      918 SETTABLEKS                       R51 R50 K38 ["backends"]
      920 LOADK                            R51 K107 ["External server connected event with session ID"]
      921 SETTABLEKS                       R51 R50 K39 ["description"]
      923 NEWTABLE                         R51 0 3
      925 LOADN                            R52 26
      926 LOADN                            R53 2
      927 LOADN                            R54 25
      928 SETLIST                          R51 R52 3 [1]
      930 SETTABLEKS                       R51 R50 K40 ["lastUpdated"]
      932 CALL                             R49 1 1
      933 DUPCLOSURE                       R50 K109 [PROTO_3]
      934 CAPTURE                          VAL R11
      935 CAPTURE                          VAL R13
      936 DUPCLOSURE                       R51 K110 [PROTO_4]
      937 CAPTURE                          VAL R11
      938 CAPTURE                          VAL R13
      939 CAPTURE                          VAL R1
      940 DUPCLOSURE                       R52 K111 [PROTO_5]
      941 DUPCLOSURE                       R53 K112 [PROTO_6]
      942 CAPTURE                          VAL R4
      943 MOVE                             R54 R9
      944 CALL                             R54 0 1
      945 GETTABLEKS                       R55 R12 K113 ["new"]
      947 MOVE                             R56 R2
      948 MOVE                             R57 R10
      949 CALL                             R57 0 -1
      950 CALL                             R55 -1 1
      951 DUPCLOSURE                       R56 K114 [PROTO_7]
      952 CAPTURE                          VAL R55
      953 CAPTURE                          VAL R54
      954 DUPCLOSURE                       R57 K115 [PROTO_8]
      955 CAPTURE                          VAL R4
      956 CAPTURE                          VAL R55
      957 CAPTURE                          VAL R54
      958 DUPCLOSURE                       R58 K116 [PROTO_31]
      959 CAPTURE                          VAL R5
      960 CAPTURE                          VAL R18
      961 CAPTURE                          VAL R4
      962 CAPTURE                          VAL R55
      963 CAPTURE                          VAL R54
      964 CAPTURE                          VAL R19
      965 CAPTURE                          VAL R6
      966 CAPTURE                          VAL R20
      967 CAPTURE                          VAL R28
      968 CAPTURE                          VAL R23
      969 CAPTURE                          VAL R21
      970 CAPTURE                          VAL R24
      971 CAPTURE                          VAL R22
      972 CAPTURE                          VAL R25
      973 CAPTURE                          VAL R29
      974 CAPTURE                          VAL R30
      975 CAPTURE                          VAL R31
      976 CAPTURE                          VAL R33
      977 CAPTURE                          VAL R32
      978 CAPTURE                          VAL R34
      979 CAPTURE                          VAL R35
      980 CAPTURE                          VAL R26
      981 CAPTURE                          VAL R27
      982 CAPTURE                          VAL R36
      983 CAPTURE                          VAL R37
      984 CAPTURE                          VAL R38
      985 CAPTURE                          VAL R39
      986 CAPTURE                          VAL R40
      987 CAPTURE                          VAL R41
      988 CAPTURE                          VAL R42
      989 CAPTURE                          VAL R43
      990 CAPTURE                          VAL R44
      991 CAPTURE                          VAL R45
      992 CAPTURE                          VAL R46
      993 CAPTURE                          VAL R47
      994 CAPTURE                          VAL R48
      995 CAPTURE                          VAL R49
      996 CAPTURE                          VAL R50
      997 CAPTURE                          VAL R51
      998 RETURN                           R58 1
