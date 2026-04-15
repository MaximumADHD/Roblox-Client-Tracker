PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLE                      R0 R1 ; [+174]
        4 LOADB                            R0 0
        5 GETIMPORT                        R1 K1 [ipairs]
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 3
        9 FORGPREP_INEXT                   R1
       10 GETIMPORT                        R6 K4 [string.find]
       12 GETUPVAL                         R7 3
       13 MOVE                             R8 R5
       14 GETUPVAL                         R9 0
       15 CALL                             R6 3 2
       16 JUMPIFEQKNIL                     R6 ; [+155]
       18 ADDK                             R8 R7 K5 [1]
       19 SETUPVAL                         R8 0
       20 LOADB                            R0 1
       21 GETUPVAL                         R9 3
       22 FASTCALL3                        STRING_SUB R9 R6 R7
       24 MOVE                             R10 R6
       25 MOVE                             R11 R7
       26 GETIMPORT                        R8 K7 [string.sub]
       28 CALL                             R8 3 1
       29 GETUPVAL                         R10 4
       30 GETTABLE                         R9 R10 R4
       31 MOVE                             R10 R9
       32 JUMPIFNOTEQKS                    R9 K8 ["var"] ; [+49]
       34 GETIMPORT                        R11 K10 [string.gsub]
       36 MOVE                             R12 R8
       37 LOADK                            R13 K11 ["[%c%s]+"]
       38 LOADK                            R14 K12 [""]
       39 CALL                             R11 3 1
       40 GETUPVAL                         R13 5
       41 GETTABLE                         R12 R13 R11
       42 JUMPIFNOT                        R12 ; [+2]
       43 LOADK                            R10 K13 ["keyword"]
       44 JUMP                             ; [+113]
       45 GETUPVAL                         R13 6
       46 GETTABLE                         R12 R13 R11
       47 JUMPIFNOT                        R12 ; [+2]
       48 LOADK                            R10 K14 ["builtin"]
       49 JUMP                             ; [+108]
       50 GETIMPORT                        R12 K4 [string.find]
       52 GETUPVAL                         R13 7
       53 LOADK                            R14 K15 ["%.[%s%c]*$"]
       54 CALL                             R12 2 1
       55 JUMPIFNOT                        R12 ; [+24]
       56 GETUPVAL                         R12 8
       57 JUMPIFEQKS                       R12 K16 ["comment"] ; [+22]
       59 GETIMPORT                        R12 K10 [string.gsub]
       61 GETUPVAL                         R13 9
       62 LOADK                            R14 K11 ["[%c%s]+"]
       63 LOADK                            R15 K12 [""]
       64 CALL                             R12 3 1
       65 GETUPVAL                         R14 10
       66 GETTABLE                         R13 R14 R12
       67 JUMPIFNOT                        R13 ; [+10]
       68 GETTABLE                         R14 R13 R11
       69 JUMPIFNOT                        R14 ; [+8]
       70 GETIMPORT                        R14 K4 [string.find]
       72 GETUPVAL                         R15 11
       73 LOADK                            R16 K15 ["%.[%s%c]*$"]
       74 CALL                             R14 2 1
       75 JUMPIF                           R14 ; [+2]
       76 LOADK                            R10 K14 ["builtin"]
       77 JUMP                             ; [+80]
       78 LOADK                            R10 K17 ["iden"]
       79 JUMP                             ; [+78]
       80 LOADK                            R10 K17 ["iden"]
       81 JUMP                             ; [+76]
       82 JUMPIFNOTEQKS                    R9 K18 ["string_inter"] ; [+75]
       84 GETIMPORT                        R11 K4 [string.find]
       86 MOVE                             R12 R8
       87 LOADK                            R13 K19 ["[^\\]{"]
       88 CALL                             R11 2 1
       89 JUMPIF                           R11 ; [+2]
       90 LOADK                            R10 K2 ["string"]
       91 JUMP                             ; [+66]
       92 LOADNIL                          R10
       93 LOADB                            R11 1
       94 LOADN                            R12 1
       95 LENGTH                           R13 R8
       96 JUMPIFNOTLE                      R12 R13 ; [+61]
       98 GETIMPORT                        R14 K4 [string.find]
      100 MOVE                             R15 R8
      101 LOADK                            R16 K20 ["^.-[^\\][{}]"]
      102 MOVE                             R17 R12
      103 CALL                             R14 3 2
      104 JUMPIFNOTEQKNIL                  R14 ; [+13]
      106 GETIMPORT                        R16 K23 [coroutine.yield]
      108 LOADK                            R17 K2 ["string"]
      109 FASTCALL2                        STRING_SUB R8 R12 ; [+5]
      111 MOVE                             R19 R8
      112 MOVE                             R20 R12
      113 GETIMPORT                        R18 K7 [string.sub]
      115 CALL                             R18 2 1
      116 CALL                             R16 2 0
      117 JUMP                             ; [+40]
      118 JUMPIFNOT                        R11 ; [+15]
      119 ADDK                             R12 R15 K5 [1]
      120 GETIMPORT                        R16 K23 [coroutine.yield]
      122 LOADK                            R17 K2 ["string"]
      123 FASTCALL3                        STRING_SUB R8 R14 R15
      125 MOVE                             R19 R8
      126 MOVE                             R20 R14
      127 MOVE                             R21 R15
      128 GETIMPORT                        R18 K7 [string.sub]
      130 CALL                             R18 3 1
      131 CALL                             R16 2 0
      132 LOADB                            R11 0
      133 JUMP                             ; [+23]
      134 MOVE                             R12 R15
      135 SUBK                             R19 R15 K5 [1]
      136 FASTCALL3                        STRING_SUB R8 R14 R19
      138 MOVE                             R17 R8
      139 MOVE                             R18 R14
      140 GETIMPORT                        R16 K7 [string.sub]
      142 CALL                             R16 3 1
      143 GETUPVAL                         R18 12
      144 GETTABLEKS                       R17 R18 K24 ["scan"]
      146 MOVE                             R18 R16
      147 CALL                             R17 1 3
      148 FORGPREP                         R17
      149 GETIMPORT                        R22 K23 [coroutine.yield]
      151 MOVE                             R23 R20
      152 MOVE                             R24 R21
      153 CALL                             R22 2 0
      154 FORGLOOP                         R17 2 ; [-6]
      156 LOADB                            R11 1
      157 JUMPBACK                         ; [-62]
      158 GETUPVAL                         R11 9
      159 SETUPVAL                         R11 11
      160 GETUPVAL                         R11 7
      161 SETUPVAL                         R11 9
      162 SETUPVAL                         R8 7
      163 OR                               R11 R10 R9
      164 SETUPVAL                         R11 8
      165 JUMPIFNOT                        R10 ; [+8]
      166 GETIMPORT                        R11 K23 [coroutine.yield]
      168 MOVE                             R12 R10
      169 MOVE                             R13 R8
      170 CALL                             R11 2 0
      171 JUMP                             ; [+2]
      172 FORGLOOP                         R1 2 [inext] ; [-163]
      174 JUMPIF                           R0 ; [+1]
      175 RETURN                           R0 0
      176 JUMPBACK                         ; [-177]
      177 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["dead"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K5 [coroutine.resume]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 3
       11 JUMPIFNOT                        R0 ; [+2]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R1 2
       14 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 1
        1 LENGTH                           R2 R0
        2 LOADK                            R3 K0 [""]
        3 LOADK                            R4 K0 [""]
        4 LOADK                            R5 K0 [""]
        5 LOADK                            R6 K0 [""]
        6 GETIMPORT                        R7 K3 [coroutine.create]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          REF R3
       17 CAPTURE                          REF R6
       18 CAPTURE                          REF R4
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          REF R5
       21 CAPTURE                          UPVAL U5
       22 CALL                             R7 1 1
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          VAL R7
       25 CLOSEUPVALS                      R1
       26 RETURN                           R8 1

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["Source"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_RealIndex"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_UserIndex"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["TokenCache"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["_ScanThread"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scan"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R1 R3 K1 ["Source"]
        6 CALL                             R0 1 3
        7 FORGPREP                         R0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R6 R5 K2 ["_RealIndex"]
       11 ADDK                             R6 R6 K3 [1]
       12 SETTABLEKS                       R6 R5 K2 ["_RealIndex"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K4 ["TokenCache"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K2 ["_RealIndex"]
       20 NEWTABLE                         R7 0 2
       22 MOVE                             R8 R3
       23 MOVE                             R9 R4
       24 SETLIST                          R7 R8 2 [1]
       26 SETTABLE                         R7 R5 R6
       27 GETIMPORT                        R5 K7 [coroutine.yield]
       29 MOVE                             R6 R3
       30 MOVE                             R7 R4
       31 CALL                             R5 2 0
       32 FORGLOOP                         R0 2 ; [-25]
       34 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["Source"]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R0 K1 ["_RealIndex"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R0 K2 ["_UserIndex"]
        8 GETIMPORT                        R2 K5 [table.clear]
       10 GETTABLEKS                       R3 R0 K6 ["TokenCache"]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K9 [coroutine.create]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R0 K10 ["_ScanThread"]
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["_UserIndex"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["_UserIndex"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["_RealIndex"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["_UserIndex"]
       12 JUMPIFNOTLE                      R1 R0 ; [+13]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["TokenCache"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["_UserIndex"]
       20 GETTABLE                         R1 R2 R3
       21 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
       22 GETIMPORT                        R0 K6 [table.unpack]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1
       26 GETIMPORT                        R0 K9 [coroutine.status]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R1 R2 K10 ["_ScanThread"]
       31 CALL                             R0 1 1
       32 JUMPIFNOTEQKS                    R0 K11 ["dead"] ; [+2]
       34 RETURN                           R0 0
       35 GETIMPORT                        R0 K13 [coroutine.resume]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R1 R3 K10 ["_ScanThread"]
       40 CALL                             R0 1 3
       41 JUMPIFNOT                        R0 ; [+2]
       42 JUMPIFNOT                        R1 ; [+1]
       43 RETURN                           R1 2
       44 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_UserIndex"]
        3 ADD                              R1 R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["_RealIndex"]
        7 JUMPIFNOTLE                      R1 R2 ; [+14]
        9 LOADN                            R2 0
       10 JUMPIFNOTLT                      R2 R1 ; [+10]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["TokenCache"]
       15 GETTABLE                         R3 R4 R1
       16 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
       17 GETIMPORT                        R2 K5 [table.unpack]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K8 [coroutine.status]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K9 ["_ScanThread"]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K10 ["dead"] ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K1 ["_RealIndex"]
       34 SUB                              R2 R1 R3
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 LOADN                            R8 1
       39 MOVE                             R6 R2
       40 LOADN                            R7 1
       41 FORNPREP                         R6
       42 GETIMPORT                        R9 K12 [coroutine.resume]
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R10 R12 K9 ["_ScanThread"]
       47 CALL                             R9 1 3
       48 MOVE                             R3 R9
       49 MOVE                             R4 R10
       50 MOVE                             R5 R11
       51 JUMPIF                           R3 ; [+1]
       52 JUMPIFNOT                        R4 ; [+1]
       53 FORNLOOP                         R6
       54 RETURN                           R4 2

PROTO_8:
        0 DUPTABLE                         R0 K5 [{"Source", "TokenCache", "_RealIndex", "_UserIndex", "_ScanThread"}]
        1 LOADK                            R1 K6 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Source"]
        4 GETIMPORT                        R1 K9 [table.create]
        6 LOADN                            R2 50
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K1 ["TokenCache"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K2 ["_RealIndex"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K3 ["_UserIndex"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["_ScanThread"]
       19 DUPCLOSURE                       R1 K10 [PROTO_3]
       20 SETTABLEKS                       R1 R0 K11 ["Destroy"]
       22 DUPCLOSURE                       R1 K12 [PROTO_5]
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R1 R0 K13 ["SetSource"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K14 ["Next"]
       30 NEWCLOSURE                       R1 P3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K15 ["Peek"]
       34 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R3 K3 [script]
        7 GETTABLEKS                       R2 R3 K4 ["Language"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["keyword"]
       12 GETTABLEKS                       R3 R1 K6 ["builtin"]
       14 GETTABLEKS                       R4 R1 K7 ["libraries"]
       16 SETTABLEKS                       R1 R0 K8 ["language"]
       18 NEWTABLE                         R5 0 20
       20 NEWTABLE                         R6 0 2
       22 LOADK                            R7 K9 ["^[%c%s]*[%a_][%w_]*[%c%s]*"]
       23 LOADK                            R8 K10 ["var"]
       24 SETLIST                          R6 R7 2 [1]
       26 NEWTABLE                         R7 0 2
       28 LOADK                            R8 K11 ["^[%c%s]*0[xX][%da-fA-F_]+[%c%s]*"]
       29 LOADK                            R9 K12 ["number"]
       30 SETLIST                          R7 R8 2 [1]
       32 NEWTABLE                         R8 0 2
       34 LOADK                            R9 K13 ["^[%c%s]*0[bB][01_]+[%c%s]*"]
       35 LOADK                            R10 K12 ["number"]
       36 SETLIST                          R8 R9 2 [1]
       38 NEWTABLE                         R9 0 2
       40 LOADK                            R10 K14 ["^[%c%s]*%d+%.?%d*[eE][%+%-]?%d+[%c%s]*"]
       41 LOADK                            R11 K12 ["number"]
       42 SETLIST                          R9 R10 2 [1]
       44 NEWTABLE                         R10 0 2
       46 LOADK                            R11 K15 ["^[%c%s]*%d+[%._]?[%d_eE]*[%c%s]*"]
       47 LOADK                            R12 K12 ["number"]
       48 SETLIST                          R10 R11 2 [1]
       50 NEWTABLE                         R11 0 2
       52 LOADK                            R12 K16 ["^[%c%s]*(['\"])%1[%c%s]*"]
       53 LOADK                            R13 K17 ["string"]
       54 SETLIST                          R11 R12 2 [1]
       56 NEWTABLE                         R12 0 2
       58 LOADK                            R13 K18 ["^[%c%s]*(['\"])[^\n]-([^\\]%1)[%c%s]*"]
       59 LOADK                            R14 K17 ["string"]
       60 SETLIST                          R12 R13 2 [1]
       62 NEWTABLE                         R13 0 2
       64 LOADK                            R14 K19 ["^[%c%s]*(['\"]).-\n[%c%s]*"]
       65 LOADK                            R15 K17 ["string"]
       66 SETLIST                          R13 R14 2 [1]
       68 NEWTABLE                         R14 0 2
       70 LOADK                            R15 K20 ["^[%c%s]*(['\"])[^\n]*[%c%s]*"]
       71 LOADK                            R16 K17 ["string"]
       72 SETLIST                          R14 R15 2 [1]
       74 NEWTABLE                         R15 0 2
       76 LOADK                            R16 K21 ["^[%c%s]*%[(=*)%[.-%]%1%][%c%s]*"]
       77 LOADK                            R17 K17 ["string"]
       78 SETLIST                          R15 R16 2 [1]
       80 NEWTABLE                         R16 0 2
       82 LOADK                            R17 K22 ["^[%c%s]*%[=*%[.-.*[%c%s]*"]
       83 LOADK                            R18 K17 ["string"]
       84 SETLIST                          R16 R17 2 [1]
       86 NEWTABLE                         R17 0 2
       88 LOADK                            R18 K23 ["^[%c%s]*`[^\n]-`[%c%s]*"]
       89 LOADK                            R19 K24 ["string_inter"]
       90 SETLIST                          R17 R18 2 [1]
       92 NEWTABLE                         R18 0 2
       94 LOADK                            R19 K25 ["^[%c%s]*%-%-%[(=*)%[.-%]%1%][%c%s]*"]
       95 LOADK                            R20 K26 ["comment"]
       96 SETLIST                          R18 R19 2 [1]
       98 NEWTABLE                         R19 0 2
      100 LOADK                            R20 K27 ["^[%c%s]*%-%-%[=*%[.-.*[%c%s]*"]
      101 LOADK                            R21 K26 ["comment"]
      102 SETLIST                          R19 R20 2 [1]
      104 NEWTABLE                         R20 0 2
      106 LOADK                            R21 K28 ["^[%c%s]*%-%-.-\n[%c%s]*"]
      107 LOADK                            R22 K26 ["comment"]
      108 SETLIST                          R20 R21 2 [1]
      110 NEWTABLE                         R21 0 2
      112 LOADK                            R22 K29 ["^[%c%s]*%-%-.*[%c%s]*"]
      113 LOADK                            R23 K26 ["comment"]
      114 SETLIST                          R21 R22 2 [1]
      116 SETLIST                          R5 R6 16 [1]
      118 NEWTABLE                         R6 0 2
      120 LOADK                            R7 K30 ["^[%c%s]*[:;<>/~%*%(%)%-={},%.#%^%+%%]+[%c%s]*"]
      121 LOADK                            R8 K31 ["operator"]
      122 SETLIST                          R6 R7 2 [1]
      124 NEWTABLE                         R7 0 2
      126 LOADK                            R8 K32 ["^[%c%s]*[%[%]]+[%c%s]*"]
      127 LOADK                            R9 K31 ["operator"]
      128 SETLIST                          R7 R8 2 [1]
      130 NEWTABLE                         R8 0 2
      132 LOADK                            R9 K33 ["^[%c%s]*[%z\x-�-�][�-�]+[%c%s]*"]
      133 LOADK                            R10 K34 ["iden"]
      134 SETLIST                          R8 R9 2 [1]
      136 NEWTABLE                         R9 0 2
      138 LOADK                            R22 K35 ["^."]
      139 LOADK                            R23 K34 ["iden"]
      140 SETLIST                          R9 R22 2 [1]
      142 SETLIST                          R5 R6 4 [17]
      144 NEWTABLE                         R6 0 0
      146 NEWTABLE                         R7 0 0
      148 MOVE                             R8 R5
      149 LOADNIL                          R9
      150 LOADNIL                          R10
      151 FORGPREP                         R8
      152 GETTABLEN                        R13 R12 1
      153 SETTABLE                         R13 R6 R11
      154 GETTABLEN                        R13 R12 2
      155 SETTABLE                         R13 R7 R11
      156 FORGLOOP                         R8 2 ; [-5]
      158 DUPCLOSURE                       R8 K36 [PROTO_2]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R8 R0 K37 ["scan"]
      167 DUPCLOSURE                       R8 K38 [PROTO_8]
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R8 R0 K39 ["navigator"]
      171 RETURN                           R0 1
