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
        0 DUPTABLE                         R0 K12 [{"VideoId", "IsPlaying", "IsLoaded", "TimeLength", "CurrentTime", "OnEnd", "OnPause", "OnPlay", "SetIsLoaded", "SetCurrentTime", "SetTimeLength", "MediaPlayerSignal"}]
        1 LOADK                            R1 K13 ["rbxassetid://5608250999"]
        2 SETTABLEKS                       R1 R0 K0 ["VideoId"]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["IsPlaying"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["IsLoaded"]
       10 LOADN                            R1 15
       11 SETTABLEKS                       R1 R0 K3 ["TimeLength"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["CurrentTime"]
       16 DUPCLOSURE                       R1 K14 [PROTO_0]
       17 SETTABLEKS                       R1 R0 K5 ["OnEnd"]
       19 DUPCLOSURE                       R1 K15 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K6 ["OnPause"]
       22 DUPCLOSURE                       R1 K16 [PROTO_2]
       23 SETTABLEKS                       R1 R0 K7 ["OnPlay"]
       25 DUPCLOSURE                       R1 K17 [PROTO_3]
       26 SETTABLEKS                       R1 R0 K8 ["SetIsLoaded"]
       28 DUPCLOSURE                       R1 K18 [PROTO_4]
       29 SETTABLEKS                       R1 R0 K9 ["SetCurrentTime"]
       31 DUPCLOSURE                       R1 K19 [PROTO_5]
       32 SETTABLEKS                       R1 R0 K10 ["SetTimeLength"]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K20 ["new"]
       37 CALL                             R1 0 1
       38 SETTABLEKS                       R1 R0 K11 ["MediaPlayerSignal"]
       40 DUPTABLE                         R1 K26 [{"Paused", "PausedLoading", "Playing", "PlayingProgress", "PlayingLoading"}]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K27 ["createElement"]
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R0
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K21 ["Paused"]
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K27 ["createElement"]
       52 GETUPVAL                         R3 2
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R4 R4 K28 ["JoinDictionaries"]
       56 MOVE                             R5 R0
       57 DUPTABLE                         R6 K29 [{"IsLoaded"}]
       58 LOADB                            R7 0
       59 SETTABLEKS                       R7 R6 K2 ["IsLoaded"]
       61 CALL                             R4 2 -1
       62 CALL                             R2 -1 1
       63 SETTABLEKS                       R2 R1 K22 ["PausedLoading"]
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K27 ["createElement"]
       68 GETUPVAL                         R3 2
       69 GETUPVAL                         R4 3
       70 GETTABLEKS                       R4 R4 K28 ["JoinDictionaries"]
       72 MOVE                             R5 R0
       73 DUPTABLE                         R6 K30 [{"IsPlaying"}]
       74 LOADB                            R7 1
       75 SETTABLEKS                       R7 R6 K1 ["IsPlaying"]
       77 CALL                             R4 2 -1
       78 CALL                             R2 -1 1
       79 SETTABLEKS                       R2 R1 K23 ["Playing"]
       81 GETUPVAL                         R2 1
       82 GETTABLEKS                       R2 R2 K27 ["createElement"]
       84 GETUPVAL                         R3 2
       85 GETUPVAL                         R4 3
       86 GETTABLEKS                       R4 R4 K28 ["JoinDictionaries"]
       88 MOVE                             R5 R0
       89 DUPTABLE                         R6 K31 [{"IsPlaying", "CurrentTime"}]
       90 LOADB                            R7 1
       91 SETTABLEKS                       R7 R6 K1 ["IsPlaying"]
       93 LOADN                            R7 12
       94 SETTABLEKS                       R7 R6 K4 ["CurrentTime"]
       96 CALL                             R4 2 -1
       97 CALL                             R2 -1 1
       98 SETTABLEKS                       R2 R1 K24 ["PlayingProgress"]
      100 GETUPVAL                         R2 1
      101 GETTABLEKS                       R2 R2 K27 ["createElement"]
      103 GETUPVAL                         R3 2
      104 GETUPVAL                         R4 3
      105 GETTABLEKS                       R4 R4 K28 ["JoinDictionaries"]
      107 MOVE                             R5 R0
      108 DUPTABLE                         R6 K32 [{"IsPlaying", "IsLoaded"}]
      109 LOADB                            R7 1
      110 SETTABLEKS                       R7 R6 K1 ["IsPlaying"]
      112 LOADB                            R7 0
      113 SETTABLEKS                       R7 R6 K2 ["IsLoaded"]
      115 CALL                             R4 2 -1
      116 CALL                             R2 -1 1
      117 SETTABLEKS                       R2 R1 K25 ["PlayingLoading"]
      119 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Signal"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["Immutable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K4 ["Parent"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K11 [PROTO_6]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1
