PROTO_0:
        0 LOADK                            R5 K0 ["ResolveAnnotation"]
        1 GETTABLEKS                       R6 R1 K1 ["Name"]
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R0 K2 ["Invoke"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["BeginAddAnnotation"]
        1 NAMECALL                         R1 R0 K1 ["Invoke"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["EndAddAnnotation"]
        1 NAMECALL                         R1 R0 K1 ["Invoke"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["ZoomTo"]
        1 GETTABLEKS                       R5 R1 K1 ["Name"]
        3 NAMECALL                         R2 R0 K2 ["Invoke"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["DeleteAnnotation"]
        1 GETTABLEKS                       R5 R1 K1 ["Name"]
        3 NAMECALL                         R2 R0 K2 ["Invoke"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["SetVisibility"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["Invoke"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["SelectAnnotation"]
        1 GETTABLEKS                       R5 R1 K1 ["Name"]
        3 NAMECALL                         R2 R0 K2 ["Invoke"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R5 K0 ["SyncEditAnnotation"]
        1 GETTABLEKS                       R6 R1 K1 ["Name"]
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R0 K2 ["Invoke"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["RetryLoadAnnotations"]
        1 NAMECALL                         R1 R0 K1 ["Invoke"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADK                            R4 K1 ["OpenReportThread"]
        6 GETTABLEKS                       R5 R1 K2 ["ChannelId"]
        8 NAMECALL                         R2 R0 K3 ["Invoke"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R5 K0 ["SyncStandaloneAnnotation"]
        1 NAMECALL                         R6 R1 K1 ["GetStringUniqueId"]
        3 CALL                             R6 1 1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R0 K2 ["Invoke"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["syncStandaloneAnnotation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K2 [{"HeaderInfo"}]
        6 DUPTABLE                         R4 K5 [{"HeaderText", "AdorneeClass"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K6 ["Adornee"]
       10 GETTABLEKS                       R5 R5 K7 ["Name"]
       12 SETTABLEKS                       R5 R4 K3 ["HeaderText"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["Adornee"]
       17 GETTABLEKS                       R5 R5 K8 ["ClassName"]
       19 SETTABLEKS                       R5 R4 K4 ["AdorneeClass"]
       21 SETTABLEKS                       R4 R3 K1 ["HeaderInfo"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["syncStandaloneAnnotation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K2 [{"HeaderInfo"}]
        6 DUPTABLE                         R4 K5 [{"HeaderText", "AdorneeClass"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K6 ["Adornee"]
       10 GETTABLEKS                       R5 R5 K7 ["Name"]
       12 SETTABLEKS                       R5 R4 K3 ["HeaderText"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["Adornee"]
       17 GETTABLEKS                       R5 R5 K8 ["ClassName"]
       19 SETTABLEKS                       R5 R4 K4 ["AdorneeClass"]
       21 SETTABLEKS                       R4 R3 K1 ["HeaderInfo"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Adornee"]
        7 JUMPIFNOT                        R0 ; [+39]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["syncStandaloneAnnotation"]
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 1
       13 DUPTABLE                         R3 K4 [{"HeaderInfo"}]
       14 DUPTABLE                         R4 K7 [{"HeaderText", "AdorneeClass"}]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["Adornee"]
       18 GETTABLEKS                       R5 R5 K8 ["Name"]
       20 SETTABLEKS                       R5 R4 K5 ["HeaderText"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K1 ["Adornee"]
       25 GETTABLEKS                       R5 R5 K9 ["ClassName"]
       27 SETTABLEKS                       R5 R4 K6 ["AdorneeClass"]
       29 SETTABLEKS                       R4 R3 K3 ["HeaderInfo"]
       31 CALL                             R0 3 0
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K1 ["Adornee"]
       35 LOADK                            R2 K8 ["Name"]
       36 NAMECALL                         R0 R0 K10 ["GetPropertyChangedSignal"]
       38 CALL                             R0 2 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U1
       43 NAMECALL                         R0 R0 K11 ["Connect"]
       45 CALL                             R0 2 1
       46 SETUPVAL                         R0 0
       47 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["syncStandaloneAnnotation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K2 [{"ReplyCount"}]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["ReplyCount"]
        9 SETTABLEKS                       R4 R3 K1 ["ReplyCount"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["syncStandaloneAnnotation"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K2 [{"RequestInfo"}]
        6 DUPTABLE                         R6 K6 [{"Id", "Status", "Type"}]
        7 SETTABLEKS                       R0 R6 K3 ["Id"]
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R7 R7 K7 ["InProgress"]
       12 SETTABLEKS                       R7 R6 K4 ["Status"]
       14 SETTABLEKS                       R1 R6 K5 ["Type"]
       16 SETTABLEKS                       R6 R5 K1 ["RequestInfo"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["syncStandaloneAnnotation"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R6 K2 [{"RequestInfo"}]
        6 DUPTABLE                         R7 K6 [{"Id", "Status", "Type"}]
        7 SETTABLEKS                       R0 R7 K3 ["Id"]
        9 GETUPVAL                         R8 3
       10 MOVE                             R9 R2
       11 MOVE                             R10 R1
       12 CALL                             R8 2 1
       13 SETTABLEKS                       R8 R7 K4 ["Status"]
       15 SETTABLEKS                       R1 R7 K5 ["Type"]
       17 SETTABLEKS                       R7 R6 K1 ["RequestInfo"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnnotationDeleted"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R3 R3 K1 ["GetStringUniqueId"]
        5 CALL                             R3 1 -1
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["Parent"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Workplace annotations must be the children of another annotation or an instance."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K15 [{"UniqueId", "AuthorId", "CreationTimeUnix", "LastModifiedTimeUnix", "Contents", "Resolved", "ParentId", "HeaderInfo", "ReplyCount", "TaggedUsers", "ChannelId"}]
        9 NAMECALL                         R3 R1 K16 ["GetStringUniqueId"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K4 ["UniqueId"]
       14 GETTABLEKS                       R3 R1 K5 ["AuthorId"]
       16 SETTABLEKS                       R3 R2 K5 ["AuthorId"]
       18 GETTABLEKS                       R3 R1 K6 ["CreationTimeUnix"]
       20 SETTABLEKS                       R3 R2 K6 ["CreationTimeUnix"]
       22 GETTABLEKS                       R3 R1 K7 ["LastModifiedTimeUnix"]
       24 SETTABLEKS                       R3 R2 K7 ["LastModifiedTimeUnix"]
       26 GETTABLEKS                       R3 R1 K8 ["Contents"]
       28 SETTABLEKS                       R3 R2 K8 ["Contents"]
       30 GETTABLEKS                       R3 R1 K9 ["Resolved"]
       32 SETTABLEKS                       R3 R2 K9 ["Resolved"]
       34 GETTABLEKS                       R4 R1 K0 ["Parent"]
       36 JUMPIFNOT                        R4 ; [+13]
       37 GETTABLEKS                       R4 R1 K0 ["Parent"]
       39 LOADK                            R6 K17 ["Annotation"]
       40 NAMECALL                         R4 R4 K18 ["IsA"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+6]
       44 GETTABLEKS                       R3 R1 K0 ["Parent"]
       46 NAMECALL                         R3 R3 K16 ["GetStringUniqueId"]
       48 CALL                             R3 1 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K10 ["ParentId"]
       53 GETTABLEKS                       R4 R1 K19 ["Adornee"]
       55 JUMPIFNOT                        R4 ; [+14]
       56 DUPTABLE                         R3 K22 [{"HeaderText", "AdorneeClass"}]
       57 GETTABLEKS                       R4 R1 K19 ["Adornee"]
       59 GETTABLEKS                       R4 R4 K23 ["Name"]
       61 SETTABLEKS                       R4 R3 K20 ["HeaderText"]
       63 GETTABLEKS                       R4 R1 K19 ["Adornee"]
       65 GETTABLEKS                       R4 R4 K24 ["ClassName"]
       67 SETTABLEKS                       R4 R3 K21 ["AdorneeClass"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R3
       71 SETTABLEKS                       R3 R2 K11 ["HeaderInfo"]
       73 GETTABLEKS                       R3 R1 K12 ["ReplyCount"]
       75 SETTABLEKS                       R3 R2 K12 ["ReplyCount"]
       77 GETTABLEKS                       R3 R1 K13 ["TaggedUsers"]
       79 SETTABLEKS                       R3 R2 K13 ["TaggedUsers"]
       81 GETTABLEKS                       R3 R1 K14 ["ChannelId"]
       83 SETTABLEKS                       R3 R2 K14 ["ChannelId"]
       85 GETTABLEKS                       R3 R1 K19 ["Adornee"]
       87 JUMPIFNOT                        R3 ; [+26]
       88 GETTABLEKS                       R3 R1 K19 ["Adornee"]
       90 LOADK                            R5 K23 ["Name"]
       91 NAMECALL                         R3 R3 K25 ["GetPropertyChangedSignal"]
       93 CALL                             R3 2 1
       94 NEWCLOSURE                       R5 P0
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R1
       98 NAMECALL                         R3 R3 K26 ["Connect"]
      100 CALL                             R3 2 1
      101 LOADK                            R6 K19 ["Adornee"]
      102 NAMECALL                         R4 R1 K25 ["GetPropertyChangedSignal"]
      104 CALL                             R4 2 1
      105 NEWCLOSURE                       R6 P1
      106 CAPTURE                          REF R3
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          VAL R0
      110 NAMECALL                         R4 R4 K26 ["Connect"]
      112 CALL                             R4 2 0
      113 CLOSEUPVALS                      R3
      114 GETTABLEKS                       R3 R1 K12 ["ReplyCount"]
      116 JUMPIFNOT                        R3 ; [+11]
      117 LOADK                            R5 K12 ["ReplyCount"]
      118 NAMECALL                         R3 R1 K25 ["GetPropertyChangedSignal"]
      120 CALL                             R3 2 1
      121 NEWCLOSURE                       R5 P2
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 NAMECALL                         R3 R3 K26 ["Connect"]
      127 CALL                             R3 2 0
      128 GETTABLEKS                       R4 R1 K0 ["Parent"]
      130 JUMPIFNOT                        R4 ; [+10]
      131 GETTABLEKS                       R4 R1 K0 ["Parent"]
      133 LOADK                            R6 K17 ["Annotation"]
      134 NAMECALL                         R4 R4 K18 ["IsA"]
      136 CALL                             R4 2 1
      137 JUMPIFNOT                        R4 ; [+3]
      138 GETTABLEKS                       R3 R1 K0 ["Parent"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R3
      142 OR                               R4 R3 R1
      143 GETUPVAL                         R5 1
      144 MOVE                             R6 R4
      145 CALL                             R5 1 1
      146 JUMPIF                           R3 ; [+3]
      147 SETTABLEKS                       R5 R2 K27 ["TaggedUsersInThread"]
      149 JUMP                             ; [+9]
      150 GETUPVAL                         R6 0
      151 GETTABLEKS                       R6 R6 K28 ["syncStandaloneAnnotation"]
      153 MOVE                             R7 R0
      154 MOVE                             R8 R3
      155 DUPTABLE                         R9 K29 [{"TaggedUsersInThread"}]
      156 SETTABLEKS                       R5 R9 K27 ["TaggedUsersInThread"]
      158 CALL                             R6 3 0
      159 GETTABLEKS                       R6 R1 K13 ["TaggedUsers"]
      161 JUMPIFEQKNIL                     R6 ; [+13]
      163 LOADK                            R8 K13 ["TaggedUsers"]
      164 NAMECALL                         R6 R1 K25 ["GetPropertyChangedSignal"]
      166 CALL                             R6 2 1
      167 NEWCLOSURE                       R8 P3
      168 CAPTURE                          UPVAL U2
      169 CAPTURE                          VAL R1
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          VAL R0
      172 NAMECALL                         R6 R6 K26 ["Connect"]
      174 CALL                             R6 2 0
      175 NAMECALL                         R6 R1 K30 ["GetChildren"]
      177 CALL                             R6 1 3
      178 FORGPREP                         R6
      179 GETTABLEKS                       R11 R10 K13 ["TaggedUsers"]
      181 JUMPIFEQKNIL                     R11 ; [+13]
      183 LOADK                            R13 K13 ["TaggedUsers"]
      184 NAMECALL                         R11 R10 K25 ["GetPropertyChangedSignal"]
      186 CALL                             R11 2 1
      187 NEWCLOSURE                       R13 P4
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          VAL R1
      190 CAPTURE                          UPVAL U0
      191 CAPTURE                          VAL R0
      192 NAMECALL                         R11 R11 K26 ["Connect"]
      194 CALL                             R11 2 0
      195 FORGLOOP                         R6 2 ; [-17]
      197 GETTABLEKS                       R6 R1 K31 ["RequestInitiated"]
      199 NEWCLOSURE                       R8 P5
      200 CAPTURE                          UPVAL U0
      201 CAPTURE                          VAL R0
      202 CAPTURE                          VAL R1
      203 CAPTURE                          UPVAL U4
      204 NAMECALL                         R6 R6 K26 ["Connect"]
      206 CALL                             R6 2 0
      207 GETTABLEKS                       R6 R1 K32 ["RequestCompleted"]
      209 NEWCLOSURE                       R8 P6
      210 CAPTURE                          UPVAL U0
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R1
      213 CAPTURE                          UPVAL U5
      214 NAMECALL                         R6 R6 K26 ["Connect"]
      216 CALL                             R6 2 0
      217 GETTABLEKS                       R6 R1 K33 ["Destroying"]
      219 NEWCLOSURE                       R8 P7
      220 CAPTURE                          VAL R0
      221 CAPTURE                          VAL R1
      222 NAMECALL                         R6 R6 K34 ["Once"]
      224 CALL                             R6 2 0
      225 LOADK                            R8 K35 ["CreateAnnotation"]
      226 MOVE                             R9 R2
      227 NAMECALL                         R6 R0 K36 ["Invoke"]
      229 CALL                             R6 3 0
      230 RETURN                           R0 0

PROTO_21:
        0 LOADK                            R4 K0 ["SelectionChanged"]
        1 JUMPIFNOT                        R1 ; [+4]
        2 NAMECALL                         R5 R1 K1 ["GetStringUniqueId"]
        4 CALL                             R5 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R5
        7 NAMECALL                         R2 R0 K2 ["Invoke"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_22:
        0 LOADK                            R5 K0 ["ResolveAnnotation"]
        1 NAMECALL                         R6 R1 K1 ["GetStringUniqueId"]
        3 CALL                             R6 1 1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R0 K2 ["Invoke"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_23:
        0 LOADK                            R4 K0 ["DeleteAnnotation"]
        1 NAMECALL                         R5 R1 K1 ["GetStringUniqueId"]
        3 CALL                             R5 1 -1
        4 NAMECALL                         R2 R0 K2 ["Invoke"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_24:
        0 LOADK                            R4 K0 ["ZoomTo"]
        1 NAMECALL                         R5 R1 K1 ["GetStringUniqueId"]
        3 CALL                             R5 1 -1
        4 NAMECALL                         R2 R0 K2 ["Invoke"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADK                            R4 K1 ["OpenReportThread"]
        6 GETTABLEKS                       R5 R1 K2 ["ChannelId"]
        8 NAMECALL                         R2 R0 K3 ["Invoke"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_26:
        0 LOADK                            R6 K0 ["EditAnnotation"]
        1 GETTABLEKS                       R7 R1 K1 ["Name"]
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R0 K2 ["Invoke"]
        7 CALL                             R4 5 0
        8 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 DUPTABLE                         R2 K4 [{"CommentId", "ChannelId", "AuthorId"}]
        6 GETTABLEKS                       R3 R1 K5 ["Name"]
        8 SETTABLEKS                       R3 R2 K1 ["CommentId"]
       10 GETTABLEKS                       R3 R1 K2 ["ChannelId"]
       12 SETTABLEKS                       R3 R2 K2 ["ChannelId"]
       14 GETTABLEKS                       R3 R1 K3 ["AuthorId"]
       16 SETTABLEKS                       R3 R2 K3 ["AuthorId"]
       18 LOADK                            R5 K6 ["OpenReportComment"]
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R0 K7 ["Invoke"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Enums"]
       22 GETTABLEKS                       R3 R3 K11 ["AnnotationRequestType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Enums"]
       31 GETTABLEKS                       R4 R4 K12 ["AnnotationRequestStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Enums"]
       40 GETTABLEKS                       R5 R5 K13 ["UIRequestStatus"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["AnnotationRequestUtils"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K16 ["GetUIRequestStatus"]
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K9 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K17 ["TaggedUsersUtils"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R7 R7 K18 ["GetTaggedUsersInThread"]
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K9 ["Src"]
       69 GETTABLEKS                       R9 R9 K14 ["Util"]
       71 GETTABLEKS                       R9 R9 K17 ["TaggedUsersUtils"]
       73 CALL                             R8 1 1
       74 GETTABLEKS                       R8 R8 K19 ["UpdateAnnotationOrParentTaggedUsersInThread"]
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 GETTABLEKS                       R10 R10 K14 ["Util"]
       82 GETTABLEKS                       R10 R10 K17 ["TaggedUsersUtils"]
       84 CALL                             R9 1 1
       85 GETTABLEKS                       R9 R9 K20 ["UpdateAnnotationTaggedUsersInThread"]
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R11 R0 K9 ["Src"]
       91 GETTABLEKS                       R11 R11 K21 ["Types"]
       93 CALL                             R10 1 1
       94 NEWTABLE                         R11 16 0
       96 DUPCLOSURE                       R12 K22 [PROTO_0]
       97 SETTABLEKS                       R12 R11 K23 ["setAnnotationResolved"]
       99 DUPCLOSURE                       R12 K24 [PROTO_1]
      100 SETTABLEKS                       R12 R11 K25 ["beginAddAnnotation"]
      102 DUPCLOSURE                       R12 K26 [PROTO_2]
      103 SETTABLEKS                       R12 R11 K27 ["endAddAnnotation"]
      105 DUPCLOSURE                       R12 K28 [PROTO_3]
      106 SETTABLEKS                       R12 R11 K29 ["zoomTo"]
      108 DUPCLOSURE                       R12 K30 [PROTO_4]
      109 SETTABLEKS                       R12 R11 K31 ["deleteAnnotation"]
      111 DUPCLOSURE                       R12 K32 [PROTO_5]
      112 SETTABLEKS                       R12 R11 K33 ["setVisibility"]
      114 DUPCLOSURE                       R12 K34 [PROTO_6]
      115 SETTABLEKS                       R12 R11 K35 ["selectAnnotation"]
      117 DUPCLOSURE                       R12 K36 [PROTO_7]
      118 SETTABLEKS                       R12 R11 K37 ["syncEditAnnotation"]
      120 DUPCLOSURE                       R12 K38 [PROTO_8]
      121 SETTABLEKS                       R12 R11 K39 ["retryLoadAnnotations"]
      123 DUPCLOSURE                       R12 K40 [PROTO_9]
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R12 R11 K41 ["openReportThread"]
      127 NEWTABLE                         R12 8 0
      129 DUPCLOSURE                       R13 K42 [PROTO_10]
      130 SETTABLEKS                       R13 R12 K43 ["syncStandaloneAnnotation"]
      132 DUPCLOSURE                       R13 K44 [PROTO_20]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R13 R12 K45 ["createAnnotation"]
      141 DUPCLOSURE                       R13 K46 [PROTO_21]
      142 SETTABLEKS                       R13 R12 K47 ["selectionChanged"]
      144 DUPCLOSURE                       R13 K48 [PROTO_22]
      145 SETTABLEKS                       R13 R12 K23 ["setAnnotationResolved"]
      147 DUPCLOSURE                       R13 K49 [PROTO_23]
      148 SETTABLEKS                       R13 R12 K31 ["deleteAnnotation"]
      150 DUPCLOSURE                       R13 K50 [PROTO_24]
      151 SETTABLEKS                       R13 R12 K29 ["zoomTo"]
      153 DUPCLOSURE                       R13 K51 [PROTO_25]
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R13 R12 K41 ["openReportThread"]
      157 NEWTABLE                         R13 2 0
      159 DUPCLOSURE                       R14 K52 [PROTO_26]
      160 SETTABLEKS                       R14 R13 K53 ["editAnnotation"]
      162 DUPCLOSURE                       R14 K54 [PROTO_27]
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R14 R13 K55 ["openReportComment"]
      166 DUPTABLE                         R14 K59 [{"Standalone", "Edit", "Shared"}]
      167 SETTABLEKS                       R11 R14 K56 ["Standalone"]
      169 SETTABLEKS                       R12 R14 K57 ["Edit"]
      171 SETTABLEKS                       R13 R14 K58 ["Shared"]
      173 RETURN                           R14 1
