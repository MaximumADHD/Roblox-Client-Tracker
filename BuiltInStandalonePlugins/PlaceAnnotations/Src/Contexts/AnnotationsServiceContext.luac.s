PROTO_0:
        0 DUPTABLE                         R1 K9 [{"AnnotationThreads", "AnnotationAddedEvent", "AnnotationDeletedEvent", "AnnotationResolvedEvent", "AnnotationEditedEvent", "Mode", "Mock", "PlacePreferences", "ChannelPreferences"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["AnnotationThreads"]
        5 GETIMPORT                        R2 K12 [Instance.new]
        7 LOADK                            R3 K13 ["BindableEvent"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["AnnotationAddedEvent"]
       11 GETIMPORT                        R2 K12 [Instance.new]
       13 LOADK                            R3 K13 ["BindableEvent"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K2 ["AnnotationDeletedEvent"]
       17 GETIMPORT                        R2 K12 [Instance.new]
       19 LOADK                            R3 K13 ["BindableEvent"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K3 ["AnnotationResolvedEvent"]
       23 GETIMPORT                        R2 K12 [Instance.new]
       25 LOADK                            R3 K13 ["BindableEvent"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K4 ["AnnotationEditedEvent"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K14 ["None"]
       32 SETTABLEKS                       R2 R1 K5 ["Mode"]
       34 SETTABLEKS                       R0 R1 K6 ["Mock"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K7 ["PlacePreferences"]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K8 ["ChannelPreferences"]
       44 GETUPVAL                         R4 1
       45 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       47 MOVE                             R3 R1
       48 GETIMPORT                        R2 K16 [setmetatable]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R3 R1 K1 ["AnnotationAddedEvent"]
       53 GETTABLEKS                       R2 R3 K17 ["Event"]
       55 SETTABLEKS                       R2 R1 K18 ["AnnotationAdded"]
       57 GETTABLEKS                       R3 R1 K2 ["AnnotationDeletedEvent"]
       59 GETTABLEKS                       R2 R3 K17 ["Event"]
       61 SETTABLEKS                       R2 R1 K19 ["AnnotationDeleted"]
       63 GETTABLEKS                       R3 R1 K3 ["AnnotationResolvedEvent"]
       65 GETTABLEKS                       R2 R3 K17 ["Event"]
       67 SETTABLEKS                       R2 R1 K20 ["AnnotationResolved"]
       69 GETTABLEKS                       R3 R1 K4 ["AnnotationEditedEvent"]
       71 GETTABLEKS                       R2 R3 K17 ["Event"]
       73 SETTABLEKS                       R2 R1 K21 ["AnnotationEdited"]
       75 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Mock"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K1 ["AnnotationThreads"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["AnnotationThreads"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetPropertyChangedSignal"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["FindFirstChild"]
        5 CALL                             R3 3 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 NAMECALL                         R4 R4 K0 ["LoadAnnotationReplies"]
        6 CALL                             R4 4 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETTABLEKS                       R4 R0 K1 ["PlacePreferences"]
        5 GETTABLE                         R3 R4 R1
        6 JUMPIF                           R3 ; [+3]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["All"]
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R3 K3 ["GetPlacePreference"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R4 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["PlacePreferences"]
        5 SETTABLE                         R3 R4 R1
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 MOVE                             R8 R3
       11 NAMECALL                         R4 R4 K2 ["CreateOrUpdatePlacePreference"]
       13 CALL                             R4 4 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETTABLEKS                       R4 R0 K1 ["PlacePreferences"]
        5 GETTABLE                         R3 R4 R2
        6 JUMPIF                           R3 ; [+3]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["All"]
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R3 K3 ["GetPlacePreferenceAsync"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R4 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["PlacePreferences"]
        5 SETTABLE                         R2 R4 R3
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 MOVE                             R8 R3
       11 NAMECALL                         R4 R4 K2 ["CreateOrUpdatePlacePreferenceAsync"]
       13 CALL                             R4 4 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R4 ; [+8]
        3 GETTABLEKS                       R5 R0 K1 ["ChannelPreferences"]
        5 GETTABLE                         R4 R5 R2
        6 JUMPIF                           R4 ; [+3]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["All"]
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 NAMECALL                         R4 R4 K3 ["GetChannelPreferenceAsync"]
       17 CALL                             R4 4 -1
       18 RETURN                           R4 -1

PROTO_12:
        0 GETTABLEKS                       R5 R0 K0 ["Mock"]
        2 JUMPIFNOT                        R5 ; [+4]
        3 GETTABLEKS                       R5 R0 K1 ["ChannelPreferences"]
        5 SETTABLE                         R4 R5 R2
        6 RETURN                           R0 0
        7 GETUPVAL                         R5 0
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 MOVE                             R9 R3
       11 MOVE                             R10 R4
       12 NAMECALL                         R5 R5 K2 ["CreateOrUpdateChannelPreferenceAsync"]
       14 CALL                             R5 5 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["ContextItem"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Enums"]
       24 GETTABLEKS                       R4 R5 K12 ["AnnotationEditingMode"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R7 K11 ["Enums"]
       33 GETTABLEKS                       R5 R6 K13 ["PlaceContentPreference"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R8 K11 ["Enums"]
       42 GETTABLEKS                       R6 R7 K14 ["AnnotationPlaceContentPreference"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Src"]
       49 GETTABLEKS                       R8 R9 K11 ["Enums"]
       51 GETTABLEKS                       R7 R8 K15 ["AnnotationChannelContentPreference"]
       53 CALL                             R6 1 1
       54 LOADK                            R9 K16 ["AnnotationsService"]
       55 NAMECALL                         R7 R2 K17 ["extend"]
       57 CALL                             R7 2 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Src"]
       62 GETTABLEKS                       R9 R10 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K20 [game]
       67 LOADK                            R11 K16 ["AnnotationsService"]
       68 NAMECALL                         R9 R9 K21 ["GetService"]
       70 CALL                             R9 2 1
       71 DUPCLOSURE                       R10 K22 [PROTO_0]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R10 R7 K23 ["new"]
       76 DUPCLOSURE                       R10 K24 [PROTO_1]
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R10 R7 K25 ["get"]
       80 DUPCLOSURE                       R10 K26 [PROTO_2]
       81 SETTABLEKS                       R10 R7 K27 ["SetTestThreads"]
       83 DUPCLOSURE                       R10 K28 [PROTO_3]
       84 SETTABLEKS                       R10 R7 K29 ["GetAnnotationThreads"]
       86 DUPCLOSURE                       R10 K30 [PROTO_4]
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R10 R7 K31 ["GetPropertyChangedSignal"]
       90 DUPCLOSURE                       R10 K32 [PROTO_5]
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R10 R7 K33 ["FindFirstChild"]
       94 DUPCLOSURE                       R10 K34 [PROTO_6]
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R10 R7 K35 ["LoadAnnotationReplies"]
       98 DUPCLOSURE                       R10 K36 [PROTO_7]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R10 R7 K37 ["GetPlacePreference"]
      103 DUPCLOSURE                       R10 K38 [PROTO_8]
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R10 R7 K39 ["CreateOrUpdatePlacePreference"]
      107 DUPCLOSURE                       R10 K40 [PROTO_9]
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R10 R7 K41 ["GetPlacePreferenceAsync"]
      112 DUPCLOSURE                       R10 K42 [PROTO_10]
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R10 R7 K43 ["CreateOrUpdatePlacePreferenceAsync"]
      116 DUPCLOSURE                       R10 K44 [PROTO_11]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R10 R7 K45 ["GetChannelPreferenceAsync"]
      121 DUPCLOSURE                       R10 K46 [PROTO_12]
      122 CAPTURE                          VAL R9
      123 SETTABLEKS                       R10 R7 K47 ["CreateOrUpdateChannelPreferenceAsync"]
      125 RETURN                           R7 1
