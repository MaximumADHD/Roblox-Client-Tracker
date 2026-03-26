PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["palette"]
        2 GETTABLEKS                       R2 R3 K1 ["Key"]
        4 GETTABLEKS                       R4 R1 K0 ["palette"]
        6 GETTABLEKS                       R3 R4 K1 ["Key"]
        8 JUMPIFEQ                         R2 R3 ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R0 K2 ["item"]
       14 GETTABLEKS                       R2 R3 K3 ["source"]
       16 GETTABLEKS                       R4 R1 K2 ["item"]
       18 GETTABLEKS                       R3 R4 K3 ["source"]
       20 JUMPIFEQ                         R2 R3 ; [+3]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 GETTABLEKS                       R3 R0 K2 ["item"]
       26 GETTABLEKS                       R2 R3 K3 ["source"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K4 ["SOURCE_BUILTIN"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+23]
       33 GETTABLEKS                       R3 R1 K2 ["item"]
       35 GETTABLEKS                       R2 R3 K3 ["source"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K4 ["SOURCE_BUILTIN"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+14]
       42 GETTABLEKS                       R4 R0 K2 ["item"]
       44 GETTABLEKS                       R3 R4 K5 ["builtinItem"]
       46 GETTABLEKS                       R5 R1 K2 ["item"]
       48 GETTABLEKS                       R4 R5 K5 ["builtinItem"]
       50 JUMPIFEQ                         R3 R4 ; [+2]
       52 LOADB                            R2 0 +1
       53 LOADB                            R2 1
       54 RETURN                           R2 1
       55 GETTABLEKS                       R3 R0 K2 ["item"]
       57 GETTABLEKS                       R2 R3 K3 ["source"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K6 ["SOURCE_INSTANCE"]
       62 JUMPIFNOTEQ                      R2 R3 ; [+23]
       64 GETTABLEKS                       R3 R1 K2 ["item"]
       66 GETTABLEKS                       R2 R3 K3 ["source"]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K6 ["SOURCE_INSTANCE"]
       71 JUMPIFNOTEQ                      R2 R3 ; [+14]
       73 GETTABLEKS                       R4 R0 K2 ["item"]
       75 GETTABLEKS                       R3 R4 K7 ["instance"]
       77 GETTABLEKS                       R5 R1 K2 ["item"]
       79 GETTABLEKS                       R4 R5 K7 ["instance"]
       81 JUMPIFEQ                         R3 R4 ; [+2]
       83 LOADB                            R2 0 +1
       84 LOADB                            R2 1
       85 RETURN                           R2 1
       86 GETUPVAL                         R2 1
       87 CALL                             R2 0 1
       88 JUMPIFNOT                        R2 ; [+76]
       89 GETTABLEKS                       R3 R0 K2 ["item"]
       91 GETTABLEKS                       R2 R3 K3 ["source"]
       93 GETUPVAL                         R4 0
       94 GETTABLEKS                       R3 R4 K8 ["SOURCE_MARKETPLACE"]
       96 JUMPIFNOTEQ                      R2 R3 ; [+68]
       98 GETTABLEKS                       R3 R1 K2 ["item"]
      100 GETTABLEKS                       R2 R3 K3 ["source"]
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R3 R4 K8 ["SOURCE_MARKETPLACE"]
      105 JUMPIFNOTEQ                      R2 R3 ; [+59]
      107 GETUPVAL                         R2 2
      108 CALL                             R2 0 1
      109 JUMPIFNOT                        R2 ; [+11]
      110 GETUPVAL                         R2 3
      111 GETTABLEKS                       R4 R0 K2 ["item"]
      113 GETTABLEKS                       R3 R4 K9 ["marketplaceItem"]
      115 GETTABLEKS                       R5 R1 K2 ["item"]
      117 GETTABLEKS                       R4 R5 K9 ["marketplaceItem"]
      119 CALL                             R2 2 -1
      120 RETURN                           R2 -1
      121 GETTABLEKS                       R4 R0 K2 ["item"]
      123 GETTABLEKS                       R3 R4 K9 ["marketplaceItem"]
      125 FASTCALL1                        TYPEOF R3 ; [+2]
      126 GETIMPORT                        R2 K11 [typeof]
      128 CALL                             R2 1 1
      129 JUMPIFNOTEQKS                    R2 K12 ["table"] ; [+22]
      131 GETTABLEKS                       R4 R1 K2 ["item"]
      133 GETTABLEKS                       R3 R4 K9 ["marketplaceItem"]
      135 FASTCALL1                        TYPEOF R3 ; [+2]
      136 GETIMPORT                        R2 K11 [typeof]
      138 CALL                             R2 1 1
      139 JUMPIFNOTEQKS                    R2 K12 ["table"] ; [+12]
      141 GETUPVAL                         R2 3
      142 GETTABLEKS                       R4 R0 K2 ["item"]
      144 GETTABLEKS                       R3 R4 K9 ["marketplaceItem"]
      146 GETTABLEKS                       R5 R1 K2 ["item"]
      148 GETTABLEKS                       R4 R5 K9 ["marketplaceItem"]
      150 CALL                             R2 2 -1
      151 RETURN                           R2 -1
      152 GETTABLEKS                       R4 R0 K2 ["item"]
      154 GETTABLEKS                       R3 R4 K9 ["marketplaceItem"]
      156 GETTABLEKS                       R5 R1 K2 ["item"]
      158 GETTABLEKS                       R4 R5 K9 ["marketplaceItem"]
      160 JUMPIFEQ                         R3 R4 ; [+2]
      162 LOADB                            R2 0 +1
      163 LOADB                            R2 1
      164 RETURN                           R2 1
      165 GETIMPORT                        R2 K14 [error]
      167 LOADK                            R4 K15 ["Unknown item source: %*"]
      168 GETTABLEKS                       R7 R0 K2 ["item"]
      170 GETTABLEKS                       R6 R7 K3 ["source"]
      172 NAMECALL                         R4 R4 K16 ["format"]
      174 CALL                             R4 2 1
      175 MOVE                             R3 R4
      176 CALL                             R2 1 0
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K7 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["shallowEqual"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFFlagAvatarPreviewerLookComposer"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Flags"]
       47 GETTABLEKS                       R6 R7 K13 ["getFFlagAvatarPreviewerFixShallowEqual"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 RETURN                           R6 1
