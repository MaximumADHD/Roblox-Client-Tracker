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
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Message ID not found in map"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Message ID already exists in map"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R3 0
       11 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 SETTABLE                         R1 R2 R0
       16 RETURN                           R1 1

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
       64 GETUPVAL                         R2 5
       65 CALL                             R2 0 1
       66 JUMPIFNOT                        R2 ; [+4]
       67 GETTABLEKS                       R2 R0 K19 ["model"]
       69 SETTABLEKS                       R2 R1 K19 ["model"]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R2 R3 K20 ["assign"]
       74 MOVE                             R3 R1
       75 DUPTABLE                         R4 K22 [{"timestampMilliseconds"}]
       76 GETIMPORT                        R6 K25 [DateTime.now]
       78 CALL                             R6 0 1
       79 GETTABLEKS                       R5 R6 K26 ["UnixTimestampMillis"]
       81 SETTABLEKS                       R5 R4 K21 ["timestampMilliseconds"]
       83 CALL                             R2 2 1
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R3 R4 K27 ["logEvent"]
       87 GETUPVAL                         R4 6
       88 DUPTABLE                         R5 K29 [{"customFields", "standardizedFields"}]
       89 SETTABLEKS                       R2 R5 K1 ["customFields"]
       91 NEWTABLE                         R7 0 0
       93 GETUPVAL                         R11 7
       94 GETTABLEKS                       R8 R11 K30 ["StandardizedFields"]
       96 LOADNIL                          R9
       97 LOADNIL                          R10
       98 FORGPREP                         R8
       99 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      101 MOVE                             R14 R7
      102 MOVE                             R15 R12
      103 GETIMPORT                        R13 K33 [table.insert]
      105 CALL                             R13 2 0
      106 FORGLOOP                         R8 2 ; [-8]
      108 FASTCALL2K                       TABLE_INSERT R7 K34 ; [+5]
      110 MOVE                             R9 R7
      111 LOADK                            R10 K34 ["addSessionInfo"]
      112 GETIMPORT                        R8 K33 [table.insert]
      114 CALL                             R8 2 0
      115 MOVE                             R6 R7
      116 SETTABLEKS                       R6 R5 K28 ["standardizedFields"]
      118 CALL                             R3 2 0
      119 GETUPVAL                         R3 8
      120 JUMPIFNOT                        R3 ; [+10]
      121 GETUPVAL                         R3 8
      122 LOADK                            R5 K35 ["user_message_sent"]
      123 DUPTABLE                         R6 K36 [{"requestId"}]
      124 GETTABLEKS                       R7 R0 K16 ["messageGuid"]
      126 SETTABLEKS                       R7 R6 K10 ["requestId"]
      128 NAMECALL                         R3 R3 K37 ["LogEventAsync"]
      130 CALL                             R3 3 0
      131 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K4 [{"requestId", "conversationId", "toolName", "toolType"}]
        1 GETTABLEKS                       R3 R0 K5 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K6 ["sessionId"]
        7 SETTABLEKS                       R3 R2 K1 ["conversationId"]
        9 GETTABLEKS                       R3 R0 K2 ["toolName"]
       11 SETTABLEKS                       R3 R2 K2 ["toolName"]
       13 GETTABLEKS                       R3 R0 K2 ["toolName"]
       15 SETTABLEKS                       R3 R2 K3 ["toolType"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K7 ["assign"]
       20 MOVE                             R4 R2
       21 DUPTABLE                         R5 K9 [{"timestampMilliseconds"}]
       22 GETIMPORT                        R7 K12 [DateTime.now]
       24 CALL                             R7 0 1
       25 GETTABLEKS                       R6 R7 K13 ["UnixTimestampMillis"]
       27 SETTABLEKS                       R6 R5 K8 ["timestampMilliseconds"]
       29 CALL                             R3 2 1
       30 MOVE                             R1 R3
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K14 ["logEvent"]
       34 GETUPVAL                         R3 2
       35 DUPTABLE                         R4 K17 [{"customFields", "standardizedFields"}]
       36 SETTABLEKS                       R1 R4 K15 ["customFields"]
       38 NEWTABLE                         R6 0 0
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R7 R10 K18 ["StandardizedFields"]
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       48 MOVE                             R13 R6
       49 MOVE                             R14 R11
       50 GETIMPORT                        R12 K21 [table.insert]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R7 2 ; [-8]
       55 FASTCALL2K                       TABLE_INSERT R6 K22 ; [+5]
       57 MOVE                             R8 R6
       58 LOADK                            R9 K22 ["addSessionInfo"]
       59 GETIMPORT                        R7 K21 [table.insert]
       61 CALL                             R7 2 0
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K16 ["standardizedFields"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R2 K8 [{"requestId", "toolId", "toolName", "toolType", "isError", "startTime", "startTimeAfterConfirmation", "endTime"}]
        1 GETTABLEKS                       R3 R0 K9 ["messageGuid"]
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
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K10 ["assign"]
       36 MOVE                             R4 R2
       37 DUPTABLE                         R5 K12 [{"timestampMilliseconds"}]
       38 GETIMPORT                        R7 K15 [DateTime.now]
       40 CALL                             R7 0 1
       41 GETTABLEKS                       R6 R7 K16 ["UnixTimestampMillis"]
       43 SETTABLEKS                       R6 R5 K11 ["timestampMilliseconds"]
       45 CALL                             R3 2 1
       46 MOVE                             R1 R3
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R2 R3 K17 ["logEvent"]
       50 GETUPVAL                         R3 2
       51 DUPTABLE                         R4 K20 [{"customFields", "standardizedFields"}]
       52 SETTABLEKS                       R1 R4 K18 ["customFields"]
       54 NEWTABLE                         R6 0 0
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R7 R10 K21 ["StandardizedFields"]
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 FORGPREP                         R7
       62 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       64 MOVE                             R13 R6
       65 MOVE                             R14 R11
       66 GETIMPORT                        R12 K24 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R7 2 ; [-8]
       71 FASTCALL2K                       TABLE_INSERT R6 K25 ; [+5]
       73 MOVE                             R8 R6
       74 LOADK                            R9 K25 ["addSessionInfo"]
       75 GETIMPORT                        R7 K24 [table.insert]
       77 CALL                             R7 2 0
       78 MOVE                             R5 R6
       79 SETTABLEKS                       R5 R4 K19 ["standardizedFields"]
       81 CALL                             R2 2 0
       82 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R2 K3 [{"requestId", "toolName", "warningMessage"}]
        1 GETTABLEKS                       R3 R0 K4 ["messageGuid"]
        3 SETTABLEKS                       R3 R2 K0 ["requestId"]
        5 GETTABLEKS                       R3 R0 K1 ["toolName"]
        7 SETTABLEKS                       R3 R2 K1 ["toolName"]
        9 GETTABLEKS                       R3 R0 K2 ["warningMessage"]
       11 SETTABLEKS                       R3 R2 K2 ["warningMessage"]
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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R0
       10 DUPCLOSURE                       R2 K0 [PROTO_10]
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 DUPCLOSURE                       R3 K1 [PROTO_11]
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U7
       20 DUPCLOSURE                       R4 K2 [PROTO_12]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U9
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 NEWCLOSURE                       R5 P4
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R0
       35 NEWCLOSURE                       R6 P5
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R0
       44 DUPCLOSURE                       R7 K3 [PROTO_15]
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 DUPCLOSURE                       R8 K4 [PROTO_16]
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U15
       53 NEWCLOSURE                       R9 P8
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U16
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R0
       59 DUPCLOSURE                       R10 K5 [PROTO_18]
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U17
       63 CAPTURE                          UPVAL U7
       64 DUPCLOSURE                       R11 K6 [PROTO_19]
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U18
       68 CAPTURE                          UPVAL U7
       69 DUPCLOSURE                       R12 K7 [PROTO_20]
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U19
       73 CAPTURE                          UPVAL U7
       74 DUPCLOSURE                       R13 K8 [PROTO_21]
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          UPVAL U20
       78 CAPTURE                          UPVAL U7
       79 DUPCLOSURE                       R14 K9 [PROTO_22]
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U21
       83 CAPTURE                          UPVAL U7
       84 DUPCLOSURE                       R15 K10 [PROTO_23]
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          UPVAL U22
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U23
       91 CAPTURE                          UPVAL U7
       92 DUPCLOSURE                       R16 K11 [PROTO_24]
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U24
       96 CAPTURE                          UPVAL U7
       97 DUPCLOSURE                       R17 K12 [PROTO_25]
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U25
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          UPVAL U4
      103 DUPCLOSURE                       R18 K13 [PROTO_26]
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          UPVAL U26
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U27
      110 CAPTURE                          UPVAL U28
      111 CAPTURE                          UPVAL U7
      112 DUPCLOSURE                       R19 K14 [PROTO_27]
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U29
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          UPVAL U30
      119 CAPTURE                          UPVAL U31
      120 CAPTURE                          UPVAL U7
      121 DUPCLOSURE                       R20 K15 [PROTO_28]
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U32
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          UPVAL U33
      128 CAPTURE                          UPVAL U34
      129 CAPTURE                          UPVAL U7
      130 DUPCLOSURE                       R21 K16 [PROTO_29]
      131 CAPTURE                          UPVAL U0
      132 CAPTURE                          UPVAL U35
      133 CAPTURE                          UPVAL U2
      134 CAPTURE                          UPVAL U7
      135 DUPTABLE                         R22 K40 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "logMeshGenActivated", "logMeshGenCompleted", "logMeshGenPublishedAssets", "logMeshGenMeshInserted", "logIntegrationEvent", "getMessageGuid", "createMessageGuid"}]
      136 SETTABLEKS                       R1 R22 K17 ["logUserMessageSent"]
      138 SETTABLEKS                       R2 R22 K18 ["logAssistantMessageSent"]
      140 SETTABLEKS                       R3 R22 K19 ["logApiKeyAdded"]
      142 SETTABLEKS                       R4 R22 K20 ["logErrorEvent"]
      144 SETTABLEKS                       R16 R22 K21 ["logExternalAPIError"]
      146 SETTABLEKS                       R5 R22 K22 ["logThumbsUp"]
      148 SETTABLEKS                       R6 R22 K23 ["logThumbsDown"]
      150 SETTABLEKS                       R7 R22 K24 ["logInitialResponseLatency"]
      152 SETTABLEKS                       R8 R22 K25 ["logMarkdownError"]
      154 SETTABLEKS                       R9 R22 K26 ["logRetry"]
      156 SETTABLEKS                       R10 R22 K27 ["logStopGeneration"]
      158 SETTABLEKS                       R11 R22 K28 ["logToolStarted"]
      160 SETTABLEKS                       R12 R22 K29 ["logToolEnded"]
      162 SETTABLEKS                       R13 R22 K30 ["logToolConfirmationShown"]
      164 SETTABLEKS                       R14 R22 K31 ["logToolConfirmationResult"]
      166 SETTABLEKS                       R15 R22 K32 ["logRequestJourney"]
      168 SETTABLEKS                       R17 R22 K33 ["logMeshGenActivated"]
      170 SETTABLEKS                       R18 R22 K34 ["logMeshGenCompleted"]
      172 SETTABLEKS                       R19 R22 K35 ["logMeshGenPublishedAssets"]
      174 SETTABLEKS                       R20 R22 K36 ["logMeshGenMeshInserted"]
      176 SETTABLEKS                       R21 R22 K37 ["logIntegrationEvent"]
      178 GETUPVAL                         R23 36
      179 SETTABLEKS                       R23 R22 K38 ["getMessageGuid"]
      181 GETUPVAL                         R23 37
      182 SETTABLEKS                       R23 R22 K39 ["createMessageGuid"]
      184 RETURN                           R22 1

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
       89 GETTABLEKS                       R11 R12 K24 ["FFlagMCPAssistantExternalAPIKey"]
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
      883 DUPCLOSURE                       R48 K106 [PROTO_3]
      884 CAPTURE                          VAL R13
      885 DUPCLOSURE                       R49 K107 [PROTO_4]
      886 CAPTURE                          VAL R13
      887 CAPTURE                          VAL R1
      888 DUPCLOSURE                       R50 K108 [PROTO_5]
      889 DUPCLOSURE                       R51 K109 [PROTO_6]
      890 CAPTURE                          VAL R4
      891 MOVE                             R52 R9
      892 CALL                             R52 0 1
      893 GETTABLEKS                       R53 R12 K110 ["new"]
      895 MOVE                             R54 R2
      896 MOVE                             R55 R10
      897 CALL                             R55 0 -1
      898 CALL                             R53 -1 1
      899 DUPCLOSURE                       R54 K111 [PROTO_7]
      900 CAPTURE                          VAL R53
      901 CAPTURE                          VAL R52
      902 DUPCLOSURE                       R55 K112 [PROTO_8]
      903 CAPTURE                          VAL R4
      904 CAPTURE                          VAL R53
      905 CAPTURE                          VAL R52
      906 DUPCLOSURE                       R56 K113 [PROTO_30]
      907 CAPTURE                          VAL R5
      908 CAPTURE                          VAL R18
      909 CAPTURE                          VAL R4
      910 CAPTURE                          VAL R53
      911 CAPTURE                          VAL R52
      912 CAPTURE                          VAL R11
      913 CAPTURE                          VAL R19
      914 CAPTURE                          VAL R6
      915 CAPTURE                          VAL R20
      916 CAPTURE                          VAL R28
      917 CAPTURE                          VAL R23
      918 CAPTURE                          VAL R21
      919 CAPTURE                          VAL R24
      920 CAPTURE                          VAL R22
      921 CAPTURE                          VAL R25
      922 CAPTURE                          VAL R29
      923 CAPTURE                          VAL R30
      924 CAPTURE                          VAL R31
      925 CAPTURE                          VAL R33
      926 CAPTURE                          VAL R32
      927 CAPTURE                          VAL R34
      928 CAPTURE                          VAL R35
      929 CAPTURE                          VAL R26
      930 CAPTURE                          VAL R27
      931 CAPTURE                          VAL R36
      932 CAPTURE                          VAL R37
      933 CAPTURE                          VAL R38
      934 CAPTURE                          VAL R39
      935 CAPTURE                          VAL R40
      936 CAPTURE                          VAL R41
      937 CAPTURE                          VAL R42
      938 CAPTURE                          VAL R43
      939 CAPTURE                          VAL R44
      940 CAPTURE                          VAL R45
      941 CAPTURE                          VAL R46
      942 CAPTURE                          VAL R47
      943 CAPTURE                          VAL R48
      944 CAPTURE                          VAL R49
      945 RETURN                           R56 1
