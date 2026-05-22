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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["wrap"]
       10 NAMECALL                         R3 R1 K3 ["GetUri"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["child"]
       17 GETTABLEKS                       R4 R0 K5 ["WidgetUri"]
       19 GETTABLEKS                       R5 R0 K6 ["Item"]
       21 GETTABLEKS                       R5 R5 K7 ["Id"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K8 ["join"]
       27 MOVE                             R5 R2
       28 DUPTABLE                         R6 K11 [{"Category", "ItemId"}]
       29 LOADK                            R7 K12 ["Panels"]
       30 SETTABLEKS                       R7 R6 K9 ["Category"]
       32 GETTABLEKS                       R7 R0 K6 ["Item"]
       34 GETTABLEKS                       R7 R7 K7 ["Id"]
       36 SETTABLEKS                       R7 R6 K10 ["ItemId"]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 LOADB                            R6 0
       41 CALL                             R5 1 2
       42 GETUPVAL                         R7 3
       43 MOVE                             R8 R1
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 4
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R10 0 1
       52 MOVE                             R11 R7
       53 SETLIST                          R10 R11 1 [1]
       55 CALL                             R8 2 0
       56 GETUPVAL                         R8 2
       57 LOADB                            R9 1
       58 CALL                             R8 1 2
       59 GETUPVAL                         R10 6
       60 GETTABLEKS                       R10 R10 K13 ["useRef"]
       62 LOADB                            R11 0
       63 CALL                             R10 1 1
       64 GETUPVAL                         R11 4
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R9
       68 NEWTABLE                         R13 0 1
       70 MOVE                             R14 R1
       71 SETLIST                          R13 R14 1 [1]
       73 CALL                             R11 2 0
       74 GETUPVAL                         R11 4
       75 NEWCLOSURE                       R12 P2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R8
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 0
       86 GETUPVAL                         R11 6
       87 GETTABLEKS                       R11 R11 K14 ["createElement"]
       89 GETUPVAL                         R12 6
       90 GETTABLEKS                       R12 R12 K15 ["Fragment"]
       92 NEWTABLE                         R13 0 0
       94 DUPTABLE                         R14 K18 [{"UpdateStatusButton", "UpdateStatusPanel"}]
       95 GETUPVAL                         R15 6
       96 GETTABLEKS                       R15 R15 K14 ["createElement"]
       98 GETUPVAL                         R16 7
       99 DUPTABLE                         R17 K23 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
      100 SETTABLEKS                       R3 R17 K19 ["Uri"]
      102 GETTABLEKS                       R18 R0 K20 ["LayoutOrder"]
      104 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      106 SETTABLEKS                       R7 R17 K21 ["UpdateState"]
      108 NEWCLOSURE                       R18 P3
      109 CAPTURE                          VAL R6
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R18 R17 K22 ["onActivated"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K16 ["UpdateStatusButton"]
      117 GETUPVAL                         R15 6
      118 GETTABLEKS                       R15 R15 K14 ["createElement"]
      120 GETUPVAL                         R16 9
      121 DUPTABLE                         R17 K27 [{"Enabled", "ItemId", "PanelUri", "ButtonUri"}]
      122 SETTABLEKS                       R5 R17 K24 ["Enabled"]
      124 GETTABLEKS                       R18 R0 K6 ["Item"]
      126 GETTABLEKS                       R18 R18 K7 ["Id"]
      128 SETTABLEKS                       R18 R17 K10 ["ItemId"]
      130 SETTABLEKS                       R4 R17 K25 ["PanelUri"]
      132 SETTABLEKS                       R3 R17 K26 ["ButtonUri"]
      134 DUPTABLE                         R18 K29 [{"UpdateStatusDialog"}]
      135 GETUPVAL                         R19 6
      136 GETTABLEKS                       R19 R19 K14 ["createElement"]
      138 GETUPVAL                         R20 10
      139 DUPTABLE                         R21 K30 [{"UpdateState"}]
      140 SETTABLEKS                       R7 R21 K21 ["UpdateState"]
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K28 ["UpdateStatusDialog"]
      145 CALL                             R15 3 1
      146 SETTABLEKS                       R15 R14 K17 ["UpdateStatusPanel"]
      148 CALL                             R11 3 -1
      149 RETURN                           R11 -1

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
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagStudioUpdateStatusDisableAutoOpen"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useUpdateState"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["useState"]
       48 GETTABLEKS                       R7 R1 K16 ["useEffect"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Components"]
       56 GETTABLEKS                       R9 R9 K18 ["UpdateStatus"]
       58 GETTABLEKS                       R9 R9 K19 ["UpdateStatusButton"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Src"]
       65 GETTABLEKS                       R10 R10 K17 ["Components"]
       67 GETTABLEKS                       R10 R10 K18 ["UpdateStatus"]
       69 GETTABLEKS                       R10 R10 K20 ["UpdateStatusPanel"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R11 K17 ["Components"]
       78 GETTABLEKS                       R11 R11 K18 ["UpdateStatus"]
       80 GETTABLEKS                       R11 R11 K21 ["UpdateStatusDialog"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K10 ["Src"]
       87 GETTABLEKS                       R12 R12 K22 ["Types"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R3 K23 ["Util"]
       92 GETTABLEKS                       R12 R12 K24 ["StudioUri"]
       94 GETTABLEKS                       R13 R2 K25 ["ContextServices"]
       96 GETTABLEKS                       R14 R13 K26 ["Plugin"]
       98 DUPCLOSURE                       R15 K27 [PROTO_1]
       99 CAPTURE                          VAL R12
      100 DUPCLOSURE                       R16 K28 [PROTO_8]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 RETURN                           R16 1
