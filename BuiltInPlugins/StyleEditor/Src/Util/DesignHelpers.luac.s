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
       21 MOVE                             R3 R1
       22 CALL                             R2 1 3
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K6 ["setAsToken"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R6
       29 MOVE                             R10 R1
       30 CALL                             R7 3 0
       31 FORGLOOP                         R2 2 ; [-8]
       33 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R3 0
        1 NAMECALL                         R4 R2 K0 ["GetDescendants"]
        3 CALL                             R4 1 3
        4 FORGPREP                         R4
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K1 ["isTheme"]
        8 MOVE                             R10 R8
        9 CALL                             R9 1 1
       10 LOADK                            R12 K2 ["StyleSheet"]
       11 NAMECALL                         R10 R8 K3 ["IsA"]
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+17]
       15 JUMPIFNOT                        R9 ; [+16]
       16 LOADB                            R3 1
       17 GETUPVAL                         R10 1
       18 JUMPIFNOT                        R10 ; [+7]
       19 GETUPVAL                         R10 2
       20 NAMECALL                         R11 R8 K4 ["GetDerives"]
       22 CALL                             R11 1 1
       23 MOVE                             R12 R0
       24 CALL                             R10 2 1
       25 JUMPIF                           R10 ; [+6]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K5 ["insertDerive"]
       29 MOVE                             R11 R8
       30 MOVE                             R12 R0
       31 CALL                             R10 2 0
       32 FORGLOOP                         R4 2 ; [-28]
       34 JUMPIFNOT                        R1 ; [+16]
       35 JUMPIF                           R3 ; [+15]
       36 GETUPVAL                         R4 1
       37 JUMPIFNOT                        R4 ; [+7]
       38 GETUPVAL                         R4 2
       39 NAMECALL                         R5 R1 K4 ["GetDerives"]
       41 CALL                             R5 1 1
       42 MOVE                             R6 R0
       43 CALL                             R4 2 1
       44 JUMPIF                           R4 ; [+6]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K5 ["insertDerive"]
       48 MOVE                             R5 R1
       49 MOVE                             R6 R0
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

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
       21 MOVE                             R3 R1
       22 CALL                             R2 1 3
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K6 ["setAsTheme"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R6
       29 MOVE                             R10 R1
       30 CALL                             R7 3 0
       31 FORGLOOP                         R2 2 ; [-8]
       33 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R3 R1 K0 ["GetDerives"]
        2 CALL                             R3 1 1
        3 NEWTABLE                         R4 0 0
        5 NAMECALL                         R5 R2 K1 ["GetDescendants"]
        7 CALL                             R5 1 3
        8 FORGPREP                         R5
        9 LOADK                            R12 K2 ["StyleCategory"]
       10 NAMECALL                         R10 R9 K3 ["GetAttribute"]
       12 CALL                             R10 2 1
       13 LOADK                            R13 K4 ["StyleSheet"]
       14 NAMECALL                         R11 R9 K5 ["IsA"]
       16 CALL                             R11 2 1
       17 JUMPIFNOT                        R11 ; [+44]
       18 JUMPIFNOTEQKS                    R10 K6 ["Tokens"] ; [+28]
       20 GETUPVAL                         R11 0
       21 MOVE                             R12 R3
       22 MOVE                             R13 R9
       23 CALL                             R11 2 1
       24 JUMPIFNOT                        R11 ; [+6]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K7 ["removeDerive"]
       28 MOVE                             R12 R1
       29 MOVE                             R13 R9
       30 CALL                             R11 2 0
       31 GETUPVAL                         R11 2
       32 JUMPIFNOT                        R11 ; [+7]
       33 GETUPVAL                         R11 0
       34 NAMECALL                         R12 R0 K0 ["GetDerives"]
       36 CALL                             R12 1 1
       37 MOVE                             R13 R9
       38 CALL                             R11 2 1
       39 JUMPIF                           R11 ; [+22]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K8 ["insertDerive"]
       43 MOVE                             R12 R0
       44 MOVE                             R13 R9
       45 CALL                             R11 2 0
       46 JUMP                             ; [+15]
       47 JUMPIFNOTEQKS                    R10 K9 ["Themes"] ; [+14]
       49 GETTABLEKS                       R11 R9 K10 ["Parent"]
       51 LOADK                            R13 K11 ["Folder"]
       52 NAMECALL                         R11 R11 K5 ["IsA"]
       54 CALL                             R11 2 1
       55 JUMPIF                           R11 ; [+6]
       56 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
       58 MOVE                             R12 R4
       59 MOVE                             R13 R9
       60 GETUPVAL                         R11 3
       61 CALL                             R11 2 0
       62 FORGLOOP                         R5 2 ; [-54]
       64 GETTABLEKS                       R6 R0 K10 ["Parent"]
       66 JUMPIFNOT                        R6 ; [+10]
       67 GETTABLEKS                       R6 R0 K10 ["Parent"]
       69 LOADK                            R8 K11 ["Folder"]
       70 NAMECALL                         R6 R6 K5 ["IsA"]
       72 CALL                             R6 2 1
       73 JUMPIFNOT                        R6 ; [+3]
       74 GETTABLEKS                       R5 R0 K10 ["Parent"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R5
       78 JUMPIFNOT                        R5 ; [+4]
       79 NAMECALL                         R6 R5 K12 ["GetChildren"]
       81 CALL                             R6 1 1
       82 JUMP                             ; [+1]
       83 MOVE                             R6 R4
       84 LOADB                            R7 0
       85 MOVE                             R8 R6
       86 LOADNIL                          R9
       87 LOADNIL                          R10
       88 FORGPREP                         R8
       89 LOADK                            R15 K2 ["StyleCategory"]
       90 NAMECALL                         R13 R12 K3 ["GetAttribute"]
       92 CALL                             R13 2 1
       93 LOADK                            R16 K4 ["StyleSheet"]
       94 NAMECALL                         R14 R12 K5 ["IsA"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R14 ; [+9]
       98 JUMPIFEQKS                       R13 K6 ["Tokens"] ; [+8]
      100 GETUPVAL                         R14 0
      101 MOVE                             R15 R3
      102 MOVE                             R16 R12
      103 CALL                             R14 2 1
      104 JUMPIFNOT                        R14 ; [+2]
      105 LOADB                            R7 1
      106 JUMP                             ; [+2]
      107 FORGLOOP                         R8 2 ; [-19]
      109 JUMPIF                           R7 ; [+6]
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R8 R8 K8 ["insertDerive"]
      113 MOVE                             R9 R1
      114 MOVE                             R10 R0
      115 CALL                             R8 2 0
      116 RETURN                           R0 0

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
        8 GETUPVAL                         R2 3
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K2 ["Parent"]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["getStudioDefaultStyleSheet"]
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+12]
       17 GETUPVAL                         R1 3
       18 LOADK                            R3 K4 ["ReplicatedStorage"]
       19 NAMECALL                         R1 R1 K5 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K6 ["insertDerive"]
       26 GETUPVAL                         R2 0
       27 MOVE                             R3 R0
       28 CALL                             R1 2 0
       29 GETIMPORT                        R1 K10 [Enum.FinishRecordingOperation.Commit]
       31 RETURN                           R1 1

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
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R4 R3 K2 ["DoChange"]
       16 CALL                             R2 1 0
       17 CLOSEUPVALS                      R1
       18 RETURN                           R1 1

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
        6 NAMECALL                         R3 R0 K1 ["GetDescendants"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 LOADK                            R10 K2 ["StyleSheet"]
       11 NAMECALL                         R8 R7 K3 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+17]
       15 JUMPIFEQ                         R7 R2 ; [+16]
       17 LOADK                            R10 K4 ["StyleCategory"]
       18 NAMECALL                         R8 R7 K5 ["GetAttribute"]
       20 CALL                             R8 2 1
       21 JUMPIFEQKS                       R8 K6 ["Design"] ; [+3]
       23 JUMPIFNOTEQKNIL                  R8 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       27 MOVE                             R10 R1
       28 MOVE                             R11 R7
       29 GETIMPORT                        R9 K9 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R3 2 ; [-23]
       34 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getUserDesignSheets"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+3]
        9 GETTABLEN                        R2 R1 1
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_20:
        0 LOADK                            R3 K0 ["Design"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+1]
       10 LOADNIL                          R1
       11 JUMPIF                           R1 ; [+9]
       12 GETIMPORT                        R2 K6 [Instance.new]
       14 LOADK                            R3 K2 ["Folder"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 LOADK                            R2 K0 ["Design"]
       19 SETTABLEKS                       R2 R1 K7 ["Name"]
       21 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAUserDesignSheet"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["Parent"]
        8 RETURN                           R2 1
        9 MOVE                             R2 R0
       10 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getStudioDefaultStyleSheet"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getOrCreateDesignSystemFolder"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R2 R3 K2 ["Parent"]
       16 GETUPVAL                         R4 2
       17 SETTABLEKS                       R3 R4 K3 ["StudioDefaultStyleSheet"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["getUserDesignSheets"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 3
       24 FORGPREP                         R4
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K5 ["insertDerive"]
       28 MOVE                             R10 R8
       29 MOVE                             R11 R3
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-7]
       33 RETURN                           R0 0

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
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StarterGui"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Util"]
       40 GETTABLEKS                       R6 R6 K15 ["SelectorHelpers"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K10 [require]
       45 GETTABLEKS                       R7 R3 K13 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K16 ["recordChange"]
       51 CALL                             R6 1 1
       52 MOVE                             R7 R0
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K10 [require]
       56 GETTABLEKS                       R8 R3 K13 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K17 ["createStudioDefaultStyleSheet"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K10 [require]
       65 GETTABLEKS                       R9 R3 K13 ["Src"]
       67 GETTABLEKS                       R9 R9 K18 ["Flags"]
       69 GETTABLEKS                       R9 R9 K19 ["getFFlagStyleQuery"]
       71 CALL                             R8 1 1
       72 CALL                             R8 0 1
       73 GETIMPORT                        R9 K10 [require]
       75 GETTABLEKS                       R10 R3 K13 ["Src"]
       77 GETTABLEKS                       R10 R10 K18 ["Flags"]
       79 GETTABLEKS                       R10 R10 K20 ["getFFlagStyleEditorFixDerivesOrdering"]
       81 CALL                             R9 1 1
       82 CALL                             R9 0 1
       83 GETIMPORT                        R10 K10 [require]
       85 GETTABLEKS                       R11 R3 K11 ["Packages"]
       87 GETTABLEKS                       R11 R11 K21 ["Dash"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R11 R10 K22 ["includes"]
       92 GETTABLEKS                       R12 R10 K23 ["startsWith"]
       94 GETTABLEKS                       R13 R10 K24 ["filter"]
       96 GETIMPORT                        R14 K27 [table.insert]
       98 GETTABLEKS                       R15 R4 K28 ["Styling"]
      100 GETTABLEKS                       R15 R15 K29 ["createStyleSheet"]
      102 NEWTABLE                         R16 32 0
      104 DUPTABLE                         R17 K34 [{"DESIGN", "UI_ELEMENTS", "THEMES", "SELECTOR"}]
      105 NEWTABLE                         R18 0 1
      107 LOADN                            R19 1
      108 SETLIST                          R18 R19 1 [1]
      110 SETTABLEKS                       R18 R17 K30 ["DESIGN"]
      112 NEWTABLE                         R18 0 2
      114 LOADN                            R19 1
      115 LOADN                            R20 1
      116 SETLIST                          R18 R19 2 [1]
      118 SETTABLEKS                       R18 R17 K31 ["UI_ELEMENTS"]
      120 NEWTABLE                         R18 0 1
      122 LOADN                            R19 3
      123 SETLIST                          R18 R19 1 [1]
      125 SETTABLEKS                       R18 R17 K32 ["THEMES"]
      127 NEWTABLE                         R18 0 1
      129 LOADN                            R19 1
      130 SETLIST                          R18 R19 1 [1]
      132 SETTABLEKS                       R18 R17 K33 ["SELECTOR"]
      134 SETTABLEKS                       R17 R16 K35 ["PATHS"]
      136 NEWTABLE                         R17 0 4
      138 LOADK                            R18 K36 ["Other"]
      139 LOADK                            R19 K37 ["Tags"]
      140 LOADK                            R20 K38 ["Queries"]
      141 LOADK                            R21 K39 ["UI Elements"]
      142 SETLIST                          R17 R18 4 [1]
      144 SETTABLEKS                       R17 R16 K40 ["CATEGORIES"]
      146 DUPCLOSURE                       R17 K41 [PROTO_0]
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R17 R16 K42 ["getSelectorCategory"]
      152 DUPCLOSURE                       R17 K43 [PROTO_1]
      153 SETTABLEKS                       R17 R16 K44 ["isUnderPath"]
      155 DUPCLOSURE                       R17 K45 [PROTO_3]
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R16
      159 SETTABLEKS                       R17 R16 K46 ["setAsTokenForAll"]
      161 DUPCLOSURE                       R17 K47 [PROTO_4]
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R11
      165 SETTABLEKS                       R17 R16 K48 ["setAsToken"]
      167 DUPCLOSURE                       R17 K49 [PROTO_6]
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R16
      171 SETTABLEKS                       R17 R16 K50 ["setAsThemeForAll"]
      173 DUPCLOSURE                       R17 K51 [PROTO_7]
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R14
      178 SETTABLEKS                       R17 R16 K52 ["setAsTheme"]
      180 DUPCLOSURE                       R17 K53 [PROTO_8]
      181 SETTABLEKS                       R17 R16 K54 ["isTheme"]
      183 DUPCLOSURE                       R17 K55 [PROTO_10]
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R16
      187 SETTABLEKS                       R17 R16 K56 ["createDesign"]
      189 DUPCLOSURE                       R17 K57 [PROTO_12]
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R11
      192 SETTABLEKS                       R17 R16 K58 ["isValidDerive"]
      194 DUPCLOSURE                       R17 K59 [PROTO_13]
      195 CAPTURE                          VAL R9
      196 SETTABLEKS                       R17 R16 K60 ["insertDerive"]
      198 DUPCLOSURE                       R17 K61 [PROTO_14]
      199 SETTABLEKS                       R17 R16 K62 ["removeDeriveIndex"]
      201 DUPCLOSURE                       R17 K63 [PROTO_15]
      202 SETTABLEKS                       R17 R16 K64 ["removeDerive"]
      204 DUPCLOSURE                       R17 K65 [PROTO_16]
      205 SETTABLEKS                       R17 R16 K66 ["moveDerive"]
      207 DUPCLOSURE                       R17 K67 [PROTO_17]
      208 CAPTURE                          VAL R16
      209 SETTABLEKS                       R17 R16 K68 ["replaceDerive"]
      211 DUPCLOSURE                       R17 K69 [PROTO_18]
      212 CAPTURE                          VAL R16
      213 SETTABLEKS                       R17 R16 K70 ["getUserDesignSheets"]
      215 DUPCLOSURE                       R17 K71 [PROTO_19]
      216 CAPTURE                          VAL R16
      217 SETTABLEKS                       R17 R16 K72 ["getAUserDesignSheet"]
      219 DUPCLOSURE                       R17 K73 [PROTO_20]
      220 SETTABLEKS                       R17 R16 K74 ["getOrCreateDesignSystemFolder"]
      222 DUPCLOSURE                       R17 K75 [PROTO_21]
      223 CAPTURE                          VAL R16
      224 SETTABLEKS                       R17 R16 K76 ["getStyleSheetParent"]
      226 DUPCLOSURE                       R17 K77 [PROTO_22]
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R2
      230 SETTABLEKS                       R17 R16 K78 ["createAndInsertStudioDefaultStyleSheet"]
      232 DUPCLOSURE                       R17 K79 [PROTO_23]
      233 CAPTURE                          VAL R2
      234 SETTABLEKS                       R17 R16 K80 ["getStudioDefaultStyleSheet"]
      236 RETURN                           R16 1
