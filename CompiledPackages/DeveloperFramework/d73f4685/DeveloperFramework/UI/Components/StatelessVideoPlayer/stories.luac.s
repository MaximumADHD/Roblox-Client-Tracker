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
        0 DUPTABLE                         R0 K17 [{[1] = "rbxassetid://5608250999", ["IsPlaying"] = False, ["IsLoaded"] = True, ["TimeLength"] = 15, ["CurrentTime"] = 0, ["OnEnd"], ["OnPause"], ["OnPlay"], ["SetIsLoaded"], ["SetCurrentTime"], ["SetTimeLength"], ["MediaPlayerSignal"]}]
        1 DUPCLOSURE                       R1 K18 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K10 ["OnEnd"]
        4 DUPCLOSURE                       R1 K19 [PROTO_1]
        5 SETTABLEKS                       R1 R0 K11 ["OnPause"]
        7 DUPCLOSURE                       R1 K20 [PROTO_2]
        8 SETTABLEKS                       R1 R0 K12 ["OnPlay"]
       10 DUPCLOSURE                       R1 K21 [PROTO_3]
       11 SETTABLEKS                       R1 R0 K13 ["SetIsLoaded"]
       13 DUPCLOSURE                       R1 K22 [PROTO_4]
       14 SETTABLEKS                       R1 R0 K14 ["SetCurrentTime"]
       16 DUPCLOSURE                       R1 K23 [PROTO_5]
       17 SETTABLEKS                       R1 R0 K15 ["SetTimeLength"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K24 ["new"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K16 ["MediaPlayerSignal"]
       25 DUPTABLE                         R1 K30 [{"Paused", "PausedLoading", "Playing", "PlayingProgress", "PlayingLoading"}]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K31 ["createElement"]
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R0
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K25 ["Paused"]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K31 ["createElement"]
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K32 ["JoinDictionaries"]
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K33 [{["IsLoaded"] = False}]
       43 CALL                             R4 2 -1
       44 CALL                             R2 -1 1
       45 SETTABLEKS                       R2 R1 K26 ["PausedLoading"]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K31 ["createElement"]
       50 GETUPVAL                         R3 2
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K32 ["JoinDictionaries"]
       54 MOVE                             R5 R0
       55 DUPTABLE                         R6 K34 [{["IsPlaying"] = True}]
       56 CALL                             R4 2 -1
       57 CALL                             R2 -1 1
       58 SETTABLEKS                       R2 R1 K27 ["Playing"]
       60 GETUPVAL                         R2 1
       61 GETTABLEKS                       R2 R2 K31 ["createElement"]
       63 GETUPVAL                         R3 2
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K32 ["JoinDictionaries"]
       67 MOVE                             R5 R0
       68 DUPTABLE                         R6 K36 [{["IsPlaying"] = True, ["CurrentTime"] = 12}]
       69 CALL                             R4 2 -1
       70 CALL                             R2 -1 1
       71 SETTABLEKS                       R2 R1 K28 ["PlayingProgress"]
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K31 ["createElement"]
       76 GETUPVAL                         R3 2
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K32 ["JoinDictionaries"]
       80 MOVE                             R5 R0
       81 DUPTABLE                         R6 K37 [{["IsPlaying"] = True, ["IsLoaded"] = False}]
       82 CALL                             R4 2 -1
       83 CALL                             R2 -1 1
       84 SETTABLEKS                       R2 R1 K29 ["PlayingLoading"]
       86 RETURN                           R1 1

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
