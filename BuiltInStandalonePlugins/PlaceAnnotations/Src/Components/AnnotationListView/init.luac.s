PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["CreationTimeUnix"]
        2 GETTABLEKS                       R4 R1 K0 ["CreationTimeUnix"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["List"]
        3 GETTABLEKS                       R1 R1 K1 ["sort"]
        5 MOVE                             R2 R0
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnnotationsLoadingStatus"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ResolvedLoadingStatus"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["AnnotationsLoadingStatus"]
        3 NAMECALL                         R1 R1 K1 ["GetItem"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["ResolvedLoadingStatus"]
        3 NAMECALL                         R1 R1 K1 ["GetItem"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["List"]
       11 GETTABLEKS                       R4 R4 K3 ["sort"]
       13 MOVE                             R5 R0
       14 DUPCLOSURE                       R6 K4 [PROTO_0]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K5 ["X"]
       19 GETUPVAL                         R6 4
       20 NAMECALL                         R2 R1 K6 ["Init"]
       22 CALL                             R2 4 0
       23 GETUPVAL                         R2 5
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 6
       27 MOVE                             R3 R0
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 7
       30 GETUPVAL                         R4 8
       31 GETUPVAL                         R5 9
       32 GETUPVAL                         R7 10
       33 GETTABLEKS                       R7 R7 K7 ["PlaceIdKey"]
       35 NAMECALL                         R5 R5 K8 ["GetItem"]
       37 CALL                             R5 2 -1
       38 NAMECALL                         R2 R2 K9 ["GetPlacePreferenceAsync"]
       40 CALL                             R2 -1 1
       41 GETUPVAL                         R3 11
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnnotationsLoadingStatus"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R0 R0 K1 ["OnSetItem"]
        7 CALL                             R0 3 1
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K2 ["ResolvedLoadingStatus"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K1 ["OnSetItem"]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K3 ["PlaceIdKey"]
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          UPVAL U12
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U13
       33 NAMECALL                         R2 R2 K1 ["OnSetItem"]
       35 CALL                             R2 3 1
       36 GETUPVAL                         R3 11
       37 GETUPVAL                         R5 12
       38 GETUPVAL                         R6 14
       39 NAMECALL                         R3 R3 K4 ["GetPlacePreferenceAsync"]
       41 CALL                             R3 3 1
       42 GETUPVAL                         R4 13
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 NEWCLOSURE                       R4 P3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["AddItem"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K1 ["GetChildren"]
        9 CALL                             R2 1 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Contents"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["ReplyCount"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R0
        8 GETTABLEKS                       R5 R1 K1 ["ReplyCount"]
       10 NAMECALL                         R2 R2 K2 ["UpdateItem"]
       12 CALL                             R2 3 0
       13 GETUPVAL                         R2 1
       14 LOADNIL                          R3
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RemoveItem"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K1 ["GetChildren"]
        9 CALL                             R2 1 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ChildAdded"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 3
       11 LOADK                            R3 K2 ["SyncStandaloneAnnotation"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R1 R1 K3 ["OnInvoke"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["ChildRemoved"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R2 R2 K1 ["Connect"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R3 P3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Success"]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 NAMECALL                         R0 R0 K1 ["GetChildren"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R3 5
       16 GETTABLEKS                       R3 R3 K2 ["List"]
       18 GETTABLEKS                       R3 R3 K3 ["sort"]
       20 MOVE                             R4 R0
       21 DUPCLOSURE                       R5 K4 [PROTO_0]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R4 R4 K5 ["X"]
       26 GETUPVAL                         R5 7
       27 NAMECALL                         R1 R1 K6 ["Init"]
       29 CALL                             R1 4 0
       30 GETUPVAL                         R1 8
       31 LOADNIL                          R2
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["Resolved"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 JUMPIF                           R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K0 ["Resolved"]
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+10]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 3
       16 NAMECALL                         R2 R2 K1 ["GetUserId"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+2]
       22 LOADB                            R1 0
       23 RETURN                           R1 1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["Name"]
        3 GETTABLEKS                       R5 R0 K1 ["ReplyCount"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R2 R2 K2 ["UpdateItem"]
        8 CALL                             R2 4 0
        9 GETUPVAL                         R2 1
       10 LOADNIL                          R3
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["didInit"]
        3 JUMPIF                           R0 ; [+4]
        4 NEWTABLE                         R0 0 0
        6 LOADN                            R1 0
        7 RETURN                           R0 2
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Y"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 NAMECALL                         R0 R0 K2 ["GetVisibleAnnotationsFiltered"]
       20 CALL                             R0 4 2
       21 GETUPVAL                         R2 7
       22 GETTABLEKS                       R2 R2 K3 ["new"]
       24 LOADN                            R3 0
       25 CALL                             R2 1 1
       26 NEWTABLE                         R3 0 0
       28 GETIMPORT                        R4 K5 [ipairs]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 3
       32 FORGPREP_INEXT                   R4
       33 GETTABLEKS                       R9 R8 K6 ["Annotation"]
       35 GETTABLEKS                       R10 R9 K7 ["Name"]
       37 GETUPVAL                         R11 8
       38 GETTABLEKS                       R11 R11 K8 ["createElement"]
       40 GETUPVAL                         R12 9
       41 DUPTABLE                         R13 K12 [{"LayoutOrder", "Position", "Annotation", "OnContentChanged"}]
       42 NAMECALL                         R14 R2 K13 ["getNextOrder"]
       44 CALL                             R14 1 1
       45 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       47 GETIMPORT                        R14 K16 [UDim2.fromOffset]
       49 LOADN                            R15 0
       50 GETTABLEKS                       R16 R8 K17 ["PositionOffset"]
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K10 ["Position"]
       55 SETTABLEKS                       R9 R13 K6 ["Annotation"]
       57 NEWCLOSURE                       R14 P1
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U10
       60 SETTABLEKS                       R14 R13 K11 ["OnContentChanged"]
       62 CALL                             R11 2 1
       63 SETTABLE                         R11 R3 R10
       64 FORGLOOP                         R4 2 [inext] ; [-32]
       66 MOVE                             R4 R3
       67 MOVE                             R5 R1
       68 RETURN                           R4 2

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["createElement"]
        5 LOADK                            R1 K1 ["TextButton"]
        6 NEWTABLE                         R2 4 0
        8 LOADN                            R3 4
        9 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       11 GETUPVAL                         R3 2
       12 LOADK                            R5 K3 ["ShowUnresolved"]
       13 LOADK                            R6 K4 ["Button"]
       14 NAMECALL                         R3 R3 K5 ["getText"]
       16 CALL                             R3 3 1
       17 SETTABLEKS                       R3 R2 K6 ["Text"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K7 ["Event"]
       22 GETTABLEKS                       R3 R3 K8 ["Activated"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U3
       26 SETTABLE                         R4 R2 R3
       27 CALL                             R0 2 1
       28 RETURN                           R0 1
       29 GETUPVAL                         R1 4
       30 JUMPIFNOT                        R1 ; [+27]
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K0 ["createElement"]
       34 LOADK                            R1 K1 ["TextButton"]
       35 NEWTABLE                         R2 4 0
       37 LOADN                            R3 4
       38 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       40 GETUPVAL                         R3 2
       41 LOADK                            R5 K9 ["ShowAllComments"]
       42 LOADK                            R6 K4 ["Button"]
       43 NAMECALL                         R3 R3 K5 ["getText"]
       45 CALL                             R3 3 1
       46 SETTABLEKS                       R3 R2 K6 ["Text"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K7 ["Event"]
       51 GETTABLEKS                       R3 R3 K8 ["Activated"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          UPVAL U5
       55 SETTABLE                         R4 R2 R3
       56 CALL                             R0 2 1
       57 RETURN                           R0 1
       58 GETUPVAL                         R1 6
       59 JUMPIFNOT                        R1 ; [+28]
       60 GETUPVAL                         R0 1
       61 GETTABLEKS                       R0 R0 K0 ["createElement"]
       63 LOADK                            R1 K1 ["TextButton"]
       64 NEWTABLE                         R2 4 0
       66 LOADN                            R3 4
       67 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       69 GETUPVAL                         R3 2
       70 LOADK                            R5 K10 ["ClearAllFilters"]
       71 LOADK                            R6 K4 ["Button"]
       72 NAMECALL                         R3 R3 K5 ["getText"]
       74 CALL                             R3 3 1
       75 SETTABLEKS                       R3 R2 K6 ["Text"]
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R3 R3 K7 ["Event"]
       80 GETTABLEKS                       R3 R3 K8 ["Activated"]
       82 NEWCLOSURE                       R4 P2
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U5
       85 SETTABLE                         R4 R2 R3
       86 CALL                             R0 2 1
       87 RETURN                           R0 1
       88 LOADNIL                          R0
       89 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+12]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 4
       10 NAMECALL                         R1 R1 K0 ["CreateOrUpdatePlacePreferenceAsync"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R2 R2 K1 ["All"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R4 5
       22 GETTABLEKS                       R4 R4 K1 ["All"]
       24 GETUPVAL                         R5 4
       25 NAMECALL                         R1 R1 K0 ["CreateOrUpdatePlacePreferenceAsync"]
       27 CALL                             R1 4 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_25:
        0 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setVisibility"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 2
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setVisibility"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 2
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MentionsAndReplies"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R1 R0 ; [+12]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 5
       13 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       15 CALL                             R1 4 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MentionsAndReplies"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R1 R0 ; [+12]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 5
       13 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       15 CALL                             R1 4 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["None"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R1 R0 ; [+12]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 5
       13 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       15 CALL                             R1 4 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["None"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R1 R0 ; [+12]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 5
       13 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       15 CALL                             R1 4 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
       10 GETTABLEKS                       R2 R2 K1 ["Y"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["retryLoadAnnotations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["useState"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K3 ["new"]
       19 CALL                             R5 0 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K2 ["useState"]
       24 GETTABLEKS                       R7 R0 K4 ["Size"]
       26 CALL                             R6 1 2
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K2 ["useState"]
       30 LOADN                            R9 0
       31 CALL                             R8 1 2
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K2 ["useState"]
       35 GETUPVAL                         R11 5
       36 NAMECALL                         R11 R11 K5 ["GetChildren"]
       38 CALL                             R11 1 1
       39 CALL                             R10 1 2
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R12 R12 K2 ["useState"]
       43 LOADB                            R13 0
       44 CALL                             R12 1 2
       45 GETUPVAL                         R14 3
       46 GETTABLEKS                       R14 R14 K2 ["useState"]
       48 LOADB                            R15 0
       49 CALL                             R14 1 2
       50 GETUPVAL                         R16 3
       51 GETTABLEKS                       R16 R16 K2 ["useState"]
       53 LOADB                            R17 0
       54 CALL                             R16 1 2
       55 GETUPVAL                         R18 3
       56 GETTABLEKS                       R18 R18 K2 ["useState"]
       58 GETUPVAL                         R19 6
       59 GETTABLEKS                       R19 R19 K6 ["All"]
       61 CALL                             R18 1 2
       62 GETUPVAL                         R20 3
       63 GETTABLEKS                       R20 R20 K7 ["useReducer"]
       65 GETUPVAL                         R21 7
       66 LOADN                            R22 0
       67 CALL                             R20 2 2
       68 GETUPVAL                         R22 8
       69 NAMECALL                         R22 R22 K0 ["use"]
       71 CALL                             R22 1 1
       72 NAMECALL                         R22 R22 K1 ["get"]
       74 CALL                             R22 1 1
       75 GETUPVAL                         R25 9
       76 GETTABLEKS                       R25 R25 K8 ["PlaceIdKey"]
       78 NAMECALL                         R23 R1 K9 ["GetItem"]
       80 CALL                             R23 2 1
       81 GETUPVAL                         R24 10
       82 NAMECALL                         R24 R24 K10 ["GetUserId"]
       84 CALL                             R24 1 1
       85 GETUPVAL                         R25 11
       86 NAMECALL                         R25 R25 K0 ["use"]
       88 CALL                             R25 1 1
       89 GETUPVAL                         R26 3
       90 GETTABLEKS                       R26 R26 K2 ["useState"]
       92 NEWCLOSURE                       R27 P0
       93 CAPTURE                          VAL R1
       94 CALL                             R26 1 2
       95 GETUPVAL                         R28 3
       96 GETTABLEKS                       R28 R28 K2 ["useState"]
       98 NEWCLOSURE                       R29 P1
       99 CAPTURE                          VAL R1
      100 CALL                             R28 1 2
      101 OR                               R30 R12 R14
      102 MOVE                             R31 R12
      103 JUMPIFNOT                        R31 ; [+1]
      104 NOT                              R31 R14
      105 MOVE                             R32 R14
      106 JUMPIFNOT                        R32 ; [+1]
      107 NOT                              R32 R12
      108 AND                              R33 R12 R14
      109 GETUPVAL                         R34 3
      110 GETTABLEKS                       R34 R34 K11 ["useEffect"]
      112 NEWCLOSURE                       R35 P2
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R27
      115 CAPTURE                          VAL R29
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          UPVAL U5
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          UPVAL U12
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R25
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R22
      125 CAPTURE                          VAL R24
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R23
      128 NEWTABLE                         R36 0 0
      130 CALL                             R34 2 0
      131 GETUPVAL                         R34 3
      132 GETTABLEKS                       R34 R34 K11 ["useEffect"]
      134 NEWCLOSURE                       R35 P3
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R21
      140 NEWTABLE                         R36 0 1
      142 MOVE                             R37 R4
      143 SETLIST                          R36 R37 1 [1]
      145 CALL                             R34 2 0
      146 GETUPVAL                         R34 3
      147 GETTABLEKS                       R34 R34 K11 ["useEffect"]
      149 NEWCLOSURE                       R35 P4
      150 CAPTURE                          VAL R26
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R4
      155 CAPTURE                          UPVAL U12
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R21
      159 NEWTABLE                         R36 0 3
      161 MOVE                             R37 R6
      162 MOVE                             R38 R4
      163 MOVE                             R39 R26
      164 SETLIST                          R36 R37 3 [1]
      166 CALL                             R34 2 0
      167 GETUPVAL                         R34 3
      168 GETTABLEKS                       R34 R34 K12 ["useMemo"]
      170 NEWCLOSURE                       R35 P5
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R14
      176 CAPTURE                          UPVAL U14
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          UPVAL U15
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          UPVAL U16
      181 CAPTURE                          VAL R21
      182 NEWTABLE                         R36 0 7
      184 MOVE                             R37 R20
      185 MOVE                             R38 R4
      186 MOVE                             R39 R6
      187 MOVE                             R40 R8
      188 MOVE                             R41 R10
      189 MOVE                             R42 R12
      190 MOVE                             R43 R14
      191 SETLIST                          R36 R37 7 [1]
      193 CALL                             R34 2 2
      194 GETUPVAL                         R36 3
      195 GETTABLEKS                       R36 R36 K12 ["useMemo"]
      197 NEWCLOSURE                       R37 P6
      198 CAPTURE                          VAL R31
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R32
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R33
      205 NEWTABLE                         R38 0 3
      207 MOVE                             R39 R31
      208 MOVE                             R40 R32
      209 MOVE                             R41 R33
      210 SETLIST                          R38 R39 3 [1]
      212 CALL                             R36 2 1
      213 NEWCLOSURE                       R37 P7
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R23
      219 CAPTURE                          UPVAL U6
      220 JUMPIFEQKN                       R35 K13 [0] ; [+2]
      222 LOADB                            R38 0 +1
      223 LOADB                            R38 1
      224 GETUPVAL                         R39 3
      225 GETTABLEKS                       R39 R39 K14 ["createElement"]
      227 LOADK                            R40 K15 ["Frame"]
      228 NEWTABLE                         R41 4 0
      230 GETTABLEKS                       R42 R3 K16 ["Color"]
      232 GETTABLEKS                       R42 R42 K17 ["Surface"]
      234 GETTABLEKS                       R42 R42 K18 ["Surface_100"]
      236 GETTABLEKS                       R42 R42 K19 ["Color3"]
      238 SETTABLEKS                       R42 R41 K20 ["BackgroundColor3"]
      240 GETUPVAL                         R42 3
      241 GETTABLEKS                       R42 R42 K21 ["Change"]
      243 GETTABLEKS                       R42 R42 K22 ["AbsoluteSize"]
      245 NEWCLOSURE                       R43 P8
      246 CAPTURE                          VAL R7
      247 SETTABLE                         R43 R41 R42
      248 GETUPVAL                         R42 3
      249 GETTABLEKS                       R42 R42 K23 ["Tag"]
      251 LOADK                            R43 K24 ["Component-AnnotationListView X-Fill X-Column X-Center"]
      252 SETTABLE                         R43 R41 R42
      253 DUPTABLE                         R42 K30 [{"Header", "Divider", "AnnotationList", "EmptyState", "ErrorWrapper"}]
      254 LENGTH                           R44 R10
      255 LOADN                            R45 0
      256 JUMPIFNOTLT                      R45 R44 ; [+596]
      258 GETUPVAL                         R43 3
      259 GETTABLEKS                       R43 R43 K14 ["createElement"]
      261 LOADK                            R44 K15 ["Frame"]
      262 DUPTABLE                         R45 K32 [{"LayoutOrder"}]
      263 LOADN                            R46 0
      264 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      266 DUPTABLE                         R46 K34 [{"ButtonGroup"}]
      267 GETUPVAL                         R47 3
      268 GETTABLEKS                       R47 R47 K14 ["createElement"]
      270 LOADK                            R48 K15 ["Frame"]
      271 DUPTABLE                         R49 K32 [{"LayoutOrder"}]
      272 LOADN                            R50 0
      273 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      275 DUPTABLE                         R50 K37 [{"AddButton", "SettingsWrapper"}]
      276 GETUPVAL                         R51 3
      277 GETTABLEKS                       R51 R51 K14 ["createElement"]
      279 LOADK                            R52 K38 ["ImageButton"]
      280 NEWTABLE                         R53 1 0
      282 GETUPVAL                         R54 3
      283 GETTABLEKS                       R54 R54 K39 ["Event"]
      285 GETTABLEKS                       R54 R54 K40 ["Activated"]
      287 NEWCLOSURE                       R55 P9
      288 CAPTURE                          UPVAL U17
      289 CAPTURE                          VAL R1
      290 SETTABLE                         R55 R53 R54
      291 DUPTABLE                         R54 K42 [{"AddIcon"}]
      292 GETUPVAL                         R55 3
      293 GETTABLEKS                       R55 R55 K14 ["createElement"]
      295 LOADK                            R56 K43 ["ImageLabel"]
      296 NEWTABLE                         R57 1 0
      298 GETUPVAL                         R58 3
      299 GETTABLEKS                       R58 R58 K23 ["Tag"]
      301 LOADK                            R59 K44 ["AddAnnotationIcon X-Transparent"]
      302 SETTABLE                         R59 R57 R58
      303 CALL                             R55 2 1
      304 SETTABLEKS                       R55 R54 K41 ["AddIcon"]
      306 CALL                             R51 3 1
      307 SETTABLEKS                       R51 R50 K35 ["AddButton"]
      309 GETUPVAL                         R51 3
      310 GETTABLEKS                       R51 R51 K14 ["createElement"]
      312 LOADK                            R52 K15 ["Frame"]
      313 NEWTABLE                         R53 0 0
      315 DUPTABLE                         R54 K46 [{"Settings"}]
      316 GETUPVAL                         R55 3
      317 GETTABLEKS                       R55 R55 K14 ["createElement"]
      319 GETUPVAL                         R56 18
      320 NEWTABLE                         R57 4 0
      322 GETIMPORT                        R58 K49 [UDim2.fromOffset]
      324 LOADN                            R59 4
      325 LOADN                            R60 40
      326 CALL                             R58 2 1
      327 SETTABLEKS                       R58 R57 K4 ["Size"]
      329 DUPTABLE                         R58 K59 [{"ListViewLabel", "ShowResolved", "ShowTagged", "DisplaySettingsLabel", "ShowAnnotations", "NotificationsLabel", "OnlyMentions", "UnsubscribeFromAll", "PaddingLabel"}]
      330 GETUPVAL                         R59 3
      331 GETTABLEKS                       R59 R59 K14 ["createElement"]
      333 GETUPVAL                         R60 19
      334 GETTABLEKS                       R60 R60 K60 ["View"]
      336 DUPTABLE                         R61 K64 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      337 LOADK                            R62 K65 ["size-full-800 row"]
      338 SETTABLEKS                       R62 R61 K61 ["tag"]
      340 LOADN                            R62 0
      341 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      343 DUPCLOSURE                       R62 K66 [PROTO_25]
      344 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      346 DUPTABLE                         R62 K68 [{"affordance"}]
      347 GETUPVAL                         R63 19
      348 GETTABLEKS                       R63 R63 K69 ["Enums"]
      350 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      352 GETTABLEKS                       R63 R63 K71 ["None"]
      354 SETTABLEKS                       R63 R62 K67 ["affordance"]
      356 SETTABLEKS                       R62 R61 K63 ["stateLayer"]
      358 DUPTABLE                         R62 K73 [{"Text"}]
      359 GETUPVAL                         R63 3
      360 GETTABLEKS                       R63 R63 K14 ["createElement"]
      362 LOADK                            R64 K74 ["TextLabel"]
      363 NEWTABLE                         R65 2 0
      365 LOADK                            R68 K75 ["Dropdown"]
      366 LOADK                            R69 K76 ["ListView"]
      367 NAMECALL                         R66 R2 K77 ["getText"]
      369 CALL                             R66 3 1
      370 SETTABLEKS                       R66 R65 K72 ["Text"]
      372 GETUPVAL                         R66 3
      373 GETTABLEKS                       R66 R66 K23 ["Tag"]
      375 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      376 SETTABLE                         R67 R65 R66
      377 CALL                             R63 2 1
      378 SETTABLEKS                       R63 R62 K72 ["Text"]
      380 CALL                             R59 3 1
      381 SETTABLEKS                       R59 R58 K50 ["ListViewLabel"]
      383 GETUPVAL                         R59 3
      384 GETTABLEKS                       R59 R59 K14 ["createElement"]
      386 GETUPVAL                         R60 19
      387 GETTABLEKS                       R60 R60 K60 ["View"]
      389 DUPTABLE                         R61 K79 [{"tag", "onActivated", "LayoutOrder"}]
      390 LOADK                            R62 K80 ["padding-top-xsmall padding-left-large padding-right-xlarge size-full-700"]
      391 SETTABLEKS                       R62 R61 K61 ["tag"]
      393 NEWCLOSURE                       R62 P11
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R12
      396 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      398 LOADN                            R62 1
      399 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      401 DUPTABLE                         R62 K82 [{"Checkbox"}]
      402 GETUPVAL                         R63 3
      403 GETTABLEKS                       R63 R63 K14 ["createElement"]
      405 GETUPVAL                         R64 19
      406 GETTABLEKS                       R64 R64 K81 ["Checkbox"]
      408 DUPTABLE                         R65 K87 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      409 LOADK                            R68 K75 ["Dropdown"]
      410 LOADK                            R69 K51 ["ShowResolved"]
      411 NAMECALL                         R66 R2 K77 ["getText"]
      413 CALL                             R66 3 1
      414 SETTABLEKS                       R66 R65 K83 ["label"]
      416 LOADN                            R66 1
      417 SETTABLEKS                       R66 R65 K84 ["BackgroundTransparency"]
      419 SETTABLEKS                       R12 R65 K85 ["isChecked"]
      421 GETUPVAL                         R66 19
      422 GETTABLEKS                       R66 R66 K69 ["Enums"]
      424 GETTABLEKS                       R66 R66 K88 ["InputSize"]
      426 GETTABLEKS                       R66 R66 K89 ["XSmall"]
      428 SETTABLEKS                       R66 R65 K86 ["size"]
      430 NEWCLOSURE                       R66 P12
      431 CAPTURE                          VAL R13
      432 CAPTURE                          VAL R12
      433 SETTABLEKS                       R66 R65 K62 ["onActivated"]
      435 CALL                             R63 2 1
      436 SETTABLEKS                       R63 R62 K81 ["Checkbox"]
      438 CALL                             R59 3 1
      439 SETTABLEKS                       R59 R58 K51 ["ShowResolved"]
      441 GETUPVAL                         R59 3
      442 GETTABLEKS                       R59 R59 K14 ["createElement"]
      444 GETUPVAL                         R60 19
      445 GETTABLEKS                       R60 R60 K60 ["View"]
      447 DUPTABLE                         R61 K79 [{"tag", "onActivated", "LayoutOrder"}]
      448 LOADK                            R62 K90 ["padding-top-xsmall padding-left-large padding-right-xxlarge size-full-700"]
      449 SETTABLEKS                       R62 R61 K61 ["tag"]
      451 NEWCLOSURE                       R62 P13
      452 CAPTURE                          VAL R15
      453 CAPTURE                          VAL R14
      454 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      456 LOADN                            R62 2
      457 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      459 DUPTABLE                         R62 K82 [{"Checkbox"}]
      460 GETUPVAL                         R63 3
      461 GETTABLEKS                       R63 R63 K14 ["createElement"]
      463 GETUPVAL                         R64 19
      464 GETTABLEKS                       R64 R64 K81 ["Checkbox"]
      466 DUPTABLE                         R65 K87 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      467 LOADK                            R68 K75 ["Dropdown"]
      468 LOADK                            R69 K52 ["ShowTagged"]
      469 NAMECALL                         R66 R2 K77 ["getText"]
      471 CALL                             R66 3 1
      472 SETTABLEKS                       R66 R65 K83 ["label"]
      474 LOADN                            R66 1
      475 SETTABLEKS                       R66 R65 K84 ["BackgroundTransparency"]
      477 SETTABLEKS                       R14 R65 K85 ["isChecked"]
      479 GETUPVAL                         R66 19
      480 GETTABLEKS                       R66 R66 K69 ["Enums"]
      482 GETTABLEKS                       R66 R66 K88 ["InputSize"]
      484 GETTABLEKS                       R66 R66 K89 ["XSmall"]
      486 SETTABLEKS                       R66 R65 K86 ["size"]
      488 NEWCLOSURE                       R66 P14
      489 CAPTURE                          VAL R15
      490 CAPTURE                          VAL R14
      491 SETTABLEKS                       R66 R65 K62 ["onActivated"]
      493 CALL                             R63 2 1
      494 SETTABLEKS                       R63 R62 K81 ["Checkbox"]
      496 CALL                             R59 3 1
      497 SETTABLEKS                       R59 R58 K52 ["ShowTagged"]
      499 GETUPVAL                         R59 3
      500 GETTABLEKS                       R59 R59 K14 ["createElement"]
      502 GETUPVAL                         R60 19
      503 GETTABLEKS                       R60 R60 K60 ["View"]
      505 DUPTABLE                         R61 K64 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      506 LOADK                            R62 K65 ["size-full-800 row"]
      507 SETTABLEKS                       R62 R61 K61 ["tag"]
      509 LOADN                            R62 3
      510 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      512 DUPCLOSURE                       R62 K91 [PROTO_30]
      513 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      515 DUPTABLE                         R62 K68 [{"affordance"}]
      516 GETUPVAL                         R63 19
      517 GETTABLEKS                       R63 R63 K69 ["Enums"]
      519 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      521 GETTABLEKS                       R63 R63 K71 ["None"]
      523 SETTABLEKS                       R63 R62 K67 ["affordance"]
      525 SETTABLEKS                       R62 R61 K63 ["stateLayer"]
      527 DUPTABLE                         R62 K73 [{"Text"}]
      528 GETUPVAL                         R63 3
      529 GETTABLEKS                       R63 R63 K14 ["createElement"]
      531 LOADK                            R64 K74 ["TextLabel"]
      532 NEWTABLE                         R65 2 0
      534 LOADK                            R68 K75 ["Dropdown"]
      535 LOADK                            R69 K92 ["DisplaySettings"]
      536 NAMECALL                         R66 R2 K77 ["getText"]
      538 CALL                             R66 3 1
      539 SETTABLEKS                       R66 R65 K72 ["Text"]
      541 GETUPVAL                         R66 3
      542 GETTABLEKS                       R66 R66 K23 ["Tag"]
      544 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      545 SETTABLE                         R67 R65 R66
      546 CALL                             R63 2 1
      547 SETTABLEKS                       R63 R62 K72 ["Text"]
      549 CALL                             R59 3 1
      550 SETTABLEKS                       R59 R58 K53 ["DisplaySettingsLabel"]
      552 GETUPVAL                         R59 3
      553 GETTABLEKS                       R59 R59 K14 ["createElement"]
      555 GETUPVAL                         R60 19
      556 GETTABLEKS                       R60 R60 K60 ["View"]
      558 DUPTABLE                         R61 K79 [{"tag", "onActivated", "LayoutOrder"}]
      559 LOADK                            R62 K93 ["padding-top-xsmall padding-left-large padding-right-xxlarge padding-bottom-small size-full-700"]
      560 SETTABLEKS                       R62 R61 K61 ["tag"]
      562 NEWCLOSURE                       R62 P16
      563 CAPTURE                          UPVAL U20
      564 CAPTURE                          VAL R1
      565 CAPTURE                          VAL R16
      566 CAPTURE                          VAL R17
      567 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      569 LOADN                            R62 4
      570 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      572 DUPTABLE                         R62 K82 [{"Checkbox"}]
      573 GETUPVAL                         R63 3
      574 GETTABLEKS                       R63 R63 K14 ["createElement"]
      576 GETUPVAL                         R64 19
      577 GETTABLEKS                       R64 R64 K81 ["Checkbox"]
      579 DUPTABLE                         R65 K87 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      580 LOADK                            R68 K75 ["Dropdown"]
      581 LOADK                            R69 K94 ["HideInWorkspace"]
      582 NAMECALL                         R66 R2 K77 ["getText"]
      584 CALL                             R66 3 1
      585 SETTABLEKS                       R66 R65 K83 ["label"]
      587 LOADN                            R66 1
      588 SETTABLEKS                       R66 R65 K84 ["BackgroundTransparency"]
      590 NOT                              R66 R16
      591 SETTABLEKS                       R66 R65 K85 ["isChecked"]
      593 GETUPVAL                         R66 19
      594 GETTABLEKS                       R66 R66 K69 ["Enums"]
      596 GETTABLEKS                       R66 R66 K88 ["InputSize"]
      598 GETTABLEKS                       R66 R66 K89 ["XSmall"]
      600 SETTABLEKS                       R66 R65 K86 ["size"]
      602 NEWCLOSURE                       R66 P17
      603 CAPTURE                          UPVAL U20
      604 CAPTURE                          VAL R1
      605 CAPTURE                          VAL R16
      606 CAPTURE                          VAL R17
      607 SETTABLEKS                       R66 R65 K62 ["onActivated"]
      609 CALL                             R63 2 1
      610 SETTABLEKS                       R63 R62 K81 ["Checkbox"]
      612 CALL                             R59 3 1
      613 SETTABLEKS                       R59 R58 K54 ["ShowAnnotations"]
      615 GETUPVAL                         R59 3
      616 GETTABLEKS                       R59 R59 K14 ["createElement"]
      618 GETUPVAL                         R60 19
      619 GETTABLEKS                       R60 R60 K60 ["View"]
      621 DUPTABLE                         R61 K64 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      622 LOADK                            R62 K65 ["size-full-800 row"]
      623 SETTABLEKS                       R62 R61 K61 ["tag"]
      625 LOADN                            R62 5
      626 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      628 DUPCLOSURE                       R62 K95 [PROTO_33]
      629 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      631 DUPTABLE                         R62 K68 [{"affordance"}]
      632 GETUPVAL                         R63 19
      633 GETTABLEKS                       R63 R63 K69 ["Enums"]
      635 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      637 GETTABLEKS                       R63 R63 K71 ["None"]
      639 SETTABLEKS                       R63 R62 K67 ["affordance"]
      641 SETTABLEKS                       R62 R61 K63 ["stateLayer"]
      643 DUPTABLE                         R62 K73 [{"Text"}]
      644 GETUPVAL                         R63 3
      645 GETTABLEKS                       R63 R63 K14 ["createElement"]
      647 LOADK                            R64 K74 ["TextLabel"]
      648 NEWTABLE                         R65 2 0
      650 LOADK                            R68 K75 ["Dropdown"]
      651 LOADK                            R69 K96 ["Notifications"]
      652 NAMECALL                         R66 R2 K77 ["getText"]
      654 CALL                             R66 3 1
      655 SETTABLEKS                       R66 R65 K72 ["Text"]
      657 GETUPVAL                         R66 3
      658 GETTABLEKS                       R66 R66 K23 ["Tag"]
      660 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      661 SETTABLE                         R67 R65 R66
      662 CALL                             R63 2 1
      663 SETTABLEKS                       R63 R62 K72 ["Text"]
      665 CALL                             R59 3 1
      666 SETTABLEKS                       R59 R58 K55 ["NotificationsLabel"]
      668 GETUPVAL                         R59 3
      669 GETTABLEKS                       R59 R59 K14 ["createElement"]
      671 GETUPVAL                         R60 19
      672 GETTABLEKS                       R60 R60 K60 ["View"]
      674 DUPTABLE                         R61 K79 [{"tag", "onActivated", "LayoutOrder"}]
      675 LOADK                            R62 K97 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100 padding-top-xsmall"]
      676 SETTABLEKS                       R62 R61 K61 ["tag"]
      678 NEWCLOSURE                       R62 P19
      679 CAPTURE                          UPVAL U6
      680 CAPTURE                          VAL R18
      681 CAPTURE                          VAL R19
      682 CAPTURE                          VAL R22
      683 CAPTURE                          VAL R24
      684 CAPTURE                          VAL R23
      685 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      687 LOADN                            R62 6
      688 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      690 DUPTABLE                         R62 K82 [{"Checkbox"}]
      691 GETUPVAL                         R63 3
      692 GETTABLEKS                       R63 R63 K14 ["createElement"]
      694 GETUPVAL                         R64 19
      695 GETTABLEKS                       R64 R64 K81 ["Checkbox"]
      697 DUPTABLE                         R65 K87 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      698 LOADK                            R68 K75 ["Dropdown"]
      699 LOADK                            R69 K56 ["OnlyMentions"]
      700 NAMECALL                         R66 R2 K77 ["getText"]
      702 CALL                             R66 3 1
      703 SETTABLEKS                       R66 R65 K83 ["label"]
      705 LOADN                            R66 1
      706 SETTABLEKS                       R66 R65 K84 ["BackgroundTransparency"]
      708 GETUPVAL                         R67 6
      709 GETTABLEKS                       R67 R67 K98 ["MentionsAndReplies"]
      711 JUMPIFEQ                         R18 R67 ; [+2]
      713 LOADB                            R66 0 +1
      714 LOADB                            R66 1
      715 SETTABLEKS                       R66 R65 K85 ["isChecked"]
      717 GETUPVAL                         R66 19
      718 GETTABLEKS                       R66 R66 K69 ["Enums"]
      720 GETTABLEKS                       R66 R66 K88 ["InputSize"]
      722 GETTABLEKS                       R66 R66 K89 ["XSmall"]
      724 SETTABLEKS                       R66 R65 K86 ["size"]
      726 NEWCLOSURE                       R66 P20
      727 CAPTURE                          UPVAL U6
      728 CAPTURE                          VAL R18
      729 CAPTURE                          VAL R19
      730 CAPTURE                          VAL R22
      731 CAPTURE                          VAL R24
      732 CAPTURE                          VAL R23
      733 SETTABLEKS                       R66 R65 K62 ["onActivated"]
      735 CALL                             R63 2 1
      736 SETTABLEKS                       R63 R62 K81 ["Checkbox"]
      738 CALL                             R59 3 1
      739 SETTABLEKS                       R59 R58 K56 ["OnlyMentions"]
      741 GETUPVAL                         R59 3
      742 GETTABLEKS                       R59 R59 K14 ["createElement"]
      744 GETUPVAL                         R60 19
      745 GETTABLEKS                       R60 R60 K60 ["View"]
      747 DUPTABLE                         R61 K79 [{"tag", "onActivated", "LayoutOrder"}]
      748 LOADK                            R62 K97 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100 padding-top-xsmall"]
      749 SETTABLEKS                       R62 R61 K61 ["tag"]
      751 NEWCLOSURE                       R62 P21
      752 CAPTURE                          UPVAL U6
      753 CAPTURE                          VAL R18
      754 CAPTURE                          VAL R19
      755 CAPTURE                          VAL R22
      756 CAPTURE                          VAL R24
      757 CAPTURE                          VAL R23
      758 SETTABLEKS                       R62 R61 K62 ["onActivated"]
      760 LOADN                            R62 7
      761 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      763 DUPTABLE                         R62 K82 [{"Checkbox"}]
      764 GETUPVAL                         R63 3
      765 GETTABLEKS                       R63 R63 K14 ["createElement"]
      767 GETUPVAL                         R64 19
      768 GETTABLEKS                       R64 R64 K81 ["Checkbox"]
      770 DUPTABLE                         R65 K87 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      771 LOADK                            R68 K75 ["Dropdown"]
      772 LOADK                            R69 K57 ["UnsubscribeFromAll"]
      773 NAMECALL                         R66 R2 K77 ["getText"]
      775 CALL                             R66 3 1
      776 SETTABLEKS                       R66 R65 K83 ["label"]
      778 LOADN                            R66 1
      779 SETTABLEKS                       R66 R65 K84 ["BackgroundTransparency"]
      781 GETUPVAL                         R67 6
      782 GETTABLEKS                       R67 R67 K71 ["None"]
      784 JUMPIFEQ                         R18 R67 ; [+2]
      786 LOADB                            R66 0 +1
      787 LOADB                            R66 1
      788 SETTABLEKS                       R66 R65 K85 ["isChecked"]
      790 GETUPVAL                         R66 19
      791 GETTABLEKS                       R66 R66 K69 ["Enums"]
      793 GETTABLEKS                       R66 R66 K88 ["InputSize"]
      795 GETTABLEKS                       R66 R66 K89 ["XSmall"]
      797 SETTABLEKS                       R66 R65 K86 ["size"]
      799 NEWCLOSURE                       R66 P22
      800 CAPTURE                          UPVAL U6
      801 CAPTURE                          VAL R18
      802 CAPTURE                          VAL R19
      803 CAPTURE                          VAL R22
      804 CAPTURE                          VAL R24
      805 CAPTURE                          VAL R23
      806 SETTABLEKS                       R66 R65 K62 ["onActivated"]
      808 CALL                             R63 2 1
      809 SETTABLEKS                       R63 R62 K81 ["Checkbox"]
      811 CALL                             R59 3 1
      812 SETTABLEKS                       R59 R58 K57 ["UnsubscribeFromAll"]
      814 GETUPVAL                         R59 3
      815 GETTABLEKS                       R59 R59 K14 ["createElement"]
      817 GETUPVAL                         R60 19
      818 GETTABLEKS                       R60 R60 K60 ["View"]
      820 DUPTABLE                         R61 K99 [{"tag", "LayoutOrder"}]
      821 LOADK                            R62 K100 ["size-3000-100"]
      822 SETTABLEKS                       R62 R61 K61 ["tag"]
      824 LOADN                            R62 8
      825 SETTABLEKS                       R62 R61 K31 ["LayoutOrder"]
      827 CALL                             R59 2 1
      828 SETTABLEKS                       R59 R58 K58 ["PaddingLabel"]
      830 SETTABLEKS                       R58 R57 K101 ["DropdownItems"]
      832 LOADK                            R58 K102 ["SettingsIcon"]
      833 SETTABLEKS                       R58 R57 K103 ["ImageTag"]
      835 GETUPVAL                         R58 3
      836 GETTABLEKS                       R58 R58 K23 ["Tag"]
      838 LOADK                            R59 K75 ["Dropdown"]
      839 SETTABLE                         R59 R57 R58
      840 NEWTABLE                         R58 0 0
      842 CALL                             R55 3 1
      843 SETTABLEKS                       R55 R54 K45 ["Settings"]
      845 CALL                             R51 3 1
      846 SETTABLEKS                       R51 R50 K36 ["SettingsWrapper"]
      848 CALL                             R47 3 1
      849 SETTABLEKS                       R47 R46 K33 ["ButtonGroup"]
      851 CALL                             R43 3 1
      852 JUMP                             ; [+1]
      853 LOADNIL                          R43
      854 SETTABLEKS                       R43 R42 K25 ["Header"]
      856 GETUPVAL                         R43 3
      857 GETTABLEKS                       R43 R43 K14 ["createElement"]
      859 LOADK                            R44 K15 ["Frame"]
      860 NEWTABLE                         R45 2 0
      862 LOADN                            R46 1
      863 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      865 GETUPVAL                         R46 3
      866 GETTABLEKS                       R46 R46 K23 ["Tag"]
      868 LOADK                            R47 K104 ["Component-Divider"]
      869 SETTABLE                         R47 R45 R46
      870 CALL                             R43 2 1
      871 SETTABLEKS                       R43 R42 K26 ["Divider"]
      873 JUMPIF                           R38 ; [+66]
      874 GETUPVAL                         R43 3
      875 GETTABLEKS                       R43 R43 K14 ["createElement"]
      877 LOADK                            R44 K15 ["Frame"]
      878 DUPTABLE                         R45 K32 [{"LayoutOrder"}]
      879 LOADN                            R46 2
      880 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      882 DUPTABLE                         R46 K106 [{"AnnotationScrollingFrame"}]
      883 GETUPVAL                         R47 3
      884 GETTABLEKS                       R47 R47 K14 ["createElement"]
      886 LOADK                            R48 K107 ["ScrollingFrame"]
      887 NEWTABLE                         R49 16 0
      889 GETIMPORT                        R50 K108 [UDim2.new]
      891 LOADN                            R51 1
      892 LOADN                            R52 240
      893 LOADN                            R53 0
      894 MOVE                             R54 R35
      895 CALL                             R50 4 1
      896 SETTABLEKS                       R50 R49 K109 ["CanvasSize"]
      898 GETUPVAL                         R50 3
      899 GETTABLEKS                       R50 R50 K21 ["Change"]
      901 GETTABLEKS                       R50 R50 K110 ["CanvasPosition"]
      903 NEWCLOSURE                       R51 P23
      904 CAPTURE                          VAL R8
      905 CAPTURE                          VAL R9
      906 SETTABLE                         R51 R49 R50
      907 LOADN                            R50 0
      908 SETTABLEKS                       R50 R49 K111 ["BorderSizePixel"]
      910 GETIMPORT                        R50 K115 [Enum.ScrollingDirection.Y]
      912 SETTABLEKS                       R50 R49 K113 ["ScrollingDirection"]
      914 GETIMPORT                        R50 K118 [Enum.ScrollBarInset.Always]
      916 SETTABLEKS                       R50 R49 K119 ["VerticalScrollBarInset"]
      918 LOADB                            R50 0
      919 SETTABLEKS                       R50 R49 K120 ["SmoothScroll"]
      921 LOADK                            R50 K121 [0.5]
      922 SETTABLEKS                       R50 R49 K122 ["ScrollRate"]
      924 GETIMPORT                        R50 K124 [UDim2.fromScale]
      926 LOADN                            R51 1
      927 LOADN                            R52 1
      928 CALL                             R50 2 1
      929 SETTABLEKS                       R50 R49 K4 ["Size"]
      931 LOADN                            R50 1
      932 SETTABLEKS                       R50 R49 K84 ["BackgroundTransparency"]
      934 MOVE                             R50 R34
      935 CALL                             R47 3 1
      936 SETTABLEKS                       R47 R46 K105 ["AnnotationScrollingFrame"]
      938 CALL                             R43 3 1
      939 JUMP                             ; [+1]
      940 LOADNIL                          R43
      941 SETTABLEKS                       R43 R42 K27 ["AnnotationList"]
      943 JUMPIFNOT                        R38 ; [+147]
      944 GETUPVAL                         R43 3
      945 GETTABLEKS                       R43 R43 K14 ["createElement"]
      947 LOADK                            R44 K15 ["Frame"]
      948 NEWTABLE                         R45 2 0
      950 LOADN                            R46 3
      951 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      953 GETUPVAL                         R46 3
      954 GETTABLEKS                       R46 R46 K23 ["Tag"]
      956 GETUPVAL                         R47 21
      957 LOADK                            R48 K125 ["X-ColumnM X-Transparent X-Middle X-Center"]
      958 LENGTH                           R50 R10
      959 JUMPIFEQKN                       R50 K13 [0] ; [+3]
      961 LOADK                            R49 K126 ["HeaderOffset"]
      962 JUMP                             ; [+1]
      963 LOADNIL                          R49
      964 CALL                             R47 2 1
      965 SETTABLE                         R47 R45 R46
      966 DUPTABLE                         R46 K131 [{"AnnotationIcon", "NoCommentsYet", "ToAdd", "AddButton", "EmptyStateButton"}]
      967 GETUPVAL                         R47 3
      968 GETTABLEKS                       R47 R47 K14 ["createElement"]
      970 LOADK                            R48 K43 ["ImageLabel"]
      971 NEWTABLE                         R49 2 0
      973 LOADN                            R50 0
      974 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      976 GETUPVAL                         R50 3
      977 GETTABLEKS                       R50 R50 K23 ["Tag"]
      979 LOADK                            R51 K132 ["X-Transparent"]
      980 SETTABLE                         R51 R49 R50
      981 CALL                             R47 2 1
      982 SETTABLEKS                       R47 R46 K127 ["AnnotationIcon"]
      984 GETUPVAL                         R47 3
      985 GETTABLEKS                       R47 R47 K14 ["createElement"]
      987 LOADK                            R48 K74 ["TextLabel"]
      988 NEWTABLE                         R49 4 0
      990 LOADN                            R50 1
      991 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      993 JUMPIFNOT                        R31 ; [+6]
      994 LOADK                            R52 K133 ["Plugin"]
      995 LOADK                            R53 K134 ["NoResolvedAnnotations"]
      996 NAMECALL                         R50 R2 K77 ["getText"]
      998 CALL                             R50 3 1
      999 JUMP                             ; [+19]
     1000 JUMPIFNOT                        R32 ; [+6]
     1001 LOADK                            R52 K133 ["Plugin"]
     1002 LOADK                            R53 K135 ["NoCommentsForUser"]
     1003 NAMECALL                         R50 R2 K77 ["getText"]
     1005 CALL                             R50 3 1
     1006 JUMP                             ; [+12]
     1007 JUMPIFNOT                        R33 ; [+6]
     1008 LOADK                            R52 K133 ["Plugin"]
     1009 LOADK                            R53 K136 ["NoMatching"]
     1010 NAMECALL                         R50 R2 K77 ["getText"]
     1012 CALL                             R50 3 1
     1013 JUMP                             ; [+5]
     1014 LOADK                            R52 K133 ["Plugin"]
     1015 LOADK                            R53 K137 ["NoAnnotations"]
     1016 NAMECALL                         R50 R2 K77 ["getText"]
     1018 CALL                             R50 3 1
     1019 SETTABLEKS                       R50 R49 K72 ["Text"]
     1021 GETUPVAL                         R50 3
     1022 GETTABLEKS                       R50 R50 K23 ["Tag"]
     1024 LOADK                            R51 K132 ["X-Transparent"]
     1025 SETTABLE                         R51 R49 R50
     1026 CALL                             R47 2 1
     1027 SETTABLEKS                       R47 R46 K128 ["NoCommentsYet"]
     1029 JUMPIF                           R30 ; [+23]
     1030 GETUPVAL                         R47 3
     1031 GETTABLEKS                       R47 R47 K14 ["createElement"]
     1033 LOADK                            R48 K74 ["TextLabel"]
     1034 NEWTABLE                         R49 4 0
     1036 LOADN                            R50 2
     1037 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
     1039 LOADK                            R52 K133 ["Plugin"]
     1040 LOADK                            R53 K129 ["ToAdd"]
     1041 NAMECALL                         R50 R2 K77 ["getText"]
     1043 CALL                             R50 3 1
     1044 SETTABLEKS                       R50 R49 K72 ["Text"]
     1046 GETUPVAL                         R50 3
     1047 GETTABLEKS                       R50 R50 K23 ["Tag"]
     1049 LOADK                            R51 K132 ["X-Transparent"]
     1050 SETTABLE                         R51 R49 R50
     1051 CALL                             R47 2 1
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R47
     1054 SETTABLEKS                       R47 R46 K129 ["ToAdd"]
     1056 JUMPIF                           R30 ; [+27]
     1057 GETUPVAL                         R47 3
     1058 GETTABLEKS                       R47 R47 K14 ["createElement"]
     1060 LOADK                            R48 K138 ["TextButton"]
     1061 NEWTABLE                         R49 4 0
     1063 LOADN                            R50 4
     1064 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
     1066 LOADK                            R52 K139 ["AddAnnotation"]
     1067 LOADK                            R53 K140 ["AddComment"]
     1068 NAMECALL                         R50 R2 K77 ["getText"]
     1070 CALL                             R50 3 1
     1071 SETTABLEKS                       R50 R49 K72 ["Text"]
     1073 GETUPVAL                         R50 3
     1074 GETTABLEKS                       R50 R50 K39 ["Event"]
     1076 GETTABLEKS                       R50 R50 K40 ["Activated"]
     1078 NEWCLOSURE                       R51 P24
     1079 CAPTURE                          UPVAL U17
     1080 CAPTURE                          VAL R1
     1081 SETTABLE                         R51 R49 R50
     1082 CALL                             R47 2 1
     1083 JUMP                             ; [+1]
     1084 LOADNIL                          R47
     1085 SETTABLEKS                       R47 R46 K35 ["AddButton"]
     1087 SETTABLEKS                       R36 R46 K130 ["EmptyStateButton"]
     1089 CALL                             R43 3 1
     1090 JUMP                             ; [+1]
     1091 LOADNIL                          R43
     1092 SETTABLEKS                       R43 R42 K28 ["EmptyState"]
     1094 GETUPVAL                         R44 13
     1095 GETTABLEKS                       R44 R44 K141 ["ErrorInternalFailure"]
     1097 JUMPIFNOTEQ                      R26 R44 ; [+2]
     1099 JUMPIFNOT                        R12 ; [+6]
     1100 GETUPVAL                         R44 13
     1101 GETTABLEKS                       R44 R44 K141 ["ErrorInternalFailure"]
     1103 JUMPIFNOTEQ                      R28 R44 ; [+66]
     1105 JUMPIFNOT                        R12 ; [+64]
     1106 GETUPVAL                         R43 3
     1107 GETTABLEKS                       R43 R43 K14 ["createElement"]
     1109 GETUPVAL                         R44 22
     1110 DUPTABLE                         R45 K142 [{"LayoutOrder", "tag"}]
     1111 LOADN                            R46 99
     1112 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
     1114 LOADK                            R46 K143 ["size-full-0 auto-y bg-action-subtle padding-small"]
     1115 SETTABLEKS                       R46 R45 K61 ["tag"]
     1117 DUPTABLE                         R46 K145 [{"ErrorAlert"}]
     1118 GETUPVAL                         R47 3
     1119 GETTABLEKS                       R47 R47 K14 ["createElement"]
     1121 GETUPVAL                         R48 23
     1122 DUPTABLE                         R49 K149 [{"Message", "IsPopup", "ShowClose"}]
     1123 LOADK                            R52 K150 ["Error"]
     1124 LOADK                            R53 K151 ["LoadingFailed"]
     1125 NAMECALL                         R50 R2 K77 ["getText"]
     1127 CALL                             R50 3 1
     1128 SETTABLEKS                       R50 R49 K146 ["Message"]
     1130 LOADB                            R50 1
     1131 SETTABLEKS                       R50 R49 K147 ["IsPopup"]
     1133 LOADB                            R50 0
     1134 SETTABLEKS                       R50 R49 K148 ["ShowClose"]
     1136 DUPTABLE                         R50 K153 [{"TryAgain"}]
     1137 GETUPVAL                         R51 3
     1138 GETTABLEKS                       R51 R51 K14 ["createElement"]
     1140 LOADK                            R52 K138 ["TextButton"]
     1141 NEWTABLE                         R53 4 0
     1143 LOADN                            R54 99
     1144 SETTABLEKS                       R54 R53 K31 ["LayoutOrder"]
     1146 LOADK                            R56 K150 ["Error"]
     1147 LOADK                            R57 K152 ["TryAgain"]
     1148 NAMECALL                         R54 R2 K77 ["getText"]
     1150 CALL                             R54 3 1
     1151 SETTABLEKS                       R54 R53 K72 ["Text"]
     1153 GETUPVAL                         R54 3
     1154 GETTABLEKS                       R54 R54 K39 ["Event"]
     1156 GETTABLEKS                       R54 R54 K40 ["Activated"]
     1158 NEWCLOSURE                       R55 P25
     1159 CAPTURE                          UPVAL U20
     1160 CAPTURE                          VAL R1
     1161 SETTABLE                         R55 R53 R54
     1162 CALL                             R51 2 1
     1163 SETTABLEKS                       R51 R50 K152 ["TryAgain"]
     1165 CALL                             R47 3 1
     1166 SETTABLEKS                       R47 R46 K144 ["ErrorAlert"]
     1168 CALL                             R43 3 1
     1169 JUMP                             ; [+1]
     1170 LOADNIL                          R43
     1171 SETTABLEKS                       R43 R42 K29 ["ErrorWrapper"]
     1173 CALL                             R39 3 -1
     1174 RETURN                           R39 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["CrossDMCommunication"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R4 R4 K13 ["Standalone"]
       39 GETTABLEKS                       R5 R2 K14 ["Styling"]
       41 GETTABLEKS                       R5 R5 K15 ["joinTags"]
       43 GETTABLEKS                       R6 R2 K11 ["Util"]
       45 GETTABLEKS                       R6 R6 K16 ["LayoutOrderIterator"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Src"]
       51 GETTABLEKS                       R8 R8 K11 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["Constants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Packages"]
       60 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K19 ["View"]
       65 GETTABLEKS                       R10 R8 K20 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K21 ["useTokens"]
       69 GETTABLEKS                       R11 R2 K22 ["ContextServices"]
       71 GETTABLEKS                       R12 R11 K23 ["Plugin"]
       73 GETTABLEKS                       R13 R11 K24 ["Localization"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K10 ["Src"]
       79 GETTABLEKS                       R15 R15 K25 ["Contexts"]
       81 GETTABLEKS                       R15 R15 K26 ["UsernameContext"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K10 ["Src"]
       88 GETTABLEKS                       R16 R16 K27 ["Components"]
       90 GETTABLEKS                       R16 R16 K28 ["AnnotationListCard"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R0 K10 ["Src"]
       97 GETTABLEKS                       R17 R17 K27 ["Components"]
       99 GETTABLEKS                       R17 R17 K29 ["DropdownButton"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R0 K10 ["Src"]
      106 GETTABLEKS                       R18 R18 K11 ["Util"]
      108 GETTABLEKS                       R18 R18 K30 ["rerenderReducer"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R19 R0 K10 ["Src"]
      115 GETTABLEKS                       R19 R19 K11 ["Util"]
      117 GETTABLEKS                       R19 R19 K31 ["TaggedUsersUtils"]
      119 CALL                             R18 1 1
      120 GETTABLEKS                       R18 R18 K32 ["IsUserTaggedInThread"]
      122 GETIMPORT                        R19 K5 [require]
      124 GETTABLEKS                       R20 R0 K10 ["Src"]
      126 GETTABLEKS                       R20 R20 K11 ["Util"]
      128 GETTABLEKS                       R20 R20 K33 ["toggleAddAnnotation"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K5 [require]
      133 GETTABLEKS                       R21 R0 K10 ["Src"]
      135 GETTABLEKS                       R21 R21 K27 ["Components"]
      137 GETTABLEKS                       R21 R21 K34 ["ErrorAlert"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K5 [require]
      142 GETTABLEKS                       R22 R0 K10 ["Src"]
      144 GETTABLEKS                       R22 R22 K35 ["Enums"]
      146 GETTABLEKS                       R22 R22 K36 ["AnnotationRequestStatus"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K5 [require]
      151 GETTABLEKS                       R23 R0 K10 ["Src"]
      153 GETTABLEKS                       R23 R23 K11 ["Util"]
      155 GETTABLEKS                       R23 R23 K37 ["AnnotationHeightCache"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K5 [require]
      160 GETTABLEKS                       R24 R0 K10 ["Src"]
      162 GETTABLEKS                       R24 R24 K35 ["Enums"]
      164 GETTABLEKS                       R24 R24 K38 ["AnnotationPlaceContentPreference"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K5 [require]
      169 GETTABLEKS                       R25 R0 K10 ["Src"]
      171 GETTABLEKS                       R25 R25 K39 ["Types"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K5 [require]
      176 GETTABLEKS                       R26 R0 K10 ["Src"]
      178 GETTABLEKS                       R26 R26 K25 ["Contexts"]
      180 GETTABLEKS                       R26 R26 K40 ["AnnotationsServiceContext"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K42 [game]
      185 LOADK                            R28 K43 ["AnnotationsService"]
      186 NAMECALL                         R26 R26 K44 ["GetService"]
      188 CALL                             R26 2 1
      189 GETIMPORT                        R27 K42 [game]
      191 LOADK                            R29 K45 ["StudioService"]
      192 NAMECALL                         R27 R27 K44 ["GetService"]
      194 CALL                             R27 2 1
      195 DUPCLOSURE                       R28 K46 [PROTO_1]
      196 CAPTURE                          VAL R3
      197 DUPCLOSURE                       R29 K47 [PROTO_41]
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R20
      222 RETURN                           R29 1
