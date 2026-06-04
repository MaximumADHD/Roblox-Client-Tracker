PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+110]
        3 GETTABLEKS                       R2 R0 K0 ["threads"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 NEWTABLE                         R1 0 1
       11 LOADK                            R2 K0 ["threads"]
       12 SETLIST                          R1 R2 1 [1]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 4
       18 JUMPIF                           R2 ; [+19]
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R7 K3 ["Failed to clone path for adding thread:"]
       22 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       23 MOVE                             R9 R1
       24 GETIMPORT                        R8 K6 [table.unpack]
       26 CALL                             R8 1 -1
       27 CALL                             R6 -1 0
       28 GETIMPORT                        R6 K2 [warn]
       30 LOADK                            R8 K7 ["Failed at key: %*"]
       31 MOVE                             R10 R5
       32 NAMECALL                         R8 R8 K8 ["format"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 CALL                             R6 1 0
       37 RETURN                           R0 1
       38 DUPTABLE                         R6 K24 [{"threadId", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "lastActivityAt", "lastViewedAt", "title", "isPinned", "messages", "messageLoadState", "messagePageState", "messageCountAdded", "messageCountLoaded"}]
       39 GETUPVAL                         R7 1
       40 SETTABLEKS                       R7 R6 K9 ["threadId"]
       42 LOADN                            R7 255
       43 SETTABLEKS                       R7 R6 K10 ["createdAt"]
       45 LOADN                            R7 255
       46 SETTABLEKS                       R7 R6 K11 ["updatedAt"]
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R6 K12 ["ephemeral"]
       51 LOADB                            R7 0
       52 SETTABLEKS                       R7 R6 K13 ["isDirty"]
       54 LOADNIL                          R7
       55 SETTABLEKS                       R7 R6 K14 ["isDeleted"]
       57 LOADN                            R7 255
       58 SETTABLEKS                       R7 R6 K15 ["lastActivityAt"]
       60 LOADN                            R7 255
       61 SETTABLEKS                       R7 R6 K16 ["lastViewedAt"]
       63 LOADK                            R7 K25 [""]
       64 SETTABLEKS                       R7 R6 K17 ["title"]
       66 LOADB                            R7 0
       67 SETTABLEKS                       R7 R6 K18 ["isPinned"]
       69 NEWTABLE                         R7 0 0
       71 SETTABLEKS                       R7 R6 K19 ["messages"]
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K26 ["PersistenceLoadStates"]
       76 GETTABLEKS                       R7 R7 K27 ["Disabled"]
       78 SETTABLEKS                       R7 R6 K20 ["messageLoadState"]
       80 LOADNIL                          R7
       81 SETTABLEKS                       R7 R6 K21 ["messagePageState"]
       83 LOADN                            R7 0
       84 SETTABLEKS                       R7 R6 K22 ["messageCountAdded"]
       86 LOADN                            R7 0
       87 SETTABLEKS                       R7 R6 K23 ["messageCountLoaded"]
       89 GETUPVAL                         R7 4
       90 NEWTABLE                         R8 0 1
       92 MOVE                             R9 R6
       93 SETLIST                          R8 R9 1 [1]
       95 CALL                             R7 1 0
       96 GETUPVAL                         R7 5
       97 NEWTABLE                         R8 0 1
       99 MOVE                             R9 R6
      100 SETLIST                          R8 R9 1 [1]
      102 CALL                             R7 1 0
      103 GETUPVAL                         R7 6
      104 NEWTABLE                         R8 0 1
      106 MOVE                             R9 R6
      107 SETLIST                          R8 R9 1 [1]
      109 CALL                             R7 1 0
      110 GETUPVAL                         R7 1
      111 SETTABLE                         R6 R4 R7
      112 RETURN                           R3 1
      113 GETUPVAL                         R2 1
      114 GETTABLE                         R1 R0 R2
      115 JUMPIFNOT                        R1 ; [+1]
      116 RETURN                           R0 1
      117 GETIMPORT                        R1 K29 [table.clone]
      119 MOVE                             R2 R0
      120 CALL                             R1 1 1
      121 GETUPVAL                         R2 1
      122 DUPTABLE                         R3 K30 [{"messages"}]
      123 NEWTABLE                         R4 0 0
      125 SETTABLEKS                       R4 R3 K19 ["messages"]
      127 SETTABLE                         R3 R1 R2
      128 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["clonePath"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["setCreatedAt"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["setLastActivityAt"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["setUpdatedAt"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Flags"]
       60 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantMultipleChatPersistence"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K19 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 RETURN                           R9 1
