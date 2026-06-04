PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["hostParent"]
        2 GETTABLEKS                       R3 R0 K1 ["hostKey"]
        4 GETTABLEKS                       R4 R0 K2 ["depth"]
        6 GETTABLEKS                       R5 R0 K3 ["parent"]
        8 GETTABLEKS                       R6 R0 K4 ["originalContext"]
       10 JUMPIF                           R6 ; [+2]
       11 GETTABLEKS                       R6 R0 K5 ["context"]
       13 GETTABLEKS                       R7 R0 K6 ["parentLegacyContext"]
       15 GETTABLEKS                       R8 R0 K7 ["wasUnmounted"]
       17 JUMPIF                           R8 ; [+3]
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R0
       20 CALL                             R8 1 0
       21 GETUPVAL                         R8 1
       22 MOVE                             R9 R1
       23 MOVE                             R10 R2
       24 MOVE                             R11 R3
       25 MOVE                             R12 R6
       26 MOVE                             R13 R7
       27 CALL                             R8 5 1
       28 JUMPIFEQKNIL                     R8 ; [+5]
       30 SETTABLEKS                       R4 R8 K2 ["depth"]
       32 SETTABLEKS                       R5 R8 K3 ["parent"]
       34 RETURN                           R8 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["VirtualNode"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Expected arg #1 to be of type VirtualNode"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R4 R0 K5 ["updateChildrenCount"]
       21 ADDK                             R3 R4 K4 [1]
       22 SETTABLEKS                       R3 R0 K5 ["updateChildrenCount"]
       24 GETTABLEKS                       R3 R0 K5 ["updateChildrenCount"]
       26 NEWTABLE                         R4 0 0
       28 GETIMPORT                        R5 K7 [pairs]
       30 GETTABLEKS                       R6 R0 K8 ["children"]
       32 CALL                             R5 1 3
       33 FORGPREP_NEXT                    R5
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R10 R10 K9 ["getElementByKey"]
       37 MOVE                             R11 R2
       38 MOVE                             R12 R8
       39 CALL                             R10 2 1
       40 GETUPVAL                         R11 4
       41 MOVE                             R12 R9
       42 MOVE                             R13 R10
       43 CALL                             R11 2 1
       44 GETTABLEKS                       R12 R0 K5 ["updateChildrenCount"]
       46 JUMPIFEQ                         R12 R3 ; [+11]
       48 JUMPIFNOT                        R11 ; [+8]
       49 GETTABLEKS                       R13 R0 K8 ["children"]
       51 GETTABLE                         R12 R13 R8
       52 JUMPIFEQ                         R11 R12 ; [+4]
       54 GETUPVAL                         R12 5
       55 MOVE                             R13 R11
       56 CALL                             R12 1 0
       57 RETURN                           R0 0
       58 JUMPIFEQKNIL                     R11 ; [+5]
       60 GETTABLEKS                       R12 R0 K8 ["children"]
       62 SETTABLE                         R11 R12 R8
       63 JUMP                             ; [+2]
       64 LOADB                            R12 1
       65 SETTABLE                         R12 R4 R8
       66 FORGLOOP                         R5 2 ; [-33]
       68 GETIMPORT                        R5 K7 [pairs]
       70 MOVE                             R6 R4
       71 CALL                             R5 1 3
       72 FORGPREP_NEXT                    R5
       73 GETTABLEKS                       R10 R0 K8 ["children"]
       75 LOADNIL                          R11
       76 SETTABLE                         R11 R10 R8
       77 FORGLOOP                         R5 1 ; [-5]
       79 GETUPVAL                         R5 3
       80 GETTABLEKS                       R5 R5 K10 ["iterateElements"]
       82 MOVE                             R6 R2
       83 CALL                             R5 1 3
       84 FORGPREP                         R5
       85 MOVE                             R10 R8
       86 GETUPVAL                         R11 3
       87 GETTABLEKS                       R11 R11 K11 ["UseParentKey"]
       89 JUMPIFNOTEQ                      R8 R11 ; [+3]
       91 GETTABLEKS                       R10 R0 K12 ["hostKey"]
       93 GETTABLEKS                       R12 R0 K8 ["children"]
       95 GETTABLE                         R11 R12 R8
       96 JUMPIFNOTEQKNIL                  R11 ; [+31]
       98 GETUPVAL                         R11 6
       99 MOVE                             R12 R9
      100 MOVE                             R13 R1
      101 MOVE                             R14 R10
      102 GETTABLEKS                       R15 R0 K13 ["context"]
      104 GETTABLEKS                       R16 R0 K14 ["legacyContext"]
      106 CALL                             R11 5 1
      107 GETTABLEKS                       R12 R0 K5 ["updateChildrenCount"]
      109 JUMPIFEQ                         R12 R3 ; [+6]
      111 JUMPIFNOT                        R11 ; [+3]
      112 GETUPVAL                         R12 5
      113 MOVE                             R13 R11
      114 CALL                             R12 1 0
      115 RETURN                           R0 0
      116 JUMPIFEQKNIL                     R11 ; [+11]
      118 GETTABLEKS                       R13 R0 K15 ["depth"]
      120 ADDK                             R12 R13 K4 [1]
      121 SETTABLEKS                       R12 R11 K15 ["depth"]
      123 SETTABLEKS                       R0 R11 K16 ["parent"]
      125 GETTABLEKS                       R12 R0 K8 ["children"]
      127 SETTABLE                         R11 R12 R8
      128 FORGLOOP                         R5 2 ; [-44]
      130 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["of"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["Element"]
        8 JUMPIFEQ                         R3 R4 ; [+10]
       10 JUMPIFEQKNIL                     R2 ; [+8]
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K3 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K4 ["boolean"] ; [+7]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R3 3 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R3 K6 [error]
       27 LOADK                            R4 K7 ["%s\n%s"]
       28 LOADK                            R6 K8 ["Component returned invalid children:"]
       29 GETTABLEKS                       R8 R0 K10 ["currentElement"]
       31 GETTABLEKS                       R8 R8 K11 ["source"]
       33 ORK                              R7 R8 K9 ["<enable element tracebacks>"]
       34 NAMECALL                         R4 R4 K12 ["format"]
       36 CALL                             R4 3 1
       37 LOADN                            R5 0
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["of"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["VirtualNode"]
       13 JUMPIFEQ                         R3 R4 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADK                            R3 K3 ["Expected arg #1 to be of type VirtualNode"]
       18 CALL                             R1 2 0
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K4 ["wasUnmounted"]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K1 ["of"]
       25 GETTABLEKS                       R2 R0 K5 ["currentElement"]
       27 CALL                             R1 1 1
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K6 ["Host"]
       31 JUMPIFNOTEQ                      R1 R2 ; [+8]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K7 ["unmountHostNode"]
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R0
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K8 ["Function"]
       43 JUMPIFNOTEQ                      R1 R2 ; [+13]
       45 GETIMPORT                        R2 K10 [pairs]
       47 GETTABLEKS                       R3 R0 K11 ["children"]
       49 CALL                             R2 1 3
       50 FORGPREP_NEXT                    R2
       51 GETUPVAL                         R7 6
       52 MOVE                             R8 R6
       53 CALL                             R7 1 0
       54 FORGLOOP                         R2 2 ; [-4]
       56 RETURN                           R0 0
       57 GETUPVAL                         R2 3
       58 GETTABLEKS                       R2 R2 K12 ["Stateful"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+7]
       62 GETTABLEKS                       R2 R0 K13 ["instance"]
       64 NAMECALL                         R2 R2 K14 ["__unmount"]
       66 CALL                             R2 1 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R2 3
       69 GETTABLEKS                       R2 R2 K15 ["Portal"]
       71 JUMPIFNOTEQ                      R1 R2 ; [+13]
       73 GETIMPORT                        R2 K10 [pairs]
       75 GETTABLEKS                       R3 R0 K11 ["children"]
       77 CALL                             R2 1 3
       78 FORGPREP_NEXT                    R2
       79 GETUPVAL                         R7 6
       80 MOVE                             R8 R6
       81 CALL                             R7 1 0
       82 FORGLOOP                         R2 2 ; [-4]
       84 RETURN                           R0 0
       85 GETUPVAL                         R2 3
       86 GETTABLEKS                       R2 R2 K16 ["Fragment"]
       88 JUMPIFNOTEQ                      R1 R2 ; [+13]
       90 GETIMPORT                        R2 K10 [pairs]
       92 GETTABLEKS                       R3 R0 K11 ["children"]
       94 CALL                             R2 1 3
       95 FORGPREP_NEXT                    R2
       96 GETUPVAL                         R7 6
       97 MOVE                             R8 R6
       98 CALL                             R7 1 0
       99 FORGLOOP                         R2 2 ; [-4]
      101 RETURN                           R0 0
      102 GETIMPORT                        R2 K18 [error]
      104 LOADK                            R3 K19 ["Unknown ElementKind %q"]
      105 FASTCALL1                        TOSTRING R1 ; [+3]
      106 MOVE                             R6 R1
      107 GETIMPORT                        R5 K21 [tostring]
      109 CALL                             R5 1 1
      110 NAMECALL                         R3 R3 K22 ["format"]
      112 CALL                             R3 2 1
      113 LOADN                            R4 2
      114 CALL                             R2 2 0
      115 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["component"]
        2 GETTABLEKS                       R3 R1 K1 ["props"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 GETTABLEKS                       R5 R0 K2 ["hostParent"]
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["currentElement"]
        2 GETTABLEKS                       R3 R2 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K2 ["target"]
        6 GETTABLEKS                       R4 R1 K1 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["target"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["isHostObject"]
       13 MOVE                             R7 R4
       14 CALL                             R6 1 1
       15 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       17 LOADK                            R7 K4 ["Expected target to be host object"]
       18 GETIMPORT                        R5 K6 [assert]
       20 CALL                             R5 2 0
       21 JUMPIFEQ                         R4 R3 ; [+37]
       23 GETTABLEKS                       R6 R0 K7 ["hostParent"]
       25 GETTABLEKS                       R7 R0 K8 ["hostKey"]
       27 GETTABLEKS                       R8 R0 K9 ["depth"]
       29 GETTABLEKS                       R9 R0 K10 ["parent"]
       31 GETTABLEKS                       R10 R0 K11 ["originalContext"]
       33 JUMPIF                           R10 ; [+2]
       34 GETTABLEKS                       R10 R0 K12 ["context"]
       36 GETTABLEKS                       R11 R0 K13 ["parentLegacyContext"]
       38 GETTABLEKS                       R12 R0 K14 ["wasUnmounted"]
       40 JUMPIF                           R12 ; [+3]
       41 GETUPVAL                         R12 1
       42 MOVE                             R13 R0
       43 CALL                             R12 1 0
       44 GETUPVAL                         R12 2
       45 MOVE                             R13 R1
       46 MOVE                             R14 R6
       47 MOVE                             R15 R7
       48 MOVE                             R16 R10
       49 MOVE                             R17 R11
       50 CALL                             R12 5 1
       51 JUMPIFEQKNIL                     R12 ; [+5]
       53 SETTABLEKS                       R8 R12 K9 ["depth"]
       55 SETTABLEKS                       R9 R12 K10 ["parent"]
       57 MOVE                             R5 R12
       58 RETURN                           R5 1
       59 GETTABLEKS                       R6 R1 K1 ["props"]
       61 GETUPVAL                         R7 3
       62 GETTABLE                         R5 R6 R7
       63 GETUPVAL                         R6 4
       64 MOVE                             R7 R0
       65 MOVE                             R8 R4
       66 MOVE                             R9 R5
       67 CALL                             R6 3 0
       68 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["hostParent"]
        2 GETTABLEKS                       R3 R1 K1 ["elements"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 MOVE                             R6 R2
        7 MOVE                             R7 R3
        8 CALL                             R4 3 0
        9 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["of"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["VirtualNode"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K3 ["Expected arg #1 to be of type VirtualNode"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["typeChecks"]
       22 JUMPIFNOT                        R3 ; [+29]
       23 LOADB                            R4 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K1 ["of"]
       27 MOVE                             R6 R1
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K5 ["Element"]
       32 JUMPIFEQ                         R5 R6 ; [+13]
       34 LOADB                            R4 1
       35 FASTCALL1                        TYPEOF R1 ; [+3]
       36 MOVE                             R6 R1
       37 GETIMPORT                        R5 K7 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFEQKS                       R5 K8 ["boolean"] ; [+5]
       42 JUMPIFEQKNIL                     R1 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       48 LOADK                            R5 K9 ["Expected arg #2 to be of type Element, boolean, or nil"]
       49 GETIMPORT                        R3 K11 [assert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R3 R0 K12 ["currentElement"]
       54 JUMPIFNOTEQ                      R3 R1 ; [+4]
       56 JUMPIFNOTEQKNIL                  R2 ; [+2]
       58 RETURN                           R0 1
       59 FASTCALL1                        TYPEOF R1 ; [+3]
       60 MOVE                             R4 R1
       61 GETIMPORT                        R3 K7 [typeof]
       63 CALL                             R3 1 1
       64 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+3]
       66 JUMPIFNOTEQKNIL                  R1 ; [+6]
       68 GETUPVAL                         R3 3
       69 MOVE                             R4 R0
       70 CALL                             R3 1 0
       71 LOADNIL                          R3
       72 RETURN                           R3 1
       73 GETTABLEKS                       R3 R0 K12 ["currentElement"]
       75 GETTABLEKS                       R3 R3 K13 ["component"]
       77 GETTABLEKS                       R4 R1 K13 ["component"]
       79 JUMPIFEQ                         R3 R4 ; [+38]
       81 MOVE                             R4 R0
       82 GETTABLEKS                       R5 R4 K14 ["hostParent"]
       84 GETTABLEKS                       R6 R4 K15 ["hostKey"]
       86 GETTABLEKS                       R7 R4 K16 ["depth"]
       88 GETTABLEKS                       R8 R4 K17 ["parent"]
       90 GETTABLEKS                       R9 R4 K18 ["originalContext"]
       92 JUMPIF                           R9 ; [+2]
       93 GETTABLEKS                       R9 R4 K19 ["context"]
       95 GETTABLEKS                       R10 R4 K20 ["parentLegacyContext"]
       97 GETTABLEKS                       R11 R4 K21 ["wasUnmounted"]
       99 JUMPIF                           R11 ; [+3]
      100 GETUPVAL                         R11 3
      101 MOVE                             R12 R4
      102 CALL                             R11 1 0
      103 GETUPVAL                         R11 4
      104 MOVE                             R12 R1
      105 MOVE                             R13 R5
      106 MOVE                             R14 R6
      107 MOVE                             R15 R9
      108 MOVE                             R16 R10
      109 CALL                             R11 5 1
      110 JUMPIFEQKNIL                     R11 ; [+5]
      112 SETTABLEKS                       R7 R11 K16 ["depth"]
      114 SETTABLEKS                       R8 R11 K17 ["parent"]
      116 MOVE                             R3 R11
      117 RETURN                           R3 1
      118 GETUPVAL                         R3 5
      119 GETTABLEKS                       R3 R3 K1 ["of"]
      121 MOVE                             R4 R1
      122 CALL                             R3 1 1
      123 LOADB                            R4 1
      124 GETUPVAL                         R5 5
      125 GETTABLEKS                       R5 R5 K22 ["Host"]
      127 JUMPIFNOTEQ                      R3 R5 ; [+10]
      129 GETUPVAL                         R5 6
      130 GETTABLEKS                       R5 R5 K23 ["updateHostNode"]
      132 GETUPVAL                         R6 7
      133 MOVE                             R7 R0
      134 MOVE                             R8 R1
      135 CALL                             R5 3 1
      136 MOVE                             R0 R5
      137 JUMP                             ; [+139]
      138 GETUPVAL                         R5 5
      139 GETTABLEKS                       R5 R5 K24 ["Function"]
      141 JUMPIFNOTEQ                      R3 R5 ; [+15]
      143 MOVE                             R5 R0
      144 GETTABLEKS                       R6 R1 K13 ["component"]
      146 GETTABLEKS                       R7 R1 K25 ["props"]
      148 CALL                             R6 1 1
      149 GETUPVAL                         R7 8
      150 MOVE                             R8 R5
      151 GETTABLEKS                       R9 R5 K14 ["hostParent"]
      153 MOVE                             R10 R6
      154 CALL                             R7 3 0
      155 MOVE                             R0 R5
      156 JUMP                             ; [+120]
      157 GETUPVAL                         R5 5
      158 GETTABLEKS                       R5 R5 K26 ["Stateful"]
      160 JUMPIFNOTEQ                      R3 R5 ; [+10]
      162 GETTABLEKS                       R5 R0 K27 ["instance"]
      164 MOVE                             R7 R1
      165 MOVE                             R8 R2
      166 NAMECALL                         R5 R5 K28 ["__update"]
      168 CALL                             R5 3 1
      169 MOVE                             R4 R5
      170 JUMP                             ; [+106]
      171 GETUPVAL                         R5 5
      172 GETTABLEKS                       R5 R5 K29 ["Portal"]
      174 JUMPIFNOTEQ                      R3 R5 ; [+72]
      176 MOVE                             R5 R0
      177 GETTABLEKS                       R6 R5 K12 ["currentElement"]
      179 GETTABLEKS                       R7 R6 K25 ["props"]
      181 GETTABLEKS                       R7 R7 K30 ["target"]
      183 GETTABLEKS                       R8 R1 K25 ["props"]
      185 GETTABLEKS                       R8 R8 K30 ["target"]
      187 GETUPVAL                         R10 6
      188 GETTABLEKS                       R10 R10 K31 ["isHostObject"]
      190 MOVE                             R11 R8
      191 CALL                             R10 1 1
      192 FASTCALL2K                       ASSERT R10 K32 ; [+4]
      194 LOADK                            R11 K32 ["Expected target to be host object"]
      195 GETIMPORT                        R9 K11 [assert]
      197 CALL                             R9 2 0
      198 JUMPIFEQ                         R8 R7 ; [+37]
      200 GETTABLEKS                       R9 R5 K14 ["hostParent"]
      202 GETTABLEKS                       R10 R5 K15 ["hostKey"]
      204 GETTABLEKS                       R11 R5 K16 ["depth"]
      206 GETTABLEKS                       R12 R5 K17 ["parent"]
      208 GETTABLEKS                       R13 R5 K18 ["originalContext"]
      210 JUMPIF                           R13 ; [+2]
      211 GETTABLEKS                       R13 R5 K19 ["context"]
      213 GETTABLEKS                       R14 R5 K20 ["parentLegacyContext"]
      215 GETTABLEKS                       R15 R5 K21 ["wasUnmounted"]
      217 JUMPIF                           R15 ; [+3]
      218 GETUPVAL                         R15 3
      219 MOVE                             R16 R5
      220 CALL                             R15 1 0
      221 GETUPVAL                         R15 4
      222 MOVE                             R16 R1
      223 MOVE                             R17 R9
      224 MOVE                             R18 R10
      225 MOVE                             R19 R13
      226 MOVE                             R20 R14
      227 CALL                             R15 5 1
      228 JUMPIFEQKNIL                     R15 ; [+5]
      230 SETTABLEKS                       R11 R15 K16 ["depth"]
      232 SETTABLEKS                       R12 R15 K17 ["parent"]
      234 MOVE                             R0 R15
      235 JUMP                             ; [+41]
      236 GETTABLEKS                       R10 R1 K25 ["props"]
      238 GETUPVAL                         R11 9
      239 GETTABLE                         R9 R10 R11
      240 GETUPVAL                         R10 10
      241 MOVE                             R11 R5
      242 MOVE                             R12 R8
      243 MOVE                             R13 R9
      244 CALL                             R10 3 0
      245 MOVE                             R0 R5
      246 JUMP                             ; [+30]
      247 GETUPVAL                         R5 5
      248 GETTABLEKS                       R5 R5 K33 ["Fragment"]
      250 JUMPIFNOTEQ                      R3 R5 ; [+13]
      252 MOVE                             R5 R0
      253 GETTABLEKS                       R6 R5 K14 ["hostParent"]
      255 GETTABLEKS                       R7 R1 K34 ["elements"]
      257 GETUPVAL                         R8 10
      258 MOVE                             R9 R5
      259 MOVE                             R10 R6
      260 MOVE                             R11 R7
      261 CALL                             R8 3 0
      262 MOVE                             R0 R5
      263 JUMP                             ; [+13]
      264 GETIMPORT                        R5 K36 [error]
      266 LOADK                            R6 K37 ["Unknown ElementKind %q"]
      267 FASTCALL1                        TOSTRING R3 ; [+3]
      268 MOVE                             R9 R3
      269 GETIMPORT                        R8 K39 [tostring]
      271 CALL                             R8 1 1
      272 NAMECALL                         R6 R6 K40 ["format"]
      274 CALL                             R6 2 1
      275 LOADN                            R7 2
      276 CALL                             R5 2 0
      277 JUMPIF                           R4 ; [+1]
      278 RETURN                           R0 1
      279 SETTABLEKS                       R1 R0 K12 ["currentElement"]
      281 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R5 ; [+43]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K1 ["isHostObject"]
        8 MOVE                             R7 R1
        9 CALL                             R6 1 1
       10 JUMPIF                           R6 ; [+4]
       11 JUMPIFEQKNIL                     R1 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 LOADK                            R7 K2 ["Expected arg #2 to be a host object"]
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 1
       18 LOADB                            R6 1
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R8 R3
       21 GETIMPORT                        R7 K4 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFEQKS                       R7 K5 ["table"] ; [+5]
       26 JUMPIFEQKNIL                     R3 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 LOADK                            R7 K6 ["Expected arg #4 to be of type table or nil"]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 1
       33 LOADB                            R6 1
       34 FASTCALL1                        TYPEOF R4 ; [+3]
       35 MOVE                             R8 R4
       36 GETIMPORT                        R7 K4 [typeof]
       38 CALL                             R7 1 1
       39 JUMPIFEQKS                       R7 K5 ["table"] ; [+5]
       41 JUMPIFEQKNIL                     R4 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 LOADK                            R7 K7 ["Expected arg #5 to be of type table or nil"]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K8 ["typeChecks"]
       50 JUMPIFNOT                        R5 ; [+36]
       51 JUMPIFNOTEQKNIL                  R2 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       57 LOADK                            R7 K9 ["Expected arg #3 to be non-nil"]
       58 GETIMPORT                        R5 K11 [assert]
       60 CALL                             R5 2 0
       61 LOADB                            R6 1
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K12 ["of"]
       65 MOVE                             R8 R0
       66 CALL                             R7 1 1
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R8 R8 K13 ["Element"]
       70 JUMPIFEQ                         R7 R8 ; [+10]
       72 FASTCALL1                        TYPEOF R0 ; [+3]
       73 MOVE                             R8 R0
       74 GETIMPORT                        R7 K4 [typeof]
       76 CALL                             R7 1 1
       77 JUMPIFEQKS                       R7 K14 ["boolean"] ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       83 LOADK                            R7 K15 ["Expected arg #1 to be of type Element or boolean"]
       84 GETIMPORT                        R5 K11 [assert]
       86 CALL                             R5 2 0
       87 NEWTABLE                         R5 16 0
       89 GETUPVAL                         R6 3
       90 GETUPVAL                         R7 3
       91 GETTABLEKS                       R7 R7 K16 ["VirtualNode"]
       93 SETTABLE                         R7 R5 R6
       94 SETTABLEKS                       R0 R5 K17 ["currentElement"]
       96 LOADN                            R6 1
       97 SETTABLEKS                       R6 R5 K18 ["depth"]
       99 LOADNIL                          R6
      100 SETTABLEKS                       R6 R5 K19 ["parent"]
      102 NEWTABLE                         R6 0 0
      104 SETTABLEKS                       R6 R5 K20 ["children"]
      106 SETTABLEKS                       R1 R5 K21 ["hostParent"]
      108 SETTABLEKS                       R2 R5 K22 ["hostKey"]
      110 LOADN                            R6 0
      111 SETTABLEKS                       R6 R5 K23 ["updateChildrenCount"]
      113 LOADB                            R6 0
      114 SETTABLEKS                       R6 R5 K24 ["wasUnmounted"]
      116 SETTABLEKS                       R4 R5 K25 ["legacyContext"]
      118 SETTABLEKS                       R4 R5 K26 ["parentLegacyContext"]
      120 MOVE                             R6 R3
      121 JUMPIF                           R6 ; [+2]
      122 NEWTABLE                         R6 0 0
      124 SETTABLEKS                       R6 R5 K27 ["context"]
      126 LOADNIL                          R6
      127 SETTABLEKS                       R6 R5 K28 ["originalContext"]
      129 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["currentElement"]
        2 GETTABLEKS                       R2 R1 K1 ["component"]
        4 GETTABLEKS                       R3 R1 K2 ["props"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R0 K3 ["hostParent"]
       11 MOVE                             R6 R2
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["currentElement"]
        2 GETTABLEKS                       R2 R1 K1 ["props"]
        4 GETTABLEKS                       R2 R2 K2 ["target"]
        6 GETTABLEKS                       R4 R1 K1 ["props"]
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R3 R4 R5
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["isHostObject"]
       13 MOVE                             R6 R2
       14 CALL                             R5 1 1
       15 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       17 LOADK                            R6 K4 ["Expected target to be host object"]
       18 GETIMPORT                        R4 K6 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["currentElement"]
        2 GETTABLEKS                       R2 R1 K1 ["elements"]
        4 GETTABLEKS                       R3 R0 K2 ["hostParent"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R3
        9 MOVE                             R7 R2
       10 CALL                             R4 3 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["internalTypeChecks"]
        3 JUMPIFNOT                        R5 ; [+28]
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K1 ["isHostObject"]
        8 MOVE                             R7 R1
        9 CALL                             R6 1 1
       10 JUMPIF                           R6 ; [+4]
       11 JUMPIFEQKNIL                     R1 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 LOADK                            R7 K2 ["Expected arg #2 to be a host object"]
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 1
       18 LOADB                            R6 1
       19 FASTCALL1                        TYPEOF R4 ; [+3]
       20 MOVE                             R8 R4
       21 GETIMPORT                        R7 K4 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFEQKS                       R7 K5 ["table"] ; [+5]
       26 JUMPIFEQKNIL                     R4 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 LOADK                            R7 K6 ["Expected arg #5 to be of type table or nil"]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["typeChecks"]
       35 JUMPIFNOT                        R5 ; [+36]
       36 JUMPIFNOTEQKNIL                  R2 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       42 LOADK                            R7 K8 ["Expected arg #3 to be non-nil"]
       43 GETIMPORT                        R5 K10 [assert]
       45 CALL                             R5 2 0
       46 LOADB                            R6 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K11 ["of"]
       50 MOVE                             R8 R0
       51 CALL                             R7 1 1
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K12 ["Element"]
       55 JUMPIFEQ                         R7 R8 ; [+10]
       57 FASTCALL1                        TYPEOF R0 ; [+3]
       58 MOVE                             R8 R0
       59 GETIMPORT                        R7 K4 [typeof]
       61 CALL                             R7 1 1
       62 JUMPIFEQKS                       R7 K13 ["boolean"] ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       68 LOADK                            R7 K14 ["Expected arg #1 to be of type Element or boolean"]
       69 GETIMPORT                        R5 K10 [assert]
       71 CALL                             R5 2 0
       72 FASTCALL1                        TYPEOF R0 ; [+3]
       73 MOVE                             R6 R0
       74 GETIMPORT                        R5 K4 [typeof]
       76 CALL                             R5 1 1
       77 JUMPIFNOTEQKS                    R5 K13 ["boolean"] ; [+3]
       79 LOADNIL                          R5
       80 RETURN                           R5 1
       81 GETUPVAL                         R5 4
       82 GETTABLEKS                       R5 R5 K11 ["of"]
       84 MOVE                             R6 R0
       85 CALL                             R5 1 1
       86 GETUPVAL                         R6 5
       87 MOVE                             R7 R0
       88 MOVE                             R8 R1
       89 MOVE                             R9 R2
       90 MOVE                             R10 R3
       91 MOVE                             R11 R4
       92 CALL                             R6 5 1
       93 GETUPVAL                         R7 4
       94 GETTABLEKS                       R7 R7 K15 ["Host"]
       96 JUMPIFNOTEQ                      R5 R7 ; [+8]
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R7 R7 K16 ["mountHostNode"]
      101 GETUPVAL                         R8 6
      102 MOVE                             R9 R6
      103 CALL                             R7 2 0
      104 RETURN                           R6 1
      105 GETUPVAL                         R7 4
      106 GETTABLEKS                       R7 R7 K17 ["Function"]
      108 JUMPIFNOTEQ                      R5 R7 ; [+15]
      110 GETTABLEKS                       R7 R6 K18 ["currentElement"]
      112 GETTABLEKS                       R8 R7 K19 ["component"]
      114 GETTABLEKS                       R9 R7 K20 ["props"]
      116 CALL                             R8 1 1
      117 GETUPVAL                         R9 7
      118 MOVE                             R10 R6
      119 GETTABLEKS                       R11 R6 K21 ["hostParent"]
      121 MOVE                             R12 R8
      122 CALL                             R9 3 0
      123 RETURN                           R6 1
      124 GETUPVAL                         R7 4
      125 GETTABLEKS                       R7 R7 K22 ["Stateful"]
      127 JUMPIFNOTEQ                      R5 R7 ; [+9]
      129 GETTABLEKS                       R7 R0 K19 ["component"]
      131 GETUPVAL                         R9 6
      132 MOVE                             R10 R6
      133 NAMECALL                         R7 R7 K23 ["__mount"]
      135 CALL                             R7 3 0
      136 RETURN                           R6 1
      137 GETUPVAL                         R7 4
      138 GETTABLEKS                       R7 R7 K24 ["Portal"]
      140 JUMPIFNOTEQ                      R5 R7 ; [+28]
      142 GETTABLEKS                       R7 R6 K18 ["currentElement"]
      144 GETTABLEKS                       R8 R7 K20 ["props"]
      146 GETTABLEKS                       R8 R8 K25 ["target"]
      148 GETTABLEKS                       R10 R7 K20 ["props"]
      150 GETUPVAL                         R11 8
      151 GETTABLE                         R9 R10 R11
      152 GETUPVAL                         R11 2
      153 GETTABLEKS                       R11 R11 K1 ["isHostObject"]
      155 MOVE                             R12 R8
      156 CALL                             R11 1 1
      157 FASTCALL2K                       ASSERT R11 K26 ; [+4]
      159 LOADK                            R12 K26 ["Expected target to be host object"]
      160 GETIMPORT                        R10 K10 [assert]
      162 CALL                             R10 2 0
      163 GETUPVAL                         R10 9
      164 MOVE                             R11 R6
      165 MOVE                             R12 R8
      166 MOVE                             R13 R9
      167 CALL                             R10 3 0
      168 RETURN                           R6 1
      169 GETUPVAL                         R7 4
      170 GETTABLEKS                       R7 R7 K27 ["Fragment"]
      172 JUMPIFNOTEQ                      R5 R7 ; [+13]
      174 GETTABLEKS                       R7 R6 K18 ["currentElement"]
      176 GETTABLEKS                       R8 R7 K28 ["elements"]
      178 GETTABLEKS                       R9 R6 K21 ["hostParent"]
      180 GETUPVAL                         R10 9
      181 MOVE                             R11 R6
      182 MOVE                             R12 R9
      183 MOVE                             R13 R8
      184 CALL                             R10 3 0
      185 RETURN                           R6 1
      186 GETIMPORT                        R7 K30 [error]
      188 LOADK                            R8 K31 ["Unknown ElementKind %q"]
      189 FASTCALL1                        TOSTRING R5 ; [+3]
      190 MOVE                             R11 R5
      191 GETIMPORT                        R10 K33 [tostring]
      193 CALL                             R10 1 1
      194 NAMECALL                         R8 R8 K34 ["format"]
      196 CALL                             R8 2 1
      197 LOADN                            R9 2
      198 CALL                             R7 2 0
      199 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["typeChecks"]
        3 JUMPIFNOT                        R3 ; [+34]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["of"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["Element"]
       12 JUMPIFEQ                         R5 R6 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       18 LOADK                            R5 K3 ["Expected arg #1 to be of type Element"]
       19 GETIMPORT                        R3 K5 [assert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K6 ["isHostObject"]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 1
       27 JUMPIF                           R4 ; [+4]
       28 JUMPIFEQKNIL                     R1 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       34 LOADK                            R5 K7 ["Expected arg #2 to be a host object"]
       35 GETIMPORT                        R3 K5 [assert]
       37 CALL                             R3 2 0
       38 JUMPIFNOTEQKNIL                  R2 ; [+2]
       40 LOADK                            R2 K8 ["RoactTree"]
       41 NEWTABLE                         R3 2 0
       43 GETUPVAL                         R4 1
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K9 ["VirtualTree"]
       47 SETTABLE                         R5 R3 R4
       48 GETUPVAL                         R4 3
       49 DUPTABLE                         R5 K12 [{"rootNode", "mounted"}]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K10 ["rootNode"]
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R5 K11 ["mounted"]
       56 SETTABLE                         R5 R3 R4
       57 GETUPVAL                         R5 3
       58 GETTABLE                         R4 R3 R5
       59 GETUPVAL                         R5 4
       60 MOVE                             R6 R0
       61 MOVE                             R7 R1
       62 MOVE                             R8 R2
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K10 ["rootNode"]
       66 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["typeChecks"]
        5 JUMPIFNOT                        R2 ; [+26]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["of"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K2 ["VirtualTree"]
       14 JUMPIFEQ                         R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       20 LOADK                            R4 K3 ["Expected arg #1 to be a Roact handle"]
       21 GETIMPORT                        R2 K5 [assert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R1 K6 ["mounted"]
       26 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       28 LOADK                            R4 K7 ["Cannot unmounted a Roact tree that has already been unmounted"]
       29 GETIMPORT                        R2 K5 [assert]
       31 CALL                             R2 2 0
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K6 ["mounted"]
       35 GETTABLEKS                       R2 R1 K8 ["rootNode"]
       37 JUMPIFEQKNIL                     R2 ; [+5]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R3 R1 K8 ["rootNode"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["typeChecks"]
        5 JUMPIFNOT                        R3 ; [+36]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["of"]
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["VirtualTree"]
       14 JUMPIFEQ                         R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       20 LOADK                            R5 K3 ["Expected arg #1 to be a Roact handle"]
       21 GETIMPORT                        R3 K5 [assert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K1 ["of"]
       27 MOVE                             R6 R1
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K6 ["Element"]
       32 JUMPIFEQ                         R5 R6 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       38 LOADK                            R5 K7 ["Expected arg #2 to be a Roact Element"]
       39 GETIMPORT                        R3 K5 [assert]
       41 CALL                             R3 2 0
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R4 R2 K8 ["rootNode"]
       45 MOVE                             R5 R1
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R2 K8 ["rootNode"]
       49 RETURN                           R0 1

PROTO_17:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R4
        6 CAPTURE                          REF R2
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          REF R3
       13 CAPTURE                          REF R4
       14 CAPTURE                          REF R2
       15 NEWCLOSURE                       R7 P2
       16 CAPTURE                          VAL R6
       17 NEWCLOSURE                       R8 P3
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R6
       20 NEWCLOSURE                       R4 P4
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          REF R1
       27 CAPTURE                          REF R4
       28 NEWCLOSURE                       R9 P5
       29 CAPTURE                          VAL R8
       30 NEWCLOSURE                       R10 P6
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R4
       33 CAPTURE                          REF R2
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R6
       36 NEWCLOSURE                       R11 P7
       37 CAPTURE                          VAL R6
       38 NEWCLOSURE                       R3 P8
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          REF R4
       43 CAPTURE                          REF R2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          REF R1
       47 CAPTURE                          VAL R8
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R6
       50 NEWCLOSURE                       R12 P9
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U2
       55 NEWCLOSURE                       R13 P10
       56 CAPTURE                          VAL R8
       57 NEWCLOSURE                       R14 P11
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R6
       61 NEWCLOSURE                       R15 P12
       62 CAPTURE                          VAL R6
       63 NEWCLOSURE                       R2 P13
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R12
       70 CAPTURE                          REF R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R6
       74 NEWCLOSURE                       R16 P14
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          REF R2
       80 NEWCLOSURE                       R17 P15
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          REF R4
       85 NEWCLOSURE                       R18 P16
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          REF R3
       90 DUPTABLE                         R19 K9 [{"mountVirtualTree", "unmountVirtualTree", "updateVirtualTree", "createVirtualNode", "mountVirtualNode", "unmountVirtualNode", "updateVirtualNode", "updateVirtualNodeWithChildren", "updateVirtualNodeWithRenderResult"}]
       91 SETTABLEKS                       R16 R19 K0 ["mountVirtualTree"]
       93 SETTABLEKS                       R17 R19 K1 ["unmountVirtualTree"]
       95 SETTABLEKS                       R18 R19 K2 ["updateVirtualTree"]
       97 SETTABLEKS                       R12 R19 K3 ["createVirtualNode"]
       99 SETTABLEKS                       R2 R19 K4 ["mountVirtualNode"]
      101 SETTABLEKS                       R4 R19 K5 ["unmountVirtualNode"]
      103 SETTABLEKS                       R3 R19 K6 ["updateVirtualNode"]
      105 SETTABLEKS                       R7 R19 K7 ["updateVirtualNodeWithChildren"]
      107 SETTABLEKS                       R8 R19 K8 ["updateVirtualNodeWithRenderResult"]
      109 MOVE                             R1 R19
      110 CLOSEUPVALS                      R1
      111 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Type"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["ElementKind"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["ElementUtils"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["PropMarkers"]
       36 GETTABLEKS                       R4 R4 K9 ["Children"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K1 [require]
       41 GETIMPORT                        R5 K3 [script]
       43 GETTABLEKS                       R5 R5 K4 ["Parent"]
       45 GETTABLEKS                       R5 R5 K10 ["Symbol"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R6 K3 [script]
       52 GETTABLEKS                       R6 R6 K4 ["Parent"]
       54 GETTABLEKS                       R6 R6 K11 ["internalAssert"]
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K1 [require]
       59 GETIMPORT                        R7 K3 [script]
       61 GETTABLEKS                       R7 R7 K4 ["Parent"]
       63 GETTABLEKS                       R7 R7 K12 ["GlobalConfig"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R6 R6 K13 ["get"]
       68 CALL                             R6 0 1
       69 GETTABLEKS                       R7 R4 K14 ["named"]
       71 LOADK                            R8 K15 ["InternalData"]
       72 CALL                             R7 1 1
       73 DUPCLOSURE                       R8 K16 [PROTO_17]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 RETURN                           R8 1
