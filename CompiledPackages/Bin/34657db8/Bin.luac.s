PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R4 R3
        8 RETURN                           R4 1
        9 LOADNIL                          R4
       10 RETURN                           R4 1

PROTO_3:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFEQKNIL                     R2 ; [+9]
        3 FASTCALL1                        TYPE R3 ; [+3]
        4 MOVE                             R5 R3
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       10 GETTABLE                         R3 R0 R2
       11 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 2
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R4 1
        9 JUMPIFEQKNIL                     R2 ; [+12]
       11 GETIMPORT                        R6 K1 [pcall]
       13 GETUPVAL                         R7 1
       14 MOVE                             R8 R0
       15 MOVE                             R9 R2
       16 CALL                             R6 3 2
       17 JUMPIFNOT                        R6 ; [+2]
       18 MOVE                             R5 R7
       19 RETURN                           R5 1
       20 LOADNIL                          R5
       21 RETURN                           R5 1
       22 LOADNIL                          R5
       23 RETURN                           R5 1

PROTO_5:
        0 FASTCALL2                        RAWGET R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K1 [rawget]
        6 CALL                             R3 2 1
        7 FASTCALL1                        TYPE R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["function"] ; [+2]
       14 RETURN                           R3 1
       15 FASTCALL1                        GETMETATABLE R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K6 [getmetatable]
       19 CALL                             R4 1 1
       20 JUMPIFEQKNIL                     R4 ; [+26]
       22 GETIMPORT                        R5 K8 [pcall]
       24 GETUPVAL                         R6 0
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 CALL                             R5 4 2
       29 JUMPIFNOT                        R5 ; [+2]
       30 MOVE                             R4 R6
       31 RETURN                           R4 1
       32 JUMPIFEQKNIL                     R2 ; [+12]
       34 GETIMPORT                        R7 K8 [pcall]
       36 GETUPVAL                         R8 1
       37 MOVE                             R9 R0
       38 MOVE                             R10 R2
       39 CALL                             R7 3 2
       40 JUMPIFNOT                        R7 ; [+2]
       41 MOVE                             R4 R8
       42 RETURN                           R4 1
       43 LOADNIL                          R4
       44 RETURN                           R4 1
       45 LOADNIL                          R4
       46 RETURN                           R4 1
       47 JUMPIFEQKNIL                     R2 ; [+9]
       49 FASTCALL2                        RAWGET R0 R2 ; [+5]
       51 MOVE                             R5 R0
       52 MOVE                             R6 R2
       53 GETIMPORT                        R4 K1 [rawget]
       55 CALL                             R4 2 1
       56 RETURN                           R4 1
       57 LOADNIL                          R4
       58 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOTEQKNIL                  R3 ; [+5]
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 SETTABLE                         R3 R4 R2
       10 GETTABLE                         R4 R3 R1
       11 JUMPIFEQKNIL                     R4 ; [+2]
       13 RETURN                           R4 1
       14 GETIMPORT                        R5 K2 [pcall]
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R5 3 2
       20 JUMPIFNOT                        R5 ; [+10]
       21 FASTCALL1                        TYPEOF R6 ; [+3]
       22 MOVE                             R8 R6
       23 GETIMPORT                        R7 K4 [typeof]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K5 ["function"] ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMP                             ; [+16]
       31 GETIMPORT                        R7 K8 [string.find]
       33 FASTCALL1                        TOSTRING R6 ; [+3]
       34 MOVE                             R9 R6
       35 GETIMPORT                        R8 K10 [tostring]
       37 CALL                             R8 1 1
       38 LOADK                            R9 K11 ["is not a valid member"]
       39 LOADN                            R10 1
       40 LOADB                            R11 1
       41 CALL                             R7 4 1
       42 JUMPIFNOT                        R7 ; [+2]
       43 LOADB                            R4 0
       44 JUMP                             ; [+2]
       45 LOADB                            R7 0
       46 RETURN                           R7 1
       47 SETTABLE                         R4 R3 R1
       48 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLE                         R3 R0 R1
        6 RETURN                           R3 1
        7 JUMPIFEQKNIL                     R2 ; [+8]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 GETTABLE                         R3 R0 R2
       15 RETURN                           R3 1
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_8:
        0 LOADNIL                          R3
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+62]
        8 FASTCALL2                        RAWGET R0 R1 ; [+5]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 GETIMPORT                        R4 K4 [rawget]
       14 CALL                             R4 2 1
       15 FASTCALL1                        TYPE R4 ; [+3]
       16 MOVE                             R6 R4
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+3]
       22 MOVE                             R3 R4
       23 JUMP                             ; [+108]
       24 FASTCALL1                        GETMETATABLE R0 ; [+3]
       25 MOVE                             R6 R0
       26 GETIMPORT                        R5 K7 [getmetatable]
       28 CALL                             R5 1 1
       29 JUMPIFEQKNIL                     R5 ; [+26]
       31 GETIMPORT                        R5 K9 [pcall]
       33 GETUPVAL                         R6 0
       34 MOVE                             R7 R0
       35 MOVE                             R8 R1
       36 MOVE                             R9 R2
       37 CALL                             R5 4 2
       38 JUMPIFNOT                        R5 ; [+2]
       39 MOVE                             R3 R6
       40 JUMP                             ; [+91]
       41 JUMPIFEQKNIL                     R2 ; [+12]
       43 GETIMPORT                        R7 K9 [pcall]
       45 GETUPVAL                         R8 1
       46 MOVE                             R9 R0
       47 MOVE                             R10 R2
       48 CALL                             R7 3 2
       49 JUMPIFNOT                        R7 ; [+2]
       50 MOVE                             R3 R8
       51 JUMP                             ; [+80]
       52 LOADNIL                          R3
       53 JUMP                             ; [+78]
       54 LOADNIL                          R3
       55 JUMP                             ; [+76]
       56 JUMPIFEQKNIL                     R2 ; [+10]
       58 FASTCALL2                        RAWGET R0 R2 ; [+5]
       60 MOVE                             R6 R0
       61 MOVE                             R7 R2
       62 GETIMPORT                        R5 K4 [rawget]
       64 CALL                             R5 2 1
       65 MOVE                             R3 R5
       66 JUMP                             ; [+65]
       67 LOADNIL                          R3
       68 JUMP                             ; [+63]
       69 FASTCALL1                        TYPEOF R0 ; [+3]
       70 MOVE                             R5 R0
       71 GETIMPORT                        R4 K11 [typeof]
       73 CALL                             R4 1 1
       74 JUMPIFEQKS                       R4 K12 ["Instance"] ; [+8]
       76 FASTCALL1                        TYPEOF R0 ; [+3]
       77 MOVE                             R5 R0
       78 GETIMPORT                        R4 K11 [typeof]
       80 CALL                             R4 1 1
       81 JUMPIFNOTEQKS                    R4 K13 ["Object"] ; [+19]
       83 GETUPVAL                         R4 2
       84 MOVE                             R5 R0
       85 MOVE                             R6 R1
       86 CALL                             R4 2 1
       87 JUMPIFNOT                        R4 ; [+2]
       88 GETTABLE                         R3 R0 R1
       89 JUMP                             ; [+42]
       90 JUMPIFEQKNIL                     R2 ; [+8]
       92 GETUPVAL                         R4 2
       93 MOVE                             R5 R0
       94 MOVE                             R6 R2
       95 CALL                             R4 2 1
       96 JUMPIFNOT                        R4 ; [+2]
       97 GETTABLE                         R3 R0 R2
       98 JUMP                             ; [+33]
       99 LOADNIL                          R3
      100 JUMP                             ; [+31]
      101 FASTCALL1                        TYPE R0 ; [+3]
      102 MOVE                             R5 R0
      103 GETIMPORT                        R4 K1 [type]
      105 CALL                             R4 1 1
      106 JUMPIFNOTEQKS                    R4 K14 ["userdata"] ; [+25]
      108 GETIMPORT                        R4 K9 [pcall]
      110 GETUPVAL                         R5 0
      111 MOVE                             R6 R0
      112 MOVE                             R7 R1
      113 MOVE                             R8 R2
      114 CALL                             R4 4 2
      115 JUMPIFNOT                        R4 ; [+2]
      116 MOVE                             R3 R5
      117 JUMP                             ; [+14]
      118 JUMPIFEQKNIL                     R2 ; [+12]
      120 GETIMPORT                        R6 K9 [pcall]
      122 GETUPVAL                         R7 1
      123 MOVE                             R8 R0
      124 MOVE                             R9 R2
      125 CALL                             R6 3 2
      126 JUMPIFNOT                        R6 ; [+2]
      127 MOVE                             R3 R7
      128 JUMP                             ; [+3]
      129 LOADNIL                          R3
      130 JUMP                             ; [+1]
      131 LOADNIL                          R3
      132 FASTCALL1                        TYPEOF R3 ; [+3]
      133 MOVE                             R6 R3
      134 GETIMPORT                        R5 K11 [typeof]
      136 CALL                             R5 1 1
      137 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+3]
      139 MOVE                             R4 R3
      140 RETURN                           R4 1
      141 LOADNIL                          R4
      142 RETURN                           R4 1

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+17]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+38]
        8 GETIMPORT                        R2 K1 [error]
       10 LOADK                            R3 K2 ["Bin expects an object with a %* method"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K3 ["format"]
       14 CALL                             R3 2 1
       15 LOADN                            R4 3
       16 CALL                             R2 2 0
       17 RETURN                           R0 1
       18 GETUPVAL                         R3 1
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K5 [typeof]
       23 CALL                             R4 1 1
       24 GETTABLE                         R2 R3 R4
       25 JUMPIF                           R2 ; [+19]
       26 GETUPVAL                         R2 0
       27 MOVE                             R3 R0
       28 LOADK                            R4 K6 ["Destroy"]
       29 LOADK                            R5 K7 ["destroy"]
       30 CALL                             R2 3 1
       31 JUMPIFNOTEQKNIL                  R2 ; [+13]
       33 GETUPVAL                         R2 0
       34 MOVE                             R3 R0
       35 LOADK                            R4 K8 ["Disconnect"]
       36 LOADK                            R5 K9 ["disconnect"]
       37 CALL                             R2 3 1
       38 JUMPIFNOTEQKNIL                  R2 ; [+6]
       40 GETIMPORT                        R2 K1 [error]
       42 LOADK                            R3 K10 ["Bin expects a function, thread, or object with a Destroy or Disconnect method"]
       43 LOADN                            R4 3
       44 CALL                             R2 2 0
       45 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Disconnect"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["function"] ; [+3]
        9 GETTABLEKS                       R2 R0 K4 ["disconnect"]
       11 MOVE                             R1 R2
       12 GETTABLEKS                       R3 R0 K5 ["Destroy"]
       14 FASTCALL1                        TYPE R3 ; [+3]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K2 [type]
       18 CALL                             R4 1 1
       19 JUMPIFEQKS                       R4 K3 ["function"] ; [+3]
       21 GETTABLEKS                       R3 R0 K6 ["destroy"]
       23 MOVE                             R2 R3
       24 RETURN                           R1 2

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 LOADK                            R3 K3 ["Disconnect"]
       10 LOADK                            R4 K4 ["disconnect"]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 ["Destroy"]
       15 LOADK                            R5 K6 ["destroy"]
       16 CALL                             R2 3 1
       17 RETURN                           R1 2
       18 LOADNIL                          R1
       19 LOADNIL                          R2
       20 FASTCALL1                        GETMETATABLE R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K8 [getmetatable]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKNIL                  R3 ; [+28]
       27 GETTABLEKS                       R5 R0 K3 ["Disconnect"]
       29 FASTCALL1                        TYPE R5 ; [+3]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K1 [type]
       33 CALL                             R6 1 1
       34 JUMPIFEQKS                       R6 K9 ["function"] ; [+3]
       36 GETTABLEKS                       R5 R0 K4 ["disconnect"]
       38 MOVE                             R3 R5
       39 GETTABLEKS                       R5 R0 K5 ["Destroy"]
       41 FASTCALL1                        TYPE R5 ; [+3]
       42 MOVE                             R7 R5
       43 GETIMPORT                        R6 K1 [type]
       45 CALL                             R6 1 1
       46 JUMPIFEQKS                       R6 K9 ["function"] ; [+3]
       48 GETTABLEKS                       R5 R0 K6 ["destroy"]
       50 MOVE                             R4 R5
       51 MOVE                             R1 R3
       52 MOVE                             R2 R4
       53 JUMP                             ; [+50]
       54 LOADNIL                          R3
       55 GETIMPORT                        R4 K11 [pcall]
       57 GETUPVAL                         R5 1
       58 MOVE                             R6 R0
       59 CALL                             R4 2 3
       60 MOVE                             R3 R4
       61 MOVE                             R1 R5
       62 MOVE                             R2 R6
       63 JUMPIF                           R3 ; [+40]
       64 GETIMPORT                        R4 K11 [pcall]
       66 GETUPVAL                         R5 2
       67 MOVE                             R6 R0
       68 LOADK                            R7 K3 ["Disconnect"]
       69 LOADK                            R8 K4 ["disconnect"]
       70 CALL                             R4 4 2
       71 JUMPIFNOT                        R4 ; [+2]
       72 MOVE                             R1 R5
       73 JUMP                             ; [+10]
       74 GETIMPORT                        R6 K11 [pcall]
       76 GETUPVAL                         R7 3
       77 MOVE                             R8 R0
       78 LOADK                            R9 K4 ["disconnect"]
       79 CALL                             R6 3 2
       80 JUMPIFNOT                        R6 ; [+2]
       81 MOVE                             R1 R7
       82 JUMP                             ; [+1]
       83 LOADNIL                          R1
       84 GETIMPORT                        R4 K11 [pcall]
       86 GETUPVAL                         R5 2
       87 MOVE                             R6 R0
       88 LOADK                            R7 K5 ["Destroy"]
       89 LOADK                            R8 K6 ["destroy"]
       90 CALL                             R4 4 2
       91 JUMPIFNOT                        R4 ; [+2]
       92 MOVE                             R2 R5
       93 JUMP                             ; [+10]
       94 GETIMPORT                        R6 K11 [pcall]
       96 GETUPVAL                         R7 3
       97 MOVE                             R8 R0
       98 LOADK                            R9 K6 ["destroy"]
       99 CALL                             R6 3 2
      100 JUMPIFNOT                        R6 ; [+2]
      101 MOVE                             R2 R7
      102 JUMP                             ; [+1]
      103 LOADNIL                          R2
      104 FASTCALL1                        TYPEOF R1 ; [+3]
      105 MOVE                             R5 R1
      106 GETIMPORT                        R4 K13 [typeof]
      108 CALL                             R4 1 1
      109 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+3]
      111 MOVE                             R3 R1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R3
      114 FASTCALL1                        TYPEOF R2 ; [+3]
      115 MOVE                             R6 R2
      116 GETIMPORT                        R5 K13 [typeof]
      118 CALL                             R5 1 1
      119 JUMPIFNOTEQKS                    R5 K9 ["function"] ; [+3]
      121 MOVE                             R4 R2
      122 RETURN                           R3 2
      123 LOADNIL                          R4
      124 RETURN                           R3 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFEQKNIL                     R1 ; [+4]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 0
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 MOVE                             R3 R2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 JUMPIFEQKNIL                     R1 ; [+20]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+10]
        8 GETIMPORT                        R3 K1 [warn]
       10 LOADK                            R4 K2 ["Bin: %* was removed from the object before cleanup"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K3 ["format"]
       14 CALL                             R4 2 1
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 MOVE                             R3 R2
       18 MOVE                             R4 R0
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R3 R0
       23 GETIMPORT                        R2 K5 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K6 ["function"] ; [+4]
       28 MOVE                             R2 R0
       29 CALL                             R2 0 0
       30 RETURN                           R0 0
       31 FASTCALL1                        TYPEOF R0 ; [+3]
       32 MOVE                             R3 R0
       33 GETIMPORT                        R2 K5 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K7 ["RBXScriptConnection"] ; [+5]
       38 NAMECALL                         R2 R0 K8 ["Disconnect"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 FASTCALL1                        TYPEOF R0 ; [+3]
       43 MOVE                             R3 R0
       44 GETIMPORT                        R2 K5 [typeof]
       46 CALL                             R2 1 1
       47 JUMPIFNOTEQKS                    R2 K9 ["Instance"] ; [+24]
       49 GETUPVAL                         R2 1
       50 MOVE                             R3 R0
       51 LOADK                            R4 K8 ["Disconnect"]
       52 CALL                             R2 2 1
       53 JUMPIFNOT                        R2 ; [+14]
       54 GETUPVAL                         R2 2
       55 MOVE                             R3 R0
       56 CALL                             R2 1 2
       57 JUMPIFEQKNIL                     R2 ; [+4]
       59 MOVE                             R4 R2
       60 MOVE                             R5 R0
       61 CALL                             R4 1 0
       62 JUMPIFEQKNIL                     R3 ; [+48]
       64 MOVE                             R4 R3
       65 MOVE                             R5 R0
       66 CALL                             R4 1 0
       67 RETURN                           R0 0
       68 NAMECALL                         R2 R0 K10 ["Destroy"]
       70 CALL                             R2 1 0
       71 RETURN                           R0 0
       72 FASTCALL1                        TYPEOF R0 ; [+3]
       73 MOVE                             R3 R0
       74 GETIMPORT                        R2 K5 [typeof]
       76 CALL                             R2 1 1
       77 JUMPIFNOTEQKS                    R2 K11 ["thread"] ; [+20]
       79 GETIMPORT                        R2 K14 [coroutine.status]
       81 MOVE                             R3 R0
       82 CALL                             R2 1 1
       83 JUMPIFNOTEQKS                    R2 K15 ["suspended"] ; [+6]
       85 GETIMPORT                        R3 K18 [task.cancel]
       87 MOVE                             R4 R0
       88 CALL                             R3 1 0
       89 RETURN                           R0 0
       90 JUMPIFEQKS                       R2 K19 ["dead"] ; [+20]
       92 GETIMPORT                        R3 K21 [task.defer]
       94 GETUPVAL                         R4 3
       95 MOVE                             R5 R0
       96 CALL                             R3 2 0
       97 RETURN                           R0 0
       98 GETUPVAL                         R2 2
       99 MOVE                             R3 R0
      100 CALL                             R2 1 2
      101 JUMPIFEQKNIL                     R2 ; [+4]
      103 MOVE                             R4 R2
      104 MOVE                             R5 R0
      105 CALL                             R4 1 0
      106 JUMPIFEQKNIL                     R3 ; [+4]
      108 MOVE                             R4 R3
      109 MOVE                             R5 R0
      110 CALL                             R4 1 0
      111 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETIMPORT                        R2 K4 [error]
        4 GETIMPORT                        R3 K7 [debug.traceback]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K9 [tostring]
       10 CALL                             R4 1 1
       11 LOADN                            R5 2
       12 CALL                             R3 2 1
       13 LOADN                            R4 0
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_16:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 -1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 LOADNIL                          R6
        6 SETTABLE                         R6 R0 R4
        7 GETUPVAL                         R6 0
        8 MOVE                             R7 R5
        9 JUMPIFNOT                        R1 ; [+2]
       10 GETTABLE                         R8 R1 R4
       11 JUMP                             ; [+1]
       12 LOADNIL                          R8
       13 CALL                             R6 2 0
       14 FORNLOOP                         R2
       15 RETURN                           R0 0

PROTO_17:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+9]
        4 GETIMPORT                        R2 K1 [xpcall]
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 CALL                             R2 4 0
       11 JUMPBACK                         ; [-12]
       12 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_items"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQ                      R3 R4 ; [+10]
        5 GETIMPORT                        R4 K2 [xpcall]
        7 GETUPVAL                         R5 1
        8 GETUPVAL                         R6 2
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 CALL                             R4 4 0
       12 LOADNIL                          R4
       13 RETURN                           R4 1
       14 GETUPVAL                         R4 3
       15 JUMPIFNOTEQ                      R3 R4 ; [+8]
       17 GETIMPORT                        R4 K5 [table.create]
       19 LOADN                            R5 4
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 SETTABLEKS                       R3 R0 K0 ["_items"]
       24 LENGTH                           R5 R3
       25 ADDK                             R4 R5 K6 [1]
       26 SETTABLE                         R1 R3 R4
       27 JUMPIFEQKNIL                     R2 ; [+9]
       29 GETTABLEKS                       R5 R0 K7 ["_methods"]
       31 JUMPIF                           R5 ; [+2]
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R0 K7 ["_methods"]
       36 SETTABLE                         R2 R5 R4
       37 RETURN                           R4 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_items"]
        2 GETTABLEKS                       R2 R0 K1 ["_methods"]
        4 GETTABLEKS                       R3 R0 K2 ["_keys"]
        6 GETIMPORT                        R4 K5 [table.create]
        8 LENGTH                           R6 R1
        9 GETTABLEKS                       R8 R0 K7 ["_freed"]
       11 ORK                              R7 R8 K6 [0]
       12 SUB                              R5 R6 R7
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 NEWTABLE                         R5 0 0
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R3 ; [+3]
       20 NEWTABLE                         R6 0 0
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 LOADN                            R7 0
       25 MOVE                             R8 R1
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETUPVAL                         R13 0
       30 JUMPIFEQ                         R12 R13 ; [+9]
       32 ADDK                             R7 R7 K8 [1]
       33 SETTABLE                         R12 R4 R7
       34 JUMPIFNOT                        R6 ; [+1]
       35 SETTABLE                         R7 R6 R11
       36 JUMPIFNOT                        R2 ; [+3]
       37 JUMPIFNOT                        R5 ; [+2]
       38 GETTABLE                         R13 R2 R11
       39 SETTABLE                         R13 R5 R7
       40 FORGLOOP                         R8 2 ; [-12]
       42 JUMPIFNOT                        R3 ; [+9]
       43 JUMPIFNOT                        R6 ; [+8]
       44 MOVE                             R8 R3
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 FORGPREP                         R8
       48 GETTABLE                         R13 R6 R12
       49 SETTABLE                         R13 R3 R11
       50 FORGLOOP                         R8 2 ; [-3]
       52 SETTABLEKS                       R4 R0 K0 ["_items"]
       54 SETTABLEKS                       R5 R0 K1 ["_methods"]
       56 LOADNIL                          R8
       57 SETTABLEKS                       R8 R0 K7 ["_freed"]
       59 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_items"]
        2 GETTABLEKS                       R3 R0 K1 ["_methods"]
        4 GETTABLE                         R4 R2 R1
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETTABLE                         R5 R3 R1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 0
       10 SETTABLE                         R6 R2 R1
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADNIL                          R6
       13 SETTABLE                         R6 R3 R1
       14 GETTABLEKS                       R8 R0 K4 ["_freed"]
       16 ORK                              R7 R8 K3 [0]
       17 ADDK                             R6 R7 K2 [1]
       18 SETTABLEKS                       R6 R0 K4 ["_freed"]
       20 LOADN                            R7 16
       21 JUMPIFNOTLE                      R7 R6 ; [+8]
       23 MULK                             R7 R6 K5 [2]
       24 LENGTH                           R8 R2
       25 JUMPIFNOTLE                      R8 R7 ; [+4]
       27 GETUPVAL                         R7 1
       28 MOVE                             R8 R0
       29 CALL                             R7 1 0
       30 RETURN                           R4 2

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["_items"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R3 0
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R3 1
       10 SETTABLEKS                       R3 R0 K0 ["_items"]
       12 LENGTH                           R3 R2
       13 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R0 K2 ["_methods"]
       18 JUMPIFNOT                        R3 ; [+3]
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R0 K2 ["_methods"]
       22 GETTABLEKS                       R4 R0 K3 ["_keys"]
       24 JUMPIFNOT                        R4 ; [+3]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R0 K3 ["_keys"]
       28 GETTABLEKS                       R4 R0 K4 ["_freed"]
       30 JUMPIFNOT                        R4 ; [+3]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R0 K4 ["_freed"]
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 MOVE                             R6 R3
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_23:
        0 LENGTH                           R4 R0
        1 LOADN                            R2 1
        2 LOADN                            R3 -1
        3 FORNPREP                         R2
        4 GETTABLE                         R6 R0 R4
        5 FASTCALL2                        RAWEQUAL R6 R1 ; [+4]
        7 MOVE                             R7 R1
        8 GETIMPORT                        R5 K1 [rawequal]
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+1]
       12 RETURN                           R4 1
       13 FORNLOOP                         R2
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_24:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOTEQ                      R6 R1 ; [+2]
        6 RETURN                           R5 1
        7 FORGLOOP                         R2 2 ; [-4]
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_keys"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLE                         R3 R2 R1
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R2 R1
        8 RETURN                           R3 1
        9 GETTABLEKS                       R4 R0 K1 ["_items"]
       11 LENGTH                           R7 R4
       12 LOADN                            R5 1
       13 LOADN                            R6 -1
       14 FORNPREP                         R5
       15 GETTABLE                         R9 R4 R7
       16 FASTCALL2                        RAWEQUAL R9 R1 ; [+4]
       18 MOVE                             R10 R1
       19 GETIMPORT                        R8 K3 [rawequal]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+2]
       23 MOVE                             R3 R7
       24 JUMP                             ; [+2]
       25 FORNLOOP                         R5
       26 LOADNIL                          R3
       27 JUMPIFEQKNIL                     R3 ; [+17]
       29 JUMPIFNOT                        R2 ; [+15]
       30 MOVE                             R5 R2
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 JUMPIFNOTEQ                      R9 R3 ; [+3]
       36 MOVE                             R4 R8
       37 JUMP                             ; [+3]
       38 FORGLOOP                         R5 2 ; [-5]
       40 LOADNIL                          R4
       41 JUMPIFEQKNIL                     R4 ; [+3]
       43 LOADNIL                          R5
       44 SETTABLE                         R5 R2 R4
       45 RETURN                           R3 1

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"_items"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_items"]
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKNIL                  R2 ; [+8]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+7]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 JUMP                             ; [+58]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K4 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K5 ["function"] ; [+22]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R5 R1
       25 GETIMPORT                        R4 K4 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFEQKS                       R4 K6 ["RBXScriptConnection"] ; [+15]
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R5 R1
       32 GETIMPORT                        R4 K4 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFEQKS                       R4 K7 ["Instance"] ; [+8]
       37 FASTCALL1                        TYPEOF R1 ; [+3]
       38 MOVE                             R5 R1
       39 GETIMPORT                        R4 K4 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K8 ["thread"] ; [+3]
       44 MOVE                             R3 R1
       45 JUMP                             ; [+28]
       46 GETUPVAL                         R5 1
       47 FASTCALL1                        TYPEOF R1 ; [+3]
       48 MOVE                             R7 R1
       49 GETIMPORT                        R6 K4 [typeof]
       51 CALL                             R6 1 1
       52 GETTABLE                         R4 R5 R6
       53 JUMPIF                           R4 ; [+19]
       54 GETUPVAL                         R4 2
       55 MOVE                             R5 R1
       56 LOADK                            R6 K9 ["Destroy"]
       57 LOADK                            R7 K10 ["destroy"]
       58 CALL                             R4 3 1
       59 JUMPIFNOTEQKNIL                  R4 ; [+13]
       61 GETUPVAL                         R4 2
       62 MOVE                             R5 R1
       63 LOADK                            R6 K11 ["Disconnect"]
       64 LOADK                            R7 K12 ["disconnect"]
       65 CALL                             R4 3 1
       66 JUMPIFNOTEQKNIL                  R4 ; [+6]
       68 GETIMPORT                        R4 K14 [error]
       70 LOADK                            R5 K15 ["Bin expects a function, thread, or object with a Destroy or Disconnect method"]
       71 LOADN                            R6 3
       72 CALL                             R4 2 0
       73 MOVE                             R3 R1
       74 GETTABLEKS                       R4 R0 K16 ["_items"]
       76 GETUPVAL                         R5 3
       77 JUMPIFNOTEQ                      R4 R5 ; [+10]
       79 MOVE                             R5 R3
       80 GETIMPORT                        R6 K18 [xpcall]
       82 GETUPVAL                         R7 4
       83 GETUPVAL                         R8 5
       84 MOVE                             R9 R5
       85 MOVE                             R10 R2
       86 CALL                             R6 4 0
       87 RETURN                           R1 1
       88 GETUPVAL                         R5 6
       89 JUMPIFNOTEQ                      R4 R5 ; [+8]
       91 GETIMPORT                        R5 K20 [table.create]
       93 LOADN                            R6 4
       94 CALL                             R5 1 1
       95 MOVE                             R4 R5
       96 SETTABLEKS                       R4 R0 K16 ["_items"]
       98 LENGTH                           R6 R4
       99 ADDK                             R5 R6 K21 [1]
      100 SETTABLE                         R3 R4 R5
      101 JUMPIFEQKNIL                     R2 ; [+9]
      103 GETTABLEKS                       R6 R0 K22 ["_methods"]
      105 JUMPIF                           R6 ; [+2]
      106 NEWTABLE                         R6 0 0
      108 SETTABLEKS                       R6 R0 K22 ["_methods"]
      110 SETTABLE                         R2 R6 R5
      111 RETURN                           R1 1

