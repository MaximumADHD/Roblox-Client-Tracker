PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["."]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R1 K1 ["Tags"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["@"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADK                            R1 K3 ["Queries"]
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K4 ["isElement"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+2]
       22 LOADK                            R1 K5 ["UI Elements"]
       23 RETURN                           R1 1
       24 LOADK                            R1 K6 ["Other"]
       25 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R1
        1 LENGTH                           R3 R0
        2 JUMPIFNOTLT                      R3 R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 MOVE                             R2 R1
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLE                         R7 R0 R5
       11 JUMPIFEQ                         R6 R7 ; [+3]
       13 LOADB                            R7 0
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-6]
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+9]
        4 LOADK                            R4 K0 ["StyleCategory"]
        5 NAMECALL                         R2 R0 K1 ["GetAttribute"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKS                       R2 K2 ["Tokens"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+16]
        2 LOADK                            R4 K0 ["StyleCategory"]
        3 LOADK                            R5 K1 ["Tokens"]
        4 NAMECALL                         R2 R0 K2 ["SetAttribute"]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R3 R0 K3 ["GetDerives"]
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R2 2 1
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R0 K4 ["SetDerives"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["getUserDesignSheets"]
       21 GETUPVAL                         R5 3
       22 JUMPIFNOT                        R5 ; [+2]
       23 MOVE                             R3 R1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 CALL                             R2 1 3
       27 FORGPREP                         R2
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K6 ["setAsToken"]
       31 MOVE                             R8 R0
       32 MOVE                             R9 R6
       33 GETUPVAL                         R11 3
       34 JUMPIFNOT                        R11 ; [+2]
       35 MOVE                             R10 R1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R10
       38 CALL                             R7 3 0
       39 FORGLOOP                         R2 2 ; [-12]
       41 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R3 0
        1 GETUPVAL                         R5 0
        2 JUMPIFNOT                        R5 ; [+2]
        3 MOVE                             R4 R2
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R5 R4 K0 ["GetDescendants"]
        8 CALL                             R5 1 3
        9 FORGPREP                         R5
       10 GETUPVAL                         R10 2
       11 GETTABLEKS                       R10 R10 K1 ["isTheme"]
       13 MOVE                             R11 R9
       14 CALL                             R10 1 1
       15 LOADK                            R13 K2 ["StyleSheet"]
       16 NAMECALL                         R11 R9 K3 ["IsA"]
       18 CALL                             R11 2 1
       19 JUMPIFNOT                        R11 ; [+17]
       20 JUMPIFNOT                        R10 ; [+16]
       21 LOADB                            R3 1
       22 GETUPVAL                         R11 3
       23 JUMPIFNOT                        R11 ; [+7]
       24 GETUPVAL                         R11 4
       25 NAMECALL                         R12 R9 K4 ["GetDerives"]
       27 CALL                             R12 1 1
       28 MOVE                             R13 R0
       29 CALL                             R11 2 1
       30 JUMPIF                           R11 ; [+6]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K5 ["insertDerive"]
       34 MOVE                             R12 R9
       35 MOVE                             R13 R0
       36 CALL                             R11 2 0
       37 FORGLOOP                         R5 2 ; [-28]
       39 JUMPIFNOT                        R1 ; [+16]
       40 JUMPIF                           R3 ; [+15]
       41 GETUPVAL                         R5 3
       42 JUMPIFNOT                        R5 ; [+7]
       43 GETUPVAL                         R5 4
       44 NAMECALL                         R6 R1 K4 ["GetDerives"]
       46 CALL                             R6 1 1
       47 MOVE                             R7 R0
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+6]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K5 ["insertDerive"]
       53 MOVE                             R6 R1
       54 MOVE                             R7 R0
       55 CALL                             R5 2 0
       56 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+9]
        4 LOADK                            R4 K0 ["StyleCategory"]
        5 NAMECALL                         R2 R0 K1 ["GetAttribute"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKS                       R2 K2 ["Tokens"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+16]
        2 LOADK                            R4 K0 ["StyleCategory"]
        3 LOADK                            R5 K1 ["Themes"]
        4 NAMECALL                         R2 R0 K2 ["SetAttribute"]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R3 R0 K3 ["GetDerives"]
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R2 2 1
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R0 K4 ["SetDerives"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["getUserDesignSheets"]
       21 GETUPVAL                         R5 3
       22 JUMPIFNOT                        R5 ; [+2]
       23 MOVE                             R3 R1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 CALL                             R2 1 3
       27 FORGPREP                         R2
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K6 ["setAsTheme"]
       31 MOVE                             R8 R0
       32 MOVE                             R9 R6
       33 GETUPVAL                         R11 3
       34 JUMPIFNOT                        R11 ; [+2]
       35 MOVE                             R10 R1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R10
       38 CALL                             R7 3 0
       39 FORGLOOP                         R2 2 ; [-12]
       41 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R3 R1 K0 ["GetDerives"]
        2 CALL                             R3 1 1
        3 NEWTABLE                         R4 0 0
        5 GETUPVAL                         R6 0
        6 JUMPIFNOT                        R6 ; [+2]
        7 MOVE                             R5 R2
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R5 1
       10 NAMECALL                         R6 R5 K1 ["GetDescendants"]
       12 CALL                             R6 1 3
       13 FORGPREP                         R6
       14 LOADK                            R13 K2 ["StyleCategory"]
       15 NAMECALL                         R11 R10 K3 ["GetAttribute"]
       17 CALL                             R11 2 1
       18 LOADK                            R14 K4 ["StyleSheet"]
       19 NAMECALL                         R12 R10 K5 ["IsA"]
       21 CALL                             R12 2 1
       22 JUMPIFNOT                        R12 ; [+44]
       23 JUMPIFNOTEQKS                    R11 K6 ["Tokens"] ; [+28]
       25 GETUPVAL                         R12 2
       26 MOVE                             R13 R3
       27 MOVE                             R14 R10
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+6]
       30 GETUPVAL                         R12 3
       31 GETTABLEKS                       R12 R12 K7 ["removeDerive"]
       33 MOVE                             R13 R1
       34 MOVE                             R14 R10
       35 CALL                             R12 2 0
       36 GETUPVAL                         R12 4
       37 JUMPIFNOT                        R12 ; [+7]
       38 GETUPVAL                         R12 2
       39 NAMECALL                         R13 R0 K0 ["GetDerives"]
       41 CALL                             R13 1 1
       42 MOVE                             R14 R10
       43 CALL                             R12 2 1
       44 JUMPIF                           R12 ; [+22]
       45 GETUPVAL                         R12 3
       46 GETTABLEKS                       R12 R12 K8 ["insertDerive"]
       48 MOVE                             R13 R0
       49 MOVE                             R14 R10
       50 CALL                             R12 2 0
       51 JUMP                             ; [+15]
       52 JUMPIFNOTEQKS                    R11 K9 ["Themes"] ; [+14]
       54 GETTABLEKS                       R12 R10 K10 ["Parent"]
       56 LOADK                            R14 K11 ["Folder"]
       57 NAMECALL                         R12 R12 K5 ["IsA"]
       59 CALL                             R12 2 1
       60 JUMPIF                           R12 ; [+6]
       61 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       63 MOVE                             R13 R4
       64 MOVE                             R14 R10
       65 GETUPVAL                         R12 5
       66 CALL                             R12 2 0
       67 FORGLOOP                         R6 2 ; [-54]
       69 GETTABLEKS                       R7 R0 K10 ["Parent"]
       71 JUMPIFNOT                        R7 ; [+10]
       72 GETTABLEKS                       R7 R0 K10 ["Parent"]
       74 LOADK                            R9 K11 ["Folder"]
       75 NAMECALL                         R7 R7 K5 ["IsA"]
       77 CALL                             R7 2 1
       78 JUMPIFNOT                        R7 ; [+3]
       79 GETTABLEKS                       R6 R0 K10 ["Parent"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R6
       83 JUMPIFNOT                        R6 ; [+4]
       84 NAMECALL                         R7 R6 K12 ["GetChildren"]
       86 CALL                             R7 1 1
       87 JUMP                             ; [+1]
       88 MOVE                             R7 R4
       89 LOADB                            R8 0
       90 MOVE                             R9 R7
       91 LOADNIL                          R10
       92 LOADNIL                          R11
       93 FORGPREP                         R9
       94 LOADK                            R16 K2 ["StyleCategory"]
       95 NAMECALL                         R14 R13 K3 ["GetAttribute"]
       97 CALL                             R14 2 1
       98 LOADK                            R17 K4 ["StyleSheet"]
       99 NAMECALL                         R15 R13 K5 ["IsA"]
      101 CALL                             R15 2 1
      102 JUMPIFNOT                        R15 ; [+9]
      103 JUMPIFEQKS                       R14 K6 ["Tokens"] ; [+8]
      105 GETUPVAL                         R15 2
      106 MOVE                             R16 R3
      107 MOVE                             R17 R13
      108 CALL                             R15 2 1
      109 JUMPIFNOT                        R15 ; [+2]
      110 LOADB                            R8 1
      111 JUMP                             ; [+2]
      112 FORGLOOP                         R9 2 ; [-19]
      114 JUMPIF                           R8 ; [+6]
      115 GETUPVAL                         R9 3
      116 GETTABLEKS                       R9 R9 K8 ["insertDerive"]
      118 MOVE                             R10 R1
      119 MOVE                             R11 R0
      120 CALL                             R9 2 0
      121 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Parent"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 ["expecting valid stylesheet"]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 LOADK                            R3 K4 ["StyleCategory"]
       17 NAMECALL                         R1 R0 K5 ["GetAttribute"]
       19 CALL                             R1 2 1
       20 JUMPIFNOTEQKS                    R1 K6 ["Themes"] ; [+3]
       22 LOADB                            R1 1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R1 R0 K0 ["Parent"]
       26 LOADK                            R4 K7 ["Folder"]
       27 NAMECALL                         R2 R1 K8 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+8]
       31 LOADK                            R4 K4 ["StyleCategory"]
       32 NAMECALL                         R2 R1 K5 ["GetAttribute"]
       34 CALL                             R2 2 1
       35 JUMPIFNOTEQKS                    R2 K6 ["Themes"] ; [+3]
       37 LOADB                            R2 1
       38 RETURN                           R2 1
       39 LOADB                            R2 0
       40 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 1
        1 LOADK                            R1 K0 ["Stylesheet"]
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["getStyleSheetParent"]
        8 GETUPVAL                         R3 3
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETUPVAL                         R2 4
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K2 ["Parent"]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K3 ["getStudioDefaultStyleSheet"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R1 3
       21 JUMPIFNOT                        R1 ; [+25]
       22 GETUPVAL                         R3 4
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       29 LOADK                            R3 K4 ["Source should never be nil"]
       30 GETIMPORT                        R1 K6 [assert]
       32 CALL                             R1 2 0
       33 JUMPIFNOT                        R0 ; [+20]
       34 GETUPVAL                         R1 4
       35 LOADK                            R3 K7 ["ReplicatedStorage"]
       36 NAMECALL                         R1 R1 K8 ["IsA"]
       38 CALL                             R1 2 1
       39 JUMPIFNOT                        R1 ; [+14]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K9 ["insertDerive"]
       43 GETUPVAL                         R2 0
       44 MOVE                             R3 R0
       45 CALL                             R1 2 0
       46 JUMP                             ; [+7]
       47 JUMPIFNOT                        R0 ; [+6]
       48 GETUPVAL                         R1 2
       49 GETTABLEKS                       R1 R1 K9 ["insertDerive"]
       51 GETUPVAL                         R2 0
       52 MOVE                             R3 R0
       53 CALL                             R1 2 0
       54 GETIMPORT                        R1 K13 [Enum.FinishRecordingOperation.Commit]
       56 RETURN                           R1 1

PROTO_10:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R3 K3 [{"Name", "DisplayName", "DoChange"}]
        3 LOADK                            R4 K4 ["StyleEditor.Add Design"]
        4 SETTABLEKS                       R4 R3 K0 ["Name"]
        6 LOADK                            R4 K5 ["Style Editor - Add Design"]
        7 SETTABLEKS                       R4 R3 K1 ["DisplayName"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K2 ["DoChange"]
       17 CALL                             R2 1 0
       18 CLOSEUPVALS                      R1
       19 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleSheetDerivesChain"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["GetDerives"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 GETUPVAL                         R5 2
       12 CALL                             R3 2 1
       13 NOT                              R2 R3
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R1
       17 GETUPVAL                         R5 1
       18 CALL                             R3 2 1
       19 NOT                              R2 R3
       20 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+1]
        9 JUMPIF                           R3 ; [+2]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 JUMPIFNOT                        R2 ; [+15]
        5 NAMECALL                         R2 R0 K0 ["GetDerives"]
        7 CALL                             R2 1 1
        8 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R1
       12 GETIMPORT                        R3 K3 [table.insert]
       14 CALL                             R3 2 0
       15 MOVE                             R5 R2
       16 NAMECALL                         R3 R0 K4 ["SetDerives"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K7 [Instance.new]
       22 LOADK                            R3 K8 ["StyleDerive"]
       23 CALL                             R2 1 1
       24 LOADK                            R4 K9 ["Derive from "]
       25 GETTABLEKS                       R5 R1 K10 ["Name"]
       27 CONCAT                           R3 R4 R5
       28 SETTABLEKS                       R3 R2 K10 ["Name"]
       30 SETTABLEKS                       R0 R2 K11 ["Parent"]
       32 SETTABLEKS                       R1 R2 K12 ["StyleSheet"]
       34 RETURN                           R0 0

PROTO_14:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R2 R0 K0 ["GetDerives"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [table.remove]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R0 K4 ["SetDerives"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 NAMECALL                         R2 R0 K0 ["GetChildren"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["StyleDerive"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+7]
       12 GETTABLEKS                       R7 R6 K3 ["StyleSheet"]
       14 JUMPIFNOTEQ                      R7 R1 ; [+4]
       16 NAMECALL                         R7 R6 K4 ["Remove"]
       18 CALL                             R7 1 0
       19 FORGLOOP                         R2 2 ; [-13]
       21 RETURN                           R0 0

PROTO_16:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R3 R0 K0 ["GetDerives"]
        4 CALL                             R3 1 1
        5 LOADN                            R4 0
        6 JUMPIFLE                         R1 R4 ; [+4]
        8 LENGTH                           R4 R3
        9 JUMPIFNOTLT                      R4 R1 ; [+2]
       11 RETURN                           R0 0
       12 ADD                              R5 R1 R2
       13 LOADN                            R6 1
       14 LENGTH                           R7 R3
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R4 K3 [math.clamp]
       18 CALL                             R4 3 1
       19 JUMPIFNOTEQ                      R4 R1 ; [+2]
       21 RETURN                           R0 0
       22 GETTABLE                         R5 R3 R4
       23 GETTABLE                         R6 R3 R1
       24 SETTABLE                         R5 R3 R1
       25 SETTABLE                         R6 R3 R4
       26 MOVE                             R7 R3
       27 NAMECALL                         R5 R0 K4 ["SetDerives"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 JUMPIFNOT                        R2 ; [+46]
        4 NAMECALL                         R3 R0 K0 ["GetChildren"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 LOADK                            R10 K1 ["StyleDerive"]
        9 NAMECALL                         R8 R7 K2 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+35]
       13 GETTABLEKS                       R8 R7 K3 ["StyleSheet"]
       15 JUMPIFNOTEQ                      R8 R2 ; [+32]
       17 SETTABLEKS                       R1 R7 K3 ["StyleSheet"]
       19 GETTABLEKS                       R8 R7 K4 ["Name"]
       21 GETTABLEKS                       R10 R2 K4 ["Name"]
       23 NAMECALL                         R8 R8 K5 ["find"]
       25 CALL                             R8 2 2
       26 JUMPIFNOT                        R8 ; [+20]
       27 JUMPIFNOT                        R9 ; [+19]
       28 GETTABLEKS                       R14 R7 K4 ["Name"]
       30 LOADN                            R16 1
       31 SUBK                             R17 R8 K6 [1]
       32 NAMECALL                         R14 R14 K7 ["sub"]
       34 CALL                             R14 3 1
       35 MOVE                             R11 R14
       36 GETTABLEKS                       R12 R1 K4 ["Name"]
       38 GETTABLEKS                       R13 R7 K4 ["Name"]
       40 ADDK                             R15 R9 K6 [1]
       41 NAMECALL                         R13 R13 K7 ["sub"]
       43 CALL                             R13 2 1
       44 CONCAT                           R10 R11 R13
       45 SETTABLEKS                       R10 R7 K4 ["Name"]
       47 RETURN                           R0 0
       48 FORGLOOP                         R3 2 ; [-41]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K8 ["insertDerive"]
       53 MOVE                             R4 R0
       54 MOVE                             R5 R1
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getStudioDefaultStyleSheet"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R3 R0
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R4 R3 K1 ["GetDescendants"]
       13 CALL                             R4 1 3
       14 FORGPREP                         R4
       15 LOADK                            R11 K2 ["StyleSheet"]
       16 NAMECALL                         R9 R8 K3 ["IsA"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+17]
       20 JUMPIFEQ                         R8 R2 ; [+16]
       22 LOADK                            R11 K4 ["StyleCategory"]
       23 NAMECALL                         R9 R8 K5 ["GetAttribute"]
       25 CALL                             R9 2 1
       26 JUMPIFEQKS                       R9 K6 ["Design"] ; [+3]
       28 JUMPIFNOTEQKNIL                  R9 ; [+8]
       30 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       32 MOVE                             R11 R1
       33 MOVE                             R12 R8
       34 GETIMPORT                        R10 K9 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R4 2 ; [-23]
       39 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getUserDesignSheets"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R2 R0
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 CALL                             R1 1 1
        9 LENGTH                           R2 R1
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+3]
       13 GETTABLEN                        R2 R1 1
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 MOVE                             R1 R0
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R1 1
        5 LOADK                            R4 K0 ["Design"]
        6 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 LOADK                            R5 K2 ["Folder"]
       11 NAMECALL                         R3 R2 K3 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+1]
       15 LOADNIL                          R2
       16 JUMPIF                           R2 ; [+9]
       17 GETIMPORT                        R3 K6 [Instance.new]
       19 LOADK                            R4 K2 ["Folder"]
       20 MOVE                             R5 R1
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 LOADK                            R3 K0 ["Design"]
       24 SETTABLEKS                       R3 R2 K7 ["Name"]
       26 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAUserDesignSheet"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R2 R0
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R2 R0
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R3 R1 K1 ["Parent"]
       17 RETURN                           R3 1
       18 MOVE                             R3 R2
       19 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getStudioDefaultStyleSheet"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getOrCreateDesignSystemFolder"]
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 MOVE                             R3 R1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R2 R3 K2 ["Parent"]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R3 R4 K3 ["StudioDefaultStyleSheet"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K4 ["getUserDesignSheets"]
       26 GETUPVAL                         R7 1
       27 JUMPIFNOT                        R7 ; [+2]
       28 MOVE                             R5 R1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 CALL                             R4 1 3
       32 FORGPREP                         R4
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K5 ["insertDerive"]
       36 MOVE                             R10 R8
       37 MOVE                             R11 R3
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-7]
       41 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StudioDefaultStyleSheet"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["StudioDefaultStyleSheet"]
        7 GETTABLEKS                       R0 R0 K1 ["Parent"]
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["StudioDefaultStyleSheet"]
       14 RETURN                           R0 1
       15 LOADNIL                          R0
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StylingService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["StarterGui"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["Parent"]
       33 GETIMPORT                        R5 K11 [require]
       35 GETTABLEKS                       R6 R4 K12 ["Packages"]
       37 GETTABLEKS                       R6 R6 K13 ["Framework"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K11 [require]
       42 GETTABLEKS                       R7 R4 K14 ["Src"]
       44 GETTABLEKS                       R7 R7 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["SelectorHelpers"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K11 [require]
       51 GETTABLEKS                       R8 R4 K14 ["Src"]
       53 GETTABLEKS                       R8 R8 K15 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["recordChange"]
       57 CALL                             R7 1 1
       58 MOVE                             R8 R0
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K11 [require]
       62 GETTABLEKS                       R9 R4 K14 ["Src"]
       64 GETTABLEKS                       R9 R9 K15 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["createStudioDefaultStyleSheet"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K11 [require]
       71 GETTABLEKS                       R10 R4 K14 ["Src"]
       73 GETTABLEKS                       R10 R10 K19 ["Flags"]
       75 GETTABLEKS                       R10 R10 K20 ["getFFlagStyleQuery"]
       77 CALL                             R9 1 1
       78 CALL                             R9 0 1
       79 GETIMPORT                        R10 K11 [require]
       81 GETTABLEKS                       R11 R4 K14 ["Src"]
       83 GETTABLEKS                       R11 R11 K19 ["Flags"]
       85 GETTABLEKS                       R11 R11 K21 ["getFFlagStyleEditorPluginStyleSheets"]
       87 CALL                             R10 1 1
       88 CALL                             R10 0 1
       89 GETIMPORT                        R11 K11 [require]
       91 GETTABLEKS                       R12 R4 K14 ["Src"]
       93 GETTABLEKS                       R12 R12 K19 ["Flags"]
       95 GETTABLEKS                       R12 R12 K22 ["getFFlagStyleEditorFixDerivesOrdering"]
       97 CALL                             R11 1 1
       98 CALL                             R11 0 1
       99 GETIMPORT                        R12 K11 [require]
      101 GETTABLEKS                       R13 R4 K12 ["Packages"]
      103 GETTABLEKS                       R13 R13 K23 ["Dash"]
      105 CALL                             R12 1 1
      106 GETTABLEKS                       R13 R12 K24 ["includes"]
      108 GETTABLEKS                       R14 R12 K25 ["startsWith"]
      110 GETTABLEKS                       R15 R12 K26 ["filter"]
      112 GETIMPORT                        R16 K29 [table.insert]
      114 GETTABLEKS                       R17 R5 K30 ["Styling"]
      116 GETTABLEKS                       R17 R17 K31 ["createStyleSheet"]
      118 NEWTABLE                         R18 32 0
      120 DUPTABLE                         R19 K36 [{"DESIGN", "UI_ELEMENTS", "THEMES", "SELECTOR"}]
      121 NEWTABLE                         R20 0 1
      123 LOADN                            R21 1
      124 SETLIST                          R20 R21 1 [1]
      126 SETTABLEKS                       R20 R19 K32 ["DESIGN"]
      128 NEWTABLE                         R20 0 2
      130 LOADN                            R21 1
      131 LOADN                            R22 1
      132 SETLIST                          R20 R21 2 [1]
      134 SETTABLEKS                       R20 R19 K33 ["UI_ELEMENTS"]
      136 NEWTABLE                         R20 0 1
      138 LOADN                            R21 3
      139 SETLIST                          R20 R21 1 [1]
      141 SETTABLEKS                       R20 R19 K34 ["THEMES"]
      143 NEWTABLE                         R20 0 1
      145 LOADN                            R21 1
      146 SETLIST                          R20 R21 1 [1]
      148 SETTABLEKS                       R20 R19 K35 ["SELECTOR"]
      150 SETTABLEKS                       R19 R18 K37 ["PATHS"]
      152 NEWTABLE                         R19 0 4
      154 LOADK                            R20 K38 ["Other"]
      155 LOADK                            R21 K39 ["Tags"]
      156 LOADK                            R22 K40 ["Queries"]
      157 LOADK                            R23 K41 ["UI Elements"]
      158 SETLIST                          R19 R20 4 [1]
      160 SETTABLEKS                       R19 R18 K42 ["CATEGORIES"]
      162 DUPCLOSURE                       R19 K43 [PROTO_0]
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R6
      166 SETTABLEKS                       R19 R18 K44 ["getSelectorCategory"]
      168 DUPCLOSURE                       R19 K45 [PROTO_1]
      169 SETTABLEKS                       R19 R18 K46 ["isUnderPath"]
      171 DUPCLOSURE                       R19 K47 [PROTO_3]
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R10
      176 SETTABLEKS                       R19 R18 K48 ["setAsTokenForAll"]
      178 DUPCLOSURE                       R19 K49 [PROTO_4]
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R13
      184 SETTABLEKS                       R19 R18 K50 ["setAsToken"]
      186 DUPCLOSURE                       R19 K51 [PROTO_6]
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R10
      191 SETTABLEKS                       R19 R18 K52 ["setAsThemeForAll"]
      193 DUPCLOSURE                       R19 K53 [PROTO_7]
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R16
      200 SETTABLEKS                       R19 R18 K54 ["setAsTheme"]
      202 DUPCLOSURE                       R19 K55 [PROTO_8]
      203 SETTABLEKS                       R19 R18 K56 ["isTheme"]
      205 DUPCLOSURE                       R19 K57 [PROTO_10]
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R10
      210 SETTABLEKS                       R19 R18 K58 ["createDesign"]
      212 DUPCLOSURE                       R19 K59 [PROTO_12]
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R13
      215 SETTABLEKS                       R19 R18 K60 ["isValidDerive"]
      217 DUPCLOSURE                       R19 K61 [PROTO_13]
      218 CAPTURE                          VAL R11
      219 SETTABLEKS                       R19 R18 K62 ["insertDerive"]
      221 DUPCLOSURE                       R19 K63 [PROTO_14]
      222 SETTABLEKS                       R19 R18 K64 ["removeDeriveIndex"]
      224 DUPCLOSURE                       R19 K65 [PROTO_15]
      225 SETTABLEKS                       R19 R18 K66 ["removeDerive"]
      227 DUPCLOSURE                       R19 K67 [PROTO_16]
      228 SETTABLEKS                       R19 R18 K68 ["moveDerive"]
      230 DUPCLOSURE                       R19 K69 [PROTO_17]
      231 CAPTURE                          VAL R18
      232 SETTABLEKS                       R19 R18 K70 ["replaceDerive"]
      234 DUPCLOSURE                       R19 K71 [PROTO_18]
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R1
      238 SETTABLEKS                       R19 R18 K72 ["getUserDesignSheets"]
      240 DUPCLOSURE                       R19 K73 [PROTO_19]
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R10
      243 SETTABLEKS                       R19 R18 K74 ["getAUserDesignSheet"]
      245 DUPCLOSURE                       R19 K75 [PROTO_20]
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R1
      248 SETTABLEKS                       R19 R18 K76 ["getOrCreateDesignSystemFolder"]
      250 DUPCLOSURE                       R19 K77 [PROTO_21]
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R10
      253 CAPTURE                          VAL R1
      254 SETTABLEKS                       R19 R18 K78 ["getStyleSheetParent"]
      256 DUPCLOSURE                       R19 K79 [PROTO_22]
      257 CAPTURE                          VAL R18
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R8
      260 CAPTURE                          VAL R3
      261 SETTABLEKS                       R19 R18 K80 ["createAndInsertStudioDefaultStyleSheet"]
      263 DUPCLOSURE                       R19 K81 [PROTO_23]
      264 CAPTURE                          VAL R3
      265 SETTABLEKS                       R19 R18 K82 ["getStudioDefaultStyleSheet"]
      267 RETURN                           R18 1
