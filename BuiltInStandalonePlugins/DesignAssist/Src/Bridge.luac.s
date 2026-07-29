PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["story"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["onNewCode"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["toggleButton"]
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["toggleButton"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Enabled"]
       13 NAMECALL                         R0 R0 K2 ["SetActive"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K3 ["registerAction"]
       19 GETUPVAL                         R1 4
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K1 ["Enabled"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K4 ["translator"]
       26 CALL                             R0 3 0
       27 GETUPVAL                         R0 5
       28 GETTABLEKS                       R0 R0 K5 ["onWidgetEnabledChanged"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K1 ["Enabled"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["actions"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ACTION_URI"]
        6 NAMECALL                         R0 R0 K2 ["BindToActivatedAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        6 NOT                              R1 R2
        7 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 NAMECALL                         R5 R4 K0 ["Disconnect"]
       11 CALL                             R5 1 0
       12 FORGLOOP                         R0 2 ; [-4]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K1 ["destroy"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["director"]
        2 GETTABLEKS                       R2 R0 K1 ["stage"]
        4 GETTABLEKS                       R3 R0 K2 ["plugin"]
        6 GETTABLEKS                       R4 R0 K3 ["widget"]
        8 GETTABLEKS                       R5 R2 K4 ["canvas"]
       10 NEWTABLE                         R6 0 0
       12 LOADB                            R7 0
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K5 ["createLiveModuleSource"]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R1
       18 CALL                             R8 1 1
       19 GETTABLEKS                       R9 R1 K6 ["bindLiveModule"]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 0
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          REF R7
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 MOVE                             R11 R6
       31 LOADK                            R14 K7 ["Enabled"]
       32 NAMECALL                         R12 R4 K8 ["GetPropertyChangedSignal"]
       34 CALL                             R12 2 1
       35 MOVE                             R14 R9
       36 NAMECALL                         R12 R12 K9 ["Connect"]
       38 CALL                             R12 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 -1 0
       43 NEWCLOSURE                       R12 P2
       44 CAPTURE                          REF R7
       45 CAPTURE                          VAL R4
       46 NAMECALL                         R10 R4 K13 ["BindToClose"]
       48 CALL                             R10 2 0
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R10 R10 K14 ["connectToolbarToggle"]
       52 GETTABLEKS                       R11 R0 K15 ["toggleButton"]
       54 MOVE                             R12 R4
       55 CALL                             R10 2 1
       56 JUMPIFNOT                        R10 ; [+7]
       57 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       59 MOVE                             R12 R6
       60 MOVE                             R13 R10
       61 GETIMPORT                        R11 K12 [table.insert]
       63 CALL                             R11 2 0
       64 GETTABLEKS                       R11 R0 K16 ["actions"]
       66 JUMPIFNOT                        R11 ; [+29]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K17 ["run"]
       70 LOADK                            R12 K18 ["ribbon action activation binding"]
       71 NEWCLOSURE                       R13 P3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U1
       74 LOADK                            R14 K19 ["The classic toolbar button can still open and close Design Assist."]
       75 CALL                             R11 3 3
       76 JUMPIFNOT                        R11 ; [+13]
       77 JUMPIFNOT                        R12 ; [+12]
       78 MOVE                             R15 R6
       79 NEWCLOSURE                       R18 P4
       80 CAPTURE                          REF R7
       81 CAPTURE                          VAL R4
       82 NAMECALL                         R16 R12 K9 ["Connect"]
       84 CALL                             R16 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R14 K12 [table.insert]
       88 CALL                             R14 -1 0
       89 JUMP                             ; [+6]
       90 JUMPIFNOT                        R13 ; [+5]
       91 GETTABLEKS                       R16 R13 K20 ["message"]
       93 NAMECALL                         R14 R5 K21 ["setError"]
       95 CALL                             R14 2 0
       96 JUMPIFNOT                        R7 ; [+1]
       97 JUMP                             ; [+24]
       98 GETTABLEKS                       R11 R0 K15 ["toggleButton"]
      100 JUMPIFNOT                        R11 ; [+7]
      101 GETTABLEKS                       R11 R0 K15 ["toggleButton"]
      103 GETTABLEKS                       R13 R4 K7 ["Enabled"]
      105 NAMECALL                         R11 R11 K22 ["SetActive"]
      107 CALL                             R11 2 0
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K23 ["registerAction"]
      111 MOVE                             R12 R3
      112 GETTABLEKS                       R13 R4 K7 ["Enabled"]
      114 GETTABLEKS                       R14 R0 K24 ["translator"]
      116 CALL                             R11 3 0
      117 GETTABLEKS                       R11 R1 K25 ["onWidgetEnabledChanged"]
      119 GETTABLEKS                       R12 R4 K7 ["Enabled"]
      121 CALL                             R11 1 0
      122 NEWTABLE                         R11 1 0
      124 NEWCLOSURE                       R12 P5
      125 CAPTURE                          REF R7
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 SETTABLEKS                       R12 R11 K26 ["destroy"]
      130 CLOSEUPVALS                      R7
      131 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["LiveModule"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["CapabilityGuard"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["PluginRuntime"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R0 K4 ["Src"]
       30 GETTABLEKS                       R6 R6 K11 ["Ribbon"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K12 [PROTO_6]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 DUPTABLE                         R7 K14 [{"createBridge"}]
       39 SETTABLEKS                       R6 R7 K13 ["createBridge"]
       41 RETURN                           R7 1
