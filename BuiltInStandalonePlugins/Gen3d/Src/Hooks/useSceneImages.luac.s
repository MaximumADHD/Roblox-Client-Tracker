PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^.-:%d+: "]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["releaseTempId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R7 R5 K2 ["tempId"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-5]
       18 GETUPVAL                         R1 3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K0 ["current"]
       25 GETUPVAL                         R1 5
       26 LOADB                            R2 0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 6
       29 LOADNIL                          R2
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETUPVAL                         R1 2
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 RETURN                           R0 1

PROTO_7:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R7 R5 K0 ["tempId"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-5]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLE                         R2 R1 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R3 K3 [table.clone]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K5 [table.remove]
       13 MOVE                             R5 R3
       14 MOVE                             R6 R0
       15 CALL                             R4 2 0
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R5 R2 K6 ["tempId"]
       22 CALL                             R4 1 0
       23 GETUPVAL                         R4 3
       24 LOADNIL                          R5
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["pickAsync"]
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["current"]
        9 GETUPVAL                         R3 2
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 RETURN                           R0 0
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 JUMPIF                           R0 ; [+22]
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K3 ["current"]
       21 GETUPVAL                         R3 4
       22 LOADB                            R4 0
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 5
       25 FASTCALL1                        TOSTRING R1 ; [+3]
       26 MOVE                             R6 R1
       27 GETIMPORT                        R5 K5 [tostring]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [string.gsub]
       32 MOVE                             R7 R5
       33 LOADK                            R8 K9 ["^.-:%d+: "]
       34 LOADK                            R9 K10 [""]
       35 CALL                             R6 3 1
       36 MOVE                             R4 R6
       37 CALL                             R3 1 0
       38 RETURN                           R0 0
       39 JUMPIFNOTEQKNIL                  R1 ; [+9]
       41 GETUPVAL                         R3 3
       42 LOADB                            R4 0
       43 SETTABLEKS                       R4 R3 K3 ["current"]
       45 GETUPVAL                         R3 4
       46 LOADB                            R4 0
       47 CALL                             R3 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K11 ["toTempIdAsync"]
       52 GETTABLEKS                       R4 R1 K12 ["data"]
       54 CALL                             R3 1 1
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K3 ["current"]
       58 GETUPVAL                         R5 2
       59 JUMPIFEQ                         R4 R5 ; [+7]
       61 JUMPIFEQKNIL                     R3 ; [+4]
       63 GETUPVAL                         R4 6
       64 MOVE                             R5 R3
       65 CALL                             R4 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 3
       68 LOADB                            R5 0
       69 SETTABLEKS                       R5 R4 K3 ["current"]
       71 GETUPVAL                         R4 4
       72 LOADB                            R5 0
       73 CALL                             R4 1 0
       74 JUMPIFNOTEQKNIL                  R3 ; [+10]
       76 GETUPVAL                         R4 5
       77 GETUPVAL                         R5 7
       78 LOADK                            R7 K13 ["SceneGen"]
       79 LOADK                            R8 K14 ["PreviewFailed"]
       80 NAMECALL                         R5 R5 K15 ["getText"]
       82 CALL                             R5 3 -1
       83 CALL                             R4 -1 0
       84 RETURN                           R0 0
       85 GETIMPORT                        R4 K18 [table.clone]
       87 GETUPVAL                         R5 8
       88 GETTABLEKS                       R5 R5 K3 ["current"]
       90 CALL                             R4 1 1
       91 DUPTABLE                         R7 K21 [{"content", "tempId"}]
       92 SETTABLEKS                       R1 R7 K19 ["content"]
       94 SETTABLEKS                       R3 R7 K20 ["tempId"]
       96 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       98 MOVE                             R6 R4
       99 GETIMPORT                        R5 K23 [table.insert]
      101 CALL                             R5 2 0
      102 GETUPVAL                         R5 9
      103 MOVE                             R6 R4
      104 CALL                             R5 1 0
      105 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 LENGTH                           R0 R1
        9 GETUPVAL                         R1 2
       10 JUMPIFNOTLE                      R1 R0 ; [+14]
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 4
       14 LOADK                            R3 K1 ["SceneGen"]
       15 LOADK                            R4 K2 ["MaxImages"]
       16 DUPTABLE                         R5 K4 [{"count"}]
       17 GETUPVAL                         R6 2
       18 SETTABLEKS                       R6 R5 K3 ["count"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 4 -1
       23 CALL                             R0 -1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 0
       26 LOADB                            R1 1
       27 SETTABLEKS                       R1 R0 K0 ["current"]
       29 GETUPVAL                         R0 5
       30 GETTABLEKS                       R0 R0 K0 ["current"]
       32 GETUPVAL                         R1 6
       33 LOADB                            R2 1
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 3
       36 LOADNIL                          R2
       37 CALL                             R1 1 0
       38 GETIMPORT                        R1 K8 [task.spawn]
       40 NEWCLOSURE                       R2 P0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U9
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R8 R5 K1 ["content"]
       10 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       12 MOVE                             R7 R0
       13 GETIMPORT                        R6 K4 [table.insert]
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R6 R4 K2 ["tempId"]
       19 CALL                             R5 1 0
       20 FORGLOOP                         R0 2 ; [-5]
       22 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R8 R5 K0 ["tempId"]
        8 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 LOADB                            R5 0
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K0 ["useState"]
       14 LOADNIL                          R7
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K1 ["useRef"]
       19 MOVE                             R9 R2
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R2 R8 K2 ["current"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K1 ["useRef"]
       26 LOADB                            R10 0
       27 CALL                             R9 1 1
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K1 ["useRef"]
       31 LOADN                            R11 0
       32 CALL                             R10 1 1
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R11 R11 K3 ["useCallback"]
       36 NEWCLOSURE                       R12 P0
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R13 0 1
       40 MOVE                             R14 R0
       41 SETLIST                          R13 R14 1 [1]
       43 CALL                             R11 2 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       47 NEWCLOSURE                       R13 P1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R14 0 0
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K3 ["useCallback"]
       56 NEWCLOSURE                       R14 P2
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 NEWTABLE                         R15 0 2
       66 MOVE                             R16 R11
       67 MOVE                             R17 R12
       68 SETLIST                          R15 R16 2 [1]
       70 CALL                             R13 2 1
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R14 R14 K3 ["useCallback"]
       74 NEWCLOSURE                       R15 P3
       75 CAPTURE                          VAL R13
       76 NEWTABLE                         R16 0 1
       78 MOVE                             R17 R13
       79 SETLIST                          R16 R17 1 [1]
       81 CALL                             R14 2 1
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K3 ["useCallback"]
       85 NEWCLOSURE                       R16 P4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 NEWTABLE                         R17 0 1
       94 MOVE                             R18 R12
       95 SETLIST                          R17 R18 1 [1]
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          VAL R11
      103 NEWTABLE                         R18 0 1
      105 MOVE                             R19 R11
      106 SETLIST                          R18 R19 1 [1]
      108 CALL                             R16 2 1
      109 GETUPVAL                         R17 0
      110 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      112 NEWCLOSURE                       R18 P6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R7
      117 NEWTABLE                         R19 0 2
      119 MOVE                             R20 R11
      120 MOVE                             R21 R12
      121 SETLIST                          R19 R20 2 [1]
      123 CALL                             R17 2 1
      124 GETUPVAL                         R18 0
      125 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      127 NEWCLOSURE                       R19 P7
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R8
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R12
      138 NEWTABLE                         R20 0 4
      140 MOVE                             R21 R0
      141 MOVE                             R22 R11
      142 MOVE                             R23 R12
      143 MOVE                             R24 R1
      144 SETLIST                          R20 R21 4 [1]
      146 CALL                             R18 2 1
      147 GETUPVAL                         R19 0
      148 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      150 NEWCLOSURE                       R20 P8
      151 CAPTURE                          VAL R8
      152 NEWTABLE                         R21 0 0
      154 CALL                             R19 2 1
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R20 R20 K4 ["useEffect"]
      158 NEWCLOSURE                       R21 P9
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R11
      163 NEWTABLE                         R22 0 1
      165 MOVE                             R23 R11
      166 SETLIST                          R22 R23 1 [1]
      168 CALL                             R20 2 0
      169 GETUPVAL                         R20 0
      170 GETTABLEKS                       R20 R20 K5 ["useMemo"]
      172 NEWCLOSURE                       R21 P10
      173 CAPTURE                          VAL R2
      174 NEWTABLE                         R22 0 1
      176 MOVE                             R23 R2
      177 SETLIST                          R22 R23 1 [1]
      179 CALL                             R20 2 1
      180 DUPTABLE                         R21 K16 [{"imageIds", "loading", "errorMessage", "getContents", "pick", "remove", "clear", "detach", "attach", "release"}]
      181 SETTABLEKS                       R20 R21 K6 ["imageIds"]
      183 SETTABLEKS                       R4 R21 K7 ["loading"]
      185 SETTABLEKS                       R6 R21 K8 ["errorMessage"]
      187 SETTABLEKS                       R19 R21 K9 ["getContents"]
      189 SETTABLEKS                       R18 R21 K10 ["pick"]
      191 SETTABLEKS                       R17 R21 K11 ["remove"]
      193 SETTABLEKS                       R14 R21 K12 ["clear"]
      195 SETTABLEKS                       R15 R21 K13 ["detach"]
      197 SETTABLEKS                       R13 R21 K14 ["attach"]
      199 SETTABLEKS                       R16 R21 K15 ["release"]
      201 RETURN                           R21 1

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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["SceneGenViewModel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Guest"]
       36 GETTABLEKS                       R5 R5 K13 ["createReferenceImageService"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K14 ["MAX_IMAGES"]
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 DUPCLOSURE                       R7 K16 [PROTO_16]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 RETURN                           R7 1
