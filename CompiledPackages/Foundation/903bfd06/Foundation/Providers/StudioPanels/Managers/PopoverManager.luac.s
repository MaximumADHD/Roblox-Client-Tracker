PROTO_0:
        0 LOADK                            R4 K0 ["PluginGui"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["BindToClose"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["parentPopoverId"]
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETTABLEKS                       R4 R1 K1 ["id"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+3]
        7 LOADB                            R4 1
        8 RETURN                           R4 1
        9 GETTABLE                         R4 R0 R3
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETTABLEKS                       R3 R4 K0 ["parentPopoverId"]
       13 JUMPBACK                         ; [-12]
       14 LOADB                            R4 0
       15 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["_uriScope"]
       10 SETTABLEKS                       R0 R2 K3 ["_plugin"]
       12 LOADK                            R5 K4 ["Panels"]
       13 NAMECALL                         R3 R0 K5 ["GetPluginComponent"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K6 ["_panels"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K7 ["wrap"]
       21 NAMECALL                         R4 R0 K8 ["GetUri"]
       23 CALL                             R4 1 -1
       24 CALL                             R3 -1 1
       25 SETTABLEKS                       R3 R2 K9 ["_pluginUri"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K10 ["_active"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K11 ["_pool"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K12 ["_didPrewarm"]
       38 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generation"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["open"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 LOADN                            R3 184
       12 GETTABLEKS                       R4 R0 K2 ["X"]
       14 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       16 GETIMPORT                        R2 K5 [math.min]
       18 CALL                             R2 2 1
       19 FASTCALL1                        MATH_CEIL R2 ; [+2]
       20 GETIMPORT                        R1 K7 [math.ceil]
       22 CALL                             R1 1 1
       23 LOADN                            R4 184
       24 GETTABLEKS                       R5 R0 K8 ["Y"]
       26 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       28 GETIMPORT                        R3 K5 [math.min]
       30 CALL                             R3 2 1
       31 FASTCALL1                        MATH_CEIL R3 ; [+2]
       32 GETIMPORT                        R2 K7 [math.ceil]
       34 CALL                             R2 1 1
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K9 ["_panels"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K10 ["uri"]
       41 GETIMPORT                        R6 K13 [Vector2.new]
       43 MOVE                             R7 R1
       44 MOVE                             R8 R2
       45 CALL                             R6 2 -1
       46 NAMECALL                         R3 R3 K14 ["SetSizeAsync"]
       48 CALL                             R3 -1 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generation"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+9]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["open"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["uri"]
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K3 ["_panels"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K2 ["uri"]
       21 DUPTABLE                         R4 K8 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       22 GETTABLEKS                       R5 R0 K9 ["targetWidgetUri"]
       24 SETTABLEKS                       R5 R4 K4 ["TargetWidgetUri"]
       26 GETTABLEKS                       R5 R0 K10 ["targetAnchorPoint"]
       28 SETTABLEKS                       R5 R4 K5 ["TargetAnchorPoint"]
       30 GETTABLEKS                       R5 R0 K11 ["subjectAnchorPoint"]
       32 SETTABLEKS                       R5 R4 K6 ["SubjectAnchorPoint"]
       34 GETTABLEKS                       R5 R0 K12 ["offset"]
       36 SETTABLEKS                       R5 R4 K7 ["Offset"]
       38 NAMECALL                         R1 R1 K13 ["SetAttachmentAsync"]
       40 CALL                             R1 3 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K0 ["_closePopover"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R3 184
        1 GETTABLEKS                       R4 R0 K0 ["X"]
        3 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        5 GETIMPORT                        R2 K3 [math.min]
        7 CALL                             R2 2 1
        8 FASTCALL1                        MATH_CEIL R2 ; [+2]
        9 GETIMPORT                        R1 K5 [math.ceil]
       11 CALL                             R1 1 1
       12 LOADN                            R4 184
       13 GETTABLEKS                       R5 R0 K6 ["Y"]
       15 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       17 GETIMPORT                        R3 K3 [math.min]
       19 CALL                             R3 2 1
       20 FASTCALL1                        MATH_CEIL R3 ; [+2]
       21 GETIMPORT                        R2 K5 [math.ceil]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K7 ["_panels"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K8 ["uri"]
       30 GETIMPORT                        R6 K11 [Vector2.new]
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 CALL                             R6 2 -1
       35 NAMECALL                         R3 R3 K12 ["SetSizeAsync"]
       37 CALL                             R3 -1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["uri"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["_panels"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["uri"]
       11 DUPTABLE                         R4 K6 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       12 GETTABLEKS                       R5 R0 K7 ["targetWidgetUri"]
       14 SETTABLEKS                       R5 R4 K2 ["TargetWidgetUri"]
       16 GETTABLEKS                       R5 R0 K8 ["targetAnchorPoint"]
       18 SETTABLEKS                       R5 R4 K3 ["TargetAnchorPoint"]
       20 GETTABLEKS                       R5 R0 K9 ["subjectAnchorPoint"]
       22 SETTABLEKS                       R5 R4 K4 ["SubjectAnchorPoint"]
       24 GETTABLEKS                       R5 R0 K10 ["offset"]
       26 SETTABLEKS                       R5 R4 K5 ["Offset"]
       28 NAMECALL                         R1 R1 K11 ["SetAttachmentAsync"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K0 ["_closePopover"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R3 ; [+3]
        2 LOADN                            R5 0
        3 JUMP                             ; [+1]
        4 MOVE                             R5 R3
        5 MOVE                             R8 R2
        6 MOVE                             R9 R5
        7 MOVE                             R10 R4
        8 NAMECALL                         R6 R0 K0 ["_acquirePanelAsync"]
       10 CALL                             R6 4 1
       11 GETTABLEKS                       R7 R6 K1 ["panel"]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K2 ["Enabled"]
       16 GETTABLEKS                       R7 R0 K3 ["_panels"]
       18 GETTABLEKS                       R9 R6 K4 ["uri"]
       20 DUPTABLE                         R10 K9 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       21 GETTABLEKS                       R11 R1 K10 ["targetWidgetUri"]
       23 SETTABLEKS                       R11 R10 K5 ["TargetWidgetUri"]
       25 GETTABLEKS                       R11 R1 K11 ["targetAnchorPoint"]
       27 SETTABLEKS                       R11 R10 K6 ["TargetAnchorPoint"]
       29 GETTABLEKS                       R11 R1 K12 ["subjectAnchorPoint"]
       31 SETTABLEKS                       R11 R10 K7 ["SubjectAnchorPoint"]
       33 GETTABLEKS                       R11 R1 K13 ["offset"]
       35 SETTABLEKS                       R11 R10 K8 ["Offset"]
       37 NAMECALL                         R7 R7 K14 ["SetAttachmentAsync"]
       39 CALL                             R7 3 0
       40 GETTABLEKS                       R7 R0 K3 ["_panels"]
       42 GETTABLEKS                       R9 R6 K4 ["uri"]
       44 GETIMPORT                        R10 K17 [Vector2.new]
       46 LOADN                            R11 0
       47 LOADN                            R12 0
       48 CALL                             R10 2 -1
       49 NAMECALL                         R7 R7 K18 ["SetSizeAsync"]
       51 CALL                             R7 -1 0
       52 GETTABLEKS                       R7 R6 K1 ["panel"]
       54 LOADB                            R8 1
       55 SETTABLEKS                       R8 R7 K2 ["Enabled"]
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R6 K19 ["open"]
       60 LOADNIL                          R7
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K20 ["FoundationPopoverPluginOverlayMeasurement"]
       64 JUMPIFNOT                        R8 ; [+31]
       65 GETTABLEKS                       R8 R6 K21 ["generation"]
       67 DUPTABLE                         R9 K27 [{"container", "popoverId", "setSizeAsync", "updateAsync", "close"}]
       68 GETTABLEKS                       R10 R6 K1 ["panel"]
       70 SETTABLEKS                       R10 R9 K22 ["container"]
       72 GETTABLEKS                       R10 R6 K28 ["id"]
       74 SETTABLEKS                       R10 R9 K23 ["popoverId"]
       76 NEWCLOSURE                       R10 P0
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R10 R9 K24 ["setSizeAsync"]
       82 NEWCLOSURE                       R10 P1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R10 R9 K25 ["updateAsync"]
       88 NEWCLOSURE                       R10 P2
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R10 R9 K26 ["close"]
       94 MOVE                             R7 R9
       95 RETURN                           R7 1
       96 DUPTABLE                         R8 K27 [{"container", "popoverId", "setSizeAsync", "updateAsync", "close"}]
       97 GETTABLEKS                       R9 R6 K1 ["panel"]
       99 SETTABLEKS                       R9 R8 K22 ["container"]
      101 GETTABLEKS                       R9 R6 K28 ["id"]
      103 SETTABLEKS                       R9 R8 K23 ["popoverId"]
      105 NEWCLOSURE                       R9 P3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R9 R8 K24 ["setSizeAsync"]
      110 NEWCLOSURE                       R9 P4
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R9 R8 K25 ["updateAsync"]
      115 NEWCLOSURE                       R9 P5
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R6
      118 SETTABLEKS                       R9 R8 K26 ["close"]
      120 MOVE                             R7 R8
      121 RETURN                           R7 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 MOVE                             R5 R1
        3 DUPTABLE                         R6 K8 [{"Id", "InitialEnabled", "Tooltip", "Transparent", "Resizable", "Title", "ZIndex"}]
        4 SETTABLEKS                       R1 R6 K1 ["Id"]
        6 LOADB                            R7 1
        7 SETTABLEKS                       R7 R6 K2 ["InitialEnabled"]
        9 LOADB                            R7 1
       10 SETTABLEKS                       R7 R6 K3 ["Tooltip"]
       12 LOADB                            R7 1
       13 SETTABLEKS                       R7 R6 K4 ["Transparent"]
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R6 K5 ["Resizable"]
       18 SETTABLEKS                       R1 R6 K6 ["Title"]
       20 ADDK                             R7 R2 K9 [200]
       21 SETTABLEKS                       R7 R6 K7 ["ZIndex"]
       23 NAMECALL                         R3 R3 K10 ["CreateQWidgetPluginGui"]
       25 CALL                             R3 3 1
       26 GETIMPORT                        R4 K14 [Enum.ZIndexBehavior.Sibling]
       28 SETTABLEKS                       R4 R3 K12 ["ZIndexBehavior"]
       30 MOVE                             R4 R3
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K15 ["join"]
       34 GETTABLEKS                       R6 R0 K16 ["_pluginUri"]
       36 DUPTABLE                         R7 K19 [{"Category", "ItemId"}]
       37 LOADK                            R8 K20 ["Panels"]
       38 SETTABLEKS                       R8 R7 K17 ["Category"]
       40 SETTABLEKS                       R1 R7 K18 ["ItemId"]
       42 CALL                             R5 2 -1
       43 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_uriScope"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 LOADK                            R2 K1 ["/%*"]
        4 GETTABLEKS                       R4 R0 K0 ["_uriScope"]
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+1]
       11 LOADK                            R1 K3 [""]
       12 LOADK                            R3 K4 ["Popovers%*/%*"]
       13 MOVE                             R5 R1
       14 GETUPVAL                         R6 0
       15 LOADB                            R8 0
       16 NAMECALL                         R6 R6 K5 ["GenerateGUID"]
       18 CALL                             R6 2 1
       19 NAMECALL                         R3 R3 K2 ["format"]
       21 CALL                             R3 3 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationPopoverPluginOverlayMeasurement"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 LOADB                            R3 0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["generation"]
       10 NAMECALL                         R0 R0 K2 ["_closePopover"]
       12 CALL                             R0 4 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K2 ["_closePopover"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["open"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 0
       12 NAMECALL                         R1 R1 K5 ["_closeChildPopovers"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["_createPanelAsync"]
        4 CALL                             R3 3 2
        5 DUPTABLE                         R5 K9 [{"id", "uri", "panel", "open", "depth", "generation", "parentPopoverId", "onClose"}]
        6 SETTABLEKS                       R1 R5 K1 ["id"]
        8 SETTABLEKS                       R4 R5 K2 ["uri"]
       10 SETTABLEKS                       R3 R5 K3 ["panel"]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K4 ["open"]
       15 SETTABLEKS                       R2 R5 K5 ["depth"]
       17 LOADN                            R6 0
       18 SETTABLEKS                       R6 R5 K6 ["generation"]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R5 K7 ["parentPopoverId"]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K8 ["onClose"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R5
       30 LOADK                            R9 K10 ["PluginGui"]
       31 NAMECALL                         R7 R3 K11 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+4]
       35 MOVE                             R9 R6
       36 NAMECALL                         R7 R3 K12 ["BindToClose"]
       38 CALL                             R7 2 0
       39 GETTABLEKS                       R6 R3 K13 ["InputBegan"]
       41 NEWCLOSURE                       R8 P1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R6 R6 K14 ["Connect"]
       46 CALL                             R6 2 0
       47 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FoundationPopoverPluginOverlayMeasurement"]
        3 JUMPIFNOT                        R4 ; [+5]
        4 GETTABLEKS                       R4 R1 K1 ["generation"]
        6 ADDK                             R4 R4 K2 [1]
        7 SETTABLEKS                       R4 R1 K1 ["generation"]
        9 SETTABLEKS                       R2 R1 K3 ["onClose"]
       11 SETTABLEKS                       R3 R1 K4 ["parentPopoverId"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R1 K5 ["open"]
       16 GETTABLEKS                       R4 R0 K6 ["_active"]
       18 GETTABLEKS                       R5 R1 K7 ["id"]
       20 SETTABLE                         R1 R4 R5
       21 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R5 R0 K0 ["_pool"]
        2 GETTABLE                         R4 R5 R2
        3 JUMPIFNOT                        R4 ; [+5]
        4 GETIMPORT                        R5 K3 [table.remove]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 JUMPIF                           R5 ; [+2]
       11 LOADNIL                          R6
       12 RETURN                           R6 1
       13 MOVE                             R8 R5
       14 MOVE                             R9 R1
       15 MOVE                             R10 R3
       16 NAMECALL                         R6 R0 K4 ["_activatePopover"]
       18 CALL                             R6 4 0
       19 RETURN                           R5 1

PROTO_17:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 MOVE                             R8 R3
        3 NAMECALL                         R4 R0 K0 ["_tryAcquireFromPool"]
        5 CALL                             R4 4 1
        6 JUMPIFNOT                        R4 ; [+1]
        7 RETURN                           R4 1
        8 NAMECALL                         R5 R0 K1 ["_makePopoverId"]
       10 CALL                             R5 1 1
       11 MOVE                             R8 R5
       12 MOVE                             R9 R2
       13 NAMECALL                         R6 R0 K2 ["_createPopoverAsync"]
       15 CALL                             R6 3 1
       16 MOVE                             R9 R6
       17 MOVE                             R10 R1
       18 MOVE                             R11 R3
       19 NAMECALL                         R7 R0 K3 ["_activatePopover"]
       21 CALL                             R7 4 0
       22 RETURN                           R6 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["_didPrewarm"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADN                            R3 0
        5 FASTCALL2                        MATH_MAX R3 R1 ; [+4]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R2 K3 [math.max]
       10 CALL                             R2 2 1
       11 LOADN                            R5 0
       12 MOVE                             R3 R2
       13 LOADN                            R4 1
       14 FORNPREP                         R3
       15 GETTABLEKS                       R7 R0 K4 ["_pool"]
       17 GETTABLE                         R6 R7 R5
       18 JUMPIFNOTEQKNIL                  R6 ; [+6]
       20 GETTABLEKS                       R6 R0 K4 ["_pool"]
       22 NEWTABLE                         R7 0 0
       24 SETTABLE                         R7 R6 R5
       25 GETTABLEKS                       R7 R0 K4 ["_pool"]
       27 GETTABLE                         R6 R7 R5
       28 LENGTH                           R7 R6
       29 JUMPIFNOTEQKN                    R7 K5 [0] ; [+20]
       31 NAMECALL                         R9 R0 K6 ["_makePopoverId"]
       33 CALL                             R9 1 1
       34 MOVE                             R10 R5
       35 NAMECALL                         R7 R0 K7 ["_createPopoverAsync"]
       37 CALL                             R7 3 1
       38 GETTABLEKS                       R8 R7 K8 ["panel"]
       40 LOADB                            R9 0
       41 SETTABLEKS                       R9 R8 K9 ["Enabled"]
       43 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       45 MOVE                             R9 R6
       46 MOVE                             R10 R7
       47 GETIMPORT                        R8 K12 [table.insert]
       49 CALL                             R8 2 0
       50 FORNLOOP                         R3
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R0 K0 ["_didPrewarm"]
       54 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_active"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K1 ["open"]
        9 JUMPIFNOT                        R8 ; [+31]
       10 GETTABLEKS                       R8 R7 K2 ["id"]
       12 GETTABLEKS                       R9 R1 K2 ["id"]
       14 JUMPIFEQ                         R8 R9 ; [+26]
       16 GETTABLEKS                       R9 R0 K0 ["_active"]
       18 GETTABLEKS                       R10 R7 K3 ["parentPopoverId"]
       20 JUMPIFNOT                        R10 ; [+11]
       21 GETTABLEKS                       R11 R1 K2 ["id"]
       23 JUMPIFNOTEQ                      R10 R11 ; [+3]
       25 LOADB                            R8 1
       26 JUMP                             ; [+6]
       27 GETTABLE                         R11 R9 R10
       28 JUMPIFNOT                        R11 ; [+3]
       29 GETTABLEKS                       R10 R11 K3 ["parentPopoverId"]
       31 JUMPBACK                         ; [-12]
       32 LOADB                            R8 0
       33 JUMPIFNOT                        R8 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R7
       38 GETIMPORT                        R9 K6 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R3 2 ; [-35]
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 MOVE                             R10 R7
       48 NAMECALL                         R8 R0 K7 ["_closePopover"]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-5]
       53 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FoundationPopoverPluginOverlayMeasurement"]
        3 JUMPIFNOT                        R4 ; [+7]
        4 JUMPIFEQKNIL                     R3 ; [+6]
        6 GETTABLEKS                       R4 R1 K1 ["generation"]
        8 JUMPIFEQ                         R4 R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R1 K2 ["open"]
       13 JUMPIF                           R4 ; [+1]
       14 RETURN                           R0 0
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R1 K2 ["open"]
       18 GETTABLEKS                       R4 R1 K3 ["panel"]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K4 ["Enabled"]
       23 JUMPIF                           R2 ; [+6]
       24 GETTABLEKS                       R4 R1 K5 ["onClose"]
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R4 R1 K5 ["onClose"]
       29 CALL                             R4 0 0
       30 GETTABLEKS                       R4 R0 K6 ["_active"]
       32 GETTABLEKS                       R5 R1 K7 ["id"]
       34 LOADNIL                          R6
       35 SETTABLE                         R6 R4 R5
       36 GETTABLEKS                       R4 R1 K8 ["depth"]
       38 GETTABLEKS                       R6 R0 K9 ["_pool"]
       40 GETTABLE                         R5 R6 R4
       41 JUMPIF                           R5 ; [+5]
       42 GETTABLEKS                       R5 R0 K9 ["_pool"]
       44 NEWTABLE                         R6 0 0
       46 SETTABLE                         R6 R5 R4
       47 GETTABLEKS                       R7 R0 K9 ["_pool"]
       49 GETTABLE                         R6 R7 R4
       50 FASTCALL2                        TABLE_INSERT R6 R1 ; [+4]
       52 MOVE                             R7 R1
       53 GETIMPORT                        R5 K12 [table.insert]
       55 CALL                             R5 2 0
       56 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_active"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 MOVE                             R2 R1
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 MOVE                             R9 R6
       21 NAMECALL                         R7 R0 K4 ["_closePopover"]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-5]
       26 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["closeAll"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pool"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R6 R5
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R11 R10 K2 ["panel"]
       14 JUMPIFNOT                        R11 ; [+5]
       15 GETTABLEKS                       R11 R10 K2 ["panel"]
       17 NAMECALL                         R11 R11 K3 ["Destroy"]
       19 CALL                             R11 1 0
       20 FORGLOOP                         R6 2 ; [-9]
       22 FORGLOOP                         R1 2 ; [-15]
       24 NEWTABLE                         R1 0 0
       26 SETTABLEKS                       R1 R0 K1 ["_pool"]
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Foundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Utility"]
       17 GETTABLEKS                       R3 R3 K11 ["Flags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Utility"]
       24 GETTABLEKS                       R4 R4 K12 ["Plugin"]
       26 GETTABLEKS                       R4 R4 K13 ["StudioUri"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETIMPORT                        R5 K5 [script]
       33 GETTABLEKS                       R5 R5 K14 ["Parent"]
       35 GETTABLEKS                       R5 R5 K14 ["Parent"]
       37 GETTABLEKS                       R5 R5 K15 ["Types"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K16 [PROTO_0]
       41 DUPCLOSURE                       R6 K17 [PROTO_1]
       42 NEWTABLE                         R7 16 0
       44 SETTABLEKS                       R7 R7 K18 ["__index"]
       46 DUPCLOSURE                       R8 K19 [PROTO_2]
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R8 R7 K20 ["new"]
       51 DUPCLOSURE                       R8 K21 [PROTO_9]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R8 R7 K22 ["openAtAsync"]
       55 DUPCLOSURE                       R8 K23 [PROTO_10]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R8 R7 K24 ["_createPanelAsync"]
       59 DUPCLOSURE                       R8 K25 [PROTO_11]
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R8 R7 K26 ["_makePopoverId"]
       63 DUPCLOSURE                       R8 K27 [PROTO_14]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R8 R7 K28 ["_createPopoverAsync"]
       67 DUPCLOSURE                       R8 K29 [PROTO_15]
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R8 R7 K30 ["_activatePopover"]
       71 DUPCLOSURE                       R8 K31 [PROTO_16]
       72 SETTABLEKS                       R8 R7 K32 ["_tryAcquireFromPool"]
       74 DUPCLOSURE                       R8 K33 [PROTO_17]
       75 SETTABLEKS                       R8 R7 K34 ["_acquirePanelAsync"]
       77 DUPCLOSURE                       R8 K35 [PROTO_18]
       78 SETTABLEKS                       R8 R7 K36 ["prewarmPoolAsync"]
       80 DUPCLOSURE                       R8 K37 [PROTO_19]
       81 SETTABLEKS                       R8 R7 K38 ["_closeChildPopovers"]
       83 DUPCLOSURE                       R8 K39 [PROTO_20]
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R8 R7 K40 ["_closePopover"]
       87 DUPCLOSURE                       R8 K41 [PROTO_21]
       88 SETTABLEKS                       R8 R7 K42 ["closeAll"]
       90 DUPCLOSURE                       R8 K43 [PROTO_22]
       91 SETTABLEKS                       R8 R7 K44 ["destroy"]
       93 RETURN                           R7 1
