PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onEnded"]
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"isPlaying"}]
        1 GETTABLEKS                       R3 R0 K0 ["isPlaying"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["isPlaying"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"Controls", "Player"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K4 ["createElement"]
        7 LOADK                            R4 K5 ["TextButton"]
        8 NEWTABLE                         R5 4 0
       10 GETTABLEKS                       R7 R0 K6 ["state"]
       12 GETTABLEKS                       R7 R7 K7 ["isPlaying"]
       14 JUMPIFNOT                        R7 ; [+2]
       15 LOADK                            R6 K8 ["Pause"]
       16 JUMP                             ; [+1]
       17 LOADK                            R6 K9 ["Play"]
       18 SETTABLEKS                       R6 R5 K10 ["Text"]
       20 GETIMPORT                        R6 K13 [UDim2.new]
       22 LOADN                            R7 0
       23 LOADN                            R8 40
       24 LOADN                            R9 0
       25 LOADN                            R10 40
       26 CALL                             R6 4 1
       27 SETTABLEKS                       R6 R5 K14 ["Size"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K15 ["Event"]
       32 GETTABLEKS                       R6 R6 K16 ["Activated"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R0
       36 SETTABLE                         R7 R5 R6
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K1 ["Controls"]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K4 ["createElement"]
       43 LOADK                            R4 K17 ["Frame"]
       44 DUPTABLE                         R5 K20 [{["Size"], ["BackgroundTransparency"] = 1}]
       45 GETIMPORT                        R6 K13 [UDim2.new]
       47 LOADN                            R7 1
       48 LOADN                            R8 0
       49 LOADN                            R9 0
       50 LOADN                            R10 20
       51 CALL                             R6 4 1
       52 SETTABLEKS                       R6 R5 K14 ["Size"]
       54 DUPTABLE                         R6 K23 [{"Layout", "UIPadding", "Player"}]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K4 ["createElement"]
       58 LOADK                            R8 K24 ["UIListLayout"]
       59 DUPTABLE                         R9 K26 [{"VerticalAlignment"}]
       60 GETIMPORT                        R10 K29 [Enum.VerticalAlignment.Center]
       62 SETTABLEKS                       R10 R9 K25 ["VerticalAlignment"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K21 ["Layout"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K4 ["createElement"]
       70 LOADK                            R8 K22 ["UIPadding"]
       71 DUPTABLE                         R9 K32 [{"PaddingRight", "PaddingLeft"}]
       72 GETIMPORT                        R10 K34 [UDim.new]
       74 LOADN                            R11 0
       75 LOADN                            R12 10
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K30 ["PaddingRight"]
       79 GETIMPORT                        R10 K34 [UDim.new]
       81 LOADN                            R11 0
       82 LOADN                            R12 10
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K31 ["PaddingLeft"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K22 ["UIPadding"]
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R7 R7 K4 ["createElement"]
       92 GETUPVAL                         R8 1
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R9 R9 K35 ["join"]
       96 GETTABLEKS                       R10 R0 K36 ["props"]
       98 DUPTABLE                         R11 K39 [{"IsPlaying", "OnEnded"}]
       99 GETTABLEKS                       R12 R0 K6 ["state"]
      101 GETTABLEKS                       R12 R12 K7 ["isPlaying"]
      103 SETTABLEKS                       R12 R11 K37 ["IsPlaying"]
      105 GETTABLEKS                       R12 R0 K40 ["onEnded"]
      107 SETTABLEKS                       R12 R11 K38 ["OnEnded"]
      109 CALL                             R9 2 -1
      110 CALL                             R7 -1 1
      111 SETTABLEKS                       R7 R6 K2 ["Player"]
      113 CALL                             R3 3 1
      114 SETTABLEKS                       R3 R2 K2 ["Player"]
      116 CALL                             R1 1 -1
      117 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioPlayer"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{["SoundId"] = 142376088}]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["AudioPlayer"]
       15 CALL                             R0 3 -1
       16 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K10 ["Parent"]
       30 GETTABLEKS                       R6 R6 K11 ["AudioPlayer"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Stories"]
       37 GETTABLEKS                       R7 R7 K13 ["ToolboxStoryWrapper"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R2 K14 ["PureComponent"]
       42 LOADK                            R9 K15 ["AudioPlayerWrapper"]
       43 NAMECALL                         R7 R7 K16 ["extend"]
       45 CALL                             R7 2 1
       46 DUPCLOSURE                       R8 K17 [PROTO_1]
       47 SETTABLEKS                       R8 R7 K18 ["init"]
       49 DUPCLOSURE                       R8 K19 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R8 R7 K20 ["render"]
       55 DUPTABLE                         R8 K24 [{["summary"] = "Audio Player", ["stories"]}]
       56 NEWTABLE                         R9 0 1
       58 DUPTABLE                         R10 K28 [{["name"] = "Playing", ["story"]}]
       59 DUPCLOSURE                       R11 K29 [PROTO_5]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R11 R10 K27 ["story"]
       65 SETLIST                          R9 R10 1 [1]
       67 SETTABLEKS                       R9 R8 K23 ["stories"]
       69 RETURN                           R8 1
