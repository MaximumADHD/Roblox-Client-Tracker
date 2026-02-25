PROTO_0:
        0 ORK                              R2 R1 K0 [2000]
        1 LENGTH                           R3 R0
        2 JUMPIFNOTLE                      R3 R2 ; [+2]
        4 RETURN                           R0 1
        5 GETIMPORT                        R3 K3 [utf8.offset]
        7 MOVE                             R4 R0
        8 LOADN                            R5 0
        9 ADDK                             R6 R2 K4 [1]
       10 CALL                             R3 3 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 1
       13 LOADN                            R6 1
       14 SUBK                             R7 R3 K4 [1]
       15 FASTCALL3                        STRING_SUB R0 R6 R7
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K7 [string.sub]
       20 CALL                             R4 3 1
       21 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["get"]
        3 CALL                             R3 0 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["copy"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["get"]
        6 CALL                             R4 0 -1
        7 CALL                             R3 -1 1
        8 SETTABLE                         R1 R3 R0
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R3
       11 CALL                             R4 1 0
       12 GETUPVAL                         R4 3
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K2 ["Fire"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["copy"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["get"]
        6 CALL                             R3 0 -1
        7 CALL                             R2 -1 1
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R2 R0
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 3
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R3 K2 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K0 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R5
       14 GETIMPORT                        R7 K3 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-8]
       19 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+42]
        5 GETTABLEKS                       R2 R0 K1 ["Guid"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["get"]
       10 CALL                             R4 0 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+20]
       17 GETTABLEKS                       R1 R0 K1 ["Guid"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K2 ["copy"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K0 ["get"]
       25 CALL                             R3 0 -1
       26 CALL                             R2 -1 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R1
       29 GETUPVAL                         R3 3
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 4
       33 LOADB                            R5 0
       34 NAMECALL                         R3 R3 K3 ["Fire"]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R1 R2 K4 ["replace"]
       40 GETTABLEKS                       R2 R0 K1 ["Guid"]
       42 GETTABLEKS                       R3 R0 K5 ["Index"]
       44 GETTABLEKS                       R4 R0 K6 ["Id"]
       46 CALL                             R1 3 0
       47 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+32]
        5 GETTABLEKS                       R2 R0 K1 ["Guid"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["get"]
       10 CALL                             R4 0 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+20]
       17 GETTABLEKS                       R1 R0 K1 ["Guid"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K2 ["copy"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K0 ["get"]
       25 CALL                             R3 0 -1
       26 CALL                             R2 -1 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R1
       29 GETUPVAL                         R3 3
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 4
       33 LOADB                            R5 0
       34 NAMECALL                         R3 R3 K3 ["Fire"]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R1 R2 K4 ["findNext"]
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+32]
        5 GETTABLEKS                       R2 R0 K1 ["Guid"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["get"]
       10 CALL                             R4 0 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+20]
       17 GETTABLEKS                       R1 R0 K1 ["Guid"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K2 ["copy"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K0 ["get"]
       25 CALL                             R3 0 -1
       26 CALL                             R2 -1 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R1
       29 GETUPVAL                         R3 3
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 4
       33 LOADB                            R5 0
       34 NAMECALL                         R3 R3 K3 ["Fire"]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R1 R2 K4 ["findPrevious"]
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADN                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADN                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 LOADN                            R1 0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R0 K0 ["Guid"]
        5 GETTABLEKS                       R7 R0 K1 ["Id"]
        7 GETTABLEKS                       R8 R0 K2 ["Name"]
        9 GETTABLEKS                       R9 R0 K3 ["Type"]
       11 GETTABLEKS                       R10 R0 K4 ["NumMatches"]
       13 GETTABLEKS                       R11 R0 K5 ["Lines"]
       15 JUMPIF                           R11 ; [+2]
       16 NEWTABLE                         R11 0 0
       18 GETTABLEKS                       R12 R0 K6 ["Matches"]
       20 JUMPIF                           R12 ; [+2]
       21 NEWTABLE                         R12 0 0
       23 GETTABLEKS                       R14 R0 K8 ["LogicalIndex"]
       25 ADDK                             R13 R14 K7 [1]
       26 NOT                              R14 R3
       27 JUMPIF                           R14 ; [+4]
       28 JUMPIFEQKN                       R2 K9 [-1] ; [+2]
       30 LOADB                            R14 0 +1
       31 LOADB                            R14 1
       32 JUMPIFNOT                        R14 ; [+42]
       33 DUPTABLE                         R15 K17 [{"id", "text", "guid", "scriptVersion", "isFile", "scriptType", "numMatches"}]
       34 SETTABLEKS                       R13 R15 K10 ["id"]
       36 LENGTH                           R17 R8
       37 LOADN                            R18 208
       38 JUMPIFNOTLE                      R17 R18 ; [+3]
       40 MOVE                             R16 R8
       41 JUMP                             ; [+18]
       42 GETIMPORT                        R17 K20 [utf8.offset]
       44 MOVE                             R18 R8
       45 LOADN                            R19 0
       46 LOADN                            R20 209
       47 CALL                             R17 3 1
       48 JUMPIF                           R17 ; [+2]
       49 MOVE                             R16 R8
       50 JUMP                             ; [+9]
       51 LOADN                            R20 1
       52 SUBK                             R21 R17 K7 [1]
       53 FASTCALL3                        STRING_SUB R8 R20 R21
       55 MOVE                             R19 R8
       56 GETIMPORT                        R18 K23 [string.sub]
       58 CALL                             R18 3 1
       59 MOVE                             R16 R18
       60 SETTABLEKS                       R16 R15 K11 ["text"]
       62 SETTABLEKS                       R6 R15 K12 ["guid"]
       64 SETTABLEKS                       R7 R15 K13 ["scriptVersion"]
       66 LOADB                            R16 1
       67 SETTABLEKS                       R16 R15 K14 ["isFile"]
       69 SETTABLEKS                       R9 R15 K15 ["scriptType"]
       71 SETTABLEKS                       R10 R15 K16 ["numMatches"]
       73 SETTABLE                         R15 R4 R5
       74 ADDK                             R5 R5 K7 [1]
       75 JUMPIF                           R14 ; [+2]
       76 MOVE                             R15 R2
       77 JUMP                             ; [+1]
       78 LOADN                            R15 0
       79 LOADN                            R18 1
       80 LENGTH                           R16 R12
       81 LOADN                            R17 1
       82 FORNPREP                         R16
       83 DUPTABLE                         R19 K26 [{"id", "text", "guid", "scriptVersion", "isFile", "matchIndex", "lineNumber"}]
       84 ADD                              R21 R13 R18
       85 ADD                              R20 R21 R15
       86 SETTABLEKS                       R20 R19 K10 ["id"]
       88 GETTABLE                         R26 R11 R18
       89 FASTCALL1                        TOSTRING R26 ; [+2]
       90 GETIMPORT                        R25 K28 [tostring]
       92 CALL                             R25 1 1
       93 MOVE                             R22 R25
       94 LOADK                            R23 K29 ["  "]
       95 GETTABLE                         R24 R12 R18
       96 CONCAT                           R21 R22 R24
       97 LENGTH                           R22 R21
       98 LOADN                            R23 208
       99 JUMPIFNOTLE                      R22 R23 ; [+3]
      101 MOVE                             R20 R21
      102 JUMP                             ; [+18]
      103 GETIMPORT                        R22 K20 [utf8.offset]
      105 MOVE                             R23 R21
      106 LOADN                            R24 0
      107 LOADN                            R25 209
      108 CALL                             R22 3 1
      109 JUMPIF                           R22 ; [+2]
      110 MOVE                             R20 R21
      111 JUMP                             ; [+9]
      112 LOADN                            R25 1
      113 SUBK                             R26 R22 K7 [1]
      114 FASTCALL3                        STRING_SUB R21 R25 R26
      116 MOVE                             R24 R21
      117 GETIMPORT                        R23 K23 [string.sub]
      119 CALL                             R23 3 1
      120 MOVE                             R20 R23
      121 SETTABLEKS                       R20 R19 K11 ["text"]
      123 SETTABLEKS                       R6 R19 K12 ["guid"]
      125 SETTABLEKS                       R7 R19 K13 ["scriptVersion"]
      127 LOADB                            R20 0
      128 SETTABLEKS                       R20 R19 K14 ["isFile"]
      130 SUBK                             R21 R18 K7 [1]
      131 ADD                              R20 R21 R15
      132 SETTABLEKS                       R20 R19 K24 ["matchIndex"]
      134 GETTABLE                         R20 R11 R18
      135 SETTABLEKS                       R20 R19 K25 ["lineNumber"]
      137 SETTABLE                         R19 R4 R5
      138 ADDK                             R5 R5 K7 [1]
      139 FORNLOOP                         R16
      140 RETURN                           R4 2

PROTO_11:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADB                            R2 0
        7 GETTABLEKS                       R3 R0 K0 ["Guid"]
        9 GETTABLEKS                       R4 R1 K0 ["Guid"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+9]
       13 GETTABLEKS                       R3 R0 K1 ["Index"]
       15 GETTABLEKS                       R4 R1 K1 ["Index"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_12:
        0 JUMPIFEQKNIL                     R0 ; [+7]
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 JUMPIFEQKNIL                     R2 ; [+3]
        6 JUMPIFNOTEQKNIL                  R3 ; [+3]
        8 LOADB                            R4 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 0
       11 GETUPVAL                         R5 1
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R0
       14 CALL                             R4 3 0
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 3
       17 GETUPVAL                         R6 4
       18 MOVE                             R7 R1
       19 CALL                             R4 3 0
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 5
       22 GETUPVAL                         R6 6
       23 MOVE                             R7 R2
       24 CALL                             R4 3 0
       25 GETIMPORT                        R5 K1 [next]
       27 MOVE                             R6 R3
       28 CALL                             R5 1 1
       29 JUMPIFEQKNIL                     R5 ; [+3]
       31 MOVE                             R4 R3
       32 JUMP                             ; [+1]
       33 LOADNIL                          R4
       34 JUMPIFNOTEQKNIL                  R4 ; [+9]
       36 GETUPVAL                         R5 0
       37 GETUPVAL                         R6 7
       38 GETUPVAL                         R7 8
       39 MOVE                             R8 R4
       40 LOADB                            R9 1
       41 CALL                             R5 4 0
       42 LOADB                            R5 1
       43 RETURN                           R5 1
       44 GETUPVAL                         R6 7
       45 GETTABLEKS                       R5 R6 K2 ["get"]
       47 CALL                             R5 0 1
       48 GETUPVAL                         R7 9
       49 GETTABLEKS                       R6 R7 K3 ["shallowEqual"]
       51 MOVE                             R7 R5
       52 MOVE                             R8 R4
       53 CALL                             R6 2 1
       54 JUMPIF                           R6 ; [+32]
       55 JUMPIFEQKNIL                     R5 ; [+3]
       57 JUMPIFNOTEQKNIL                  R4 ; [+3]
       59 LOADB                            R6 0
       60 JUMP                             ; [+15]
       61 LOADB                            R6 0
       62 GETTABLEKS                       R7 R5 K4 ["Guid"]
       64 GETTABLEKS                       R8 R4 K4 ["Guid"]
       66 JUMPIFNOTEQ                      R7 R8 ; [+9]
       68 GETTABLEKS                       R7 R5 K5 ["Index"]
       70 GETTABLEKS                       R8 R4 K5 ["Index"]
       72 JUMPIFEQ                         R7 R8 ; [+2]
       74 LOADB                            R6 0 +1
       75 LOADB                            R6 1
       76 JUMPIF                           R6 ; [+7]
       77 GETUPVAL                         R6 10
       78 GETTABLEKS                       R9 R4 K7 ["VisibleIndex"]
       80 ADDK                             R8 R9 K6 [1]
       81 NAMECALL                         R6 R6 K8 ["Fire"]
       83 CALL                             R6 2 0
       84 GETUPVAL                         R6 8
       85 MOVE                             R7 R4
       86 CALL                             R6 1 0
       87 LOADB                            R6 1
       88 RETURN                           R6 1

PROTO_13:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 JUMPIFEQKNIL                     R1 ; [+3]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R0
       12 CALL                             R3 3 0
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 MOVE                             R6 R1
       17 CALL                             R3 3 0
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R4 5
       20 GETUPVAL                         R5 6
       21 MOVE                             R6 R2
       22 CALL                             R3 3 0
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["QueryId"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["get"]
       10 CALL                             R2 0 1
       11 JUMPIFNOTLT                      R1 R2 ; [+7]
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 GETUPVAL                         R4 5
       16 SUBK                             R3 R4 K2 [1]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R1 6
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 7
       22 GETTABLEKS                       R4 R0 K0 ["QueryId"]
       24 CALL                             R1 3 0
       25 GETUPVAL                         R1 8
       26 GETTABLEKS                       R2 R0 K3 ["NumAllElements"]
       28 GETTABLEKS                       R3 R0 K4 ["NumAllResults"]
       30 GETTABLEKS                       R4 R0 K5 ["NumAllScripts"]
       32 GETTABLEKS                       R5 R0 K6 ["Selected"]
       34 CALL                             R1 4 0
       35 GETTABLEKS                       R1 R0 K7 ["BaseIndex"]
       37 GETTABLEKS                       R2 R0 K8 ["Results"]
       39 JUMPIF                           R2 ; [+2]
       40 NEWTABLE                         R2 0 0
       42 GETUPVAL                         R4 9
       43 ADDK                             R3 R4 K2 [1]
       44 NEWTABLE                         R4 0 0
       46 MOVE                             R5 R2
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETUPVAL                         R10 10
       51 MOVE                             R11 R9
       52 MOVE                             R12 R3
       53 MOVE                             R13 R1
       54 JUMPIFEQKN                       R8 K2 [1] ; [+2]
       56 LOADB                            R14 0 +1
       57 LOADB                            R14 1
       58 CALL                             R10 4 2
       59 MOVE                             R12 R10
       60 LOADNIL                          R13
       61 LOADNIL                          R14
       62 FORGPREP                         R12
       63 SETTABLE                         R16 R4 R15
       64 FORGLOOP                         R12 2 ; [-2]
       66 MOVE                             R3 R11
       67 FORGLOOP                         R5 2 ; [-18]
       69 GETUPVAL                         R5 11
       70 MOVE                             R6 R4
       71 CALL                             R5 1 0
       72 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+9]
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 ORK                              R2 R1 K1 [5]
       11 LOADN                            R3 0
       12 JUMPIFNOTLE                      R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 2
       16 SUBK                             R3 R4 K2 [1]
       17 LOADN                            R6 0
       18 SUBK                             R7 R0 K2 [1]
       19 FASTCALL3                        MATH_CLAMP R3 R6 R7
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K5 [math.clamp]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R8 3
       26 SUB                              R7 R4 R8
       27 LOADN                            R10 2
       28 GETUPVAL                         R11 3
       29 MUL                              R9 R10 R11
       30 SUB                              R8 R0 R9
       31 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       33 GETIMPORT                        R6 K7 [math.min]
       35 CALL                             R6 2 1
       36 FASTCALL2K                       MATH_MAX R6 K0 ; [+4]
       38 LOADK                            R7 K0 [0]
       39 GETIMPORT                        R5 K9 [math.max]
       41 CALL                             R5 2 1
       42 LOADN                            R8 2
       43 GETUPVAL                         R9 3
       44 MUL                              R7 R8 R9
       45 ADD                              R6 R5 R7
       46 LOADN                            R8 1
       47 SUB                              R9 R6 R5
       48 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       50 GETIMPORT                        R7 K9 [math.max]
       52 CALL                             R7 2 1
       53 SUB                              R10 R6 R5
       54 DIVK                             R9 R10 K10 [2]
       55 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       56 GETIMPORT                        R8 K12 [math.floor]
       58 CALL                             R8 1 1
       59 ADD                              R4 R5 R8
       60 SETUPVAL                         R4 4
       61 NEWTABLE                         R8 0 2
       63 MOVE                             R9 R5
       64 MOVE                             R10 R6
       65 SETLIST                          R8 R9 2 [1]
       67 SETUPVAL                         R8 5
       68 GETUPVAL                         R9 6
       69 GETTABLEKS                       R8 R9 K13 ["getResults"]
       71 MOVE                             R9 R5
       72 MOVE                             R10 R7
       73 GETUPVAL                         R13 7
       74 GETTABLEKS                       R12 R13 K14 ["get"]
       76 CALL                             R12 0 1
       77 NEWTABLE                         R13 0 0
       79 MOVE                             R14 R12
       80 LOADNIL                          R15
       81 LOADNIL                          R16
       82 FORGPREP                         R14
       83 FASTCALL2                        TABLE_INSERT R13 R17 ; [+5]
       85 MOVE                             R20 R13
       86 MOVE                             R21 R17
       87 GETIMPORT                        R19 K17 [table.insert]
       89 CALL                             R19 2 0
       90 FORGLOOP                         R14 1 ; [-8]
       92 MOVE                             R11 R13
       93 CALL                             R8 3 1
       94 NEWCLOSURE                       R10 P0
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U12
      102 CAPTURE                          UPVAL U13
      103 CAPTURE                          UPVAL U14
      104 CAPTURE                          VAL R5
      105 CAPTURE                          UPVAL U15
      106 CAPTURE                          UPVAL U0
      107 NAMECALL                         R8 R8 K18 ["andThen"]
      109 CALL                             R8 2 -1
      110 RETURN                           R8 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["NumAllElements"]
        7 GETTABLEKS                       R3 R0 K1 ["NumAllResults"]
        9 GETTABLEKS                       R4 R0 K2 ["NumAllScripts"]
       11 JUMPIFEQKNIL                     R2 ; [+5]
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 JUMPIFNOTEQKNIL                  R4 ; [+3]
       17 LOADB                            R1 0
       18 JUMP                             ; [+16]
       19 GETUPVAL                         R5 2
       20 GETUPVAL                         R6 3
       21 GETUPVAL                         R7 4
       22 MOVE                             R8 R2
       23 CALL                             R5 3 0
       24 GETUPVAL                         R5 2
       25 GETUPVAL                         R6 5
       26 GETUPVAL                         R7 6
       27 MOVE                             R8 R3
       28 CALL                             R5 3 0
       29 GETUPVAL                         R5 2
       30 GETUPVAL                         R6 7
       31 GETUPVAL                         R7 8
       32 MOVE                             R8 R4
       33 CALL                             R5 3 0
       34 LOADB                            R1 1
       35 JUMPIFNOT                        R1 ; [+54]
       36 GETUPVAL                         R2 9
       37 GETTABLEKS                       R1 R2 K3 ["get"]
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+44]
       41 GETTABLEKS                       R2 R1 K4 ["Guid"]
       43 GETTABLEKS                       R4 R0 K5 ["Selected"]
       45 GETTABLEKS                       R3 R4 K4 ["Guid"]
       47 JUMPIFEQ                         R2 R3 ; [+37]
       49 GETTABLEKS                       R4 R0 K5 ["Selected"]
       51 GETTABLEKS                       R3 R4 K4 ["Guid"]
       53 GETUPVAL                         R6 10
       54 GETTABLEKS                       R5 R6 K3 ["get"]
       56 CALL                             R5 0 1
       57 GETTABLE                         R4 R5 R3
       58 JUMPIFNOTEQKNIL                  R4 ; [+2]
       60 LOADB                            R2 0 +1
       61 LOADB                            R2 1
       62 JUMPIFNOT                        R2 ; [+22]
       63 GETTABLEKS                       R3 R0 K5 ["Selected"]
       65 GETTABLEKS                       R2 R3 K4 ["Guid"]
       67 GETUPVAL                         R4 11
       68 GETTABLEKS                       R3 R4 K6 ["copy"]
       70 GETUPVAL                         R5 10
       71 GETTABLEKS                       R4 R5 K3 ["get"]
       73 CALL                             R4 0 -1
       74 CALL                             R3 -1 1
       75 LOADNIL                          R4
       76 SETTABLE                         R4 R3 R2
       77 GETUPVAL                         R4 12
       78 MOVE                             R5 R3
       79 CALL                             R4 1 0
       80 GETUPVAL                         R4 13
       81 LOADB                            R6 0
       82 NAMECALL                         R4 R4 K7 ["Fire"]
       84 CALL                             R4 2 0
       85 GETUPVAL                         R2 14
       86 GETTABLEKS                       R3 R0 K0 ["NumAllElements"]
       88 CALL                             R2 1 -1
       89 RETURN                           R2 -1
       90 RETURN                           R0 0

PROTO_17:
        0 LOADN                            R2 1
        1 LOADN                            R5 1
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K0 ["get"]
        5 CALL                             R7 0 1
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R8 R9 K1 ["resultRowHeight"]
        9 IDIV                             R6 R7 R8
       10 ADD                              R4 R5 R6
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K2 ["EXTRA_NODES"]
       14 SUB                              R3 R4 R5
       15 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       17 GETIMPORT                        R1 K5 [math.max]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K6 ["WINDOW_RADIUS"]
       23 GETUPVAL                         R3 3
       24 ADDK                             R3 R3 K7 [1]
       25 SETUPVAL                         R3 3
       26 GETUPVAL                         R3 3
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U11
       41 CAPTURE                          UPVAL U12
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          UPVAL U14
       44 JUMPIFNOT                        R0 ; [+46]
       45 GETUPVAL                         R6 8
       46 GETTABLEKS                       R5 R6 K8 ["getResults"]
       48 LOADN                            R6 0
       49 LOADN                            R7 1
       50 GETUPVAL                         R10 9
       51 GETTABLEKS                       R9 R10 K0 ["get"]
       53 CALL                             R9 0 1
       54 NEWTABLE                         R10 0 0
       56 MOVE                             R11 R9
       57 LOADNIL                          R12
       58 LOADNIL                          R13
       59 FORGPREP                         R11
       60 FASTCALL2                        TABLE_INSERT R10 R14 ; [+5]
       62 MOVE                             R17 R10
       63 MOVE                             R18 R14
       64 GETIMPORT                        R16 K11 [table.insert]
       66 CALL                             R16 2 0
       67 FORGLOOP                         R11 1 ; [-8]
       69 MOVE                             R8 R10
       70 CALL                             R5 3 1
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          UPVAL U15
       76 CAPTURE                          UPVAL U16
       77 CAPTURE                          UPVAL U17
       78 CAPTURE                          UPVAL U18
       79 CAPTURE                          UPVAL U19
       80 CAPTURE                          UPVAL U20
       81 CAPTURE                          UPVAL U21
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          UPVAL U22
       84 CAPTURE                          UPVAL U23
       85 CAPTURE                          UPVAL U24
       86 CAPTURE                          VAL R4
       87 NAMECALL                         R5 R5 K12 ["andThen"]
       89 CALL                             R5 2 -1
       90 RETURN                           R5 -1
       91 MOVE                             R5 R4
       92 GETUPVAL                         R7 15
       93 GETTABLEKS                       R6 R7 K0 ["get"]
       95 CALL                             R6 0 -1
       96 CALL                             R5 -1 -1
       97 RETURN                           R5 -1

PROTO_18:
        0 LOADN                            R1 1
        1 LOADN                            R4 1
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["get"]
        5 CALL                             R6 0 1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K1 ["resultRowHeight"]
        9 IDIV                             R5 R6 R7
       10 ADD                              R3 R4 R5
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["EXTRA_NODES"]
       14 SUB                              R2 R3 R4
       15 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
       17 GETIMPORT                        R0 K5 [math.max]
       19 CALL                             R0 2 1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K6 ["WINDOW_RADIUS"]
       23 GETUPVAL                         R2 3
       24 JUMPIFEQKNIL                     R2 ; [+15]
       26 GETUPVAL                         R5 3
       27 ADDK                             R4 R5 K7 [1]
       28 SUB                              R3 R0 R4
       29 FASTCALL1                        MATH_ABS R3 ; [+2]
       30 GETIMPORT                        R2 K9 [math.abs]
       32 CALL                             R2 1 1
       33 DIVK                             R4 R1 K10 [2]
       34 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       35 GETIMPORT                        R3 K12 [math.floor]
       37 CALL                             R3 1 1
       38 JUMPIFNOTLE                      R3 R2 ; [+6]
       40 GETUPVAL                         R2 4
       41 LOADB                            R3 0
       42 CALL                             R2 1 0
       43 LOADB                            R2 1
       44 RETURN                           R2 1
       45 LOADB                            R2 0
       46 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["create"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["create"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["create"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["create"]
       18 LOADN                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K0 ["create"]
       23 NEWTABLE                         R9 0 0
       25 CALL                             R8 1 2
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K0 ["create"]
       29 NEWTABLE                         R11 0 0
       31 CALL                             R10 1 2
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K1 ["new"]
       35 CALL                             R12 0 1
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R13 R14 K0 ["create"]
       39 LOADNIL                          R14
       40 CALL                             R13 1 2
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R15 R16 K0 ["create"]
       44 LOADNIL                          R16
       45 CALL                             R15 1 2
       46 GETUPVAL                         R18 1
       47 GETTABLEKS                       R17 R18 K1 ["new"]
       49 CALL                             R17 0 1
       50 GETUPVAL                         R19 0
       51 GETTABLEKS                       R18 R19 K0 ["create"]
       53 LOADN                            R19 0
       54 CALL                             R18 1 2
       55 LOADNIL                          R20
       56 LOADN                            R21 0
       57 LOADN                            R22 1
       58 NEWTABLE                         R23 0 2
       60 LOADN                            R24 0
       61 LOADN                            R25 0
       62 SETLIST                          R23 R24 2 [1]
       64 NEWCLOSURE                       R24 P0
       65 CAPTURE                          VAL R10
       66 NEWCLOSURE                       R25 P1
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R12
       71 NEWCLOSURE                       R26 P2
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 NEWCLOSURE                       R27 P3
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 NEWCLOSURE                       R28 P4
       80 CAPTURE                          VAL R10
       81 NEWCLOSURE                       R29 P5
       82 CAPTURE                          VAL R15
       83 CAPTURE                          VAL R10
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          UPVAL U3
       88 NEWCLOSURE                       R30 P6
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R10
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R12
       94 CAPTURE                          UPVAL U3
       95 NEWCLOSURE                       R31 P7
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R10
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          UPVAL U3
      102 NEWCLOSURE                       R32 P8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 DUPCLOSURE                       R33 K2 [PROTO_10]
      109 DUPCLOSURE                       R34 K3 [PROTO_11]
      110 NEWCLOSURE                       R35 P11
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R16
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R17
      122 NEWCLOSURE                       R36 P12
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R5
      130 NEWCLOSURE                       R20 P13
      131 CAPTURE                          VAL R18
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          REF R21
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R16
      137 CAPTURE                          REF R22
      138 CAPTURE                          REF R23
      139 CAPTURE                          UPVAL U3
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R6
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R35
      145 CAPTURE                          VAL R33
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R15
      153 CAPTURE                          UPVAL U2
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 NEWCLOSURE                       R37 P14
      157 CAPTURE                          VAL R18
      158 CAPTURE                          UPVAL U5
      159 CAPTURE                          UPVAL U6
      160 CAPTURE                          REF R22
      161 CAPTURE                          REF R20
      162 NEWTABLE                         R38 64 0
      164 SETTABLEKS                       R0 R38 K4 ["totalNumElementsObservable"]
      166 SETTABLEKS                       R2 R38 K5 ["totalNumResultsObservable"]
      168 SETTABLEKS                       R4 R38 K6 ["totalNumScriptsObservable"]
      170 SETTABLEKS                       R1 R38 K7 ["setTotalNumElements"]
      172 SETTABLEKS                       R3 R38 K8 ["setTotalNumResults"]
      174 SETTABLEKS                       R5 R38 K9 ["setTotalNumScripts"]
      176 SETTABLEKS                       R8 R38 K10 ["resultsObservable"]
      178 SETTABLEKS                       R9 R38 K11 ["setResults"]
      180 SETTABLEKS                       R32 R38 K12 ["clearResultsState"]
      182 SETTABLEKS                       R10 R38 K13 ["collapsedFilesObservable"]
      184 SETTABLEKS                       R11 R38 K14 ["setCollapsedFiles"]
      186 SETTABLEKS                       R13 R38 K15 ["hoveredObservable"]
      188 SETTABLEKS                       R14 R38 K16 ["setHovered"]
      190 SETTABLEKS                       R15 R38 K17 ["selectedObservable"]
      192 SETTABLEKS                       R16 R38 K18 ["setSelected"]
      194 SETTABLEKS                       R18 R38 K19 ["scrollHeightObservable"]
      196 SETTABLEKS                       R19 R38 K20 ["setScrollHeight"]
      198 SETTABLEKS                       R20 R38 K21 ["fetchAroundVisibleIndex"]
      200 SETTABLEKS                       R37 R38 K22 ["maybeRefetchAroundVisibleIndex"]
      202 SETTABLEKS                       R6 R38 K23 ["queryIdObservable"]
      204 SETTABLEKS                       R7 R38 K24 ["setQueryId"]
      206 SETTABLEKS                       R24 R38 K25 ["isCollapsed"]
      208 SETTABLEKS                       R25 R38 K26 ["collapseFile"]
      210 SETTABLEKS                       R26 R38 K27 ["expandFile"]
      212 SETTABLEKS                       R27 R38 K28 ["expandAllFiles"]
      214 SETTABLEKS                       R28 R38 K29 ["getCollapsedFiles"]
      216 SETTABLEKS                       R12 R38 K30 ["collapsedFilesSignal"]
      218 SETTABLEKS                       R29 R38 K31 ["replace"]
      220 SETTABLEKS                       R30 R38 K32 ["findNext"]
      222 SETTABLEKS                       R31 R38 K33 ["findPrevious"]
      224 SETTABLEKS                       R17 R38 K34 ["scrollToVisibleIndexSignal"]
      226 SETTABLEKS                       R33 R38 K35 ["flattenFileEntry"]
      228 SETTABLEKS                       R35 R38 K36 ["updatePageMetadata"]
      230 SETTABLEKS                       R36 R38 K37 ["updateInitialPageMetadata"]
      232 GETUPVAL                         R39 7
      233 SETTABLEKS                       R39 R38 K38 ["truncateTextToMaxBytes"]
      235 CLOSEUPVALS                      R20
      236 RETURN                           R38 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Resources"]
       22 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["Observable"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["ObservableUtil"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K13 ["setObservableIfChanged"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K14 ["Commands"]
       51 GETTABLEKS                       R7 R8 K15 ["FindReplace"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Packages"]
       58 GETTABLEKS                       R8 R9 K17 ["Dash"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R11 R0 K6 ["Src"]
       65 GETTABLEKS                       R10 R11 K7 ["Util"]
       67 GETTABLEKS                       R9 R10 K18 ["Signal"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R11 K19 ["Types"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K20 [PROTO_0]
       78 DUPCLOSURE                       R11 K21 [PROTO_19]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R10
       87 MOVE                             R12 R11
       88 CALL                             R12 0 1
       89 RETURN                           R12 1
