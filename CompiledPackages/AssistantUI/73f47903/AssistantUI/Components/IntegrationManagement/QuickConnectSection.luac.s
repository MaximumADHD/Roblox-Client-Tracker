PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onToggle"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["entry"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 2
        9 GETTABLEKS                       R5 R0 K1 ["onToggle"]
       11 GETTABLEKS                       R6 R0 K2 ["entry"]
       13 GETTABLEKS                       R6 R6 K3 ["id"]
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 3
       20 DUPTABLE                         R5 K7 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"]}]
       21 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       25 DUPTABLE                         R6 K11 [{"Label", "Spacer", "Toggle"}]
       26 GETUPVAL                         R7 2
       27 GETUPVAL                         R8 4
       28 DUPTABLE                         R9 K14 [{["tag"] = "auto-xy text-body-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
       29 GETTABLEKS                       R10 R0 K2 ["entry"]
       31 GETTABLEKS                       R10 R10 K15 ["label"]
       33 SETTABLEKS                       R10 R9 K13 ["Text"]
       35 MOVE                             R10 R1
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K8 ["Label"]
       42 GETUPVAL                         R7 2
       43 GETUPVAL                         R8 3
       44 DUPTABLE                         R9 K17 [{["tag"] = "fill", ["LayoutOrder"]}]
       45 MOVE                             R10 R1
       46 CALL                             R10 0 1
       47 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K9 ["Spacer"]
       52 GETUPVAL                         R7 2
       53 GETUPVAL                         R8 5
       54 DUPTABLE                         R9 K24 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R10 R10 K25 ["QuickConnect"]
       58 GETTABLEKS                       R10 R10 K10 ["Toggle"]
       60 GETTABLEKS                       R11 R0 K2 ["entry"]
       62 GETTABLEKS                       R11 R11 K3 ["id"]
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K18 ["testId"]
       67 GETTABLEKS                       R10 R0 K26 ["isEnabled"]
       69 SETTABLEKS                       R10 R9 K20 ["isChecked"]
       71 GETTABLEKS                       R10 R0 K21 ["isDisabled"]
       73 SETTABLEKS                       R10 R9 K21 ["isDisabled"]
       75 SETTABLEKS                       R2 R9 K22 ["onActivated"]
       77 GETUPVAL                         R10 7
       78 GETTABLEKS                       R10 R10 K27 ["Small"]
       80 SETTABLEKS                       R10 R9 K23 ["size"]
       82 MOVE                             R10 R1
       83 CALL                             R10 0 1
       84 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K10 ["Toggle"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mcpServerInfo"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["entry"]
        7 GETTABLEKS                       R0 R0 K2 ["data"]
        9 GETTABLEKS                       R0 R0 K3 ["formatCommand"]
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K1 ["entry"]
       17 GETTABLEKS                       R0 R0 K2 ["data"]
       19 GETTABLEKS                       R0 R0 K3 ["formatCommand"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["mcpServerInfo"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["entry"]
        2 GETTABLEKS                       R3 R3 K1 ["data"]
        4 GETTABLEKS                       R3 R3 K2 ["kind"]
        6 JUMPIFEQKS                       R3 K3 ["command"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       12 LOADK                            R3 K4 ["QuickConnectCommandRow should only be used with command kind entries"]
       13 GETIMPORT                        R1 K6 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K7 ["useMemo"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R3 0 2
       23 GETTABLEKS                       R4 R0 K8 ["mcpServerInfo"]
       25 GETTABLEKS                       R5 R0 K0 ["entry"]
       27 GETTABLEKS                       R5 R5 K1 ["data"]
       29 GETTABLEKS                       R5 R5 K9 ["formatCommand"]
       31 SETLIST                          R3 R4 2 [1]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R3 2
       36 DUPTABLE                         R4 K21 [{["label"], ["labelTestId"], ["data"], ["copiedText"] = "Copied", ["copyButtonTestId"], ["description"], ["variant"] = "inline", ["isDisabled"], ["onCopy"], ["LayoutOrder"]}]
       37 GETTABLEKS                       R5 R0 K0 ["entry"]
       39 GETTABLEKS                       R5 R5 K10 ["label"]
       41 SETTABLEKS                       R5 R4 K10 ["label"]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K22 ["QuickConnect"]
       46 GETTABLEKS                       R5 R5 K23 ["CommandLabel"]
       48 GETTABLEKS                       R6 R0 K0 ["entry"]
       50 GETTABLEKS                       R6 R6 K24 ["id"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K11 ["labelTestId"]
       55 DUPTABLE                         R5 K27 [{"text", "copyText"}]
       56 ORK                              R6 R1 K28 [""]
       57 SETTABLEKS                       R6 R5 K25 ["text"]
       59 SETTABLEKS                       R1 R5 K26 ["copyText"]
       61 SETTABLEKS                       R5 R4 K1 ["data"]
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K22 ["QuickConnect"]
       66 GETTABLEKS                       R5 R5 K29 ["CommandCopy"]
       68 GETTABLEKS                       R6 R0 K0 ["entry"]
       70 GETTABLEKS                       R6 R6 K24 ["id"]
       72 CALL                             R5 1 1
       73 SETTABLEKS                       R5 R4 K14 ["copyButtonTestId"]
       75 GETUPVAL                         R5 4
       76 SETTABLEKS                       R5 R4 K15 ["description"]
       78 GETTABLEKS                       R5 R0 K18 ["isDisabled"]
       80 SETTABLEKS                       R5 R4 K18 ["isDisabled"]
       82 GETTABLEKS                       R5 R0 K19 ["onCopy"]
       84 SETTABLEKS                       R5 R4 K19 ["onCopy"]
       86 GETTABLEKS                       R5 R0 K20 ["LayoutOrder"]
       88 SETTABLEKS                       R5 R4 K20 ["LayoutOrder"]
       90 CALL                             R2 2 -1
       91 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["id"]
        7 DUPTABLE                         R3 K7 [{["available"] = True, ["enabled"]}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K6 ["enabled"]
       11 SETTABLE                         R3 R1 R2
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R4 K0 ["isAvailableAsync"]
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R4
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+26]
       13 LOADB                            R5 0
       14 GETTABLEKS                       R6 R4 K1 ["data"]
       16 GETTABLEKS                       R6 R6 K2 ["kind"]
       18 JUMPIFNOTEQKS                    R6 K3 ["toggle"] ; [+12]
       20 GETTABLEKS                       R6 R4 K1 ["data"]
       22 GETTABLEKS                       R6 R6 K4 ["checkEnabledAsync"]
       24 GETUPVAL                         R7 2
       25 MOVE                             R8 R4
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K5 ["mcpServerInfo"]
       29 CALL                             R6 3 1
       30 MOVE                             R5 R6
       31 GETUPVAL                         R6 1
       32 JUMPIF                           R6 ; [+5]
       33 GETUPVAL                         R6 4
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          REF R5
       37 CALL                             R6 1 0
       38 CLOSEUPVALS                      R5
       39 FORGLOOP                         R0 2 ; [-36]
       41 GETUPVAL                         R0 1
       42 JUMPIF                           R0 ; [+3]
       43 GETUPVAL                         R0 5
       44 LOADB                            R1 1
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 0
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          REF R0
       13 CLOSEUPVALS                      R0
       14 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["id"]
        7 GETTABLE                         R2 R1 R3
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["id"]
       12 DUPTABLE                         R4 K7 [{["available"] = True, ["enabled"]}]
       13 GETUPVAL                         R5 1
       14 SETTABLEKS                       R5 R4 K6 ["enabled"]
       16 SETTABLE                         R4 R1 R3
       17 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["data"]
        3 GETTABLEKS                       R0 R0 K1 ["setEnabledAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["mcpServerInfo"]
       11 CALL                             R0 4 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["EventLogger"]
       15 GETTABLEKS                       R0 R0 K4 ["logQuickSetupToggled"]
       17 DUPTABLE                         R1 K7 [{"integrationId", "action"}]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K8 ["id"]
       21 SETTABLEKS                       R2 R1 K5 ["integrationId"]
       23 GETUPVAL                         R3 2
       24 FASTCALL1                        TOSTRING R3 ; [+2]
       25 GETIMPORT                        R2 K10 [tostring]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K6 ["action"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R5 R2 K1 ["data"]
       11 GETTABLEKS                       R5 R5 K2 ["kind"]
       13 JUMPIFEQKS                       R5 K3 ["toggle"] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       19 LOADK                            R5 K4 ["Only toggle kind entries should have onToggle handlers"]
       20 GETIMPORT                        R3 K6 [assert]
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 2
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 CALL                             R3 1 0
       28 GETIMPORT                        R3 K9 [task.spawn]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K0 ["id"]
       14 GETTABLE                         R6 R7 R8
       15 JUMPIFNOT                        R6 ; [+10]
       16 GETTABLEKS                       R7 R6 K1 ["available"]
       18 JUMPIFNOT                        R7 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       21 MOVE                             R8 R0
       22 MOVE                             R9 R5
       23 GETIMPORT                        R7 K4 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R1 2 ; [-16]
       28 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EventLogger"]
        3 GETTABLEKS                       R0 R0 K1 ["logQuickSetupToggled"]
        5 DUPTABLE                         R1 K5 [{["integrationId"], ["action"] = "copy"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["integrationId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["get"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K1 ["useState"]
       20 DUPTABLE                         R8 K4 [{["expanded"] = True}]
       21 CALL                             R7 1 2
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       25 NEWCLOSURE                       R10 P0
       26 CAPTURE                          VAL R8
       27 NEWTABLE                         R11 0 0
       29 CALL                             R9 2 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       33 NEWCLOSURE                       R11 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 NEWTABLE                         R12 0 2
       41 MOVE                             R13 R2
       42 GETTABLEKS                       R14 R0 K7 ["isDisabled"]
       44 SETLIST                          R12 R13 2 [1]
       46 CALL                             R10 2 0
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R12 0 1
       58 MOVE                             R13 R2
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K8 ["useMemo"]
       65 NEWCLOSURE                       R12 P3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R13 0 2
       71 MOVE                             R14 R5
       72 MOVE                             R15 R3
       73 SETLIST                          R13 R14 2 [1]
       75 CALL                             R11 2 1
       76 JUMPIFNOT                        R5 ; [+3]
       77 LENGTH                           R12 R11
       78 JUMPIFNOTEQKN                    R12 K9 [0] ; [+3]
       80 LOADNIL                          R12
       81 RETURN                           R12 1
       82 NEWTABLE                         R12 0 0
       84 MOVE                             R13 R11
       85 LOADNIL                          R14
       86 LOADNIL                          R15
       87 FORGPREP                         R13
       88 GETTABLEKS                       R19 R17 K10 ["id"]
       90 GETTABLE                         R18 R3 R19
       91 GETTABLEKS                       R19 R17 K11 ["data"]
       93 GETTABLEKS                       R19 R19 K12 ["kind"]
       95 JUMPIFNOTEQKS                    R19 K13 ["command"] ; [+34]
       97 GETTABLEKS                       R19 R17 K10 ["id"]
       99 GETTABLEKS                       R20 R17 K10 ["id"]
      101 GETUPVAL                         R21 5
      102 GETUPVAL                         R22 6
      103 DUPTABLE                         R23 K18 [{"entry", "mcpServerInfo", "isDisabled", "onCopy", "LayoutOrder"}]
      104 SETTABLEKS                       R17 R23 K14 ["entry"]
      106 GETTABLEKS                       R24 R0 K15 ["mcpServerInfo"]
      108 SETTABLEKS                       R24 R23 K15 ["mcpServerInfo"]
      110 GETTABLEKS                       R25 R0 K7 ["isDisabled"]
      112 JUMPIFEQKB                       R25 TRUE ; [+2]
      114 LOADB                            R24 0 +1
      115 LOADB                            R24 1
      116 SETTABLEKS                       R24 R23 K7 ["isDisabled"]
      118 NEWCLOSURE                       R24 P4
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R19
      121 SETTABLEKS                       R24 R23 K16 ["onCopy"]
      123 MOVE                             R24 R1
      124 CALL                             R24 0 1
      125 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      127 CALL                             R21 2 1
      128 SETTABLE                         R21 R12 R20
      129 JUMP                             ; [+30]
      130 GETTABLEKS                       R19 R17 K10 ["id"]
      132 GETUPVAL                         R20 5
      133 GETUPVAL                         R21 7
      134 DUPTABLE                         R22 K21 [{"entry", "isEnabled", "isDisabled", "onToggle", "LayoutOrder"}]
      135 SETTABLEKS                       R17 R22 K14 ["entry"]
      137 JUMPIFNOT                        R18 ; [+3]
      138 GETTABLEKS                       R23 R18 K22 ["enabled"]
      140 JUMP                             ; [+1]
      141 LOADB                            R23 0
      142 SETTABLEKS                       R23 R22 K19 ["isEnabled"]
      144 GETTABLEKS                       R24 R0 K7 ["isDisabled"]
      146 JUMPIFEQKB                       R24 TRUE ; [+2]
      148 LOADB                            R23 0 +1
      149 LOADB                            R23 1
      150 SETTABLEKS                       R23 R22 K7 ["isDisabled"]
      152 SETTABLEKS                       R10 R22 K20 ["onToggle"]
      154 MOVE                             R23 R1
      155 CALL                             R23 0 1
      156 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      158 CALL                             R20 2 1
      159 SETTABLE                         R20 R12 R19
      160 FORGLOOP                         R13 2 ; [-73]
      162 GETUPVAL                         R13 5
      163 GETUPVAL                         R14 8
      164 DUPTABLE                         R15 K26 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y", ["testId"]}]
      165 GETTABLEKS                       R16 R0 K17 ["LayoutOrder"]
      167 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      169 GETUPVAL                         R16 9
      170 GETTABLEKS                       R16 R16 K27 ["QuickConnect"]
      172 GETTABLEKS                       R16 R16 K28 ["Section"]
      174 SETTABLEKS                       R16 R15 K25 ["testId"]
      176 DUPTABLE                         R16 K30 [{"Accordion"}]
      177 GETUPVAL                         R17 5
      178 GETUPVAL                         R18 10
      179 GETTABLEKS                       R18 R18 K31 ["Root"]
      181 DUPTABLE                         R19 K35 [{["expanded"], ["contentId"] = "quick_connect", ["editThisContent"]}]
      182 GETTABLEKS                       R20 R7 K2 ["expanded"]
      184 SETTABLEKS                       R20 R19 K2 ["expanded"]
      186 SETTABLEKS                       R9 R19 K34 ["editThisContent"]
      188 DUPTABLE                         R20 K38 [{"Header", "Content"}]
      189 GETUPVAL                         R21 5
      190 GETUPVAL                         R22 10
      191 GETTABLEKS                       R22 R22 K36 ["Header"]
      193 DUPTABLE                         R23 K45 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center", ["IsDisabled"]}]
      194 MOVE                             R24 R1
      195 CALL                             R24 0 1
      196 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      198 GETTABLEKS                       R24 R0 K7 ["isDisabled"]
      200 SETTABLEKS                       R24 R23 K44 ["IsDisabled"]
      202 DUPTABLE                         R24 K47 [{"Title"}]
      203 GETUPVAL                         R25 5
      204 GETUPVAL                         R26 11
      205 DUPTABLE                         R27 K50 [{["tag"] = "bold auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      206 GETUPVAL                         R28 12
      207 LOADK                            R30 K51 ["McpSetup"]
      208 LOADK                            R31 K52 ["QuickConnectTitle"]
      209 NAMECALL                         R28 R28 K53 ["getText"]
      211 CALL                             R28 3 1
      212 SETTABLEKS                       R28 R27 K49 ["Text"]
      214 MOVE                             R28 R1
      215 CALL                             R28 0 1
      216 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      218 CALL                             R25 2 1
      219 SETTABLEKS                       R25 R24 K46 ["Title"]
      221 CALL                             R21 3 1
      222 SETTABLEKS                       R21 R20 K36 ["Header"]
      224 GETUPVAL                         R21 5
      225 GETUPVAL                         R22 10
      226 GETTABLEKS                       R22 R22 K37 ["Content"]
      228 DUPTABLE                         R23 K57 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      229 MOVE                             R24 R1
      230 CALL                             R24 0 1
      231 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      233 MOVE                             R24 R12
      234 CALL                             R21 3 1
      235 SETTABLEKS                       R21 R20 K37 ["Content"]
      237 CALL                             R17 3 1
      238 SETTABLEKS                       R17 R16 K29 ["Accordion"]
      240 CALL                             R13 3 -1
      241 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["CopyableCodeBlock"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Guest"]
       27 GETTABLEKS                       R4 R4 K11 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["ExternalServerContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K8 ["Parent"]
       45 GETTABLEKS                       R6 R6 K14 ["QuickConnectConfig"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["TestIds"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Resources"]
       59 GETTABLEKS                       R8 R8 K18 ["Localization"]
       61 GETTABLEKS                       R8 R8 K19 ["Translator"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Parent"]
       68 GETTABLEKS                       R9 R9 K20 ["Dash"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K8 ["Parent"]
       75 GETTABLEKS                       R10 R10 K21 ["Foundation"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K8 ["Parent"]
       82 GETTABLEKS                       R11 R11 K22 ["React"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K8 ["Parent"]
       89 GETTABLEKS                       R12 R12 K23 ["ReactUtils"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R9 K24 ["Toggle"]
       94 GETTABLEKS                       R13 R9 K25 ["Text"]
       96 GETTABLEKS                       R14 R9 K26 ["View"]
       98 GETTABLEKS                       R15 R9 K27 ["Enums"]
      100 GETTABLEKS                       R15 R15 K28 ["InputSize"]
      102 GETTABLEKS                       R16 R11 K29 ["createNextOrder"]
      104 GETTABLEKS                       R17 R10 K30 ["createElement"]
      106 LOADK                            R20 K31 ["McpSetup"]
      107 LOADK                            R21 K32 ["QuickCommandDescription"]
      108 NAMECALL                         R18 R7 K33 ["getText"]
      110 CALL                             R18 3 1
      111 DUPCLOSURE                       R19 K34 [PROTO_1]
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R15
      120 DUPCLOSURE                       R20 K35 [PROTO_3]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R18
      126 DUPCLOSURE                       R21 K36 [PROTO_16]
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R7
      140 GETTABLEKS                       R22 R10 K37 ["memo"]
      142 MOVE                             R23 R21
      143 CALL                             R22 1 -1
      144 RETURN                           R22 -1
