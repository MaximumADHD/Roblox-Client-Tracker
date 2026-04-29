PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["([^%s]+):%s*([^\r\n]+)"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+4]
        8 NAMECALL                         R7 R5 K2 ["lower"]
       10 CALL                             R7 1 1
       11 SETTABLE                         R6 R1 R7
       12 FORGLOOP                         R2 2 ; [-6]
       14 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R4 R1
        1 LOADN                            R5 1
        2 LOADB                            R6 1
        3 NAMECALL                         R2 R0 K0 ["find"]
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CONTENT_TYPE_HEADER"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["Json"]
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K4 [string.lower]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K1 ["Json"]
       16 MOVE                             R7 R4
       17 LOADN                            R8 1
       18 LOADB                            R9 1
       19 NAMECALL                         R5 R2 K5 ["find"]
       21 CALL                             R5 4 1
       22 MOVE                             R3 R5
       23 JUMPIFNOT                        R3 ; [+4]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K1 ["Json"]
       27 RETURN                           R3 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K6 ["EventStream"]
       31 MOVE                             R7 R4
       32 LOADN                            R8 1
       33 LOADB                            R9 1
       34 NAMECALL                         R5 R2 K5 ["find"]
       36 CALL                             R5 4 1
       37 MOVE                             R3 R5
       38 JUMPIFNOT                        R3 ; [+4]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K6 ["EventStream"]
       42 RETURN                           R3 1
       43 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["^https?://"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R4 K2 ["^(https?)://([^/]+)"]
        7 NAMECALL                         R2 R1 K1 ["match"]
        9 CALL                             R2 2 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 1
       13 LOADK                            R5 K3 ["%*://%*"]
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R5 K4 ["format"]
       18 CALL                             R5 3 1
       19 MOVE                             R4 R5
       20 LOADN                            R7 1
       21 LOADN                            R8 1
       22 NAMECALL                         R5 R0 K5 ["sub"]
       24 CALL                             R5 3 1
       25 JUMPIFNOTEQKS                    R5 K6 ["/"] ; [+9]
       27 LOADK                            R6 K7 ["%*%*"]
       28 MOVE                             R8 R4
       29 MOVE                             R9 R0
       30 NAMECALL                         R6 R6 K4 ["format"]
       32 CALL                             R6 3 1
       33 MOVE                             R5 R6
       34 RETURN                           R5 1
       35 LOADK                            R8 K8 ["^https?://[^/]+(.*)"]
       36 NAMECALL                         R6 R1 K1 ["match"]
       38 CALL                             R6 2 1
       39 ORK                              R5 R6 K6 ["/"]
       40 LOADK                            R9 K9 ["^(.*/)"]
       41 NAMECALL                         R7 R5 K1 ["match"]
       43 CALL                             R7 2 1
       44 ORK                              R6 R7 K6 ["/"]
       45 LOADK                            R8 K10 ["%*%*%*"]
       46 MOVE                             R10 R4
       47 MOVE                             R11 R6
       48 MOVE                             R12 R0
       49 NAMECALL                         R8 R8 K4 ["format"]
       51 CALL                             R8 4 1
       52 MOVE                             R7 R8
       53 RETURN                           R7 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["event"]
        2 JUMPIFNOTEQKS                    R1 K1 ["ping"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["EventStreamParser"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 8 0
       14 DUPTABLE                         R3 K9 [{"Json", "EventStream"}]
       15 LOADK                            R4 K10 ["application/json"]
       16 SETTABLEKS                       R4 R3 K7 ["Json"]
       18 LOADK                            R4 K11 ["text/event-stream"]
       19 SETTABLEKS                       R4 R3 K8 ["EventStream"]
       21 SETTABLEKS                       R3 R2 K12 ["ResponseType"]
       23 DUPTABLE                         R4 K18 [{"ACCEPT", "MCP_SESSION_ID_HEADER", "LAST_EVENT_ID_HEADER", "CONTENT_TYPE_HEADER", "AUTHORIZATION"}]
       24 LOADK                            R5 K19 ["accept"]
       25 SETTABLEKS                       R5 R4 K13 ["ACCEPT"]
       27 LOADK                            R5 K20 ["mcp-session-id"]
       28 SETTABLEKS                       R5 R4 K14 ["MCP_SESSION_ID_HEADER"]
       30 LOADK                            R5 K21 ["last-event-id"]
       31 SETTABLEKS                       R5 R4 K15 ["LAST_EVENT_ID_HEADER"]
       33 LOADK                            R5 K22 ["content-type"]
       34 SETTABLEKS                       R5 R4 K16 ["CONTENT_TYPE_HEADER"]
       36 LOADK                            R5 K23 ["authorization"]
       37 SETTABLEKS                       R5 R4 K17 ["AUTHORIZATION"]
       39 SETTABLEKS                       R4 R2 K24 ["Headers"]
       41 DUPCLOSURE                       R5 K25 [PROTO_0]
       42 SETTABLEKS                       R5 R2 K26 ["headerStringToTable"]
       44 DUPCLOSURE                       R5 K27 [PROTO_1]
       45 DUPCLOSURE                       R6 K28 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R6 R2 K29 ["getContentType"]
       50 DUPCLOSURE                       R6 K30 [PROTO_3]
       51 SETTABLEKS                       R6 R2 K31 ["resolveUrl"]
       53 DUPCLOSURE                       R6 K32 [PROTO_5]
       54 SETTABLEKS                       R6 R2 K33 ["wrapSSECallback"]
       56 RETURN                           R2 1
