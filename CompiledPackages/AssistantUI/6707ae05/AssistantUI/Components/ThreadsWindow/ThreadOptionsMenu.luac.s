PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsOpen"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R2 K2 ["logThreadPinnedChanged"]
        8 DUPTABLE                         R3 K6 [{"conversationId", "threadId", "isPinned"}]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K3 ["conversationId"]
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K4 ["threadId"]
       15 SETTABLEKS                       R0 R3 K5 ["isPinned"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 GETTABLEKS                       R1 R0 K0 ["isPinned"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R3 K3 ["logThreadPinnedChanged"]
       13 DUPTABLE                         R4 K6 [{"conversationId", "threadId", "isPinned"}]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K5 ["threadId"]
       20 SETTABLEKS                       R1 R4 K0 ["isPinned"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 GETTABLEKS                       R1 R0 K0 ["isPinned"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R3 K3 ["logThreadPinnedChanged"]
       13 DUPTABLE                         R4 K6 [{"conversationId", "threadId", "isPinned"}]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K5 ["threadId"]
       20 SETTABLEKS                       R1 R4 K0 ["isPinned"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 JUMPIFNOTEQKS                    R0 K0 ["pin"] ; [+9]
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 2
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 2 0
       13 JUMP                             ; [+22]
       14 JUMPIFNOTEQKS                    R0 K1 ["unpin"] ; [+9]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 2
       18 NEWCLOSURE                       R4 P2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CALL                             R2 2 0
       23 JUMP                             ; [+12]
       24 JUMPIFNOTEQKS                    R0 K2 ["rename"] ; [+6]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K3 ["onRenameRequested"]
       29 CALL                             R2 0 0
       30 JUMP                             ; [+5]
       31 JUMPIFNOTEQKS                    R0 K4 ["delete"] ; [+4]
       33 GETUPVAL                         R2 5
       34 GETUPVAL                         R3 2
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 6
       37 CALL                             R2 0 0
       38 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"Unpin", "Pin", "EditName", "DeleteThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Unpin"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Unpin"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["Pin"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Pin"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["ThreadsMenu"]
       19 LOADK                            R4 K2 ["EditName"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["EditName"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["ThreadsMenu"]
       27 LOADK                            R4 K3 ["DeleteThread"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["DeleteThread"]
       33 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.create]
        2 LOADN                            R1 3
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["FFlagAssistantPinForBuildUI"]
        7 JUMPIF                           R1 ; [+39]
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+16]
       10 DUPTABLE                         R3 K8 [{["id"] = "unpin", ["icon"], ["text"]}]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K9 ["Enums"]
       14 GETTABLEKS                       R4 R4 K10 ["IconName"]
       16 GETTABLEKS                       R4 R4 K11 ["PinSlash"]
       18 SETTABLEKS                       R4 R3 K6 ["icon"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K12 ["Unpin"]
       23 SETTABLEKS                       R4 R3 K7 ["text"]
       25 JUMP                             ; [+15]
       26 DUPTABLE                         R3 K14 [{["id"] = "pin", ["icon"], ["text"]}]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K9 ["Enums"]
       30 GETTABLEKS                       R4 R4 K10 ["IconName"]
       32 GETTABLEKS                       R4 R4 K15 ["Pin"]
       34 SETTABLEKS                       R4 R3 K6 ["icon"]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K15 ["Pin"]
       39 SETTABLEKS                       R4 R3 K7 ["text"]
       41 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       43 MOVE                             R2 R0
       44 GETIMPORT                        R1 K17 [table.insert]
       46 CALL                             R1 2 0
       47 DUPTABLE                         R3 K19 [{["id"] = "rename", ["icon"], ["text"]}]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K9 ["Enums"]
       51 GETTABLEKS                       R4 R4 K10 ["IconName"]
       53 GETTABLEKS                       R4 R4 K20 ["Pencil"]
       55 SETTABLEKS                       R4 R3 K6 ["icon"]
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R4 R4 K21 ["EditName"]
       60 SETTABLEKS                       R4 R3 K7 ["text"]
       62 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       64 MOVE                             R2 R0
       65 GETIMPORT                        R1 K17 [table.insert]
       67 CALL                             R1 2 0
       68 DUPTABLE                         R3 K24 [{["id"] = "delete", ["icon"], ["text"], ["isDisabled"]}]
       69 GETUPVAL                         R4 2
       70 GETTABLEKS                       R4 R4 K9 ["Enums"]
       72 GETTABLEKS                       R4 R4 K10 ["IconName"]
       74 GETTABLEKS                       R4 R4 K25 ["TrashCan"]
       76 SETTABLEKS                       R4 R3 K6 ["icon"]
       78 GETUPVAL                         R4 3
       79 GETTABLEKS                       R4 R4 K26 ["DeleteThread"]
       81 SETTABLEKS                       R4 R3 K7 ["text"]
       83 GETUPVAL                         R4 4
       84 SETTABLEKS                       R4 R3 K23 ["isDisabled"]
       86 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       88 MOVE                             R2 R0
       89 GETIMPORT                        R1 K17 [table.insert]
       91 CALL                             R1 2 0
       92 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["sessionId"]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["thread"]
       15 GETTABLEKS                       R6 R5 K4 ["threadId"]
       17 GETTABLEKS                       R7 R5 K5 ["isPinned"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R10 0 1
       26 GETTABLEKS                       R11 R0 K7 ["setIsOpen"]
       28 SETLIST                          R10 R11 1 [1]
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R8
       42 NEWTABLE                         R11 0 6
       44 MOVE                             R12 R8
       45 MOVE                             R13 R6
       46 MOVE                             R14 R3
       47 MOVE                             R15 R4
       48 MOVE                             R16 R2
       49 GETTABLEKS                       R17 R0 K8 ["onRenameRequested"]
       51 SETLIST                          R11 R12 6 [1]
       53 CALL                             R9 2 1
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       57 DUPCLOSURE                       R11 K10 [PROTO_5]
       58 CAPTURE                          UPVAL U5
       59 NEWTABLE                         R12 0 1
       61 GETUPVAL                         R13 5
       62 GETTABLEKS                       R13 R13 K11 ["locale"]
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 GETTABLEKS                       R11 R0 K12 ["isGenerating"]
       69 JUMPIF                           R11 ; [+2]
       70 GETTABLEKS                       R11 R5 K13 ["ephemeral"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K9 ["useMemo"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 NEWTABLE                         R14 0 3
       83 MOVE                             R15 R7
       84 MOVE                             R16 R11
       85 MOVE                             R17 R10
       86 SETLIST                          R14 R15 3 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 8
       90 GETUPVAL                         R14 9
       91 DUPTABLE                         R15 K23 [{"isOpen", "items", "size", "align", "onPressedOutside", "onActivated", "width", "LayoutOrder", "testId"}]
       92 GETTABLEKS                       R16 R0 K14 ["isOpen"]
       94 SETTABLEKS                       R16 R15 K14 ["isOpen"]
       96 SETTABLEKS                       R12 R15 K15 ["items"]
       98 GETUPVAL                         R16 7
       99 GETTABLEKS                       R16 R16 K24 ["Enums"]
      101 GETTABLEKS                       R16 R16 K25 ["InputSize"]
      103 GETTABLEKS                       R16 R16 K26 ["XSmall"]
      105 SETTABLEKS                       R16 R15 K16 ["size"]
      107 GETUPVAL                         R16 7
      108 GETTABLEKS                       R16 R16 K24 ["Enums"]
      110 GETTABLEKS                       R16 R16 K27 ["PopoverAlign"]
      112 GETTABLEKS                       R16 R16 K28 ["End"]
      114 SETTABLEKS                       R16 R15 K17 ["align"]
      116 SETTABLEKS                       R8 R15 K18 ["onPressedOutside"]
      118 SETTABLEKS                       R9 R15 K19 ["onActivated"]
      120 GETUPVAL                         R16 10
      121 SETTABLEKS                       R16 R15 K20 ["width"]
      123 GETTABLEKS                       R16 R0 K21 ["LayoutOrder"]
      125 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      127 GETUPVAL                         R16 11
      128 GETTABLEKS                       R16 R16 K29 ["ThreadOptionsMenu"]
      130 GETTABLEKS                       R16 R16 K30 ["Container"]
      132 SETTABLEKS                       R16 R15 K22 ["testId"]
      134 GETTABLEKS                       R16 R0 K31 ["children"]
      136 CALL                             R13 3 -1
      137 RETURN                           R13 -1

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["isOpen"]
        5 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["isOpen"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["isOpen"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 JUMPIF                           R1 ; [+3]
       20 GETTABLEKS                       R3 R0 K3 ["children"]
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 1
       24 GETUPVAL                         R4 2
       25 DUPTABLE                         R5 K9 [{"thread", "isGenerating", "isOpen", "setIsOpen", "onRenameRequested", "LayoutOrder"}]
       26 GETTABLEKS                       R6 R0 K4 ["thread"]
       28 SETTABLEKS                       R6 R5 K4 ["thread"]
       30 GETTABLEKS                       R6 R0 K5 ["isGenerating"]
       32 SETTABLEKS                       R6 R5 K5 ["isGenerating"]
       34 GETTABLEKS                       R6 R0 K1 ["isOpen"]
       36 SETTABLEKS                       R6 R5 K1 ["isOpen"]
       38 GETTABLEKS                       R6 R0 K6 ["setIsOpen"]
       40 SETTABLEKS                       R6 R5 K6 ["setIsOpen"]
       42 GETTABLEKS                       R6 R0 K7 ["onRenameRequested"]
       44 SETTABLEKS                       R6 R5 K7 ["onRenameRequested"]
       46 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       48 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       50 GETTABLEKS                       R6 R0 K3 ["children"]
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K14 ["SessionIdContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Resources"]
       53 GETTABLEKS                       R8 R8 K18 ["Localization"]
       55 GETTABLEKS                       R8 R8 K19 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K20 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K21 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K22 ["useEditThread"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K23 ["useRemoveThread"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K24 ["Menu"]
       79 GETTABLEKS                       R12 R4 K25 ["createElement"]
       81 GETIMPORT                        R13 K28 [UDim.new]
       83 LOADN                            R14 0
       84 LOADN                            R15 200
       85 CALL                             R13 2 1
       86 DUPTABLE                         R14 K37 [{["Pin"] = "pin", ["Unpin"] = "unpin", ["Rename"] = "rename", ["Delete"] = "delete"}]
       87 DUPCLOSURE                       R15 K38 [PROTO_7]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R6
      100 DUPCLOSURE                       R16 K39 [PROTO_10]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R15
      104 RETURN                           R16 1
