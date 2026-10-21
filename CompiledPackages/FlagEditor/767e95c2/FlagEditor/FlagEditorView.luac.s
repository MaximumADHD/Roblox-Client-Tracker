PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["id"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getFFlagDebugFlagEditorLogging"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 MOVE                             R1 R0
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["GetFlagId"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"text", "number"}]
        9 SETTABLEKS                       R1 R2 K5 ["text"]
       11 FASTCALL1                        TONUMBER R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K9 [tonumber]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K6 ["number"]
       18 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sortKeys"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Name"]
        6 GETTABLE                         R1 R2 R3
        7 GETTABLEKS                       R1 R1 K2 ["text"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["sortKeys"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["Name"]
       15 GETTABLE                         R2 R3 R4
       16 GETTABLEKS                       R2 R2 K2 ["text"]
       18 JUMPIFLT                         R1 R2 ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["Override"]
        3 JUMPIFNOTEQ                      R2 R6 ; [+5]
        5 GETTABLEKS                       R6 R0 K1 ["id"]
        7 GETTABLE                         R5 R3 R6
        8 JUMP                             ; [+3]
        9 GETTABLEKS                       R6 R0 K2 ["sortKeys"]
       11 GETTABLE                         R5 R6 R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K0 ["Override"]
       15 JUMPIFNOTEQ                      R2 R7 ; [+5]
       17 GETTABLEKS                       R7 R1 K1 ["id"]
       19 GETTABLE                         R6 R3 R7
       20 JUMP                             ; [+3]
       21 GETTABLEKS                       R7 R1 K2 ["sortKeys"]
       23 GETTABLE                         R6 R7 R2
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R1
       28 JUMPIFEQKNIL                     R5 ; [+3]
       30 JUMPIFNOTEQKNIL                  R6 ; [+31]
       32 JUMPIFNOTEQKNIL                  R5 ; [+24]
       34 JUMPIFNOTEQKNIL                  R6 ; [+22]
       36 GETTABLEKS                       R10 R0 K2 ["sortKeys"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K3 ["Name"]
       41 GETTABLE                         R9 R10 R11
       42 GETTABLEKS                       R9 R9 K4 ["text"]
       44 GETTABLEKS                       R11 R1 K2 ["sortKeys"]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K3 ["Name"]
       49 GETTABLE                         R10 R11 R12
       50 GETTABLEKS                       R10 R10 K4 ["text"]
       52 JUMPIFLT                         R9 R10 ; [+2]
       54 LOADB                            R8 0 +1
       55 LOADB                            R8 1
       56 RETURN                           R8 1
       57 JUMPIFNOTEQKNIL                  R5 ; [+2]
       59 LOADB                            R8 0 +1
       60 LOADB                            R8 1
       61 RETURN                           R8 1
       62 GETTABLEKS                       R9 R5 K5 ["number"]
       64 JUMPIFNOTEQKNIL                  R9 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETTABLEKS                       R10 R6 K5 ["number"]
       70 JUMPIFNOTEQKNIL                  R10 ; [+2]
       72 LOADB                            R9 0 +1
       73 LOADB                            R9 1
       74 JUMPIFEQ                         R8 R9 ; [+8]
       76 GETTABLEKS                       R9 R5 K5 ["number"]
       78 JUMPIFNOTEQKNIL                  R9 ; [+2]
       80 LOADB                            R8 0 +1
       81 LOADB                            R8 1
       82 RETURN                           R8 1
       83 GETTABLEKS                       R8 R5 K5 ["number"]
       85 JUMPIFEQKNIL                     R8 ; [+51]
       87 GETTABLEKS                       R8 R6 K5 ["number"]
       89 JUMPIFEQKNIL                     R8 ; [+47]
       91 GETTABLEKS                       R8 R5 K5 ["number"]
       93 GETTABLEKS                       R9 R6 K5 ["number"]
       95 JUMPIFNOTEQ                      R8 R9 ; [+22]
       97 GETTABLEKS                       R10 R0 K2 ["sortKeys"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K3 ["Name"]
      102 GETTABLE                         R9 R10 R11
      103 GETTABLEKS                       R9 R9 K4 ["text"]
      105 GETTABLEKS                       R11 R1 K2 ["sortKeys"]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K3 ["Name"]
      110 GETTABLE                         R10 R11 R12
      111 GETTABLEKS                       R10 R10 K4 ["text"]
      113 JUMPIFLT                         R9 R10 ; [+2]
      115 LOADB                            R8 0 +1
      116 LOADB                            R8 1
      117 RETURN                           R8 1
      118 JUMPIFNOT                        R4 ; [+9]
      119 GETTABLEKS                       R9 R5 K5 ["number"]
      121 GETTABLEKS                       R10 R6 K5 ["number"]
      123 JUMPIFLT                         R10 R9 ; [+2]
      125 LOADB                            R8 0 +1
      126 LOADB                            R8 1
      127 RETURN                           R8 1
      128 GETTABLEKS                       R9 R5 K5 ["number"]
      130 GETTABLEKS                       R10 R6 K5 ["number"]
      132 JUMPIFLT                         R9 R10 ; [+2]
      134 LOADB                            R8 0 +1
      135 LOADB                            R8 1
      136 RETURN                           R8 1
      137 GETTABLEKS                       R8 R5 K4 ["text"]
      139 GETTABLEKS                       R9 R6 K4 ["text"]
      141 JUMPIFNOTEQ                      R8 R9 ; [+22]
      143 GETTABLEKS                       R10 R0 K2 ["sortKeys"]
      145 GETUPVAL                         R11 0
      146 GETTABLEKS                       R11 R11 K3 ["Name"]
      148 GETTABLE                         R9 R10 R11
      149 GETTABLEKS                       R9 R9 K4 ["text"]
      151 GETTABLEKS                       R11 R1 K2 ["sortKeys"]
      153 GETUPVAL                         R12 0
      154 GETTABLEKS                       R12 R12 K3 ["Name"]
      156 GETTABLE                         R10 R11 R12
      157 GETTABLEKS                       R10 R10 K4 ["text"]
      159 JUMPIFLT                         R9 R10 ; [+2]
      161 LOADB                            R8 0 +1
      162 LOADB                            R8 1
      163 RETURN                           R8 1
      164 JUMPIFNOT                        R4 ; [+9]
      165 GETTABLEKS                       R9 R5 K4 ["text"]
      167 GETTABLEKS                       R10 R6 K4 ["text"]
      169 JUMPIFLT                         R10 R9 ; [+2]
      171 LOADB                            R8 0 +1
      172 LOADB                            R8 1
      173 RETURN                           R8 1
      174 GETTABLEKS                       R9 R5 K4 ["text"]
      176 GETTABLEKS                       R10 R6 K4 ["text"]
      178 JUMPIFLT                         R9 R10 ; [+2]
      180 LOADB                            R8 0 +1
      181 LOADB                            R8 1
      182 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["column"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["direction"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["Neutral"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+12]
       13 GETUPVAL                         R1 2
       14 DUPTABLE                         R2 K3 [{"column", "direction"}]
       15 SETTABLEKS                       R0 R2 K0 ["column"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["Ascending"]
       20 SETTABLEKS                       R3 R2 K1 ["direction"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K1 ["direction"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K4 ["Ascending"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+12]
       32 GETUPVAL                         R1 2
       33 DUPTABLE                         R2 K3 [{"column", "direction"}]
       34 SETTABLEKS                       R0 R2 K0 ["column"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K5 ["Descending"]
       39 SETTABLEKS                       R3 R2 K1 ["direction"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 2
       44 DUPTABLE                         R2 K7 [{[1] = , ["direction"]}]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K2 ["Neutral"]
       48 SETTABLEKS                       R3 R2 K1 ["direction"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["copyToClipboard"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["copy"]
        7 GETIMPORT                        R3 K3 [pcall]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 2
       16 DUPTABLE                         R5 K9 [{["title"], ["icon"] = "two-stacked-squares", ["testId"] = "flag-editor-copied-notice"}]
       17 SETTABLEKS                       R1 R5 K4 ["title"]
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["Copied %* to clipboard"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["FormatOverrides"]
        8 NEWTABLE                         R3 1 0
       10 SETTABLE                         R1 R3 R0
       11 LOADB                            R4 1
       12 CALL                             R2 2 1
       13 GETIMPORT                        R4 K2 [next]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+3]
       19 LOADK                            R3 K3 ["{}"]
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R3 2
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K4 ["JSONEncode"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R3
       28 LOADK                            R6 K5 ["Copied %* override to clipboard"]
       29 MOVE                             R8 R0
       30 NAMECALL                         R6 R6 K6 ["format"]
       32 CALL                             R6 2 1
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FormatOverrides"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R0 2 1
        6 GETIMPORT                        R2 K2 [next]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 LOADK                            R1 K3 ["{}"]
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K4 ["JSONEncode"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R1
       21 LOADK                            R4 K5 ["Copied all overrides to clipboard"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetFlagId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["flags"]
        4 CALL                             R0 1 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["overrides"]
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K2 ["ParseFlagName"]
       19 MOVE                             R7 R4
       20 CALL                             R6 1 3
       21 GETUPVAL                         R9 3
       22 GETIMPORT                        R10 K4 [warn]
       24 LOADK                            R11 K5 ["Found override for %* with value %* and type %*"]
       25 MOVE                             R13 R4
       26 FASTCALL1                        TOSTRING R5 ; [+3]
       27 MOVE                             R15 R5
       28 GETIMPORT                        R14 K7 [tostring]
       30 CALL                             R14 1 1
       31 FASTCALL1                        TOSTRING R7 ; [+3]
       32 MOVE                             R16 R7
       33 GETIMPORT                        R15 K7 [tostring]
       35 CALL                             R15 1 1
       36 NAMECALL                         R11 R11 K8 ["format"]
       38 CALL                             R11 4 1
       39 CALL                             R9 2 0
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K9 ["find"]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K0 ["flags"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R4
       49 CALL                             R9 2 1
       50 JUMPIF                           R9 ; [+6]
       51 GETUPVAL                         R10 3
       52 GETIMPORT                        R11 K4 [warn]
       54 LOADK                            R12 K10 ["Could not find flag associated with override: "]
       55 MOVE                             R13 R8
       56 CALL                             R10 3 0
       57 DUPTABLE                         R10 K16 [{"valueType", "type", "name", "value", "default"}]
       58 SETTABLEKS                       R7 R10 K11 ["valueType"]
       60 SETTABLEKS                       R6 R10 K12 ["type"]
       62 SETTABLEKS                       R8 R10 K13 ["name"]
       64 SETTABLEKS                       R5 R10 K14 ["value"]
       66 JUMPIFNOT                        R9 ; [+3]
       67 GETTABLEKS                       R11 R9 K15 ["default"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R11
       71 SETTABLEKS                       R11 R10 K15 ["default"]
       73 SETTABLE                         R10 R0 R4
       74 FORGLOOP                         R1 2 ; [-59]
       76 GETUPVAL                         R1 3
       77 GETIMPORT                        R2 K4 [warn]
       79 LOADK                            R3 K17 ["Setting overrides: "]
       80 MOVE                             R4 R0
       81 CALL                             R1 3 0
       82 GETUPVAL                         R1 5
       83 MOVE                             R2 R0
       84 CALL                             R1 1 0
       85 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["saveOverrides"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FormatOverrides"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+17]
        9 GETIMPORT                        R2 K2 [warn]
       11 LOADK                            R3 K3 ["Flag Editor cannot save overrides:\n%*"]
       12 GETIMPORT                        R5 K6 [table.concat]
       14 MOVE                             R6 R1
       15 LOADK                            R7 K7 ["\n"]
       16 CALL                             R5 2 1
       17 NAMECALL                         R3 R3 K8 ["format"]
       19 CALL                             R3 2 1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 DUPTABLE                         R3 K15 [{["title"] = "Couldn't save overrides, see output for details", ["icon"] = "circle-x", ["testId"] = "flag-editor-save-notice"}]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K17 [pcall]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 CALL                             R2 1 2
       31 JUMPIFNOT                        R2 ; [+2]
       32 JUMPIFNOTEQKB                    R3 FALSE ; [+11]
       34 JUMPIF                           R2 ; [+5]
       35 GETIMPORT                        R4 K2 [warn]
       37 LOADK                            R5 K18 ["Flag Editor failed to save overrides:"]
       38 MOVE                             R6 R3
       39 CALL                             R4 2 0
       40 GETUPVAL                         R4 2
       41 DUPTABLE                         R5 K15 [{["title"] = "Couldn't save overrides, see output for details", ["icon"] = "circle-x", ["testId"] = "flag-editor-save-notice"}]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K19 ["onSaved"]
       47 JUMPIFNOTEQKNIL                  R4 ; [+4]
       49 GETUPVAL                         R4 2
       50 DUPTABLE                         R5 K22 [{["title"] = "Overrides saved", ["icon"] = "circle-check", ["testId"] = "flag-editor-save-notice"}]
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [print]
        3 LOADK                            R3 K2 ["Adding flag override for %* to "]
        4 GETTABLEKS                       R5 R0 K3 ["name"]
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R1 R0 K5 ["id"]
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K6 ["GetFlagId"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K3 ["name"]
       21 JUMPIFNOTEQ                      R1 R2 ; [+11]
       23 GETIMPORT                        R2 K8 [warn]
       25 LOADK                            R3 K9 ["Flag type %* cannot be represented as an override"]
       26 GETTABLEKS                       R5 R0 K10 ["type"]
       28 NAMECALL                         R3 R3 K4 ["format"]
       30 CALL                             R3 2 1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 1
       34 GETTABLE                         R3 R4 R1
       35 JUMPIFNOTEQKNIL                  R3 ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 JUMPIF                           R2 ; [+34]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K11 ["Dictionary"]
       43 GETTABLEKS                       R3 R3 K12 ["join"]
       45 GETUPVAL                         R4 1
       46 NEWTABLE                         R5 1 0
       48 DUPTABLE                         R6 K16 [{"name", "type", "default", "value", "valueType"}]
       49 GETTABLEKS                       R7 R0 K3 ["name"]
       51 SETTABLEKS                       R7 R6 K3 ["name"]
       53 GETTABLEKS                       R7 R0 K10 ["type"]
       55 SETTABLEKS                       R7 R6 K10 ["type"]
       57 GETTABLEKS                       R7 R0 K13 ["default"]
       59 SETTABLEKS                       R7 R6 K13 ["default"]
       61 GETTABLEKS                       R7 R0 K13 ["default"]
       63 SETTABLEKS                       R7 R6 K14 ["value"]
       65 GETTABLEKS                       R7 R0 K15 ["valueType"]
       67 SETTABLEKS                       R7 R6 K15 ["valueType"]
       69 SETTABLE                         R6 R5 R1
       70 CALL                             R3 2 1
       71 GETUPVAL                         R4 4
       72 MOVE                             R5 R3
       73 CALL                             R4 1 0
       74 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetFlagId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ParseFlagName"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["Invalid"]
        8 JUMPIFEQ                         R1 R4 ; [+3]
       10 JUMPIFNOTEQKNIL                  R2 ; [+22]
       12 GETUPVAL                         R5 2
       13 GETTABLE                         R4 R5 R0
       14 JUMPIFEQKNIL                     R4 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       21 GETTABLEKS                       R5 R5 K3 ["join"]
       23 GETUPVAL                         R6 2
       24 NEWTABLE                         R7 1 0
       26 DUPTABLE                         R8 K5 [{"name"}]
       27 SETTABLEKS                       R3 R8 K4 ["name"]
       29 SETTABLE                         R8 R7 R0
       30 CALL                             R5 2 -1
       31 CALL                             R4 -1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K6 ["FormatFlagName"]
       36 DUPTABLE                         R5 K11 [{["name"], ["type"], ["valueType"], ["value"] = ""}]
       37 SETTABLEKS                       R3 R5 K4 ["name"]
       39 SETTABLEKS                       R1 R5 K7 ["type"]
       41 SETTABLEKS                       R2 R5 K8 ["valueType"]
       43 CALL                             R4 1 1
       44 GETUPVAL                         R6 2
       45 GETTABLE                         R5 R6 R4
       46 JUMPIFEQKNIL                     R5 ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K12 ["find"]
       52 GETUPVAL                         R6 6
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R4
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K13 ["BlankOverrideValue"]
       60 MOVE                             R7 R2
       61 CALL                             R6 1 1
       62 GETUPVAL                         R7 3
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       66 GETTABLEKS                       R8 R8 K3 ["join"]
       68 GETUPVAL                         R9 2
       69 NEWTABLE                         R10 1 0
       71 JUMPIFNOT                        R5 ; [+20]
       72 DUPTABLE                         R11 K15 [{"name", "type", "valueType", "default", "value"}]
       73 GETTABLEKS                       R12 R5 K4 ["name"]
       75 SETTABLEKS                       R12 R11 K4 ["name"]
       77 GETTABLEKS                       R12 R5 K7 ["type"]
       79 SETTABLEKS                       R12 R11 K7 ["type"]
       81 GETTABLEKS                       R12 R5 K8 ["valueType"]
       83 SETTABLEKS                       R12 R11 K8 ["valueType"]
       85 GETTABLEKS                       R12 R5 K14 ["default"]
       87 SETTABLEKS                       R12 R11 K14 ["default"]
       89 SETTABLEKS                       R6 R11 K9 ["value"]
       91 JUMP                             ; [+9]
       92 DUPTABLE                         R11 K16 [{"name", "type", "valueType", "value"}]
       93 SETTABLEKS                       R3 R11 K4 ["name"]
       95 SETTABLEKS                       R1 R11 K7 ["type"]
       97 SETTABLEKS                       R2 R11 K8 ["valueType"]
       99 SETTABLEKS                       R6 R11 K9 ["value"]
      101 SETTABLE                         R11 R10 R4
      102 CALL                             R8 2 -1
      103 CALL                             R7 -1 0
      104 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Trim"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        7 RETURN                           R0 0
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K2 ["MatchesSearch"]
       17 GETTABLEKS                       R9 R7 K3 ["name"]
       19 MOVE                             R10 R1
       20 CALL                             R8 2 1
       21 JUMPIF                           R8 ; [+11]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K2 ["MatchesSearch"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K4 ["GetFlagId"]
       28 MOVE                             R10 R7
       29 CALL                             R9 1 1
       30 MOVE                             R10 R1
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       35 MOVE                             R9 R2
       36 MOVE                             R10 R7
       37 GETIMPORT                        R8 K7 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 ; [-27]
       42 NEWTABLE                         R3 0 0
       44 GETUPVAL                         R4 1
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K4 ["GetFlagId"]
       51 MOVE                             R10 R8
       52 CALL                             R9 1 1
       53 LOADB                            R10 1
       54 SETTABLE                         R10 R3 R9
       55 FORGLOOP                         R4 2 ; [-8]
       57 LOADN                            R4 0
       58 GETUPVAL                         R5 2
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 GETTABLE                         R10 R3 R8
       63 JUMPIF                           R10 ; [+16]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K2 ["MatchesSearch"]
       67 GETTABLEKS                       R11 R9 K3 ["name"]
       69 MOVE                             R12 R1
       70 CALL                             R10 2 1
       71 JUMPIF                           R10 ; [+7]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K2 ["MatchesSearch"]
       75 MOVE                             R11 R8
       76 MOVE                             R12 R1
       77 CALL                             R10 2 1
       78 JUMPIFNOT                        R10 ; [+1]
       79 ADDK                             R4 R4 K8 [1]
       80 FORGLOOP                         R5 2 ; [-19]
       82 LENGTH                           R5 R2
       83 JUMPIFNOTEQKN                    R5 K8 [1] ; [+7]
       85 JUMPIFNOTEQKN                    R4 K9 [0] ; [+5]
       87 GETUPVAL                         R5 3
       88 GETTABLEN                        R6 R2 1
       89 CALL                             R5 1 0
       90 RETURN                           R0 0
       91 LENGTH                           R5 R2
       92 JUMPIFNOTEQKN                    R5 K9 [0] ; [+6]
       94 JUMPIFNOTEQKN                    R4 K9 [0] ; [+4]
       96 GETUPVAL                         R5 4
       97 MOVE                             R6 R1
       98 CALL                             R5 1 0
       99 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.Return]
        5 JUMPIFEQ                         R2 R3 ; [+7]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.KeypadEnter]
       11 JUMPIFNOTEQ                      R2 R3 ; [+4]
       13 GETUPVAL                         R2 0
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [warn]
        3 LOADK                            R3 K2 ["Removing flag override for %* from "]
        4 GETTABLEKS                       R5 R0 K3 ["name"]
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R1 R0 K5 ["id"]
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K6 ["GetFlagId"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLE                         R3 R4 R1
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 JUMPIFNOT                        R2 ; [+16]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       29 GETTABLEKS                       R3 R3 K8 ["join"]
       31 GETUPVAL                         R4 1
       32 NEWTABLE                         R5 1 0
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K9 ["None"]
       37 SETTABLE                         R6 R5 R1
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 4
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        7 GETTABLEKS                       R1 R1 K1 ["join"]
        9 GETUPVAL                         R2 2
       10 NEWTABLE                         R3 1 0
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       16 GETTABLEKS                       R5 R5 K1 ["join"]
       18 GETUPVAL                         R6 0
       19 DUPTABLE                         R7 K3 [{"value"}]
       20 SETTABLEKS                       R0 R7 K2 ["value"]
       22 CALL                             R5 2 1
       23 SETTABLE                         R5 R3 R4
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 4
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["item"]
        3 GETTABLEKS                       R2 R0 K1 ["default"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+7]
        7 NEWTABLE                         R1 1 0
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K2 ["N/A"]
       11 SETTABLE                         R3 R1 R2
       12 JUMP                             ; [+25]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K3 ["FormatOverrides"]
       16 NEWTABLE                         R2 1 0
       18 GETUPVAL                         R3 1
       19 DUPTABLE                         R4 K8 [{"name", "type", "valueType", "value"}]
       20 GETTABLEKS                       R5 R0 K4 ["name"]
       22 SETTABLEKS                       R5 R4 K4 ["name"]
       24 GETTABLEKS                       R5 R0 K5 ["type"]
       26 SETTABLEKS                       R5 R4 K5 ["type"]
       28 GETTABLEKS                       R5 R0 K6 ["valueType"]
       30 SETTABLEKS                       R5 R4 K6 ["valueType"]
       32 GETTABLEKS                       R5 R0 K1 ["default"]
       34 SETTABLEKS                       R5 R4 K7 ["value"]
       36 SETTABLE                         R4 R2 R3
       37 CALL                             R1 1 1
       38 GETIMPORT                        R3 K10 [next]
       40 MOVE                             R4 R1
       41 CALL                             R3 1 1
       42 JUMPIFNOTEQKNIL                  R3 ; [+3]
       44 LOADK                            R2 K11 ["{}"]
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R2 3
       47 MOVE                             R4 R1
       48 NAMECALL                         R2 R2 K12 ["JSONEncode"]
       50 CALL                             R2 2 1
       51 GETUPVAL                         R3 4
       52 MOVE                             R4 R2
       53 LOADK                            R5 K13 ["Copied %* value to clipboard"]
       54 GETUPVAL                         R7 1
       55 NAMECALL                         R5 R5 K14 ["format"]
       57 CALL                             R5 2 1
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["join"]
        5 GETUPVAL                         R1 1
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
       12 GETTABLEKS                       R4 R4 K1 ["join"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K2 ["item"]
       17 DUPTABLE                         R6 K4 [{"value"}]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K2 ["item"]
       21 GETTABLEKS                       R7 R7 K5 ["default"]
       23 SETTABLEKS                       R7 R6 K3 ["value"]
       25 CALL                             R4 2 1
       26 SETTABLE                         R4 R2 R3
       27 CALL                             R0 2 1
       28 GETUPVAL                         R1 4
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["item"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K2 ["id"]
       11 JUMPIFNOTEQ                      R8 R2 ; [+3]
       13 MOVE                             R1 R7
       14 JUMP                             ; [+3]
       15 FORGLOOP                         R3 2 ; [-7]
       17 LOADNIL                          R1
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       24 GETTABLEKS                       R2 R2 K4 ["join"]
       26 GETUPVAL                         R3 2
       27 DUPTABLE                         R4 K8 [{"type", "valueType", "value"}]
       28 GETTABLEKS                       R5 R1 K5 ["type"]
       30 SETTABLEKS                       R5 R4 K5 ["type"]
       32 GETTABLEKS                       R5 R1 K6 ["valueType"]
       34 SETTABLEKS                       R5 R4 K6 ["valueType"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K7 ["value"]
       39 JUMPIFNOTEQKNIL                  R6 ; [+8]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K9 ["BlankOverrideValue"]
       44 GETTABLEKS                       R6 R1 K6 ["valueType"]
       46 CALL                             R5 1 1
       47 JUMP                             ; [+3]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K7 ["value"]
       51 SETTABLEKS                       R5 R4 K7 ["value"]
       53 CALL                             R2 2 1
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K10 ["GetFlagId"]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 1
       59 GETUPVAL                         R4 4
       60 JUMPIFEQ                         R3 R4 ; [+22]
       62 GETUPVAL                         R5 5
       63 GETTABLE                         R4 R5 R3
       64 JUMPIFEQKNIL                     R4 ; [+18]
       66 GETUPVAL                         R4 6
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       70 GETTABLEKS                       R5 R5 K4 ["join"]
       72 GETUPVAL                         R6 5
       73 NEWTABLE                         R7 1 0
       75 GETUPVAL                         R8 4
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K11 ["None"]
       79 SETTABLE                         R9 R7 R8
       80 CALL                             R5 2 -1
       81 CALL                             R4 -1 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R4 6
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       87 GETTABLEKS                       R5 R5 K4 ["join"]
       89 GETUPVAL                         R6 5
       90 NEWTABLE                         R7 2 0
       92 GETUPVAL                         R8 4
       93 GETUPVAL                         R10 4
       94 JUMPIFNOTEQ                      R3 R10 ; [+3]
       96 MOVE                             R9 R2
       97 JUMP                             ; [+3]
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R9 R9 K11 ["None"]
      101 SETTABLE                         R9 R7 R8
      102 SETTABLE                         R2 R7 R3
      103 CALL                             R5 2 -1
      104 CALL                             R4 -1 0
      105 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["item"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R2 K1 ["id"]
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["GetFlagId"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 MOVE                             R1 R3
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R3 R1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 JUMPIFNOT                        R2 ; [+14]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["GetOverrideStatus"]
       21 MOVE                             R5 R2
       22 GETTABLEKS                       R7 R0 K0 ["item"]
       24 GETTABLEKS                       R7 R7 K1 ["id"]
       26 JUMPIFEQKNIL                     R7 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 CALL                             R4 2 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 MOVE                             R5 R3
       34 JUMPIFNOT                        R5 ; [+42]
       35 LOADB                            R5 0
       36 GETTABLEKS                       R6 R0 K0 ["item"]
       38 GETTABLEKS                       R6 R6 K4 ["default"]
       40 JUMPIFEQKNIL                     R6 ; [+36]
       42 LOADB                            R5 0
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K5 ["DisplayValue"]
       46 GETTABLEKS                       R7 R0 K0 ["item"]
       48 GETTABLEKS                       R7 R7 K6 ["valueType"]
       50 GETTABLEKS                       R8 R2 K7 ["value"]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K5 ["DisplayValue"]
       56 GETTABLEKS                       R8 R0 K0 ["item"]
       58 GETTABLEKS                       R8 R8 K6 ["valueType"]
       60 GETTABLEKS                       R9 R0 K0 ["item"]
       62 GETTABLEKS                       R9 R9 K4 ["default"]
       64 CALL                             R7 2 1
       65 JUMPIFEQ                         R6 R7 ; [+11]
       67 LOADB                            R5 1
       68 JUMPIFEQKNIL                     R4 ; [+8]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K8 ["InvalidValue"]
       73 JUMPIFEQ                         R4 R6 ; [+2]
       75 LOADB                            R5 0 +1
       76 LOADB                            R5 1
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U4
       83 GETTABLEKS                       R8 R0 K0 ["item"]
       85 GETTABLEKS                       R8 R8 K10 ["name"]
       87 ORK                              R7 R8 K9 ["Unknown"]
       88 NEWCLOSURE                       R8 P1
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R1
       91 NEWCLOSURE                       R9 P2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U7
       97 GETUPVAL                         R10 8
       98 GETTABLEKS                       R10 R10 K11 ["createElement"]
      100 GETUPVAL                         R11 9
      101 DUPTABLE                         R12 K19 [{"name", "value", "actions", "type", "status", "valueType", "override", "overrideValue", "onActivated", "LayoutOrder"}]
      102 DUPTABLE                         R13 K22 [{"label", "onSecondaryActivated"}]
      103 SETTABLEKS                       R7 R13 K20 ["label"]
      105 SETTABLEKS                       R8 R13 K21 ["onSecondaryActivated"]
      107 SETTABLEKS                       R13 R12 K10 ["name"]
      109 DUPTABLE                         R13 K22 [{"label", "onSecondaryActivated"}]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R14 R14 K5 ["DisplayValue"]
      113 GETTABLEKS                       R15 R0 K0 ["item"]
      115 GETTABLEKS                       R15 R15 K6 ["valueType"]
      117 GETTABLEKS                       R16 R0 K0 ["item"]
      119 GETTABLEKS                       R16 R16 K4 ["default"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K20 ["label"]
      124 SETTABLEKS                       R9 R13 K21 ["onSecondaryActivated"]
      126 SETTABLEKS                       R13 R12 K7 ["value"]
      128 DUPTABLE                         R13 K25 [{"Reset", "Clear"}]
      129 JUMPIFNOT                        R5 ; [+32]
      130 GETUPVAL                         R14 8
      131 GETTABLEKS                       R14 R14 K11 ["createElement"]
      133 GETUPVAL                         R15 10
      134 DUPTABLE                         R16 K31 [{["text"] = "Reset", ["size"], ["variant"], ["testId"], ["onActivated"], ["LayoutOrder"] = 1}]
      135 GETUPVAL                         R17 11
      136 GETTABLEKS                       R17 R17 K32 ["XSmall"]
      138 SETTABLEKS                       R17 R16 K27 ["size"]
      140 GETUPVAL                         R17 12
      141 GETTABLEKS                       R17 R17 K33 ["Utility"]
      143 SETTABLEKS                       R17 R16 K28 ["variant"]
      145 LOADK                            R17 K34 ["flag-editor-row-reset-%*"]
      146 MOVE                             R19 R1
      147 NAMECALL                         R17 R17 K35 ["format"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K29 ["testId"]
      152 NEWCLOSURE                       R17 P3
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          UPVAL U1
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U4
      158 SETTABLEKS                       R17 R16 K17 ["onActivated"]
      160 CALL                             R14 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R14
      163 SETTABLEKS                       R14 R13 K23 ["Reset"]
      165 JUMPIFNOT                        R3 ; [+29]
      166 GETUPVAL                         R14 8
      167 GETTABLEKS                       R14 R14 K11 ["createElement"]
      169 GETUPVAL                         R15 10
      170 DUPTABLE                         R16 K37 [{["text"] = "Clear", ["size"], ["variant"], ["testId"], ["onActivated"], ["LayoutOrder"] = 2}]
      171 GETUPVAL                         R17 11
      172 GETTABLEKS                       R17 R17 K32 ["XSmall"]
      174 SETTABLEKS                       R17 R16 K27 ["size"]
      176 GETUPVAL                         R17 12
      177 GETTABLEKS                       R17 R17 K38 ["Standard"]
      179 SETTABLEKS                       R17 R16 K28 ["variant"]
      181 LOADK                            R17 K39 ["flag-editor-row-clear-%*"]
      182 MOVE                             R19 R1
      183 NAMECALL                         R17 R17 K35 ["format"]
      185 CALL                             R17 2 1
      186 SETTABLEKS                       R17 R16 K29 ["testId"]
      188 NEWCLOSURE                       R17 P4
      189 CAPTURE                          UPVAL U13
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R17 R16 K17 ["onActivated"]
      193 CALL                             R14 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R14
      196 SETTABLEKS                       R14 R13 K24 ["Clear"]
      198 SETTABLEKS                       R13 R12 K12 ["actions"]
      200 JUMPIFNOT                        R3 ; [+60]
      201 GETTABLEKS                       R14 R2 K6 ["valueType"]
      203 JUMPIFNOTEQKNIL                  R14 ; [+57]
      205 GETTABLEKS                       R14 R2 K13 ["type"]
      207 GETUPVAL                         R15 14
      208 GETTABLEKS                       R15 R15 K40 ["Invalid"]
      210 JUMPIFEQ                         R14 R15 ; [+50]
      212 DUPTABLE                         R13 K43 [{["label"] = "", ["onSecondaryActivated"], ["input"]}]
      213 SETTABLEKS                       R8 R13 K21 ["onSecondaryActivated"]
      215 GETUPVAL                         R14 8
      216 GETTABLEKS                       R14 R14 K11 ["createElement"]
      218 GETUPVAL                         R15 15
      219 DUPTABLE                         R16 K49 [{["placeholder"] = "Type", ["items"], ["label"] = "", ["size"], ["variant"], ["width"], ["onItemChanged"], ["testId"]}]
      220 GETUPVAL                         R17 16
      221 SETTABLEKS                       R17 R16 K46 ["items"]
      223 GETUPVAL                         R17 17
      224 GETTABLEKS                       R17 R17 K32 ["XSmall"]
      226 SETTABLEKS                       R17 R16 K27 ["size"]
      228 GETUPVAL                         R17 18
      229 GETTABLEKS                       R17 R17 K38 ["Standard"]
      231 SETTABLEKS                       R17 R16 K28 ["variant"]
      233 GETIMPORT                        R17 K52 [UDim.new]
      235 LOADN                            R18 1
      236 LOADN                            R19 0
      237 CALL                             R17 2 1
      238 SETTABLEKS                       R17 R16 K47 ["width"]
      240 NEWCLOSURE                       R17 P5
      241 CAPTURE                          UPVAL U16
      242 CAPTURE                          UPVAL U3
      243 CAPTURE                          VAL R2
      244 CAPTURE                          UPVAL U0
      245 CAPTURE                          VAL R1
      246 CAPTURE                          UPVAL U1
      247 CAPTURE                          UPVAL U4
      248 SETTABLEKS                       R17 R16 K48 ["onItemChanged"]
      250 LOADK                            R17 K53 ["flag-editor-row-type-%*"]
      251 MOVE                             R19 R1
      252 NAMECALL                         R17 R17 K35 ["format"]
      254 CALL                             R17 2 1
      255 SETTABLEKS                       R17 R16 K29 ["testId"]
      257 CALL                             R14 2 1
      258 SETTABLEKS                       R14 R13 K42 ["input"]
      260 JUMP                             ; [+11]
      261 DUPTABLE                         R13 K22 [{"label", "onSecondaryActivated"}]
      262 GETUPVAL                         R14 0
      263 GETTABLEKS                       R14 R14 K54 ["FormatFlagType"]
      265 GETTABLEKS                       R15 R0 K0 ["item"]
      267 CALL                             R14 1 1
      268 SETTABLEKS                       R14 R13 K20 ["label"]
      270 SETTABLEKS                       R8 R13 K21 ["onSecondaryActivated"]
      272 SETTABLEKS                       R13 R12 K13 ["type"]
      274 SETTABLEKS                       R4 R12 K14 ["status"]
      276 GETTABLEKS                       R14 R0 K0 ["item"]
      278 GETTABLEKS                       R14 R14 K6 ["valueType"]
      280 ORK                              R13 R14 K41 [""]
      281 SETTABLEKS                       R13 R12 K6 ["valueType"]
      283 DUPTABLE                         R13 K55 [{"label", "input", "onSecondaryActivated", "testId"}]
      284 JUMPIFNOT                        R3 ; [+18]
      285 GETUPVAL                         R15 2
      286 GETTABLEKS                       R15 R15 K56 ["InvalidFlag"]
      288 JUMPIFNOTEQ                      R4 R15 ; [+14]
      290 GETTABLEKS                       R15 R2 K7 ["value"]
      292 JUMPIFNOTEQKNIL                  R15 ; [+3]
      294 LOADK                            R14 K41 [""]
      295 JUMP                             ; [+8]
      296 GETTABLEKS                       R15 R2 K7 ["value"]
      298 FASTCALL1                        TOSTRING R15 ; [+2]
      299 GETIMPORT                        R14 K58 [tostring]
      301 CALL                             R14 1 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R14
      304 SETTABLEKS                       R14 R13 K20 ["label"]
      306 JUMPIFNOT                        R3 ; [+89]
      307 GETTABLEKS                       R15 R2 K6 ["valueType"]
      309 JUMPIFEQKNIL                     R15 ; [+86]
      311 GETUPVAL                         R15 2
      312 GETTABLEKS                       R15 R15 K56 ["InvalidFlag"]
      314 JUMPIFEQ                         R4 R15 ; [+81]
      316 GETUPVAL                         R15 2
      317 GETTABLEKS                       R15 R15 K8 ["InvalidValue"]
      319 JUMPIFEQ                         R4 R15 ; [+4]
      321 GETUPVAL                         R15 19
      322 JUMPIFNOTEQ                      R15 R1 ; [+38]
      324 GETUPVAL                         R14 8
      325 GETTABLEKS                       R14 R14 K11 ["createElement"]
      327 GETUPVAL                         R15 20
      328 DUPTABLE                         R16 K61 [{["text"], ["size"], ["width"], ["label"] = "", ["onChanged"], ["onFocusLost"]}]
      329 GETTABLEKS                       R18 R2 K7 ["value"]
      331 FASTCALL1                        TOSTRING R18 ; [+2]
      332 GETIMPORT                        R17 K58 [tostring]
      334 CALL                             R17 1 1
      335 SETTABLEKS                       R17 R16 K26 ["text"]
      337 GETUPVAL                         R17 17
      338 GETTABLEKS                       R17 R17 K32 ["XSmall"]
      340 SETTABLEKS                       R17 R16 K27 ["size"]
      342 GETIMPORT                        R17 K52 [UDim.new]
      344 LOADN                            R18 1
      345 LOADN                            R19 0
      346 CALL                             R17 2 1
      347 SETTABLEKS                       R17 R16 K47 ["width"]
      349 NEWCLOSURE                       R17 P6
      350 CAPTURE                          UPVAL U21
      351 CAPTURE                          VAL R1
      352 CAPTURE                          VAL R6
      353 SETTABLEKS                       R17 R16 K59 ["onChanged"]
      355 NEWCLOSURE                       R17 P7
      356 CAPTURE                          UPVAL U21
      357 SETTABLEKS                       R17 R16 K60 ["onFocusLost"]
      359 CALL                             R14 2 1
      360 JUMP                             ; [+36]
      361 GETUPVAL                         R14 8
      362 GETTABLEKS                       R14 R14 K11 ["createElement"]
      364 GETUPVAL                         R15 22
      365 DUPTABLE                         R16 K62 [{"valueType", "value", "onChanged", "testId"}]
      366 GETTABLEKS                       R17 R2 K6 ["valueType"]
      368 SETTABLEKS                       R17 R16 K6 ["valueType"]
      370 GETTABLEKS                       R18 R2 K7 ["value"]
      372 JUMPIFNOTEQKNIL                  R18 ; [+8]
      374 GETUPVAL                         R17 0
      375 GETTABLEKS                       R17 R17 K63 ["BlankOverrideValue"]
      377 GETTABLEKS                       R18 R2 K6 ["valueType"]
      379 CALL                             R17 1 1
      380 JUMP                             ; [+2]
      381 GETTABLEKS                       R17 R2 K7 ["value"]
      383 SETTABLEKS                       R17 R16 K7 ["value"]
      385 SETTABLEKS                       R6 R16 K59 ["onChanged"]
      387 LOADK                            R17 K64 ["flag-editor-row-value-%*"]
      388 MOVE                             R19 R1
      389 NAMECALL                         R17 R17 K35 ["format"]
      391 CALL                             R17 2 1
      392 SETTABLEKS                       R17 R16 K29 ["testId"]
      394 CALL                             R14 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R14
      397 SETTABLEKS                       R14 R13 K42 ["input"]
      399 JUMPIFNOT                        R3 ; [+4]
      400 NEWCLOSURE                       R14 P8
      401 CAPTURE                          UPVAL U23
      402 CAPTURE                          VAL R1
      403 JUMP                             ; [+1]
      404 LOADNIL                          R14
      405 SETTABLEKS                       R14 R13 K21 ["onSecondaryActivated"]
      407 LOADK                            R14 K65 ["flag-editor-row-override-%*"]
      408 MOVE                             R16 R1
      409 NAMECALL                         R14 R14 K35 ["format"]
      411 CALL                             R14 2 1
      412 SETTABLEKS                       R14 R13 K29 ["testId"]
      414 SETTABLEKS                       R13 R12 K15 ["override"]
      416 JUMPIFNOT                        R2 ; [+11]
      417 GETTABLEKS                       R14 R2 K7 ["value"]
      419 JUMPIFEQKNIL                     R14 ; [+8]
      421 GETTABLEKS                       R14 R2 K7 ["value"]
      423 FASTCALL1                        TOSTRING R14 ; [+2]
      424 GETIMPORT                        R13 K58 [tostring]
      426 CALL                             R13 1 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R13
      429 SETTABLEKS                       R13 R12 K16 ["overrideValue"]
      431 JUMPIFNOT                        R3 ; [+2]
      432 LOADNIL                          R13
      433 JUMP                             ; [+3]
      434 NEWCLOSURE                       R13 P9
      435 CAPTURE                          UPVAL U24
      436 CAPTURE                          VAL R0
      437 SETTABLEKS                       R13 R12 K17 ["onActivated"]
      439 GETTABLEKS                       R13 R0 K66 ["index"]
      441 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      443 CALL                             R10 2 -1
      444 RETURN                           R10 -1

PROTO_36:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K6 [table.concat]
       21 MOVE                             R2 R0
       22 LOADK                            R3 K7 ["\0"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_37:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["GetFlagId"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 LOADB                            R8 1
       14 SETTABLE                         R8 R1 R7
       15 DUPTABLE                         R10 K6 [{"flag", "id", "searchName", "searchId", "sortKeys"}]
       16 SETTABLEKS                       R6 R10 K1 ["flag"]
       18 SETTABLEKS                       R7 R10 K2 ["id"]
       20 GETIMPORT                        R11 K9 [string.lower]
       22 GETTABLEKS                       R12 R6 K10 ["name"]
       24 CALL                             R11 1 1
       25 SETTABLEKS                       R11 R10 K3 ["searchName"]
       27 GETIMPORT                        R11 K9 [string.lower]
       29 MOVE                             R12 R7
       30 CALL                             R11 1 1
       31 SETTABLEKS                       R11 R10 K4 ["searchId"]
       33 NEWTABLE                         R11 4 0
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K11 ["Name"]
       38 GETTABLEKS                       R14 R6 K10 ["name"]
       40 GETIMPORT                        R15 K9 [string.lower]
       42 FASTCALL1                        TOSTRING R14 ; [+3]
       43 MOVE                             R17 R14
       44 GETIMPORT                        R16 K13 [tostring]
       46 CALL                             R16 1 1
       47 CALL                             R15 1 1
       48 DUPTABLE                         R13 K16 [{"text", "number"}]
       49 SETTABLEKS                       R15 R13 K14 ["text"]
       51 FASTCALL1                        TONUMBER R15 ; [+3]
       52 MOVE                             R17 R15
       53 GETIMPORT                        R16 K18 [tonumber]
       55 CALL                             R16 1 1
       56 SETTABLEKS                       R16 R13 K15 ["number"]
       58 SETTABLE                         R13 R11 R12
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R12 R12 K19 ["Type"]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R14 R14 K20 ["FormatFlagType"]
       65 MOVE                             R15 R6
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K9 [string.lower]
       69 FASTCALL1                        TOSTRING R14 ; [+3]
       70 MOVE                             R17 R14
       71 GETIMPORT                        R16 K13 [tostring]
       73 CALL                             R16 1 1
       74 CALL                             R15 1 1
       75 DUPTABLE                         R13 K16 [{"text", "number"}]
       76 SETTABLEKS                       R15 R13 K14 ["text"]
       78 FASTCALL1                        TONUMBER R15 ; [+3]
       79 MOVE                             R17 R15
       80 GETIMPORT                        R16 K18 [tonumber]
       82 CALL                             R16 1 1
       83 SETTABLEKS                       R16 R13 K15 ["number"]
       85 SETTABLE                         R13 R11 R12
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K21 ["Value"]
       89 GETTABLEKS                       R14 R6 K22 ["default"]
       91 JUMPIFNOTEQKNIL                  R14 ; [+3]
       93 LOADNIL                          R13
       94 JUMP                             ; [+20]
       95 GETTABLEKS                       R14 R6 K22 ["default"]
       97 GETIMPORT                        R15 K9 [string.lower]
       99 FASTCALL1                        TOSTRING R14 ; [+3]
      100 MOVE                             R17 R14
      101 GETIMPORT                        R16 K13 [tostring]
      103 CALL                             R16 1 1
      104 CALL                             R15 1 1
      105 DUPTABLE                         R13 K16 [{"text", "number"}]
      106 SETTABLEKS                       R15 R13 K14 ["text"]
      108 FASTCALL1                        TONUMBER R15 ; [+3]
      109 MOVE                             R17 R15
      110 GETIMPORT                        R16 K18 [tonumber]
      112 CALL                             R16 1 1
      113 SETTABLEKS                       R16 R13 K15 ["number"]
      115 SETTABLE                         R13 R11 R12
      116 SETTABLEKS                       R11 R10 K5 ["sortKeys"]
      118 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      120 MOVE                             R9 R0
      121 GETIMPORT                        R8 K25 [table.insert]
      123 CALL                             R8 2 0
      124 FORGLOOP                         R2 2 ; [-117]
      126 DUPTABLE                         R2 K28 [{"flags", "ids"}]
      127 SETTABLEKS                       R0 R2 K26 ["flags"]
      129 SETTABLEKS                       R1 R2 K27 ["ids"]
      131 RETURN                           R2 1

PROTO_38:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 2
        9 GETTABLE                         R6 R7 R4
       10 JUMPIF                           R6 ; [+99]
       11 DUPTABLE                         R8 K8 [{"flag", "id", "searchName", "searchId", "sortKeys"}]
       12 DUPTABLE                         R9 K12 [{"name", "type", "valueType", "id"}]
       13 GETTABLEKS                       R10 R5 K9 ["name"]
       15 SETTABLEKS                       R10 R9 K9 ["name"]
       17 GETTABLEKS                       R10 R5 K10 ["type"]
       19 SETTABLEKS                       R10 R9 K10 ["type"]
       21 GETTABLEKS                       R10 R5 K11 ["valueType"]
       23 SETTABLEKS                       R10 R9 K11 ["valueType"]
       25 SETTABLEKS                       R4 R9 K4 ["id"]
       27 SETTABLEKS                       R9 R8 K3 ["flag"]
       29 SETTABLEKS                       R4 R8 K4 ["id"]
       31 GETIMPORT                        R9 K15 [string.lower]
       33 GETTABLEKS                       R10 R5 K9 ["name"]
       35 CALL                             R9 1 1
       36 SETTABLEKS                       R9 R8 K5 ["searchName"]
       38 GETIMPORT                        R9 K15 [string.lower]
       40 MOVE                             R10 R4
       41 CALL                             R9 1 1
       42 SETTABLEKS                       R9 R8 K6 ["searchId"]
       44 NEWTABLE                         R9 4 0
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K16 ["Name"]
       49 GETTABLEKS                       R12 R5 K9 ["name"]
       51 GETIMPORT                        R13 K15 [string.lower]
       53 FASTCALL1                        TOSTRING R12 ; [+3]
       54 MOVE                             R15 R12
       55 GETIMPORT                        R14 K18 [tostring]
       57 CALL                             R14 1 1
       58 CALL                             R13 1 1
       59 DUPTABLE                         R11 K21 [{"text", "number"}]
       60 SETTABLEKS                       R13 R11 K19 ["text"]
       62 FASTCALL1                        TONUMBER R13 ; [+3]
       63 MOVE                             R15 R13
       64 GETIMPORT                        R14 K23 [tonumber]
       66 CALL                             R14 1 1
       67 SETTABLEKS                       R14 R11 K20 ["number"]
       69 SETTABLE                         R11 R9 R10
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R10 R10 K24 ["Type"]
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R12 R12 K25 ["FormatFlagType"]
       76 MOVE                             R13 R5
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K15 [string.lower]
       80 FASTCALL1                        TOSTRING R12 ; [+3]
       81 MOVE                             R15 R12
       82 GETIMPORT                        R14 K18 [tostring]
       84 CALL                             R14 1 1
       85 CALL                             R13 1 1
       86 DUPTABLE                         R11 K21 [{"text", "number"}]
       87 SETTABLEKS                       R13 R11 K19 ["text"]
       89 FASTCALL1                        TONUMBER R13 ; [+3]
       90 MOVE                             R15 R13
       91 GETIMPORT                        R14 K23 [tonumber]
       93 CALL                             R14 1 1
       94 SETTABLEKS                       R14 R11 K20 ["number"]
       96 SETTABLE                         R11 R9 R10
       97 GETUPVAL                         R10 3
       98 GETTABLEKS                       R10 R10 K26 ["Value"]
      100 LOADNIL                          R11
      101 SETTABLE                         R11 R9 R10
      102 SETTABLEKS                       R9 R8 K7 ["sortKeys"]
      104 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      106 MOVE                             R7 R0
      107 GETIMPORT                        R6 K28 [table.insert]
      109 CALL                             R6 2 0
      110 FORGLOOP                         R1 2 ; [-103]
      112 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 GETUPVAL                         R7 3
        6 CALL                             R2 5 1
        7 RETURN                           R2 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["column"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["direction"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["Neutral"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 GETUPVAL                         R0 2
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["column"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["direction"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["Descending"]
       24 JUMPIFEQ                         R2 R3 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K4 ["current"]
       31 GETTABLEKS                       R3 R2 K5 ["source"]
       33 GETUPVAL                         R4 2
       34 JUMPIFEQ                         R3 R4 ; [+8]
       36 GETUPVAL                         R3 2
       37 SETTABLEKS                       R3 R2 K5 ["source"]
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R2 K6 ["orders"]
       43 LOADK                            R3 K7 ["%*:%*"]
       44 MOVE                             R5 R0
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K1 ["direction"]
       48 NAMECALL                         R3 R3 K8 ["format"]
       50 CALL                             R3 3 1
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K9 ["Override"]
       54 JUMPIFEQ                         R0 R4 ; [+10]
       56 GETTABLEKS                       R5 R2 K6 ["orders"]
       58 GETTABLE                         R4 R5 R3
       59 JUMPIFEQKNIL                     R4 ; [+5]
       61 GETTABLEKS                       R5 R2 K6 ["orders"]
       63 GETTABLE                         R4 R5 R3
       64 RETURN                           R4 1
       65 NEWTABLE                         R4 0 0
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K9 ["Override"]
       70 JUMPIFNOTEQ                      R0 R5 ; [+35]
       72 GETUPVAL                         R5 5
       73 JUMPIF                           R5 ; [+2]
       74 NEWTABLE                         R5 0 0
       76 LOADNIL                          R6
       77 LOADNIL                          R7
       78 FORGPREP                         R5
       79 GETTABLEKS                       R10 R9 K10 ["value"]
       81 JUMPIFEQKNIL                     R10 ; [+22]
       83 GETTABLEKS                       R11 R9 K10 ["value"]
       85 GETIMPORT                        R12 K13 [string.lower]
       87 FASTCALL1                        TOSTRING R11 ; [+3]
       88 MOVE                             R14 R11
       89 GETIMPORT                        R13 K15 [tostring]
       91 CALL                             R13 1 1
       92 CALL                             R12 1 1
       93 DUPTABLE                         R10 K18 [{"text", "number"}]
       94 SETTABLEKS                       R12 R10 K16 ["text"]
       96 FASTCALL1                        TONUMBER R12 ; [+3]
       97 MOVE                             R14 R12
       98 GETIMPORT                        R13 K20 [tonumber]
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R10 K17 ["number"]
      103 SETTABLE                         R10 R4 R8
      104 FORGLOOP                         R5 2 ; [-26]
      106 GETIMPORT                        R5 K23 [table.clone]
      108 GETUPVAL                         R6 2
      109 CALL                             R5 1 1
      110 GETIMPORT                        R6 K25 [table.sort]
      112 MOVE                             R7 R5
      113 NEWCLOSURE                       R8 P0
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CALL                             R6 2 0
      119 GETUPVAL                         R6 4
      120 GETTABLEKS                       R6 R6 K9 ["Override"]
      122 JUMPIFEQ                         R0 R6 ; [+4]
      124 GETTABLEKS                       R6 R2 K6 ["orders"]
      126 SETTABLE                         R5 R6 R3
      127 RETURN                           R5 1

PROTO_41:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [string.lower]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 LOADB                            R2 0
        7 LOADN                            R3 0
        8 GETUPVAL                         R4 1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADB                            R9 1
       13 JUMPIFEQKS                       R1 K3 [""] ; [+24]
       15 LOADB                            R9 1
       16 GETIMPORT                        R10 K5 [string.find]
       18 GETTABLEKS                       R11 R8 K6 ["searchName"]
       20 MOVE                             R12 R1
       21 LOADN                            R13 1
       22 LOADB                            R14 1
       23 CALL                             R10 4 1
       24 JUMPIFNOTEQKNIL                  R10 ; [+13]
       26 GETIMPORT                        R10 K5 [string.find]
       28 GETTABLEKS                       R11 R8 K7 ["searchId"]
       30 MOVE                             R12 R1
       31 LOADN                            R13 1
       32 LOADB                            R14 1
       33 CALL                             R10 4 1
       34 JUMPIFNOTEQKNIL                  R10 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 JUMPIFNOT                        R9 ; [+31]
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R13 R8 K8 ["id"]
       42 GETTABLE                         R11 R12 R13
       43 JUMPIFNOTEQKNIL                  R11 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 JUMPIFEQKS                       R1 K3 [""] ; [+12]
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R13 R8 K8 ["id"]
       52 GETTABLE                         R11 R12 R13
       53 JUMPIFNOT                        R11 ; [+3]
       54 GETUPVAL                         R11 4
       55 JUMPIFNOT                        R11 ; [+1]
       56 JUMPIFNOT                        R10 ; [+2]
       57 LOADB                            R2 1
       58 JUMP                             ; [+1]
       59 ADDK                             R3 R3 K9 [1]
       60 GETUPVAL                         R11 4
       61 JUMPIFNOT                        R11 ; [+1]
       62 JUMPIFNOT                        R10 ; [+7]
       63 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       65 MOVE                             R12 R0
       66 MOVE                             R13 R8
       67 GETIMPORT                        R11 K12 [table.insert]
       69 CALL                             R11 2 0
       70 FORGLOOP                         R4 2 ; [-59]
       72 DUPTABLE                         R4 K15 [{"flags", "keywordMatchesExisting"}]
       73 SETTABLEKS                       R0 R4 K13 ["flags"]
       75 MOVE                             R5 R2
       76 JUMPIF                           R5 ; [+5]
       77 LOADN                            R6 1
       78 JUMPIFLT                         R6 R3 ; [+2]
       80 LOADB                            R5 0 +1
       81 LOADB                            R5 1
       82 SETTABLEKS                       R5 R4 K14 ["keywordMatchesExisting"]
       84 RETURN                           R4 1

PROTO_42:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K4 [{"item", "index", "height", "key"}]
        7 GETTABLEKS                       R9 R5 K5 ["flag"]
        9 SETTABLEKS                       R9 R8 K0 ["item"]
       11 LENGTH                           R9 R0
       12 SETTABLEKS                       R9 R8 K1 ["index"]
       14 GETUPVAL                         R9 1
       15 SETTABLEKS                       R9 R8 K2 ["height"]
       17 GETTABLEKS                       R9 R5 K6 ["id"]
       19 SETTABLEKS                       R9 R8 K3 ["key"]
       21 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       23 MOVE                             R7 R0
       24 GETIMPORT                        R6 K9 [table.insert]
       26 CALL                             R6 2 0
       27 FORGLOOP                         R1 2 ; [-22]
       29 RETURN                           R0 1

PROTO_43:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["overrides"]
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 DUPCLOSURE                       R2 K3 [PROTO_43]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
       16 GETTABLEKS                       R1 R1 K1 ["map"]
       18 GETUPVAL                         R2 2
       19 DUPCLOSURE                       R3 K4 [PROTO_44]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
       24 GETTABLEKS                       R3 R3 K5 ["equals"]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 1
       29 NOT                              R2 R3
       30 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R1 K0 ["Size"]
        6 GETTABLEKS                       R3 R3 K1 ["Size_800"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["useState"]
       11 NEWTABLE                         R5 0 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["useState"]
       17 LOADK                            R7 K3 [""]
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K4 ["Trim"]
       22 MOVE                             R9 R6
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K2 ["useState"]
       27 DUPTABLE                         R10 K7 [{"column", "direction"}]
       28 GETUPVAL                         R11 4
       29 GETTABLEKS                       R11 R11 K8 ["Name"]
       31 SETTABLEKS                       R11 R10 K5 ["column"]
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K9 ["Ascending"]
       36 SETTABLEKS                       R11 R10 K6 ["direction"]
       38 CALL                             R9 1 2
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       42 NEWCLOSURE                       R12 P0
       43 CAPTURE                          VAL R9
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 1
       48 MOVE                             R14 R9
       49 SETLIST                          R13 R14 1 [1]
       51 CALL                             R11 2 1
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R14 0 2
       61 GETTABLEKS                       R15 R0 K11 ["copyToClipboard"]
       63 MOVE                             R16 R2
       64 SETLIST                          R14 R15 2 [1]
       66 CALL                             R12 2 1
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K2 ["useState"]
       70 LOADB                            R14 0
       71 CALL                             R13 1 2
       72 GETUPVAL                         R15 2
       73 GETTABLEKS                       R15 R15 K2 ["useState"]
       75 LOADNIL                          R16
       76 CALL                             R15 1 2
       77 GETUPVAL                         R17 2
       78 GETTABLEKS                       R17 R17 K2 ["useState"]
       80 NEWTABLE                         R18 0 0
       82 CALL                             R17 1 2
       83 GETUPVAL                         R19 2
       84 GETTABLEKS                       R19 R19 K12 ["useRef"]
       86 LOADNIL                          R20
       87 CALL                             R19 1 1
       88 GETUPVAL                         R20 2
       89 GETTABLEKS                       R20 R20 K10 ["useCallback"]
       91 NEWCLOSURE                       R21 P2
       92 CAPTURE                          VAL R12
       93 NEWTABLE                         R22 0 1
       95 MOVE                             R23 R12
       96 SETLIST                          R22 R23 1 [1]
       98 CALL                             R20 2 1
       99 GETUPVAL                         R21 2
      100 GETTABLEKS                       R21 R21 K10 ["useCallback"]
      102 NEWCLOSURE                       R22 P3
      103 CAPTURE                          VAL R17
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          VAL R12
      107 NEWTABLE                         R23 0 2
      109 MOVE                             R24 R17
      110 MOVE                             R25 R12
      111 SETLIST                          R23 R24 2 [1]
      113 CALL                             R21 2 1
      114 GETUPVAL                         R22 2
      115 GETTABLEKS                       R22 R22 K10 ["useCallback"]
      117 NEWCLOSURE                       R23 P4
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R17
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R12
      122 NEWTABLE                         R24 0 2
      124 MOVE                             R25 R17
      125 MOVE                             R26 R12
      126 SETLIST                          R24 R25 2 [1]
      128 CALL                             R22 2 1
      129 GETUPVAL                         R23 2
      130 GETTABLEKS                       R23 R23 K13 ["useEffect"]
      132 NEWCLOSURE                       R24 P5
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          VAL R18
      139 NEWTABLE                         R25 0 2
      141 GETTABLEKS                       R26 R0 K14 ["flags"]
      143 GETTABLEKS                       R27 R0 K15 ["overrides"]
      145 SETLIST                          R25 R26 2 [1]
      147 CALL                             R23 2 0
      148 GETUPVAL                         R23 2
      149 GETTABLEKS                       R23 R23 K10 ["useCallback"]
      151 NEWCLOSURE                       R24 P6
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R25 0 4
      158 MOVE                             R26 R17
      159 GETTABLEKS                       R27 R0 K16 ["saveOverrides"]
      161 GETTABLEKS                       R28 R0 K17 ["onSaved"]
      163 MOVE                             R29 R2
      164 SETLIST                          R25 R26 4 [1]
      166 CALL                             R23 2 1
      167 GETUPVAL                         R24 2
      168 GETTABLEKS                       R24 R24 K10 ["useCallback"]
      170 NEWCLOSURE                       R25 P7
      171 CAPTURE                          VAL R18
      172 NEWTABLE                         R26 0 1
      174 MOVE                             R27 R18
      175 SETLIST                          R26 R27 1 [1]
      177 CALL                             R24 2 1
      178 GETUPVAL                         R25 2
      179 GETTABLEKS                       R25 R25 K10 ["useCallback"]
      181 NEWCLOSURE                       R26 P8
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          VAL R17
      184 CAPTURE                          UPVAL U3
      185 CAPTURE                          UPVAL U10
      186 CAPTURE                          VAL R18
      187 NEWTABLE                         R27 0 2
      189 MOVE                             R28 R17
      190 MOVE                             R29 R18
      191 SETLIST                          R27 R28 2 [1]
      193 CALL                             R25 2 1
      194 GETUPVAL                         R26 2
      195 GETTABLEKS                       R26 R26 K10 ["useCallback"]
      197 NEWCLOSURE                       R27 P9
      198 CAPTURE                          UPVAL U3
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R18
      202 CAPTURE                          UPVAL U10
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          VAL R4
      205 NEWTABLE                         R28 0 3
      207 MOVE                             R29 R4
      208 MOVE                             R30 R17
      209 MOVE                             R31 R18
      210 SETLIST                          R28 R29 3 [1]
      212 CALL                             R26 2 1
      213 GETUPVAL                         R27 2
      214 GETTABLEKS                       R27 R27 K10 ["useCallback"]
      216 NEWCLOSURE                       R28 P10
      217 CAPTURE                          UPVAL U3
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R26
      222 NEWTABLE                         R29 0 4
      224 MOVE                             R30 R4
      225 MOVE                             R31 R17
      226 MOVE                             R32 R25
      227 MOVE                             R33 R26
      228 SETLIST                          R29 R30 4 [1]
      230 CALL                             R27 2 1
      231 GETUPVAL                         R28 2
      232 GETTABLEKS                       R28 R28 K10 ["useCallback"]
      234 NEWCLOSURE                       R29 P11
      235 CAPTURE                          VAL R27
      236 NEWTABLE                         R30 0 1
      238 MOVE                             R31 R27
      239 SETLIST                          R30 R31 1 [1]
      241 CALL                             R28 2 1
      242 GETUPVAL                         R29 2
      243 GETTABLEKS                       R29 R29 K10 ["useCallback"]
      245 NEWCLOSURE                       R30 P12
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          VAL R17
      248 CAPTURE                          UPVAL U3
      249 CAPTURE                          UPVAL U10
      250 CAPTURE                          VAL R18
      251 NEWTABLE                         R31 0 2
      253 MOVE                             R32 R17
      254 MOVE                             R33 R18
      255 SETLIST                          R31 R32 2 [1]
      257 CALL                             R29 2 1
      258 GETUPVAL                         R30 2
      259 GETTABLEKS                       R30 R30 K10 ["useCallback"]
      261 NEWCLOSURE                       R31 P13
      262 CAPTURE                          UPVAL U3
      263 CAPTURE                          VAL R17
      264 CAPTURE                          UPVAL U12
      265 CAPTURE                          UPVAL U10
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R20
      268 CAPTURE                          UPVAL U7
      269 CAPTURE                          VAL R12
      270 CAPTURE                          UPVAL U2
      271 CAPTURE                          UPVAL U13
      272 CAPTURE                          UPVAL U14
      273 CAPTURE                          UPVAL U15
      274 CAPTURE                          UPVAL U16
      275 CAPTURE                          VAL R29
      276 CAPTURE                          UPVAL U11
      277 CAPTURE                          UPVAL U17
      278 CAPTURE                          UPVAL U18
      279 CAPTURE                          UPVAL U19
      280 CAPTURE                          UPVAL U20
      281 CAPTURE                          VAL R15
      282 CAPTURE                          UPVAL U21
      283 CAPTURE                          VAL R16
      284 CAPTURE                          UPVAL U22
      285 CAPTURE                          VAL R21
      286 CAPTURE                          VAL R25
      287 NEWTABLE                         R32 0 8
      289 MOVE                             R33 R17
      290 MOVE                             R34 R25
      291 MOVE                             R35 R29
      292 MOVE                             R36 R18
      293 MOVE                             R37 R20
      294 MOVE                             R38 R21
      295 MOVE                             R39 R12
      296 MOVE                             R40 R15
      297 SETLIST                          R32 R33 8 [1]
      299 CALL                             R30 2 1
      300 GETUPVAL                         R31 2
      301 GETTABLEKS                       R31 R31 K18 ["useMemo"]
      303 NEWCLOSURE                       R32 P14
      304 CAPTURE                          VAL R17
      305 NEWTABLE                         R33 0 1
      307 MOVE                             R34 R17
      308 SETLIST                          R33 R34 1 [1]
      310 CALL                             R31 2 1
      311 GETUPVAL                         R32 2
      312 GETTABLEKS                       R32 R32 K2 ["useState"]
      314 DUPTABLE                         R33 K20 [{"columnSort", "overrides"}]
      315 SETTABLEKS                       R9 R33 K19 ["columnSort"]
      317 SETTABLEKS                       R17 R33 K15 ["overrides"]
      319 CALL                             R32 1 2
      320 LOADB                            R34 0
      321 GETTABLEKS                       R35 R9 K5 ["column"]
      323 GETUPVAL                         R36 4
      324 GETTABLEKS                       R36 R36 K21 ["Override"]
      326 JUMPIFNOTEQ                      R35 R36 ; [+10]
      328 GETTABLEKS                       R35 R9 K6 ["direction"]
      330 GETUPVAL                         R36 5
      331 GETTABLEKS                       R36 R36 K22 ["Neutral"]
      333 JUMPIFNOTEQ                      R35 R36 ; [+2]
      335 LOADB                            R34 0 +1
      336 LOADB                            R34 1
      337 JUMPIFNOT                        R34 ; [+2]
      338 MOVE                             R35 R17
      339 JUMP                             ; [+1]
      340 LOADNIL                          R35
      341 JUMPIFNOT                        R34 ; [+44]
      342 GETTABLEKS                       R37 R32 K19 ["columnSort"]
      344 JUMPIFEQ                         R37 R9 ; [+2]
      346 LOADB                            R36 0 +1
      347 LOADB                            R36 1
      348 JUMPIFNOT                        R36 ; [+26]
      349 LOADN                            R37 0
      350 GETTABLEKS                       R38 R32 K15 ["overrides"]
      352 LOADNIL                          R39
      353 LOADNIL                          R40
      354 FORGPREP                         R38
      355 ADDK                             R37 R37 K23 [1]
      356 GETTABLE                         R43 R17 R41
      357 JUMPIFNOTEQKNIL                  R43 ; [+3]
      359 LOADB                            R36 0
      360 JUMP                             ; [+2]
      361 FORGLOOP                         R38 1 ; [-7]
      363 JUMPIFNOT                        R36 ; [+11]
      364 MOVE                             R38 R17
      365 LOADNIL                          R39
      366 LOADNIL                          R40
      367 FORGPREP                         R38
      368 SUBK                             R37 R37 K23 [1]
      369 FORGLOOP                         R38 1 ; [-2]
      371 JUMPIFEQKN                       R37 K24 [0] ; [+2]
      373 LOADB                            R36 0 +1
      374 LOADB                            R36 1
      375 JUMPIFNOT                        R36 ; [+3]
      376 GETTABLEKS                       R35 R32 K15 ["overrides"]
      378 JUMP                             ; [+7]
      379 MOVE                             R37 R33
      380 DUPTABLE                         R38 K20 [{"columnSort", "overrides"}]
      381 SETTABLEKS                       R9 R38 K19 ["columnSort"]
      383 SETTABLEKS                       R17 R38 K15 ["overrides"]
      385 CALL                             R37 1 0
      386 GETUPVAL                         R36 2
      387 GETTABLEKS                       R36 R36 K18 ["useMemo"]
      389 NEWCLOSURE                       R37 P15
      390 CAPTURE                          VAL R4
      391 CAPTURE                          UPVAL U3
      392 CAPTURE                          UPVAL U4
      393 NEWTABLE                         R38 0 1
      395 MOVE                             R39 R4
      396 SETLIST                          R38 R39 1 [1]
      398 CALL                             R36 2 1
      399 GETTABLEKS                       R37 R36 K14 ["flags"]
      401 GETTABLEKS                       R38 R36 K25 ["ids"]
      403 GETUPVAL                         R39 2
      404 GETTABLEKS                       R39 R39 K18 ["useMemo"]
      406 NEWCLOSURE                       R40 P16
      407 CAPTURE                          VAL R37
      408 CAPTURE                          VAL R17
      409 CAPTURE                          VAL R38
      410 CAPTURE                          UPVAL U4
      411 CAPTURE                          UPVAL U3
      412 NEWTABLE                         R41 0 3
      414 MOVE                             R42 R37
      415 MOVE                             R43 R38
      416 MOVE                             R44 R31
      417 SETLIST                          R41 R42 3 [1]
      419 CALL                             R39 2 1
      420 GETUPVAL                         R40 2
      421 GETTABLEKS                       R40 R40 K12 ["useRef"]
      423 DUPTABLE                         R41 K29 [{["source"] = , ["orders"]}]
      424 NEWTABLE                         R42 0 0
      426 SETTABLEKS                       R42 R41 K28 ["orders"]
      428 CALL                             R40 1 1
      429 GETUPVAL                         R41 2
      430 GETTABLEKS                       R41 R41 K18 ["useMemo"]
      432 NEWCLOSURE                       R42 P17
      433 CAPTURE                          VAL R9
      434 CAPTURE                          UPVAL U5
      435 CAPTURE                          VAL R39
      436 CAPTURE                          VAL R40
      437 CAPTURE                          UPVAL U4
      438 CAPTURE                          REF R35
      439 CAPTURE                          UPVAL U23
      440 NEWTABLE                         R43 0 3
      442 MOVE                             R44 R39
      443 MOVE                             R45 R9
      444 MOVE                             R46 R35
      445 SETLIST                          R43 R44 3 [1]
      447 CALL                             R41 2 1
      448 GETUPVAL                         R42 2
      449 GETTABLEKS                       R42 R42 K18 ["useMemo"]
      451 NEWCLOSURE                       R43 P18
      452 CAPTURE                          VAL R8
      453 CAPTURE                          VAL R41
      454 CAPTURE                          VAL R17
      455 CAPTURE                          VAL R38
      456 CAPTURE                          VAL R13
      457 NEWTABLE                         R44 0 5
      459 MOVE                             R45 R41
      460 MOVE                             R46 R38
      461 MOVE                             R47 R8
      462 MOVE                             R48 R13
      463 MOVE                             R49 R31
      464 SETLIST                          R44 R45 5 [1]
      466 CALL                             R42 2 1
      467 GETTABLEKS                       R43 R42 K14 ["flags"]
      469 GETUPVAL                         R44 2
      470 GETTABLEKS                       R44 R44 K18 ["useMemo"]
      472 NEWCLOSURE                       R45 P19
      473 CAPTURE                          VAL R43
      474 CAPTURE                          VAL R3
      475 NEWTABLE                         R46 0 2
      477 MOVE                             R47 R43
      478 MOVE                             R48 R3
      479 SETLIST                          R46 R47 2 [1]
      481 CALL                             R44 2 1
      482 GETTABLEKS                       R45 R1 K0 ["Size"]
      484 GETTABLEKS                       R45 R45 K30 ["Size_200"]
      486 GETIMPORT                        R47 K32 [next]
      488 MOVE                             R48 R17
      489 CALL                             R47 1 1
      490 JUMPIFNOTEQKNIL                  R47 ; [+2]
      492 LOADB                            R46 0 +1
      493 LOADB                            R46 1
      494 GETUPVAL                         R47 2
      495 GETTABLEKS                       R47 R47 K18 ["useMemo"]
      497 NEWCLOSURE                       R48 P20
      498 CAPTURE                          UPVAL U10
      499 CAPTURE                          VAL R0
      500 CAPTURE                          VAL R17
      501 NEWTABLE                         R49 0 2
      503 MOVE                             R50 R17
      504 GETTABLEKS                       R51 R0 K15 ["overrides"]
      506 SETLIST                          R49 R50 2 [1]
      508 CALL                             R47 2 1
      509 GETUPVAL                         R48 24
      510 DUPTABLE                         R49 K36 [{"virtualizedItems", "renderItem", "scrollingFrameRef"}]
      511 SETTABLEKS                       R44 R49 K33 ["virtualizedItems"]
      513 SETTABLEKS                       R30 R49 K34 ["renderItem"]
      515 SETTABLEKS                       R19 R49 K35 ["scrollingFrameRef"]
      517 CALL                             R48 1 2
      518 GETUPVAL                         R50 2
      519 GETTABLEKS                       R50 R50 K37 ["createElement"]
      521 LOADK                            R51 K38 ["UIPadding"]
      522 DUPTABLE                         R52 K43 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      523 GETIMPORT                        R53 K46 [UDim.new]
      525 LOADN                            R54 0
      526 LOADN                            R55 0
      527 CALL                             R53 2 1
      528 SETTABLEKS                       R53 R52 K39 ["PaddingTop"]
      530 GETIMPORT                        R53 K46 [UDim.new]
      532 LOADN                            R54 0
      533 LOADN                            R55 0
      534 CALL                             R53 2 1
      535 SETTABLEKS                       R53 R52 K40 ["PaddingBottom"]
      537 GETIMPORT                        R53 K46 [UDim.new]
      539 LOADN                            R54 0
      540 LOADN                            R55 0
      541 CALL                             R53 2 1
      542 SETTABLEKS                       R53 R52 K41 ["PaddingLeft"]
      544 GETIMPORT                        R53 K46 [UDim.new]
      546 LOADN                            R54 0
      547 GETTABLEKS                       R55 R1 K47 ["Padding"]
      549 GETTABLEKS                       R55 R55 K48 ["Small"]
      551 CALL                             R53 2 1
      552 SETTABLEKS                       R53 R52 K42 ["PaddingRight"]
      554 CALL                             R50 2 1
      555 SETTABLEKS                       R50 R48 K47 ["Padding"]
      557 GETTABLEKS                       R50 R42 K49 ["keywordMatchesExisting"]
      559 LOADK                            R51 K50 ["No flag found matching <b>%*</b>"]
      560 GETUPVAL                         R53 3
      561 GETTABLEKS                       R53 R53 K51 ["EscapeRichText"]
      563 MOVE                             R54 R8
      564 CALL                             R53 1 1
      565 NAMECALL                         R51 R51 K52 ["format"]
      567 CALL                             R51 2 1
      568 GETUPVAL                         R52 2
      569 GETTABLEKS                       R52 R52 K37 ["createElement"]
      571 GETUPVAL                         R53 25
      572 DUPTABLE                         R54 K54 [{"tag", "Size"}]
      573 GETTABLEKS                       R56 R0 K0 ["Size"]
      575 JUMPIFNOT                        R56 ; [+2]
      576 LOADK                            R55 K55 ["col"]
      577 JUMP                             ; [+1]
      578 LOADK                            R55 K56 ["col size-full"]
      579 SETTABLEKS                       R55 R54 K53 ["tag"]
      581 GETTABLEKS                       R55 R0 K0 ["Size"]
      583 SETTABLEKS                       R55 R54 K0 ["Size"]
      585 DUPTABLE                         R55 K60 [{"FlagsHeader", "Flags", "Snackbar"}]
      586 GETUPVAL                         R56 2
      587 GETTABLEKS                       R56 R56 K37 ["createElement"]
      589 GETUPVAL                         R57 26
      590 DUPTABLE                         R58 K71 [{"columnSort", "onSort", "onSearchChanged", "onSearchFocusLost", "filterOverrides", "onFilterOverrides", "hasOverrides", "hasUnsavedChanges", "onClearOverrides", "onSave", "onCopyOverrides"}]
      591 SETTABLEKS                       R9 R58 K19 ["columnSort"]
      593 SETTABLEKS                       R11 R58 K61 ["onSort"]
      595 SETTABLEKS                       R7 R58 K62 ["onSearchChanged"]
      597 SETTABLEKS                       R28 R58 K63 ["onSearchFocusLost"]
      599 SETTABLEKS                       R13 R58 K64 ["filterOverrides"]
      601 SETTABLEKS                       R14 R58 K65 ["onFilterOverrides"]
      603 SETTABLEKS                       R46 R58 K66 ["hasOverrides"]
      605 SETTABLEKS                       R47 R58 K67 ["hasUnsavedChanges"]
      607 SETTABLEKS                       R24 R58 K68 ["onClearOverrides"]
      609 SETTABLEKS                       R23 R58 K69 ["onSave"]
      611 SETTABLEKS                       R22 R58 K70 ["onCopyOverrides"]
      613 CALL                             R56 2 1
      614 SETTABLEKS                       R56 R55 K57 ["FlagsHeader"]
      616 JUMPIFEQKS                       R8 K3 [""] ; [+63]
      618 JUMPIF                           R50 ; [+61]
      619 GETUPVAL                         R56 2
      620 GETTABLEKS                       R56 R56 K37 ["createElement"]
      622 GETUPVAL                         R57 25
      623 DUPTABLE                         R58 K77 [{["tag"] = "size-full-0 fill col align-x-center align-y-center gap-small", ["LayoutOrder"] = 3, ["testId"] = "flag-editor-add-unidentified"}]
      624 DUPTABLE                         R59 K81 [{"Pictogram", "Text", "Button"}]
      625 GETUPVAL                         R60 2
      626 GETTABLEKS                       R60 R60 K37 ["createElement"]
      628 GETUPVAL                         R61 27
      629 DUPTABLE                         R62 K84 [{["Image"] = "icons/graphic/error_xlarge", [2], ["LayoutOrder"] = 1}]
      630 GETIMPORT                        R63 K87 [UDim2.fromOffset]
      632 GETTABLEKS                       R64 R1 K0 ["Size"]
      634 GETTABLEKS                       R64 R64 K88 ["Size_2400"]
      636 GETTABLEKS                       R65 R1 K0 ["Size"]
      638 GETTABLEKS                       R65 R65 K88 ["Size_2400"]
      640 CALL                             R63 2 1
      641 SETTABLEKS                       R63 R62 K0 ["Size"]
      643 CALL                             R60 2 1
      644 SETTABLEKS                       R60 R59 K78 ["Pictogram"]
      646 GETUPVAL                         R60 2
      647 GETTABLEKS                       R60 R60 K37 ["createElement"]
      649 GETUPVAL                         R61 28
      650 DUPTABLE                         R62 K96 [{["Text"], ["RichText"] = True, ["TextWrapped"] = True, ["TextTruncate"], ["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-center content-default", ["testId"] = "flag-editor-add-unidentified-text"}]
      651 SETTABLEKS                       R51 R62 K79 ["Text"]
      653 GETIMPORT                        R63 K99 [Enum.TextTruncate.None]
      655 SETTABLEKS                       R63 R62 K92 ["TextTruncate"]
      657 CALL                             R60 2 1
      658 SETTABLEKS                       R60 R59 K79 ["Text"]
      660 GETUPVAL                         R60 2
      661 GETTABLEKS                       R60 R60 K37 ["createElement"]
      663 GETUPVAL                         R61 14
      664 DUPTABLE                         R62 K107 [{["text"] = "Add override", ["icon"] = "plus-small", ["size"], ["onActivated"], ["LayoutOrder"] = 3, ["testId"] = "flag-editor-add-unidentified-button"}]
      665 GETUPVAL                         R63 15
      666 GETTABLEKS                       R63 R63 K48 ["Small"]
      668 SETTABLEKS                       R63 R62 K104 ["size"]
      670 NEWCLOSURE                       R63 P21
      671 CAPTURE                          VAL R27
      672 CAPTURE                          VAL R8
      673 SETTABLEKS                       R63 R62 K105 ["onActivated"]
      675 CALL                             R60 2 1
      676 SETTABLEKS                       R60 R59 K80 ["Button"]
      678 CALL                             R56 3 1
      679 JUMP                             ; [+71]
      680 GETUPVAL                         R56 2
      681 GETTABLEKS                       R56 R56 K37 ["createElement"]
      683 GETUPVAL                         R57 25
      684 DUPTABLE                         R58 K109 [{["tag"] = "size-full-0 fill", ["LayoutOrder"] = 3}]
      685 DUPTABLE                         R59 K111 [{"VirtualizedList"}]
      686 GETUPVAL                         R60 2
      687 GETTABLEKS                       R60 R60 K37 ["createElement"]
      689 LOADK                            R61 K112 ["ScrollingFrame"]
      690 DUPTABLE                         R62 K121 [{[1], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ScrollingDirection"], ["ScrollBarThickness"], ["ScrollBarImageTransparency"], ["ScrollBarImageColor3"], ["ref"]}]
      691 GETIMPORT                        R63 K123 [UDim2.fromScale]
      693 LOADN                            R64 1
      694 LOADN                            R65 1
      695 CALL                             R63 2 1
      696 SETTABLEKS                       R63 R62 K0 ["Size"]
      698 GETTABLEKS                       R63 R1 K124 ["Color"]
      700 GETTABLEKS                       R63 R63 K125 ["Surface"]
      702 GETTABLEKS                       R63 R63 K126 ["Surface_0"]
      704 GETTABLEKS                       R63 R63 K127 ["Transparency"]
      706 SETTABLEKS                       R63 R62 K113 ["BackgroundTransparency"]
      708 GETTABLEKS                       R63 R1 K124 ["Color"]
      710 GETTABLEKS                       R63 R63 K125 ["Surface"]
      712 GETTABLEKS                       R63 R63 K126 ["Surface_0"]
      714 GETTABLEKS                       R63 R63 K128 ["Color3"]
      716 SETTABLEKS                       R63 R62 K114 ["BackgroundColor3"]
      718 GETIMPORT                        R63 K130 [Enum.ScrollingDirection.Y]
      720 SETTABLEKS                       R63 R62 K116 ["ScrollingDirection"]
      722 SETTABLEKS                       R45 R62 K117 ["ScrollBarThickness"]
      724 GETTABLEKS                       R63 R1 K124 ["Color"]
      726 GETTABLEKS                       R63 R63 K125 ["Surface"]
      728 GETTABLEKS                       R63 R63 K131 ["Surface_300"]
      730 GETTABLEKS                       R63 R63 K127 ["Transparency"]
      732 SETTABLEKS                       R63 R62 K118 ["ScrollBarImageTransparency"]
      734 GETTABLEKS                       R63 R1 K124 ["Color"]
      736 GETTABLEKS                       R63 R63 K125 ["Surface"]
      738 GETTABLEKS                       R63 R63 K131 ["Surface_300"]
      740 GETTABLEKS                       R63 R63 K128 ["Color3"]
      742 SETTABLEKS                       R63 R62 K119 ["ScrollBarImageColor3"]
      744 SETTABLEKS                       R19 R62 K120 ["ref"]
      746 MOVE                             R63 R48
      747 CALL                             R60 3 1
      748 SETTABLEKS                       R60 R59 K110 ["VirtualizedList"]
      750 CALL                             R56 3 1
      751 SETTABLEKS                       R56 R55 K58 ["Flags"]
      753 GETUPVAL                         R56 2
      754 GETTABLEKS                       R56 R56 K37 ["createElement"]
      756 LOADK                            R57 K132 ["Folder"]
      757 NEWTABLE                         R58 0 0
      759 DUPTABLE                         R59 K134 [{"Notice"}]
      760 GETUPVAL                         R60 2
      761 GETTABLEKS                       R60 R60 K37 ["createElement"]
      763 GETUPVAL                         R61 29
      764 GETTABLEKS                       R61 R61 K59 ["Snackbar"]
      766 CALL                             R60 1 1
      767 SETTABLEKS                       R60 R59 K133 ["Notice"]
      769 CALL                             R56 3 1
      770 SETTABLEKS                       R56 R55 K59 ["Snackbar"]
      772 CALL                             R52 3 -1
      773 CLOSEUPVALS                      R35
      774 RETURN                           R52 -1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 NEWTABLE                         R3 0 0
        8 DUPTABLE                         R4 K3 [{"Editor"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R0
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K2 ["Editor"]
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["VirtualizedList"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["Hooks"]
       31 GETTABLEKS                       R6 R6 K12 ["useVirtualizedList"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R1 K13 ["Foundation"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K14 ["Button"]
       40 GETTABLEKS                       R9 R7 K15 ["Dropdown"]
       42 GETTABLEKS                       R9 R9 K16 ["Root"]
       44 GETTABLEKS                       R10 R7 K17 ["Image"]
       46 GETTABLEKS                       R11 R7 K18 ["Text"]
       48 GETTABLEKS                       R12 R7 K19 ["TextInput"]
       50 GETTABLEKS                       R13 R7 K20 ["View"]
       52 GETTABLEKS                       R14 R7 K21 ["Enums"]
       54 GETTABLEKS                       R14 R14 K22 ["ButtonSize"]
       56 GETTABLEKS                       R15 R7 K21 ["Enums"]
       58 GETTABLEKS                       R15 R15 K23 ["ButtonVariant"]
       60 GETTABLEKS                       R16 R7 K21 ["Enums"]
       62 GETTABLEKS                       R16 R16 K24 ["InputSize"]
       64 GETTABLEKS                       R17 R7 K21 ["Enums"]
       66 GETTABLEKS                       R17 R17 K25 ["InputVariant"]
       68 GETTABLEKS                       R18 R7 K11 ["Hooks"]
       70 GETTABLEKS                       R18 R18 K26 ["useTokens"]
       72 GETIMPORT                        R19 K28 [game]
       74 LOADK                            R21 K29 ["HttpService"]
       75 NAMECALL                         R19 R19 K30 ["GetService"]
       77 CALL                             R19 2 1
       78 GETIMPORT                        R20 K28 [game]
       80 LOADK                            R22 K31 ["StudioService"]
       81 NAMECALL                         R20 R20 K30 ["GetService"]
       83 CALL                             R20 2 1
       84 DUPTABLE                         R21 K33 [{"copy"}]
       85 DUPCLOSURE                       R22 K34 [PROTO_0]
       86 CAPTURE                          VAL R20
       87 SETTABLEKS                       R22 R21 K32 ["copy"]
       89 GETIMPORT                        R22 K6 [require]
       91 GETIMPORT                        R23 K1 [script]
       93 GETTABLEKS                       R23 R23 K4 ["Parent"]
       95 GETTABLEKS                       R23 R23 K35 ["Flags"]
       97 CALL                             R22 1 1
       98 GETIMPORT                        R23 K6 [require]
      100 GETIMPORT                        R24 K1 [script]
      102 GETTABLEKS                       R24 R24 K4 ["Parent"]
      104 GETTABLEKS                       R24 R24 K36 ["FlagEditorHeader"]
      106 CALL                             R23 1 1
      107 GETIMPORT                        R24 K6 [require]
      109 GETIMPORT                        R25 K1 [script]
      111 GETTABLEKS                       R25 R25 K4 ["Parent"]
      113 GETTABLEKS                       R25 R25 K37 ["FlagRow"]
      115 CALL                             R24 1 1
      116 GETIMPORT                        R25 K6 [require]
      118 GETIMPORT                        R26 K1 [script]
      120 GETTABLEKS                       R26 R26 K4 ["Parent"]
      122 GETTABLEKS                       R26 R26 K38 ["useSnackbar"]
      124 CALL                             R25 1 1
      125 GETTABLEKS                       R26 R25 K38 ["useSnackbar"]
      127 GETIMPORT                        R27 K6 [require]
      129 GETIMPORT                        R28 K1 [script]
      131 GETTABLEKS                       R28 R28 K4 ["Parent"]
      133 GETTABLEKS                       R28 R28 K39 ["FlagValueInput"]
      135 CALL                             R27 1 1
      136 GETIMPORT                        R28 K6 [require]
      138 GETIMPORT                        R29 K1 [script]
      140 GETTABLEKS                       R29 R29 K4 ["Parent"]
      142 GETTABLEKS                       R29 R29 K40 ["FlagUtils"]
      144 CALL                             R28 1 1
      145 GETIMPORT                        R29 K6 [require]
      147 GETIMPORT                        R30 K1 [script]
      149 GETTABLEKS                       R30 R30 K4 ["Parent"]
      151 GETTABLEKS                       R30 R30 K41 ["FlagType"]
      153 CALL                             R29 1 1
      154 GETIMPORT                        R30 K6 [require]
      156 GETIMPORT                        R31 K1 [script]
      158 GETTABLEKS                       R31 R31 K4 ["Parent"]
      160 GETTABLEKS                       R31 R31 K42 ["FlagValueType"]
      162 CALL                             R30 1 1
      163 NEWTABLE                         R31 0 0
      165 GETIMPORT                        R32 K44 [pairs]
      167 MOVE                             R33 R30
      168 CALL                             R32 1 3
      169 FORGPREP_NEXT                    R32
      170 NEWTABLE                         R37 0 3
      172 GETTABLEKS                       R40 R29 K45 ["Static"]
      174 GETTABLEKS                       R41 R29 K46 ["Dynamic"]
      176 GETTABLEKS                       R42 R29 K47 ["Sync"]
      178 SETLIST                          R37 R40 3 [1]
      180 LOADNIL                          R38
      181 LOADNIL                          R39
      182 FORGPREP                         R37
      183 GETTABLEKS                       R42 R28 K48 ["FormatFlagType"]
      185 DUPTABLE                         R43 K51 [{"type", "valueType"}]
      186 SETTABLEKS                       R41 R43 K49 ["type"]
      188 SETTABLEKS                       R36 R43 K50 ["valueType"]
      190 CALL                             R42 1 1
      191 DUPTABLE                         R45 K54 [{"id", "text", "type", "valueType"}]
      192 SETTABLEKS                       R42 R45 K52 ["id"]
      194 SETTABLEKS                       R42 R45 K53 ["text"]
      196 SETTABLEKS                       R41 R45 K49 ["type"]
      198 SETTABLEKS                       R36 R45 K50 ["valueType"]
      200 FASTCALL2                        TABLE_INSERT R31 R45 ; [+4]
      202 MOVE                             R44 R31
      203 GETIMPORT                        R43 K57 [table.insert]
      205 CALL                             R43 2 0
      206 FORGLOOP                         R37 2 ; [-24]
      208 FORGLOOP                         R32 2 ; [-39]
      210 GETIMPORT                        R32 K59 [table.sort]
      212 MOVE                             R33 R31
      213 DUPCLOSURE                       R34 K60 [PROTO_1]
      214 CALL                             R32 2 0
      215 DUPCLOSURE                       R32 K61 [PROTO_2]
      216 CAPTURE                          VAL R31
      217 GETIMPORT                        R33 K6 [require]
      219 GETIMPORT                        R34 K1 [script]
      221 GETTABLEKS                       R34 R34 K4 ["Parent"]
      223 GETTABLEKS                       R34 R34 K62 ["OverrideStatus"]
      225 CALL                             R33 1 1
      226 GETIMPORT                        R34 K6 [require]
      228 GETIMPORT                        R35 K1 [script]
      230 GETTABLEKS                       R35 R35 K4 ["Parent"]
      232 GETTABLEKS                       R35 R35 K63 ["SortColumn"]
      234 CALL                             R34 1 1
      235 GETIMPORT                        R35 K6 [require]
      237 GETIMPORT                        R36 K1 [script]
      239 GETTABLEKS                       R36 R36 K4 ["Parent"]
      241 GETTABLEKS                       R36 R36 K64 ["SortDirection"]
      243 CALL                             R35 1 1
      244 DUPCLOSURE                       R36 K65 [PROTO_3]
      245 CAPTURE                          VAL R22
      246 DUPCLOSURE                       R37 K66 [PROTO_4]
      247 CAPTURE                          VAL R28
      248 DUPCLOSURE                       R38 K67 [PROTO_5]
      249 DUPCLOSURE                       R39 K68 [PROTO_7]
      250 CAPTURE                          VAL R34
      251 DUPCLOSURE                       R40 K69 [PROTO_47]
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R26
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R35
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R19
      260 CAPTURE                          VAL R36
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R29
      264 CAPTURE                          VAL R33
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R14
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R9
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R16
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R12
      274 CAPTURE                          VAL R27
      275 CAPTURE                          VAL R39
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R23
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R25
      282 DUPCLOSURE                       R41 K70 [PROTO_48]
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R25
      285 CAPTURE                          VAL R40
      286 RETURN                           R41 1
