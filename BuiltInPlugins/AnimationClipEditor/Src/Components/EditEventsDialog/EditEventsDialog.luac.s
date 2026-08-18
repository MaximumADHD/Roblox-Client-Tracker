PROTO_0:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["OnSaved"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["state"]
        9 GETTABLEKS                       R2 R2 K3 ["CurrentEvents"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["props"]
       15 GETTABLEKS                       R1 R1 K4 ["OnClose"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["state"]
        7 GETTABLEKS                       R1 R1 K1 ["CurrentEvents"]
        9 CALL                             R0 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K0 ["state"]
       14 GETTABLEKS                       R0 R0 K1 ["CurrentEvents"]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K2 ["props"]
       19 GETTABLEKS                       R1 R1 K3 ["Tick"]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K4 ["addEvent"]
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 LOADK                            R5 K5 [""]
       27 LOADK                            R6 K5 [""]
       28 CALL                             R2 4 0
       29 GETUPVAL                         R2 2
       30 DUPTABLE                         R4 K6 [{"CurrentEvents"}]
       31 SETTABLEKS                       R0 R4 K1 ["CurrentEvents"]
       33 NAMECALL                         R2 R2 K7 ["setState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["state"]
        7 GETTABLEKS                       R3 R3 K1 ["CurrentEvents"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["state"]
       14 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K3 ["Tick"]
       21 GETTABLEKS                       R5 R2 K4 ["Data"]
       23 GETTABLE                         R4 R5 R3
       24 JUMPIFNOT                        R4 ; [+24]
       25 GETTABLEKS                       R6 R2 K4 ["Data"]
       27 GETTABLE                         R5 R6 R3
       28 GETTABLE                         R4 R5 R0
       29 JUMPIFNOT                        R4 ; [+19]
       30 GETTABLEKS                       R6 R2 K4 ["Data"]
       32 GETTABLE                         R5 R6 R3
       33 GETTABLE                         R4 R5 R0
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K5 ["removeEvent"]
       37 MOVE                             R6 R2
       38 MOVE                             R7 R3
       39 MOVE                             R8 R0
       40 CALL                             R5 3 0
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K6 ["addEvent"]
       44 MOVE                             R6 R2
       45 MOVE                             R7 R3
       46 MOVE                             R8 R1
       47 MOVE                             R9 R4
       48 CALL                             R5 4 0
       49 GETUPVAL                         R4 2
       50 DUPTABLE                         R6 K7 [{"CurrentEvents"}]
       51 SETTABLEKS                       R2 R6 K1 ["CurrentEvents"]
       53 NAMECALL                         R4 R4 K8 ["setState"]
       55 CALL                             R4 2 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["state"]
        7 GETTABLEKS                       R3 R3 K1 ["CurrentEvents"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["state"]
       14 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K3 ["Tick"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["setEventValue"]
       24 MOVE                             R5 R2
       25 MOVE                             R6 R3
       26 MOVE                             R7 R0
       27 MOVE                             R8 R1
       28 CALL                             R4 4 0
       29 GETUPVAL                         R4 2
       30 DUPTABLE                         R6 K5 [{"CurrentEvents"}]
       31 SETTABLEKS                       R2 R6 K1 ["CurrentEvents"]
       33 NAMECALL                         R4 R4 K6 ["setState"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["state"]
        7 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["state"]
       14 GETTABLEKS                       R1 R1 K1 ["CurrentEvents"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["props"]
       19 GETTABLEKS                       R2 R2 K3 ["Tick"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K4 ["removeEvent"]
       24 MOVE                             R4 R1
       25 MOVE                             R5 R2
       26 MOVE                             R6 R0
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 2
       29 DUPTABLE                         R5 K5 [{"CurrentEvents"}]
       30 SETTABLEKS                       R1 R5 K1 ["CurrentEvents"]
       32 NAMECALL                         R3 R3 K6 ["setState"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["state"]
        7 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["state"]
       14 GETTABLEKS                       R1 R1 K1 ["CurrentEvents"]
       16 GETIMPORT                        R2 K3 [pairs]
       18 GETTABLEKS                       R3 R1 K4 ["Data"]
       20 CALL                             R2 1 3
       21 FORGPREP_NEXT                    R2
       22 GETTABLE                         R7 R6 R0
       23 JUMPIFNOT                        R7 ; [+7]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K5 ["removeEvent"]
       27 MOVE                             R8 R1
       28 MOVE                             R9 R5
       29 MOVE                             R10 R0
       30 CALL                             R7 3 0
       31 FORGLOOP                         R2 2 ; [-10]
       33 GETUPVAL                         R2 2
       34 DUPTABLE                         R4 K6 [{"CurrentEvents"}]
       35 SETTABLEKS                       R1 R4 K1 ["CurrentEvents"]
       37 NAMECALL                         R2 R2 K7 ["setState"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["state"]
        7 GETTABLEKS                       R3 R3 K1 ["CurrentEvents"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["state"]
       14 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
       16 GETIMPORT                        R3 K3 [pairs]
       18 GETTABLEKS                       R4 R2 K4 ["Data"]
       20 CALL                             R3 1 3
       21 FORGPREP_NEXT                    R3
       22 GETTABLE                         R8 R7 R0
       23 JUMPIFNOT                        R8 ; [+16]
       24 GETTABLE                         R8 R7 R0
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K5 ["removeEvent"]
       28 MOVE                             R10 R2
       29 MOVE                             R11 R6
       30 MOVE                             R12 R0
       31 CALL                             R9 3 0
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K6 ["addEvent"]
       35 MOVE                             R10 R2
       36 MOVE                             R11 R6
       37 MOVE                             R12 R1
       38 MOVE                             R13 R8
       39 CALL                             R9 4 0
       40 FORGLOOP                         R3 2 ; [-19]
       42 GETUPVAL                         R3 2
       43 DUPTABLE                         R5 K7 [{"CurrentEvents"}]
       44 SETTABLEKS                       R2 R5 K1 ["CurrentEvents"]
       46 NAMECALL                         R3 R3 K8 ["setState"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"deleteAllName"}]
        2 SETTABLEKS                       R0 R3 K0 ["deleteAllName"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"deleteAllName"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["deleteAllName"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"renameAllNames"}]
        2 DUPTABLE                         R5 K4 [{"Name", "NewName"}]
        3 SETTABLEKS                       R0 R5 K2 ["Name"]
        5 SETTABLEKS                       R1 R5 K3 ["NewName"]
        7 SETTABLEKS                       R5 R4 K0 ["renameAllNames"]
        9 NAMECALL                         R2 R2 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"renameAllNames"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["renameAllNames"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["state"]
        5 GETTABLEKS                       R2 R2 K1 ["CurrentEvents"]
        7 GETIMPORT                        R3 K3 [pairs]
        9 GETTABLEKS                       R4 R2 K4 ["Data"]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETIMPORT                        R8 K3 [pairs]
       15 MOVE                             R9 R7
       16 CALL                             R8 1 3
       17 FORGPREP_NEXT                    R8
       18 LOADB                            R13 1
       19 SETTABLE                         R13 R1 R11
       20 FORGLOOP                         R8 2 ; [-3]
       22 FORGLOOP                         R3 2 ; [-10]
       24 GETTABLEKS                       R4 R2 K4 ["Data"]
       26 GETTABLE                         R3 R4 R0
       27 JUMPIFNOT                        R3 ; [+11]
       28 GETIMPORT                        R3 K3 [pairs]
       30 GETTABLEKS                       R6 R2 K4 ["Data"]
       32 GETTABLE                         R4 R6 R0
       33 CALL                             R3 1 3
       34 FORGPREP_NEXT                    R3
       35 LOADNIL                          R8
       36 SETTABLE                         R8 R1 R6
       37 FORGLOOP                         R3 2 ; [-3]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       42 GETTABLEKS                       R3 R3 K6 ["keys"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K9 [table.sort]
       48 MOVE                             R5 R3
       49 CALL                             R4 1 0
       50 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["Events"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K5 [{["CurrentEvents"], ["deleteAllName"] = , ["renameAllNames"] = }]
        5 SETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
        7 SETTABLEKS                       R3 R0 K6 ["state"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R0 K7 ["onButtonClicked"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R0 K8 ["onAddEvent"]
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R3 R0 K9 ["onRenameEvent"]
       27 NEWCLOSURE                       R3 P3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R3 R0 K10 ["onSetEventValue"]
       34 NEWCLOSURE                       R3 P4
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R3 R0 K11 ["onDeleteEvent"]
       41 NEWCLOSURE                       R3 P5
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 SETTABLEKS                       R3 R0 K12 ["onDeleteAllEvents"]
       48 NEWCLOSURE                       R3 P6
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 SETTABLEKS                       R3 R0 K13 ["onRenameAllEvents"]
       55 NEWCLOSURE                       R3 P7
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R0 K14 ["showDeleteAllPrompt"]
       59 NEWCLOSURE                       R3 P8
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 SETTABLEKS                       R3 R0 K15 ["hideDeleteAllPrompt"]
       64 NEWCLOSURE                       R3 P9
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R3 R0 K16 ["showRenameAllPrompt"]
       68 NEWCLOSURE                       R3 P10
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U3
       71 SETTABLEKS                       R3 R0 K17 ["hideRenameAllPrompt"]
       73 NEWCLOSURE                       R3 P11
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U4
       76 SETTABLEKS                       R3 R0 K18 ["getUnusedEvents"]
       78 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 LOADK                            R6 K1 ["TextLabel"]
        4 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 0, ["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R8 K15 [UDim2.new]
        7 LOADN                            R9 0
        8 LOADN                            R10 220
        9 LOADN                            R11 0
       10 LOADN                            R12 22
       11 CALL                             R8 4 1
       12 SETTABLEKS                       R8 R7 K4 ["Size"]
       14 SETTABLEKS                       R2 R7 K5 ["Text"]
       16 MOVE                             R8 R3
       17 JUMPIF                           R8 ; [+4]
       18 GETTABLEKS                       R8 R1 K16 ["dialogTheme"]
       20 GETTABLEKS                       R8 R8 K17 ["textColor"]
       22 SETTABLEKS                       R8 R7 K6 ["TextColor3"]
       24 GETTABLEKS                       R8 R1 K18 ["font"]
       26 SETTABLEKS                       R8 R7 K7 ["Font"]
       28 GETTABLEKS                       R8 R1 K16 ["dialogTheme"]
       30 GETTABLEKS                       R8 R8 K19 ["textSize"]
       32 SETTABLEKS                       R8 R7 K8 ["TextSize"]
       34 GETIMPORT                        R8 K22 [Enum.TextXAlignment.Left]
       36 SETTABLEKS                       R8 R7 K9 ["TextXAlignment"]
       38 DUPTABLE                         R8 K24 [{"Padding"}]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 LOADK                            R10 K25 ["UIPadding"]
       43 DUPTABLE                         R11 K28 [{"PaddingLeft", "PaddingRight"}]
       44 GETIMPORT                        R12 K30 [UDim.new]
       46 LOADN                            R13 0
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADN                            R14 8
       49 JUMP                             ; [+1]
       50 LOADN                            R14 20
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K26 ["PaddingLeft"]
       54 GETIMPORT                        R12 K30 [UDim.new]
       56 LOADN                            R13 0
       57 JUMPIFNOT                        R4 ; [+2]
       58 LOADN                            R14 20
       59 JUMP                             ; [+1]
       60 LOADN                            R14 8
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K27 ["PaddingRight"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K23 ["Padding"]
       67 CALL                             R5 3 -1
       68 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K6 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
        5 GETIMPORT                        R6 K9 [UDim2.new]
        7 LOADN                            R7 0
        8 LOADN                            R8 440
        9 LOADN                            R9 0
       10 LOADN                            R10 22
       11 CALL                             R6 4 1
       12 SETTABLEKS                       R6 R5 K2 ["Size"]
       14 GETTABLEKS                       R6 R0 K10 ["layout"]
       16 NAMECALL                         R6 R6 K11 ["getNextOrder"]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R9 R1
       24 LOADK                            R12 K12 ["Title"]
       25 LOADK                            R13 K13 ["EventName"]
       26 NAMECALL                         R10 R2 K14 ["getText"]
       28 CALL                             R10 3 -1
       29 NAMECALL                         R7 R0 K15 ["makeText"]
       31 CALL                             R7 -1 1
       32 SETTABLEN                        R7 R6 1
       33 MOVE                             R9 R1
       34 LOADK                            R12 K12 ["Title"]
       35 LOADK                            R13 K16 ["Parameter"]
       36 NAMECALL                         R10 R2 K14 ["getText"]
       38 CALL                             R10 3 1
       39 LOADNIL                          R11
       40 LOADB                            R12 1
       41 NAMECALL                         R7 R0 K15 ["makeText"]
       43 CALL                             R7 5 1
       44 SETTABLEN                        R7 R6 2
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["onRenameEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0
        9 JUMPIFEQ                         R0 R1 ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["showRenameAllPrompt"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["onSetEventValue"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R0 K1 ["Text"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["layout"]
        2 NAMECALL                         R5 R5 K1 ["getNextOrder"]
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R6 R1 K2 ["trackTheme"]
        7 GETTABLEKS                       R6 R6 K3 ["shadedBackgroundColor"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K4 ["createElement"]
       12 LOADK                            R8 K5 ["Frame"]
       13 DUPTABLE                         R9 K10 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       14 GETIMPORT                        R10 K13 [UDim2.new]
       16 LOADN                            R11 0
       17 LOADN                            R12 440
       18 LOADN                            R13 0
       19 LOADN                            R14 22
       20 CALL                             R10 4 1
       21 SETTABLEKS                       R10 R9 K6 ["Size"]
       23 SETTABLEKS                       R5 R9 K9 ["LayoutOrder"]
       25 NEWTABLE                         R10 0 2
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K4 ["createElement"]
       30 GETUPVAL                         R12 1
       31 DUPTABLE                         R13 K21 [{"Size", "Name", "PaddingLeft", "PaddingRight", "OnDeleteEvent", "OnDeleteAllEvents", "UnusedEvents", "OnRenameEvent"}]
       32 GETIMPORT                        R14 K13 [UDim2.new]
       34 LOADN                            R15 0
       35 LOADN                            R16 220
       36 LOADN                            R17 0
       37 LOADN                            R18 22
       38 CALL                             R14 4 1
       39 SETTABLEKS                       R14 R13 K6 ["Size"]
       41 SETTABLEKS                       R2 R13 K14 ["Name"]
       43 GETIMPORT                        R14 K23 [UDim.new]
       45 LOADN                            R15 0
       46 LOADN                            R16 20
       47 CALL                             R14 2 1
       48 SETTABLEKS                       R14 R13 K15 ["PaddingLeft"]
       50 GETIMPORT                        R14 K23 [UDim.new]
       52 LOADN                            R15 0
       53 LOADN                            R16 8
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K16 ["PaddingRight"]
       57 GETTABLEKS                       R14 R0 K24 ["onDeleteEvent"]
       59 SETTABLEKS                       R14 R13 K17 ["OnDeleteEvent"]
       61 GETTABLEKS                       R14 R0 K25 ["showDeleteAllPrompt"]
       63 SETTABLEKS                       R14 R13 K18 ["OnDeleteAllEvents"]
       65 SETTABLEKS                       R4 R13 K19 ["UnusedEvents"]
       67 NEWCLOSURE                       R14 P0
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R14 R13 K20 ["OnRenameEvent"]
       71 CALL                             R11 2 1
       72 SETTABLEN                        R11 R10 1
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K4 ["createElement"]
       76 LOADK                            R12 K5 ["Frame"]
       77 DUPTABLE                         R13 K28 [{"Size", "BackgroundColor3", "BorderColor3"}]
       78 GETIMPORT                        R14 K13 [UDim2.new]
       80 LOADN                            R15 0
       81 LOADN                            R16 220
       82 LOADN                            R17 0
       83 LOADN                            R18 22
       84 CALL                             R14 4 1
       85 SETTABLEKS                       R14 R13 K6 ["Size"]
       87 SETTABLEKS                       R6 R13 K26 ["BackgroundColor3"]
       89 GETTABLEKS                       R14 R1 K29 ["borderColor"]
       91 SETTABLEKS                       R14 R13 K27 ["BorderColor3"]
       93 DUPTABLE                         R14 K32 [{"Padding", "TextBox"}]
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K4 ["createElement"]
       97 LOADK                            R16 K33 ["UIPadding"]
       98 DUPTABLE                         R17 K36 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       99 GETIMPORT                        R18 K23 [UDim.new]
      101 LOADN                            R19 0
      102 LOADN                            R20 8
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K15 ["PaddingLeft"]
      106 GETIMPORT                        R18 K23 [UDim.new]
      108 LOADN                            R19 0
      109 LOADN                            R20 20
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K16 ["PaddingRight"]
      113 GETIMPORT                        R18 K23 [UDim.new]
      115 LOADN                            R19 0
      116 LOADN                            R20 2
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K34 ["PaddingTop"]
      120 GETIMPORT                        R18 K23 [UDim.new]
      122 LOADN                            R19 0
      123 LOADN                            R20 2
      124 CALL                             R18 2 1
      125 SETTABLEKS                       R18 R17 K35 ["PaddingBottom"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K30 ["Padding"]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K4 ["createElement"]
      133 GETUPVAL                         R16 2
      134 DUPTABLE                         R17 K42 [{["Size"], ["TextXAlignment"], ["Text"], ["ClearTextOnFocus"] = False, ["FocusChanged"]}]
      135 GETIMPORT                        R18 K13 [UDim2.new]
      137 LOADN                            R19 1
      138 LOADN                            R20 0
      139 LOADN                            R21 1
      140 LOADN                            R22 0
      141 CALL                             R18 4 1
      142 SETTABLEKS                       R18 R17 K6 ["Size"]
      144 GETIMPORT                        R18 K45 [Enum.TextXAlignment.Left]
      146 SETTABLEKS                       R18 R17 K37 ["TextXAlignment"]
      148 SETTABLEKS                       R3 R17 K38 ["Text"]
      150 NEWCLOSURE                       R18 P1
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R2
      153 SETTABLEKS                       R18 R17 K41 ["FocusChanged"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K31 ["TextBox"]
      158 CALL                             R11 3 1
      159 SETTABLEN                        R11 R10 2
      160 CALL                             R7 3 -1
      161 RETURN                           R7 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K6 [{"Size", "BorderColor3", "BackgroundColor3", "LayoutOrder"}]
        5 GETIMPORT                        R6 K9 [UDim2.new]
        7 LOADN                            R7 0
        8 LOADN                            R8 440
        9 LOADN                            R9 0
       10 LOADN                            R10 22
       11 CALL                             R6 4 1
       12 SETTABLEKS                       R6 R5 K2 ["Size"]
       14 GETTABLEKS                       R6 R1 K10 ["borderColor"]
       16 SETTABLEKS                       R6 R5 K3 ["BorderColor3"]
       18 GETTABLEKS                       R6 R1 K11 ["backgroundColor"]
       20 SETTABLEKS                       R6 R5 K4 ["BackgroundColor3"]
       22 GETTABLEKS                       R6 R0 K12 ["layout"]
       24 NAMECALL                         R6 R6 K13 ["getNextOrder"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       29 DUPTABLE                         R6 K15 [{"AddEventEntry"}]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["createElement"]
       33 GETUPVAL                         R8 1
       34 DUPTABLE                         R9 K19 [{"Size", "PaddingLeft", "PaddingRight", "OnAddEvent"}]
       35 GETIMPORT                        R10 K9 [UDim2.new]
       37 LOADN                            R11 0
       38 LOADN                            R12 220
       39 LOADN                            R13 0
       40 LOADN                            R14 22
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K2 ["Size"]
       44 GETIMPORT                        R10 K21 [UDim.new]
       46 LOADN                            R11 0
       47 LOADN                            R12 20
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K16 ["PaddingLeft"]
       51 GETIMPORT                        R10 K21 [UDim.new]
       53 LOADN                            R11 0
       54 LOADN                            R12 8
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K17 ["PaddingRight"]
       58 GETTABLEKS                       R10 R0 K22 ["onAddEvent"]
       60 SETTABLEKS                       R10 R9 K18 ["OnAddEvent"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K14 ["AddEventEntry"]
       65 CALL                             R3 3 -1
       66 RETURN                           R3 -1

PROTO_20:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 JUMPIFLT                         R0 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R3 K2 ["Tick"]
        6 GETTABLEKS                       R6 R4 K3 ["CurrentEvents"]
        8 LOADN                            R7 66
        9 JUMPIFNOT                        R6 ; [+48]
       10 GETTABLEKS                       R8 R6 K4 ["Data"]
       12 JUMPIFNOT                        R8 ; [+45]
       13 GETTABLEKS                       R9 R6 K4 ["Data"]
       15 GETTABLE                         R8 R9 R5
       16 JUMPIFNOT                        R8 ; [+41]
       17 GETTABLEKS                       R8 R0 K5 ["getUnusedEvents"]
       19 MOVE                             R9 R5
       20 CALL                             R8 1 1
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K6 ["Dictionary"]
       24 GETTABLEKS                       R9 R9 K7 ["keys"]
       26 GETTABLEKS                       R11 R6 K4 ["Data"]
       28 GETTABLE                         R10 R11 R5
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K10 [table.sort]
       32 MOVE                             R11 R9
       33 DUPCLOSURE                       R12 K11 [PROTO_20]
       34 CALL                             R10 2 0
       35 GETIMPORT                        R10 K13 [ipairs]
       37 MOVE                             R11 R9
       38 CALL                             R10 1 3
       39 FORGPREP_INEXT                   R10
       40 GETTABLEKS                       R17 R6 K4 ["Data"]
       42 GETTABLE                         R16 R17 R5
       43 GETTABLE                         R15 R16 R14
       44 LOADK                            R17 K14 ["Event_"]
       45 MOVE                             R18 R14
       46 CONCAT                           R16 R17 R18
       47 MOVE                             R19 R1
       48 MOVE                             R20 R14
       49 MOVE                             R21 R15
       50 MOVE                             R22 R8
       51 NAMECALL                         R17 R0 K15 ["addEventRow"]
       53 CALL                             R17 5 1
       54 SETTABLE                         R17 R2 R16
       55 ADDK                             R7 R7 K16 [22]
       56 FORGLOOP                         R10 2 [inext] ; [-17]
       58 RETURN                           R7 1

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["onDeleteAllEvents"]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["hideDeleteAllPrompt"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R3 K1 ["deleteAllName"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["createElement"]
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R7 K7 [{"Buttons", "PromptText", "OnButtonClicked", "OnClose"}]
        9 NEWTABLE                         R8 0 2
       11 DUPTABLE                         R9 K13 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       12 LOADK                            R12 K14 ["Dialog"]
       13 LOADK                            R13 K15 ["No"]
       14 NAMECALL                         R10 R2 K16 ["getText"]
       16 CALL                             R10 3 1
       17 SETTABLEKS                       R10 R9 K10 ["Text"]
       19 DUPTABLE                         R10 K19 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       20 LOADK                            R13 K14 ["Dialog"]
       21 LOADK                            R14 K20 ["Yes"]
       22 NAMECALL                         R11 R2 K16 ["getText"]
       24 CALL                             R11 3 1
       25 SETTABLEKS                       R11 R10 K10 ["Text"]
       27 SETLIST                          R8 R9 2 [1]
       29 SETTABLEKS                       R8 R7 K3 ["Buttons"]
       31 LOADK                            R10 K14 ["Dialog"]
       32 LOADK                            R11 K21 ["DeleteAllPrompt_Migrated"]
       33 DUPTABLE                         R12 K23 [{"name"}]
       34 SETTABLEKS                       R4 R12 K22 ["name"]
       36 NAMECALL                         R8 R2 K16 ["getText"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K4 ["PromptText"]
       41 NEWCLOSURE                       R8 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R8 R7 K5 ["OnButtonClicked"]
       46 GETTABLEKS                       R8 R0 K24 ["hideDeleteAllPrompt"]
       48 SETTABLEKS                       R8 R7 K6 ["OnClose"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["onRenameAllEvents"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 0
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["onRenameEvent"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["hideRenameAllPrompt"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R3 K1 ["renameAllNames"]
        4 GETTABLEKS                       R4 R4 K2 ["Name"]
        6 GETTABLEKS                       R5 R3 K1 ["renameAllNames"]
        8 GETTABLEKS                       R5 R5 K3 ["NewName"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K9 [{"Buttons", "PromptText", "OnButtonClicked", "OnClose"}]
       15 NEWTABLE                         R9 0 2
       17 DUPTABLE                         R10 K15 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       18 LOADK                            R13 K16 ["Dialog"]
       19 LOADK                            R14 K17 ["ChangeThis"]
       20 NAMECALL                         R11 R2 K18 ["getText"]
       22 CALL                             R11 3 1
       23 SETTABLEKS                       R11 R10 K12 ["Text"]
       25 DUPTABLE                         R11 K20 [{["Key"] = True, ["Text"], ["Style"] = "Round"}]
       26 LOADK                            R14 K16 ["Dialog"]
       27 LOADK                            R15 K21 ["ChangeAll"]
       28 NAMECALL                         R12 R2 K18 ["getText"]
       30 CALL                             R12 3 1
       31 SETTABLEKS                       R12 R11 K12 ["Text"]
       33 SETLIST                          R9 R10 2 [1]
       35 SETTABLEKS                       R9 R8 K5 ["Buttons"]
       37 LOADK                            R11 K16 ["Dialog"]
       38 LOADK                            R12 K22 ["RenameAllPrompt_Migrated"]
       39 DUPTABLE                         R13 K25 [{"name", "newName"}]
       40 SETTABLEKS                       R4 R13 K23 ["name"]
       42 SETTABLEKS                       R5 R13 K24 ["newName"]
       44 NAMECALL                         R9 R2 K18 ["getText"]
       46 CALL                             R9 4 1
       47 SETTABLEKS                       R9 R8 K6 ["PromptText"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R9 R8 K7 ["OnButtonClicked"]
       55 GETTABLEKS                       R9 R0 K26 ["hideRenameAllPrompt"]
       57 SETTABLEKS                       R9 R8 K8 ["OnClose"]
       59 CALL                             R6 2 -1
       60 RETURN                           R6 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R0 K4 ["layout"]
       14 GETTABLEKS                       R3 R0 K0 ["props"]
       16 GETTABLEKS                       R4 R0 K5 ["state"]
       18 GETTABLEKS                       R5 R1 K6 ["dialogTheme"]
       20 GETTABLEKS                       R7 R4 K7 ["deleteAllName"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 GETTABLEKS                       R8 R4 K8 ["renameAllNames"]
       28 JUMPIFNOTEQKNIL                  R8 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 NEWTABLE                         R8 0 2
       34 DUPTABLE                         R9 K14 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       35 LOADK                            R12 K15 ["Dialog"]
       36 LOADK                            R13 K16 ["Cancel"]
       37 NAMECALL                         R10 R2 K17 ["getText"]
       39 CALL                             R10 3 1
       40 SETTABLEKS                       R10 R9 K11 ["Text"]
       42 DUPTABLE                         R10 K20 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       43 LOADK                            R13 K15 ["Dialog"]
       44 LOADK                            R14 K21 ["Save"]
       45 NAMECALL                         R11 R2 K17 ["getText"]
       47 CALL                             R11 3 1
       48 SETTABLEKS                       R11 R10 K11 ["Text"]
       50 SETLIST                          R8 R9 2 [1]
       52 DUPTABLE                         R9 K23 [{"Layout"}]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K24 ["createElement"]
       56 LOADK                            R11 K25 ["UITableLayout"]
       57 DUPTABLE                         R12 K28 [{["SortOrder"], ["FillEmptySpaceColumns"] = True}]
       58 GETIMPORT                        R13 K31 [Enum.SortOrder.LayoutOrder]
       60 SETTABLEKS                       R13 R12 K26 ["SortOrder"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K22 ["Layout"]
       65 MOVE                             R12 R1
       66 MOVE                             R13 R2
       67 NAMECALL                         R10 R0 K32 ["addTitleRow"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K33 ["TitleRow"]
       72 MOVE                             R12 R1
       73 MOVE                             R13 R9
       74 NAMECALL                         R10 R0 K34 ["renderEvents"]
       76 CALL                             R10 3 1
       77 MOVE                             R13 R1
       78 MOVE                             R14 R2
       79 NAMECALL                         R11 R0 K35 ["addNewEventRow"]
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R9 K36 ["AddNew"]
       84 JUMPIFNOT                        R6 ; [+8]
       85 MOVE                             R13 R1
       86 MOVE                             R14 R2
       87 NAMECALL                         R11 R0 K37 ["renderDeleteAllPrompt"]
       89 CALL                             R11 3 1
       90 SETTABLEKS                       R11 R9 K38 ["DeleteAllPrompt"]
       92 JUMP                             ; [+8]
       93 JUMPIFNOT                        R7 ; [+7]
       94 MOVE                             R13 R1
       95 MOVE                             R14 R2
       96 NAMECALL                         R11 R0 K39 ["renderRenameAllPrompt"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R9 K40 ["RenameAllPrompt"]
      101 GETIMPORT                        R11 K42 [Vector2.new]
      103 LOADN                            R12 460
      104 FASTCALL2K                       MATH_MAX R10 K43 ; [+5]
      106 MOVE                             R15 R10
      107 LOADK                            R16 K43 [110]
      108 GETIMPORT                        R14 K46 [math.max]
      110 CALL                             R14 2 1
      111 GETUPVAL                         R15 2
      112 ADD                              R13 R14 R15
      113 CALL                             R11 2 1
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R12 R12 K24 ["createElement"]
      117 GETUPVAL                         R13 3
      118 DUPTABLE                         R14 K60 [{["Size"], ["MinContentSize"], ["TextSize"], ["Resizable"] = True, ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["BorderPadding"] = 10, ["ButtonPadding"], ["ButtonHeight"], ["ButtonWidth"], ["Title"]}]
      119 SETTABLEKS                       R11 R14 K47 ["Size"]
      121 SETTABLEKS                       R11 R14 K48 ["MinContentSize"]
      123 GETTABLEKS                       R15 R5 K61 ["textSize"]
      125 SETTABLEKS                       R15 R14 K49 ["TextSize"]
      127 SETTABLEKS                       R8 R14 K51 ["Buttons"]
      129 GETTABLEKS                       R15 R0 K62 ["onButtonClicked"]
      131 SETTABLEKS                       R15 R14 K52 ["OnButtonPressed"]
      133 GETTABLEKS                       R15 R3 K53 ["OnClose"]
      135 SETTABLEKS                       R15 R14 K53 ["OnClose"]
      137 GETUPVAL                         R15 4
      138 GETTABLEKS                       R15 R15 K63 ["PROMPT_BUTTON_PADDING"]
      140 SETTABLEKS                       R15 R14 K56 ["ButtonPadding"]
      142 GETUPVAL                         R15 4
      143 GETTABLEKS                       R15 R15 K64 ["PROMPT_BUTTON_SIZE"]
      145 GETTABLEKS                       R15 R15 K65 ["Y"]
      147 SETTABLEKS                       R15 R14 K57 ["ButtonHeight"]
      149 GETUPVAL                         R15 4
      150 GETTABLEKS                       R15 R15 K64 ["PROMPT_BUTTON_SIZE"]
      152 GETTABLEKS                       R15 R15 K66 ["X"]
      154 SETTABLEKS                       R15 R14 K58 ["ButtonWidth"]
      156 LOADK                            R17 K59 ["Title"]
      157 LOADK                            R18 K67 ["EditEvents"]
      158 NAMECALL                         R15 R2 K17 ["getText"]
      160 CALL                             R15 3 1
      161 SETTABLEKS                       R15 R14 K59 ["Title"]
      163 DUPTABLE                         R15 K69 [{"Container"}]
      164 GETUPVAL                         R16 1
      165 GETTABLEKS                       R16 R16 K24 ["createElement"]
      167 LOADK                            R17 K70 ["ScrollingFrame"]
      168 DUPTABLE                         R18 K77 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"], ["ScrollBarThickness"] = 8, ["CanvasSize"]}]
      169 GETTABLEKS                       R19 R1 K78 ["backgroundColor"]
      171 SETTABLEKS                       R19 R18 K73 ["BackgroundColor3"]
      173 GETIMPORT                        R19 K80 [UDim2.new]
      175 LOADN                            R20 1
      176 LOADN                            R21 0
      177 LOADN                            R22 1
      178 LOADN                            R23 -10
      179 CALL                             R19 4 1
      180 SETTABLEKS                       R19 R18 K47 ["Size"]
      182 GETIMPORT                        R19 K80 [UDim2.new]
      184 LOADN                            R20 0
      185 LOADN                            R21 0
      186 LOADN                            R22 0
      187 MOVE                             R23 R10
      188 CALL                             R19 4 1
      189 SETTABLEKS                       R19 R18 K76 ["CanvasSize"]
      191 MOVE                             R19 R9
      192 CALL                             R16 3 1
      193 SETTABLEKS                       R16 R15 K68 ["Container"]
      195 CALL                             R12 3 -1
      196 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K10 ["PROMPT_BUTTON_SIZE"]
       18 GETTABLEKS                       R3 R3 K11 ["Y"]
       20 ADDK                             R2 R3 K9 [30]
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K12 ["Packages"]
       25 GETTABLEKS                       R4 R4 K13 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Packages"]
       32 GETTABLEKS                       R5 R5 K14 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Src"]
       39 GETTABLEKS                       R6 R6 K7 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["LayoutOrderIterator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K7 ["Util"]
       50 GETTABLEKS                       R7 R7 K16 ["AnimationData"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K7 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["deepCopy"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["LuaFlags"]
       66 GETTABLEKS                       R9 R9 K19 ["GetFFlagACERoactCompatPrepFixes"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Packages"]
       73 GETTABLEKS                       R10 R10 K20 ["Framework"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K21 ["UI"]
       78 GETTABLEKS                       R11 R10 K22 ["StyledDialog"]
       80 GETTABLEKS                       R12 R9 K23 ["ContextServices"]
       82 GETTABLEKS                       R13 R12 K24 ["withContext"]
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R15 R0 K6 ["Src"]
       88 GETTABLEKS                       R15 R15 K25 ["Components"]
       90 GETTABLEKS                       R15 R15 K26 ["TextBox"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R16 R0 K6 ["Src"]
       97 GETTABLEKS                       R16 R16 K25 ["Components"]
       99 GETTABLEKS                       R16 R16 K27 ["EditEventsDialog"]
      101 GETTABLEKS                       R16 R16 K28 ["EventNameEntry"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K6 ["Src"]
      108 GETTABLEKS                       R17 R17 K25 ["Components"]
      110 GETTABLEKS                       R17 R17 K27 ["EditEventsDialog"]
      112 GETTABLEKS                       R17 R17 K29 ["AddEventEntry"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K6 ["Src"]
      119 GETTABLEKS                       R18 R18 K25 ["Components"]
      121 GETTABLEKS                       R18 R18 K27 ["EditEventsDialog"]
      123 GETTABLEKS                       R18 R18 K30 ["FocusedPrompt"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R3 K31 ["PureComponent"]
      128 LOADK                            R20 K27 ["EditEventsDialog"]
      129 NAMECALL                         R18 R18 K32 ["extend"]
      131 CALL                             R18 2 1
      132 DUPCLOSURE                       R19 K33 [PROTO_12]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R19 R18 K34 ["init"]
      140 DUPCLOSURE                       R19 K35 [PROTO_13]
      141 SETTABLEKS                       R19 R18 K36 ["didMount"]
      143 DUPCLOSURE                       R19 K37 [PROTO_14]
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R19 R18 K38 ["makeText"]
      147 DUPCLOSURE                       R19 K39 [PROTO_15]
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R19 R18 K40 ["addTitleRow"]
      151 DUPCLOSURE                       R19 K41 [PROTO_18]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R19 R18 K42 ["addEventRow"]
      157 DUPCLOSURE                       R19 K43 [PROTO_19]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R16
      160 SETTABLEKS                       R19 R18 K44 ["addNewEventRow"]
      162 DUPCLOSURE                       R19 K45 [PROTO_21]
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R19 R18 K46 ["renderEvents"]
      166 DUPCLOSURE                       R19 K47 [PROTO_23]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R17
      169 SETTABLEKS                       R19 R18 K48 ["renderDeleteAllPrompt"]
      171 DUPCLOSURE                       R19 K49 [PROTO_25]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R17
      174 SETTABLEKS                       R19 R18 K50 ["renderRenameAllPrompt"]
      176 DUPCLOSURE                       R19 K51 [PROTO_26]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R1
      182 SETTABLEKS                       R19 R18 K52 ["render"]
      184 MOVE                             R19 R13
      185 DUPTABLE                         R20 K56 [{"Stylizer", "Localization", "Mouse"}]
      186 GETTABLEKS                       R21 R12 K53 ["Stylizer"]
      188 SETTABLEKS                       R21 R20 K53 ["Stylizer"]
      190 GETTABLEKS                       R21 R12 K54 ["Localization"]
      192 SETTABLEKS                       R21 R20 K54 ["Localization"]
      194 GETTABLEKS                       R21 R12 K55 ["Mouse"]
      196 SETTABLEKS                       R21 R20 K55 ["Mouse"]
      198 CALL                             R19 1 1
      199 MOVE                             R20 R18
      200 CALL                             R19 1 1
      201 MOVE                             R18 R19
      202 RETURN                           R18 1
