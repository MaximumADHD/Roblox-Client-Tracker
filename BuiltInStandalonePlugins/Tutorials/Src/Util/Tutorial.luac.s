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
        2 DUPTABLE                         R6 K16 [{"completed", "dataModel", "currentStep", "data", "steps", "instances", "localization", "incrementing", "toolboxConnection", "toolboxLimits", "callouts", "topics", "onStepChanged", "onKeyPressed", "onCompleted", "widget"}]
        3 LOADB                            R7 0
        4 SETTABLEKS                       R7 R6 K0 ["completed"]
        6 SETTABLEKS                       R0 R6 K1 ["dataModel"]
        8 LOADN                            R7 0
        9 SETTABLEKS                       R7 R6 K2 ["currentStep"]
       11 SETTABLEKS                       R1 R6 K3 ["data"]
       13 SETTABLEKS                       R5 R6 K4 ["steps"]
       15 NEWTABLE                         R7 0 0
       17 SETTABLEKS                       R7 R6 K5 ["instances"]
       19 SETTABLEKS                       R2 R6 K6 ["localization"]
       21 LOADB                            R7 0
       22 SETTABLEKS                       R7 R6 K7 ["incrementing"]
       24 SETTABLEKS                       R3 R6 K8 ["toolboxConnection"]
       26 LOADNIL                          R7
       27 SETTABLEKS                       R7 R6 K9 ["toolboxLimits"]
       29 NEWTABLE                         R7 0 0
       31 SETTABLEKS                       R7 R6 K10 ["callouts"]
       33 NEWTABLE                         R7 0 0
       35 SETTABLEKS                       R7 R6 K11 ["topics"]
       37 GETUPVAL                         R7 0
       38 SETTABLEKS                       R7 R6 K12 ["onStepChanged"]
       40 GETUPVAL                         R7 0
       41 SETTABLEKS                       R7 R6 K13 ["onKeyPressed"]
       43 GETUPVAL                         R7 0
       44 SETTABLEKS                       R7 R6 K14 ["onCompleted"]
       46 LOADNIL                          R7
       47 SETTABLEKS                       R7 R6 K15 ["widget"]
       49 LOADK                            R9 K17 ["Panels"]
       50 NAMECALL                         R7 R4 K18 ["GetPluginComponent"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K17 ["Panels"]
       55 LOADK                            R9 K19 ["Spotlight"]
       56 NAMECALL                         R7 R4 K18 ["GetPluginComponent"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K19 ["Spotlight"]
       61 GETIMPORT                        R7 K21 [ipairs]
       63 GETTABLEKS                       R8 R1 K4 ["steps"]
       65 CALL                             R7 1 3
       66 FORGPREP_INEXT                   R7
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R14 R11 K22 ["kind"]
       70 GETTABLE                         R12 R13 R14
       71 GETTABLEKS                       R15 R1 K23 ["id"]
       73 LOADK                            R16 K24 ["%s_Title"]
       74 GETTABLEKS                       R18 R11 K23 ["id"]
       76 NAMECALL                         R16 R16 K25 ["format"]
       78 CALL                             R16 2 -1
       79 NAMECALL                         R13 R2 K26 ["getText"]
       81 CALL                             R13 -1 1
       82 GETTABLEKS                       R16 R1 K23 ["id"]
       84 LOADK                            R17 K27 ["%s_Description"]
       85 GETTABLEKS                       R19 R11 K23 ["id"]
       87 NAMECALL                         R17 R17 K25 ["format"]
       89 CALL                             R17 2 -1
       90 NAMECALL                         R14 R2 K26 ["getText"]
       92 CALL                             R14 -1 1
       93 SETTABLEKS                       R13 R11 K28 ["title"]
       95 SETTABLEKS                       R14 R11 K29 ["description"]
       97 GETTABLEKS                       R15 R11 K30 ["topic"]
       99 GETTABLEKS                       R17 R6 K11 ["topics"]
      101 GETTABLEKS                       R19 R6 K11 ["topics"]
      103 LENGTH                           R18 R19
      104 GETTABLE                         R16 R17 R18
      105 JUMPIFEQ                         R15 R16 ; [+9]
      107 GETTABLEKS                       R16 R6 K11 ["topics"]
      109 GETTABLEKS                       R17 R11 K30 ["topic"]
      111 FASTCALL2                        TABLE_INSERT R16 R17 ; [+2]
      113 GETUPVAL                         R15 2
      114 CALL                             R15 2 0
      115 JUMPIFNOT                        R12 ; [+10]
      116 MOVE                             R16 R5
      117 GETTABLEKS                       R17 R12 K31 ["new"]
      119 MOVE                             R18 R6
      120 MOVE                             R19 R11
      121 CALL                             R17 2 -1
      122 FASTCALL                         TABLE_INSERT ; [+1]
      123 GETUPVAL                         R15 2
      124 CALL                             R15 -1 0
      125 JUMP                             ; [+21]
      126 GETTABLEKS                       R15 R11 K22 ["kind"]
      128 JUMPIFNOT                        R15 ; [+8]
      129 GETIMPORT                        R15 K33 [warn]
      131 LOADK                            R17 K34 ["Missing step class: "]
      132 GETTABLEKS                       R18 R11 K22 ["kind"]
      134 CONCAT                           R16 R17 R18
      135 CALL                             R15 1 0
      136 JUMP                             ; [+10]
      137 MOVE                             R16 R5
      138 GETUPVAL                         R18 3
      139 GETTABLEKS                       R17 R18 K31 ["new"]
      141 MOVE                             R18 R6
      142 MOVE                             R19 R11
      143 CALL                             R17 2 -1
      144 FASTCALL                         TABLE_INSERT ; [+1]
      145 GETUPVAL                         R15 2
      146 CALL                             R15 -1 0
      147 FORGLOOP                         R7 2 [inext] ; [-81]
      149 GETUPVAL                         R9 4
      150 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
      152 MOVE                             R8 R6
      153 GETIMPORT                        R7 K36 [setmetatable]
      155 CALL                             R7 2 1
      156 RETURN                           R7 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R1 R2 K1 ["onStart"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["data"]
        7 GETTABLEKS                       R1 R2 K1 ["onStart"]
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
        4 GETTABLEKS                       R4 R0 K5 ["data"]
        6 GETTABLEKS                       R3 R4 K1 ["id"]
        8 SETTABLEKS                       R3 R2 K1 ["id"]
       10 GETTABLEKS                       R3 R0 K2 ["currentStep"]
       12 SETTABLEKS                       R3 R2 K2 ["currentStep"]
       14 GETTABLEKS                       R4 R0 K6 ["steps"]
       16 LENGTH                           R3 R4
       17 SETTABLEKS                       R3 R2 K3 ["stepCount"]
       19 GETTABLEKS                       R4 R1 K5 ["data"]
       21 GETTABLEKS                       R3 R4 K7 ["showNext"]
       23 SETTABLEKS                       R3 R2 K7 ["showNext"]
       25 GETTABLEKS                       R3 R0 K8 ["topics"]
       27 SETTABLEKS                       R3 R2 K8 ["topics"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R4 R0 K8 ["topics"]
       32 GETTABLEKS                       R6 R1 K5 ["data"]
       34 GETTABLEKS                       R5 R6 K9 ["topic"]
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R2 K9 ["topic"]
       39 LOADN                            R3 0
       40 SETTABLEKS                       R3 R2 K10 ["topicStepCount"]
       42 GETTABLEKS                       R3 R0 K6 ["steps"]
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 GETTABLEKS                       R9 R7 K5 ["data"]
       49 GETTABLEKS                       R8 R9 K9 ["topic"]
       51 GETTABLEKS                       R10 R1 K5 ["data"]
       53 GETTABLEKS                       R9 R10 K9 ["topic"]
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
        1 DUPTABLE                         R1 K3 [{"id", "kind", "title"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K4 ["data"]
        5 GETTABLEKS                       R2 R3 K0 ["id"]
        7 SETTABLEKS                       R2 R1 K0 ["id"]
        9 LOADK                            R2 K5 ["Completed"]
       10 SETTABLEKS                       R2 R1 K1 ["kind"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K6 ["localization"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["data"]
       18 GETTABLEKS                       R4 R5 K0 ["id"]
       20 LOADK                            R5 K7 ["%s_Title"]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K4 ["data"]
       24 GETTABLEKS                       R7 R8 K0 ["id"]
       26 NAMECALL                         R5 R5 K8 ["format"]
       28 CALL                             R5 2 -1
       29 NAMECALL                         R2 R2 K9 ["getText"]
       31 CALL                             R2 -1 1
       32 SETTABLEKS                       R2 R1 K2 ["title"]
       34 SETTABLEKS                       R1 R0 K10 ["step"]
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R0 R1 K11 ["onStepChanged"]
       39 GETUPVAL                         R1 0
       40 CALL                             R0 1 0
       41 GETIMPORT                        R0 K14 [task.delay]
       43 LOADN                            R1 2
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          UPVAL U2
       46 CALL                             R0 2 0
       47 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["incrementing"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R0 K0 ["incrementing"]
        7 NAMECALL                         R2 R0 K1 ["getCurrentStep"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETTABLEKS                       R4 R2 K2 ["data"]
       13 GETTABLEKS                       R3 R4 K3 ["onUnbind"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETTABLEKS                       R4 R2 K2 ["data"]
       18 GETTABLEKS                       R3 R4 K3 ["onUnbind"]
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
       49 JUMPIFNOT                        R1 ; [+54]
       50 GETTABLEKS                       R5 R0 K11 ["skipping"]
       52 JUMPIFNOT                        R5 ; [+1]
       53 RETURN                           R0 0
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R0 K11 ["skipping"]
       57 DUPTABLE                         R5 K15 [{"id", "kind", "description"}]
       58 GETTABLEKS                       R7 R2 K2 ["data"]
       60 GETTABLEKS                       R6 R7 K12 ["id"]
       62 SETTABLEKS                       R6 R5 K12 ["id"]
       64 LOADK                            R6 K16 ["Skipped"]
       65 SETTABLEKS                       R6 R5 K13 ["kind"]
       67 GETTABLEKS                       R6 R0 K17 ["localization"]
       69 LOADK                            R8 K18 ["Tutorial"]
       70 LOADK                            R9 K19 ["StepSkipped"]
       71 NAMECALL                         R6 R6 K20 ["getText"]
       73 CALL                             R6 3 1
       74 SETTABLEKS                       R6 R5 K14 ["description"]
       76 SETTABLEKS                       R5 R3 K21 ["step"]
       78 MOVE                             R7 R0
       79 NAMECALL                         R5 R2 K22 ["skip"]
       81 CALL                             R5 2 0
       82 GETTABLEKS                       R5 R0 K23 ["onStepChanged"]
       84 MOVE                             R6 R3
       85 CALL                             R5 1 0
       86 GETTABLEKS                       R5 R0 K24 ["currentCallout"]
       88 JUMPIFNOT                        R5 ; [+8]
       89 GETTABLEKS                       R5 R0 K24 ["currentCallout"]
       91 NAMECALL                         R5 R5 K25 ["Destroy"]
       93 CALL                             R5 1 0
       94 LOADNIL                          R5
       95 SETTABLEKS                       R5 R0 K24 ["currentCallout"]
       97 GETIMPORT                        R5 K28 [task.delay]
       99 LOADK                            R6 K29 [1.5]
      100 NEWCLOSURE                       R7 P0
      101 CAPTURE                          VAL R0
      102 CALL                             R5 2 0
      103 RETURN                           R0 0
      104 GETTABLEKS                       R5 R2 K30 ["showComplete"]
      106 JUMPIFNOT                        R5 ; [+9]
      107 GETIMPORT                        R5 K28 [task.delay]
      109 LOADK                            R6 K31 [0.4]
      110 NEWCLOSURE                       R7 P1
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R0
      114 CALL                             R5 2 0
      115 RETURN                           R0 0
      116 NAMECALL                         R5 R0 K10 ["finishIncrement"]
      118 CALL                             R5 1 0
      119 RETURN                           R0 0

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
       10 GETTABLEKS                       R2 R0 K3 ["data"]
       12 GETTABLEKS                       R1 R2 K4 ["onComplete"]
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETTABLEKS                       R2 R0 K3 ["data"]
       17 GETTABLEKS                       R1 R2 K4 ["onComplete"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETTABLEKS                       R1 R0 K5 ["Spotlight"]
       25 NAMECALL                         R1 R1 K6 ["HideSpotlightAsync"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K7 ["onCompleted"]
       30 GETTABLEKS                       R3 R0 K3 ["data"]
       32 GETTABLEKS                       R2 R3 K8 ["shouldShowCompletedDialog"]
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
        0 GETTABLEKS                       R3 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R3 K1 ["topic"]
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
       12 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       14 GETTABLEKS                       R3 R4 K3 ["TargetWidgetUri"]
       16 JUMPIFNOT                        R3 ; [+48]
       17 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       19 GETTABLEKS                       R3 R4 K4 ["ShowShadows"]
       21 JUMPIFNOT                        R3 ; [+14]
       22 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       24 NAMECALL                         R3 R3 K6 ["ApplyShadowsAsync"]
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       29 GETTABLEKS                       R6 R2 K2 ["spotlight"]
       31 GETTABLEKS                       R5 R6 K3 ["TargetWidgetUri"]
       33 NAMECALL                         R3 R3 K7 ["ApplySpotlightAsync"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       38 GETTABLEKS                       R3 R4 K8 ["ShowBox"]
       40 JUMPIFNOT                        R3 ; [+9]
       41 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       43 GETTABLEKS                       R6 R2 K2 ["spotlight"]
       45 GETTABLEKS                       R5 R6 K3 ["TargetWidgetUri"]
       47 NAMECALL                         R3 R3 K9 ["ApplyFillInBoxAsync"]
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R4 R2 K2 ["spotlight"]
       52 GETTABLEKS                       R3 R4 K10 ["ShowHighlight"]
       54 JUMPIFNOT                        R3 ; [+64]
       55 GETTABLEKS                       R3 R0 K5 ["Spotlight"]
       57 GETTABLEKS                       R6 R2 K2 ["spotlight"]
       59 GETTABLEKS                       R5 R6 K3 ["TargetWidgetUri"]
       61 NAMECALL                         R3 R3 K11 ["ApplyHighlightAsync"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R6 R2 K2 ["spotlight"]
       68 GETTABLEKS                       R5 R6 K12 ["target"]
       70 NAMECALL                         R3 R3 K13 ["GetWidgetFromLabel"]
       72 CALL                             R3 2 1
       73 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       75 GETTABLEKS                       R4 R5 K14 ["showShadows"]
       77 JUMPIFNOT                        R4 ; [+13]
       78 GETUPVAL                         R4 0
       79 NAMECALL                         R4 R4 K15 ["ApplyShadows"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 0
       83 MOVE                             R6 R3
       84 GETTABLEKS                       R8 R2 K2 ["spotlight"]
       86 GETTABLEKS                       R7 R8 K16 ["rowName"]
       88 NAMECALL                         R4 R4 K17 ["ApplySpotlight"]
       90 CALL                             R4 3 0
       91 GETTABLEKS                       R5 R2 K2 ["spotlight"]
       93 GETTABLEKS                       R4 R5 K18 ["showBox"]
       95 JUMPIFNOT                        R4 ; [+9]
       96 GETUPVAL                         R4 0
       97 MOVE                             R6 R3
       98 GETTABLEKS                       R8 R2 K2 ["spotlight"]
      100 GETTABLEKS                       R7 R8 K16 ["rowName"]
      102 NAMECALL                         R4 R4 K19 ["ApplyFillInBox"]
      104 CALL                             R4 3 0
      105 GETTABLEKS                       R5 R2 K2 ["spotlight"]
      107 GETTABLEKS                       R4 R5 K20 ["showHighlight"]
      109 JUMPIFNOT                        R4 ; [+9]
      110 GETUPVAL                         R4 0
      111 MOVE                             R6 R3
      112 GETTABLEKS                       R8 R2 K2 ["spotlight"]
      114 GETTABLEKS                       R7 R8 K16 ["rowName"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["collect"]
       18 GETTABLEKS                       R3 R1 K8 ["findIndex"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["Src"]
       24 GETTABLEKS                       R6 R7 K10 ["Util"]
       26 GETTABLEKS                       R5 R6 K11 ["TutorialTypes"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R8 R0 K9 ["Src"]
       33 GETTABLEKS                       R7 R8 K10 ["Util"]
       35 GETTABLEKS                       R6 R7 K12 ["TutorialSteps"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R10 R0 K9 ["Src"]
       42 GETTABLEKS                       R9 R10 K10 ["Util"]
       44 GETTABLEKS                       R8 R9 K12 ["TutorialSteps"]
       46 GETTABLEKS                       R7 R8 K13 ["TutorialStep"]
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
       67 GETTABLEKS                       R16 R0 K9 ["Src"]
       69 GETTABLEKS                       R15 R16 K18 ["Flags"]
       71 GETTABLEKS                       R14 R15 K19 ["getFFlagEnableRibbonTour"]
       73 CALL                             R13 1 1
       74 CALL                             R13 0 1
       75 DUPTABLE                         R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       76 LOADK                            R15 K26 ["Edit"]
       77 SETTABLEKS                       R15 R14 K20 ["DataModel"]
       79 LOADK                            R15 K27 ["Standalone"]
       80 SETTABLEKS                       R15 R14 K21 ["PluginType"]
       82 LOADK                            R15 K28 ["Tutorials"]
       83 SETTABLEKS                       R15 R14 K22 ["PluginId"]
       85 LOADK                            R15 K29 ["Panels"]
       86 SETTABLEKS                       R15 R14 K23 ["Category"]
       88 LOADK                            R15 K30 ["TourWidget"]
       89 SETTABLEKS                       R15 R14 K24 ["ItemId"]
       91 DUPTABLE                         R15 K31 [{"PluginId", "Category", "ItemId"}]
       92 LOADK                            R16 K32 ["MainWindow"]
       93 SETTABLEKS                       R16 R15 K22 ["PluginId"]
       95 LOADK                            R16 K33 ["Widgets"]
       96 SETTABLEKS                       R16 R15 K23 ["Category"]
       98 LOADK                            R16 K34 ["Main"]
       99 SETTABLEKS                       R16 R15 K24 ["ItemId"]
      101 GETIMPORT                        R16 K37 [table.insert]
      103 GETIMPORT                        R17 K39 [table.find]
      105 NEWTABLE                         R18 16 0
      107 DUPTABLE                         R19 K41 [{"__index"}]
      108 SETTABLEKS                       R18 R19 K40 ["__index"]
      110 DUPCLOSURE                       R20 K42 [PROTO_2]
      111 DUPCLOSURE                       R21 K43 [PROTO_3]
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R19
      117 SETTABLEKS                       R21 R18 K44 ["new"]
      119 DUPCLOSURE                       R21 K45 [PROTO_4]
      120 SETTABLEKS                       R21 R18 K46 ["start"]
      122 DUPCLOSURE                       R21 K47 [PROTO_5]
      123 SETTABLEKS                       R21 R18 K48 ["setWidget"]
      125 DUPCLOSURE                       R21 K49 [PROTO_6]
      126 CAPTURE                          VAL R15
      127 SETTABLEKS                       R21 R18 K50 ["resetAttachment"]
      129 DUPCLOSURE                       R21 K51 [PROTO_7]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R14
      132 SETTABLEKS                       R21 R18 K52 ["attachTo"]
      134 DUPCLOSURE                       R21 K53 [PROTO_10]
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R2
      138 SETTABLEKS                       R21 R18 K54 ["setStep"]
      140 DUPCLOSURE                       R21 K55 [PROTO_11]
      141 SETTABLEKS                       R21 R18 K56 ["getCurrentStep"]
      143 DUPCLOSURE                       R21 K57 [PROTO_12]
      144 CAPTURE                          VAL R17
      145 SETTABLEKS                       R21 R18 K58 ["getCurrentStepData"]
      147 DUPCLOSURE                       R21 K59 [PROTO_16]
      148 SETTABLEKS                       R21 R18 K60 ["increment"]
      150 DUPCLOSURE                       R21 K61 [PROTO_17]
      151 SETTABLEKS                       R21 R18 K62 ["back"]
      153 DUPCLOSURE                       R21 K63 [PROTO_18]
      154 CAPTURE                          VAL R13
      155 SETTABLEKS                       R21 R18 K64 ["finishIncrement"]
      157 DUPCLOSURE                       R21 K65 [PROTO_19]
      158 SETTABLEKS                       R21 R18 K66 ["selectTopic"]
      160 DUPCLOSURE                       R21 K67 [PROTO_21]
      161 CAPTURE                          VAL R3
      162 SETTABLEKS                       R21 R18 K68 ["getTopicStep"]
      164 DUPCLOSURE                       R21 K69 [PROTO_22]
      165 CAPTURE                          VAL R12
      166 SETTABLEKS                       R21 R18 K70 ["showSpotlight"]
      168 DUPCLOSURE                       R21 K71 [PROTO_23]
      169 SETTABLEKS                       R21 R18 K72 ["setToolboxLimits"]
      171 DUPCLOSURE                       R21 K73 [PROTO_25]
      172 SETTABLEKS                       R21 R18 K74 ["syncChildren"]
      174 RETURN                           R18 1
