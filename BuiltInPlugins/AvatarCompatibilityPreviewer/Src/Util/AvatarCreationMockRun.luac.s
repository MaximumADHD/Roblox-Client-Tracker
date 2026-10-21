PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 JUMPIF                           R2 ; [+5]
        7 GETTABLEKS                       R10 R8 K0 ["id"]
        9 GETTABLE                         R9 R1 R10
       10 JUMPIFEQKNIL                     R9 ; [+22]
       12 DUPTABLE                         R11 K4 [{"Id", "Status", "StageName"}]
       13 GETTABLEKS                       R12 R8 K0 ["id"]
       15 SETTABLEKS                       R12 R11 K1 ["Id"]
       17 GETTABLEKS                       R14 R8 K0 ["id"]
       19 GETTABLE                         R13 R1 R14
       20 ORK                              R12 R13 K5 ["waiting"]
       21 SETTABLEKS                       R12 R11 K2 ["Status"]
       23 GETTABLEKS                       R12 R8 K6 ["stageName"]
       25 SETTABLEKS                       R12 R11 K3 ["StageName"]
       27 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       29 MOVE                             R10 R3
       30 GETIMPORT                        R9 K9 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 2 ; [-28]
       35 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 LOADB                            R6 0
        7 GETTABLEKS                       R7 R0 K0 ["snapshots"]
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETIMPORT                        R12 K3 [task.wait]
       14 GETTABLEKS                       R13 R11 K4 ["delaySeconds"]
       16 CALL                             R12 1 0
       17 GETTABLEKS                       R12 R11 K5 ["planPending"]
       19 JUMPIFNOTEQKB                    R12 FALSE ; [+2]
       21 LOADB                            R6 1
       22 GETTABLEKS                       R12 R11 K6 ["updates"]
       24 JUMPIFEQKNIL                     R12 ; [+9]
       26 GETTABLEKS                       R12 R11 K6 ["updates"]
       28 LOADNIL                          R13
       29 LOADNIL                          R14
       30 FORGPREP                         R12
       31 SETTABLE                         R16 R3 R15
       32 FORGLOOP                         R12 2 ; [-2]
       34 GETTABLEKS                       R12 R11 K7 ["thoughts"]
       36 JUMPIFEQKNIL                     R12 ; [+35]
       38 GETTABLEKS                       R12 R11 K7 ["thoughts"]
       40 LOADNIL                          R13
       41 LOADNIL                          R14
       42 FORGPREP                         R12
       43 GETTABLEKS                       R18 R16 K8 ["Node"]
       45 GETTABLE                         R17 R5 R18
       46 DUPTABLE                         R18 K10 [{"Node", "Text"}]
       47 GETTABLEKS                       R19 R16 K8 ["Node"]
       49 SETTABLEKS                       R19 R18 K8 ["Node"]
       51 GETTABLEKS                       R19 R16 K9 ["Text"]
       53 SETTABLEKS                       R19 R18 K9 ["Text"]
       55 JUMPIFNOTEQKNIL                  R17 ; [+13]
       57 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       59 MOVE                             R20 R4
       60 MOVE                             R21 R18
       61 GETIMPORT                        R19 K13 [table.insert]
       63 CALL                             R19 2 0
       64 GETTABLEKS                       R19 R16 K8 ["Node"]
       66 LENGTH                           R20 R4
       67 SETTABLE                         R20 R5 R19
       68 JUMP                             ; [+1]
       69 SETTABLE                         R18 R4 R17
       70 FORGLOOP                         R12 2 ; [-28]
       72 GETTABLEKS                       R12 R11 K14 ["clearDetails"]
       74 JUMPIFNOTEQKB                    R12 TRUE ; [+8]
       76 NEWTABLE                         R3 0 0
       78 NEWTABLE                         R4 0 0
       80 NEWTABLE                         R5 0 0
       82 LOADB                            R6 0
       83 MOVE                             R12 R1
       84 DUPTABLE                         R13 K21 [{"Progress", "Step", "PlanPending", "WeightedProgressUpper", "Nodes", "Thoughts"}]
       85 GETTABLEKS                       R14 R11 K22 ["progress"]
       87 SETTABLEKS                       R14 R13 K15 ["Progress"]
       89 GETTABLEKS                       R14 R11 K23 ["step"]
       91 SETTABLEKS                       R14 R13 K16 ["Step"]
       93 GETTABLEKS                       R14 R11 K5 ["planPending"]
       95 SETTABLEKS                       R14 R13 K17 ["PlanPending"]
       97 GETTABLEKS                       R16 R11 K22 ["progress"]
       99 ADDK                             R15 R16 K24 [0.03]
      100 FASTCALL2K                       MATH_MIN R15 K25 ; [+4]
      102 LOADK                            R16 K25 [1]
      103 GETIMPORT                        R14 K28 [math.min]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K18 ["WeightedProgressUpper"]
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R15 R0 K29 ["nodes"]
      111 MOVE                             R16 R3
      112 MOVE                             R17 R6
      113 CALL                             R14 3 1
      114 SETTABLEKS                       R14 R13 K19 ["Nodes"]
      116 GETIMPORT                        R14 K31 [table.clone]
      118 MOVE                             R15 R4
      119 CALL                             R14 1 1
      120 SETTABLEKS                       R14 R13 K20 ["Thoughts"]
      122 CALL                             R12 1 0
      123 GETTABLEKS                       R12 R11 K32 ["showPreview"]
      125 JUMPIFNOTEQKB                    R12 TRUE ; [+6]
      127 MOVE                             R12 R1
      128 DUPTABLE                         R13 K34 [{"PreviewModel"}]
      129 SETTABLEKS                       R2 R13 K33 ["PreviewModel"]
      131 CALL                             R12 1 0
      132 FORGLOOP                         R7 2 ; [-121]
      134 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 DUPTABLE                         R4 K11 [{"run"}]
       18 SETTABLEKS                       R3 R4 K10 ["run"]
       20 RETURN                           R4 1
