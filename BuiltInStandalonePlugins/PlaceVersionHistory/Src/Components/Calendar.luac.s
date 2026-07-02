PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.fromLocalTime]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 LOADK                            R6 K3 ["d"]
        6 LOADK                            R7 K4 ["en-us"]
        7 NAMECALL                         R4 R2 K5 ["FormatLocalTime"]
        9 CALL                             R4 3 -1
       10 FASTCALL                         TONUMBER ; [+2]
       11 GETIMPORT                        R3 K7 [tonumber]
       13 CALL                             R3 -1 1
       14 GETIMPORT                        R4 K9 [DateTime.fromUnixTimestamp]
       16 GETTABLEKS                       R6 R2 K10 ["UnixTimestamp"]
       18 MULK                             R7 R3 K11 [86400]
       19 SUB                              R5 R6 R7
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["ToLocalTime"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R1 K0 ["ToLocalTime"]
        5 CALL                             R3 1 1
        6 LOADB                            R4 0
        7 GETTABLEKS                       R5 R2 K1 ["Year"]
        9 GETTABLEKS                       R6 R3 K1 ["Year"]
       11 JUMPIFNOTEQ                      R5 R6 ; [+9]
       13 GETTABLEKS                       R5 R2 K2 ["Month"]
       15 GETTABLEKS                       R6 R3 K2 ["Month"]
       17 JUMPIFEQ                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["ToLocalTime"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R1 K0 ["ToLocalTime"]
        5 CALL                             R3 1 1
        6 LOADB                            R4 0
        7 GETTABLEKS                       R5 R2 K1 ["Year"]
        9 GETTABLEKS                       R6 R3 K1 ["Year"]
       11 JUMPIFNOTEQ                      R5 R6 ; [+16]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R2 K2 ["Month"]
       16 GETTABLEKS                       R6 R3 K2 ["Month"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+9]
       20 GETTABLEKS                       R5 R2 K3 ["Day"]
       22 GETTABLEKS                       R6 R3 K3 ["Day"]
       24 JUMPIFEQ                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 RETURN                           R4 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["ToLocalTime"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R1 K0 ["ToLocalTime"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R2 K1 ["Year"]
        8 GETTABLEKS                       R5 R3 K1 ["Year"]
       10 JUMPIFEQ                         R4 R5 ; [+10]
       12 GETTABLEKS                       R5 R2 K1 ["Year"]
       14 GETTABLEKS                       R6 R3 K1 ["Year"]
       16 JUMPIFLT                         R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 GETTABLEKS                       R4 R2 K2 ["Month"]
       23 GETTABLEKS                       R5 R3 K2 ["Month"]
       25 JUMPIFEQ                         R4 R5 ; [+10]
       27 GETTABLEKS                       R5 R2 K2 ["Month"]
       29 GETTABLEKS                       R6 R3 K2 ["Month"]
       31 JUMPIFLT                         R5 R6 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 RETURN                           R4 1
       36 GETTABLEKS                       R5 R2 K3 ["Day"]
       38 GETTABLEKS                       R6 R3 K3 ["Day"]
       40 JUMPIFLT                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Hover]
        5 JUMPIFEQ                         R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K4 ["onHovered"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 LOADK                            R4 K2 ["GuiState"]
       15 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 NAMECALL                         R2 R2 K4 ["Connect"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K0 ["current"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["onHovered"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["createElement"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["Button"]
       24 DUPTABLE                         R5 K13 [{"text", "variant", "size", "onActivated", "isDisabled", "ref", "testId", "LayoutOrder"}]
       25 GETTABLEKS                       R6 R0 K5 ["text"]
       27 SETTABLEKS                       R6 R5 K5 ["text"]
       29 GETTABLEKS                       R7 R0 K9 ["isDisabled"]
       31 JUMPIFNOT                        R7 ; [+8]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K14 ["Enums"]
       35 GETTABLEKS                       R6 R6 K15 ["ButtonVariant"]
       37 GETTABLEKS                       R6 R6 K16 ["Text"]
       39 JUMP                             ; [+40]
       40 GETTABLEKS                       R7 R0 K17 ["isSelected"]
       42 JUMPIFNOT                        R7 ; [+8]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K14 ["Enums"]
       46 GETTABLEKS                       R6 R6 K15 ["ButtonVariant"]
       48 GETTABLEKS                       R6 R6 K18 ["SubEmphasis"]
       50 JUMP                             ; [+29]
       51 GETTABLEKS                       R7 R0 K19 ["isInRange"]
       53 JUMPIFNOT                        R7 ; [+8]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K14 ["Enums"]
       57 GETTABLEKS                       R6 R6 K15 ["ButtonVariant"]
       59 GETTABLEKS                       R6 R6 K20 ["Standard"]
       61 JUMP                             ; [+18]
       62 GETTABLEKS                       R7 R0 K21 ["isToday"]
       64 JUMPIFNOT                        R7 ; [+8]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K14 ["Enums"]
       68 GETTABLEKS                       R6 R6 K15 ["ButtonVariant"]
       70 GETTABLEKS                       R6 R6 K22 ["Subtle"]
       72 JUMP                             ; [+7]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K14 ["Enums"]
       76 GETTABLEKS                       R6 R6 K15 ["ButtonVariant"]
       78 GETTABLEKS                       R6 R6 K16 ["Text"]
       80 SETTABLEKS                       R6 R5 K6 ["variant"]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K14 ["Enums"]
       85 GETTABLEKS                       R6 R6 K23 ["InputSize"]
       87 GETTABLEKS                       R6 R6 K24 ["XSmall"]
       89 SETTABLEKS                       R6 R5 K7 ["size"]
       91 GETTABLEKS                       R6 R0 K8 ["onActivated"]
       93 SETTABLEKS                       R6 R5 K8 ["onActivated"]
       95 GETTABLEKS                       R6 R0 K9 ["isDisabled"]
       97 SETTABLEKS                       R6 R5 K9 ["isDisabled"]
       99 SETTABLEKS                       R2 R5 K10 ["ref"]
      101 GETTABLEKS                       R7 R0 K9 ["isDisabled"]
      103 JUMPIFNOT                        R7 ; [+2]
      104 LOADNIL                          R6
      105 JUMP                             ; [+7]
      106 LOADK                            R7 K25 ["--calendar-day-%*"]
      107 GETTABLEKS                       R9 R0 K5 ["text"]
      109 NAMECALL                         R7 R7 K26 ["format"]
      111 CALL                             R7 2 1
      112 MOVE                             R6 R7
      113 SETTABLEKS                       R6 R5 K11 ["testId"]
      115 GETTABLEKS                       R6 R0 K12 ["LayoutOrder"]
      117 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
      119 CALL                             R3 2 -1
      120 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isSelecting"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["startDate"]
        7 JUMPIFNOT                        R0 ; [+60]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["startDate"]
       12 NAMECALL                         R3 R1 K2 ["ToLocalTime"]
       14 CALL                             R3 1 1
       15 NAMECALL                         R4 R2 K2 ["ToLocalTime"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R3 K3 ["Year"]
       20 GETTABLEKS                       R6 R4 K3 ["Year"]
       22 JUMPIFEQ                         R5 R6 ; [+10]
       24 GETTABLEKS                       R5 R3 K3 ["Year"]
       26 GETTABLEKS                       R6 R4 K3 ["Year"]
       28 JUMPIFLT                         R5 R6 ; [+2]
       30 LOADB                            R0 0 +1
       31 LOADB                            R0 1
       32 JUMP                             ; [+23]
       33 GETTABLEKS                       R5 R3 K4 ["Month"]
       35 GETTABLEKS                       R6 R4 K4 ["Month"]
       37 JUMPIFEQ                         R5 R6 ; [+10]
       39 GETTABLEKS                       R5 R3 K4 ["Month"]
       41 GETTABLEKS                       R6 R4 K4 ["Month"]
       43 JUMPIFLT                         R5 R6 ; [+2]
       45 LOADB                            R0 0 +1
       46 LOADB                            R0 1
       47 JUMP                             ; [+8]
       48 GETTABLEKS                       R5 R3 K5 ["Day"]
       50 GETTABLEKS                       R6 R4 K5 ["Day"]
       52 JUMPIFLT                         R5 R6 ; [+2]
       54 LOADB                            R0 0 +1
       55 LOADB                            R0 1
       56 JUMPIFNOT                        R0 ; [+6]
       57 GETUPVAL                         R0 0
       58 GETTABLEKS                       R0 R0 K6 ["onStartDateChanged"]
       60 GETUPVAL                         R1 1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R0 0
       64 GETTABLEKS                       R0 R0 K7 ["onSelected"]
       66 CALL                             R0 0 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R0 0
       69 GETTABLEKS                       R0 R0 K6 ["onStartDateChanged"]
       71 GETUPVAL                         R1 1
       72 CALL                             R0 1 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K8 ["onEndDateChanged"]
       76 GETUPVAL                         R1 1
       77 CALL                             R0 1 0
       78 GETUPVAL                         R0 0
       79 GETTABLEKS                       R0 R0 K7 ["onSelected"]
       81 CALL                             R0 0 0
       82 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isSelecting"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["startDate"]
        7 JUMPIFNOT                        R0 ; [+60]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["startDate"]
       12 NAMECALL                         R3 R1 K2 ["ToLocalTime"]
       14 CALL                             R3 1 1
       15 NAMECALL                         R4 R2 K2 ["ToLocalTime"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R3 K3 ["Year"]
       20 GETTABLEKS                       R6 R4 K3 ["Year"]
       22 JUMPIFEQ                         R5 R6 ; [+10]
       24 GETTABLEKS                       R5 R3 K3 ["Year"]
       26 GETTABLEKS                       R6 R4 K3 ["Year"]
       28 JUMPIFLT                         R5 R6 ; [+2]
       30 LOADB                            R0 0 +1
       31 LOADB                            R0 1
       32 JUMP                             ; [+23]
       33 GETTABLEKS                       R5 R3 K4 ["Month"]
       35 GETTABLEKS                       R6 R4 K4 ["Month"]
       37 JUMPIFEQ                         R5 R6 ; [+10]
       39 GETTABLEKS                       R5 R3 K4 ["Month"]
       41 GETTABLEKS                       R6 R4 K4 ["Month"]
       43 JUMPIFLT                         R5 R6 ; [+2]
       45 LOADB                            R0 0 +1
       46 LOADB                            R0 1
       47 JUMP                             ; [+8]
       48 GETTABLEKS                       R5 R3 K5 ["Day"]
       50 GETTABLEKS                       R6 R4 K5 ["Day"]
       52 JUMPIFLT                         R5 R6 ; [+2]
       54 LOADB                            R0 0 +1
       55 LOADB                            R0 1
       56 JUMPIFNOT                        R0 ; [+6]
       57 GETUPVAL                         R0 0
       58 GETTABLEKS                       R0 R0 K6 ["onEndDateChanged"]
       60 LOADNIL                          R1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R0 0
       64 GETTABLEKS                       R0 R0 K6 ["onEndDateChanged"]
       66 GETUPVAL                         R1 1
       67 CALL                             R0 1 0
       68 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 GETIMPORT                        R4 K3 [DateTime.now]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R6 R0 K4 ["year"]
       13 GETTABLEKS                       R7 R0 K5 ["month"]
       15 GETIMPORT                        R8 K7 [DateTime.fromLocalTime]
       17 MOVE                             R9 R6
       18 MOVE                             R10 R7
       19 CALL                             R8 2 1
       20 LOADK                            R12 K8 ["d"]
       21 LOADK                            R13 K9 ["en-us"]
       22 NAMECALL                         R10 R8 K10 ["FormatLocalTime"]
       24 CALL                             R10 3 -1
       25 FASTCALL                         TONUMBER ; [+2]
       26 GETIMPORT                        R9 K12 [tonumber]
       28 CALL                             R9 -1 1
       29 GETIMPORT                        R10 K14 [DateTime.fromUnixTimestamp]
       31 GETTABLEKS                       R12 R8 K15 ["UnixTimestamp"]
       33 MULK                             R13 R9 K16 [86400]
       34 SUB                              R11 R12 R13
       35 CALL                             R10 1 1
       36 MOVE                             R5 R10
       37 GETIMPORT                        R6 K7 [DateTime.fromLocalTime]
       39 GETTABLEKS                       R7 R0 K4 ["year"]
       41 GETTABLEKS                       R8 R0 K5 ["month"]
       43 CALL                             R6 2 1
       44 NEWTABLE                         R7 0 0
       46 LOADN                            R10 0
       47 LOADN                            R8 6
       48 LOADN                            R9 1
       49 FORNPREP                         R8
       50 GETIMPORT                        R11 K14 [DateTime.fromUnixTimestamp]
       52 GETTABLEKS                       R13 R5 K15 ["UnixTimestamp"]
       54 MULK                             R14 R10 K16 [86400]
       55 ADD                              R12 R13 R14
       56 CALL                             R11 1 1
       57 MOVE                             R13 R7
       58 GETUPVAL                         R14 3
       59 GETTABLEKS                       R14 R14 K17 ["createElement"]
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R15 R15 K18 ["Text"]
       64 DUPTABLE                         R16 K23 [{["tag"] = "size-0-0 auto-xy text-body-small text-no-wrap", ["Text"], ["key"], ["LayoutOrder"]}]
       65 LOADK                            R19 K24 ["dd"]
       66 NAMECALL                         R20 R3 K25 ["getLocale"]
       68 CALL                             R20 1 -1
       69 NAMECALL                         R17 R11 K10 ["FormatLocalTime"]
       71 CALL                             R17 -1 1
       72 SETTABLEKS                       R17 R16 K18 ["Text"]
       74 MOVE                             R17 R2
       75 LOADK                            R18 K26 ["Header"]
       76 CALL                             R17 1 1
       77 SETTABLEKS                       R17 R16 K21 ["key"]
       79 MOVE                             R17 R1
       80 CALL                             R17 0 1
       81 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
       83 CALL                             R14 2 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R12 K29 [table.insert]
       87 CALL                             R12 -1 0
       88 FORNLOOP                         R8
       89 LOADN                            R10 0
       90 LOADN                            R8 41
       91 LOADN                            R9 1
       92 FORNPREP                         R8
       93 GETIMPORT                        R11 K14 [DateTime.fromUnixTimestamp]
       95 GETTABLEKS                       R13 R5 K15 ["UnixTimestamp"]
       97 MULK                             R14 R10 K16 [86400]
       98 ADD                              R12 R13 R14
       99 CALL                             R11 1 1
      100 NAMECALL                         R13 R11 K30 ["ToLocalTime"]
      102 CALL                             R13 1 1
      103 NAMECALL                         R14 R4 K30 ["ToLocalTime"]
      105 CALL                             R14 1 1
      106 LOADB                            R12 0
      107 GETTABLEKS                       R15 R13 K31 ["Year"]
      109 GETTABLEKS                       R16 R14 K31 ["Year"]
      111 JUMPIFNOTEQ                      R15 R16 ; [+16]
      113 LOADB                            R12 0
      114 GETTABLEKS                       R15 R13 K32 ["Month"]
      116 GETTABLEKS                       R16 R14 K32 ["Month"]
      118 JUMPIFNOTEQ                      R15 R16 ; [+9]
      120 GETTABLEKS                       R15 R13 K33 ["Day"]
      122 GETTABLEKS                       R16 R14 K33 ["Day"]
      124 JUMPIFEQ                         R15 R16 ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 LOADB                            R13 0
      129 GETTABLEKS                       R14 R0 K34 ["startDate"]
      131 JUMPIFEQKNIL                     R14 ; [+99]
      133 LOADB                            R13 0
      134 GETTABLEKS                       R14 R0 K35 ["endDate"]
      136 JUMPIFEQKNIL                     R14 ; [+94]
      138 GETTABLEKS                       R14 R0 K34 ["startDate"]
      140 NAMECALL                         R15 R14 K30 ["ToLocalTime"]
      142 CALL                             R15 1 1
      143 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      145 CALL                             R16 1 1
      146 GETTABLEKS                       R17 R15 K31 ["Year"]
      148 GETTABLEKS                       R18 R16 K31 ["Year"]
      150 JUMPIFEQ                         R17 R18 ; [+10]
      152 GETTABLEKS                       R17 R15 K31 ["Year"]
      154 GETTABLEKS                       R18 R16 K31 ["Year"]
      156 JUMPIFLT                         R17 R18 ; [+2]
      158 LOADB                            R13 0 +1
      159 LOADB                            R13 1
      160 JUMP                             ; [+23]
      161 GETTABLEKS                       R17 R15 K32 ["Month"]
      163 GETTABLEKS                       R18 R16 K32 ["Month"]
      165 JUMPIFEQ                         R17 R18 ; [+10]
      167 GETTABLEKS                       R17 R15 K32 ["Month"]
      169 GETTABLEKS                       R18 R16 K32 ["Month"]
      171 JUMPIFLT                         R17 R18 ; [+2]
      173 LOADB                            R13 0 +1
      174 LOADB                            R13 1
      175 JUMP                             ; [+8]
      176 GETTABLEKS                       R17 R15 K33 ["Day"]
      178 GETTABLEKS                       R18 R16 K33 ["Day"]
      180 JUMPIFLT                         R17 R18 ; [+2]
      182 LOADB                            R13 0 +1
      183 LOADB                            R13 1
      184 JUMPIFNOT                        R13 ; [+46]
      185 GETTABLEKS                       R14 R0 K35 ["endDate"]
      187 NAMECALL                         R15 R11 K30 ["ToLocalTime"]
      189 CALL                             R15 1 1
      190 NAMECALL                         R16 R14 K30 ["ToLocalTime"]
      192 CALL                             R16 1 1
      193 GETTABLEKS                       R17 R15 K31 ["Year"]
      195 GETTABLEKS                       R18 R16 K31 ["Year"]
      197 JUMPIFEQ                         R17 R18 ; [+10]
      199 GETTABLEKS                       R17 R15 K31 ["Year"]
      201 GETTABLEKS                       R18 R16 K31 ["Year"]
      203 JUMPIFLT                         R17 R18 ; [+2]
      205 LOADB                            R13 0 +1
      206 LOADB                            R13 1
      207 JUMP                             ; [+23]
      208 GETTABLEKS                       R17 R15 K32 ["Month"]
      210 GETTABLEKS                       R18 R16 K32 ["Month"]
      212 JUMPIFEQ                         R17 R18 ; [+10]
      214 GETTABLEKS                       R17 R15 K32 ["Month"]
      216 GETTABLEKS                       R18 R16 K32 ["Month"]
      218 JUMPIFLT                         R17 R18 ; [+2]
      220 LOADB                            R13 0 +1
      221 LOADB                            R13 1
      222 JUMP                             ; [+8]
      223 GETTABLEKS                       R17 R15 K33 ["Day"]
      225 GETTABLEKS                       R18 R16 K33 ["Day"]
      227 JUMPIFLT                         R17 R18 ; [+2]
      229 LOADB                            R13 0 +1
      230 LOADB                            R13 1
      231 GETTABLEKS                       R15 R0 K34 ["startDate"]
      233 JUMPIFEQKNIL                     R15 ; [+32]
      235 GETTABLEKS                       R15 R0 K34 ["startDate"]
      237 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      239 CALL                             R16 1 1
      240 NAMECALL                         R17 R15 K30 ["ToLocalTime"]
      242 CALL                             R17 1 1
      243 LOADB                            R14 0
      244 GETTABLEKS                       R18 R16 K31 ["Year"]
      246 GETTABLEKS                       R19 R17 K31 ["Year"]
      248 JUMPIFNOTEQ                      R18 R19 ; [+16]
      250 LOADB                            R14 0
      251 GETTABLEKS                       R18 R16 K32 ["Month"]
      253 GETTABLEKS                       R19 R17 K32 ["Month"]
      255 JUMPIFNOTEQ                      R18 R19 ; [+9]
      257 GETTABLEKS                       R18 R16 K33 ["Day"]
      259 GETTABLEKS                       R19 R17 K33 ["Day"]
      261 JUMPIFEQ                         R18 R19 ; [+2]
      263 LOADB                            R14 0 +1
      264 LOADB                            R14 1
      265 JUMPIF                           R14 ; [+39]
      266 LOADB                            R14 0
      267 GETTABLEKS                       R15 R0 K35 ["endDate"]
      269 JUMPIFEQKNIL                     R15 ; [+35]
      271 GETTABLEKS                       R15 R0 K35 ["endDate"]
      273 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      275 CALL                             R16 1 1
      276 NAMECALL                         R17 R15 K30 ["ToLocalTime"]
      278 CALL                             R17 1 1
      279 LOADB                            R14 0
      280 GETTABLEKS                       R18 R16 K31 ["Year"]
      282 GETTABLEKS                       R19 R17 K31 ["Year"]
      284 JUMPIFNOTEQ                      R18 R19 ; [+16]
      286 LOADB                            R14 0
      287 GETTABLEKS                       R18 R16 K32 ["Month"]
      289 GETTABLEKS                       R19 R17 K32 ["Month"]
      291 JUMPIFNOTEQ                      R18 R19 ; [+9]
      293 GETTABLEKS                       R18 R16 K33 ["Day"]
      295 GETTABLEKS                       R19 R17 K33 ["Day"]
      297 JUMPIFEQ                         R18 R19 ; [+2]
      299 LOADB                            R14 0 +1
      300 LOADB                            R14 1
      301 JUMPIFNOT                        R14 ; [+3]
      302 GETTABLEKS                       R15 R0 K36 ["isSelecting"]
      304 NOT                              R14 R15
      305 NAMECALL                         R17 R11 K30 ["ToLocalTime"]
      307 CALL                             R17 1 1
      308 NAMECALL                         R18 R6 K30 ["ToLocalTime"]
      310 CALL                             R18 1 1
      311 LOADB                            R16 0
      312 GETTABLEKS                       R19 R17 K31 ["Year"]
      314 GETTABLEKS                       R20 R18 K31 ["Year"]
      316 JUMPIFNOTEQ                      R19 R20 ; [+9]
      318 GETTABLEKS                       R19 R17 K32 ["Month"]
      320 GETTABLEKS                       R20 R18 K32 ["Month"]
      322 JUMPIFEQ                         R19 R20 ; [+2]
      324 LOADB                            R16 0 +1
      325 LOADB                            R16 1
      326 NOT                              R15 R16
      327 MOVE                             R17 R7
      328 GETUPVAL                         R18 3
      329 GETTABLEKS                       R18 R18 K17 ["createElement"]
      331 GETUPVAL                         R19 5
      332 DUPTABLE                         R20 K44 [{"text", "isToday", "isInRange", "isSelected", "isDisabled", "onActivated", "onHovered", "key", "LayoutOrder"}]
      333 LOADK                            R23 K45 ["D"]
      334 NAMECALL                         R24 R3 K25 ["getLocale"]
      336 CALL                             R24 1 -1
      337 NAMECALL                         R21 R11 K10 ["FormatLocalTime"]
      339 CALL                             R21 -1 1
      340 SETTABLEKS                       R21 R20 K37 ["text"]
      342 SETTABLEKS                       R12 R20 K38 ["isToday"]
      344 SETTABLEKS                       R13 R20 K39 ["isInRange"]
      346 SETTABLEKS                       R14 R20 K40 ["isSelected"]
      348 SETTABLEKS                       R15 R20 K41 ["isDisabled"]
      350 NEWCLOSURE                       R21 P0
      351 CAPTURE                          VAL R0
      352 CAPTURE                          VAL R11
      353 SETTABLEKS                       R21 R20 K42 ["onActivated"]
      355 NEWCLOSURE                       R21 P1
      356 CAPTURE                          VAL R0
      357 CAPTURE                          VAL R11
      358 SETTABLEKS                       R21 R20 K43 ["onHovered"]
      360 MOVE                             R21 R2
      361 LOADK                            R22 K46 ["Body"]
      362 CALL                             R21 1 1
      363 SETTABLEKS                       R21 R20 K21 ["key"]
      365 MOVE                             R21 R1
      366 CALL                             R21 0 1
      367 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      369 CALL                             R18 2 -1
      370 FASTCALL                         TABLE_INSERT ; [+2]
      371 GETIMPORT                        R16 K29 [table.insert]
      373 CALL                             R16 -1 0
      374 FORNLOOP                         R8
      375 GETUPVAL                         R8 3
      376 GETTABLEKS                       R8 R8 K17 ["createElement"]
      378 GETUPVAL                         R9 4
      379 GETTABLEKS                       R9 R9 K47 ["View"]
      381 DUPTABLE                         R10 K49 [{["tag"] = "size-0-0 auto-xy padding-small", ["LayoutOrder"]}]
      382 GETTABLEKS                       R11 R0 K22 ["LayoutOrder"]
      384 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      386 DUPTABLE                         R11 K51 [{"Layout"}]
      387 GETUPVAL                         R12 3
      388 GETTABLEKS                       R12 R12 K17 ["createElement"]
      390 LOADK                            R13 K52 ["UIGridLayout"]
      391 DUPTABLE                         R14 K61 [{["FillDirection"], ["FillDirectionMaxCells"] = 7, ["HorizontalAlignment"], ["VerticalAlignment"], ["SortOrder"], ["CellSize"], ["CellPadding"]}]
      392 GETIMPORT                        R15 K64 [Enum.FillDirection.Horizontal]
      394 SETTABLEKS                       R15 R14 K53 ["FillDirection"]
      396 GETIMPORT                        R15 K66 [Enum.HorizontalAlignment.Left]
      398 SETTABLEKS                       R15 R14 K56 ["HorizontalAlignment"]
      400 GETIMPORT                        R15 K68 [Enum.VerticalAlignment.Top]
      402 SETTABLEKS                       R15 R14 K57 ["VerticalAlignment"]
      404 GETIMPORT                        R15 K69 [Enum.SortOrder.LayoutOrder]
      406 SETTABLEKS                       R15 R14 K58 ["SortOrder"]
      408 GETUPVAL                         R15 6
      409 SETTABLEKS                       R15 R14 K59 ["CellSize"]
      411 GETUPVAL                         R15 7
      412 SETTABLEKS                       R15 R14 K60 ["CellPadding"]
      414 CALL                             R12 2 1
      415 SETTABLEKS                       R12 R11 K50 ["Layout"]
      417 MOVE                             R12 R7
      418 CALL                             R8 4 -1
      419 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETTABLEKS                       R8 R2 K14 ["createUniqueKey"]
       43 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       45 LOADN                            R10 32
       46 LOADN                            R11 32
       47 CALL                             R9 2 1
       48 GETIMPORT                        R10 K17 [UDim2.fromOffset]
       50 LOADN                            R11 1
       51 LOADN                            R12 1
       52 CALL                             R10 2 1
       53 DUPCLOSURE                       R11 K18 [PROTO_0]
       54 DUPCLOSURE                       R12 K19 [PROTO_1]
       55 DUPCLOSURE                       R13 K20 [PROTO_2]
       56 DUPCLOSURE                       R14 K21 [PROTO_3]
       57 DUPCLOSURE                       R15 K22 [PROTO_6]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R16 K23 [PROTO_9]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R15
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 RETURN                           R16 1
