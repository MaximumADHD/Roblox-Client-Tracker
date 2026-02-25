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
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K4 ["isElement"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getUserDesignSheets"]
        3 GETUPVAL                         R5 1
        4 JUMPIFNOT                        R5 ; [+2]
        5 MOVE                             R3 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K1 ["setAsToken"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 GETUPVAL                         R11 1
       16 JUMPIFNOT                        R11 ; [+2]
       17 MOVE                             R10 R1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R10
       20 CALL                             R7 3 0
       21 FORGLOOP                         R2 2 ; [-12]
       23 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R3 0
        1 GETUPVAL                         R5 0
        2 JUMPIFNOT                        R5 ; [+2]
        3 MOVE                             R4 R2
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R5 R4 K0 ["GetDescendants"]
        8 CALL                             R5 1 3
        9 FORGPREP                         R5
       10 GETUPVAL                         R11 2
       11 GETTABLEKS                       R10 R11 K1 ["isTheme"]
       13 MOVE                             R11 R9
       14 CALL                             R10 1 1
       15 LOADK                            R13 K2 ["StyleSheet"]
       16 NAMECALL                         R11 R9 K3 ["IsA"]
       18 CALL                             R11 2 1
       19 JUMPIFNOT                        R11 ; [+8]
       20 JUMPIFNOT                        R10 ; [+7]
       21 LOADB                            R3 1
       22 GETUPVAL                         R12 2
       23 GETTABLEKS                       R11 R12 K4 ["insertDerive"]
       25 MOVE                             R12 R9
       26 MOVE                             R13 R0
       27 CALL                             R11 2 0
       28 FORGLOOP                         R5 2 ; [-19]
       30 JUMPIFNOT                        R1 ; [+7]
       31 JUMPIF                           R3 ; [+6]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R5 R6 K4 ["insertDerive"]
       35 MOVE                             R6 R1
       36 MOVE                             R7 R0
       37 CALL                             R5 2 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getUserDesignSheets"]
        3 GETUPVAL                         R5 1
        4 JUMPIFNOT                        R5 ; [+2]
        5 MOVE                             R3 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K1 ["setAsTheme"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 GETUPVAL                         R11 1
       16 JUMPIFNOT                        R11 ; [+2]
       17 MOVE                             R10 R1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R10
       20 CALL                             R7 3 0
       21 FORGLOOP                         R2 2 ; [-12]
       23 RETURN                           R0 0

PROTO_5:
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
       22 JUMPIFNOT                        R12 ; [+35]
       23 JUMPIFNOTEQKS                    R11 K6 ["Tokens"] ; [+19]
       25 GETUPVAL                         R12 2
       26 MOVE                             R13 R3
       27 MOVE                             R14 R10
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+6]
       30 GETUPVAL                         R13 3
       31 GETTABLEKS                       R12 R13 K7 ["removeDerive"]
       33 MOVE                             R13 R1
       34 MOVE                             R14 R10
       35 CALL                             R12 2 0
       36 GETUPVAL                         R13 3
       37 GETTABLEKS                       R12 R13 K8 ["insertDerive"]
       39 MOVE                             R13 R0
       40 MOVE                             R14 R10
       41 CALL                             R12 2 0
       42 JUMP                             ; [+15]
       43 JUMPIFNOTEQKS                    R11 K9 ["Themes"] ; [+14]
       45 GETTABLEKS                       R12 R10 K10 ["Parent"]
       47 LOADK                            R14 K11 ["Folder"]
       48 NAMECALL                         R12 R12 K5 ["IsA"]
       50 CALL                             R12 2 1
       51 JUMPIF                           R12 ; [+6]
       52 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       54 MOVE                             R13 R4
       55 MOVE                             R14 R10
       56 GETUPVAL                         R12 4
       57 CALL                             R12 2 0
       58 FORGLOOP                         R6 2 ; [-45]
       60 GETTABLEKS                       R7 R0 K10 ["Parent"]
       62 JUMPIFNOT                        R7 ; [+10]
       63 GETTABLEKS                       R7 R0 K10 ["Parent"]
       65 LOADK                            R9 K11 ["Folder"]
       66 NAMECALL                         R7 R7 K5 ["IsA"]
       68 CALL                             R7 2 1
       69 JUMPIFNOT                        R7 ; [+3]
       70 GETTABLEKS                       R6 R0 K10 ["Parent"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R6
       74 JUMPIFNOT                        R6 ; [+4]
       75 NAMECALL                         R7 R6 K12 ["GetChildren"]
       77 CALL                             R7 1 1
       78 JUMP                             ; [+1]
       79 MOVE                             R7 R4
       80 LOADB                            R8 0
       81 MOVE                             R9 R7
       82 LOADNIL                          R10
       83 LOADNIL                          R11
       84 FORGPREP                         R9
       85 LOADK                            R16 K2 ["StyleCategory"]
       86 NAMECALL                         R14 R13 K3 ["GetAttribute"]
       88 CALL                             R14 2 1
       89 LOADK                            R17 K4 ["StyleSheet"]
       90 NAMECALL                         R15 R13 K5 ["IsA"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+9]
       94 JUMPIFEQKS                       R14 K6 ["Tokens"] ; [+8]
       96 GETUPVAL                         R15 2
       97 MOVE                             R16 R3
       98 MOVE                             R17 R13
       99 CALL                             R15 2 1
      100 JUMPIFNOT                        R15 ; [+2]
      101 LOADB                            R8 1
      102 JUMP                             ; [+2]
      103 FORGLOOP                         R9 2 ; [-19]
      105 JUMPIF                           R8 ; [+6]
      106 GETUPVAL                         R10 3
      107 GETTABLEKS                       R9 R10 K8 ["insertDerive"]
      109 MOVE                             R10 R1
      110 MOVE                             R11 R0
      111 CALL                             R9 2 0
      112 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 1
        1 LOADK                            R1 K0 ["Stylesheet"]
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["getStyleSheetParent"]
        8 GETUPVAL                         R3 3
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETUPVAL                         R2 4
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K2 ["Parent"]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K3 ["getStudioDefaultStyleSheet"]
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
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R1 R2 K9 ["insertDerive"]
       43 GETUPVAL                         R2 0
       44 MOVE                             R3 R0
       45 CALL                             R1 2 0
       46 JUMP                             ; [+7]
       47 JUMPIFNOT                        R0 ; [+6]
       48 GETUPVAL                         R2 2
       49 GETTABLEKS                       R1 R2 K9 ["insertDerive"]
       51 GETUPVAL                         R2 0
       52 MOVE                             R3 R0
       53 CALL                             R1 2 0
       54 GETIMPORT                        R1 K13 [Enum.FinishRecordingOperation.Commit]
       56 RETURN                           R1 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R2 K2 [Instance.new]
        5 LOADK                            R3 K3 ["StyleDerive"]
        6 CALL                             R2 1 1
        7 LOADK                            R4 K4 ["Derive from "]
        8 GETTABLEKS                       R5 R1 K5 ["Name"]
       10 CONCAT                           R3 R4 R5
       11 SETTABLEKS                       R3 R2 K5 ["Name"]
       13 SETTABLEKS                       R0 R2 K6 ["Parent"]
       15 SETTABLEKS                       R1 R2 K7 ["StyleSheet"]
       17 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K8 ["insertDerive"]
       53 MOVE                             R4 R0
       54 MOVE                             R5 R1
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getStudioDefaultStyleSheet"]
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getUserDesignSheets"]
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAUserDesignSheet"]
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

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getStudioDefaultStyleSheet"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["getOrCreateDesignSystemFolder"]
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
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K4 ["getUserDesignSheets"]
       26 GETUPVAL                         R7 1
       27 JUMPIFNOT                        R7 ; [+2]
       28 MOVE                             R5 R1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 CALL                             R4 1 3
       32 FORGPREP                         R4
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K5 ["insertDerive"]
       36 MOVE                             R10 R8
       37 MOVE                             R11 R3
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-7]
       41 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["StudioDefaultStyleSheet"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["StudioDefaultStyleSheet"]
        7 GETTABLEKS                       R0 R1 K1 ["Parent"]
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K0 ["StudioDefaultStyleSheet"]
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
       25 GETIMPORT                        R7 K8 [script]
       27 GETTABLEKS                       R6 R7 K9 ["Parent"]
       29 GETTABLEKS                       R5 R6 K9 ["Parent"]
       31 GETTABLEKS                       R4 R5 K9 ["Parent"]
       33 GETIMPORT                        R5 K11 [require]
       35 GETTABLEKS                       R7 R4 K12 ["Packages"]
       37 GETTABLEKS                       R6 R7 K13 ["Framework"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K11 [require]
       42 GETTABLEKS                       R9 R4 K14 ["Src"]
       44 GETTABLEKS                       R8 R9 K15 ["Util"]
       46 GETTABLEKS                       R7 R8 K16 ["SelectorHelpers"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K11 [require]
       51 GETTABLEKS                       R10 R4 K14 ["Src"]
       53 GETTABLEKS                       R9 R10 K15 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["recordChange"]
       57 CALL                             R7 1 1
       58 MOVE                             R8 R0
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K11 [require]
       62 GETTABLEKS                       R11 R4 K14 ["Src"]
       64 GETTABLEKS                       R10 R11 K15 ["Util"]
       66 GETTABLEKS                       R9 R10 K18 ["createStudioDefaultStyleSheet"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K11 [require]
       71 GETTABLEKS                       R12 R4 K14 ["Src"]
       73 GETTABLEKS                       R11 R12 K19 ["Flags"]
       75 GETTABLEKS                       R10 R11 K20 ["getFFlagStyleEditorQueries"]
       77 CALL                             R9 1 1
       78 CALL                             R9 0 1
       79 GETIMPORT                        R10 K11 [require]
       81 GETTABLEKS                       R13 R4 K14 ["Src"]
       83 GETTABLEKS                       R12 R13 K19 ["Flags"]
       85 GETTABLEKS                       R11 R12 K21 ["getFFlagStyleEditorPluginStyleSheets"]
       87 CALL                             R10 1 1
       88 CALL                             R10 0 1
       89 GETIMPORT                        R11 K11 [require]
       91 GETTABLEKS                       R13 R4 K12 ["Packages"]
       93 GETTABLEKS                       R12 R13 K22 ["Dash"]
       95 CALL                             R11 1 1
       96 GETTABLEKS                       R12 R11 K23 ["includes"]
       98 GETTABLEKS                       R13 R11 K24 ["startsWith"]
      100 GETIMPORT                        R14 K27 [table.insert]
      102 GETTABLEKS                       R16 R5 K28 ["Styling"]
      104 GETTABLEKS                       R15 R16 K29 ["createStyleSheet"]
      106 NEWTABLE                         R16 32 0
      108 DUPTABLE                         R17 K34 [{"DESIGN", "UI_ELEMENTS", "THEMES", "SELECTOR"}]
      109 NEWTABLE                         R18 0 1
      111 LOADN                            R19 1
      112 SETLIST                          R18 R19 1 [1]
      114 SETTABLEKS                       R18 R17 K30 ["DESIGN"]
      116 NEWTABLE                         R18 0 2
      118 LOADN                            R19 1
      119 LOADN                            R20 1
      120 SETLIST                          R18 R19 2 [1]
      122 SETTABLEKS                       R18 R17 K31 ["UI_ELEMENTS"]
      124 NEWTABLE                         R18 0 1
      126 LOADN                            R19 3
      127 SETLIST                          R18 R19 1 [1]
      129 SETTABLEKS                       R18 R17 K32 ["THEMES"]
      131 NEWTABLE                         R18 0 1
      133 LOADN                            R19 1
      134 SETLIST                          R18 R19 1 [1]
      136 SETTABLEKS                       R18 R17 K33 ["SELECTOR"]
      138 SETTABLEKS                       R17 R16 K35 ["PATHS"]
      140 NEWTABLE                         R17 0 4
      142 LOADK                            R18 K36 ["Other"]
      143 LOADK                            R19 K37 ["Tags"]
      144 LOADK                            R20 K38 ["Queries"]
      145 LOADK                            R21 K39 ["UI Elements"]
      146 SETLIST                          R17 R18 4 [1]
      148 SETTABLEKS                       R17 R16 K40 ["CATEGORIES"]
      150 DUPCLOSURE                       R17 K41 [PROTO_0]
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R17 R16 K42 ["getSelectorCategory"]
      156 DUPCLOSURE                       R17 K43 [PROTO_1]
      157 SETTABLEKS                       R17 R16 K44 ["isUnderPath"]
      159 DUPCLOSURE                       R17 K45 [PROTO_2]
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R10
      162 SETTABLEKS                       R17 R16 K46 ["setAsTokenForAll"]
      164 DUPCLOSURE                       R17 K47 [PROTO_3]
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R16
      168 SETTABLEKS                       R17 R16 K48 ["setAsToken"]
      170 DUPCLOSURE                       R17 K49 [PROTO_4]
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R10
      173 SETTABLEKS                       R17 R16 K50 ["setAsThemeForAll"]
      175 DUPCLOSURE                       R17 K51 [PROTO_5]
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R14
      181 SETTABLEKS                       R17 R16 K52 ["setAsTheme"]
      183 DUPCLOSURE                       R17 K53 [PROTO_6]
      184 SETTABLEKS                       R17 R16 K54 ["isTheme"]
      186 DUPCLOSURE                       R17 K55 [PROTO_8]
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R10
      191 SETTABLEKS                       R17 R16 K56 ["createDesign"]
      193 DUPCLOSURE                       R17 K57 [PROTO_10]
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R12
      196 SETTABLEKS                       R17 R16 K58 ["isValidDerive"]
      198 DUPCLOSURE                       R17 K59 [PROTO_11]
      199 SETTABLEKS                       R17 R16 K60 ["insertDerive"]
      201 DUPCLOSURE                       R17 K61 [PROTO_12]
      202 SETTABLEKS                       R17 R16 K62 ["removeDerive"]
      204 DUPCLOSURE                       R17 K63 [PROTO_13]
      205 CAPTURE                          VAL R16
      206 SETTABLEKS                       R17 R16 K64 ["replaceDerive"]
      208 DUPCLOSURE                       R17 K65 [PROTO_14]
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R1
      212 SETTABLEKS                       R17 R16 K66 ["getUserDesignSheets"]
      214 DUPCLOSURE                       R17 K67 [PROTO_15]
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R10
      217 SETTABLEKS                       R17 R16 K68 ["getAUserDesignSheet"]
      219 DUPCLOSURE                       R17 K69 [PROTO_16]
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R1
      222 SETTABLEKS                       R17 R16 K70 ["getOrCreateDesignSystemFolder"]
      224 DUPCLOSURE                       R17 K71 [PROTO_17]
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R1
      228 SETTABLEKS                       R17 R16 K72 ["getStyleSheetParent"]
      230 DUPCLOSURE                       R17 K73 [PROTO_18]
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R3
      235 SETTABLEKS                       R17 R16 K74 ["createAndInsertStudioDefaultStyleSheet"]
      237 DUPCLOSURE                       R17 K75 [PROTO_19]
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R17 R16 K76 ["getStudioDefaultStyleSheet"]
      241 RETURN                           R16 1
