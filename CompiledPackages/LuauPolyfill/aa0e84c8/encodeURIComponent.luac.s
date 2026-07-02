PROTO_0:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 JUMPIFEQKN                       R1 K3 [0] ; [+3]
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADK                            R2 K4 [""]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 LOADN                            R4 1
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKN                    R1 K5 [1] ; [+21]
       16 JUMPIFNOTEQKN                    R2 K6 [55296] ; [+9]
       18 GETIMPORT                        R3 K8 [error]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K9 ["new"]
       23 LOADK                            R5 K10 ["URI malformed"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 0
       26 JUMPIFNOTEQKN                    R2 K11 [57343] ; [+9]
       28 GETIMPORT                        R3 K8 [error]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K9 ["new"]
       33 LOADK                            R5 K10 ["URI malformed"]
       34 CALL                             R4 1 -1
       35 CALL                             R3 -1 0
       36 LOADK                            R3 K12 [56320]
       37 JUMPIFNOTLE                      R3 R2 ; [+12]
       39 LOADK                            R3 K11 [57343]
       40 JUMPIFNOTLT                      R2 R3 ; [+9]
       42 GETIMPORT                        R3 K8 [error]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K9 ["new"]
       47 LOADK                            R5 K10 ["URI malformed"]
       48 CALL                             R4 1 -1
       49 CALL                             R3 -1 0
       50 GETUPVAL                         R3 2
       51 MOVE                             R5 R0
       52 NAMECALL                         R3 R3 K13 ["UrlEncode"]
       54 CALL                             R3 2 1
       55 LOADK                            R6 K14 ["%%2D"]
       56 LOADK                            R7 K15 ["-"]
       57 NAMECALL                         R4 R3 K16 ["gsub"]
       59 CALL                             R4 3 1
       60 LOADK                            R6 K17 ["%%5F"]
       61 LOADK                            R7 K18 ["_"]
       62 NAMECALL                         R4 R4 K16 ["gsub"]
       64 CALL                             R4 3 1
       65 LOADK                            R6 K19 ["%%2E"]
       66 LOADK                            R7 K20 ["."]
       67 NAMECALL                         R4 R4 K16 ["gsub"]
       69 CALL                             R4 3 1
       70 LOADK                            R6 K21 ["%%21"]
       71 LOADK                            R7 K22 ["!"]
       72 NAMECALL                         R4 R4 K16 ["gsub"]
       74 CALL                             R4 3 1
       75 LOADK                            R6 K23 ["%%7E"]
       76 LOADK                            R7 K24 ["~"]
       77 NAMECALL                         R4 R4 K16 ["gsub"]
       79 CALL                             R4 3 1
       80 LOADK                            R6 K25 ["%%2A"]
       81 LOADK                            R7 K26 ["*"]
       82 NAMECALL                         R4 R4 K16 ["gsub"]
       84 CALL                             R4 3 1
       85 LOADK                            R6 K27 ["%%27"]
       86 LOADK                            R7 K28 ["'"]
       87 NAMECALL                         R4 R4 K16 ["gsub"]
       89 CALL                             R4 3 1
       90 LOADK                            R6 K29 ["%%28"]
       91 LOADK                            R7 K30 ["("]
       92 NAMECALL                         R4 R4 K16 ["gsub"]
       94 CALL                             R4 3 1
       95 LOADK                            R6 K31 ["%%29"]
       96 LOADK                            R7 K32 [")"]
       97 NAMECALL                         R4 R4 K16 ["gsub"]
       99 CALL                             R4 3 1
      100 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["String"]
        9 GETTABLEKS                       R1 R1 K6 ["charCodeAt"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K7 ["Error"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K9 [game]
       23 LOADK                            R4 K10 ["HttpService"]
       24 NAMECALL                         R2 R2 K11 ["GetService"]
       26 CALL                             R2 2 1
       27 DUPCLOSURE                       R3 K12 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1
