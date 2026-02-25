PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isPlaying"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isPlaying"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"isPlaying"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isPlaying"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onEnded"]
       10 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"Controls", "Player"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K4 ["createElement"]
        7 LOADK                            R4 K5 ["TextButton"]
        8 NEWTABLE                         R5 4 0
       10 GETTABLEKS                       R8 R0 K6 ["state"]
       12 GETTABLEKS                       R7 R8 K7 ["isPlaying"]
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
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K15 ["Event"]
       32 GETTABLEKS                       R6 R7 K16 ["Activated"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R0
       36 SETTABLE                         R7 R5 R6
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K1 ["Controls"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K4 ["createElement"]
       43 LOADK                            R4 K17 ["Frame"]
       44 DUPTABLE                         R5 K19 [{"Size", "BackgroundTransparency"}]
       45 GETIMPORT                        R6 K13 [UDim2.new]
       47 LOADN                            R7 1
       48 LOADN                            R8 0
       49 LOADN                            R9 0
       50 LOADN                            R10 20
       51 CALL                             R6 4 1
       52 SETTABLEKS                       R6 R5 K14 ["Size"]
       54 LOADN                            R6 1
       55 SETTABLEKS                       R6 R5 K18 ["BackgroundTransparency"]
       57 DUPTABLE                         R6 K22 [{"Layout", "UIPadding", "Player"}]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K4 ["createElement"]
       61 LOADK                            R8 K23 ["UIListLayout"]
       62 DUPTABLE                         R9 K25 [{"VerticalAlignment"}]
       63 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Center]
       65 SETTABLEKS                       R10 R9 K24 ["VerticalAlignment"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K20 ["Layout"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K4 ["createElement"]
       73 LOADK                            R8 K21 ["UIPadding"]
       74 DUPTABLE                         R9 K31 [{"PaddingRight", "PaddingLeft"}]
       75 GETIMPORT                        R10 K33 [UDim.new]
       77 LOADN                            R11 0
       78 LOADN                            R12 10
       79 CALL                             R10 2 1
       80 SETTABLEKS                       R10 R9 K29 ["PaddingRight"]
       82 GETIMPORT                        R10 K33 [UDim.new]
       84 LOADN                            R11 0
       85 LOADN                            R12 10
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K30 ["PaddingLeft"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K21 ["UIPadding"]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R7 R8 K4 ["createElement"]
       95 GETUPVAL                         R8 1
       96 GETUPVAL                         R10 2
       97 GETTABLEKS                       R9 R10 K34 ["join"]
       99 GETTABLEKS                       R10 R0 K35 ["props"]
      101 DUPTABLE                         R11 K38 [{"IsPlaying", "OnEnded"}]
      102 GETTABLEKS                       R13 R0 K6 ["state"]
      104 GETTABLEKS                       R12 R13 K7 ["isPlaying"]
      106 SETTABLEKS                       R12 R11 K36 ["IsPlaying"]
      108 GETTABLEKS                       R12 R0 K39 ["onEnded"]
      110 SETTABLEKS                       R12 R11 K37 ["OnEnded"]
      112 CALL                             R9 2 -1
      113 CALL                             R7 -1 1
      114 SETTABLEKS                       R7 R6 K2 ["Player"]
      116 CALL                             R3 3 1
      117 SETTABLEKS                       R3 R2 K2 ["Player"]
      119 CALL                             R1 1 -1
      120 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioPlayer"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K4 [{"SoundId"}]
       12 LOADK                            R7 K5 [142376088]
       13 SETTABLEKS                       R7 R6 K3 ["SoundId"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioPlayer"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

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
       26 GETIMPORT                        R8 K1 [script]
       28 GETTABLEKS                       R7 R8 K10 ["Parent"]
       30 GETTABLEKS                       R6 R7 K11 ["AudioPlayer"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Stories"]
       37 GETTABLEKS                       R7 R8 K13 ["ToolboxStoryWrapper"]
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
       55 DUPTABLE                         R8 K23 [{"summary", "stories"}]
       56 LOADK                            R9 K24 ["Audio Player"]
       57 SETTABLEKS                       R9 R8 K21 ["summary"]
       59 NEWTABLE                         R9 0 1
       61 DUPTABLE                         R10 K27 [{"name", "story"}]
       62 LOADK                            R11 K28 ["Playing"]
       63 SETTABLEKS                       R11 R10 K25 ["name"]
       65 DUPCLOSURE                       R11 K29 [PROTO_5]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R10 K26 ["story"]
       71 SETLIST                          R9 R10 1 [1]
       73 SETTABLEKS                       R9 R8 K22 ["stories"]
       75 RETURN                           R8 1
