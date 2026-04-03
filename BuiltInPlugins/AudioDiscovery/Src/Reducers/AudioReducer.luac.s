PROTO_0:
        0 GETTABLE                         R3 R1 R0
        1 JUMPIFNOTEQKS                    R0 K0 ["Id"] ; [+7]
        3 FASTCALL1                        TONUMBER R3 ; [+3]
        4 MOVE                             R5 R3
        5 GETIMPORT                        R4 K2 [tonumber]
        7 CALL                             R4 1 1
        8 RETURN                           R4 1
        9 JUMPIFNOT                        R2 ; [+15]
       10 JUMPIFNOTEQKS                    R0 K3 ["OK"] ; [+14]
       12 GETTABLEKS                       R5 R1 K0 ["Id"]
       14 GETTABLE                         R4 R2 R5
       15 JUMPIFNOT                        R4 ; [+8]
       16 GETTABLEKS                       R6 R1 K0 ["Id"]
       18 GETTABLE                         R5 R2 R6
       19 LENGTH                           R4 R5
       20 JUMPIFNOTEQKN                    R4 K4 [0] ; [+3]
       22 LOADK                            R4 K5 ["fixed"]
       23 RETURN                           R4 1
       24 RETURN                           R3 1
       25 FASTCALL1                        TYPE R3 ; [+3]
       26 MOVE                             R6 R3
       27 GETIMPORT                        R5 K7 [type]
       29 CALL                             R5 1 1
       30 JUMPIFNOTEQKS                    R5 K8 ["userdata"] ; [+7]
       32 FASTCALL1                        TOSTRING R3 ; [+3]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K10 [tostring]
       36 CALL                             R4 1 1
       37 RETURN                           R4 1
       38 MOVE                             R4 R3
       39 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K3 [Enum.SortDirection.Descending]
        3 JUMPIFNOTEQ                      R2 R3 ; [+94]
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 GETTABLE                         R6 R0 R4
        8 JUMPIFNOTEQKS                    R4 K4 ["Id"] ; [+8]
       10 FASTCALL1                        TONUMBER R6 ; [+3]
       11 MOVE                             R8 R6
       12 GETIMPORT                        R7 K6 [tonumber]
       14 CALL                             R7 1 1
       15 MOVE                             R3 R7
       16 JUMP                             ; [+32]
       17 JUMPIFNOT                        R5 ; [+16]
       18 JUMPIFNOTEQKS                    R4 K7 ["OK"] ; [+15]
       20 GETTABLEKS                       R8 R0 K4 ["Id"]
       22 GETTABLE                         R7 R5 R8
       23 JUMPIFNOT                        R7 ; [+8]
       24 GETTABLEKS                       R9 R0 K4 ["Id"]
       26 GETTABLE                         R8 R5 R9
       27 LENGTH                           R7 R8
       28 JUMPIFNOTEQKN                    R7 K8 [0] ; [+3]
       30 LOADK                            R3 K9 ["fixed"]
       31 JUMP                             ; [+17]
       32 MOVE                             R3 R6
       33 JUMP                             ; [+15]
       34 FASTCALL1                        TYPE R6 ; [+3]
       35 MOVE                             R8 R6
       36 GETIMPORT                        R7 K11 [type]
       38 CALL                             R7 1 1
       39 JUMPIFNOTEQKS                    R7 K12 ["userdata"] ; [+8]
       41 FASTCALL1                        TOSTRING R6 ; [+3]
       42 MOVE                             R8 R6
       43 GETIMPORT                        R7 K14 [tostring]
       45 CALL                             R7 1 1
       46 MOVE                             R3 R7
       47 JUMP                             ; [+1]
       48 MOVE                             R3 R6
       49 GETUPVAL                         R5 1
       50 GETUPVAL                         R6 2
       51 GETTABLE                         R7 R1 R5
       52 JUMPIFNOTEQKS                    R5 K4 ["Id"] ; [+8]
       54 FASTCALL1                        TONUMBER R7 ; [+3]
       55 MOVE                             R9 R7
       56 GETIMPORT                        R8 K6 [tonumber]
       58 CALL                             R8 1 1
       59 MOVE                             R4 R8
       60 JUMP                             ; [+32]
       61 JUMPIFNOT                        R6 ; [+16]
       62 JUMPIFNOTEQKS                    R5 K7 ["OK"] ; [+15]
       64 GETTABLEKS                       R9 R1 K4 ["Id"]
       66 GETTABLE                         R8 R6 R9
       67 JUMPIFNOT                        R8 ; [+8]
       68 GETTABLEKS                       R10 R1 K4 ["Id"]
       70 GETTABLE                         R9 R6 R10
       71 LENGTH                           R8 R9
       72 JUMPIFNOTEQKN                    R8 K8 [0] ; [+3]
       74 LOADK                            R4 K9 ["fixed"]
       75 JUMP                             ; [+17]
       76 MOVE                             R4 R7
       77 JUMP                             ; [+15]
       78 FASTCALL1                        TYPE R7 ; [+3]
       79 MOVE                             R9 R7
       80 GETIMPORT                        R8 K11 [type]
       82 CALL                             R8 1 1
       83 JUMPIFNOTEQKS                    R8 K12 ["userdata"] ; [+8]
       85 FASTCALL1                        TOSTRING R7 ; [+3]
       86 MOVE                             R9 R7
       87 GETIMPORT                        R8 K14 [tostring]
       89 CALL                             R8 1 1
       90 MOVE                             R4 R8
       91 JUMP                             ; [+1]
       92 MOVE                             R4 R7
       93 JUMPIFLT                         R3 R4 ; [+2]
       95 LOADB                            R2 0 +1
       96 LOADB                            R2 1
       97 RETURN                           R2 1
       98 GETUPVAL                         R4 1
       99 GETUPVAL                         R5 2
      100 GETTABLE                         R6 R0 R4
      101 JUMPIFNOTEQKS                    R4 K4 ["Id"] ; [+8]
      103 FASTCALL1                        TONUMBER R6 ; [+3]
      104 MOVE                             R8 R6
      105 GETIMPORT                        R7 K6 [tonumber]
      107 CALL                             R7 1 1
      108 MOVE                             R3 R7
      109 JUMP                             ; [+32]
      110 JUMPIFNOT                        R5 ; [+16]
      111 JUMPIFNOTEQKS                    R4 K7 ["OK"] ; [+15]
      113 GETTABLEKS                       R8 R0 K4 ["Id"]
      115 GETTABLE                         R7 R5 R8
      116 JUMPIFNOT                        R7 ; [+8]
      117 GETTABLEKS                       R9 R0 K4 ["Id"]
      119 GETTABLE                         R8 R5 R9
      120 LENGTH                           R7 R8
      121 JUMPIFNOTEQKN                    R7 K8 [0] ; [+3]
      123 LOADK                            R3 K9 ["fixed"]
      124 JUMP                             ; [+17]
      125 MOVE                             R3 R6
      126 JUMP                             ; [+15]
      127 FASTCALL1                        TYPE R6 ; [+3]
      128 MOVE                             R8 R6
      129 GETIMPORT                        R7 K11 [type]
      131 CALL                             R7 1 1
      132 JUMPIFNOTEQKS                    R7 K12 ["userdata"] ; [+8]
      134 FASTCALL1                        TOSTRING R6 ; [+3]
      135 MOVE                             R8 R6
      136 GETIMPORT                        R7 K14 [tostring]
      138 CALL                             R7 1 1
      139 MOVE                             R3 R7
      140 JUMP                             ; [+1]
      141 MOVE                             R3 R6
      142 GETUPVAL                         R5 1
      143 GETUPVAL                         R6 2
      144 GETTABLE                         R7 R1 R5
      145 JUMPIFNOTEQKS                    R5 K4 ["Id"] ; [+8]
      147 FASTCALL1                        TONUMBER R7 ; [+3]
      148 MOVE                             R9 R7
      149 GETIMPORT                        R8 K6 [tonumber]
      151 CALL                             R8 1 1
      152 MOVE                             R4 R8
      153 JUMP                             ; [+32]
      154 JUMPIFNOT                        R6 ; [+16]
      155 JUMPIFNOTEQKS                    R5 K7 ["OK"] ; [+15]
      157 GETTABLEKS                       R9 R1 K4 ["Id"]
      159 GETTABLE                         R8 R6 R9
      160 JUMPIFNOT                        R8 ; [+8]
      161 GETTABLEKS                       R10 R1 K4 ["Id"]
      163 GETTABLE                         R9 R6 R10
      164 LENGTH                           R8 R9
      165 JUMPIFNOTEQKN                    R8 K8 [0] ; [+3]
      167 LOADK                            R4 K9 ["fixed"]
      168 JUMP                             ; [+17]
      169 MOVE                             R4 R7
      170 JUMP                             ; [+15]
      171 FASTCALL1                        TYPE R7 ; [+3]
      172 MOVE                             R9 R7
      173 GETIMPORT                        R8 K11 [type]
      175 CALL                             R8 1 1
      176 JUMPIFNOTEQKS                    R8 K12 ["userdata"] ; [+8]
      178 FASTCALL1                        TOSTRING R7 ; [+3]
      179 MOVE                             R9 R7
      180 GETIMPORT                        R8 K14 [tostring]
      182 CALL                             R8 1 1
      183 MOVE                             R4 R8
      184 JUMP                             ; [+1]
      185 MOVE                             R4 R7
      186 JUMPIFLT                         R4 R3 ; [+2]
      188 LOADB                            R2 0 +1
      189 LOADB                            R2 1
      190 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 NEWTABLE                         R5 0 0
        3 MOVE                             R6 R0
        4 CALL                             R4 2 1
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R4
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 CALL                             R5 2 0
       12 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Dialog"}]
        3 GETTABLEKS                       R5 R1 K2 ["Open"]
        5 SETTABLEKS                       R5 R4 K0 ["Dialog"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Left"]
        3 GETTABLEKS                       R5 R0 K0 ["Left"]
        5 GETTABLEKS                       R4 R5 K1 ["SortIndex"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R3 1
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R5 R0 K2 ["Rows"]
       13 GETTABLEKS                       R6 R1 K2 ["Rows"]
       15 CALL                             R3 3 1
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R3
       19 MOVE                             R7 R2
       20 GETTABLEKS                       R9 R0 K0 ["Left"]
       22 GETTABLEKS                       R8 R9 K3 ["SortOrder"]
       24 GETTABLEKS                       R9 R0 K4 ["Locations"]
       26 CALL                             R5 4 1
       27 GETTABLEKS                       R6 R0 K5 ["SelectedRow"]
       29 JUMPIFNOT                        R6 ; [+15]
       30 GETTABLEKS                       R8 R0 K2 ["Rows"]
       32 GETTABLEKS                       R9 R0 K5 ["SelectedRow"]
       34 GETTABLE                         R7 R8 R9
       35 GETTABLEKS                       R6 R7 K6 ["Id"]
       37 GETUPVAL                         R7 3
       38 MOVE                             R8 R5
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R6
       41 CALL                             R7 2 1
       42 JUMPIF                           R7 ; [+1]
       43 GETUPVAL                         R7 4
       44 MOVE                             R4 R7
       45 GETUPVAL                         R6 5
       46 MOVE                             R7 R0
       47 DUPTABLE                         R8 K7 [{"SelectedRow", "Rows"}]
       48 SETTABLEKS                       R4 R8 K5 ["SelectedRow"]
       50 SETTABLEKS                       R5 R8 K2 ["Rows"]
       52 CALL                             R6 2 -1
       53 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K1 [{"Paused"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K0 ["Paused"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["locations"]
        2 GETTABLEKS                       R4 R0 K1 ["Right"]
        4 GETTABLEKS                       R3 R4 K2 ["SortIndex"]
        6 JUMPIFNOT                        R3 ; [+38]
        7 GETTABLEKS                       R3 R0 K3 ["SelectedRow"]
        9 JUMPIFNOT                        R3 ; [+35]
       10 GETTABLEKS                       R5 R0 K4 ["Rows"]
       12 GETTABLEKS                       R6 R0 K3 ["SelectedRow"]
       14 GETTABLE                         R4 R5 R6
       15 GETTABLEKS                       R3 R4 K5 ["Id"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["Right"]
       20 GETTABLEKS                       R7 R0 K1 ["Right"]
       22 GETTABLEKS                       R6 R7 K2 ["SortIndex"]
       24 GETTABLE                         R4 R5 R6
       25 GETUPVAL                         R5 1
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R0 K6 ["Locations"]
       30 NEWTABLE                         R8 1 0
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R11 R0 K6 ["Locations"]
       35 GETTABLE                         R10 R11 R3
       36 MOVE                             R11 R4
       37 GETTABLEKS                       R13 R0 K1 ["Right"]
       39 GETTABLEKS                       R12 R13 K7 ["SortOrder"]
       41 CALL                             R9 3 1
       42 SETTABLE                         R9 R8 R3
       43 CALL                             R5 3 1
       44 MOVE                             R2 R5
       45 GETUPVAL                         R3 1
       46 MOVE                             R4 R0
       47 DUPTABLE                         R5 K8 [{"Locations", "SelectedRow"}]
       48 SETTABLEKS                       R2 R5 K6 ["Locations"]
       50 GETTABLEKS                       R6 R1 K3 ["SelectedRow"]
       52 SETTABLEKS                       R6 R5 K3 ["SelectedRow"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

PROTO_8:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 NEWTABLE                         R4 0 0
        4 GETTABLEKS                       R5 R0 K0 ["Locations"]
        6 GETTABLEKS                       R6 R1 K0 ["Locations"]
        8 CALL                             R3 3 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["Left"]
       12 GETTABLEKS                       R7 R0 K1 ["Left"]
       14 GETTABLEKS                       R6 R7 K2 ["SortIndex"]
       16 GETTABLE                         R4 R5 R6
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R6 R0 K3 ["Rows"]
       20 MOVE                             R7 R4
       21 GETTABLEKS                       R9 R0 K1 ["Left"]
       23 GETTABLEKS                       R8 R9 K4 ["SortOrder"]
       25 MOVE                             R9 R3
       26 CALL                             R5 4 1
       27 MOVE                             R2 R5
       28 GETUPVAL                         R5 0
       29 MOVE                             R6 R0
       30 DUPTABLE                         R7 K5 [{"Rows", "Locations"}]
       31 SETTABLEKS                       R2 R7 K3 ["Rows"]
       33 SETTABLEKS                       R3 R7 K0 ["Locations"]
       35 CALL                             R5 2 -1
       36 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["TableName"]
        3 GETTABLE                         R3 R4 R5
        4 GETTABLEKS                       R4 R1 K1 ["SortIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R0 K2 ["SelectedRow"]
        9 GETTABLEKS                       R4 R0 K3 ["Rows"]
       11 GETTABLEKS                       R5 R0 K4 ["Locations"]
       13 GETTABLEKS                       R7 R0 K2 ["SelectedRow"]
       15 JUMPIFNOT                        R7 ; [+8]
       16 GETTABLEKS                       R8 R0 K3 ["Rows"]
       18 GETTABLEKS                       R9 R0 K2 ["SelectedRow"]
       20 GETTABLE                         R7 R8 R9
       21 GETTABLEKS                       R6 R7 K5 ["Id"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 GETTABLEKS                       R7 R1 K0 ["TableName"]
       27 JUMPIFNOTEQKS                    R7 K6 ["Left"] ; [+21]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R8 R0 K3 ["Rows"]
       32 MOVE                             R9 R2
       33 GETTABLEKS                       R10 R1 K7 ["SortOrder"]
       35 MOVE                             R11 R5
       36 CALL                             R7 4 1
       37 MOVE                             R4 R7
       38 GETTABLEKS                       R7 R0 K2 ["SelectedRow"]
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETUPVAL                         R7 2
       42 MOVE                             R8 R4
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R6
       45 CALL                             R7 2 1
       46 MOVE                             R3 R7
       47 JUMPIF                           R3 ; [+1]
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R7 R1 K0 ["TableName"]
       51 JUMPIFNOTEQKS                    R7 K8 ["Right"] ; [+20]
       53 JUMPIFNOT                        R6 ; [+18]
       54 GETUPVAL                         R7 4
       55 NEWTABLE                         R8 0 0
       57 GETTABLEKS                       R9 R0 K4 ["Locations"]
       59 NEWTABLE                         R10 1 0
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R13 R0 K4 ["Locations"]
       64 GETTABLE                         R12 R13 R6
       65 MOVE                             R13 R2
       66 GETTABLEKS                       R14 R1 K7 ["SortOrder"]
       68 CALL                             R11 3 1
       69 SETTABLE                         R11 R10 R6
       70 CALL                             R7 3 1
       71 MOVE                             R5 R7
       72 GETUPVAL                         R7 4
       73 MOVE                             R8 R0
       74 NEWTABLE                         R9 4 0
       76 SETTABLEKS                       R3 R9 K2 ["SelectedRow"]
       78 SETTABLEKS                       R4 R9 K3 ["Rows"]
       80 SETTABLEKS                       R5 R9 K4 ["Locations"]
       82 GETTABLEKS                       R10 R1 K0 ["TableName"]
       84 DUPTABLE                         R11 K9 [{"SortIndex", "SortOrder"}]
       85 GETTABLEKS                       R12 R1 K1 ["SortIndex"]
       87 SETTABLEKS                       R12 R11 K1 ["SortIndex"]
       89 GETTABLEKS                       R12 R1 K7 ["SortOrder"]
       91 SETTABLEKS                       R12 R11 K7 ["SortOrder"]
       93 SETTABLE                         R11 R9 R10
       94 CALL                             R7 2 -1
       95 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Dash"]
       25 GETTABLEKS                       R4 R3 K9 ["append"]
       27 GETTABLEKS                       R5 R3 K10 ["join"]
       29 GETTABLEKS                       R6 R3 K11 ["findIndex"]
       31 GETTABLEKS                       R7 R3 K12 ["None"]
       33 GETIMPORT                        R8 K15 [table.sort]
       35 GETTABLEKS                       R10 R0 K16 ["Src"]
       37 GETTABLEKS                       R9 R10 K17 ["Actions"]
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R11 R9 K18 ["SetDialog"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K4 [require]
       46 GETTABLEKS                       R12 R9 K19 ["SelectRow"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K4 [require]
       51 GETTABLEKS                       R13 R9 K20 ["Unpause"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R9 K21 ["UpdateRows"]
       58 CALL                             R13 1 1
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R9 K22 ["UpdateLocations"]
       63 CALL                             R14 1 1
       64 GETIMPORT                        R15 K4 [require]
       66 GETTABLEKS                       R16 R9 K23 ["SortTable"]
       68 CALL                             R15 1 1
       69 DUPTABLE                         R16 K26 [{"Left", "Right"}]
       70 NEWTABLE                         R17 0 5
       72 LOADK                            R18 K27 ["OK"]
       73 LOADK                            R19 K28 ["Id"]
       74 LOADK                            R20 K29 ["Name"]
       75 LOADK                            R21 K30 ["Time"]
       76 LOADK                            R22 K31 ["Creator"]
       77 SETLIST                          R17 R18 5 [1]
       79 SETTABLEKS                       R17 R16 K24 ["Left"]
       81 NEWTABLE                         R17 0 2
       83 LOADK                            R18 K32 ["Instance"]
       84 LOADK                            R19 K33 ["Path"]
       85 SETLIST                          R17 R18 2 [1]
       87 SETTABLEKS                       R17 R16 K25 ["Right"]
       89 DUPCLOSURE                       R17 K34 [PROTO_0]
       90 DUPCLOSURE                       R18 K35 [PROTO_2]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R8
       93 GETTABLEKS                       R19 R1 K36 ["createReducer"]
       95 DUPTABLE                         R20 K41 [{"Dialog", "Paused", "Rows", "SelectedRow", "Left", "Right"}]
       96 LOADB                            R21 0
       97 SETTABLEKS                       R21 R20 K37 ["Dialog"]
       99 LOADB                            R21 1
      100 SETTABLEKS                       R21 R20 K38 ["Paused"]
      102 NEWTABLE                         R21 0 0
      104 SETTABLEKS                       R21 R20 K39 ["Rows"]
      106 LOADNIL                          R21
      107 SETTABLEKS                       R21 R20 K40 ["SelectedRow"]
      109 DUPTABLE                         R21 K44 [{"SortIndex", "SortOrder"}]
      110 LOADN                            R22 1
      111 SETTABLEKS                       R22 R21 K42 ["SortIndex"]
      113 GETIMPORT                        R22 K48 [Enum.SortDirection.Descending]
      115 SETTABLEKS                       R22 R21 K43 ["SortOrder"]
      117 SETTABLEKS                       R21 R20 K24 ["Left"]
      119 NEWTABLE                         R21 0 0
      121 SETTABLEKS                       R21 R20 K25 ["Right"]
      123 NEWTABLE                         R21 8 0
      125 GETTABLEKS                       R22 R10 K49 ["name"]
      127 DUPCLOSURE                       R23 K50 [PROTO_3]
      128 CAPTURE                          VAL R5
      129 SETTABLE                         R23 R21 R22
      130 GETTABLEKS                       R22 R13 K49 ["name"]
      132 DUPCLOSURE                       R23 K51 [PROTO_5]
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R5
      139 SETTABLE                         R23 R21 R22
      140 GETTABLEKS                       R22 R12 K49 ["name"]
      142 DUPCLOSURE                       R23 K52 [PROTO_6]
      143 CAPTURE                          VAL R5
      144 SETTABLE                         R23 R21 R22
      145 GETTABLEKS                       R22 R11 K49 ["name"]
      147 DUPCLOSURE                       R23 K53 [PROTO_7]
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R18
      151 SETTABLE                         R23 R21 R22
      152 GETTABLEKS                       R22 R14 K49 ["name"]
      154 DUPCLOSURE                       R23 K54 [PROTO_8]
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R18
      158 SETTABLE                         R23 R21 R22
      159 GETTABLEKS                       R22 R15 K49 ["name"]
      161 DUPCLOSURE                       R23 K55 [PROTO_10]
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R5
      167 SETTABLE                         R23 R21 R22
      168 CALL                             R19 2 -1
      169 RETURN                           R19 -1
