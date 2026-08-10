PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{"Step", "Thread", "TargetComment"}]
        2 SETTABLEKS                       R0 R4 K0 ["Step"]
        4 SETTABLEKS                       R1 R4 K1 ["Thread"]
        6 SETTABLEKS                       R2 R4 K2 ["TargetComment"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Closed"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CommentId"]
        3 LOADB                            R4 1
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["Category"]
       11 LOADNIL                          R4
       12 JUMPIFNOT                        R1 ; [+7]
       13 LOADK                            R8 K3 ["Annotation"]
       14 NAMECALL                         R6 R1 K4 ["IsA"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+2]
       18 MOVE                             R5 R1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R5
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetChildren"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 LOADK                            R8 K1 ["Annotation"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+30]
       10 GETTABLEKS                       R6 R5 K3 ["ChannelId"]
       12 JUMPIFNOTEQ                      R6 R0 ; [+27]
       14 GETTABLEKS                       R6 R5 K4 ["LoadingReplies"]
       16 JUMPIF                           R6 ; [+15]
       17 NAMECALL                         R7 R5 K0 ["GetChildren"]
       19 CALL                             R7 1 1
       20 LENGTH                           R6 R7
       21 GETTABLEKS                       R7 R5 K5 ["ReplyCount"]
       23 JUMPIFEQ                         R6 R7 ; [+8]
       25 GETUPVAL                         R6 0
       26 MOVE                             R8 R5
       27 LOADB                            R9 1
       28 LOADB                            R10 1
       29 NAMECALL                         R6 R6 K6 ["LoadAnnotationReplies"]
       31 CALL                             R6 4 0
       32 GETUPVAL                         R6 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["CommentPicker"]
       36 MOVE                             R8 R5
       37 LOADNIL                          R9
       38 CALL                             R6 3 0
       39 RETURN                           R0 0
       40 FORGLOOP                         R1 2 ; [-36]
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        8 LOADK                            R3 K2 ["OpenReportComment"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NAMECALL                         R1 R0 K3 ["OnInvoke"]
       15 CALL                             R1 3 1
       16 LOADK                            R4 K4 ["OpenReportThread"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R2 R0 K3 ["OnInvoke"]
       23 CALL                             R2 3 1
       24 NEWCLOSURE                       R3 P2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPTABLE                         R2 K5 [{["Step"], ["Thread"] = , ["TargetComment"] = }]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K6 ["Closed"]
        7 SETTABLEKS                       R3 R2 K1 ["Step"]
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K7 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U1
       24 NEWTABLE                         R6 0 1
       26 MOVE                             R7 R3
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U1
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R0 K9 ["Plugin"]
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 0
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K10 ["createElement"]
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K11 ["Provider"]
       52 DUPTABLE                         R7 K13 [{"value"}]
       53 DUPTABLE                         R8 K17 [{"report", "openReport", "closeReport"}]
       54 SETTABLEKS                       R1 R8 K14 ["report"]
       56 SETTABLEKS                       R3 R8 K15 ["openReport"]
       58 SETTABLEKS                       R4 R8 K16 ["closeReport"]
       60 SETTABLEKS                       R8 R7 K12 ["value"]
       62 GETTABLEKS                       R8 R0 K18 ["children"]
       64 CALL                             R5 3 -1
       65 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openReport"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Category"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Thread"]
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openReport"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Details"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Thread"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["TargetComment"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openReport"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Confirmed"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Thread"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["TargetComment"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["report"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["fflagStudioUserReportingComments"]
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETTABLEKS                       R2 R1 K3 ["Step"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["Closed"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["createElement"]
       23 GETUPVAL                         R3 4
       24 DUPTABLE                         R4 K13 [{"Step", "Thread", "TargetComment", "OnSelectComment", "OnContinueCategory", "OnSubmit", "OnCancel", "OnDone"}]
       25 GETTABLEKS                       R5 R1 K3 ["Step"]
       27 SETTABLEKS                       R5 R4 K3 ["Step"]
       29 GETTABLEKS                       R5 R1 K6 ["Thread"]
       31 SETTABLEKS                       R5 R4 K6 ["Thread"]
       33 GETTABLEKS                       R5 R1 K7 ["TargetComment"]
       35 SETTABLEKS                       R5 R4 K7 ["TargetComment"]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R5 R4 K8 ["OnSelectComment"]
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R4 K9 ["OnContinueCategory"]
       49 NEWCLOSURE                       R5 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R5 R4 K10 ["OnSubmit"]
       55 GETTABLEKS                       R5 R0 K14 ["closeReport"]
       57 SETTABLEKS                       R5 R4 K11 ["OnCancel"]
       59 GETTABLEKS                       R5 R0 K14 ["closeReport"]
       61 SETTABLEKS                       R5 R4 K12 ["OnDone"]
       63 CALL                             R2 2 -1
       64 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K12 ["Components"]
       29 GETTABLEKS                       R4 R4 K13 ["ReportDialog"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Src"]
       36 GETTABLEKS                       R5 R5 K14 ["Enums"]
       38 GETTABLEKS                       R5 R5 K15 ["ReportStep"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Src"]
       45 GETTABLEKS                       R6 R6 K16 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K18 [game]
       50 LOADK                            R8 K19 ["AnnotationsService"]
       51 NAMECALL                         R6 R6 K20 ["GetService"]
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R7 R1 K21 ["createContext"]
       56 NEWTABLE                         R8 0 0
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K22 [PROTO_6]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R9 K23 [PROTO_10]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 DUPTABLE                         R10 K27 [{"ReportContext", "ReportProvider", "ReportDialogHost"}]
       72 SETTABLEKS                       R7 R10 K24 ["ReportContext"]
       74 SETTABLEKS                       R8 R10 K25 ["ReportProvider"]
       76 SETTABLEKS                       R9 R10 K26 ["ReportDialogHost"]
       78 RETURN                           R10 1
