PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R5 R2 K2 ["default"]
       16 NOT                              R4 R5
       17 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       19 LOADK                            R5 K3 ["ActiveViewContext not provided"]
       20 GETIMPORT                        R3 K5 [assert]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R2 K6 ["activeViewIdentifier"]
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R4 R2 K6 ["activeViewIdentifier"]
       28 GETTABLE                         R3 R1 R4
       29 GETUPVAL                         R5 5
       30 CALL                             R5 0 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 LOADNIL                          R4
       33 JUMP                             ; [+2]
       34 GETUPVAL                         R4 6
       35 CALL                             R4 0 1
       36 NEWTABLE                         R5 0 0
       38 MOVE                             R6 R0
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       44 MOVE                             R12 R5
       45 MOVE                             R13 R9
       46 GETIMPORT                        R11 K9 [table.insert]
       48 CALL                             R11 2 0
       49 FORGLOOP                         R6 1 ; [-8]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K10 ["useRef"]
       54 LOADNIL                          R7
       55 CALL                             R6 1 1
       56 GETUPVAL                         R7 7
       57 GETUPVAL                         R8 8
       58 GETTABLEKS                       R8 R8 K11 ["ContextStack"]
       60 DUPTABLE                         R9 K13 [{"providers"}]
       61 NEWTABLE                         R10 0 6
       63 GETUPVAL                         R11 7
       64 GETUPVAL                         R12 9
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 7
       67 GETUPVAL                         R14 5
       68 CALL                             R14 0 1
       69 JUMPIFNOT                        R14 ; [+2]
       70 GETUPVAL                         R13 10
       71 JUMP                             ; [+3]
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R13 R13 K14 ["Fragment"]
       75 CALL                             R12 1 1
       76 GETUPVAL                         R13 7
       77 GETUPVAL                         R14 11
       78 GETTABLEKS                       R14 R14 K15 ["Provider"]
       80 CALL                             R13 1 1
       81 GETUPVAL                         R14 7
       82 GETUPVAL                         R15 12
       83 GETTABLEKS                       R15 R15 K15 ["Provider"]
       85 CALL                             R14 1 1
       86 GETUPVAL                         R15 7
       87 GETUPVAL                         R16 13
       88 GETTABLEKS                       R16 R16 K15 ["Provider"]
       90 CALL                             R15 1 1
       91 GETUPVAL                         R16 7
       92 GETUPVAL                         R17 14
       93 DUPTABLE                         R18 K18 [{"context", "defaultProvider"}]
       94 GETUPVAL                         R19 15
       95 GETTABLEKS                       R19 R19 K1 ["Context"]
       97 SETTABLEKS                       R19 R18 K16 ["context"]
       99 GETUPVAL                         R19 15
      100 GETTABLEKS                       R19 R19 K19 ["StandardProvider"]
      102 SETTABLEKS                       R19 R18 K17 ["defaultProvider"]
      104 CALL                             R16 2 -1
      105 SETLIST                          R10 R11 -1 [1]
      107 SETTABLEKS                       R10 R9 K12 ["providers"]
      109 GETUPVAL                         R10 7
      110 LOADK                            R11 K20 ["Frame"]
      111 NEWTABLE                         R12 4 0
      113 LOADN                            R13 0
      114 SETTABLEKS                       R13 R12 K21 ["BorderSizePixel"]
      116 GETIMPORT                        R13 K24 [UDim2.fromScale]
      118 LOADN                            R14 1
      119 LOADN                            R15 1
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K25 ["Size"]
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R13 R13 K26 ["Tag"]
      126 LOADK                            R14 K27 ["Explorer-BG-Surface100"]
      127 SETTABLE                         R14 R12 R13
      128 SETTABLEKS                       R6 R12 K28 ["ref"]
      130 DUPTABLE                         R13 K33 [{"StyleLink", "ActiveView", "Connections", "SessionView"}]
      131 GETUPVAL                         R15 5
      132 CALL                             R15 0 1
      133 JUMPIFNOT                        R15 ; [+4]
      134 GETUPVAL                         R14 7
      135 GETUPVAL                         R15 16
      136 CALL                             R14 1 1
      137 JUMP                             ; [+8]
      138 GETUPVAL                         R14 3
      139 GETTABLEKS                       R14 R14 K34 ["createElement"]
      141 LOADK                            R15 K29 ["StyleLink"]
      142 DUPTABLE                         R16 K36 [{"StyleSheet"}]
      143 SETTABLEKS                       R4 R16 K35 ["StyleSheet"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K29 ["StyleLink"]
      148 GETUPVAL                         R14 7
      149 LOADK                            R15 K37 ["TextLabel"]
      150 DUPTABLE                         R16 K41 [{["Size"], ["Text"], ["Visible"] = False}]
      151 GETIMPORT                        R17 K24 [UDim2.fromScale]
      153 LOADN                            R18 1
      154 LOADK                            R19 K42 [0.5]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K25 ["Size"]
      158 GETTABLEKS                       R17 R2 K6 ["activeViewIdentifier"]
      160 SETTABLEKS                       R17 R16 K38 ["Text"]
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K30 ["ActiveView"]
      165 GETUPVAL                         R14 7
      166 LOADK                            R15 K37 ["TextLabel"]
      167 DUPTABLE                         R16 K44 [{["Position"], ["Size"], ["Text"], ["Visible"] = False}]
      168 GETIMPORT                        R17 K24 [UDim2.fromScale]
      170 LOADN                            R18 0
      171 LOADK                            R19 K42 [0.5]
      172 CALL                             R17 2 1
      173 SETTABLEKS                       R17 R16 K43 ["Position"]
      175 GETIMPORT                        R17 K24 [UDim2.fromScale]
      177 LOADN                            R18 1
      178 LOADK                            R19 K42 [0.5]
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K25 ["Size"]
      182 GETIMPORT                        R17 K46 [table.concat]
      184 MOVE                             R18 R5
      185 LOADK                            R19 K47 [" "]
      186 CALL                             R17 2 1
      187 SETTABLEKS                       R17 R16 K38 ["Text"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R13 K31 ["Connections"]
      192 MOVE                             R14 R3
      193 JUMPIFNOT                        R14 ; [+8]
      194 GETUPVAL                         R14 7
      195 GETUPVAL                         R15 17
      196 DUPTABLE                         R16 K50 [{"session", "windowRef"}]
      197 SETTABLEKS                       R3 R16 K48 ["session"]
      199 SETTABLEKS                       R6 R16 K49 ["windowRef"]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R13 K32 ["SessionView"]
      204 CALL                             R10 3 -1
      205 CALL                             R7 -1 -1
      206 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ActiveViewContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["ClassIconContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["DevFrameworkContextProviders"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["FoundationProvider"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K12 ["HoverBlockerContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K13 ["InsertObjectContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Components"]
       61 GETTABLEKS                       R8 R8 K14 ["ProviderOrDefault"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K15 ["Parent"]
       68 GETTABLEKS                       R9 R9 K16 ["React"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K15 ["Parent"]
       75 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Components"]
       82 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       84 GETTABLEKS                       R11 R11 K18 ["RenameBoxContext"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K6 ["Components"]
       91 GETTABLEKS                       R12 R12 K19 ["SessionView"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Components"]
       98 GETTABLEKS                       R13 R13 K20 ["StyleSheetLink"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K21 ["Flags"]
      105 GETTABLEKS                       R14 R14 K22 ["getFFlagExplorerFoundation"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      112 GETTABLEKS                       R15 R15 K24 ["useInitialSettingsAnalytics"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K25 ["Networking"]
      119 GETTABLEKS                       R16 R16 K26 ["useServe"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K25 ["Networking"]
      126 GETTABLEKS                       R17 R17 K27 ["useSessions"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K23 ["Hooks"]
      133 GETTABLEKS                       R18 R18 K28 ["useStyleSheet"]
      135 CALL                             R17 1 1
      136 GETTABLEKS                       R18 R8 K29 ["createElement"]
      138 DUPCLOSURE                       R19 K30 [PROTO_0]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R11
      157 RETURN                           R19 1
