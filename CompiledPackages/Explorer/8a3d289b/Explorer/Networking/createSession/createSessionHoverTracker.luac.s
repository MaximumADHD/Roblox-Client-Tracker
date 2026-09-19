PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 JUMPIFEQKNIL                     R1 ; [+19]
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 GETTABLEKS                       R1 R0 K1 ["instanceId"]
       11 GETUPVAL                         R2 1
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETTABLEKS                       R1 R0 K2 ["hoveredWithin"]
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 DUPTABLE                         R2 K4 [{["instanceId"], ["hoveredWithin"] = False}]
       20 GETUPVAL                         R3 1
       21 SETTABLEKS                       R3 R2 K1 ["instanceId"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOTEQKNIL                  R1 ; [+7]
       28 JUMPIFEQKNIL                     R0 ; [+4]
       30 GETUPVAL                         R1 2
       31 LOADNIL                          R2
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K5 ["getFocusedRootState"]
       37 CALL                             R1 0 1
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K6 ["ancestorIdsUpToKnown"]
       41 JUMPIFNOT                        R3 ; [+7]
       42 GETIMPORT                        R2 K9 [table.clone]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K6 ["ancestorIdsUpToKnown"]
       47 CALL                             R2 1 1
       48 JUMP                             ; [+2]
       49 NEWTABLE                         R2 0 0
       51 LOADN                            R5 1
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K1 ["instanceId"]
       55 FASTCALL3                        TABLE_INSERT R2 R5 R6
       57 MOVE                             R4 R2
       58 GETIMPORT                        R3 K11 [table.insert]
       60 CALL                             R3 3 0
       61 LENGTH                           R4 R2
       62 GETTABLE                         R3 R2 R4
       63 GETTABLEKS                       R5 R1 K12 ["instanceIdsToNodes"]
       65 GETTABLE                         R4 R5 R3
       66 JUMPIFNOTEQKNIL                  R4 ; [+2]
       68 RETURN                           R0 0
       69 GETTABLEKS                       R5 R4 K13 ["parent"]
       71 JUMPIFEQKNIL                     R5 ; [+23]
       73 GETTABLEKS                       R6 R5 K14 ["datum"]
       75 GETTABLEKS                       R6 R6 K15 ["id"]
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K16 ["rootId"]
       80 JUMPIFEQ                         R6 R7 ; [+14]
       82 GETTABLEKS                       R8 R5 K14 ["datum"]
       84 GETTABLEKS                       R8 R8 K15 ["id"]
       86 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       88 MOVE                             R7 R2
       89 GETIMPORT                        R6 K11 [table.insert]
       91 CALL                             R6 2 0
       92 GETTABLEKS                       R5 R5 K13 ["parent"]
       94 JUMPBACK                         ; [-24]
       95 LOADNIL                          R6
       96 MOVE                             R7 R2
       97 LOADNIL                          R8
       98 LOADNIL                          R9
       99 FORGPREP                         R7
      100 GETTABLEKS                       R13 R1 K12 ["instanceIdsToNodes"]
      102 GETTABLE                         R12 R13 R11
      103 JUMPIFNOTEQKNIL                  R12 ; [+3]
      105 LOADNIL                          R6
      106 JUMP                             ; [+10]
      107 GETUPVAL                         R13 6
      108 MOVE                             R14 R12
      109 CALL                             R13 1 1
      110 JUMPIFNOT                        R13 ; [+2]
      111 JUMPIFNOTEQKNIL                  R6 ; [+5]
      113 GETTABLEKS                       R13 R12 K14 ["datum"]
      115 GETTABLEKS                       R6 R13 K15 ["id"]
      117 FORGLOOP                         R7 2 ; [-18]
      119 JUMPIFEQKNIL                     R6 ; [+27]
      121 GETUPVAL                         R8 3
      122 GETTABLEKS                       R8 R8 K1 ["instanceId"]
      124 JUMPIFNOTEQ                      R6 R8 ; [+2]
      126 LOADB                            R7 0 +1
      127 LOADB                            R7 1
      128 JUMPIFEQKNIL                     R0 ; [+10]
      130 GETTABLEKS                       R8 R0 K2 ["hoveredWithin"]
      132 JUMPIFNOTEQ                      R8 R7 ; [+6]
      134 GETTABLEKS                       R8 R0 K1 ["instanceId"]
      136 JUMPIFNOTEQ                      R8 R6 ; [+2]
      138 RETURN                           R0 0
      139 GETUPVAL                         R8 2
      140 DUPTABLE                         R9 K17 [{"hoveredWithin", "instanceId"}]
      141 SETTABLEKS                       R7 R9 K2 ["hoveredWithin"]
      143 SETTABLEKS                       R6 R9 K1 ["instanceId"]
      145 CALL                             R8 1 0
      146 RETURN                           R0 0
      147 GETIMPORT                        R7 K19 [warn]
      149 LOADK                            R8 K20 ["Couldn't find the furthest expanded hovered instance, even though we have one"]
      150 CALL                             R7 1 0
      151 GETUPVAL                         R7 2
      152 LOADNIL                          R8
      153 CALL                             R7 1 0
      154 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"instanceId", "ancestorIdsUpToKnown"}]
        1 SETTABLEKS                       R0 R2 K0 ["instanceId"]
        3 SETTABLEKS                       R1 R2 K1 ["ancestorIdsUpToKnown"]
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["guestRpcInterface"]
       10 GETTABLEKS                       R1 R1 K1 ["hostHovered"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 SETUPVAL                         R0 0
       15 GETUPVAL                         R1 3
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          REF R5
       10 CAPTURE                          VAL R3
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          REF R4
       17 CAPTURE                          VAL R6
       18 NEWCLOSURE                       R8 P2
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R6
       21 NEWCLOSURE                       R9 P3
       22 CAPTURE                          REF R5
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R6
       26 GETTABLEKS                       R10 R1 K1 ["changedSignal"]
       28 MOVE                             R12 R6
       29 NAMECALL                         R10 R10 K2 ["Connect"]
       31 CALL                             R10 2 0
       32 DUPTABLE                         R10 K7 [{"hoverId", "hoveredObservable", "guestHovered", "guestUnhovered"}]
       33 SETTABLEKS                       R9 R10 K3 ["hoverId"]
       35 SETTABLEKS                       R2 R10 K4 ["hoveredObservable"]
       37 SETTABLEKS                       R7 R10 K5 ["guestHovered"]
       39 SETTABLEKS                       R8 R10 K6 ["guestUnhovered"]
       41 CLOSEUPVALS                      R4
       42 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Networking"]
       30 GETTABLEKS                       R5 R5 K11 ["createSession"]
       32 GETTABLEKS                       R5 R5 K12 ["createSessionTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Flags"]
       39 GETTABLEKS                       R6 R6 K14 ["getFFlagExplorerEnableSharedHover"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["isExpanded"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R5
       54 RETURN                           R7 1
