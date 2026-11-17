PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetPropertyChangedSignal"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetAttributeChangedSignal"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetAttribute"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetRequests"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetChildren"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetStringUniqueId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["SetAttribute"]
        5 CALL                             R3 3 -1
        6 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K3 ["BindableEvent"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 DUPTABLE                         R4 K39 [{["GetPropertyChangedSignal"], ["GetAttributeChangedSignal"], ["GetAttribute"], ["GetRequests"], ["GetChildren"], ["Destroy"], ["GetStringUniqueId"], ["GetAbsolutePosition"], ["SetAdorneeOffsetFromAbsolutePosition"], ["SetAttribute"], ["ChildAdded"], ["ChildRemoved"], ["AncestryChanged"], ["Parent"], ["Name"], ["AuthorId"] = 1234, ["AuthorColor3"], ["Contents"], ["TaggedUsers"] = "", ["Resolved"] = False, ["CreationTimeUnix"] = 0, ["LastModifiedTimeUnix"] = 0, ["ChannelId"] = "TestChannel", ["LoadingReplies"] = False, ["ReplyCount"] = 0, ["RequestInitiated"], ["RequestCompleted"], ["_requestInitiated"], ["_requestCompleted"], ["_inner"]}]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K40 ["fn"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R3
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R5 R4 K4 ["GetPropertyChangedSignal"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K40 ["fn"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R3
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R5 R4 K5 ["GetAttributeChangedSignal"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K40 ["fn"]
       31 NEWCLOSURE                       R6 P2
       32 CAPTURE                          VAL R3
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K6 ["GetAttribute"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K40 ["fn"]
       39 NEWCLOSURE                       R6 P3
       40 CAPTURE                          VAL R3
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R5 R4 K7 ["GetRequests"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K40 ["fn"]
       47 NEWCLOSURE                       R6 P4
       48 CAPTURE                          VAL R3
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K8 ["GetChildren"]
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K40 ["fn"]
       55 NEWCLOSURE                       R6 P5
       56 CAPTURE                          VAL R3
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K9 ["Destroy"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K40 ["fn"]
       63 NEWCLOSURE                       R6 P6
       64 CAPTURE                          VAL R3
       65 CALL                             R5 1 1
       66 SETTABLEKS                       R5 R4 K10 ["GetStringUniqueId"]
       68 GETUPVAL                         R5 1
       69 GETTABLEKS                       R5 R5 K40 ["fn"]
       71 GETTABLEKS                       R6 R3 K11 ["GetAbsolutePosition"]
       73 CALL                             R5 1 1
       74 SETTABLEKS                       R5 R4 K11 ["GetAbsolutePosition"]
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R5 R5 K40 ["fn"]
       79 GETTABLEKS                       R6 R3 K12 ["SetAdorneeOffsetFromAbsolutePosition"]
       81 CALL                             R5 1 1
       82 SETTABLEKS                       R5 R4 K12 ["SetAdorneeOffsetFromAbsolutePosition"]
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K40 ["fn"]
       87 NEWCLOSURE                       R6 P7
       88 CAPTURE                          VAL R3
       89 CALL                             R5 1 1
       90 SETTABLEKS                       R5 R4 K13 ["SetAttribute"]
       92 GETTABLEKS                       R5 R3 K14 ["ChildAdded"]
       94 SETTABLEKS                       R5 R4 K14 ["ChildAdded"]
       96 GETTABLEKS                       R5 R3 K15 ["ChildRemoved"]
       98 SETTABLEKS                       R5 R4 K15 ["ChildRemoved"]
      100 GETTABLEKS                       R5 R3 K16 ["AncestryChanged"]
      102 SETTABLEKS                       R5 R4 K16 ["AncestryChanged"]
      104 GETTABLEKS                       R5 R3 K17 ["Parent"]
      106 SETTABLEKS                       R5 R4 K17 ["Parent"]
      108 NAMECALL                         R5 R3 K10 ["GetStringUniqueId"]
      110 CALL                             R5 1 1
      111 SETTABLEKS                       R5 R4 K18 ["Name"]
      113 GETIMPORT                        R5 K42 [Color3.new]
      115 LOADN                            R6 0
      116 LOADN                            R7 0
      117 LOADN                            R8 0
      118 CALL                             R5 3 1
      119 SETTABLEKS                       R5 R4 K21 ["AuthorColor3"]
      121 SETTABLEKS                       R0 R4 K22 ["Contents"]
      123 GETTABLEKS                       R5 R1 K43 ["Event"]
      125 SETTABLEKS                       R5 R4 K34 ["RequestInitiated"]
      127 GETTABLEKS                       R5 R2 K43 ["Event"]
      129 SETTABLEKS                       R5 R4 K35 ["RequestCompleted"]
      131 SETTABLEKS                       R1 R4 K36 ["_requestInitiated"]
      133 SETTABLEKS                       R2 R4 K37 ["_requestCompleted"]
      135 SETTABLEKS                       R3 R4 K38 ["_inner"]
      137 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["tests"]
       24 GETTABLEKS                       R4 R4 K12 ["createTestAnnotation"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_8]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
