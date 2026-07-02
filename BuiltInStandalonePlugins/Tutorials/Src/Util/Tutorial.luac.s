PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TutorialService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioWidgetsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R5 0 0
        2 DUPTABLE                         R6 K19 [{[1] = False, ["dataModel"], ["currentStep"] = 0, ["data"], ["steps"], ["instances"], ["localization"], ["incrementing"] = False, ["toolboxConnection"], ["toolboxLimits"] = , ["callouts"], ["topics"], ["onStepChanged"], ["onKeyPressed"], ["onCompleted"], ["widget"] = }]
        3 SETTABLEKS                       R0 R6 K2 ["dataModel"]
        5 SETTABLEKS                       R1 R6 K5 ["data"]
        7 SETTABLEKS                       R5 R6 K6 ["steps"]
        9 NEWTABLE                         R7 0 0
       11 SETTABLEKS                       R7 R6 K7 ["instances"]
       13 SETTABLEKS                       R2 R6 K8 ["localization"]
       15 SETTABLEKS                       R3 R6 K10 ["toolboxConnection"]
       17 NEWTABLE                         R7 0 0
       19 SETTABLEKS                       R7 R6 K13 ["callouts"]
       21 NEWTABLE                         R7 0 0
       23 SETTABLEKS                       R7 R6 K14 ["topics"]
       25 GETUPVAL                         R7 0
       26 SETTABLEKS                       R7 R6 K15 ["onStepChanged"]
       28 GETUPVAL                         R7 0
       29 SETTABLEKS                       R7 R6 K16 ["onKeyPressed"]
       31 GETUPVAL                         R7 0
       32 SETTABLEKS                       R7 R6 K17 ["onCompleted"]
       34 LOADK                            R9 K20 ["Panels"]
       35 NAMECALL                         R7 R4 K21 ["GetPluginComponent"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K20 ["Panels"]
       40 LOADK                            R9 K22 ["Spotlight"]
       41 NAMECALL                         R7 R4 K21 ["GetPluginComponent"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K22 ["Spotlight"]
       46 GETIMPORT                        R7 K24 [ipairs]
       48 GETTABLEKS                       R8 R1 K6 ["steps"]
       50 CALL                             R7 1 3
       51 FORGPREP_INEXT                   R7
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R14 R11 K25 ["kind"]
       55 GETTABLE                         R12 R13 R14
       56 GETTABLEKS                       R15 R1 K26 ["id"]
       58 LOADK                            R16 K27 ["%s_Title"]
       59 GETTABLEKS                       R18 R11 K26 ["id"]
       61 NAMECALL                         R16 R16 K28 ["format"]
       63 CALL                             R16 2 -1
       64 NAMECALL                         R13 R2 K29 ["getText"]
       66 CALL                             R13 -1 1
       67 GETTABLEKS                       R16 R1 K26 ["id"]
       69 LOADK                            R17 K30 ["%s_Description"]
       70 GETTABLEKS                       R19 R11 K26 ["id"]
       72 NAMECALL                         R17 R17 K28 ["format"]
       74 CALL                             R17 2 -1
       75 NAMECALL                         R14 R2 K29 ["getText"]
       77 CALL                             R14 -1 1
       78 SETTABLEKS                       R13 R11 K31 ["title"]
       80 SETTABLEKS                       R14 R11 K32 ["description"]
       82 GETTABLEKS                       R15 R11 K33 ["topic"]
       84 GETTABLEKS                       R17 R6 K14 ["topics"]
       86 GETTABLEKS                       R19 R6 K14 ["topics"]
       88 LENGTH                           R18 R19
       89 GETTABLE                         R16 R17 R18
       90 JUMPIFEQ                         R15 R16 ; [+9]
       92 GETTABLEKS                       R16 R6 K14 ["topics"]
       94 GETTABLEKS                       R17 R11 K33 ["topic"]
       96 FASTCALL2                        TABLE_INSERT R16 R17 ; [+2]
       98 GETUPVAL                         R15 2
       99 CALL                             R15 2 0
      100 JUMPIFNOT                        R12 ; [+10]
      101 MOVE                             R16 R5
      102 GETTABLEKS                       R17 R12 K34 ["new"]
      104 MOVE                             R18 R6
      105 MOVE                             R19 R11
      106 CALL                             R17 2 -1
      107 FASTCALL                         TABLE_INSERT ; [+1]
      108 GETUPVAL                         R15 2
      109 CALL                             R15 -1 0
      110 JUMP                             ; [+21]
      111 GETTABLEKS                       R15 R11 K25 ["kind"]
      113 JUMPIFNOT                        R15 ; [+8]
      114 GETIMPORT                        R15 K36 [warn]
      116 LOADK                            R17 K37 ["Missing step class: "]
      117 GETTABLEKS                       R18 R11 K25 ["kind"]
      119 CONCAT                           R16 R17 R18
      120 CALL                             R15 1 0
      121 JUMP                             ; [+10]
      122 MOVE                             R16 R5
      123 GETUPVAL                         R17 3
      124 GETTABLEKS                       R17 R17 K34 ["new"]
      126 MOVE                             R18 R6
      127 MOVE                             R19 R11
      128 CALL                             R17 2 -1
      129 FASTCALL                         TABLE_INSERT ; [+1]
      130 GETUPVAL                         R15 2
      131 CALL                             R15 -1 0
      132 FORGLOOP                         R7 2 [inext] ; [-81]
      134 GETUPVAL                         R9 4
      135 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
      137 MOVE                             R8 R6
      138 GETIMPORT                        R7 K39 [setmetatable]
      140 CALL                             R7 2 1
      141 RETURN                           R7 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["data"]
        2 GETTABLEKS                       R1 R1 K1 ["onStart"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["data"]
        7 GETTABLEKS                       R1 R1 K1 ["onStart"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 LOADN                            R3 1
       12 NAMECALL                         R1 R0 K2 ["setStep"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["widget"]
        2 NAMECALL                         R2 R0 K1 ["resetAttachment"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["widget"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 DUPTABLE                         R3 K5 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K1 ["TargetWidgetUri"]
        8 GETIMPORT                        R4 K8 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["SubjectAnchorPoint"]
       15 GETIMPORT                        R4 K8 [Vector2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K3 ["TargetAnchorPoint"]
       22 GETIMPORT                        R4 K8 [Vector2.new]
       24 LOADN                            R5 20
       25 LOADN                            R6 20
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K4 ["Offset"]
       29 NAMECALL                         R1 R0 K9 ["attachTo"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["TargetWidgetUri"]
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["TargetWidgetUri"]
        6 GETTABLEKS                       R2 R1 K1 ["SubjectAnchorPoint"]
        8 JUMPIF                           R2 ; [+5]
        9 GETIMPORT                        R2 K4 [Vector2.new]
       11 LOADK                            R3 K5 [0.5]
       12 LOADN                            R4 0
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K1 ["SubjectAnchorPoint"]
       16 GETTABLEKS                       R2 R1 K6 ["TargetAnchorPoint"]
       18 JUMPIF                           R2 ; [+5]
       19 GETIMPORT                        R2 K4 [Vector2.new]
       21 LOADK                            R3 K5 [0.5]
       22 LOADN                            R4 1
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K6 ["TargetAnchorPoint"]
       26 GETTABLEKS                       R2 R1 K7 ["Offset"]
       28 JUMPIF                           R2 ; [+5]
       29 GETIMPORT                        R2 K4 [Vector2.new]
       31 LOADN                            R3 0
       32 LOADN                            R4 0
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K7 ["Offset"]
       36 GETTABLEKS                       R2 R0 K8 ["Panels"]
       38 GETUPVAL                         R4 1
       39 MOVE                             R5 R1
       40 NAMECALL                         R2 R2 K9 ["SetAttachmentAsync"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSpotlight"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 RETURN                           R0 2

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["steps"]
        2 GETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R2 K1 ["data"]
        5 GETTABLEKS                       R4 R0 K2 ["currentCallout"]
        7 JUMPIFNOT                        R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K2 ["currentCallout"]
       10 NAMECALL                         R4 R4 K3 ["Destroy"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K2 ["currentCallout"]
       16 SETTABLEKS                       R1 R0 K4 ["currentStep"]
       18 GETTABLEKS                       R4 R3 K5 ["hideWidgets"]
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R6 R3 K5 ["hideWidgets"]
       24 NAMECALL                         R4 R4 K6 ["HideWidgets"]
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R3 K7 ["widgets"]
       29 JUMPIFNOT                        R4 ; [+6]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R6 R3 K7 ["widgets"]
       33 NAMECALL                         R4 R4 K8 ["ShowWidgets"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R6 R3 K9 ["toolboxLimits"]
       38 NAMECALL                         R4 R0 K10 ["setToolboxLimits"]
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R4 R3 K11 ["callout"]
       43 JUMPIFNOT                        R4 ; [+6]
       44 GETTABLEKS                       R6 R3 K11 ["callout"]
       46 NAMECALL                         R4 R0 K12 ["attachTo"]
       48 CALL                             R4 2 0
       49 JUMP                             ; [+3]
       50 NAMECALL                         R4 R0 K13 ["resetAttachment"]
       52 CALL                             R4 1 0
       53 GETTABLEKS                       R4 R0 K14 ["Spotlight"]
       55 NAMECALL                         R4 R4 K15 ["HideSpotlightAsync"]
       57 CALL                             R4 1 0
       58 GETUPVAL                         R4 1
       59 NAMECALL                         R4 R4 K16 ["HideSpotlight"]
       61 CALL                             R4 1 0
       62 NAMECALL                         R4 R2 K17 ["setCameraFocus"]
       64 CALL                             R4 1 0
       65 NAMECALL                         R4 R2 K18 ["bind"]
       67 CALL                             R4 1 0
       68 GETTABLEKS                       R4 R3 K19 ["onBind"]
       70 JUMPIFNOT                        R4 ; [+4]
       71 GETTABLEKS                       R4 R3 K19 ["onBind"]
       73 MOVE                             R5 R0
       74 CALL                             R4 1 0
       75 GETTABLEKS                       R4 R0 K20 ["showSpotlightTask"]
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETIMPORT                        R4 K23 [task.cancel]
       80 GETTABLEKS                       R5 R0 K20 ["showSpotlightTask"]
       82 CALL                             R4 1 0
       83 GETIMPORT                        R4 K25 [task.delay]
       85 LOADK                            R5 K26 [0.5]
       86 NEWCLOSURE                       R6 P0
       87 CAPTURE                          VAL R0
       88 CALL                             R4 2 1
       89 SETTABLEKS                       R4 R0 K20 ["showSpotlightTask"]
       91 NAMECALL                         R4 R0 K27 ["getCurrentStepData"]
       93 CALL                             R4 1 1
       94 GETUPVAL                         R5 2
       95 MOVE                             R6 R3
       96 DUPCLOSURE                       R7 K28 [PROTO_9]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K29 ["step"]
      100 GETTABLEKS                       R5 R0 K30 ["onStepChanged"]
      102 MOVE                             R6 R4
      103 CALL                             R5 1 0
      104 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["steps"]
        2 GETTABLEKS                       R3 R0 K1 ["currentStep"]
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

PROTO_12:
        0 NAMECALL                         R1 R0 K0 ["getCurrentStep"]
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K4 [{"id", "currentStep", "stepCount"}]
        4 GETTABLEKS                       R3 R0 K5 ["data"]
        6 GETTABLEKS                       R3 R3 K1 ["id"]
        8 SETTABLEKS                       R3 R2 K1 ["id"]
       10 GETTABLEKS                       R3 R0 K2 ["currentStep"]
       12 SETTABLEKS                       R3 R2 K2 ["currentStep"]
       14 GETTABLEKS                       R4 R0 K6 ["steps"]
       16 LENGTH                           R3 R4
       17 SETTABLEKS                       R3 R2 K3 ["stepCount"]
       19 GETTABLEKS                       R3 R1 K5 ["data"]
       21 GETTABLEKS                       R3 R3 K7 ["showNext"]
       23 SETTABLEKS                       R3 R2 K7 ["showNext"]
       25 GETTABLEKS                       R3 R0 K8 ["topics"]
       27 SETTABLEKS                       R3 R2 K8 ["topics"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R4 R0 K8 ["topics"]
       32 GETTABLEKS                       R5 R1 K5 ["data"]
       34 GETTABLEKS                       R5 R5 K9 ["topic"]
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R2 K9 ["topic"]
       39 LOADN                            R3 0
       40 SETTABLEKS                       R3 R2 K10 ["topicStepCount"]
       42 GETTABLEKS                       R3 R0 K6 ["steps"]
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 GETTABLEKS                       R8 R7 K5 ["data"]
       49 GETTABLEKS                       R8 R8 K9 ["topic"]
       51 GETTABLEKS                       R9 R1 K5 ["data"]
       53 GETTABLEKS                       R9 R9 K9 ["topic"]
       55 JUMPIFNOTEQ                      R8 R9 ; [+6]
       57 GETTABLEKS                       R8 R2 K10 ["topicStepCount"]
       59 ADDK                             R8 R8 K11 [1]
       60 SETTABLEKS                       R8 R2 K10 ["topicStepCount"]
       62 JUMPIFNOTEQ                      R7 R1 ; [+5]
       64 GETTABLEKS                       R8 R2 K10 ["topicStepCount"]
       66 SETTABLEKS                       R8 R2 K12 ["topicStep"]
       68 FORGLOOP                         R3 2 ; [-22]
       70 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["skipping"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["finishIncrement"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishIncrement"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{[1], ["kind"] = "Completed", ["title"]}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K5 ["data"]
        5 GETTABLEKS                       R2 R2 K0 ["id"]
        7 SETTABLEKS                       R2 R1 K0 ["id"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K6 ["localization"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K5 ["data"]
       15 GETTABLEKS                       R4 R4 K0 ["id"]
       17 LOADK                            R5 K7 ["%s_Title"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K5 ["data"]
       21 GETTABLEKS                       R7 R7 K0 ["id"]
       23 NAMECALL                         R5 R5 K8 ["format"]
       25 CALL                             R5 2 -1
       26 NAMECALL                         R2 R2 K9 ["getText"]
       28 CALL                             R2 -1 1
       29 SETTABLEKS                       R2 R1 K3 ["title"]
       31 SETTABLEKS                       R1 R0 K10 ["step"]
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K11 ["onStepChanged"]
       36 GETUPVAL                         R1 0
       37 CALL                             R0 1 0
       38 GETIMPORT                        R0 K14 [task.delay]
       40 LOADN                            R1 2
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          UPVAL U2
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["incrementing"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R0 K0 ["incrementing"]
        7 NAMECALL                         R2 R0 K1 ["getCurrentStep"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETTABLEKS                       R3 R2 K2 ["data"]
       13 GETTABLEKS                       R3 R3 K3 ["onUnbind"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETTABLEKS                       R3 R2 K2 ["data"]
       18 GETTABLEKS                       R3 R3 K3 ["onUnbind"]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 0
       22 NAMECALL                         R3 R2 K4 ["unbind"]
       24 CALL                             R3 1 0
       25 NAMECALL                         R3 R0 K5 ["getCurrentStepData"]
       27 CALL                             R3 1 1
       28 LOADB                            R4 0
       29 GETTABLEKS                       R5 R3 K6 ["topic"]
       31 GETTABLEKS                       R7 R3 K7 ["topics"]
       33 LENGTH                           R6 R7
       34 JUMPIFNOTEQ                      R5 R6 ; [+9]
       36 GETTABLEKS                       R5 R3 K8 ["topicStep"]
       38 GETTABLEKS                       R6 R3 K9 ["topicStepCount"]
       40 JUMPIFEQ                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 JUMPIFNOT                        R4 ; [+4]
       45 NAMECALL                         R5 R0 K10 ["finishIncrement"]
       47 CALL                             R5 1 0
       48 RETURN                           R0 0
       49 JUMPIFNOT                        R1 ; [+51]
       50 GETTABLEKS                       R5 R0 K11 ["skipping"]
       52 JUMPIFNOT                        R5 ; [+1]
       53 RETURN                           R0 0
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R0 K11 ["skipping"]
       57 DUPTABLE                         R5 K16 [{["id"], ["kind"] = "Skipped", ["description"]}]
       58 GETTABLEKS                       R6 R2 K2 ["data"]
       60 GETTABLEKS                       R6 R6 K12 ["id"]
       62 SETTABLEKS                       R6 R5 K12 ["id"]
       64 GETTABLEKS                       R6 R0 K17 ["localization"]
       66 LOADK                            R8 K18 ["Tutorial"]
       67 LOADK                            R9 K19 ["StepSkipped"]
       68 NAMECALL                         R6 R6 K20 ["getText"]
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K15 ["description"]
       73 SETTABLEKS                       R5 R3 K21 ["step"]
       75 MOVE                             R7 R0
       76 NAMECALL                         R5 R2 K22 ["skip"]
       78 CALL                             R5 2 0
       79 GETTABLEKS                       R5 R0 K23 ["onStepChanged"]
       81 MOVE                             R6 R3
       82 CALL                             R5 1 0
       83 GETTABLEKS                       R5 R0 K24 ["currentCallout"]
       85 JUMPIFNOT                        R5 ; [+8]
       86 GETTABLEKS                       R5 R0 K24 ["currentCallout"]
       88 NAMECALL                         R5 R5 K25 ["Destroy"]
       90 CALL                             R5 1 0
       91 LOADNIL                          R5
       92 SETTABLEKS                       R5 R0 K24 ["currentCallout"]
       94 GETIMPORT                        R5 K28 [task.delay]
       96 LOADK                            R6 K29 [1.5]
       97 NEWCLOSURE                       R7 P0
       98 CAPTURE                          VAL R0
       99 CALL                             R5 2 0
      100 RETURN                           R0 0
      101 GETTABLEKS                       R5 R2 K30 ["showComplete"]
      103 JUMPIFNOT                        R5 ; [+9]
      104 GETIMPORT                        R5 K28 [task.delay]
      106 LOADK                            R6 K31 [0.4]
      107 NEWCLOSURE                       R7 P1
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R0
      111 CALL                             R5 2 0
      112 RETURN                           R0 0
      113 NAMECALL                         R5 R0 K10 ["finishIncrement"]
      115 CALL                             R5 1 0
      116 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["currentStep"]
        2 JUMPIFNOTEQKN                    R1 K1 [1] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K0 ["currentStep"]
        7 SUBK                             R3 R4 K1 [1]
        8 NAMECALL                         R1 R0 K2 ["setStep"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["currentStep"]
        2 GETTABLEKS                       R3 R0 K1 ["steps"]
        4 LENGTH                           R2 R3
        5 JUMPIFNOTEQ                      R1 R2 ; [+34]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["completed"]
       10 GETTABLEKS                       R1 R0 K3 ["data"]
       12 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETTABLEKS                       R1 R0 K3 ["data"]
       17 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETTABLEKS                       R1 R0 K5 ["Spotlight"]
       25 NAMECALL                         R1 R1 K6 ["HideSpotlightAsync"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K7 ["onCompleted"]
       30 GETTABLEKS                       R2 R0 K3 ["data"]
       32 GETTABLEKS                       R2 R2 K8 ["shouldShowCompletedDialog"]
       34 CALL                             R1 1 0
       35 JUMP                             ; [+10]
       36 GETTABLEKS                       R1 R0 K7 ["onCompleted"]
       38 CALL                             R1 0 0
       39 JUMP                             ; [+6]
       40 GETTABLEKS                       R4 R0 K0 ["currentStep"]
       42 ADDK                             R3 R4 K9 [1]
       43 NAMECALL                         R1 R0 K10 ["setStep"]
       45 CALL                             R1 2 0
       46 LOADB                            R1 0
       47 SETTABLEKS                       R1 R0 K11 ["incrementing"]
       49 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getTopicStep"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+30]
        5 GETTABLEKS                       R3 R0 K1 ["currentStep"]
        7 JUMPIFNOTLT                      R2 R3 ; [+6]
        9 MOVE                             R5 R2
       10 NAMECALL                         R3 R0 K2 ["setStep"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K1 ["currentStep"]
       16 JUMPIFNOTLT                      R3 R2 ; [+18]
       18 GETTABLEKS                       R5 R0 K1 ["currentStep"]
       20 SUBK                             R3 R2 K3 [1]
       21 LOADN                            R4 1
       22 FORNPREP                         R3
       23 GETTABLEKS                       R7 R0 K4 ["steps"]
       25 GETTABLE                         R6 R7 R5
       26 MOVE                             R8 R0
       27 NAMECALL                         R6 R6 K5 ["skip"]
       29 CALL                             R6 2 0
       30 FORNLOOP                         R3
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R0 K2 ["setStep"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R2 K1 ["topic"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["topics"]
        2 GETTABLE                         R2 R3 R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R0 K1 ["steps"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["getCurrentStep"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R1 K1 ["data"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 GETTABLEKS                       R3 R2 K2 ["spotlight"]
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R2 K2 ["spotlight"]
       14 GETTABLEKS                       R3 R3 K3 ["TargetWidgetUri"]
       16 JUMPIFNOT                        R3 ; [+48]
       17 GETTABLEKS                       R3 R2 K2 ["spotlight"]
       19 GETTABLEKS                       R3 R3 K4 ["ShowShadows"]
       21 JUMPIFNOT                        R3 ; [+14]
       22 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       24 NAMECALL                         R3 R3 K6 ["ApplyShadowsAsync"]
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       29 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       31 GETTABLEKS                       R5 R5 K3 ["TargetWidgetUri"]
       33 NAMECALL                         R3 R3 K7 ["ApplySpotlightAsync"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R3 R2 K2 ["spotlight"]
       38 GETTABLEKS                       R3 R3 K8 ["ShowBox"]
       40 JUMPIFNOT                        R3 ; [+9]
       41 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       43 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       45 GETTABLEKS                       R5 R5 K3 ["TargetWidgetUri"]
       47 NAMECALL                         R3 R3 K9 ["ApplyFillInBoxAsync"]
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R3 R2 K2 ["spotlight"]
       52 GETTABLEKS                       R3 R3 K10 ["ShowHighlight"]
       54 JUMPIFNOT                        R3 ; [+64]
       55 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       57 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       59 GETTABLEKS                       R5 R5 K3 ["TargetWidgetUri"]
       61 NAMECALL                         R3 R3 K11 ["ApplyHighlightAsync"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       68 GETTABLEKS                       R5 R5 K12 ["target"]
       70 NAMECALL                         R3 R3 K13 ["GetWidgetFromLabel"]
       72 CALL                             R3 2 1
       73 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       75 GETTABLEKS                       R4 R4 K14 ["showShadows"]
       77 JUMPIFNOT                        R4 ; [+13]
       78 GETUPVAL                         R4 0
       79 NAMECALL                         R4 R4 K15 ["ApplyShadows"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 0
       83 MOVE                             R6 R3
       84 GETTABLEKS                       R7 R2 K2 ["spotlight"]
       86 GETTABLEKS                       R7 R7 K16 ["rowName"]
       88 NAMECALL                         R4 R4 K17 ["ApplySpotlight"]
       90 CALL                             R4 3 0
       91 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       93 GETTABLEKS                       R4 R4 K18 ["showBox"]
       95 JUMPIFNOT                        R4 ; [+9]
       96 GETUPVAL                         R4 0
       97 MOVE                             R6 R3
       98 GETTABLEKS                       R7 R2 K2 ["spotlight"]
      100 GETTABLEKS                       R7 R7 K16 ["rowName"]
      102 NAMECALL                         R4 R4 K19 ["ApplyFillInBox"]
      104 CALL                             R4 3 0
      105 GETTABLEKS                       R4 R2 K2 ["spotlight"]
      107 GETTABLEKS                       R4 R4 K20 ["showHighlight"]
      109 JUMPIFNOT                        R4 ; [+9]
      110 GETUPVAL                         R4 0
      111 MOVE                             R6 R3
      112 GETTABLEKS                       R7 R2 K2 ["spotlight"]
      114 GETTABLEKS                       R7 R7 K16 ["rowName"]
      116 NAMECALL                         R4 R4 K21 ["ApplyHighlight"]
      118 CALL                             R4 3 0
      119 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["toolboxLimits"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["toolboxLimits"]
        7 GETTABLEKS                       R2 R0 K1 ["toolboxConnection"]
        9 NAMECALL                         R3 R2 K2 ["getNamespaceFolder"]
       11 CALL                             R3 1 1
       12 LOADK                            R6 K3 ["SetTutorialLimits"]
       13 LOADN                            R7 2
       14 NAMECALL                         R4 R3 K4 ["WaitForChild"]
       16 CALL                             R4 3 1
       17 JUMPIFNOT                        R4 ; [+21]
       18 LOADK                            R7 K3 ["SetTutorialLimits"]
       19 JUMPIFNOT                        R1 ; [+14]
       20 DUPTABLE                         R8 K8 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
       21 GETTABLEKS                       R9 R1 K5 ["assetIds"]
       23 SETTABLEKS                       R9 R8 K5 ["assetIds"]
       25 GETTABLEKS                       R9 R1 K6 ["positionOverride"]
       27 SETTABLEKS                       R9 R8 K6 ["positionOverride"]
       29 GETTABLEKS                       R9 R1 K7 ["scriptWarningOverride"]
       31 SETTABLEKS                       R9 R8 K7 ["scriptWarningOverride"]
       33 JUMP                             ; [+2]
       34 NEWTABLE                         R8 0 0
       36 NAMECALL                         R5 R2 K9 ["Invoke"]
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R4 K1 [ipairs]
        2 NAMECALL                         R5 R1 K2 ["GetChildren"]
        4 CALL                             R5 1 -1
        5 CALL                             R4 -1 3
        6 FORGPREP_INEXT                   R4
        7 MOVE                             R11 R2
        8 NAMECALL                         R9 R8 K3 ["IsA"]
       10 CALL                             R9 2 1
       11 JUMPIFNOT                        R9 ; [+3]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R8
       14 CALL                             R9 1 0
       15 FORGLOOP                         R4 2 [inext] ; [-9]
       17 GETTABLEKS                       R4 R1 K4 ["ChildAdded"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 NAMECALL                         R4 R4 K5 ["Connect"]
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["collect"]
       18 GETTABLEKS                       R3 R1 K8 ["findIndex"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R5 K10 ["Util"]
       26 GETTABLEKS                       R5 R5 K11 ["TutorialTypes"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Src"]
       33 GETTABLEKS                       R6 R6 K10 ["Util"]
       35 GETTABLEKS                       R6 R6 K12 ["TutorialSteps"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Src"]
       42 GETTABLEKS                       R7 R7 K10 ["Util"]
       44 GETTABLEKS                       R7 R7 K12 ["TutorialSteps"]
       46 GETTABLEKS                       R7 R7 K13 ["TutorialStep"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K15 [pcall]
       51 DUPCLOSURE                       R8 K16 [PROTO_0]
       52 CALL                             R7 1 2
       53 JUMPIFNOT                        R7 ; [+2]
       54 MOVE                             R9 R8
       55 JUMP                             ; [+1]
       56 LOADNIL                          R9
       57 GETIMPORT                        R10 K15 [pcall]
       59 DUPCLOSURE                       R11 K17 [PROTO_1]
       60 CALL                             R10 1 2
       61 JUMPIFNOT                        R10 ; [+2]
       62 MOVE                             R12 R11
       63 JUMP                             ; [+1]
       64 LOADNIL                          R12
       65 GETIMPORT                        R13 K4 [require]
       67 GETTABLEKS                       R14 R0 K9 ["Src"]
       69 GETTABLEKS                       R14 R14 K18 ["Flags"]
       71 GETTABLEKS                       R14 R14 K19 ["getFFlagEnableRibbonTour"]
       73 CALL                             R13 1 1
       74 CALL                             R13 0 1
       75 DUPTABLE                         R14 K30 [{["DataModel"] = "Edit", ["PluginType"] = "Standalone", ["PluginId"] = "Tutorials", ["Category"] = "Panels", ["ItemId"] = "TourWidget"}]
       76 DUPTABLE                         R15 K34 [{["PluginId"] = "MainWindow", ["Category"] = "Widgets", ["ItemId"] = "Main"}]
       77 GETIMPORT                        R16 K37 [table.insert]
       79 GETIMPORT                        R17 K39 [table.find]
       81 NEWTABLE                         R18 16 0
       83 DUPTABLE                         R19 K41 [{"__index"}]
       84 SETTABLEKS                       R18 R19 K40 ["__index"]
       86 DUPCLOSURE                       R20 K42 [PROTO_2]
       87 DUPCLOSURE                       R21 K43 [PROTO_3]
       88 CAPTURE                          VAL R20
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R19
       93 SETTABLEKS                       R21 R18 K44 ["new"]
       95 DUPCLOSURE                       R21 K45 [PROTO_4]
       96 SETTABLEKS                       R21 R18 K46 ["start"]
       98 DUPCLOSURE                       R21 K47 [PROTO_5]
       99 SETTABLEKS                       R21 R18 K48 ["setWidget"]
      101 DUPCLOSURE                       R21 K49 [PROTO_6]
      102 CAPTURE                          VAL R15
      103 SETTABLEKS                       R21 R18 K50 ["resetAttachment"]
      105 DUPCLOSURE                       R21 K51 [PROTO_7]
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R14
      108 SETTABLEKS                       R21 R18 K52 ["attachTo"]
      110 DUPCLOSURE                       R21 K53 [PROTO_10]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R21 R18 K54 ["setStep"]
      116 DUPCLOSURE                       R21 K55 [PROTO_11]
      117 SETTABLEKS                       R21 R18 K56 ["getCurrentStep"]
      119 DUPCLOSURE                       R21 K57 [PROTO_12]
      120 CAPTURE                          VAL R17
      121 SETTABLEKS                       R21 R18 K58 ["getCurrentStepData"]
      123 DUPCLOSURE                       R21 K59 [PROTO_16]
      124 SETTABLEKS                       R21 R18 K60 ["increment"]
      126 DUPCLOSURE                       R21 K61 [PROTO_17]
      127 SETTABLEKS                       R21 R18 K62 ["back"]
      129 DUPCLOSURE                       R21 K63 [PROTO_18]
      130 CAPTURE                          VAL R13
      131 SETTABLEKS                       R21 R18 K64 ["finishIncrement"]
      133 DUPCLOSURE                       R21 K65 [PROTO_19]
      134 SETTABLEKS                       R21 R18 K66 ["selectTopic"]
      136 DUPCLOSURE                       R21 K67 [PROTO_21]
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R21 R18 K68 ["getTopicStep"]
      140 DUPCLOSURE                       R21 K69 [PROTO_22]
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R21 R18 K70 ["showSpotlight"]
      144 DUPCLOSURE                       R21 K71 [PROTO_23]
      145 SETTABLEKS                       R21 R18 K72 ["setToolboxLimits"]
      147 DUPCLOSURE                       R21 K73 [PROTO_25]
      148 SETTABLEKS                       R21 R18 K74 ["syncChildren"]
      150 RETURN                           R18 1
