PROTO_0:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
        7 GETTABLEKS                       R4 R5 K1 ["join"]
        9 MOVE                             R5 R0
       10 NEWTABLE                         R6 1 0
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R8 R9 K0 ["Dictionary"]
       15 GETTABLEKS                       R7 R8 K1 ["join"]
       17 GETTABLE                         R8 R0 R1
       18 DUPTABLE                         R9 K5 [{"HasVoted", "UserVote", "showVoteButtons"}]
       19 SETTABLEKS                       R3 R9 K2 ["HasVoted"]
       21 SETTABLEKS                       R2 R9 K3 ["UserVote"]
       23 SETTABLEKS                       R3 R9 K4 ["showVoteButtons"]
       25 CALL                             R7 2 1
       26 SETTABLE                         R7 R6 R1
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

PROTO_1:
        0 GETTABLE                         R3 R0 R1
        1 GETTABLEKS                       R4 R3 K0 ["UpVotes"]
        3 GETTABLEKS                       R5 R3 K1 ["DownVotes"]
        5 GETTABLEKS                       R6 R3 K2 ["VoteCount"]
        7 JUMPIFNOT                        R2 ; [+15]
        8 GETTABLEKS                       R7 R3 K3 ["HasVoted"]
       10 JUMPIFNOT                        R7 ; [+7]
       11 GETTABLEKS                       R7 R3 K4 ["UserVote"]
       13 JUMPIF                           R7 ; [+4]
       14 GETTABLEKS                       R7 R3 K1 ["DownVotes"]
       16 SUBK                             R5 R7 K5 [1]
       17 SUBK                             R6 R6 K5 [1]
       18 GETTABLEKS                       R7 R3 K0 ["UpVotes"]
       20 ADDK                             R4 R7 K5 [1]
       21 ADDK                             R6 R6 K5 [1]
       22 JUMP                             ; [+14]
       23 GETTABLEKS                       R7 R3 K3 ["HasVoted"]
       25 JUMPIFNOT                        R7 ; [+7]
       26 GETTABLEKS                       R7 R3 K4 ["UserVote"]
       28 JUMPIFNOT                        R7 ; [+4]
       29 GETTABLEKS                       R7 R3 K0 ["UpVotes"]
       31 SUBK                             R4 R7 K5 [1]
       32 SUBK                             R6 R6 K5 [1]
       33 GETTABLEKS                       R7 R3 K1 ["DownVotes"]
       35 ADDK                             R5 R7 K5 [1]
       36 ADDK                             R6 R6 K5 [1]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K6 ["Dictionary"]
       40 GETTABLEKS                       R7 R8 K7 ["join"]
       42 MOVE                             R8 R0
       43 NEWTABLE                         R9 1 0
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R11 R12 K6 ["Dictionary"]
       48 GETTABLEKS                       R10 R11 K7 ["join"]
       50 GETTABLE                         R11 R0 R1
       51 DUPTABLE                         R12 K9 [{"HasVoted", "UserVote", "UpVotes", "DownVotes", "VoteCount", "showVoteButtons"}]
       52 LOADB                            R13 1
       53 SETTABLEKS                       R13 R12 K3 ["HasVoted"]
       55 SETTABLEKS                       R2 R12 K4 ["UserVote"]
       57 SETTABLEKS                       R4 R12 K0 ["UpVotes"]
       59 SETTABLEKS                       R5 R12 K1 ["DownVotes"]
       61 GETTABLEKS                       R13 R3 K2 ["VoteCount"]
       63 SETTABLEKS                       R13 R12 K2 ["VoteCount"]
       65 LOADB                            R13 1
       66 SETTABLEKS                       R13 R12 K8 ["showVoteButtons"]
       68 CALL                             R10 2 1
       69 SETTABLE                         R10 R9 R1
       70 CALL                             R7 2 -1
       71 RETURN                           R7 -1

