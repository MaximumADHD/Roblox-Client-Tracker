PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K8 [{"NoVotes", "AllUp", "AllDown", "Mix", "CanVote", "HasVotedUp", "HasVotedDown", "LowWidth"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K9 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
        6 LOADN                            R4 123
        7 SETTABLEKS                       R4 R3 K10 ["AssetId"]
        9 DUPCLOSURE                       R4 K15 [PROTO_0]
       10 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
       12 DUPCLOSURE                       R4 K16 [PROTO_1]
       13 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
       15 DUPTABLE                         R4 K19 [{"UpVotes", "DownVotes"}]
       16 LOADN                            R5 0
       17 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
       19 LOADN                            R5 0
       20 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
       22 SETTABLEKS                       R4 R3 K13 ["Voting"]
       24 CALL                             R1 2 1
       25 SETTABLEKS                       R1 R0 K0 ["NoVotes"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K9 ["createElement"]
       30 GETUPVAL                         R2 1
       31 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
       32 LOADN                            R4 123
       33 SETTABLEKS                       R4 R3 K10 ["AssetId"]
       35 DUPCLOSURE                       R4 K20 [PROTO_2]
       36 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
       38 DUPCLOSURE                       R4 K21 [PROTO_3]
       39 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
       41 DUPTABLE                         R4 K19 [{"UpVotes", "DownVotes"}]
       42 LOADN                            R5 111
       43 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
       45 LOADN                            R5 0
       46 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
       48 SETTABLEKS                       R4 R3 K13 ["Voting"]
       50 CALL                             R1 2 1
       51 SETTABLEKS                       R1 R0 K1 ["AllUp"]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R1 R2 K9 ["createElement"]
       56 GETUPVAL                         R2 1
       57 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
       58 LOADN                            R4 123
       59 SETTABLEKS                       R4 R3 K10 ["AssetId"]
       61 DUPCLOSURE                       R4 K22 [PROTO_4]
       62 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
       64 DUPCLOSURE                       R4 K23 [PROTO_5]
       65 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
       67 DUPTABLE                         R4 K19 [{"UpVotes", "DownVotes"}]
       68 LOADN                            R5 0
       69 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
       71 LOADN                            R5 111
       72 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
       74 SETTABLEKS                       R4 R3 K13 ["Voting"]
       76 CALL                             R1 2 1
       77 SETTABLEKS                       R1 R0 K2 ["AllDown"]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R1 R2 K9 ["createElement"]
       82 GETUPVAL                         R2 1
       83 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
       84 LOADN                            R4 123
       85 SETTABLEKS                       R4 R3 K10 ["AssetId"]
       87 DUPCLOSURE                       R4 K24 [PROTO_6]
       88 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
       90 DUPCLOSURE                       R4 K25 [PROTO_7]
       91 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
       93 DUPTABLE                         R4 K19 [{"UpVotes", "DownVotes"}]
       94 LOADN                            R5 55
       95 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
       97 LOADN                            R5 44
       98 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
      100 SETTABLEKS                       R4 R3 K13 ["Voting"]
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K3 ["Mix"]
      105 GETUPVAL                         R2 0
      106 GETTABLEKS                       R1 R2 K9 ["createElement"]
      108 GETUPVAL                         R2 1
      109 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
      110 LOADN                            R4 123
      111 SETTABLEKS                       R4 R3 K10 ["AssetId"]
      113 DUPCLOSURE                       R4 K26 [PROTO_8]
      114 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
      116 DUPCLOSURE                       R4 K27 [PROTO_9]
      117 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
      119 DUPTABLE                         R4 K28 [{"UpVotes", "DownVotes", "CanVote"}]
      120 LOADN                            R5 55
      121 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
      123 LOADN                            R5 44
      124 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
      126 LOADB                            R5 1
      127 SETTABLEKS                       R5 R4 K4 ["CanVote"]
      129 SETTABLEKS                       R4 R3 K13 ["Voting"]
      131 CALL                             R1 2 1
      132 SETTABLEKS                       R1 R0 K4 ["CanVote"]
      134 GETUPVAL                         R2 0
      135 GETTABLEKS                       R1 R2 K9 ["createElement"]
      137 GETUPVAL                         R2 1
      138 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
      139 LOADN                            R4 123
      140 SETTABLEKS                       R4 R3 K10 ["AssetId"]
      142 DUPCLOSURE                       R4 K29 [PROTO_10]
      143 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
      145 DUPCLOSURE                       R4 K30 [PROTO_11]
      146 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
      148 DUPTABLE                         R4 K32 [{"UpVotes", "DownVotes", "CanVote", "UserVote"}]
      149 LOADN                            R5 55
      150 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
      152 LOADN                            R5 44
      153 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
      155 LOADB                            R5 1
      156 SETTABLEKS                       R5 R4 K4 ["CanVote"]
      158 LOADB                            R5 1
      159 SETTABLEKS                       R5 R4 K31 ["UserVote"]
      161 SETTABLEKS                       R4 R3 K13 ["Voting"]
      163 CALL                             R1 2 1
      164 SETTABLEKS                       R1 R0 K5 ["HasVotedUp"]
      166 GETUPVAL                         R2 0
      167 GETTABLEKS                       R1 R2 K9 ["createElement"]
      169 GETUPVAL                         R2 1
      170 DUPTABLE                         R3 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
      171 LOADN                            R4 123
      172 SETTABLEKS                       R4 R3 K10 ["AssetId"]
      174 DUPCLOSURE                       R4 K33 [PROTO_12]
      175 SETTABLEKS                       R4 R3 K11 ["OnVoteUp"]
      177 DUPCLOSURE                       R4 K34 [PROTO_13]
      178 SETTABLEKS                       R4 R3 K12 ["OnVoteDown"]
      180 DUPTABLE                         R4 K32 [{"UpVotes", "DownVotes", "CanVote", "UserVote"}]
      181 LOADN                            R5 55
      182 SETTABLEKS                       R5 R4 K17 ["UpVotes"]
      184 LOADN                            R5 44
      185 SETTABLEKS                       R5 R4 K18 ["DownVotes"]
      187 LOADB                            R5 1
      188 SETTABLEKS                       R5 R4 K4 ["CanVote"]
      190 LOADB                            R5 0
      191 SETTABLEKS                       R5 R4 K31 ["UserVote"]
      193 SETTABLEKS                       R4 R3 K13 ["Voting"]
      195 CALL                             R1 2 1
      196 SETTABLEKS                       R1 R0 K6 ["HasVotedDown"]
      198 GETUPVAL                         R2 0
      199 GETTABLEKS                       R1 R2 K9 ["createElement"]
      201 GETUPVAL                         R2 2
      202 DUPTABLE                         R3 K36 [{"Size"}]
      203 GETIMPORT                        R4 K39 [UDim2.new]
      205 LOADN                            R5 0
      206 LOADN                            R6 183
      207 LOADN                            R7 0
      208 LOADN                            R8 30
      209 CALL                             R4 4 1
      210 SETTABLEKS                       R4 R3 K35 ["Size"]
      212 DUPTABLE                         R4 K41 [{"VoteBar"}]
      213 GETUPVAL                         R6 0
      214 GETTABLEKS                       R5 R6 K9 ["createElement"]
      216 GETUPVAL                         R6 1
      217 DUPTABLE                         R7 K14 [{"AssetId", "OnVoteUp", "OnVoteDown", "Voting"}]
      218 LOADN                            R8 123
      219 SETTABLEKS                       R8 R7 K10 ["AssetId"]
      221 DUPCLOSURE                       R8 K42 [PROTO_14]
      222 SETTABLEKS                       R8 R7 K11 ["OnVoteUp"]
      224 DUPCLOSURE                       R8 K43 [PROTO_15]
      225 SETTABLEKS                       R8 R7 K12 ["OnVoteDown"]
      227 DUPTABLE                         R8 K32 [{"UpVotes", "DownVotes", "CanVote", "UserVote"}]
      228 LOADN                            R9 55
      229 SETTABLEKS                       R9 R8 K17 ["UpVotes"]
      231 LOADN                            R9 0
      232 SETTABLEKS                       R9 R8 K18 ["DownVotes"]
      234 LOADB                            R9 1
      235 SETTABLEKS                       R9 R8 K4 ["CanVote"]
      237 LOADB                            R9 0
      238 SETTABLEKS                       R9 R8 K31 ["UserVote"]
      240 SETTABLEKS                       R8 R7 K13 ["Voting"]
      242 CALL                             R5 2 1
      243 SETTABLEKS                       R5 R4 K40 ["VoteBar"]
      245 CALL                             R1 3 1
      246 SETTABLEKS                       R1 R0 K7 ["LowWidth"]
      248 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K8 ["Components"]
       29 GETTABLEKS                       R4 R5 K9 ["Container"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K10 [PROTO_16]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
