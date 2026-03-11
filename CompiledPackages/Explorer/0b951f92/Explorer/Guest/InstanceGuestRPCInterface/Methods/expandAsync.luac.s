PROTO_0:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["Expanding %*"]
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       15 LOADK                            R5 K4 ["Instance ID is not a string"]
       16 GETIMPORT                        R3 K6 [assert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 LOADK                            R6 K7 ["expanding"]
       23 CALL                             R3 3 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       30 LOADK                            R6 K8 ["Host asking to expand instance we haven't seen yet"]
       31 GETIMPORT                        R4 K6 [assert]
       33 CALL                             R4 2 0
       34 GETTABLEKS                       R5 R0 K9 ["expandedInstances"]
       36 GETTABLE                         R4 R5 R3
       37 JUMPIFNOT                        R4 ; [+7]
       38 GETUPVAL                         R4 0
       39 LOADK                            R5 K10 ["%* already expanded"]
       40 MOVE                             R6 R3
       41 CALL                             R4 2 0
       42 NEWTABLE                         R4 0 0
       44 RETURN                           R4 1
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K11 ["rootId"]
       48 JUMPIFEQ                         R2 R5 ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 JUMPIF                           R4 ; [+4]
       53 GETTABLEKS                       R6 R3 K12 ["Parent"]
       55 JUMPIFNOTEQKNIL                  R6 ; [+4]
       57 NEWTABLE                         R5 0 0
       59 JUMP                             ; [+9]
       60 GETUPVAL                         R5 3
       61 MOVE                             R6 R0
       62 MOVE                             R7 R1
       63 GETTABLEKS                       R8 R0 K13 ["getInstanceId"]
       65 GETTABLEKS                       R9 R3 K12 ["Parent"]
       67 CALL                             R8 1 -1
       68 CALL                             R5 -1 1
       69 GETTABLEKS                       R6 R0 K9 ["expandedInstances"]
       71 LOADB                            R7 1
       72 SETTABLE                         R7 R6 R3
       73 JUMPIFNOT                        R4 ; [+42]
       74 LOADK                            R8 K14 ["DataModel"]
       75 NAMECALL                         R6 R3 K15 ["IsA"]
       77 CALL                             R6 2 1
       78 JUMPIFNOT                        R6 ; [+37]
       79 GETTABLEKS                       R6 R0 K16 ["isServiceVisible"]
       81 JUMPIFNOT                        R6 ; [+34]
       82 GETUPVAL                         R6 4
       83 MOVE                             R7 R0
       84 MOVE                             R8 R3
       85 CALL                             R6 2 0
       86 NAMECALL                         R6 R3 K17 ["GetChildren"]
       88 CALL                             R6 1 3
       89 FORGPREP                         R6
       90 GETTABLEKS                       R11 R0 K16 ["isServiceVisible"]
       92 MOVE                             R12 R10
       93 CALL                             R11 1 1
       94 JUMPIFNOT                        R11 ; [+18]
       95 GETTABLEKS                       R12 R0 K18 ["watchingInstanceConnections"]
       97 GETTABLE                         R11 R12 R10
       98 JUMPIFNOTEQKNIL                  R11 ; [+14]
      100 MOVE                             R12 R5
      101 GETUPVAL                         R13 5
      102 MOVE                             R14 R0
      103 MOVE                             R15 R10
      104 CALL                             R13 2 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R11 K21 [table.insert]
      108 CALL                             R11 -1 0
      109 GETUPVAL                         R11 4
      110 MOVE                             R12 R0
      111 MOVE                             R13 R10
      112 CALL                             R11 2 0
      113 FORGLOOP                         R6 2 ; [-24]
      115 JUMP                             ; [+24]
      116 NAMECALL                         R6 R3 K17 ["GetChildren"]
      118 CALL                             R6 1 3
      119 FORGPREP                         R6
      120 GETTABLEKS                       R12 R0 K18 ["watchingInstanceConnections"]
      122 GETTABLE                         R11 R12 R10
      123 JUMPIFNOTEQKNIL                  R11 ; [+14]
      125 MOVE                             R12 R5
      126 GETUPVAL                         R13 5
      127 MOVE                             R14 R0
      128 MOVE                             R15 R10
      129 CALL                             R13 2 -1
      130 FASTCALL                         TABLE_INSERT ; [+2]
      131 GETIMPORT                        R11 K21 [table.insert]
      133 CALL                             R11 -1 0
      134 GETUPVAL                         R11 4
      135 MOVE                             R12 R0
      136 MOVE                             R13 R10
      137 CALL                             R11 2 0
      138 FORGLOOP                         R6 2 ; [-19]
      140 GETUPVAL                         R6 6
      141 JUMPIFNOT                        R6 ; [+6]
      142 JUMPIFEQKNIL                     R1 ; [+5]
      144 GETTABLEKS                       R6 R1 K22 ["startTrackingInstanceForStreaming"]
      146 MOVE                             R7 R3
      147 CALL                             R6 1 0
      148 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Guest"]
       18 GETTABLEKS                       R4 R5 K9 ["InstanceGuestRPCInterface"]
       20 GETTABLEKS                       R3 R4 K10 ["InstanceGuestRPCInterfaceTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["RpcTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K8 ["Guest"]
       32 GETTABLEKS                       R7 R8 K9 ["InstanceGuestRPCInterface"]
       34 GETTABLEKS                       R6 R7 K12 ["Streaming"]
       36 GETTABLEKS                       R5 R6 K13 ["StreamingInterface"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Guest"]
       43 GETTABLEKS                       R8 R9 K9 ["InstanceGuestRPCInterface"]
       45 GETTABLEKS                       R7 R8 K6 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["createDatumFromInstance"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Util"]
       54 GETTABLEKS                       R7 R8 K15 ["createDebugLogger"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K16 ["Flags"]
       61 GETTABLEKS                       R8 R9 K17 ["getFFlagExplorerStreaming"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R12 R0 K8 ["Guest"]
       68 GETTABLEKS                       R11 R12 K9 ["InstanceGuestRPCInterface"]
       70 GETTABLEKS                       R10 R11 K6 ["Util"]
       72 GETTABLEKS                       R9 R10 K18 ["getInstanceById"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K6 ["Util"]
       79 GETTABLEKS                       R10 R11 K19 ["profile"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R14 R0 K8 ["Guest"]
       86 GETTABLEKS                       R13 R14 K9 ["InstanceGuestRPCInterface"]
       88 GETTABLEKS                       R12 R13 K6 ["Util"]
       90 GETTABLEKS                       R11 R12 K20 ["startTrackingInstance"]
       92 CALL                             R10 1 1
       93 MOVE                             R11 R6
       94 LOADK                            R12 K21 ["expandAsync"]
       95 CALL                             R11 1 1
       96 MOVE                             R12 R7
       97 CALL                             R12 0 1
       98 DUPCLOSURE                       R13 K22 [PROTO_0]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R12
      106 MOVE                             R14 R9
      107 MOVE                             R15 R13
      108 CALL                             R14 1 -1
      109 RETURN                           R14 -1
