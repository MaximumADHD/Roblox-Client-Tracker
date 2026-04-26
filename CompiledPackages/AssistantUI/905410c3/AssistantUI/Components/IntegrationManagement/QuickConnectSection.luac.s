PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onToggle"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["entry"]
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 2
        9 GETTABLEKS                       R5 R0 K1 ["onToggle"]
       11 GETTABLEKS                       R7 R0 K2 ["entry"]
       13 GETTABLEKS                       R6 R7 K3 ["id"]
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 3
       20 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       21 LOADK                            R6 K7 ["row size-full-0 auto-y align-y-center padding-y-xxsmall"]
       22 SETTABLEKS                       R6 R5 K4 ["tag"]
       24 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       28 DUPTABLE                         R6 K11 [{"Label", "Spacer", "Toggle"}]
       29 GETUPVAL                         R7 2
       30 GETUPVAL                         R8 4
       31 DUPTABLE                         R9 K13 [{"tag", "Text", "LayoutOrder"}]
       32 LOADK                            R10 K14 ["auto-xy text-body-medium text-align-x-left"]
       33 SETTABLEKS                       R10 R9 K4 ["tag"]
       35 GETTABLEKS                       R11 R0 K2 ["entry"]
       37 GETTABLEKS                       R10 R11 K15 ["label"]
       39 SETTABLEKS                       R10 R9 K12 ["Text"]
       41 MOVE                             R10 R1
       42 CALL                             R10 0 1
       43 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K8 ["Label"]
       48 GETUPVAL                         R7 2
       49 GETUPVAL                         R8 3
       50 DUPTABLE                         R9 K6 [{"tag", "LayoutOrder"}]
       51 LOADK                            R10 K16 ["fill"]
       52 SETTABLEKS                       R10 R9 K4 ["tag"]
       54 MOVE                             R10 R1
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K9 ["Spacer"]
       61 GETUPVAL                         R7 2
       62 GETUPVAL                         R8 5
       63 DUPTABLE                         R9 K22 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrder"}]
       64 GETUPVAL                         R12 6
       65 GETTABLEKS                       R11 R12 K23 ["QuickConnect"]
       67 GETTABLEKS                       R10 R11 K10 ["Toggle"]
       69 GETTABLEKS                       R12 R0 K2 ["entry"]
       71 GETTABLEKS                       R11 R12 K3 ["id"]
       73 CALL                             R10 1 1
       74 SETTABLEKS                       R10 R9 K17 ["testId"]
       76 LOADK                            R10 K24 [""]
       77 SETTABLEKS                       R10 R9 K15 ["label"]
       79 GETTABLEKS                       R10 R0 K25 ["isEnabled"]
       81 SETTABLEKS                       R10 R9 K18 ["isChecked"]
       83 GETTABLEKS                       R10 R0 K19 ["isDisabled"]
       85 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
       87 SETTABLEKS                       R2 R9 K20 ["onActivated"]
       89 GETUPVAL                         R11 7
       90 GETTABLEKS                       R10 R11 K26 ["Small"]
       92 SETTABLEKS                       R10 R9 K21 ["size"]
       94 MOVE                             R10 R1
       95 CALL                             R10 0 1
       96 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K10 ["Toggle"]
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mcpServerInfo"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["entry"]
        7 GETTABLEKS                       R0 R1 K2 ["formatCommand"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K1 ["entry"]
       15 GETTABLEKS                       R0 R1 K2 ["formatCommand"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K0 ["mcpServerInfo"]
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["entry"]
        2 GETTABLEKS                       R3 R4 K1 ["kind"]
        4 JUMPIFEQKS                       R3 K2 ["command"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       10 LOADK                            R3 K3 ["QuickConnectCommandRow should only be used with command kind entries"]
       11 GETIMPORT                        R1 K5 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K6 ["useMemo"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R3 0 2
       21 GETTABLEKS                       R4 R0 K7 ["mcpServerInfo"]
       23 GETTABLEKS                       R6 R0 K0 ["entry"]
       25 GETTABLEKS                       R5 R6 K8 ["formatCommand"]
       27 SETLIST                          R3 R4 2 [1]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 1
       31 GETUPVAL                         R3 2
       32 DUPTABLE                         R4 K19 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "description", "variant", "isDisabled", "onCopy", "LayoutOrder"}]
       33 GETTABLEKS                       R6 R0 K0 ["entry"]
       35 GETTABLEKS                       R5 R6 K9 ["label"]
       37 SETTABLEKS                       R5 R4 K9 ["label"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R6 R7 K20 ["QuickConnect"]
       42 GETTABLEKS                       R5 R6 K21 ["CommandLabel"]
       44 GETTABLEKS                       R7 R0 K0 ["entry"]
       46 GETTABLEKS                       R6 R7 K22 ["id"]
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K10 ["labelTestId"]
       51 DUPTABLE                         R5 K25 [{"text", "copyText"}]
       52 ORK                              R6 R1 K26 [""]
       53 SETTABLEKS                       R6 R5 K23 ["text"]
       55 SETTABLEKS                       R1 R5 K24 ["copyText"]
       57 SETTABLEKS                       R5 R4 K11 ["data"]
       59 LOADK                            R5 K27 ["Copied"]
       60 SETTABLEKS                       R5 R4 K12 ["copiedText"]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R6 R7 K20 ["QuickConnect"]
       65 GETTABLEKS                       R5 R6 K28 ["CommandCopy"]
       67 GETTABLEKS                       R7 R0 K0 ["entry"]
       69 GETTABLEKS                       R6 R7 K22 ["id"]
       71 CALL                             R5 1 1
       72 SETTABLEKS                       R5 R4 K13 ["copyButtonTestId"]
       74 GETUPVAL                         R5 4
       75 SETTABLEKS                       R5 R4 K14 ["description"]
       77 LOADK                            R5 K29 ["inline"]
       78 SETTABLEKS                       R5 R4 K15 ["variant"]
       80 GETTABLEKS                       R5 R0 K16 ["isDisabled"]
       82 SETTABLEKS                       R5 R4 K16 ["isDisabled"]
       84 GETTABLEKS                       R5 R0 K17 ["onCopy"]
       86 SETTABLEKS                       R5 R4 K17 ["onCopy"]
       88 GETTABLEKS                       R5 R0 K18 ["LayoutOrder"]
       90 SETTABLEKS                       R5 R4 K18 ["LayoutOrder"]
       92 CALL                             R2 2 -1
       93 RETURN                           R2 -1

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
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["quickConnect"]
        3 GETTABLEKS                       R0 R1 K1 ["fileExistsAsync"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K2 ["indicatorPath"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["quickConnect"]
        3 GETTABLEKS                       R0 R1 K1 ["readFileAsync"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["configPath"]
        8 JUMPIF                           R1 ; [+3]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["indicatorPath"]
       12 CALL                             R0 1 1
       13 JUMPIFNOT                        R0 ; [+17]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K4 ["checkEnabledAsync"]
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K4 ["checkEnabledAsync"]
       21 GETUPVAL                         R2 1
       22 MOVE                             R3 R0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K5 ["json"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K6 ["mcpServerInfo"]
       29 CALL                             R1 4 1
       30 SETUPVAL                         R1 2
       31 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["indicatorPath"]
        7 DUPTABLE                         R3 K6 [{"available", "enabled"}]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K4 ["available"]
       11 GETUPVAL                         R4 1
       12 SETTABLEKS                       R4 R3 K5 ["enabled"]
       14 SETTABLE                         R3 R1 R2
       15 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R5 0
        8 GETIMPORT                        R6 K1 [pcall]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          REF R5
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R4
       14 CALL                             R6 1 0
       15 JUMPIF                           R5 ; [+2]
       16 CLOSEUPVALS                      R5
       17 JUMP                             ; [+24]
       18 LOADB                            R6 0
       19 GETTABLEKS                       R7 R4 K2 ["kind"]
       21 JUMPIFNOTEQKS                    R7 K3 ["toggle"] ; [+12]
       23 GETTABLEKS                       R7 R4 K4 ["checkEnabledAsync"]
       25 JUMPIFNOT                        R7 ; [+8]
       26 GETIMPORT                        R7 K1 [pcall]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U3
       33 CALL                             R7 1 0
       34 GETUPVAL                         R7 1
       35 JUMPIF                           R7 ; [+5]
       36 GETUPVAL                         R7 4
       37 NEWCLOSURE                       R8 P2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          REF R6
       40 CALL                             R7 1 0
       41 CLOSEUPVALS                      R5
       42 FORGLOOP                         R0 2 ; [-39]
       44 GETUPVAL                         R0 1
       45 JUMPIF                           R0 ; [+3]
       46 GETUPVAL                         R0 5
       47 LOADB                            R1 1
       48 CALL                             R0 1 0
       49 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["indicatorPath"]
        7 GETTABLE                         R2 R1 R3
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["indicatorPath"]
       12 DUPTABLE                         R4 K6 [{"available", "enabled"}]
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K4 ["available"]
       16 GETUPVAL                         R5 1
       17 SETTABLEKS                       R5 R4 K5 ["enabled"]
       19 SETTABLE                         R4 R1 R3
       20 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R6 3
        5 GETTABLEKS                       R5 R6 K0 ["json"]
        7 GETUPVAL                         R7 4
        8 GETTABLEKS                       R6 R7 K1 ["mcpServerInfo"]
       10 CALL                             R1 5 -1
       11 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["quickConnect"]
        3 GETTABLEKS                       R0 R1 K1 ["modifyFileAsync"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["configPath"]
        8 JUMPIF                           R1 ; [+3]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["indicatorPath"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U4
       18 CALL                             R0 2 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K4 ["EventLogger"]
       22 GETTABLEKS                       R0 R1 K5 ["logQuickSetupToggled"]
       24 DUPTABLE                         R1 K8 [{"integrationId", "action"}]
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R2 R3 K9 ["id"]
       28 SETTABLEKS                       R2 R1 K6 ["integrationId"]
       30 GETUPVAL                         R3 3
       31 FASTCALL1                        TOSTRING R3 ; [+2]
       32 GETIMPORT                        R2 K11 [tostring]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K7 ["action"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["find"]
        3 GETUPVAL                         R3 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R5 R2 K1 ["kind"]
       11 JUMPIFEQKS                       R5 K2 ["toggle"] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       17 LOADK                            R5 K3 ["Only toggle kind entries should have onToggle handlers"]
       18 GETIMPORT                        R3 K5 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 2
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R3 R2 K6 ["setEnabledAsync"]
       28 JUMPIFNOT                        R3 ; [+12]
       29 GETTABLEKS                       R3 R2 K6 ["setEnabledAsync"]
       31 GETIMPORT                        R4 K9 [task.spawn]
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R2
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_18:
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
       12 GETTABLEKS                       R8 R5 K0 ["indicatorPath"]
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EventLogger"]
        3 GETTABLEKS                       R0 R1 K1 ["logQuickSetupToggled"]
        5 DUPTABLE                         R1 K4 [{"integrationId", "action"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["integrationId"]
        9 LOADK                            R2 K5 ["copy"]
       10 SETTABLEKS                       R2 R1 K3 ["action"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["get"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K1 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K1 ["useState"]
       20 DUPTABLE                         R8 K3 [{"expanded"}]
       21 LOADB                            R9 1
       22 SETTABLEKS                       R9 R8 K2 ["expanded"]
       24 CALL                             R7 1 2
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          VAL R8
       30 NEWTABLE                         R11 0 0
       32 CALL                             R9 2 1
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R10 R11 K5 ["useEffect"]
       36 NEWCLOSURE                       R11 P1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 NEWTABLE                         R12 0 2
       44 MOVE                             R13 R2
       45 GETTABLEKS                       R14 R0 K6 ["isDisabled"]
       47 SETLIST                          R12 R13 2 [1]
       49 CALL                             R10 2 0
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R12 0 1
       61 MOVE                             R13 R2
       62 SETLIST                          R12 R13 1 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R12 2
       66 GETTABLEKS                       R11 R12 K7 ["useMemo"]
       68 NEWCLOSURE                       R12 P3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R13 0 2
       74 MOVE                             R14 R5
       75 MOVE                             R15 R3
       76 SETLIST                          R13 R14 2 [1]
       78 CALL                             R11 2 1
       79 JUMPIFNOT                        R5 ; [+3]
       80 LENGTH                           R12 R11
       81 JUMPIFNOTEQKN                    R12 K8 [0] ; [+3]
       83 LOADNIL                          R12
       84 RETURN                           R12 1
       85 NEWTABLE                         R12 0 0
       87 MOVE                             R13 R11
       88 LOADNIL                          R14
       89 LOADNIL                          R15
       90 FORGPREP                         R13
       91 GETTABLEKS                       R19 R17 K9 ["indicatorPath"]
       93 GETTABLE                         R18 R3 R19
       94 GETTABLEKS                       R19 R17 K10 ["kind"]
       96 JUMPIFNOTEQKS                    R19 K11 ["command"] ; [+34]
       98 GETTABLEKS                       R19 R17 K12 ["id"]
      100 GETTABLEKS                       R20 R17 K12 ["id"]
      102 GETUPVAL                         R21 5
      103 GETUPVAL                         R22 6
      104 DUPTABLE                         R23 K17 [{"entry", "mcpServerInfo", "isDisabled", "onCopy", "LayoutOrder"}]
      105 SETTABLEKS                       R17 R23 K13 ["entry"]
      107 GETTABLEKS                       R24 R0 K14 ["mcpServerInfo"]
      109 SETTABLEKS                       R24 R23 K14 ["mcpServerInfo"]
      111 GETTABLEKS                       R25 R0 K6 ["isDisabled"]
      113 JUMPIFEQKB                       R25 TRUE ; [+2]
      115 LOADB                            R24 0 +1
      116 LOADB                            R24 1
      117 SETTABLEKS                       R24 R23 K6 ["isDisabled"]
      119 NEWCLOSURE                       R24 P4
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R19
      122 SETTABLEKS                       R24 R23 K15 ["onCopy"]
      124 MOVE                             R24 R1
      125 CALL                             R24 0 1
      126 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      128 CALL                             R21 2 1
      129 SETTABLE                         R21 R12 R20
      130 JUMP                             ; [+30]
      131 GETTABLEKS                       R19 R17 K12 ["id"]
      133 GETUPVAL                         R20 5
      134 GETUPVAL                         R21 7
      135 DUPTABLE                         R22 K20 [{"entry", "isEnabled", "isDisabled", "onToggle", "LayoutOrder"}]
      136 SETTABLEKS                       R17 R22 K13 ["entry"]
      138 JUMPIFNOT                        R18 ; [+3]
      139 GETTABLEKS                       R23 R18 K21 ["enabled"]
      141 JUMP                             ; [+1]
      142 LOADB                            R23 0
      143 SETTABLEKS                       R23 R22 K18 ["isEnabled"]
      145 GETTABLEKS                       R24 R0 K6 ["isDisabled"]
      147 JUMPIFEQKB                       R24 TRUE ; [+2]
      149 LOADB                            R23 0 +1
      150 LOADB                            R23 1
      151 SETTABLEKS                       R23 R22 K6 ["isDisabled"]
      153 SETTABLEKS                       R10 R22 K19 ["onToggle"]
      155 MOVE                             R23 R1
      156 CALL                             R23 0 1
      157 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      159 CALL                             R20 2 1
      160 SETTABLE                         R20 R12 R19
      161 FORGLOOP                         R13 2 ; [-71]
      163 GETUPVAL                         R13 5
      164 GETUPVAL                         R14 8
      165 DUPTABLE                         R15 K24 [{"LayoutOrder", "tag", "testId"}]
      166 GETTABLEKS                       R16 R0 K16 ["LayoutOrder"]
      168 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      170 LOADK                            R16 K25 ["size-full-0 auto-y"]
      171 SETTABLEKS                       R16 R15 K22 ["tag"]
      173 GETUPVAL                         R18 9
      174 GETTABLEKS                       R17 R18 K26 ["QuickConnect"]
      176 GETTABLEKS                       R16 R17 K27 ["Section"]
      178 SETTABLEKS                       R16 R15 K23 ["testId"]
      180 DUPTABLE                         R16 K29 [{"Accordion"}]
      181 GETUPVAL                         R17 5
      182 GETUPVAL                         R19 10
      183 GETTABLEKS                       R18 R19 K30 ["Root"]
      185 DUPTABLE                         R19 K33 [{"expanded", "contentId", "editThisContent"}]
      186 GETTABLEKS                       R20 R7 K2 ["expanded"]
      188 SETTABLEKS                       R20 R19 K2 ["expanded"]
      190 LOADK                            R20 K34 ["quick_connect"]
      191 SETTABLEKS                       R20 R19 K31 ["contentId"]
      193 SETTABLEKS                       R9 R19 K32 ["editThisContent"]
      195 DUPTABLE                         R20 K37 [{"Header", "Content"}]
      196 GETUPVAL                         R21 5
      197 GETUPVAL                         R23 10
      198 GETTABLEKS                       R22 R23 K35 ["Header"]
      200 DUPTABLE                         R23 K42 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment", "IsDisabled"}]
      201 MOVE                             R24 R1
      202 CALL                             R24 0 1
      203 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      205 LOADB                            R24 1
      206 SETTABLEKS                       R24 R23 K38 ["AutomaticHeight"]
      208 LOADK                            R24 K43 ["medium"]
      209 SETTABLEKS                       R24 R23 K39 ["IconSize"]
      211 LOADK                            R24 K44 ["center"]
      212 SETTABLEKS                       R24 R23 K40 ["VerticalAlignment"]
      214 GETTABLEKS                       R24 R0 K6 ["isDisabled"]
      216 SETTABLEKS                       R24 R23 K41 ["IsDisabled"]
      218 DUPTABLE                         R24 K46 [{"Title"}]
      219 GETUPVAL                         R25 5
      220 GETUPVAL                         R26 11
      221 DUPTABLE                         R27 K48 [{"tag", "Text", "LayoutOrder"}]
      222 LOADK                            R28 K49 ["auto-xy text-title-small bold text-align-x-left"]
      223 SETTABLEKS                       R28 R27 K22 ["tag"]
      225 GETUPVAL                         R28 12
      226 LOADK                            R30 K50 ["McpSetup"]
      227 LOADK                            R31 K51 ["QuickConnectTitle"]
      228 NAMECALL                         R28 R28 K52 ["getText"]
      230 CALL                             R28 3 1
      231 SETTABLEKS                       R28 R27 K47 ["Text"]
      233 MOVE                             R28 R1
      234 CALL                             R28 0 1
      235 SETTABLEKS                       R28 R27 K16 ["LayoutOrder"]
      237 CALL                             R25 2 1
      238 SETTABLEKS                       R25 R24 K45 ["Title"]
      240 CALL                             R21 3 1
      241 SETTABLEKS                       R21 R20 K35 ["Header"]
      243 GETUPVAL                         R21 5
      244 GETUPVAL                         R23 10
      245 GETTABLEKS                       R22 R23 K36 ["Content"]
      247 DUPTABLE                         R23 K55 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      248 LOADK                            R24 K56 ["col size-full-0 auto-y gap-small"]
      249 SETTABLEKS                       R24 R23 K22 ["tag"]
      251 MOVE                             R24 R1
      252 CALL                             R24 0 1
      253 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      255 LOADB                            R24 1
      256 SETTABLEKS                       R24 R23 K53 ["UseVisible"]
      258 LOADB                            R24 1
      259 SETTABLEKS                       R24 R23 K54 ["disableVerticalBar"]
      261 MOVE                             R24 R12
      262 CALL                             R21 3 1
      263 SETTABLEKS                       R21 R20 K36 ["Content"]
      265 CALL                             R17 3 1
      266 SETTABLEKS                       R17 R16 K28 ["Accordion"]
      268 CALL                             R13 3 -1
      269 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["CopyableCodeBlock"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Guest"]
       27 GETTABLEKS                       R4 R5 K11 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["ExternalServerContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K8 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["QuickConnectConfig"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K15 ["Util"]
       52 GETTABLEKS                       R7 R8 K16 ["TestIds"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K17 ["Resources"]
       59 GETTABLEKS                       R9 R10 K18 ["Localization"]
       61 GETTABLEKS                       R8 R9 K19 ["Translator"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K8 ["Parent"]
       68 GETTABLEKS                       R9 R10 K20 ["Dash"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K8 ["Parent"]
       75 GETTABLEKS                       R10 R11 K21 ["Foundation"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K8 ["Parent"]
       82 GETTABLEKS                       R11 R12 K22 ["React"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R13 R0 K8 ["Parent"]
       89 GETTABLEKS                       R12 R13 K23 ["ReactUtils"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R9 K24 ["Toggle"]
       94 GETTABLEKS                       R13 R9 K25 ["Text"]
       96 GETTABLEKS                       R14 R9 K26 ["View"]
       98 GETTABLEKS                       R16 R9 K27 ["Enums"]
      100 GETTABLEKS                       R15 R16 K28 ["InputSize"]
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
      126 DUPCLOSURE                       R21 K36 [PROTO_20]
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
