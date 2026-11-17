PROTO_0:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFEQKNIL                     R6 ; [+18]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K0 ["isPermissionDecision"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 JUMPIFNOT                        R7 ; [+11]
       14 GETTABLEKS                       R7 R0 K1 ["get"]
       16 MOVE                             R8 R5
       17 CALL                             R7 1 1
       18 JUMPIFNOTEQKNIL                  R7 ; [+6]
       20 GETTABLEKS                       R7 R0 K2 ["set"]
       22 MOVE                             R8 R5
       23 MOVE                             R9 R6
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-20]
       27 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K0 ["optionId"]
       10 JUMPIFNOTEQ                      R6 R0 ; [+4]
       12 GETTABLEKS                       R6 R5 K1 ["kind"]
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-8]
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["set"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 GETTABLEKS                       R2 R0 K1 ["toolName"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["AllowAlways"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["RejectAlways"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 2
       21 DUPTABLE                         R3 K7 [{"sessionId", "toolCall", "options"}]
       22 GETTABLEKS                       R4 R0 K4 ["sessionId"]
       24 SETTABLEKS                       R4 R3 K4 ["sessionId"]
       26 GETTABLEKS                       R4 R0 K5 ["toolCall"]
       28 SETTABLEKS                       R4 R3 K5 ["toolCall"]
       30 GETUPVAL                         R4 3
       31 SETTABLEKS                       R4 R3 K6 ["options"]
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKNIL                  R2 ; [+3]
       36 LOADB                            R3 1
       37 RETURN                           R3 1
       38 GETTABLEKS                       R3 R2 K8 ["outcome"]
       40 GETTABLEKS                       R3 R3 K8 ["outcome"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K9 ["Cancelled"]
       45 JUMPIFNOTEQ                      R3 R4 ; [+3]
       47 LOADB                            R3 0
       48 RETURN                           R3 1
       49 GETTABLEKS                       R4 R2 K8 ["outcome"]
       51 GETTABLEKS                       R4 R4 K10 ["optionId"]
       53 JUMPIFNOTEQKNIL                  R4 ; [+3]
       55 LOADNIL                          R3
       56 JUMP                             ; [+14]
       57 GETUPVAL                         R5 3
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 GETTABLEKS                       R10 R9 K10 ["optionId"]
       63 JUMPIFNOTEQ                      R10 R4 ; [+4]
       65 GETTABLEKS                       R3 R9 K11 ["kind"]
       67 JUMP                             ; [+3]
       68 FORGLOOP                         R5 2 ; [-8]
       70 LOADNIL                          R3
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K2 ["AllowAlways"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+12]
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K12 ["set"]
       79 GETTABLEKS                       R5 R0 K1 ["toolName"]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K2 ["AllowAlways"]
       84 CALL                             R4 2 0
       85 LOADB                            R4 1
       86 RETURN                           R4 1
       87 GETUPVAL                         R4 5
       88 GETTABLEKS                       R4 R4 K3 ["RejectAlways"]
       90 JUMPIFNOTEQ                      R3 R4 ; [+12]
       92 GETUPVAL                         R4 0
       93 GETTABLEKS                       R4 R4 K12 ["set"]
       95 GETTABLEKS                       R5 R0 K1 ["toolName"]
       97 GETUPVAL                         R6 1
       98 GETTABLEKS                       R6 R6 K3 ["RejectAlways"]
      100 CALL                             R4 2 0
      101 LOADB                            R4 0
      102 RETURN                           R4 1
      103 GETUPVAL                         R4 5
      104 GETTABLEKS                       R4 R4 K13 ["AllowOnce"]
      106 JUMPIFNOTEQ                      R3 R4 ; [+3]
      108 LOADB                            R4 1
      109 RETURN                           R4 1
      110 LOADB                            R4 0
      111 RETURN                           R4 1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R0 K0 ["provider"]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["PermissionManager.new requires an injected provider"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R2 R0 K4 ["requestPermission"]
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["PermissionManager.new requires a requestPermission function"]
       15 GETIMPORT                        R1 K3 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K0 ["provider"]
       20 GETTABLEKS                       R2 R0 K4 ["requestPermission"]
       22 GETUPVAL                         R3 0
       23 MOVE                             R4 R1
       24 GETTABLEKS                       R5 R0 K6 ["defaultConfig"]
       26 CALL                             R3 2 0
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R1
       31 NEWCLOSURE                       R5 P2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 DUPTABLE                         R6 K10 [{"checkPermission", "getDecision", "setDecision"}]
       39 SETTABLEKS                       R5 R6 K7 ["checkPermission"]
       41 SETTABLEKS                       R3 R6 K8 ["getDecision"]
       43 SETTABLEKS                       R4 R6 K9 ["setDecision"]
       45 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AgentClientProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["PermissionStorageProvider"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Decisions"]
       25 GETTABLEKS                       R4 R1 K10 ["PermissionOptionKinds"]
       27 GETTABLEKS                       R5 R1 K11 ["PermissionOutcomes"]
       29 NEWTABLE                         R6 0 4
       31 DUPTABLE                         R7 K16 [{["optionId"], ["name"] = "Allow once", ["kind"]}]
       32 GETTABLEKS                       R8 R4 K17 ["AllowOnce"]
       34 SETTABLEKS                       R8 R7 K12 ["optionId"]
       36 GETTABLEKS                       R8 R4 K17 ["AllowOnce"]
       38 SETTABLEKS                       R8 R7 K15 ["kind"]
       40 DUPTABLE                         R8 K19 [{["optionId"], ["name"] = "Always allow", ["kind"]}]
       41 GETTABLEKS                       R9 R4 K20 ["AllowAlways"]
       43 SETTABLEKS                       R9 R8 K12 ["optionId"]
       45 GETTABLEKS                       R9 R4 K20 ["AllowAlways"]
       47 SETTABLEKS                       R9 R8 K15 ["kind"]
       49 DUPTABLE                         R9 K22 [{["optionId"], ["name"] = "Deny once", ["kind"]}]
       50 GETTABLEKS                       R10 R4 K23 ["RejectOnce"]
       52 SETTABLEKS                       R10 R9 K12 ["optionId"]
       54 GETTABLEKS                       R10 R4 K23 ["RejectOnce"]
       56 SETTABLEKS                       R10 R9 K15 ["kind"]
       58 DUPTABLE                         R10 K25 [{["optionId"], ["name"] = "Always deny", ["kind"]}]
       59 GETTABLEKS                       R11 R4 K26 ["RejectAlways"]
       61 SETTABLEKS                       R11 R10 K12 ["optionId"]
       63 GETTABLEKS                       R11 R4 K26 ["RejectAlways"]
       65 SETTABLEKS                       R11 R10 K15 ["kind"]
       67 SETLIST                          R6 R7 4 [1]
       69 DUPCLOSURE                       R7 K27 [PROTO_0]
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R8 K28 [PROTO_1]
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R9 K29 [PROTO_5]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 DUPTABLE                         R10 K31 [{"new"}]
       80 SETTABLEKS                       R9 R10 K30 ["new"]
       82 RETURN                           R10 1
