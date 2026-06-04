PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R3 R3 K0 ["MinWidth"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 GETTABLEKS                       R4 R4 K0 ["MinWidth"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["ref"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["ref"]
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
       12 GETTABLEKS                       R2 R2 K3 ["X"]
       14 GETIMPORT                        R3 K5 [pairs]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["sortedCutOffList"]
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K6 ["sortedCutOffList"]
       24 GETTABLE                         R8 R9 R6
       25 GETTABLEKS                       R10 R8 K7 ["MinWidth"]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K6 ["sortedCutOffList"]
       30 GETTABLEN                        R11 R12 1
       31 GETTABLEKS                       R11 R11 K7 ["MinWidth"]
       33 JUMPIFLT                         R11 R10 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K6 ["sortedCutOffList"]
       40 GETTABLEN                        R11 R12 1
       41 GETTABLEKS                       R11 R11 K7 ["MinWidth"]
       43 JUMPIFLT                         R2 R11 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 JUMPIF                           R9 ; [+1]
       48 JUMPIFNOT                        R10 ; [+5]
       49 GETTABLEKS                       R11 R8 K7 ["MinWidth"]
       51 JUMPIFNOTLE                      R11 R2 ; [+2]
       53 MOVE                             R0 R6
       54 FORGLOOP                         R3 1 ; [-34]
       56 DUPTABLE                         R3 K9 [{"currentCutOffKey"}]
       57 SETTABLEKS                       R0 R3 K8 ["currentCutOffKey"]
       59 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CutOffs"]
        5 GETUPVAL                         R1 0
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K2 ["sortedCutOffList"]
       10 NEWTABLE                         R1 0 0
       12 GETIMPORT                        R2 K4 [pairs]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R5
       21 GETIMPORT                        R7 K7 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-8]
       26 GETIMPORT                        R2 K9 [table.sort]
       28 MOVE                             R3 R1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R0
       31 CALL                             R2 2 0
       32 GETIMPORT                        R2 K4 [pairs]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 3
       36 FORGPREP_NEXT                    R2
       37 GETTABLE                         R7 R0 R6
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K2 ["sortedCutOffList"]
       41 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       43 MOVE                             R10 R7
       44 GETIMPORT                        R8 K7 [table.insert]
       46 CALL                             R8 2 0
       47 FORGLOOP                         R2 2 ; [-11]
       49 GETUPVAL                         R2 0
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          UPVAL U0
       52 NAMECALL                         R2 R2 K10 ["setState"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["currentCutOffKey"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ref"]
        5 GETTABLEKS                       R2 R2 K2 ["current"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["sortedCutOffList"]
       13 GETTABLE                         R3 R4 R1
       14 LOADNIL                          R4
       15 ADDK                             R5 R1 K4 [1]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K3 ["sortedCutOffList"]
       19 LENGTH                           R6 R7
       20 JUMPIFNOTLE                      R5 R6 ; [+6]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K3 ["sortedCutOffList"]
       25 ADDK                             R6 R1 K4 [1]
       26 GETTABLE                         R4 R5 R6
       27 LOADNIL                          R5
       28 LOADN                            R6 1
       29 JUMPIFNOTLT                      R6 R1 ; [+6]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K3 ["sortedCutOffList"]
       34 SUBK                             R7 R1 K4 [1]
       35 GETTABLE                         R5 R6 R7
       36 GETTABLEKS                       R6 R2 K5 ["AbsoluteSize"]
       38 GETTABLEKS                       R6 R6 K6 ["X"]
       40 MOVE                             R7 R5
       41 JUMPIFNOT                        R7 ; [+11]
       42 LOADB                            R7 0
       43 GETTABLEKS                       R8 R5 K7 ["MinWidth"]
       45 JUMPIFNOTLE                      R8 R6 ; [+7]
       47 GETTABLEKS                       R8 R3 K7 ["MinWidth"]
       49 JUMPIFLT                         R6 R8 ; [+2]
       51 LOADB                            R7 0 +1
       52 LOADB                            R7 1
       53 MOVE                             R8 R4
       54 JUMPIFNOT                        R8 ; [+6]
       55 GETTABLEKS                       R9 R4 K7 ["MinWidth"]
       57 JUMPIFLT                         R9 R6 ; [+2]
       59 LOADB                            R8 0 +1
       60 LOADB                            R8 1
       61 JUMPIFNOT                        R7 ; [+5]
       62 DUPTABLE                         R9 K8 [{"currentCutOffKey"}]
       63 SUBK                             R10 R1 K4 [1]
       64 SETTABLEKS                       R10 R9 K0 ["currentCutOffKey"]
       66 RETURN                           R9 1
       67 JUMPIFNOT                        R8 ; [+5]
       68 DUPTABLE                         R9 K8 [{"currentCutOffKey"}]
       69 ADDK                             R10 R1 K4 [1]
       70 SETTABLEKS                       R10 R9 K0 ["currentCutOffKey"]
       72 RETURN                           R9 1
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ForwardRef"]
        4 JUMPIF                           R2 ; [+4]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createRef"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R0 K3 ["ref"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R0 K4 ["sortedCutOffList"]
       15 DUPTABLE                         R2 K6 [{"currentCutOffKey"}]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K5 ["currentCutOffKey"]
       19 SETTABLEKS                       R2 R0 K7 ["state"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K8 ["initializeCutOffs"]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K9 ["updateCurrentCutOff"]
       29 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["initializeCutOffs"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["CutOffs"]
        4 GETTABLEKS                       R5 R3 K1 ["CutOffs"]
        6 JUMPIFEQ                         R4 R5 ; [+4]
        8 GETTABLEKS                       R4 R0 K2 ["initializeCutOffs"]
       10 CALL                             R4 0 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["AutomaticSize"]
        8 GETTABLEKS                       R5 R1 K4 ["HorizontalAlignment"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ItemHeight"]
       14 GETTABLEKS                       R8 R1 K7 ["Position"]
       16 GETTABLEKS                       R9 R1 K8 ["Size"]
       18 GETTABLEKS                       R10 R1 K9 ["SortOrder"]
       20 GETTABLEKS                       R11 R2 K10 ["currentCutOffKey"]
       22 GETTABLEKS                       R13 R3 K12 ["Spacing"]
       24 ORK                              R12 R13 K11 [0]
       25 LOADNIL                          R13
       26 JUMPIFNOT                        R11 ; [+27]
       27 GETTABLEKS                       R15 R0 K13 ["sortedCutOffList"]
       29 GETTABLE                         R14 R15 R11
       30 GETTABLEKS                       R18 R14 K14 ["ColumnCount"]
       32 DIV                              R17 R12 R18
       33 GETTABLEKS                       R19 R14 K14 ["ColumnCount"]
       35 SUBK                             R18 R19 K15 [1]
       36 MUL                              R16 R17 R18
       37 FASTCALL1                        MATH_CEIL R16 ; [+2]
       38 GETIMPORT                        R15 K18 [math.ceil]
       40 CALL                             R15 1 1
       41 GETIMPORT                        R16 K21 [UDim2.new]
       43 GETIMPORT                        R17 K23 [UDim.new]
       45 GETTABLEKS                       R19 R14 K14 ["ColumnCount"]
       47 DIVRK                            R18 R15 K19 ["UDim2"]
       48 MINUS                            R19 R15
       49 CALL                             R17 2 1
       50 MOVE                             R18 R7
       51 CALL                             R16 2 1
       52 MOVE                             R13 R16
       53 JUMP                             ; [+10]
       54 GETIMPORT                        R14 K21 [UDim2.new]
       56 GETIMPORT                        R15 K23 [UDim.new]
       58 LOADN                            R16 1
       59 MINUS                            R17 R12
       60 CALL                             R15 2 1
       61 MOVE                             R16 R7
       62 CALL                             R14 2 1
       63 MOVE                             R13 R14
       64 GETUPVAL                         R14 0
       65 DUPTABLE                         R15 K25 [{"UIGridLayout"}]
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R16 R16 K26 ["createElement"]
       69 LOADK                            R17 K24 ["UIGridLayout"]
       70 DUPTABLE                         R18 K29 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
       71 GETIMPORT                        R19 K21 [UDim2.new]
       73 LOADN                            R20 0
       74 MOVE                             R21 R12
       75 LOADN                            R22 0
       76 MOVE                             R23 R12
       77 CALL                             R19 4 1
       78 SETTABLEKS                       R19 R18 K27 ["CellPadding"]
       80 SETTABLEKS                       R13 R18 K28 ["CellSize"]
       82 SETTABLEKS                       R5 R18 K4 ["HorizontalAlignment"]
       84 SETTABLEKS                       R10 R18 K9 ["SortOrder"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K24 ["UIGridLayout"]
       89 GETTABLEKS                       R17 R0 K0 ["props"]
       91 GETUPVAL                         R18 1
       92 GETTABLEKS                       R18 R18 K30 ["Children"]
       94 GETTABLE                         R16 R17 R18
       95 CALL                             R14 2 1
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K26 ["createElement"]
       99 LOADK                            R16 K31 ["Frame"]
      100 NEWTABLE                         R17 8 0
      102 SETTABLEKS                       R4 R17 K3 ["AutomaticSize"]
      104 LOADN                            R18 1
      105 SETTABLEKS                       R18 R17 K32 ["BackgroundTransparency"]
      107 SETTABLEKS                       R6 R17 K5 ["LayoutOrder"]
      109 SETTABLEKS                       R8 R17 K7 ["Position"]
      111 SETTABLEKS                       R9 R17 K8 ["Size"]
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R18 R18 K33 ["Change"]
      116 GETTABLEKS                       R18 R18 K34 ["AbsoluteSize"]
      118 GETTABLEKS                       R19 R0 K35 ["updateCurrentCutOff"]
      120 SETTABLE                         R19 R17 R18
      121 GETUPVAL                         R18 1
      122 GETTABLEKS                       R18 R18 K36 ["Ref"]
      124 GETTABLEKS                       R19 R0 K37 ["ref"]
      126 SETTABLE                         R19 R17 R18
      127 MOVE                             R18 R14
      128 CALL                             R15 3 -1
      129 RETURN                           R15 -1

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
       34 GETTABLEKS                       R6 R0 K12 ["Wrappers"]
       36 GETTABLEKS                       R6 R6 K13 ["withForwardRef"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 GETTABLEKS                       R7 R7 K14 ["Dash"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K15 ["join"]
       48 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       50 LOADK                            R10 K17 ["ResponsiveGrid"]
       51 NAMECALL                         R8 R8 K18 ["extend"]
       53 CALL                             R8 2 1
       54 GETTABLEKS                       R9 R4 K19 ["wrap"]
       56 MOVE                             R10 R8
       57 GETIMPORT                        R11 K1 [script]
       59 CALL                             R9 2 0
       60 DUPTABLE                         R9 K24 [{"HorizontalAlignment", "ItemHeight", "Size", "SortOrder"}]
       61 GETIMPORT                        R10 K27 [Enum.HorizontalAlignment.Left]
       63 SETTABLEKS                       R10 R9 K20 ["HorizontalAlignment"]
       65 GETIMPORT                        R10 K30 [UDim.new]
       67 LOADN                            R11 0
       68 LOADN                            R12 0
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K21 ["ItemHeight"]
       72 GETIMPORT                        R10 K32 [UDim2.new]
       74 LOADN                            R11 1
       75 LOADN                            R12 0
       76 LOADN                            R13 0
       77 LOADN                            R14 0
       78 CALL                             R10 4 1
       79 SETTABLEKS                       R10 R9 K22 ["Size"]
       81 GETIMPORT                        R10 K34 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R10 R9 K23 ["SortOrder"]
       85 SETTABLEKS                       R9 R8 K35 ["defaultProps"]
       87 DUPCLOSURE                       R9 K36 [PROTO_5]
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R9 R8 K37 ["init"]
       91 DUPCLOSURE                       R9 K38 [PROTO_6]
       92 SETTABLEKS                       R9 R8 K39 ["didMount"]
       94 DUPCLOSURE                       R9 K40 [PROTO_7]
       95 SETTABLEKS                       R9 R8 K41 ["didUpdate"]
       97 DUPCLOSURE                       R9 K42 [PROTO_8]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R9 R8 K43 ["render"]
      102 MOVE                             R9 R3
      103 DUPTABLE                         R10 K45 [{"Stylizer"}]
      104 GETTABLEKS                       R11 R2 K44 ["Stylizer"]
      106 SETTABLEKS                       R11 R10 K44 ["Stylizer"]
      108 CALL                             R9 1 1
      109 MOVE                             R10 R8
      110 CALL                             R9 1 1
      111 MOVE                             R8 R9
      112 MOVE                             R9 R5
      113 MOVE                             R10 R8
      114 CALL                             R9 1 -1
      115 RETURN                           R9 -1
