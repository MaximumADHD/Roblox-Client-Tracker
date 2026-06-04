PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K7 [{"IsPlaying", "IsLoaded", "OnPause", "OnPlay", "OnScrub", "TimeLength", "CurrentTime"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["IsPlaying"]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["IsLoaded"]
        7 DUPCLOSURE                       R1 K8 [PROTO_0]
        8 SETTABLEKS                       R1 R0 K2 ["OnPause"]
       10 DUPCLOSURE                       R1 K9 [PROTO_1]
       11 SETTABLEKS                       R1 R0 K3 ["OnPlay"]
       13 DUPCLOSURE                       R1 K10 [PROTO_2]
       14 SETTABLEKS                       R1 R0 K4 ["OnScrub"]
       16 LOADN                            R1 90
       17 SETTABLEKS                       R1 R0 K5 ["TimeLength"]
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K6 ["CurrentTime"]
       22 DUPTABLE                         R1 K16 [{"Paused", "Playing", "Loading", "WithProgress", "ScrubbingDisabled"}]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K17 ["createElement"]
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R0
       28 CALL                             R2 2 1
       29 SETTABLEKS                       R2 R1 K11 ["Paused"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K17 ["createElement"]
       34 GETUPVAL                         R3 1
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K18 ["Dictionary"]
       38 GETTABLEKS                       R4 R4 K19 ["join"]
       40 MOVE                             R5 R0
       41 DUPTABLE                         R6 K20 [{"IsPlaying"}]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K0 ["IsPlaying"]
       45 CALL                             R4 2 -1
       46 CALL                             R2 -1 1
       47 SETTABLEKS                       R2 R1 K12 ["Playing"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K17 ["createElement"]
       52 GETUPVAL                         R3 1
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K18 ["Dictionary"]
       56 GETTABLEKS                       R4 R4 K19 ["join"]
       58 MOVE                             R5 R0
       59 DUPTABLE                         R6 K21 [{"IsLoaded"}]
       60 LOADB                            R7 0
       61 SETTABLEKS                       R7 R6 K1 ["IsLoaded"]
       63 CALL                             R4 2 -1
       64 CALL                             R2 -1 1
       65 SETTABLEKS                       R2 R1 K13 ["Loading"]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K17 ["createElement"]
       70 GETUPVAL                         R3 1
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K18 ["Dictionary"]
       74 GETTABLEKS                       R4 R4 K19 ["join"]
       76 MOVE                             R5 R0
       77 DUPTABLE                         R6 K22 [{"IsPlaying", "CurrentTime"}]
       78 LOADB                            R7 1
       79 SETTABLEKS                       R7 R6 K0 ["IsPlaying"]
       81 LOADN                            R7 50
       82 SETTABLEKS                       R7 R6 K6 ["CurrentTime"]
       84 CALL                             R4 2 -1
       85 CALL                             R2 -1 1
       86 SETTABLEKS                       R2 R1 K14 ["WithProgress"]
       88 GETUPVAL                         R2 0
       89 GETTABLEKS                       R2 R2 K17 ["createElement"]
       91 GETUPVAL                         R3 1
       92 GETUPVAL                         R4 2
       93 GETTABLEKS                       R4 R4 K18 ["Dictionary"]
       95 GETTABLEKS                       R4 R4 K19 ["join"]
       97 MOVE                             R5 R0
       98 DUPTABLE                         R6 K23 [{"IsPlaying", "CurrentTime", "OnScrub"}]
       99 LOADB                            R7 1
      100 SETTABLEKS                       R7 R6 K0 ["IsPlaying"]
      102 LOADN                            R7 50
      103 SETTABLEKS                       R7 R6 K6 ["CurrentTime"]
      105 GETUPVAL                         R7 2
      106 GETTABLEKS                       R7 R7 K24 ["None"]
      108 SETTABLEKS                       R7 R6 K4 ["OnScrub"]
      110 CALL                             R4 2 -1
      111 CALL                             R2 -1 1
      112 SETTABLEKS                       R2 R1 K15 ["ScrubbingDisabled"]
      114 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K4 ["Parent"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K9 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
