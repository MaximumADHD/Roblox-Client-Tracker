PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [next]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADB                            R0 1
       11 RETURN                           R0 1
       12 LOADB                            R0 0
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K0 ["className"]
       15 JUMPIFNOTEQKS                    R7 K1 ["Parameter"] ; [+33]
       17 GETTABLEKS                       R7 R6 K2 ["name"]
       19 JUMPIFNOT                        R7 ; [+29]
       20 GETTABLE                         R8 R1 R7
       21 JUMPIF                           R8 ; [+27]
       22 GETTABLEKS                       R9 R6 K3 ["nodeType"]
       24 FASTCALL1                        TYPE R9 ; [+2]
       25 GETIMPORT                        R8 K5 [type]
       27 CALL                             R8 1 1
       28 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+20]
       30 LOADB                            R8 1
       31 SETTABLE                         R8 R1 R7
       32 GETTABLEKS                       R8 R6 K7 ["id"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K8 ["createElement"]
       37 GETUPVAL                         R10 2
       38 DUPTABLE                         R11 K11 [{"LayoutOrder", "node"}]
       39 LOADN                            R13 1
       40 GETUPVAL                         R14 3
       41 CALL                             R14 0 1
       42 ADD                              R12 R13 R14
       43 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R11 K10 ["node"]
       47 CALL                             R9 2 1
       48 SETTABLE                         R9 R0 R8
       49 FORGLOOP                         R2 2 ; [-37]
       51 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R1 K3 ["observeGraphNodeMap"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K4 ["createNextOrder"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K5 ["useState"]
       20 LOADB                            R5 0
       21 CALL                             R4 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R2
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R2
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETIMPORT                        R8 K9 [UDim2.new]
       49 LOADN                            R9 0
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R11 R12 K10 ["Hooks"]
       53 GETTABLEKS                       R10 R11 K11 ["useScaledValue"]
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R11 R12 K12 ["PARAMETER_PANE_WIDTH"]
       58 CALL                             R10 1 1
       59 LOADN                            R11 0
       60 LOADN                            R12 0
       61 CALL                             R8 4 1
       62 JUMPIFNOT                        R6 ; [+44]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K13 ["createElement"]
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R10 R11 K14 ["View"]
       69 DUPTABLE                         R11 K18 [{"tag", "Size", "Position"}]
       70 LOADK                            R12 K19 ["bg-surface-100 auto-y col stroke-muted align-x-center radius-small gap-xsmall padding-bottom-small"]
       71 SETTABLEKS                       R12 R11 K15 ["tag"]
       73 SETTABLEKS                       R8 R11 K16 ["Size"]
       75 GETUPVAL                         R13 6
       76 GETTABLEKS                       R12 R13 K20 ["PARAMETER_PANE_POSITION_OFFSET"]
       78 SETTABLEKS                       R12 R11 K17 ["Position"]
       80 GETUPVAL                         R13 7
       81 GETTABLEKS                       R12 R13 K21 ["join"]
       83 DUPTABLE                         R13 K23 [{"Header"}]
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R14 R15 K13 ["createElement"]
       87 GETUPVAL                         R15 8
       88 DUPTABLE                         R16 K27 [{"LayoutOrder", "expanded", "setExpanded"}]
       89 LOADN                            R17 0
       90 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
       92 SETTABLEKS                       R4 R16 K25 ["expanded"]
       94 SETTABLEKS                       R5 R16 K26 ["setExpanded"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K22 ["Header"]
       99 JUMPIFNOT                        R4 ; [+2]
      100 MOVE                             R14 R7
      101 JUMP                             ; [+2]
      102 NEWTABLE                         R14 0 0
      104 CALL                             R12 2 -1
      105 CALL                             R9 -1 1
      106 RETURN                           R9 1
      107 LOADNIL                          R9
      108 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Components"]
       37 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       39 GETTABLEKS                       R7 R8 K14 ["ParameterPane"]
       41 GETTABLEKS                       R6 R7 K15 ["Constants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R10 R0 K12 ["Components"]
       48 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       50 GETTABLEKS                       R8 R9 K14 ["ParameterPane"]
       52 GETTABLEKS                       R7 R8 K16 ["ParameterPaneHeader"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R11 R0 K12 ["Components"]
       59 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       61 GETTABLEKS                       R9 R10 K14 ["ParameterPane"]
       63 GETTABLEKS                       R8 R9 K17 ["ParameterPaneItem"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K6 ["Parent"]
       70 GETTABLEKS                       R9 R10 K18 ["React"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R11 R0 K6 ["Parent"]
       77 GETTABLEKS                       R10 R11 K19 ["ReactUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K6 ["Parent"]
       84 GETTABLEKS                       R11 R12 K20 ["SignalsReact"]
       86 CALL                             R10 1 1
       87 DUPCLOSURE                       R11 K21 [PROTO_2]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R6
       97 RETURN                           R11 1
