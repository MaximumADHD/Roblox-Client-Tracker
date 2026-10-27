PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Source"]
        2 LOADK                            R5 K1 ["local%s+"]
        3 MOVE                             R6 R1
        4 LOADK                            R7 K2 ["%s+=%s+([%w%.%(%):\"]-)\n"]
        5 CONCAT                           R4 R5 R7
        6 NAMECALL                         R2 R2 K3 ["match"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 MOVE                             R3 R2
       14 LOADK                            R6 K4 ["Roact%.%w-Component:extend"]
       15 NAMECALL                         R4 R2 K3 ["match"]
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 LOADK                            R6 K5 ["require%((.*)%)"]
       22 NAMECALL                         R4 R2 K3 ["match"]
       24 CALL                             R4 2 1
       25 JUMPIFNOT                        R4 ; [+16]
       26 LOADK                            R7 K6 ["."]
       27 NAMECALL                         R5 R4 K7 ["split"]
       29 CALL                             R5 2 1
       30 LENGTH                           R6 R5
       31 LOADN                            R8 1
       32 JUMPIFNOTLT                      R8 R6 ; [+3]
       34 MOVE                             R7 R6
       35 JUMP                             ; [+1]
       36 LOADN                            R7 1
       37 GETTABLE                         R9 R5 R7
       38 LOADK                            R10 K8 ["!require"]
       39 CONCAT                           R8 R9 R10
       40 SETTABLE                         R8 R5 R7
       41 RETURN                           R5 1
       42 LOADK                            R7 K9 ["(%w-):FindFirstAncestor%(\"(.-)\"%)"]
       43 NAMECALL                         R5 R2 K3 ["match"]
       45 CALL                             R5 2 2
       46 JUMPIFNOT                        R5 ; [+5]
       47 JUMPIFNOT                        R6 ; [+4]
       48 MOVE                             R7 R5
       49 LOADK                            R8 K10 [".FindFirstAncestor."]
       50 MOVE                             R9 R6
       51 CONCAT                           R3 R7 R9
       52 LOADK                            R9 K11 ["game:GetService%(\"(.-)\"%)"]
       53 NAMECALL                         R7 R2 K3 ["match"]
       55 CALL                             R7 2 1
       56 JUMPIFNOT                        R7 ; [+3]
       57 LOADK                            R8 K12 ["GetService."]
       58 MOVE                             R9 R7
       59 CONCAT                           R3 R8 R9
       60 LOADK                            R10 K6 ["."]
       61 NAMECALL                         R8 R3 K7 ["split"]
       63 CALL                             R8 2 -1
       64 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getImportPath"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       16 LOADK                            R5 K1 ["Path cannot be nil in this codepath"]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 LOADN                            R3 1
       21 GETTABLEN                        R4 R2 1
       22 JUMPIFEQKS                       R4 K4 ["script"] ; [+53]
       24 GETTABLEN                        R4 R2 1
       25 JUMPIFEQKS                       R4 K5 ["GetService"] ; [+50]
       27 LOADN                            R4 20
       28 JUMPIFNOTLT                      R3 R4 ; [+47]
       30 GETTABLEN                        R4 R2 1
       31 LOADK                            R6 K6 ["!require"]
       32 LOADK                            R7 K7 [""]
       33 NAMECALL                         R4 R4 K8 ["gsub"]
       35 CALL                             R4 3 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["getImportPath"]
       39 MOVE                             R6 R0
       40 MOVE                             R7 R4
       41 CALL                             R5 2 1
       42 JUMPIFNOTEQKNIL                  R5 ; [+3]
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 JUMPIFNOTEQKNIL                  R5 ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       52 LOADK                            R8 K9 ["Root path cannot be nil in this codepath"]
       53 GETIMPORT                        R6 K3 [assert]
       55 CALL                             R6 2 0
       56 GETIMPORT                        R6 K12 [table.remove]
       58 MOVE                             R7 R2
       59 LOADN                            R8 1
       60 CALL                             R6 2 0
       61 LENGTH                           R8 R5
       62 LOADN                            R6 1
       63 LOADN                            R7 -1
       64 FORNPREP                         R6
       65 LOADN                            R11 1
       66 GETTABLE                         R12 R5 R8
       67 FASTCALL3                        TABLE_INSERT R2 R11 R12
       69 MOVE                             R10 R2
       70 GETIMPORT                        R9 K14 [table.insert]
       72 CALL                             R9 3 0
       73 FORNLOOP                         R6
       74 ADDK                             R3 R3 K15 [1]
       75 JUMPBACK                         ; [-55]
       76 JUMPIFNOTEQKN                    R3 K16 [20] ; [+10]
       78 GETIMPORT                        R4 K18 [warn]
       80 LOADK                            R6 K19 ["⌛ Exceeded searching length for "]
       81 MOVE                             R7 R1
       82 LOADK                            R8 K20 [" in "]
       83 GETTABLEKS                       R9 R0 K21 ["Name"]
       85 CONCAT                           R5 R6 R9
       86 CALL                             R4 1 0
       87 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructPathForImport"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       16 LOADK                            R5 K1 ["Path components cannot be nil in this codepath"]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 LOADB                            R4 0
       22 LOADB                            R5 0
       23 GETIMPORT                        R6 K5 [ipairs]
       25 MOVE                             R7 R2
       26 CALL                             R6 1 3
       27 FORGPREP_INEXT                   R6
       28 LOADN                            R11 1
       29 JUMPIFNOTLT                      R11 R9 ; [+22]
       31 JUMPIFNOTEQKNIL                  R3 ; [+20]
       33 GETIMPORT                        R11 K7 [print]
       35 LOADK                            R13 K8 ["👻 Instance is nil at "]
       36 MOVE                             R14 R10
       37 LOADK                            R15 K9 ["; path "]
       38 GETIMPORT                        R19 K12 [table.concat]
       40 MOVE                             R20 R2
       41 LOADK                            R21 K13 ["."]
       42 CALL                             R19 2 1
       43 MOVE                             R16 R19
       44 LOADK                            R17 K14 [" in file "]
       45 NAMECALL                         R18 R0 K15 ["GetFullName"]
       47 CALL                             R18 1 1
       48 CONCAT                           R12 R13 R18
       49 CALL                             R11 1 0
       50 LOADNIL                          R11
       51 RETURN                           R11 1
       52 JUMPIFNOTEQKS                    R10 K16 ["script"] ; [+3]
       54 MOVE                             R3 R0
       55 JUMP                             ; [+62]
       56 JUMPIFNOTEQKS                    R10 K17 ["Parent"] ; [+14]
       58 JUMPIFNOTEQKNIL                  R3 ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 FASTCALL2K                       ASSERT R12 K18 ; [+4]
       64 LOADK                            R13 K18 ["Instance cannot be nil in this codepath"]
       65 GETIMPORT                        R11 K3 [assert]
       67 CALL                             R11 2 0
       68 GETTABLEKS                       R3 R3 K17 ["Parent"]
       70 JUMP                             ; [+47]
       71 JUMPIFNOTEQKS                    R10 K19 ["FindFirstAncestor"] ; [+3]
       73 LOADB                            R4 1
       74 JUMP                             ; [+43]
       75 JUMPIFNOTEQKS                    R10 K20 ["GetService"] ; [+3]
       77 LOADB                            R5 1
       78 JUMP                             ; [+39]
       79 JUMPIFNOTEQKNIL                  R3 ; [+2]
       81 LOADB                            R12 0 +1
       82 LOADB                            R12 1
       83 FASTCALL2K                       ASSERT R12 K18 ; [+4]
       85 LOADK                            R13 K18 ["Instance cannot be nil in this codepath"]
       86 GETIMPORT                        R11 K3 [assert]
       88 CALL                             R11 2 0
       89 JUMPIFNOT                        R4 ; [+7]
       90 MOVE                             R13 R10
       91 NAMECALL                         R11 R3 K19 ["FindFirstAncestor"]
       93 CALL                             R11 2 1
       94 MOVE                             R3 R11
       95 LOADB                            R4 0
       96 JUMP                             ; [+21]
       97 JUMPIFNOT                        R5 ; [+9]
       98 GETIMPORT                        R11 K22 [game]
      100 MOVE                             R13 R10
      101 NAMECALL                         R11 R11 K20 ["GetService"]
      103 CALL                             R11 2 1
      104 MOVE                             R3 R11
      105 LOADB                            R5 0
      106 JUMP                             ; [+11]
      107 LOADK                            R13 K23 ["(.*)!require"]
      108 NAMECALL                         R11 R10 K24 ["match"]
      110 CALL                             R11 2 1
      111 JUMPIFNOT                        R11 ; [+1]
      112 MOVE                             R10 R11
      113 MOVE                             R14 R10
      114 NAMECALL                         R12 R3 K25 ["FindFirstChild"]
      116 CALL                             R12 2 1
      117 MOVE                             R3 R12
      118 FORGLOOP                         R6 2 [inext] ; [-91]
      120 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getImportPath"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["constructPathForImport"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["findFileInstanceForImport"]
       14 RETURN                           R0 1
