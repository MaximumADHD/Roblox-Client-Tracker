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
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K10 ["toString"]
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
        1 GETIMPORT                        R1 K3 [Enum.UpdateState.UpdateNotAvailable]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K5 [Enum.UpdateState.UpdateReady]
       12 JUMPIFNOTEQ                      R0 R1 ; [+4]
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
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
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["use"]
        9 CALL                             R1 0 1
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K4 ["wrap"]
       16 NAMECALL                         R3 R1 K5 ["GetUri"]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K6 ["child"]
       23 GETTABLEKS                       R4 R0 K7 ["WidgetUri"]
       25 GETTABLEKS                       R6 R0 K8 ["Item"]
       27 GETTABLEKS                       R5 R6 K9 ["Id"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K10 ["join"]
       33 MOVE                             R5 R2
       34 DUPTABLE                         R6 K13 [{"Category", "ItemId"}]
       35 LOADK                            R7 K14 ["Panels"]
       36 SETTABLEKS                       R7 R6 K11 ["Category"]
       38 GETTABLEKS                       R8 R0 K8 ["Item"]
       40 GETTABLEKS                       R7 R8 K9 ["Id"]
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
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R7
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R8 3
       62 LOADB                            R9 1
       63 CALL                             R8 1 2
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R10 R11 K15 ["useRef"]
       67 LOADB                            R11 0
       68 CALL                             R10 1 1
       69 GETUPVAL                         R11 5
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 NEWTABLE                         R13 0 1
       75 MOVE                             R14 R1
       76 SETLIST                          R13 R14 1 [1]
       78 CALL                             R11 2 0
       79 GETUPVAL                         R11 5
       80 NEWCLOSURE                       R12 P2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 NEWTABLE                         R13 0 1
       87 MOVE                             R14 R8
       88 SETLIST                          R13 R14 1 [1]
       90 CALL                             R11 2 0
       91 GETUPVAL                         R12 6
       92 GETTABLEKS                       R11 R12 K16 ["createElement"]
       94 GETUPVAL                         R13 6
       95 GETTABLEKS                       R12 R13 K17 ["Fragment"]
       97 NEWTABLE                         R13 0 0
       99 DUPTABLE                         R14 K20 [{"UpdateStatusButton", "UpdateStatusPanel"}]
      100 GETUPVAL                         R16 6
      101 GETTABLEKS                       R15 R16 K16 ["createElement"]
      103 GETUPVAL                         R16 7
      104 DUPTABLE                         R17 K25 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
      105 SETTABLEKS                       R3 R17 K21 ["Uri"]
      107 GETTABLEKS                       R18 R0 K22 ["LayoutOrder"]
      109 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      111 SETTABLEKS                       R7 R17 K23 ["UpdateState"]
      113 NEWCLOSURE                       R18 P3
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U8
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R18 R17 K24 ["onActivated"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K18 ["UpdateStatusButton"]
      122 GETUPVAL                         R16 6
      123 GETTABLEKS                       R15 R16 K16 ["createElement"]
      125 GETUPVAL                         R16 9
      126 DUPTABLE                         R17 K29 [{"Enabled", "ItemId", "PanelUri", "ButtonUri"}]
      127 SETTABLEKS                       R5 R17 K26 ["Enabled"]
      129 GETTABLEKS                       R19 R0 K8 ["Item"]
      131 GETTABLEKS                       R18 R19 K9 ["Id"]
      133 SETTABLEKS                       R18 R17 K12 ["ItemId"]
      135 SETTABLEKS                       R4 R17 K27 ["PanelUri"]
      137 SETTABLEKS                       R3 R17 K28 ["ButtonUri"]
      139 DUPTABLE                         R18 K31 [{"UpdateStatusDialog"}]
      140 GETUPVAL                         R20 6
      141 GETTABLEKS                       R19 R20 K16 ["createElement"]
      143 GETUPVAL                         R20 10
      144 DUPTABLE                         R21 K32 [{"UpdateState"}]
      145 SETTABLEKS                       R7 R21 K23 ["UpdateState"]
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K30 ["UpdateStatusDialog"]
      150 CALL                             R15 3 1
      151 SETTABLEKS                       R15 R14 K19 ["UpdateStatusPanel"]
      153 CALL                             R11 3 -1
      154 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["SharedFlags"]
       34 GETTABLEKS                       R5 R6 K12 ["getFeatureStudioBackgroundUpdates"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useUpdateState"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["useState"]
       48 GETTABLEKS                       R7 R1 K16 ["useEffect"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R12 R0 K10 ["Src"]
       54 GETTABLEKS                       R11 R12 K17 ["Components"]
       56 GETTABLEKS                       R10 R11 K18 ["UpdateStatus"]
       58 GETTABLEKS                       R9 R10 K19 ["UpdateStatusButton"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R13 R0 K10 ["Src"]
       65 GETTABLEKS                       R12 R13 K17 ["Components"]
       67 GETTABLEKS                       R11 R12 K18 ["UpdateStatus"]
       69 GETTABLEKS                       R10 R11 K20 ["UpdateStatusPanel"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R14 R0 K10 ["Src"]
       76 GETTABLEKS                       R13 R14 K17 ["Components"]
       78 GETTABLEKS                       R12 R13 K18 ["UpdateStatus"]
       80 GETTABLEKS                       R11 R12 K21 ["UpdateStatusDialog"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Src"]
       87 GETTABLEKS                       R12 R13 K22 ["Types"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R13 R3 K23 ["Util"]
       92 GETTABLEKS                       R12 R13 K24 ["StudioUri"]
       94 GETTABLEKS                       R13 R2 K25 ["ContextServices"]
       96 GETTABLEKS                       R14 R13 K26 ["Plugin"]
       98 DUPCLOSURE                       R15 K27 [PROTO_1]
       99 CAPTURE                          VAL R12
      100 DUPCLOSURE                       R16 K28 [PROTO_8]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 RETURN                           R16 1
