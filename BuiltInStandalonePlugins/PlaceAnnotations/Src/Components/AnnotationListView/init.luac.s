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
       30 JUMPIFNOT                        R2 ; [+19]
       31 GETUPVAL                         R3 8
       32 GETTABLEKS                       R2 R3 K7 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
       34 JUMPIFNOT                        R2 ; [+15]
       35 GETUPVAL                         R2 9
       36 GETUPVAL                         R4 10
       37 GETUPVAL                         R5 11
       38 GETUPVAL                         R8 12
       39 GETTABLEKS                       R7 R8 K8 ["PlaceIdKey"]
       41 NAMECALL                         R5 R5 K9 ["GetItem"]
       43 CALL                             R5 2 -1
       44 NAMECALL                         R2 R2 K10 ["GetPlacePreferenceAsync"]
       46 CALL                             R2 -1 1
       47 GETUPVAL                         R3 13
       48 MOVE                             R4 R2
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

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
       30 CAPTURE                          UPVAL U13
       31 CAPTURE                          UPVAL U14
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U15
       35 NAMECALL                         R2 R2 K1 ["OnSetItem"]
       37 CALL                             R2 3 1
       38 GETUPVAL                         R3 11
       39 JUMPIFNOT                        R3 ; [+13]
       40 GETUPVAL                         R4 12
       41 GETTABLEKS                       R3 R4 K4 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
       43 JUMPIFNOT                        R3 ; [+9]
       44 GETUPVAL                         R3 13
       45 GETUPVAL                         R5 14
       46 GETUPVAL                         R6 16
       47 NAMECALL                         R3 R3 K5 ["GetPlacePreferenceAsync"]
       49 CALL                             R3 3 1
       50 GETUPVAL                         R4 15
       51 MOVE                             R5 R3
       52 CALL                             R4 1 0
       53 NEWCLOSURE                       R3 P3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 RETURN                           R3 1

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
       57 GETUPVAL                         R16 10
       58 GETTABLEKS                       R15 R16 K18 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
       60 JUMPIFNOT                        R15 ; [+4]
       61 NEWCLOSURE                       R14 P1
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U11
       64 JUMP                             ; [+1]
       65 LOADNIL                          R14
       66 SETTABLEKS                       R14 R13 K11 ["OnContentChanged"]
       68 CALL                             R11 2 1
       69 SETTABLE                         R11 R3 R10
       70 FORGLOOP                         R4 2 [inext] ; [-38]
       72 MOVE                             R4 R3
       73 MOVE                             R5 R1
       74 RETURN                           R4 2

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
       85 GETUPVAL                         R27 11
       86 GETTABLEKS                       R26 R27 K11 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
       88 JUMPIFNOT                        R26 ; [+5]
       89 GETUPVAL                         R25 12
       90 NAMECALL                         R25 R25 K0 ["use"]
       92 CALL                             R25 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R25
       95 GETUPVAL                         R27 3
       96 GETTABLEKS                       R26 R27 K2 ["useState"]
       98 GETUPVAL                         R29 11
       99 GETTABLEKS                       R28 R29 K12 ["fflagAnnotationsUseStateCallbacks"]
      101 JUMPIFNOT                        R28 ; [+3]
      102 NEWCLOSURE                       R27 P0
      103 CAPTURE                          VAL R1
      104 JUMP                             ; [+4]
      105 LOADK                            R29 K13 ["AnnotationsLoadingStatus"]
      106 NAMECALL                         R27 R1 K9 ["GetItem"]
      108 CALL                             R27 2 1
      109 CALL                             R26 1 2
      110 GETUPVAL                         R29 3
      111 GETTABLEKS                       R28 R29 K2 ["useState"]
      113 GETUPVAL                         R31 11
      114 GETTABLEKS                       R30 R31 K12 ["fflagAnnotationsUseStateCallbacks"]
      116 JUMPIFNOT                        R30 ; [+3]
      117 NEWCLOSURE                       R29 P1
      118 CAPTURE                          VAL R1
      119 JUMP                             ; [+4]
      120 LOADK                            R31 K14 ["ResolvedLoadingStatus"]
      121 NAMECALL                         R29 R1 K9 ["GetItem"]
      123 CALL                             R29 2 1
      124 CALL                             R28 1 2
      125 OR                               R30 R12 R14
      126 MOVE                             R31 R12
      127 JUMPIFNOT                        R31 ; [+1]
      128 NOT                              R31 R14
      129 MOVE                             R32 R14
      130 JUMPIFNOT                        R32 ; [+1]
      131 NOT                              R32 R12
      132 AND                              R33 R12 R14
      133 GETUPVAL                         R35 3
      134 GETTABLEKS                       R34 R35 K15 ["useEffect"]
      136 NEWCLOSURE                       R35 P2
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R27
      139 CAPTURE                          VAL R29
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          UPVAL U5
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          UPVAL U13
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R25
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R11
      148 CAPTURE                          UPVAL U14
      149 CAPTURE                          UPVAL U11
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R23
      154 NEWTABLE                         R36 0 0
      156 CALL                             R34 2 0
      157 GETUPVAL                         R35 3
      158 GETTABLEKS                       R34 R35 K15 ["useEffect"]
      160 NEWCLOSURE                       R35 P3
      161 CAPTURE                          UPVAL U11
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R10
      164 CAPTURE                          UPVAL U13
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R25
      167 CAPTURE                          UPVAL U5
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R21
      171 NEWTABLE                         R36 0 1
      173 MOVE                             R37 R4
      174 SETLIST                          R36 R37 1 [1]
      176 CALL                             R34 2 0
      177 GETUPVAL                         R35 3
      178 GETTABLEKS                       R34 R35 K15 ["useEffect"]
      180 NEWCLOSURE                       R35 P4
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          VAL R26
      183 CAPTURE                          UPVAL U15
      184 CAPTURE                          UPVAL U5
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R4
      187 CAPTURE                          UPVAL U13
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R21
      191 NEWTABLE                         R36 0 3
      193 MOVE                             R37 R6
      194 MOVE                             R38 R4
      195 MOVE                             R39 R26
      196 SETLIST                          R36 R37 3 [1]
      198 CALL                             R34 2 0
      199 GETUPVAL                         R35 3
      200 GETTABLEKS                       R34 R35 K15 ["useEffect"]
      202 NEWCLOSURE                       R35 P5
      203 CAPTURE                          UPVAL U11
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R10
      206 CAPTURE                          UPVAL U13
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R21
      210 NEWTABLE                         R36 0 2
      212 MOVE                             R37 R6
      213 MOVE                             R38 R4
      214 SETLIST                          R36 R37 2 [1]
      216 CALL                             R34 2 0
      217 GETUPVAL                         R35 3
      218 GETTABLEKS                       R34 R35 K16 ["useMemo"]
      220 NEWCLOSURE                       R35 P6
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R14
      226 CAPTURE                          UPVAL U16
      227 CAPTURE                          UPVAL U10
      228 CAPTURE                          UPVAL U17
      229 CAPTURE                          UPVAL U3
      230 CAPTURE                          UPVAL U18
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          VAL R21
      233 NEWTABLE                         R36 0 7
      235 MOVE                             R37 R20
      236 MOVE                             R38 R4
      237 MOVE                             R39 R6
      238 MOVE                             R40 R8
      239 MOVE                             R41 R10
      240 MOVE                             R42 R12
      241 MOVE                             R43 R14
      242 SETLIST                          R36 R37 7 [1]
      244 CALL                             R34 2 2
      245 GETUPVAL                         R37 3
      246 GETTABLEKS                       R36 R37 K16 ["useMemo"]
      248 NEWCLOSURE                       R37 P7
      249 CAPTURE                          VAL R31
      250 CAPTURE                          UPVAL U3
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R32
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R33
      256 NEWTABLE                         R38 0 3
      258 MOVE                             R39 R31
      259 MOVE                             R40 R32
      260 MOVE                             R41 R33
      261 SETLIST                          R38 R39 3 [1]
      263 CALL                             R36 2 1
      264 NEWCLOSURE                       R37 P8
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R19
      267 CAPTURE                          VAL R22
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R23
      270 CAPTURE                          UPVAL U6
      271 JUMPIFEQKN                       R35 K17 [0] ; [+2]
      273 LOADB                            R38 0 +1
      274 LOADB                            R38 1
      275 GETUPVAL                         R40 3
      276 GETTABLEKS                       R39 R40 K18 ["createElement"]
      278 LOADK                            R40 K19 ["Frame"]
      279 NEWTABLE                         R41 4 0
      281 GETTABLEKS                       R45 R3 K20 ["Color"]
      283 GETTABLEKS                       R44 R45 K21 ["Surface"]
      285 GETTABLEKS                       R43 R44 K22 ["Surface_100"]
      287 GETTABLEKS                       R42 R43 K23 ["Color3"]
      289 SETTABLEKS                       R42 R41 K24 ["BackgroundColor3"]
      291 GETUPVAL                         R44 3
      292 GETTABLEKS                       R43 R44 K25 ["Change"]
      294 GETTABLEKS                       R42 R43 K26 ["AbsoluteSize"]
      296 NEWCLOSURE                       R43 P9
      297 CAPTURE                          VAL R7
      298 SETTABLE                         R43 R41 R42
      299 GETUPVAL                         R43 3
      300 GETTABLEKS                       R42 R43 K27 ["Tag"]
      302 LOADK                            R43 K28 ["Component-AnnotationListView X-Fill X-Column X-Center"]
      303 SETTABLE                         R43 R41 R42
      304 DUPTABLE                         R42 K34 [{"Header", "Divider", "AnnotationList", "EmptyState", "ErrorWrapper"}]
      305 LENGTH                           R44 R10
      306 LOADN                            R45 0
      307 JUMPIFNOTLT                      R45 R44 ; [+664]
      309 GETUPVAL                         R44 3
      310 GETTABLEKS                       R43 R44 K18 ["createElement"]
      312 LOADK                            R44 K19 ["Frame"]
      313 DUPTABLE                         R45 K36 [{"LayoutOrder"}]
      314 LOADN                            R46 0
      315 SETTABLEKS                       R46 R45 K35 ["LayoutOrder"]
      317 DUPTABLE                         R46 K38 [{"ButtonGroup"}]
      318 GETUPVAL                         R48 3
      319 GETTABLEKS                       R47 R48 K18 ["createElement"]
      321 LOADK                            R48 K19 ["Frame"]
      322 DUPTABLE                         R49 K36 [{"LayoutOrder"}]
      323 LOADN                            R50 0
      324 SETTABLEKS                       R50 R49 K35 ["LayoutOrder"]
      326 DUPTABLE                         R50 K41 [{"AddButton", "SettingsWrapper"}]
      327 GETUPVAL                         R52 3
      328 GETTABLEKS                       R51 R52 K18 ["createElement"]
      330 LOADK                            R52 K42 ["ImageButton"]
      331 NEWTABLE                         R53 1 0
      333 GETUPVAL                         R56 3
      334 GETTABLEKS                       R55 R56 K43 ["Event"]
      336 GETTABLEKS                       R54 R55 K44 ["Activated"]
      338 NEWCLOSURE                       R55 P10
      339 CAPTURE                          UPVAL U19
      340 CAPTURE                          VAL R1
      341 SETTABLE                         R55 R53 R54
      342 DUPTABLE                         R54 K46 [{"AddIcon"}]
      343 GETUPVAL                         R56 3
      344 GETTABLEKS                       R55 R56 K18 ["createElement"]
      346 LOADK                            R56 K47 ["ImageLabel"]
      347 NEWTABLE                         R57 1 0
      349 GETUPVAL                         R59 3
      350 GETTABLEKS                       R58 R59 K27 ["Tag"]
      352 LOADK                            R59 K48 ["AddAnnotationIcon X-Transparent"]
      353 SETTABLE                         R59 R57 R58
      354 CALL                             R55 2 1
      355 SETTABLEKS                       R55 R54 K45 ["AddIcon"]
      357 CALL                             R51 3 1
      358 SETTABLEKS                       R51 R50 K39 ["AddButton"]
      360 GETUPVAL                         R52 3
      361 GETTABLEKS                       R51 R52 K18 ["createElement"]
      363 LOADK                            R52 K19 ["Frame"]
      364 NEWTABLE                         R53 0 0
      366 DUPTABLE                         R54 K50 [{"Settings"}]
      367 GETUPVAL                         R56 3
      368 GETTABLEKS                       R55 R56 K18 ["createElement"]
      370 GETUPVAL                         R56 20
      371 NEWTABLE                         R57 8 0
      373 GETUPVAL                         R59 14
      374 JUMPIFNOT                        R59 ; [+6]
      375 GETUPVAL                         R60 11
      376 GETTABLEKS                       R59 R60 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      378 JUMPIFNOT                        R59 ; [+2]
      379 LOADNIL                          R58
      380 JUMP                             ; [+2]
      381 GETIMPORT                        R58 K55 [Enum.AutomaticSize.XY]
      383 SETTABLEKS                       R58 R57 K53 ["AutomaticSize"]
      385 GETUPVAL                         R59 14
      386 JUMPIFNOT                        R59 ; [+10]
      387 GETUPVAL                         R60 11
      388 GETTABLEKS                       R59 R60 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      390 JUMPIFNOT                        R59 ; [+6]
      391 GETIMPORT                        R58 K58 [UDim2.fromOffset]
      393 LOADN                            R59 4
      394 LOADN                            R60 40
      395 CALL                             R58 2 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R58
      398 SETTABLEKS                       R58 R57 K4 ["Size"]
      400 DUPTABLE                         R58 K68 [{"ListViewLabel", "ShowResolved", "ShowTagged", "DisplaySettingsLabel", "ShowAnnotations", "NotificationsLabel", "OnlyMentions", "UnsubscribeFromAll", "PaddingLabel"}]
      401 GETUPVAL                         R60 3
      402 GETTABLEKS                       R59 R60 K18 ["createElement"]
      404 GETUPVAL                         R61 21
      405 GETTABLEKS                       R60 R61 K69 ["View"]
      407 DUPTABLE                         R61 K73 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      408 LOADK                            R62 K74 ["size-full-800 row"]
      409 SETTABLEKS                       R62 R61 K70 ["tag"]
      411 LOADN                            R62 0
      412 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      414 DUPCLOSURE                       R62 K75 [PROTO_26]
      415 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      417 DUPTABLE                         R62 K77 [{"affordance"}]
      418 GETUPVAL                         R66 21
      419 GETTABLEKS                       R65 R66 K78 ["Enums"]
      421 GETTABLEKS                       R64 R65 K79 ["StateLayerAffordance"]
      423 GETTABLEKS                       R63 R64 K80 ["None"]
      425 SETTABLEKS                       R63 R62 K76 ["affordance"]
      427 SETTABLEKS                       R62 R61 K72 ["stateLayer"]
      429 DUPTABLE                         R62 K82 [{"Text"}]
      430 GETUPVAL                         R64 3
      431 GETTABLEKS                       R63 R64 K18 ["createElement"]
      433 LOADK                            R64 K83 ["TextLabel"]
      434 NEWTABLE                         R65 2 0
      436 LOADK                            R68 K84 ["Dropdown"]
      437 LOADK                            R69 K85 ["ListView"]
      438 NAMECALL                         R66 R2 K86 ["getText"]
      440 CALL                             R66 3 1
      441 SETTABLEKS                       R66 R65 K81 ["Text"]
      443 GETUPVAL                         R67 3
      444 GETTABLEKS                       R66 R67 K27 ["Tag"]
      446 LOADK                            R67 K87 ["Component-DropdownItem SectionTitle X-Transparent"]
      447 SETTABLE                         R67 R65 R66
      448 CALL                             R63 2 1
      449 SETTABLEKS                       R63 R62 K81 ["Text"]
      451 CALL                             R59 3 1
      452 SETTABLEKS                       R59 R58 K59 ["ListViewLabel"]
      454 GETUPVAL                         R60 3
      455 GETTABLEKS                       R59 R60 K18 ["createElement"]
      457 GETUPVAL                         R61 21
      458 GETTABLEKS                       R60 R61 K69 ["View"]
      460 DUPTABLE                         R61 K88 [{"tag", "onActivated", "LayoutOrder"}]
      461 LOADK                            R62 K89 ["padding-top-xsmall padding-left-large padding-right-xlarge size-full-700"]
      462 SETTABLEKS                       R62 R61 K70 ["tag"]
      464 NEWCLOSURE                       R62 P12
      465 CAPTURE                          VAL R13
      466 CAPTURE                          VAL R12
      467 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      469 LOADN                            R62 1
      470 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      472 DUPTABLE                         R62 K91 [{"Checkbox"}]
      473 GETUPVAL                         R64 3
      474 GETTABLEKS                       R63 R64 K18 ["createElement"]
      476 GETUPVAL                         R65 21
      477 GETTABLEKS                       R64 R65 K90 ["Checkbox"]
      479 DUPTABLE                         R65 K96 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      480 LOADK                            R68 K84 ["Dropdown"]
      481 LOADK                            R69 K60 ["ShowResolved"]
      482 NAMECALL                         R66 R2 K86 ["getText"]
      484 CALL                             R66 3 1
      485 SETTABLEKS                       R66 R65 K92 ["label"]
      487 LOADN                            R66 1
      488 SETTABLEKS                       R66 R65 K93 ["BackgroundTransparency"]
      490 SETTABLEKS                       R12 R65 K94 ["isChecked"]
      492 GETUPVAL                         R69 21
      493 GETTABLEKS                       R68 R69 K78 ["Enums"]
      495 GETTABLEKS                       R67 R68 K97 ["InputSize"]
      497 GETTABLEKS                       R66 R67 K98 ["XSmall"]
      499 SETTABLEKS                       R66 R65 K95 ["size"]
      501 NEWCLOSURE                       R66 P13
      502 CAPTURE                          VAL R13
      503 CAPTURE                          VAL R12
      504 SETTABLEKS                       R66 R65 K71 ["onActivated"]
      506 CALL                             R63 2 1
      507 SETTABLEKS                       R63 R62 K90 ["Checkbox"]
      509 CALL                             R59 3 1
      510 SETTABLEKS                       R59 R58 K60 ["ShowResolved"]
      512 GETUPVAL                         R60 3
      513 GETTABLEKS                       R59 R60 K18 ["createElement"]
      515 GETUPVAL                         R61 21
      516 GETTABLEKS                       R60 R61 K69 ["View"]
      518 DUPTABLE                         R61 K88 [{"tag", "onActivated", "LayoutOrder"}]
      519 LOADK                            R62 K99 ["padding-top-xsmall padding-left-large padding-right-xxlarge size-full-700"]
      520 SETTABLEKS                       R62 R61 K70 ["tag"]
      522 NEWCLOSURE                       R62 P14
      523 CAPTURE                          VAL R15
      524 CAPTURE                          VAL R14
      525 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      527 LOADN                            R62 2
      528 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      530 DUPTABLE                         R62 K91 [{"Checkbox"}]
      531 GETUPVAL                         R64 3
      532 GETTABLEKS                       R63 R64 K18 ["createElement"]
      534 GETUPVAL                         R65 21
      535 GETTABLEKS                       R64 R65 K90 ["Checkbox"]
      537 DUPTABLE                         R65 K96 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      538 LOADK                            R68 K84 ["Dropdown"]
      539 LOADK                            R69 K61 ["ShowTagged"]
      540 NAMECALL                         R66 R2 K86 ["getText"]
      542 CALL                             R66 3 1
      543 SETTABLEKS                       R66 R65 K92 ["label"]
      545 LOADN                            R66 1
      546 SETTABLEKS                       R66 R65 K93 ["BackgroundTransparency"]
      548 SETTABLEKS                       R14 R65 K94 ["isChecked"]
      550 GETUPVAL                         R69 21
      551 GETTABLEKS                       R68 R69 K78 ["Enums"]
      553 GETTABLEKS                       R67 R68 K97 ["InputSize"]
      555 GETTABLEKS                       R66 R67 K98 ["XSmall"]
      557 SETTABLEKS                       R66 R65 K95 ["size"]
      559 NEWCLOSURE                       R66 P15
      560 CAPTURE                          VAL R15
      561 CAPTURE                          VAL R14
      562 SETTABLEKS                       R66 R65 K71 ["onActivated"]
      564 CALL                             R63 2 1
      565 SETTABLEKS                       R63 R62 K90 ["Checkbox"]
      567 CALL                             R59 3 1
      568 SETTABLEKS                       R59 R58 K61 ["ShowTagged"]
      570 GETUPVAL                         R60 3
      571 GETTABLEKS                       R59 R60 K18 ["createElement"]
      573 GETUPVAL                         R61 21
      574 GETTABLEKS                       R60 R61 K69 ["View"]
      576 DUPTABLE                         R61 K73 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      577 LOADK                            R62 K74 ["size-full-800 row"]
      578 SETTABLEKS                       R62 R61 K70 ["tag"]
      580 LOADN                            R62 3
      581 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      583 DUPCLOSURE                       R62 K100 [PROTO_31]
      584 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      586 DUPTABLE                         R62 K77 [{"affordance"}]
      587 GETUPVAL                         R66 21
      588 GETTABLEKS                       R65 R66 K78 ["Enums"]
      590 GETTABLEKS                       R64 R65 K79 ["StateLayerAffordance"]
      592 GETTABLEKS                       R63 R64 K80 ["None"]
      594 SETTABLEKS                       R63 R62 K76 ["affordance"]
      596 SETTABLEKS                       R62 R61 K72 ["stateLayer"]
      598 DUPTABLE                         R62 K82 [{"Text"}]
      599 GETUPVAL                         R64 3
      600 GETTABLEKS                       R63 R64 K18 ["createElement"]
      602 LOADK                            R64 K83 ["TextLabel"]
      603 NEWTABLE                         R65 2 0
      605 LOADK                            R68 K84 ["Dropdown"]
      606 LOADK                            R69 K101 ["DisplaySettings"]
      607 NAMECALL                         R66 R2 K86 ["getText"]
      609 CALL                             R66 3 1
      610 SETTABLEKS                       R66 R65 K81 ["Text"]
      612 GETUPVAL                         R67 3
      613 GETTABLEKS                       R66 R67 K27 ["Tag"]
      615 LOADK                            R67 K87 ["Component-DropdownItem SectionTitle X-Transparent"]
      616 SETTABLE                         R67 R65 R66
      617 CALL                             R63 2 1
      618 SETTABLEKS                       R63 R62 K81 ["Text"]
      620 CALL                             R59 3 1
      621 SETTABLEKS                       R59 R58 K62 ["DisplaySettingsLabel"]
      623 GETUPVAL                         R60 3
      624 GETTABLEKS                       R59 R60 K18 ["createElement"]
      626 GETUPVAL                         R61 21
      627 GETTABLEKS                       R60 R61 K69 ["View"]
      629 DUPTABLE                         R61 K88 [{"tag", "onActivated", "LayoutOrder"}]
      630 LOADK                            R62 K102 ["padding-top-xsmall padding-left-large padding-right-xxlarge padding-bottom-small size-full-700"]
      631 SETTABLEKS                       R62 R61 K70 ["tag"]
      633 NEWCLOSURE                       R62 P17
      634 CAPTURE                          UPVAL U22
      635 CAPTURE                          VAL R1
      636 CAPTURE                          VAL R16
      637 CAPTURE                          VAL R17
      638 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      640 LOADN                            R62 4
      641 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      643 DUPTABLE                         R62 K91 [{"Checkbox"}]
      644 GETUPVAL                         R64 3
      645 GETTABLEKS                       R63 R64 K18 ["createElement"]
      647 GETUPVAL                         R65 21
      648 GETTABLEKS                       R64 R65 K90 ["Checkbox"]
      650 DUPTABLE                         R65 K96 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      651 LOADK                            R68 K84 ["Dropdown"]
      652 LOADK                            R69 K103 ["HideInWorkspace"]
      653 NAMECALL                         R66 R2 K86 ["getText"]
      655 CALL                             R66 3 1
      656 SETTABLEKS                       R66 R65 K92 ["label"]
      658 LOADN                            R66 1
      659 SETTABLEKS                       R66 R65 K93 ["BackgroundTransparency"]
      661 NOT                              R66 R16
      662 SETTABLEKS                       R66 R65 K94 ["isChecked"]
      664 GETUPVAL                         R69 21
      665 GETTABLEKS                       R68 R69 K78 ["Enums"]
      667 GETTABLEKS                       R67 R68 K97 ["InputSize"]
      669 GETTABLEKS                       R66 R67 K98 ["XSmall"]
      671 SETTABLEKS                       R66 R65 K95 ["size"]
      673 NEWCLOSURE                       R66 P18
      674 CAPTURE                          UPVAL U22
      675 CAPTURE                          VAL R1
      676 CAPTURE                          VAL R16
      677 CAPTURE                          VAL R17
      678 SETTABLEKS                       R66 R65 K71 ["onActivated"]
      680 CALL                             R63 2 1
      681 SETTABLEKS                       R63 R62 K90 ["Checkbox"]
      683 CALL                             R59 3 1
      684 SETTABLEKS                       R59 R58 K63 ["ShowAnnotations"]
      686 GETUPVAL                         R60 14
      687 JUMPIFNOT                        R60 ; [+56]
      688 GETUPVAL                         R61 11
      689 GETTABLEKS                       R60 R61 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      691 JUMPIFNOT                        R60 ; [+52]
      692 GETUPVAL                         R60 3
      693 GETTABLEKS                       R59 R60 K18 ["createElement"]
      695 GETUPVAL                         R61 21
      696 GETTABLEKS                       R60 R61 K69 ["View"]
      698 DUPTABLE                         R61 K73 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      699 LOADK                            R62 K74 ["size-full-800 row"]
      700 SETTABLEKS                       R62 R61 K70 ["tag"]
      702 LOADN                            R62 5
      703 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      705 DUPCLOSURE                       R62 K104 [PROTO_34]
      706 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      708 DUPTABLE                         R62 K77 [{"affordance"}]
      709 GETUPVAL                         R66 21
      710 GETTABLEKS                       R65 R66 K78 ["Enums"]
      712 GETTABLEKS                       R64 R65 K79 ["StateLayerAffordance"]
      714 GETTABLEKS                       R63 R64 K80 ["None"]
      716 SETTABLEKS                       R63 R62 K76 ["affordance"]
      718 SETTABLEKS                       R62 R61 K72 ["stateLayer"]
      720 DUPTABLE                         R62 K82 [{"Text"}]
      721 GETUPVAL                         R64 3
      722 GETTABLEKS                       R63 R64 K18 ["createElement"]
      724 LOADK                            R64 K83 ["TextLabel"]
      725 NEWTABLE                         R65 2 0
      727 LOADK                            R68 K84 ["Dropdown"]
      728 LOADK                            R69 K105 ["Notifications"]
      729 NAMECALL                         R66 R2 K86 ["getText"]
      731 CALL                             R66 3 1
      732 SETTABLEKS                       R66 R65 K81 ["Text"]
      734 GETUPVAL                         R67 3
      735 GETTABLEKS                       R66 R67 K27 ["Tag"]
      737 LOADK                            R67 K87 ["Component-DropdownItem SectionTitle X-Transparent"]
      738 SETTABLE                         R67 R65 R66
      739 CALL                             R63 2 1
      740 SETTABLEKS                       R63 R62 K81 ["Text"]
      742 CALL                             R59 3 1
      743 JUMP                             ; [+1]
      744 LOADNIL                          R59
      745 SETTABLEKS                       R59 R58 K64 ["NotificationsLabel"]
      747 GETUPVAL                         R60 14
      748 JUMPIFNOT                        R60 ; [+84]
      749 GETUPVAL                         R61 11
      750 GETTABLEKS                       R60 R61 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      752 JUMPIFNOT                        R60 ; [+80]
      753 GETUPVAL                         R60 3
      754 GETTABLEKS                       R59 R60 K18 ["createElement"]
      756 GETUPVAL                         R61 21
      757 GETTABLEKS                       R60 R61 K69 ["View"]
      759 DUPTABLE                         R61 K88 [{"tag", "onActivated", "LayoutOrder"}]
      760 LOADK                            R63 K106 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100"]
      761 GETUPVAL                         R66 11
      762 GETTABLEKS                       R65 R66 K107 ["fflagAnnotationsAdjustNotifOptionsPadding"]
      764 JUMPIFNOT                        R65 ; [+2]
      765 LOADK                            R64 K108 [" padding-top-xsmall"]
      766 JUMP                             ; [+1]
      767 LOADK                            R64 K109 [""]
      768 CONCAT                           R62 R63 R64
      769 SETTABLEKS                       R62 R61 K70 ["tag"]
      771 NEWCLOSURE                       R62 P20
      772 CAPTURE                          UPVAL U6
      773 CAPTURE                          VAL R18
      774 CAPTURE                          VAL R19
      775 CAPTURE                          VAL R22
      776 CAPTURE                          VAL R24
      777 CAPTURE                          VAL R23
      778 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      780 LOADN                            R62 6
      781 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      783 DUPTABLE                         R62 K91 [{"Checkbox"}]
      784 GETUPVAL                         R64 3
      785 GETTABLEKS                       R63 R64 K18 ["createElement"]
      787 GETUPVAL                         R65 21
      788 GETTABLEKS                       R64 R65 K90 ["Checkbox"]
      790 DUPTABLE                         R65 K96 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      791 LOADK                            R68 K84 ["Dropdown"]
      792 LOADK                            R69 K65 ["OnlyMentions"]
      793 NAMECALL                         R66 R2 K86 ["getText"]
      795 CALL                             R66 3 1
      796 SETTABLEKS                       R66 R65 K92 ["label"]
      798 LOADN                            R66 1
      799 SETTABLEKS                       R66 R65 K93 ["BackgroundTransparency"]
      801 GETUPVAL                         R68 6
      802 GETTABLEKS                       R67 R68 K110 ["MentionsAndReplies"]
      804 JUMPIFEQ                         R18 R67 ; [+2]
      806 LOADB                            R66 0 +1
      807 LOADB                            R66 1
      808 SETTABLEKS                       R66 R65 K94 ["isChecked"]
      810 GETUPVAL                         R69 21
      811 GETTABLEKS                       R68 R69 K78 ["Enums"]
      813 GETTABLEKS                       R67 R68 K97 ["InputSize"]
      815 GETTABLEKS                       R66 R67 K98 ["XSmall"]
      817 SETTABLEKS                       R66 R65 K95 ["size"]
      819 NEWCLOSURE                       R66 P21
      820 CAPTURE                          UPVAL U6
      821 CAPTURE                          VAL R18
      822 CAPTURE                          VAL R19
      823 CAPTURE                          VAL R22
      824 CAPTURE                          VAL R24
      825 CAPTURE                          VAL R23
      826 SETTABLEKS                       R66 R65 K71 ["onActivated"]
      828 CALL                             R63 2 1
      829 SETTABLEKS                       R63 R62 K90 ["Checkbox"]
      831 CALL                             R59 3 1
      832 JUMP                             ; [+1]
      833 LOADNIL                          R59
      834 SETTABLEKS                       R59 R58 K65 ["OnlyMentions"]
      836 GETUPVAL                         R60 14
      837 JUMPIFNOT                        R60 ; [+84]
      838 GETUPVAL                         R61 11
      839 GETTABLEKS                       R60 R61 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      841 JUMPIFNOT                        R60 ; [+80]
      842 GETUPVAL                         R60 3
      843 GETTABLEKS                       R59 R60 K18 ["createElement"]
      845 GETUPVAL                         R61 21
      846 GETTABLEKS                       R60 R61 K69 ["View"]
      848 DUPTABLE                         R61 K88 [{"tag", "onActivated", "LayoutOrder"}]
      849 LOADK                            R63 K106 ["padding-left-large padding-right-xxlarge margin-top-xsmall margin-bottom-xsmall size-full-1100"]
      850 GETUPVAL                         R66 11
      851 GETTABLEKS                       R65 R66 K107 ["fflagAnnotationsAdjustNotifOptionsPadding"]
      853 JUMPIFNOT                        R65 ; [+2]
      854 LOADK                            R64 K108 [" padding-top-xsmall"]
      855 JUMP                             ; [+1]
      856 LOADK                            R64 K109 [""]
      857 CONCAT                           R62 R63 R64
      858 SETTABLEKS                       R62 R61 K70 ["tag"]
      860 NEWCLOSURE                       R62 P22
      861 CAPTURE                          UPVAL U6
      862 CAPTURE                          VAL R18
      863 CAPTURE                          VAL R19
      864 CAPTURE                          VAL R22
      865 CAPTURE                          VAL R24
      866 CAPTURE                          VAL R23
      867 SETTABLEKS                       R62 R61 K71 ["onActivated"]
      869 LOADN                            R62 7
      870 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      872 DUPTABLE                         R62 K91 [{"Checkbox"}]
      873 GETUPVAL                         R64 3
      874 GETTABLEKS                       R63 R64 K18 ["createElement"]
      876 GETUPVAL                         R65 21
      877 GETTABLEKS                       R64 R65 K90 ["Checkbox"]
      879 DUPTABLE                         R65 K96 [{"label", "BackgroundTransparency", "isChecked", "size", "onActivated"}]
      880 LOADK                            R68 K84 ["Dropdown"]
      881 LOADK                            R69 K66 ["UnsubscribeFromAll"]
      882 NAMECALL                         R66 R2 K86 ["getText"]
      884 CALL                             R66 3 1
      885 SETTABLEKS                       R66 R65 K92 ["label"]
      887 LOADN                            R66 1
      888 SETTABLEKS                       R66 R65 K93 ["BackgroundTransparency"]
      890 GETUPVAL                         R68 6
      891 GETTABLEKS                       R67 R68 K80 ["None"]
      893 JUMPIFEQ                         R18 R67 ; [+2]
      895 LOADB                            R66 0 +1
      896 LOADB                            R66 1
      897 SETTABLEKS                       R66 R65 K94 ["isChecked"]
      899 GETUPVAL                         R69 21
      900 GETTABLEKS                       R68 R69 K78 ["Enums"]
      902 GETTABLEKS                       R67 R68 K97 ["InputSize"]
      904 GETTABLEKS                       R66 R67 K98 ["XSmall"]
      906 SETTABLEKS                       R66 R65 K95 ["size"]
      908 NEWCLOSURE                       R66 P23
      909 CAPTURE                          UPVAL U6
      910 CAPTURE                          VAL R18
      911 CAPTURE                          VAL R19
      912 CAPTURE                          VAL R22
      913 CAPTURE                          VAL R24
      914 CAPTURE                          VAL R23
      915 SETTABLEKS                       R66 R65 K71 ["onActivated"]
      917 CALL                             R63 2 1
      918 SETTABLEKS                       R63 R62 K90 ["Checkbox"]
      920 CALL                             R59 3 1
      921 JUMP                             ; [+1]
      922 LOADNIL                          R59
      923 SETTABLEKS                       R59 R58 K66 ["UnsubscribeFromAll"]
      925 GETUPVAL                         R60 3
      926 GETTABLEKS                       R59 R60 K18 ["createElement"]
      928 GETUPVAL                         R61 21
      929 GETTABLEKS                       R60 R61 K69 ["View"]
      931 DUPTABLE                         R61 K111 [{"tag", "LayoutOrder"}]
      932 LOADK                            R62 K112 ["size-3000-100"]
      933 SETTABLEKS                       R62 R61 K70 ["tag"]
      935 GETUPVAL                         R63 14
      936 JUMPIFNOT                        R63 ; [+6]
      937 GETUPVAL                         R64 11
      938 GETTABLEKS                       R63 R64 K51 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      940 JUMPIFNOT                        R63 ; [+2]
      941 LOADN                            R62 8
      942 JUMP                             ; [+1]
      943 LOADN                            R62 5
      944 SETTABLEKS                       R62 R61 K35 ["LayoutOrder"]
      946 CALL                             R59 2 1
      947 SETTABLEKS                       R59 R58 K67 ["PaddingLabel"]
      949 SETTABLEKS                       R58 R57 K113 ["DropdownItems"]
      951 LOADK                            R58 K114 ["SettingsIcon"]
      952 SETTABLEKS                       R58 R57 K115 ["ImageTag"]
      954 GETUPVAL                         R59 3
      955 GETTABLEKS                       R58 R59 K27 ["Tag"]
      957 LOADK                            R59 K84 ["Dropdown"]
      958 SETTABLE                         R59 R57 R58
      959 NEWTABLE                         R58 0 0
      961 CALL                             R55 3 1
      962 SETTABLEKS                       R55 R54 K49 ["Settings"]
      964 CALL                             R51 3 1
      965 SETTABLEKS                       R51 R50 K40 ["SettingsWrapper"]
      967 CALL                             R47 3 1
      968 SETTABLEKS                       R47 R46 K37 ["ButtonGroup"]
      970 CALL                             R43 3 1
      971 JUMP                             ; [+1]
      972 LOADNIL                          R43
      973 SETTABLEKS                       R43 R42 K29 ["Header"]
      975 GETUPVAL                         R44 3
      976 GETTABLEKS                       R43 R44 K18 ["createElement"]
      978 LOADK                            R44 K19 ["Frame"]
      979 NEWTABLE                         R45 2 0
      981 LOADN                            R46 1
      982 SETTABLEKS                       R46 R45 K35 ["LayoutOrder"]
      984 GETUPVAL                         R47 3
      985 GETTABLEKS                       R46 R47 K27 ["Tag"]
      987 LOADK                            R47 K116 ["Component-Divider"]
      988 SETTABLE                         R47 R45 R46
      989 CALL                             R43 2 1
      990 SETTABLEKS                       R43 R42 K30 ["Divider"]
      992 JUMPIF                           R38 ; [+66]
      993 GETUPVAL                         R44 3
      994 GETTABLEKS                       R43 R44 K18 ["createElement"]
      996 LOADK                            R44 K19 ["Frame"]
      997 DUPTABLE                         R45 K36 [{"LayoutOrder"}]
      998 LOADN                            R46 2
      999 SETTABLEKS                       R46 R45 K35 ["LayoutOrder"]
     1001 DUPTABLE                         R46 K118 [{"AnnotationScrollingFrame"}]
     1002 GETUPVAL                         R48 3
     1003 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1005 LOADK                            R48 K119 ["ScrollingFrame"]
     1006 NEWTABLE                         R49 16 0
     1008 GETIMPORT                        R50 K120 [UDim2.new]
     1010 LOADN                            R51 1
     1011 LOADN                            R52 240
     1012 LOADN                            R53 0
     1013 MOVE                             R54 R35
     1014 CALL                             R50 4 1
     1015 SETTABLEKS                       R50 R49 K121 ["CanvasSize"]
     1017 GETUPVAL                         R52 3
     1018 GETTABLEKS                       R51 R52 K25 ["Change"]
     1020 GETTABLEKS                       R50 R51 K122 ["CanvasPosition"]
     1022 NEWCLOSURE                       R51 P24
     1023 CAPTURE                          VAL R8
     1024 CAPTURE                          VAL R9
     1025 SETTABLE                         R51 R49 R50
     1026 LOADN                            R50 0
     1027 SETTABLEKS                       R50 R49 K123 ["BorderSizePixel"]
     1029 GETIMPORT                        R50 K126 [Enum.ScrollingDirection.Y]
     1031 SETTABLEKS                       R50 R49 K124 ["ScrollingDirection"]
     1033 GETIMPORT                        R50 K129 [Enum.ScrollBarInset.Always]
     1035 SETTABLEKS                       R50 R49 K130 ["VerticalScrollBarInset"]
     1037 LOADB                            R50 0
     1038 SETTABLEKS                       R50 R49 K131 ["SmoothScroll"]
     1040 LOADK                            R50 K132 [0.5]
     1041 SETTABLEKS                       R50 R49 K133 ["ScrollRate"]
     1043 GETIMPORT                        R50 K135 [UDim2.fromScale]
     1045 LOADN                            R51 1
     1046 LOADN                            R52 1
     1047 CALL                             R50 2 1
     1048 SETTABLEKS                       R50 R49 K4 ["Size"]
     1050 LOADN                            R50 1
     1051 SETTABLEKS                       R50 R49 K93 ["BackgroundTransparency"]
     1053 MOVE                             R50 R34
     1054 CALL                             R47 3 1
     1055 SETTABLEKS                       R47 R46 K117 ["AnnotationScrollingFrame"]
     1057 CALL                             R43 3 1
     1058 JUMP                             ; [+1]
     1059 LOADNIL                          R43
     1060 SETTABLEKS                       R43 R42 K31 ["AnnotationList"]
     1062 JUMPIFNOT                        R38 ; [+147]
     1063 GETUPVAL                         R44 3
     1064 GETTABLEKS                       R43 R44 K18 ["createElement"]
     1066 LOADK                            R44 K19 ["Frame"]
     1067 NEWTABLE                         R45 2 0
     1069 LOADN                            R46 3
     1070 SETTABLEKS                       R46 R45 K35 ["LayoutOrder"]
     1072 GETUPVAL                         R47 3
     1073 GETTABLEKS                       R46 R47 K27 ["Tag"]
     1075 GETUPVAL                         R47 23
     1076 LOADK                            R48 K136 ["X-ColumnM X-Transparent X-Middle X-Center"]
     1077 LENGTH                           R50 R10
     1078 JUMPIFEQKN                       R50 K17 [0] ; [+3]
     1080 LOADK                            R49 K137 ["HeaderOffset"]
     1081 JUMP                             ; [+1]
     1082 LOADNIL                          R49
     1083 CALL                             R47 2 1
     1084 SETTABLE                         R47 R45 R46
     1085 DUPTABLE                         R46 K142 [{"AnnotationIcon", "NoCommentsYet", "ToAdd", "AddButton", "EmptyStateButton"}]
     1086 GETUPVAL                         R48 3
     1087 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1089 LOADK                            R48 K47 ["ImageLabel"]
     1090 NEWTABLE                         R49 2 0
     1092 LOADN                            R50 0
     1093 SETTABLEKS                       R50 R49 K35 ["LayoutOrder"]
     1095 GETUPVAL                         R51 3
     1096 GETTABLEKS                       R50 R51 K27 ["Tag"]
     1098 LOADK                            R51 K143 ["X-Transparent"]
     1099 SETTABLE                         R51 R49 R50
     1100 CALL                             R47 2 1
     1101 SETTABLEKS                       R47 R46 K138 ["AnnotationIcon"]
     1103 GETUPVAL                         R48 3
     1104 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1106 LOADK                            R48 K83 ["TextLabel"]
     1107 NEWTABLE                         R49 4 0
     1109 LOADN                            R50 1
     1110 SETTABLEKS                       R50 R49 K35 ["LayoutOrder"]
     1112 JUMPIFNOT                        R31 ; [+6]
     1113 LOADK                            R52 K144 ["Plugin"]
     1114 LOADK                            R53 K145 ["NoResolvedAnnotations"]
     1115 NAMECALL                         R50 R2 K86 ["getText"]
     1117 CALL                             R50 3 1
     1118 JUMP                             ; [+19]
     1119 JUMPIFNOT                        R32 ; [+6]
     1120 LOADK                            R52 K144 ["Plugin"]
     1121 LOADK                            R53 K146 ["NoCommentsForUser"]
     1122 NAMECALL                         R50 R2 K86 ["getText"]
     1124 CALL                             R50 3 1
     1125 JUMP                             ; [+12]
     1126 JUMPIFNOT                        R33 ; [+6]
     1127 LOADK                            R52 K144 ["Plugin"]
     1128 LOADK                            R53 K147 ["NoMatching"]
     1129 NAMECALL                         R50 R2 K86 ["getText"]
     1131 CALL                             R50 3 1
     1132 JUMP                             ; [+5]
     1133 LOADK                            R52 K144 ["Plugin"]
     1134 LOADK                            R53 K148 ["NoAnnotations"]
     1135 NAMECALL                         R50 R2 K86 ["getText"]
     1137 CALL                             R50 3 1
     1138 SETTABLEKS                       R50 R49 K81 ["Text"]
     1140 GETUPVAL                         R51 3
     1141 GETTABLEKS                       R50 R51 K27 ["Tag"]
     1143 LOADK                            R51 K143 ["X-Transparent"]
     1144 SETTABLE                         R51 R49 R50
     1145 CALL                             R47 2 1
     1146 SETTABLEKS                       R47 R46 K139 ["NoCommentsYet"]
     1148 JUMPIF                           R30 ; [+23]
     1149 GETUPVAL                         R48 3
     1150 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1152 LOADK                            R48 K83 ["TextLabel"]
     1153 NEWTABLE                         R49 4 0
     1155 LOADN                            R50 2
     1156 SETTABLEKS                       R50 R49 K35 ["LayoutOrder"]
     1158 LOADK                            R52 K144 ["Plugin"]
     1159 LOADK                            R53 K140 ["ToAdd"]
     1160 NAMECALL                         R50 R2 K86 ["getText"]
     1162 CALL                             R50 3 1
     1163 SETTABLEKS                       R50 R49 K81 ["Text"]
     1165 GETUPVAL                         R51 3
     1166 GETTABLEKS                       R50 R51 K27 ["Tag"]
     1168 LOADK                            R51 K143 ["X-Transparent"]
     1169 SETTABLE                         R51 R49 R50
     1170 CALL                             R47 2 1
     1171 JUMP                             ; [+1]
     1172 LOADNIL                          R47
     1173 SETTABLEKS                       R47 R46 K140 ["ToAdd"]
     1175 JUMPIF                           R30 ; [+27]
     1176 GETUPVAL                         R48 3
     1177 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1179 LOADK                            R48 K149 ["TextButton"]
     1180 NEWTABLE                         R49 4 0
     1182 LOADN                            R50 4
     1183 SETTABLEKS                       R50 R49 K35 ["LayoutOrder"]
     1185 LOADK                            R52 K150 ["AddAnnotation"]
     1186 LOADK                            R53 K151 ["AddComment"]
     1187 NAMECALL                         R50 R2 K86 ["getText"]
     1189 CALL                             R50 3 1
     1190 SETTABLEKS                       R50 R49 K81 ["Text"]
     1192 GETUPVAL                         R52 3
     1193 GETTABLEKS                       R51 R52 K43 ["Event"]
     1195 GETTABLEKS                       R50 R51 K44 ["Activated"]
     1197 NEWCLOSURE                       R51 P25
     1198 CAPTURE                          UPVAL U19
     1199 CAPTURE                          VAL R1
     1200 SETTABLE                         R51 R49 R50
     1201 CALL                             R47 2 1
     1202 JUMP                             ; [+1]
     1203 LOADNIL                          R47
     1204 SETTABLEKS                       R47 R46 K39 ["AddButton"]
     1206 SETTABLEKS                       R36 R46 K141 ["EmptyStateButton"]
     1208 CALL                             R43 3 1
     1209 JUMP                             ; [+1]
     1210 LOADNIL                          R43
     1211 SETTABLEKS                       R43 R42 K32 ["EmptyState"]
     1213 GETUPVAL                         R45 15
     1214 GETTABLEKS                       R44 R45 K152 ["ErrorInternalFailure"]
     1216 JUMPIFNOTEQ                      R26 R44 ; [+2]
     1218 JUMPIFNOT                        R12 ; [+6]
     1219 GETUPVAL                         R45 15
     1220 GETTABLEKS                       R44 R45 K152 ["ErrorInternalFailure"]
     1222 JUMPIFNOTEQ                      R28 R44 ; [+66]
     1224 JUMPIFNOT                        R12 ; [+64]
     1225 GETUPVAL                         R44 3
     1226 GETTABLEKS                       R43 R44 K18 ["createElement"]
     1228 GETUPVAL                         R44 24
     1229 DUPTABLE                         R45 K153 [{"LayoutOrder", "tag"}]
     1230 LOADN                            R46 99
     1231 SETTABLEKS                       R46 R45 K35 ["LayoutOrder"]
     1233 LOADK                            R46 K154 ["size-full-0 auto-y bg-action-subtle padding-small"]
     1234 SETTABLEKS                       R46 R45 K70 ["tag"]
     1236 DUPTABLE                         R46 K156 [{"ErrorAlert"}]
     1237 GETUPVAL                         R48 3
     1238 GETTABLEKS                       R47 R48 K18 ["createElement"]
     1240 GETUPVAL                         R48 25
     1241 DUPTABLE                         R49 K160 [{"Message", "IsPopup", "ShowClose"}]
     1242 LOADK                            R52 K161 ["Error"]
     1243 LOADK                            R53 K162 ["LoadingFailed"]
     1244 NAMECALL                         R50 R2 K86 ["getText"]
     1246 CALL                             R50 3 1
     1247 SETTABLEKS                       R50 R49 K157 ["Message"]
     1249 LOADB                            R50 1
     1250 SETTABLEKS                       R50 R49 K158 ["IsPopup"]
     1252 LOADB                            R50 0
     1253 SETTABLEKS                       R50 R49 K159 ["ShowClose"]
     1255 DUPTABLE                         R50 K164 [{"TryAgain"}]
     1256 GETUPVAL                         R52 3
     1257 GETTABLEKS                       R51 R52 K18 ["createElement"]
     1259 LOADK                            R52 K149 ["TextButton"]
     1260 NEWTABLE                         R53 4 0
     1262 LOADN                            R54 99
     1263 SETTABLEKS                       R54 R53 K35 ["LayoutOrder"]
     1265 LOADK                            R56 K161 ["Error"]
     1266 LOADK                            R57 K163 ["TryAgain"]
     1267 NAMECALL                         R54 R2 K86 ["getText"]
     1269 CALL                             R54 3 1
     1270 SETTABLEKS                       R54 R53 K81 ["Text"]
     1272 GETUPVAL                         R56 3
     1273 GETTABLEKS                       R55 R56 K43 ["Event"]
     1275 GETTABLEKS                       R54 R55 K44 ["Activated"]
     1277 NEWCLOSURE                       R55 P26
     1278 CAPTURE                          UPVAL U22
     1279 CAPTURE                          VAL R1
     1280 SETTABLE                         R55 R53 R54
     1281 CALL                             R51 2 1
     1282 SETTABLEKS                       R51 R50 K163 ["TryAgain"]
     1284 CALL                             R47 3 1
     1285 SETTABLEKS                       R47 R46 K155 ["ErrorAlert"]
     1287 CALL                             R43 3 1
     1288 JUMP                             ; [+1]
     1289 LOADNIL                          R43
     1290 SETTABLEKS                       R43 R42 K33 ["ErrorWrapper"]
     1292 CALL                             R39 3 -1
     1293 RETURN                           R39 -1

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
      178 GETTABLEKS                       R28 R0 K10 ["Src"]
      180 GETTABLEKS                       R27 R28 K11 ["Util"]
      182 GETTABLEKS                       R26 R27 K42 ["getIsAnnotationsNotificationsEnabled"]
      184 CALL                             R25 1 1
      185 MOVE                             R26 R25
      186 CALL                             R26 0 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R29 R0 K10 ["Src"]
      191 GETTABLEKS                       R28 R29 K43 ["Types"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R31 R0 K10 ["Src"]
      198 GETTABLEKS                       R30 R31 K28 ["Contexts"]
      200 GETTABLEKS                       R29 R30 K44 ["AnnotationsServiceContext"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K46 [game]
      205 LOADK                            R31 K47 ["AnnotationsService"]
      206 NAMECALL                         R29 R29 K48 ["GetService"]
      208 CALL                             R29 2 1
      209 GETIMPORT                        R30 K46 [game]
      211 LOADK                            R32 K49 ["StudioService"]
      212 NAMECALL                         R30 R30 K48 ["GetService"]
      214 CALL                             R30 2 1
      215 DUPCLOSURE                       R31 K50 [PROTO_1]
      216 CAPTURE                          VAL R3
      217 DUPCLOSURE                       R32 K51 [PROTO_42]
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R29
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R30
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R26
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R21
      244 RETURN                           R32 1
