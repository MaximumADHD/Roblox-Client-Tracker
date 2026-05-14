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
       10 DUPTABLE                         R6 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
       11 GETIMPORT                        R7 K12 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       15 GETIMPORT                        R7 K14 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K17 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R7 R6 K6 ["Layout"]
       23 LOADN                            R7 10
       24 SETTABLEKS                       R7 R6 K7 ["Padding"]
       26 LOADN                            R7 10
       27 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       29 DUPTABLE                         R7 K19 [{"networkPane"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "AlwaysExpanded", "LayoutOrder", "Style", "Text"}]
       35 GETIMPORT                        R11 K12 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
       39 GETIMPORT                        R11 K14 [Enum.HorizontalAlignment.Left]
       41 SETTABLEKS                       R11 R10 K5 ["HorizontalAlignment"]
       43 GETIMPORT                        R11 K17 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R11 R10 K6 ["Layout"]
       47 LOADB                            R11 1
       48 SETTABLEKS                       R11 R10 K20 ["AlwaysExpanded"]
       50 LOADN                            R11 2
       51 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
       53 LOADK                            R11 K25 ["Box"]
       54 SETTABLEKS                       R11 R10 K22 ["Style"]
       56 LOADK                            R13 K26 ["NetworkSettings"]
       57 LOADK                            R14 K27 ["NetworkReplicationLagLabel"]
       58 NAMECALL                         R11 R3 K28 ["getText"]
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K23 ["Text"]
       63 NEWTABLE                         R11 0 1
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K3 ["createElement"]
       68 GETUPVAL                         R13 3
       69 DUPTABLE                         R14 K36 [{"PlaceholderText", "ShouldFocus", "Width", "MaxLength", "OnValidateText", "OnFormatText", "Text", "OnTextChanged"}]
       70 LOADK                            R17 K26 ["NetworkSettings"]
       71 LOADK                            R18 K37 ["NetworkReplicationLagPlaceholder"]
       72 NAMECALL                         R15 R3 K28 ["getText"]
       74 CALL                             R15 3 1
       75 SETTABLEKS                       R15 R14 K29 ["PlaceholderText"]
       77 LOADB                            R15 1
       78 SETTABLEKS                       R15 R14 K30 ["ShouldFocus"]
       80 LOADN                            R15 100
       81 SETTABLEKS                       R15 R14 K31 ["Width"]
       83 LOADN                            R15 5
       84 SETTABLEKS                       R15 R14 K32 ["MaxLength"]
       86 NEWCLOSURE                       R15 P0
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R15 R14 K33 ["OnValidateText"]
       90 DUPCLOSURE                       R15 K38 [PROTO_4]
       91 SETTABLEKS                       R15 R14 K34 ["OnFormatText"]
       93 GETTABLEKS                       R15 R2 K39 ["incomingReplicationLag"]
       95 SETTABLEKS                       R15 R14 K23 ["Text"]
       97 NEWCLOSURE                       R15 P2
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R15 R14 K35 ["OnTextChanged"]
      102 CALL                             R12 2 -1
      103 SETLIST                          R11 R12 -1 [1]
      105 CALL                             R8 3 1
      106 SETTABLEKS                       R8 R7 K18 ["networkPane"]
      108 CALL                             R4 3 -1
      109 RETURN                           R4 -1

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
