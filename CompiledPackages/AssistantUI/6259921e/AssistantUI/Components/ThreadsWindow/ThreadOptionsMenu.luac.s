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
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["Pin"]
        7 JUMPIFNOTEQ                      R0 R2 ; [+9]
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 2
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CALL                             R2 2 0
       16 JUMP                             ; [+31]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K1 ["Unpin"]
       20 JUMPIFNOTEQ                      R0 R2 ; [+9]
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 2
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CALL                             R2 2 0
       29 JUMP                             ; [+18]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K2 ["Rename"]
       33 JUMPIFNOTEQ                      R0 R2 ; [+6]
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R2 R2 K3 ["onRenameRequested"]
       38 CALL                             R2 0 0
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K4 ["Delete"]
       43 JUMPIFNOTEQ                      R0 R2 ; [+4]
       45 GETUPVAL                         R2 6
       46 GETUPVAL                         R3 2
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 7
       49 CALL                             R2 0 0
       50 RETURN                           R0 0

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
        0 NEWTABLE                         R0 0 3
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+21]
        4 DUPTABLE                         R1 K3 [{"id", "icon", "text"}]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["Unpin"]
        8 SETTABLEKS                       R2 R1 K0 ["id"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K5 ["Enums"]
       13 GETTABLEKS                       R2 R2 K6 ["IconName"]
       15 GETTABLEKS                       R2 R2 K7 ["PinSlash"]
       17 SETTABLEKS                       R2 R1 K1 ["icon"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K4 ["Unpin"]
       22 SETTABLEKS                       R2 R1 K2 ["text"]
       24 JUMP                             ; [+20]
       25 DUPTABLE                         R1 K3 [{"id", "icon", "text"}]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K8 ["Pin"]
       29 SETTABLEKS                       R2 R1 K0 ["id"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K5 ["Enums"]
       34 GETTABLEKS                       R2 R2 K6 ["IconName"]
       36 GETTABLEKS                       R2 R2 K8 ["Pin"]
       38 SETTABLEKS                       R2 R1 K1 ["icon"]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K8 ["Pin"]
       43 SETTABLEKS                       R2 R1 K2 ["text"]
       45 DUPTABLE                         R2 K3 [{"id", "icon", "text"}]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K9 ["Rename"]
       49 SETTABLEKS                       R3 R2 K0 ["id"]
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K5 ["Enums"]
       54 GETTABLEKS                       R3 R3 K6 ["IconName"]
       56 GETTABLEKS                       R3 R3 K10 ["Pencil"]
       58 SETTABLEKS                       R3 R2 K1 ["icon"]
       60 GETUPVAL                         R3 3
       61 GETTABLEKS                       R3 R3 K11 ["EditName"]
       63 SETTABLEKS                       R3 R2 K2 ["text"]
       65 DUPTABLE                         R3 K13 [{"id", "icon", "text", "isDisabled"}]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K14 ["Delete"]
       69 SETTABLEKS                       R4 R3 K0 ["id"]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K5 ["Enums"]
       74 GETTABLEKS                       R4 R4 K6 ["IconName"]
       76 GETTABLEKS                       R4 R4 K15 ["TrashCan"]
       78 SETTABLEKS                       R4 R3 K1 ["icon"]
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R4 R4 K16 ["DeleteThread"]
       83 SETTABLEKS                       R4 R3 K2 ["text"]
       85 GETUPVAL                         R4 4
       86 SETTABLEKS                       R4 R3 K12 ["isDisabled"]
       88 SETLIST                          R0 R1 3 [1]
       90 RETURN                           R0 1

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
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R8
       43 NEWTABLE                         R11 0 6
       45 MOVE                             R12 R8
       46 MOVE                             R13 R6
       47 MOVE                             R14 R3
       48 MOVE                             R15 R4
       49 MOVE                             R16 R2
       50 GETTABLEKS                       R17 R0 K8 ["onRenameRequested"]
       52 SETLIST                          R11 R12 6 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       58 DUPCLOSURE                       R11 K10 [PROTO_5]
       59 CAPTURE                          UPVAL U6
       60 NEWTABLE                         R12 0 1
       62 GETUPVAL                         R13 6
       63 GETTABLEKS                       R13 R13 K11 ["locale"]
       65 SETLIST                          R12 R13 1 [1]
       67 CALL                             R10 2 1
       68 GETTABLEKS                       R11 R0 K12 ["isGenerating"]
       70 JUMPIF                           R11 ; [+2]
       71 GETTABLEKS                       R11 R5 K13 ["ephemeral"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K9 ["useMemo"]
       76 NEWCLOSURE                       R13 P3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 NEWTABLE                         R14 0 3
       84 MOVE                             R15 R7
       85 MOVE                             R16 R11
       86 MOVE                             R17 R10
       87 SETLIST                          R14 R15 3 [1]
       89 CALL                             R12 2 1
       90 GETUPVAL                         R13 8
       91 GETUPVAL                         R14 9
       92 DUPTABLE                         R15 K23 [{"isOpen", "items", "size", "align", "onPressedOutside", "onActivated", "width", "LayoutOrder", "testId"}]
       93 GETTABLEKS                       R16 R0 K14 ["isOpen"]
       95 SETTABLEKS                       R16 R15 K14 ["isOpen"]
       97 SETTABLEKS                       R12 R15 K15 ["items"]
       99 GETUPVAL                         R16 7
      100 GETTABLEKS                       R16 R16 K24 ["Enums"]
      102 GETTABLEKS                       R16 R16 K25 ["InputSize"]
      104 GETTABLEKS                       R16 R16 K26 ["XSmall"]
      106 SETTABLEKS                       R16 R15 K16 ["size"]
      108 GETUPVAL                         R16 7
      109 GETTABLEKS                       R16 R16 K24 ["Enums"]
      111 GETTABLEKS                       R16 R16 K27 ["PopoverAlign"]
      113 GETTABLEKS                       R16 R16 K28 ["End"]
      115 SETTABLEKS                       R16 R15 K17 ["align"]
      117 SETTABLEKS                       R8 R15 K18 ["onPressedOutside"]
      119 SETTABLEKS                       R9 R15 K19 ["onActivated"]
      121 GETUPVAL                         R16 10
      122 SETTABLEKS                       R16 R15 K20 ["width"]
      124 GETTABLEKS                       R16 R0 K21 ["LayoutOrder"]
      126 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      128 GETUPVAL                         R16 11
      129 GETTABLEKS                       R16 R16 K29 ["ThreadOptionsMenu"]
      131 GETTABLEKS                       R16 R16 K30 ["Container"]
      133 SETTABLEKS                       R16 R15 K22 ["testId"]
      135 GETTABLEKS                       R16 R0 K31 ["children"]
      137 CALL                             R13 3 -1
      138 RETURN                           R13 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["SessionIdContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Resources"]
       48 GETTABLEKS                       R7 R7 K17 ["Localization"]
       50 GETTABLEKS                       R7 R7 K18 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K19 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K20 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K21 ["useEditThread"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K22 ["useRemoveThread"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R2 K23 ["Menu"]
       74 GETTABLEKS                       R11 R3 K24 ["createElement"]
       76 GETIMPORT                        R12 K27 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 200
       80 CALL                             R12 2 1
       81 DUPTABLE                         R13 K32 [{"Pin", "Unpin", "Rename", "Delete"}]
       82 LOADK                            R14 K33 ["pin"]
       83 SETTABLEKS                       R14 R13 K28 ["Pin"]
       85 LOADK                            R14 K34 ["unpin"]
       86 SETTABLEKS                       R14 R13 K29 ["Unpin"]
       88 LOADK                            R14 K35 ["rename"]
       89 SETTABLEKS                       R14 R13 K30 ["Rename"]
       91 LOADK                            R14 K36 ["delete"]
       92 SETTABLEKS                       R14 R13 K31 ["Delete"]
       94 DUPCLOSURE                       R14 K37 [PROTO_7]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R5
      107 DUPCLOSURE                       R15 K38 [PROTO_10]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R14
      111 RETURN                           R15 1
