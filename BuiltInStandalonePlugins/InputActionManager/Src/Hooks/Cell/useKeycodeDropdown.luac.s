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
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+104]
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETIMPORT                        R8 K6 [Enum.KeyCode]
       22 GETTABLEKS                       R10 R7 K7 ["text"]
       24 NAMECALL                         R8 R8 K8 ["FromName"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+6]
       28 GETUPVAL                         R9 3
       29 MOVE                             R11 R8
       30 NAMECALL                         R9 R9 K9 ["GetStringForKeyCode"]
       32 CALL                             R9 2 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 GETIMPORT                        R10 K11 [string.find]
       37 GETIMPORT                        R11 K3 [string.lower]
       39 GETTABLEKS                       R12 R7 K7 ["text"]
       41 CALL                             R11 1 1
       42 MOVE                             R12 R0
       43 LOADN                            R13 1
       44 LOADB                            R14 1
       45 CALL                             R10 4 1
       46 JUMPIFNOT                        R9 ; [+8]
       47 GETIMPORT                        R11 K11 [string.find]
       49 MOVE                             R12 R9
       50 MOVE                             R13 R0
       51 LOADN                            R14 1
       52 LOADB                            R15 1
       53 CALL                             R11 4 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R11
       56 JUMPIFNOT                        R10 ; [+9]
       57 JUMPIFNOT                        R11 ; [+8]
       58 FASTCALL2                        MATH_MIN R10 R11 ; [+5]
       60 MOVE                             R13 R10
       61 MOVE                             R14 R11
       62 GETIMPORT                        R12 K14 [math.min]
       64 CALL                             R12 2 1
       65 JUMP                             ; [+18]
       66 JUMPIFNOT                        R10 ; [+2]
       67 MOVE                             R12 R10
       68 JUMP                             ; [+15]
       69 JUMPIFNOT                        R11 ; [+2]
       70 MOVE                             R12 R11
       71 JUMP                             ; [+12]
       72 GETIMPORT                        R13 K3 [string.lower]
       74 GETTABLEKS                       R14 R7 K7 ["text"]
       76 CALL                             R13 1 1
       77 JUMPIFEQ                         R13 R0 ; [+3]
       79 JUMPIFNOTEQ                      R9 R0 ; [+3]
       81 LOADN                            R12 0
       82 JUMP                             ; [+1]
       83 LOADNIL                          R12
       84 JUMPIFNOT                        R12 ; [+11]
       85 DUPTABLE                         R15 K17 [{"item", "score"}]
       86 SETTABLEKS                       R7 R15 K15 ["item"]
       88 SETTABLEKS                       R12 R15 K16 ["score"]
       90 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       92 MOVE                             R14 R2
       93 GETIMPORT                        R13 K20 [table.insert]
       95 CALL                             R13 2 0
       96 FORGLOOP                         R3 2 ; [-77]
       98 GETIMPORT                        R3 K22 [table.sort]
      100 MOVE                             R4 R2
      101 DUPCLOSURE                       R5 K23 [PROTO_6]
      102 CALL                             R3 2 0
      103 MOVE                             R3 R2
      104 LOADNIL                          R4
      105 LOADNIL                          R5
      106 FORGPREP                         R3
      107 GETTABLEKS                       R10 R7 K15 ["item"]
      109 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      111 MOVE                             R9 R1
      112 GETIMPORT                        R8 K20 [table.insert]
      114 CALL                             R8 2 0
      115 FORGLOOP                         R3 2 ; [-9]
      117 RETURN                           R1 1
      118 GETUPVAL                         R2 1
      119 LOADNIL                          R3
      120 LOADNIL                          R4
      121 FORGPREP                         R2
      122 GETIMPORT                        R7 K6 [Enum.KeyCode]
      124 GETTABLEKS                       R9 R6 K7 ["text"]
      126 NAMECALL                         R7 R7 K8 ["FromName"]
      128 CALL                             R7 2 1
      129 GETIMPORT                        R8 K11 [string.find]
      131 GETIMPORT                        R9 K3 [string.lower]
      133 GETTABLEKS                       R10 R6 K7 ["text"]
      135 CALL                             R9 1 1
      136 MOVE                             R10 R0
      137 LOADN                            R11 1
      138 LOADB                            R12 1
      139 CALL                             R8 4 1
      140 JUMPIF                           R8 ; [+16]
      141 JUMPIFNOT                        R7 ; [+22]
      142 GETIMPORT                        R8 K11 [string.find]
      144 GETIMPORT                        R9 K3 [string.lower]
      146 GETUPVAL                         R10 3
      147 MOVE                             R12 R7
      148 NAMECALL                         R10 R10 K9 ["GetStringForKeyCode"]
      150 CALL                             R10 2 -1
      151 CALL                             R9 -1 1
      152 MOVE                             R10 R0
      153 LOADN                            R11 1
      154 LOADB                            R12 1
      155 CALL                             R8 4 1
      156 JUMPIFNOT                        R8 ; [+7]
      157 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
      159 MOVE                             R9 R1
      160 MOVE                             R10 R6
      161 GETIMPORT                        R8 K20 [table.insert]
      163 CALL                             R8 2 0
      164 FORGLOOP                         R2 2 ; [-43]
      166 RETURN                           R1 1

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
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["useContext"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K1 ["Context"]
       23 CALL                             R4 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 2
       34 GETTABLEKS                       R8 R0 K3 ["binding"]
       36 GETTABLEKS                       R9 R0 K4 ["property"]
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R8 0 4
       52 GETTABLEKS                       R9 R0 K5 ["schema"]
       54 MOVE                             R10 R1
       55 MOVE                             R11 R5
       56 MOVE                             R12 R3
       57 SETLIST                          R8 R9 4 [1]
       59 CALL                             R6 2 2
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K6 ["useState"]
       63 LOADB                            R9 0
       64 CALL                             R8 1 2
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K6 ["useState"]
       68 LOADK                            R11 K7 [""]
       69 CALL                             R10 1 2
       70 GETUPVAL                         R12 7
       71 GETTABLEKS                       R12 R12 K8 ["useEventCallback"]
       73 NEWCLOSURE                       R13 P2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R9
       77 CALL                             R12 1 1
       78 GETUPVAL                         R13 7
       79 GETTABLEKS                       R13 R13 K8 ["useEventCallback"]
       81 NEWCLOSURE                       R14 P3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R11
       84 CALL                             R13 1 1
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K9 ["useRef"]
       88 LOADNIL                          R15
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 7
       91 GETTABLEKS                       R15 R15 K8 ["useEventCallback"]
       93 NEWCLOSURE                       R16 P4
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R11
       99 CALL                             R15 1 1
      100 GETUPVAL                         R16 0
      101 GETTABLEKS                       R16 R16 K2 ["useMemo"]
      103 NEWCLOSURE                       R17 P5
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R6
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U10
      108 NEWTABLE                         R18 0 2
      110 MOVE                             R19 R10
      111 MOVE                             R20 R6
      112 SETLIST                          R18 R19 2 [1]
      114 CALL                             R16 2 1
      115 DUPTABLE                         R17 K19 [{"currentIcon", "filterText", "inputRef", "isOpen", "items", "onCloseMenu", "onFilterTextChanged", "onItemChanged", "onOpenActivated"}]
      116 SETTABLEKS                       R7 R17 K10 ["currentIcon"]
      118 SETTABLEKS                       R10 R17 K11 ["filterText"]
      120 SETTABLEKS                       R14 R17 K12 ["inputRef"]
      122 SETTABLEKS                       R8 R17 K13 ["isOpen"]
      124 SETTABLEKS                       R16 R17 K14 ["items"]
      126 SETTABLEKS                       R13 R17 K15 ["onCloseMenu"]
      128 SETTABLEKS                       R11 R17 K16 ["onFilterTextChanged"]
      130 SETTABLEKS                       R15 R17 K17 ["onItemChanged"]
      132 SETTABLEKS                       R12 R17 K18 ["onOpenActivated"]
      134 RETURN                           R17 1

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
       94 GETTABLEKS                       R11 R1 K13 ["Src"]
       96 GETTABLEKS                       R11 R11 K24 ["Flags"]
       98 GETIMPORT                        R12 K9 [require]
      100 GETTABLEKS                       R13 R11 K25 ["getFFlagIAMDropdownStabilityImprovements"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K9 [require]
      105 GETTABLEKS                       R14 R11 K26 ["getFFlagIAMTelemetry"]
      107 CALL                             R13 1 1
      108 DUPCLOSURE                       R14 K27 [PROTO_8]
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R0
      120 RETURN                           R14 1
