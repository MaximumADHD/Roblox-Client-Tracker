PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/abuse-report"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["reportId"]
       16 GETTABLEKS                       R4 R0 K6 ["reportId"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/abuse-report"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["payload"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["POST"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/add-game-server-enrichment"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["pathPrefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["baseUrl"]
       14 CALL                             R0 5 1
       15 NAMECALL                         R0 R0 K6 ["sendAsync"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildRequest"]
        3 LOADK                            R1 K1 ["POST"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["host"]
        7 LOADK                            R3 K3 ["/v1/create-abuse-report"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["pathPrefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["baseUrl"]
       14 CALL                             R0 5 1
       15 NAMECALL                         R0 R0 K6 ["sendAsync"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/safety-event"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["payload"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/scrub-abuse-report"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["payload"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K8 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v2/abuse-report"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["payload"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R1 R1 K8 ["sendAsync"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["GetAbuseReportResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["SubmitAbuseReportRequest"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["SubmitAbuseReportResponse"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["SubmitSafetyEventVRequest"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["SubmitSafetyEventVResponse"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["ScrubAbuseReportRequest"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["CreateAbuseReportVRequest"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["CreateAbuseReportVResponse"]
       74 CALL                             R11 1 1
       75 NEWTABLE                         R12 8 0
       77 DUPCLOSURE                       R13 K18 [PROTO_0]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R13 R12 K19 ["getAbuseReportAsync"]
       83 DUPCLOSURE                       R13 K20 [PROTO_1]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 SETTABLEKS                       R13 R12 K21 ["postSubmitAbuseReportAsync"]
       90 DUPCLOSURE                       R13 K22 [PROTO_2]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R13 R12 K23 ["postAddGameServerEnrichmentAsync"]
       95 DUPCLOSURE                       R13 K24 [PROTO_3]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R13 R12 K25 ["postCreateAbuseReportAsync"]
      100 DUPCLOSURE                       R13 K26 [PROTO_4]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R13 R12 K27 ["postV1SafetyEventAsync"]
      107 DUPCLOSURE                       R13 K28 [PROTO_5]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R13 R12 K29 ["postScrubAbuseReportAsync"]
      113 DUPCLOSURE                       R13 K30 [PROTO_6]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R13 R12 K31 ["postCreateAbuseReportV2Async"]
      120 GETIMPORT                        R13 K34 [table.freeze]
      122 MOVE                             R14 R12
      123 CALL                             R13 1 -1
      124 RETURN                           R13 -1
