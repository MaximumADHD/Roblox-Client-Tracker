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
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["entry"]
        7 GETTABLEKS                       R1 R2 K2 ["data"]
        9 GETTABLEKS                       R0 R1 K3 ["formatCommand"]
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["entry"]
       17 GETTABLEKS                       R1 R2 K2 ["data"]
       19 GETTABLEKS                       R0 R1 K3 ["formatCommand"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["mcpServerInfo"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["entry"]
        2 GETTABLEKS                       R4 R5 K1 ["data"]
        4 GETTABLEKS                       R3 R4 K2 ["kind"]
        6 JUMPIFEQKS                       R3 K3 ["command"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       12 LOADK                            R3 K4 ["QuickConnectCommandRow should only be used with command kind entries"]
       13 GETIMPORT                        R1 K6 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K7 ["useMemo"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R3 0 2
       23 GETTABLEKS                       R4 R0 K8 ["mcpServerInfo"]
       25 GETTABLEKS                       R7 R0 K0 ["entry"]
       27 GETTABLEKS                       R6 R7 K1 ["data"]
       29 GETTABLEKS                       R5 R6 K9 ["formatCommand"]
       31 SETLIST                          R3 R4 2 [1]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R3 2
       36 DUPTABLE                         R4 K19 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "description", "variant", "isDisabled", "onCopy", "LayoutOrder"}]
       37 GETTABLEKS                       R6 R0 K0 ["entry"]
       39 GETTABLEKS                       R5 R6 K10 ["label"]
       41 SETTABLEKS                       R5 R4 K10 ["label"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R6 R7 K20 ["QuickConnect"]
       46 GETTABLEKS                       R5 R6 K21 ["CommandLabel"]
       48 GETTABLEKS                       R7 R0 K0 ["entry"]
       50 GETTABLEKS                       R6 R7 K22 ["id"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K11 ["labelTestId"]
       55 DUPTABLE                         R5 K25 [{"text", "copyText"}]
       56 ORK                              R6 R1 K26 [""]
       57 SETTABLEKS                       R6 R5 K23 ["text"]
       59 SETTABLEKS                       R1 R5 K24 ["copyText"]
       61 SETTABLEKS                       R5 R4 K1 ["data"]
       63 LOADK                            R5 K27 ["Copied"]
       64 SETTABLEKS                       R5 R4 K12 ["copiedText"]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R6 R7 K20 ["QuickConnect"]
       69 GETTABLEKS                       R5 R6 K28 ["CommandCopy"]
       71 GETTABLEKS                       R7 R0 K0 ["entry"]
       73 GETTABLEKS                       R6 R7 K22 ["id"]
       75 CALL                             R5 1 1
       76 SETTABLEKS                       R5 R4 K13 ["copyButtonTestId"]
       78 GETUPVAL                         R5 4
       79 SETTABLEKS                       R5 R4 K14 ["description"]
       81 LOADK                            R5 K29 ["inline"]
       82 SETTABLEKS                       R5 R4 K15 ["variant"]
       84 GETTABLEKS                       R5 R0 K16 ["isDisabled"]
       86 SETTABLEKS                       R5 R4 K16 ["isDisabled"]
       88 GETTABLEKS                       R5 R0 K17 ["onCopy"]
       90 SETTABLEKS                       R5 R4 K17 ["onCopy"]
       92 GETTABLEKS                       R5 R0 K18 ["LayoutOrder"]
       94 SETTABLEKS                       R5 R4 K18 ["LayoutOrder"]
       96 CALL                             R2 2 -1
       97 RETURN                           R2 -1

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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["data"]
        8 GETTABLEKS                       R1 R2 K3 ["configPath"]
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["indicatorPath"]
       14 CALL                             R0 1 1
       15 JUMPIFNOT                        R0 ; [+23]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K2 ["data"]
       19 GETTABLEKS                       R1 R2 K5 ["checkEnabledAsync"]
       21 JUMPIFNOT                        R1 ; [+17]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K2 ["data"]
       25 GETTABLEKS                       R1 R2 K5 ["checkEnabledAsync"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K2 ["data"]
       30 MOVE                             R3 R0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K6 ["json"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K7 ["mcpServerInfo"]
       37 CALL                             R1 4 1
       38 SETUPVAL                         R1 2
       39 RETURN                           R0 0

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
       17 JUMP                             ; [+28]
       18 LOADB                            R6 0
       19 GETTABLEKS                       R8 R4 K2 ["data"]
       21 GETTABLEKS                       R7 R8 K3 ["kind"]
       23 JUMPIFNOTEQKS                    R7 K4 ["toggle"] ; [+14]
       25 GETTABLEKS                       R8 R4 K2 ["data"]
       27 GETTABLEKS                       R7 R8 K5 ["checkEnabledAsync"]
       29 JUMPIFNOT                        R7 ; [+8]
       30 GETIMPORT                        R7 K1 [pcall]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          REF R6
       36 CAPTURE                          UPVAL U3
       37 CALL                             R7 1 0
       38 GETUPVAL                         R7 1
       39 JUMPIF                           R7 ; [+5]
       40 GETUPVAL                         R7 4
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          REF R6
       44 CALL                             R7 1 0
       45 CLOSEUPVALS                      R5
       46 FORGLOOP                         R0 2 ; [-43]
       48 GETUPVAL                         R0 1
       49 JUMPIF                           R0 ; [+3]
       50 GETUPVAL                         R0 5
       51 LOADB                            R1 1
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["data"]
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R5 R6 K1 ["json"]
        9 GETUPVAL                         R7 4
       10 GETTABLEKS                       R6 R7 K2 ["mcpServerInfo"]
       12 CALL                             R1 5 -1
       13 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["quickConnect"]
        3 GETTABLEKS                       R0 R1 K1 ["modifyFileAsync"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["data"]
        8 GETTABLEKS                       R1 R2 K3 ["configPath"]
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["indicatorPath"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U4
       20 CALL                             R0 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K5 ["EventLogger"]
       24 GETTABLEKS                       R0 R1 K6 ["logQuickSetupToggled"]
       26 DUPTABLE                         R1 K9 [{"integrationId", "action"}]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R2 R3 K10 ["id"]
       30 SETTABLEKS                       R2 R1 K7 ["integrationId"]
       32 GETUPVAL                         R3 3
       33 FASTCALL1                        TOSTRING R3 ; [+2]
       34 GETIMPORT                        R2 K12 [tostring]
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R1 K8 ["action"]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

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
        9 GETTABLEKS                       R6 R2 K1 ["data"]
       11 GETTABLEKS                       R5 R6 K2 ["kind"]
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
       28 GETTABLEKS                       R4 R2 K1 ["data"]
       30 GETTABLEKS                       R3 R4 K7 ["setEnabledAsync"]
       32 JUMPIFNOT                        R3 ; [+14]
       33 GETTABLEKS                       R4 R2 K1 ["data"]
       35 GETTABLEKS                       R3 R4 K7 ["setEnabledAsync"]
       37 GETIMPORT                        R4 K10 [task.spawn]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R2
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

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
       94 GETTABLEKS                       R20 R17 K10 ["data"]
       96 GETTABLEKS                       R19 R20 K11 ["kind"]
       98 JUMPIFNOTEQKS                    R19 K12 ["command"] ; [+34]
      100 GETTABLEKS                       R19 R17 K13 ["id"]
      102 GETTABLEKS                       R20 R17 K13 ["id"]
      104 GETUPVAL                         R21 5
      105 GETUPVAL                         R22 6
      106 DUPTABLE                         R23 K18 [{"entry", "mcpServerInfo", "isDisabled", "onCopy", "LayoutOrder"}]
      107 SETTABLEKS                       R17 R23 K14 ["entry"]
      109 GETTABLEKS                       R24 R0 K15 ["mcpServerInfo"]
      111 SETTABLEKS                       R24 R23 K15 ["mcpServerInfo"]
      113 GETTABLEKS                       R25 R0 K6 ["isDisabled"]
      115 JUMPIFEQKB                       R25 TRUE ; [+2]
      117 LOADB                            R24 0 +1
      118 LOADB                            R24 1
      119 SETTABLEKS                       R24 R23 K6 ["isDisabled"]
      121 NEWCLOSURE                       R24 P4
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R19
      124 SETTABLEKS                       R24 R23 K16 ["onCopy"]
      126 MOVE                             R24 R1
      127 CALL                             R24 0 1
      128 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      130 CALL                             R21 2 1
      131 SETTABLE                         R21 R12 R20
      132 JUMP                             ; [+30]
      133 GETTABLEKS                       R19 R17 K13 ["id"]
      135 GETUPVAL                         R20 5
      136 GETUPVAL                         R21 7
      137 DUPTABLE                         R22 K21 [{"entry", "isEnabled", "isDisabled", "onToggle", "LayoutOrder"}]
      138 SETTABLEKS                       R17 R22 K14 ["entry"]
      140 JUMPIFNOT                        R18 ; [+3]
      141 GETTABLEKS                       R23 R18 K22 ["enabled"]
      143 JUMP                             ; [+1]
      144 LOADB                            R23 0
      145 SETTABLEKS                       R23 R22 K19 ["isEnabled"]
      147 GETTABLEKS                       R24 R0 K6 ["isDisabled"]
      149 JUMPIFEQKB                       R24 TRUE ; [+2]
      151 LOADB                            R23 0 +1
      152 LOADB                            R23 1
      153 SETTABLEKS                       R23 R22 K6 ["isDisabled"]
      155 SETTABLEKS                       R10 R22 K20 ["onToggle"]
      157 MOVE                             R23 R1
      158 CALL                             R23 0 1
      159 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      161 CALL                             R20 2 1
      162 SETTABLE                         R20 R12 R19
      163 FORGLOOP                         R13 2 ; [-73]
      165 GETUPVAL                         R13 5
      166 GETUPVAL                         R14 8
      167 DUPTABLE                         R15 K25 [{"LayoutOrder", "tag", "testId"}]
      168 GETTABLEKS                       R16 R0 K17 ["LayoutOrder"]
      170 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      172 LOADK                            R16 K26 ["size-full-0 auto-y"]
      173 SETTABLEKS                       R16 R15 K23 ["tag"]
      175 GETUPVAL                         R18 9
      176 GETTABLEKS                       R17 R18 K27 ["QuickConnect"]
      178 GETTABLEKS                       R16 R17 K28 ["Section"]
      180 SETTABLEKS                       R16 R15 K24 ["testId"]
      182 DUPTABLE                         R16 K30 [{"Accordion"}]
      183 GETUPVAL                         R17 5
      184 GETUPVAL                         R19 10
      185 GETTABLEKS                       R18 R19 K31 ["Root"]
      187 DUPTABLE                         R19 K34 [{"expanded", "contentId", "editThisContent"}]
      188 GETTABLEKS                       R20 R7 K2 ["expanded"]
      190 SETTABLEKS                       R20 R19 K2 ["expanded"]
      192 LOADK                            R20 K35 ["quick_connect"]
      193 SETTABLEKS                       R20 R19 K32 ["contentId"]
      195 SETTABLEKS                       R9 R19 K33 ["editThisContent"]
      197 DUPTABLE                         R20 K38 [{"Header", "Content"}]
      198 GETUPVAL                         R21 5
      199 GETUPVAL                         R23 10
      200 GETTABLEKS                       R22 R23 K36 ["Header"]
      202 DUPTABLE                         R23 K43 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment", "IsDisabled"}]
      203 MOVE                             R24 R1
      204 CALL                             R24 0 1
      205 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      207 LOADB                            R24 1
      208 SETTABLEKS                       R24 R23 K39 ["AutomaticHeight"]
      210 LOADK                            R24 K44 ["medium"]
      211 SETTABLEKS                       R24 R23 K40 ["IconSize"]
      213 LOADK                            R24 K45 ["center"]
      214 SETTABLEKS                       R24 R23 K41 ["VerticalAlignment"]
      216 GETTABLEKS                       R24 R0 K6 ["isDisabled"]
      218 SETTABLEKS                       R24 R23 K42 ["IsDisabled"]
      220 DUPTABLE                         R24 K47 [{"Title"}]
      221 GETUPVAL                         R25 5
      222 GETUPVAL                         R26 11
      223 DUPTABLE                         R27 K49 [{"tag", "Text", "LayoutOrder"}]
      224 LOADK                            R28 K50 ["auto-xy text-title-small bold text-align-x-left"]
      225 SETTABLEKS                       R28 R27 K23 ["tag"]
      227 GETUPVAL                         R28 12
      228 LOADK                            R30 K51 ["McpSetup"]
      229 LOADK                            R31 K52 ["QuickConnectTitle"]
      230 NAMECALL                         R28 R28 K53 ["getText"]
      232 CALL                             R28 3 1
      233 SETTABLEKS                       R28 R27 K48 ["Text"]
      235 MOVE                             R28 R1
      236 CALL                             R28 0 1
      237 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      239 CALL                             R25 2 1
      240 SETTABLEKS                       R25 R24 K46 ["Title"]
      242 CALL                             R21 3 1
      243 SETTABLEKS                       R21 R20 K36 ["Header"]
      245 GETUPVAL                         R21 5
      246 GETUPVAL                         R23 10
      247 GETTABLEKS                       R22 R23 K37 ["Content"]
      249 DUPTABLE                         R23 K56 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      250 LOADK                            R24 K57 ["col size-full-0 auto-y gap-small"]
      251 SETTABLEKS                       R24 R23 K23 ["tag"]
      253 MOVE                             R24 R1
      254 CALL                             R24 0 1
      255 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      257 LOADB                            R24 1
      258 SETTABLEKS                       R24 R23 K54 ["UseVisible"]
      260 LOADB                            R24 1
      261 SETTABLEKS                       R24 R23 K55 ["disableVerticalBar"]
      263 MOVE                             R24 R12
      264 CALL                             R21 3 1
      265 SETTABLEKS                       R21 R20 K37 ["Content"]
      267 CALL                             R17 3 1
      268 SETTABLEKS                       R17 R16 K29 ["Accordion"]
      270 CALL                             R13 3 -1
      271 RETURN                           R13 -1

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
