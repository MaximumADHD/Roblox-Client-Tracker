PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 JUMPIFEQKS                       R2 K1 ["FoundationOverlay"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 1
        7 DUPCLOSURE                       R2 K2 [PROTO_0]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKNIL                     R0 ; [+5]
        4 NAMECALL                         R1 R0 K0 ["GetFullName"]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADK                            R1 K1 ["N/A"]
        9 JUMPIFEQKNIL                     R0 ; [+10]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["getOrSet"]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 DUPCLOSURE                       R5 K3 [PROTO_2]
       17 CAPTURE                          UPVAL U3
       18 CALL                             R2 3 1
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K1 ["N/A"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K4 ["createElement"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K5 ["Fragment"]
       27 LOADNIL                          R5
       28 DUPTABLE                         R6 K8 [{"Text", "Overlay"}]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K4 ["createElement"]
       32 GETUPVAL                         R8 5
       33 DUPTABLE                         R9 K13 [{["tag"] = "auto-xy text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
       34 LOADK                            R11 K14 ["Overlay: %*\nUUID: %*"]
       35 MOVE                             R13 R1
       36 MOVE                             R14 R2
       37 NAMECALL                         R11 R11 K15 ["format"]
       39 CALL                             R11 3 1
       40 MOVE                             R10 R11
       41 SETTABLEKS                       R10 R9 K6 ["Text"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K6 ["Text"]
       46 JUMPIFNOT                        R0 ; [+28]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K16 ["createPortal"]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R8 R8 K4 ["createElement"]
       53 GETUPVAL                         R9 7
       54 DUPTABLE                         R10 K19 [{["tag"] = "auto-xy padding-medium bg-system-contrast", ["Position"]}]
       55 GETIMPORT                        R11 K22 [UDim2.fromScale]
       57 LOADK                            R12 K23 [0.5]
       58 LOADK                            R13 K23 [0.5]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K18 ["Position"]
       62 DUPTABLE                         R11 K25 [{"OverlayContent"}]
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R12 R12 K4 ["createElement"]
       66 GETUPVAL                         R13 5
       67 DUPTABLE                         R14 K28 [{["tag"] = "auto-xy content-inverse-emphasis", ["Text"] = "Overlay content"}]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K24 ["OverlayContent"]
       71 CALL                             R8 3 1
       72 MOVE                             R9 R0
       73 CALL                             R7 2 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K7 ["Overlay"]
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{["tag"] = "row gap-medium size-full-1500 auto-x align-y-center items-center"}]
       10 DUPTABLE                         R5 K7 [{"Text", "Button"}]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 CALL                             R6 1 1
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K1 ["createElement"]
       21 GETUPVAL                         R7 3
       22 DUPTABLE                         R8 K12 [{["tag"] = "auto-xy text-wrap text-align-x-left", ["Text"] = "Overlay not mounted", ["LayoutOrder"] = 2}]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K5 ["Text"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K1 ["createElement"]
       29 GETUPVAL                         R7 4
       30 DUPTABLE                         R8 K17 [{["tag"] = "auto-y size-full-0 text-wrap text-align-x-left", ["text"], ["LayoutOrder"] = 1, ["onActivated"]}]
       31 JUMPIFNOT                        R0 ; [+2]
       32 LOADK                            R9 K18 ["Unmount Overlay"]
       33 JUMP                             ; [+1]
       34 LOADK                            R9 K19 ["Mount Overlay"]
       35 SETTABLEKS                       R9 R8 K14 ["text"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R9 R8 K16 ["onActivated"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K6 ["Button"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKNIL                     R0 ; [+5]
        4 NAMECALL                         R1 R0 K0 ["GetFullName"]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADK                            R1 K1 ["N/A"]
        9 LOADK                            R3 K2 ["Overlay Name: %*"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["createElement"]
       18 GETUPVAL                         R4 2
       19 DUPTABLE                         R5 K8 [{["tag"] = "auto-y align-x-center size-full-0 text-wrap", ["Text"]}]
       20 SETTABLEKS                       R2 R5 K7 ["Text"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 LOADB                            R7 0
        6 NAMECALL                         R5 R5 K0 ["GenerateGUID"]
        8 CALL                             R5 2 1
        9 GETUPVAL                         R6 2
       10 SETTABLE                         R5 R6 R4
       11 FORGLOOP                         R0 2 ; [-8]
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 2
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ChildAdded"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["ChildRemoved"]
       12 GETUPVAL                         R4 1
       13 NAMECALL                         R2 R2 K1 ["Connect"]
       15 CALL                             R2 2 -1
       16 SETLIST                          R0 R1 -1 [1]
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 0
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["useState"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 NEWTABLE                         R5 0 1
       32 GETUPVAL                         R6 4
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R6 0 1
       44 GETUPVAL                         R7 4
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R4 2 0
       48 NEWTABLE                         R4 0 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K5 ["createElement"]
       53 GETUPVAL                         R6 5
       54 DUPTABLE                         R7 K11 [{["key"] = "OverlayCount", ["tag"] = "auto-y size-full-0 text-wrap text-align-x-left margin-bottom-medium", ["Text"]}]
       55 LOADK                            R9 K12 ["Initial FoundationOverlay Count: %*\nCurrent FoundationOverlay Count: %*"]
       56 LENGTH                           R11 R0
       57 LENGTH                           R12 R1
       58 NAMECALL                         R9 R9 K13 ["format"]
       60 CALL                             R9 3 1
       61 MOVE                             R8 R9
       62 SETTABLEKS                       R8 R7 K10 ["Text"]
       64 CALL                             R5 2 -1
       65 SETLIST                          R4 R5 -1 [1]
       67 LOADN                            R7 1
       68 LOADN                            R5 10
       69 LOADN                            R6 1
       70 FORNPREP                         R5
       71 MOVE                             R9 R4
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K5 ["createElement"]
       75 GETUPVAL                         R11 6
       76 NEWTABLE                         R12 0 0
       78 NEWTABLE                         R13 1 0
       80 LOADK                            R15 K14 ["OverlayConsumer%*"]
       81 MOVE                             R17 R7
       82 NAMECALL                         R15 R15 K13 ["format"]
       84 CALL                             R15 2 1
       85 MOVE                             R14 R15
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K5 ["createElement"]
       89 GETUPVAL                         R16 7
       90 CALL                             R15 1 1
       91 SETTABLE                         R15 R13 R14
       92 CALL                             R10 3 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R8 K17 [table.insert]
       96 CALL                             R8 -1 0
       97 FORNLOOP                         R5
       98 GETUPVAL                         R5 0
       99 GETTABLEKS                       R5 R5 K5 ["createElement"]
      101 GETUPVAL                         R6 8
      102 DUPTABLE                         R7 K19 [{["tag"] = "col gap-small auto-xy"}]
      103 MOVE                             R8 R4
      104 CALL                             R5 3 -1
      105 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Foundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ReactRoblox"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R1 K14 ["Components"]
       34 GETTABLEKS                       R7 R7 K15 ["Button"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETIMPORT                        R8 K5 [script]
       41 GETTABLEKS                       R8 R8 K8 ["Parent"]
       43 GETTABLEKS                       R8 R8 K16 ["OverlayProvider"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R1 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K17 ["Text"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R1 K14 ["Components"]
       57 GETTABLEKS                       R10 R10 K18 ["View"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETIMPORT                        R11 K5 [script]
       64 GETTABLEKS                       R11 R11 K8 ["Parent"]
       66 GETTABLEKS                       R11 R11 K19 ["useOverlay"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R1 K20 ["Utility"]
       73 GETTABLEKS                       R12 R12 K21 ["Wrappers"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R11 K22 ["Services"]
       78 GETTABLEKS                       R12 R12 K23 ["CoreGui"]
       80 GETTABLEKS                       R13 R11 K22 ["Services"]
       82 GETTABLEKS                       R13 R13 K24 ["RunService"]
       84 GETTABLEKS                       R14 R11 K22 ["Services"]
       86 GETTABLEKS                       R14 R14 K25 ["Players"]
       88 GETTABLEKS                       R16 R14 K26 ["LocalPlayer"]
       90 JUMPIFNOT                        R16 ; [+12]
       91 NAMECALL                         R16 R13 K27 ["IsRunning"]
       93 CALL                             R16 1 1
       94 JUMPIFNOT                        R16 ; [+8]
       95 GETTABLEKS                       R15 R14 K26 ["LocalPlayer"]
       97 LOADK                            R17 K28 ["PlayerGui"]
       98 LOADN                            R18 3
       99 NAMECALL                         R15 R15 K29 ["WaitForChild"]
      101 CALL                             R15 3 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R15
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R1 K20 ["Utility"]
      108 GETTABLEKS                       R17 R17 K30 ["isPluginSecurity"]
      110 CALL                             R16 1 1
      111 MOVE                             R18 R16
      112 CALL                             R18 0 1
      113 JUMPIFNOT                        R18 ; [+2]
      114 MOVE                             R17 R12
      115 JUMP                             ; [+1]
      116 MOVE                             R17 R15
      117 DUPCLOSURE                       R18 K31 [PROTO_1]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R17
      120 NEWTABLE                         R19 0 0
      122 DUPCLOSURE                       R20 K32 [PROTO_3]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R9
      131 DUPCLOSURE                       R21 K33 [PROTO_5]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R6
      137 DUPTABLE                         R22 K36 [{["summary"] = "useOverlay", ["stories"]}]
      138 DUPTABLE                         R23 K38 [{"useOverlay", "lazyOverlay"}]
      139 DUPTABLE                         R24 K42 [{["name"] = "useOverlay", ["summary"] = "Provides access to the overlay", ["story"]}]
      140 DUPCLOSURE                       R25 K43 [PROTO_6]
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R25 R24 K41 ["story"]
      146 SETTABLEKS                       R24 R23 K19 ["useOverlay"]
      148 DUPTABLE                         R24 K46 [{["name"] = "Lazy Overlay Mounting", ["summary"] = "Does not eagerly pollute workspace with FoundationOverlay instances (Flags.FoundationLazyOverlayLoading must be enabled)", ["story"]}]
      149 DUPCLOSURE                       R25 K47 [PROTO_11]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R9
      159 SETTABLEKS                       R25 R24 K41 ["story"]
      161 SETTABLEKS                       R24 R23 K37 ["lazyOverlay"]
      163 SETTABLEKS                       R23 R22 K35 ["stories"]
      165 RETURN                           R22 1
