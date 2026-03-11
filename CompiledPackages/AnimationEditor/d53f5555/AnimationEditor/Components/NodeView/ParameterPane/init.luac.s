PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["graphPayloadMap"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["graphPayloadMap"]
       10 GETTABLEKS                       R0 R3 K1 ["lookup"]
       12 LOADNIL                          R1
       13 LOADNIL                          R2
       14 FORGPREP                         R0
       15 LOADB                            R5 1
       16 RETURN                           R5 1
       17 FORGLOOP                         R0 2 ; [-3]
       19 LOADB                            R0 0
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["graphPayloadMap"]
        3 JUMPIF                           R0 ; [+3]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1
        7 NEWTABLE                         R0 0 0
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["graphPayloadMap"]
       14 GETTABLEKS                       R2 R5 K1 ["lookup"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R7 R6 K2 ["className"]
       21 JUMPIFNOTEQKS                    R7 K3 ["Parameter"] ; [+33]
       23 GETTABLEKS                       R7 R6 K4 ["name"]
       25 JUMPIFNOT                        R7 ; [+29]
       26 GETTABLE                         R8 R1 R7
       27 JUMPIF                           R8 ; [+27]
       28 GETTABLEKS                       R9 R6 K5 ["nodeType"]
       30 FASTCALL1                        TYPE R9 ; [+2]
       31 GETIMPORT                        R8 K7 [type]
       33 CALL                             R8 1 1
       34 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+20]
       36 LOADB                            R8 1
       37 SETTABLE                         R8 R1 R7
       38 GETTABLEKS                       R8 R6 K9 ["id"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R9 R10 K10 ["createElement"]
       43 GETUPVAL                         R10 2
       44 DUPTABLE                         R11 K13 [{"LayoutOrder", "node"}]
       45 LOADN                            R13 1
       46 GETUPVAL                         R14 3
       47 CALL                             R14 0 1
       48 ADD                              R12 R13 R14
       49 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       51 SETTABLEKS                       R6 R11 K12 ["node"]
       53 CALL                             R9 2 1
       54 SETTABLE                         R9 R0 R8
       55 FORGLOOP                         R2 2 ; [-37]
       57 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K3 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R1 K5 ["graphPayloadMap"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R8 0 1
       38 GETTABLEKS                       R9 R1 K5 ["graphPayloadMap"]
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K8 [UDim2.new]
       45 LOADN                            R8 0
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R10 R11 K9 ["Hooks"]
       49 GETTABLEKS                       R9 R10 K10 ["useScaledValue"]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R10 R11 K11 ["PARAMETER_PANE_WIDTH"]
       54 CALL                             R9 1 1
       55 LOADN                            R10 0
       56 LOADN                            R11 0
       57 CALL                             R7 4 1
       58 JUMPIFNOT                        R5 ; [+44]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R8 R9 K12 ["createElement"]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R9 R10 K13 ["View"]
       65 DUPTABLE                         R10 K17 [{"tag", "Size", "Position"}]
       66 LOADK                            R11 K18 ["bg-surface-100 auto-y col stroke-muted align-x-center radius-small gap-xsmall padding-bottom-small"]
       67 SETTABLEKS                       R11 R10 K14 ["tag"]
       69 SETTABLEKS                       R7 R10 K15 ["Size"]
       71 GETUPVAL                         R12 5
       72 GETTABLEKS                       R11 R12 K19 ["PARAMETER_PANE_POSITION_OFFSET"]
       74 SETTABLEKS                       R11 R10 K16 ["Position"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R11 R12 K20 ["join"]
       79 DUPTABLE                         R12 K22 [{"Header"}]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K12 ["createElement"]
       83 GETUPVAL                         R14 7
       84 DUPTABLE                         R15 K26 [{"LayoutOrder", "expanded", "setExpanded"}]
       85 LOADN                            R16 0
       86 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
       88 SETTABLEKS                       R3 R15 K24 ["expanded"]
       90 SETTABLEKS                       R4 R15 K25 ["setExpanded"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K21 ["Header"]
       95 JUMPIFNOT                        R3 ; [+2]
       96 MOVE                             R13 R6
       97 JUMP                             ; [+2]
       98 NEWTABLE                         R13 0 0
      100 CALL                             R11 2 -1
      101 CALL                             R8 -1 1
      102 RETURN                           R8 1
      103 LOADNIL                          R8
      104 RETURN                           R8 1

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
       80 DUPCLOSURE                       R10 K20 [PROTO_2]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 RETURN                           R10 1
