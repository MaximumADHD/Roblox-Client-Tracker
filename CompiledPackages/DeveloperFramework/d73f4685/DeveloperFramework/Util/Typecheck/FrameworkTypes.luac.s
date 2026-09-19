PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["render"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Component expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["table"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["callback"]
       10 GETTABLEKS                       R3 R0 K2 ["getSignal"]
       12 CALL                             R2 1 1
       13 NOT                              R1 R2
       14 JUMPIFNOT                        R1 ; [+11]
       15 LOADB                            R2 0
       16 LOADK                            R3 K3 ["ContextItem expected, got %s."]
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K5 [type]
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K6 ["format"]
       24 CALL                             R3 2 -1
       25 RETURN                           R2 -1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["getStyle"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Theme expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["getConsumerItem"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Stylizer expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["get"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Plugin expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["get"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Mouse expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["callback"]
        9 GETTABLEKS                       R2 R0 K2 ["get"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K3 ["Focus expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K5 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K6 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [tostring]
       10 CALL                             R1 1 1
       11 LOADK                            R3 K3 ["RoactRef"]
       12 NAMECALL                         R1 R1 K4 ["find"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["userdata"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["table"]
        9 GETTABLEKS                       R2 R0 K1 ["_listeners"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 LOADB                            R1 0
       14 LOADK                            R2 K2 ["Signal expected, got %s."]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K4 [type]
       19 CALL                             R4 1 1
       20 NAMECALL                         R2 R2 K5 ["format"]
       22 CALL                             R2 2 -1
       23 RETURN                           R1 -1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isEnumValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADB                            R1 0
        9 LOADK                            R2 K1 ["StyleModifier expected, got %s."]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K3 [type]
       14 CALL                             R4 1 1
       15 NAMECALL                         R2 R2 K4 ["format"]
       17 CALL                             R2 2 -1
       18 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["strictInterface"]
        3 DUPTABLE                         R1 K7 [{"UpVotes", "DownVotes", "VoteCount", "UpVotePercent", "CanVote", "UserVote"}]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K8 ["integer"]
        7 SETTABLEKS                       R2 R1 K1 ["UpVotes"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K8 ["integer"]
       12 SETTABLEKS                       R2 R1 K2 ["DownVotes"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K8 ["integer"]
       17 SETTABLEKS                       R2 R1 K3 ["VoteCount"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["integer"]
       22 SETTABLEKS                       R2 R1 K4 ["UpVotePercent"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K9 ["optional"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K10 ["boolean"]
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K5 ["CanVote"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K9 ["optional"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K10 ["boolean"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K6 ["UserVote"]
       42 CALL                             R0 1 -1
       43 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["StyleModifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["t"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 16 0
       27 DUPCLOSURE                       R4 K9 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K10 ["Component"]
       31 DUPCLOSURE                       R4 K11 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K12 ["ContextItem"]
       35 DUPCLOSURE                       R4 K13 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K14 ["Theme"]
       39 DUPCLOSURE                       R4 K15 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K16 ["Stylizer"]
       43 DUPCLOSURE                       R4 K17 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R3 K18 ["Plugin"]
       47 DUPCLOSURE                       R4 K19 [PROTO_5]
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R4 R3 K20 ["Mouse"]
       51 DUPCLOSURE                       R4 K21 [PROTO_6]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R4 R3 K22 ["Focus"]
       55 DUPCLOSURE                       R4 K23 [PROTO_7]
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R4 R3 K24 ["RoactRef"]
       59 DUPCLOSURE                       R4 K25 [PROTO_8]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R4 R3 K26 ["Symbol"]
       63 DUPCLOSURE                       R4 K27 [PROTO_9]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R4 R3 K28 ["Signal"]
       67 DUPCLOSURE                       R4 K29 [PROTO_10]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R4 R3 K7 ["StyleModifier"]
       71 GETTABLEKS                       R4 R2 K30 ["union"]
       73 GETTABLEKS                       R5 R2 K31 ["string"]
       75 GETTABLEKS                       R6 R2 K32 ["table"]
       77 CALL                             R4 2 1
       78 DUPCLOSURE                       R5 K33 [PROTO_11]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R5 R3 K34 ["Style"]
       82 GETTABLEKS                       R5 R2 K30 ["union"]
       84 GETTABLEKS                       R6 R2 K35 ["Instance"]
       86 GETTABLEKS                       R7 R2 K32 ["table"]
       88 CALL                             R5 2 1
       89 DUPCLOSURE                       R6 K36 [PROTO_12]
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R6 R3 K35 ["Instance"]
       93 DUPCLOSURE                       R6 K37 [PROTO_13]
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R6 R3 K38 ["Voting"]
       97 RETURN                           R3 1
