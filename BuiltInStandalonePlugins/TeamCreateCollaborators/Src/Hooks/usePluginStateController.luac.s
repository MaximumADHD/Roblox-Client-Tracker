PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["plugin"]
        7 LOADK                            R2 K1 ["ModerationController"]
        8 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
       10 CALL                             R0 2 1
       11 NAMECALL                         R1 R0 K3 ["GetCollaborationJoinInfoAsync"]
       13 CALL                             R1 1 1
       14 JUMPIFNOT                        R1 ; [+115]
       15 GETTABLEKS                       R3 R1 K4 ["universeId"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K6 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+9]
       23 GETTABLEKS                       R2 R1 K4 ["universeId"]
       25 JUMPIFEQKN                       R2 K8 [0] ; [+5]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R3 R1 K4 ["universeId"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R3 R1 K9 ["placeId"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K6 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+9]
       39 GETTABLEKS                       R2 R1 K9 ["placeId"]
       41 JUMPIFEQKN                       R2 K8 [0] ; [+5]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R3 R1 K9 ["placeId"]
       46 CALL                             R2 1 0
       47 GETTABLEKS                       R2 R1 K10 ["collaborationJoinResult"]
       49 JUMPIFNOT                        R2 ; [+4]
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R4 R2 K11 ["userCapabilities"]
       53 CALL                             R3 1 0
       54 JUMPIFNOT                        R2 ; [+75]
       55 GETTABLEKS                       R3 R2 K12 ["success"]
       57 JUMPIFNOTEQKB                    R3 FALSE ; [+72]
       59 NEWTABLE                         R3 0 0
       61 GETTABLEKS                       R4 R2 K13 ["requiresTrustedConnection"]
       63 JUMPIFNOT                        R4 ; [+41]
       64 GETTABLEKS                       R4 R2 K13 ["requiresTrustedConnection"]
       66 LOADNIL                          R5
       67 LOADNIL                          R6
       68 FORGPREP                         R4
       69 JUMPIFNOT                        R8 ; [+33]
       70 GETTABLEKS                       R10 R8 K14 ["userId"]
       72 FASTCALL1                        TYPEOF R10 ; [+2]
       73 GETIMPORT                        R9 K6 [typeof]
       75 CALL                             R9 1 1
       76 JUMPIFNOTEQKS                    R9 K7 ["number"] ; [+26]
       78 DUPTABLE                         R11 K16 [{"userId", "errorReason"}]
       79 GETTABLEKS                       R12 R8 K14 ["userId"]
       81 SETTABLEKS                       R12 R11 K14 ["userId"]
       83 GETTABLEKS                       R14 R8 K15 ["errorReason"]
       85 FASTCALL1                        TYPEOF R14 ; [+2]
       86 GETIMPORT                        R13 K6 [typeof]
       88 CALL                             R13 1 1
       89 JUMPIFNOTEQKS                    R13 K17 ["string"] ; [+4]
       91 GETTABLEKS                       R12 R8 K15 ["errorReason"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R12
       95 SETTABLEKS                       R12 R11 K15 ["errorReason"]
       97 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       99 MOVE                             R10 R3
      100 GETIMPORT                        R9 K20 [table.insert]
      102 CALL                             R9 2 0
      103 FORGLOOP                         R4 2 ; [-35]
      105 LENGTH                           R4 R3
      106 JUMPIFNOTEQKN                    R4 K8 [0] ; [+20]
      108 GETTABLEKS                       R5 R2 K21 ["failedAgainstUserId"]
      110 FASTCALL1                        TYPEOF R5 ; [+2]
      111 GETIMPORT                        R4 K6 [typeof]
      113 CALL                             R4 1 1
      114 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+12]
      116 DUPTABLE                         R6 K22 [{"userId"}]
      117 GETTABLEKS                       R7 R2 K21 ["failedAgainstUserId"]
      119 SETTABLEKS                       R7 R6 K14 ["userId"]
      121 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      123 MOVE                             R5 R3
      124 GETIMPORT                        R4 K20 [table.insert]
      126 CALL                             R4 2 0
      127 GETUPVAL                         R4 0
      128 MOVE                             R5 R3
      129 CALL                             R4 1 0
      130 GETUPVAL                         R2 5
      131 GETUPVAL                         R3 6
      132 GETTABLEKS                       R3 R3 K23 ["Main"]
      134 CALL                             R2 1 0
      135 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["VPCTrustedConnection"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Main"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendButtonClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 2
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["sendFeatureShown"]
        6 LOADK                            R2 K2 ["requestSucceeded"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 2
       11 LOADK                            R3 K3 ["TrustedConnectionRequestSent"]
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K5 ["None"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 5
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 3
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K6 ["VPCRequestSent"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["None"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useState"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["useState"]
       15 LOADNIL                          R6
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K0 ["useState"]
       20 LOADN                            R8 0
       21 CALL                             R7 1 2
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K0 ["useState"]
       25 LOADN                            R10 0
       26 CALL                             R9 1 2
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K0 ["useState"]
       30 LOADNIL                          R12
       31 CALL                             R11 1 2
       32 GETTABLEKS                       R13 R0 K2 ["plugin"]
       34 LOADK                            R15 K3 ["Actions"]
       35 NAMECALL                         R13 R13 K4 ["GetPluginComponent"]
       37 CALL                             R13 2 1
       38 GETUPVAL                         R14 2
       39 GETUPVAL                         R18 3
       40 LOADB                            R19 1
       41 NAMECALL                         R16 R13 K5 ["CreateAsync"]
       43 CALL                             R16 3 1
       44 GETTABLEN                        R15 R16 1
       45 NEWCLOSURE                       R16 P0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U1
       53 NEWTABLE                         R17 0 0
       55 CALL                             R14 3 0
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R16 0 0
       65 CALL                             R14 2 1
       66 GETUPVAL                         R15 0
       67 GETTABLEKS                       R15 R15 K6 ["useCallback"]
       69 NEWCLOSURE                       R16 P2
       70 CAPTURE                          VAL R2
       71 CAPTURE                          UPVAL U1
       72 NEWTABLE                         R17 0 0
       74 CALL                             R15 2 1
       75 GETUPVAL                         R16 0
       76 GETTABLEKS                       R16 R16 K6 ["useCallback"]
       78 NEWCLOSURE                       R17 P3
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U1
       81 NEWTABLE                         R18 0 0
       83 CALL                             R16 2 1
       84 DUPCLOSURE                       R17 K7 [PROTO_5]
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          UPVAL U4
       87 GETUPVAL                         R18 0
       88 GETTABLEKS                       R18 R18 K6 ["useCallback"]
       90 LOADK                            R20 K8 ["mainDialogClosed"]
       91 NEWCLOSURE                       R19 P5
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R20
       94 CAPTURE                          VAL R14
       95 NEWTABLE                         R20 0 2
       97 LOADK                            R21 K8 ["mainDialogClosed"]
       98 MOVE                             R22 R14
       99 SETLIST                          R20 R21 2 [1]
      101 CALL                             R18 2 1
      102 GETUPVAL                         R19 0
      103 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      105 LOADK                            R21 K9 ["newParentDialogClosed"]
      106 NEWCLOSURE                       R20 P5
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R21
      109 CAPTURE                          VAL R16
      110 NEWTABLE                         R21 0 2
      112 LOADK                            R22 K9 ["newParentDialogClosed"]
      113 MOVE                             R23 R16
      114 SETLIST                          R21 R22 2 [1]
      116 CALL                             R19 2 1
      117 GETUPVAL                         R20 0
      118 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      120 LOADK                            R22 K10 ["requestFailedDialogClosed"]
      121 NEWCLOSURE                       R21 P5
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R14
      125 NEWTABLE                         R22 0 2
      127 LOADK                            R23 K10 ["requestFailedDialogClosed"]
      128 MOVE                             R24 R14
      129 SETLIST                          R22 R23 2 [1]
      131 CALL                             R20 2 1
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      135 NEWCLOSURE                       R22 P6
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          VAL R4
      142 NEWTABLE                         R23 0 0
      144 CALL                             R21 2 1
      145 DUPTABLE                         R22 K24 [{"activeDialog", "requestResult", "collaborators", "universeId", "placeId", "userCapabilities", "onCloseAll", "onOpenTrustedConnectionDialog", "onCloseTrustedConnectionDialog", "onMainDialogX", "onNewParentDialogX", "onRequestFailedDialogX", "onRequestComplete"}]
      146 SETTABLEKS                       R1 R22 K11 ["activeDialog"]
      148 SETTABLEKS                       R3 R22 K12 ["requestResult"]
      150 SETTABLEKS                       R5 R22 K13 ["collaborators"]
      152 SETTABLEKS                       R7 R22 K14 ["universeId"]
      154 SETTABLEKS                       R9 R22 K15 ["placeId"]
      156 SETTABLEKS                       R11 R22 K16 ["userCapabilities"]
      158 SETTABLEKS                       R14 R22 K17 ["onCloseAll"]
      160 SETTABLEKS                       R15 R22 K18 ["onOpenTrustedConnectionDialog"]
      162 SETTABLEKS                       R16 R22 K19 ["onCloseTrustedConnectionDialog"]
      164 SETTABLEKS                       R18 R22 K20 ["onMainDialogX"]
      166 SETTABLEKS                       R19 R22 K21 ["onNewParentDialogX"]
      168 SETTABLEKS                       R20 R22 K22 ["onRequestFailedDialogX"]
      170 SETTABLEKS                       R21 R22 K23 ["onRequestComplete"]
      172 RETURN                           R22 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useEventConnection"]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["ControllerContext"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K14 ["Util"]
       41 GETTABLEKS                       R7 R7 K15 ["CrossPluginCommunication"]
       43 GETTABLEKS                       R8 R7 K16 ["new"]
       45 LOADK                            R9 K17 ["StartPageTeamCreateCollaborators"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K18 ["Bin"]
       51 GETTABLEKS                       R10 R10 K19 ["Common"]
       53 GETTABLEKS                       R10 R10 K20 ["flags"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R9 K21 ["FFlagStartPageTrustedConnectionSnackbar"]
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K11 ["Src"]
       62 GETTABLEKS                       R12 R12 K14 ["Util"]
       64 GETTABLEKS                       R12 R12 K22 ["Telemetry"]
       66 GETTABLEKS                       R12 R12 K22 ["Telemetry"]
       68 CALL                             R11 1 1
       69 DUPTABLE                         R12 K30 [{["DataModel"] = "Standalone", ["PluginId"] = "TeamCreateCollaborators", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       70 DUPTABLE                         R13 K38 [{["Uri"], ["Enabled"] = True, ["Visible"] = True, ["Checked"] = False, ["Checkable"] = False}]
       71 SETTABLEKS                       R12 R13 K31 ["Uri"]
       73 DUPTABLE                         R14 K47 [{["None"] = "none", ["Main"] = "main", ["VPCTrustedConnection"] = "vpcTrustedConnection", ["VPCRequestSent"] = "vpcRequestSent"}]
       74 DUPCLOSURE                       R15 K48 [PROTO_7]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 DUPTABLE                         R16 K51 [{"ActiveDialog", "use"}]
       83 SETTABLEKS                       R14 R16 K49 ["ActiveDialog"]
       85 SETTABLEKS                       R15 R16 K50 ["use"]
       87 RETURN                           R16 1
