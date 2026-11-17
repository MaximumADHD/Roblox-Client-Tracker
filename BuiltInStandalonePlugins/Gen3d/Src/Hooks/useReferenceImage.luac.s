PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^.-:%d+: "]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["releaseTempId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLE                         R1 R2 R0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R0
       14 JUMPIFEQKNIL                     R1 ; [+5]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R3 R1 K1 ["tempId"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 LOADNIL                          R4
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 LOADB                            R2 0
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETUPVAL                         R9 0
        8 GETTABLE                         R8 R9 R6
        9 JUMPIFNOT                        R8 ; [+2]
       10 SETTABLE                         R7 R1 R6
       11 JUMP                             ; [+1]
       12 LOADB                            R2 1
       13 FORGLOOP                         R3 2 ; [-7]
       15 JUMPIFNOT                        R2 ; [+2]
       16 MOVE                             R3 R1
       17 RETURN                           R3 1
       18 MOVE                             R3 R0
       19 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLE                         R6 R0 R4
        7 JUMPIF                           R6 ; [+9]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R7 R5 K1 ["tempId"]
       11 CALL                             R6 1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["current"]
       15 LOADNIL                          R7
       16 SETTABLE                         R7 R6 R4
       17 FORGLOOP                         R1 2 ; [-12]
       19 GETUPVAL                         R1 2
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K0 ["current"]
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 GETTABLE                         R6 R0 R4
       30 JUMPIF                           R6 ; [+5]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K0 ["current"]
       34 LOADNIL                          R7
       35 SETTABLE                         R7 R6 R4
       36 FORGLOOP                         R1 1 ; [-8]
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R4 K1 ["tempId"]
        9 CALL                             R5 1 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["current"]
       13 LOADNIL                          R6
       14 SETTABLE                         R6 R5 R3
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 DUPTABLE                         R4 K4 [{["status"] = "Ready", ["imageId"]}]
        9 GETTABLEKS                       R5 R1 K5 ["tempId"]
       11 SETTABLEKS                       R5 R4 K3 ["imageId"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickAsync"]
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K2 [pcall]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["current"]
       10 GETUPVAL                         R3 2
       11 LOADNIL                          R4
       12 SETTABLE                         R4 R2 R3
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["current"]
       16 GETUPVAL                         R5 2
       17 GETTABLE                         R3 R4 R5
       18 GETUPVAL                         R4 4
       19 JUMPIFNOTEQ                      R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 JUMPIF                           R0 ; [+19]
       26 GETUPVAL                         R2 5
       27 GETUPVAL                         R3 2
       28 DUPTABLE                         R4 K7 [{["status"] = "Failed", ["errorMessage"]}]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R6 K9 [tostring]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K12 [string.gsub]
       36 MOVE                             R8 R6
       37 LOADK                            R9 K13 ["^.-:%d+: "]
       38 LOADK                            R10 K14 [""]
       39 CALL                             R7 3 1
       40 MOVE                             R5 R7
       41 SETTABLEKS                       R5 R4 K6 ["errorMessage"]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0
       45 JUMPIFNOTEQKNIL                  R1 ; [+19]
       47 GETUPVAL                         R2 2
       48 GETUPVAL                         R4 6
       49 GETTABLEKS                       R4 R4 K3 ["current"]
       51 GETTABLE                         R3 R4 R2
       52 GETUPVAL                         R4 5
       53 MOVE                             R5 R2
       54 JUMPIFEQKNIL                     R3 ; [+7]
       56 DUPTABLE                         R6 K17 [{["status"] = "Ready", ["imageId"]}]
       57 GETTABLEKS                       R7 R3 K18 ["tempId"]
       59 SETTABLEKS                       R7 R6 K16 ["imageId"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 CALL                             R4 2 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K19 ["toTempIdAsync"]
       68 GETTABLEKS                       R3 R1 K20 ["data"]
       70 CALL                             R2 1 1
       71 JUMPIFNOTEQKNIL                  R2 ; [+6]
       73 GETUPVAL                         R3 5
       74 GETUPVAL                         R4 2
       75 DUPTABLE                         R5 K22 [{["status"] = "Failed", ["errorMessage"] = "Failed to preview the selected image."}]
       76 CALL                             R3 2 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R5 3
       79 GETTABLEKS                       R5 R5 K3 ["current"]
       81 GETUPVAL                         R6 2
       82 GETTABLE                         R4 R5 R6
       83 GETUPVAL                         R5 4
       84 JUMPIFNOTEQ                      R4 R5 ; [+2]
       86 LOADB                            R3 0 +1
       87 LOADB                            R3 1
       88 JUMPIFNOT                        R3 ; [+4]
       89 GETUPVAL                         R3 7
       90 MOVE                             R4 R2
       91 CALL                             R3 1 0
       92 RETURN                           R0 0
       93 GETUPVAL                         R4 6
       94 GETTABLEKS                       R4 R4 K3 ["current"]
       96 GETUPVAL                         R5 2
       97 GETTABLE                         R3 R4 R5
       98 GETUPVAL                         R4 6
       99 GETTABLEKS                       R4 R4 K3 ["current"]
      101 GETUPVAL                         R5 2
      102 DUPTABLE                         R6 K24 [{"content", "tempId"}]
      103 SETTABLEKS                       R1 R6 K23 ["content"]
      105 SETTABLEKS                       R2 R6 K18 ["tempId"]
      107 SETTABLE                         R6 R4 R5
      108 JUMPIFEQKNIL                     R3 ; [+5]
      110 GETUPVAL                         R4 7
      111 GETTABLEKS                       R5 R3 K18 ["tempId"]
      113 CALL                             R4 1 0
      114 GETUPVAL                         R4 5
      115 GETUPVAL                         R5 2
      116 DUPTABLE                         R6 K17 [{["status"] = "Ready", ["imageId"]}]
      117 SETTABLEKS                       R2 R6 K16 ["imageId"]
      119 CALL                             R4 2 0
      120 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 LOADB                            R2 1
       13 SETTABLE                         R2 R1 R0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R2 R1 K0 ["current"]
       17 ADDK                             R2 R2 K1 [1]
       18 SETTABLEKS                       R2 R1 K0 ["current"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K0 ["current"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 SETTABLE                         R1 R2 R0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 DUPTABLE                         R4 K4 [{["status"] = "Loading"}]
       30 CALL                             R2 2 0
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 GETIMPORT                        R3 K7 [task.spawn]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFEQKNIL                     R0 ; [+4]
        9 GETTABLEKS                       R1 R0 K1 ["content"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_16:
        0 ORK                              R2 R1 K0 [""]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["useState"]
        4 NEWTABLE                         R4 0 0
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["useRef"]
       10 NEWTABLE                         R6 0 0
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["useRef"]
       16 NEWTABLE                         R7 0 0
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K2 ["useRef"]
       22 NEWTABLE                         R8 0 0
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["useRef"]
       28 LOADN                            R9 0
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K2 ["useRef"]
       33 MOVE                             R10 R2
       34 CALL                             R9 1 1
       35 SETTABLEKS                       R2 R9 K3 ["current"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R12 0 0
       44 CALL                             R10 2 1
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R13 0 1
       52 MOVE                             R14 R0
       53 SETLIST                          R13 R14 1 [1]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       59 NEWCLOSURE                       R13 P2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R10
       64 NEWTABLE                         R14 0 2
       66 MOVE                             R15 R11
       67 MOVE                             R16 R10
       68 SETLIST                          R14 R15 2 [1]
       70 CALL                             R12 2 1
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       74 NEWCLOSURE                       R14 P3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 NEWTABLE                         R15 0 1
       81 MOVE                             R16 R11
       82 SETLIST                          R15 R16 1 [1]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K5 ["useEffect"]
       88 NEWCLOSURE                       R15 P4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R11
       91 NEWTABLE                         R16 0 1
       93 MOVE                             R17 R11
       94 SETLIST                          R16 R17 1 [1]
       96 CALL                             R14 2 0
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K4 ["useCallback"]
      100 NEWCLOSURE                       R15 P5
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R9
      103 NEWTABLE                         R16 0 1
      105 MOVE                             R17 R12
      106 SETLIST                          R16 R17 1 [1]
      108 CALL                             R14 2 1
      109 NEWCLOSURE                       R15 P6
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      115 NEWCLOSURE                       R17 P7
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R11
      124 NEWTABLE                         R18 0 3
      126 MOVE                             R19 R0
      127 MOVE                             R20 R11
      128 MOVE                             R21 R10
      129 SETLIST                          R18 R19 3 [1]
      131 CALL                             R16 2 1
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R17 R17 K4 ["useCallback"]
      135 NEWCLOSURE                       R18 P8
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R9
      138 NEWTABLE                         R19 0 0
      140 CALL                             R17 2 1
      141 DUPTABLE                         R18 K12 [{"state", "getContent", "pick", "clear", "clearFor", "clearAllExcept"}]
      142 GETTABLE                         R19 R3 R2
      143 JUMPIF                           R19 ; [+1]
      144 GETUPVAL                         R19 1
      145 SETTABLEKS                       R19 R18 K6 ["state"]
      147 SETTABLEKS                       R17 R18 K7 ["getContent"]
      149 SETTABLEKS                       R16 R18 K8 ["pick"]
      151 SETTABLEKS                       R14 R18 K9 ["clear"]
      153 SETTABLEKS                       R12 R18 K10 ["clearFor"]
      155 SETTABLEKS                       R13 R18 K11 ["clearAllExcept"]
      157 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Guest"]
       27 GETTABLEKS                       R4 R4 K11 ["createReferenceImageService"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K14 [table.freeze]
       32 DUPTABLE                         R5 K17 [{["status"] = "None"}]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K18 [PROTO_0]
       35 DUPCLOSURE                       R6 K19 [PROTO_16]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
