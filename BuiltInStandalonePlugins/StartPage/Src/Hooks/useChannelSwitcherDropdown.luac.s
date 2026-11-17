PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["get"]
        9 CALL                             R2 0 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["fetchState"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CALL                             R1 1 0
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          REF R0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["set"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["get"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 3
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 NEWTABLE                         R7 0 0
       20 CALL                             R5 2 0
       21 JUMPIF                           R1 ; [+2]
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K2 ["switchableEntries"]
       27 MOVE                             R6 R1
       28 CALL                             R5 1 1
       29 LENGTH                           R6 R5
       30 JUMPIFNOTEQKN                    R6 K3 [0] ; [+3]
       32 LOADNIL                          R6
       33 RETURN                           R6 1
       34 GETTABLEKS                       R7 R1 K4 ["defaultChannel"]
       36 JUMPIFEQKS                       R7 K5 [""] ; [+4]
       38 GETTABLEKS                       R6 R1 K4 ["defaultChannel"]
       40 JUMP                             ; [+1]
       41 LOADK                            R6 K6 ["production"]
       42 NEWTABLE                         R7 0 1
       44 DUPTABLE                         R8 K9 [{["id"] = "", ["text"]}]
       45 LOADK                            R11 K10 ["ChannelSwitcher"]
       46 LOADK                            R12 K11 ["Default"]
       47 DUPTABLE                         R13 K13 [{"channel"}]
       48 SETTABLEKS                       R6 R13 K12 ["channel"]
       50 NAMECALL                         R9 R0 K14 ["getText"]
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K8 ["text"]
       55 SETLIST                          R7 R8 1 [1]
       57 MOVE                             R8 R5
       58 LOADNIL                          R9
       59 LOADNIL                          R10
       60 FORGPREP                         R8
       61 DUPTABLE                         R15 K15 [{"id", "text"}]
       62 GETTABLEKS                       R16 R12 K7 ["id"]
       64 SETTABLEKS                       R16 R15 K7 ["id"]
       66 GETTABLEKS                       R16 R12 K16 ["displayName"]
       68 SETTABLEKS                       R16 R15 K8 ["text"]
       70 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       72 MOVE                             R14 R7
       73 GETIMPORT                        R13 K19 [table.insert]
       75 CALL                             R13 2 0
       76 FORGLOOP                         R8 2 ; [-16]
       78 GETUPVAL                         R8 5
       79 GETTABLEKS                       R8 R8 K20 ["createElement"]
       81 GETUPVAL                         R9 6
       82 DUPTABLE                         R10 K25 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small auto-xy"}]
       83 DUPTABLE                         R11 K28 [{"Label", "Dropdown"}]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R12 R12 K20 ["createElement"]
       87 GETUPVAL                         R13 7
       88 DUPTABLE                         R14 K31 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-medium content-default"}]
       89 LOADK                            R17 K10 ["ChannelSwitcher"]
       90 LOADK                            R18 K26 ["Label"]
       91 NAMECALL                         R15 R0 K14 ["getText"]
       93 CALL                             R15 3 1
       94 SETTABLEKS                       R15 R14 K29 ["Text"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K26 ["Label"]
       99 GETUPVAL                         R12 5
      100 GETTABLEKS                       R12 R12 K20 ["createElement"]
      102 GETUPVAL                         R13 8
      103 GETTABLEKS                       R13 R13 K32 ["Root"]
      105 GETUPVAL                         R14 9
      106 GETTABLEKS                       R14 R14 K33 ["join"]
      108 GETUPVAL                         R15 10
      109 DUPTABLE                         R16 K38 [{["LayoutOrder"] = 2, ["value"], ["items"], ["onItemChanged"]}]
      110 SETTABLEKS                       R3 R16 K35 ["value"]
      112 SETTABLEKS                       R7 R16 K36 ["items"]
      114 NEWCLOSURE                       R17 P1
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U2
      117 SETTABLEKS                       R17 R16 K37 ["onItemChanged"]
      119 CALL                             R14 2 -1
      120 CALL                             R12 -1 1
      121 SETTABLEKS                       R12 R11 K27 ["Dropdown"]
      123 CALL                             R8 3 -1
      124 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["TypedDash"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Packages"]
       31 GETTABLEKS                       R6 R6 K13 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R6 K15 ["Localization"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Src"]
       42 GETTABLEKS                       R8 R8 K11 ["Util"]
       44 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K17 ["Dropdown"]
       49 GETTABLEKS                       R9 R7 K18 ["Text"]
       51 GETTABLEKS                       R10 R7 K19 ["View"]
       53 GETTABLEKS                       R11 R7 K20 ["Enums"]
       55 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R13 R0 K10 ["Src"]
       61 GETTABLEKS                       R13 R13 K11 ["Util"]
       63 GETTABLEKS                       R13 R13 K22 ["SessionChannel"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R0 K10 ["Src"]
       70 GETTABLEKS                       R14 R14 K23 ["Types"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R15 R0 K10 ["Src"]
       77 GETTABLEKS                       R15 R15 K24 ["SharedFlags"]
       79 GETTABLEKS                       R15 R15 K25 ["getFFlagStudioChannelSwitcherUI"]
       81 CALL                             R14 1 1
       82 CALL                             R14 0 1
       83 DUPTABLE                         R15 K32 [{["label"] = "", ["width"], ["size"], ["maxHeight"] = 300}]
       84 GETIMPORT                        R16 K35 [UDim.new]
       86 LOADN                            R17 0
       87 LOADN                            R18 186
       88 CALL                             R16 2 1
       89 SETTABLEKS                       R16 R15 K28 ["width"]
       91 GETTABLEKS                       R16 R11 K36 ["Small"]
       93 SETTABLEKS                       R16 R15 K29 ["size"]
       95 DUPCLOSURE                       R16 K37 [PROTO_4]
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R15
      107 RETURN                           R16 1
