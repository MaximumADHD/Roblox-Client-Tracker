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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GuiState"]
        3 GETIMPORT                        R1 K3 [Enum.GuiState.Hover]
        5 JUMPIFEQ                         R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K4 ["onHovered"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["onHovered"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K3 ["createElement"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["Button"]
       24 DUPTABLE                         R5 K13 [{"text", "variant", "size", "onActivated", "isDisabled", "ref", "testId", "LayoutOrder"}]
       25 GETTABLEKS                       R6 R0 K5 ["text"]
       27 SETTABLEKS                       R6 R5 K5 ["text"]
       29 GETTABLEKS                       R7 R0 K9 ["isDisabled"]
       31 JUMPIFNOT                        R7 ; [+8]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K14 ["Enums"]
       35 GETTABLEKS                       R7 R8 K15 ["ButtonVariant"]
       37 GETTABLEKS                       R6 R7 K16 ["Text"]
       39 JUMP                             ; [+40]
       40 GETTABLEKS                       R7 R0 K17 ["isSelected"]
       42 JUMPIFNOT                        R7 ; [+8]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K14 ["Enums"]
       46 GETTABLEKS                       R7 R8 K15 ["ButtonVariant"]
       48 GETTABLEKS                       R6 R7 K18 ["SubEmphasis"]
       50 JUMP                             ; [+29]
       51 GETTABLEKS                       R7 R0 K19 ["isInRange"]
       53 JUMPIFNOT                        R7 ; [+8]
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R8 R9 K14 ["Enums"]
       57 GETTABLEKS                       R7 R8 K15 ["ButtonVariant"]
       59 GETTABLEKS                       R6 R7 K20 ["Standard"]
       61 JUMP                             ; [+18]
       62 GETTABLEKS                       R7 R0 K21 ["isToday"]
       64 JUMPIFNOT                        R7 ; [+8]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R8 R9 K14 ["Enums"]
       68 GETTABLEKS                       R7 R8 K15 ["ButtonVariant"]
       70 GETTABLEKS                       R6 R7 K22 ["Subtle"]
       72 JUMP                             ; [+7]
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R8 R9 K14 ["Enums"]
       76 GETTABLEKS                       R7 R8 K15 ["ButtonVariant"]
       78 GETTABLEKS                       R6 R7 K16 ["Text"]
       80 SETTABLEKS                       R6 R5 K6 ["variant"]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R8 R9 K14 ["Enums"]
       85 GETTABLEKS                       R7 R8 K23 ["InputSize"]
       87 GETTABLEKS                       R6 R7 K24 ["XSmall"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isSelecting"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["startDate"]
        7 JUMPIFNOT                        R0 ; [+60]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["startDate"]
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
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R0 R1 K6 ["onStartDateChanged"]
       60 GETUPVAL                         R1 1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R0 R1 K7 ["onSelected"]
       66 CALL                             R0 0 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R0 R1 K6 ["onStartDateChanged"]
       71 GETUPVAL                         R1 1
       72 CALL                             R0 1 0
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R0 R1 K8 ["onEndDateChanged"]
       76 GETUPVAL                         R1 1
       77 CALL                             R0 1 0
       78 GETUPVAL                         R1 0
       79 GETTABLEKS                       R0 R1 K7 ["onSelected"]
       81 CALL                             R0 0 0
       82 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isSelecting"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["startDate"]
        7 JUMPIFNOT                        R0 ; [+60]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["startDate"]
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
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R0 R1 K6 ["onEndDateChanged"]
       60 LOADNIL                          R1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R0 R1 K6 ["onEndDateChanged"]
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
       54 LOADK                            R15 K16 [86400]
       55 MUL                              R14 R15 R10
       56 ADD                              R12 R13 R14
       57 CALL                             R11 1 1
       58 MOVE                             R13 R7
       59 GETUPVAL                         R15 3
       60 GETTABLEKS                       R14 R15 K17 ["createElement"]
       62 GETUPVAL                         R16 4
       63 GETTABLEKS                       R15 R16 K18 ["Text"]
       65 DUPTABLE                         R16 K22 [{"tag", "Text", "key", "LayoutOrder"}]
       66 LOADK                            R17 K23 ["size-0-0 auto-xy text-body-small text-no-wrap"]
       67 SETTABLEKS                       R17 R16 K19 ["tag"]
       69 LOADK                            R19 K24 ["dd"]
       70 NAMECALL                         R20 R3 K25 ["getLocale"]
       72 CALL                             R20 1 -1
       73 NAMECALL                         R17 R11 K10 ["FormatLocalTime"]
       75 CALL                             R17 -1 1
       76 SETTABLEKS                       R17 R16 K18 ["Text"]
       78 MOVE                             R17 R2
       79 LOADK                            R18 K26 ["Header"]
       80 CALL                             R17 1 1
       81 SETTABLEKS                       R17 R16 K20 ["key"]
       83 MOVE                             R17 R1
       84 CALL                             R17 0 1
       85 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       87 CALL                             R14 2 -1
       88 FASTCALL                         TABLE_INSERT ; [+2]
       89 GETIMPORT                        R12 K29 [table.insert]
       91 CALL                             R12 -1 0
       92 FORNLOOP                         R8
       93 LOADN                            R10 0
       94 LOADN                            R8 41
       95 LOADN                            R9 1
       96 FORNPREP                         R8
       97 GETIMPORT                        R11 K14 [DateTime.fromUnixTimestamp]
       99 GETTABLEKS                       R13 R5 K15 ["UnixTimestamp"]
      101 LOADK                            R15 K16 [86400]
      102 MUL                              R14 R15 R10
      103 ADD                              R12 R13 R14
      104 CALL                             R11 1 1
      105 NAMECALL                         R13 R11 K30 ["ToLocalTime"]
      107 CALL                             R13 1 1
      108 NAMECALL                         R14 R4 K30 ["ToLocalTime"]
      110 CALL                             R14 1 1
      111 LOADB                            R12 0
      112 GETTABLEKS                       R15 R13 K31 ["Year"]
      114 GETTABLEKS                       R16 R14 K31 ["Year"]
      116 JUMPIFNOTEQ                      R15 R16 ; [+16]
      118 LOADB                            R12 0
      119 GETTABLEKS                       R15 R13 K32 ["Month"]
      121 GETTABLEKS                       R16 R14 K32 ["Month"]
      123 JUMPIFNOTEQ                      R15 R16 ; [+9]
      125 GETTABLEKS                       R15 R13 K33 ["Day"]
      127 GETTABLEKS                       R16 R14 K33 ["Day"]
      129 JUMPIFEQ                         R15 R16 ; [+2]
      131 LOADB                            R12 0 +1
      132 LOADB                            R12 1
      133 LOADB                            R13 0
      134 GETTABLEKS                       R14 R0 K34 ["startDate"]
      136 JUMPIFEQKNIL                     R14 ; [+99]
      138 LOADB                            R13 0
      139 GETTABLEKS                       R14 R0 K35 ["endDate"]
      141 JUMPIFEQKNIL                     R14 ; [+94]
      143 GETTABLEKS                       R14 R0 K34 ["startDate"]
      145 NAMECALL                         R15 R14 K30 ["ToLocalTime"]
      147 CALL                             R15 1 1
      148 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      150 CALL                             R16 1 1
      151 GETTABLEKS                       R17 R15 K31 ["Year"]
      153 GETTABLEKS                       R18 R16 K31 ["Year"]
      155 JUMPIFEQ                         R17 R18 ; [+10]
      157 GETTABLEKS                       R17 R15 K31 ["Year"]
      159 GETTABLEKS                       R18 R16 K31 ["Year"]
      161 JUMPIFLT                         R17 R18 ; [+2]
      163 LOADB                            R13 0 +1
      164 LOADB                            R13 1
      165 JUMP                             ; [+23]
      166 GETTABLEKS                       R17 R15 K32 ["Month"]
      168 GETTABLEKS                       R18 R16 K32 ["Month"]
      170 JUMPIFEQ                         R17 R18 ; [+10]
      172 GETTABLEKS                       R17 R15 K32 ["Month"]
      174 GETTABLEKS                       R18 R16 K32 ["Month"]
      176 JUMPIFLT                         R17 R18 ; [+2]
      178 LOADB                            R13 0 +1
      179 LOADB                            R13 1
      180 JUMP                             ; [+8]
      181 GETTABLEKS                       R17 R15 K33 ["Day"]
      183 GETTABLEKS                       R18 R16 K33 ["Day"]
      185 JUMPIFLT                         R17 R18 ; [+2]
      187 LOADB                            R13 0 +1
      188 LOADB                            R13 1
      189 JUMPIFNOT                        R13 ; [+46]
      190 GETTABLEKS                       R14 R0 K35 ["endDate"]
      192 NAMECALL                         R15 R11 K30 ["ToLocalTime"]
      194 CALL                             R15 1 1
      195 NAMECALL                         R16 R14 K30 ["ToLocalTime"]
      197 CALL                             R16 1 1
      198 GETTABLEKS                       R17 R15 K31 ["Year"]
      200 GETTABLEKS                       R18 R16 K31 ["Year"]
      202 JUMPIFEQ                         R17 R18 ; [+10]
      204 GETTABLEKS                       R17 R15 K31 ["Year"]
      206 GETTABLEKS                       R18 R16 K31 ["Year"]
      208 JUMPIFLT                         R17 R18 ; [+2]
      210 LOADB                            R13 0 +1
      211 LOADB                            R13 1
      212 JUMP                             ; [+23]
      213 GETTABLEKS                       R17 R15 K32 ["Month"]
      215 GETTABLEKS                       R18 R16 K32 ["Month"]
      217 JUMPIFEQ                         R17 R18 ; [+10]
      219 GETTABLEKS                       R17 R15 K32 ["Month"]
      221 GETTABLEKS                       R18 R16 K32 ["Month"]
      223 JUMPIFLT                         R17 R18 ; [+2]
      225 LOADB                            R13 0 +1
      226 LOADB                            R13 1
      227 JUMP                             ; [+8]
      228 GETTABLEKS                       R17 R15 K33 ["Day"]
      230 GETTABLEKS                       R18 R16 K33 ["Day"]
      232 JUMPIFLT                         R17 R18 ; [+2]
      234 LOADB                            R13 0 +1
      235 LOADB                            R13 1
      236 GETTABLEKS                       R15 R0 K34 ["startDate"]
      238 JUMPIFEQKNIL                     R15 ; [+32]
      240 GETTABLEKS                       R15 R0 K34 ["startDate"]
      242 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      244 CALL                             R16 1 1
      245 NAMECALL                         R17 R15 K30 ["ToLocalTime"]
      247 CALL                             R17 1 1
      248 LOADB                            R14 0
      249 GETTABLEKS                       R18 R16 K31 ["Year"]
      251 GETTABLEKS                       R19 R17 K31 ["Year"]
      253 JUMPIFNOTEQ                      R18 R19 ; [+16]
      255 LOADB                            R14 0
      256 GETTABLEKS                       R18 R16 K32 ["Month"]
      258 GETTABLEKS                       R19 R17 K32 ["Month"]
      260 JUMPIFNOTEQ                      R18 R19 ; [+9]
      262 GETTABLEKS                       R18 R16 K33 ["Day"]
      264 GETTABLEKS                       R19 R17 K33 ["Day"]
      266 JUMPIFEQ                         R18 R19 ; [+2]
      268 LOADB                            R14 0 +1
      269 LOADB                            R14 1
      270 JUMPIF                           R14 ; [+39]
      271 LOADB                            R14 0
      272 GETTABLEKS                       R15 R0 K35 ["endDate"]
      274 JUMPIFEQKNIL                     R15 ; [+35]
      276 GETTABLEKS                       R15 R0 K35 ["endDate"]
      278 NAMECALL                         R16 R11 K30 ["ToLocalTime"]
      280 CALL                             R16 1 1
      281 NAMECALL                         R17 R15 K30 ["ToLocalTime"]
      283 CALL                             R17 1 1
      284 LOADB                            R14 0
      285 GETTABLEKS                       R18 R16 K31 ["Year"]
      287 GETTABLEKS                       R19 R17 K31 ["Year"]
      289 JUMPIFNOTEQ                      R18 R19 ; [+16]
      291 LOADB                            R14 0
      292 GETTABLEKS                       R18 R16 K32 ["Month"]
      294 GETTABLEKS                       R19 R17 K32 ["Month"]
      296 JUMPIFNOTEQ                      R18 R19 ; [+9]
      298 GETTABLEKS                       R18 R16 K33 ["Day"]
      300 GETTABLEKS                       R19 R17 K33 ["Day"]
      302 JUMPIFEQ                         R18 R19 ; [+2]
      304 LOADB                            R14 0 +1
      305 LOADB                            R14 1
      306 JUMPIFNOT                        R14 ; [+3]
      307 GETTABLEKS                       R15 R0 K36 ["isSelecting"]
      309 NOT                              R14 R15
      310 NAMECALL                         R17 R11 K30 ["ToLocalTime"]
      312 CALL                             R17 1 1
      313 NAMECALL                         R18 R6 K30 ["ToLocalTime"]
      315 CALL                             R18 1 1
      316 LOADB                            R16 0
      317 GETTABLEKS                       R19 R17 K31 ["Year"]
      319 GETTABLEKS                       R20 R18 K31 ["Year"]
      321 JUMPIFNOTEQ                      R19 R20 ; [+9]
      323 GETTABLEKS                       R19 R17 K32 ["Month"]
      325 GETTABLEKS                       R20 R18 K32 ["Month"]
      327 JUMPIFEQ                         R19 R20 ; [+2]
      329 LOADB                            R16 0 +1
      330 LOADB                            R16 1
      331 NOT                              R15 R16
      332 MOVE                             R17 R7
      333 GETUPVAL                         R19 3
      334 GETTABLEKS                       R18 R19 K17 ["createElement"]
      336 GETUPVAL                         R19 5
      337 DUPTABLE                         R20 K44 [{"text", "isToday", "isInRange", "isSelected", "isDisabled", "onActivated", "onHovered", "key", "LayoutOrder"}]
      338 LOADK                            R23 K45 ["D"]
      339 NAMECALL                         R24 R3 K25 ["getLocale"]
      341 CALL                             R24 1 -1
      342 NAMECALL                         R21 R11 K10 ["FormatLocalTime"]
      344 CALL                             R21 -1 1
      345 SETTABLEKS                       R21 R20 K37 ["text"]
      347 SETTABLEKS                       R12 R20 K38 ["isToday"]
      349 SETTABLEKS                       R13 R20 K39 ["isInRange"]
      351 SETTABLEKS                       R14 R20 K40 ["isSelected"]
      353 SETTABLEKS                       R15 R20 K41 ["isDisabled"]
      355 NEWCLOSURE                       R21 P0
      356 CAPTURE                          VAL R0
      357 CAPTURE                          VAL R11
      358 SETTABLEKS                       R21 R20 K42 ["onActivated"]
      360 NEWCLOSURE                       R21 P1
      361 CAPTURE                          VAL R0
      362 CAPTURE                          VAL R11
      363 SETTABLEKS                       R21 R20 K43 ["onHovered"]
      365 MOVE                             R21 R2
      366 LOADK                            R22 K46 ["Body"]
      367 CALL                             R21 1 1
      368 SETTABLEKS                       R21 R20 K20 ["key"]
      370 MOVE                             R21 R1
      371 CALL                             R21 0 1
      372 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      374 CALL                             R18 2 -1
      375 FASTCALL                         TABLE_INSERT ; [+2]
      376 GETIMPORT                        R16 K29 [table.insert]
      378 CALL                             R16 -1 0
      379 FORNLOOP                         R8
      380 GETUPVAL                         R9 3
      381 GETTABLEKS                       R8 R9 K17 ["createElement"]
      383 GETUPVAL                         R10 4
      384 GETTABLEKS                       R9 R10 K47 ["View"]
      386 DUPTABLE                         R10 K48 [{"tag", "LayoutOrder"}]
      387 LOADK                            R11 K49 ["size-0-0 auto-xy padding-small"]
      388 SETTABLEKS                       R11 R10 K19 ["tag"]
      390 GETTABLEKS                       R11 R0 K21 ["LayoutOrder"]
      392 SETTABLEKS                       R11 R10 K21 ["LayoutOrder"]
      394 DUPTABLE                         R11 K51 [{"Layout"}]
      395 GETUPVAL                         R13 3
      396 GETTABLEKS                       R12 R13 K17 ["createElement"]
      398 LOADK                            R13 K52 ["UIGridLayout"]
      399 DUPTABLE                         R14 K60 [{"FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "CellSize", "CellPadding"}]
      400 GETIMPORT                        R15 K63 [Enum.FillDirection.Horizontal]
      402 SETTABLEKS                       R15 R14 K53 ["FillDirection"]
      404 LOADN                            R15 7
      405 SETTABLEKS                       R15 R14 K54 ["FillDirectionMaxCells"]
      407 GETIMPORT                        R15 K65 [Enum.HorizontalAlignment.Left]
      409 SETTABLEKS                       R15 R14 K55 ["HorizontalAlignment"]
      411 GETIMPORT                        R15 K67 [Enum.VerticalAlignment.Top]
      413 SETTABLEKS                       R15 R14 K56 ["VerticalAlignment"]
      415 GETIMPORT                        R15 K68 [Enum.SortOrder.LayoutOrder]
      417 SETTABLEKS                       R15 R14 K57 ["SortOrder"]
      419 GETUPVAL                         R15 6
      420 SETTABLEKS                       R15 R14 K58 ["CellSize"]
      422 GETUPVAL                         R15 7
      423 SETTABLEKS                       R15 R14 K59 ["CellPadding"]
      425 CALL                             R12 2 1
      426 SETTABLEKS                       R12 R11 K50 ["Layout"]
      428 MOVE                             R12 R7
      429 CALL                             R8 4 -1
      430 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETTABLEKS                       R8 R2 K14 ["createUniqueKey"]
       43 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       45 LOADN                            R10 31
       46 LOADN                            R11 31
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
