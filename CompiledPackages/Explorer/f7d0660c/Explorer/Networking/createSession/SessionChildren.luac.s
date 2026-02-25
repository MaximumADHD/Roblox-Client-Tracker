PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIFEQKNIL                     R3 ; [+14]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R3
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+9]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["patchNodeDescendantCount"]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R2
       12 CALL                             R4 2 0
       13 GETTABLEKS                       R3 R3 K1 ["parent"]
       15 JUMPBACK                         ; [-15]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R0 K2 ["instanceIdsToHiddenChildren"]
       21 GETTABLEKS                       R7 R3 K3 ["datum"]
       23 GETTABLEKS                       R6 R7 K4 ["id"]
       25 GETTABLE                         R4 R5 R6
       26 JUMPIFEQKNIL                     R4 ; [+6]
       28 GETTABLEKS                       R5 R4 K5 ["treeDescendantCount"]
       30 ADD                              R5 R5 R2
       31 SETTABLEKS                       R5 R4 K5 ["treeDescendantCount"]
       33 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R3 K1 ["hasChildren"]
        4 JUMPIFNOTEQ                      R2 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K4 [table.clone]
        9 GETTABLEKS                       R3 R0 K0 ["datum"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R0 K0 ["datum"]
       14 GETTABLEKS                       R2 R0 K0 ["datum"]
       16 SETTABLEKS                       R1 R2 K1 ["hasChildren"]
       18 GETIMPORT                        R2 K6 [table.freeze]
       20 GETTABLEKS                       R3 R0 K0 ["datum"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R3 R0 K3 ["datum"]
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R0 K3 ["datum"]
        7 GETTABLEKS                       R2 R0 K3 ["datum"]
        9 SETTABLEKS                       R1 R2 K4 ["parentId"]
       11 GETIMPORT                        R2 K6 [table.freeze]
       13 GETTABLEKS                       R3 R0 K3 ["datum"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["parent"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K1 ["instanceIdsToHiddenChildren"]
        7 GETTABLEKS                       R6 R2 K2 ["datum"]
        9 GETTABLEKS                       R5 R6 K3 ["id"]
       11 GETTABLE                         R3 R4 R5
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["remove"]
       15 MOVE                             R5 R3
       16 JUMPIF                           R5 ; [+5]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K5 ["ensureChildList"]
       20 MOVE                             R6 R2
       21 CALL                             R5 1 1
       22 MOVE                             R6 R1
       23 CALL                             R4 2 0
       24 LOADNIL                          R4
       25 SETTABLEKS                       R4 R1 K0 ["parent"]
       27 JUMPIFEQKNIL                     R3 ; [+41]
       29 GETTABLEKS                       R4 R3 K6 ["treeDescendantCount"]
       31 GETUPVAL                         R5 1
       32 MOVE                             R6 R1
       33 CALL                             R5 1 1
       34 SUB                              R4 R4 R5
       35 SETTABLEKS                       R4 R3 K6 ["treeDescendantCount"]
       37 GETUPVAL                         R4 2
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+67]
       40 GETTABLEKS                       R4 R3 K6 ["treeDescendantCount"]
       42 JUMPIFNOTEQKN                    R4 K7 [1] ; [+64]
       44 GETTABLEKS                       R5 R2 K2 ["datum"]
       46 GETTABLEKS                       R4 R5 K8 ["hasChildren"]
       48 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       50 RETURN                           R0 0
       51 GETIMPORT                        R4 K11 [table.clone]
       53 GETTABLEKS                       R5 R2 K2 ["datum"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R2 K2 ["datum"]
       58 GETTABLEKS                       R4 R2 K2 ["datum"]
       60 LOADB                            R5 0
       61 SETTABLEKS                       R5 R4 K8 ["hasChildren"]
       63 GETIMPORT                        R4 K13 [table.freeze]
       65 GETTABLEKS                       R5 R2 K2 ["datum"]
       67 CALL                             R4 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R5 R6 K14 ["isEmpty"]
       72 GETTABLEKS                       R6 R2 K15 ["children"]
       74 CALL                             R5 1 1
       75 NOT                              R4 R5
       76 GETTABLEKS                       R6 R2 K2 ["datum"]
       78 GETTABLEKS                       R5 R6 K8 ["hasChildren"]
       80 JUMPIFNOTEQ                      R5 R4 ; [+2]
       82 JUMP                             ; [+16]
       83 GETIMPORT                        R5 K11 [table.clone]
       85 GETTABLEKS                       R6 R2 K2 ["datum"]
       87 CALL                             R5 1 1
       88 SETTABLEKS                       R5 R2 K2 ["datum"]
       90 GETTABLEKS                       R5 R2 K2 ["datum"]
       92 SETTABLEKS                       R4 R5 K8 ["hasChildren"]
       94 GETIMPORT                        R5 K13 [table.freeze]
       96 GETTABLEKS                       R6 R2 K2 ["datum"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R4 3
      100 MOVE                             R5 R0
      101 MOVE                             R6 R2
      102 GETUPVAL                         R8 1
      103 MOVE                             R9 R1
      104 CALL                             R8 1 1
      105 MINUS                            R7 R8
      106 CALL                             R4 3 0
      107 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["instanceIdsToNodes"]
        2 GETTABLEKS                       R5 R2 K1 ["datum"]
        4 GETTABLEKS                       R4 R5 K2 ["id"]
        6 SETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 JUMP                             ; [+23]
       15 GETTABLEKS                       R3 R2 K3 ["parent"]
       17 JUMPIFEQKNIL                     R3 ; [+20]
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R0
       21 MOVE                             R6 R2
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R5 R0 K4 ["instanceIdsToHiddenChildren"]
       25 GETTABLEKS                       R7 R3 K1 ["datum"]
       27 GETTABLEKS                       R6 R7 K2 ["id"]
       29 GETTABLE                         R4 R5 R6
       30 JUMPIFEQKNIL                     R4 ; [+7]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R5 R6 K5 ["remove"]
       35 MOVE                             R6 R4
       36 MOVE                             R7 R2
       37 CALL                             R5 2 0
       38 SETTABLEKS                       R1 R2 K3 ["parent"]
       40 GETTABLEKS                       R4 R1 K1 ["datum"]
       42 GETTABLEKS                       R3 R4 K2 ["id"]
       44 GETIMPORT                        R4 K8 [table.clone]
       46 GETTABLEKS                       R5 R2 K1 ["datum"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R2 K1 ["datum"]
       51 GETTABLEKS                       R4 R2 K1 ["datum"]
       53 SETTABLEKS                       R3 R4 K9 ["parentId"]
       55 GETIMPORT                        R4 K11 [table.freeze]
       57 GETTABLEKS                       R5 R2 K1 ["datum"]
       59 CALL                             R4 1 0
       60 GETUPVAL                         R3 3
       61 MOVE                             R4 R1
       62 CALL                             R3 1 1
       63 JUMPIFNOT                        R3 ; [+46]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R3 R4 K12 ["ensureChildList"]
       67 MOVE                             R4 R1
       68 CALL                             R3 1 1
       69 GETUPVAL                         R5 2
       70 GETTABLEKS                       R4 R5 K13 ["insert"]
       72 MOVE                             R5 R3
       73 MOVE                             R6 R2
       74 CALL                             R4 2 0
       75 GETUPVAL                         R4 4
       76 MOVE                             R5 R0
       77 MOVE                             R6 R1
       78 GETUPVAL                         R7 5
       79 MOVE                             R8 R2
       80 CALL                             R7 1 -1
       81 CALL                             R4 -1 0
       82 GETUPVAL                         R4 6
       83 CALL                             R4 0 1
       84 JUMPIF                           R4 ; [+70]
       85 GETTABLEKS                       R5 R1 K1 ["datum"]
       87 GETTABLEKS                       R4 R5 K14 ["hasChildren"]
       89 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       91 JUMP                             ; [+63]
       92 GETIMPORT                        R4 K8 [table.clone]
       94 GETTABLEKS                       R5 R1 K1 ["datum"]
       96 CALL                             R4 1 1
       97 SETTABLEKS                       R4 R1 K1 ["datum"]
       99 GETTABLEKS                       R4 R1 K1 ["datum"]
      101 LOADB                            R5 1
      102 SETTABLEKS                       R5 R4 K14 ["hasChildren"]
      104 GETIMPORT                        R4 K11 [table.freeze]
      106 GETTABLEKS                       R5 R1 K1 ["datum"]
      108 CALL                             R4 1 0
      109 JUMP                             ; [+45]
      110 GETTABLEKS                       R4 R0 K4 ["instanceIdsToHiddenChildren"]
      112 GETTABLEKS                       R6 R1 K1 ["datum"]
      114 GETTABLEKS                       R5 R6 K2 ["id"]
      116 GETTABLE                         R3 R4 R5
      117 JUMPIFNOTEQKNIL                  R3 ; [+13]
      119 GETUPVAL                         R5 2
      120 GETTABLEKS                       R4 R5 K15 ["empty"]
      122 CALL                             R4 0 1
      123 MOVE                             R3 R4
      124 GETTABLEKS                       R4 R0 K4 ["instanceIdsToHiddenChildren"]
      126 GETTABLEKS                       R6 R1 K1 ["datum"]
      128 GETTABLEKS                       R5 R6 K2 ["id"]
      130 SETTABLE                         R3 R4 R5
      131 JUMPIFNOTEQKNIL                  R3 ; [+2]
      133 LOADB                            R5 0 +1
      134 LOADB                            R5 1
      135 FASTCALL2K                       ASSERT R5 K16 ; [+4]
      137 LOADK                            R6 K16 ["Luau"]
      138 GETIMPORT                        R4 K18 [assert]
      140 CALL                             R4 2 0
      141 GETUPVAL                         R5 2
      142 GETTABLEKS                       R4 R5 K13 ["insert"]
      144 MOVE                             R5 R3
      145 MOVE                             R6 R2
      146 CALL                             R4 2 0
      147 GETTABLEKS                       R4 R3 K19 ["treeDescendantCount"]
      149 GETUPVAL                         R5 5
      150 MOVE                             R6 R2
      151 CALL                             R5 1 1
      152 ADD                              R4 R4 R5
      153 SETTABLEKS                       R4 R3 K19 ["treeDescendantCount"]
      155 GETUPVAL                         R3 6
      156 CALL                             R3 0 1
      157 JUMPIFNOT                        R3 ; [+24]
      158 GETTABLEKS                       R4 R1 K1 ["datum"]
      160 GETTABLEKS                       R3 R4 K14 ["hasChildren"]
      162 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
      164 JUMP                             ; [+17]
      165 GETIMPORT                        R3 K8 [table.clone]
      167 GETTABLEKS                       R4 R1 K1 ["datum"]
      169 CALL                             R3 1 1
      170 SETTABLEKS                       R3 R1 K1 ["datum"]
      172 GETTABLEKS                       R3 R1 K1 ["datum"]
      174 LOADB                            R4 1
      175 SETTABLEKS                       R4 R3 K14 ["hasChildren"]
      177 GETIMPORT                        R3 K11 [table.freeze]
      179 GETTABLEKS                       R4 R1 K1 ["datum"]
      181 CALL                             R3 1 0
      182 GETTABLEKS                       R4 R0 K20 ["unaddedParentIdsToChildren"]
      184 GETTABLEKS                       R6 R2 K1 ["datum"]
      186 GETTABLEKS                       R5 R6 K2 ["id"]
      188 GETTABLE                         R3 R4 R5
      189 JUMPIFEQKNIL                     R3 ; [+42]
      191 MOVE                             R4 R3
      192 LOADNIL                          R5
      193 LOADNIL                          R6
      194 FORGPREP                         R4
      195 JUMPIFNOTEQKNIL                  R8 ; [+2]
      197 LOADB                            R10 0 +1
      198 LOADB                            R10 1
      199 FASTCALL2K                       ASSERT R10 K21 ; [+4]
      201 LOADK                            R11 K21 ["Child should not be nil"]
      202 GETIMPORT                        R9 K18 [assert]
      204 CALL                             R9 2 0
      205 GETTABLEKS                       R10 R8 K1 ["datum"]
      207 GETTABLEKS                       R9 R10 K9 ["parentId"]
      209 GETTABLEKS                       R11 R2 K1 ["datum"]
      211 GETTABLEKS                       R10 R11 K2 ["id"]
      213 JUMPIFNOTEQ                      R9 R10 ; [+8]
      215 GETUPVAL                         R10 7
      216 GETTABLEKS                       R9 R10 K22 ["insertInto"]
      218 MOVE                             R10 R0
      219 MOVE                             R11 R2
      220 MOVE                             R12 R8
      221 CALL                             R9 3 0
      222 FORGLOOP                         R4 2 ; [-28]
      224 GETTABLEKS                       R4 R0 K20 ["unaddedParentIdsToChildren"]
      226 GETTABLEKS                       R6 R2 K1 ["datum"]
      228 GETTABLEKS                       R5 R6 K2 ["id"]
      230 LOADNIL                          R6
      231 SETTABLE                         R6 R4 R5
      232 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R2 K0 ["treeDescendantCount"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 CALL                             R5 1 1
        5 SUB                              R3 R4 R5
        6 GETTABLEKS                       R4 R1 K1 ["parent"]
        8 JUMPIFEQKNIL                     R4 ; [+7]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 GETTABLEKS                       R6 R1 K1 ["parent"]
       14 MOVE                             R7 R3
       15 CALL                             R4 3 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K2 ["replaceChildren"]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R2
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["datum"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["datum"]
       11 GETTABLEKS                       R2 R1 K3 ["datum"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["parentId"]
       16 GETIMPORT                        R2 K6 [table.freeze]
       18 GETTABLEKS                       R3 R1 K3 ["datum"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ExplorerNodeChildrenMutable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Networking"]
       23 GETTABLEKS                       R5 R6 K10 ["createSession"]
       25 GETTABLEKS                       R4 R5 K11 ["createSessionTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R6 K13 ["getFFlagExplorerArrayError"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R7 K14 ["getFFlagExplorerStreaming"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["getTreeCount"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Util"]
       53 GETTABLEKS                       R8 R9 K16 ["isExpanded"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 4 0
       58 DUPCLOSURE                       R9 K17 [PROTO_0]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 DUPCLOSURE                       R10 K18 [PROTO_1]
       62 DUPCLOSURE                       R11 K19 [PROTO_2]
       63 DUPCLOSURE                       R12 K20 [PROTO_3]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R13 K21 [PROTO_4]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R13 R8 K22 ["insertInto"]
       79 DUPCLOSURE                       R13 K23 [PROTO_5]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R13 R8 K24 ["replaceChildren"]
       85 DUPCLOSURE                       R13 K25 [PROTO_6]
       86 CAPTURE                          VAL R12
       87 SETTABLEKS                       R13 R8 K26 ["remove"]
       89 RETURN                           R8 1
