PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["binding"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["property"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["schema"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 [""]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 DUPCLOSURE                       R1 K1 [PROTO_2]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K8 [Enum.KeyCode]
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K9 ["FromValue"]
       20 CALL                             R1 2 1
       21 LOADK                            R5 K10 ["Invalid keycode value: %*"]
       22 MOVE                             R7 R0
       23 NAMECALL                         R5 R5 K11 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 FASTCALL2                        ASSERT R1 R4 ; [+4]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K5 [assert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K12 ["updateBinding"]
       37 GETUPVAL                         R4 2
       38 MOVE                             R5 R1
       39 CALL                             R2 3 1
       40 JUMPIFNOT                        R2 ; [+9]
       41 GETUPVAL                         R2 3
       42 JUMPIFNOT                        R2 ; [+7]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K13 ["countBindingSet"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K14 ["schema"]
       49 CALL                             R2 1 0
       50 GETUPVAL                         R2 4
       51 LOADK                            R3 K15 [""]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["score"]
        2 GETTABLEKS                       R3 R1 K0 ["score"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+14]
        6 GETTABLEKS                       R3 R0 K1 ["item"]
        8 GETTABLEKS                       R3 R3 K2 ["text"]
       10 GETTABLEKS                       R4 R1 K1 ["item"]
       12 GETTABLEKS                       R4 R4 K2 ["text"]
       14 JUMPIFLT                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R0 K0 ["score"]
       21 GETTABLEKS                       R4 R1 K0 ["score"]
       23 JUMPIFLT                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K3 [string.lower]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 NEWTABLE                         R1 0 0
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETIMPORT                        R8 K6 [Enum.KeyCode]
       19 GETTABLEKS                       R10 R7 K7 ["text"]
       21 NAMECALL                         R8 R8 K8 ["FromName"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+6]
       25 GETUPVAL                         R9 2
       26 MOVE                             R11 R8
       27 NAMECALL                         R9 R9 K9 ["GetStringForKeyCode"]
       29 CALL                             R9 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R9
       32 GETIMPORT                        R10 K11 [string.find]
       34 GETIMPORT                        R11 K3 [string.lower]
       36 GETTABLEKS                       R12 R7 K7 ["text"]
       38 CALL                             R11 1 1
       39 MOVE                             R12 R0
       40 LOADN                            R13 1
       41 LOADB                            R14 1
       42 CALL                             R10 4 1
       43 JUMPIFNOT                        R9 ; [+8]
       44 GETIMPORT                        R11 K11 [string.find]
       46 MOVE                             R12 R9
       47 MOVE                             R13 R0
       48 LOADN                            R14 1
       49 LOADB                            R15 1
       50 CALL                             R11 4 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R11
       53 JUMPIFNOT                        R10 ; [+9]
       54 JUMPIFNOT                        R11 ; [+8]
       55 FASTCALL2                        MATH_MIN R10 R11 ; [+5]
       57 MOVE                             R13 R10
       58 MOVE                             R14 R11
       59 GETIMPORT                        R12 K14 [math.min]
       61 CALL                             R12 2 1
       62 JUMP                             ; [+18]
       63 JUMPIFNOT                        R10 ; [+2]
       64 MOVE                             R12 R10
       65 JUMP                             ; [+15]
       66 JUMPIFNOT                        R11 ; [+2]
       67 MOVE                             R12 R11
       68 JUMP                             ; [+12]
       69 GETIMPORT                        R13 K3 [string.lower]
       71 GETTABLEKS                       R14 R7 K7 ["text"]
       73 CALL                             R13 1 1
       74 JUMPIFEQ                         R13 R0 ; [+3]
       76 JUMPIFNOTEQ                      R9 R0 ; [+3]
       78 LOADN                            R12 0
       79 JUMP                             ; [+1]
       80 LOADNIL                          R12
       81 JUMPIFNOT                        R12 ; [+11]
       82 DUPTABLE                         R15 K17 [{"item", "score"}]
       83 SETTABLEKS                       R7 R15 K15 ["item"]
       85 SETTABLEKS                       R12 R15 K16 ["score"]
       87 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       89 MOVE                             R14 R2
       90 GETIMPORT                        R13 K20 [table.insert]
       92 CALL                             R13 2 0
       93 FORGLOOP                         R3 2 ; [-77]
       95 GETIMPORT                        R3 K22 [table.sort]
       97 MOVE                             R4 R2
       98 DUPCLOSURE                       R5 K23 [PROTO_6]
       99 CALL                             R3 2 0
      100 MOVE                             R3 R2
      101 LOADNIL                          R4
      102 LOADNIL                          R5
      103 FORGPREP                         R3
      104 GETTABLEKS                       R10 R7 K15 ["item"]
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K20 [table.insert]
      111 CALL                             R8 2 0
      112 FORGLOOP                         R3 2 ; [-9]
      114 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K1 ["Context"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R7 0 2
       29 GETTABLEKS                       R8 R0 K3 ["binding"]
       31 GETTABLEKS                       R9 R0 K4 ["property"]
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R8 0 4
       47 GETTABLEKS                       R9 R0 K5 ["schema"]
       49 MOVE                             R10 R1
       50 MOVE                             R11 R5
       51 MOVE                             R12 R3
       52 SETLIST                          R8 R9 4 [1]
       54 CALL                             R6 2 2
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K6 ["useState"]
       58 LOADB                            R9 0
       59 CALL                             R8 1 2
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K6 ["useState"]
       63 LOADK                            R11 K7 [""]
       64 CALL                             R10 1 2
       65 GETUPVAL                         R12 6
       66 GETTABLEKS                       R12 R12 K8 ["useEventCallback"]
       68 NEWCLOSURE                       R13 P2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 6
       74 GETTABLEKS                       R13 R13 K8 ["useEventCallback"]
       76 NEWCLOSURE                       R14 P3
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R11
       79 CALL                             R13 1 1
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K9 ["useRef"]
       83 LOADNIL                          R15
       84 CALL                             R14 1 1
       85 GETUPVAL                         R15 6
       86 GETTABLEKS                       R15 R15 K8 ["useEventCallback"]
       88 NEWCLOSURE                       R16 P4
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R11
       94 CALL                             R15 1 1
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K2 ["useMemo"]
       98 NEWCLOSURE                       R17 P5
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R6
      101 CAPTURE                          UPVAL U8
      102 NEWTABLE                         R18 0 2
      104 MOVE                             R19 R10
      105 MOVE                             R20 R6
      106 SETLIST                          R18 R19 2 [1]
      108 CALL                             R16 2 1
      109 DUPTABLE                         R17 K19 [{"currentIcon", "filterText", "inputRef", "isOpen", "items", "onCloseMenu", "onFilterTextChanged", "onItemChanged", "onOpenActivated"}]
      110 SETTABLEKS                       R7 R17 K10 ["currentIcon"]
      112 SETTABLEKS                       R10 R17 K11 ["filterText"]
      114 SETTABLEKS                       R14 R17 K12 ["inputRef"]
      116 SETTABLEKS                       R8 R17 K13 ["isOpen"]
      118 SETTABLEKS                       R16 R17 K14 ["items"]
      120 SETTABLEKS                       R13 R17 K15 ["onCloseMenu"]
      122 SETTABLEKS                       R11 R17 K16 ["onFilterTextChanged"]
      124 SETTABLEKS                       R15 R17 K17 ["onItemChanged"]
      126 SETTABLEKS                       R12 R17 K18 ["onOpenActivated"]
      128 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K15 ["InputConfiguration"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K16 ["SchemaConfiguration"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K17 ["Telemetry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K13 ["Src"]
       58 GETTABLEKS                       R8 R8 K18 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K13 ["Src"]
       65 GETTABLEKS                       R9 R9 K19 ["Util"]
       67 GETTABLEKS                       R9 R9 K20 ["Cell"]
       69 GETTABLEKS                       R9 R9 K21 ["getKeycodeDropdownItems"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K13 ["Src"]
       76 GETTABLEKS                       R10 R10 K19 ["Util"]
       78 GETTABLEKS                       R10 R10 K20 ["Cell"]
       80 GETTABLEKS                       R10 R10 K22 ["applyBindingKeycode"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R1 K13 ["Src"]
       87 GETTABLEKS                       R11 R11 K19 ["Util"]
       89 GETTABLEKS                       R11 R11 K20 ["Cell"]
       91 GETTABLEKS                       R11 R11 K23 ["getBindingKeycodeValue"]
       93 CALL                             R10 1 1
       94 DUPCLOSURE                       R11 K24 [PROTO_8]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R0
      104 RETURN                           R11 1
