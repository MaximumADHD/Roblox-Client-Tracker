PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ParentId"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R4 R0 K0 ["ParentId"]
        7 LOADB                            R5 1
        8 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       10 CALL                             R2 3 1
       11 MOVE                             R1 R2
       12 LOADK                            R5 K2 ["Parent annotation %* not found."]
       13 GETTABLEKS                       R7 R0 K0 ["ParentId"]
       15 NAMECALL                         R5 R5 K3 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 FASTCALL2                        ASSERT R1 R4 ; [+4]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K5 [assert]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K8 [Instance.new]
       27 LOADK                            R3 K9 ["Annotation"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K10 ["UniqueId"]
       31 SETTABLEKS                       R3 R2 K11 ["Name"]
       33 GETTABLEKS                       R3 R0 K12 ["AuthorId"]
       35 SETTABLEKS                       R3 R2 K12 ["AuthorId"]
       37 GETTABLEKS                       R3 R0 K13 ["CreationTimeUnix"]
       39 SETTABLEKS                       R3 R2 K13 ["CreationTimeUnix"]
       41 GETTABLEKS                       R3 R0 K14 ["LastModifiedTimeUnix"]
       43 SETTABLEKS                       R3 R2 K14 ["LastModifiedTimeUnix"]
       45 GETTABLEKS                       R3 R0 K15 ["Contents"]
       47 SETTABLEKS                       R3 R2 K15 ["Contents"]
       49 GETTABLEKS                       R3 R0 K16 ["Resolved"]
       51 SETTABLEKS                       R3 R2 K16 ["Resolved"]
       53 GETTABLEKS                       R3 R0 K17 ["TaggedUsers"]
       55 SETTABLEKS                       R3 R2 K17 ["TaggedUsers"]
       57 SETTABLEKS                       R1 R2 K18 ["Parent"]
       59 GETTABLEKS                       R3 R0 K19 ["ChannelId"]
       61 SETTABLEKS                       R3 R2 K19 ["ChannelId"]
       63 GETTABLEKS                       R3 R0 K20 ["HeaderInfo"]
       65 JUMPIFNOT                        R3 ; [+16]
       66 LOADK                            R5 K21 ["HeaderText"]
       67 GETTABLEKS                       R7 R0 K20 ["HeaderInfo"]
       69 GETTABLEKS                       R6 R7 K21 ["HeaderText"]
       71 NAMECALL                         R3 R2 K22 ["SetAttribute"]
       73 CALL                             R3 3 0
       74 LOADK                            R5 K23 ["AdorneeClass"]
       75 GETTABLEKS                       R7 R0 K20 ["HeaderInfo"]
       77 GETTABLEKS                       R6 R7 K23 ["AdorneeClass"]
       79 NAMECALL                         R3 R2 K22 ["SetAttribute"]
       81 CALL                             R3 3 0
       82 GETTABLEKS                       R3 R0 K24 ["ReplyCount"]
       84 SETTABLEKS                       R3 R2 K24 ["ReplyCount"]
       86 GETTABLEKS                       R3 R0 K25 ["TaggedUsersInThread"]
       88 JUMPIFNOT                        R3 ; [+6]
       89 LOADK                            R5 K25 ["TaggedUsersInThread"]
       90 GETTABLEKS                       R6 R0 K25 ["TaggedUsersInThread"]
       92 NAMECALL                         R3 R2 K22 ["SetAttribute"]
       94 CALL                             R3 3 0
       95 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 LOADB                            R5 1
        3 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        5 CALL                             R2 3 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K1 ["Resolved"]
       10 JUMPIFEQKNIL                     R3 ; [+5]
       12 GETTABLEKS                       R3 R1 K1 ["Resolved"]
       14 SETTABLEKS                       R3 R2 K1 ["Resolved"]
       16 GETTABLEKS                       R3 R1 K2 ["HeaderInfo"]
       18 JUMPIFEQKNIL                     R3 ; [+17]
       20 LOADK                            R5 K3 ["HeaderText"]
       21 GETTABLEKS                       R7 R1 K2 ["HeaderInfo"]
       23 GETTABLEKS                       R6 R7 K3 ["HeaderText"]
       25 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       27 CALL                             R3 3 0
       28 LOADK                            R5 K5 ["AdorneeClass"]
       29 GETTABLEKS                       R7 R1 K2 ["HeaderInfo"]
       31 GETTABLEKS                       R6 R7 K5 ["AdorneeClass"]
       33 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 GETTABLEKS                       R3 R1 K6 ["Contents"]
       38 JUMPIFEQKNIL                     R3 ; [+5]
       40 GETTABLEKS                       R3 R1 K6 ["Contents"]
       42 SETTABLEKS                       R3 R2 K6 ["Contents"]
       44 GETTABLEKS                       R3 R1 K7 ["ReplyCount"]
       46 JUMPIFEQKNIL                     R3 ; [+5]
       48 GETTABLEKS                       R3 R1 K7 ["ReplyCount"]
       50 SETTABLEKS                       R3 R2 K7 ["ReplyCount"]
       52 GETTABLEKS                       R3 R1 K8 ["TaggedUsers"]
       54 JUMPIFEQKNIL                     R3 ; [+5]
       56 GETTABLEKS                       R3 R1 K8 ["TaggedUsers"]
       58 SETTABLEKS                       R3 R2 K8 ["TaggedUsers"]
       60 GETTABLEKS                       R3 R1 K9 ["TaggedUsersInThread"]
       62 JUMPIFEQKNIL                     R3 ; [+7]
       64 LOADK                            R5 K9 ["TaggedUsersInThread"]
       65 GETTABLEKS                       R6 R1 K9 ["TaggedUsersInThread"]
       67 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       69 CALL                             R3 3 0
       70 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 NAMECALL                         R2 R1 K1 ["Destroy"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ClearAllChildren"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ClearAllChildren"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K1 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 4
       19 NAMECALL                         R0 R0 K1 ["Disconnect"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["DidInitStandalone"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R3 K0 ["DidInitStandalone"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K2 ["SetAttribute"]
       10 CALL                             R1 3 0
       11 LOADK                            R3 K3 ["CreateAnnotation"]
       12 DUPCLOSURE                       R4 K4 [PROTO_0]
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R1 R0 K5 ["OnInvoke"]
       16 CALL                             R1 3 1
       17 LOADK                            R4 K6 ["SyncStandaloneAnnotation"]
       18 DUPCLOSURE                       R5 K7 [PROTO_1]
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R2 R0 K5 ["OnInvoke"]
       22 CALL                             R2 3 1
       23 LOADK                            R5 K8 ["AnnotationDeleted"]
       24 DUPCLOSURE                       R6 K9 [PROTO_2]
       25 CAPTURE                          UPVAL U0
       26 NAMECALL                         R3 R0 K5 ["OnInvoke"]
       28 CALL                             R3 3 1
       29 GETTABLEKS                       R5 R0 K10 ["MultipleDocumentInterfaceInstance"]
       31 JUMPIFNOT                        R5 ; [+10]
       32 GETTABLEKS                       R5 R0 K10 ["MultipleDocumentInterfaceInstance"]
       34 GETTABLEKS                       R4 R5 K11 ["DataModelSessionEnded"]
       36 DUPCLOSURE                       R6 K12 [PROTO_3]
       37 CAPTURE                          UPVAL U0
       38 NAMECALL                         R4 R4 K13 ["Connect"]
       40 CALL                             R4 2 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 GETTABLEKS                       R5 R0 K14 ["Unloading"]
       45 NEWCLOSURE                       R7 P4
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 NAMECALL                         R5 R5 K15 ["Once"]
       53 CALL                             R5 2 0
       54 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnnotationsLoadingStatus"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["AnnotationsLoadingStatus"]
        5 NAMECALL                         R0 R0 K1 ["SetItem"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ResolvedLoadingStatus"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["ResolvedLoadingStatus"]
        5 NAMECALL                         R0 R0 K1 ["SetItem"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["Activate"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["Selected"]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["PlacingNew"]
       13 SETTABLEKS                       R1 R0 K3 ["Mode"]
       15 GETIMPORT                        R1 K5 [game]
       17 GETTABLEKS                       R0 R1 K6 ["CoreGui"]
       19 LOADK                            R2 K7 ["PlaceAnnotations"]
       20 NAMECALL                         R0 R0 K8 ["FindFirstChild"]
       22 CALL                             R0 2 1
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 NAMECALL                         R1 R0 K9 ["GetChildren"]
       27 CALL                             R1 1 3
       28 FORGPREP                         R1
       29 LOADK                            R8 K10 ["BillboardGui"]
       30 NAMECALL                         R6 R5 K11 ["IsA"]
       32 CALL                             R6 2 1
       33 JUMPIFNOT                        R6 ; [+7]
       34 LOADK                            R8 K12 ["ImageButton"]
       35 NAMECALL                         R6 R5 K13 ["FindFirstChildOfClass"]
       37 CALL                             R6 2 1
       38 LOADB                            R7 0
       39 SETTABLEKS                       R7 R6 K14 ["Interactable"]
       41 FORGLOOP                         R1 2 ; [-13]
       43 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouse"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K1 [""]
        5 SETTABLEKS                       R1 R0 K2 ["Icon"]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K3 ["None"]
       11 SETTABLEKS                       R1 R0 K4 ["Mode"]
       13 GETIMPORT                        R1 K6 [game]
       15 GETTABLEKS                       R0 R1 K7 ["CoreGui"]
       17 LOADK                            R2 K8 ["PlaceAnnotations"]
       18 NAMECALL                         R0 R0 K9 ["FindFirstChild"]
       20 CALL                             R0 2 1
       21 JUMPIF                           R0 ; [+1]
       22 RETURN                           R0 0
       23 NAMECALL                         R1 R0 K10 ["GetChildren"]
       25 CALL                             R1 1 3
       26 FORGPREP                         R1
       27 LOADK                            R8 K11 ["BillboardGui"]
       28 NAMECALL                         R6 R5 K12 ["IsA"]
       30 CALL                             R6 2 1
       31 JUMPIFNOT                        R6 ; [+7]
       32 LOADK                            R8 K13 ["ImageButton"]
       33 NAMECALL                         R6 R5 K14 ["FindFirstChildOfClass"]
       35 CALL                             R6 2 1
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K15 ["Interactable"]
       39 FORGLOOP                         R1 2 ; [-13]
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["EditAnnotation"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R2
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K1 ["ResolveAnnotation"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["DeleteAnnotation"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["AnnotationsVisible"]
        3 GETIMPORT                        R2 K2 [game]
        5 GETTABLEKS                       R1 R2 K3 ["CoreGui"]
        7 LOADK                            R3 K4 ["PlaceAnnotations"]
        8 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 NAMECALL                         R2 R1 K6 ["GetChildren"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 LOADK                            R9 K7 ["BillboardGui"]
       16 NAMECALL                         R7 R6 K8 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+7]
       20 LOADK                            R9 K9 ["IsDraft"]
       21 NAMECALL                         R7 R6 K10 ["GetAttribute"]
       23 CALL                             R7 2 1
       24 JUMPIF                           R7 ; [+2]
       25 SETTABLEKS                       R0 R6 K11 ["Enabled"]
       27 FORGLOOP                         R2 2 ; [-13]
       29 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 LOADB                            R5 1
        3 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        5 CALL                             R2 3 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K1 ["SingleClick"]
       10 JUMPIFEQKNIL                     R3 ; [+7]
       12 LOADK                            R5 K1 ["SingleClick"]
       13 GETTABLEKS                       R6 R1 K1 ["SingleClick"]
       15 NAMECALL                         R3 R2 K2 ["SetAttribute"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AnnotationsLoadingStatus"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Loading"]
        6 JUMPIFEQ                         R0 R1 ; [+11]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["Success"]
       11 JUMPIFEQ                         R0 R1 ; [+6]
       13 GETUPVAL                         R1 0
       14 LOADB                            R3 0
       15 NAMECALL                         R1 R1 K3 ["LoadAnnotations"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["ResolvedLoadingStatus"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K1 ["Loading"]
       24 JUMPIFEQ                         R0 R1 ; [+11]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K2 ["Success"]
       29 JUMPIFEQ                         R0 R1 ; [+6]
       31 GETUPVAL                         R1 0
       32 LOADB                            R3 1
       33 NAMECALL                         R1 R1 K3 ["LoadAnnotations"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 6
       25 NAMECALL                         R0 R0 K0 ["Disconnect"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 7
       29 NAMECALL                         R0 R0 K0 ["Disconnect"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 8
       33 NAMECALL                         R0 R0 K0 ["Disconnect"]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 9
       37 NAMECALL                         R0 R0 K0 ["Disconnect"]
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 10
       41 NAMECALL                         R0 R0 K0 ["Disconnect"]
       43 CALL                             R0 1 0
       44 GETUPVAL                         R0 11
       45 NAMECALL                         R0 R0 K0 ["Disconnect"]
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_19:
        0 LOADK                            R3 K0 ["AnnotationsLoadingStatus"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["AnnotationsLoadingStatus"]
        4 NAMECALL                         R1 R0 K1 ["SetItem"]
        6 CALL                             R1 3 0
        7 LOADK                            R3 K2 ["ResolvedLoadingStatus"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["ResolvedLoadingStatus"]
       11 NAMECALL                         R1 R0 K1 ["SetItem"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 LOADK                            R3 K0 ["AnnotationsLoadingStatus"]
       16 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 NAMECALL                         R1 R1 K4 ["Connect"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 0
       26 LOADK                            R4 K2 ["ResolvedLoadingStatus"]
       27 NAMECALL                         R2 R2 K3 ["GetPropertyChangedSignal"]
       29 CALL                             R2 2 1
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R2 R2 K4 ["Connect"]
       35 CALL                             R2 2 1
       36 LOADK                            R5 K5 ["BeginAddAnnotation"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R3 R0 K6 ["OnInvoke"]
       43 CALL                             R3 3 1
       44 LOADK                            R6 K7 ["EndAddAnnotation"]
       45 NEWCLOSURE                       R7 P3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 NAMECALL                         R4 R0 K6 ["OnInvoke"]
       51 CALL                             R4 3 1
       52 LOADK                            R7 K8 ["EditAnnotation"]
       53 DUPCLOSURE                       R8 K9 [PROTO_10]
       54 CAPTURE                          UPVAL U0
       55 NAMECALL                         R5 R0 K6 ["OnInvoke"]
       57 CALL                             R5 3 1
       58 LOADK                            R8 K10 ["ResolveAnnotation"]
       59 DUPCLOSURE                       R9 K11 [PROTO_11]
       60 CAPTURE                          UPVAL U0
       61 NAMECALL                         R6 R0 K6 ["OnInvoke"]
       63 CALL                             R6 3 1
       64 LOADK                            R9 K12 ["ZoomTo"]
       65 DUPCLOSURE                       R10 K13 [PROTO_12]
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U2
       68 NAMECALL                         R7 R0 K6 ["OnInvoke"]
       70 CALL                             R7 3 1
       71 LOADK                            R10 K14 ["DeleteAnnotation"]
       72 DUPCLOSURE                       R11 K15 [PROTO_13]
       73 CAPTURE                          UPVAL U0
       74 NAMECALL                         R8 R0 K6 ["OnInvoke"]
       76 CALL                             R8 3 1
       77 LOADK                            R11 K16 ["SelectAnnotation"]
       78 DUPCLOSURE                       R12 K17 [PROTO_14]
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U3
       81 NAMECALL                         R9 R0 K6 ["OnInvoke"]
       83 CALL                             R9 3 1
       84 LOADK                            R12 K18 ["SetVisibility"]
       85 DUPCLOSURE                       R13 K19 [PROTO_15]
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R10 R0 K6 ["OnInvoke"]
       89 CALL                             R10 3 1
       90 LOADK                            R13 K20 ["SyncEditAnnotation"]
       91 DUPCLOSURE                       R14 K21 [PROTO_16]
       92 CAPTURE                          UPVAL U0
       93 NAMECALL                         R11 R0 K6 ["OnInvoke"]
       95 CALL                             R11 3 1
       96 LOADK                            R14 K22 ["RetryLoadAnnotations"]
       97 DUPCLOSURE                       R15 K23 [PROTO_17]
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U4
      100 NAMECALL                         R12 R0 K6 ["OnInvoke"]
      102 CALL                             R12 3 1
      103 GETTABLEKS                       R13 R0 K24 ["Unloading"]
      105 NEWCLOSURE                       R15 P12
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R12
      118 NAMECALL                         R13 R13 K25 ["Once"]
      120 CALL                             R13 2 0
      121 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Enums"]
       13 GETTABLEKS                       R2 R3 K8 ["AnnotationEditingMode"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["zoomToAnnotation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["selectAnnotation"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K7 ["Enums"]
       47 GETTABLEKS                       R6 R7 K13 ["AnnotationRequestStatus"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K15 [game]
       52 LOADK                            R8 K16 ["AnnotationsService"]
       53 NAMECALL                         R6 R6 K17 ["GetService"]
       55 CALL                             R6 2 1
       56 DUPTABLE                         R7 K20 [{"registerStandaloneCallbacks", "registerEditCallbacks"}]
       57 DUPCLOSURE                       R8 K21 [PROTO_5]
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R8 R7 K18 ["registerStandaloneCallbacks"]
       61 DUPCLOSURE                       R8 K22 [PROTO_19]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R8 R7 K19 ["registerEditCallbacks"]
       69 RETURN                           R7 1
