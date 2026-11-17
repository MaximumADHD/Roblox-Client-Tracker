PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"incomingReplicationLag"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K2 ["IncomingReplicationLag"]
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K4 [tostring]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K0 ["incomingReplicationLag"]
       11 NAMECALL                         R0 R0 K5 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"incomingReplicationLag"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["IncomingReplicationLag"]
        4 FASTCALL1                        TOSTRING R4 ; [+2]
        5 GETIMPORT                        R3 K4 [tostring]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K0 ["incomingReplicationLag"]
       10 SETTABLEKS                       R2 R0 K5 ["state"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 GETUPVAL                         R3 1
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K6 ["Connect"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R0 K7 ["incomingReplicationLagChangedConnection"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["incomingReplicationLagChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 [""] ; [+10]
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tonumber]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 LOADNIL                          R2
       13 JUMPIF                           R1 ; [+7]
       14 GETUPVAL                         R3 0
       15 LOADK                            R5 K3 ["NetworkSettings"]
       16 LOADK                            R6 K4 ["NetworkReplicationLagNotNumberError"]
       17 NAMECALL                         R3 R3 K5 ["getText"]
       19 CALL                             R3 3 1
       20 MOVE                             R2 R3
       21 RETURN                           R1 2

PROTO_4:
        0 FASTCALL1                        STRING_LEN R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [string.len]
        4 CALL                             R1 1 1
        5 LOADN                            R2 5
        6 JUMPIFNOTLT                      R2 R1 ; [+10]
        8 LOADN                            R3 1
        9 LOADN                            R4 5
       10 FASTCALL3                        STRING_SUB R0 R3 R4
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [string.sub]
       15 CALL                             R1 3 1
       16 RETURN                           R1 1
       17 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 ORK                              R3 R0 K0 [0]
        2 FASTCALL1                        TONUMBER R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tonumber]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K3 ["IncomingReplicationLag"]
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R3 K5 [{"incomingReplicationLag"}]
       10 SETTABLEKS                       R0 R3 K4 ["incomingReplicationLag"]
       12 NAMECALL                         R1 R1 K6 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"] = 10, ["Spacing"] = 10}]
       11 GETIMPORT                        R7 K13 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       15 GETIMPORT                        R7 K15 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K18 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R7 R6 K6 ["Layout"]
       23 DUPTABLE                         R7 K20 [{"networkPane"}]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K3 ["createElement"]
       27 GETUPVAL                         R9 2
       28 DUPTABLE                         R10 K28 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["AlwaysExpanded"] = True, ["LayoutOrder"] = 2, ["Style"] = "Box", ["Text"]}]
       29 GETIMPORT                        R11 K13 [Enum.AutomaticSize.Y]
       31 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
       33 GETIMPORT                        R11 K15 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R11 R10 K5 ["HorizontalAlignment"]
       37 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R11 R10 K6 ["Layout"]
       41 LOADK                            R13 K29 ["NetworkSettings"]
       42 LOADK                            R14 K30 ["NetworkReplicationLagLabel"]
       43 NAMECALL                         R11 R3 K31 ["getText"]
       45 CALL                             R11 3 1
       46 SETTABLEKS                       R11 R10 K27 ["Text"]
       48 NEWTABLE                         R11 0 1
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K3 ["createElement"]
       53 GETUPVAL                         R13 3
       54 DUPTABLE                         R14 K41 [{["PlaceholderText"], ["ShouldFocus"] = True, ["Width"] = 100, ["MaxLength"] = 5, ["OnValidateText"], ["OnFormatText"], ["Text"], ["OnTextChanged"]}]
       55 LOADK                            R17 K29 ["NetworkSettings"]
       56 LOADK                            R18 K42 ["NetworkReplicationLagPlaceholder"]
       57 NAMECALL                         R15 R3 K31 ["getText"]
       59 CALL                             R15 3 1
       60 SETTABLEKS                       R15 R14 K32 ["PlaceholderText"]
       62 NEWCLOSURE                       R15 P0
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R15 R14 K38 ["OnValidateText"]
       66 DUPCLOSURE                       R15 K43 [PROTO_4]
       67 SETTABLEKS                       R15 R14 K39 ["OnFormatText"]
       69 GETTABLEKS                       R15 R2 K44 ["incomingReplicationLag"]
       71 SETTABLEKS                       R15 R14 K27 ["Text"]
       73 NEWCLOSURE                       R15 P2
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R15 R14 K40 ["OnTextChanged"]
       78 CALL                             R12 2 -1
       79 SETLIST                          R11 R12 -1 [1]
       81 CALL                             R8 3 1
       82 SETTABLEKS                       R8 R7 K19 ["networkPane"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["Pane"]
       33 GETTABLEKS                       R8 R6 K13 ["SimpleExpandablePane"]
       35 GETTABLEKS                       R9 R6 K14 ["TextInput"]
       37 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       39 LOADK                            R12 K16 ["NetworkPane"]
       40 NAMECALL                         R10 R10 K17 ["extend"]
       42 CALL                             R10 2 1
       43 GETIMPORT                        R11 K19 [settings]
       45 CALL                             R11 0 1
       46 GETTABLEKS                       R11 R11 K20 ["Network"]
       48 LOADK                            R14 K21 ["IncomingReplicationLag"]
       49 NAMECALL                         R12 R11 K22 ["GetPropertyChangedSignal"]
       51 CALL                             R12 2 1
       52 DUPCLOSURE                       R13 K23 [PROTO_1]
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R12
       55 SETTABLEKS                       R13 R10 K24 ["init"]
       57 DUPCLOSURE                       R13 K25 [PROTO_2]
       58 SETTABLEKS                       R13 R10 K26 ["willUnmount"]
       60 DUPCLOSURE                       R13 K27 [PROTO_6]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R11
       66 SETTABLEKS                       R13 R10 K28 ["render"]
       68 MOVE                             R13 R4
       69 DUPTABLE                         R14 K30 [{"Localization", "Stylizer"}]
       70 SETTABLEKS                       R5 R14 K10 ["Localization"]
       72 GETTABLEKS                       R15 R3 K29 ["Stylizer"]
       74 SETTABLEKS                       R15 R14 K29 ["Stylizer"]
       76 CALL                             R13 1 1
       77 MOVE                             R14 R10
       78 CALL                             R13 1 1
       79 MOVE                             R10 R13
       80 RETURN                           R10 1