PROTO_29:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFEQ                         R1 R1 ; [+6]
        4 GETIMPORT                        R4 K1 [error]
        6 LOADK                            R5 K2 ["Bin:Set expects a key that isn't nil or NaN"]
        7 LOADN                            R6 2
        8 CALL                             R4 2 0
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R0 K3 ["_keys"]
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETTABLE                         R6 R5 R1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 JUMPIFEQKNIL                     R6 ; [+27]
       21 GETTABLEKS                       R9 R0 K4 ["_items"]
       23 GETTABLE                         R8 R9 R6
       24 FASTCALL2                        RAWEQUAL R8 R4 ; [+4]
       26 MOVE                             R9 R4
       27 GETIMPORT                        R7 K6 [rawequal]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+16]
       31 GETTABLEKS                       R7 R0 K7 ["_methods"]
       33 JUMPIFEQKNIL                     R3 ; [+9]
       35 MOVE                             R8 R7
       36 JUMPIF                           R8 ; [+2]
       37 NEWTABLE                         R8 0 0
       39 SETTABLEKS                       R8 R0 K7 ["_methods"]
       41 SETTABLE                         R3 R8 R6
       42 RETURN                           R2 1
       43 JUMPIFNOT                        R7 ; [+2]
       44 LOADNIL                          R8
       45 SETTABLE                         R8 R7 R6
       46 RETURN                           R2 1
       47 GETUPVAL                         R7 1
       48 MOVE                             R8 R0
       49 MOVE                             R9 R4
       50 MOVE                             R10 R3
       51 CALL                             R7 3 1
       52 JUMPIFNOTEQKNIL                  R7 ; [+2]
       54 RETURN                           R2 1
       55 MOVE                             R8 R5
       56 JUMPIF                           R8 ; [+2]
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R0 K3 ["_keys"]
       61 SETTABLE                         R7 R8 R1
       62 JUMPIFEQKNIL                     R6 ; [+40]
       64 GETTABLEKS                       R11 R0 K4 ["_items"]
       66 GETTABLEKS                       R12 R0 K7 ["_methods"]
       68 GETTABLE                         R13 R11 R6
       69 JUMPIFNOT                        R12 ; [+2]
       70 GETTABLE                         R14 R12 R6
       71 JUMP                             ; [+1]
       72 LOADNIL                          R14
       73 GETUPVAL                         R15 2
       74 SETTABLE                         R15 R11 R6
       75 JUMPIFNOT                        R12 ; [+2]
       76 LOADNIL                          R15
       77 SETTABLE                         R15 R12 R6
       78 GETTABLEKS                       R17 R0 K10 ["_freed"]
       80 ORK                              R16 R17 K9 [0]
       81 ADDK                             R15 R16 K8 [1]
       82 SETTABLEKS                       R15 R0 K10 ["_freed"]
       84 LOADN                            R16 16
       85 JUMPIFNOTLE                      R16 R15 ; [+8]
       87 MULK                             R16 R15 K11 [2]
       88 LENGTH                           R17 R11
       89 JUMPIFNOTLE                      R17 R16 ; [+4]
       91 GETUPVAL                         R16 3
       92 MOVE                             R17 R0
       93 CALL                             R16 1 0
       94 MOVE                             R9 R13
       95 MOVE                             R10 R14
       96 GETIMPORT                        R11 K13 [xpcall]
       98 GETUPVAL                         R12 4
       99 GETUPVAL                         R13 5
      100 MOVE                             R14 R9
      101 MOVE                             R15 R10
      102 CALL                             R11 4 0
      103 RETURN                           R2 1

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["_keys"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLE                         R4 R3 R1
        4 JUMPIFEQKNIL                     R4 ; [+5]
        6 LOADNIL                          R5
        7 SETTABLE                         R5 R3 R1
        8 MOVE                             R2 R4
        9 JUMP                             ; [+37]
       10 GETTABLEKS                       R5 R0 K1 ["_items"]
       12 LENGTH                           R8 R5
       13 LOADN                            R6 1
       14 LOADN                            R7 -1
       15 FORNPREP                         R6
       16 GETTABLE                         R10 R5 R8
       17 FASTCALL2                        RAWEQUAL R10 R1 ; [+4]
       19 MOVE                             R11 R1
       20 GETIMPORT                        R9 K3 [rawequal]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+2]
       24 MOVE                             R4 R8
       25 JUMP                             ; [+2]
       26 FORNLOOP                         R6
       27 LOADNIL                          R4
       28 JUMPIFEQKNIL                     R4 ; [+17]
       30 JUMPIFNOT                        R3 ; [+15]
       31 MOVE                             R6 R3
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 JUMPIFNOTEQ                      R10 R4 ; [+3]
       37 MOVE                             R5 R9
       38 JUMP                             ; [+3]
       39 FORGLOOP                         R6 2 ; [-5]
       41 LOADNIL                          R5
       42 JUMPIFEQKNIL                     R5 ; [+3]
       44 LOADNIL                          R6
       45 SETTABLE                         R6 R3 R5
       46 MOVE                             R2 R4
       47 JUMPIFNOTEQKNIL                  R2 ; [+2]
       49 RETURN                           R0 0
       50 GETTABLEKS                       R5 R0 K1 ["_items"]
       52 GETTABLEKS                       R6 R0 K4 ["_methods"]
       54 GETTABLE                         R7 R5 R2
       55 JUMPIFNOT                        R6 ; [+2]
       56 GETTABLE                         R8 R6 R2
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 GETUPVAL                         R9 0
       60 SETTABLE                         R9 R5 R2
       61 JUMPIFNOT                        R6 ; [+2]
       62 LOADNIL                          R9
       63 SETTABLE                         R9 R6 R2
       64 GETTABLEKS                       R11 R0 K7 ["_freed"]
       66 ORK                              R10 R11 K6 [0]
       67 ADDK                             R9 R10 K5 [1]
       68 SETTABLEKS                       R9 R0 K7 ["_freed"]
       70 LOADN                            R10 16
       71 JUMPIFNOTLE                      R10 R9 ; [+8]
       73 MULK                             R10 R9 K8 [2]
       74 LENGTH                           R11 R5
       75 JUMPIFNOTLE                      R11 R10 ; [+4]
       77 GETUPVAL                         R10 1
       78 MOVE                             R11 R0
       79 CALL                             R10 1 0
       80 MOVE                             R3 R7
       81 MOVE                             R4 R8
       82 GETIMPORT                        R5 K10 [xpcall]
       84 GETUPVAL                         R6 2
       85 GETUPVAL                         R7 3
       86 MOVE                             R8 R3
       87 MOVE                             R9 R4
       88 CALL                             R5 4 0
       89 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["_keys"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLE                         R4 R3 R1
        4 JUMPIFEQKNIL                     R4 ; [+5]
        6 LOADNIL                          R5
        7 SETTABLE                         R5 R3 R1
        8 MOVE                             R2 R4
        9 JUMP                             ; [+37]
       10 GETTABLEKS                       R5 R0 K1 ["_items"]
       12 LENGTH                           R8 R5
       13 LOADN                            R6 1
       14 LOADN                            R7 -1
       15 FORNPREP                         R6
       16 GETTABLE                         R10 R5 R8
       17 FASTCALL2                        RAWEQUAL R10 R1 ; [+4]
       19 MOVE                             R11 R1
       20 GETIMPORT                        R9 K3 [rawequal]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+2]
       24 MOVE                             R4 R8
       25 JUMP                             ; [+2]
       26 FORNLOOP                         R6
       27 LOADNIL                          R4
       28 JUMPIFEQKNIL                     R4 ; [+17]
       30 JUMPIFNOT                        R3 ; [+15]
       31 MOVE                             R6 R3
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 JUMPIFNOTEQ                      R10 R4 ; [+3]
       37 MOVE                             R5 R9
       38 JUMP                             ; [+3]
       39 FORGLOOP                         R6 2 ; [-5]
       41 LOADNIL                          R5
       42 JUMPIFEQKNIL                     R5 ; [+3]
       44 LOADNIL                          R6
       45 SETTABLE                         R6 R3 R5
       46 MOVE                             R2 R4
       47 JUMPIFNOTEQKNIL                  R2 ; [+3]
       49 LOADNIL                          R3
       50 RETURN                           R3 1
       51 GETTABLEKS                       R4 R0 K1 ["_items"]
       53 GETTABLEKS                       R5 R0 K4 ["_methods"]
       55 GETTABLE                         R6 R4 R2
       56 JUMPIFNOT                        R5 ; [+2]
       57 GETTABLE                         R7 R5 R2
       58 JUMP                             ; [+1]
       59 LOADNIL                          R7
       60 GETUPVAL                         R8 0
       61 SETTABLE                         R8 R4 R2
       62 JUMPIFNOT                        R5 ; [+2]
       63 LOADNIL                          R8
       64 SETTABLE                         R8 R5 R2
       65 GETTABLEKS                       R10 R0 K7 ["_freed"]
       67 ORK                              R9 R10 K6 [0]
       68 ADDK                             R8 R9 K5 [1]
       69 SETTABLEKS                       R8 R0 K7 ["_freed"]
       71 LOADN                            R9 16
       72 JUMPIFNOTLE                      R9 R8 ; [+8]
       74 MULK                             R9 R8 K8 [2]
       75 LENGTH                           R10 R4
       76 JUMPIFNOTLE                      R10 R9 ; [+4]
       78 GETUPVAL                         R9 1
       79 MOVE                             R10 R0
       80 CALL                             R9 1 0
       81 MOVE                             R3 R6
       82 RETURN                           R3 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_items"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R0 K0 ["_items"]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K2 ["_methods"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R0 K2 ["_methods"]
       19 GETTABLEKS                       R3 R0 K3 ["_keys"]
       21 JUMPIFNOT                        R3 ; [+3]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R0 K3 ["_keys"]
       25 GETTABLEKS                       R3 R0 K4 ["_freed"]
       27 JUMPIFNOT                        R3 ; [+3]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R0 K4 ["_freed"]
       31 GETUPVAL                         R3 2
       32 MOVE                             R4 R1
       33 MOVE                             R5 R2
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_items"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R0 K0 ["_items"]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K2 ["_methods"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R0 K2 ["_methods"]
       19 GETTABLEKS                       R3 R0 K3 ["_keys"]
       21 JUMPIFNOT                        R3 ; [+3]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R0 K3 ["_keys"]
       25 GETTABLEKS                       R3 R0 K4 ["_freed"]
       27 JUMPIFNOT                        R3 ; [+3]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R0 K4 ["_freed"]
       31 GETUPVAL                         R3 1
       32 MOVE                             R4 R1
       33 MOVE                             R5 R2
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 GETIMPORT                        R2 K4 [table.freeze]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [table.freeze]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R3 1 1
       16 NEWTABLE                         R4 0 0
       18 DUPCLOSURE                       R5 K5 [PROTO_1]
       19 DUPCLOSURE                       R6 K6 [PROTO_2]
       20 CAPTURE                          VAL R5
       21 DUPCLOSURE                       R7 K7 [PROTO_3]
       22 DUPCLOSURE                       R8 K8 [PROTO_4]
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R5
       25 DUPCLOSURE                       R9 K9 [PROTO_5]
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R5
       28 DUPCLOSURE                       R10 K10 [PROTO_6]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 DUPCLOSURE                       R11 K11 [PROTO_7]
       32 CAPTURE                          VAL R10
       33 DUPCLOSURE                       R12 K12 [PROTO_8]
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R10
       37 NEWTABLE                         R13 4 0
       39 LOADB                            R14 1
       40 SETTABLEKS                       R14 R13 K13 ["function"]
       42 LOADB                            R14 1
       43 SETTABLEKS                       R14 R13 K14 ["RBXScriptConnection"]
       45 LOADB                            R14 1
       46 SETTABLEKS                       R14 R13 K15 ["Instance"]
       48 LOADB                            R14 1
       49 SETTABLEKS                       R14 R13 K16 ["thread"]
       51 DUPCLOSURE                       R14 K17 [PROTO_9]
       52 CAPTURE                          VAL R12
       53 CAPTURE                          VAL R13
       54 DUPTABLE                         R15 K26 [{["Running"] = "running", ["Suspended"] = "suspended", ["Normal"] = "normal", ["Dead"] = "dead"}]
       55 DUPCLOSURE                       R16 K27 [PROTO_10]
       56 DUPCLOSURE                       R17 K28 [PROTO_11]
       57 DUPCLOSURE                       R18 K29 [PROTO_12]
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R17
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R19 K30 [PROTO_13]
       63 CAPTURE                          VAL R18
       64 DUPCLOSURE                       R20 K31 [PROTO_14]
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R18
       68 CAPTURE                          VAL R16
       69 DUPCLOSURE                       R21 K32 [PROTO_15]
       70 DUPCLOSURE                       R22 K33 [PROTO_16]
       71 CAPTURE                          VAL R20
       72 DUPCLOSURE                       R23 K34 [PROTO_17]
       73 CAPTURE                          VAL R22
       74 CAPTURE                          VAL R21
       75 DUPCLOSURE                       R24 K35 [PROTO_18]
       76 CAPTURE                          VAL R20
       77 CAPTURE                          VAL R21
       78 DUPCLOSURE                       R25 K36 [PROTO_19]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R20
       81 CAPTURE                          VAL R21
       82 CAPTURE                          VAL R2
       83 DUPCLOSURE                       R26 K37 [PROTO_20]
       84 CAPTURE                          VAL R1
       85 DUPCLOSURE                       R27 K38 [PROTO_21]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R26
       88 DUPCLOSURE                       R28 K39 [PROTO_22]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R23
       92 DUPCLOSURE                       R29 K40 [PROTO_23]
       93 DUPCLOSURE                       R30 K41 [PROTO_24]
       94 DUPCLOSURE                       R31 K42 [PROTO_25]
       95 DUPCLOSURE                       R32 K43 [PROTO_26]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R32 R0 K44 ["new"]
      100 DUPCLOSURE                       R32 K45 [PROTO_27]
      101 SETTABLEKS                       R32 R0 K46 ["none"]
      103 DUPCLOSURE                       R32 K47 [PROTO_28]
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R20
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R32 R0 K48 ["Add"]
      113 DUPCLOSURE                       R33 K49 [PROTO_29]
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R25
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R26
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R21
      120 SETTABLEKS                       R33 R0 K50 ["Set"]
      122 DUPCLOSURE                       R34 K51 [PROTO_30]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R26
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R21
      127 SETTABLEKS                       R34 R0 K52 ["Remove"]
      129 DUPCLOSURE                       R34 K53 [PROTO_31]
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R26
      132 SETTABLEKS                       R34 R0 K54 ["Take"]
      134 DUPCLOSURE                       R34 K55 [PROTO_32]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R23
      138 SETTABLEKS                       R34 R0 K56 ["Empty"]
      140 DUPCLOSURE                       R34 K57 [PROTO_33]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R23
      143 SETTABLEKS                       R34 R0 K58 ["Destroy"]
      145 RETURN                           R0 1
