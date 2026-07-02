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
      256 JUMPIFNOTLT                      R45 R44 ; [+521]
      258 GETUPVAL                         R43 3
      259 GETTABLEKS                       R43 R43 K14 ["createElement"]
      261 LOADK                            R44 K15 ["Frame"]
      262 DUPTABLE                         R45 K32 [{["LayoutOrder"] = 0}]
      263 DUPTABLE                         R46 K34 [{"ButtonGroup"}]
      264 GETUPVAL                         R47 3
      265 GETTABLEKS                       R47 R47 K14 ["createElement"]
      267 LOADK                            R48 K15 ["Frame"]
      268 DUPTABLE                         R49 K32 [{["LayoutOrder"] = 0}]
      269 DUPTABLE                         R50 K37 [{"AddButton", "SettingsWrapper"}]
      270 GETUPVAL                         R51 3
      271 GETTABLEKS                       R51 R51 K14 ["createElement"]
      273 LOADK                            R52 K38 ["ImageButton"]
      274 NEWTABLE                         R53 1 0
      276 GETUPVAL                         R54 3
      277 GETTABLEKS                       R54 R54 K39 ["Event"]
      279 GETTABLEKS                       R54 R54 K40 ["Activated"]
      281 NEWCLOSURE                       R55 P9
      282 CAPTURE                          UPVAL U17
      283 CAPTURE                          VAL R1
      284 SETTABLE                         R55 R53 R54
      285 DUPTABLE                         R54 K42 [{"AddIcon"}]
      286 GETUPVAL                         R55 3
      287 GETTABLEKS                       R55 R55 K14 ["createElement"]
      289 LOADK                            R56 K43 ["ImageLabel"]
      290 NEWTABLE                         R57 1 0
      292 GETUPVAL                         R58 3
      293 GETTABLEKS                       R58 R58 K23 ["Tag"]
      295 LOADK                            R59 K44 ["AddAnnotationIcon X-Transparent"]
      296 SETTABLE                         R59 R57 R58
      297 CALL                             R55 2 1
      298 SETTABLEKS                       R55 R54 K41 ["AddIcon"]
      300 CALL                             R51 3 1
      301 SETTABLEKS                       R51 R50 K35 ["AddButton"]
      303 GETUPVAL                         R51 3
      304 GETTABLEKS                       R51 R51 K14 ["createElement"]
      306 LOADK                            R52 K15 ["Frame"]
      307 NEWTABLE                         R53 0 0
      309 DUPTABLE                         R54 K46 [{"Settings"}]
      310 GETUPVAL                         R55 3
      311 GETTABLEKS                       R55 R55 K14 ["createElement"]
      313 GETUPVAL                         R56 18
      314 NEWTABLE                         R57 4 0
      316 GETIMPORT                        R58 K49 [UDim2.fromOffset]
      318 LOADN                            R59 260
      319 LOADN                            R60 40
      320 CALL                             R58 2 1
      321 SETTABLEKS                       R58 R57 K4 ["Size"]
      323 DUPTABLE                         R58 K59 [{"ListViewLabel", "ShowResolved", "ShowTagged", "DisplaySettingsLabel", "ShowAnnotations", "NotificationsLabel", "OnlyMentions", "UnsubscribeFromAll", "PaddingLabel"}]
      324 GETUPVAL                         R59 3
      325 GETTABLEKS                       R59 R59 K14 ["createElement"]
      327 GETUPVAL                         R60 19
      328 GETTABLEKS                       R60 R60 K60 ["View"]
      330 DUPTABLE                         R61 K65 [{["tag"] = "row size-full-800", ["LayoutOrder"] = 0, ["onActivated"], ["stateLayer"]}]
      331 DUPCLOSURE                       R62 K66 [PROTO_25]
      332 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      334 DUPTABLE                         R62 K68 [{"affordance"}]
      335 GETUPVAL                         R63 19
      336 GETTABLEKS                       R63 R63 K69 ["Enums"]
      338 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      340 GETTABLEKS                       R63 R63 K71 ["None"]
      342 SETTABLEKS                       R63 R62 K67 ["affordance"]
      344 SETTABLEKS                       R62 R61 K64 ["stateLayer"]
      346 DUPTABLE                         R62 K73 [{"Text"}]
      347 GETUPVAL                         R63 3
      348 GETTABLEKS                       R63 R63 K14 ["createElement"]
      350 LOADK                            R64 K74 ["TextLabel"]
      351 NEWTABLE                         R65 2 0
      353 LOADK                            R68 K75 ["Dropdown"]
      354 LOADK                            R69 K76 ["ListView"]
      355 NAMECALL                         R66 R2 K77 ["getText"]
      357 CALL                             R66 3 1
      358 SETTABLEKS                       R66 R65 K72 ["Text"]
      360 GETUPVAL                         R66 3
      361 GETTABLEKS                       R66 R66 K23 ["Tag"]
      363 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      364 SETTABLE                         R67 R65 R66
      365 CALL                             R63 2 1
      366 SETTABLEKS                       R63 R62 K72 ["Text"]
      368 CALL                             R59 3 1
      369 SETTABLEKS                       R59 R58 K50 ["ListViewLabel"]
      371 GETUPVAL                         R59 3
      372 GETTABLEKS                       R59 R59 K14 ["createElement"]
      374 GETUPVAL                         R60 19
      375 GETTABLEKS                       R60 R60 K60 ["View"]
      377 DUPTABLE                         R61 K81 [{["tag"] = "size-full-700 padding-left-large padding-right-xlarge padding-top-xsmall", ["onActivated"], ["LayoutOrder"] = 1}]
      378 NEWCLOSURE                       R62 P11
      379 CAPTURE                          VAL R13
      380 CAPTURE                          VAL R12
      381 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      383 DUPTABLE                         R62 K83 [{"Checkbox"}]
      384 GETUPVAL                         R63 3
      385 GETTABLEKS                       R63 R63 K14 ["createElement"]
      387 GETUPVAL                         R64 19
      388 GETTABLEKS                       R64 R64 K82 ["Checkbox"]
      390 DUPTABLE                         R65 K88 [{["label"], ["BackgroundTransparency"] = 1, ["isChecked"], ["size"], ["onActivated"]}]
      391 LOADK                            R68 K75 ["Dropdown"]
      392 LOADK                            R69 K51 ["ShowResolved"]
      393 NAMECALL                         R66 R2 K77 ["getText"]
      395 CALL                             R66 3 1
      396 SETTABLEKS                       R66 R65 K84 ["label"]
      398 SETTABLEKS                       R12 R65 K86 ["isChecked"]
      400 GETUPVAL                         R66 19
      401 GETTABLEKS                       R66 R66 K69 ["Enums"]
      403 GETTABLEKS                       R66 R66 K89 ["InputSize"]
      405 GETTABLEKS                       R66 R66 K90 ["XSmall"]
      407 SETTABLEKS                       R66 R65 K87 ["size"]
      409 NEWCLOSURE                       R66 P12
      410 CAPTURE                          VAL R13
      411 CAPTURE                          VAL R12
      412 SETTABLEKS                       R66 R65 K63 ["onActivated"]
      414 CALL                             R63 2 1
      415 SETTABLEKS                       R63 R62 K82 ["Checkbox"]
      417 CALL                             R59 3 1
      418 SETTABLEKS                       R59 R58 K51 ["ShowResolved"]
      420 GETUPVAL                         R59 3
      421 GETTABLEKS                       R59 R59 K14 ["createElement"]
      423 GETUPVAL                         R60 19
      424 GETTABLEKS                       R60 R60 K60 ["View"]
      426 DUPTABLE                         R61 K93 [{["tag"] = "size-full-700 padding-left-large padding-right-xxlarge padding-top-xsmall", ["onActivated"], ["LayoutOrder"] = 2}]
      427 NEWCLOSURE                       R62 P13
      428 CAPTURE                          VAL R15
      429 CAPTURE                          VAL R14
      430 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      432 DUPTABLE                         R62 K83 [{"Checkbox"}]
      433 GETUPVAL                         R63 3
      434 GETTABLEKS                       R63 R63 K14 ["createElement"]
      436 GETUPVAL                         R64 19
      437 GETTABLEKS                       R64 R64 K82 ["Checkbox"]
      439 DUPTABLE                         R65 K88 [{["label"], ["BackgroundTransparency"] = 1, ["isChecked"], ["size"], ["onActivated"]}]
      440 LOADK                            R68 K75 ["Dropdown"]
      441 LOADK                            R69 K52 ["ShowTagged"]
      442 NAMECALL                         R66 R2 K77 ["getText"]
      444 CALL                             R66 3 1
      445 SETTABLEKS                       R66 R65 K84 ["label"]
      447 SETTABLEKS                       R14 R65 K86 ["isChecked"]
      449 GETUPVAL                         R66 19
      450 GETTABLEKS                       R66 R66 K69 ["Enums"]
      452 GETTABLEKS                       R66 R66 K89 ["InputSize"]
      454 GETTABLEKS                       R66 R66 K90 ["XSmall"]
      456 SETTABLEKS                       R66 R65 K87 ["size"]
      458 NEWCLOSURE                       R66 P14
      459 CAPTURE                          VAL R15
      460 CAPTURE                          VAL R14
      461 SETTABLEKS                       R66 R65 K63 ["onActivated"]
      463 CALL                             R63 2 1
      464 SETTABLEKS                       R63 R62 K82 ["Checkbox"]
      466 CALL                             R59 3 1
      467 SETTABLEKS                       R59 R58 K52 ["ShowTagged"]
      469 GETUPVAL                         R59 3
      470 GETTABLEKS                       R59 R59 K14 ["createElement"]
      472 GETUPVAL                         R60 19
      473 GETTABLEKS                       R60 R60 K60 ["View"]
      475 DUPTABLE                         R61 K95 [{["tag"] = "row size-full-800", ["LayoutOrder"] = 3, ["onActivated"], ["stateLayer"]}]
      476 DUPCLOSURE                       R62 K96 [PROTO_30]
      477 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      479 DUPTABLE                         R62 K68 [{"affordance"}]
      480 GETUPVAL                         R63 19
      481 GETTABLEKS                       R63 R63 K69 ["Enums"]
      483 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      485 GETTABLEKS                       R63 R63 K71 ["None"]
      487 SETTABLEKS                       R63 R62 K67 ["affordance"]
      489 SETTABLEKS                       R62 R61 K64 ["stateLayer"]
      491 DUPTABLE                         R62 K73 [{"Text"}]
      492 GETUPVAL                         R63 3
      493 GETTABLEKS                       R63 R63 K14 ["createElement"]
      495 LOADK                            R64 K74 ["TextLabel"]
      496 NEWTABLE                         R65 2 0
      498 LOADK                            R68 K75 ["Dropdown"]
      499 LOADK                            R69 K97 ["DisplaySettings"]
      500 NAMECALL                         R66 R2 K77 ["getText"]
      502 CALL                             R66 3 1
      503 SETTABLEKS                       R66 R65 K72 ["Text"]
      505 GETUPVAL                         R66 3
      506 GETTABLEKS                       R66 R66 K23 ["Tag"]
      508 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      509 SETTABLE                         R67 R65 R66
      510 CALL                             R63 2 1
      511 SETTABLEKS                       R63 R62 K72 ["Text"]
      513 CALL                             R59 3 1
      514 SETTABLEKS                       R59 R58 K53 ["DisplaySettingsLabel"]
      516 GETUPVAL                         R59 3
      517 GETTABLEKS                       R59 R59 K14 ["createElement"]
      519 GETUPVAL                         R60 19
      520 GETTABLEKS                       R60 R60 K60 ["View"]
      522 DUPTABLE                         R61 K100 [{["tag"] = "size-full-700 padding-bottom-small padding-left-large padding-right-xxlarge padding-top-xsmall", ["onActivated"], ["LayoutOrder"] = 4}]
      523 NEWCLOSURE                       R62 P16
      524 CAPTURE                          UPVAL U20
      525 CAPTURE                          VAL R1
      526 CAPTURE                          VAL R16
      527 CAPTURE                          VAL R17
      528 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      530 DUPTABLE                         R62 K83 [{"Checkbox"}]
      531 GETUPVAL                         R63 3
      532 GETTABLEKS                       R63 R63 K14 ["createElement"]
      534 GETUPVAL                         R64 19
      535 GETTABLEKS                       R64 R64 K82 ["Checkbox"]
      537 DUPTABLE                         R65 K88 [{["label"], ["BackgroundTransparency"] = 1, ["isChecked"], ["size"], ["onActivated"]}]
      538 LOADK                            R68 K75 ["Dropdown"]
      539 LOADK                            R69 K101 ["HideInWorkspace"]
      540 NAMECALL                         R66 R2 K77 ["getText"]
      542 CALL                             R66 3 1
      543 SETTABLEKS                       R66 R65 K84 ["label"]
      545 NOT                              R66 R16
      546 SETTABLEKS                       R66 R65 K86 ["isChecked"]
      548 GETUPVAL                         R66 19
      549 GETTABLEKS                       R66 R66 K69 ["Enums"]
      551 GETTABLEKS                       R66 R66 K89 ["InputSize"]
      553 GETTABLEKS                       R66 R66 K90 ["XSmall"]
      555 SETTABLEKS                       R66 R65 K87 ["size"]
      557 NEWCLOSURE                       R66 P17
      558 CAPTURE                          UPVAL U20
      559 CAPTURE                          VAL R1
      560 CAPTURE                          VAL R16
      561 CAPTURE                          VAL R17
      562 SETTABLEKS                       R66 R65 K63 ["onActivated"]
      564 CALL                             R63 2 1
      565 SETTABLEKS                       R63 R62 K82 ["Checkbox"]
      567 CALL                             R59 3 1
      568 SETTABLEKS                       R59 R58 K54 ["ShowAnnotations"]
      570 GETUPVAL                         R59 3
      571 GETTABLEKS                       R59 R59 K14 ["createElement"]
      573 GETUPVAL                         R60 19
      574 GETTABLEKS                       R60 R60 K60 ["View"]
      576 DUPTABLE                         R61 K103 [{["tag"] = "row size-full-800", ["LayoutOrder"] = 5, ["onActivated"], ["stateLayer"]}]
      577 DUPCLOSURE                       R62 K104 [PROTO_33]
      578 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      580 DUPTABLE                         R62 K68 [{"affordance"}]
      581 GETUPVAL                         R63 19
      582 GETTABLEKS                       R63 R63 K69 ["Enums"]
      584 GETTABLEKS                       R63 R63 K70 ["StateLayerAffordance"]
      586 GETTABLEKS                       R63 R63 K71 ["None"]
      588 SETTABLEKS                       R63 R62 K67 ["affordance"]
      590 SETTABLEKS                       R62 R61 K64 ["stateLayer"]
      592 DUPTABLE                         R62 K73 [{"Text"}]
      593 GETUPVAL                         R63 3
      594 GETTABLEKS                       R63 R63 K14 ["createElement"]
      596 LOADK                            R64 K74 ["TextLabel"]
      597 NEWTABLE                         R65 2 0
      599 LOADK                            R68 K75 ["Dropdown"]
      600 LOADK                            R69 K105 ["Notifications"]
      601 NAMECALL                         R66 R2 K77 ["getText"]
      603 CALL                             R66 3 1
      604 SETTABLEKS                       R66 R65 K72 ["Text"]
      606 GETUPVAL                         R66 3
      607 GETTABLEKS                       R66 R66 K23 ["Tag"]
      609 LOADK                            R67 K78 ["Component-DropdownItem SectionTitle X-Transparent"]
      610 SETTABLE                         R67 R65 R66
      611 CALL                             R63 2 1
      612 SETTABLEKS                       R63 R62 K72 ["Text"]
      614 CALL                             R59 3 1
      615 SETTABLEKS                       R59 R58 K55 ["NotificationsLabel"]
      617 GETUPVAL                         R59 3
      618 GETTABLEKS                       R59 R59 K14 ["createElement"]
      620 GETUPVAL                         R60 19
      621 GETTABLEKS                       R60 R60 K60 ["View"]
      623 DUPTABLE                         R61 K108 [{["tag"] = "margin-bottom-xsmall margin-top-xsmall size-full-1100 padding-left-large padding-right-xxlarge padding-top-xsmall", ["onActivated"], ["LayoutOrder"] = 6}]
      624 NEWCLOSURE                       R62 P19
      625 CAPTURE                          UPVAL U6
      626 CAPTURE                          VAL R18
      627 CAPTURE                          VAL R19
      628 CAPTURE                          VAL R22
      629 CAPTURE                          VAL R24
      630 CAPTURE                          VAL R23
      631 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      633 DUPTABLE                         R62 K83 [{"Checkbox"}]
      634 GETUPVAL                         R63 3
      635 GETTABLEKS                       R63 R63 K14 ["createElement"]
      637 GETUPVAL                         R64 19
      638 GETTABLEKS                       R64 R64 K82 ["Checkbox"]
      640 DUPTABLE                         R65 K88 [{["label"], ["BackgroundTransparency"] = 1, ["isChecked"], ["size"], ["onActivated"]}]
      641 LOADK                            R68 K75 ["Dropdown"]
      642 LOADK                            R69 K56 ["OnlyMentions"]
      643 NAMECALL                         R66 R2 K77 ["getText"]
      645 CALL                             R66 3 1
      646 SETTABLEKS                       R66 R65 K84 ["label"]
      648 GETUPVAL                         R67 6
      649 GETTABLEKS                       R67 R67 K109 ["MentionsAndReplies"]
      651 JUMPIFEQ                         R18 R67 ; [+2]
      653 LOADB                            R66 0 +1
      654 LOADB                            R66 1
      655 SETTABLEKS                       R66 R65 K86 ["isChecked"]
      657 GETUPVAL                         R66 19
      658 GETTABLEKS                       R66 R66 K69 ["Enums"]
      660 GETTABLEKS                       R66 R66 K89 ["InputSize"]
      662 GETTABLEKS                       R66 R66 K90 ["XSmall"]
      664 SETTABLEKS                       R66 R65 K87 ["size"]
      666 NEWCLOSURE                       R66 P20
      667 CAPTURE                          UPVAL U6
      668 CAPTURE                          VAL R18
      669 CAPTURE                          VAL R19
      670 CAPTURE                          VAL R22
      671 CAPTURE                          VAL R24
      672 CAPTURE                          VAL R23
      673 SETTABLEKS                       R66 R65 K63 ["onActivated"]
      675 CALL                             R63 2 1
      676 SETTABLEKS                       R63 R62 K82 ["Checkbox"]
      678 CALL                             R59 3 1
      679 SETTABLEKS                       R59 R58 K56 ["OnlyMentions"]
      681 GETUPVAL                         R59 3
      682 GETTABLEKS                       R59 R59 K14 ["createElement"]
      684 GETUPVAL                         R60 19
      685 GETTABLEKS                       R60 R60 K60 ["View"]
      687 DUPTABLE                         R61 K111 [{["tag"] = "margin-bottom-xsmall margin-top-xsmall size-full-1100 padding-left-large padding-right-xxlarge padding-top-xsmall", ["onActivated"], ["LayoutOrder"] = 7}]
      688 NEWCLOSURE                       R62 P21
      689 CAPTURE                          UPVAL U6
      690 CAPTURE                          VAL R18
      691 CAPTURE                          VAL R19
      692 CAPTURE                          VAL R22
      693 CAPTURE                          VAL R24
      694 CAPTURE                          VAL R23
      695 SETTABLEKS                       R62 R61 K63 ["onActivated"]
      697 DUPTABLE                         R62 K83 [{"Checkbox"}]
      698 GETUPVAL                         R63 3
      699 GETTABLEKS                       R63 R63 K14 ["createElement"]
      701 GETUPVAL                         R64 19
      702 GETTABLEKS                       R64 R64 K82 ["Checkbox"]
      704 DUPTABLE                         R65 K88 [{["label"], ["BackgroundTransparency"] = 1, ["isChecked"], ["size"], ["onActivated"]}]
      705 LOADK                            R68 K75 ["Dropdown"]
      706 LOADK                            R69 K57 ["UnsubscribeFromAll"]
      707 NAMECALL                         R66 R2 K77 ["getText"]
      709 CALL                             R66 3 1
      710 SETTABLEKS                       R66 R65 K84 ["label"]
      712 GETUPVAL                         R67 6
      713 GETTABLEKS                       R67 R67 K71 ["None"]
      715 JUMPIFEQ                         R18 R67 ; [+2]
      717 LOADB                            R66 0 +1
      718 LOADB                            R66 1
      719 SETTABLEKS                       R66 R65 K86 ["isChecked"]
      721 GETUPVAL                         R66 19
      722 GETTABLEKS                       R66 R66 K69 ["Enums"]
      724 GETTABLEKS                       R66 R66 K89 ["InputSize"]
      726 GETTABLEKS                       R66 R66 K90 ["XSmall"]
      728 SETTABLEKS                       R66 R65 K87 ["size"]
      730 NEWCLOSURE                       R66 P22
      731 CAPTURE                          UPVAL U6
      732 CAPTURE                          VAL R18
      733 CAPTURE                          VAL R19
      734 CAPTURE                          VAL R22
      735 CAPTURE                          VAL R24
      736 CAPTURE                          VAL R23
      737 SETTABLEKS                       R66 R65 K63 ["onActivated"]
      739 CALL                             R63 2 1
      740 SETTABLEKS                       R63 R62 K82 ["Checkbox"]
      742 CALL                             R59 3 1
      743 SETTABLEKS                       R59 R58 K57 ["UnsubscribeFromAll"]
      745 GETUPVAL                         R59 3
      746 GETTABLEKS                       R59 R59 K14 ["createElement"]
      748 GETUPVAL                         R60 19
      749 GETTABLEKS                       R60 R60 K60 ["View"]
      751 DUPTABLE                         R61 K114 [{["tag"] = "size-3000-100", ["LayoutOrder"] = 8}]
      752 CALL                             R59 2 1
      753 SETTABLEKS                       R59 R58 K58 ["PaddingLabel"]
      755 SETTABLEKS                       R58 R57 K115 ["DropdownItems"]
      757 LOADK                            R58 K116 ["SettingsIcon"]
      758 SETTABLEKS                       R58 R57 K117 ["ImageTag"]
      760 GETUPVAL                         R58 3
      761 GETTABLEKS                       R58 R58 K23 ["Tag"]
      763 LOADK                            R59 K75 ["Dropdown"]
      764 SETTABLE                         R59 R57 R58
      765 NEWTABLE                         R58 0 0
      767 CALL                             R55 3 1
      768 SETTABLEKS                       R55 R54 K45 ["Settings"]
      770 CALL                             R51 3 1
      771 SETTABLEKS                       R51 R50 K36 ["SettingsWrapper"]
      773 CALL                             R47 3 1
      774 SETTABLEKS                       R47 R46 K33 ["ButtonGroup"]
      776 CALL                             R43 3 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R43
      779 SETTABLEKS                       R43 R42 K25 ["Header"]
      781 GETUPVAL                         R43 3
      782 GETTABLEKS                       R43 R43 K14 ["createElement"]
      784 LOADK                            R44 K15 ["Frame"]
      785 NEWTABLE                         R45 2 0
      787 LOADN                            R46 1
      788 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      790 GETUPVAL                         R46 3
      791 GETTABLEKS                       R46 R46 K23 ["Tag"]
      793 LOADK                            R47 K118 ["Component-Divider"]
      794 SETTABLE                         R47 R45 R46
      795 CALL                             R43 2 1
      796 SETTABLEKS                       R43 R42 K26 ["Divider"]
      798 JUMPIF                           R38 ; [+63]
      799 GETUPVAL                         R43 3
      800 GETTABLEKS                       R43 R43 K14 ["createElement"]
      802 LOADK                            R44 K15 ["Frame"]
      803 DUPTABLE                         R45 K119 [{["LayoutOrder"] = 2}]
      804 DUPTABLE                         R46 K121 [{"AnnotationScrollingFrame"}]
      805 GETUPVAL                         R47 3
      806 GETTABLEKS                       R47 R47 K14 ["createElement"]
      808 LOADK                            R48 K122 ["ScrollingFrame"]
      809 NEWTABLE                         R49 16 0
      811 GETIMPORT                        R50 K123 [UDim2.new]
      813 LOADN                            R51 1
      814 LOADN                            R52 -16
      815 LOADN                            R53 0
      816 MOVE                             R54 R35
      817 CALL                             R50 4 1
      818 SETTABLEKS                       R50 R49 K124 ["CanvasSize"]
      820 GETUPVAL                         R50 3
      821 GETTABLEKS                       R50 R50 K21 ["Change"]
      823 GETTABLEKS                       R50 R50 K125 ["CanvasPosition"]
      825 NEWCLOSURE                       R51 P23
      826 CAPTURE                          VAL R8
      827 CAPTURE                          VAL R9
      828 SETTABLE                         R51 R49 R50
      829 LOADN                            R50 0
      830 SETTABLEKS                       R50 R49 K126 ["BorderSizePixel"]
      832 GETIMPORT                        R50 K130 [Enum.ScrollingDirection.Y]
      834 SETTABLEKS                       R50 R49 K128 ["ScrollingDirection"]
      836 GETIMPORT                        R50 K133 [Enum.ScrollBarInset.Always]
      838 SETTABLEKS                       R50 R49 K134 ["VerticalScrollBarInset"]
      840 LOADB                            R50 0
      841 SETTABLEKS                       R50 R49 K135 ["SmoothScroll"]
      843 LOADK                            R50 K136 [0.5]
      844 SETTABLEKS                       R50 R49 K137 ["ScrollRate"]
      846 GETIMPORT                        R50 K139 [UDim2.fromScale]
      848 LOADN                            R51 1
      849 LOADN                            R52 1
      850 CALL                             R50 2 1
      851 SETTABLEKS                       R50 R49 K4 ["Size"]
      853 LOADN                            R50 1
      854 SETTABLEKS                       R50 R49 K85 ["BackgroundTransparency"]
      856 MOVE                             R50 R34
      857 CALL                             R47 3 1
      858 SETTABLEKS                       R47 R46 K120 ["AnnotationScrollingFrame"]
      860 CALL                             R43 3 1
      861 JUMP                             ; [+1]
      862 LOADNIL                          R43
      863 SETTABLEKS                       R43 R42 K27 ["AnnotationList"]
      865 JUMPIFNOT                        R38 ; [+147]
      866 GETUPVAL                         R43 3
      867 GETTABLEKS                       R43 R43 K14 ["createElement"]
      869 LOADK                            R44 K15 ["Frame"]
      870 NEWTABLE                         R45 2 0
      872 LOADN                            R46 3
      873 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      875 GETUPVAL                         R46 3
      876 GETTABLEKS                       R46 R46 K23 ["Tag"]
      878 GETUPVAL                         R47 21
      879 LOADK                            R48 K140 ["X-ColumnM X-Transparent X-Middle X-Center"]
      880 LENGTH                           R50 R10
      881 JUMPIFEQKN                       R50 K13 [0] ; [+3]
      883 LOADK                            R49 K141 ["HeaderOffset"]
      884 JUMP                             ; [+1]
      885 LOADNIL                          R49
      886 CALL                             R47 2 1
      887 SETTABLE                         R47 R45 R46
      888 DUPTABLE                         R46 K146 [{"AnnotationIcon", "NoCommentsYet", "ToAdd", "AddButton", "EmptyStateButton"}]
      889 GETUPVAL                         R47 3
      890 GETTABLEKS                       R47 R47 K14 ["createElement"]
      892 LOADK                            R48 K43 ["ImageLabel"]
      893 NEWTABLE                         R49 2 0
      895 LOADN                            R50 0
      896 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      898 GETUPVAL                         R50 3
      899 GETTABLEKS                       R50 R50 K23 ["Tag"]
      901 LOADK                            R51 K147 ["X-Transparent"]
      902 SETTABLE                         R51 R49 R50
      903 CALL                             R47 2 1
      904 SETTABLEKS                       R47 R46 K142 ["AnnotationIcon"]
      906 GETUPVAL                         R47 3
      907 GETTABLEKS                       R47 R47 K14 ["createElement"]
      909 LOADK                            R48 K74 ["TextLabel"]
      910 NEWTABLE                         R49 4 0
      912 LOADN                            R50 1
      913 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      915 JUMPIFNOT                        R31 ; [+6]
      916 LOADK                            R52 K148 ["Plugin"]
      917 LOADK                            R53 K149 ["NoResolvedAnnotations"]
      918 NAMECALL                         R50 R2 K77 ["getText"]
      920 CALL                             R50 3 1
      921 JUMP                             ; [+19]
      922 JUMPIFNOT                        R32 ; [+6]
      923 LOADK                            R52 K148 ["Plugin"]
      924 LOADK                            R53 K150 ["NoCommentsForUser"]
      925 NAMECALL                         R50 R2 K77 ["getText"]
      927 CALL                             R50 3 1
      928 JUMP                             ; [+12]
      929 JUMPIFNOT                        R33 ; [+6]
      930 LOADK                            R52 K148 ["Plugin"]
      931 LOADK                            R53 K151 ["NoMatching"]
      932 NAMECALL                         R50 R2 K77 ["getText"]
      934 CALL                             R50 3 1
      935 JUMP                             ; [+5]
      936 LOADK                            R52 K148 ["Plugin"]
      937 LOADK                            R53 K152 ["NoAnnotations"]
      938 NAMECALL                         R50 R2 K77 ["getText"]
      940 CALL                             R50 3 1
      941 SETTABLEKS                       R50 R49 K72 ["Text"]
      943 GETUPVAL                         R50 3
      944 GETTABLEKS                       R50 R50 K23 ["Tag"]
      946 LOADK                            R51 K147 ["X-Transparent"]
      947 SETTABLE                         R51 R49 R50
      948 CALL                             R47 2 1
      949 SETTABLEKS                       R47 R46 K143 ["NoCommentsYet"]
      951 JUMPIF                           R30 ; [+23]
      952 GETUPVAL                         R47 3
      953 GETTABLEKS                       R47 R47 K14 ["createElement"]
      955 LOADK                            R48 K74 ["TextLabel"]
      956 NEWTABLE                         R49 4 0
      958 LOADN                            R50 2
      959 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      961 LOADK                            R52 K148 ["Plugin"]
      962 LOADK                            R53 K144 ["ToAdd"]
      963 NAMECALL                         R50 R2 K77 ["getText"]
      965 CALL                             R50 3 1
      966 SETTABLEKS                       R50 R49 K72 ["Text"]
      968 GETUPVAL                         R50 3
      969 GETTABLEKS                       R50 R50 K23 ["Tag"]
      971 LOADK                            R51 K147 ["X-Transparent"]
      972 SETTABLE                         R51 R49 R50
      973 CALL                             R47 2 1
      974 JUMP                             ; [+1]
      975 LOADNIL                          R47
      976 SETTABLEKS                       R47 R46 K144 ["ToAdd"]
      978 JUMPIF                           R30 ; [+27]
      979 GETUPVAL                         R47 3
      980 GETTABLEKS                       R47 R47 K14 ["createElement"]
      982 LOADK                            R48 K153 ["TextButton"]
      983 NEWTABLE                         R49 4 0
      985 LOADN                            R50 4
      986 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      988 LOADK                            R52 K154 ["AddAnnotation"]
      989 LOADK                            R53 K155 ["AddComment"]
      990 NAMECALL                         R50 R2 K77 ["getText"]
      992 CALL                             R50 3 1
      993 SETTABLEKS                       R50 R49 K72 ["Text"]
      995 GETUPVAL                         R50 3
      996 GETTABLEKS                       R50 R50 K39 ["Event"]
      998 GETTABLEKS                       R50 R50 K40 ["Activated"]
     1000 NEWCLOSURE                       R51 P24
     1001 CAPTURE                          UPVAL U17
     1002 CAPTURE                          VAL R1
     1003 SETTABLE                         R51 R49 R50
     1004 CALL                             R47 2 1
     1005 JUMP                             ; [+1]
     1006 LOADNIL                          R47
     1007 SETTABLEKS                       R47 R46 K35 ["AddButton"]
     1009 SETTABLEKS                       R36 R46 K145 ["EmptyStateButton"]
     1011 CALL                             R43 3 1
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R43
     1014 SETTABLEKS                       R43 R42 K28 ["EmptyState"]
     1016 GETUPVAL                         R44 13
     1017 GETTABLEKS                       R44 R44 K156 ["ErrorInternalFailure"]
     1019 JUMPIFNOTEQ                      R26 R44 ; [+2]
     1021 JUMPIFNOT                        R12 ; [+6]
     1022 GETUPVAL                         R44 13
     1023 GETTABLEKS                       R44 R44 K156 ["ErrorInternalFailure"]
     1025 JUMPIFNOTEQ                      R28 R44 ; [+54]
     1027 JUMPIFNOT                        R12 ; [+52]
     1028 GETUPVAL                         R43 3
     1029 GETTABLEKS                       R43 R43 K14 ["createElement"]
     1031 GETUPVAL                         R44 22
     1032 DUPTABLE                         R45 K159 [{["LayoutOrder"] = 99, ["tag"] = "size-full-0 auto-y padding-small bg-action-subtle"}]
     1033 DUPTABLE                         R46 K161 [{"ErrorAlert"}]
     1034 GETUPVAL                         R47 3
     1035 GETTABLEKS                       R47 R47 K14 ["createElement"]
     1037 GETUPVAL                         R48 23
     1038 DUPTABLE                         R49 K167 [{["Message"], ["IsPopup"] = True, ["ShowClose"] = False}]
     1039 LOADK                            R52 K168 ["Error"]
     1040 LOADK                            R53 K169 ["LoadingFailed"]
     1041 NAMECALL                         R50 R2 K77 ["getText"]
     1043 CALL                             R50 3 1
     1044 SETTABLEKS                       R50 R49 K162 ["Message"]
     1046 DUPTABLE                         R50 K171 [{"TryAgain"}]
     1047 GETUPVAL                         R51 3
     1048 GETTABLEKS                       R51 R51 K14 ["createElement"]
     1050 LOADK                            R52 K153 ["TextButton"]
     1051 NEWTABLE                         R53 4 0
     1053 LOADN                            R54 99
     1054 SETTABLEKS                       R54 R53 K31 ["LayoutOrder"]
     1056 LOADK                            R56 K168 ["Error"]
     1057 LOADK                            R57 K170 ["TryAgain"]
     1058 NAMECALL                         R54 R2 K77 ["getText"]
     1060 CALL                             R54 3 1
     1061 SETTABLEKS                       R54 R53 K72 ["Text"]
     1063 GETUPVAL                         R54 3
     1064 GETTABLEKS                       R54 R54 K39 ["Event"]
     1066 GETTABLEKS                       R54 R54 K40 ["Activated"]
     1068 NEWCLOSURE                       R55 P25
     1069 CAPTURE                          UPVAL U20
     1070 CAPTURE                          VAL R1
     1071 SETTABLE                         R55 R53 R54
     1072 CALL                             R51 2 1
     1073 SETTABLEKS                       R51 R50 K170 ["TryAgain"]
     1075 CALL                             R47 3 1
     1076 SETTABLEKS                       R47 R46 K160 ["ErrorAlert"]
     1078 CALL                             R43 3 1
     1079 JUMP                             ; [+1]
     1080 LOADNIL                          R43
     1081 SETTABLEKS                       R43 R42 K29 ["ErrorWrapper"]
     1083 CALL                             R39 3 -1
     1084 RETURN                           R39 -1

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
