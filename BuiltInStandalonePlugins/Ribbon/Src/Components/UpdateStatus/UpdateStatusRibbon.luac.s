PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["InteractionTelemetry"]
        3 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        5 CALL                             R0 2 1
        6 DUPTABLE                         R3 K7 [{"functionType", "sourceType", "sourceData"}]
        7 LOADK                            R4 K8 ["Navigation"]
        8 SETTABLEKS                       R4 R3 K4 ["functionType"]
       10 LOADK                            R4 K9 ["Widget"]
       11 SETTABLEKS                       R4 R3 K5 ["sourceType"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K10 ["toString"]
       16 GETUPVAL                         R5 1
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K6 ["sourceData"]
       20 NAMECALL                         R1 R0 K11 ["ReportInteractionAsync"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 GETIMPORT                        R1 K3 [Enum.UpdateState.UpdateNotAvailable]
        6 JUMPIFNOTEQ                      R0 R1 ; [+22]
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETIMPORT                        R1 K3 [Enum.UpdateState.UpdateNotAvailable]
       15 JUMPIFNOTEQ                      R0 R1 ; [+5]
       17 GETUPVAL                         R0 2
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 1
       22 GETIMPORT                        R1 K5 [Enum.UpdateState.UpdateReady]
       24 JUMPIFNOTEQ                      R0 R1 ; [+4]
       26 GETUPVAL                         R0 2
       27 LOADB                            R1 1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateManagerBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R1 R0 K2 ["RequestToUpdatePopupVisibilityDueToStateChange"]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R0 1
       17 LOADB                            R1 1
       18 SETTABLEKS                       R1 R0 K0 ["current"]
       20 GETUPVAL                         R0 2
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+5]
        1 GETIMPORT                        R1 K2 [task.defer]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 NOT                              R1 R0
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["use"]
        9 CALL                             R1 0 1
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["wrap"]
       16 NAMECALL                         R3 R1 K5 ["GetUri"]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K6 ["child"]
       23 GETTABLEKS                       R4 R0 K7 ["WidgetUri"]
       25 GETTABLEKS                       R5 R0 K8 ["Item"]
       27 GETTABLEKS                       R5 R5 K9 ["Id"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K10 ["join"]
       33 MOVE                             R5 R2
       34 DUPTABLE                         R6 K13 [{"Category", "ItemId"}]
       35 LOADK                            R7 K14 ["Panels"]
       36 SETTABLEKS                       R7 R6 K11 ["Category"]
       38 GETTABLEKS                       R7 R0 K8 ["Item"]
       40 GETTABLEKS                       R7 R7 K9 ["Id"]
       42 SETTABLEKS                       R7 R6 K12 ["ItemId"]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 3
       46 LOADB                            R6 0
       47 CALL                             R5 1 2
       48 GETUPVAL                         R7 4
       49 MOVE                             R8 R1
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 5
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R10 0 1
       58 MOVE                             R11 R7
       59 SETLIST                          R10 R11 1 [1]
       61 CALL                             R8 2 0
       62 GETUPVAL                         R8 3
       63 LOADB                            R9 1
       64 CALL                             R8 1 2
       65 GETUPVAL                         R10 7
       66 GETTABLEKS                       R10 R10 K15 ["useRef"]
       68 LOADB                            R11 0
       69 CALL                             R10 1 1
       70 GETUPVAL                         R11 5
       71 NEWCLOSURE                       R12 P1
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 NEWTABLE                         R13 0 1
       76 MOVE                             R14 R1
       77 SETLIST                          R13 R14 1 [1]
       79 CALL                             R11 2 0
       80 GETUPVAL                         R11 5
       81 NEWCLOSURE                       R12 P2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R13 0 1
       88 MOVE                             R14 R8
       89 SETLIST                          R13 R14 1 [1]
       91 CALL                             R11 2 0
       92 GETUPVAL                         R11 7
       93 GETTABLEKS                       R11 R11 K16 ["createElement"]
       95 GETUPVAL                         R12 7
       96 GETTABLEKS                       R12 R12 K17 ["Fragment"]
       98 NEWTABLE                         R13 0 0
      100 DUPTABLE                         R14 K20 [{"UpdateStatusButton", "UpdateStatusPanel"}]
      101 GETUPVAL                         R15 7
      102 GETTABLEKS                       R15 R15 K16 ["createElement"]
      104 GETUPVAL                         R16 8
      105 DUPTABLE                         R17 K25 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
      106 SETTABLEKS                       R3 R17 K21 ["Uri"]
      108 GETTABLEKS                       R18 R0 K22 ["LayoutOrder"]
      110 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      112 SETTABLEKS                       R7 R17 K23 ["UpdateState"]
      114 NEWCLOSURE                       R18 P3
      115 CAPTURE                          VAL R6
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R18 R17 K24 ["onActivated"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K18 ["UpdateStatusButton"]
      123 GETUPVAL                         R15 7
      124 GETTABLEKS                       R15 R15 K16 ["createElement"]
      126 GETUPVAL                         R16 10
      127 DUPTABLE                         R17 K29 [{"Enabled", "ItemId", "PanelUri", "ButtonUri"}]
      128 SETTABLEKS                       R5 R17 K26 ["Enabled"]
      130 GETTABLEKS                       R18 R0 K8 ["Item"]
      132 GETTABLEKS                       R18 R18 K9 ["Id"]
      134 SETTABLEKS                       R18 R17 K12 ["ItemId"]
      136 SETTABLEKS                       R4 R17 K27 ["PanelUri"]
      138 SETTABLEKS                       R3 R17 K28 ["ButtonUri"]
      140 DUPTABLE                         R18 K31 [{"UpdateStatusDialog"}]
      141 GETUPVAL                         R19 7
      142 GETTABLEKS                       R19 R19 K16 ["createElement"]
      144 GETUPVAL                         R20 11
      145 DUPTABLE                         R21 K32 [{"UpdateState"}]
      146 SETTABLEKS                       R7 R21 K23 ["UpdateState"]
      148 CALL                             R19 2 1
      149 SETTABLEKS                       R19 R18 K30 ["UpdateStatusDialog"]
      151 CALL                             R15 3 1
      152 SETTABLEKS                       R15 R14 K19 ["UpdateStatusPanel"]
      154 CALL                             R11 3 -1
      155 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["SharedFlags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFeatureStudioBackgroundUpdates"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["SharedFlags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagStudioUpdateStatusDisableAutoOpen"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K15 ["useUpdateState"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K16 ["useState"]
       57 GETTABLEKS                       R8 R1 K17 ["useEffect"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Components"]
       65 GETTABLEKS                       R10 R10 K19 ["UpdateStatus"]
       67 GETTABLEKS                       R10 R10 K20 ["UpdateStatusButton"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K10 ["Src"]
       74 GETTABLEKS                       R11 R11 K18 ["Components"]
       76 GETTABLEKS                       R11 R11 K19 ["UpdateStatus"]
       78 GETTABLEKS                       R11 R11 K21 ["UpdateStatusPanel"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K10 ["Src"]
       85 GETTABLEKS                       R12 R12 K18 ["Components"]
       87 GETTABLEKS                       R12 R12 K19 ["UpdateStatus"]
       89 GETTABLEKS                       R12 R12 K22 ["UpdateStatusDialog"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K10 ["Src"]
       96 GETTABLEKS                       R13 R13 K23 ["Types"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R3 K24 ["Util"]
      101 GETTABLEKS                       R13 R13 K25 ["StudioUri"]
      103 GETTABLEKS                       R14 R2 K26 ["ContextServices"]
      105 GETTABLEKS                       R15 R14 K27 ["Plugin"]
      107 DUPCLOSURE                       R16 K28 [PROTO_1]
      108 CAPTURE                          VAL R13
      109 DUPCLOSURE                       R17 K29 [PROTO_8]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 RETURN                           R17 1
