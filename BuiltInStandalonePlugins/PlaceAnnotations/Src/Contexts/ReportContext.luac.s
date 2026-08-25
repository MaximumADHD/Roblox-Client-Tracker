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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openReport"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Category"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Thread"]
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Step"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Details"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+15]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["openReport"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["Category"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["Thread"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["TargetComment"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["Step"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K3 ["Category"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+18]
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K4 ["Thread"]
       33 JUMPIFNOT                        R0 ; [+13]
       34 GETUPVAL                         R0 2
       35 GETTABLEKS                       R0 R0 K2 ["openReport"]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K6 ["CommentPicker"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K4 ["Thread"]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K5 ["TargetComment"]
       46 CALL                             R0 3 0
       47 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R0 4 2
        7 GETUPVAL                         R2 4
        8 LOADB                            R3 0
        9 CALL                             R2 1 0
       10 JUMPIFNOT                        R0 ; [+16]
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETTABLEKS                       R2 R1 K2 ["success"]
       14 JUMPIFNOT                        R2 ; [+12]
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R2 R2 K3 ["openReport"]
       18 GETUPVAL                         R3 6
       19 GETTABLEKS                       R3 R3 K4 ["Confirmed"]
       21 GETUPVAL                         R4 7
       22 GETTABLEKS                       R4 R4 K5 ["Thread"]
       24 GETUPVAL                         R5 1
       25 CALL                             R2 3 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 8
       28 LOADB                            R3 1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["TargetComment"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R6 2
        8 NAMECALL                         R4 R3 K1 ["IsDescendantOf"]
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R4 ; [+1]
       12 JUMPIF                           R2 ; [+2]
       13 LOADK                            R4 K2 ["CommentDeleted"]
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R3 K3 ["AuthorId"]
       17 GETTABLEKS                       R5 R2 K3 ["AuthorId"]
       19 JUMPIFNOTEQ                      R4 R5 ; [+19]
       21 GETTABLEKS                       R4 R3 K4 ["Contents"]
       23 GETTABLEKS                       R5 R2 K4 ["Contents"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+13]
       27 GETTABLEKS                       R4 R3 K5 ["CreationTimeUnix"]
       29 GETTABLEKS                       R5 R2 K5 ["CreationTimeUnix"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+7]
       33 GETTABLEKS                       R4 R3 K6 ["TaggedUsers"]
       35 GETTABLEKS                       R5 R2 K6 ["TaggedUsers"]
       37 JUMPIFEQ                         R4 R5 ; [+3]
       39 LOADK                            R4 K7 ["CommentEdited"]
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 3
       42 LOADB                            R5 0
       43 CALL                             R4 1 0
       44 GETUPVAL                         R4 4
       45 LOADB                            R5 1
       46 CALL                             R4 1 0
       47 GETIMPORT                        R4 K10 [task.spawn]
       49 NEWCLOSURE                       R5 P0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U3
       59 CALL                             R4 1 0
       60 LOADNIL                          R4
       61 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["useContext"]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 1
       11 GETTABLEKS                       R1 R0 K2 ["report"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["useState"]
       16 LOADB                            R3 0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["useState"]
       21 LOADB                            R5 0
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R5
       28 NEWTABLE                         R8 0 2
       30 GETTABLEKS                       R9 R1 K5 ["Step"]
       32 GETTABLEKS                       R10 R1 K6 ["TargetComment"]
       34 SETLIST                          R8 R9 2 [1]
       36 CALL                             R6 2 0
       37 GETTABLEKS                       R6 R1 K5 ["Step"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K7 ["Closed"]
       42 JUMPIFNOTEQ                      R6 R7 ; [+3]
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K8 ["createElement"]
       49 GETUPVAL                         R7 4
       50 DUPTABLE                         R8 K17 [{"Step", "Thread", "TargetComment", "OnSelectComment", "OnContinueCategory", "OnBack", "OnSubmit", "OnCancel", "IsSubmitting", "SubmissionFailed"}]
       51 GETTABLEKS                       R9 R1 K5 ["Step"]
       53 SETTABLEKS                       R9 R8 K5 ["Step"]
       55 GETTABLEKS                       R9 R1 K9 ["Thread"]
       57 SETTABLEKS                       R9 R8 K9 ["Thread"]
       59 GETTABLEKS                       R9 R1 K6 ["TargetComment"]
       61 SETTABLEKS                       R9 R8 K6 ["TargetComment"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R9 R8 K10 ["OnSelectComment"]
       69 NEWCLOSURE                       R9 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R9 R8 K11 ["OnContinueCategory"]
       75 NEWCLOSURE                       R9 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R9 R8 K12 ["OnBack"]
       81 NEWCLOSURE                       R9 P4
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U3
       90 SETTABLEKS                       R9 R8 K13 ["OnSubmit"]
       92 GETTABLEKS                       R9 R0 K18 ["closeReport"]
       94 SETTABLEKS                       R9 R8 K14 ["OnCancel"]
       96 SETTABLEKS                       R2 R8 K15 ["IsSubmitting"]
       98 SETTABLEKS                       R4 R8 K16 ["SubmissionFailed"]
      100 CALL                             R6 2 -1
      101 RETURN                           R6 -1

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
       45 GETTABLEKS                       R6 R6 K16 ["Networking"]
       47 GETTABLEKS                       R6 R6 K17 ["Requests"]
       49 GETTABLEKS                       R6 R6 K18 ["SubmitAbuseReport"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K11 ["Src"]
       56 GETTABLEKS                       R7 R7 K19 ["Types"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K21 [game]
       61 LOADK                            R9 K22 ["AnnotationsService"]
       62 NAMECALL                         R7 R7 K23 ["GetService"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R8 R1 K24 ["createContext"]
       67 NEWTABLE                         R9 0 0
       69 CALL                             R8 1 1
       70 DUPCLOSURE                       R9 K25 [PROTO_6]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R10 K26 [PROTO_13]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 DUPTABLE                         R11 K30 [{"ReportContext", "ReportProvider", "ReportDialogHost"}]
       85 SETTABLEKS                       R8 R11 K27 ["ReportContext"]
       87 SETTABLEKS                       R9 R11 K28 ["ReportProvider"]
       89 SETTABLEKS                       R10 R11 K29 ["ReportDialogHost"]
       91 RETURN                           R11 1
