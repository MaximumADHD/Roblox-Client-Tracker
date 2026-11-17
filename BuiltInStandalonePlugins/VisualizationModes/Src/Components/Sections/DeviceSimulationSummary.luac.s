PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDeviceSimulatorRegistry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R3 3
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 5
       10 GETUPVAL                         R4 6
       11 CALL                             R0 4 1
       12 GETUPVAL                         R1 0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R1 7
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K2 [task.wait]
       19 LOADN                            R2 1
       20 CALL                             R1 1 0
       21 JUMPBACK                         ; [-22]
       22 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R0 K1 [pcall]
        9 CALL                             R0 1 2
       10 LOADB                            R2 1
       11 NEWTABLE                         R3 0 0
       13 GETIMPORT                        R4 K4 [task.spawn]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          REF R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U4
       24 CALL                             R4 1 0
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U4
       28 CLOSEUPVALS                      R2
       29 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K1 ["use"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R0 K4 ["IsMenuOpen"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useState"]
       20 LOADK                            R5 K6 [""]
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 3
       33 MOVE                             R9 R3
       34 MOVE                             R10 R1
       35 MOVE                             R11 R2
       36 SETLIST                          R8 R9 3 [1]
       38 CALL                             R6 2 0
       39 JUMPIFNOTEQKS                    R4 K6 [""] ; [+3]
       41 LOADNIL                          R6
       42 RETURN                           R6 1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K8 ["createElement"]
       46 GETUPVAL                         R7 3
       47 NEWTABLE                         R8 2 0
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K9 ["Tag"]
       52 LOADK                            R10 K10 ["X-Fill X-Column X-Top X-FitY"]
       53 SETTABLE                         R10 R8 R9
       54 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       56 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       58 DUPTABLE                         R9 K14 [{"UIPadding", "Summary"}]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K8 ["createElement"]
       62 LOADK                            R11 K12 ["UIPadding"]
       63 DUPTABLE                         R12 K17 [{"PaddingLeft", "PaddingRight"}]
       64 GETIMPORT                        R13 K20 [UDim.new]
       66 LOADN                            R14 0
       67 LOADN                            R15 22
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K15 ["PaddingLeft"]
       71 GETIMPORT                        R13 K20 [UDim.new]
       73 LOADN                            R14 0
       74 LOADN                            R15 3
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K16 ["PaddingRight"]
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K12 ["UIPadding"]
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K8 ["createElement"]
       84 GETUPVAL                         R11 4
       85 DUPTABLE                         R12 K27 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["Size"], ["AutomaticSize"]}]
       86 SETTABLEKS                       R4 R12 K21 ["Text"]
       88 GETIMPORT                        R13 K30 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
       92 GETIMPORT                        R13 K33 [UDim2.fromScale]
       94 LOADN                            R14 1
       95 LOADN                            R15 0
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K25 ["Size"]
       99 GETIMPORT                        R13 K35 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R13 R12 K26 ["AutomaticSize"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K13 ["Summary"]
      106 CALL                             R6 3 -1
      107 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["readSimulationSummaryAsync"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R1 K13 ["ContextServices"]
       34 GETTABLEKS                       R6 R4 K14 ["Pane"]
       36 GETTABLEKS                       R7 R4 K15 ["TextLabel"]
       38 DUPCLOSURE                       R8 K16 [PROTO_4]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 RETURN                           R8 1
