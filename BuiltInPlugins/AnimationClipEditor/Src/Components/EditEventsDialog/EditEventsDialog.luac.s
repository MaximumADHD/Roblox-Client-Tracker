PROTO_0:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["OnSaved"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["state"]
        9 GETTABLEKS                       R2 R3 K3 ["CurrentEvents"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["props"]
       15 GETTABLEKS                       R1 R2 K4 ["OnClose"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["CurrentEvents"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["Tick"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["addEvent"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 LOADK                            R5 K5 [""]
       16 LOADK                            R6 K5 [""]
       17 CALL                             R2 4 0
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K6 [{"CurrentEvents"}]
       20 SETTABLEKS                       R0 R4 K1 ["CurrentEvents"]
       22 NAMECALL                         R2 R2 K7 ["setState"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["props"]
        8 GETTABLEKS                       R3 R4 K3 ["Tick"]
       10 GETTABLEKS                       R5 R2 K4 ["Data"]
       12 GETTABLE                         R4 R5 R3
       13 JUMPIFNOT                        R4 ; [+24]
       14 GETTABLEKS                       R6 R2 K4 ["Data"]
       16 GETTABLE                         R5 R6 R3
       17 GETTABLE                         R4 R5 R0
       18 JUMPIFNOT                        R4 ; [+19]
       19 GETTABLEKS                       R6 R2 K4 ["Data"]
       21 GETTABLE                         R5 R6 R3
       22 GETTABLE                         R4 R5 R0
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K5 ["removeEvent"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 MOVE                             R8 R0
       29 CALL                             R5 3 0
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K6 ["addEvent"]
       33 MOVE                             R6 R2
       34 MOVE                             R7 R3
       35 MOVE                             R8 R1
       36 MOVE                             R9 R4
       37 CALL                             R5 4 0
       38 GETUPVAL                         R4 0
       39 DUPTABLE                         R6 K7 [{"CurrentEvents"}]
       40 SETTABLEKS                       R2 R6 K1 ["CurrentEvents"]
       42 NAMECALL                         R4 R4 K8 ["setState"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["props"]
        8 GETTABLEKS                       R3 R4 K3 ["Tick"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K4 ["setEventValue"]
       13 MOVE                             R5 R2
       14 MOVE                             R6 R3
       15 MOVE                             R7 R0
       16 MOVE                             R8 R1
       17 CALL                             R4 4 0
       18 GETUPVAL                         R4 0
       19 DUPTABLE                         R6 K5 [{"CurrentEvents"}]
       20 SETTABLEKS                       R2 R6 K1 ["CurrentEvents"]
       22 NAMECALL                         R4 R4 K6 ["setState"]
       24 CALL                             R4 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["CurrentEvents"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["Tick"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["removeEvent"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 MOVE                             R6 R0
       16 CALL                             R3 3 0
       17 GETUPVAL                         R3 0
       18 DUPTABLE                         R5 K5 [{"CurrentEvents"}]
       19 SETTABLEKS                       R1 R5 K1 ["CurrentEvents"]
       21 NAMECALL                         R3 R3 K6 ["setState"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["CurrentEvents"]
        5 GETIMPORT                        R2 K3 [pairs]
        7 GETTABLEKS                       R3 R1 K4 ["Data"]
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETTABLE                         R7 R6 R0
       12 JUMPIFNOT                        R7 ; [+7]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["removeEvent"]
       16 MOVE                             R8 R1
       17 MOVE                             R9 R5
       18 MOVE                             R10 R0
       19 CALL                             R7 3 0
       20 FORGLOOP                         R2 2 ; [-10]
       22 GETUPVAL                         R2 0
       23 DUPTABLE                         R4 K6 [{"CurrentEvents"}]
       24 SETTABLEKS                       R1 R4 K1 ["CurrentEvents"]
       26 NAMECALL                         R2 R2 K7 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
        5 GETIMPORT                        R3 K3 [pairs]
        7 GETTABLEKS                       R4 R2 K4 ["Data"]
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETTABLE                         R8 R7 R0
       12 JUMPIFNOT                        R8 ; [+16]
       13 GETTABLE                         R8 R7 R0
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K5 ["removeEvent"]
       17 MOVE                             R10 R2
       18 MOVE                             R11 R6
       19 MOVE                             R12 R0
       20 CALL                             R9 3 0
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K6 ["addEvent"]
       24 MOVE                             R10 R2
       25 MOVE                             R11 R6
       26 MOVE                             R12 R1
       27 MOVE                             R13 R8
       28 CALL                             R9 4 0
       29 FORGLOOP                         R3 2 ; [-19]
       31 GETUPVAL                         R3 0
       32 DUPTABLE                         R5 K7 [{"CurrentEvents"}]
       33 SETTABLEKS                       R2 R5 K1 ["CurrentEvents"]
       35 NAMECALL                         R3 R3 K8 ["setState"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0

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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["renameAllNames"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["state"]
        5 GETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
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
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       42 GETTABLEKS                       R3 R4 K6 ["keys"]
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
        4 DUPTABLE                         R3 K4 [{"CurrentEvents", "deleteAllName", "renameAllNames"}]
        5 SETTABLEKS                       R2 R3 K1 ["CurrentEvents"]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K2 ["deleteAllName"]
       10 LOADNIL                          R4
       11 SETTABLEKS                       R4 R3 K3 ["renameAllNames"]
       13 SETTABLEKS                       R3 R0 K5 ["state"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R3 R0 K6 ["onButtonClicked"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R3 R0 K7 ["onAddEvent"]
       24 NEWCLOSURE                       R3 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 SETTABLEKS                       R3 R0 K8 ["onRenameEvent"]
       29 NEWCLOSURE                       R3 P3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 SETTABLEKS                       R3 R0 K9 ["onSetEventValue"]
       34 NEWCLOSURE                       R3 P4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R3 R0 K10 ["onDeleteEvent"]
       39 NEWCLOSURE                       R3 P5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U1
       42 SETTABLEKS                       R3 R0 K11 ["onDeleteAllEvents"]
       44 NEWCLOSURE                       R3 P6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U1
       47 SETTABLEKS                       R3 R0 K12 ["onRenameAllEvents"]
       49 NEWCLOSURE                       R3 P7
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R3 R0 K13 ["showDeleteAllPrompt"]
       53 NEWCLOSURE                       R3 P8
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R3 R0 K14 ["hideDeleteAllPrompt"]
       58 NEWCLOSURE                       R3 P9
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R3 R0 K15 ["showRenameAllPrompt"]
       62 NEWCLOSURE                       R3 P10
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 SETTABLEKS                       R3 R0 K16 ["hideRenameAllPrompt"]
       67 NEWCLOSURE                       R3 P11
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U3
       70 SETTABLEKS                       R3 R0 K17 ["getUnusedEvents"]
       72 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["createElement"]
        3 LOADK                            R6 K1 ["TextLabel"]
        4 DUPTABLE                         R7 K10 [{"LayoutOrder", "Size", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "BackgroundTransparency"}]
        5 LOADN                            R8 0
        6 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
        8 GETIMPORT                        R8 K13 [UDim2.new]
       10 LOADN                            R9 0
       11 LOADN                            R10 220
       12 LOADN                            R11 0
       13 LOADN                            R12 22
       14 CALL                             R8 4 1
       15 SETTABLEKS                       R8 R7 K3 ["Size"]
       17 SETTABLEKS                       R2 R7 K4 ["Text"]
       19 MOVE                             R8 R3
       20 JUMPIF                           R8 ; [+4]
       21 GETTABLEKS                       R9 R1 K14 ["dialogTheme"]
       23 GETTABLEKS                       R8 R9 K15 ["textColor"]
       25 SETTABLEKS                       R8 R7 K5 ["TextColor3"]
       27 GETTABLEKS                       R8 R1 K16 ["font"]
       29 SETTABLEKS                       R8 R7 K6 ["Font"]
       31 GETTABLEKS                       R9 R1 K14 ["dialogTheme"]
       33 GETTABLEKS                       R8 R9 K17 ["textSize"]
       35 SETTABLEKS                       R8 R7 K7 ["TextSize"]
       37 GETIMPORT                        R8 K20 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R8 R7 K8 ["TextXAlignment"]
       41 LOADN                            R8 1
       42 SETTABLEKS                       R8 R7 K9 ["BackgroundTransparency"]
       44 DUPTABLE                         R8 K22 [{"Padding"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K0 ["createElement"]
       48 LOADK                            R10 K23 ["UIPadding"]
       49 DUPTABLE                         R11 K26 [{"PaddingLeft", "PaddingRight"}]
       50 GETIMPORT                        R12 K28 [UDim.new]
       52 LOADN                            R13 0
       53 JUMPIFNOT                        R4 ; [+2]
       54 LOADN                            R14 8
       55 JUMP                             ; [+1]
       56 LOADN                            R14 20
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K24 ["PaddingLeft"]
       60 GETIMPORT                        R12 K28 [UDim.new]
       62 LOADN                            R13 0
       63 JUMPIFNOT                        R4 ; [+2]
       64 LOADN                            R14 20
       65 JUMP                             ; [+1]
       66 LOADN                            R14 8
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K25 ["PaddingRight"]
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K21 ["Padding"]
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K5 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
        5 GETIMPORT                        R6 K8 [UDim2.new]
        7 LOADN                            R7 0
        8 LOADN                            R8 184
        9 LOADN                            R9 0
       10 LOADN                            R10 22
       11 CALL                             R6 4 1
       12 SETTABLEKS                       R6 R5 K2 ["Size"]
       14 LOADN                            R6 1
       15 SETTABLEKS                       R6 R5 K3 ["BackgroundTransparency"]
       17 GETTABLEKS                       R6 R0 K9 ["layout"]
       19 NAMECALL                         R6 R6 K10 ["getNextOrder"]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R9 R1
       27 LOADK                            R12 K11 ["Title"]
       28 LOADK                            R13 K12 ["EventName"]
       29 NAMECALL                         R10 R2 K13 ["getText"]
       31 CALL                             R10 3 -1
       32 NAMECALL                         R7 R0 K14 ["makeText"]
       34 CALL                             R7 -1 1
       35 SETTABLEN                        R7 R6 1
       36 MOVE                             R9 R1
       37 LOADK                            R12 K11 ["Title"]
       38 LOADK                            R13 K15 ["Parameter"]
       39 NAMECALL                         R10 R2 K13 ["getText"]
       41 CALL                             R10 3 1
       42 LOADNIL                          R11
       43 LOADB                            R12 1
       44 NAMECALL                         R7 R0 K14 ["makeText"]
       46 CALL                             R7 5 1
       47 SETTABLEN                        R7 R6 2
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["onRenameEvent"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0
        9 JUMPIFEQ                         R0 R1 ; [+7]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["showRenameAllPrompt"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["onSetEventValue"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R0 K1 ["Text"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["layout"]
        2 NAMECALL                         R5 R5 K1 ["getNextOrder"]
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R7 R1 K2 ["trackTheme"]
        7 GETTABLEKS                       R6 R7 K3 ["shadedBackgroundColor"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K4 ["createElement"]
       12 LOADK                            R8 K5 ["Frame"]
       13 DUPTABLE                         R9 K9 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       14 GETIMPORT                        R10 K12 [UDim2.new]
       16 LOADN                            R11 0
       17 LOADN                            R12 184
       18 LOADN                            R13 0
       19 LOADN                            R14 22
       20 CALL                             R10 4 1
       21 SETTABLEKS                       R10 R9 K6 ["Size"]
       23 LOADN                            R10 1
       24 SETTABLEKS                       R10 R9 K7 ["BackgroundTransparency"]
       26 SETTABLEKS                       R5 R9 K8 ["LayoutOrder"]
       28 NEWTABLE                         R10 0 2
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K4 ["createElement"]
       33 GETUPVAL                         R12 1
       34 DUPTABLE                         R13 K20 [{"Size", "Name", "PaddingLeft", "PaddingRight", "OnDeleteEvent", "OnDeleteAllEvents", "UnusedEvents", "OnRenameEvent"}]
       35 GETIMPORT                        R14 K12 [UDim2.new]
       37 LOADN                            R15 0
       38 LOADN                            R16 220
       39 LOADN                            R17 0
       40 LOADN                            R18 22
       41 CALL                             R14 4 1
       42 SETTABLEKS                       R14 R13 K6 ["Size"]
       44 SETTABLEKS                       R2 R13 K13 ["Name"]
       46 GETIMPORT                        R14 K22 [UDim.new]
       48 LOADN                            R15 0
       49 LOADN                            R16 20
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K14 ["PaddingLeft"]
       53 GETIMPORT                        R14 K22 [UDim.new]
       55 LOADN                            R15 0
       56 LOADN                            R16 8
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K15 ["PaddingRight"]
       60 GETTABLEKS                       R14 R0 K23 ["onDeleteEvent"]
       62 SETTABLEKS                       R14 R13 K16 ["OnDeleteEvent"]
       64 GETTABLEKS                       R14 R0 K24 ["showDeleteAllPrompt"]
       66 SETTABLEKS                       R14 R13 K17 ["OnDeleteAllEvents"]
       68 SETTABLEKS                       R4 R13 K18 ["UnusedEvents"]
       70 NEWCLOSURE                       R14 P0
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R14 R13 K19 ["OnRenameEvent"]
       74 CALL                             R11 2 1
       75 SETTABLEN                        R11 R10 1
       76 GETUPVAL                         R12 0
       77 GETTABLEKS                       R11 R12 K4 ["createElement"]
       79 LOADK                            R12 K5 ["Frame"]
       80 DUPTABLE                         R13 K27 [{"Size", "BackgroundColor3", "BorderColor3"}]
       81 GETIMPORT                        R14 K12 [UDim2.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 220
       85 LOADN                            R17 0
       86 LOADN                            R18 22
       87 CALL                             R14 4 1
       88 SETTABLEKS                       R14 R13 K6 ["Size"]
       90 SETTABLEKS                       R6 R13 K25 ["BackgroundColor3"]
       92 GETTABLEKS                       R14 R1 K28 ["borderColor"]
       94 SETTABLEKS                       R14 R13 K26 ["BorderColor3"]
       96 DUPTABLE                         R14 K31 [{"Padding", "TextBox"}]
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R15 R16 K4 ["createElement"]
      100 LOADK                            R16 K32 ["UIPadding"]
      101 DUPTABLE                         R17 K35 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      102 GETIMPORT                        R18 K22 [UDim.new]
      104 LOADN                            R19 0
      105 LOADN                            R20 8
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K14 ["PaddingLeft"]
      109 GETIMPORT                        R18 K22 [UDim.new]
      111 LOADN                            R19 0
      112 LOADN                            R20 20
      113 CALL                             R18 2 1
      114 SETTABLEKS                       R18 R17 K15 ["PaddingRight"]
      116 GETIMPORT                        R18 K22 [UDim.new]
      118 LOADN                            R19 0
      119 LOADN                            R20 2
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K33 ["PaddingTop"]
      123 GETIMPORT                        R18 K22 [UDim.new]
      125 LOADN                            R19 0
      126 LOADN                            R20 2
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K34 ["PaddingBottom"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K29 ["Padding"]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R15 R16 K4 ["createElement"]
      136 GETUPVAL                         R16 2
      137 DUPTABLE                         R17 K40 [{"Size", "TextXAlignment", "Text", "ClearTextOnFocus", "FocusChanged"}]
      138 GETIMPORT                        R18 K12 [UDim2.new]
      140 LOADN                            R19 1
      141 LOADN                            R20 0
      142 LOADN                            R21 1
      143 LOADN                            R22 0
      144 CALL                             R18 4 1
      145 SETTABLEKS                       R18 R17 K6 ["Size"]
      147 GETIMPORT                        R18 K43 [Enum.TextXAlignment.Left]
      149 SETTABLEKS                       R18 R17 K36 ["TextXAlignment"]
      151 SETTABLEKS                       R3 R17 K37 ["Text"]
      153 LOADB                            R18 0
      154 SETTABLEKS                       R18 R17 K38 ["ClearTextOnFocus"]
      156 NEWCLOSURE                       R18 P1
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R2
      159 SETTABLEKS                       R18 R17 K39 ["FocusChanged"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K30 ["TextBox"]
      164 CALL                             R11 3 1
      165 SETTABLEN                        R11 R10 2
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K6 [{"Size", "BorderColor3", "BackgroundColor3", "LayoutOrder"}]
        5 GETIMPORT                        R6 K9 [UDim2.new]
        7 LOADN                            R7 0
        8 LOADN                            R8 184
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
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K0 ["createElement"]
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
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K6 ["Dictionary"]
       24 GETTABLEKS                       R9 R10 K7 ["keys"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["onDeleteAllEvents"]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["hideDeleteAllPrompt"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R3 K1 ["deleteAllName"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["createElement"]
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R7 K7 [{"Buttons", "PromptText", "OnButtonClicked", "OnClose"}]
        9 NEWTABLE                         R8 0 2
       11 DUPTABLE                         R9 K11 [{"Key", "Text", "Style"}]
       12 LOADB                            R10 0
       13 SETTABLEKS                       R10 R9 K8 ["Key"]
       15 LOADK                            R12 K12 ["Dialog"]
       16 LOADK                            R13 K13 ["No"]
       17 NAMECALL                         R10 R2 K14 ["getText"]
       19 CALL                             R10 3 1
       20 SETTABLEKS                       R10 R9 K9 ["Text"]
       22 LOADK                            R10 K15 ["Round"]
       23 SETTABLEKS                       R10 R9 K10 ["Style"]
       25 DUPTABLE                         R10 K11 [{"Key", "Text", "Style"}]
       26 LOADB                            R11 1
       27 SETTABLEKS                       R11 R10 K8 ["Key"]
       29 LOADK                            R13 K12 ["Dialog"]
       30 LOADK                            R14 K16 ["Yes"]
       31 NAMECALL                         R11 R2 K14 ["getText"]
       33 CALL                             R11 3 1
       34 SETTABLEKS                       R11 R10 K9 ["Text"]
       36 LOADK                            R11 K17 ["RoundPrimary"]
       37 SETTABLEKS                       R11 R10 K10 ["Style"]
       39 SETLIST                          R8 R9 2 [1]
       41 SETTABLEKS                       R8 R7 K3 ["Buttons"]
       43 LOADK                            R10 K12 ["Dialog"]
       44 LOADK                            R11 K18 ["DeleteAllPrompt_Migrated"]
       45 DUPTABLE                         R12 K20 [{"name"}]
       46 SETTABLEKS                       R4 R12 K19 ["name"]
       48 NAMECALL                         R8 R2 K14 ["getText"]
       50 CALL                             R8 4 1
       51 SETTABLEKS                       R8 R7 K4 ["PromptText"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R8 R7 K5 ["OnButtonClicked"]
       58 GETTABLEKS                       R8 R0 K21 ["hideDeleteAllPrompt"]
       60 SETTABLEKS                       R8 R7 K6 ["OnClose"]
       62 CALL                             R5 2 -1
       63 RETURN                           R5 -1

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["onRenameAllEvents"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 0
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["onRenameEvent"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K2 ["hideRenameAllPrompt"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R5 R3 K1 ["renameAllNames"]
        4 GETTABLEKS                       R4 R5 K2 ["Name"]
        6 GETTABLEKS                       R6 R3 K1 ["renameAllNames"]
        8 GETTABLEKS                       R5 R6 K3 ["NewName"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K9 [{"Buttons", "PromptText", "OnButtonClicked", "OnClose"}]
       15 NEWTABLE                         R9 0 2
       17 DUPTABLE                         R10 K13 [{"Key", "Text", "Style"}]
       18 LOADB                            R11 0
       19 SETTABLEKS                       R11 R10 K10 ["Key"]
       21 LOADK                            R13 K14 ["Dialog"]
       22 LOADK                            R14 K15 ["ChangeThis"]
       23 NAMECALL                         R11 R2 K16 ["getText"]
       25 CALL                             R11 3 1
       26 SETTABLEKS                       R11 R10 K11 ["Text"]
       28 LOADK                            R11 K17 ["Round"]
       29 SETTABLEKS                       R11 R10 K12 ["Style"]
       31 DUPTABLE                         R11 K13 [{"Key", "Text", "Style"}]
       32 LOADB                            R12 1
       33 SETTABLEKS                       R12 R11 K10 ["Key"]
       35 LOADK                            R14 K14 ["Dialog"]
       36 LOADK                            R15 K18 ["ChangeAll"]
       37 NAMECALL                         R12 R2 K16 ["getText"]
       39 CALL                             R12 3 1
       40 SETTABLEKS                       R12 R11 K11 ["Text"]
       42 LOADK                            R12 K17 ["Round"]
       43 SETTABLEKS                       R12 R11 K12 ["Style"]
       45 SETLIST                          R9 R10 2 [1]
       47 SETTABLEKS                       R9 R8 K5 ["Buttons"]
       49 LOADK                            R11 K14 ["Dialog"]
       50 LOADK                            R12 K19 ["RenameAllPrompt_Migrated"]
       51 DUPTABLE                         R13 K22 [{"name", "newName"}]
       52 SETTABLEKS                       R4 R13 K20 ["name"]
       54 SETTABLEKS                       R5 R13 K21 ["newName"]
       56 NAMECALL                         R9 R2 K16 ["getText"]
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K6 ["PromptText"]
       61 NEWCLOSURE                       R9 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R9 R8 K7 ["OnButtonClicked"]
       67 GETTABLEKS                       R9 R0 K23 ["hideRenameAllPrompt"]
       69 SETTABLEKS                       R9 R8 K8 ["OnClose"]
       71 CALL                             R6 2 -1
       72 RETURN                           R6 -1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["new"]
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
       34 DUPTABLE                         R9 K12 [{"Key", "Text", "Style"}]
       35 LOADB                            R10 0
       36 SETTABLEKS                       R10 R9 K9 ["Key"]
       38 LOADK                            R12 K13 ["Dialog"]
       39 LOADK                            R13 K14 ["Cancel"]
       40 NAMECALL                         R10 R2 K15 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K10 ["Text"]
       45 LOADK                            R10 K16 ["Round"]
       46 SETTABLEKS                       R10 R9 K11 ["Style"]
       48 DUPTABLE                         R10 K12 [{"Key", "Text", "Style"}]
       49 LOADB                            R11 1
       50 SETTABLEKS                       R11 R10 K9 ["Key"]
       52 LOADK                            R13 K13 ["Dialog"]
       53 LOADK                            R14 K17 ["Save"]
       54 NAMECALL                         R11 R2 K15 ["getText"]
       56 CALL                             R11 3 1
       57 SETTABLEKS                       R11 R10 K10 ["Text"]
       59 LOADK                            R11 K18 ["RoundPrimary"]
       60 SETTABLEKS                       R11 R10 K11 ["Style"]
       62 SETLIST                          R8 R9 2 [1]
       64 DUPTABLE                         R9 K20 [{"Layout"}]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K21 ["createElement"]
       68 LOADK                            R11 K22 ["UITableLayout"]
       69 DUPTABLE                         R12 K25 [{"SortOrder", "FillEmptySpaceColumns"}]
       70 GETIMPORT                        R13 K28 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R13 R12 K23 ["SortOrder"]
       74 LOADB                            R13 1
       75 SETTABLEKS                       R13 R12 K24 ["FillEmptySpaceColumns"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K19 ["Layout"]
       80 MOVE                             R12 R1
       81 MOVE                             R13 R2
       82 NAMECALL                         R10 R0 K29 ["addTitleRow"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K30 ["TitleRow"]
       87 MOVE                             R12 R1
       88 MOVE                             R13 R9
       89 NAMECALL                         R10 R0 K31 ["renderEvents"]
       91 CALL                             R10 3 1
       92 MOVE                             R13 R1
       93 MOVE                             R14 R2
       94 NAMECALL                         R11 R0 K32 ["addNewEventRow"]
       96 CALL                             R11 3 1
       97 SETTABLEKS                       R11 R9 K33 ["AddNew"]
       99 JUMPIFNOT                        R6 ; [+8]
      100 MOVE                             R13 R1
      101 MOVE                             R14 R2
      102 NAMECALL                         R11 R0 K34 ["renderDeleteAllPrompt"]
      104 CALL                             R11 3 1
      105 SETTABLEKS                       R11 R9 K35 ["DeleteAllPrompt"]
      107 JUMP                             ; [+8]
      108 JUMPIFNOT                        R7 ; [+7]
      109 MOVE                             R13 R1
      110 MOVE                             R14 R2
      111 NAMECALL                         R11 R0 K36 ["renderRenameAllPrompt"]
      113 CALL                             R11 3 1
      114 SETTABLEKS                       R11 R9 K37 ["RenameAllPrompt"]
      116 GETIMPORT                        R11 K39 [Vector2.new]
      118 LOADN                            R12 204
      119 FASTCALL2K                       MATH_MAX R10 K40 ; [+5]
      121 MOVE                             R15 R10
      122 LOADK                            R16 K40 [110]
      123 GETIMPORT                        R14 K43 [math.max]
      125 CALL                             R14 2 1
      126 GETUPVAL                         R15 2
      127 ADD                              R13 R14 R15
      128 CALL                             R11 2 1
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R12 R13 K21 ["createElement"]
      132 GETUPVAL                         R13 3
      133 DUPTABLE                         R14 K56 [{"Size", "MinContentSize", "TextSize", "Resizable", "Buttons", "OnButtonPressed", "OnClose", "BorderPadding", "ButtonPadding", "ButtonHeight", "ButtonWidth", "Title"}]
      134 SETTABLEKS                       R11 R14 K44 ["Size"]
      136 SETTABLEKS                       R11 R14 K45 ["MinContentSize"]
      138 GETTABLEKS                       R15 R5 K57 ["textSize"]
      140 SETTABLEKS                       R15 R14 K46 ["TextSize"]
      142 LOADB                            R15 1
      143 SETTABLEKS                       R15 R14 K47 ["Resizable"]
      145 SETTABLEKS                       R8 R14 K48 ["Buttons"]
      147 GETTABLEKS                       R15 R0 K58 ["onButtonClicked"]
      149 SETTABLEKS                       R15 R14 K49 ["OnButtonPressed"]
      151 GETTABLEKS                       R15 R3 K50 ["OnClose"]
      153 SETTABLEKS                       R15 R14 K50 ["OnClose"]
      155 LOADN                            R15 10
      156 SETTABLEKS                       R15 R14 K51 ["BorderPadding"]
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R15 R16 K59 ["PROMPT_BUTTON_PADDING"]
      161 SETTABLEKS                       R15 R14 K52 ["ButtonPadding"]
      163 GETUPVAL                         R17 4
      164 GETTABLEKS                       R16 R17 K60 ["PROMPT_BUTTON_SIZE"]
      166 GETTABLEKS                       R15 R16 K61 ["Y"]
      168 SETTABLEKS                       R15 R14 K53 ["ButtonHeight"]
      170 GETUPVAL                         R17 4
      171 GETTABLEKS                       R16 R17 K60 ["PROMPT_BUTTON_SIZE"]
      173 GETTABLEKS                       R15 R16 K62 ["X"]
      175 SETTABLEKS                       R15 R14 K54 ["ButtonWidth"]
      177 LOADK                            R17 K55 ["Title"]
      178 LOADK                            R18 K63 ["EditEvents"]
      179 NAMECALL                         R15 R2 K15 ["getText"]
      181 CALL                             R15 3 1
      182 SETTABLEKS                       R15 R14 K55 ["Title"]
      184 DUPTABLE                         R15 K65 [{"Container"}]
      185 GETUPVAL                         R17 1
      186 GETTABLEKS                       R16 R17 K21 ["createElement"]
      188 LOADK                            R17 K66 ["ScrollingFrame"]
      189 DUPTABLE                         R18 K71 [{"BorderSizePixel", "BackgroundColor3", "Size", "ScrollBarThickness", "CanvasSize"}]
      190 LOADN                            R19 0
      191 SETTABLEKS                       R19 R18 K67 ["BorderSizePixel"]
      193 GETTABLEKS                       R19 R1 K72 ["backgroundColor"]
      195 SETTABLEKS                       R19 R18 K68 ["BackgroundColor3"]
      197 GETIMPORT                        R19 K74 [UDim2.new]
      199 LOADN                            R20 1
      200 LOADN                            R21 0
      201 LOADN                            R22 1
      202 LOADN                            R23 246
      203 CALL                             R19 4 1
      204 SETTABLEKS                       R19 R18 K44 ["Size"]
      206 LOADN                            R19 8
      207 SETTABLEKS                       R19 R18 K69 ["ScrollBarThickness"]
      209 GETIMPORT                        R19 K74 [UDim2.new]
      211 LOADN                            R20 0
      212 LOADN                            R21 0
      213 LOADN                            R22 0
      214 MOVE                             R23 R10
      215 CALL                             R19 4 1
      216 SETTABLEKS                       R19 R18 K70 ["CanvasSize"]
      218 MOVE                             R19 R9
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K64 ["Container"]
      222 CALL                             R12 3 -1
      223 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R4 R1 K10 ["PROMPT_BUTTON_SIZE"]
       18 GETTABLEKS                       R3 R4 K11 ["Y"]
       20 ADDK                             R2 R3 K9 [30]
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K12 ["Packages"]
       25 GETTABLEKS                       R4 R5 K13 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Packages"]
       32 GETTABLEKS                       R5 R6 K14 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K6 ["Src"]
       39 GETTABLEKS                       R7 R8 K7 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["LayoutOrderIterator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K7 ["Util"]
       50 GETTABLEKS                       R7 R8 K16 ["AnimationData"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K7 ["Util"]
       59 GETTABLEKS                       R8 R9 K17 ["deepCopy"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K12 ["Packages"]
       66 GETTABLEKS                       R9 R10 K18 ["Framework"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R8 K19 ["UI"]
       71 GETTABLEKS                       R10 R9 K20 ["StyledDialog"]
       73 GETTABLEKS                       R11 R8 K21 ["ContextServices"]
       75 GETTABLEKS                       R12 R11 K22 ["withContext"]
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R16 R0 K6 ["Src"]
       81 GETTABLEKS                       R15 R16 K23 ["Components"]
       83 GETTABLEKS                       R14 R15 K24 ["TextBox"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R18 R0 K6 ["Src"]
       90 GETTABLEKS                       R17 R18 K23 ["Components"]
       92 GETTABLEKS                       R16 R17 K25 ["EditEventsDialog"]
       94 GETTABLEKS                       R15 R16 K26 ["EventNameEntry"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R19 R0 K6 ["Src"]
      101 GETTABLEKS                       R18 R19 K23 ["Components"]
      103 GETTABLEKS                       R17 R18 K25 ["EditEventsDialog"]
      105 GETTABLEKS                       R16 R17 K27 ["AddEventEntry"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R20 R0 K6 ["Src"]
      112 GETTABLEKS                       R19 R20 K23 ["Components"]
      114 GETTABLEKS                       R18 R19 K25 ["EditEventsDialog"]
      116 GETTABLEKS                       R17 R18 K28 ["FocusedPrompt"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R3 K29 ["PureComponent"]
      121 LOADK                            R19 K25 ["EditEventsDialog"]
      122 NAMECALL                         R17 R17 K30 ["extend"]
      124 CALL                             R17 2 1
      125 DUPCLOSURE                       R18 K31 [PROTO_12]
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R18 R17 K32 ["init"]
      132 DUPCLOSURE                       R18 K33 [PROTO_13]
      133 SETTABLEKS                       R18 R17 K34 ["didMount"]
      135 DUPCLOSURE                       R18 K35 [PROTO_14]
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R18 R17 K36 ["makeText"]
      139 DUPCLOSURE                       R18 K37 [PROTO_15]
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R18 R17 K38 ["addTitleRow"]
      143 DUPCLOSURE                       R18 K39 [PROTO_18]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R13
      147 SETTABLEKS                       R18 R17 K40 ["addEventRow"]
      149 DUPCLOSURE                       R18 K41 [PROTO_19]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R15
      152 SETTABLEKS                       R18 R17 K42 ["addNewEventRow"]
      154 DUPCLOSURE                       R18 K43 [PROTO_21]
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R18 R17 K44 ["renderEvents"]
      158 DUPCLOSURE                       R18 K45 [PROTO_23]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R16
      161 SETTABLEKS                       R18 R17 K46 ["renderDeleteAllPrompt"]
      163 DUPCLOSURE                       R18 K47 [PROTO_25]
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R16
      166 SETTABLEKS                       R18 R17 K48 ["renderRenameAllPrompt"]
      168 DUPCLOSURE                       R18 K49 [PROTO_26]
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R18 R17 K50 ["render"]
      176 MOVE                             R18 R12
      177 DUPTABLE                         R19 K54 [{"Stylizer", "Localization", "Mouse"}]
      178 GETTABLEKS                       R20 R11 K51 ["Stylizer"]
      180 SETTABLEKS                       R20 R19 K51 ["Stylizer"]
      182 GETTABLEKS                       R20 R11 K52 ["Localization"]
      184 SETTABLEKS                       R20 R19 K52 ["Localization"]
      186 GETTABLEKS                       R20 R11 K53 ["Mouse"]
      188 SETTABLEKS                       R20 R19 K53 ["Mouse"]
      190 CALL                             R18 1 1
      191 MOVE                             R19 R17
      192 CALL                             R18 1 1
      193 MOVE                             R17 R18
      194 RETURN                           R17 1
