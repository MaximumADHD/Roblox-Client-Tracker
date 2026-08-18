PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K1 ["Destroy"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["NumberValue"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R0 R4 K4 ["Value"]
        6 LOADK                            R7 K4 ["Value"]
        7 NAMECALL                         R5 R4 K5 ["GetPropertyChangedSignal"]
        9 CALL                             R5 2 1
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 NAMECALL                         R5 R5 K6 ["Connect"]
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 0
       17 MOVE                             R8 R4
       18 MOVE                             R9 R2
       19 DUPTABLE                         R10 K7 [{"Value"}]
       20 SETTABLEKS                       R1 R10 K4 ["Value"]
       22 NAMECALL                         R6 R6 K8 ["Create"]
       24 CALL                             R6 4 1
       25 LOADNIL                          R7
       26 GETTABLEKS                       R8 R6 K9 ["Completed"]
       28 NEWCLOSURE                       R10 P1
       29 CAPTURE                          VAL R5
       30 CAPTURE                          REF R7
       31 CAPTURE                          VAL R4
       32 NAMECALL                         R8 R8 K6 ["Connect"]
       34 CALL                             R8 2 1
       35 MOVE                             R7 R8
       36 NAMECALL                         R8 R6 K10 ["Play"]
       38 CALL                             R8 1 0
       39 CLOSEUPVALS                      R7
       40 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Panels"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K5 [{["Category"] = "Panels", ["ItemId"]}]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K6 ["id"]
       11 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["TargetWidgetUri"]
        6 GETIMPORT                        R4 K7 [Vector2.new]
        8 LOADK                            R5 K8 [0.5]
        9 LOADN                            R6 1
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K1 ["TargetAnchorPoint"]
       13 GETIMPORT                        R4 K7 [Vector2.new]
       15 LOADK                            R5 K8 [0.5]
       16 LOADN                            R6 1
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["SubjectAnchorPoint"]
       20 GETIMPORT                        R4 K7 [Vector2.new]
       22 LOADN                            R5 0
       23 GETUPVAL                         R6 3
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K3 ["Offset"]
       27 NAMECALL                         R0 R0 K9 ["SetAttachmentAsync"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K2 [Vector2.new]
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 CALL                             R3 2 -1
        7 NAMECALL                         R0 R0 K3 ["SetSizeAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R3 K5 ["Y"]
       12 FASTCALL1                        MATH_CEIL R3 ; [+2]
       13 GETIMPORT                        R2 K4 [math.ceil]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 1
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R3 K7 [pcall]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 GETUPVAL                         R0 3
       14 LOADN                            R1 0
       15 GETUPVAL                         R2 4
       16 GETUPVAL                         R3 5
       17 GETUPVAL                         R4 6
       18 CALL                             R0 4 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["onClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 1
       10 JUMPIF                           R0 ; [+5]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["onClose"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 GETUPVAL                         R1 4
       18 LOADN                            R2 0
       19 GETUPVAL                         R3 5
       20 GETUPVAL                         R4 6
       21 CALL                             R0 4 1
       22 LOADNIL                          R1
       23 GETTABLEKS                       R2 R0 K2 ["Completed"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          REF R1
       27 CAPTURE                          UPVAL U2
       28 NAMECALL                         R2 R2 K3 ["Connect"]
       30 CALL                             R2 2 1
       31 MOVE                             R1 R2
       32 CLOSEUPVALS                      R1
       33 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Success"] ; [+15]
        3 DUPTABLE                         R0 K3 [{"name", "variant"}]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["Icon"]
        7 GETTABLEKS                       R1 R1 K5 ["CircleCheck"]
        9 SETTABLEKS                       R1 R0 K1 ["name"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K6 ["Filled"]
       14 SETTABLEKS                       R1 R0 K2 ["variant"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 0
       18 JUMPIFNOTEQKS                    R0 K7 ["Error"] ; [+15]
       20 DUPTABLE                         R0 K3 [{"name", "variant"}]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K4 ["Icon"]
       24 GETTABLEKS                       R1 R1 K8 ["CircleX"]
       26 SETTABLEKS                       R1 R0 K1 ["name"]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K6 ["Filled"]
       31 SETTABLEKS                       R1 R0 K2 ["variant"]
       33 RETURN                           R0 1
       34 GETUPVAL                         R0 3
       35 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 DUPTABLE                         R0 K2 [{"text", "onActivated"}]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["text"]
        8 SETTABLEKS                       R1 R0 K0 ["text"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["onActivated"]
       13 SETTABLEKS                       R1 R0 K1 ["onActivated"]
       15 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 LOADN                            R1 0
        4 JUMPIFNOTLT                      R1 R0 ; [+3]
        6 GETUPVAL                         R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADN                            R0 10
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+2]
       14 LOADN                            R0 7
       15 RETURN                           R0 1
       16 LOADN                            R0 4
       17 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K3 ["current"]
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 2
       11 SUB                              R2 R3 R0
       12 SETTABLEKS                       R2 R1 K3 ["current"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["current"]
       17 LOADN                            R2 0
       18 JUMPIFNOTLE                      R1 R2 ; [+5]
       20 LOADB                            R1 0
       21 SETUPVAL                         R1 0
       22 GETUPVAL                         R1 3
       23 CALL                             R1 0 0
       24 GETIMPORT                        R1 K2 [task.wait]
       26 CALL                             R1 0 1
       27 MOVE                             R0 R1
       28 JUMPBACK                         ; [-26]
       29 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 LOADN                            R1 0
        4 JUMPIFNOTLE                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R0 1
       11 GETIMPORT                        R1 K2 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          REF R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U3
       18 CALL                             R1 1 0
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          REF R0
       21 CLOSEUPVALS                      R0
       22 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K2 [Vector2.zero]
        4 NAMECALL                         R0 R0 K3 ["SetSizeAsync"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 DUPTABLE                         R3 K11 [{["Id"], ["InitialEnabled"] = False, ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Transparent"] = True, ["ZIndex"] = 50}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["id"]
        8 SETTABLEKS                       R4 R3 K1 ["Id"]
       10 DUPTABLE                         R4 K13 [{["DisableDismiss"] = True}]
       11 SETTABLEKS                       R4 R3 K5 ["Popup"]
       13 NAMECALL                         R0 R0 K14 ["CreateQWidgetPluginGui"]
       15 CALL                             R0 3 1
       16 SETUPVAL                         R0 0
       17 GETUPVAL                         R0 0
       18 GETIMPORT                        R1 K18 [Enum.ZIndexBehavior.Sibling]
       20 SETTABLEKS                       R1 R0 K16 ["ZIndexBehavior"]
       22 GETUPVAL                         R0 3
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETIMPORT                        R0 K20 [pcall]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 5
       31 GETUPVAL                         R1 0
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_23:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R0
       14 CAPTURE                          UPVAL U4
       15 CLOSEUPVALS                      R0
       16 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShowIfAttachedAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 LOADN                            R1 0
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K1 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["Enabled"]
       17 JUMPIF                           R0 ; [+4]
       18 GETUPVAL                         R0 0
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       22 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLE                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Hover"]
        5 JUMPIFEQ                         R0 R3 ; [+8]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Pressed"]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K3 ["offsetY"]
        9 ORK                              R2 R3 K2 [-20]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["useSignalState"]
       13 GETTABLEKS                       R4 R0 K5 ["signals"]
       15 GETTABLEKS                       R4 R4 K6 ["getTitle"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K4 ["useSignalState"]
       21 GETTABLEKS                       R5 R0 K5 ["signals"]
       23 GETTABLEKS                       R5 R5 K7 ["getIcon"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K4 ["useSignalState"]
       29 GETTABLEKS                       R6 R0 K5 ["signals"]
       31 GETTABLEKS                       R6 R6 K8 ["getAction"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K4 ["useSignalState"]
       37 GETTABLEKS                       R7 R0 K5 ["signals"]
       39 GETTABLEKS                       R7 R7 K9 ["getDuration"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       45 GETTABLEKS                       R8 R0 K5 ["signals"]
       47 GETTABLEKS                       R8 R8 K10 ["getType"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R1
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R9 R9 K11 ["useMemo"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R11 0 2
       70 MOVE                             R12 R1
       71 GETTABLEKS                       R13 R0 K12 ["id"]
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 2
       77 GETTABLEKS                       R10 R10 K13 ["useState"]
       79 LOADNIL                          R11
       80 CALL                             R10 1 2
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R12 R12 K14 ["useRef"]
       84 LOADB                            R13 0
       85 CALL                             R12 1 1
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K14 ["useRef"]
       89 LOADB                            R14 0
       90 CALL                             R13 1 1
       91 GETUPVAL                         R14 2
       92 GETTABLEKS                       R14 R14 K13 ["useState"]
       94 LOADN                            R15 0
       95 CALL                             R14 1 2
       96 GETUPVAL                         R16 2
       97 GETTABLEKS                       R16 R16 K15 ["useCallback"]
       99 NEWCLOSURE                       R17 P2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          UPVAL U4
      103 NEWTABLE                         R18 0 2
      105 MOVE                             R19 R8
      106 MOVE                             R20 R9
      107 SETLIST                          R18 R19 2 [1]
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      113 NEWCLOSURE                       R18 P3
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 NEWTABLE                         R19 0 3
      119 MOVE                             R20 R8
      120 MOVE                             R21 R9
      121 MOVE                             R22 R15
      122 SETLIST                          R19 R20 3 [1]
      124 CALL                             R17 2 1
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      128 NEWCLOSURE                       R19 P4
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R12
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R2
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          VAL R16
      136 NEWTABLE                         R20 0 4
      138 MOVE                             R21 R10
      139 MOVE                             R22 R8
      140 MOVE                             R23 R2
      141 MOVE                             R24 R16
      142 SETLIST                          R20 R21 4 [1]
      144 CALL                             R18 2 1
      145 GETUPVAL                         R19 2
      146 GETTABLEKS                       R19 R19 K15 ["useCallback"]
      148 NEWCLOSURE                       R20 P5
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R2
      154 CAPTURE                          UPVAL U7
      155 CAPTURE                          VAL R16
      156 NEWTABLE                         R21 0 4
      158 MOVE                             R22 R8
      159 GETTABLEKS                       R23 R0 K16 ["onClose"]
      161 MOVE                             R24 R2
      162 MOVE                             R25 R16
      163 SETLIST                          R21 R22 4 [1]
      165 CALL                             R19 2 1
      166 GETUPVAL                         R20 2
      167 GETTABLEKS                       R20 R20 K11 ["useMemo"]
      169 NEWCLOSURE                       R21 P6
      170 CAPTURE                          VAL R7
      171 CAPTURE                          UPVAL U8
      172 CAPTURE                          UPVAL U9
      173 CAPTURE                          VAL R4
      174 NEWTABLE                         R22 0 2
      176 MOVE                             R23 R7
      177 MOVE                             R24 R4
      178 SETLIST                          R22 R23 2 [1]
      180 CALL                             R20 2 1
      181 GETUPVAL                         R21 2
      182 GETTABLEKS                       R21 R21 K11 ["useMemo"]
      184 NEWCLOSURE                       R22 P7
      185 CAPTURE                          VAL R5
      186 NEWTABLE                         R23 0 1
      188 MOVE                             R24 R5
      189 SETLIST                          R23 R24 1 [1]
      191 CALL                             R21 2 1
      192 LOADN                            R23 48
      193 JUMPIFLT                         R23 R14 ; [+2]
      195 LOADB                            R22 0 +1
      196 LOADB                            R22 1
      197 GETUPVAL                         R23 2
      198 GETTABLEKS                       R23 R23 K11 ["useMemo"]
      200 NEWCLOSURE                       R24 P8
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R5
      204 NEWTABLE                         R25 0 3
      206 MOVE                             R26 R6
      207 MOVE                             R27 R22
      208 MOVE                             R28 R5
      209 SETLIST                          R25 R26 3 [1]
      211 CALL                             R23 2 1
      212 GETUPVAL                         R24 2
      213 GETTABLEKS                       R24 R24 K13 ["useState"]
      215 LOADB                            R25 0
      216 CALL                             R24 1 2
      217 GETUPVAL                         R26 2
      218 GETTABLEKS                       R26 R26 K14 ["useRef"]
      220 MOVE                             R27 R23
      221 CALL                             R26 1 1
      222 GETUPVAL                         R27 2
      223 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      225 NEWCLOSURE                       R28 P9
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R23
      228 NEWTABLE                         R29 0 5
      230 MOVE                             R30 R23
      231 MOVE                             R31 R3
      232 MOVE                             R32 R4
      233 MOVE                             R33 R5
      234 MOVE                             R34 R7
      235 SETLIST                          R29 R30 5 [1]
      237 CALL                             R27 2 0
      238 GETUPVAL                         R27 2
      239 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      241 NEWCLOSURE                       R28 P10
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R19
      246 NEWTABLE                         R29 0 7
      248 MOVE                             R30 R23
      249 MOVE                             R31 R3
      250 MOVE                             R32 R4
      251 MOVE                             R33 R5
      252 MOVE                             R34 R7
      253 MOVE                             R35 R24
      254 MOVE                             R36 R19
      255 SETLIST                          R29 R30 7 [1]
      257 CALL                             R27 2 0
      258 GETUPVAL                         R27 2
      259 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      261 NEWCLOSURE                       R28 P11
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R8
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R11
      267 NEWTABLE                         R29 0 5
      269 MOVE                             R30 R1
      270 GETTABLEKS                       R31 R0 K12 ["id"]
      272 MOVE                             R32 R11
      273 MOVE                             R33 R8
      274 MOVE                             R34 R9
      275 SETLIST                          R29 R30 5 [1]
      277 CALL                             R27 2 0
      278 GETUPVAL                         R27 2
      279 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      281 NEWCLOSURE                       R28 P12
      282 CAPTURE                          VAL R10
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R16
      285 CAPTURE                          VAL R9
      286 NEWTABLE                         R29 0 4
      288 MOVE                             R30 R10
      289 MOVE                             R31 R8
      290 MOVE                             R32 R9
      291 MOVE                             R33 R16
      292 SETLIST                          R29 R30 4 [1]
      294 CALL                             R27 2 0
      295 GETUPVAL                         R27 2
      296 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      298 NEWCLOSURE                       R28 P13
      299 CAPTURE                          VAL R14
      300 CAPTURE                          VAL R18
      301 NEWTABLE                         R29 0 2
      303 MOVE                             R30 R14
      304 MOVE                             R31 R18
      305 SETLIST                          R29 R30 2 [1]
      307 CALL                             R27 2 0
      308 JUMPIF                           R10 ; [+2]
      309 LOADNIL                          R27
      310 RETURN                           R27 1
      311 GETUPVAL                         R27 10
      312 GETTABLEKS                       R27 R27 K18 ["createPortal"]
      314 GETUPVAL                         R28 11
      315 GETUPVAL                         R29 12
      316 DUPTABLE                         R30 K20 [{"overlayGui"}]
      317 SETTABLEKS                       R10 R30 K19 ["overlayGui"]
      319 DUPTABLE                         R31 K22 [{"Container"}]
      320 GETUPVAL                         R32 11
      321 GETUPVAL                         R33 13
      322 DUPTABLE                         R34 K27 [{["tag"] = "auto-xy", ["onAbsoluteSizeChanged"], ["onStateChanged"]}]
      323 NEWCLOSURE                       R35 P14
      324 CAPTURE                          VAL R17
      325 SETTABLEKS                       R35 R34 K25 ["onAbsoluteSizeChanged"]
      327 NEWCLOSURE                       R35 P15
      328 CAPTURE                          VAL R25
      329 CAPTURE                          UPVAL U14
      330 SETTABLEKS                       R35 R34 K26 ["onStateChanged"]
      332 DUPTABLE                         R35 K29 [{"Snackbar"}]
      333 GETUPVAL                         R36 11
      334 GETUPVAL                         R37 15
      335 GETTABLEKS                       R37 R37 K28 ["Snackbar"]
      337 DUPTABLE                         R38 K33 [{"title", "icon", "action", "onClose"}]
      338 SETTABLEKS                       R3 R38 K30 ["title"]
      340 SETTABLEKS                       R20 R38 K31 ["icon"]
      342 SETTABLEKS                       R21 R38 K32 ["action"]
      344 SETTABLEKS                       R19 R38 K16 ["onClose"]
      346 CALL                             R36 2 1
      347 SETTABLEKS                       R36 R35 K28 ["Snackbar"]
      349 CALL                             R32 3 1
      350 SETTABLEKS                       R32 R31 K21 ["Container"]
      352 CALL                             R28 3 1
      353 MOVE                             R29 R10
      354 CALL                             R27 2 -1
      355 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Footer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["BuilderIcons"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["ReactRoblox"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["SignalsReact"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K10 ["Packages"]
       59 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K18 ["Src"]
       66 GETTABLEKS                       R10 R10 K19 ["Util"]
       68 GETTABLEKS                       R10 R10 K20 ["createSnackbarSignals"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R8 K21 ["Components"]
       73 GETTABLEKS                       R10 R10 K22 ["FoundationProviderAdapter"]
       75 GETTABLEKS                       R11 R3 K23 ["Enums"]
       77 GETTABLEKS                       R12 R11 K24 ["ControlState"]
       79 GETTABLEKS                       R13 R11 K25 ["IconVariant"]
       81 GETTABLEKS                       R14 R4 K26 ["ContextServices"]
       83 GETTABLEKS                       R14 R14 K27 ["Plugin"]
       85 GETTABLEKS                       R15 R8 K19 ["Util"]
       87 GETTABLEKS                       R15 R15 K28 ["StudioUri"]
       89 GETTABLEKS                       R16 R3 K29 ["View"]
       91 GETTABLEKS                       R17 R5 K30 ["createElement"]
       93 DUPTABLE                         R18 K37 [{["PluginId"] = "MainWindow", ["Category"] = "Widgets", ["ItemId"] = "Window"}]
       94 GETIMPORT                        R19 K40 [TweenInfo.new]
       96 LOADK                            R20 K41 [0.2]
       97 GETIMPORT                        R21 K45 [Enum.EasingStyle.Cubic]
       99 GETIMPORT                        R22 K48 [Enum.EasingDirection.Out]
      101 CALL                             R19 3 1
      102 GETIMPORT                        R20 K40 [TweenInfo.new]
      104 LOADK                            R21 K49 [0.15]
      105 GETIMPORT                        R22 K45 [Enum.EasingStyle.Cubic]
      107 GETIMPORT                        R23 K51 [Enum.EasingDirection.In]
      109 CALL                             R20 3 1
      110 DUPCLOSURE                       R21 K52 [PROTO_2]
      111 CAPTURE                          VAL R0
      112 DUPCLOSURE                       R22 K53 [PROTO_29]
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R3
      129 GETTABLEKS                       R23 R5 K54 ["memo"]
      131 MOVE                             R24 R22
      132 CALL                             R23 1 -1
      133 RETURN                           R23 -1
