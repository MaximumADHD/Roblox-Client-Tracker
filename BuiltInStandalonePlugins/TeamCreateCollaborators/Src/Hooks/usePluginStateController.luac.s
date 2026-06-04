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
       14 JUMPIFNOT                        R1 ; [+110]
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
       49 JUMPIFNOT                        R2 ; [+75]
       50 GETTABLEKS                       R3 R2 K11 ["success"]
       52 JUMPIFNOTEQKB                    R3 FALSE ; [+72]
       54 NEWTABLE                         R3 0 0
       56 GETTABLEKS                       R4 R2 K12 ["requiresTrustedConnection"]
       58 JUMPIFNOT                        R4 ; [+41]
       59 GETTABLEKS                       R4 R2 K12 ["requiresTrustedConnection"]
       61 LOADNIL                          R5
       62 LOADNIL                          R6
       63 FORGPREP                         R4
       64 JUMPIFNOT                        R8 ; [+33]
       65 GETTABLEKS                       R10 R8 K13 ["userId"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K6 [typeof]
       70 CALL                             R9 1 1
       71 JUMPIFNOTEQKS                    R9 K7 ["number"] ; [+26]
       73 DUPTABLE                         R11 K15 [{"userId", "errorReason"}]
       74 GETTABLEKS                       R12 R8 K13 ["userId"]
       76 SETTABLEKS                       R12 R11 K13 ["userId"]
       78 GETTABLEKS                       R14 R8 K14 ["errorReason"]
       80 FASTCALL1                        TYPEOF R14 ; [+2]
       81 GETIMPORT                        R13 K6 [typeof]
       83 CALL                             R13 1 1
       84 JUMPIFNOTEQKS                    R13 K16 ["string"] ; [+4]
       86 GETTABLEKS                       R12 R8 K14 ["errorReason"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R12
       90 SETTABLEKS                       R12 R11 K14 ["errorReason"]
       92 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       94 MOVE                             R10 R3
       95 GETIMPORT                        R9 K19 [table.insert]
       97 CALL                             R9 2 0
       98 FORGLOOP                         R4 2 ; [-35]
      100 LENGTH                           R4 R3
      101 JUMPIFNOTEQKN                    R4 K8 [0] ; [+20]
      103 GETTABLEKS                       R5 R2 K20 ["failedAgainstUserId"]
      105 FASTCALL1                        TYPEOF R5 ; [+2]
      106 GETIMPORT                        R4 K6 [typeof]
      108 CALL                             R4 1 1
      109 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+12]
      111 DUPTABLE                         R6 K21 [{"userId"}]
      112 GETTABLEKS                       R7 R2 K20 ["failedAgainstUserId"]
      114 SETTABLEKS                       R7 R6 K13 ["userId"]
      116 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      118 MOVE                             R5 R3
      119 GETIMPORT                        R4 K19 [table.insert]
      121 CALL                             R4 2 0
      122 GETUPVAL                         R4 0
      123 MOVE                             R5 R3
      124 CALL                             R4 1 0
      125 GETUPVAL                         R2 4
      126 GETUPVAL                         R3 5
      127 GETTABLEKS                       R3 R3 K22 ["Main"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

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
       27 GETTABLEKS                       R11 R0 K2 ["plugin"]
       29 LOADK                            R13 K3 ["Actions"]
       30 NAMECALL                         R11 R11 K4 ["GetPluginComponent"]
       32 CALL                             R11 2 1
       33 GETUPVAL                         R12 2
       34 GETUPVAL                         R16 3
       35 LOADB                            R17 1
       36 NAMECALL                         R14 R11 K5 ["CreateAsync"]
       38 CALL                             R14 3 1
       39 GETTABLEN                        R13 R14 1
       40 NEWCLOSURE                       R14 P0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U1
       47 NEWTABLE                         R15 0 0
       49 CALL                             R12 3 0
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       53 NEWCLOSURE                       R13 P1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R14 0 0
       59 CALL                             R12 2 1
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       63 NEWCLOSURE                       R14 P2
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U1
       66 NEWTABLE                         R15 0 0
       68 CALL                             R13 2 1
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       72 NEWCLOSURE                       R15 P3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          UPVAL U1
       75 NEWTABLE                         R16 0 0
       77 CALL                             R14 2 1
       78 DUPCLOSURE                       R15 K7 [PROTO_5]
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U4
       81 GETUPVAL                         R16 0
       82 GETTABLEKS                       R16 R16 K6 ["useCallback"]
       84 LOADK                            R18 K8 ["mainDialogClosed"]
       85 NEWCLOSURE                       R17 P5
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R18
       88 CAPTURE                          VAL R12
       89 NEWTABLE                         R18 0 2
       91 LOADK                            R19 K8 ["mainDialogClosed"]
       92 MOVE                             R20 R12
       93 SETLIST                          R18 R19 2 [1]
       95 CALL                             R16 2 1
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R17 R17 K6 ["useCallback"]
       99 LOADK                            R19 K9 ["newParentDialogClosed"]
      100 NEWCLOSURE                       R18 P5
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R19
      103 CAPTURE                          VAL R14
      104 NEWTABLE                         R19 0 2
      106 LOADK                            R20 K9 ["newParentDialogClosed"]
      107 MOVE                             R21 R14
      108 SETLIST                          R19 R20 2 [1]
      110 CALL                             R17 2 1
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K6 ["useCallback"]
      114 LOADK                            R20 K10 ["requestFailedDialogClosed"]
      115 NEWCLOSURE                       R19 P5
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R12
      119 NEWTABLE                         R20 0 2
      121 LOADK                            R21 K10 ["requestFailedDialogClosed"]
      122 MOVE                             R22 R12
      123 SETLIST                          R20 R21 2 [1]
      125 CALL                             R18 2 1
      126 GETUPVAL                         R19 0
      127 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      129 NEWCLOSURE                       R20 P6
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          UPVAL U6
      133 CAPTURE                          VAL R2
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R4
      136 NEWTABLE                         R21 0 0
      138 CALL                             R19 2 1
      139 DUPTABLE                         R20 K23 [{"activeDialog", "requestResult", "collaborators", "universeId", "placeId", "onCloseAll", "onOpenTrustedConnectionDialog", "onCloseTrustedConnectionDialog", "onMainDialogX", "onNewParentDialogX", "onRequestFailedDialogX", "onRequestComplete"}]
      140 SETTABLEKS                       R1 R20 K11 ["activeDialog"]
      142 SETTABLEKS                       R3 R20 K12 ["requestResult"]
      144 SETTABLEKS                       R5 R20 K13 ["collaborators"]
      146 SETTABLEKS                       R7 R20 K14 ["universeId"]
      148 SETTABLEKS                       R9 R20 K15 ["placeId"]
      150 SETTABLEKS                       R12 R20 K16 ["onCloseAll"]
      152 SETTABLEKS                       R13 R20 K17 ["onOpenTrustedConnectionDialog"]
      154 SETTABLEKS                       R14 R20 K18 ["onCloseTrustedConnectionDialog"]
      156 SETTABLEKS                       R16 R20 K19 ["onMainDialogX"]
      158 SETTABLEKS                       R17 R20 K20 ["onNewParentDialogX"]
      160 SETTABLEKS                       R18 R20 K21 ["onRequestFailedDialogX"]
      162 SETTABLEKS                       R19 R20 K22 ["onRequestComplete"]
      164 RETURN                           R20 1

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
       69 DUPTABLE                         R12 K27 [{"DataModel", "PluginId", "Category", "ItemId"}]
       70 LOADK                            R13 K28 ["Standalone"]
       71 SETTABLEKS                       R13 R12 K23 ["DataModel"]
       73 LOADK                            R13 K2 ["TeamCreateCollaborators"]
       74 SETTABLEKS                       R13 R12 K24 ["PluginId"]
       76 LOADK                            R13 K29 ["Actions"]
       77 SETTABLEKS                       R13 R12 K25 ["Category"]
       79 LOADK                            R13 K30 ["Toggle"]
       80 SETTABLEKS                       R13 R12 K26 ["ItemId"]
       82 DUPTABLE                         R13 K37 [{"Uri", "Enabled", "Visible", "Checked", "Checkable", "Shortcuts"}]
       83 SETTABLEKS                       R12 R13 K31 ["Uri"]
       85 LOADB                            R14 1
       86 SETTABLEKS                       R14 R13 K32 ["Enabled"]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K33 ["Visible"]
       91 LOADB                            R14 0
       92 SETTABLEKS                       R14 R13 K34 ["Checked"]
       94 LOADB                            R14 0
       95 SETTABLEKS                       R14 R13 K35 ["Checkable"]
       97 NEWTABLE                         R14 0 1
       99 LOADK                            R15 K38 ["Ctrl+Shift+C"]
      100 SETLIST                          R14 R15 1 [1]
      102 SETTABLEKS                       R14 R13 K36 ["Shortcuts"]
      104 DUPTABLE                         R14 K43 [{"None", "Main", "VPCTrustedConnection", "VPCRequestSent"}]
      105 LOADK                            R15 K44 ["none"]
      106 SETTABLEKS                       R15 R14 K39 ["None"]
      108 LOADK                            R15 K45 ["main"]
      109 SETTABLEKS                       R15 R14 K40 ["Main"]
      111 LOADK                            R15 K46 ["vpcTrustedConnection"]
      112 SETTABLEKS                       R15 R14 K41 ["VPCTrustedConnection"]
      114 LOADK                            R15 K47 ["vpcRequestSent"]
      115 SETTABLEKS                       R15 R14 K42 ["VPCRequestSent"]
      117 DUPCLOSURE                       R15 K48 [PROTO_7]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R8
      125 DUPTABLE                         R16 K51 [{"ActiveDialog", "use"}]
      126 SETTABLEKS                       R14 R16 K49 ["ActiveDialog"]
      128 SETTABLEKS                       R15 R16 K50 ["use"]
      130 RETURN                           R16 1
