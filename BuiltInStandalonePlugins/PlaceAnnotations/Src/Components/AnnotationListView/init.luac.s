PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["CreationTimeUnix"]
        2 GETTABLEKS                       R4 R1 K0 ["CreationTimeUnix"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["List"]
        3 GETTABLEKS                       R1 R2 K1 ["sort"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K2 ["List"]
       11 GETTABLEKS                       R4 R5 K3 ["sort"]
       13 MOVE                             R5 R0
       14 DUPCLOSURE                       R6 K4 [PROTO_0]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K5 ["X"]
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
       32 GETUPVAL                         R8 10
       33 GETTABLEKS                       R7 R8 K7 ["PlaceIdKey"]
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
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K3 ["PlaceIdKey"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagAnnotationsHeightCacheLoadingFixes"]
        3 JUMPIF                           R0 ; [+18]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R5 R6 K1 ["List"]
        9 GETTABLEKS                       R4 R5 K2 ["sort"]
       11 MOVE                             R5 R3
       12 DUPCLOSURE                       R6 K3 [PROTO_0]
       13 CALL                             R4 2 1
       14 MOVE                             R2 R4
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K4 ["X"]
       18 GETUPVAL                         R4 5
       19 NAMECALL                         R0 R0 K5 ["Init"]
       21 CALL                             R0 4 0
       22 GETUPVAL                         R1 6
       23 GETTABLEKS                       R0 R1 K6 ["ChildAdded"]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U6
       29 NAMECALL                         R0 R0 K7 ["Connect"]
       31 CALL                             R0 2 1
       32 GETUPVAL                         R1 8
       33 LOADK                            R3 K8 ["SyncStandaloneAnnotation"]
       34 NEWCLOSURE                       R4 P2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U9
       37 NAMECALL                         R1 R1 K9 ["OnInvoke"]
       39 CALL                             R1 3 1
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R2 R3 K10 ["ChildRemoved"]
       43 NEWCLOSURE                       R4 P3
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U6
       47 NAMECALL                         R2 R2 K7 ["Connect"]
       49 CALL                             R2 2 1
       50 NEWCLOSURE                       R3 P4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagAnnotationsHeightCacheLoadingFixes"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["Success"]
        9 JUMPIFEQ                         R0 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K2 ["GetChildren"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 4
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 5
       20 GETUPVAL                         R5 6
       21 GETTABLEKS                       R4 R5 K3 ["List"]
       23 GETTABLEKS                       R3 R4 K4 ["sort"]
       25 MOVE                             R4 R0
       26 DUPCLOSURE                       R5 K5 [PROTO_0]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 7
       29 GETTABLEKS                       R4 R5 K6 ["X"]
       31 GETUPVAL                         R5 8
       32 NAMECALL                         R1 R1 K7 ["Init"]
       34 CALL                             R1 4 0
       35 GETUPVAL                         R1 9
       36 LOADNIL                          R2
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fflagAnnotationsHeightCacheLoadingFixes"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R6 3
        8 GETTABLEKS                       R5 R6 K1 ["List"]
       10 GETTABLEKS                       R4 R5 K2 ["sort"]
       12 MOVE                             R5 R3
       13 DUPCLOSURE                       R6 K3 [PROTO_0]
       14 CALL                             R4 2 1
       15 MOVE                             R2 R4
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R3 R4 K4 ["X"]
       19 GETUPVAL                         R4 5
       20 NAMECALL                         R0 R0 K5 ["Init"]
       22 CALL                             R0 4 0
       23 GETUPVAL                         R0 6
       24 LOADNIL                          R1
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["didInit"]
        3 JUMPIF                           R0 ; [+4]
        4 NEWTABLE                         R0 0 0
        6 LOADN                            R1 0
        7 RETURN                           R0 2
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Y"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 NAMECALL                         R0 R0 K2 ["GetVisibleAnnotationsFiltered"]
       20 CALL                             R0 4 2
       21 GETUPVAL                         R3 7
       22 GETTABLEKS                       R2 R3 K3 ["new"]
       24 LOADN                            R3 0
       25 CALL                             R2 1 1
       26 NEWTABLE                         R3 0 0
       28 GETIMPORT                        R4 K5 [ipairs]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 3
       32 FORGPREP_INEXT                   R4
       33 GETTABLEKS                       R9 R8 K6 ["Annotation"]
       35 GETTABLEKS                       R10 R9 K7 ["Name"]
       37 GETUPVAL                         R12 8
       38 GETTABLEKS                       R11 R12 K8 ["createElement"]
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["createElement"]
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
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K7 ["Event"]
       22 GETTABLEKS                       R3 R4 K8 ["Activated"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U3
       26 SETTABLE                         R4 R2 R3
       27 CALL                             R0 2 1
       28 RETURN                           R0 1
       29 GETUPVAL                         R1 4
       30 JUMPIFNOT                        R1 ; [+27]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R0 R1 K0 ["createElement"]
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
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K7 ["Event"]
       51 GETTABLEKS                       R3 R4 K8 ["Activated"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          UPVAL U5
       55 SETTABLE                         R4 R2 R3
       56 CALL                             R0 2 1
       57 RETURN                           R0 1
       58 GETUPVAL                         R1 6
       59 JUMPIFNOT                        R1 ; [+28]
       60 GETUPVAL                         R1 1
       61 GETTABLEKS                       R0 R1 K0 ["createElement"]
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
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R4 R5 K7 ["Event"]
       80 GETTABLEKS                       R3 R4 K8 ["Activated"]
       82 NEWCLOSURE                       R4 P2
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U5
       85 SETTABLE                         R4 R2 R3
       86 CALL                             R0 2 1
       87 RETURN                           R0 1
       88 LOADNIL                          R0
       89 RETURN                           R0 1

PROTO_23:
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
       15 GETUPVAL                         R3 5
       16 GETTABLEKS                       R2 R3 K1 ["All"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R4 R5 K1 ["All"]
       24 GETUPVAL                         R5 4
       25 NAMECALL                         R1 R1 K0 ["CreateOrUpdatePlacePreferenceAsync"]
       27 CALL                             R1 4 0
       28 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_26:
        0 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setVisibility"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 2
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setVisibility"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R2 2
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_34:
        0 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MentionsAndReplies"]
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
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MentionsAndReplies"]
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
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["None"]
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
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["None"]
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
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K2 ["All"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K2 ["All"]
       27 GETUPVAL                         R5 5
       28 NAMECALL                         R1 R1 K1 ["CreateOrUpdatePlacePreferenceAsync"]
       30 CALL                             R1 4 0
       31 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R1 R2 K1 ["Y"]
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
       10 GETTABLEKS                       R2 R3 K1 ["Y"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["retryLoadAnnotations"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_42:
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
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useState"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K3 ["new"]
       19 CALL                             R5 0 1
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K2 ["useState"]
       24 GETTABLEKS                       R7 R0 K4 ["Size"]
       26 CALL                             R6 1 2
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R8 R9 K2 ["useState"]
       30 LOADN                            R9 0
       31 CALL                             R8 1 2
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R10 R11 K2 ["useState"]
       35 GETUPVAL                         R11 5
       36 NAMECALL                         R11 R11 K5 ["GetChildren"]
       38 CALL                             R11 1 1
       39 CALL                             R10 1 2
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K2 ["useState"]
       43 LOADB                            R13 0
       44 CALL                             R12 1 2
       45 GETUPVAL                         R15 3
       46 GETTABLEKS                       R14 R15 K2 ["useState"]
       48 LOADB                            R15 0
       49 CALL                             R14 1 2
       50 GETUPVAL                         R17 3
       51 GETTABLEKS                       R16 R17 K2 ["useState"]
       53 LOADB                            R17 0
       54 CALL                             R16 1 2
       55 GETUPVAL                         R19 3
       56 GETTABLEKS                       R18 R19 K2 ["useState"]
       58 GETUPVAL                         R20 6
       59 GETTABLEKS                       R19 R20 K6 ["All"]
       61 CALL                             R18 1 2
       62 GETUPVAL                         R21 3
       63 GETTABLEKS                       R20 R21 K7 ["useReducer"]
       65 GETUPVAL                         R21 7
       66 LOADN                            R22 0
       67 CALL                             R20 2 2
       68 GETUPVAL                         R22 8
       69 NAMECALL                         R22 R22 K0 ["use"]
       71 CALL                             R22 1 1
       72 NAMECALL                         R22 R22 K1 ["get"]
       74 CALL                             R22 1 1
       75 GETUPVAL                         R26 9
       76 GETTABLEKS                       R25 R26 K8 ["PlaceIdKey"]
       78 NAMECALL                         R23 R1 K9 ["GetItem"]
       80 CALL                             R23 2 1
       81 GETUPVAL                         R24 10
       82 NAMECALL                         R24 R24 K10 ["GetUserId"]
       84 CALL                             R24 1 1
       85 GETUPVAL                         R25 11
       86 NAMECALL                         R25 R25 K0 ["use"]
       88 CALL                             R25 1 1
       89 GETUPVAL                         R27 3
       90 GETTABLEKS                       R26 R27 K2 ["useState"]
       92 GETUPVAL                         R29 12
       93 GETTABLEKS                       R28 R29 K11 ["fflagAnnotationsUseStateCallbacks"]
       95 JUMPIFNOT                        R28 ; [+3]
       96 NEWCLOSURE                       R27 P0
       97 CAPTURE                          VAL R1
       98 JUMP                             ; [+4]
       99 LOADK                            R29 K12 ["AnnotationsLoadingStatus"]
      100 NAMECALL                         R27 R1 K9 ["GetItem"]
      102 CALL                             R27 2 1
      103 CALL                             R26 1 2
      104 GETUPVAL                         R29 3
      105 GETTABLEKS                       R28 R29 K2 ["useState"]
      107 GETUPVAL                         R31 12
      108 GETTABLEKS                       R30 R31 K11 ["fflagAnnotationsUseStateCallbacks"]
      110 JUMPIFNOT                        R30 ; [+3]
      111 NEWCLOSURE                       R29 P1
      112 CAPTURE                          VAL R1
      113 JUMP                             ; [+4]
      114 LOADK                            R31 K13 ["ResolvedLoadingStatus"]
      115 NAMECALL                         R29 R1 K9 ["GetItem"]
      117 CALL                             R29 2 1
      118 CALL                             R28 1 2
      119 OR                               R30 R12 R14
      120 MOVE                             R31 R12
      121 JUMPIFNOT                        R31 ; [+1]
      122 NOT                              R31 R14
      123 MOVE                             R32 R14
      124 JUMPIFNOT                        R32 ; [+1]
      125 NOT                              R32 R12
      126 AND                              R33 R12 R14
      127 GETUPVAL                         R35 3
      128 GETTABLEKS                       R34 R35 K14 ["useEffect"]
      130 NEWCLOSURE                       R35 P2
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R27
      133 CAPTURE                          VAL R29
      134 CAPTURE                          UPVAL U9
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U13
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R25
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R23
      146 NEWTABLE                         R36 0 0
      148 CALL                             R34 2 0
      149 GETUPVAL                         R35 3
      150 GETTABLEKS                       R34 R35 K14 ["useEffect"]
      152 NEWCLOSURE                       R35 P3
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R10
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R25
      159 CAPTURE                          UPVAL U5
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R21
      163 NEWTABLE                         R36 0 1
      165 MOVE                             R37 R4
      166 SETLIST                          R36 R37 1 [1]
      168 CALL                             R34 2 0
      169 GETUPVAL                         R35 3
      170 GETTABLEKS                       R34 R35 K14 ["useEffect"]
      172 NEWCLOSURE                       R35 P4
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          VAL R26
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R4
      179 CAPTURE                          UPVAL U13
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R21
      183 NEWTABLE                         R36 0 3
      185 MOVE                             R37 R6
      186 MOVE                             R38 R4
      187 MOVE                             R39 R26
      188 SETLIST                          R36 R37 3 [1]
      190 CALL                             R34 2 0
      191 GETUPVAL                         R35 3
      192 GETTABLEKS                       R34 R35 K14 ["useEffect"]
      194 NEWCLOSURE                       R35 P5
      195 CAPTURE                          UPVAL U12
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R10
      198 CAPTURE                          UPVAL U13
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R21
      202 NEWTABLE                         R36 0 2
      204 MOVE                             R37 R6
      205 MOVE                             R38 R4
      206 SETLIST                          R36 R37 2 [1]
      208 CALL                             R34 2 0
      209 GETUPVAL                         R35 3
      210 GETTABLEKS                       R34 R35 K15 ["useMemo"]
      212 NEWCLOSURE                       R35 P6
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R14
      218 CAPTURE                          UPVAL U15
      219 CAPTURE                          UPVAL U10
      220 CAPTURE                          UPVAL U16
      221 CAPTURE                          UPVAL U3
      222 CAPTURE                          UPVAL U17
      223 CAPTURE                          VAL R21
      224 NEWTABLE                         R36 0 7
      226 MOVE                             R37 R20
      227 MOVE                             R38 R4
      228 MOVE                             R39 R6
      229 MOVE                             R40 R8
      230 MOVE                             R41 R10
      231 MOVE                             R42 R12
      232 MOVE                             R43 R14
      233 SETLIST                          R36 R37 7 [1]
      235 CALL                             R34 2 2
      236 GETUPVAL                         R37 3
      237 GETTABLEKS                       R36 R37 K15 ["useMemo"]
      239 NEWCLOSURE                       R37 P7
      240 CAPTURE                          VAL R31
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R32
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R33
      247 NEWTABLE                         R38 0 3
      249 MOVE                             R39 R31
      250 MOVE                             R40 R32
      251 MOVE                             R41 R33
      252 SETLIST                          R38 R39 3 [1]
      254 CALL                             R36 2 1
      255 NEWCLOSURE                       R37 P8
      256 CAPTURE                          VAL R18
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R22
      259 CAPTURE                          VAL R24
      260 CAPTURE                          VAL R23
      261 CAPTURE                          UPVAL U6
      262 JUMPIFEQKN                       R35 K16 [0] ; [+2]
      264 LOADB                            R38 0 +1
      265 LOADB                            R38 1
      266 GETUPVAL                         R40 3
      267 GETTABLEKS                       R39 R40 K17 ["createElement"]
      269 LOADK                            R40 K18 ["Frame"]
      270 NEWTABLE                         R41 4 0
      272 GETTABLEKS                       R45 R3 K19 ["Color"]
      274 GETTABLEKS                       R44 R45 K20 ["Surface"]
      276 GETTABLEKS                       R43 R44 K21 ["Surface_100"]
      278 GETTABLEKS                       R42 R43 K22 ["Color3"]
      280 SETTABLEKS                       R42 R41 K23 ["BackgroundColor3"]
      282 GETUPVAL                         R44 3
      283 GETTABLEKS                       R43 R44 K24 ["Change"]
      285 GETTABLEKS                       R42 R43 K25 ["AbsoluteSize"]
      287 NEWCLOSURE                       R43 P9
      288 CAPTURE                          VAL R7
      289 SETTABLE                         R43 R41 R42
      290 GETUPVAL                         R43 3
      291 GETTABLEKS                       R42 R43 K26 ["Tag"]
      293 LOADK                            R43 K27 ["Component-AnnotationListView X-Fill X-Column X-Center"]
      294 SETTABLE                         R43 R41 R42
      295 DUPTABLE                         R42 K33 [{"Header", "Divider", "AnnotationList", "EmptyState", "ErrorWrapper"}]
      296 LENGTH                           R44 R10
      297 LOADN                            R45 0
      298 JUMPIFNOTLT                      R45 R44 ; [+596]
      300 GETUPVAL                         R44 3
      301 GETTABLEKS                       R43 R44 K17 ["createElement"]
      303 LOADK                            R44 K18 ["Frame"]
      304 DUPTABLE                         R45 K35 [{"LayoutOrder"}]
      305 LOADN                            R46 0
      306 SETTABLEKS                       R46 R45 K34 ["LayoutOrder"]
      308 DUPTABLE                         R46 K37 [{"ButtonGroup"}]
      309 GETUPVAL                         R48 3
      310 GETTABLEKS                       R47 R48 K17 ["createElement"]
      312 LOADK                            R48 K18 ["Frame"]
      313 DUPTABLE                         R49 K35 [{"LayoutOrder"}]
      314 LOADN                            R50 0
      315 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
      317 DUPTABLE                         R50 K40 [{"AddButton", "SettingsWrapper"}]
      318 GETUPVAL                         R52 3
      319 GETTABLEKS                       R51 R52 K17 ["createElement"]
      321 LOADK                            R52 K41 ["ImageButton"]
      322 NEWTABLE                         R53 1 0
      324 GETUPVAL                         R56 3
      325 GETTABLEKS                       R55 R56 K42 ["Event"]
      327 GETTABLEKS                       R54 R55 K43 ["Activated"]
      329 NEWCLOSURE                       R55 P10
      330 CAPTURE                          UPVAL U18
      331 CAPTURE                          VAL R1
      332 SETTABLE                         R55 R53 R54
      333 DUPTABLE                         R54 K45 [{"AddIcon"}]
      334 GETUPVAL                         R56 3
      335 GETTABLEKS                       R55 R56 K17 ["createElement"]
      337 LOADK                            R56 K46 ["ImageLabel"]
      338 NEWTABLE                         R57 1 0
      340 GETUPVAL                         R59 3
      341 GETTABLEKS                       R58 R59 K26 ["Tag"]
      343 LOADK                            R59 K47 ["AddAnnotationIcon X-Transparent"]
      344 SETTABLE                         R59 R57 R58
      345 CALL                             R55 2 1
      346 SETTABLEKS                       R55 R54 K44 ["AddIcon"]
      348 CALL                             R51 3 1
      349 SETTABLEKS                       R51 R50 K38 ["AddButton"]
      351 GETUPVAL                         R52 3
      352 GETTABLEKS                       R51 R52 K17 ["createElement"]
      354 LOADK                            R52 K18 ["Frame"]
      355 NEWTABLE                         R53 0 0
      357 DUPTABLE                         R54 K49 [{"Settings"}]
      358 GETUPVAL                         R56 3
      359 GETTABLEKS                       R55 R56 K17 ["createElement"]
      361 GETUPVAL                         R56 19
      362 NEWTABLE                         R57 4 0
      364 GETIMPORT                        R58 K52 [UDim2.fromOffset]
      366 LOADN                            R59 4
      367 LOADN                            R60 40
      368 CALL                             R58 2 1
      369 SETTABLEKS                       R58 R57 K4 ["Size"]
      371 DUPTABLE                         R58 K62 [{"ListViewLabel", "ShowResolved", "ShowTagged", "DisplaySettingsLabel", "ShowAnnotations", "NotificationsLabel", "OnlyMentions", "UnsubscribeFromAll", "PaddingLabel"}]
      372 GETUPVAL                         R60 3
      373 GETTABLEKS                       R59 R60 K17 ["createElement"]
      375 GETUPVAL                         R61 20
      376 GETTABLEKS                       R60 R61 K63 ["View"]
      378 DUPTABLE                         R61 K67 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      379 LOADK                            R62 K68 ["size-full-800 row"]
      380 SETTABLEKS                       R62 R61 K64 ["tag"]
      382 LOADN                            R62 0
      383 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      385 DUPCLOSURE                       R62 K69 [PROTO_26]
      386 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      388 DUPTABLE                         R62 K71 [{"affordance"}]
      389 GETUPVAL                         R66 20
      390 GETTABLEKS                       R65 R66 K72 ["Enums"]
      392 GETTABLEKS                       R64 R65 K73 ["StateLayerAffordance"]
      394 GETTABLEKS                       R63 R64 K74 ["None"]
      396 SETTABLEKS                       R63 R62 K70 ["affordance"]
      398 SETTABLEKS                       R62 R61 K66 ["stateLayer"]
      400 DUPTABLE                         R62 K76 [{"Text"}]
      401 GETUPVAL                         R64 3
      402 GETTABLEKS                       R63 R64 K17 ["createElement"]
      404 LOADK                            R64 K77 ["TextLabel"]
      405 NEWTABLE                         R65 2 0
      407 LOADK                            R68 K78 ["Dropdown"]
      408 LOADK                            R69 K79 ["ListView"]
      409 NAMECALL                         R66 R2 K80 ["getText"]
      411 CALL                             R66 3 1
      412 SETTABLEKS                       R66 R65 K75 ["Text"]
      414 GETUPVAL                         R67 3
      415 GETTABLEKS                       R66 R67 K26 ["Tag"]
      417 LOADK                            R67 K81 ["Component-DropdownItem SectionTitle X-Transparent"]
      418 SETTABLE                         R67 R65 R66
      419 CALL                             R63 2 1
      420 SETTABLEKS                       R63 R62 K75 ["Text"]
      422 CALL                             R59 3 1
      423 SETTABLEKS                       R59 R58 K53 ["ListViewLabel"]
      425 GETUPVAL                         R60 3
      426 GETTABLEKS                       R59 R60 K17 ["createElement"]
      428 GETUPVAL                         R61 20
      429 GETTABLEKS                       R60 R61 K63 ["View"]
      431 DUPTABLE                         R61 K82 [{"tag", "onActivated", "LayoutOrder"}]
      432 LOADK                            R62 K83 ["padding-top-xsmall padding-left-large padding-right-xlarge size-full-700"]
      433 SETTABLEKS                       R62 R61 K64 ["tag"]
      435 NEWCLOSURE                       R62 P12
      436 CAPTURE                          VAL R13
      437 CAPTURE                          VAL R12
      438 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      440 LOADN                            R62 1
      441 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      443 DUPTABLE                         R62 K85 [{"Checkbox"}]
      444 GETUPVAL                         R64 3
      445 GETTABLEKS                       R63 R64 K17 ["createElement"]
      447 GETUPVAL                         R65 20
      448 GETTABLEKS                       R64 R65 K84 ["Checkbox"]
      450 DUPTABLE                         R65 K90 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      451 LOADK                            R68 K78 ["Dropdown"]
      452 LOADK                            R69 K54 ["ShowResolved"]
      453 NAMECALL                         R66 R2 K80 ["getText"]
      455 CALL                             R66 3 1
      456 SETTABLEKS                       R66 R65 K86 ["label"]
      458 LOADN                            R66 1
      459 SETTABLEKS                       R66 R65 K87 ["BackgroundTransparency"]
      461 SETTABLEKS                       R12 R65 K88 ["isChecked"]
      463 GETUPVAL                         R69 20
      464 GETTABLEKS                       R68 R69 K72 ["Enums"]
      466 GETTABLEKS                       R67 R68 K91 ["InputSize"]
      468 GETTABLEKS                       R66 R67 K92 ["XSmall"]
      470 SETTABLEKS                       R66 R65 K89 ["size"]
      472 NEWCLOSURE                       R66 P13
      473 CAPTURE                          VAL R13
      474 CAPTURE                          VAL R12
      475 SETTABLEKS                       R66 R65 K65 ["onActivated"]
      477 CALL                             R63 2 1
      478 SETTABLEKS                       R63 R62 K84 ["Checkbox"]
      480 CALL                             R59 3 1
      481 SETTABLEKS                       R59 R58 K54 ["ShowResolved"]
      483 GETUPVAL                         R60 3
      484 GETTABLEKS                       R59 R60 K17 ["createElement"]
      486 GETUPVAL                         R61 20
      487 GETTABLEKS                       R60 R61 K63 ["View"]
      489 DUPTABLE                         R61 K82 [{"tag", "onActivated", "LayoutOrder"}]
      490 LOADK                            R62 K93 ["padding-top-xsmall padding-left-large padding-right-xxlarge size-full-700"]
      491 SETTABLEKS                       R62 R61 K64 ["tag"]
      493 NEWCLOSURE                       R62 P14
      494 CAPTURE                          VAL R15
      495 CAPTURE                          VAL R14
      496 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      498 LOADN                            R62 2
      499 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      501 DUPTABLE                         R62 K85 [{"Checkbox"}]
      502 GETUPVAL                         R64 3
      503 GETTABLEKS                       R63 R64 K17 ["createElement"]
      505 GETUPVAL                         R65 20
      506 GETTABLEKS                       R64 R65 K84 ["Checkbox"]
      508 DUPTABLE                         R65 K90 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      509 LOADK                            R68 K78 ["Dropdown"]
      510 LOADK                            R69 K55 ["ShowTagged"]
      511 NAMECALL                         R66 R2 K80 ["getText"]
      513 CALL                             R66 3 1
      514 SETTABLEKS                       R66 R65 K86 ["label"]
      516 LOADN                            R66 1
      517 SETTABLEKS                       R66 R65 K87 ["BackgroundTransparency"]
      519 SETTABLEKS                       R14 R65 K88 ["isChecked"]
      521 GETUPVAL                         R69 20
      522 GETTABLEKS                       R68 R69 K72 ["Enums"]
      524 GETTABLEKS                       R67 R68 K91 ["InputSize"]
      526 GETTABLEKS                       R66 R67 K92 ["XSmall"]
      528 SETTABLEKS                       R66 R65 K89 ["size"]
      530 NEWCLOSURE                       R66 P15
      531 CAPTURE                          VAL R15
      532 CAPTURE                          VAL R14
      533 SETTABLEKS                       R66 R65 K65 ["onActivated"]
      535 CALL                             R63 2 1
      536 SETTABLEKS                       R63 R62 K84 ["Checkbox"]
      538 CALL                             R59 3 1
      539 SETTABLEKS                       R59 R58 K55 ["ShowTagged"]
      541 GETUPVAL                         R60 3
      542 GETTABLEKS                       R59 R60 K17 ["createElement"]
      544 GETUPVAL                         R61 20
      545 GETTABLEKS                       R60 R61 K63 ["View"]
      547 DUPTABLE                         R61 K67 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      548 LOADK                            R62 K68 ["size-full-800 row"]
      549 SETTABLEKS                       R62 R61 K64 ["tag"]
      551 LOADN                            R62 3
      552 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      554 DUPCLOSURE                       R62 K94 [PROTO_31]
      555 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      557 DUPTABLE                         R62 K71 [{"affordance"}]
      558 GETUPVAL                         R66 20
      559 GETTABLEKS                       R65 R66 K72 ["Enums"]
      561 GETTABLEKS                       R64 R65 K73 ["StateLayerAffordance"]
      563 GETTABLEKS                       R63 R64 K74 ["None"]
      565 SETTABLEKS                       R63 R62 K70 ["affordance"]
      567 SETTABLEKS                       R62 R61 K66 ["stateLayer"]
      569 DUPTABLE                         R62 K76 [{"Text"}]
      570 GETUPVAL                         R64 3
      571 GETTABLEKS                       R63 R64 K17 ["createElement"]
      573 LOADK                            R64 K77 ["TextLabel"]
      574 NEWTABLE                         R65 2 0
      576 LOADK                            R68 K78 ["Dropdown"]
      577 LOADK                            R69 K95 ["DisplaySettings"]
      578 NAMECALL                         R66 R2 K80 ["getText"]
      580 CALL                             R66 3 1
      581 SETTABLEKS                       R66 R65 K75 ["Text"]
      583 GETUPVAL                         R67 3
      584 GETTABLEKS                       R66 R67 K26 ["Tag"]
      586 LOADK                            R67 K81 ["Component-DropdownItem SectionTitle X-Transparent"]
      587 SETTABLE                         R67 R65 R66
      588 CALL                             R63 2 1
      589 SETTABLEKS                       R63 R62 K75 ["Text"]
      591 CALL                             R59 3 1
      592 SETTABLEKS                       R59 R58 K56 ["DisplaySettingsLabel"]
      594 GETUPVAL                         R60 3
      595 GETTABLEKS                       R59 R60 K17 ["createElement"]
      597 GETUPVAL                         R61 20
      598 GETTABLEKS                       R60 R61 K63 ["View"]
      600 DUPTABLE                         R61 K82 [{"tag", "onActivated", "LayoutOrder"}]
      601 LOADK                            R62 K96 ["padding-top-xsmall padding-left-large padding-right-xxlarge padding-bottom-small size-full-700"]
      602 SETTABLEKS                       R62 R61 K64 ["tag"]
      604 NEWCLOSURE                       R62 P17
      605 CAPTURE                          UPVAL U21
      606 CAPTURE                          VAL R1
      607 CAPTURE                          VAL R16
      608 CAPTURE                          VAL R17
      609 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      611 LOADN                            R62 4
      612 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      614 DUPTABLE                         R62 K85 [{"Checkbox"}]
      615 GETUPVAL                         R64 3
      616 GETTABLEKS                       R63 R64 K17 ["createElement"]
      618 GETUPVAL                         R65 20
      619 GETTABLEKS                       R64 R65 K84 ["Checkbox"]
      621 DUPTABLE                         R65 K90 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      622 LOADK                            R68 K78 ["Dropdown"]
      623 LOADK                            R69 K97 ["HideInWorkspace"]
      624 NAMECALL                         R66 R2 K80 ["getText"]
      626 CALL                             R66 3 1
      627 SETTABLEKS                       R66 R65 K86 ["label"]
      629 LOADN                            R66 1
      630 SETTABLEKS                       R66 R65 K87 ["BackgroundTransparency"]
      632 NOT                              R66 R16
      633 SETTABLEKS                       R66 R65 K88 ["isChecked"]
      635 GETUPVAL                         R69 20
      636 GETTABLEKS                       R68 R69 K72 ["Enums"]
      638 GETTABLEKS                       R67 R68 K91 ["InputSize"]
      640 GETTABLEKS                       R66 R67 K92 ["XSmall"]
      642 SETTABLEKS                       R66 R65 K89 ["size"]
      644 NEWCLOSURE                       R66 P18
      645 CAPTURE                          UPVAL U21
      646 CAPTURE                          VAL R1
      647 CAPTURE                          VAL R16
      648 CAPTURE                          VAL R17
      649 SETTABLEKS                       R66 R65 K65 ["onActivated"]
      651 CALL                             R63 2 1
      652 SETTABLEKS                       R63 R62 K84 ["Checkbox"]
      654 CALL                             R59 3 1
      655 SETTABLEKS                       R59 R58 K57 ["ShowAnnotations"]
      657 GETUPVAL                         R60 3
      658 GETTABLEKS                       R59 R60 K17 ["createElement"]
      660 GETUPVAL                         R61 20
      661 GETTABLEKS                       R60 R61 K63 ["View"]
      663 DUPTABLE                         R61 K67 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      664 LOADK                            R62 K68 ["size-full-800 row"]
      665 SETTABLEKS                       R62 R61 K64 ["tag"]
      667 LOADN                            R62 5
      668 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      670 DUPCLOSURE                       R62 K98 [PROTO_34]
      671 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      673 DUPTABLE                         R62 K71 [{"affordance"}]
      674 GETUPVAL                         R66 20
      675 GETTABLEKS                       R65 R66 K72 ["Enums"]
      677 GETTABLEKS                       R64 R65 K73 ["StateLayerAffordance"]
      679 GETTABLEKS                       R63 R64 K74 ["None"]
      681 SETTABLEKS                       R63 R62 K70 ["affordance"]
      683 SETTABLEKS                       R62 R61 K66 ["stateLayer"]
      685 DUPTABLE                         R62 K76 [{"Text"}]
      686 GETUPVAL                         R64 3
      687 GETTABLEKS                       R63 R64 K17 ["createElement"]
      689 LOADK                            R64 K77 ["TextLabel"]
      690 NEWTABLE                         R65 2 0
      692 LOADK                            R68 K78 ["Dropdown"]
      693 LOADK                            R69 K99 ["Notifications"]
      694 NAMECALL                         R66 R2 K80 ["getText"]
      696 CALL                             R66 3 1
      697 SETTABLEKS                       R66 R65 K75 ["Text"]
      699 GETUPVAL                         R67 3
      700 GETTABLEKS                       R66 R67 K26 ["Tag"]
      702 LOADK                            R67 K81 ["Component-DropdownItem SectionTitle X-Transparent"]
      703 SETTABLE                         R67 R65 R66
      704 CALL                             R63 2 1
      705 SETTABLEKS                       R63 R62 K75 ["Text"]
      707 CALL                             R59 3 1
      708 SETTABLEKS                       R59 R58 K58 ["NotificationsLabel"]
      710 GETUPVAL                         R60 3
      711 GETTABLEKS                       R59 R60 K17 ["createElement"]
      713 GETUPVAL                         R61 20
      714 GETTABLEKS                       R60 R61 K63 ["View"]
      716 DUPTABLE                         R61 K82 [{"tag", "onActivated", "LayoutOrder"}]
      717 LOADK                            R62 K100 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100 padding-top-xsmall"]
      718 SETTABLEKS                       R62 R61 K64 ["tag"]
      720 NEWCLOSURE                       R62 P20
      721 CAPTURE                          UPVAL U6
      722 CAPTURE                          VAL R18
      723 CAPTURE                          VAL R19
      724 CAPTURE                          VAL R22
      725 CAPTURE                          VAL R24
      726 CAPTURE                          VAL R23
      727 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      729 LOADN                            R62 6
      730 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      732 DUPTABLE                         R62 K85 [{"Checkbox"}]
      733 GETUPVAL                         R64 3
      734 GETTABLEKS                       R63 R64 K17 ["createElement"]
      736 GETUPVAL                         R65 20
      737 GETTABLEKS                       R64 R65 K84 ["Checkbox"]
      739 DUPTABLE                         R65 K90 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      740 LOADK                            R68 K78 ["Dropdown"]
      741 LOADK                            R69 K59 ["OnlyMentions"]
      742 NAMECALL                         R66 R2 K80 ["getText"]
      744 CALL                             R66 3 1
      745 SETTABLEKS                       R66 R65 K86 ["label"]
      747 LOADN                            R66 1
      748 SETTABLEKS                       R66 R65 K87 ["BackgroundTransparency"]
      750 GETUPVAL                         R68 6
      751 GETTABLEKS                       R67 R68 K101 ["MentionsAndReplies"]
      753 JUMPIFEQ                         R18 R67 ; [+2]
      755 LOADB                            R66 0 +1
      756 LOADB                            R66 1
      757 SETTABLEKS                       R66 R65 K88 ["isChecked"]
      759 GETUPVAL                         R69 20
      760 GETTABLEKS                       R68 R69 K72 ["Enums"]
      762 GETTABLEKS                       R67 R68 K91 ["InputSize"]
      764 GETTABLEKS                       R66 R67 K92 ["XSmall"]
      766 SETTABLEKS                       R66 R65 K89 ["size"]
      768 NEWCLOSURE                       R66 P21
      769 CAPTURE                          UPVAL U6
      770 CAPTURE                          VAL R18
      771 CAPTURE                          VAL R19
      772 CAPTURE                          VAL R22
      773 CAPTURE                          VAL R24
      774 CAPTURE                          VAL R23
      775 SETTABLEKS                       R66 R65 K65 ["onActivated"]
      777 CALL                             R63 2 1
      778 SETTABLEKS                       R63 R62 K84 ["Checkbox"]
      780 CALL                             R59 3 1
      781 SETTABLEKS                       R59 R58 K59 ["OnlyMentions"]
      783 GETUPVAL                         R60 3
      784 GETTABLEKS                       R59 R60 K17 ["createElement"]
      786 GETUPVAL                         R61 20
      787 GETTABLEKS                       R60 R61 K63 ["View"]
      789 DUPTABLE                         R61 K82 [{"tag", "onActivated", "LayoutOrder"}]
      790 LOADK                            R62 K100 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100 padding-top-xsmall"]
      791 SETTABLEKS                       R62 R61 K64 ["tag"]
      793 NEWCLOSURE                       R62 P22
      794 CAPTURE                          UPVAL U6
      795 CAPTURE                          VAL R18
      796 CAPTURE                          VAL R19
      797 CAPTURE                          VAL R22
      798 CAPTURE                          VAL R24
      799 CAPTURE                          VAL R23
      800 SETTABLEKS                       R62 R61 K65 ["onActivated"]
      802 LOADN                            R62 7
      803 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      805 DUPTABLE                         R62 K85 [{"Checkbox"}]
      806 GETUPVAL                         R64 3
      807 GETTABLEKS                       R63 R64 K17 ["createElement"]
      809 GETUPVAL                         R65 20
      810 GETTABLEKS                       R64 R65 K84 ["Checkbox"]
      812 DUPTABLE                         R65 K90 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      813 LOADK                            R68 K78 ["Dropdown"]
      814 LOADK                            R69 K60 ["UnsubscribeFromAll"]
      815 NAMECALL                         R66 R2 K80 ["getText"]
      817 CALL                             R66 3 1
      818 SETTABLEKS                       R66 R65 K86 ["label"]
      820 LOADN                            R66 1
      821 SETTABLEKS                       R66 R65 K87 ["BackgroundTransparency"]
      823 GETUPVAL                         R68 6
      824 GETTABLEKS                       R67 R68 K74 ["None"]
      826 JUMPIFEQ                         R18 R67 ; [+2]
      828 LOADB                            R66 0 +1
      829 LOADB                            R66 1
      830 SETTABLEKS                       R66 R65 K88 ["isChecked"]
      832 GETUPVAL                         R69 20
      833 GETTABLEKS                       R68 R69 K72 ["Enums"]
      835 GETTABLEKS                       R67 R68 K91 ["InputSize"]
      837 GETTABLEKS                       R66 R67 K92 ["XSmall"]
      839 SETTABLEKS                       R66 R65 K89 ["size"]
      841 NEWCLOSURE                       R66 P23
      842 CAPTURE                          UPVAL U6
      843 CAPTURE                          VAL R18
      844 CAPTURE                          VAL R19
      845 CAPTURE                          VAL R22
      846 CAPTURE                          VAL R24
      847 CAPTURE                          VAL R23
      848 SETTABLEKS                       R66 R65 K65 ["onActivated"]
      850 CALL                             R63 2 1
      851 SETTABLEKS                       R63 R62 K84 ["Checkbox"]
      853 CALL                             R59 3 1
      854 SETTABLEKS                       R59 R58 K60 ["UnsubscribeFromAll"]
      856 GETUPVAL                         R60 3
      857 GETTABLEKS                       R59 R60 K17 ["createElement"]
      859 GETUPVAL                         R61 20
      860 GETTABLEKS                       R60 R61 K63 ["View"]
      862 DUPTABLE                         R61 K102 [{"tag", "LayoutOrder"}]
      863 LOADK                            R62 K103 ["size-3000-100"]
      864 SETTABLEKS                       R62 R61 K64 ["tag"]
      866 LOADN                            R62 8
      867 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      869 CALL                             R59 2 1
      870 SETTABLEKS                       R59 R58 K61 ["PaddingLabel"]
      872 SETTABLEKS                       R58 R57 K104 ["DropdownItems"]
      874 LOADK                            R58 K105 ["SettingsIcon"]
      875 SETTABLEKS                       R58 R57 K106 ["ImageTag"]
      877 GETUPVAL                         R59 3
      878 GETTABLEKS                       R58 R59 K26 ["Tag"]
      880 LOADK                            R59 K78 ["Dropdown"]
      881 SETTABLE                         R59 R57 R58
      882 NEWTABLE                         R58 0 0
      884 CALL                             R55 3 1
      885 SETTABLEKS                       R55 R54 K48 ["Settings"]
      887 CALL                             R51 3 1
      888 SETTABLEKS                       R51 R50 K39 ["SettingsWrapper"]
      890 CALL                             R47 3 1
      891 SETTABLEKS                       R47 R46 K36 ["ButtonGroup"]
      893 CALL                             R43 3 1
      894 JUMP                             ; [+1]
      895 LOADNIL                          R43
      896 SETTABLEKS                       R43 R42 K28 ["Header"]
      898 GETUPVAL                         R44 3
      899 GETTABLEKS                       R43 R44 K17 ["createElement"]
      901 LOADK                            R44 K18 ["Frame"]
      902 NEWTABLE                         R45 2 0
      904 LOADN                            R46 1
      905 SETTABLEKS                       R46 R45 K34 ["LayoutOrder"]
      907 GETUPVAL                         R47 3
      908 GETTABLEKS                       R46 R47 K26 ["Tag"]
      910 LOADK                            R47 K107 ["Component-Divider"]
      911 SETTABLE                         R47 R45 R46
      912 CALL                             R43 2 1
      913 SETTABLEKS                       R43 R42 K29 ["Divider"]
      915 JUMPIF                           R38 ; [+66]
      916 GETUPVAL                         R44 3
      917 GETTABLEKS                       R43 R44 K17 ["createElement"]
      919 LOADK                            R44 K18 ["Frame"]
      920 DUPTABLE                         R45 K35 [{"LayoutOrder"}]
      921 LOADN                            R46 2
      922 SETTABLEKS                       R46 R45 K34 ["LayoutOrder"]
      924 DUPTABLE                         R46 K109 [{"AnnotationScrollingFrame"}]
      925 GETUPVAL                         R48 3
      926 GETTABLEKS                       R47 R48 K17 ["createElement"]
      928 LOADK                            R48 K110 ["ScrollingFrame"]
      929 NEWTABLE                         R49 16 0
      931 GETIMPORT                        R50 K111 [UDim2.new]
      933 LOADN                            R51 1
      934 LOADN                            R52 240
      935 LOADN                            R53 0
      936 MOVE                             R54 R35
      937 CALL                             R50 4 1
      938 SETTABLEKS                       R50 R49 K112 ["CanvasSize"]
      940 GETUPVAL                         R52 3
      941 GETTABLEKS                       R51 R52 K24 ["Change"]
      943 GETTABLEKS                       R50 R51 K113 ["CanvasPosition"]
      945 NEWCLOSURE                       R51 P24
      946 CAPTURE                          VAL R8
      947 CAPTURE                          VAL R9
      948 SETTABLE                         R51 R49 R50
      949 LOADN                            R50 0
      950 SETTABLEKS                       R50 R49 K114 ["BorderSizePixel"]
      952 GETIMPORT                        R50 K118 [Enum.ScrollingDirection.Y]
      954 SETTABLEKS                       R50 R49 K116 ["ScrollingDirection"]
      956 GETIMPORT                        R50 K121 [Enum.ScrollBarInset.Always]
      958 SETTABLEKS                       R50 R49 K122 ["VerticalScrollBarInset"]
      960 LOADB                            R50 0
      961 SETTABLEKS                       R50 R49 K123 ["SmoothScroll"]
      963 LOADK                            R50 K124 [0.5]
      964 SETTABLEKS                       R50 R49 K125 ["ScrollRate"]
      966 GETIMPORT                        R50 K127 [UDim2.fromScale]
      968 LOADN                            R51 1
      969 LOADN                            R52 1
      970 CALL                             R50 2 1
      971 SETTABLEKS                       R50 R49 K4 ["Size"]
      973 LOADN                            R50 1
      974 SETTABLEKS                       R50 R49 K87 ["BackgroundTransparency"]
      976 MOVE                             R50 R34
      977 CALL                             R47 3 1
      978 SETTABLEKS                       R47 R46 K108 ["AnnotationScrollingFrame"]
      980 CALL                             R43 3 1
      981 JUMP                             ; [+1]
      982 LOADNIL                          R43
      983 SETTABLEKS                       R43 R42 K30 ["AnnotationList"]
      985 JUMPIFNOT                        R38 ; [+147]
      986 GETUPVAL                         R44 3
      987 GETTABLEKS                       R43 R44 K17 ["createElement"]
      989 LOADK                            R44 K18 ["Frame"]
      990 NEWTABLE                         R45 2 0
      992 LOADN                            R46 3
      993 SETTABLEKS                       R46 R45 K34 ["LayoutOrder"]
      995 GETUPVAL                         R47 3
      996 GETTABLEKS                       R46 R47 K26 ["Tag"]
      998 GETUPVAL                         R47 22
      999 LOADK                            R48 K128 ["X-ColumnM X-Transparent X-Middle X-Center"]
     1000 LENGTH                           R50 R10
     1001 JUMPIFEQKN                       R50 K16 [0] ; [+3]
     1003 LOADK                            R49 K129 ["HeaderOffset"]
     1004 JUMP                             ; [+1]
     1005 LOADNIL                          R49
     1006 CALL                             R47 2 1
     1007 SETTABLE                         R47 R45 R46
     1008 DUPTABLE                         R46 K134 [{"AnnotationIcon", "NoCommentsYet", "ToAdd", "AddButton", "EmptyStateButton"}]
     1009 GETUPVAL                         R48 3
     1010 GETTABLEKS                       R47 R48 K17 ["createElement"]
     1012 LOADK                            R48 K46 ["ImageLabel"]
     1013 NEWTABLE                         R49 2 0
     1015 LOADN                            R50 0
     1016 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
     1018 GETUPVAL                         R51 3
     1019 GETTABLEKS                       R50 R51 K26 ["Tag"]
     1021 LOADK                            R51 K135 ["X-Transparent"]
     1022 SETTABLE                         R51 R49 R50
     1023 CALL                             R47 2 1
     1024 SETTABLEKS                       R47 R46 K130 ["AnnotationIcon"]
     1026 GETUPVAL                         R48 3
     1027 GETTABLEKS                       R47 R48 K17 ["createElement"]
     1029 LOADK                            R48 K77 ["TextLabel"]
     1030 NEWTABLE                         R49 4 0
     1032 LOADN                            R50 1
     1033 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
     1035 JUMPIFNOT                        R31 ; [+6]
     1036 LOADK                            R52 K136 ["Plugin"]
     1037 LOADK                            R53 K137 ["NoResolvedAnnotations"]
     1038 NAMECALL                         R50 R2 K80 ["getText"]
     1040 CALL                             R50 3 1
     1041 JUMP                             ; [+19]
     1042 JUMPIFNOT                        R32 ; [+6]
     1043 LOADK                            R52 K136 ["Plugin"]
     1044 LOADK                            R53 K138 ["NoCommentsForUser"]
     1045 NAMECALL                         R50 R2 K80 ["getText"]
     1047 CALL                             R50 3 1
     1048 JUMP                             ; [+12]
     1049 JUMPIFNOT                        R33 ; [+6]
     1050 LOADK                            R52 K136 ["Plugin"]
     1051 LOADK                            R53 K139 ["NoMatching"]
     1052 NAMECALL                         R50 R2 K80 ["getText"]
     1054 CALL                             R50 3 1
     1055 JUMP                             ; [+5]
     1056 LOADK                            R52 K136 ["Plugin"]
     1057 LOADK                            R53 K140 ["NoAnnotations"]
     1058 NAMECALL                         R50 R2 K80 ["getText"]
     1060 CALL                             R50 3 1
     1061 SETTABLEKS                       R50 R49 K75 ["Text"]
     1063 GETUPVAL                         R51 3
     1064 GETTABLEKS                       R50 R51 K26 ["Tag"]
     1066 LOADK                            R51 K135 ["X-Transparent"]
     1067 SETTABLE                         R51 R49 R50
     1068 CALL                             R47 2 1
     1069 SETTABLEKS                       R47 R46 K131 ["NoCommentsYet"]
     1071 JUMPIF                           R30 ; [+23]
     1072 GETUPVAL                         R48 3
     1073 GETTABLEKS                       R47 R48 K17 ["createElement"]
     1075 LOADK                            R48 K77 ["TextLabel"]
     1076 NEWTABLE                         R49 4 0
     1078 LOADN                            R50 2
     1079 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
     1081 LOADK                            R52 K136 ["Plugin"]
     1082 LOADK                            R53 K132 ["ToAdd"]
     1083 NAMECALL                         R50 R2 K80 ["getText"]
     1085 CALL                             R50 3 1
     1086 SETTABLEKS                       R50 R49 K75 ["Text"]
     1088 GETUPVAL                         R51 3
     1089 GETTABLEKS                       R50 R51 K26 ["Tag"]
     1091 LOADK                            R51 K135 ["X-Transparent"]
     1092 SETTABLE                         R51 R49 R50
     1093 CALL                             R47 2 1
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R47
     1096 SETTABLEKS                       R47 R46 K132 ["ToAdd"]
     1098 JUMPIF                           R30 ; [+27]
     1099 GETUPVAL                         R48 3
     1100 GETTABLEKS                       R47 R48 K17 ["createElement"]
     1102 LOADK                            R48 K141 ["TextButton"]
     1103 NEWTABLE                         R49 4 0
     1105 LOADN                            R50 4
     1106 SETTABLEKS                       R50 R49 K34 ["LayoutOrder"]
     1108 LOADK                            R52 K142 ["AddAnnotation"]
     1109 LOADK                            R53 K143 ["AddComment"]
     1110 NAMECALL                         R50 R2 K80 ["getText"]
     1112 CALL                             R50 3 1
     1113 SETTABLEKS                       R50 R49 K75 ["Text"]
     1115 GETUPVAL                         R52 3
     1116 GETTABLEKS                       R51 R52 K42 ["Event"]
     1118 GETTABLEKS                       R50 R51 K43 ["Activated"]
     1120 NEWCLOSURE                       R51 P25
     1121 CAPTURE                          UPVAL U18
     1122 CAPTURE                          VAL R1
     1123 SETTABLE                         R51 R49 R50
     1124 CALL                             R47 2 1
     1125 JUMP                             ; [+1]
     1126 LOADNIL                          R47
     1127 SETTABLEKS                       R47 R46 K38 ["AddButton"]
     1129 SETTABLEKS                       R36 R46 K133 ["EmptyStateButton"]
     1131 CALL                             R43 3 1
     1132 JUMP                             ; [+1]
     1133 LOADNIL                          R43
     1134 SETTABLEKS                       R43 R42 K31 ["EmptyState"]
     1136 GETUPVAL                         R45 14
     1137 GETTABLEKS                       R44 R45 K144 ["ErrorInternalFailure"]
     1139 JUMPIFNOTEQ                      R26 R44 ; [+2]
     1141 JUMPIFNOT                        R12 ; [+6]
     1142 GETUPVAL                         R45 14
     1143 GETTABLEKS                       R44 R45 K144 ["ErrorInternalFailure"]
     1145 JUMPIFNOTEQ                      R28 R44 ; [+66]
     1147 JUMPIFNOT                        R12 ; [+64]
     1148 GETUPVAL                         R44 3
     1149 GETTABLEKS                       R43 R44 K17 ["createElement"]
     1151 GETUPVAL                         R44 23
     1152 DUPTABLE                         R45 K145 [{"LayoutOrder", "tag"}]
     1153 LOADN                            R46 99
     1154 SETTABLEKS                       R46 R45 K34 ["LayoutOrder"]
     1156 LOADK                            R46 K146 ["size-full-0 auto-y bg-action-subtle padding-small"]
     1157 SETTABLEKS                       R46 R45 K64 ["tag"]
     1159 DUPTABLE                         R46 K148 [{"ErrorAlert"}]
     1160 GETUPVAL                         R48 3
     1161 GETTABLEKS                       R47 R48 K17 ["createElement"]
     1163 GETUPVAL                         R48 24
     1164 DUPTABLE                         R49 K152 [{"Message", "IsPopup", "ShowClose"}]
     1165 LOADK                            R52 K153 ["Error"]
     1166 LOADK                            R53 K154 ["LoadingFailed"]
     1167 NAMECALL                         R50 R2 K80 ["getText"]
     1169 CALL                             R50 3 1
     1170 SETTABLEKS                       R50 R49 K149 ["Message"]
     1172 LOADB                            R50 1
     1173 SETTABLEKS                       R50 R49 K150 ["IsPopup"]
     1175 LOADB                            R50 0
     1176 SETTABLEKS                       R50 R49 K151 ["ShowClose"]
     1178 DUPTABLE                         R50 K156 [{"TryAgain"}]
     1179 GETUPVAL                         R52 3
     1180 GETTABLEKS                       R51 R52 K17 ["createElement"]
     1182 LOADK                            R52 K141 ["TextButton"]
     1183 NEWTABLE                         R53 4 0
     1185 LOADN                            R54 99
     1186 SETTABLEKS                       R54 R53 K34 ["LayoutOrder"]
     1188 LOADK                            R56 K153 ["Error"]
     1189 LOADK                            R57 K155 ["TryAgain"]
     1190 NAMECALL                         R54 R2 K80 ["getText"]
     1192 CALL                             R54 3 1
     1193 SETTABLEKS                       R54 R53 K75 ["Text"]
     1195 GETUPVAL                         R56 3
     1196 GETTABLEKS                       R55 R56 K42 ["Event"]
     1198 GETTABLEKS                       R54 R55 K43 ["Activated"]
     1200 NEWCLOSURE                       R55 P26
     1201 CAPTURE                          UPVAL U21
     1202 CAPTURE                          VAL R1
     1203 SETTABLE                         R55 R53 R54
     1204 CALL                             R51 2 1
     1205 SETTABLEKS                       R51 R50 K155 ["TryAgain"]
     1207 CALL                             R47 3 1
     1208 SETTABLEKS                       R47 R46 K147 ["ErrorAlert"]
     1210 CALL                             R43 3 1
     1211 JUMP                             ; [+1]
     1212 LOADNIL                          R43
     1213 SETTABLEKS                       R43 R42 K32 ["ErrorWrapper"]
     1215 CALL                             R39 3 -1
     1216 RETURN                           R39 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
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
       25 GETTABLEKS                       R4 R5 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Util"]
       34 GETTABLEKS                       R6 R7 K12 ["CrossDMCommunication"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R4 R5 K13 ["Standalone"]
       39 GETTABLEKS                       R6 R2 K14 ["Styling"]
       41 GETTABLEKS                       R5 R6 K15 ["joinTags"]
       43 GETTABLEKS                       R7 R2 K11 ["Util"]
       45 GETTABLEKS                       R6 R7 K16 ["LayoutOrderIterator"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Bin"]
       51 GETTABLEKS                       R9 R10 K18 ["Common"]
       53 GETTABLEKS                       R8 R9 K19 ["defineLuaFlags"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K10 ["Src"]
       60 GETTABLEKS                       R10 R11 K11 ["Util"]
       62 GETTABLEKS                       R9 R10 K20 ["Constants"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Packages"]
       69 GETTABLEKS                       R10 R11 K21 ["Foundation"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R9 K22 ["View"]
       74 GETTABLEKS                       R12 R9 K23 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K24 ["useTokens"]
       78 GETTABLEKS                       R12 R2 K25 ["ContextServices"]
       80 GETTABLEKS                       R13 R12 K26 ["Plugin"]
       82 GETTABLEKS                       R14 R12 K27 ["Localization"]
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R18 R0 K10 ["Src"]
       88 GETTABLEKS                       R17 R18 K28 ["Contexts"]
       90 GETTABLEKS                       R16 R17 K29 ["UsernameContext"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R19 R0 K10 ["Src"]
       97 GETTABLEKS                       R18 R19 K30 ["Components"]
       99 GETTABLEKS                       R17 R18 K31 ["AnnotationListCard"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R20 R0 K10 ["Src"]
      106 GETTABLEKS                       R19 R20 K30 ["Components"]
      108 GETTABLEKS                       R18 R19 K32 ["DropdownButton"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R21 R0 K10 ["Src"]
      115 GETTABLEKS                       R20 R21 K11 ["Util"]
      117 GETTABLEKS                       R19 R20 K33 ["rerenderReducer"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R23 R0 K10 ["Src"]
      124 GETTABLEKS                       R22 R23 K11 ["Util"]
      126 GETTABLEKS                       R21 R22 K34 ["TaggedUsersUtils"]
      128 CALL                             R20 1 1
      129 GETTABLEKS                       R19 R20 K35 ["IsUserTaggedInThread"]
      131 GETIMPORT                        R20 K5 [require]
      133 GETTABLEKS                       R23 R0 K10 ["Src"]
      135 GETTABLEKS                       R22 R23 K11 ["Util"]
      137 GETTABLEKS                       R21 R22 K36 ["toggleAddAnnotation"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K5 [require]
      142 GETTABLEKS                       R24 R0 K10 ["Src"]
      144 GETTABLEKS                       R23 R24 K30 ["Components"]
      146 GETTABLEKS                       R22 R23 K37 ["ErrorAlert"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K5 [require]
      151 GETTABLEKS                       R25 R0 K10 ["Src"]
      153 GETTABLEKS                       R24 R25 K38 ["Enums"]
      155 GETTABLEKS                       R23 R24 K39 ["AnnotationRequestStatus"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K5 [require]
      160 GETTABLEKS                       R26 R0 K10 ["Src"]
      162 GETTABLEKS                       R25 R26 K11 ["Util"]
      164 GETTABLEKS                       R24 R25 K40 ["AnnotationHeightCache"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K5 [require]
      169 GETTABLEKS                       R27 R0 K10 ["Src"]
      171 GETTABLEKS                       R26 R27 K38 ["Enums"]
      173 GETTABLEKS                       R25 R26 K41 ["AnnotationPlaceContentPreference"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K5 [require]
      178 GETTABLEKS                       R27 R0 K10 ["Src"]
      180 GETTABLEKS                       R26 R27 K42 ["Types"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K5 [require]
      185 GETTABLEKS                       R29 R0 K10 ["Src"]
      187 GETTABLEKS                       R28 R29 K28 ["Contexts"]
      189 GETTABLEKS                       R27 R28 K43 ["AnnotationsServiceContext"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K45 [game]
      194 LOADK                            R29 K46 ["AnnotationsService"]
      195 NAMECALL                         R27 R27 K47 ["GetService"]
      197 CALL                             R27 2 1
      198 GETIMPORT                        R28 K45 [game]
      200 LOADK                            R30 K48 ["StudioService"]
      201 NAMECALL                         R28 R28 K47 ["GetService"]
      203 CALL                             R28 2 1
      204 DUPCLOSURE                       R29 K49 [PROTO_1]
      205 CAPTURE                          VAL R3
      206 DUPCLOSURE                       R30 K50 [PROTO_42]
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R21
      232 RETURN                           R30 1
