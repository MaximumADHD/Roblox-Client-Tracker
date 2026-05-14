PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RevertChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["discardUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SaveChangesPressed"]
        2 NAMECALL                         R0 R0 K1 ["logCounter"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["saveUnpublishedSettings"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["content"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Content must not be nil in PublishContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K2 ["content"]
       29 GETUPVAL                         R6 5
       30 GETUPVAL                         R7 6
       31 NEWTABLE                         R8 4 0
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K6 ["Tag"]
       36 LOADK                            R10 K7 ["PublishBar X-Row X-Middle X-Right"]
       37 SETTABLE                         R10 R8 R9
       38 GETIMPORT                        R9 K10 [UDim2.new]
       40 LOADN                            R10 1
       41 LOADN                            R11 0
       42 LOADN                            R12 0
       43 GETUPVAL                         R13 7
       44 GETTABLEKS                       R13 R13 K11 ["MENU_BAR_HEIGHT"]
       46 CALL                             R9 4 1
       47 SETTABLEKS                       R9 R8 K12 ["Size"]
       49 GETTABLEKS                       R9 R0 K13 ["layoutOrder"]
       51 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       53 DUPTABLE                         R9 K17 [{"RevertChangesButton", "SaveChangesButton"}]
       54 GETUPVAL                         R10 5
       55 GETUPVAL                         R11 8
       56 NEWTABLE                         R12 8 0
       58 GETUPVAL                         R13 3
       59 GETTABLEKS                       R13 R13 K6 ["Tag"]
       61 LOADK                            R14 K18 ["Compact"]
       62 SETTABLE                         R14 R12 R13
       63 GETIMPORT                        R13 K20 [UDim2.fromOffset]
       65 LOADN                            R14 0
       66 GETUPVAL                         R15 7
       67 GETTABLEKS                       R15 R15 K21 ["STANDARD_HEIGHT"]
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K12 ["Size"]
       72 GETIMPORT                        R13 K25 [Enum.AutomaticSize.X]
       74 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
       76 LOADK                            R15 K26 ["Publish"]
       77 LOADK                            R16 K27 ["RevertChanges"]
       78 NAMECALL                         R13 R1 K28 ["getText"]
       80 CALL                             R13 3 1
       81 SETTABLEKS                       R13 R12 K29 ["Text"]
       83 MOVE                             R13 R3
       84 CALL                             R13 0 1
       85 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       87 GETTABLEKS                       R14 R5 K30 ["canPublish"]
       89 NOT                              R13 R14
       90 SETTABLEKS                       R13 R12 K31 ["Disabled"]
       92 NEWCLOSURE                       R13 P0
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R13 R12 K32 ["OnClick"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K15 ["RevertChangesButton"]
      100 GETUPVAL                         R10 5
      101 GETUPVAL                         R11 8
      102 NEWTABLE                         R12 8 0
      104 GETUPVAL                         R13 3
      105 GETTABLEKS                       R13 R13 K6 ["Tag"]
      107 LOADK                            R14 K33 ["PrimaryBrand Compact"]
      108 SETTABLE                         R14 R12 R13
      109 GETIMPORT                        R13 K20 [UDim2.fromOffset]
      111 LOADN                            R14 0
      112 GETUPVAL                         R15 7
      113 GETTABLEKS                       R15 R15 K21 ["STANDARD_HEIGHT"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K12 ["Size"]
      118 GETIMPORT                        R13 K25 [Enum.AutomaticSize.X]
      120 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
      122 LOADK                            R15 K26 ["Publish"]
      123 LOADK                            R16 K34 ["SaveChanges"]
      124 NAMECALL                         R13 R1 K28 ["getText"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K29 ["Text"]
      129 MOVE                             R13 R3
      130 CALL                             R13 0 1
      131 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      133 GETTABLEKS                       R14 R5 K30 ["canPublish"]
      135 NOT                              R13 R14
      136 SETTABLEKS                       R13 R12 K31 ["Disabled"]
      138 NEWCLOSURE                       R13 P1
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R13 R12 K32 ["OnClick"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K16 ["SaveChangesButton"]
      146 CALL                             R6 3 -1
      147 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K13 ["PublishProvider"]
       33 GETTABLEKS                       R4 R4 K14 ["PublishContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K9 ["Packages"]
       40 GETTABLEKS                       R5 R5 K15 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Packages"]
       47 GETTABLEKS                       R6 R6 K16 ["ReactUtils"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K17 ["createNextOrder"]
       52 GETTABLEKS                       R7 R2 K18 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K19 ["Localization"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R10 K7 ["Util"]
       62 GETTABLEKS                       R10 R10 K20 ["Telemetry"]
       64 GETTABLEKS                       R10 R10 K21 ["TelemetryContext"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R2 K22 ["UI"]
       69 GETTABLEKS                       R11 R10 K23 ["Pane"]
       71 GETTABLEKS                       R12 R10 K24 ["IconButton"]
       73 GETTABLEKS                       R13 R4 K25 ["createElement"]
       75 DUPCLOSURE                       R14 K26 [PROTO_2]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R12
       85 RETURN                           R14 1
