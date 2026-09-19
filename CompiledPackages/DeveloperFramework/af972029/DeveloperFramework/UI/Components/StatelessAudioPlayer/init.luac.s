PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["unmounting"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["SoundId"] ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["OnEnd"]
       12 CALL                             R2 0 0
       13 JUMPIFNOTEQKS                    R1 K4 ["TimeLength"] ; [+18]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["props"]
       18 GETTABLEKS                       R2 R2 K5 ["SetTimeLength"]
       20 GETTABLEKS                       R3 R0 K4 ["TimeLength"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K2 ["props"]
       26 GETTABLEKS                       R2 R2 K6 ["SetIsLoaded"]
       28 GETTABLEKS                       R3 R0 K7 ["IsLoaded"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R0 K7 ["IsLoaded"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K2 ["props"]
       37 GETTABLEKS                       R3 R3 K7 ["IsLoaded"]
       39 JUMPIFEQ                         R2 R3 ; [+9]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K2 ["props"]
       44 GETTABLEKS                       R2 R2 K6 ["SetIsLoaded"]
       46 GETTABLEKS                       R3 R0 K7 ["IsLoaded"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["soundRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["unmounting"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["PLAY"]
       15 JUMPIFNOTEQ                      R0 R3 ; [+12]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["props"]
       20 GETTABLEKS                       R3 R3 K5 ["SoundId"]
       22 SETTABLEKS                       R3 R1 K5 ["SoundId"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R1 K6 ["Playing"]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K7 ["PAUSE"]
       31 JUMPIFNOTEQ                      R0 R3 ; [+5]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R1 K6 ["Playing"]
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K8 ["SET_TIME"]
       40 JUMPIFNOTEQ                      R0 R3 ; [+14]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K4 ["props"]
       45 GETTABLEKS                       R3 R3 K9 ["IsPlaying"]
       47 JUMPIFNOT                        R3 ; [+7]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K4 ["props"]
       51 GETTABLEKS                       R3 R3 K10 ["CurrentTime"]
       53 SETTABLEKS                       R3 R1 K11 ["TimePosition"]
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["soundRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onSoundChange"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K3 ["handleMediaPlayerSignal"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["MediaPlayerSignal"]
        4 GETTABLEKS                       R3 R0 K2 ["handleMediaPlayerSignal"]
        6 NAMECALL                         R1 R1 K3 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K4 ["mediaPlayerSignalConnection"]
       11 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["unmounting"]
        3 GETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        8 GETTABLEKS                       R4 R1 K3 ["Position"]
       10 GETTABLEKS                       R5 R1 K4 ["Size"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K5 ["calculateSize"]
       15 GETTABLEKS                       R7 R2 K6 ["MediaPlayerControls"]
       17 CALL                             R6 1 1
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K7 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K8 [{"LayoutOrder", "Position", "Size"}]
       23 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       25 SETTABLEKS                       R4 R9 K3 ["Position"]
       27 SETTABLEKS                       R5 R9 K4 ["Size"]
       29 DUPTABLE                         R10 K12 [{"UIListLayout", "PlaceholderImageFrame", "MediaPlayerControls", "SoundObj"}]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K7 ["createElement"]
       33 LOADK                            R12 K9 ["UIListLayout"]
       34 DUPTABLE                         R13 K18 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       35 GETIMPORT                        R14 K21 [Enum.FillDirection.Vertical]
       37 SETTABLEKS                       R14 R13 K13 ["FillDirection"]
       39 GETIMPORT                        R14 K23 [Enum.HorizontalAlignment.Left]
       41 SETTABLEKS                       R14 R13 K14 ["HorizontalAlignment"]
       43 GETIMPORT                        R14 K25 [Enum.VerticalAlignment.Center]
       45 SETTABLEKS                       R14 R13 K15 ["VerticalAlignment"]
       47 GETIMPORT                        R14 K26 [Enum.SortOrder.LayoutOrder]
       49 SETTABLEKS                       R14 R13 K16 ["SortOrder"]
       51 GETIMPORT                        R14 K29 [UDim.new]
       53 LOADN                            R15 0
       54 LOADN                            R16 10
       55 CALL                             R14 2 1
       56 SETTABLEKS                       R14 R13 K17 ["Padding"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K9 ["UIListLayout"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K7 ["createElement"]
       64 GETUPVAL                         R12 2
       65 DUPTABLE                         R13 K31 [{["LayoutOrder"] = 1, ["Size"]}]
       66 GETIMPORT                        R14 K33 [UDim2.new]
       68 GETIMPORT                        R15 K29 [UDim.new]
       70 LOADN                            R16 1
       71 LOADN                            R17 0
       72 CALL                             R15 2 1
       73 GETIMPORT                        R17 K29 [UDim.new]
       75 LOADN                            R18 1
       76 LOADN                            R19 0
       77 CALL                             R17 2 1
       78 GETTABLEKS                       R18 R6 K34 ["Y"]
       80 SUB                              R16 R17 R18
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K4 ["Size"]
       84 DUPTABLE                         R14 K36 [{"PlaceholderImage"}]
       85 GETUPVAL                         R15 1
       86 GETTABLEKS                       R15 R15 K7 ["createElement"]
       88 GETUPVAL                         R16 3
       89 DUPTABLE                         R17 K38 [{"Style"}]
       90 GETTABLEKS                       R18 R2 K35 ["PlaceholderImage"]
       92 SETTABLEKS                       R18 R17 K37 ["Style"]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K35 ["PlaceholderImage"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K10 ["PlaceholderImageFrame"]
      100 GETUPVAL                         R11 1
      101 GETTABLEKS                       R11 R11 K7 ["createElement"]
      103 GETUPVAL                         R12 0
      104 DUPTABLE                         R13 K47 [{["LayoutOrder"] = 2, ["Style"], ["IsPlaying"], ["IsLoaded"], ["OnPause"], ["OnPlay"], ["TimeLength"], ["CurrentTime"], ["OnScrub"]}]
      105 GETTABLEKS                       R14 R2 K6 ["MediaPlayerControls"]
      107 SETTABLEKS                       R14 R13 K37 ["Style"]
      109 GETTABLEKS                       R14 R1 K40 ["IsPlaying"]
      111 SETTABLEKS                       R14 R13 K40 ["IsPlaying"]
      113 GETTABLEKS                       R14 R1 K41 ["IsLoaded"]
      115 SETTABLEKS                       R14 R13 K41 ["IsLoaded"]
      117 GETTABLEKS                       R14 R1 K42 ["OnPause"]
      119 SETTABLEKS                       R14 R13 K42 ["OnPause"]
      121 GETTABLEKS                       R14 R1 K43 ["OnPlay"]
      123 SETTABLEKS                       R14 R13 K43 ["OnPlay"]
      125 GETTABLEKS                       R14 R1 K44 ["TimeLength"]
      127 SETTABLEKS                       R14 R13 K44 ["TimeLength"]
      129 GETTABLEKS                       R14 R1 K45 ["CurrentTime"]
      131 SETTABLEKS                       R14 R13 K45 ["CurrentTime"]
      133 GETTABLEKS                       R14 R1 K48 ["SetCurrentTime"]
      135 SETTABLEKS                       R14 R13 K46 ["OnScrub"]
      137 CALL                             R11 2 1
      138 SETTABLEKS                       R11 R10 K6 ["MediaPlayerControls"]
      140 GETUPVAL                         R11 1
      141 GETTABLEKS                       R11 R11 K7 ["createElement"]
      143 LOADK                            R12 K49 ["Sound"]
      144 NEWTABLE                         R13 8 0
      146 LOADB                            R14 0
      147 SETTABLEKS                       R14 R13 K50 ["Looped"]
      149 GETTABLEKS                       R14 R1 K51 ["SoundId"]
      151 SETTABLEKS                       R14 R13 K51 ["SoundId"]
      153 GETTABLEKS                       R14 R1 K52 ["UsageContext"]
      155 SETTABLEKS                       R14 R13 K53 ["UsageContextPermission"]
      157 GETUPVAL                         R14 1
      158 GETTABLEKS                       R14 R14 K54 ["Ref"]
      160 GETTABLEKS                       R15 R0 K55 ["soundRef"]
      162 SETTABLE                         R15 R13 R14
      163 GETUPVAL                         R14 1
      164 GETTABLEKS                       R14 R14 K56 ["Event"]
      166 GETTABLEKS                       R14 R14 K57 ["Changed"]
      168 GETTABLEKS                       R15 R0 K58 ["onSoundChange"]
      170 SETTABLE                         R15 R13 R14
      171 GETUPVAL                         R14 1
      172 GETTABLEKS                       R14 R14 K56 ["Event"]
      174 GETTABLEKS                       R14 R14 K59 ["Ended"]
      176 GETTABLEKS                       R15 R1 K60 ["OnEnd"]
      178 SETTABLE                         R15 R13 R14
      179 CALL                             R11 2 1
      180 SETTABLEKS                       R11 R10 K11 ["SoundObj"]
      182 CALL                             R7 3 -1
      183 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R6 K12 ["Components"]
       38 GETTABLEKS                       R6 R6 K13 ["Container"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K14 ["Image"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R8 K12 ["Components"]
       56 GETTABLEKS                       R8 R8 K15 ["MediaPlayerControls"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R0 K2 ["UI"]
       63 GETTABLEKS                       R9 R9 K12 ["Components"]
       65 GETTABLEKS                       R9 R9 K16 ["MediaPlayerWrapper"]
       67 GETTABLEKS                       R9 R9 K17 ["MediaPlayerSignal"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       72 LOADK                            R11 K19 ["StatelessAudioPlayer"]
       73 NAMECALL                         R9 R9 K20 ["extend"]
       75 CALL                             R9 2 1
       76 GETTABLEKS                       R10 R4 K21 ["wrap"]
       78 MOVE                             R11 R9
       79 GETIMPORT                        R12 K1 [script]
       81 CALL                             R10 2 0
       82 DUPCLOSURE                       R10 K22 [PROTO_2]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R10 R9 K23 ["init"]
       87 DUPCLOSURE                       R10 K24 [PROTO_3]
       88 SETTABLEKS                       R10 R9 K25 ["didMount"]
       90 DUPCLOSURE                       R10 K26 [PROTO_4]
       91 SETTABLEKS                       R10 R9 K27 ["willUnmount"]
       93 DUPCLOSURE                       R10 K28 [PROTO_5]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R10 R9 K29 ["render"]
      100 MOVE                             R10 R3
      101 DUPTABLE                         R11 K31 [{"Stylizer"}]
      102 GETTABLEKS                       R12 R2 K30 ["Stylizer"]
      104 SETTABLEKS                       R12 R11 K30 ["Stylizer"]
      106 CALL                             R10 1 1
      107 MOVE                             R11 R9
      108 CALL                             R10 1 1
      109 MOVE                             R9 R10
      110 RETURN                           R9 1