PROTO_2:
        0 GETTABLE                         R2 R0 R1
        1 GETTABLEKS                       R3 R2 K0 ["UpVotes"]
        3 GETTABLEKS                       R4 R2 K1 ["DownVotes"]
        5 GETTABLEKS                       R5 R2 K2 ["VoteCount"]
        7 GETTABLEKS                       R6 R2 K3 ["HasVoted"]
        9 JUMPIFNOT                        R6 ; [+8]
       10 GETTABLEKS                       R6 R2 K4 ["UserVote"]
       12 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       14 SUBK                             R3 R3 K5 [1]
       15 JUMP                             ; [+1]
       16 SUBK                             R4 R4 K5 [1]
       17 SUBK                             R5 R5 K5 [1]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K6 ["Dictionary"]
       21 GETTABLEKS                       R6 R7 K7 ["join"]
       23 MOVE                             R7 R0
       24 NEWTABLE                         R8 1 0
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K6 ["Dictionary"]
       29 GETTABLEKS                       R9 R10 K7 ["join"]
       31 GETTABLE                         R10 R0 R1
       32 DUPTABLE                         R11 K8 [{"HasVoted", "UserVote", "UpVotes", "DownVotes", "VoteCount"}]
       33 LOADB                            R12 0
       34 SETTABLEKS                       R12 R11 K3 ["HasVoted"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R12 R13 K9 ["None"]
       39 SETTABLEKS                       R12 R11 K4 ["UserVote"]
       41 SETTABLEKS                       R3 R11 K0 ["UpVotes"]
       43 SETTABLEKS                       R4 R11 K1 ["DownVotes"]
       45 GETTABLEKS                       R12 R2 K2 ["VoteCount"]
       47 SETTABLEKS                       R12 R11 K2 ["VoteCount"]
       49 CALL                             R9 2 1
       50 SETTABLE                         R9 R8 R1
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1

PROTO_3:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        7 GETTABLEKS                       R3 R4 K1 ["join"]
        9 MOVE                             R4 R0
       10 NEWTABLE                         R5 1 0
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K0 ["Dictionary"]
       15 GETTABLEKS                       R6 R7 K1 ["join"]
       17 MOVE                             R7 R2
       18 DUPTABLE                         R8 K3 [{"showVoteButtons"}]
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K2 ["showVoteButtons"]
       22 CALL                             R6 2 1
       23 SETTABLE                         R6 R5 R1
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_4:
        0 GETTABLE                         R4 R0 R1
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
        7 GETTABLEKS                       R5 R6 K1 ["join"]
        9 MOVE                             R6 R0
       10 NEWTABLE                         R7 1 0
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K0 ["Dictionary"]
       15 GETTABLEKS                       R8 R9 K1 ["join"]
       17 MOVE                             R9 R4
       18 DUPTABLE                         R10 K4 [{"VoteLoading", "VoteFetchAttempted"}]
       19 SETTABLEKS                       R2 R10 K2 ["VoteLoading"]
       21 SETTABLEKS                       R3 R10 K3 ["VoteFetchAttempted"]
       23 CALL                             R8 2 1
       24 SETTABLE                         R8 R7 R1
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 GETTABLEKS                       R4 R1 K2 ["assets"]
        6 CALL                             R3 1 3
        7 FORGPREP_INEXT                   R3
        8 GETTABLEKS                       R10 R7 K3 ["Asset"]
       10 GETTABLEKS                       R9 R10 K4 ["Id"]
       12 GETTABLE                         R8 R0 R9
       13 GETTABLEKS                       R10 R7 K3 ["Asset"]
       15 GETTABLEKS                       R9 R10 K4 ["Id"]
       17 GETTABLEKS                       R10 R7 K5 ["Voting"]
       19 SETTABLE                         R10 R2 R9
       20 FORGLOOP                         R3 2 [inext] ; [-13]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K6 ["Dictionary"]
       25 GETTABLEKS                       R3 R4 K7 ["join"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R2
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 GETTABLEKS                       R5 R1 K1 ["userVote"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 GETTABLEKS                       R5 R1 K1 ["userVote"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["assetId"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["AssetId"]
        4 GETTABLEKS                       R5 R1 K1 ["VoteLoading"]
        6 GETTABLEKS                       R6 R1 K2 ["VoteFetchAttempted"]
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Actions"]
       27 GETTABLEKS                       R5 R6 K10 ["GetAssets"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R8 K9 ["Actions"]
       36 GETTABLEKS                       R6 R7 K11 ["GetVote"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Src"]
       43 GETTABLEKS                       R8 R9 K9 ["Actions"]
       45 GETTABLEKS                       R7 R8 K12 ["GetAssetsVotingData"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K8 ["Src"]
       52 GETTABLEKS                       R9 R10 K9 ["Actions"]
       54 GETTABLEKS                       R8 R9 K13 ["PostInsertAsset"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K8 ["Src"]
       61 GETTABLEKS                       R10 R11 K9 ["Actions"]
       63 GETTABLEKS                       R9 R10 K14 ["PostUnvote"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K8 ["Src"]
       70 GETTABLEKS                       R11 R12 K9 ["Actions"]
       72 GETTABLEKS                       R10 R11 K15 ["PostVote"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Src"]
       79 GETTABLEKS                       R12 R13 K9 ["Actions"]
       81 GETTABLEKS                       R11 R12 K16 ["SetVoteLoading"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K17 [PROTO_0]
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R12 K18 [PROTO_1]
       87 CAPTURE                          VAL R2
       88 DUPCLOSURE                       R13 K19 [PROTO_2]
       89 CAPTURE                          VAL R2
       90 DUPCLOSURE                       R14 K20 [PROTO_3]
       91 CAPTURE                          VAL R2
       92 DUPCLOSURE                       R15 K21 [PROTO_4]
       93 CAPTURE                          VAL R2
       94 DUPCLOSURE                       R16 K22 [PROTO_5]
       95 CAPTURE                          VAL R2
       96 GETTABLEKS                       R17 R3 K23 ["createReducer"]
       98 NEWTABLE                         R18 0 0
      100 NEWTABLE                         R19 8 0
      102 GETTABLEKS                       R20 R4 K24 ["name"]
      104 DUPCLOSURE                       R21 K25 [PROTO_6]
      105 CAPTURE                          VAL R16
      106 SETTABLE                         R21 R19 R20
      107 GETTABLEKS                       R20 R6 K24 ["name"]
      109 DUPCLOSURE                       R21 K26 [PROTO_7]
      110 CAPTURE                          VAL R16
      111 SETTABLE                         R21 R19 R20
      112 GETTABLEKS                       R20 R7 K24 ["name"]
      114 DUPCLOSURE                       R21 K27 [PROTO_8]
      115 CAPTURE                          VAL R14
      116 SETTABLE                         R21 R19 R20
      117 GETTABLEKS                       R20 R5 K24 ["name"]
      119 DUPCLOSURE                       R21 K28 [PROTO_9]
      120 CAPTURE                          VAL R11
      121 SETTABLE                         R21 R19 R20
      122 GETTABLEKS                       R20 R9 K24 ["name"]
      124 DUPCLOSURE                       R21 K29 [PROTO_10]
      125 CAPTURE                          VAL R12
      126 SETTABLE                         R21 R19 R20
      127 GETTABLEKS                       R20 R8 K24 ["name"]
      129 DUPCLOSURE                       R21 K30 [PROTO_11]
      130 CAPTURE                          VAL R13
      131 SETTABLE                         R21 R19 R20
      132 GETTABLEKS                       R20 R10 K24 ["name"]
      134 DUPCLOSURE                       R21 K31 [PROTO_12]
      135 CAPTURE                          VAL R15
      136 SETTABLE                         R21 R19 R20
      137 CALL                             R17 2 -1
      138 RETURN                           R17 -1
