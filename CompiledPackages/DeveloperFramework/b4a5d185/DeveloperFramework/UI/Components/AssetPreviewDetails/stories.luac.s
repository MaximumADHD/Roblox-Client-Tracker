PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K7 [{"Everything", "HasScripts", "IsPackage", "IsPackageNoUpdateDate", "LowWidth", "NoVotes", "VotesOnly"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
        6 DUPTABLE                         R4 K16 [{"Count", "IsFavorited", "OnClick"}]
        7 LOADN                            R5 4
        8 SETTABLEKS                       R5 R4 K13 ["Count"]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K14 ["IsFavorited"]
       13 DUPCLOSURE                       R5 K17 [PROTO_0]
       14 SETTABLEKS                       R5 R4 K15 ["OnClick"]
       16 SETTABLEKS                       R4 R3 K9 ["Favorites"]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
       24 LOADK                            R4 K18 ["2016-06-14T18:43:37Z"]
       25 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
       27 DUPTABLE                         R4 K22 [{"UpVotes", "DownVotes", "CanVote"}]
       28 LOADN                            R5 55
       29 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
       31 LOADN                            R5 44
       32 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K21 ["CanVote"]
       37 SETTABLEKS                       R4 R3 K11 ["Voting"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K0 ["Everything"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K8 ["createElement"]
       45 GETUPVAL                         R2 1
       46 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
       47 LOADNIL                          R4
       48 SETTABLEKS                       R4 R3 K9 ["Favorites"]
       50 LOADB                            R4 1
       51 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
       53 LOADB                            R4 0
       54 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
       56 LOADK                            R4 K18 ["2016-06-14T18:43:37Z"]
       57 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
       59 DUPTABLE                         R4 K22 [{"UpVotes", "DownVotes", "CanVote"}]
       60 LOADN                            R5 55
       61 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
       63 LOADN                            R5 44
       64 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K21 ["CanVote"]
       69 SETTABLEKS                       R4 R3 K11 ["Voting"]
       71 CALL                             R1 2 1
       72 SETTABLEKS                       R1 R0 K1 ["HasScripts"]
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K8 ["createElement"]
       77 GETUPVAL                         R2 1
       78 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
       79 LOADNIL                          R4
       80 SETTABLEKS                       R4 R3 K9 ["Favorites"]
       82 LOADB                            R4 0
       83 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
       85 LOADB                            R4 1
       86 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
       88 LOADK                            R4 K18 ["2016-06-14T18:43:37Z"]
       89 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
       91 DUPTABLE                         R4 K22 [{"UpVotes", "DownVotes", "CanVote"}]
       92 LOADN                            R5 55
       93 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
       95 LOADN                            R5 44
       96 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
       98 LOADB                            R5 1
       99 SETTABLEKS                       R5 R4 K21 ["CanVote"]
      101 SETTABLEKS                       R4 R3 K11 ["Voting"]
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K2 ["IsPackage"]
      106 GETUPVAL                         R1 0
      107 GETTABLEKS                       R1 R1 K8 ["createElement"]
      109 GETUPVAL                         R2 1
      110 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
      111 LOADNIL                          R4
      112 SETTABLEKS                       R4 R3 K9 ["Favorites"]
      114 LOADB                            R4 0
      115 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
      117 LOADB                            R4 1
      118 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
      120 LOADNIL                          R4
      121 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
      123 DUPTABLE                         R4 K22 [{"UpVotes", "DownVotes", "CanVote"}]
      124 LOADN                            R5 55
      125 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
      127 LOADN                            R5 44
      128 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
      130 LOADB                            R5 1
      131 SETTABLEKS                       R5 R4 K21 ["CanVote"]
      133 SETTABLEKS                       R4 R3 K11 ["Voting"]
      135 CALL                             R1 2 1
      136 SETTABLEKS                       R1 R0 K3 ["IsPackageNoUpdateDate"]
      138 GETUPVAL                         R1 0
      139 GETTABLEKS                       R1 R1 K8 ["createElement"]
      141 GETUPVAL                         R2 2
      142 DUPTABLE                         R3 K24 [{"Size"}]
      143 GETIMPORT                        R4 K27 [UDim2.new]
      145 LOADN                            R5 0
      146 LOADN                            R6 183
      147 LOADN                            R7 0
      148 LOADN                            R8 30
      149 CALL                             R4 4 1
      150 SETTABLEKS                       R4 R3 K23 ["Size"]
      152 DUPTABLE                         R4 K29 [{"AssetPreviewDetails"}]
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K8 ["createElement"]
      156 GETUPVAL                         R6 1
      157 DUPTABLE                         R7 K30 [{"HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
      158 LOADB                            R8 1
      159 SETTABLEKS                       R8 R7 K1 ["HasScripts"]
      161 LOADB                            R8 1
      162 SETTABLEKS                       R8 R7 K2 ["IsPackage"]
      164 LOADK                            R8 K18 ["2016-06-14T18:43:37Z"]
      165 SETTABLEKS                       R8 R7 K10 ["LastUpdatedDate"]
      167 DUPTABLE                         R8 K32 [{"UpVotes", "DownVotes", "CanVote", "UserVote"}]
      168 LOADN                            R9 55
      169 SETTABLEKS                       R9 R8 K19 ["UpVotes"]
      171 LOADN                            R9 0
      172 SETTABLEKS                       R9 R8 K20 ["DownVotes"]
      174 LOADB                            R9 1
      175 SETTABLEKS                       R9 R8 K21 ["CanVote"]
      177 LOADB                            R9 0
      178 SETTABLEKS                       R9 R8 K31 ["UserVote"]
      180 SETTABLEKS                       R8 R7 K11 ["Voting"]
      182 CALL                             R5 2 1
      183 SETTABLEKS                       R5 R4 K28 ["AssetPreviewDetails"]
      185 CALL                             R1 3 1
      186 SETTABLEKS                       R1 R0 K4 ["LowWidth"]
      188 GETUPVAL                         R1 0
      189 GETTABLEKS                       R1 R1 K8 ["createElement"]
      191 GETUPVAL                         R2 1
      192 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
      193 LOADNIL                          R4
      194 SETTABLEKS                       R4 R3 K9 ["Favorites"]
      196 LOADB                            R4 0
      197 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
      199 LOADB                            R4 0
      200 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
      202 LOADK                            R4 K18 ["2016-06-14T18:43:37Z"]
      203 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
      205 DUPTABLE                         R4 K33 [{"UpVotes", "DownVotes"}]
      206 LOADN                            R5 0
      207 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
      209 LOADN                            R5 0
      210 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
      212 SETTABLEKS                       R4 R3 K11 ["Voting"]
      214 CALL                             R1 2 1
      215 SETTABLEKS                       R1 R0 K5 ["NoVotes"]
      217 GETUPVAL                         R1 0
      218 GETTABLEKS                       R1 R1 K8 ["createElement"]
      220 GETUPVAL                         R2 1
      221 DUPTABLE                         R3 K12 [{"Favorites", "HasScripts", "IsPackage", "LastUpdatedDate", "Voting"}]
      222 LOADNIL                          R4
      223 SETTABLEKS                       R4 R3 K9 ["Favorites"]
      225 LOADB                            R4 0
      226 SETTABLEKS                       R4 R3 K1 ["HasScripts"]
      228 LOADB                            R4 0
      229 SETTABLEKS                       R4 R3 K2 ["IsPackage"]
      231 LOADK                            R4 K18 ["2016-06-14T18:43:37Z"]
      232 SETTABLEKS                       R4 R3 K10 ["LastUpdatedDate"]
      234 DUPTABLE                         R4 K22 [{"UpVotes", "DownVotes", "CanVote"}]
      235 LOADN                            R5 55
      236 SETTABLEKS                       R5 R4 K19 ["UpVotes"]
      238 LOADN                            R5 44
      239 SETTABLEKS                       R5 R4 K20 ["DownVotes"]
      241 LOADB                            R5 1
      242 SETTABLEKS                       R5 R4 K21 ["CanVote"]
      244 SETTABLEKS                       R4 R3 K11 ["Voting"]
      246 CALL                             R1 2 1
      247 SETTABLEKS                       R1 R0 K6 ["VotesOnly"]
      249 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["Container"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K10 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
