PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R1 R2 K2 ["Workspace"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 FASTCALL1                        ASSERT R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 1 0
       14 LOADK                            R3 K5 ["Model"]
       15 NAMECALL                         R1 R0 K6 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+1]
       19 RETURN                           R0 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R2 R0 K7 ["Parent"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R6 K1 [game]
        2 GETTABLEKS                       R5 R6 K2 ["Workspace"]
        4 GETTABLEKS                       R4 R5 K3 ["Name"]
        6 NAMECALL                         R2 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R0 R1
        5 LOADN                            R1 0
        6 JUMPIFNOTLT                      R1 R0 ; [+7]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K0 ["Get"]
       11 CALL                             R1 1 1
       12 GETTABLEN                        R0 R1 1
       13 RETURN                           R0 1
       14 LOADNIL                          R0
       15 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Mouse"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K3 ["Target"]
        9 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+24]
        3 GETIMPORT                        R6 K1 [game]
        5 GETTABLEKS                       R5 R6 K2 ["Workspace"]
        7 GETTABLEKS                       R4 R5 K3 ["Name"]
        9 NAMECALL                         R2 R0 K4 ["FindFirstAncestor"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K5 ["getAnimationController"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["RootInstance"]
        4 JUMPIFEQ                         R1 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["wasUnmounted"]
        2 JUMPIFNOT                        R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R5 R0 K1 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["Mouse"]
        8 NAMECALL                         R4 R4 K3 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R3 R4 K4 ["Target"]
       13 JUMPIFEQKNIL                     R3 ; [+66]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETIMPORT                        R6 K6 [game]
       18 GETTABLEKS                       R5 R6 K7 ["Workspace"]
       20 JUMPIFNOTEQ                      R3 R5 ; [+3]
       22 LOADNIL                          R4
       23 JUMP                             ; [+16]
       24 FASTCALL1                        ASSERT R3 ; [+3]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R5 K9 [assert]
       28 CALL                             R5 1 0
       29 LOADK                            R7 K10 ["Model"]
       30 NAMECALL                         R5 R3 K11 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+2]
       34 MOVE                             R4 R3
       35 JUMP                             ; [+4]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R5 R3 K12 ["Parent"]
       39 CALL                             R4 1 1
       40 JUMPIFNOT                        R4 ; [+36]
       41 MOVE                             R7 R4
       42 NAMECALL                         R5 R0 K13 ["isCurrentRootInstance"]
       44 CALL                             R5 2 1
       45 JUMPIF                           R5 ; [+31]
       46 LOADB                            R5 0
       47 JUMPIFEQKNIL                     R4 ; [+24]
       49 GETIMPORT                        R10 K6 [game]
       51 GETTABLEKS                       R9 R10 K7 ["Workspace"]
       53 GETTABLEKS                       R8 R9 K14 ["Name"]
       55 NAMECALL                         R6 R4 K15 ["FindFirstAncestor"]
       57 CALL                             R6 2 1
       58 JUMPIFNOTEQKNIL                  R6 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 JUMPIFNOT                        R5 ; [+9]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K16 ["getAnimationController"]
       66 MOVE                             R7 R4
       67 CALL                             R6 1 1
       68 JUMPIFNOTEQKNIL                  R6 ; [+2]
       70 LOADB                            R5 0 +1
       71 LOADB                            R5 1
       72 JUMPIFNOT                        R5 ; [+4]
       73 MOVE                             R5 R1
       74 MOVE                             R6 R4
       75 CALL                             R5 1 0
       76 RETURN                           R0 0
       77 JUMPIFNOT                        R2 ; [+2]
       78 MOVE                             R5 R2
       79 CALL                             R5 0 0
       80 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["createElement"]
        5 GETUPVAL                         R6 2
        6 DUPTABLE                         R7 K3 [{"ErrorKey", "ErrorList"}]
        7 GETUPVAL                         R9 3
        8 GETTABLEKS                       R8 R9 K4 ["RIG_ERRORS_KEY"]
       10 SETTABLEKS                       R8 R7 K1 ["ErrorKey"]
       12 SETTABLEKS                       R2 R7 K2 ["ErrorList"]
       14 CALL                             R5 2 -1
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Plugin"]
        5 NAMECALL                         R3 R3 K2 ["get"]
        7 CALL                             R3 1 1
        8 NAMECALL                         R5 R1 K3 ["hasErrors"]
       10 CALL                             R5 1 1
       11 JUMPIFNOT                        R5 ; [+2]
       12 LOADK                            R4 K4 ["Error"]
       13 JUMP                             ; [+1]
       14 LOADK                            R4 K5 ["Warning"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K6 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K9 [{"ErrorKey", "ErrorList"}]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K10 ["RIG_ERRORS_KEY"]
       23 SETTABLEKS                       R8 R7 K7 ["ErrorKey"]
       25 GETTABLEKS                       R8 R1 K11 ["messages"]
       27 SETTABLEKS                       R8 R7 K8 ["ErrorList"]
       29 CALL                             R5 2 -1
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R0
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["Set"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["ClearSelectedTracks"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"HoverPart"}]
        2 SETTABLEKS                       R0 R3 K0 ["HoverPart"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"HoverPart"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["HoverPart"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["props"]
        6 GETTABLEKS                       R0 R1 K1 ["IsSelectingTarget"]
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 NAMECALL                         R2 R2 K2 ["Get"]
       13 CALL                             R2 1 1
       14 LENGTH                           R1 R2
       15 LOADN                            R2 0
       16 JUMPIFNOTLT                      R2 R1 ; [+7]
       18 GETUPVAL                         R1 2
       19 NAMECALL                         R1 R1 K2 ["Get"]
       21 CALL                             R1 1 1
       22 GETTABLEN                        R0 R1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R0
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETIMPORT                        R3 K4 [game]
       28 GETTABLEKS                       R2 R3 K5 ["Workspace"]
       30 JUMPIFNOTEQ                      R0 R2 ; [+3]
       32 LOADNIL                          R1
       33 JUMP                             ; [+16]
       34 FASTCALL1                        ASSERT R0 ; [+3]
       35 MOVE                             R3 R0
       36 GETIMPORT                        R2 K7 [assert]
       38 CALL                             R2 1 0
       39 LOADK                            R4 K8 ["Model"]
       40 NAMECALL                         R2 R0 K9 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+2]
       44 MOVE                             R1 R0
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R1 3
       47 GETTABLEKS                       R2 R0 K10 ["Parent"]
       49 CALL                             R1 1 1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K0 ["props"]
       53 GETTABLEKS                       R2 R3 K11 ["Plugin"]
       55 GETUPVAL                         R3 1
       56 MOVE                             R5 R1
       57 NAMECALL                         R3 R3 K12 ["isCurrentRootInstance"]
       59 CALL                             R3 2 1
       60 JUMPIF                           R3 ; [+144]
       61 LOADB                            R3 0
       62 JUMPIFEQKNIL                     R1 ; [+24]
       64 GETIMPORT                        R8 K4 [game]
       66 GETTABLEKS                       R7 R8 K5 ["Workspace"]
       68 GETTABLEKS                       R6 R7 K13 ["Name"]
       70 NAMECALL                         R4 R1 K14 ["FindFirstAncestor"]
       72 CALL                             R4 2 1
       73 JUMPIFNOTEQKNIL                  R4 ; [+2]
       75 LOADB                            R3 0 +1
       76 LOADB                            R3 1
       77 JUMPIFNOT                        R3 ; [+9]
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R4 R5 K15 ["getAnimationController"]
       81 MOVE                             R5 R1
       82 CALL                             R4 1 1
       83 JUMPIFNOTEQKNIL                  R4 ; [+2]
       85 LOADB                            R3 0 +1
       86 LOADB                            R3 1
       87 JUMPIFNOT                        R3 ; [+109]
       88 GETUPVAL                         R4 5
       89 GETTABLEKS                       R3 R4 K16 ["validate"]
       91 MOVE                             R4 R1
       92 CALL                             R3 1 1
       93 NAMECALL                         R4 R3 K17 ["hasErrors"]
       95 CALL                             R4 1 1
       96 JUMPIF                           R4 ; [+42]
       97 GETIMPORT                        R4 K19 [next]
       99 GETTABLEKS                       R5 R3 K20 ["messages"]
      101 CALL                             R4 1 1
      102 JUMPIFNOT                        R4 ; [+14]
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R7 R8 K21 ["state"]
      106 GETTABLEKS                       R6 R7 K22 ["LastValidation"]
      108 NAMECALL                         R4 R3 K23 ["equals"]
      110 CALL                             R4 2 1
      111 JUMPIF                           R4 ; [+5]
      112 GETUPVAL                         R4 1
      113 MOVE                             R6 R3
      114 NAMECALL                         R4 R4 K24 ["showErrorDialogs"]
      116 CALL                             R4 2 0
      117 GETUPVAL                         R6 1
      118 GETTABLEKS                       R5 R6 K0 ["props"]
      120 GETTABLEKS                       R4 R5 K25 ["UpdateRootInstance"]
      122 MOVE                             R5 R1
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R7 R8 K0 ["props"]
      126 GETTABLEKS                       R6 R7 K26 ["Analytics"]
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R8 R9 K0 ["props"]
      131 GETTABLEKS                       R7 R8 K27 ["Localization"]
      133 CALL                             R4 3 0
      134 GETUPVAL                         R5 1
      135 GETTABLEKS                       R4 R5 K28 ["removeSelectedTrackInstances"]
      137 CALL                             R4 0 0
      138 JUMP                             ; [+48]
      139 GETUPVAL                         R6 1
      140 GETTABLEKS                       R5 R6 K0 ["props"]
      142 GETTABLEKS                       R4 R5 K25 ["UpdateRootInstance"]
      144 LOADNIL                          R5
      145 GETUPVAL                         R8 1
      146 GETTABLEKS                       R7 R8 K0 ["props"]
      148 GETTABLEKS                       R6 R7 K26 ["Analytics"]
      150 GETUPVAL                         R9 1
      151 GETTABLEKS                       R8 R9 K0 ["props"]
      153 GETTABLEKS                       R7 R8 K27 ["Localization"]
      155 CALL                             R4 3 0
      156 GETUPVAL                         R5 1
      157 GETTABLEKS                       R4 R5 K28 ["removeSelectedTrackInstances"]
      159 CALL                             R4 0 0
      160 NAMECALL                         R4 R2 K29 ["get"]
      162 CALL                             R4 1 1
      163 NAMECALL                         R4 R4 K30 ["Deactivate"]
      165 CALL                             R4 1 0
      166 GETUPVAL                         R8 1
      167 GETTABLEKS                       R7 R8 K21 ["state"]
      169 GETTABLEKS                       R6 R7 K22 ["LastValidation"]
      171 NAMECALL                         R4 R3 K23 ["equals"]
      173 CALL                             R4 2 1
      174 JUMPIFNOT                        R4 ; [+7]
      175 GETUPVAL                         R6 1
      176 GETTABLEKS                       R5 R6 K21 ["state"]
      178 GETTABLEKS                       R4 R5 K31 ["LastValidatedRig"]
      180 JUMPIFEQ                         R1 R4 ; [+6]
      182 GETUPVAL                         R4 1
      183 MOVE                             R6 R3
      184 NAMECALL                         R4 R4 K24 ["showErrorDialogs"]
      186 CALL                             R4 2 0
      187 GETUPVAL                         R4 1
      188 DUPTABLE                         R6 K32 [{"LastValidation", "LastValidatedRig"}]
      189 SETTABLEKS                       R3 R6 K22 ["LastValidation"]
      191 SETTABLEKS                       R1 R6 K31 ["LastValidatedRig"]
      193 NAMECALL                         R4 R4 K33 ["setState"]
      195 CALL                             R4 2 0
      196 RETURN                           R0 0
      197 JUMPIFNOT                        R0 ; [+7]
      198 JUMPIFNOT                        R2 ; [+6]
      199 NAMECALL                         R3 R2 K29 ["get"]
      201 CALL                             R3 1 1
      202 NAMECALL                         R3 R3 K30 ["Deactivate"]
      204 CALL                             R3 1 0
      205 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["wasUnmounted"]
        3 DUPTABLE                         R1 K4 [{"HoverPart", "LastValidation", "LastValidatedRig"}]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["HoverPart"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["LastValidation"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["LastValidatedRig"]
       13 SETTABLEKS                       R1 R0 K5 ["state"]
       15 DUPCLOSURE                       R1 K6 [PROTO_9]
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K7 ["selectInstance"]
       19 DUPCLOSURE                       R1 K8 [PROTO_10]
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K9 ["deselect"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K10 ["removeSelectedTrackInstances"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K11 ["highlightInstance"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K12 ["removeHighlight"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K13 ["SelectionChanged"]
       39 NEWCLOSURE                       R3 P5
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 NAMECALL                         R1 R1 K14 ["Connect"]
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K15 ["SelectionChangedHandle"]
       51 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["highlightInstance"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["removeHighlight"]
        7 NAMECALL                         R1 R1 K2 ["selectValidInstance"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectInstance"]
        4 NAMECALL                         R0 R0 K1 ["selectValidInstance"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["deselect"]
        2 CALL                             R1 0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Heartbeat"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["Heartbeat"]
       13 GETTABLEKS                       R2 R0 K3 ["props"]
       15 GETTABLEKS                       R1 R2 K4 ["Plugin"]
       17 JUMPIFNOT                        R1 ; [+23]
       18 NAMECALL                         R2 R1 K5 ["get"]
       20 CALL                             R2 1 1
       21 LOADB                            R4 1
       22 NAMECALL                         R2 R2 K6 ["Activate"]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R4 R0 K3 ["props"]
       27 GETTABLEKS                       R3 R4 K7 ["Mouse"]
       29 NAMECALL                         R3 R3 K5 ["get"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R2 R3 K8 ["Button1Down"]
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R2 R2 K2 ["Connect"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R0 K9 ["MouseButtonDown"]
       41 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["VisualizeBones"]
        6 GETTABLEKS                       R4 R1 K3 ["HoverPart"]
        8 GETTABLEKS                       R5 R2 K4 ["Container"]
       10 JUMPIF                           R5 ; [+1]
       11 GETUPVAL                         R5 0
       12 NEWTABLE                         R6 0 0
       14 JUMPIFNOT                        R3 ; [+4]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K5 ["deselectBones"]
       18 CALL                             R7 0 0
       19 GETTABLEKS                       R7 R2 K6 ["SelectedTrackInstances"]
       21 JUMPIFNOT                        R7 ; [+48]
       22 GETIMPORT                        R7 K8 [ipairs]
       24 GETTABLEKS                       R8 R2 K6 ["SelectedTrackInstances"]
       26 CALL                             R7 1 3
       27 FORGPREP_INEXT                   R7
       28 JUMPIFNOT                        R3 ; [+12]
       29 GETUPVAL                         R13 1
       30 GETTABLEKS                       R12 R13 K9 ["isBone"]
       32 MOVE                             R13 R11
       33 CALL                             R12 1 1
       34 JUMPIFNOT                        R12 ; [+6]
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K10 ["selectBone"]
       38 MOVE                             R13 R11
       39 CALL                             R12 1 0
       40 JUMP                             ; [+27]
       41 LOADK                            R13 K11 ["SelectionBox"]
       42 MOVE                             R14 R10
       43 CONCAT                           R12 R13 R14
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R13 R14 K12 ["createElement"]
       47 LOADK                            R14 K11 ["SelectionBox"]
       48 DUPTABLE                         R15 K19 [{"Archivable", "Adornee", "LineThickness", "Transparency", "SurfaceTransparency", "StudioSelectionBox"}]
       49 LOADB                            R16 0
       50 SETTABLEKS                       R16 R15 K13 ["Archivable"]
       52 SETTABLEKS                       R11 R15 K14 ["Adornee"]
       54 LOADN                            R16 1
       55 SETTABLEKS                       R16 R15 K15 ["LineThickness"]
       57 LOADK                            R16 K20 [0.5]
       58 SETTABLEKS                       R16 R15 K16 ["Transparency"]
       60 LOADK                            R16 K21 [0.8]
       61 SETTABLEKS                       R16 R15 K17 ["SurfaceTransparency"]
       63 LOADB                            R16 1
       64 SETTABLEKS                       R16 R15 K18 ["StudioSelectionBox"]
       66 CALL                             R13 2 1
       67 SETTABLE                         R13 R6 R12
       68 FORGLOOP                         R7 2 [inext] ; [-41]
       70 MOVE                             R7 R4
       71 JUMPIFNOT                        R7 ; [+17]
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R7 R8 K12 ["createElement"]
       75 LOADK                            R8 K11 ["SelectionBox"]
       76 DUPTABLE                         R9 K22 [{"Archivable", "Adornee", "LineThickness", "StudioSelectionBox"}]
       77 LOADB                            R10 0
       78 SETTABLEKS                       R10 R9 K13 ["Archivable"]
       80 SETTABLEKS                       R4 R9 K14 ["Adornee"]
       82 LOADN                            R10 2
       83 SETTABLEKS                       R10 R9 K15 ["LineThickness"]
       85 LOADB                            R10 1
       86 SETTABLEKS                       R10 R9 K18 ["StudioSelectionBox"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K23 ["HoverBox"]
       91 GETUPVAL                         R8 2
       92 GETTABLEKS                       R7 R8 K12 ["createElement"]
       94 GETUPVAL                         R9 2
       95 GETTABLEKS                       R8 R9 K24 ["Portal"]
       97 DUPTABLE                         R9 K26 [{"target"}]
       98 SETTABLEKS                       R5 R9 K25 ["target"]
      100 MOVE                             R10 R6
      101 CALL                             R7 3 -1
      102 RETURN                           R7 -1

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["wasUnmounted"]
        3 GETTABLEKS                       R1 R0 K1 ["Heartbeat"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["Heartbeat"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R2 R0 K3 ["props"]
       13 GETTABLEKS                       R1 R2 K4 ["ClearSelectedTracks"]
       15 CALL                             R1 0 0
       16 GETTABLEKS                       R2 R0 K3 ["props"]
       18 GETTABLEKS                       R1 R2 K5 ["Signals"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K6 ["SIGNAL_KEYS"]
       23 GETTABLEKS                       R3 R4 K7 ["SelectionChanged"]
       25 NAMECALL                         R1 R1 K8 ["get"]
       27 CALL                             R1 2 1
       28 NAMECALL                         R1 R1 K9 ["Fire"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K10 ["SelectionChangedHandle"]
       33 JUMPIFNOT                        R1 ; [+5]
       34 GETTABLEKS                       R1 R0 K10 ["SelectionChangedHandle"]
       36 NAMECALL                         R1 R1 K2 ["Disconnect"]
       38 CALL                             R1 1 0
       39 GETTABLEKS                       R1 R0 K11 ["MouseButtonDown"]
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETTABLEKS                       R1 R0 K11 ["MouseButtonDown"]
       44 NAMECALL                         R1 R1 K2 ["Disconnect"]
       46 CALL                             R1 1 0
       47 GETTABLEKS                       R2 R0 K3 ["props"]
       49 GETTABLEKS                       R1 R2 K12 ["Plugin"]
       51 JUMPIFNOT                        R1 ; [+10]
       52 GETTABLEKS                       R2 R0 K3 ["props"]
       54 GETTABLEKS                       R1 R2 K12 ["Plugin"]
       56 NAMECALL                         R1 R1 K8 ["get"]
       58 CALL                             R1 1 1
       59 NAMECALL                         R1 R1 K13 ["Deactivate"]
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R2 K4 [{"RootInstance", "SelectedTrackInstances", "VisualizeBones", "IsSelectingTarget"}]
        1 GETTABLEKS                       R4 R0 K5 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["RootInstance"]
        5 SETTABLEKS                       R3 R2 K0 ["RootInstance"]
        7 GETTABLEKS                       R4 R0 K5 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["SelectedTrackInstances"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedTrackInstances"]
       13 GETTABLEKS                       R4 R0 K5 ["Status"]
       15 GETTABLEKS                       R3 R4 K2 ["VisualizeBones"]
       17 SETTABLEKS                       R3 R2 K2 ["VisualizeBones"]
       19 GETTABLEKS                       R4 R0 K5 ["Status"]
       21 GETTABLEKS                       R3 R4 K3 ["IsSelectingTarget"]
       23 SETTABLEKS                       R3 R2 K3 ["IsSelectingTarget"]
       25 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K2 [{"ClearSelectedTracks", "UpdateRootInstance"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ClearSelectedTracks"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["UpdateRootInstance"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Selection"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AnimationClipEditor"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R6 K13 ["Roact"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R7 R3 K12 ["Packages"]
       36 GETTABLEKS                       R6 R7 K14 ["RoactRodux"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R8 R3 K12 ["Packages"]
       43 GETTABLEKS                       R7 R8 K15 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K16 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K17 ["withContext"]
       50 GETIMPORT                        R9 K11 [require]
       52 GETTABLEKS                       R12 R3 K18 ["Src"]
       54 GETTABLEKS                       R11 R12 K19 ["Context"]
       56 GETTABLEKS                       R10 R11 K20 ["Signals"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R11 R3 K18 ["Src"]
       61 GETTABLEKS                       R10 R11 K21 ["Components"]
       63 GETIMPORT                        R11 K11 [require]
       65 GETTABLEKS                       R13 R10 K22 ["BlockingDialog"]
       67 GETTABLEKS                       R12 R13 K23 ["ErrorList"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R13 R3 K18 ["Src"]
       72 GETTABLEKS                       R12 R13 K24 ["Util"]
       74 GETIMPORT                        R13 K11 [require]
       76 GETTABLEKS                       R14 R12 K25 ["Constants"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K11 [require]
       81 GETTABLEKS                       R15 R12 K26 ["RigInfo"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K11 [require]
       86 GETTABLEKS                       R16 R12 K27 ["RigValidation"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K11 [require]
       91 GETTABLEKS                       R17 R12 K28 ["RigVisualization"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K11 [require]
       96 GETTABLEKS                       R18 R12 K29 ["showBlockingDialog"]
       98 CALL                             R17 1 1
       99 GETTABLEKS                       R19 R3 K18 ["Src"]
      101 GETTABLEKS                       R18 R19 K30 ["Thunks"]
      103 GETIMPORT                        R19 K11 [require]
      105 GETTABLEKS                       R20 R18 K31 ["SetSelectedTracks"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K11 [require]
      110 GETTABLEKS                       R21 R18 K32 ["UpdateRootInstance"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K11 [require]
      115 GETTABLEKS                       R23 R3 K33 ["LuaFlags"]
      117 GETTABLEKS                       R22 R23 K34 ["GetFFlagControlRig"]
      119 CALL                             R21 1 1
      120 GETTABLEKS                       R22 R4 K35 ["PureComponent"]
      122 LOADK                            R24 K36 ["InstanceSelector"]
      123 NAMECALL                         R22 R22 K37 ["extend"]
      125 CALL                             R22 2 1
      126 DUPCLOSURE                       R23 K38 [PROTO_0]
      127 CAPTURE                          VAL R23
      128 DUPCLOSURE                       R24 K39 [PROTO_1]
      129 DUPCLOSURE                       R25 K40 [PROTO_2]
      130 CAPTURE                          VAL R2
      131 DUPCLOSURE                       R26 K41 [PROTO_3]
      132 DUPCLOSURE                       R27 K42 [PROTO_4]
      133 CAPTURE                          VAL R14
      134 DUPCLOSURE                       R28 K43 [PROTO_5]
      135 SETTABLEKS                       R28 R22 K44 ["isCurrentRootInstance"]
      137 DUPCLOSURE                       R28 K45 [PROTO_6]
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R28 R22 K46 ["selectValidInstance"]
      142 DUPCLOSURE                       R28 K47 [PROTO_7]
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R13
      147 SETTABLEKS                       R28 R22 K48 ["showErrorDialogs_DEPRECATED"]
      149 DUPCLOSURE                       R28 K49 [PROTO_8]
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R13
      154 SETTABLEKS                       R28 R22 K50 ["showErrorDialogs"]
      156 DUPCLOSURE                       R28 K51 [PROTO_15]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R15
      163 SETTABLEKS                       R28 R22 K52 ["init"]
      165 DUPCLOSURE                       R28 K53 [PROTO_18]
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R28 R22 K54 ["didMount"]
      169 DUPCLOSURE                       R28 K55 [PROTO_19]
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R4
      173 SETTABLEKS                       R28 R22 K56 ["render"]
      175 DUPCLOSURE                       R28 K57 [PROTO_20]
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R28 R22 K58 ["willUnmount"]
      179 MOVE                             R28 R8
      180 DUPTABLE                         R29 K63 [{"Plugin", "Mouse", "Analytics", "Localization", "Signals"}]
      181 GETTABLEKS                       R30 R7 K59 ["Plugin"]
      183 SETTABLEKS                       R30 R29 K59 ["Plugin"]
      185 GETTABLEKS                       R30 R7 K60 ["Mouse"]
      187 SETTABLEKS                       R30 R29 K60 ["Mouse"]
      189 GETTABLEKS                       R30 R7 K61 ["Analytics"]
      191 SETTABLEKS                       R30 R29 K61 ["Analytics"]
      193 GETTABLEKS                       R30 R7 K62 ["Localization"]
      195 SETTABLEKS                       R30 R29 K62 ["Localization"]
      197 SETTABLEKS                       R9 R29 K20 ["Signals"]
      199 CALL                             R28 1 1
      200 MOVE                             R29 R22
      201 CALL                             R28 1 1
      202 MOVE                             R22 R28
      203 DUPCLOSURE                       R28 K64 [PROTO_21]
      204 DUPCLOSURE                       R29 K65 [PROTO_24]
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R20
      207 GETTABLEKS                       R30 R5 K66 ["connect"]
      209 MOVE                             R31 R28
      210 MOVE                             R32 R29
      211 CALL                             R30 2 1
      212 MOVE                             R31 R22
      213 CALL                             R30 1 -1
      214 RETURN                           R30 -1
