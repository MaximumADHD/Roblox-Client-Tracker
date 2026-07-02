PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["parentId"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+13]
        4 GETIMPORT                        R3 K2 [error]
        6 LOADK                            R5 K3 ["%* (%*) is being parented to nil"]
        7 GETTABLEKS                       R7 R1 K4 ["name"]
        9 GETTABLEKS                       R8 R1 K5 ["id"]
       11 NAMECALL                         R5 R5 K6 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R6 R0 K7 ["instanceIdsToNodes"]
       18 GETTABLEKS                       R7 R1 K5 ["id"]
       20 GETTABLE                         R5 R6 R7
       21 JUMPIFEQKNIL                     R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       27 LOADK                            R5 K8 ["Receiving instance added about instance we already know about"]
       28 GETIMPORT                        R3 K10 [assert]
       30 CALL                             R3 2 0
       31 GETTABLEKS                       R4 R0 K7 ["instanceIdsToNodes"]
       33 GETTABLEKS                       R5 R1 K0 ["parentId"]
       35 GETTABLE                         R3 R4 R5
       36 JUMPIFNOTEQKNIL                  R3 ; [+16]
       38 GETIMPORT                        R4 K2 [error]
       40 LOADK                            R6 K11 ["Instance added to parent we don't know about: %* (datum.id = %*) (datum.name = %*) (search = %*)"]
       41 GETTABLEKS                       R8 R1 K0 ["parentId"]
       43 GETTABLEKS                       R9 R1 K5 ["id"]
       45 GETTABLEKS                       R10 R1 K4 ["name"]
       47 MOVE                             R11 R2
       48 NAMECALL                         R6 R6 K6 ["format"]
       50 CALL                             R6 5 1
       51 MOVE                             R5 R6
       52 CALL                             R4 1 0
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K12 ["createFromDatum"]
       56 MOVE                             R5 R1
       57 CALL                             R4 1 1
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K13 ["insertInto"]
       61 MOVE                             R6 R0
       62 MOVE                             R7 R3
       63 MOVE                             R8 R4
       64 CALL                             R5 3 0
       65 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["instanceIdsToNodes"]
        2 GETTABLEKS                       R4 R1 K1 ["id"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       11 LOADK                            R5 K2 ["Replacing instance we don't know about"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R2 K5 ["datum"]
       17 GETTABLEKS                       R3 R3 K6 ["name"]
       19 GETTABLEKS                       R4 R1 K6 ["name"]
       21 JUMPIFEQ                         R3 R4 ; [+19]
       23 GETTABLEKS                       R3 R2 K7 ["uiState"]
       25 JUMPIFEQKNIL                     R3 ; [+15]
       27 GETIMPORT                        R3 K10 [table.clone]
       29 GETTABLEKS                       R4 R2 K7 ["uiState"]
       31 CALL                             R3 1 1
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K11 ["textWidth"]
       35 GETIMPORT                        R4 K13 [table.freeze]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R2 K7 ["uiState"]
       41 GETTABLEKS                       R3 R2 K14 ["parent"]
       43 JUMPIFNOT                        R3 ; [+6]
       44 GETTABLEKS                       R3 R2 K14 ["parent"]
       46 GETTABLEKS                       R3 R3 K5 ["datum"]
       48 GETTABLEKS                       R3 R3 K1 ["id"]
       50 GETTABLEKS                       R5 R1 K15 ["parentId"]
       52 JUMPIFNOTEQ                      R5 R3 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 JUMPIFNOT                        R4 ; [+6]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K16 ["remove"]
       60 MOVE                             R6 R0
       61 MOVE                             R7 R2
       62 CALL                             R5 2 0
       63 GETTABLEKS                       R5 R2 K5 ["datum"]
       65 GETTABLEKS                       R5 R5 K17 ["fieldValues"]
       67 JUMPIFEQKNIL                     R5 ; [+17]
       69 GETIMPORT                        R5 K10 [table.clone]
       71 MOVE                             R6 R1
       72 CALL                             R5 1 1
       73 MOVE                             R1 R5
       74 GETTABLEKS                       R5 R2 K5 ["datum"]
       76 GETTABLEKS                       R5 R5 K17 ["fieldValues"]
       78 SETTABLEKS                       R5 R1 K17 ["fieldValues"]
       80 GETIMPORT                        R5 K13 [table.freeze]
       82 MOVE                             R6 R1
       83 CALL                             R5 1 1
       84 MOVE                             R1 R5
       85 GETUPVAL                         R5 1
       86 CALL                             R5 0 1
       87 JUMPIFNOT                        R5 ; [+37]
       88 GETTABLEKS                       R5 R2 K18 ["isReceivingChildrenUpdates"]
       90 JUMPIFNOT                        R5 ; [+34]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R6 R6 K19 ["isEmpty"]
       94 GETTABLEKS                       R7 R2 K20 ["children"]
       96 CALL                             R6 1 1
       97 NOT                              R5 R6
       98 JUMPIF                           R5 ; [+10]
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R6 R6 K19 ["isEmpty"]
      102 GETTABLEKS                       R8 R0 K21 ["instanceIdsToHiddenChildren"]
      104 GETTABLEKS                       R9 R1 K1 ["id"]
      106 GETTABLE                         R7 R8 R9
      107 CALL                             R6 1 1
      108 NOT                              R5 R6
      109 GETTABLEKS                       R6 R1 K22 ["hasChildren"]
      111 JUMPIFEQ                         R6 R5 ; [+13]
      113 GETIMPORT                        R6 K10 [table.clone]
      115 MOVE                             R7 R1
      116 CALL                             R6 1 1
      117 MOVE                             R1 R6
      118 SETTABLEKS                       R5 R1 K22 ["hasChildren"]
      120 GETIMPORT                        R6 K13 [table.freeze]
      122 MOVE                             R7 R1
      123 CALL                             R6 1 1
      124 MOVE                             R1 R6
      125 SETTABLEKS                       R1 R2 K5 ["datum"]
      127 JUMPIFNOT                        R4 ; [+49]
      128 GETTABLEKS                       R5 R1 K15 ["parentId"]
      130 JUMPIFNOT                        R5 ; [+5]
      131 GETTABLEKS                       R6 R0 K0 ["instanceIdsToNodes"]
      133 GETTABLEKS                       R7 R1 K15 ["parentId"]
      135 GETTABLE                         R5 R6 R7
      136 JUMPIFNOTEQKNIL                  R5 ; [+33]
      138 LOADNIL                          R6
      139 SETTABLEKS                       R6 R2 K14 ["parent"]
      141 GETTABLEKS                       R6 R1 K15 ["parentId"]
      143 JUMPIFEQKNIL                     R6 ; [+33]
      145 GETTABLEKS                       R7 R0 K23 ["unaddedParentIdsToChildren"]
      147 GETTABLEKS                       R8 R1 K15 ["parentId"]
      149 GETTABLE                         R6 R7 R8
      150 JUMPIFNOTEQKNIL                  R6 ; [+8]
      152 GETTABLEKS                       R6 R0 K23 ["unaddedParentIdsToChildren"]
      154 GETTABLEKS                       R7 R1 K15 ["parentId"]
      156 NEWTABLE                         R8 0 0
      158 SETTABLE                         R8 R6 R7
      159 GETTABLEKS                       R7 R0 K23 ["unaddedParentIdsToChildren"]
      161 GETTABLEKS                       R8 R1 K15 ["parentId"]
      163 GETTABLE                         R6 R7 R8
      164 GETTABLEKS                       R7 R2 K5 ["datum"]
      166 GETTABLEKS                       R7 R7 K1 ["id"]
      168 SETTABLE                         R2 R6 R7
      169 RETURN                           R0 0
      170 GETUPVAL                         R6 0
      171 GETTABLEKS                       R6 R6 K24 ["insertInto"]
      173 MOVE                             R7 R0
      174 MOVE                             R8 R5
      175 MOVE                             R9 R2
      176 CALL                             R6 3 0
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["createSession"]
       13 GETTABLEKS                       R2 R2 K8 ["ExplorerNode"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExplorerNodeChildrenMutable"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["RpcTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Networking"]
       32 GETTABLEKS                       R5 R5 K7 ["createSession"]
       34 GETTABLEKS                       R5 R5 K12 ["SessionChildren"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Networking"]
       41 GETTABLEKS                       R6 R6 K7 ["createSession"]
       43 GETTABLEKS                       R6 R6 K13 ["createSessionTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Flags"]
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagExplorerStreaming"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 2 0
       55 DUPCLOSURE                       R8 K16 [PROTO_0]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R8 R7 K17 ["instanceAdded"]
       60 DUPCLOSURE                       R8 K18 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R8 R7 K19 ["instanceReplaced"]
       66 RETURN                           R7 1
