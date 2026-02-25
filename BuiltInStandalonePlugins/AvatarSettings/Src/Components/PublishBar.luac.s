PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["RevertChangesPressed"]
        5 NAMECALL                         R0 R0 K1 ["logCounter"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["discardUnpublishedSettings"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["SaveChangesPressed"]
        5 NAMECALL                         R0 R0 K1 ["logCounter"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["saveUnpublishedSettings"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["content"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Content must not be nil in PublishContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETTABLEKS                       R5 R4 K2 ["content"]
       34 GETUPVAL                         R6 6
       35 GETUPVAL                         R7 7
       36 NEWTABLE                         R8 4 0
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K6 ["Tag"]
       41 LOADK                            R10 K7 ["PublishBar X-Row X-Middle X-Right"]
       42 SETTABLE                         R10 R8 R9
       43 GETIMPORT                        R9 K10 [UDim2.new]
       45 LOADN                            R10 1
       46 LOADN                            R11 0
       47 LOADN                            R12 0
       48 GETUPVAL                         R14 8
       49 GETTABLEKS                       R13 R14 K11 ["MENU_BAR_HEIGHT"]
       51 CALL                             R9 4 1
       52 SETTABLEKS                       R9 R8 K12 ["Size"]
       54 GETTABLEKS                       R9 R0 K13 ["layoutOrder"]
       56 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       58 DUPTABLE                         R9 K17 [{"RevertChangesButton", "SaveChangesButton"}]
       59 GETUPVAL                         R10 6
       60 GETUPVAL                         R11 9
       61 NEWTABLE                         R12 8 0
       63 GETUPVAL                         R14 4
       64 GETTABLEKS                       R13 R14 K6 ["Tag"]
       66 LOADK                            R14 K18 ["Compact"]
       67 SETTABLE                         R14 R12 R13
       68 GETIMPORT                        R13 K20 [UDim2.fromOffset]
       70 LOADN                            R14 0
       71 GETUPVAL                         R16 8
       72 GETTABLEKS                       R15 R16 K21 ["STANDARD_HEIGHT"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K12 ["Size"]
       77 GETIMPORT                        R13 K25 [Enum.AutomaticSize.X]
       79 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
       81 LOADK                            R15 K26 ["Publish"]
       82 LOADK                            R16 K27 ["RevertChanges"]
       83 NAMECALL                         R13 R1 K28 ["getText"]
       85 CALL                             R13 3 1
       86 SETTABLEKS                       R13 R12 K29 ["Text"]
       88 MOVE                             R13 R3
       89 CALL                             R13 0 1
       90 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       92 GETTABLEKS                       R14 R5 K30 ["canPublish"]
       94 NOT                              R13 R14
       95 SETTABLEKS                       R13 R12 K31 ["Disabled"]
       97 NEWCLOSURE                       R13 P0
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R13 R12 K32 ["OnClick"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K15 ["RevertChangesButton"]
      106 GETUPVAL                         R10 6
      107 GETUPVAL                         R11 9
      108 NEWTABLE                         R12 8 0
      110 GETUPVAL                         R14 4
      111 GETTABLEKS                       R13 R14 K6 ["Tag"]
      113 LOADK                            R14 K33 ["PrimaryBrand Compact"]
      114 SETTABLE                         R14 R12 R13
      115 GETIMPORT                        R13 K20 [UDim2.fromOffset]
      117 LOADN                            R14 0
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R15 R16 K21 ["STANDARD_HEIGHT"]
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K12 ["Size"]
      124 GETIMPORT                        R13 K25 [Enum.AutomaticSize.X]
      126 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
      128 LOADK                            R15 K26 ["Publish"]
      129 LOADK                            R16 K34 ["SaveChanges"]
      130 NAMECALL                         R13 R1 K28 ["getText"]
      132 CALL                             R13 3 1
      133 SETTABLEKS                       R13 R12 K29 ["Text"]
      135 MOVE                             R13 R3
      136 CALL                             R13 0 1
      137 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      139 GETTABLEKS                       R14 R5 K30 ["canPublish"]
      141 NOT                              R13 R14
      142 SETTABLEKS                       R13 R12 K31 ["Disabled"]
      144 NEWCLOSURE                       R13 P1
      145 CAPTURE                          UPVAL U1
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R13 R12 K32 ["OnClick"]
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K16 ["SaveChangesButton"]
      153 CALL                             R6 3 -1
      154 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R8 R0 K6 ["Src"]
       27 GETTABLEKS                       R7 R8 K11 ["Components"]
       29 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       31 GETTABLEKS                       R5 R6 K13 ["PublishProvider"]
       33 GETTABLEKS                       R4 R5 K14 ["PublishContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K9 ["Packages"]
       40 GETTABLEKS                       R5 R6 K15 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Packages"]
       47 GETTABLEKS                       R6 R7 K16 ["ReactUtils"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K17 ["createNextOrder"]
       52 GETTABLEKS                       R7 R2 K18 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K19 ["Localization"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R13 R0 K6 ["Src"]
       60 GETTABLEKS                       R12 R13 K7 ["Util"]
       62 GETTABLEKS                       R11 R12 K20 ["Telemetry"]
       64 GETTABLEKS                       R10 R11 K21 ["TelemetryContext"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R13 R0 K6 ["Src"]
       71 GETTABLEKS                       R12 R13 K22 ["Flags"]
       73 GETTABLEKS                       R11 R12 K23 ["getFFlagAddTelemetry"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R11 R2 K24 ["UI"]
       78 GETTABLEKS                       R12 R11 K25 ["Pane"]
       80 GETTABLEKS                       R13 R11 K26 ["IconButton"]
       82 GETTABLEKS                       R14 R4 K27 ["createElement"]
       84 DUPCLOSURE                       R15 K28 [PROTO_2]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R13
       95 RETURN                           R15 1
