PROTO_0:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provideMockContext"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["new"]
       11 LOADK                            R5 K2 ["PlaceVersionHistory"]
       12 LOADNIL                          R6
       13 GETUPVAL                         R7 3
       14 LOADK                            R9 K3 ["Plugin"]
       15 NAMECALL                         R7 R7 K4 ["FindFirstAncestorWhichIsA"]
       17 CALL                             R7 2 -1
       18 CALL                             R4 -1 -1
       19 CALL                             R3 -1 -1
       20 SETLIST                          R2 R3 -1 [1]
       22 DUPTABLE                         R3 K6 [{"ScreenGui"}]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K7 ["createElement"]
       26 LOADK                            R5 K5 ["ScreenGui"]
       27 LOADNIL                          R6
       28 DUPTABLE                         R7 K9 [{"ContextStack"}]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K7 ["createElement"]
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R9 R9 K8 ["ContextStack"]
       35 DUPTABLE                         R10 K11 [{"providers"}]
       36 NEWTABLE                         R11 0 8
       38 GETUPVAL                         R12 4
       39 GETTABLEKS                       R12 R12 K7 ["createElement"]
       41 GETUPVAL                         R13 6
       42 GETTABLEKS                       R13 R13 K12 ["FoundationProvider"]
       44 CALL                             R12 1 1
       45 GETUPVAL                         R13 4
       46 GETTABLEKS                       R13 R13 K7 ["createElement"]
       48 GETUPVAL                         R14 7
       49 CALL                             R13 1 1
       50 GETUPVAL                         R14 4
       51 GETTABLEKS                       R14 R14 K7 ["createElement"]
       53 GETUPVAL                         R15 8
       54 CALL                             R14 1 1
       55 GETUPVAL                         R15 4
       56 GETTABLEKS                       R15 R15 K7 ["createElement"]
       58 GETUPVAL                         R16 9
       59 GETTABLEKS                       R18 R0 K13 ["networkContextProps"]
       61 JUMPIFNOT                        R18 ; [+3]
       62 GETTABLEKS                       R17 R0 K13 ["networkContextProps"]
       64 JUMP                             ; [+3]
       65 GETUPVAL                         R17 10
       66 GETTABLEKS                       R17 R17 K13 ["networkContextProps"]
       68 CALL                             R15 2 1
       69 GETUPVAL                         R16 4
       70 GETTABLEKS                       R16 R16 K7 ["createElement"]
       72 GETUPVAL                         R17 11
       73 CALL                             R16 1 1
       74 GETUPVAL                         R17 4
       75 GETTABLEKS                       R17 R17 K7 ["createElement"]
       77 GETUPVAL                         R18 12
       78 GETTABLEKS                       R20 R0 K14 ["dialogContextProps"]
       80 JUMPIFNOT                        R20 ; [+3]
       81 GETTABLEKS                       R19 R0 K14 ["dialogContextProps"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R19 10
       85 GETTABLEKS                       R19 R19 K14 ["dialogContextProps"]
       87 CALL                             R17 2 1
       88 GETUPVAL                         R18 4
       89 GETTABLEKS                       R18 R18 K7 ["createElement"]
       91 GETUPVAL                         R19 13
       92 CALL                             R18 1 1
       93 GETUPVAL                         R19 4
       94 GETTABLEKS                       R19 R19 K7 ["createElement"]
       96 GETUPVAL                         R20 14
       97 CALL                             R19 1 -1
       98 SETLIST                          R11 R12 -1 [1]
      100 SETTABLEKS                       R11 R10 K10 ["providers"]
      102 GETTABLEKS                       R11 R0 K15 ["children"]
      104 CALL                             R8 3 1
      105 SETTABLEKS                       R8 R7 K8 ["ContextStack"]
      107 CALL                             R4 3 1
      108 SETTABLEKS                       R4 R3 K5 ["ScreenGui"]
      110 CALL                             R1 2 -1
      111 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["TestHelpers"]
       37 GETTABLEKS                       R6 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R7 R0 K12 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["TestUtil"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R6 K15 ["WidgetContextProvider"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R6 K16 ["SettingContextProvider"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R7 K17 ["MockNetworkContextProvider"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R6 K18 ["StudioContextProvider"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R6 K19 ["ControllerContextProvider"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R6 K20 ["DialogContextProvider_NEW"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R6 K21 ["PopoverContextProvider"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R4 K22 ["ContextServices"]
       82 GETTABLEKS                       R15 R15 K23 ["Plugin"]
       84 GETTABLEKS                       R16 R4 K11 ["TestHelpers"]
       86 GETTABLEKS                       R16 R16 K24 ["Instances"]
       88 GETTABLEKS                       R16 R16 K25 ["MockPlugin"]
       90 DUPTABLE                         R17 K28 [{"dialogContextProps", "networkContextProps"}]
       91 DUPTABLE                         R18 K30 [{"bridge"}]
       92 DUPTABLE                         R19 K36 [{"OnVersionNotesRequest", "RespondVersionNotesAsync", "OnHeartbeatRequest", "RespondHeartbeatAsync", "OnEditNotes"}]
       93 GETIMPORT                        R20 K39 [Instance.new]
       95 LOADK                            R21 K40 ["BindableEvent"]
       96 CALL                             R20 1 1
       97 GETTABLEKS                       R20 R20 K41 ["Event"]
       99 SETTABLEKS                       R20 R19 K31 ["OnVersionNotesRequest"]
      101 DUPCLOSURE                       R20 K42 [PROTO_0]
      102 SETTABLEKS                       R20 R19 K32 ["RespondVersionNotesAsync"]
      104 GETIMPORT                        R20 K39 [Instance.new]
      106 LOADK                            R21 K40 ["BindableEvent"]
      107 CALL                             R20 1 1
      108 GETTABLEKS                       R20 R20 K41 ["Event"]
      110 SETTABLEKS                       R20 R19 K33 ["OnHeartbeatRequest"]
      112 DUPCLOSURE                       R20 K43 [PROTO_1]
      113 SETTABLEKS                       R20 R19 K34 ["RespondHeartbeatAsync"]
      115 GETIMPORT                        R20 K39 [Instance.new]
      117 LOADK                            R21 K40 ["BindableEvent"]
      118 CALL                             R20 1 1
      119 GETTABLEKS                       R20 R20 K41 ["Event"]
      121 SETTABLEKS                       R20 R19 K35 ["OnEditNotes"]
      123 SETTABLEKS                       R19 R18 K29 ["bridge"]
      125 SETTABLEKS                       R18 R17 K26 ["dialogContextProps"]
      127 DUPTABLE                         R18 K45 [{"mockNetworkConfig"}]
      128 DUPTABLE                         R19 K49 [{"numVersions", "latencySec", "failureRate"}]
      129 LOADN                            R20 231
      130 SETTABLEKS                       R20 R19 K46 ["numVersions"]
      132 LOADN                            R20 1
      133 SETTABLEKS                       R20 R19 K47 ["latencySec"]
      135 LOADN                            R20 0
      136 SETTABLEKS                       R20 R19 K48 ["failureRate"]
      138 SETTABLEKS                       R19 R18 K44 ["mockNetworkConfig"]
      140 SETTABLEKS                       R18 R17 K27 ["networkContextProps"]
      142 DUPCLOSURE                       R18 K50 [PROTO_2]
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R14
      158 SETGLOBAL                        R18 K51 ["MockWrapper"]
      160 GETGLOBAL                        R18 K51 ["MockWrapper"]
      162 RETURN                           R18 1
